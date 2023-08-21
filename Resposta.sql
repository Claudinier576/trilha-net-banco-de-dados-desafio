Select Nome,
    Ano
from Filmes;

Select *
from Filmes
ORDER BY Ano ASC;

Select *
from Filmes
WHERE Nome  = 'De Volta para o Futuro';

Select *
from Filmes
WHERE Ano = 1997;

Select *
from Filmes
WHERE Ano > 2000;

Select *
from Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

SELECT Ano,
    COUNT(Ano) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;


Select PrimeiroNome, UltimoNome, Genero
FROM Atores
Where Atores.Genero = 'M';

Select PrimeiroNome, UltimoNome, Genero
FROM Atores
Where Atores.Genero = 'F';

Select Filmes.Nome, Generos.Genero
FROM FilmesGenero
    INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
    INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

Select Filmes.Nome, Generos.Genero
FROM FilmesGenero
    INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
    INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Generos.Genero = 'Mistério';

Select Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM ElencoFilme
    INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme
    INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor;