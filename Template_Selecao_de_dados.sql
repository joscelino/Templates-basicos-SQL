SELECT * FROM pedidos

-- Retorna maior e menor valor
SET SESSION group_concat_max_len = 10485760;
select min(hora_pedido), max(hora_pedido) from pedidos;

-- Retorna valores distintos
select distinct(valor_total) from pedidos

-- Contando numero de tickets de mesmo valor
select count(*), (valor_total) from pedidos group by valor_total

-- Verificando os valores das faixas dos valores
select valor_total, GetFaixaValor(valor_total) from pedidos

-- Numero de tickets por faixa
select count(valor_total), GetFaixaValor(valor_total) from pedidos group by GetFaixaValor(valor_total)

select min(tempo), max(tempo) from pedidos;

select minute(tempo) from pedidos

select tempo, GetFaixaTempo(minute(tempo)) from pedidos




