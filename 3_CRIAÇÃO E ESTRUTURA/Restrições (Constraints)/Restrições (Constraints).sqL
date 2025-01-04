1. PRIMARY KEY

Define uma coluna ou conjunto de colunas que identifica unicamente cada registro em uma tabela.
Não permite valores duplicados nem nulos.
Sintaxe e Exemplo:

CREATE TABLE Alunos (
    ID INT PRIMARY KEY, -- PRIMARY KEY na coluna ID
    Nome VARCHAR(50),
    Idade INT
);


--------------------------------------------------------------------------------------------------


2. FOREIGN KEY
Define uma relação entre duas tabelas, garantindo que o valor de uma coluna corresponda a um valor em uma coluna de outra tabela.
Usado para manter a integridade referencial.
Sintaxe e Exemplo:


CREATE TABLE Cursos (
    CursoID INT PRIMARY KEY,
    NomeCurso VARCHAR(50)
);

CREATE TABLE Alunos (
    ID INT PRIMARY KEY,
    Nome VARCHAR(50),
    CursoID INT,
    FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID) -- Relaciona com a tabela Cursos
);

EXEMPLO REAL 

CREATE TABLE tb_products (  

id INT AUTO_INCREMENT PRIMARY KEY,  

description VARCHAR(100),  

barcode VARCHAR(100),  

price DECIMAL(10,2),  

stock_qty INT,  

supplier_id INT,  

FOREIGN KEY (supplier_id) REFERENCES tb_suppliers(id)  

);  


---------------------------------------------------------------------------------------------------------

3. UNIQUE
Garante que todos os valores em uma coluna (ou conjunto de colunas) sejam únicos.
Diferente de PRIMARY KEY, permite valores nulos (dependendo do banco de dados).
Sintaxe e Exemplo:


CREATE TABLE Professores (
    ID INT PRIMARY KEY,
    Email VARCHAR(100) UNIQUE -- Email deve ser único
);


----------------------------------------------------------------------------------------------------------

4. NOT NULL
Garante que uma coluna não contenha valores nulos.
Sintaxe e Exemplo:

CREATE TABLE Funcionarios (
    ID INT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL, -- Nome não pode ser nulo
    Salario DECIMAL(10, 2)
);

----------------------------------------------------------------------------------------------------------

5. CHECK
Restringe os valores permitidos em uma coluna com base em uma condição lógica.
Sintaxe e Exemplo:


CREATE TABLE Produtos (
    ID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Preco DECIMAL(10, 2),
    Quantidade INT CHECK (Quantidade >= 0) -- Quantidade deve ser maior ou igual a 0
);

-----------------------------------------------------------------------------------------------------------


Constraint	Função	Aceita valores nulos?
PRIMARY KEY	Identifica unicamente cada registro	Não
FOREIGN KEY	Relaciona tabelas e mantém integridade referencial	Depende da tabela referenciada
UNIQUE	Garante valores únicos em uma coluna	Sim (em alguns casos)
NOT NULL	Proíbe valores nulos	Não
CHECK	Restringe valores com base em uma condição	Sim (se não violar a condição)