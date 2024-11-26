use Filmes;

SELECT Filmes.Nome as nome, Filmes.Ano as Ano
from Filmes;

SELECT *
from Filmes
ORDER BY Ano;

SELECT Filmes.Nome as nome, Filmes.Ano as Ano, Filmes.Duracao as Duracao
from Filmes
WHERE nome = 'De Volta Para O Futuro';

SELECT Filmes.Nome as nome, Filmes.Ano as Ano
from Filmes
WHERE Ano = 1997;

SELECT Filmes.Nome as nome, Filmes.Ano as Ano
from Filmes
WHERE Ano > 2000;


SELECT Filmes.Nome as nome, Filmes.Ano as Ano, Filmes.Duracao as Duracao
from Filmes
WHERE Duracao > 100 AND Duracao < 150;

SELECT Ano, Count(*) as Quantidade
from Filmes
group by Ano
ORDER BY Quantidade DESC;

SELECT Atores.PrimeiroNome as PrimeiroNome, Atores.UltimoNome as UltimoNome, Atores.Genero as Genero
from Atores
WHERE Genero = 'M';

SELECT Atores.PrimeiroNome as PrimeiroNome, Atores.UltimoNome as UltimoNome, Atores.Genero as Genero
from Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

SELECT Filmes.Nome as Nome, Generos.Genero as Genero
FROM Filmes Join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme join Generos on FilmesGenero.IdGenero = Generos.Id;

SELECT Filmes.Nome as Nome, Generos.Genero as Genero
FROM Filmes Join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme join Generos on FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério';


SELECT Filmes.Nome as Nome, Atores.PrimeiroNome as PrimeiroNome, Atores.UltimoNome as UltimoNome,  ElencoFilme.Papel
from Filmes join ElencoFilme on Filmes.id = ElencoFilme.IdFilme join Atores on ElencoFilme.IdAtor = Atores.Id; 

