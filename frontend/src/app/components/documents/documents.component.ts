import { Component } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { DashboardService } from '../../services/dashboard.service';
import { PieChart } from '../../common/pie-chart';
import { ActivatedRoute, Router } from '@angular/router';
import { DataSurvey } from '../../common/data-survey';


@Component({
  selector: 'app-documents',
  templateUrl: './documents.component.html',
  styleUrls: ['./documents.component.scss'],
})
export class DocumentsComponent {
  documents: DataSurvey[] = [];
  pieChart: PieChart[] = [];
  cards!: number[];
  bigChart: any[] = [];

  constructor(
    public dialog: MatDialog,
    private router: Router,
    private dashboard: DashboardService,
    private route: ActivatedRoute
  ) {}

  ngOnInit() {
    this.cards = this.dashboard.cards();
    this.pieChart = this.dashboard.pieChart();
    this.bigChart = this.dashboard.bigChart();
  }

}
