 --Em SQL, você pode usar os operadores aritméticos para realizar cálculos em colunas ou valores diretamente nas consultas. Aqui está como cada operador funciona em SQL:

--  Adição (+): Soma os valores.

SELECT coluna1 + coluna2 AS soma FROM tabela;

-- Subtração (-): Subtrai os valores.

SELECT coluna1 - coluna2 AS diferenca FROM tabela;

-- Multiplicação (*): Multiplica os valores.

SELECT coluna1 * coluna2 AS produto FROM tabela;

-- Divisão (/): Divide os valores.

SELECT coluna1 / coluna2 AS divisao FROM tabela;


-- Exemplo Prático
-- Considere uma tabela chamada produtos com as colunas preco e quantidade. Para calcular o valor total de cada produto, você pode usar:

SELECT preco, quantidade, preco * quantidade AS valor_total
FROM produtos;

-- Divisão por zero: Certifique-se de verificar se o divisor não é zero para evitar erros.

SELECT preco / NULLIF(quantidade, 0) AS divisao_segura FROM produtos;

-- Prioridade de Operadores: Use parênteses para garantir a ordem desejada das operações.

SELECT (coluna1 + coluna2) * coluna3 AS resultado FROM tabela;