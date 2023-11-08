CREATE TABLE Pacientes (
  ID_Patient int PRIMARY KEY,
  Nome varchar(255),
  Data_de_Nascimento date,
  Genero varchar(255),
  Endereco varchar(255),
  Numero_de_Telefone varchar(255),
  Email varchar(255),
  Informacoes_Medicas text,
  Data_de_Admissao date,
  ID_Medico_Responsavel int,
  ID_Projeto int
);

CREATE TABLE Funcionarios (
  ID_Funcionario int PRIMARY KEY,
  Nome varchar(255),
  Data_de_Nascimento date,
  Genero varchar(255),
  Endereco varchar(255),
  Numero_de_Telefone varchar(255),
  Email varchar(255),
  Cargo varchar(255),
  Data_de_Contratacao date,
  Salario decimal,
  ID_Departamento int,
  ID_Supervisor int,
  ID_Projeto int
);

CREATE TABLE Departamentos (
  ID_Departamento int PRIMARY KEY,
  Nome_do_Departamento varchar(255)
);

CREATE TABLE Voluntarios (
  ID_Voluntario int PRIMARY KEY,
  Nome varchar(255),
  Data_de_Nascimento date,
  Genero varchar(255),
  Endereco varchar(255),
  Numero_de_Telefone varchar(255),
  Email varchar(255),
  Area_de_Atuacao varchar(255),
  Data_de_Ingresso date,
  ID_Coordenador int,
  ID_Projeto int
);

CREATE TABLE Projetos (
  ID_Projeto int PRIMARY KEY,
  Nome_do_Projeto varchar(255),
  Descricao text,
  Data_de_Inicio date,
  Data_de_Termino date,
  ID_Responsavel_pelo_Projeto int
);

ALTER TABLE Pacientes ADD FOREIGN KEY (ID_Medico_Responsavel) REFERENCES Funcionarios (ID_Funcionario);

ALTER TABLE Pacientes ADD FOREIGN KEY (ID_Projeto) REFERENCES Projetos (ID_Projeto);

ALTER TABLE Funcionarios ADD FOREIGN KEY (ID_Departamento) REFERENCES Departamentos (ID_Departamento);

ALTER TABLE Funcionarios ADD FOREIGN KEY (ID_Supervisor) REFERENCES Funcionarios (ID_Funcionario);

ALTER TABLE Funcionarios ADD FOREIGN KEY (ID_Projeto) REFERENCES Projetos (ID_Projeto);

ALTER TABLE Voluntarios ADD FOREIGN KEY (ID_Coordenador) REFERENCES Funcionarios (ID_Funcionario);

ALTER TABLE Voluntarios ADD FOREIGN KEY (ID_Projeto) REFERENCES Projetos (ID_Projeto);

ALTER TABLE Projetos ADD FOREIGN KEY (ID_Responsavel_pelo_Projeto) REFERENCES Funcionarios (ID_Funcionario);

select * from Pacientes