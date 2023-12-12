-- Buscar o nome e ano dos filmes
-- Exercicio 1: SELECT dbo.Filmes.Nome, dbo.Filmes.Ano FROM Filmes

-- Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
-- Exercicio 2: SELECT dbo.Filmes.Nome, dbo.Filmes.Ano FROM Filmes ORDER BY dbo.Filmes.Ano asc

-- Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
-- Exercicio 3: SELECT dbo.Filmes.Nome, dbo.Filmes.Ano, dbo.Filmes.Duracao FROM Filmes WHERE dbo.Filmes.Nome = 'De volta para o futuro'

-- Buscar os filmes lançados em 1997
-- Exercicio 4: SELECT dbo.Filmes.Nome, dbo.Filmes.Ano, dbo.Filmes.Duracao FROM dbo.Filmes WHERE dbo.Filmes.Ano = 1997

-- Buscar os filmes lançados APÓS o ano 2000
-- Exercicio 5: SELECT dbo.Filmes.Nome, dbo.Filmes.Ano FROM Filmes WHERE dbo.Filmes.Ano > 2000

-- Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
-- Exercicio 6: SELECT dbo.Filmes.Nome, dbo.Filmes.Ano, dbo.Filmes.Duracao FROM Filmes WHERE dbo.Filmes.Duracao > 100 AND dbo.Filmes.Duracao < 150 ORDER BY dbo.Filmes.Duracao ASC

-- Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
-- Exercicio 7: SELECT Ano, COUNT(*) AS Quantidade
--FROM Filmes 
--GROUP BY Ano 
--ORDER BY SUM(Duracao) DESC

-- Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
-- Exercicio 8: SELECT dbo.Atores.PrimeiroNome, dbo.Atores.UltimoNome, dbo.Atores.Genero FROM dbo.Atores WHERE dbo.Atores.Genero = 'M'

-- Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
-- Exercicio 9: SELECT dbo.Atores.PrimeiroNome, dbo.Atores.UltimoNome, dbo.Atores.Genero FROM dbo.Atores WHERE dbo.Atores.Genero = 'F' ORDER BY dbo.Atores.PrimeiroNome ASC

-- Buscar o nome do filme e o gênero
-- Exercicio 10: SELECT dbo.Filmes.Nome, dbo.Generos.Genero
--FROM dbo.Filmes
--INNER JOIN dbo.FilmesGenero ON  
--dbo.Filmes.Id = dbo.FilmesGenero.IdFilme
--INNER JOIN dbo.Generos ON
--dbo.Generos.Id = dbo.FilmesGenero.IdGenero

-- Buscar o nome do filme e o gênero do tipo "Mistério"
-- Exercicio 11: SELECT dbo.Filmes.Nome, dbo.Generos.Genero
--FROM dbo.Filmes
--INNER JOIN dbo.FilmesGenero ON  
--dbo.Filmes.Id = dbo.FilmesGenero.IdFilme
--INNER JOIN dbo.Generos ON
--dbo.Generos.Id = dbo.FilmesGenero.IdGenero
--WHERE dbo.Generos.Genero = 'Mistério'

-- Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
-- Exercicio 12: SELECT dbo.Filmes.Nome, dbo.Atores.PrimeiroNome, dbo.Atores.UltimoNome, dbo.ElencoFilme.Papel
--FROM dbo.ElencoFilme
--INNER JOIN dbo.Atores ON
--dbo.ElencoFilme.IdAtor = dbo.Atores.Id
--INNER JOIN dbo.Filmes ON
--dbo.ElencoFilme.IdFilme = dbo.Filmes.Id