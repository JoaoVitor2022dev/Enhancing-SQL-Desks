PIVOT

O operador PIVOT é usado para transformar linhas em colunas.
 É útil para criar tabelas dinâmicas onde se deseja agrupar valores e reorganizar os dados.

Estrutura básica:

SELECT <colunas fixas>, [Coluna1], [Coluna2], ...
FROM (
    <subquery ou tabela-fonte>
) AS Fonte
PIVOT (
    FunçãoAgregação(Valor) 
    FOR <ColunaQueSeráPivoteada> IN ([Coluna1], [Coluna2], ...)
) AS PivoTable;


SELECT Produto, [2023], [2024]
FROM (
    SELECT Produto, Ano, Valor
    FROM Vendas
) AS Fonte
PIVOT (
    SUM(Valor) 
    FOR Ano IN ([2023], [2024])
) AS PivoTable;


-----------------------------------------------------------------------------------------------------

UNPIVOT
O operador UNPIVOT faz o inverso do PIVOT: transforma colunas em linhas.

Estrutura básica:


SELECT <colunas fixas>, NomeColuna, ValorColuna
FROM (
    <tabela com colunas a serem unpivotadas>
) AS Fonte
UNPIVOT (
    ValorColuna 
    FOR NomeColuna IN ([Coluna1], [Coluna2], ...)
) AS UnpivoTable;



SELECT Produto, Ano, Valor
FROM (
    SELECT Produto, [2023], [2024]
    FROM VendasPivot
) AS Fonte
UNPIVOT (
    Valor 
    FOR Ano IN ([2023], [2024])
) AS UnpivoTable;


Dicas importantes

Funções de agregação no PIVOT:

As funções mais usadas são SUM, AVG, COUNT etc.

Nomes fixos no IN:

No PIVOT e UNPIVOT, os valores em IN devem ser definidos explicitamente.

Subconsulta necessária:

É comum usar uma subconsulta para organizar os dados antes de aplicar PIVOT ou UNPIVOT.


