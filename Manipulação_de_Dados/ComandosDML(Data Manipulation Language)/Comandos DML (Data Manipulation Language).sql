INSERT

O comando INSERT é usado para adicionar novas linhas a uma tabela.

Sintaxe:
INSERT INTO nome_tabela (coluna1, coluna2, ...) VALUES (valor1, valor2, ...);

exemplo REAL
INSERT INTO tb_products 
   (description, barcode, price, stock_qty, supplier_id) 
   VALUES 
   ("Ventilador", "9018273981273", 98.90, 34, 2); 

------------------------------------------------------------------------------------------


2. UPDATE (Atualizar dados)

Usado para modificar dados existentes em uma tabela.

Sintaxe básica:

UPDATE tabela
SET coluna1 = valor1, coluna2 = valor2, ...
WHERE condição;

Exemplo:
UPDATE clientes
SET idade = 31, cidade = 'Curitiba'
WHERE nome = 'Maria';


Notas:
WHERE é opcional, mas sem ele todas as linhas da tabela serão atualizadas.
Tome cuidado para não atualizar dados de forma indiscriminada!

EXEMPLO REAL 
UPDATE tb_products SET 
      description = "Maquina de lavar", barcode="00000", price=25.90, stock_qty=15
	   WHERE id = 30; 

------------------------------------------------------------------------------------------

3. DELETE (Excluir dados)
Usado para remover linhas de uma tabela.

Sintaxe básica:

DELETE FROM tabela
WHERE condição;

Exemplo:

DELETE FROM clientes
WHERE nome = 'Maria';

EXEMPLO REAL 
DELETE FROM tb_products WHERE id = 26;













 
   

