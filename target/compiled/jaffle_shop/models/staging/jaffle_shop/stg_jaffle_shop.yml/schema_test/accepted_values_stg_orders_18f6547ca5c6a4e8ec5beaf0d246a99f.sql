
    
    




with all_values as (

    select distinct
        status as value_field

    from `neat-episode-288515`.`dbt_mskonberg`.`stg_orders`

),

validation_errors as (

    select
        value_field

    from all_values
    where value_field not in (
        'returned','completed','shipped','placed','return_pending'
    )
)

select count(*) as validation_errors
from validation_errors


