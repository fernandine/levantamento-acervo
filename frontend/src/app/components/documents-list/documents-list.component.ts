import { Component, Input, ViewChild } from '@angular/core';
import { MatPaginator, MatPaginatorIntl } from '@angular/material/paginator';
import { MatTableDataSource } from '@angular/material/table';
import { Page } from 'src/app/common/pagination';
import { DataSurvey } from '../../common/data-survey';
import { DocumentService } from '../../services/document.service';

@Component({
  selector: 'app-documents-list',
  templateUrl: './documents-list.component.html',
  styleUrls: ['./documents-list.component.scss'],
})
export class DocumentsListComponent {

  @Input() data: DataSurvey[] = [];
  @ViewChild(MatPaginator) paginator!: MatPaginator;
  @Input() dataSource = new MatTableDataSource<DataSurvey>(this.data);

  constructor(private service: DocumentService){}

  readonly displayedColumns = [
    'name',
    'area',
    'documentaryStudy',
    'classification',
    'ged',
    'auxiliaryDocument',
    'submission',
    'legalAnalysis',
    'digitalQuantitative',
    'physicalQuantitative',
    'microfilmQuantitative'
  ];

  ngOnInit() {
    const page = 0;
    const size = 200;

    this.service.list(page, size).subscribe((response: Page<DataSurvey>) => {
      this.dataSource.data = response.content;
      this.dataSource.paginator = this.paginator;
    });
  }
}

