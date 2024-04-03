--1 Nome e Ano dos filmes

select Nome, Ano from Filmes

--2 Nome e Ano dos filmes por ordem de ano crescente

select Nome, Ano from Filmes order by Ano

--3 Filme: De Volta pra o Futuro - Nome - Ano - Duração

select Nome, Ano, Duracao from Filmes where Nome = 'De Volta para o Futuro'

--4 Filmes lançados em 1997

select Nome, Ano, Duracao from Filmes where Ano = 1997

--5 Filmes lançados apos 2000

select Nome, Ano, Duracao from Filmes where Ano > 2000

--6 Filmes com duração maior que 100 e menor que 150 - ordenado pela duraçao crescente

select Nome, Ano, Duracao from Filmes where Duracao > 100 and Duracao < 150 order by Duracao

--7 Quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

select Ano, COUNT(Nome) Quantidade from Filmes 
group by Ano
ORDER BY COUNT(Nome) DESC;

--8 Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

select * from Atores where Genero = 'M'

--9 Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

select * from Atores where Genero = 'F' order by PrimeiroNome

--10 Nome do filme e o gênero

select F.Nome, G.Genero from Filmes F 
inner join FilmesGenero FG on F.Id = FG.IdFilme
inner join Generos G on FG.IdGenero = G.Id

--11 Nome do filme e o gênero do tipo "Mistério"

select F.Nome, G.Genero from Filmes F 
inner join FilmesGenero FG on F.Id = FG.IdFilme
inner join Generos G on FG.IdGenero = G.Id
where G.Genero = 'Mistério'

--12 Nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

select F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel from Filmes F 
inner join ElencoFilme EF on F.Id = EF.IdFilme
inner join Atores A on EF.IdAtor = A.Id
