-- Uma forma de consultar o tempo de validade de um produto por faixa de período.
select n_prod, date_valid, (date_valid - now()::date) as tempo_validade_em_dias
  from product
    where (date_valid - now()::date) <= 180
      and (date_valid - now()::date) > 90;
