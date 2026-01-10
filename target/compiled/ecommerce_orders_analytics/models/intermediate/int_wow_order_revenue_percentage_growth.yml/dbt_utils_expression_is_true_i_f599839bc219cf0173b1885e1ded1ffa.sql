



select
    1
from "ecommerce_orders_analytics"."analytics"."int_wow_order_revenue_percentage_growth"

where not(week_over_week_percentage_growth value IS NULL OR (
  value >= -1
  AND value <= 10
))

