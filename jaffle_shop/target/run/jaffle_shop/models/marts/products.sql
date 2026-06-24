
  
    
        create or replace table `akash`.`akash_dbt`.`products`
      
      
    using delta
  
      
      
      
      
      
      
      
      
      as
      with

products as (

    select * from `akash`.`akash_dbt`.`stg_products`

)

select * from products
  