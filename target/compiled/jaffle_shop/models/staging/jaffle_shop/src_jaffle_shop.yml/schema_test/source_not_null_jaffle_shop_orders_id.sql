
    
    



select count(*) as validation_errors
from `dbt-tutorial`.`jaffle_shop`.`orders`
where id is null


