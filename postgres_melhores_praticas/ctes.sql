WITH tbl_tmp_banco AS (
	SELECT numero, nome
    FROM banco
)
SELECT numero, nome
FROM tbl_tmp_banco;

WITH cliente_e_transacoes AS (
	SELECT cliente.nome AS cliente_nome,
  		   tipo_transacao.nome AS tipo_transacao_nome,
  		   cliente_transacoes.valor AS tipo_transacao_valor
    FROM cliente_transacoes
  	JOIN cliente ON cliente.numero = cliente_transacoes.cliente_numero
  	JOIN tipo_transacao ON tipo_transacao.id = cliente_transacoes.tipo_transacao_id
)
SELECT cliente_nome, tipo_transacao_nome, tipo_transacao_valor
FROM cliente_e_transacoes;

WITH cliente_e_transacoes AS (
	SELECT cliente.nome AS cliente_nome,
  		   tipo_transacao.nome AS tipo_transacao_nome,
  		   cliente_transacoes.valor AS tipo_transacao_valor,
  		   banco.nome AS banco_nome		
    FROM cliente_transacoes
  	JOIN cliente ON cliente.numero = cliente_transacoes.cliente_numero
  	JOIN tipo_transacao ON tipo_transacao.id = cliente_transacoes.tipo_transacao_id
  	JOIN banco ON banco.numero = cliente_transacoes.banco_numero AND banco.nome ILIKE '%Banco do Brasil%'
)
SELECT cliente_nome, tipo_transacao_nome, tipo_transacao_valor, banco_nome
FROM cliente_e_transacoes;
