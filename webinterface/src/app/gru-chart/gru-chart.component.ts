import { Component, OnInit, ViewChild } from '@angular/core';
import { TimeSeries } from '../classes/timeseries';
import Plotly from 'plotly.js-dist';
import * as tf from '@tensorflow/tfjs';
import { LayersModel, sigmoid, Tensor } from '@tensorflow/tfjs';
import { MatSnackBar } from '@angular/material/snack-bar';
import {GRUPredictor} from '../predictor/GRU-predictor'
import { HttpClient } from '@angular/common/http';
import { FormControl, FormGroup } from '@angular/forms';
import { DatePipe } from '@angular/common';
import { InfluxService } from '../services/influx-service';
import { ResultTableComponent, StatsElement } from '../result-table/result-table.component';
import { environment } from 'src/environments/environment';

@Component({
  selector: 'app-gru-chart',
  templateUrl: './gru-chart.component.html',
  styleUrls: ['./gru-chart.component.scss']
})
export class GRUChartComponent implements OnInit {

  constructor(private _snackBar: MatSnackBar, private httpClient: HttpClient, public datepipe: DatePipe,
    private _influxService: InfluxService) { }


  groundTruth: TimeSeries;
  GRULiveChartCount: number = 0;
  GRULiveChartCurrentIteration: number = 25; //start where the day starts to decrease waiting time
  GRUModel: LayersModel;
  availableModels: string[];
  selectedModel;

  timestepsToPredict = 0;

  MSEofGRU = 0;
  RMSEofGRU = 0;
  MAEofGRU = 0;
  coefficientOfGRU = 0;


  today = new Date();
  month = this.today.getMonth();
  year = this.today.getFullYear();

  defaultStartDate = new Date(2020, 8, 1 );
  defaultEndDate = new Date(2020, 8, 5);


  range = new FormGroup({
    start: new FormControl(this.defaultStartDate),
    end: new FormControl(this.defaultEndDate),
  });

  statsTableData: StatsElement[] = [];
  @ViewChild(ResultTableComponent) resultTable: ResultTableComponent;

  async ngOnInit(): Promise<void> {

    
    this.availableModels = await this.httpClient.get<string[]>(environment.webserverUrl + "getAvailableModels/gru").toPromise();
    this.selectedModel = this.availableModels[9];
    console.log(this.availableModels)


    this.groundTruth = await this._influxService.getGroundTruthTimeSeries();
    

    //this.plotGRULiveChart();

    //setInterval(()=> { this.updateGRULiveChart() }, 1 * 100);
  }

  private plotGRUFixedChart(results: TimeSeries, startDate: string, endDate: string) {
    let GRUFixedChart = document.getElementById('GRUFixedChart');
    const trace1 = {
      x: this.groundTruth.timestamps,
      y: this.groundTruth.data,
      name: "ground truth"
    };

    const trace2 = {
      x: results.timestamps,
      y: results.data,
      name: "predictions"
    };

    var layout = {
      title: {
        text:'GRU Predictions (' + this.timestepsToPredict + ')',
        font: {
          family: 'Courier New, monospace',
          size: 24
        },
        xref: 'paper',
        x: 0.05,
      }
    };

    Plotly.newPlot(GRUFixedChart, [trace1, trace2], layout);
  }

  async startPredicting(){
    console.log("selected model: " + this.selectedModel)
    const url = environment.webserverUrl + "gru/" + this.selectedModel + "/model.json";
    this.GRUModel = await tf.loadLayersModel(url).catch(_ => {
      this._snackBar.open("GRU model could not be loaded. Is the fileserver running?");
    }) as LayersModel;


    let startDate = this.datepipe.transform(this.range.controls.start.value, "yyyy-MM-ddThh:mm:ss'Z'");
    let endDate = this.datepipe.transform(this.range.controls.end.value, "yyyy-MM-ddThh:mm:ss'Z'");

    let results: TimeSeries = await this.predictValues(this.GRUModel, this.groundTruth, startDate, endDate);
    this.plotGRUFixedChart(results, startDate, endDate);
    
  }

  async startPredictingAllGRUMOdels(){
    for(let model of this.availableModels){
      console.log(model);
      console.log("selected model: " + model)
      this.GRUModel = await tf.loadLayersModel(environment.webserverUrl + "gru/" + model + "/model.json").catch(_ => {
        this._snackBar.open("GRU model could not be loaded. Is the fileserver running?");
      }) as LayersModel;


      let startDate = this.datepipe.transform(this.range.controls.start.value, "yyyy-MM-ddThh:mm:ss'Z'");
      let endDate = this.datepipe.transform(this.range.controls.end.value, "yyyy-MM-ddThh:mm:ss'Z'");

      let results: TimeSeries = await this.predictValues(this.GRUModel, this.groundTruth, startDate, endDate);
      this.calculateStats(results, this.groundTruth, startDate, endDate);
      this.statsTableData.push({name: model, coefficient: this.coefficientOfGRU,
      mae: this.MAEofGRU, mse: this.MSEofGRU, rmse: this.RMSEofGRU} as StatsElement)
      this.resultTable.updateTable(this.statsTableData);
    }
  }

  async predictValues(model: tf.LayersModel, groundTruth: TimeSeries, startDate: string, endDate: string): Promise<TimeSeries> {
    let predictor = new GRUPredictor(model);

    let startIndex = this.groundTruth.timestamps.indexOf(startDate);
    let endIndex = this.groundTruth.timestamps.indexOf(endDate);
    console.log("start date: " + startDate);
    let groundTruthSegment: number[] = groundTruth.data.slice(startIndex, endIndex -7);
    let timestamps: string[] = groundTruth.timestamps.slice(startIndex, endIndex -7);
    let tensor: tf.Tensor<tf.Rank>;
  
    let results: TimeSeries = {name: "GRU Predctions", data: [], timestamps: []};
  
    let timestampsToPredict = endIndex - startIndex;
    this.timestepsToPredict = timestampsToPredict;
    for(let i = 7; i < timestampsToPredict-7; i++){
      tensor = tf.tensor([groundTruthSegment.slice(i-7, i)]);
      let prediction = predictor.predict(tensor);
      if(prediction < 0){
        prediction = 0;
      }
      results.data.push(prediction);
      results.timestamps.push(timestamps[i]);
      if(i%100 == 0){
        this.updateProgressBar(i, timestampsToPredict);
        await new Promise(r => setTimeout(r, 0)); //for view update
      }

    }

    this.updateProgressBar(timestampsToPredict, timestampsToPredict);
    this.calculateStats(results, groundTruth, startDate, endDate);
    return results;
  }

  calculateStats(results: TimeSeries, groundTruth: TimeSeries, startDate: string, endDate: string){
    let startIndex = this.groundTruth.timestamps.indexOf(startDate);
    let endIndex = this.groundTruth.timestamps.indexOf(endDate);
    let groundTruthSegment: number[] = groundTruth.data.slice(startIndex, endIndex -7);

    groundTruthSegment = groundTruthSegment.slice(-this.timestepsToPredict);
    let sumOfSquaredErrors = 0;
    for(let i = 0; i < results.data.length; i++){
      sumOfSquaredErrors += Math.pow(groundTruthSegment[i+7] - results.data[i], 2);
    }
    this.MSEofGRU = (1 / this.timestepsToPredict) * sumOfSquaredErrors;
    this.RMSEofGRU = Math.sqrt(this.MSEofGRU);

    let sumForMAE = 0;
    for(let i = 0; i < results.data.length; i++){
        sumForMAE += Math.abs(results.data[i] - groundTruthSegment[i+7])
    }
    this.MAEofGRU = sumForMAE / groundTruthSegment.length;

    let averageOfPredictedvValues = 0;
    let averageOfMeasuredValues = 0;

    for(let i = 0; i < results.data.length; i++){
      averageOfMeasuredValues += groundTruthSegment[i+7];
    }
    
    for(let i = 0; i < results.data.length; i++){
      averageOfPredictedvValues += results.data[i];
    }

    averageOfMeasuredValues = averageOfMeasuredValues / groundTruthSegment.length;
    averageOfPredictedvValues = averageOfPredictedvValues / results.data.length;


    let numeratorOfCoefficient = 0;
    let denominatorOfCoefficientPart1 = 0;
    let denominatorOfCoefficientPart2 = 0;


    for(let i = 0; i < results.data.length; i++){
      numeratorOfCoefficient += 
      (groundTruthSegment[i+7] - averageOfMeasuredValues) * (results.data[i] - averageOfPredictedvValues);

      denominatorOfCoefficientPart1 += Math.pow((groundTruthSegment[i+7] - averageOfMeasuredValues), 2);
      denominatorOfCoefficientPart2 += Math.pow((results.data[i] - averageOfPredictedvValues), 2);
    }

    this.coefficientOfGRU = numeratorOfCoefficient / (Math.sqrt((denominatorOfCoefficientPart1 * denominatorOfCoefficientPart2)));
    this.coefficientOfGRU = Math.trunc(this.coefficientOfGRU*100000)/100000

  }
  
  
  updateProgressBar(currentStep: number, totalSteps: number) {
    let bar = document.getElementById("myBar");
    let fullbar = document.getElementById("progressBarText");
    let progress = (currentStep / totalSteps) * 100;
    if (progress >= 100) {
      bar.style.width = 1 + "%";
      bar.innerHTML = "";
      fullbar.innerHTML = "";
    } else {
      bar.style.width = progress + "%";
      fullbar.innerHTML = currentStep + " / " + totalSteps;

    }
  }

 /*### chart 2 ### */
  
  plotGRULiveChart(){
    let GRULiveChart = document.getElementById('GRULiveChart');
    Plotly.newPlot(GRULiveChart,[{
      y:[this.groundTruth.data[25]],
      type:'line',
      name:'ground truth'
    },
    {
      y:[this.groundTruth.data[30]],
      type:'line',
      name:'prediction'
    },
  ]);
  }
    
    
  updateGRULiveChart(){
    let GRULiveChart = document.getElementById('GRULiveChart');

    let predictor = new GRUPredictor(this.GRUModel);
    let tensor = tf.tensor([this.groundTruth.data.slice(this.GRULiveChartCurrentIteration-7, this.GRULiveChartCurrentIteration)]);
    let prediction = predictor.predict(tensor);

    this.GRULiveChartCurrentIteration += 1;

    // extend multiple traces
    // extend multiple traces
    Plotly.extendTraces(GRULiveChart, {y: [[this.groundTruth.data[this.GRULiveChartCurrentIteration]],[prediction]]}, [0,1])
    this.GRULiveChartCount += 1;
    if(this.GRULiveChartCount > 100) {
      Plotly.relayout(GRULiveChart,{
          xaxis: {
              range: [this.GRULiveChartCount-100, this.GRULiveChartCount]
          }
      });
    }
  }

  selectModel(event: Event) {
    this.selectedModel = (event.target as HTMLSelectElement).value;
  }
  
}
