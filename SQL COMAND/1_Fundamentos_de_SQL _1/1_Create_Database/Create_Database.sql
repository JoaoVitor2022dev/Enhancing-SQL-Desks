-- Criando Banco de dados  
CREATE DATABASE estudo_sql;

-- Entrando no banco 
USE estudo_sql; 

-- Criando tabelas de banco de dados 
/***** TABLE CLIENTS *****/ 

CREATE TABLE tb_clients ( 

  id INT AUTO_INCREMENT PRIMARY KEY, 

  name VARCHAR(100), 

  rg VARCHAR(30), 

  cpf VARCHAR(20), 

  email VARCHAR(200), 

  phone VARCHAR(30), 

  mobile VARCHAR(30), 

  zip_code VARCHAR(100), 

  address VARCHAR(255), 

  number INT, 

  complement VARCHAR(200), 

  district VARCHAR(100), 

  city VARCHAR(100), 

  state VARCHAR(2) 

); 

/***** TABLE SUPPLIERS *****/ 

CREATE TABLE tb_suppliers ( 

  id INT AUTO_INCREMENT PRIMARY KEY, 

  name VARCHAR(100), 

  cnpj VARCHAR(100), 

  email VARCHAR(200), 

  phone VARCHAR(30), 

  mobile VARCHAR(30), 

  zip_code VARCHAR(100), 

  address VARCHAR(255), 

  number INT, 

  complement VARCHAR(200), 

  district VARCHAR(100), 

  city VARCHAR(100), 

  state VARCHAR(2) 

); 

/***** TABLE EMPLOYEES *****/ 

CREATE TABLE tb_employees ( 

  id INT AUTO_INCREMENT PRIMARY KEY, 

  name VARCHAR(100), 

  rg VARCHAR(30), 

  cpf VARCHAR(20), 

  email VARCHAR(200), 

  password VARCHAR(10), 

  role VARCHAR(100), 

  access_level VARCHAR(50), 

  phone VARCHAR(30), 

  mobile VARCHAR(30), 

  zip_code VARCHAR(100), 
  address VARCHAR(255), 
  number INT, 
  complement VARCHAR(200), 
  district VARCHAR(100), 
  city VARCHAR(100), 
  state VARCHAR(2) 
); 

/***** TABLE PRODUCTS *****/ 

CREATE TABLE tb_products ( 

  id INT AUTO_INCREMENT PRIMARY KEY, 

  description VARCHAR(100), 

  barcode VARCHAR(100), 

  price DECIMAL(10,2), 

  stock_qty INT, 

  supplier_id INT, 
  FOREIGN KEY (supplier_id) REFERENCES tb_suppliers(id) 
); 

/***** TABLE SALES *****/ 

CREATE TABLE tb_sales ( 

  id INT AUTO_INCREMENT PRIMARY KEY, 

  client_id INT, 

  sale_date DATETIME, 

  total_sale DECIMAL(10,2), 

  notes TEXT, 
  FOREIGN KEY (client_id) REFERENCES tb_clients(id) 

); 

/***** TABLE SALES_ITEMS *****/ 

CREATE TABLE tb_sales_items ( 

  id INT AUTO_INCREMENT PRIMARY KEY, 

  sale_id INT, 

  product_id INT, 

  quantity INT, 

  subtotal DECIMAL(10,2), 
  
  FOREIGN KEY (sale_id) REFERENCES tb_sales(id), 
  FOREIGN KEY (product_id) REFERENCES tb_products(id) 
); 
        
        
