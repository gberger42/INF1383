CREATE TABLE emissor_rg (
	sigla char(4) NOT NULL,
	nome varchar(64) NOT NULL,
	CONSTRAINT PK_Emissores_RG PRIMARY KEY (sigla)
);

CREATE TYPE est_civil_type AS ENUM('solteiro','casado','viuvo','divorciado');
CREATE TYPE tipo_sangue_type AS ENUM('A+','A-','B+','B-','AB+','AB-','O+','O-');
CREATE TYPE tipo_cnh_type AS ENUM('A','B','C','D','E','AB','AC','AD','AE');
CREATE TYPE sexo_type AS ENUM('M', 'F');
CREATE TYPE formacao_type AS ENUM('fundamental incompleto', 'fundamental completo', 'médio incompleto', 'médio completo', 'superior incompleto','superior completo');

CREATE TABLE voluntario
(
	cpf numeric(11) NOT NULL,
	nome varchar(128) NOT NULL,
	nome_pai varchar(128),
	nome_mae varchar(128),
	endereco varchar(256) NOT NULL,
	num_rg numeric(12) NOT NULL,
	sigla_emissor char(4) NOT NULL,
	naturalidade varchar(32) NOT NULL,
	est_civil est_civil_type NOT NULL,
	sexo sexo_type NOT NULL,
	profissao varchar(32) NOT NULL,
	email varchar(254) NOT NULL,
	tipo_sangue tipo_sangue_type NOT NULL,
	tipo_cnh tipo_cnh_type,
	tel1 numeric(15) NOT NULL,
	tel2 numeric(15),
	formacao formacao_type NOT NULL,
obs varchar(1024),
CONSTRAINT PK_Voluntario_CPF PRIMARY KEY(CPF),
CONSTRAINT FK_Voluntario_Sigla_Emissor FOREIGN KEY(sigla_emissor) REFERENCES emissor_rg(sigla)
);

CREATE TABLE filial
(
  codigo SERIAL NOT NULL,
  estado char(40) NOT NULL,
  endereco varchar(200) NOT NULL,
  CONSTRAINT PK_Filial_Codigo PRIMARY KEY(codigo)
);
  

CREATE TABLE funcionario
(
	matricula numeric(10) NOT NULL,
	cod_filial INTEGER NOT NULL,
	nome varchar(128) NOT NULL,
  username char(20) NOT NULL,
  password char(20) NOT NULL,
  email char(60) NOT NULL,
  CONSTRAINT PK_Funcionario_Matr PRIMARY KEY(matricula),
CONSTRAINT FK_Funcionario_Cod_Filial FOREIGN KEY(cod_filial) REFERENCES filial(codigo)
);


CREATE TABLE atividade (
codigo SERIAL NOT NULL,
cod_filial INTEGER NOT NULL,
matr_responsavel numeric(10) NOT NULL,
nome varchar(128) NOT NULL,
data date,
endereco varchar(256),
descricao varchar(256),
CONSTRAINT PK_Atividade_Codigo PRIMARY KEY(codigo),
CONSTRAINT FK_Atividade_Cod_Filial FOREIGN KEY(cod_filial) REFERENCES filial(codigo),
CONSTRAINT FK_Atividade_Cod_Responsavel FOREIGN KEY(matr_responsavel) REFERENCES funcionario(matricula)
);

CREATE TABLE lingua (
codigo SERIAL NOT NULL,
nome varchar(128) NOT NULL,
dialeto varchar(128) UNIQUE,
CONSTRAINT PK_Lingua_Codigo PRIMARY KEY(codigo)
);


CREATE TYPE nivel_ling_type AS ENUM('iniciante', 'medio', 'fluente');
CREATE TABLE fala (
cpf_vol NUMERIC(11) NOT NULL,
cod_ling INTEGER NOT NULL,
nivel nivel_ling_type NOT NULL,
CONSTRAINT PK_Fala_PK PRIMARY KEY (cpf_vol, cod_ling),
CONSTRAINT Fala_CPF_FK FOREIGN KEY (cpf_vol) REFERENCES voluntario(cpf),
CONSTRAINT Fala_CodLing_FK FOREIGN KEY(cod_ling) REFERENCES lingua(codigo)
);

CREATE TABLE participacao (
cpf_vol  NUMERIC(11) NOT NULL,
cod_ativ INTEGER NOT NULL,
horas_trab SMALLINT NOT NULL,
descricao varchar(256) NOT NULL,
CONSTRAINT PK_Participacao_CPFVol_CodLing PRIMARY KEY(cpf_vol, cod_ativ),
CONSTRAINT FK_Participacao_CPFVol FOREIGN KEY(cpf_vol) REFERENCES Voluntario(cpf),
CONSTRAINT FK_Participacao_CodAtiv FOREIGN KEY(cod_ativ) REFERENCES Atividade(codigo),
CONSTRAINT CK_Participacao_Horas check( horas_trab between 1 and 8 )
);


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
