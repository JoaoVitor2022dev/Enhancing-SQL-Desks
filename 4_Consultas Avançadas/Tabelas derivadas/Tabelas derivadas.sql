CTE (Common Table Expressions) em SQL são uma forma de criar uma subquery temporária, que pode ser referenciada dentro de uma query principal. Isso facilita a leitura e manutenção do código, especialmente em consultas complexas.

Estrutura Básica de um CTE


WITH CTE_name (column1, column2, ...)
AS (
    -- Subquery
    SELECT column1, column2, ...
    FROM TableName
    WHERE condition
)
-- Query principal que usa o CTE
SELECT *
FROM CTE_name;


--------------------------------------------------------------------------------------------------

-- CTE -- 
WITH tb_products (description, barcode, price)
AS (
  -- SUBQUERY -- 
  SELECT description, barcode, price
  FROM tb_products
  WHERE stock_qty > 10)
  -- QUERY PRINCIPAL QUE USA O CTE -- 
  SELECT *
  FROM tb_products;
  
  -- CTE -- 
  WITH tb_filtered_products AS 
  ( SELECT description, barcode, price
  FROM tb_products
  WHERE stock_qty > 10) 
SELECT description, COUNT(*)
FROM tb_filtered_products
GROUP BY description;



-----------------------------------------------------------------------------------------



Exemplos de Uso
1. Simples Seleção com CTE
sql
Copiar código
WITH EmployeeCTE AS (
    SELECT EmployeeID, FirstName, LastName, Department
    FROM Employees
    WHERE Department = 'IT'
)
SELECT *
FROM EmployeeCTE;




2. Usando Múltiplos CTEs


WITH SalesCTE AS (
    SELECT SalesPersonID, SUM(SalesAmount) AS TotalSales
    FROM Sales
    GROUP BY SalesPersonID
),
TopSalesCTE AS (
    SELECT SalesPersonID, TotalSales
    FROM SalesCTE
    WHERE TotalSales > 50000
)
SELECT *
FROM TopSalesCTE;




3. Recursão com CTE
CTEs podem ser recursivos, permitindo calcular hierarquias ou caminhos.


WITH RecursiveCTE AS (
    -- Parte inicial da recursão
    SELECT EmployeeID, ManagerID, 1 AS Level
    FROM Employees
    WHERE ManagerID IS NULL
    UNION ALL
    -- Parte recursiva
    SELECT e.EmployeeID, e.ManagerID, Level + 1
    FROM Employees e
    INNER JOIN RecursiveCTE r
    ON e.ManagerID = r.EmployeeID
)
SELECT EmployeeID, ManagerID, Level
FROM RecursiveCTE;



Benefícios do Uso de CTEs
Melhor Leitura do Código: Divide consultas complexas em partes menores.
Reutilização: Permite a reutilização da mesma subquery em diferentes partes da query principal.
Hierarquias: Facilita a navegação em dados hierárquicos com recursão.
Performance: Pode ser mais eficiente que subqueries aninhadas em alguns casos.


