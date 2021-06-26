-- Join entre bancos e agências
SELECT b.numero, b.nome, ag.numero, ag.nome
FROM banco as b
JOIN agencia as ag ON ag.banco_numero = b.numero;

-- Contagem de quantos bancos possuem agência
SELECT COUNT(DISTINCT b.numero)
FROM banco as b
JOIN agencia as ag ON ag.banco_numero = b.numero;

-- Left Join (traz todos registro do Join acima mais os bancos que não possuem agência)
SELECT b.numero, b.nome, ag.numero, ag.nome
FROM banco as b
LEFT JOIN agencia as ag ON ag.banco_numero = b.numero;

-- Right Join 
SELECT ag.numero, ag.nome, b.numero, b.nome 
FROM agencia as ag
RIGHT JOIN banco as b ON b.numero = ag.banco_numero;

-- usando Joins entre tabelas
SELECT b.nome,
       ag.nome,
       cc.numero,
       cc.digito,
       cliente.nome
FROM banco AS b
JOIN agencia AS ag 
	ON ag.banco_numero = b.numero
JOIN conta_corrente AS cc
	ON cc.banco_numero = b.numero
  AND cc.agencia_numero = ag.numero
JOIN cliente
	ON cliente.numero = cc.cliente_numero;
