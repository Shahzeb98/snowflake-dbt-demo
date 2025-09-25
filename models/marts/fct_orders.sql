select
    o.order_id,
    o.customer_id,
    c.first_name || ' ' || c.last_name as customer_name,
    o.total_amount,
    o.order_date
from {{source('raw','orders')}} o
left join {{ref('stg_customers')}} c
    on o.customer_id = c.customer_id