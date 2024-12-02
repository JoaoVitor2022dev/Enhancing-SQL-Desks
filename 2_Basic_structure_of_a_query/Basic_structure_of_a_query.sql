/* Guia Básico de Consultas SQL */

/* 1. Sintaxe Básica */
SELECT coluna1, coluna2 FROM tabela;

/* --------------------------------------------*/

/* 2. Consulta SELECT */
/* O SELECT é utilizado para selecionar colunas específicas de uma tabela. */
SELECT name, email FROM tb_clients;

/* --------------------------------------------*/

/* 3. Consultar Toda a Tabela */
/* O SELECT * retorna todas as colunas da tabela especificada. */
SELECT * FROM tb_clients;

/* --------------------------------------------*/

/* 4. Filtrar Resultados com WHERE */
/* O WHERE é usado para filtrar linhas com base em uma condição. 
   Somente as linhas que atendem à condição especificada serão retornadas. */
SELECT * FROM tb_clients WHERE city = "Goiânia";

/* --------------------------------------------*/

/* 5. Ordenar Resultados com ORDER BY */
/* O ORDER BY é utilizado para ordenar os resultados. 
   Por padrão, a ordem é crescente (ASC), mas pode ser alterada para decrescente (DESC). */
SELECT name FROM tb_clients ORDER BY name DESC;

/* --------------------------------------------*/

/* 6. Agrupamento com GROUP BY */
/* O GROUP BY agrupa linhas que possuem valores iguais em colunas especificadas. 
   É geralmente usado em conjunto com funções de agregação, como SUM, COUNT, AVG, etc. */
SELECT categoria, COUNT(*) FROM produtos GROUP BY categoria;

-- EXEMPLO 2
SELECT barcode, SUM(price) AS 'Valor dos Produtos' FROM tb_products GROUP BY barcode;

/* --------------------------------------------*/

/* 7. Filtrar Grupos com HAVING */
/* O HAVING é usado para filtrar grupos criados pelo GROUP BY, 
   diferentemente do WHERE, que filtra linhas individuais. */
SELECT categoria, COUNT(*) FROM produtos 
GROUP BY categoria 
HAVING COUNT(*) > 10;

-- EXEMPLO 2
SELECT barcode, 
SUM(price) AS 'Valor dos Produtos' 
FROM tb_products 
GROUP BY barcode
HAVING SUM(price) > 10.99;

/* --------------------------------------------*/

/* 8. Ordem de Execução (Lógica) */
/* Embora as consultas sejam escritas em uma ordem específica, elas são processadas internamente nesta sequência: */

-- 1. FROM (seleção da tabela ou tabelas)
-- 2. WHERE (filtragem de linhas)
-- 3. GROUP BY (agrupamento das linhas)
-- 4. HAVING (filtragem de grupos)
-- 5. SELECT (colunas selecionadas)
-- 6. ORDER BY (ordenação final)
