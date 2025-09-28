{%macro age_and_clean(date_col='o_orderdate',name_col='o_orderkey')%}
{{order_age(date_col)}} as order_age_days,
{{trim_and_upper(name_col)}} as customer_name_cleaned
{%endmacro%}