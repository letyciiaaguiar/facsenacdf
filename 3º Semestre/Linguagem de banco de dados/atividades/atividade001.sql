-- Criação das tabelas
create table rh.Departamento(
    Cod integer,
    Nome varchar(255) not null,
    Endereco varchar(500),
    Orcamento decimal,
    GCPF char(11),
    Inicio Date,
    Primary Key (Cod)
);


alter table rh.Departamento 
add foreign key (GCPF) references rh.Empregado(CPF);


create table rh.Empregado(
    CPF char(11),
    Nome varchar(255) not null,
    Sexo char(1),
    Salario decimal,
    Depto integer not null,
    primary Key (CPF)
);

alter table rh.Empregado add foreign key (Depto) references rh.Departamento(Cod);

create table rh.Projeto (
    Cod integer,
    Nome varchar(255) not null,
    Endereco varchar(500),
    Orcamento decimal,
    Depto integer not null,
    primary key (Cod)
);

alter table rh.Projeto add foreign key (Depto) references rh.Departamento(Cod);

create table rh.Dependente(
    ECPF char(11),
    Nome varchar(255) not null,
    Parentesto varchar(150),
    Sexo char(1),
    primary key (ECPF,Nome),
    foreign key (ECPF) references rh.Empregado(CPF)
);

create table rh.Participa (
    Empregado char(11),
    Projeto integer,
    Horas Time,
    primary key (Empregado,Projeto),
    foreign key (Empregado) references rh.Empregado(CPF),
    foreign key (Projeto) references rh.Projeto(Cod)
);

-- Massas de dados


-- Dados para Departamento
INSERT INTO rh.Departamento (Cod, Nome, Endereco, Orcamento, GCPF, Inicio)
VALUES
(1, 'Departamento de TI', 'Av. Tecnológica, 123', 500000.00, 12345678901, '2015-06-01'),
(2, 'Departamento de RH', 'Rua dos Recursos, 456', 300000.00, 23456789012, '2016-08-15'),
(3, 'Departamento de Marketing', 'Av. Comercial, 789', 200000.00, 34567890123, '2018-05-23');



-- Dados para Empregado
INSERT INTO rh.Empregado (CPF, Nome, Sexo, Salario, Depto)
VALUES
('12345678901', 'Carlos Silva', 'M', 4500.00, 1),
('23456789012', 'Ana Pereira', 'F', 3500.00, 2),
('34567890123', 'Luiz Costa', 'M', 5500.00, 3),
('45678901234', 'Julia Souza', 'F', 3800.00, 1),
('56789012345', 'Marcos Oliveira', 'M', 5200.00, 2);

-- Dados para Projeto
INSERT INTO rh.Projeto (Cod, Nome, Endereco, Orcamento, Depto)
VALUES
(1, 'Projeto de Automação', 'Rua Inovação, 101', 150000.00, 1),
(2, 'Projeto de Recrutamento', 'Rua Recursos Humanos, 202', 100000.00, 2),
(3, 'Projeto de Lançamento de Produto', 'Av. Comercial, 303', 120000.00, 3);

-- Dados para Dependente
INSERT INTO rh.Dependente (ECPF, Nome, Parentesto, Sexo)
VALUES
('12345678901', 'Pedro Silva', 'Filho', 'M'),
('23456789012', 'Maria Pereira', 'Filha', 'F'),
('34567890123', 'Lucas Costa', 'Filho', 'M'),
('45678901234', 'Beatriz Souza', 'Filha', 'F'),
('56789012345', 'Felipe Oliveira', 'Filho', 'M');

-- Dados para Participa
INSERT INTO rh.Participa (Empregado, Projeto, Horas)
VALUES
('12345678901', 1, '08:00'),
('23456789012', 2, '06:00'),
('34567890123', 3, '07:00'),
('45678901234', 1, '05:30'),
('56789012345', 2, '06:30');

--1. Qual é o nome e CPF de cada empregado?
--select Nome as  "Nome", CPF as "CPF" from rh.Empregado;
-- 2. Qual é o nome e valor do orçamento de cada departamento?
select Nome as "Nome", Orcamento as "Orcamento" from rh.Departamento;
-- 3. Qual é o nome e salário das mulheres que ganham mais de R$ 4200,00?
select Nome as "Nome", Salario as "Salário"
from rh.Empregado
where Sexo = 'F' and Salario > 4200.00;
-- 4. Qual é o nome de cada empregado e de sua esposa ou marido?
select e.Nome AS "Empregado", d.Nome as "Filho(a)"
from rh.Empregado e
join rh.Dependente d on e.CPF = d.CPF_Empregado
where d.Parentesco in ('Filha', 'Filho');

-- 5. Qual o nome de cada empregado e do departamento onde trabalha
select e.Nome as "Empregado", d.Nome as "Departamento"
from rh.Empregado e
join rh.Departamento d on e.Numero_Dep = d.Numero;

-- 6. Qual o nome de cada projeto e do departamento que o controla?
select p.Nome as "Projeto", d.Nome as "Departamento"
from rh.Projeto p
join rh.Departamento d on p.Numero_Dep = d.Numero;


-- 7. Qual o nome de cada empregado, seus dependentes e parentesco?
select e.Nome as "Empregado", d.Nome as "Dependente", d.Parentesco
from rh.Empregado e
from rh.Dependente d on e.CPF = d.CPF_Empregado;

-- 8. Quais os nomes das esposas dos empregados que trabalham no projeto de automação?
select d.Nome as "Esposa"
from rh.Dependente d
join rh.Empregado e on d.CPF_Empregado = e.CPF
join rh.Trabalha_em t on e.CPF = t.CPF_Empregado
join rh.Projeto p on t.Numero_Proj = p.Numero
where d.Parentesco = 'Esposa' and p.Nome = 'Automação';

