CREATE DATABASE  IF NOT EXISTS `patient-document`;
USE `patient-document`;

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

CREATE TABLE tb_patient (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  phone VARCHAR(20),
  appointment_date TIMESTAMP ,
  dentist VARCHAR(50),
  description VARCHAR(200)
);

CREATE TABLE tb_address (
  id INT PRIMARY KEY AUTO_INCREMENT,
  cep VARCHAR(10),
  logradouro VARCHAR(200),
  complemento VARCHAR(100),
  bairro VARCHAR(100),
  localidade VARCHAR(100),
  uf VARCHAR(10)
);

CREATE TABLE tb_patient_address (
    id SERIAL PRIMARY KEY,
    patient_id INT NOT NULL,
    address_id INT NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES tb_patient (id),
    FOREIGN KEY (address_id) REFERENCES tb_address (id)
);

INSERT INTO tb_user (first_name, last_name, email, password) VALUES ('Alex', 'Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (first_name, last_name, email, password) VALUES ('Maria', 'Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (first_name, last_name, email, password) VALUES ('jean', 'fernandine', 'jfernandine@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');
INSERT INTO tb_role (authority) VALUES ('ROLE_DENTIST');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);

INSERT INTO tb_patient (name, phone, appointment_date, dentist, description) VALUES ('Leonardo Santos', '31 971736555', NOW(), 'Dr.Antônio', 'Limpeza Dental (Profilaxia)');
INSERT INTO tb_patient (name, phone, appointment_date, dentist, description) VALUES ('Gabriel Costa', '31 971738952', NOW(), 'Dra.Silvia', 'Extração de Dentes');
INSERT INTO tb_patient (name, phone, appointment_date, dentist, description) VALUES ('Rafael Almeida', '31 978736550', NOW(), 'Dr.Marcone', 'Implantes Dentários');
INSERT INTO tb_patient (name, phone, appointment_date, dentist, description) VALUES ('Camila Rodrigues', '31 997365554', NOW(), 'Dr.Henrik', 'Clareamento Dental');

INSERT INTO tb_address(cep, logradouro,complemento, bairro, localidade, uf) VALUES ('34001090','Rua cinco', 'casa A', 'Parque Santo Antônio', 'Nova Lima', 'MG');
INSERT INTO tb_address(cep, logradouro,complemento, bairro, localidade, uf) VALUES ('34012856','Rua Seis', 'casa B', 'Santa Rita', 'Nova Lima', 'MG');
INSERT INTO tb_address(cep, logradouro,complemento, bairro, localidade, uf) VALUES ('34012856','Rua Seis', 'casa B', 'Santa Rita', 'Nova Lima', 'MG');
INSERT INTO tb_address(cep, logradouro,complemento, bairro, localidade, uf) VALUES ('34012856','Rua Seis', 'casa B', 'Santa Rita', 'Nova Lima', 'MG');

INSERT INTO tb_patient_address (patient_id, address_id ) VALUES (1, 1);
INSERT INTO tb_patient_address (patient_id, address_id ) VALUES (2, 2);
INSERT INTO tb_patient_address (patient_id, address_id ) VALUES (3, 3);
INSERT INTO tb_patient_address (patient_id, address_id ) VALUES (4, 4);