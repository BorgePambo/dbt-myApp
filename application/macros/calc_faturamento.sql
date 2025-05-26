{%macro faturamento(valor_total, quantidade) %}
    faturamento = {{ valor_total }} * {{ quantidade }}
{endmacro%}

-- SELECT
--     pedido_id,
--     data_entrega,
--     valor_total,
--     quantidade,
--     {{ faturamento('valor_total', 'quantidade') }} AS faturamento
-- FROM order_items


-- SELECT 
--     {% for coluna in ["nome", "email", "ocupacao"] %}
--         {{ coluna }}{% if not loop.last %}, {% endif %}
--     {% endfor %}
-- FROM {{ref('pedidos_detalhes')}}

-- SELECT
--     nome, email, ocupacao
-- FROM {{ref('pedidos_detalhes')}}


