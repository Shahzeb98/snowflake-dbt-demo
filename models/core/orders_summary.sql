{{ config(materialized='table')}}
select
    customer_id,
    count(*) as total_roders
from {{ref('stg_orders')}}
group by customer_id