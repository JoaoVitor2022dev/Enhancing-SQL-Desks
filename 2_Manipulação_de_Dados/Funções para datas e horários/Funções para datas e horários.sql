1. NOW()

Descrição: Retorna a data e hora atual do sistema no formato YYYY-MM-DD HH:MM:SS.

Exemplo:

SELECT NOW();
Resultado: 2024-12-27 14:32:00 (depende do momento da execução).

-----------------------------------------------------------------------------------------------

2. DATEADD()
Descrição: Adiciona um intervalo (dias, meses, anos, etc.) a uma data.

Sintaxe:

DATEADD(parte_do_intervalo, valor, data)
Exemplo:

SELECT DATEADD(DAY, 10, '2024-12-27');

Resultado: 2024-01-06 (10 dias adicionados).

Partes do intervalo comuns:

YEAR: Anos
MONTH: Meses
DAY: Dias
HOUR, MINUTE, SECOND: Para intervalos menores.


2. Adicionar meses a uma data
Útil para calcular vencimentos mensais, como faturas ou assinaturas.

SELECT DATEADD(MONTH, 3, '2024-12-27') AS Nova_Data;
-- Resultado: 2025-03-27 (3 meses adicionados)


Claro! O DATEADD() é uma função muito útil no SQL para manipulação de datas. Vou explicar melhor com exemplos reais e mostrar cenários diferentes para que você possa aplicar no seu dia a dia.

1. Adicionar dias a uma data
Você pode adicionar dias úteis ou dias corridos a uma data específica, como em um sistema de entrega ou vencimento.


SELECT DATEADD(DAY, 15, '2024-12-27') AS Nova_Data;
-- Resultado: 2025-01-11 (Adicionando 15 dias corridos)
2. Adicionar meses a uma data
Útil para calcular vencimentos mensais, como faturas ou assinaturas.


SELECT DATEADD(MONTH, 3, '2024-12-27') AS Nova_Data;
-- Resultado: 2025-03-27 (3 meses adicionados)
3. Adicionar anos a uma data
Pode ser usado para calcular contratos ou compromissos de longo prazo.


SELECT DATEADD(YEAR, 5, '2024-12-27') AS Nova_Data;
-- Resultado: 2029-12-27 (5 anos adicionados)
4. Adicionar horas a uma data e hora
Útil para sistemas que trabalham com logs ou eventos com carimbo de data e hora (datetime).


SELECT DATEADD(HOUR, 5, '2024-12-27 08:00:00') AS Nova_Hora;
-- Resultado: 2024-12-27 13:00:00 (5 horas adicionadas)
5. Adicionar minutos e segundos
Para cálculos mais detalhados, como em sistemas de monitoramento.

SELECT DATEADD(MINUTE, 45, '2024-12-27 08:00:00') AS Nova_Hora;
-- Resultado: 2024-12-27 08:45:00 (45 minutos adicionados)

SELECT DATEADD(SECOND, 30, '2024-12-27 08:00:00') AS Nova_Hora;
-- Resultado: 2024-12-27 08:00:30 (30 segundos adicionados)
6. Exemplo mais prático: cálculo de prazo de entrega
Imagine que você tem um sistema de pedidos onde cada entrega leva 7 dias úteis.

SELECT DATEADD(DAY, 7, '2024-12-20') AS Data_Entrega;
-- Resultado: 2024-12-27 (7 dias corridos adicionados)

-----------------------------------------------------------------------------------------------

3. DATEDIFF()
Descrição: Calcula a diferença entre duas datas, normalmente em dias.

Sintaxe:
DATEDIFF(data_final, data_inicial)


SELECT DATEDIFF('2024-12-31', '2024-12-27');

Resultado: 4 (diferença de 4 dias).

SELECT DATEDIFF('2024-12-31', '2024-12-27') AS Diferenca_entre_datas;

-------------------------------------------------------------------------------------------------

4. YEAR()
Descrição: Retorna o ano de uma data.
Exemplo:


SELECT YEAR('2024-12-27');
Resultado: 2024.

-------------------------------------------------------------------------------------------------


5. MONTH()
Descrição: Retorna o número do mês (1 a 12) de uma data.

Exemplo:

SELECT MONTH('2024-12-27');
Resultado: 12.


--------------------------------------------------------------------------------------------------

6. DAY()
Descrição: Retorna o dia do mês (1 a 31) de uma data.
Exemplo:


SELECT DAY('2024-12-27');
Resultado: 27.

---------------------------------------------------------------------------------------------------

