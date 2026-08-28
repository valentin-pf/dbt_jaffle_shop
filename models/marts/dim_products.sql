select
  product_id,
  product_name,
  product_type,
  product_price,
  product_description
from {{ ref('stg_products') }}
