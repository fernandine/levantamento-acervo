import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { User } from 'src/app/common/user';
import { AuthService } from 'src/app/services/auth.service';
import { LoginService } from 'src/app/services/login.service';
import { UserService } from '../../services/user.service';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.scss']
})
export class NavbarComponent {

  isLoggedIn!: boolean;
  firstname: string = '';

  constructor(
    private router: Router,
    private authService: AuthService,
    private loginService: LoginService,
    ) { }

  ngOnInit() {
    this.isLoggedIn = this.authService.isAuthenticated();
    this.firstname = this.getUsername();
    this.loginService.getLoginObservable().subscribe((loggedIn: boolean) => {
      this.isLoggedIn = loggedIn;
      this.firstname = loggedIn ? this.getUsername() : '';
    });
    }

    getUsername(): string {
      const currentUser = this.authService.getCurrentUser();
      return currentUser ? currentUser.firstname : '';
    }

  getPatients(){
    this.router.navigate(['/documents']);
  }
  login() {
    this.router.navigate(['/auth-login']);
  }
  register(){
    this.router.navigate(['/register']);
  }

  logout(): void {
    this.authService.logout();
    location.reload();
    this.router.navigate(['/auth-login']);
  }
}

