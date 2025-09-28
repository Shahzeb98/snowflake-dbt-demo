with customers as(
    select * from {{ref('stg_customers')}}
)
select * from customers
where first_name is not null