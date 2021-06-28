

  create or replace view `neat-episode-288515`.`dbt_mskonberg`.`stg_customers`
  OPTIONS()
  as with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from `dbt-tutorial.jaffle_shop.customers`

)

select * from customers;

