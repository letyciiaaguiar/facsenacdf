-- 1- Crie um banco de dados Vendas
-- CREATE SCHEMA vendas;
-- CREATE DATABASE vendas;
-- 2- Criar uma tabela produto
USE vendas;
CREATE TABLE Produto(
	Codigo_Produto INTEGER,
    Descricao_Produto VARCHAR(30) NOT NULL,
    Preco_Produto FLOAT
);

ALTER TABLE Produto
ADD constraint PK_Produto primary key (Codigo_Produto);

-- 3- Criar uma tabela nota_fiscal
USE vendas;
CREATE TABLE Nota_Fiscal(
	Numero_NF INTEGER,
    Data_NF Date,
    Valor_NF FLOAT
);

ALTER TABLE Nota_Fiscal
ADD constraint PK_Nota_Fiscal primary key (Numero_NF);

-- 4- Criar uma tabela itens
USE vendas;
CREATE TABLE Itens(
	Produto_Codigo_Produto INTEGER,
    Nota_Fiscal_Numero_NF integer,
    Num_Item integer,
    Qtde_Item integer    
);

USE vendas;
ALTER TABLE Itens
ADD constraint PK_itens primary key (Produto_Codigo_Produto,Nota_Fiscal_Numero_NF);


-- 5- alterar o campo descricao_produto da tabela produto para o tipo Varchar(50)
USE vendas;
ALTER TABLE Produto modify column Descricao_Produto VARCHAR(50);

-- 6- Alterar a tabela nota_fiscal, adicionar o campo ICMS do tipo float depois do campo Numero_NF
USE vendas;
ALTER TABLE Nota_Fiscal
ADD column ICMS float after Numero_NF;
-- 7- Alterar a tabela Produto, adicionando o campo Peso, do tipo Float
USE vendas;
ALTER TABLE Produto
Add column PESO float;
-- 8- Fazer com que a chave primaria da tabela itens deixe de ser composta por codigo do produto mais numero da nota fiscal passe a ser Num_item
USE vendas;
ALTER TABLE itens
drop primary key;
alter table Itens
Add constraint PK_Itens Primary Key (Num_Item);
-- 9- apresentar a estrutura da tabela Produto
USE vendas;
SELECT * FROM Produto; 
-- 10- apresentar a estrutura da tabela Nota_Fiscal
USE vendas ;
SELECT*FROM Nota_Fiscal;

-- 11- Alterar o nome do campo Valor_NF da tabela Nota_fiscal para ValorTotal_NF
USE vendas;
alter table Nota_Fiscal
rename column Valor_NF TO ValorTotal_NF;
-- 12- Remover o campo Data_NF da tabela Nota_fiscal
USE vendas;
alter table Nota_Fiscal 
drop column Data_NF;

-- 13- Remover a tabela Itens do modelo de dados
USE vendas;
drop table Itens;

-- 14- Alterar o nome da tabela Nota_fiscal para Venda
use vendas;
rename table Nota_Fiscal to Venda;