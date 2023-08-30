import { Component, Input } from '@angular/core';
import * as Highcharts from 'highcharts';
import HC_exporting from 'highcharts/modules/exporting';
import { PieChart } from '../../../common/pie-chart';

@Component({
  selector: 'app-widget-pie',
  templateUrl: './pie.component.html',
  styleUrls: ['./pie.component.scss']
})
export class PieComponent {

  Highcharts = Highcharts;
  chartOptions = {};

  @Input() pie: PieChart[] = [];

  constructor() {}


  ngOnInit() {
    this.chartOptions = {
      chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie',
      },
      title: {
        text: 'Quantitativos mais relevantes',
      },
      subtitle: {
        text: 'Físico | Digital |  Micro Filmagem'
      },
      series: [
        {
          name: 'Total',
          colorByPoint: true,
          data: this.pie,
        },
      ],
    };

    HC_exporting(Highcharts);

    setTimeout(() => {
      window.dispatchEvent(
        new Event('resize')
      );
    }, 300);
  }
}
