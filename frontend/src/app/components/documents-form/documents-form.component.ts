import { Location } from '@angular/common';
import { Component } from '@angular/core';
import { FormGroup, NonNullableFormBuilder, Validators } from '@angular/forms';
import { MatDialog } from '@angular/material/dialog';
import { MatSnackBar } from '@angular/material/snack-bar';
import { ActivatedRoute } from '@angular/router';
import { FormUtilsService } from 'src/app/services/form-utils.service';
import { DocumentService } from '../../services/document.service';
import { DataSurvey } from '../../common/data-survey';
import { ErrorDialogComponent } from 'src/app/shared/components/error-dialog/error-dialog.component';

@Component({
  selector: 'app-documents-form',
  templateUrl: './documents-form.component.html',
  styleUrls: ['./documents-form.component.scss']
})
export class DocumentsFormComponent {

  form!: FormGroup;

  constructor(
    private formBuilder: NonNullableFormBuilder,
    private service: DocumentService,
    private snackBar: MatSnackBar,
    private location: Location,
    private route: ActivatedRoute,
    public formUtils: FormUtilsService,
    private dialog: MatDialog,
  ) {}

  ngOnInit(): void {
   const data: DataSurvey = this.route.snapshot.data['data'];

    this.form = this.formBuilder.group({
      id: [data.id],
      name: [data.name, [Validators.minLength(5), Validators.maxLength(50)]],

    });

  }

  getAddressErrorMessage(fieldName: string, index: number) {
    return this.formUtils.getFieldFormArrayErrorMessage(
      this.form,
      'adressList',
      fieldName,
      index
    );
  }


  onSubmit() {
    if (this.form.valid) {
      this.service.save(this.form.value as DataSurvey).subscribe({
        next: () => this.onSuccess(),
        error: () => this.onError()
      });
    } else {
      this.formUtils.validateAllFormFields(this.form);
    }
  }

  onCancel() {
    this.location.back();
  }

  private onSuccess() {
    this.snackBar.open('Paciente salvo com sucesso!', '', { duration: 5000 });
    this.onCancel();
  }

  private onError() {
    this.dialog.open(ErrorDialogComponent, {
      data: 'Erro ao salvar paciente.'
    });
  }

  getErrorMessage(fieldName: string): string {
    return this.formUtils.getFieldErrorMessage(this.form, fieldName);
  }
}
