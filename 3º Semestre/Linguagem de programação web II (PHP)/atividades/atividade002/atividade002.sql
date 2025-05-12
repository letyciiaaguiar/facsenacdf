CREATE DATABASE atividade002;

USE atividade002;

CREATE TABLE usuarios (
id INT auto_increment PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
senha VARCHAR(8) NOT NULL
);

SELECT * FROM usuarios;
