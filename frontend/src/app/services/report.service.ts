import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { AuthService } from './auth.service';

@Injectable({
  providedIn: 'root'
})
export class ReportService {

  private apiUrl = environment.apiURL + '/relatorio/pdf';

  constructor(private http: HttpClient,
    private authService: AuthService) { }

  getPDF(code: string, acao: string): Observable<Blob> {
    const headers = new HttpHeaders({ 'Content-Type': 'application/json' }).set('Authorization', `Bearer ${this.authService.getToken()}`);
    return this.http.get(`${this.apiUrl}?code=${code}&acao=${acao}`, { headers, responseType: 'blob' });
  }
}
