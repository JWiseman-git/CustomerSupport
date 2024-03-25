{{ config(
    materialized='table',
    schema='customer_support_logs'
) }}

SELECT
    *
FROM
    {{ ref('stg_customer_support_events') }}
