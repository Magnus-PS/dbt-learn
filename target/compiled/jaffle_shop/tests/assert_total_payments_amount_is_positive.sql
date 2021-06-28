
with dbt__CTE__INTERNAL_test as (
select
    order_id,
    sum(amount) as total_amount
from `neat-episode-288515`.`dbt_mskonberg`.`stg_payments`
group by 1
having not(total_amount >= 0)
)select count(*) from dbt__CTE__INTERNAL_test