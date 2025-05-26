{{
    config(
        materialized = 'incremental',
        unique_key = 'id',
    )
}}

with source_data as (
    select
        id,
        produto,
        preco,
        quantidade,
        data_pedido,
        data_entrega
    from {{ ref('pedidos_detalhes') }}
    %{if is_incremental() %}
          where data_pedido > (select max(data_pedido) from {{ this }})
    {%endif %}
)
SELECT * FROM source_data