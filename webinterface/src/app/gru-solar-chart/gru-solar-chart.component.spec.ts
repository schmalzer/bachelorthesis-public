import { ComponentFixture, TestBed } from '@angular/core/testing';

import { GruSolarChartComponent } from './gru-solar-chart.component';

describe('GruSolarChartComponent', () => {
  let component: GruSolarChartComponent;
  let fixture: ComponentFixture<GruSolarChartComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ GruSolarChartComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(GruSolarChartComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
