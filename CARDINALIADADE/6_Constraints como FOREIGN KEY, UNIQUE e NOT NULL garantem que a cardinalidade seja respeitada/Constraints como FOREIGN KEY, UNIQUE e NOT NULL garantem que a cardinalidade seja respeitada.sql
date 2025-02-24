Claro! Vou apresentar um exemplo de como as constraints como FOREIGN KEY, UNIQUE e NOT NULL podem ser usadas para garantir a integridade de um banco de dados relacional, respeitando a cardinalidade entre as tabelas.

Vamos criar duas tabelas para o exemplo: uma para clientes e outra para pedidos, onde cada cliente pode ter vários pedidos (relacionamento 1:N).


1. Criando as tabelas com FOREIGN KEY, UNIQUE e NOT NULL

-- Tabela de Clientes
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,  -- Chave primária, único e NOT NULL por padrão
    Nome VARCHAR(100) NOT NULL,  -- Nome do cliente, não pode ser NULL
    Email VARCHAR(100) UNIQUE NOT NULL  -- Email único para cada cliente, não pode ser NULL
);

-- Tabela de Pedidos
CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,  -- Chave primária, único e NOT NULL por padrão
    ClienteID INT NOT NULL,  -- Chave estrangeira, não pode ser NULL
    DataPedido DATE NOT NULL,  -- Data do pedido, não pode ser NULL
    Valor DECIMAL(10, 2) NOT NULL,  -- Valor do pedido, não pode ser NULL
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)  -- Relacionamento com a tabela Clientes
);


Explicação das constraints e como elas garantem a cardinalidade:
PRIMARY KEY (Chave primária):

Em ambas as tabelas (Clientes e Pedidos), o ClienteID e o PedidoID são as chaves primárias. Isso garante que cada cliente e cada pedido tenha um identificador único.
FOREIGN KEY:

Na tabela Pedidos, temos a coluna ClienteID que é uma chave estrangeira. Ela faz referência à chave primária ClienteID da tabela Clientes.
Essa relação FOREIGN KEY garante que cada pedido esteja associado a um cliente válido. Ou seja, a cardinalidade de 1:N é mantida, pois um cliente pode ter vários pedidos, mas cada pedido deve ser associado a apenas um cliente.
Se tentarmos adicionar um pedido com um ClienteID que não existe na tabela Clientes, o banco de dados irá gerar um erro, garantindo a integridade referencial.
NOT NULL:

A coluna Nome da tabela Clientes e a coluna ClienteID da tabela Pedidos são definidas como NOT NULL, o que significa que não podem ter valores nulos. Isso garante que sempre teremos um nome para o cliente e que cada pedido terá um cliente associado (não podemos ter um pedido sem cliente).
UNIQUE:

Na tabela Clientes, a coluna Email é definida como UNIQUE. Isso garante que não existam dois clientes com o mesmo endereço de email, o que é importante para a integridade dos dados, pois o email deve ser exclusivo.
2. Exemplo de inserção de dados
Agora, vamos inserir alguns dados nas tabelas e ver como as constraints funcionam:



-- Inserindo clientes
INSERT INTO Clientes (ClienteID, Nome, Email) 
VALUES (1, 'João da Silva', 'joao@example.com'),
       (2, 'Maria Oliveira', 'maria@example.com');

-- Inserindo pedidos
INSERT INTO Pedidos (PedidoID, ClienteID, DataPedido, Valor) 
VALUES (1, 1, '2025-02-21', 100.50),
       (2, 1, '2025-02-22', 150.75),
       (3, 2, '2025-02-23', 200.00);

-- Tentar inserir um pedido com um ClienteID que não existe (causará erro)
INSERT INTO Pedidos (PedidoID, ClienteID, DataPedido, Valor) 
VALUES (4, 3, '2025-02-24', 50.00);  -- Erro, pois não existe o ClienteID 3



3. Explicação dos comportamentos:
Ao inserir um pedido para ClienteID = 1 ou ClienteID = 2, a inserção ocorrerá normalmente porque os ClienteID existem na tabela Clientes.
Ao tentar inserir um pedido com ClienteID = 3, o banco de dados irá gerar um erro de violação da FOREIGN KEY porque o ClienteID 3 não existe na tabela Clientes.
Como a coluna Email da tabela Clientes é UNIQUE, não seria possível inserir dois clientes com o mesmo email, garantindo que a restrição de unicidade seja cumprida.


Resumo:
FOREIGN KEY: Garante a integridade referencial entre as tabelas, mantendo o relacionamento 1:N (um cliente pode ter vários pedidos, mas cada pedido tem um cliente único).
UNIQUE: Garante que certos dados (como o Email) sejam exclusivos.
NOT NULL: Garante que certas colunas, como ClienteID e Nome, não possam ser nulas, garantindo dados completos em cada registro.
Essas constraints ajudam a garantir que os dados no banco de dados sejam consistentes e que as regras de cardinalidade e integridade dos relacionamentos sejam respeitadas.