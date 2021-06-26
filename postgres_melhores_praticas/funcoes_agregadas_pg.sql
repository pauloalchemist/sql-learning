
-- Alguma funções agregadas do Postgres

-- média de valores
select avg(valor) from cliente_transacoes;

-- contando número de clientes ativos
select count(numero) as clientes_ativos 
from cliente as c
where c.ativo is true;

select count(numero), email
from cliente as c
where c.email ilike '%gmail.com'
group by c.email;

SELECT min(numero)
FROM cliente;

SELECT max(numero)
FROM cliente;

-- obtendo o valor máximo
SELECT max(ct.valor)
FROM cliente_transacoes as ct;

-- obtendo valor mínimo
SELECT min(ct.valor)
FROM cliente_transacoes as ct;

-- obtendo valor máximo por tipo de transação
SELECT MAX(ct.valor), ct.tipo_transacao_id
FROM cliente_transacoes as ct
GROUP BY ct.tipo_transacao_id;

-- obtendo valor médio e ordemadp por tipo de transação 
SELECT AVG(ct.valor), ct.tipo_transacao_id
FROM cliente_transacoes as ct
GROUP BY ct.tipo_transacao_id
ORDER BY ct.tipo_transacao_id;

-- contando o número de transações por tipo de transação
SELECT COUNT(id), ct.tipo_transacao_id
FROM cliente_transacoes as ct
GROUP BY ct.tipo_transacao_id;

-- contando o número de transações que sejam maior que 140 por tipo de transação
SELECT COUNT(id), ct.tipo_transacao_id
FROM cliente_transacoes as ct
GROUP BY ct.tipo_transacao_id
HAVING COUNT(id) > 150;

-- somando os valores das transações
SELECT SUM(valor)
FROM cliente_transacoes;


-- somando os valores das transações e agrupando por tipo
SELECT SUM(valor), ct.tipo_transacao_id
FROM cliente_transacoes as ct
GROUP BY ct.tipo_transacao_id
ORDER BY ct.tipo_transacao_id;
