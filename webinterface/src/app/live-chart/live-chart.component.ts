import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { MatSnackBar } from '@angular/material/snack-bar';
import { LayersModel } from '@tensorflow/tfjs';
import { InfluxService } from '../services/influx-service';
import * as tf from '@tensorflow/tfjs';
import Plotly from 'plotly.js-dist';
import { TimeSeries } from '../classes/timeseries';
import {LSTMPredictor} from '../predictor/LSTM-predictor'
import { LSTMSolarPredictor } from '../predictor/LSTM-solar-predictor';
import { GRUPredictor } from '../predictor/GRU-predictor';
import { GRUSolarPredictor } from '../predictor/GRU-solar-predictor';
import { environment } from 'src/environments/environment';

@Component({
  selector: 'app-live-chart',
  templateUrl: './live-chart.component.html',
  styleUrls: ['./live-chart.component.scss']
})
export class LiveChartComponent implements OnInit {

  constructor(private _snackBar: MatSnackBar, private httpClient: HttpClient,
    private _influxService: InfluxService) { }

  groundTruth: TimeSeries;
  solarIrradiance: TimeSeries;
  liveChartCount: number = 0;
  liveChartCurrentIteration: number = 25; //start where the day starts to decrease waiting time
  selectedModel;
  timestepsToPredict = 0;

  LSTMModel: LayersModel;
  GRUModel: LayersModel;
  LSTMSolarModel: LayersModel;
  GRUSolarModel: LayersModel;

  started: boolean = true;
  chartReady: boolean = false;
  interval;
  simulationSpeed: number = 100;

  async ngOnInit(): Promise<void> {

    this.LSTMModel = await tf.loadLayersModel(environment.webserverUrl + "lstm/lstm-70-32-fullDF-auto-model2/model.json").catch(_ => {
      this._snackBar.open("LSTM model could not be loaded. Is the fileserver running?");
    }) as LayersModel;

    this.GRUModel = await tf.loadLayersModel(environment.webserverUrl + "gru/gru-150-64-fullDF-auto-model2/model.json").catch(_ => {
      this._snackBar.open("GRU model could not be loaded. Is the fileserver running?");
    }) as LayersModel;

    this.LSTMSolarModel = await tf.loadLayersModel(environment.webserverUrl + "lstm-solar/test-20-64-fullDF-auto-model2/model.json").catch(_ => {
      this._snackBar.open("LSTM-solar model could not be loaded. Is the fileserver running?");
    }) as LayersModel;

    this.GRUSolarModel = await tf.loadLayersModel(environment.webserverUrl + "gru-solar/gru-solar-20-64-fullDF-auto-model2/model.json").catch(_ => {
      this._snackBar.open("GRU-solar model could not be loaded. Is the fileserver running?");
    }) as LayersModel;

    this.groundTruth = await this._influxService.getGroundTruthTimeSeries();
    this.solarIrradiance = await this._influxService.getSolarIrradianceSeries();
    
    this.plotLiveChart();

    this.interval = setInterval(()=> { this.updateLiveChart() }, 1 * this.simulationSpeed);
    this.chartReady = true;
  }

  stop(){
    this.started = false;
    clearInterval(this.interval);
  }

  resume(){
    this.started = true;
    this.interval = setInterval(()=> { this.updateLiveChart() }, 1 * this.simulationSpeed);
  }

  restart(){
    this.chartReady = false;
    this.liveChartCount = 0;
    this.liveChartCurrentIteration = 25; //start where the day starts to decrease waiting time
    this.plotLiveChart();
    this.started = true;
    this.chartReady = true;
  }

  adjustSpeed(){
    clearInterval(this.interval);
    this.interval = setInterval(()=> { this.updateLiveChart() }, 1 * this.simulationSpeed);
  }

  private plotLiveChart(){
    let liveChart = document.getElementById('liveChart');
    Plotly.newPlot(liveChart,[{
        y:[this.groundTruth.data[25]],
        type:'line',
        name:'ground truth'
      },
      {
        y:[this.groundTruth.data[25]],
        type:'line',
        name:'lstm-70-32-fullDF-auto-model2'
      },
      {
        y:[this.groundTruth.data[25]],
        type:'line',
        name:'lstm-solar-20-64-fullDF-auto-model2'
      },
      {
        y:[this.groundTruth.data[25]],
        type:'line',
        name:'gru-150-64-fullDF-auto-model2'
      },
      {
        y:[this.groundTruth.data[25]],
        type:'line',
        name:'gru-solar-20-64-fullDF-auto-model2'
      },
    ]);
  }

  private updateLiveChart(){
    let liveChart = document.getElementById('liveChart');

    let groundTruthData = this.groundTruth.data.slice(this.liveChartCurrentIteration-7, this.liveChartCurrentIteration);
    let solarIrradiance = this.solarIrradiance.data.slice(this.liveChartCurrentIteration-7, this.liveChartCurrentIteration);

    let tensorNormal = tf.tensor([groundTruthData]);

    let tensorWithSolarPreparation = groundTruthData.map(function(e, i) {
      return [e, solarIrradiance[i]];
    });

    let tensorWithSolar = tf.tensor([tensorWithSolarPreparation]);

    let predictor = new LSTMPredictor(this.LSTMModel);
    let prediction = predictor.predict(tensorNormal);

    let predictor2 = new LSTMSolarPredictor(this.LSTMSolarModel);
    let prediction2 = predictor2.predict(tensorWithSolar);

    let predictor3 = new GRUPredictor(this.GRUModel);
    let prediction3 = predictor3.predict(tensorNormal);

    let predictor4 = new GRUSolarPredictor(this.GRUSolarModel);
    let prediction4 = predictor4.predict(tensorWithSolar);


    // extend multiple traces
    Plotly.extendTraces(liveChart, {y: [[this.groundTruth.data[this.liveChartCurrentIteration]],[prediction],[prediction2],[prediction3],[prediction4]]}, [0,1,2,3,4])
    this.liveChartCount += 1;
    if(this.liveChartCount > 100) {
      Plotly.relayout(liveChart,{
          xaxis: {
              range: [this.liveChartCount-100, this.liveChartCount]
          }
      });
    }
    this.liveChartCurrentIteration += 1;

  }

}
