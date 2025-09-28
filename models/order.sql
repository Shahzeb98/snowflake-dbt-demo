select{{trim_and_upper('o_comment')}} as customer_name_cleaned
from {{source('tpch','orders')}}