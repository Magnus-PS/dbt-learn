
    
    



select count(*) as validation_errors
from (

    select
        id

    from `dbt-tutorial`.`jaffle_shop`.`customers`
    where id is not null
    group by id
    having count(*) > 1

) validation_errors


