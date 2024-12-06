-- 1. COUNT()
-- Conta o número de linhas em um conjunto de resultados.
-- Uso comum: Saber quantos registros existem em uma tabela ou atendem a uma condição.

SELECT COUNT(*) AS total_pedidos
FROM pedidos;

SELECT COUNT(stock_qty) AS 'QTDE de Produto no STK' FROM tb_products;

SELECT COUNT(*) AS 'QTDE de Cliente registrado' FROM tb_clients;

-- RETORNA A QUANTIDADE DE REGISTRO DENTRO DO BANCO DE DADOS 


-- 2. SUM()
-- Soma os valores de uma coluna numérica.

-- Uso comum: Totalizar valores, como vendas ou horas trabalhadas.

SELECT SUM(valor_total) AS receita_total
FROM vendas;


SELECT SUM(price) AS 'Valor total' FROM tb_products;

SELECT SUM(total_sale) AS 'Valor total gerado' FROM tb_sales ; 


-- 3. AVG()
-- Calcula a média de valores em uma coluna numérica.

-- Uso comum: Determinar o valor médio de um conjunto de dados, como preço médio ou média de idades.

SELECT AVG(preco) AS preco_medio
FROM produtos;

SELECT AVG(total_sale) AS ' Preço Medio ' FROM tb_sales ; 




















