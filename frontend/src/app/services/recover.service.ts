import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { Email } from '../common/email';
import { NewPassword } from '../common/new-password';

@Injectable({
  providedIn: 'root'
})
export class RecoverService {

  private authURL = environment.apiURL + '/auth';

  constructor(private http: HttpClient) {}

  createRecoverToken(email: Email): Observable<void> {
    return this.http.post<void>(`${this.authURL}/recover-token`, email);
  }

  saveNewPassword(token: string, newPassword: string): Observable<void> {
    const resetData = { token, password: newPassword };
    return this.http.put<void>(`${this.authURL}/new-password`, resetData);
  }

}
