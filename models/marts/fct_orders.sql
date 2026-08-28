select
  order_id,
  customer_id,
  location_id,
  order_total,
  tax_paid,
  ordered_date
from {{ ref('stg_orders') }}
