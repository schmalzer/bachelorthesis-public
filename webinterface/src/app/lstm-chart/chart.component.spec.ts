import { ComponentFixture, TestBed, waitForAsync } from '@angular/core/testing';

import { LSTMChartComponent } from './chart.component';

describe('ChartComponent', () => {
  let component: LSTMChartComponent;
  let fixture: ComponentFixture<LSTMChartComponent>;

  beforeEach(waitForAsync(() => {
    TestBed.configureTestingModule({
      declarations: [ LSTMChartComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(LSTMChartComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
