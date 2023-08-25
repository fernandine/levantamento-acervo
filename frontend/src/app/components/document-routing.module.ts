import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { DocumentsComponent } from './documents/documents.component';
import { DocumentsFormComponent } from './documents-form/documents-form.component';
import { DocumentResolver } from '../core/document.resolver';

const routes: Routes = [
  { path: '', component: DocumentsComponent },
  { path: 'new', component: DocumentsFormComponent, resolve: { document: DocumentResolver } },
  { path: 'edit/:id', component: DocumentsFormComponent, resolve: { document: DocumentResolver } }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class DocumentRoutingModule { }