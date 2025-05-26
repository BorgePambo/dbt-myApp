{%macro minusula(coluna) %}
    LOWER({{ coluna }})
{%endmacro%}

-- SELECT 
--     nome_cliente,
--     {{ minusula('nome_cliente') }} AS nome_cliente
-- FROM {{ ref('clientes') }}
