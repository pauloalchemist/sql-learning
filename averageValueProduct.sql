SELECT
  p.cod_produto, p.nome,
  count(*) AS total_vendas,
  sum(i.valor) AS total_valor,
  avg(i.valor) AS media_valor
FROM
  produto AS p
  JOIN item_venda AS i ON p.cod_produto = i.cod_produto
GROUP BY
  p.cod_produto;
