{{config(materialized='incremental', unqiue_key='order_id')}}
select * from {{source('raw','orders')}}
{%if is_incremental()%}
where udpated_at > (select max(updated_at) from {{this}}
{%endif%}