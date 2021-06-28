

  create or replace view `neat-episode-288515`.`dbt_mskonberg`.`stg_orders`
  OPTIONS()
  as with orders as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from `dbt-tutorial.jaffle_shop.orders`

)

select * from orders;

