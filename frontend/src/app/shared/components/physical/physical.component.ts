import { Component, Input, SimpleChanges, ViewChild } from '@angular/core';
import { MatPaginator } from '@angular/material/paginator';
import { MatTableDataSource } from '@angular/material/table';
import { DataSurvey } from 'src/app/common/data-survey';
import { Page } from 'src/app/common/pagination';
import { DocumentService } from 'src/app/services/document.service';

@Component({
  selector: 'app-physical',
  templateUrl: './physical.component.html',
  styleUrls: ['./physical.component.scss']
})
export class PhysicalComponent {

  @Input() data: DataSurvey[] = [];
  @ViewChild(MatPaginator) paginator!: MatPaginator;
  @Input() dataSource = new MatTableDataSource<DataSurvey>(this.data);

readonly displayedColumns = [
  'name',
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

