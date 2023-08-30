import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';

import { FlexLayoutModule } from '@angular/flex-layout';
import { ReactiveFormsModule } from '@angular/forms';
import { HighchartsChartModule } from 'highcharts-angular';
import { AuthModule } from '../authentication/auth.module';
import { MaterialModule } from '../material/material.module';
import { SharedModule } from '../shared/shared.module';
import { DocumentRoutingModule } from './document-routing.module';
import { DocumentsListComponent } from './documents-list/documents-list.component';
import { DocumentsComponent } from './documents/documents.component';

@NgModule({
  declarations: [
    DocumentsComponent,
    DocumentsListComponent,
  ],
  imports: [
    CommonModule,
    MaterialModule,
    ReactiveFormsModule,
    AuthModule,
    DocumentRoutingModule,
    HighchartsChartModule,
    FlexLayoutModule,
    SharedModule,
  ],
  providers: []
})
export class DocumentModule {}
