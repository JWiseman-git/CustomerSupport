{{ config(
    materialized='table',
    schema='customer_support_logs'
) }}

SELECT
    *
FROM 
    {{ source('src_customer_support_logs', 'support_logs_raw_') }}        

