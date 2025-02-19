Exemplo: Pessoa e CPF

Imagine um banco de dados onde há duas tabelas: Pessoa e CPF.

Cada Pessoa tem um único CPF.
Cada CPF pertence a uma única Pessoa.
Isso cria uma relação 1:1 entre as tabelas Pessoa e CPF.

Representação em banco de dados


CREATE TABLE Pessoa (
    id INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE CPF (
    id INT PRIMARY KEY,
    numero_cpf VARCHAR(11) UNIQUE,
    pessoa_id INT UNIQUE,
    FOREIGN KEY (pessoa_id) REFERENCES Pessoa(id)
);


Características da relação 1:1

✔️ Cada registro em uma tabela tem exatamente um correspondente na outra.

✔️ Pode ser usada para dividir informações raramente usadas ou sensíveis (por exemplo, dados médicos separados da tabela principal de pacientes).

✔️ O uso de chave estrangeira com UNIQUE garante que a relação se mantenha um para um.

Caso precise de mais exemplos ou explicações, me avise! 😊







