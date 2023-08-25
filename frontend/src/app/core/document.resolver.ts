import { ActivatedRouteSnapshot, RouterStateSnapshot } from "@angular/router";
import { Observable, of } from "rxjs";
import { DataSurvey } from "../common/data-survey";
import { DocumentService } from '../services/document.service';
import { DigitalDocument } from '../common/digital-document';
import { PhysicalDocument } from '../common/physical-document';


export class DocumentResolver {

digital!: DigitalDocument;
physical!: PhysicalDocument;
  constructor(private service: DocumentService) { }

  resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<DataSurvey> {


    if (route.params && route.params['id']) {
      return this.service.loadById(route.params['id']);
    }

    return of ({
      id: '',
      name: '',
      area: '',
      documentaryStudy: false,
      legalAnalysis: false,
      submission: false,
      digitalQuantitative: 0,
      physicalQuantitative: 0,
      digitalDocument: this.digital,
      physicalDocument: this.physical
    })
    };
}
