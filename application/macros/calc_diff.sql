{% macro cal_diff(data_inicial, data_final) %}
    DATEDIFF(DAY, {{ data_inicial }}, {{ data_final }})
{% endmacro %}


-- SELECT
--     pedido_id,
--     cliente_id,
--     data_pedido,
--     data_entrega,
--     {{ cal_diff('data_pedido', 'data_entrega') }} AS dias_diferenca
-- FROM 
--     {{ ref('pedidos_detalhes') }}
