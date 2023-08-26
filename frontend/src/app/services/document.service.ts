import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { first, Observable, of } from 'rxjs';
import { environment } from 'src/environments/environment';
import { Cards } from '../common/cards';
import { DataSurvey } from '../common/data-survey';

@Injectable({
  providedIn: 'root'
})
export class DocumentService {

  private docUrl = environment.apiURL + '/documents';

  private cache: DataSurvey[] = [];

  constructor(private httpClient: HttpClient) { }

  list(): Observable<DataSurvey[]> {
    return this.httpClient.get<DataSurvey[]>(this.docUrl);
  }

  cards(): Observable<Cards> {
    const url = `${this.docUrl}/card-totals`;
    return this.httpClient.get<Cards>(url);
  }

  loadById(id: string) {
    if (this.cache.length > 0) {
      const record = this.cache.find(cache => `${cache.id}` === `${id}`);
      return record != null ? of(record) : this.getById(id);
    }
    return this.getById(id);
  }

  getById(id: string) {
    return this.httpClient.get<DataSurvey>(`${this.docUrl}/${id}`).pipe(first());
  }

  save(record: Partial<DataSurvey>) {
    if (record.id) {
      return this.update(record);
    }
    return this.create(record);
  }

  create(record: Partial<DataSurvey>) {
    return this.httpClient.post<DataSurvey>(this.docUrl, record).pipe(first());
  }

  update(record: Partial<DataSurvey>) {
    return this.httpClient.put<DataSurvey>(`${this.docUrl}/${record.id}`, record).pipe(first());
  }


  remove(id: string) {
    return this.httpClient.delete(`${this.docUrl}/${id}`).pipe(first());
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

