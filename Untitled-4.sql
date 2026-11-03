
USE DbLívias;
GO

CREATE TABLE Estudantes_escola(
    Id_Estudantes VARCHAR(50) PRIMARY KEY,
    Nome VARCHAR(100), 
    Turma VARCHAR(10) 
);

CREATE TABLE Usuarios
(
    Id_usuarios varchar(30) primary key,
    Nome_Usuario VARCHAR(100) NOT NULL,
);
GO

