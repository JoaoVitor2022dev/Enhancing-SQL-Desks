1. Subconsultas em WHERE
Descrição:
Usadas para filtrar registros com base nos resultados de outra consulta.

Sintaxe:

SELECT coluna1, coluna2
FROM tabela
WHERE colunaX operador_comparação (SELECT colunaY FROM tabela2 WHERE condição);

EXEMPLO REAL

SELECT description, barcode 
FROM tb_products
WHERE supplier_id IN (SELECT id FROM tb_suppliers WHERE id = 2);

-- Essa comando em SQL é para o retornar todos os nome e codigo de barra da tabela produto baseado em
-- um consulta de select  

SELECT description, barcode
FROM tb_products
JOIN tb_suppliers ON tb_products.supplier_id = tb_suppliers.id
WHERE tb_suppliers.id = 3;

--------------------------------------------------------------------------------------------

2. Subconsulta na cláusula FROM
Uso: A subconsulta atua como uma tabela derivada (ou tabela temporária) para a consulta principal.
Exemplo: Listar o nome e o salário relativo à média do departamento.


SELECT f.nome, f.salario, media_salario_dept
FROM funcionarios f
JOIN (
    SELECT departamento_id, AVG(salario) AS media_salario_dept
    FROM funcionarios
    GROUP BY departamento_id
) AS media_dept
ON f.departamento_id = media_dept.departamento_id;

-----------------------------------------------------------------------------------------------------


3. Subconsulta na cláusula SELECT
Uso: A subconsulta é usada para calcular valores para cada linha da consulta principal.
Exemplo: Mostrar o nome dos funcionários e o total de vendas que cada um realizou.


SELECT nome,
       (SELECT SUM(valor_venda)
        FROM vendas
        WHERE vendas.funcionario_id = funcionarios.id) AS total_vendas
FROM funcionarios;

Explicação:
Para cada linha na consulta principal, a subconsulta 

SELECT SUM(valor_venda) FROM vendas WHERE vendas.funcionario_id = 
funcionarios.id 

calcula o total de vendas realizadas por aquele funcionário.


----------------------------------------------------------------------------------------------------

Considerações Importantes:
Escopo: A subconsulta pode acessar colunas da consulta principal (no caso de subconsultas correlacionadas).
Correlacionada vs. Independente:
Subconsulta Independente: Executada apenas uma vez, sem depender de valores da consulta externa.
Subconsulta Correlacionada: Executada repetidamente, uma vez para cada linha da consulta principal, pois depende de colunas da consulta principal.
Performance: Subconsultas correlacionadas podem ser menos eficientes; em muitos casos, podem ser reescritas usando JOINs para melhor desempenho.