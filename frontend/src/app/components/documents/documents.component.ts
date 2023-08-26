import { Component, ViewChild } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { MatPaginator, PageEvent } from '@angular/material/paginator';
import { MatSnackBar } from '@angular/material/snack-bar';
import { ActivatedRoute, Router } from '@angular/router';
import { catchError, map, Observable, of } from 'rxjs';
import { Page } from 'src/app/common/pagination';
import { ReportService } from 'src/app/services/report.service';
import { ConfirmationDialogComponent } from 'src/app/shared/components/confirmation-dialog/confirmation-dialog.component';
import { ErrorDialogComponent } from 'src/app/shared/components/error-dialog/error-dialog.component';
import { DataSurvey } from '../../common/data-survey';
import { DocumentService } from '../../services/document.service';

@Component({
  selector: 'app-documents',
  templateUrl: './documents.component.html',
  styleUrls: ['./documents.component.scss']
})
export class DocumentsComponent {

  documents: DataSurvey[] = [];

  constructor(
    private service: DocumentService,
    public dialog: MatDialog,
    private router: Router,
    private route: ActivatedRoute,
    private snackBar: MatSnackBar,
    private report: ReportService,

  ) {}

  ngOnInit() {
    this.refresh();
  }

  refresh() {
    this.service.list().subscribe(
      (data) => {
        this.documents = data;
      },
      (error) => {
        console.error('Error fetching documents:', error);
      }
    );
  }

  onError(errorMsg: string) {
    this.dialog.open(ErrorDialogComponent, {
      data: errorMsg
    });
  }

  onAdd() {
    this.router.navigate(['dashboard'], { relativeTo: this.route });
  }

  onEdit(data: DataSurvey) {
    this.router.navigate(['edit', data.id], { relativeTo: this.route });
  }

  onRemove(data: DataSurvey) {
    const dialogRef = this.dialog.open(ConfirmationDialogComponent, {
      data: 'Tem certeza que deseja remover esta informação?'
    });

    dialogRef.afterClosed().subscribe((result: boolean) => {
      if (result) {
        this.service.remove(data.id).subscribe({
          next: () => {
            this.refresh();
            this.snackBar.open('Informação removida com sucesso!', 'X', {
              duration: 5000,
              verticalPosition: 'top',
              horizontalPosition: 'center'
            });
          },
          error: () => this.onError('Erro ao tentar remover.')
        });
      }
    });
  }

  onPDF() {
    if (this.documents) {
      const code = '01';
      const acao = 'v';

      this.report.getPDF(code, acao).subscribe(
        (pdfBlob: Blob) => {
          const pdfUrl = URL.createObjectURL(pdfBlob);
          window.open(pdfUrl, '_blank');
        },
        (error) => {
          console.error('Error fetching PDF:', error);
        }
      );
    }
  }
}
