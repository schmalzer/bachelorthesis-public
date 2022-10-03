from matplotlib import pyplot
import pandas as pd
import numpy as np
import datetime


def plot_data(df):
    x = np.array([datetime.datetime(
        int(pd.to_datetime(df.iloc[i].datetime).year),
        int(pd.to_datetime(df.iloc[i].datetime).month),
        int(pd.to_datetime(df.iloc[i].datetime).day),
        int(pd.to_datetime(df.iloc[i].datetime).hour),
        int(pd.to_datetime(df.iloc[i].datetime).minute))
        for i in range(len(df.index))])
    y = df['AT_solar_generation_actual']
    pyplot.plot(x, y)

    pyplot.show()

def plot_predicted_vs_actual(test, predictions):
    # load the new file
    figure = pyplot.figure(figsize=(18, 6), dpi=300)
    figure.suptitle('Comparison of predicted vs actual values', fontsize=14)
    # create subplot
    #pyplot.subplot(len(test.columns), 1, i + 1)

    # get variable name
    # plot data
    pyplot.plot(test, color="blue", label="actual")
    pyplot.plot(predictions, color="red", label="predicted")
    # set title
    # turn off ticks to remove clutter
    pyplot.legend()
    #pyplot.yticks([])
    #pyplot.xticks([])
    pyplot.show()
    