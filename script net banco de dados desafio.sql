-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano
  FROM Filmes;
--
-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano, Duracao
  FROM Filmes
 ORDER BY Ano;
--
-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao
  FROM Filmes
 WHERE Nome LIKE '%de volta para o futuro%';
--
-- 4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao
  FROM Filmes
 WHERE Ano = 1997;
--
-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao
  FROM Filmes
 WHERE Ano > 2000;
--
-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao
  FROM Filmes
 WHERE Duracao > 100
   AND Duracao < 150
 ORDER BY Duracao ASC;
--
-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano
      ,COUNT(*) Quantidade
  FROM Filmes
 GROUP BY Ano
 ORDER BY Ano DESC;
 -- Não se poder ordenar por um campo que não aparece no SELECT
 -- ORDER BY Duracao DESC
--
-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT A.PrimeiroNome
      ,A.UltimoNome
  FROM Atores              A
 WHERE A.Genero            = 'M'
;
--
-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT A.PrimeiroNome
      ,A.UltimoNome
  FROM Atores              A
 WHERE A.Genero            = 'F'
 ORDER BY A.PrimeiroNome
;
--
-- 10 - Buscar o nome do filme e o gênero
SELECT A.Nome
      ,C.Genero
  FROM Filmes              A
      ,FilmesGenero        B
	  ,Generos             C
 WHERE B.IdFilme           = A.Id
   AND C.Id                = B.IdGenero  
;
--
-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT A.Nome
      ,C.Genero
  FROM Filmes              A
      ,FilmesGenero        B
	  ,Generos             C
 WHERE B.IdFilme           = A.Id
   AND C.Id                = B.IdGenero  
   AND C.Genero            = 'Mistério'
;
-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT A.Nome
      ,C.PrimeiroNome
	  ,C.UltimoNome
	  ,B.Papel
  FROM Filmes              A
      ,ElencoFilme         B
	  ,Atores              C
 WHERE B.IdFilme           = A.Id
   AND C.Id                = B.IdAtor  
;


