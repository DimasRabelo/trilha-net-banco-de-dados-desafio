-- 1
 select Nome, Ano from Filmes

-- 2
  select Nome, Ano from Filmes 
  order by Ano asc

-- 3
 select Nome, Ano, Duracao from Filmes 
 where Nome = 'De Volta para o Futuro'

-- 4
 select * from Filmes 
 where Ano = 1997

-- 5
 select * from Filmes 
 where Ano > 2000

-- 6
 select * from Filmes
 where Duracao > 100 and Duracao < 150
 order by Duracao asc

-- 7
 select Ano, count(Id) Quantidade from Filmes
 group by Ano
 order by Quantidade  desc

-- 8
 select Id, PrimeiroNome, UltimoNome, Genero from Atores
 where Genero = 'M'

-- 9
 select Id, PrimeiroNome, UltimoNome, Genero from Atores
 where Genero = 'F'
 order by PrimeiroNome

-- 10
 select f.Nome as TituloFilme, g.Genero as Categoria
from Generos g
inner join FilmesGenero fg on g.Id = fg.IdGenero
inner join Filmes f on f.Id = fg.IdFilme

-- 11
 select f.Nome as Filme, g.Genero as TipoGenero
from Generos g
inner join FilmesGenero fg on g.Id = fg.IdGenero
inner join Filmes f on fg.IdFilme = f.Id
where g.Genero like 'Mistério'

-- 12
select f.Nome as Titulo, concat(a.PrimeiroNome, ' ', a.UltimoNome) as Ator, ef.Papel
from ElencoFilme ef
inner join Atores a on ef.IdAtor = a.Id
inner join Filmes f on ef.IdFilme = f.Id