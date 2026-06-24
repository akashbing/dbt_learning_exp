
  
    
        create or replace table `akash`.`akash_dbt`.`locations`
      
      
    using delta
  
      
      
      
      
      
      
      
      
      as
      with

locations as (

    select * from `akash`.`akash_dbt`.`stg_locations`

)

select * from locations
  