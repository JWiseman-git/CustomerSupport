select
*

from {{ source('customer_support_logs','support_logs_raw') }}