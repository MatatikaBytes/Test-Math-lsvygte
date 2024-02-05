{{ config(materialized='table') }}
with top_6 as(
select * from {{ ref('vw_top_listened_to_genre_long_term') }}
order by genre_count desc
limit 5 
)
select * from top_6