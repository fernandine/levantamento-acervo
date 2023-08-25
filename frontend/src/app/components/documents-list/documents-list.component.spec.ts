import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DocumentsListComponent } from './documents-list.component';

describe('DocumentsListComponent', () => {
  let component: DocumentsListComponent;
  let fixture: ComponentFixture<DocumentsListComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [DocumentsListComponent]
    });
    fixture = TestBed.createComponent(DocumentsListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
