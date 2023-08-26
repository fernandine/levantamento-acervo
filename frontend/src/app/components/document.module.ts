import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { DocumentRoutingModule } from './document-routing.module';
import { MaterialModule } from '../material/material.module';
import { ReactiveFormsModule } from '@angular/forms';
import { AuthModule } from '../authentication/auth.module';
import { DocumentsComponent } from './documents/documents.component';
import { DocumentsFormComponent } from './documents-form/documents-form.component';
import { DocumentsListComponent } from './documents-list/documents-list.component';
import { DashboardComponent } from './dashboard/dashboard.component';
import { HighchartsChartModule } from 'highcharts-angular';
import { FlexLayoutModule } from '@angular/flex-layout';
import { SharedModule } from "../shared/shared.module";


@NgModule({
    declarations: [
        DocumentsComponent,
        DocumentsFormComponent,
        DocumentsListComponent,
        DashboardComponent,
    ],
    imports: [
        CommonModule,
        MaterialModule,
        ReactiveFormsModule,
        AuthModule,
        DocumentRoutingModule,
        HighchartsChartModule,
        FlexLayoutModule,
        SharedModule
    ]
})
export class DocumentModule { }
