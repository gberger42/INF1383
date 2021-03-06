INSERT INTO emissor_rg VALUES
        ('SSP', 'Secretaria de Segurança Pública'),
        ('PM', 'Polícia Militar'),
        ('PC', 'Policia Civil'),
        ('CNT', 'Carteira Nacional de Habilitação'),
        ('DIC', 'Diretoria de Identificação Civil'),
        ('CTPS', 'Carteira de Trabaho e Previdência Social'),
        ('FGTS', 'Fundo de Garantia do Tempo de Serviço'),
        ('IFP', 'Instituto Félix Pacheco'),
        ('IPF', 'Instituto Pereira Faustino'),
        ('IML', 'Instituto Médico-Legal'),
        ('MTE', 'Ministério do Trabalho e Emprego'),
        ('MMA', 'Ministério da Marinha'),
        ('MAE', 'Ministério da Aeronáutica'),
        ('MEX', 'Ministério do Exército'),
        ('POF', 'Polícia Federal'),
        ('POM', 'Polícia Militar'),
        ('SES', 'Carteira de Estrangeiro'),
        ('SJS', 'Secretaria da Justiça e Segurança'),
        ('SJTS', 'Secretaria da Justiça do Trabalho e Segurança'),
        ('ZZZ', 'Outros (inclusive exterior)')
;

INSERT INTO filial VALUES
(DEFAULT, 'Rio de Janeiro', 'Praça da Cruz Vermelha, 10 - Centro - Rio de Janeiro - RJ'),
(DEFAULT, 'São Paulo', 'Av. Moreira Guimarães, 699 - Moema - São Paulo - SP'),
(DEFAULT, 'Alagoas', 'Avenida Comendador Gustavo Paiva, 2889 - Mangabeiras - Maceió - AL'),
(DEFAULT, 'Amazonas', 'Parque Residencial Adrianópolis, QB – Casa 16 - Manaus - AM'),
(DEFAULT, 'Bahia', 'Av. Luis Eduardo Magalhães, 3091 - Cabula - Salvador - BA'),
(DEFAULT, 'Ceará', 'Rua José Lourenço, 3.280 – Aldeota - Fortaleza - CE'),
(DEFAULT, 'Distrito Federal', 'SCLRN 715, Bloco C, Loja 25 - Brasília – DF');
;

INSERT INTO pessoa VALUES
('12345678909', 'Felipe Luiz', '1994-06-17', NULL, NULL, 'Av. Rio Branco 1 - Centro - Rio de Janeiro - RJ', '123456', 'SSP', 'Rio de Janeiro', 'solteiro', 'M', 'Estudante', 'ferocha@globo.com', 'A+', 'B', '97794229', NULL, 'superior incompleto', NULL),
('28246103440', 'Gabriel Siqueira', '1993-10-14', NULL, NULL, 'R. Marquês de São Vicente, 225 - Gávea - Rio de Janeiro - RJ,', '987654', 'PM', 'Rio de Janeiro', 'solteiro', 'M', 'Estudante', 'gabrielsiq@msn.com', 'A+', 'B', '96492755', NULL, 'superior incompleto', NULL),
('74114767223', 'Pedro Bandeira', '1947-11-04', 'Marcos', 'Flavia', 'R. das Laranjeiras, 33 - Laranjeiras - Rio de Janeiro - RJ,', '456987', 'PC', 'Rio de Janeiro', 'casado', 'M', 'Médico', 'pb@bol.com', 'B+', 'B', '88754789', NULL, 'superior completo', 'Ortopedista'),
('17283624902', 'Caroline Smith', '1989-07-24', NULL, NULL, 'R. AB, 55 - Moema - São Paulo - SP', '748596', 'SES', 'São Paulo', 'divorciado', 'F', 'Estudante', 'cs@aol.com', 'AB+', NULL, '98987874', NULL, 'fundamental completo', NULL),
('88884721261', 'Vera Stein', '1944-02-22', NULL, NULL, 'R. JBK, 12 - Liberdade - São Paulo - SP', '663322', 'IML', 'São Paulo', 'casado', 'F', 'Enfermeiro', 'vs@gmail.com', 'B-', NULL, '87979879', NULL, 'superior completo', NULL),
('41568633360', 'Ana Lucia', '1959-02-12', NULL, NULL, 'R. CAB, 22 - Salvador - BA', '142536', 'SSP', 'São Paulo', 'divorciado', 'F', 'Professor', 'al@outlook.com', 'AB-', 'B', '85687495', NULL, 'superior completo', NULL),
('46476479431', 'Pedro Mendes', '1945-01-15', NULL, NULL, 'R. ABC, 11 - Fortaleza - CE', '461379', 'POM', 'Fortaleza', 'casado', 'M', 'Dentista', 'pm@gmail.com', 'O-', 'A', '89988658', NULL, 'superior completo', NULL),
('19534157848', 'Maria Augusta', '1966-12-02', NULL, NULL, 'R. CBD, 14 - Brasília - DF', '712634', 'POF', 'Maceió', 'casado', 'F', 'Cozinheiro', 'ma@hotmail.com', 'O-', NULL, '75489674', NULL, 'fundamental incompleto', NULL),
('78992137540', 'Roberto Menezes', '1967-12-02', NULL, NULL, 'R. CBD, 15 - Brasília - DF', '164825', 'POF', 'Recife', 'solteiro', 'M', 'Advogado', 'rm@gmail.com', 'O+', NULL, '46521759', NULL, 'fundamental completo', NULL)

;

INSERT INTO funcionario VALUES
('12345678909', 1, 'fulano', '1234'),
('28246103440', 1, 'gsiq', '123senha')
;

INSERT INTO atividade VALUES
(DEFAULT, 1, '12345678909', 'Evento', '2013-08-21', 'Praça São Fulano da Silva - Centro - Rio de Janeiro', 'Atividade da CVB'),
(DEFAULT, 2, '17283624902', 'Doação de Alimentos', '2013-07-23', 'Praça do Feijão - Liberdade - São Paulo', 'Arrecadação de alimentos para os desabrigados das chuvas'),
(DEFAULT, 1, '28246103440', 'JMJ', '2013-07-13', 'Base Aerea de Santa Cruz - Santa Cruz - Rio de Janeiro', 'Jornada mundial da juventude'),
(DEFAULT, 1, NULL, 'Evento 01', '2013-01-13', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 1, NULL, 'Evento 02', '2013-02-20', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 1, NULL, 'Evento 03', '2013-02-13', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 1, NULL, 'Evento 04', '2013-02-15', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 1, NULL, 'Evento 05', '2013-03-24', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 1, NULL, 'Evento 06', '2013-03-13', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 1, NULL, 'Evento 07', '2013-04-12', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 1, NULL, 'Evento 08', '2013-06-13', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 1, NULL, 'Evento 09', '2013-06-20', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 1, NULL, 'Evento 10', '2013-06-20', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 1, NULL, 'Evento 11', '2013-06-11', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 1, NULL, 'Evento 12', '2013-06-14', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 1, NULL, 'Evento 13', '2013-07-09', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 1, NULL, 'Evento 14', '2013-07-13', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 1, NULL, 'Evento 15', '2013-07-04', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 1, NULL, 'Evento 16', '2013-08-13', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 1, NULL, 'Evento 17', '2013-08-03', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 1, NULL, 'Evento 18', '2013-08-13', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 1, NULL, 'Evento 19', '2013-09-13', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 1, NULL, 'Evento 20', '2013-09-09', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 1, NULL, 'Evento 21', '2013-10-13', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 1, NULL, 'Evento 22', '2013-10-12', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 1, NULL, 'Evento 23', '2013-10-18', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 1, NULL, 'Evento 24', '2013-11-25', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 1, NULL, 'Evento 25', '2013-11-29', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 1, NULL, 'Evento 26', '2013-12-09', 'Rio de Janeiro', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 27', '2013-01-13', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 28', '2013-01-15', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 29', '2013-01-20', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 30', '2013-01-12', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 31', '2013-02-06', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 32', '2013-02-02', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 33', '2013-03-17', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 34', '2013-03-24', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 35', '2013-03-13', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 36', '2013-03-13', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 37', '2013-04-13', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 38', '2013-04-13', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 39', '2013-04-13', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 40', '2013-04-13', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 41', '2013-04-13', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 42', '2013-05-13', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 43', '2013-05-13', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 44', '2013-05-13', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 45', '2013-05-13', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 46', '2013-06-13', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 47', '2013-06-13', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 48', '2013-07-15', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 49', '2013-07-20', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 50', '2013-07-12', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 51', '2013-07-06', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 52', '2013-07-02', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 53', '2013-07-17', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 54', '2013-07-24', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 55', '2013-07-13', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 56', '2013-08-13', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 57', '2013-08-15', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 58', '2013-08-20', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 59', '2013-09-12', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 60', '2013-09-06', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 61', '2013-09-02', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 62', '2013-09-17', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 63', '2013-10-17', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 64', '2013-10-24', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 65', '2013-10-13', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 66', '2013-11-13', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 67', '2013-11-15', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 68', '2013-12-20', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 69', '2013-12-12', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 70', '2013-12-06', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 71', '2013-12-02', 'São Paulo', 'Evento de demonstraçao'),
(DEFAULT, 2, NULL, 'Evento 72', '2013-12-17', 'São Paulo', 'Evento de demonstraçao')
;

INSERT INTO participacao VALUES
('19534157848', 1, 6, 'Voluntario'),
('74114767223', 1, 4, 'Socorrista'),
('88884721261', 2, 5, 'Socorrista'),
('46476479431', 3, 8, 'Coordenador'),
('19534157848', 3, 6, 'Voluntario'),
('74114767223', 3, 6, 'Socorrista')
;

INSERT INTO lingua VALUES
(DEFAULT, 'Alemão','Hochdeutsch'),
(DEFAULT, 'Alemão','Schwäbisch'),
(DEFAULT, 'Alemão','Kölsch'),
(DEFAULT, 'Espanhol','Espanha'),
(DEFAULT, 'Espanhol','Argentina'),
(DEFAULT, 'Inglês','EUA'),
(DEFAULT, 'Inglês','UK'),
(DEFAULT, 'Inglês','África do Sul'),
(DEFAULT, 'Mandarim', 'China')
;

INSERT INTO fala VALUES
('12345678909',6,'fluente'),
('28246103440',6,'medio'),
('28246103440',1,'iniciante'),
('74114767223',4,'fluente'),
('17283624902',8,'medio'),
('41568633360',5,'iniciante'),
('46476479431',7, 'medio'),
('46476479431',9,'iniciante'),
('78992137540',6, 'fluente')
;
