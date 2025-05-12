CREATE SCHEMA longa_vida;

USE longa_vida;
CREATE TABLE plano(
Numero CHAR(2) NOT NULL,
Descricao CHAR(30),
Valor DECIMAL(10,2),
PRIMARY KEY (Numero));

USE longa_vida;
INSERT INTO plano(Numero, Descricao, Valor)
VALUES('B1', 'BASICO 1', 200);
INSERT INTO plano(Numero, Descricao, Valor)
VALUES('B2', 'BASICO 2', 150);
INSERT INTO plano(Numero, Descricao, Valor)
VALUES('B3', 'BASICO 3', 100);
INSERT INTO plano(Numero, Descricao, Valor)
VALUES('E1', 'EXECUTIVO 1', 350);
INSERT INTO plano(Numero, Descricao, Valor)
VALUES('E2', 'EXECUTIVO 2', 300);
INSERT INTO plano(Numero, Descricao, Valor)
VALUES('E3', 'EXECUTIVO 3', 250);
INSERT INTO plano(Numero, Descricao, Valor)
VALUES('M1', 'MASTER 1', 500);
INSERT INTO plano(Numero, Descricao, Valor)
VALUES('M2', 'MASTER 2', 450);
INSERT INTO plano(Numero, Descricao, Valor)
VALUES('M3', 'MASTER 3', 500);

CREATE TABLE associado(Plano CHAR(2) NOT NULL,
Nome CHAR(40) NOT NULL,
Endereço CHAR(35),
Cidade CHAR(20),
Estado CHAR(2),
CEP CHAR(9),
PRIMARY KEY(Nome)
);

USE longa_vida;
INSERT INTO associado(Plano, Nome, Endereço, Cidade, Estado, CEP)
VALUE ('B1', 'JOSE ANTONIO DA SILVA', 'R. FELIPE DO AMARAL, 3450', 'COTIA', 'SP', '06700-000');
INSERT INTO associado(Plano, Nome, Endereço, Cidade, Estado, CEP)
VALUE ('B1', 'MARIA DA SILVA SOBRINHO', 'R. FELIPE DE JESUS, 1245', 'DIADEMA', 'SP', '09960-170');
INSERT INTO associado(Plano, Nome, Endereço, Cidade, Estado, CEP)
VALUE ('B1', 'PEDRO JOSE DE OLIVEIRA', 'R. AGRIPINO DIAS, 155', 'COTIA', 'SP', '06700-011');
INSERT INTO associado(Plano, Nome, Endereço, Cidade, Estado, CEP)
VALUE ('B2', 'ANTONIA DE FERNANDES', 'R. PE EZEQUIEL, 567', 'DIADEMA', 'SP', '09960-175');
INSERT INTO associado(Plano, Nome, Endereço, Cidade, Estado, CEP)
VALUE ('B2', 'ANTONIO DO PRADO', 'R. INDIO TABAJARA, 55', 'GUARULHOS', 'SP', '07132-999');
INSERT INTO associado(Plano, Nome, Endereço, Cidade, Estado, CEP)
VALUE ('B3', 'WILSON SENA', 'R. ARAPIRACA, 1234', 'OSASCO', 'SP', '06293-001');
INSERT INTO associado(Plano, Nome, Endereço, Cidade, Estado, CEP)
VALUE ('B3', 'SILVIA DE ABREU', 'R. DR JOAO DA SILVA, 5', 'SANTO ANDRE', 'SP', '09172-112');
INSERT INTO associado(Plano, Nome, Endereço, Cidade, Estado, CEP)
VALUE ('E1', 'ODETE DA CONCEICAO', 'R. VOLUNTARIOS DA PATRIA, 10', 'SAO PAULO', 'SP', '02010-550');
INSERT INTO associado(Plano, Nome, Endereço, Cidade, Estado, CEP)
VALUE ('E2', 'JOAO CARLOS MACEDO', 'R. VISTA ALEGRE, 500', 'SAO PAULO', 'SP', '04343-990');
INSERT INTO associado(Plano, Nome, Endereço, Cidade, Estado, CEP)
VALUE ('E3', 'CONCEICAO DA SILVA', 'AV. VITORINO DO AMPARO, 11', 'MAUA', 'SP', '09312-998');
INSERT INTO associado(Plano, Nome, Endereço, Cidade, Estado, CEP)
VALUE ('E3', 'PAULO BRUNO AMARAL', 'R. ARGENZIO BRILHANTE, 88', 'BARUERI', 'SP', '06460-990');
INSERT INTO associado(Plano, Nome, Endereço, Cidade, Estado, CEP)
VALUE ('E3', 'WALDENICE DE OLIVEIRA', 'R. OURO VELHO, 12', 'BARUERI', 'SP', '06460-998');

UPDATE associado
SET CEP = '06460-999'
WHERE Nome = 'PAULO BRUNO AMARAL';

INSERT INTO associado(Plano, Nome, Endereço, Cidade, Estado, CEP)
VALUE ('E3', 'MARCOS DO AMARAL', 'R. DO OUVIDOR, 67', 'GUARULHOS', 'SP', '07031-555');
INSERT INTO associado(Plano, Nome, Endereço, Cidade, Estado, CEP)
VALUE ('E3', 'MURILO DE SANTANA', 'R.PRATA DA CASA', 'BARUERI', 'SP', '06455-111');

UPDATE associado
SET Endereço = 'R. PRATA DA CASA'
WHERE Nome = 'MURILO DE SANTANA';

ALTER TABLE associado
RENAME COLUMN Endereço TO Endereco;

UPDATE associado
SET Plano = 'M1'
WHERE Nome = 'MURILO DE SANTANA';

INSERT INTO associado(Plano, Nome, Endereco, Cidade, Estado, CEP)
VALUE ('M1', 'LUIZA ONOFRE FREITAS', 'R. VICENTE DE ABREU, 55', 'SANTO ANDRE', 'SP', '09060-667');
INSERT INTO associado(Plano, Nome, Endereco, Cidade, Estado, CEP)
VALUE ('M2', 'MELISSA DE ALMEIDA', 'R. FERNANDO ANTONIO, 2345', 'SAO PAULO', 'SP', '04842-987');
INSERT INTO associado(Plano, Nome, Endereco, Cidade, Estado, CEP)
VALUE ('M2', 'JOAO INACIO DA CONCEICAO', 'R. PENELOPE CHARMOSA, 34', 'SUZANO', 'SP', '08670-888');
INSERT INTO associado(Plano, Nome, Endereco, Cidade, Estado, CEP)
VALUE ('B3', 'AUGUSTA DE ABREU', 'AV. RIO DA SERRA, 909', 'SANTO ANDRE', 'SP', '09061-333');
INSERT INTO associado(Plano, Nome, Endereco, Cidade, Estado, CEP)
VALUE ('B3', 'ILDA DE MELO DA CUNHA', 'AV. POR DO SOL, 546', 'SANTO ANDRE', 'SP', '09199-444');
INSERT INTO associado(Plano, Nome, Endereco, Cidade, Estado, CEP)
VALUE ('B3', 'MARCOS DA CUNHA', 'AV. PEDROSO DE MORAES, 546', 'SAO PAULO', 'SP', '04040-444');

SELECT * FROM associado;

-- 1. Quais campos das tabelas associado e plano devem ser util izados para efetuar o relacionamento entre as tabelas?
 -- R: O Campo Plano 
 
-- 2. Extrair uma relação geral de todos os associados e os planos que eles possuem.
use longa_vida;
select * from plano as p
inner join associado as a -- Junta o banco plano + associado e pega a intercessao ( oque tem em comum )
on a.Plano = p.Numero;

-- 3. Quantos associados possuem o plano B1?
select count(Plano) as QTDE_B1 from associado
where Plano = 'B1';

-- 4. Apresente uma relação com todos os nomes, planos e valores de todos os registros de associados.
select * from associado;
select associado.Nome, associado.Plano, concat('R$',Format(plano.valor,2)) as Valor from associado
left join plano
on associado.Plano = plano.numero;

-- 5. Quais são os associados que moram em COTIA ou em DIADEMA?
select * from associado
where Cidade = 'cotia' or Cidade = 'diadema';

-- 6. Apresente o nome, plano e valor dos associados que moram em BARUERI e possuem o plano M1.
select a.Nome,a.Plano,p.Valor from associado a 
left join plano p
on a.Plano = p.Numero
where a.Cidade = 'barueri' and a.plano = 'M1';

-- 7. Apresente uma relação com nome, plano e valor de todos os associados residente em são paulo
select a.Nome,a.Plano,concat('R$', Format(p.valor,2)) as Valor
from associado a
left join plano p
on a.Plano = p.Numero
where a.Cidade = 'sao paulo';

-- 8. Apresente uma relação completa de todos os campos de ambas as tabelas em que o associado possua SILVA no nome.
SELECT * FROM associado inner join plano
WHERE Nome like '%silva%';

-- 9. Devido ao aumento do índice IGPM, a empresa reajustou os valores dos planos básicos em 10%, dos planos
UPDATE plano
SET Valor = Valor * 1.10
WHERE Numero IN ('B1', 'B2', 'B3');

UPDATE plano
SET Valor = Valor * 1.12
WHERE Numero IN ('E1', 'E2', 'E3');

UPDATE plano
SET Valor = Valor * 1.06
WHERE Numero IN ('M1', 'M2', 'M3');


-- 10. O associado PEDRO JOSE DE OLIVEIRA alterou seu plano de B1 para E3. Faça a devida atualização.
UPDATE associado
SET Plano = 'E3'
WHERE Nome = 'PEDRO JOSE DE OLIVEIRA';

-- 11. Quantos associados possuem o plano E3?
SELECT COUNT(*) AS Quantidade_E3
FROM associado
WHERE Plano = 'E3';

-- 12.Liste o nome e o valor de todos os as
SELECT a.Nome, p.Valor
FROM associado a
JOIN plano p ON a.Plano = p.Numero;

-- 13. Quais são os associados que possuem plano do tipo EXECUTIVO, independentemente da categoria ser 1, 2 ou 3?
SELECT * FROM associado
WHERE Plano LIKE 'E%';

-- 14. Quais são os associados que possuem plano dos tipos Básico e Máster?
SELECT * FROM associado
WHERE Plano LIKE 'B%' OR Plano LIKE 'M%';

-- 15. A empresa fechou seu escritório na cidade de SANTO ANDRE e transferiu os cliente para um terceirizado. Remova escritório na cidade de SANTO ANDRE e transferiu os cliente para um terceirizado. Remova da tabela associados todos os registros existentes de associados da cidade de SANTO ANDREda tabela associados todos os registros existentes de associados da cidade de SANTO ANDRE
DELETE FROM associado
WHERE Cidade = 'SANTO ANDRE';
-- 16. Apresente o nome, plano e valor dos associados que moram em SÃO PAULO e possuem os planos M2 e M3. A possuem os planos M2 e M3. A listagem deve estar ordenada pelo campo nome.listagem deve estar ordenada pelo campo nome.
SELECT a.Nome, a.Plano, p.Valor
FROM associado a
JOIN plano p ON a.Plano = p.Numero
WHERE a.Cidade = 'SAO PAULO' AND a.Plano IN ('M2', 'M3')
ORDER BY a.Nome ASC;

-- 17. Apresente uma listagem completa de todos os campos de ambas as tabelas ordenados por tipo de plano.
SELECT * FROM associado a
JOIN plano p ON a.Plano = p.Numero
ORDER BY p.Numero;

-- 18. Faça uma relação geral de todos os associados e planos que eles possuem. A relação deve ser apresentada em ordem . A relação deve ser apresentada em ordem ascendente pelo campo tipo de plano e descendente pelo campo de identificação do nome do associado.ascendente pelo campo tipo de plano e descendente pelo campo de identificação do nome do associado. 19. Apresentar uma relação de todos os associados que não possuem o plano Máster.19. Apresentar uma relação de todos os associados que não possuem o plano Máster.
SELECT * FROM associado a
JOIN plano p ON a.Plano = p.Numero
ORDER BY a.Plano ASC, a.Nome DESC;

-- 20. Apresentar uma listagem em ordem crescente pelo campo nome do associado. Essa listagem deve ser formada pelos em ordem crescente pelo campo nome do associado. Essa listagem deve ser formada pelos campos Nome campos Nome da tabela associado e Descrição da tabela Planosda tabela associado e Descrição da tabela Planos
SELECT a.Nome, p.Descricao
FROM associado a
JOIN plano p ON a.Plano = p.Numero
ORDER BY a.Nome ASC;

-- 21.Apresentar uma listagem dos planos que estão situados na faixa de valores de 300 até 500
SELECT * FROM plano
WHERE Valor BETWEEN 300 AND 500;

-- 22. Apresentar uma relação contendo: nome,plano, descrição do plano e valor de todos os associados que tenham em uma relação contendo: nome,plano, descrição do plano e valor de todos os associados que tenham em seu nome, seja na posição que for, a seqüência AMARAL.seu nome, seja na posição que for, a seqüência AMARAL.
SELECT a.Nome, a.Plano, p.Descricao, p.Valor
FROM associado a
JOIN plano p ON a.Plano = p.Numero
WHERE a.Nome LIKE '%AMARAL%';
-- 23. Quais associados residem na cidade de DIADEMA?
SELECT * FROM associado
WHERE Cidade = 'DIADEMA';

-- 24. O plano do tipo MASTER teve um reajuste de 6%. Atualize na tabela planos os valores das categorias 1, 2 e 3.Atualize na tabela planos os valores das categorias 1, 2 e 3.
UPDATE plano
SET Valor = Valor * 1.06
WHERE Numero LIKE 'M%';
-- 25. Quais são os clientes cujo CEP é iniciado com os valores 09?
SELECT * FROM associado
WHERE CEP LIKE '09%';
