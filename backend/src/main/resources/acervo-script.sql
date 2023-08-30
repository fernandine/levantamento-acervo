CREATE DATABASE  IF NOT EXISTS `data-document`;
USE `data-document`;

CREATE TABLE tb_user (
  id BIGINT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100),
  password VARCHAR(255),
  PRIMARY KEY (id)
);

CREATE TABLE tb_role (
  id BIGINT NOT NULL AUTO_INCREMENT,
  authority VARCHAR(20),
  PRIMARY KEY (id)
);

CREATE TABLE tb_user_role (
  user_id BIGINT NOT NULL,
  role_id BIGINT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES tb_user(id),
  FOREIGN KEY (role_id) REFERENCES tb_role(id)
);

CREATE TABLE tb_data_survey (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    area VARCHAR(255) NOT NULL,
    documentary_study BOOLEAN NOT NULL,
    classification BOOLEAN NOT NULL,
    legal_analysis BOOLEAN NOT NULL,
    auxiliary_document BOOLEAN NOT NULL,
    tb_ged BOOLEAN NOT NULL,
    submission BOOLEAN NOT NULL,
    digital_quantitative INT NOT NULL,
    physical_quantitative INT NOT NULL,
    microfilm_quantitative INT NOT NULL
);

CREATE TABLE tb_physical_document (
    id INT AUTO_INCREMENT PRIMARY KEY,
    intermediate_phase BOOLEAN NOT NULL,
    final_destination BOOLEAN NOT NULL,
    data_survey_id INT,
    FOREIGN KEY (data_survey_id) REFERENCES tb_data_survey(id)
);

CREATE TABLE tb_digital_document (
    id INT AUTO_INCREMENT PRIMARY KEY,
    current_phase BOOLEAN NOT NULL,
    intermediate_phase BOOLEAN NOT NULL,
    final_destination BOOLEAN NOT NULL,
    data_survey_id INT,
    FOREIGN KEY (data_survey_id) REFERENCES tb_data_survey(id)
);

INSERT INTO tb_user (first_name, last_name, email, password) VALUES ('jean', 'fernandine', 'jfernandine@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (first_name, last_name, email, password) VALUES ('Natiele', 'Dutra', 'na.dutra@fiemg.com.br', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');
INSERT INTO tb_role (authority) VALUES ('ROLE_USER');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);

INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Prestação de Contas e Movimento de Caixa', 'Gerência do Financeiro', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Planilhas e Comprovantes Pronatec', 'Gerência do Financeiro', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Contratos e Convenios ( Contratos de Receita / Despesa de Engenharia) ', 'Gerência do Financeiro', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Prontuários Médicos  de  Empregados', 'Gerência de Administração de Pesooas', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Banco do Povo/BNDES', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Pasta Funcional/ Estagiários Desligados', 'Gerência de Administração de Pesooas', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Programa Telecurso 2000: exame de massa', ' Gerência de Educação  Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Espelhos de Ponto ', 'Gerência de Administração de Pesooas', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Guias FGTS/INSS/GFIP', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Processo Seletivo ', ' Gerencia de Desenvolvimento de Pessoas', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Empreas Atendidas PEIEX/ APL- IEL', 'Gerência do Centro Internacional de Negócios', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Ficha Clínica Odontovida', 'Gerência de Segurança e Saúde para a Indústria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Papel de Trabalho Auditoria', 'Gerência da Auditoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Processo de Seleção - Futuros Engenheiros', 'Gerência de Educação Executiva', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Pesquisa de Satisfação do Programa Foco na Carreira', 'Gerência de Educação Executiva', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Lista de Presença de Participação no Workshop Foco na Carreira', 'Gerência de Educação Executiva', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Balancete - DARF/ Faturas Técnicas', 'COMSAÚDE/ Contábil - Tributária', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Prestação de Contas Técnica e Financeira/ Projetos', 'Gerencia do Financeiro', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Campanha de Vacinação Contra a Gripe', 'Gerência Segurança e Saúde para a Indústria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Convenção Coletiva de Trabalho', 'Gerência de Relações Trabalhistas', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Guia FGTS/ INSS/ Darf - Resumo Folha Pagamento', 'Sindicatos', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Abertura e Encerramento/ Indexação dos Filmes - Data Filme', 'Gerência de Administração e Logística', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Notas Fiscais Emitidas/ Recibos/ Solic. Cobrança', 'Gerência do Financeiro', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Dossiê Certificado de Origem', 'Gerência do Centro Internacional de Negócios', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Compra e Aquisição', 'Suprimentos', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Ações Trabalhistas/ Ações Cíveis', 'Jurídico', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Ficha de Registro ', 'Gerência de Administração de Pesooas', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Diário Geral/ Banco e Aplicação / Caução e Extratos', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Folha Pagamento/ Vale Transporte/ Seguro de Vida', 'Gerência de Administração de Pesooas', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Prestação de Serviço de Curso de Cultura', 'Gerência de Segurança e Saúde para a Indústria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Prestação de Serviço nos Clubes e Escola de Esporte SESI', 'Gerência de Segurança e Saúde para a Indústria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Processo de Credenciamento credenciamento de empresas para subsidiar as áreas de negócios do Sistema FIEMG ', 'Gerencia de Operações IEL', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Prestação de Contas Técnica de Estágio ', 'Gerência de Educação Executiva', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Prestação de Contas Gerência de Operações', 'Gerência de Operações', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Projeto Futebol Gol de Letra/ Documento dos alunos', 'Gerência de Segurança e Saúde para a Indústria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Arquivo Contábil', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Diários Contábeis', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Documentos de atos normativos', 'Gerência de Transformação de Processos', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Documentos de Diretrizes, Normas e Procedimentos', 'Gerência de Transformação de Processos', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Documentos complementares', 'Gerência de Transformação de Processos', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Borderô de Documentos/ Malotes Expedidos', 'Gerência  de Administração e Logística', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Lei de Doação do Imóvel', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Convênio de Doação do Imóvel', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Contrato de Compra e Venda do Imóvel', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Escritura do Imóvel', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Registro do Imóvel e Planta Baixa (planta anexa ao registro)', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Certidões de Inteiro Teor, Ônus e Ações', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Processo de Alienação de Imóveis', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Laudo de Avaliação', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Alvará de Construção', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Habite-se', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Certidão de alvará e baixa da construção', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Certidão Negativa de Débitos (CND) da obra', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Projeto legal aprovado', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Certidões da prefeitura (quitação, lançamento e origem)', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Consulta a viabilidade', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Alvará de Localização e Funcionamento', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Alvará Sanitário Estadual', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Alvará Sanitário Municipal', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Licença Ambiental ou Dispensa', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Auto de Vistoria do Corpo de Bombeiros', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Licença de uso de água (poço artesiano)', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Documentos de Reconhecimento de Isenção / Imunidade Fiscal COM Vigência Determinada', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Documentos de Reconhecimento de Isenção / Imunidade Fiscal SEM Vigência Determinada', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Autorização do Termo de Cooperação', 'Gerência do Financeiro', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Termo de Cooperação', 'Gerência do Financeiro', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Comunicação a Receita Federal', 'Gerência do Financeiroa', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Formalização do Termo de Cooperação', 'Gerência do Financeiro', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Formalização do Contrato de Parcelamento', 'Gerência do Financeiro', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Ajuizamento', 'Gerência do Financeiro', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Carta Defesa/Recursoa', 'Gerência do Financeiro', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Carta Parcelamento', 'Gerência do Financeiroa', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Devolução', 'Gerência do Financeiro', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Parcelamento', 'Gerência do Financeiro', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Fiscalização', 'Gerência do Financeiro', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Notificação de Débito', 'Gerência do Financeiro', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Processo de Análise da Contestação de Débito', 'Gerência do Financeiro', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Nota Fiscal – Faturamento', 'Gerência do Financeiro', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Recibo – Faturamento', 'Gerência do Financeiro', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Invoice - Faturamento', 'Gerência do Financeiro', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Aviso de Lançamento – Faturamento', 'Gerência do Financeiro', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Nota de Débito - Faturamento', 'Gerência do Financeiro', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Programa de Gerenciamento de Riscos(PGR)', 'Gerência de Saúde e Segurança para Indústria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Programa de Controle Médico de Saúde Ocupacional (PCMSO)', 'Gerência de Saúde e Segurança para Indústria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Prestação de Serviços do Programa da Saúde: ginástica na empresa, psicossocial, nutrição e doenças crônicas', 'Gerência de Saúde e Segurança para Indústria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Prestação de Serviços do Programa da Saúde: atendimento individualizado com nutricionista, psicólogo e assistente social', 'Gerência de Saúde e Segurança para Indústria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Ata de Reunião do Conselho', 'Gerência  de Administração e Logística', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Termo de Posse do Conselho', 'Gerência  de Administração e Logística', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Convocação para Reunião do Conselho', 'Gerência  de Administração e Logística', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Lista de Presença do Conselho', 'Gerência  de Administração e Logística', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Solicitação de Bolsa de Estudos', 'Gerência de Desenvolvimento de Pessoas', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Concessão de Bolsa de Estudos- termo de compromisso', 'Gerência de Desenvolvimento de Pessoas', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Programa de Bolsa de Estudos para Cursos do SENAI- solicitação de renovação da bolsa', 'Gerência de Desenvolvimento de Pessoas', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Aditivo ao termo de Compromisso', 'Gerência de Desenvolvimento de Pessoas', FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Requerimentos de Matriculas - Programa Cozinha Brasil', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Requerimentos de Matriculas - Programa escola Móvel', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Copia da documentação pessoal dos alunos - Programa Escola Móvel', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Registros de frequência e notas - Programa Escola Móvel', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Planilha de Dados dos Alunos do SESI para acompanhamento e prevenção psicológica', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Registro de Acolhimento Sociocomportamental ', 'Gerência de Educação Básica',FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Prestacao de Contas Técnica e Financeira do Programa BID','Gerencia de Projetos para a Indústria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Prestação de Contas Técnica e Financeira do PROCOMPI','Gerencia de Projetos para a Indústria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Prestação de Contas Técnica e Financeira do PECIR','Gerencia de Projetos para a Indústria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Prestação de Contas Técnica e Financeira de Recursos do Programa Regional Vale do Jequitinhonha','Gerencia de Projetos para a Indústria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Prestação de Contas Técnica e Financeira de Recursos do Edital da Anglogold', 'Gerencia de Projetos para a Indústria ', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Termo de Confidencialidade e Sigilo', 'Gerência de Segurança da Informação e Proteção de Dados', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Declaração de Ausência de Conflito de Interesse', 'Gerência de Meio Ambiente', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Moção de Interesse', 'Gerência de Meio Ambiente', FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Ata de Reunião de  defesa de interesse', 'Gerência de Meio Ambiente', FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Termo de Responsabilidade para Utilização de Bem Patrimonial', 'Gerência de Controladoria', FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Fechamento de Inventário', 'Gerência de Controladoria', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Processo Judicial ', 'Gerência de Assuntos Jurídicos Institucionais', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Processo de credenciamento de empresas para  subsidiar a área de Saúde e  Segurança do Trabalho', 'Gerência de Segurança e Saude para Indústria',FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Termo de Adesão: clube de benefícios', 'Gerência de Comunicação Interna', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Confirmação de Participação em Treinamento', 'Gerência de Desenvolvimento de Pessoas', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Avaliação de Satisfação de Treinamento', 'Gerência de Desenvolvimento de Pessoas', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Relatório da Avaliação de Satisfação de Treinamento', 'Gerência de Desenvolvimento de Pessoas', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Atos Autorizativos -  Normatização. Regulamentação', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Processo de Atos Autorizativos analisados pela Superintendência Regional de Ensino - Normatização. Regulamentação', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Regimento Escolar da Educação Básica (Oficial) -   Normatização. Regulamentação', 'Gerência de Educação Básica',FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Regimento Escolar da Educação Básica (Consulta) -   Normatização. Regulamentação', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Proposta Pedagógica da Educação Básica -   Normatização. Regulamentação', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Matriz Curricular da Educação Básica -   Normatização. Regulamentação', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Ofícios Expedidos -   Normatização. Regulamentação', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Comunicados Expedidos -   Normatização. Regulamentação', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Dossiê de Controle de Processos de Veracidade -   Normatização. Regulamentação', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Livro de Termo de Visita do Inspetor de Ensino -   Normatização. Regulamentação', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Dossiê do Docente / Equipe Técnico-Administrativa -   Normatização. Regulamentação', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Calendário Escolar da Educação Básica - Ensino Regular', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Livro de Transferências Expedidas - Ensino Regular', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Livro de Transferências Recebidas - Ensino Regular', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Livro de Registro de Matrícula - Ensino Regular', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Livro de Ata de Resultado Final - Ensino Regular', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Livro de Expedição de Históricos Escolares - Ensino Regular', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Pasta de Controle do Processo Seletivo - Ensino Regular ', 'Gerência de Educação Básica',FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Pasta de Controle de Horários de Aula - Ensino Regular', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Pasta de Controle de Enturmação de Alunos - Ensino Regular', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Pasta Controle de Atas de Conselhos de Classe Final - Ensino Regular', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Pasta de Controle de Benefícios e Descontos Concedidos - Ensino Regular', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Assentamentos individuais dos alunos - Ensino Regular', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Calendário Escolar - EJA', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Livro de registro de matricula da EJA', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Livro de Ata de Resultado Final da EJA', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Livro de Expedição de Certificados - EJA', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Pasta de Controle de Horários de Aula das Turmas - EJA', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Pasta Controle de Atas de Conselhos de Classe Final - EJA', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Diários de Classe das turmas - EJA', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Assentamentos individuais dos alunos de cursos da EJA', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES (' Livros de Resultados Telecurso 2000 – Exames de Massa', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Assentamentos individuais dos alunos do Telecurso 2000 ', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Regimentos Escolares dos Cursos Técnicos Profissionalizantes - Ensino Técnico-Profissional', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Propostas Pedagógicas dos Cursos Técnicos Profissionalizantes - Ensino Técnico-Profissional', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Normativos Complementares dos Cursos Técnicos Profissionalizantes - Ensino Técnico-Profissional', 'Gerência de Educação Básicaa', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Livro de Registro de Matricula do Curso Técnico - Ensino Técnico-Profissional', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Livro de Ata de Resultado Final do curso técnico - Ensino Técnico-Profissional', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Livro de Expedição de Certificados - Ensino Técnico-Profissional', 'Gerência de Educação Básica',FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Diários de Classe do Curso Técnico - Ensino Técnico-Profissional', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE,9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Assentamentos Individuais dos Alunos do Curso Técnico - Ensino Técnico-Profissional', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Livro de Registro de Matricula de cursos de Educação Continuada', 'Gerência de Educação Básica', FALSE, FALSE, FALSE,FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Livro de Ata de Resultado Final de cursos de Educação Continuada', 'Gerência de Educação Básica', FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Livro de Expedição de Certificados de cursos de Educação Continuada', 'Gerência de Educação Básica', FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Diários de Classe de cursos de Educação Continuada', 'Gerência de Educação Básica', FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, 9481, 0, 0);
INSERT INTO tb_data_survey (name, area, documentary_study, classification, legal_analysis, auxiliary_document, tb_ged, submission, digital_quantitative, physical_quantitative, microfilm_quantitative) VALUES ('Assentamentos individuais - Educação Continuada', 'Gerência de Educação Básica', FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, 9481, 0, 0);


INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 1);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 2);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 3);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 4);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 5);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 6);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 7);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 8);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 9);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 10);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 11);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 12);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 13);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 14);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 15);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 16);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 17);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 18);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 19);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 20);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 21);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 22);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 23);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 24);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 25);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 26);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 27);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 28);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 29);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 30);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 31);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 32);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 33);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 34);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 35);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 36);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 37);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 38);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 39);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 40);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 41);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 42);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 43);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 44);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 45);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 46);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 47);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 48);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 49);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 50);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 51);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 52);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 53);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 54);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 55);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 56);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 57);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 58);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 59);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 60);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 61);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 62);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 63);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 64);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 65);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 66);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 67);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 68);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 69);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 70);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 71);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 72);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 73);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 74);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 75);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 76);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 77);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 78);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 79);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 80);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 81);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 82);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 83);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 84);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 85);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 86);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 87);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 88);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 89);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 90);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 91);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 92);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 93);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 94);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 95);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 96);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 97);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 98);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 99);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 100);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 101);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 102);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 103);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 104);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 105);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 106);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 107);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 108);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 109);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 110);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 111);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 112);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 113);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 114);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 115);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 116);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 117);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 118);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 119);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 120);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 121);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 122);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 123);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 124);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 125);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 126);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 127);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 128);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 129);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 130);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 131);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 132);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 133);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 134);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 135);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 136);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 137);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 138);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 139);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 140);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 141);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 142);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 143);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 144);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 145);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 146);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 147);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 148);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 149);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 150);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 151);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 152);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 153);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 154);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 155);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 156);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 157);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 158);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 159);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 160);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 161);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 162);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (FALSE, TRUE, FALSE, 163);


INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 1);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 2);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 3);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 4);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 5);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 6);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 7);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 8);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 9);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 10);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 11);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 12);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 13);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 14);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 15);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 16);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 17);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 18);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 19);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 20);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 21);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 22);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 23);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 24);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 25);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 26);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 27);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 28);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 29);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 30);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 31);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 32);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 33);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 34);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 35);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 36);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 37);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 38);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 39);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 40);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 41);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 42);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 43);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 44);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 45);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 46);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 47);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 48);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 49);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 50);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 51);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 52);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 53);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 54);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 55);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 56);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 57);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 58);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 59);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 60);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 61);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 62);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 63);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 64);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 65);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 66);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 67);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 68);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 69);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 70);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 71);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 72);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 73);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 74);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 75);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 76);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 77);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 78);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 79);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 80);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 81);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 82);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 83);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 84);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 85);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 86);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 87);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 88);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 89);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 90);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 91);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 92);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 93);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 94);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 95);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 96);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 97);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 98);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 99);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 100);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 101);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 102);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 103);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 104);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 105);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 106);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 107);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 108);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 109);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 110);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 111);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 112);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 113);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 114);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 115);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 116);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 117);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 118);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 119);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 120);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 121);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 122);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 123);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 124);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 125);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 126);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 127);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 128);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 129);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 130);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 131);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 132);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 133);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 134);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 135);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 136);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 137);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 138);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 139);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 140);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 141);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 142);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 143);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 144);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 145);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 146);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 147);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 148);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 149);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 150);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 151);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 152);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 153);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 154);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 155);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 156);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 157);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 158);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 159);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 160);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 161);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 162);
INSERT INTO tb_physical_document (intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, 163);

