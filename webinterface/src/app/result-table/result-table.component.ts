import { Component, OnInit } from '@angular/core';
import { Observable, ReplaySubject } from 'rxjs';
import { DataSource } from '@angular/cdk/collections';

@Component({
  selector: 'app-result-table',
  templateUrl: './result-table.component.html',
  styleUrls: ['./result-table.component.scss']
})
export class ResultTableComponent implements OnInit {

  statsTableData: StatsElement[] = [];
  displayedColumns: string[] = ['name', 'mse', 'rmse', 'mae', 'coefficient'];
  dataSource = new StatsDataSource(this.statsTableData);

  constructor() { }

  ngOnInit(): void {
  }

  updateTable(statsTableData: StatsElement[]){
    this.dataSource.setData(statsTableData);
  }

}

export interface StatsElement {
  name: string;
  mse: number;
  rmse: number;
  mae: number;
  coefficient: number;
}

class StatsDataSource extends DataSource<StatsElement> {
  private _dataStream = new ReplaySubject<StatsElement[]>();

  constructor(initialData: StatsElement[]) {
    super();
    this.setData(initialData);
  }

  connect(): Observable<StatsElement[]> {
    return this._dataStream;
  }

  disconnect() {}

  setData(data: StatsElement[]) {
    this._dataStream.next(data);
  }
}