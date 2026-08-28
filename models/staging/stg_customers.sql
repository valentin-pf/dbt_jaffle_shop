select
  cast(id as string) as customer_id,
  cast(name as string) as customer_name
from {{ source('ecom', 'raw_customers') }}
