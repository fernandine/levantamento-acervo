import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { FlexLayoutModule } from '@angular/flex-layout';
import { HighchartsChartModule } from 'highcharts-angular';
import { MaterialModule } from '../material/material.module';
import { ConfirmationDialogComponent } from './components/confirmation-dialog/confirmation-dialog.component';
import { DigitalComponent } from './components/digital/digital.component';
import { ErrorDialogComponent } from './components/error-dialog/error-dialog.component';
import { PhysicalComponent } from './components/physical/physical.component';
import { AreaComponent } from './widgets/area/area.component';
import { CardComponent } from './widgets/card/card.component';
import { PieComponent } from './widgets/pie/pie.component';

@NgModule({
  imports: [
    CommonModule,
    MaterialModule,
    HighchartsChartModule,
    FlexLayoutModule,
  ],
  declarations: [
    ErrorDialogComponent,
    ConfirmationDialogComponent,
    AreaComponent,
    CardComponent,
    PieComponent,
    PhysicalComponent,
    DigitalComponent,
  ],
  exports: [
    ErrorDialogComponent,
    ConfirmationDialogComponent,
    AreaComponent,
    CardComponent,
    PieComponent,
    PhysicalComponent,
    DigitalComponent,
  ],
})
export class SharedModule {}
