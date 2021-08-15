 with Hinfo as 
(select * from hotel.2019
union all
select * from hotel.2018
union all
select * from hotel.2020)

select * from Hinfo
Left Join hotel.market_segment
on Hinfo.market_segment = market_segment.market_segment
Left Join hotel.meal_cost
on meal_cost.meal= Hinfo.meal  ;
