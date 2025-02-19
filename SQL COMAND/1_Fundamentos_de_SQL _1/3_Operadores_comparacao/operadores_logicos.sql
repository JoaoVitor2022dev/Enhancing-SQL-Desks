--  1. Igual (=)
--  Compara se dois valores são iguais.

SELECT * 
FROM produtos 
WHERE preco = 50;

-- 2. Maior (>)
-- Verifica se o valor à esquerda é maior que o à direita.

SELECT * 
FROM produtos 
WHERE estoque > 100;

-- 3. Menor (<)
-- Verifica se o valor à esquerda é menor que o à direita.

SELECT * 
FROM produtos 
WHERE estoque < 50;

-- 4. Maior ou Igual (>=)
-- Verifica se o valor à esquerda é maior ou igual ao à direita.

SELECT * 
FROM vendas 
WHERE quantidade >= 10;

-- 5. Menor ou Igual (<=)
-- Verifica se o valor à esquerda é menor ou igual ao à direita.

SELECT * 
FROM vendas 
WHERE quantidade <= 5;

-- 6. Diferente (<>)
-- Verifica se dois valores não são iguais.

SELECT * 
FROM clientes 
WHERE cidade <> 'São Paulo'; -- Descrição: Retorna os clientes que não moram em "São Paulo".





