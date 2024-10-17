-- APELIDOS

-- falha na ambiguidade, pois há duas colunas com o mesmo nome
-- entre as tabelas
SELECT nome
FROM Pokemons p, Tipos t;

-- Utilizabdo apelidos para facilitar
SELECT p.nome
FROM Pokemons p, Tipos t;

 -- quando não utilizamos apelidos é necessário mencionar o nome da tabela
 SELECT Pokemons.nome
FROM Pokemons , Tipos ;

 -- definindo apelidos nas colunas quando as mesmas tem o mesmo nome
 SELECT p.nome, t.nome
FROM Pokemons p, Tipos t;


-- exemplo de definição de apelidos em colunas
 SELECT p.nome nome_pokemon, t.nome tipo
FROM Pokemons p, Tipos t;



-- JUNÇÃO

-- EQUI JOIN = A LÓGICA DE JUNÇÃO FICA NO WHERE. 
SELECT p.nome nome_pokemon, t.nome tipo
FROM Pokemons p, Tipos t
WHERE t.tipoid = p.tipoid;


-- INNER JOIN
SELECT p.nome nome_pokemon, t.nome tipo
FROM Pokemons p INNER JOIN Tipos t ON t.tipoid = p.tipoid;



SELECT p.nome nome_pokemon, t.nome tipo
FROM Pokemons p, Tipos t
WHERE t.tipoid = p.tipoid AND t.nome = 'Fogo';


SELECT p.nome nome_pokemon, t.nome tipo
FROM Pokemons p INNER JOIN Tipos t ON t.tipoid = p.tipoid
WHERE t.nome = 'Fogo';


-- LEFT JOIN
SELECT p.nome nome_pokemon, t.nome tipo
FROM Pokemons p LEFT JOIN Tipos t ON t.tipoid = p.tipoid;


-- LEFT EXCLUDING JOIN
SELECT p.nome nome_pokemon, t.nome tipo
FROM Pokemons p LEFT JOIN Tipos t ON t.tipoid = p.tipoid
WHERE T.tipoid is null;



-- RIGHT EXCLUDING JOIN
SELECT p.nome nome_pokemon, t.nome tipo
FROM Pokemons p RIGHT JOIN Tipos t ON t.tipoid = p.tipoid
WHERE P.tipoid is null;


-- FULL JOIN
SELECT p.nome nome_pokemon, t.nome tipo
FROM Pokemons p FULL JOIN Tipos t ON t.tipoid = p.tipoid;


-- OU
-- o union é utilizar para juntar duas ou mais consultas
-- o full join é LEFT JOIN + RIGHT JOIN
SELECT p.nome nome_pokemon, t.nome tipo
FROM Pokemons p LEFT JOIN Tipos t ON t.tipoid = p.tipoid
union
SELECT p.nome nome_pokemon, t.nome tipo
FROM Pokemons p RIGHT JOIN Tipos t ON t.tipoid = p.tipoid;


-- OUTER JOIN OU EXCLUDING JOIN
-- o OUTER JOIN é LEFT EXCLUDING JOIN + RIGHT EXCLUDING JOIN
SELECT p.nome nome_pokemon, t.nome tipo
FROM Pokemons p LEFT JOIN Tipos t ON t.tipoid = p.tipoid
WHERE T.tipoid is null
UNION
SELECT p.nome nome_pokemon, t.nome tipo
FROM Pokemons p RIGHT JOIN Tipos t ON t.tipoid = p.tipoid
WHERE P.tipoid is null;



-- CROSS JOIN
SELECT p.nome nome_pokemon, t.nome tipo
FROM Pokemons p, Tipos t;


-- SELF JOIN
SELECT p1.pokemonid, p1.nome nome_pokemon, p2.pokemonid, p2.nome nome_pokemon
FROM Pokemons p1 INNER JOIN Pokemons p2 ON p1.tipoid = p2.tipoid
WHERE p1.pokemonid < p2.pokemonid;






