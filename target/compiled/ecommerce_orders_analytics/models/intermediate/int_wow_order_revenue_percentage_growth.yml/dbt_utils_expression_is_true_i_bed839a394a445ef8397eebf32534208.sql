



select
    1
from "ecommerce_orders_analytics"."analytics"."int_wow_order_revenue_percentage_growth"

where not(week_over_week_percentage_growth IS NULL OR (
  >= -1
  AND <= 10
))

