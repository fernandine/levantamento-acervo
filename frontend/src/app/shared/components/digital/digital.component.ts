import { Component, Input, SimpleChanges, ViewChild } from '@angular/core';
import { MatPaginator, PageEvent } from '@angular/material/paginator';
import { MatTableDataSource } from '@angular/material/table';
import { DataSurvey } from 'src/app/common/data-survey';
import { Page } from 'src/app/common/pagination';
import { DocumentService } from 'src/app/services/document.service';

@Component({
  selector: 'app-digital',
  templateUrl: './digital.component.html',
  styleUrls: ['./digital.component.scss']
})
export class DigitalComponent {

  @Input() data: DataSurvey[] = [];
  @ViewChild(MatPaginator) paginator!: MatPaginator;
  @Input() dataSource = new MatTableDataSource<DataSurvey>(this.data);

  readonly displayedColumns = [
    'name',
    'currentPhase',
    'intermediatePhase',
    'finalDestination'
  ];

  constructor(private service: DocumentService){}

  ngOnInit() {
    const page = 0;
    const size = 200;

    this.service.list(page, size).subscribe((response: Page<DataSurvey>) => {
      this.dataSource.data = response.content;
      this.dataSource.paginator = this.paginator;
    });
  }
}
