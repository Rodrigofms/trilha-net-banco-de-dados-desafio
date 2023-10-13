USE Filmes;
GO

--Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM dbo.Filmes;
GO

--Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano, Duracao FROM dbo.Filmes
ORDER BY Ano ASC;
GO

--Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao FROM dbo.Filmes
WHERE Nome = 'De volta para o futuro';
GO

--Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao FROM dbo.Filmes
WHERE Ano = 1997;
GO

--Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao FROM dbo.Filmes
WHERE Ano > 2000;
GO

--Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao FROM dbo.Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;
GO

--Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) Quantidade FROM dbo.Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;
GO

--Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM dbo.Atores
WHERE Genero = 'M';
GO

--Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT * FROM dbo.Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;
GO

--Buscar o nome do filme e o gênero
SELECT Filmes.Nome, Generos.Genero FROM dbo.Filmes INNER JOIN dbo.FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;
GO

--Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT Filmes.Nome, Generos.Genero FROM dbo.Filmes INNER JOIN dbo.FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme INNER JOIN dbo.Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério';
GO

--Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM dbo.Filmes INNER JOIN dbo.ElencoFilme ON Filmes.Id = ElencoFilme.Id INNER JOIN dbo.Atores ON ElencoFilme.Id = Atores.Id
GO