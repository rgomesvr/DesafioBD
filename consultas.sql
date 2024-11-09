-- 1. Buscar o nome e ano dos filmes
SELECT Nome, Ano
FROM Filmes;

-- 2. Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;

-- 3. Buscar pelo filme "De Volta Para o Futuro", trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

-- 4. Buscar os filmes lançados em 1997
SELECT Nome, Ano
FROM Filmes
WHERE Ano = 1997;

-- 5. Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano
FROM Filmes
WHERE Ano > 2000;

-- 6. Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- 7. Buscar a quantidade de filmes lançados por ano, agrupando por ano
SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmes DESC;

-- 8. Buscar os atores do gênero masculino, retornando o PrimeiroNome e UltimoNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';

-- 9. Buscar os atores do gênero feminino, retornando o PrimeiroNome, UltimoNome e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

-- 10. Buscar o nome do filme e o gênero
SELECT Filmes.Nome AS Filme, Generos.Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

-- 11. Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT Filmes.Nome AS Filme, Generos.Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério';

-- 12. Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT Filmes.Nome AS Filme, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
JOIN Atores ON ElencoFilme.IdAtor = Atores.Id;
