
  
  
  
  create or replace view `akash`.`akash_dbt`.`stg_customers`
  
  as (
    with

source as (

    -- 
    select * from `akash`.`akash_dbt_raw`.`raw_customers`

),

renamed as (

    select

        ----------  ids
        id as customer_id,

        ---------- text
        name as customer_name

    from source

)

select * from renamed
  )
