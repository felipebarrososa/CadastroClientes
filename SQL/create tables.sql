
CREATE TABLE Tipo_Cliente (
	
	Tipo_ClienteId INT NOT NULL IDENTITY(1,1) CONSTRAINT PK_Tipo_Cliente_Tipo_ClienteId PRIMARY KEY,
	Nome NVARCHAR(50) NOT NULL,
);

CREATE TABLE Situacao_Cliente (
	Situacao_ClienteId INT NOT NULL IDENTITY(1,1) CONSTRAINT PK_Situacao_Cliente_Situacao_ClienteId PRIMARY KEY,
	Nome NVARCHAR(50) NOT NULL
);

CREATE TABLE Cliente (
	
	ClienteId INT NOT NULL IDENTITY(1,1) CONSTRAINT PK_Cliente_ClienteId PRIMARY KEY,
	Nome NVARCHAR(100) NOT NULL,
	DT_NASCIMENTO DATE NOT NULL ,
	Tipo_ClienteId INT NOT NULL,
	EMAIL NVARCHAR(50) NOT NULL,
	Estado_Civil char(1) NOT NULL CONSTRAINT CK_Cliente_Sexo CHECK(Casado = 'C' or Solteiro = 'S' or Divorciado = 'D' or Viuvo = 'V'),
	Situacao_ClienteId INT NOT NULL,

	CONSTRAINT FK_Cliente_Tipo_ClienteId FOREIGN KEY(Tipo_ClienteId) REFERENCES Tipo_Cliente(Tipo_ClienteId),
	CONSTRAINT FK_Cliente_Situacao_ClienteId FOREIGN KEY(Situacao_ClienteId) REFERENCES Situacao_Cliente(Situacao_ClienteId)
);


-- Carga de Teste
INSERT INTO Tipo_Cliente VALUES('Eventual');
INSERT INTO Tipo_Cliente VALUES('Regular');

INSERT INTO Situacao_Cliente VALUES('Livre');
INSERT INTO Situacao_Cliente VALUES('Potencial');
INSERT INTO Situacao_Cliente VALUES('Ativo');
INSERT INTO Situacao_Cliente VALUES('Inativo');

INSERT INTO Cliente Values ('Felipe Barroso', '1998-02-13', 1, 'fsbarroso0890@gmail.com','C', 3);