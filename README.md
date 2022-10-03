# Framework for the thesis: Comparing machine learning models for predicting the future power output of photovoltaic systems in Austria

This is the source code which was developed for the research done in the thesis: Comparing machine learning models for predicting the future power output of photovoltaic systems in Austria.

## Description
This is the source code which was created for my bachelor thesis. It is an application which consists of two parts. The first one being the frontend which can evaluate the trained models and display them in a live view. The second one being the python training framework which is responsible for creating new models which can be evaluated in the frontend.

### Dependencies
Docker
Python3
Node.js

### Setup 

After cloning the repository it is necessary to get the influxdb running in a docker container. The Dockerfile for this is located in /[PythonMachineLearning](https://github.com/schmalzer/bachelorthesis-public/tree/main/PythonMachineLearning)/[influxDb](https://github.com/schmalzer/bachelorthesis-public/tree/main/PythonMachineLearning/influxDb)/**Dockerfile**

Then execute the following commands:
```docker build -t pvdb .```
```docker run -d -p 8086:8086 pvdb```

Then setup a python environment and install all necessary dependencies found in environment.yml

Go to /[PythonMachineLearning](https://github.com/schmalzer/bachelorthesis-public/tree/main/PythonMachineLearning)/[util](https://github.com/schmalzer/bachelorthesis-public/tree/main/PythonMachineLearning/util)/**influx_data_handler.py**

and execute the file. It will read the pv data from the .csv files and insert the data accordingly in the influxdb.

The solar irradiance data is not available in this repository since the data is not allowed to be published publicly. If you have access to the data you can use the / [PythonMachineLearning](https://github.com/schmalzer/bachelorthesis-public/tree/main/PythonMachineLearning)/[util](https://github.com/schmalzer/bachelorthesis-public/tree/main/PythonMachineLearning/util)/**solar_irradiance_data_prep.py**
file to insert the solar irradiance data to the influx db aswell.


After that go to /[webserver](https://github.com/schmalzer/bachelorthesis-public/tree/main/webserver)/[server](https://github.com/schmalzer/bachelorthesis-public/tree/main/webserver/server)/**server.js**

and run the command:  ```node server.js```
This is the webserver which provides the ML models to the frontend.

Then run the command ```npm install``` in the frontend directory:
bachelorthesis-public/[webinterface](https://github.com/schmalzer/bachelorthesis-public/tree/main/webinterface)

After that the frontend can be run with the command: ```ng serve```

The frontend should then be available on localhost:4200
and the endpoints 
localhost:4200/live
localhost:4200/lstm
localhost:4200/lstm-solar
localhost:4200/gru
localhost:4200/gru-solar

should be available.

## The Python Training Framework

The framework was built to automatically create the ML Models in the thesis.
The ML models trained are divided in 4 major types namely: lstm, lstm with solar data, gru and gru with solar data. 

The files to train the lstm models can be found in
[bachelorthesis-public](https://github.com/schmalzer/bachelorthesis-public)/[PythonMachineLearning](https://github.com/schmalzer/bachelorthesis-public/tree/main/PythonMachineLearning)/[LSTM](https://github.com/schmalzer/bachelorthesis-public/tree/main/PythonMachineLearning/LSTM)


The files to train the gru models can be found in [bachelorthesis-public](https://github.com/schmalzer/bachelorthesis-public)/[PythonMachineLearning](https://github.com/schmalzer/bachelorthesis-public/tree/main/PythonMachineLearning)/[GRU](https://github.com/schmalzer/bachelorthesis-public/tree/main/PythonMachineLearning/GRU)

As example in the [bachelorthesis-public](https://github.com/schmalzer/bachelorthesis-public)/[PythonMachineLearning](https://github.com/schmalzer/bachelorthesis-public/tree/main/PythonMachineLearning)/[LSTM](https://github.com/schmalzer/bachelorthesis-public/tree/main/PythonMachineLearning/LSTM)/[lstm_model_generator.py](https://github.com/schmalzer/bachelorthesis-public/tree/main/PythonMachineLearning/LSTM/lstm_model_generator.py)

the parameters can be tuned at the end of the file. This is the case for all 4 files which train the models. Also in all files is a startSingle() function which is commented out. It can be used to generate just a single model which can be tested.


## Authors

Contributors names and contact info

David Schmalzer: e11809617@student.tuwien.ac.at
