-- editing the file within the IDE
-- I'm adding these lines to create 
-- a merge conflict in the dbt Cloud IDE
with

source as (

    select * from {{ source('ecom', 'raw_customers') }}

),

renamed as (

    select

        ----------  ids
        id as customer_id,

        ---------- text
        name as customer_name

    from source

    where customer_id is not null

)

select * from renamed
