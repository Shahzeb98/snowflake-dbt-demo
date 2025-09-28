select o_orderkey,
{{age_and_clean('o_orderdate','o_comment')}}
from {{source('tpch','orders')}}