SELECT
    *
FROM vendas
WHERE data_pedido = {{var('data_minima', '2023-01-01')}}


-- -- {{#######################

{{ 
    config(
        schema = var('schema', 'desenvolvimento')
    )
}}