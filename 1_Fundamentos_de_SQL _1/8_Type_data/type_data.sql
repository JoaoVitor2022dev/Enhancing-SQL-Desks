-- 1. Tipos Numéricos
-- Os tipos numéricos são usados para armazenar números, como inteiros ou números com casas decimais.


TINYINT: -- Números pequenos (-128 a 127 ou 0 a 255, sem sinal).
SMALLINT: --  Números inteiros de tamanho médio.
INT ou INTEGER: --  Números inteiros padrão.
BIGINT:  -- Para números inteiros maiores.


FLOAT: -- Precisão variável para números de ponto flutuante.
DOUBLE -- ou REAL: Para maior precisão em números de ponto flutuante.
DECIMAL ou NUMERIC: -- Precisão fixa, usado para valores monetários (ex.: DECIMAL(10,2)).

-- EXEMPLO
CREATE TABLE exemplo_numericos (
    id INT,
    idade SMALLINT
);

-- Decimais e Ponto Flutuante:

-- DECIMAL(p, s) ou NUMERIC(p, s): Para números com precisão fixa (ex.: valores monetários). p é o número total de dígitos, s é o número de dígitos à direita do ponto decimal.
-- FLOAT e REAL: Para valores de ponto flutuante.

CREATE TABLE exemplo_decimais (
    preco DECIMAL(10, 2)
);



-- 2. Tipos de Texto

Tamanho fixo:

CHAR(n): Armazena exatamente n caracteres. Ideal para dados com tamanho fixo (ex.: CEP, códigos).
Tamanho variável:

VARCHAR(n): Armazena até n caracteres, com economia de espaço.
Texto longo:

TEXT ou CLOB: Para armazenar grandes blocos de texto, como descrições ou documentos.


-- 3. Tipos de Data e Hora

-- Para lidar com datas, horários ou ambos.

--  Somente Data:
DATE: Armazena uma data no formato YYYY-MM-DD.

-- Somente Hora:
TIME: Armazena hora no formato HH:MM:SS.
Data e Hora:

-- Somente Hora 
DATETIME ou TIMESTAMP: Combina data e hora (YYYY-MM-DD HH:MM:SS).
YEAR: Armazena apenas o ano (YYYY).

-- Data e Hora:

DATETIME ou TIMESTAMP: Combina data e hora (YYYY-MM-DD HH:MM:SS).


YEAR: Armazena apenas o ano (YYYY).



No SQL, os tipos de dados podem ser classificados em categorias como numéricos, texto, datas e booleanos. Aqui está uma visão geral dos principais tipos de dados usados em cada categoria:

1. Tipos Numéricos
Usados para armazenar números, tanto inteiros quanto de ponto flutuante.

Inteiros (números sem ponto decimal):

TINYINT: Inteiros pequenos (1 byte).
SMALLINT: Inteiros de tamanho médio (2 bytes).
INT ou INTEGER: Inteiros padrão (4 bytes).
BIGINT: Inteiros grandes (8 bytes).
Decimais (números com ponto decimal ou precisão fixa):

FLOAT: Precisão variável para números de ponto flutuante.
DOUBLE ou REAL: Para maior precisão em números de ponto flutuante.
DECIMAL ou NUMERIC: Precisão fixa, usado para valores monetários (ex.: DECIMAL(10,2)).
2. Tipos de Texto
Usados para armazenar caracteres, palavras ou strings.

Tamanho fixo:

CHAR(n): Armazena exatamente n caracteres. Ideal para dados com tamanho fixo (ex.: CEP, códigos).
Tamanho variável:

VARCHAR(n): Armazena até n caracteres, com economia de espaço.
Texto longo:

TEXT ou CLOB: Para armazenar grandes blocos de texto, como descrições ou documentos.
3. Tipos de Data e Hora
Para lidar com datas, horários ou ambos.

Somente Data:

DATE: Armazena uma data no formato YYYY-MM-DD.
Somente Hora:

TIME: Armazena hora no formato HH:MM:SS.
Data e Hora:

DATETIME ou TIMESTAMP: Combina data e hora (YYYY-MM-DD HH:MM:SS).
YEAR: Armazena apenas o ano (YYYY).



-- 4. Tipos Booleanos
-- Para valores lógicos (verdadeiro ou falso).

-- Alguns bancos de dados não têm um tipo BOOLEAN nativo. Nestes casos, você pode usar:
BOOLEAN (em bancos que suportam diretamente, como PostgreSQL ou MySQL).

TINYINT(1) (em MySQL, onde 0 é falso e 1 é verdadeiro).

-- EXEMPLO DE TABELA COM TIPOS DE DADOS 

CREATE TABLE exemplo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    salario DECIMAL(10, 2),
    nascimento DATE,
    ativo BOOLEAN
);

-- Considerações:
-- Escolha tipos de dados baseados na necessidade de armazenamento e no desempenho.
-- Para bancos que não suportam BOOLEAN, use mapeamentos como TINYINT ou CHAR(1) ('Y'/'N').
-- Teste formatos para datas e textos ao trabalhar com diferentes bancos de dados, pois há variações de suporte.



