SELECT dbo.Filmes.Nome, dbo.Filmes.Ano FROM Filmes

SELECT dbo.Filmes.Nome, dbo.Filmes.Ano FROM Filmes ORDER BY dbo.Filmes.Ano asc

SELECT dbo.Filmes.Nome, dbo.Filmes.Ano, dbo.Filmes.Duracao FROM Filmes WHERE dbo.Filmes.Nome = 'De volta para o futuro'

SELECT dbo.Filmes.Nome, dbo.Filmes.Ano FROM Filmes WHERE dbo.Filmes.Ano > 2000

SELECT dbo.Filmes.Nome, dbo.Filmes.Ano, dbo.Filmes.Duracao FROM Filmes WHERE dbo.Filmes.Duracao > 100 AND dbo.Filmes.Duracao < 150 ORDER BY dbo.Filmes.Duracao ASC

SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes 
GROUP BY Ano 
ORDER BY SUM(Duracao) DESC

SELECT dbo.Atores.PrimeiroNome, dbo.Atores.UltimoNome, dbo.Atores.Genero FROM dbo.Atores WHERE dbo.Atores.Genero = 'M'

SELECT dbo.Atores.PrimeiroNome, dbo.Atores.UltimoNome, dbo.Atores.Genero FROM dbo.Atores WHERE dbo.Atores.Genero = 'F' ORDER BY dbo.Atores.PrimeiroNome ASC

SELECT dbo.Filmes.Nome, dbo.Generos.Genero
FROM dbo.Filmes
INNER JOIN dbo.FilmesGenero ON  
dbo.Filmes.Id = dbo.FilmesGenero.IdFilme
INNER JOIN dbo.Generos ON
dbo.Generos.Id = dbo.FilmesGenero.IdGenero

SELECT dbo.Filmes.Nome, dbo.Generos.Genero
FROM dbo.Filmes
INNER JOIN dbo.FilmesGenero ON  
dbo.Filmes.Id = dbo.FilmesGenero.IdFilme
INNER JOIN dbo.Generos ON
dbo.Generos.Id = dbo.FilmesGenero.IdGenero
WHERE dbo.Generos.Genero = 'Mistério'

SELECT dbo.Filmes.Nome, dbo.Atores.PrimeiroNome, dbo.Atores.UltimoNome, dbo.ElencoFilme.Papel
FROM dbo.ElencoFilme
INNER JOIN dbo.Atores ON
dbo.ElencoFilme.IdAtor = dbo.Atores.Id
INNER JOIN dbo.Filmes ON
dbo.ElencoFilme.IdFilme = dbo.Filmes.Id