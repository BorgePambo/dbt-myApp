{{ 
    config(
        materialized = "incremental",
        unique_key = "id"
    ) 
}}

with source as (
    select
        id,
        nome,
        email,
        telefone,
        data_registro
    from {{ ref('stg_clientes') }}
)
select * from source
