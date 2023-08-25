import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { User } from '../common/user';
import { StorageService } from './storage.service';

@Injectable({
  providedIn: 'root'
})
export class UserService {

  private userUrl = environment.apiURL + '/users';

  constructor(private http: HttpClient, private storage: StorageService) {}

  getUser(): Observable<User[]> {
    return this.http.get<User[]>(this.userUrl);
  }

  getUserById(id: number): Observable<User> {
    return this.http.get<User>(`${this.userUrl}/${id}`);
  }

  createUser(user: User): Observable<any> {
    return this.http.post(`${this.userUrl}`, user);
  }

  updateUser(id: number, value: any): Observable<any> {
    return this.http.put(`${this.userUrl}/${id}`, value);
  }

  deleteUser(id: number): Observable<any> {
    return this.http.delete(`${this.userUrl}/${id}`);
  }
/*
  getAuthenticatedUser(): Observable<User> {
    const token = this.getTokenFromLocalStorage();
    if (token) {
      const headers = new HttpHeaders({
        'Authorization': `Bearer ${token}`
      });

      return this.http.get<User>(`${this.userUrl}/me`, { headers });
    } else {
      return new Observable<User>();
    }
  }
*/
  private getTokenFromLocalStorage(): string | null {
    const currentUser = this.storage.getItem('currentUser');
    return currentUser ? currentUser.token : null;
  }
}
