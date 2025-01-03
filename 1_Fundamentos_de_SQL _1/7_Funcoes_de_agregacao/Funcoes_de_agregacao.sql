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


-- 4. MIN()
-- Retorna o menor valor em uma coluna.

-- Uso comum: Encontrar o valor mínimo, como o menor preço ou menor idade.
-- Exemplo:
SELECT MIN(preco) AS menor_preco
FROM produtos;

-- Resultado: Retorna o menor preço na tabela produtos.

SELECT MIN(price) AS 'Produto com o menor valor'FROM tb_products;


-- 5. MAX()
-- Retorna o maior valor em uma coluna.

-- Uso comum: Encontrar o valor máximo, como a maior venda ou a maior nota.

SELECT MAX(preco) AS maior_preco
FROM produtos;

SELECT MAX(price) AS 'Produto com o menor valor'FROM tb_products;

-- Resultado: Retorna o maior preço na tabela produtos.
-- Usando várias funções juntas
-- Você pode combinar essas funções em uma única consulta:

SELECT 
    COUNT(*) AS total_pedidos,
    SUM(total_sale) AS receita_total,
    AVG(total_sale) AS ticket_medio,
    MIN(total_sale) AS menor_valor,
    MAX(total_sale) AS maior_valor
FROM tb_sales;

-- Resultado: Retorna o total de pedidos, soma, média, menor e maior valor das vendas.
-- Essas funções são frequentemente usadas com GROUP BY para calcular agregados por grupos, como a receita total por categoria de produto ou por mês. Deseja um exemplo com GROUP BY?

SELECT 
    produto_categoria,
    COUNT(*) AS total_vendas,
    SUM(valor_total) AS receita_total,
    AVG(valor_total) AS ticket_medio,
    MIN(valor_total) AS menor_valor,
    MAX(valor_total) AS maior_valor
FROM vendas
GROUP BY produto_categoria
ORDER BY receita_total DESC;

-- Com GROUP BY, as funções de agregação tornam-se extremamente poderosas para analisar dados segmentados! Posso adaptar para um caso mais específico se preferir.

SELECT 
    EXTRACT(MONTH FROM data_venda) AS mes,
    COUNT(*) AS total_vendas,
    SUM(valor_total) AS receita_total,
    AVG(valor_total) AS ticket_medio
FROM vendas


--- FUNCIONALIDADE JUNTAS EM SQL 

SELECT 
    EXTRACT(MONTH FROM sale_date) AS mes,
    COUNT(*) AS total_vendas,
    SUM(total_sale) AS receita_total,
    AVG(total_sale) AS ticket_medio
FROM tb_sales
GROUP BY mes
ORDER BY mes;








 





















