-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes;

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT *
FROM Filmes
ORDER BY Ano;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT * 
  FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

--4 -
SELECT * 
 FROM FILMES
WHERE ANO = 1997

--5 -
SELECT * 
 FROM FILMES
WHERE ANO > 2000

-- 6 - 
SELECT * 
 FROM FILMES
WHERE DURACAO > 100 
AND DURACAO < 150

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente.

SELECT ANO , COUNT(*) 
 FROM FILMES
GROUP BY ANO 
ORDER BY 2 desc

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome , Genero
  FROM ATORES
Where Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome , Genero
  FROM ATORES
Where Genero = 'F'
ORDER BY PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero

SELECT F.Nome , G.Genero 
 FROM FILMES F
INNER JOIN FILMESGENERO FG
 ON F.ID = FG.IdFIlme
INNER JOIN Generos G
  ON FG.IDGenero = G.ID

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT F.Nome , G.Genero 
 FROM FILMES F
INNER JOIN FILMESGENERO FG
 ON F.ID = FG.IdFIlme
INNER JOIN Generos G
  ON FG.IDGenero = G.ID
WHERE G.Genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT A.PRIMEIRONOME , A.ULTIMONOME, EF.PAPEL 
 FROM FILMES F
INNER JOIN ELENCOFILME EF
 ON F.ID = EF.IDFILME
INNER JOIN ATORES A
ON EF.IDATOR = A.ID

