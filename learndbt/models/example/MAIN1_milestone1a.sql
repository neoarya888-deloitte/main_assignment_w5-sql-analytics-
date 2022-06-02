select month(nav_date) as nav_month, code, avg(nav) as nav_average,
avg(repurchase_price) as repurchase_average, avg(sale_price) as sale_average
from navhistory group by code, nav_month
