import { DigitalDocument } from "./digital-document";
import { PhysicalDocument } from "./physical-document";

export interface DataSurvey {

    id: string;
    name: string;
    area: string;
    documentaryStudy: boolean;
    legalAnalysis: boolean;
    submission: boolean;
    digitalQuantitative: number;
    physicalQuantitative: number;
    digitalDocument: DigitalDocument;
    physicalDocument: PhysicalDocument;
  }

