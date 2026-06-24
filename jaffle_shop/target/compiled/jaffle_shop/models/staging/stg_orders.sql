with

source as (

    -- 
    select * from `akash`.`akash_dbt_raw`.`raw_orders`

),

renamed as (

    select

        ----------  ids
        id as order_id,
        store_id as location_id,
        customer as customer_id,

        ---------- numerics
        subtotal as subtotal_cents,
        tax_paid as tax_paid_cents,
        order_total as order_total_cents,
        round(subtotal / 100, 2) as subtotal,
        round(tax_paid / 100, 2) as tax_paid,
        round(order_total / 100, 2) as order_total,

        ---------- timestamps
        cast(ordered_at as date) as order_date

    from source

)

select * from renamed