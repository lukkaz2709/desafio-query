--1
select 
Nome, 
Ano  
from Filmes

--2
select 
Nome, 
Ano  
from Filmes
order by Ano asc

--3
select 
Nome, 
Ano,
Duracao
from Filmes
where Nome = 'De Volta para o Futuro'

--4
select 
Nome, 
Ano
from Filmes
where Ano = 1997

--5
select 
Nome, 
Ano
from Filmes
where Ano > 2000

--6
select 
Nome, 
Duracao
from Filmes
where Duracao > 100 and Duracao < 150
order by Duracao asc

--7
select 
Ano,
count(*) QuantidadeDeFilmes
from Filmes
group by Ano
order by Ano desc

--8
select 
PrimeiroNome, 
UltimoNome
from Atores
where Genero = 'M'

--9
select 
PrimeiroNome, 
UltimoNome
from Atores
where Genero = 'F'
order by PrimeiroNome 

--10
select 
f.Nome NomeFilme,
g.Nome Genero
from Filmes f
inner join Generos g on f.GeneroId = g.Id

--11
SELECT F.Nome AS NomeDoFilme, G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério';

--12
SELECT 
    filme.nome AS nome_filme,
    ator.primeiro_nome,
    ator.ultimo_nome,
    elencoFilme.papel
FROM filme
JOIN elencoFilme ON filme.id = elencoFilme.filme_id
JOIN ator ON elencoFilme.ator_id = ator.id;


