-- -------------------------------------------
-- Usuários e perfis
-- -------------------------------------------
INSERT INTO tb_user (first_name, last_name, email, password) VALUES ('Alex', 'Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (first_name, last_name, email, password) VALUES ('Maria', 'Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (first_name, last_name, email, password) VALUES ('jean', 'fernandine', 'jfernandine@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');
INSERT INTO tb_role (authority) VALUES ('ROLE_DENTIST');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);

-- -------------------------------------------
-- Documento físico
-- -------------------------------------------
INSERT INTO tb_data_survey (name, area, legal_analysis, submission, digital_quantitative, documentary_study, physical_quantitative) VALUES ('PROCESSO SELETIVO', 'GER.DEP.PESSOAL', TRUE, TRUE, FALSE, 1652, 685);
INSERT INTO tb_physical_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, TRUE, 1);
INSERT INTO tb_digital_document (current_phase, intermediate_phase, final_destination, data_survey_id) VALUES (TRUE, FALSE, TRUE, 1);

