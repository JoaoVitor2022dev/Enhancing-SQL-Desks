1. CONCAT
Descrição: Concatena (une) duas ou mais strings em uma única string. 
Disponível no SQL moderno, como no MySQL, PostgreSQL, e SQL Server (versões recentes).

Exemplo
CONCAT(string1, string2, ...)

Exemplo 
SELECT CONCAT('Olá, ', 'Mundo') AS saudacao;

exemplo real
SELECT CONCAT(nome, ' é da equipe de ', departamento) AS mensagem
FROM funcionarios;

SELECT concat(barcode, " Com o valor de R$ ", price, " Temos essa quantidade em estoque: ", stock_qty) 
AS messageEstoque FROM tb_products


--------------------------------------------------------------------------------------------------------

2. SUBSTRING
Extrai uma parte de uma string, começando de uma posição inicial e opcionalmente limitando o comprimento.
Sintaxe:

SUBSTRING(string, posição_inicial, comprimento)
Exemplo:

SELECT SUBSTRING('Análise de Dados', 1, 7) AS parte;
-- Resultado: 'Análise'

--------------------------------------------------------------------------------------------------------

3. TRIM
Remove espaços em branco (ou caracteres específicos) do início e/ou fim de uma string.
Sintaxe:

TRIM([LEADING | TRAILING | BOTH] caracteres FROM string)
Exemplo:

SELECT TRIM('  Olá Mundo  ') AS resultado;
-- Resultado: 'Olá Mundo'
Removendo caracteres específicos:


SELECT TRIM(BOTH 'x' FROM 'xxxTestexxx') AS resultado;
-- Resultado: 'Teste'


SELECT TRIM(TRAILING '@example.com' FROM tb_clients.email) AS Inicio_de_email FROM tb_clients;


--------------------------------------------------------------------------------------------------------

4. UPPER
Converte todos os caracteres de uma string para maiúsculas.
Sintaxe:

UPPER(string)
Exemplo:

SELECT UPPER('Olá Mundo') AS resultado;
-- Resultado: 'OLÁ MUNDO'

-- QUERO FAZER TODAS AS PALAVRAS DESSA COLUNA ME UPPERCASE -- 
SELECT UPPER(tb_clients.name) AS NomeEmMaisculo FROM tb_clients; 


--------------------------------------------------------------------------------------------------------

5. LOWER
Converte todos os caracteres de uma string para minúsculas.
Sintaxe:


LOWER(string)
Exemplo:

SELECT LOWER('OLÁ MUNDO') AS resultado;
-- Resultado: 'olá mundo'

-- QUERO FAZER TODAS AS PALAVRAS DESSA COLUNA ME UPPERCASE -- 
SELECT UPPER(tb_clients.name) AS NomeEmMaisculo FROM tb_clients;





