{{ config(store_failures=true) }}

Select customer_id, 
       number_of_orders
       From {{ ref("wh_customers") }} 
       where number_of_orders < 0 