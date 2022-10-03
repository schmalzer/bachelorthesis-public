import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { GRUChartComponent } from './gru-chart/gru-chart.component';
import { GRUSolarChartComponent } from './gru-solar-chart/gru-solar-chart.component';
import { LiveChartComponent } from './live-chart/live-chart.component';
import { LSTMChartComponent } from './lstm-chart/chart.component';
import { LSTMSolarChartComponent } from './lstm-solar-chart/lstm-solar-chart.component';

const routes: Routes = [{ path: '', component: LSTMChartComponent },
                        { path: 'gru', component: GRUChartComponent },
                        { path: 'gru-solar', component: GRUSolarChartComponent },
                        { path: 'lstm-solar', component: LSTMSolarChartComponent },
                        { path: 'live', component: LiveChartComponent },];

@NgModule({
  imports: [RouterModule.forRoot(routes, { relativeLinkResolution: 'legacy' })],
  exports: [RouterModule]
})
export class AppRoutingModule { }
