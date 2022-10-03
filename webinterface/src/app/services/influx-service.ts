import { Component, Injectable, OnInit } from '@angular/core';
import {InfluxDB} from '@influxdata/influxdb-client'
import { environment } from 'src/environments/environment';
import { TimeSeries } from '../classes/timeseries';


@Injectable()
export class InfluxService implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }

  async getGroundTruthTimeSeries(): Promise<TimeSeries>{
    const url = environment.url;
    const token = environment.token;
    const org = environment.org
    const queryApi = new InfluxDB({url, token}).getQueryApi(org)
    const fluxQuery = 'from(bucket:"photovoltaic_bucket") |> range(start:0)'


    return await queryApi.collectRows(fluxQuery)
      .then(data => {
        let data2 = [] as any[];
        data2 = data;
        data = data2.filter(_ => _._field == "AT_solar_generation_actual");
        let values = data.map(function(x){return x['_value'];});
        let timestamps = data.map(function(x){return x['_time'];});
        return new TimeSeries("ground truth", timestamps, values);
      })
      .catch(error => {
        console.error(error);
        return null;
      })
  }

  async getSolarIrradianceSeries(): Promise<TimeSeries>{
    const url = environment.url;
    const token = environment.token;
    const org = environment.org
    const queryApi = new InfluxDB({url, token}).getQueryApi(org)
    const fluxQuery = 'from(bucket:"photovoltaic_bucket") |> range(start:0) |> aggregateWindow(every: 15m, fn: mean, createEmpty: false)'

    return await queryApi.collectRows(fluxQuery)
      .then(data => {
        let data2 = [] as any[];
        data2 = data;
        data = data2.filter(_ => _._field == "cGLOm");
        let values = data.map(function(x){return x['_value'];});
        let timestamps = data.map(function(x){return x['_time'];});
        return new TimeSeries("solar irradiance", timestamps, values);
      })
      .catch(error => {
        console.error(error);
        return null;
      });
  }
}