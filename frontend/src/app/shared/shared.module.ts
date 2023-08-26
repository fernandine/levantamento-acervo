import { NgModule } from '@angular/core';
import { ErrorDialogComponent } from './components/error-dialog/error-dialog.component';
import { ConfirmationDialogComponent } from './components/confirmation-dialog/confirmation-dialog.component';
import { MaterialModule } from '../material/material.module';
import { CommonModule } from '@angular/common';
import { HighchartsChartModule } from 'highcharts-angular';
import { AreaComponent } from './widgets/area/area.component';
import { CardComponent } from './widgets/card/card.component';
import { PieComponent } from './widgets/pie/pie.component';

@NgModule({
  imports: [
    CommonModule,
    MaterialModule,
    HighchartsChartModule,
  ],
  declarations: [
    ErrorDialogComponent,
    ConfirmationDialogComponent,
    AreaComponent,
    CardComponent,
    PieComponent
  ],
  exports: [
    ErrorDialogComponent,
    ConfirmationDialogComponent,
    AreaComponent,
    CardComponent,
    PieComponent
    ]
})
export class SharedModule { }
