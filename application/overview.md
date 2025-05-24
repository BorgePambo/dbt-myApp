
Este projeto dbt foi desenvolvido para organizar, transformar e documentar dados na plataforma Snowflake, seguindo boas práticas de modelagem em camadas (staging → intermediate → marts).

# 📊 dbt-myApp Overview

Projeto dbt com Snowflake usando modelo em camadas: `staging → intermediate → marts`.

## 🗂️ Estrutura

- `staging/`: Limpeza de dados brutos
- `intermediate/`: Transformações intermediárias
- `marts/`: Modelos finais
- `seeds/`, `macros/`, `analyses/`

## ⚙️ Comandos principais

```bash
dbt build                   # Compila tudo (run + test + docs + freshness)
dbt run --select model      # Executa um modelo específico
dbt test                    # Executa testes
dbt docs generate           # Gera a documentação
dbt docs serve              # Sobe a documentação em localhost
