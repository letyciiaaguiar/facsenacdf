show databases;
create database cadastro;
use cadastro; -- Ativar tabela

create table usuarios(codigo int auto_increment primary key, -- auto increment enumera | codigo é inteiro autoincrementevel e chave primaria
nome char(30) not null,
senha char(10) not null,
email char(30),
cpf char(15) unique, -- Unique = vai deixar colocar só um cpf não pode repetir
date date);

insert into usuarios values(null, 'Letycia Aguiar','1234','letyciasaguiar@icloud.com','088.040.311-07','2005-06-17');

select*from usuarios; -- 

update usuarios set nome='Letycia Aguiar' where codigo='1';
delete from usuarios where codigo='1';