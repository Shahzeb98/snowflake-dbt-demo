{%macro order_age(column='o_orderdate')%}
datediff(day,{{column}},current_date)
{%endmacro%}