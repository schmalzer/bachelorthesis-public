import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { LSTMChartComponent } from './lstm-chart/chart.component';
import { MatSnackBarModule } from '@angular/material/snack-bar';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { FormsModule, ReactiveFormsModule } from '@angular/forms'
import { HttpClientModule } from '@angular/common/http'
import {MatSelectModule} from '@angular/material/select';
import { MatFormFieldModule } from '@angular/material/form-field';
import {MatDatepickerModule} from '@angular/material/datepicker';
import { MatNativeDateModule } from '@angular/material/core';
import {MatTableModule} from '@angular/material/table';
import { LOCALE_ID } from '@angular/core';
import { DatePipe } from '@angular/common';
import { registerLocaleData } from '@angular/common';
import localeDE from '@angular/common/locales/de-AT';
import { MatTableExporterModule } from 'mat-table-exporter';
import { ResultTableComponent } from './result-table/result-table.component';
import { InfluxService } from './services/influx-service';
import { GRUChartComponent } from './gru-chart/gru-chart.component';
import { GRUSolarChartComponent } from './gru-solar-chart/gru-solar-chart.component';
import { LSTMSolarChartComponent } from './lstm-solar-chart/lstm-solar-chart.component';
import { LiveChartComponent } from './live-chart/live-chart.component';
registerLocaleData(localeDE);

@NgModule({
  declarations: [
    AppComponent,
    LSTMChartComponent,
    ResultTableComponent,
    GRUChartComponent,
    GRUSolarChartComponent,
    LSTMSolarChartComponent,
    LiveChartComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    MatSnackBarModule,
    FormsModule,
    HttpClientModule,
    MatSelectModule,
    MatFormFieldModule,
    MatDatepickerModule,
    MatNativeDateModule,
    ReactiveFormsModule,
    MatTableModule,
    MatTableExporterModule,
    
  ],
  providers: [MatDatepickerModule, DatePipe, { provide: LOCALE_ID, useValue: "de-AT" }, InfluxService],
  bootstrap: [AppComponent]
})
export class AppModule { }
