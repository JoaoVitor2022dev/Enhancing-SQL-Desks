1. CREATE TABLE
O comando CREATE TABLE é usado para criar uma nova tabela no banco de dados.


CREATE TABLE nome_da_tabela (
    nome_da_coluna tipo_de_dado restrições_opcionais,
    nome_da_coluna tipo_de_dado restrições_opcionais,
    ...
);

-- EXEMPLO -- 
CREATE TABLE Clientes (
    ID INT PRIMARY KEY,         -- Coluna de identificação única
    Nome VARCHAR(100) NOT NULL, -- Nome do cliente, obrigatório
    Email VARCHAR(150),         -- E-mail do cliente, opcional
    DataNascimento DATE         -- Data de nascimento
);

-----------------------------------------------------------------------

2. ALTER TABLE
O comando ALTER TABLE é usado para modificar a estrutura de uma tabela existente.

Funções comuns do ALTER TABLE:

Adicionar coluna:
ALTER TABLE nome_da_tabela ADD nome_da_coluna tipo_de_dado restrições_opcionais;
-- ALTERAR TABELA, ADICIONAR COLUNA -- 
ALTER TABLE tb_products ADD preco_antigo DECIMAL(10,2) NULL; 

ALTER TABLE Clientes ADD Telefone VARCHAR(15);

--------------------------------

Modificar coluna:
ALTER TABLE nome_da_tabela MODIFY nome_da_coluna novo_tipo restrições_opcionais;

-- MODIFICAR A TABELA -- 
ALTER TABLE tb_products MODIFY preco_antigo DECIMAL(10,3) NULL;

ALTER TABLE Clientes MODIFY Telefone VARCHAR(20);

-------------------------------

ALTER TABLE nome_da_tabela DROP COLUMN nome_da_coluna;

-- EXCLUIR COLUNA -- 
ALTER TABLE tb_products DROP COLUMN preco_antigo;

ALTER TABLE Clientes DROP COLUMN Telefone;

-----------------------------------------------------------------------------

3. DROP TABLE
O comando DROP TABLE é usado para excluir uma tabela do banco de dados permanentemente, removendo também seus dados.

Estrutura básica:
DROP TABLE nome_da_tabela;

Exemplo:

DROP TABLE Clientes;
Esse comando excluirá a tabela Clientes e todos os dados nela contidos.

Atenção: O comando DROP TABLE não pode ser desfeito. Use-o com cuidado.


-------------------------------------------------------------------------------------

Resumo prático:

CREATE TABLE: Define a estrutura inicial de uma tabela.

ALTER TABLE: Modifica a estrutura de uma tabela existente.

DROP TABLE: Remove uma tabela e seus dados do banco de dados.









