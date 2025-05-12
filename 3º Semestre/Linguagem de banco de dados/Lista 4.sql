
CREATE SCHEMA escola;

CREATE TABLE aluno(
ra VARCHAR(6),
nome VARCHAR(10),
nascimento DATE,
PRIMARY KEY (ra));

USE escola;
INSERT INTO aluno(ra, nome, nascimento)
VALUES('123456', 'Ana', '1972/01/10');
INSERT INTO aluno(ra, nome, nascimento)
VALUES('123457', 'Bianca', '1973/02/11');
INSERT INTO aluno(ra, nome, nascimento)
VALUES('123458', 'Carla', '1987/12/12');
INSERT INTO aluno(ra, nome, nascimento)
VALUES('123459', 'Danilo', '1990/10/02');
INSERT INTO aluno(ra, nome, nascimento)
VALUES('123460', 'Eliana', '1987/01/01');

CREATE TABLE curso(
codigo VARCHAR(1),
nome VARCHAR(10),
ch VARCHAR(3),
inicio DATE,
termino DATE,
PRIMARY KEY(codigo));

USE escola;
INSERT INTO curso(codigo, nome, ch, inicio, termino)
VALUES('1', 'java', '360', '2007/12/01', '2008/10/10');
INSERT INTO curso(codigo, nome, ch, inicio, termino)
VALUES('2', 'auto cad', '60', '2008/01/10', '2008/05/10');
INSERT INTO curso(codigo, nome, ch, inicio, termino)
VALUES('3', 'php', '90', '2008/02/15', '2008/07/10');
INSERT INTO curso(codigo, nome, ch, inicio, termino)
VALUES('4', 'redes', '60', '2008/01/20', '2008/03/20');

CREATE TABLE matricula(
curso VARCHAR(1),
ra VARCHAR(6),
data_matricula DATE,
valor DECIMAL (5,2));

USE escola;
INSERT INTO matricula(curso, ra, data_matricula, valor)
VALUES('1', '123456', '2007/09/10', 100);
INSERT INTO matricula(curso, ra, data_matricula, valor)
VALUES('3', '123456', '2007/10/01', 60);
INSERT INTO matricula(curso, ra, data_matricula, valor)
VALUES('1', '123457', '2007/09/01', 100);
INSERT INTO matricula(curso, ra, data_matricula, valor)
VALUES('2', '123458', '2008/01/11', 50);
INSERT INTO matricula(curso, ra, data_matricula, valor)
VALUES('2', '123459', '2007/07/20', 50);
INSERT INTO matricula(curso, ra, data_matricula, valor)
VALUES('1', '123460', '2007/08/10', 80);

SELECT * FROM matricula;


-- 1. Listar RA, nome do aluno e nome do curso em que o aluno está matriculado.
SELECT m.ra, a.nome AS nome_aluno, c.nome AS nome_curso
FROM matricula m
JOIN aluno a ON m.ra = a.ra
JOIN curso c ON m.curso = c.codigo;

-- 2. Listar RA, nome do aluno e nome do curso em que o aluno está matriculado, ordenado por nome do curso.
SELECT m.ra, a.nome AS nome_aluno, c.nome AS nome_curso
FROM matricula m
JOIN aluno a ON m.ra = a.ra
JOIN curso c ON m.curso = c.codigo
ORDER BY c.nome;

-- 3. Exibir o nome de cada curso que teve matrículas e quantos alunos têm matriculados em cada um deles.
SELECT c.nome AS nome_curso, COUNT(m.ra) AS numero_alunos
FROM curso c
JOIN matricula m ON c.codigo = m.curso
GROUP BY c.nome;

-- 4. Exibir o nome de todos os cursos e quantos alunos têm matriculados em cada um.
SELECT c.nome AS nome_curso, 
       COUNT(m.ra) AS numero_alunos
FROM curso c
LEFT JOIN matricula m ON c.codigo = m.curso
GROUP BY c.nome;

-- 5. Exibir o nome do curso e o valor total recebido das matrículas em cada um deles.
SELECT c.nome AS nome_curso, 
       SUM(m.valor) AS total_recebido
FROM curso c
JOIN matricula m ON c.codigo = m.curso
GROUP BY c.nome;

-- 6. Exibir o nome do curso, o valor total recebido das matrículas e o total arrecadado em matrículas pela escola.
SELECT c.nome AS nome_curso, 
       SUM(m.valor) AS total_recebido,
       (SELECT SUM(valor) FROM matricula) AS total_arrecadado
FROM curso c
JOIN matricula m ON c.codigo = m.curso
GROUP BY c.nome;

-- 7. Exibir o valor médio pago em matrícula na escola.
SELECT ROUND(AVG(valor), 2) AS valor_medio
FROM matricula;

-- 8. Exibir o nome e o valor médio de matrícula de cada curso.
SELECT c.nome AS nome_curso, 
       ROUND(AVG(m.valor), 2) AS valor_medio
FROM curso c
LEFT JOIN matricula m ON c.codigo = m.curso
GROUP BY c.nome;

-- 9. Exibir nome dos cursos que não são VIP (ou seja, que tenham pelo menos 2 alunos).
SELECT c.nome AS nome_curso, COUNT(m.ra) AS numero_alunos
FROM curso c
JOIN matricula m ON c.codigo = m.curso
GROUP BY c.nome
HAVING COUNT(m.ra) >= 2;

-- 10. Exibir o nome dos cursos com a mesma carga horária do curso de Auto Cad.
SELECT nome 
FROM curso
WHERE ch = (SELECT ch FROM curso WHERE nome = 'auto cad');

-- 11. Exibir nome de todos os alunos que fazem aniversário no mesmo mês que Ana.
SELECT nome 
FROM aluno
WHERE MONTH(nascimento) = (SELECT MONTH(nascimento) FROM aluno WHERE nome = 'Ana');

-- 12. Exibir todos os cursos com início em janeiro de 2008 que tenham alunos matriculados.
SELECT DISTINCT c.nome 
FROM curso c
JOIN matricula m ON c.codigo = m.curso
WHERE YEAR(c.inicio) = 2008 AND MONTH(c.inicio) = 1;

-- 13. Exibir todos os cursos com início em janeiro de 2008, independente de ter alunos matriculados ou não.
SELECT nome 
FROM curso
WHERE YEAR(inicio) = 2008 AND MONTH(inicio) = 1;

-- 14. Exibir nome do aluno e do curso para alunos que se matricularam antes da data de início do curso.
SELECT a.nome AS nome_aluno, c.nome AS nome_curso
FROM matricula m
JOIN aluno a ON m.ra = a.ra
JOIN curso c ON m.curso = c.codigo
WHERE m.data_matricula < c.inicio;

-- 15. Listar os cursos que ainda não iniciaram.
SELECT nome 
FROM curso
WHERE inicio > CURDATE();

-- 16. Listar os alunos que fizeram matrícula de sábado.
SELECT a.nome AS nome_aluno, m.data_matricula
FROM matricula m
JOIN aluno a ON m.ra = a.ra
WHERE WEEKDAY(m.data_matricula) = 5; -- Sábado é representado por 5

-- 17. Exibir nome do aluno e valor a restituir (50% do valor pago) para matrículas feitas no sábado.
SELECT a.nome AS nome_aluno, 
       ROUND(m.valor * 0.5, 2) AS valor_restituir
FROM matricula m
JOIN aluno a ON m.ra = a.ra
WHERE WEEKDAY(m.data_matricula) = 5;

-- 18. Exibir nome e idade dos alunos.
SELECT nome, 
       TIMESTAMPDIFF(YEAR, nascimento, CURDATE()) AS idade
FROM aluno;

-- 19. Listar o nome dos cursos e a duração em meses de cada um.
SELECT nome AS nome_curso,
       PERIOD_DIFF(DATE_FORMAT(termino, '%Y%m'), DATE_FORMAT(inicio, '%Y%m')) AS duracao_meses
FROM curso;


PERIOD_DIFF - Retorna a diferença, em meses, entre dois períodos informados. O
período deve estar no formato AAAAMM ou AAMM
Sintaxe: PERIOD_DIFF(periodo1, periodo2)
Exemplo 01: Diferença entre o ano de 2010, mês 02 e o ano 2009, mês 07
mysql> SELECT PERIOD_DIFF(201002, 200907);
resposta: 7