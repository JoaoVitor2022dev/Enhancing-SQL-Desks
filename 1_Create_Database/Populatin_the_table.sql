/* Alimentando a tabela de clientes */

INSERT INTO tb_clients 
(name, rg, cpf, email, phone, mobile, zip_code, address, number, complement, district, city, state)
VALUES
('Ana Silva', '123456789', '123.456.789-00', 'ana.silva@example.com', '1111-1111', '9999-9999', '12345-678', 'Rua das Flores', 101, 'Apto 202', 'Centro', 'São Paulo', 'SP'),
('Carlos Santos', '987654321', '987.654.321-00', 'carlos.santos@example.com', '2222-2222', '8888-8888', '23456-789', 'Avenida Paulista', 102, 'Bloco B', 'Bela Vista', 'São Paulo', 'SP'),
('Beatriz Oliveira', '112233445', '112.233.445-66', 'beatriz.oliveira@example.com', '3333-3333', '7777-7777', '34567-890', 'Rua do Sol', 103, 'Casa', 'Jardim', 'Rio de Janeiro', 'RJ'),
('Fernando Souza', '998877665', '998.877.665-55', 'fernando.souza@example.com', '4444-4444', '6666-6666', '45678-901', 'Rua da Lua', 104, 'Sobrado', 'Zona Sul', 'Belo Horizonte', 'MG'),
('Mariana Costa', '556677889', '556.677.889-44', 'mariana.costa@example.com', '5555-5555', '5555-5555', '56789-012', 'Rua Estrela', 105, '', 'Centro', 'Curitiba', 'PR'),
('Pedro Lima', '334455667', '334.455.667-33', 'pedro.lima@example.com', '6666-6666', '4444-4444', '67890-123', 'Avenida Brasil', 106, 'Sala 1', 'Zona Norte', 'Fortaleza', 'CE'),
('Juliana Alves', '221133445', '221.133.445-22', 'juliana.alves@example.com', '7777-7777', '3333-3333', '78901-234', 'Rua Amazonas', 107, 'Apto 301', 'Centro', 'Porto Alegre', 'RS'),
('Rafael Duarte', '554433221', '554.433.221-11', 'rafael.duarte@example.com', '8888-8888', '2222-2222', '89012-345', 'Rua Paraná', 108, '', 'Centro', 'Salvador', 'BA'),
('Larissa Melo', '667788990', '667.788.990-00', 'larissa.melo@example.com', '9999-9999', '1111-1111', '90123-456', 'Rua Bahia', 109, 'Bloco C', 'Zona Oeste', 'Brasília', 'DF'),
('Thiago Martins', '445566778', '445.566.778-99', 'thiago.martins@example.com', '1010-1010', '2020-2020', '01234-567', 'Avenida Goiás', 110, '', 'Centro', 'Goiânia', 'GO');


/* Alimentando a tabela de Fornecedor */

INSERT INTO tb_suppliers (name, cnpj, email, phone, mobile, zip_code, address, number, complement, district, city, state) 
VALUES
    ('Fornecedor Alfa', '12345678000101', 'alfa@empresa.com', '1134567890', '11987654321', '01001000', 'Rua A', 100, 'Sala 10', 'Centro', 'São Paulo', 'SP'),
    ('Fornecedor Beta', '98765432000109', 'beta@empresa.com', '1145678901', '11976543210', '02002000', 'Avenida B', 200, 'Andar 2', 'Jardim', 'Rio de Janeiro', 'RJ'),
    ('Fornecedor Gama', '65432109000188', 'gama@empresa.com', '1123456789', '11965432109', '03003000', 'Praça C', 300, 'Loja 3', 'Centro', 'Belo Horizonte', 'MG'),
    ('Fornecedor Delta', '32109876000167', 'delta@empresa.com', '1156789012', '11954321098', '04004000', 'Alameda D', 400, 'Apto 4', 'Vila Nova', 'Curitiba', 'PR'),
    ('Fornecedor Épsilon', '78901234000145', 'epsilon@empresa.com', '1167890123', '11943210987', '05005000', 'Rua E', 500, 'Bloco 5', 'Zona Leste', 'Porto Alegre', 'RS'),
    ('Fornecedor Zeta', '45678901000123', 'zeta@empresa.com', '1178901234', '11932109876', '06006000', 'Avenida F', 600, 'Cobertura', 'Centro', 'Salvador', 'BA'),
    ('Fornecedor Eta', '89012345000134', 'eta@empresa.com', '1189012345', '11921098765', '07007000', 'Travessa G', 700, 'Galpão', 'Industrial', 'Fortaleza', 'CE'),
    ('Fornecedor Teta', '12345098000102', 'teta@empresa.com', '1190123456', '11910987654', '08008000', 'Rodovia H', 800, 'Km 12', 'Zona Rural', 'Manaus', 'AM');
    
    
/* Alimentando a tabela de Produto */    

INSERT INTO tb_products ( barcode, description, price, stock_qty, supplier_id) VALUES
('Produto A', '1234567890123', 10.99, 50, 2),
('Produto B', '9876543210987', 25.50, 30, 3),
('Produto C', '1122334455667', 5.75, 100, 2),
('Produto D', '7766554433221', 18.20, 15, 3),
('Produto E', '3344556677889', 12.40, 60, 3),
('Produto F', '9988776655443', 45.99, 25, 2),
('Produto G', '5544332211998', 3.99, 200, 2),
('Produto H', '2233445566778', 22.10, 10, 3),
('Produto I', '6677889900112', 7.50, 80, 3),
('Produto J', '1100223344556', 30.00, 40, 3);    