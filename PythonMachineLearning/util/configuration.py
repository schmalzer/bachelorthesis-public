
class Configuration:
    def __init__(self, start_date, end_date, epochs, batch_size, folder_name, cut_dataframe):
        self.start_date = start_date
        self.end_date = end_date
        self.epochs = epochs
        self.batch_size = batch_size
        self.folder_name = folder_name
        self.cut_dataframe = cut_dataframe

    def __init__(self, start_date, end_date, epochs, batch_size, folder_name, cut_dataframe,
                 from_hour=0, from_quarter_hour=0, to_hour=23, to_quarter_hour=3):
        self.start_date = start_date
        self.end_date = end_date
        self.epochs = epochs
        self.batch_size = batch_size
        self.folder_name = folder_name
        self.cut_dataframe = cut_dataframe
        self.from_hour = from_hour
        self.from_quarter_hour = from_quarter_hour
        self.to_hour = to_hour
        self.to_quarter_hour = to_quarter_hour

