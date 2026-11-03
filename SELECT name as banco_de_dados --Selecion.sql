SELECT name as banco_de_dados --Selecionando o nome dos bancos de dados
from sys.sysdatabases --Selecionando todos os bancos de dados existentes no servidor
Order by name; --Ordenando todos os bancos de dados    


USE DbLívias; --Seleciona o banco de dados criado dentro do servidor
Go

select name from sys.tables --Selecionando o nome das tabelas
GO

CREATE TABLE Estudantes (
    IdEstudante INT PRIMARY KEY,
    Nome VARCHAR (100) NOT NULL,
    Turma VARCHAR (50) NOT NULL,
    Apelido VARCHAR (30)
);

CREATE TABLE Videos (
    IdVideo INT PRIMARY KEY,
    Titulo VARCHAR (100) NOT NULL,
    Descricao VARCHAR (255) NOT NULL,
    Data_publicacao DATE NOT NULL,
    Duracao TIME NOT NULL,
    matricula_estudante INT NOT NULL,
    FOREIGN KEY (matricula_estudante) REFERENCES Estudantes (IdEstudante)
);

-- INSERINDO DADOS NA TABELA ESTUDANTES

INSERT INTO Videos (IdVideo, Titulo, Descricao, Data_publicacao, Duracao, matricula_estudante)
VALUES
(1, 'Teia de Dados','Homem-Aranha I', '2023-01-15', '00:45:00', 1),
(2, 'Amor e Ação','Mary Jane II', '2023-02-20', '00:50:00', 2),
(3, 'Homem de Ferro: Ascensão','Tony Stark III', '2023-03-10', '01:30:00', 3),
(4, 'Agente Secreta','Natasha Romanoff IV', '2023-04-05', '01:15:00', 4),
(5, 'Deus do Trovão','Thor Odinson V', '2023-05-12', '01:20:00', 5),
(6, 'Cavaleiro das Trevas','Bruce Wayne VI', '2023-06-18', '01:40:00', 6),
(7, 'O Homem de Aço','Clark Kent VII', '2023-07-22', '01:25:00', 7),
(8, 'A Princesa Guerreira','Diana Prince VIII', '2023-08-30', '01:35:00', 8),
(9, 'Velocidade Extrema','Barry Allen IX', '2023-09-14', '01:10:00', 9),
(10, 'Rei dos Mares','Arthur Curry X', '2023-10-05', '01:50:00', 10);

Select * from Videos;

/* Alterar dados de uma linha com UPDATE */

UPDATE Estudantes
SET Apelido = 'Aranha'
WHERE IdEstudante = 1 --Alterando o apelido do estudantecom ID 1 para 'Aranha''

Select * from Estudantes;

--Iniciar dados de uma tabela com inner Join é usado para combinar linhas de duas ou mais tabelas


SELECT --Select responsável por selecionar os dados das tabelas Videos e Estudantes

v.Titulo, -- v .Titulo seleciona o titulo do video da tabela Videos

e.Nome AS Autor, -- e.Nome seleciona o nome do estudante da tabela Estudantes e renomeia a coluna como Autor

e.Apelido AS Heroi, --e.Apelido seleciona o apelido do estudante da tabela Estudantes e renomeia a coluna como heroi

v.Duracao, --v.Duracao selecionaa duracao do video da tabela videos

FROM Videos AS v -- FROM Videos AS v seleciona a tabela Videos e renomeia como v

INNER JOIN Estudantes AS e -- INNER JOIN Estudantes AS e seleciona a tabela Estudantes e renomeia como e

ON v.matricula_estudante = e.IdEstudante; --



