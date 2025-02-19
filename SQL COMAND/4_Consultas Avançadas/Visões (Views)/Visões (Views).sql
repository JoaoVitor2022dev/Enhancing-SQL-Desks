Visões (Views) em SQL são objetos de banco de dados que atuam como tabelas virtuais. Elas são criadas a partir de uma consulta SQL e permitem que você simplifique o acesso a dados complexos ou restrinja as informações visíveis para certos usuários. Aqui está uma explicação detalhada sobre como criar e usar visões em SQL, com exemplos.

Vantagens das Visões
Simplificação de Consultas: Reduz a complexidade de consultas frequentemente utilizadas.
Segurança: Restringe o acesso a determinadas colunas ou linhas da tabela.
Abstração: Esconde a lógica de consulta e a estrutura subjacente do banco de dados.
Manutenção: Facilita mudanças no banco de dados sem impactar diretamente as aplicações.

----------------------------------------------------------------------------------------------------------------------------------------

Criando uma Visão (CREATE VIEW)
A sintaxe básica para criar uma visão é:


CREATE VIEW nome_da_visao AS
SELECT colunas
FROM tabela
WHERE condição;

EXEMPLO REAL 

-- CRIANDO A VIEW DO SISTEMA -- 

CREATE VIEW nome_da_visao AS 
SELECT description, barcode, price
FROM tb_products
WHERE stock_qty > 10;


SELECT * FROM nome_da_visao;


---------------------------------------------------------------------------------------------------------------

Exemplo 1: Visão simples
Vamos supor que você tenha uma tabela Funcionarios com as colunas ID, Nome, Cargo, Salario. Para criar uma visão que exibe apenas Nome e Cargo:


CREATE VIEW VisaoFuncionarios AS
SELECT Nome, Cargo
FROM Funcionarios;


---------------------------------------------------------------------------------------------------------------


Exemplo 2: Visão com filtros
Se você quiser criar uma visão que mostra apenas os funcionários com salário acima de 5000:


CREATE VIEW AltosSalarios AS
SELECT Nome, Salario
FROM Funcionarios
WHERE Salario > 5000;

---------------------------------------------------------------------------------------------------------------

DROP VIEW nome_da_visao;
Exemplo:

DROP VIEW AltosSalarios;
Usando Visões para Atualização (Views Updatáveis)
Em alguns casos, é possível atualizar dados de uma visão se ela cumprir certos requisitos, como não usar funções agregadas. Exemplo:

---------------------------------------------------------------------------------------------------------------


UPDATE VisaoFuncionarios
SET Cargo = 'Gerente'
WHERE Nome = 'João';


---------------------------------------------------------------------------------------------------------------

Considerações Importantes


Nem todas as visões são atualizáveis.
Alterações feitas em tabelas subjacentes refletem automaticamente na visão.
Visões podem ser aninhadas, ou seja, uma visão pode ser criada a partir de outra.

