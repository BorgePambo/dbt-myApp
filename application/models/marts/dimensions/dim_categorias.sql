{{ 
    config(
        materialized = "incremental",
        unique_key = "id"
    ) 
}}

with source as (
    select
        id,
        nome
    from {{ ref('stg_categorias') }}
)
select * from source
