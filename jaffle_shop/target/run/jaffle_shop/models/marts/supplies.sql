
  
    
        create or replace table `akash`.`akash_dbt`.`supplies`
      
      
    using delta
  
      
      
      
      
      
      
      
      
      as
      with

supplies as (

    select * from `akash`.`akash_dbt`.`stg_supplies`

)

select * from supplies
  