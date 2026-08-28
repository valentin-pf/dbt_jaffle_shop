select
  cast(id as string) as order_id,
  cast(store_id as string) as location_id,
  cast(customer as string) as customer_id,
  cast(order_total / 100.0 as numeric) as order_total,
  cast(tax_paid / 100.0 as numeric) as tax_paid,
  date(ordered_at) as ordered_date
from {{ source('ecom', 'raw_orders') }}
