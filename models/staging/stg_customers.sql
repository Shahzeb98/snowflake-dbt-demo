select
    id as customer_id,
    first_name,
    last_name,
    create_at::date as signup_date
from {{ source('raw','customers')}}