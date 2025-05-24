{{
    config(
        materialized="ephemeral",
        tags=['vendas']
    )
}}

WITH pedidos AS (
    SELECT * FROM {{ ref('stg_pedidos') }}
)

, clientes AS (
    SELECT * FROM {{ ref('stg_clientes') }}
)

, itens_pedidos AS (
    SELECT * FROM {{ ref('stg_itens_pedidos') }}
)

, produtos AS (
    SELECT * FROM {{ ref('stg_produtos') }}
)

, pagamentos AS (
    SELECT * FROM {{ ref('stg_pagamentos') }}
)

, categorias AS (
    SELECT * FROM {{ ref('stg_categorias') }}
)

, joins AS (
    SELECT 
        p.id as pedido_id,
        p.data_pedido,
        c.nome as cliente,
        c.email as email_cliente,
        pr.nome as produto,
        cat.nome AS categoria,
        ip.quantidade,
        ip.preco_unitario,
        pa.valor as valor_pagamento,
        pa.metodo as metodo_pagamento,
        pa.status as status_pagamento,
        pa.data_pagamento
    FROM pedidos AS p
    JOIN clientes AS c ON p.cliente_id = c.id
    JOIN itens_pedidos AS ip ON p.id = ip.pedido_id
    JOIN produtos AS pr ON ip.produto_id = pr.id
    JOIN pagamentos AS pa ON p.id = pa.pedido_id
    JOIN categorias AS cat ON pr.categoria_id = cat.id
)

SELECT * FROM joins
