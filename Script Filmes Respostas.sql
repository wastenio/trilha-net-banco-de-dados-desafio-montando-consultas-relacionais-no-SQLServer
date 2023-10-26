SELECT * FROM Atores

SELECT * FROM Generos

SELECT * FROM Filmes

SELECT * FROM ElencoFilme

SELECT * FROM FilmesGenero

--1 - Buscar o nome e ano dos filmes
SELECT Nome, ANO
FROM Filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT Nome, ANO
FROM Filmes
ORDER BY Ano

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De volta para o futuro'

--4 - Buscar os filmes lançados em 1997

SELECT *
FROM Filmes
WHERE Ano = 1997

--5 - Buscar os filmes lançados APÓS o ano 2000

SELECT *
FROM Filmes
WHERE Ano >= 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT *
FROM Filmes
WHERE Duracao > 100 and Duracao < 150
ORDER BY Duracao

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT
	Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC, Ano DESC

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT *
FROM Atores
WHERE Genero = 'M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10 - Buscar o nome do filme e o gênero

SELECT  F.Nome   AS NomeDoFilme,
		G.Genero AS GeneroDoFilme 
FROM Filmes AS F 
INNER JOIN Generos AS G ON F.ID = G.Id 

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT F.Nome AS NomeDoFilme, 
	   G.Genero AS GeneroDoFilme
FROM Filmes AS F
INNER JOIN Generos AS G ON F.ID = G.Id
WHERE G.Genero = 'Mistério'

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT
    filmes.nome AS NomeDoFilme,
    atores.PrimeiroNome,
    atores.UltimoNome,
    ElencoFilme.Papel
FROM
    filmes
JOIN
    ElencoFilme ON filmes.id = ElencoFilme.idfilme
JOIN
    atores ON ElencoFilme.idator = atores.id;