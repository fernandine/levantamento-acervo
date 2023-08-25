import { Component } from '@angular/core';
import { FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.scss']
})
export class RegisterComponent {

  registerForm!: FormGroup;
  mobileNumber: string = '';

  constructor(
    private formBuilder: FormBuilder,
    private router: Router
  ) {}

  ngOnInit(): void {
    this.registerForm = this.formBuilder.group({
      firstname: ['', Validators.required],
      lastname: ['', Validators.required],
      email: ['', [Validators.required, Validators.email]],
      password: ['', [Validators.required, Validators.minLength(8)]],
      passConfirmation: ['', Validators.required, this.passwordMatchValidator],
    });

  }

  get form() {
    return this.registerForm.controls;
  }

  passwordMatchValidator(formControl: FormControl) {
    const password = formControl.get('password')?.value;
    const passConfirmation = formControl.get('passConfirmation')?.value;
    return password === passConfirmation ? null : { mismatch: true };
  }

  onReturn() {
    this.router.navigate(['/auth-login']);
  }

  onRegister() {
    console.log('Dados enviados:', this.registerForm.value);
    if (this.registerForm.invalid) {
      return;
    }
  }
}
