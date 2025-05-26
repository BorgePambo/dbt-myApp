{ %snapshot vendas_snapshot % }

    {{ 
        config(
            target_schema='snapshots',
            target_database='analytics',
            unique_key='id',
            strategy='check',
            check_cols=all,
        )
    }}
    SELECT
        pedido_id,
        produto_id,
        Quantidade,
        Preco_unitario,
    FROM {{ source('itens_pedidos') }}
{% endsnapshot %}