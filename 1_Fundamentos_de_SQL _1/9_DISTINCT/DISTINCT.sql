
O comando DISTINCT em SQL é usado para eliminar registros duplicados no resultado de uma consulta. 
Ele é aplicado às colunas especificadas no SELECT, retornando apenas as combinações únicas de valores.


Estrutura básica:

SELECT DISTINCT coluna1, coluna2, ...
FROM tabela;

Como funciona:

O banco de dados avalia as colunas listadas após o DISTINCT.
Ele elimina linhas duplicadas, considerando somente essas colunas.


----------------------------------------------------------------------------------------------------

Exemplos práticos:
Eliminando duplicados de uma única coluna:

SELECT DISTINCT cidade
FROM clientes;


Eliminando duplicados com múltiplas colunas:


SELECT DISTINCT cidade, estado
FROM clientes;

Neste caso, o SQL retorna combinações únicas de cidade e estado.
Se duas linhas tiverem a mesma cidade, mas estados diferentes, ambas serão mantidas.


Usando com outras cláusulas:

Ordenação (ORDER BY):
SELECT DISTINCT cidade
FROM clientes
ORDER BY cidade;


Condições (WHERE):
SELECT DISTINCT cidade
FROM clientes
WHERE estado = 'SP';


--Limitações:
-- Impacto na performance:

DISTINCT pode ser custoso para grandes volumes de dados, pois o banco precisa processar todas as linhas e identificar os valores únicos.
Solução: Garanta índices eficientes ou use em tabelas já filtradas.

Aplicado a todas as colunas listadas no SELECT: Se o objetivo é eliminar duplicados com base em uma única coluna, mas outras colunas têm valores distintos, o DISTINCT não vai funcionar como esperado. Exemplo:


SELECT DISTINCT cidade, nome
FROM clientes;

-- Esse comando considera ambas as colunas, então a lista retornada pode ter cidades repetidas se os nomes forem diferentes.


Alternativas ao DISTINCT:
Usar GROUP BY:

SELECT cidade
FROM clientes
GROUP BY cidade;
Muitas vezes, GROUP BY pode ser usado em vez de DISTINCT e permite a aplicação de funções de agregação (como COUNT, SUM, etc.).

Subqueries: Quando o desempenho ou lógica exigir, pode-se combinar subconsultas para filtrar duplicados.



