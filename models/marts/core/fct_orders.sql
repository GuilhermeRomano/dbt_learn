with
orders as (select * from {{ ref("stg_orders") }}),

payments as (select * from {{ ref("stg_payments") }}),

final as (
    select
        orders.order_id,
        orders.customer_id,
        payments.amount/100 AS amount
    from orders
    left join payments on orders.order_id = payments.order_id

)

select *
from final
