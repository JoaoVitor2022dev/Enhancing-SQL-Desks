1. ROW_NUMBER()
Atribui um número sequencial único a cada linha dentro da partição especificada, começando em 1.

Sintaxe:
ROW_NUMBER() OVER (PARTITION BY coluna ORDER BY coluna)
Exemplo:


SELECT 
    Nome, 
    Departamento, 
    Salario, 
    ROW_NUMBER() OVER (PARTITION BY Departamento ORDER BY Salario DESC) AS Numero
FROM Funcionarios;


Explicação: Numera os funcionários de cada departamento com base no salário em ordem decrescente.

------------------------------------------------------------------------------------------------

As funções analíticas (ou window functions) em SQL permitem realizar cálculos baseados em uma "janela" de linhas, sem a necessidade de agrupar os dados como nas funções de agregação padrão. Vamos explorar as principais funções analíticas:

1. ROW_NUMBER()
Atribui um número sequencial único a cada linha dentro da partição especificada, começando em 1.

Sintaxe:

sql
Copiar código
ROW_NUMBER() OVER (PARTITION BY coluna ORDER BY coluna)
Exemplo:

sql
Copiar código
SELECT 
    Nome, 
    Departamento, 
    Salario, 
    ROW_NUMBER() OVER (PARTITION BY Departamento ORDER BY Salario DESC) AS Numero
FROM Funcionarios;
Explicação: Numera os funcionários de cada departamento com base no salário em ordem decrescente.

2. RANK()
Atribui uma classificação a cada linha dentro da partição, mas permite empates, pulando números na sequência.

Sintaxe:
RANK() OVER (PARTITION BY coluna ORDER BY coluna)
Exemplo:


SELECT 
    Nome, 
    Departamento, 
    Salario, 
    RANK() OVER (PARTITION BY Departamento ORDER BY Salario DESC) AS Rank
FROM Funcionarios;
Explicação: Classifica os funcionários dentro de cada departamento por salário. Empates resultam em saltos no ranking.



---------------------------------------------------------------------------------------------------

3. DENSE_RANK()
Similar ao RANK(), mas não pula números em caso de empates.

Sintaxe:

DENSE_RANK() OVER (PARTITION BY coluna ORDER BY coluna)
Exemplo:


SELECT 
    Nome, 
    Departamento, 
    Salario, 
    DENSE_RANK() OVER (PARTITION BY Departamento ORDER BY Salario DESC) AS DenseRank
FROM Funcionarios;
Explicação: Classifica os funcionários como o RANK(), mas sem pular classificações em caso de empates.

---------------------------------------------------------------------------------------------

4. NTILE()
Divide as linhas em um número especificado de grupos (ou quantis) e atribui um número a cada grupo.

Sintaxe:


NTILE(numero_de_grupos) OVER (PARTITION BY coluna ORDER BY coluna)
Exemplo:


SELECT 
    Nome, 
    Salario, 
    NTILE(4) OVER (ORDER BY Salario DESC) AS Quartil
FROM Funcionarios;


Explicação: Divide os funcionários em 4 grupos baseados nos salários, do mais alto ao mais baixo.

-----------------------------------------------------------------------------------------------------------

5. Funções de agregação com OVER()
Permitem usar funções como SUM, AVG, MAX, etc., sem agrupar os dados.

Sintaxe:

FUNCAO_AGREGACAO() OVER (PARTITION BY coluna ORDER BY coluna)
Exemplo:

SELECT 
    Nome, 
    Departamento, 
    Salario, 
    SUM(Salario) OVER (PARTITION BY Departamento) AS TotalSalarioDepto
FROM Funcionarios;

Explicação: Calcula o total dos salários de cada departamento sem agrupar as linhas.




