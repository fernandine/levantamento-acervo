import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { DataPoint } from '../common/BigChart';
import { PieChart } from '../common/pie-chart';

@Injectable({
  providedIn: 'root'
})
export class DashboardService {

  private docUrl = environment.apiURL + '/documents';


  constructor(private httpClient: HttpClient) { }
/*
  getPieChart(): Observable<PieChart[]> {
    const url = `${this.docUrl}/pie-chart-data`;
    return this.httpClient.get<PieChart[]>(url);
  }

  getBigChart(): Observable<BigChart[]> {
    const url = `${this.docUrl}/big-chart-data`;
    return this.httpClient.get<BigChart[]>(url);
  }
*/
  pieChart(): PieChart[] {
    return [{
      name: 'Pasta Funcional/ Estagiários Desligados',
      y: 36636,
      sliced: true,
      selected: true
    }, {
      name: 'Prestação de Contas e Movimento de Caixa',
      y: 14771
    }, {
      name: 'Arquivo Contábil',
      y: 6390
    }, {
      name: 'Guia FGTS/ INSS/ Darf - Resumo Folha Pagamento',
      y: 3375
    }, {
      name: 'Processo Seletivo ',
      y: 1500
    }, {
      name: 'Contratos e Convenios ( Contratos de Receita / Despesa e de Despesa de Engenharia) ',
      y: 1470
    }, {
      name: 'Dossiê Certificado de Origem',
      y: 1021
    }, {
      name: 'Guias FGTS/INSS/GFIP',
      y: 951
    }];
  }


bigChart(): any[] {
  return [
    ['COMSAÚDE/ Contábil - Tributária', 1],
    ['Gerência  de Administração e Logística', 5],
    ['Gerência da Auditoria', 1],
    ['Gerência de Administração de Pesooas', 5],
    ['Gerência de Administração e Logística', 1],
    ['Gerência de Assuntos Jurídicos Institucionais', 1],
    ['Gerência de Comunicação Interna', 1],
    ['Gerência de Controladoria', 30],
    ['Gerencia de Desenvolvimento de Pessoas', 1],
    ['Gerência de Desenvolvimento de Pessoas', 7],
    [' Gerência de Educação  Básica', 1],
    ['Gerência de Educação Básica', 52],
    ['Gerência de Educação Executiva', 4],
    ['Gerência de Meio Ambiente', 3],
    ['Gerência de Operações', 1],
    ['Gerencia de Operações IEL', 1],
    ['Gerencia de Projetos para a Indústria ', 5],
    ['Gerência de Relações Trabalhistas', 1],
    ['Gerência de Saúde e Segurança para Indústria', 11],
    ['Gerência de Segurança da Informação e Prooteão de Dados', 1],
    ['Gerência de Transformação de Processos', 3],
    ['Gerência do Centro Internacional de Negócios', 2],
    ['Gerencia do Financeiro', 23],
    ['Jurídico', 1],
    ['Sindicatos', 1],
    ['Suprimentos', 1],


]
}




  cards(): number[] {
    return [71, 78, 39, 66];
  }


}
