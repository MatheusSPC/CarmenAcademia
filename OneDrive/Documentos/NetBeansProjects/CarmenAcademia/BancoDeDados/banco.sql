create database academia;
 
create table academia.Alunos (
  codigoDaMatricula BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255),
  dataDaMatricula VARCHAR(255),
  dataDeNascimento VARCHAR(255),
  endereco VARCHAR(255),
  telefone VARCHAR(255),
  altura VARCHAR(255),
  peso VARCHAR(255),
  primary key (codigoDaMatricula));
 
create table academia.Instrutores (
  idInstrutor BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255),
  RG VARCHAR(255),
  dataDeNascimento VARCHAR(255),
  titulacao VARCHAR(255),
  primary key (idInstrutor));

create table academia.Turmas (
  idTurma BIGINT NOT NULL AUTO_INCREMENT,
  idInstrutor BIGINT NOT NULL,
  horario VARCHAR(255),
  dataInicio VARCHAR(255),
  dataFim VARCHAR(255),
  atividade VARCHAR(255),
  primary key (idTurma));

create table academia.Matriculas(
  idMatricula BIGINT NOT NULL AUTO_INCREMENT,
  idTurma BIGINT NOT NULL,
  idAluno BIGINT NOT NULL,
  primary key (idMatricula));

create table academia.Chamadas (
  idChamada BIGINT NOT NULL AUTO_INCREMENT,
  idMatricula BIGINT NOT NULL,
  idAluno BIGINT NOT NULL,
  presente BOOLEAN,
  dataChamada VARCHAR(255),
  primary key (idChamada));

ALTER TABLE academia.Turmas ADD CONSTRAINT TURINSTRU FOREIGN KEY(idInstrutor) REFERENCES academia.Instrutores(idInstrutor);
ALTER TABLE academia.Matriculas ADD CONSTRAINT MATALU FOREIGN KEY(idAluno) REFERENCES academia.Alunos(codigoDaMatricula);

ALTER TABLE academia.Chamadas ADD CONSTRAINT CHAMAT FOREIGN KEY(idMatricula) REFERENCES academia.Matriculas(idMatricula);
ALTER TABLE academia.Chamadas ADD CONSTRAINT CHALU FOREIGN KEY(idAluno) REFERENCES academia.Alunos(codigoDaMatricula);
