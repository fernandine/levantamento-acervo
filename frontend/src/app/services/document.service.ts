import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { first, Observable, of } from 'rxjs';
import { environment } from 'src/environments/environment';
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
}

