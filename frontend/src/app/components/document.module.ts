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


@NgModule({
  declarations: [
    DocumentsComponent,
    DocumentsFormComponent,
    DocumentsListComponent,
    DashboardComponent,
  ],
  imports: [
    CommonModule,
    CommonModule,
    MaterialModule,
    ReactiveFormsModule,
    AuthModule,
    DocumentRoutingModule
  ]
})
export class DocumentModule { }
