Índices em SQL: Criação e Uso
Os índices são estruturas de dados usadas para melhorar a performance de consultas, tornando a recuperação de dados mais eficiente. Eles funcionam como índices em um livro, permitindo que o banco de dados localize rapidamente os registros.

Criação de Índices (CREATE INDEX)
A instrução básica para criar um índice em SQL é:


CREATE INDEX nome_indice ON tabela(coluna);


CREATE INDEX idx_nome ON clientes(nome);
Esse índice acelera consultas que filtram ou ordenam os dados com base na coluna nome.

Para criar um índice único (garantindo que não haja valores duplicados):

CREATE UNIQUE INDEX idx_email ON clientes(email);
Para criar um índice em várias colunas:

CREATE INDEX idx_composto ON pedidos(cliente_id, data_pedido);


Sem Índice:
Quando você faz uma consulta, o banco de dados lê todas as linhas e todas as colunas da tabela, mesmo que só precise verificar uma coluna específica. Isso é chamado de full table scan e pode ser muito lento em tabelas grandes.

Com Índice:
Com o índice que você criou em description, o banco não precisa olhar todas as linhas e colunas. Ele vai direto ao atalho do índice, que funciona como um mapa organizado apenas para a coluna description. Assim, ele encontra os dados relevantes de forma muito mais rápida.

Analogia:

Imagine que tb_products é um livro enorme e cada linha é uma página.

Sem índice: Você tem que ler página por página para encontrar a informação que precisa.

Com índice: Você usa o índice do final do livro, que te leva direto ao capítulo ou página certa, economizando muito tempo.


-------------------------------------------------------------------------------------------------


Tipos de Índices: Clusterizados e Não Clusterizados
Índice Clusterizado (Clustered Index):

Organiza fisicamente os dados na tabela com base na ordem dos valores do índice.
Cada tabela pode ter apenas um índice clusterizado.

Vantagens:
Recuperação de intervalos de dados mais rápida.
Útil para colunas frequentemente usadas em consultas com ordenação (ORDER BY).

Desvantagem:
Inserções, atualizações e exclusões podem ser mais lentas devido à necessidade de reorganização física dos dados.
Exemplo de criação:


CREATE CLUSTERED INDEX idx_cliente_id ON clientes(cliente_id);
Índice Não Clusterizado (Non-Clustered Index):

Cria uma estrutura separada que aponta para a localização física dos dados na tabela.
Cada tabela pode ter vários índices não clusterizados.

Vantagens:
Rápido para localizar registros específicos.

Desvantagem:
Pode ser mais lento em comparação ao índice clusterizado para leitura sequencial.
Exemplo de criação:


CREATE NONCLUSTERED INDEX idx_nome ON clientes(nome);


-----------------------------------------------------------------------------------------------------

Uso Prático e Considerações

Índices são úteis para acelerar consultas frequentes com filtros (WHERE), ordenações (ORDER BY) ou junções (JOIN).

Cuidado com índices em excesso: Eles podem reduzir a performance de operações de escrita (inserção, atualização e exclusão).

Recomenda-se analisar o plano de execução para identificar as consultas que se beneficiam de índices.




