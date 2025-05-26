{% decimal_number(number, decimal_plces) %}
    round(
        {{ number }},
        {{ decimal_places }}
    )
{%endmacro%}