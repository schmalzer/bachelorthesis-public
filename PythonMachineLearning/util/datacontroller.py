import datetime
import pandas as pd
from pandas import read_csv
from numpy import array
from numpy import split


class DataController:

    def __init__(self, file_path):
        self.file_path = file_path
        self.df = self.loaddataset()

    def loaddataset(self):
        df = read_csv(
            self.file_path,
            header=0,
            sep=';',
            infer_datetime_format=True,
            parse_dates=['datetime'])
        return df

    def remove_timestamps_in_between(
            self,
            from_hour,
            from_quarter_hour,
            to_hour,
            to_quarter_hour):
        self.df['time'] = pd.to_datetime(self.df['datetime']).dt.time

        time_from = datetime.datetime.now().replace(
            hour=from_hour,
            minute=15 *
            from_quarter_hour,
            second=0,
            microsecond=0).time()
        time_to = datetime.datetime.now().replace(
            hour=to_hour, minute=15 * to_quarter_hour, second=0, microsecond=0).time()
        self.df = self.df.loc[(self.df['time'] >= time_from)
                              & (self.df['time'] <= time_to)]
        del self.df['time']

    def get_data_in_between(self, from_date, to_date):
        self.df['date'] = pd.to_datetime(self.df['datetime']).dt.date
        self.df = self.df.loc[(self.df['date'] >= from_date)
                              & (self.df['date'] <= to_date)]
        del self.df['date']

        return self.df

    def get_all_data(self):
        return self.df

    # split a univariate dataset into train/test sets
    def split_dataset(self, data):

        # in our case 68 steps is from 03:00 - 20:00
        # the last day should be kept for testdata

        train, test = data[0:-70], data[-70:]

        length_of_train = len(train)

        if length_of_train % 7 != 0:
            mod_of_train_len = length_of_train % 7
            train = train[0:length_of_train - mod_of_train_len]


        # structure into steps
        train = array(split(train, len(train) / 7))
        test = array(split(test, len(test) / 7))
        return train, test
