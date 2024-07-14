
{{ config(materialized='table') }}

WITH tb1 as(
    *
    from {{source('snowflake_data','RAW_LINEITEM')}})
select * from tb1