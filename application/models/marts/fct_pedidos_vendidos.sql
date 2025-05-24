{{
    config(
        tags = ['vendas']
    )
}}

with pedidos as (
    select * from {{ ref('int_itens_vendidos') }}
)

select * from pedidos
