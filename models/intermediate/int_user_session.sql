{{config(materialized='ephemeral')}}
select
    user_id,
    session_id,
    count(*) as page_views
from {{ source('raw','page_views')}}
group by 1,2
