import { animate, state, style, transition, trigger } from '@angular/animations';
import { Component, EventEmitter, Input, Output, SimpleChanges } from '@angular/core';
import { DataSurvey } from '../../common/data-survey';
import { DocumentService } from '../../services/document.service';

@Component({
  selector: 'app-documents-list',
  templateUrl: './documents-list.component.html',
  styleUrls: ['./documents-list.component.scss'],
  animations: [
    trigger('detailExpand', [
      state('collapsed', style({height: '0px', minHeight: '0'})),
      state('expanded', style({height: '*'})),
      transition('expanded <=> collapsed', animate('225ms cubic-bezier(0.4, 0.0, 0.2, 1)')),
    ]),
  ],
})
export class DocumentsListComponent {

  @Input() data: DataSurvey[] = [];
  @Output() details: EventEmitter<DataSurvey> = new EventEmitter(false);
  @Output() edit: EventEmitter<DataSurvey> = new EventEmitter(false);
  @Output() remove: EventEmitter<DataSurvey> = new EventEmitter(false);
  @Output() add: EventEmitter<boolean> = new EventEmitter(false);
  @Output() view: EventEmitter<DataSurvey> = new EventEmitter(false);

  readonly displayedColumns = [
    'name',
    'area',
    'documentaryStudy',
    'submission',
    'legalAnalysis',
    'digitalQuantitative',
    'physicalQuantitative',
    //'digitalDocument',
    'physicalDocument',
    'expand'
  ];

  onDetails(record: DataSurvey) {
    this.details.emit(record);
  }

  onAdd() {
    this.add.emit(true);
  }

  onEdit(record: DataSurvey) {
    this.edit.emit(record);
  }

  onRemove(record: DataSurvey) {
    this.remove.emit(record);
  }

  onView(record: DataSurvey) {
    this.view.emit(record);
  }

}

