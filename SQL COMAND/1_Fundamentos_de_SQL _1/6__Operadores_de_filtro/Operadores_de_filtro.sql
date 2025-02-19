-- IN ,  BETWEEN,  LIKE

-- 1 IN
-- Uso: Especifica uma lista de valores que devem ser correspondidos.
-- Serve para filtra em relação a um dados da propria coluna entro do IN()

-- sintaxe
SELECT coluna
FROM tabela
WHERE coluna IN (valor1, valor2, valor3);

-- Exmeplo 
SELECT name FROM tb_clients WHERE city IN ('São Paulo', 'Belo Horizonte', 'Salvador');


-- 2. BETWEEN
-- Uso: Verifica se um valor está dentro de um intervalo (inclusive).

-- sintaxe
SELECT coluna
FROM tabela
WHERE coluna BETWEEN valor1 AND valor2;


-- exemplo 
SELECT description, price FROM tb_products WHERE stock_qty BETWEEN 25 AND 100;


-- LIKE
-- Uso: Faz correspondência com padrões em valores de texto usando wildcards (caracteres curinga).

-- Wildcards mais comuns:

/*   % (qualquer sequência de caracteres)  */
/*   _ (qualquer caractere individual)  */


-- SINTAXE
SELECT coluna
FROM tabela
WHERE coluna LIKE 'padrão';

-- EXEMPLO 1 
SELECT nome
FROM clientes
WHERE nome LIKE 'Ana%';

-- Retorna nomes que começam com Ana.

-- EXEMPLO 2 
SELECT nome
FROM clientes
WHERE nome LIKE '%Silva%';

-- Retorna nomes que contêm Silva em qualquer posição.

SELECT codigo
FROM produtos
WHERE codigo LIKE 'A_2';
-- funciona como se fosse um intervalo de caracteris 









