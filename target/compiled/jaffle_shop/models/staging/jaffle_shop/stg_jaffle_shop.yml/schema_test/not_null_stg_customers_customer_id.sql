
    
    



select count(*) as validation_errors
from `neat-episode-288515`.`dbt_mskonberg`.`stg_customers`
where customer_id is null


