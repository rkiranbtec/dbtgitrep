{{ config(materialized='table') }}

WITH tb1 as(
    select
    *
    from {{source('snowflake_data','RAW_NATION')}})
select * from tb1