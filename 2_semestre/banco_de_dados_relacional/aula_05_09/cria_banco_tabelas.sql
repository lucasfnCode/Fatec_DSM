CREATE DATABASE consultoria;

USE consultoria;

CREATE TABLE cargo (
	codCargo	INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nomeCargo	VARCHAR(20) NOT NULL,
    valorHora 	DECIMAL(8,2),
    tipoCargo	VARCHAR(15) DEFAULT ('mensalista') NOT NULL
);

CREATE TABLE consultor (
	codConsultor	INT NOT NULL AUTO_INCREMENT,
    nomeConsultor	VARCHAR(20) NOT NULL,
    cpf				VARCHAR(11) NOT NULL,
    tetefone		VARCHAR(14) NOT NULL,
    codCargo		INT	NOT NULL,
    CONSTRAINT 	pk_consultor 		PRIMARY KEY(codConsultor),
    CONSTRAINT 	fk_cargo_consultor 	FOREIGN KEY(codCargo) REFERENCES cargo(codCargo)
);

CREATE TABLE cliente (
	codCliente		INT NOT NULL AUTO_INCREMENT,
    razaoSocial		VARCHAR(30) NOT NULL,
    endereco		VARCHAR(30) NOT NULL,
    cnpj			CHAR(14) 	NOT NULL,
    CONSTRAINT pk_cliente PRIMARY KEY(codCliente)
);

CREATE TABLE projeto (
	codProjeto		INT	NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nomeProjeto		VARCHAR(30)	NOT NULL,
    dataProjeto		DATE NOT NULL,
    valorProjeto	DECIMAL(11,2) CONSTRAINT valor_check CHECK(valorProjeto >= 20000) NOT NULL,
    codConsultor	INT	NOT NULL,
    codCliente		INT NOT  NULL,
    CONSTRAINT 	fk_consultor  FOREIGN KEY(codConsultor)  REFERENCES consultor(codConsultor),
    CONSTRAINT  fk_cliente	  FOREIGN KEY(codCliente)    REFERENCES cliente(codCliente) ON DELETE CASCADE
);