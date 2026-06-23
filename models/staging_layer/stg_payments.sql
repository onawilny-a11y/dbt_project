with source as (
    select * from {{ source('jaffle_shop', 'payment') }}
),
renamed as (
    select
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status,
        cast(amount as float64) / 100 as amount  
    from source
)
select * from renamed