with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from dbt_demo_bp.jaffle_shop.customers


)

select * from customers