/*create temporary column hotels*/
with hotels as (
select * from dbo.['2018$']
union
select * from dbo.['2019$']
union
select * from dbo.['2020$'])

/*adding discount column to hotels table from market_segment table with left join*/
select * from hotels
left join dbo.market_segment$
on hotels.market_segment=market_segment$.market_segment

/*adding meal cost column to hotels table from meal_cost table with left join*/
left join dbo.meal_cost$
on hotels.meal=meal_cost$.meal

