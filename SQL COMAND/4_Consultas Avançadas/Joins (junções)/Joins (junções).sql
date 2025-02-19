Aqui está uma explicação de cada tipo de JOIN em SQL:

1. INNER JOIN
Retorna apenas as linhas onde há correspondência em ambas as tabelas.

Sintaxe:

SELECT coluna1, coluna2
FROM tabela1
INNER JOIN tabela2
ON tabela1.coluna = tabela2.coluna;

Exemplo:

SELECT clientes.nome, pedidos.id
FROM clientes
INNER JOIN pedidos
ON clientes.id = pedidos.cliente_id;

EXEMPLO REAL (one); 

SELECT description, name
FROM tb_suppliers
INNER JOIN tb_products
ON tb_suppliers.id = tb_products.supplier_id;

EXEMPLO REAL (TWO); 

SELECT quantity, notes, sale_date
FROM tb_sales
INNER JOIN tb_sales_items
ON tb_sales.id = tb_sales_items.sale_id; 

-------------------------------------------------------------------------------------------------


2. LEFT JOIN (ou LEFT OUTER JOIN)
Retorna todas as linhas da tabela à esquerda e as correspondências da tabela à direita. Onde não houver correspondência, os valores da tabela à direita serão NULL.

Sintaxe:

SELECT coluna1, coluna2
FROM tabela1
LEFT JOIN tabela2
ON tabela1.coluna = tabela2.coluna;


Exemplo:

SELECT clientes.nome, pedidos.id
FROM clientes
LEFT JOIN pedidos
ON clientes.id = pedidos.cliente_id;

EXEMPLO REAL: 

SELECT sale_date, total_sale, quantity, subtotal
FROM tb_sales_items
LEFT JOIN tb_sales
ON tb_sales.id = tb_sales_items.sale_id;


DESCRIÇÃO: esse metodo retorna os dados mesmo que as duas colunas não tenham informações correlacionada, ao lado direita 


-----------------------------------------------------------------------------------------------------

3. RIGHT JOIN (ou RIGHT OUTER JOIN)
Retorna todas as linhas da tabela à direita e as correspondências da tabela à esquerda. Onde não houver correspondência, os valores da tabela à esquerda serão NULL.

Sintaxe:

SELECT coluna1, coluna2
FROM tabela1
RIGHT JOIN tabela2
ON tabela1.coluna = tabela2.coluna;
Exemplo:

SELECT clientes.nome, pedidos.id
FROM clientes
RIGHT JOIN pedidos
ON clientes.id = pedidos.cliente_id;


-------------------------------------------------------------------------------------------------------------------

4. FULL OUTER JOIN
Retorna todas as linhas quando há correspondências em uma das tabelas ou em ambas. Onde não houver correspondência, os valores das colunas não correspondentes serão NULL.

Sintaxe:

sql
Copiar código
SELECT coluna1, coluna2
FROM tabela1
FULL OUTER JOIN tabela2
ON tabela1.coluna = tabela2.coluna;
Exemplo:

sql
Copiar código
SELECT clientes.nome, pedidos.id
FROM clientes
FULL OUTER JOIN pedidos
ON clientes.id = pedidos.cliente_id;



--------------------------------------------------------------------------------------------------------------------


5. CROSS JOIN
Retorna o produto cartesiano das duas tabelas (combina todas as linhas de uma tabela com todas as linhas da outra).

Sintaxe:

SELECT coluna1, coluna2
FROM tabela1
CROSS JOIN tabela2;
Exemplo:


SELECT clientes.nome, produtos.nome
FROM clientes
CROSS JOIN produtos;

EXEMPLO REAL 

SELECT barcode, price, name
FROM tb_products
CROSS JOIN tb_suppliers;


-------------------------------------------------------------------------------------------------------------------------------

6. SELF JOIN
Um JOIN de uma tabela consigo mesma. Útil para comparar linhas dentro da mesma tabela.

Sintaxe:


SELECT A.coluna1, B.coluna2
FROM tabela A
INNER JOIN tabela B
ON A.coluna = B.coluna;
Exemplo:


SELECT e1.nome AS Empregado, e2.nome AS Supervisor
FROM empregados e1
INNER JOIN empregados e2
ON e1.supervisor_id = e2.id;


----------------------------------------------------------------------------------------------------------------------------


Resumo prático:
INNER JOIN: Correspondências em ambas.
LEFT JOIN: Tudo da esquerda + correspondências.
RIGHT JOIN: Tudo da direita + correspondências.
FULL OUTER JOIN: Tudo de ambas, com ou sem correspondência.
CROSS JOIN: Combinações de todas as linhas.
SELF JOIN: Comparação dentro da mesma tabela.

















