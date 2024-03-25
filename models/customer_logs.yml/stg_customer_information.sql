{{ config(
    materialized='table',
    schema='customer_support_logs'
) }}

select distinct 
    contact_id,
    contact_name,
    contact_method,
    contact_information
from {{ source('src_customer_support_logs','support_logs_raw_') }}