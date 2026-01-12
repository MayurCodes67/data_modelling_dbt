



select
    1
from "ecommerce_orders_analytics"."analytics"."int_weekly_customers_retained_customers"

where not(retained_customers <= active_customers_prev_week)

