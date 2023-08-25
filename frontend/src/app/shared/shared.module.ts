import { NgModule } from '@angular/core';
import { ErrorDialogComponent } from './components/error-dialog/error-dialog.component';
import { ConfirmationDialogComponent } from './components/confirmation-dialog/confirmation-dialog.component';
import { MaterialModule } from '../material/material.module';
import { CommonModule } from '@angular/common';

@NgModule({
  imports: [
    CommonModule,
    MaterialModule
  ],
  declarations: [
    ErrorDialogComponent,
    ConfirmationDialogComponent,

  ],
  exports: [
    ErrorDialogComponent,
    ConfirmationDialogComponent,
    ]
})
export class SharedModule { }
