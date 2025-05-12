show databases;
create database crud;
use cadastro;

create table usuarios(codigo int auto_increment primary key,
nome char(30) not null,
senha char(10) not null,
email char(30) not null,
cpf char(15) unique,
data date);

insert into usuarios values(null, 'Breno Nunes','1234','breno@gmail.com',"111.111.111-11","2000-02-10");

select * from usuarios;
update usuarios set nome= 'Breno Cesar';
delete from usuarios where codigo=1;