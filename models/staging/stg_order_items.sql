select
  cast(id as string) as order_item_id,
  cast(order_id as string) as order_id,
  cast(sku as string) as product_id
from {{ source('ecom', 'raw_items') }}
