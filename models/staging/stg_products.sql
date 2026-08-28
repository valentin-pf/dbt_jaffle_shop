select
  cast(sku as string) as product_id,
  cast(name as string) as product_name,
  cast(type as string) as product_type,
  cast(price / 100.0 as numeric) as product_price,
  cast(description as string) as product_description
from {{ source('ecom', 'raw_products') }}
