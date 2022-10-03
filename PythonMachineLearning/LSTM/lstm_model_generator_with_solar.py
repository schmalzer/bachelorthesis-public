import pandas as pd
import time
import os
from numpy import array
from numpy import hstack
import numpy as np
import datetime
import tensorflowjs as tfjs
from PythonMachineLearning.util.configuration import Configuration
from PythonMachineLearning.util.influx_data_handler import InfluxDataHandler

from keras.models import Sequential
from keras.layers import LSTM
from keras.layers import Dense


os.environ['CUDA_VISIBLE_DEVICES'] = '-1'

dataHandler = InfluxDataHandler()
df_solar_generation = dataHandler.load_solar_generation_data_from_influx_db('2019-08-01T00:00:00Z','2020-08-01T00:00:00Z')
df_solar_irradiation = dataHandler.load_solar_irradiance_data_from_influx_db('2019-08-01T00:00:00Z','2020-08-01T00:00:00Z')

df_combined = pd.DataFrame().assign(datetime=df_solar_generation['_time'],
                                    AT_solar_generation_actual=df_solar_generation['_value'],
                                    solar_irradiance=df_solar_irradiation['_value'])


def split_sequences(sequences, n_steps):
    X, y = list(), list()
    for i in range(len(sequences)):
        # find the end of this pattern
        end_ix = i + n_steps
        # check if we are beyond the dataset
        if end_ix > len(sequences):
            break
        # gather input and output parts of the pattern
        seq_x, seq_y = sequences[i:end_ix, :-1], sequences[end_ix-1, -1]
        X.append(seq_x)
        y.append(seq_y)
    return array(X), array(y)


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
    np.set_printoptions(threshold=np.inf)
    return array(X), array(y)


def build_model(dataset, epochs, batch_size):
    n_steps = 7

    X, y = split_sequences(dataset, n_steps)

    n_features = X.shape[2]
    n_timesteps = X.shape[1]
    n_outputs = 1

    model = Sequential()
    model.add(
        LSTM(
            200,
            activation='relu',
            input_shape=(
                n_timesteps,
                n_features)))
    # model.add(CuDNNLSTM(200))
    model.add(Dense(100, activation='relu'))
    model.add(Dense(n_outputs))
    model.compile(loss='mse', optimizer='adam')
    # fit model
    model.fit(X, y, epochs=epochs, batch_size=batch_size, verbose=1)
    return model


x_input = array([[80, 85], [90, 95], [100, 105], [100, 105], [100, 105], [100, 105], [100, 105]])

n_steps = 7
n_features = 2
x_input = x_input.reshape((1, n_steps, n_features))


start_date = datetime.datetime(2019, 8, 1).date()
end_date = datetime.datetime(2020, 8, 1).date()

epochs = [20, 40, 50, 60, 70, 100, 150]
batch_sizes = [32, 64, 128]
config = []


def start_with_config(configs, current_iteration):
    generation_values = df_combined['AT_solar_generation_actual'].values
    irradiance_values = df_combined['solar_irradiance'].values
    output_values = df_combined['AT_solar_generation_actual'].values

    in_seq1 = generation_values.reshape((len(generation_values), 1))
    in_seq2 = irradiance_values.reshape((len(irradiance_values), 1))
    out_seq = output_values.reshape((len(output_values), 1))

    dataset = hstack((in_seq1, in_seq2, out_seq))

    for config in configs:
        epochs = config.epochs
        batch_size = config.batch_size

        folder_name = "test-" + str(config.epochs) + "-" + str(config.batch_size) + "-fullDF-auto-model" + \
                      str(current_iteration)
        start_time = time.time()
        model = build_model(dataset, epochs, batch_size)
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


for epoch in epochs:
    for batch_size in batch_sizes:
        config.append(Configuration(start_date, end_date, epoch, batch_size, "", "x", 0, 0, 23, 3))

for i in range(1, 6):
    start_with_config(config, i)


