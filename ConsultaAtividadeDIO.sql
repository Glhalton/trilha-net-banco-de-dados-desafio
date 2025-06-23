SELECT * FROM Atores

SELECT * FROM FilmesGenero;

SELECT * FROM Generos;

SELECT * FROM Filmes;

SELECT * FROM ElencoFilme;

SELECT * FROM Atores;


USE Filmes;

--1 CONSULTA
SELECT Nome, Ano FROM Filmes;

--2 CONSULTA
SELECT Nome, Ano FROM Filmes
ORDER BY Ano;

--3 CONSULTA
SELECT nome, ano, duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

--4 CONSULTA
SELECT nome, ano, duracao FROM Filmes
WHERE Ano = 1997;

--5 CONSULTA
SELECT nome, ano, duracao FROM Filmes
WHERE Ano > 2000;

--6 CONSULTA
SELECT nome, ano, duracao FROM Filmes
WHERE duracao > 100 AND duracao < 150
ORDER BY duracao;

--7 CONSULTA
SELECT Ano, COUNT(Nome) Quantidade FROM Filmes
GROUP BY ano 
ORDER BY Quantidade DESC

--8 CONSULTA
SELECT * FROM Atores
WHERE Genero = 'M';

--9 CONSULTA
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

--10 CONSULTA
SELECT f.Nome, g.Genero FROM Filmes f
INNER JOIN FilmesGenero gf ON f.Id = gf.IdFilme
INNER JOIN Generos g ON gf.idGenero = g.Id;

--11 CONSULTA
SELECT f.nome, g.genero FROM FILMES f
INNER JOIN FilmesGenero gf ON f.Id = gf.IdFilme
INNER JOIN Generos g ON gf.idGenero = g.Id
WHERE genero = 'Mistério';

--12 CONSULTA
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel FROM Filmes f
INNER JOIN ElencoFilme ef ON f.id = ef.IdFilme
INNER JOIN Atores a ON ef.IdAtor = a.Id;
