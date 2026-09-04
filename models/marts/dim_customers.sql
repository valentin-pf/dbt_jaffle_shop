select
  customer_id,
  customer_name,
  'test' as new_col
from {{ ref('stg_customers') }}
