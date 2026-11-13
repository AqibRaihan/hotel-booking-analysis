with hotels as (
select * 
from dbo.hotel_bookings_2019
union
select * 
from dbo.hotel_bookings_2018
union
select * 
from dbo.hotel_bookings_2020
)

select * from hotels
LEFT JOIN dbo.market_segment_correct AS m
    ON hotels.market_segment = m.market_segment
LEFT JOIN dbo.meal_cost
    ON hotels.meal = meal_cost.meal

select 
arrival_date_year,
round(sum((stays_in_week_nights+stays_in_weekend_nights)*adr),2) as revenue 
from hotels
group by arrival_date_year,hotel

select * from dbo.market_segment


