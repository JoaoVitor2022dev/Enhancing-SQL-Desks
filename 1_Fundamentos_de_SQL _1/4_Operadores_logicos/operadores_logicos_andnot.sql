
-- 1. AND (E):
-- Retorna TRUE se todas as condições forem verdadeiras.
-- Usado para combinar condições que devem ser satisfeitas simultaneamente.

SELECT * 
FROM produtos
WHERE preco > 50 
  AND estoque > 100;


-- 2. OR (OU):
-- Retorna TRUE se pelo menos uma das condições for verdadeira.
-- Usado para combinar condições onde qualquer uma pode ser satisfeita.

SELECT * 
FROM produtos
WHERE categoria = 'Eletrônicos' 
   OR categoria = 'Móveis';

-- 3. NOT (NÃO):
-- Inverte o valor lógico da condição.
-- Retorna TRUE se a condição for falsa.

SELECT * 
FROM produtos
WHERE NOT (estoque < 50); 


-- Combinação de Operadores:
-- Você pode combinar AND, OR e NOT em uma única consulta. Para evitar ambiguidade, use parênteses para definir a ordem de avaliação.
   
SELECT * 
FROM produtos
WHERE (preco > 100 AND estoque > 50)
   OR (categoria = 'Promoção' AND NOT (estoque = 0));  

-- Retorna produtos com preço maior que 100 e estoque acima de 50, ou produtos da categoria "Promoção" que não estejam sem estoque.
-- Precedência (Prioridade) dos Operadores:


-- NOT é avaliado primeiro.
-- AND é avaliado em seguida.
-- OR é avaliado por último.