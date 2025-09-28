{{config(materialized='incremental', unqiue_key='order_id')}}
select * from {{source('raw','orders')}}
{%if is_incremental()%}
where order_date > (select min(order_date) from {{this}})
{%endif%}