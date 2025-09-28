with user_sessions as(
    select * from {{ref("int_user_session")}}
)
select
    user_id,
    sum(page_views) as total_page_views
from user_sessions
group by 1