import os
import datetime
from math import sqrt
import numpy
import tensorflowjs as tfjs
import pickle
import time

from sklearn.metrics import mean_squared_error
from PythonMachineLearning.util.configuration import Configuration
from PythonMachineLearning.util.datacontroller import DataController
from PythonMachineLearning.util.plotter import plot_predicted_vs_actual
from numpy import array
from keras.models import Sequential
from keras.layers import GRU
from keras.layers import Dense
from PythonMachineLearning.util.menu import get_config_from_menu



os.environ['CUDA_VISIBLE_DEVICES'] = '-1'
# from keras.layers import CuDNNGRU


def evaluate_model(train, test, n_input, model):
    # fit model
    # history is a list of weekly data
    train_x, train_y = to_supervised(train, n_input, 7)

    history = [x for x in train_x]

    test_x, test_y = to_supervised(test, n_input, 7)

    # walk-forward validation over each week
    predictions = list()

    for i in range(len(test_x)):
        # predict the week
        yhat_sequence = forecast(model, history, n_input)
        # store the predictions
        predictions.append(yhat_sequence)
        # get real observation and add to history for predicting the next week
        history.append(test_x[i, :])
    # evaluate predictions days for each week
    predictions = array(predictions)
    # score, scores = evaluate_forecasts(test_x[:, :, 0], predictions)
    # print("history after prediction")
    # print(history)
    return 0, 0, predictions


# evaluate one or more weekly forecasts against expected values
def evaluate_forecasts(actual, predicted):
    scores = list()
    # calculate an RMSE score for each day
    for i in range(actual.shape[1]):
        # calculate mse
        mse = mean_squared_error(actual[:, i], predicted[:, i])
        # calculate rmse
        rmse = sqrt(mse)
        # store
        scores.append(rmse)
    # calculate overall RMSE
    s = 0
    for row in range(actual.shape[0]):
        for col in range(actual.shape[1]):
            s += (actual[row, col] - predicted[row, col]) ** 2
    score = sqrt(s / (actual.shape[0] * actual.shape[1]))
    return score, scores


def forecast(model, history, n_input):
    # flatten data
    data = array(history)
    data = data.reshape((data.shape[0] * data.shape[1], data.shape[2]))
    # retrieve last observations for input data
    input_x = data[-n_input:, 0]

    # reshape into [1, n_input, 1]
    input_x = input_x.reshape((1, len(input_x), 1))
    # forecast the next week
    yhat = model.predict(input_x, verbose=0)
    # we only want the vector forecast
    yhat = yhat[0]
    return yhat


def build_model(train, n_input, epochs, batch_size):
    # prepare data
    train_x, train_y = to_supervised(train, n_input)
    # define parameters
    verbose = 1
    n_timesteps, n_features, n_outputs = train_x.shape[1], train_x.shape[2], 1
    # define model
    model = Sequential()
    model.add(
        GRU(
            200,
            activation='relu',
            input_shape=(
                n_timesteps,
                n_features), reset_after=False))
    # model.add(CuDNNGRU(200))
    model.add(Dense(100, activation='relu'))
    model.add(Dense(n_outputs))
    model.compile(loss='mse', optimizer='adam')
    # fit network
    test = [[item[0]] for item in train_y]
    test = numpy.array(test)
    model.fit(
        train_x,
        test,
        epochs=epochs,
        batch_size=batch_size,
        verbose=verbose)

    return model


def to_supervised(train, n_input, n_out=7):
    # flatten data
    data = train.reshape((train.shape[0] * train.shape[1], train.shape[2]))
    X, y = list(), list()
    in_start = 0
    # step over the entire history one time step at a time
    for _ in range(len(data)):
        # define the end of the input sequence
        in_end = in_start + n_input
        out_end = in_end + n_out
        # ensure we have enough data for this instance
        if out_end < len(data):
            x_input = data[in_start:in_end, 0]
            x_input = x_input.reshape((len(x_input), 1))
            X.append(x_input)
            y.append(data[in_end:out_end, 0])
        # move along one time step
        in_start += 1
    numpy.set_printoptions(threshold=numpy.inf)
    return array(X), array(y)


def summarize_scores(name, score, scores):
    s_scores = ', '.join(['%.1f' % s for s in scores])
    print('%s: [%.3f] %s' % (name, score, s_scores))


def startSingle():
    create_new_model = True
    save_model = True  # only relevant if createNewModel is true

    # 03:00
    from_hour = 3
    from_quarter_hour = 0  # min = 0, max = 3
    # 20:15
    to_hour = 22
    to_quarter_hour = 0  # min = 0, max = 3
    # results in 70 quarter hours. Make sure its always divisable by 7,
    # since the training sets are split into parts which contain 7 valuepairs

    config = get_config_from_menu()

    from_date = config.start_date
    to_date = config.end_date
    epochs = config.epochs
    batch_size = config.batch_size

    datacontroller = DataController(
        "../data/photovoltaic_power/combined_csv_with_correct_values_and_length.csv")

    if(config.cut_dataframe == "y"):
        datacontroller.remove_timestamps_in_between(
            config.from_hour, config.from_quarter_hour, config.to_hour, config.to_quarter_hour)

    dataframe = datacontroller.get_data_in_between(from_date, to_date)
    # dataframe = datacontroller.get_all_data()
    # plot_data(dataframe)

    values = dataframe['AT_solar_generation_actual'].values
    values = values.reshape(values.shape[0], 1)

    train, test = datacontroller.split_dataset(values)

    if create_new_model:
        if save_model:
            # folder_name = input("Enter foldername: ")
            folder_name = "gru-" + str(config.epochs) + "-" + str(config.batch_size) + "-fullDF3"
        start_time = time.time()
        model = build_model(train, 7, epochs, batch_size)
        duration = time.time() - start_time
        if save_model:
            # date_as_string = now.strftime("%d.%m-%Y-%H;%M;%S")
            tfjs.converters.save_keras_model(model, "./models/" + folder_name + "model")
            # pickle.dump(model, open("./models/" + folder_name, 'wb'))
            model.save("./models/" + folder_name + "model")
            with open('./models/' + folder_name + 'model/config.txt', 'w') as f:
                f.write("Config is:")
                f.write("\nStart date: " + str(config.start_date))
                f.write("\nEnd date: " + str(config.end_date))
                f.write("\nNumber of epochs: " + str(config.epochs))
                f.write("\nBatch size: " + str(config.batch_size))
                f.write("\nTraining duration: " + str(duration))

    else:
        foldername = input("Enter foldername: ")
        model = pickle.load(open("./models/" + foldername, 'rb'))

        # loaded_model_json = json_file.read()
        # json_file.close()
        # model = model_from_json(loaded_model_json)
        # load weights into new model
        # model.load_weights('./models/' + path + '_weights.h5')


    score1, scores1, actual_predictions = evaluate_model(train, test, 7, model)

    test = test.reshape(test.shape[0] * test.shape[1])
    # remove the first 7 values + 1 because we remove the first prediction
    actual_predictions = actual_predictions.reshape(
        actual_predictions.shape[0] * actual_predictions.shape[1])
    actual_predictions = actual_predictions[1:]
    plot_predicted_vs_actual(test, actual_predictions)


def startWithConfig(configs, current_iteration):
    for config in configs:

        # 03:00
        from_hour = 3
        from_quarter_hour = 0  # min = 0, max = 3
        # 20:15
        to_hour = 22
        to_quarter_hour = 0  # min = 0, max = 3
        # results in 70 quarter hours. Make sure its always divisable by 7,
        # since the training sets are split into parts which contain 7 valuepairs

        from_date = config.start_date
        to_date = config.end_date
        epochs = config.epochs
        batch_size = config.batch_size

        datacontroller = DataController(
            "../data/photovoltaic_power/combined_csv_with_correct_values_and_length.csv")

        if (config.cut_dataframe == "y"):
            datacontroller.remove_timestamps_in_between(
                config.from_hour, config.from_quarter_hour, config.to_hour, config.to_quarter_hour)

        dataframe = datacontroller.get_data_in_between(from_date, to_date)
        # dataframe = datacontroller.get_all_data()

        values = dataframe['AT_solar_generation_actual'].values
        values = values.reshape(values.shape[0], 1)

        train, test = datacontroller.split_dataset(values)

        # folder_name = input("Enter foldername: ")
        folder_name = "gru-" + str(config.epochs) + "-" + str(config.batch_size) + "-fullDF-auto-model" + \
                      str(current_iteration)
        start_time = time.time()
        model = build_model(train, 7, epochs, batch_size)
        duration = time.time() - start_time
        # date_as_string = now.strftime("%d.%m-%Y-%H;%M;%S")
        tfjs.converters.save_keras_model(model, "./models/" + folder_name)
        # pickle.dump(model, open("./models/" + folder_name, 'wb'))
        model.save("./models/" + folder_name)
        with open('./models/' + folder_name + '/config.txt', 'w') as f:
            f.write("Config is:")
            f.write("\nStart date: " + str(config.start_date))
            f.write("\nEnd date: " + str(config.end_date))
            f.write("\nNumber of epochs: " + str(config.epochs))
            f.write("\nBatch size: " + str(config.batch_size))
            f.write("\nTraining duration: " + str(duration))


startSingle()


config = []
start_date = datetime.datetime(2019, 8, 1).date()
end_date = datetime.datetime(2020, 8, 1).date()
epochs = [20, 40, 50, 60, 70, 100, 150]
batch_sizes = [32, 64, 128]

for epoch in epochs:
    for batch_size in batch_sizes:
        config.append(Configuration(start_date, end_date, epoch, batch_size, "", "x", 0, 0, 23, 3))

# for i in range(1, 6):
    # startWithConfig(config, i)


