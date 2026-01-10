



select
    1
from "ecommerce_orders_analytics"."analytics"."int_wow_order_revenue_percentage_growth"

where not(prev_week_revenue IS NULL or prev_week_revenue >= 0)

