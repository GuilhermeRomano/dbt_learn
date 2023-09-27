select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    created,
    _batched_at as batched,
    amount / 100 as amount
from {{ source('stripe', 'payment') }}
