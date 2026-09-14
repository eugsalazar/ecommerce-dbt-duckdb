
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with customers as (

    select 1 as customer_id, 'Eugenio' as customer_name
    union all
    select 2 as customer_id, 'Maria' as customer_name
    union all
    select 3 as customer_id, 'Carlos' as customer_name

)

select *
from customers

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
