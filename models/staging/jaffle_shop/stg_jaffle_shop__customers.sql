with 

source as (

  select * from {{ source('jaffle_shop', 'customers') }} where id not in ('id')
    -- datensatz wurde nicht richtig eingelesen
),

transformed as (

  select 

    id as customer_id,
    name as full_name,
    split(name, ' ')[0] as first_name,
    split(name, ' ')[SAFE_OFFSET(1)] as last_name

  from source

)

select * from transformed
