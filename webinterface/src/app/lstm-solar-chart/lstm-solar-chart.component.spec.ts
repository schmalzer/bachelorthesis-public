import { ComponentFixture, TestBed } from '@angular/core/testing';

import { LstmSolarChartComponent } from './lstm-solar-chart.component';

describe('LstmSolarChartComponent', () => {
  let component: LstmSolarChartComponent;
  let fixture: ComponentFixture<LstmSolarChartComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ LstmSolarChartComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(LstmSolarChartComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
