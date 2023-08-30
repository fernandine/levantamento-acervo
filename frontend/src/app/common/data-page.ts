import { DataSurvey } from './data-survey';

export interface DataPage {
  dataSurvey: DataSurvey[];
  totalElements: number;
  totalPages?: number;
}
