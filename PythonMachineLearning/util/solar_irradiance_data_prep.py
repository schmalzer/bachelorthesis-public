from influxdb_client import InfluxDBClient, Point, WritePrecision
from influxdb_client.client.write_api import SYNCHRONOUS
import pandas as pd
import numpy as np
import glob
import os


def get_dataframe_from_csv_files():
    files = os.path.join("../data/solar_irradiance_data/preparedFiles/single", "21-002000_WienHoheWarte_*.csv")

    # list of merged files returned
    files = glob.glob(files)

    print("Resultant CSV after joining all CSV files at a particular location...");

    # joining files with concat and read_csv
    df = pd.concat(map(lambda file: pd.read_csv(file, delimiter=";"), files))
    print(df)
    print(df.iloc(1))
    incl = df.index[df['cGLOm'] == -999].tolist()
    df.loc[df.index.isin(incl), 'cGLOm'] = np.nan

    df['cGLOm'] = np.where((df['cGLOm'].isnull()) & (df.index.isin(incl)), df['cGLOm'].interpolate(), df['cGLOm'])

    df['cGLOm'] = df['cGLOm'].clip(lower=0)

    df['datetime'] = pd.date_range(start='1/1/2015', periods=len(df), freq=pd.DateOffset(minutes=10))

    df = df.drop(df.columns[[0, 1, 2]], axis=1)
    df.to_csv('../data/solar_irradiance_data/preparedFiles/combined/combined.csv', sep=',')
    return df


def store_df_to_influx_db(dataframe):
    influx_host = "http://localhost:8086"
    influx_token = "PAqdPUHHLwxwjdIynl89pryeaJX8-cJR_aLJotLSF7hyvTX_r0721ArM5JxQWx6wXjHEeeFEdRsrRvsMc4naZw=="
    influx_org = "tuwien"
    influx_bucket = "photovoltaic_bucket"
    with InfluxDBClient(url=influx_host, token=influx_token, org=influx_org) as client:
        write_api = client.write_api(write_options=SYNCHRONOUS)

        for index, row in dataframe.iterrows():

            point = Point("mem") \
                .tag("host", "host1") \
                .field("cGLOm", row['cGLOm']) \
                .time(row['datetime'], WritePrecision.NS)

            write_api.write(influx_bucket, influx_org, point)

            if index % 1000 == 0:
                print("inserted " + str("{:.2f}".format(index / dataframe.shape[0] * 100)) + "% of data")

        print("inserted 100% of data")

    print("Dataframe got insereted to influx db!")


df = get_dataframe_from_csv_files()
store_df_to_influx_db(df)
