import { Component, OnInit, Input } from '@angular/core';
import * as Highcharts from 'highcharts';
import HC_exporting from 'highcharts/modules/exporting';
import { DataPoint } from '../../../common/BigChart';


@Component({
  selector: 'app-widget-area',
  templateUrl: './area.component.html',
  styleUrls: ['./area.component.scss']
})
export class AreaComponent implements OnInit {

  chartOptions: {} = {};
  @Input() data!: number[];

  Highcharts = Highcharts;

  constructor() { }

  ngOnInit() {
    this.chartOptions = {
      chart: {
        type: 'column'
      },
      title: {
        text: 'Mapeamento de área produtora'
      },
      subtitle: {
        text: 'O gráfico exibe o quantitativo em número ordinal'
      },
      xAxis: {
        type: 'category',
        labels: {
          rotation: -45,
          style: {
            fontSize: '13px',
            fontFamily: 'Verdana, sans-serif'
          }
        }
      },
      yAxis: {
        min: 0,
        title: {
          text: 'Quantitativo de área produtora'
        }
      },
      legend: {
        enabled: false
      },
      tooltip: {
        pointFormat: 'Quantidade <b>{point.y:.0f}</b>'
      },
      series: [{
        name: '',
        colors: [
          '#9b20d9', '#9215ac', '#861ec9', '#7a17e6', '#7010f9', '#691af3',
          '#6225ed', '#5b30e7', '#533be1', '#4c46db', '#4551d5', '#3e5ccf',
          '#3667c9', '#2f72c3', '#277dbd', '#1f88b7', '#1693b1', '#0a9eaa',
          '#03c69b', '#00f194'
        ],
        colorByPoint: true,
        groupPadding: 0,
        data: this.data,
        dataLabels: {
          enabled: true,
          rotation: -90,
          color: '#FFFFFF',
          align: 'right',
          y: 10, // 10 pixels down from the top
          style: {
              fontSize: '13px',
              fontFamily: 'Verdana, sans-serif'
          }
        }
      }],
      exporting: {
        enabled: true,
        allowHTML: true
      }
    };

    setTimeout(() => {
      window.dispatchEvent(new Event('resize'));
    }, 300);
  }
}
