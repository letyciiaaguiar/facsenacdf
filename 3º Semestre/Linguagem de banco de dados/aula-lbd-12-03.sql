use aula3;

create table duplicata(
	Nome CHAR(40),
    Numero INTEGER NOT NULL,
    Valor DECIMAL(10,2),
    Vencimento DATE,
    Banco CHAR(10),
    PRIMARY KEY(Numero)
)


	USE aula3;
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) VALUES
 ('abc papelaria', 100100, 5000.00, '2017/01/20', 'itau'),
('livraria fernandes', 100110, 2500.00, '2017/01/22', 'itau'),
('livraria fernandes', 100120, 1500.00, '2016/10/15', 'bradesco'),
('abc papelaria', 100130, 8000.00, '2016/10/15', 'santander');

1. Listar nome,vencimento e valor de cada duplicata da tabela.

2. Apresentar o número das duplicatas depositadas no banco Itaú

3. Apresentar o número de duplicatas depositadas no banco Itaú
4. Quais são as duplicatas (número, vencimento, valor e nome) que vencem no ano de 2017.
5. Apresentar as duplicatas (número, vencimento, valor e nome) que não estão depositadas nos bancos Itaú e
Santander.
6. Quanto é o valor da divida o cliente PAPELARIA SILVA, e quais são as duplicatas?
7. Retirar da tabela a duplicata 770710 do cliente LIVRARIA FERNANDES, por ter sido devidamente quitada.
8. Apresentar uma listagem em ordem alfabética por nome do cliente de todos os campos da tabela.
9. Apresentar uma listagem em ordem de data de vencimento com o nome do cliente, banco, valor e vencimento.
10. As duplicatas do Banco do Brasil foram transferidas para o Santander. Proceder o ajuste dos registros.
11. Quais são os clientes que possuem suas duplicatas depositadas no Banco Bradesco?
12. Qual é a previsão de recebimento no período de 01/01/2016 até 31/12/2016?
13. Quanto a empresa tem para receber no período de 01/08/2016 até 30/08/2016?
14. Quais foram os itens adquiridos pelo cliente ABC PAPELARIA?
15. Acrescentar uma multa de 15% para todos os títulos que se encontram vencidos no período de 01/01/2016 até
31/12/2016.
16. Acrescentar uma multa de 5% para todos os títulos vencidos entre 01/01/2017 e 31/05/2017 que sejam do
cliente LER E SABER.
17. Qual é a média aritmética dos valores das duplicatas do ano de 2016?
18. Exiba as duplicatas e nome dos respectivos clientes que possuem duplicatas com valor superior a 10000,00?
19. Qual o valor total das duplicatas lançadas para o banco Santander?
20. Quais são os clientes que possuem suas duplicatas depositadas nos Bancos Bradesco ou Itaú?