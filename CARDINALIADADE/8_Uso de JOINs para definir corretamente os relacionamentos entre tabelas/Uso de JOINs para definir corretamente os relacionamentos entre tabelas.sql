📌 Tipos de JOINs e seus usos:

1️⃣ INNER JOIN (Junção interna)

🔹 Retorna apenas os registros que possuem correspondência em ambas as tabelas.

✅ Uso: Quando você precisa de dados combinados e relacionados entre tabelas.


SELECT clientes.nome, pedidos.id_pedido
FROM clientes
INNER JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente;

📌 Explicação: Aqui, estamos buscando os clientes que possuem pedidos. Se um cliente não tiver um pedido, ele será ignorado.

2️⃣ LEFT JOIN (Junção à esquerda)

🔹 Retorna todos os registros da tabela à esquerda e os correspondentes da direita. Se não houver correspondência, a tabela da direita terá valores NULL.

✅ Uso: Quando você quer todos os registros de uma tabela, mesmo sem correspondência na outra.


SELECT clientes.nome, pedidos.id_pedido
FROM clientes
LEFT JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente;

📌 Explicação: Retorna todos os clientes, incluindo aqueles que ainda não fizeram pedidos.

3️⃣ RIGHT JOIN (Junção à direita)

🔹 Retorna todos os registros da tabela à direita e os correspondentes da esquerda. Se não houver correspondência, a tabela da esquerda terá valores NULL.

✅ Uso: Quando você quer todos os registros de uma tabela secundária, mesmo que não tenham correspondência na principal.


SELECT clientes.nome, pedidos.id_pedido
FROM clientes
RIGHT JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente;

📌 Explicação: Retorna todos os pedidos, mesmo que alguns não estejam vinculados a um cliente.

4️⃣ FULL OUTER JOIN (Junção externa completa)

🔹 Retorna todos os registros de ambas as tabelas, mostrando NULL onde não houver correspondência.

✅ Uso: Quando você quer obter todos os registros de ambas as tabelas, independentemente da relação.


SELECT clientes.nome, pedidos.id_pedido
FROM clientes
FULL OUTER JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente;

📌 Explicação: Retorna todos os clientes e pedidos, inclusive aqueles que não têm correspondência na outra tabela.

🎯 Resumo

Tipo de JOIN Retorna

INNER JOIN	Apenas registros com correspondência em ambas as tabelas

LEFT JOIN	Todos os registros da tabela da esquerda e os correspondentes da direita

RIGHT JOIN	Todos os registros da tabela da direita e os correspondentes da esquerda

FULL OUTER JOIN	Todos os registros de ambas as tabelas, correspondentes ou não

Se precisar de um exemplo mais específico, me avise! 🚀