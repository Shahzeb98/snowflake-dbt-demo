select
    o_orderkey,
    {{order_age()}} as order_age_days
from {{source('tpch','orders')}}