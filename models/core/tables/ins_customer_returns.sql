with customers as (

    select * from {{ ref('stg_customer') }}
        
),


order_returns as (

    select * from {{ ref('int_order_returns')}}

),


final as (

    select
        customers.customer_id,
        customers.first_name,
        customers.last_name,
        order_returns.order_date,
        order_returns.status

    from customers

    inner join order_returns 
    on customers.customer_id = order_returns.customer_id

)

select * from final