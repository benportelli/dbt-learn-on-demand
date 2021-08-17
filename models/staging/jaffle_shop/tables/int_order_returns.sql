with customer_orders as (

    select *
    from  {{ ref('stg_order') }}
    where status in ('returned', 'return_pending')

)

select * from customer_orders