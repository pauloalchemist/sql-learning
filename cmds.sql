-- Uma forma de consultar o tempo de validade de um produto por faixa de período.
select n_prod, date_valid, (date_valid - now()::date) as tempo_validade_em_dias
  from product
    where (date_valid - now()::date) <= 180
      and (date_valid - now()::date) > 90;

-- Aplicando porcentagem em um tabela. No caso abaixo, obtendo 10% do valor original.
select id, make, model, price, round(price *.10, 2) from car;

-- Diminuindo 10% do valor original
select id, make, model, price, round(price - (price *.10), 2) from car;

-- Visualizar tabelas e qual o seu schema
SELECT *
FROM pg_catalog.pg_tables
WHERE schemaname != 'information_schema'
AND schemaname != 'pg_catalog' ;
