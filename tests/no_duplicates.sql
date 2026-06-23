Select first_order_date,
       most_recent_order_date,
       customer_id,
       COUNT(*)
From {{ ref ("wh_customers")}}
GROUP BY 1,2,3
HAVING COUNT(*) >1
