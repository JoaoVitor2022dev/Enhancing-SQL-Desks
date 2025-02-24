 1. FOREIGN KEY → Garante Relacionamentos Válidos (1:N, 1:1)

A constraint FOREIGN KEY garante que uma chave estrangeira em uma tabela só contenha valores que existam na tabela de referência, respeitando a cardinalidade do relacionamento.

📌 Exemplo: Relacionamento 1:N (Um cliente pode fazer várias compras, mas cada compra pertence a um único cliente)



CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);


CREATE TABLE Compra (
    id_compra INT PRIMARY KEY,
    id_cliente INT,
    data_compra DATE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente) -- Garante que a compra pertence a um cliente válido
);

🔹 Explicação:


A tabela Compra tem uma chave estrangeira (id_cliente) que faz referência a Cliente(id_cliente).
Isso impede que um registro na tabela Compra tenha um id_cliente que não existe na tabela Cliente.
Assim, a cardinalidade 1:N é respeitada (um cliente pode ter várias compras, mas cada compra pertence a um único cliente).


🔹 2. UNIQUE → Evita Duplicidade (1:1)

A constraint UNIQUE garante que um valor em determinada coluna não se repita, sendo útil para garantir cardinalidade 1:1.

📌 Exemplo: Relacionamento 1:1 (Cada cliente pode ter no máximo um cartão de fidelidade)


CREATE TABLE CartaoFidelidade (
    id_cartao INT PRIMARY KEY,
    id_cliente INT UNIQUE, -- Um cliente pode ter no máximo um cartão
    data_emissao DATE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

🔹 Explicação:

A chave estrangeira (id_cliente) já garante que o cliente existe.
A constraint UNIQUE impede que o mesmo id_cliente apareça mais de uma vez na tabela CartaoFidelidade, garantindo que cada cliente só tenha um cartão.
Isso respeita a cardinalidade 1:1.

🔹 3. NOT NULL → Garante Obrigatoriedade de Valores
A constraint NOT NULL assegura que determinados campos não podem ser nulos, evitando problemas na modelagem.

📌 Exemplo: Evitar que uma compra seja registrada sem um cliente associado


ALTER TABLE Compra
MODIFY COLUMN id_cliente INT NOT NULL;

🔹 Explicação:

Agora, todas as compras devem obrigatoriamente estar associadas a um cliente.
Isso impede compras sem um id_cliente, garantindo a integridade da cardinalidade.

🔥 Resumo:


Constraint	O que faz?	Quando usar?	Cardinalidade impactada
FOREIGN KEY	Garante que valores referenciem uma chave primária válida	Para criar relacionamentos entre tabelas	1:N e 1:1
UNIQUE	Impede valores duplicados em uma coluna	Para evitar múltiplos registros com o mesmo valor	1:1
NOT NULL	Impede que uma coluna tenha valores nulos	Para garantir que certos campos sejam sempre preenchidos	1:N e 1:1
Essas constraints ajudam a garantir que o banco de dados respeite os relacionamentos corretamente, evitando inconsistências.

Se precisar de mais detalhes, me avise! 🚀