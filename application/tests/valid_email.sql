{%test valid_email(model, column_name) %}

WITH validation AS (
    SELECT
    {{ column_name }} AS email
    FROM {{ model }}
    WHERE {{ column_name }} NOT LIKE '%_@%'
)
SELECT
    COUNT(*) AS invalid_email_count
FROM validation

{%endtest %}