1ª Forma Normal (1FN) – Eliminação de Grupos Repetitivos
Um banco está na 1FN se:

Todos os atributos contêm apenas valores atômicos (ou seja, não podem armazenar listas ou conjuntos de valores).
Cada coluna armazena apenas um tipo de dado.
Existe uma chave primária que identifica unicamente cada linha da tabela.
🔹 Exemplo de tabela não normalizada (violando 1FN):

ID_Cliente	Nome	Telefones
1	João	(11) 9999-8888, (11) 7777-6666
2	Maria	(21) 8888-7777
🔹 Corrigindo para 1FN (Criando uma nova tabela para os telefones):
Clientes:

ID_Cliente	Nome
1	João
2	Maria
Telefones:

ID_Telefone	ID_Cliente	Telefone
1	1	(11) 9999-8888
2	1	(11) 7777-6666
3	2	(21) 8888-7777
2ª Forma Normal (2FN) – Removendo Dependências Parciais
Um banco está na 2FN se:

Está na 1FN.
Todas as colunas não-chave dependem totalmente da chave primária (não podem depender apenas de uma parte dela em caso de chaves compostas).
🔹 Exemplo violando 2FN:

ID_Pedido	ID_Produto	Nome_Produto	Quantidade
1	101	Notebook	2
2	202	Teclado	1
Aqui, o Nome_Produto depende apenas do ID_Produto, e não do ID_Pedido.
Isso causa redundância se tivermos o mesmo produto em vários pedidos.

🔹 Corrigindo para 2FN (Criando uma tabela separada para produtos):
Pedidos:

ID_Pedido	ID_Produto	Quantidade
1	101	2
2	202	1
Produtos:

ID_Produto	Nome_Produto
101	Notebook
202	Teclado
3ª Forma Normal (3FN) – Removendo Dependências Transitivas
Um banco está na 3FN se:

Está na 2FN.
Não há dependências transitivas (ou seja, colunas não devem depender de outras colunas que não sejam a chave primária).
🔹 Exemplo violando 3FN:

ID_Cliente	Nome	CPF	Cidade	Estado
1	João	123.456.789-00	São Paulo	SP
2	Maria	987.654.321-00	Rio de Janeiro	RJ
Aqui, a Cidade depende da chave primária (ID_Cliente), mas o Estado depende da Cidade (não diretamente do ID_Cliente).

🔹 Corrigindo para 3FN (Criando uma tabela separada para cidades):
Clientes:

ID_Cliente	Nome	CPF	ID_Cidade
1	João	123.456.789-00	1
2	Maria	987.654.321-00	2
Cidades:

ID_Cidade	Cidade	Estado
1	São Paulo	SP
2	Rio de Janeiro	RJ
Resumo das Formas Normais
Forma Normal	Requisitos
1FN	Eliminar valores repetidos em colunas, garantindo atomicidade.
2FN	Eliminar dependências parciais (se houver chave composta, todos os atributos devem depender dela inteira).
3FN	Eliminar dependências transitivas (atributos não devem depender de outros atributos que não sejam a chave primária).