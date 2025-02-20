Relacionamento N:M (Muitos para Muitos)
Um relacionamento Muitos para Muitos (N:M) ocorre quando múltiplas instâncias de uma entidade podem estar associadas a múltiplas instâncias de outra entidade. No mundo real, esse tipo de relacionamento é muito comum e, no banco de dados, é resolvido através de uma tabela intermediária.

Exemplo no Mundo Real (Mercado de Trabalho)
Considere um sistema de recrutamento onde candidatos podem se candidatar a vagas de emprego e uma mesma vaga pode ter múltiplos candidatos.

Um candidato pode se inscrever para várias vagas.
Uma vaga pode ter vários candidatos interessados.
Aqui temos uma relação N:M (Muitos para Muitos) entre Candidatos e Vagas.

Exemplo SQL para Relacionamento N:M
Criação das Tabelas


CREATE TABLE Candidatos (
    id INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Vagas (
    id INT PRIMARY KEY,
    titulo VARCHAR(100)
);
Criação da Tabela Intermediária


CREATE TABLE Candidatos_Vagas (
    id_candidato INT,
    id_vaga INT,
    data_candidatura DATE,
    PRIMARY KEY (id_candidato, id_vaga),
    FOREIGN KEY (id_candidato) REFERENCES Candidatos(id),
    FOREIGN KEY (id_vaga) REFERENCES Vagas(id)
);
  
Inserindo Dados
INSERT INTO Candidatos (id, nome) VALUES (1, 'João'), (2, 'Maria');
INSERT INTO Vagas (id, titulo) VALUES (1, 'Desenvolvedor .NET'), (2, 'Analista de Dados');

-- João se candidatou para ambas as vagas
INSERT INTO Candidatos_Vagas (id_candidato, id_vaga, data_candidatura) VALUES (1, 1, '2025-02-20');
INSERT INTO Candidatos_Vagas (id_candidato, id_vaga, data_candidatura) VALUES (1, 2, '2025-02-21');

-- Maria se candidatou apenas para Analista de Dados
INSERT INTO Candidatos_Vagas (id_candidato, id_vaga, data_candidatura) VALUES (2, 2, '2025-02-22');
Consultando os Candidatos e suas Vagas
 
SELECT Candidatos.nome, Vagas.titulo, Candidatos_Vagas.data_candidatura
FROM Candidatos
JOIN Candidatos_Vagas ON Candidatos.id = Candidatos_Vagas.id_candidato
JOIN Vagas ON Vagas.id = Candidatos_Vagas.id_vaga;




Saída Esperada  



nome	titulo	data_candidatura
João	Desenvolvedor .NET	2025-02-20
João	Analista de Dados	2025-02-21
Maria	Analista de Dados	2025-02-22
Outros Exemplos do Mercado
Clientes e Produtos

Um cliente pode comprar vários produtos.
Um produto pode ser comprado por vários clientes.
Tabela intermediária: "Vendas" (guarda o ID do cliente e do produto).
Médicos e Pacientes

Um médico pode atender vários pacientes.
Um paciente pode ser atendido por vários médicos.
Tabela intermediária: "Consultas" (guarda o ID do médico e do paciente).
Conclusão


O relacionamento N:M é essencial para modelar diversos cenários do mundo real. No SQL, utilizamos tabelas intermediárias para armazenar as conexões entre as entidades, garantindo um modelo relacional eficiente e organizado.