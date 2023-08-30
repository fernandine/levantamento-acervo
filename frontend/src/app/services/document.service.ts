import { HttpClient, HttpParams } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { first, Observable, of, tap } from 'rxjs';
import { environment } from 'src/environments/environment';
import { Cards } from '../common/cards';
import { DataSurvey } from '../common/data-survey';
import { DataPage } from '../common/data-page';
import { Page } from '../common/pagination';

@Injectable({
  providedIn: 'root'
})
export class DocumentService {

  private docUrl = environment.apiURL + '/documents';

  private cache: DataSurvey[] = [];

  constructor(private httpClient: HttpClient) { }

  list(page: number, size: number): Observable<Page<DataSurvey>> {
    const params = new HttpParams()
      .set('page', page.toString())
      .set('size', size.toString());

    return this.httpClient.get<Page<DataSurvey>>(`${this.docUrl}`, { params });
  }

  pieChart() {
    return [{
      name: 'Chrome',
      y: 61.41,
      sliced: true,
      selected: true
    }, {
      name: 'Internet Explorer',
      y: 11.84
    }, {
      name: 'Firefox',
      y: 10.85
    }, {
      name: 'Edge',
      y: 4.67
    }, {
      name: 'Safari',
      y: 4.18
    }, {
      name: 'Sogou Explorer',
      y: 1.64
    }, {
      name: 'Opera',
      y: 1.6
    }, {
      name: 'QQ',
      y: 1.2
    }, {
      name: 'Other',
      y: 2.61
    }];
  }
}

