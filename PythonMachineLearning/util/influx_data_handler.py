from influxdb_client import InfluxDBClient, Point, WritePrecision
from influxdb_client.client.write_api import SYNCHRONOUS
# You can generate an API token from the "API Tokens Tab" in the UI
from PythonMachineLearning.util.datacontroller import DataController

TOKEN = "PAqdPUHHLwxwjdIynl89pryeaJX8-cJR_aLJotLSF7hyvTX_r0721ArM5JxQWx6wXjHEeeFEdRsrRvsMc4naZw=="
ORG = "tuwien"
BUCKET = "photovoltaic_bucket"


class InfluxDataHandler:

    def remove_all_data(self):
        with InfluxDBClient(url="http://localhost:8086", token=TOKEN, org=ORG) as client:
            delete_api = client.delete_api()
            delete_api.delete(
                "1970-01-01T00:00:00Z",
                "2023-12-01T00:00:00Z",
                '_measurement="mem"',
                bucket=BUCKET,
                org=ORG,
            )

    def load_solar_generation_data_from_influx_db(self, from_date_time, to_date_time):
        with InfluxDBClient("http://localhost:8086", token=TOKEN, org=ORG) as client:

            query = 'from' \
                '(bucket: "' + BUCKET + '")' \
                '|> range(start: ' + from_date_time + ', stop:' + to_date_time + ')' \
                '|> filter(fn: (r) => r["_measurement"] == "mem")' \
                '|> filter(fn: (r) => r["_field"] == "AT_solar_generation_actual")' \
                '|> aggregateWindow(every: 15' \
                'm, fn: mean, createEmpty: false)'

            dataframe = client.query_api().query_data_frame(query=query, org=ORG)

            return dataframe

    def load_solar_irradiance_data_from_influx_db(self, from_date_time, to_date_time):
        with InfluxDBClient("http://localhost:8086", token=TOKEN, org=ORG) as client:

            query = 'from' \
                '(bucket: "' + BUCKET + '")' \
                '|> range(start: ' + from_date_time + ', stop:' + to_date_time + ')' \
                '|> filter(fn: (r) => r["_measurement"] == "mem")' \
                '|> filter(fn: (r) => r["_field"] == "cGLOm")' \
                '|> aggregateWindow(every: 15' \
                'm, fn: mean, createEmpty: false)'

            dataframe = client.query_api().query_data_frame(query=query, org=ORG)

            return dataframe

    def data_exists(self):
        with InfluxDBClient(url="http://localhost:8086", token=TOKEN, org=ORG) as client:

            query = 'from(bucket: "photovoltaic_bucket") |> range(start:-10000h)'

            tables = client.query_api().query(query, org=ORG)
            for table in tables:
                for record in table.records:
                    print(record.values['_time'])
                    print(record.values['_value'])

            if len(tables) == 0:
                return False

            return True

    def insert_data(self):
        datacontroller = DataController("../data/photovoltaic_power/combined_csv_with_correct_values_and_length.csv")
        df = datacontroller.get_all_data()
        with InfluxDBClient(url="http://localhost:8086", token=TOKEN, org=ORG) as client:
            write_api = client.write_api(write_options=SYNCHRONOUS)

            for index, row in df.iterrows():

                point = Point("mem") \
                    .tag("host", "host1") \
                    .field("AT_solar_generation_actual", row['AT_solar_generation_actual']) \
                    .time(row['datetime'], WritePrecision.NS)

                write_api.write(BUCKET, ORG, point)

                if index % 1000 == 0:
                    print("inserted " + str("{:.2f}".format(index / df.shape[0] * 100)) + "% of data")

            print("inserted 100% of data")


i = InfluxDataHandler()
if not i.data_exists():
    i.insert_data()
