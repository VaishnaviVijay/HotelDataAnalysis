--CTE to combine all the data from all the tables
with Hotels as(
Select * from dbo.['2018$']
Union
Select * from dbo.['2019$']
Union
Select * from dbo.['2020$'])
Select * from Hotels
left join dbo.market_segment$
on Hotels.market_segment = dbo.market_segment$.market_segment
left join dbo.meal_cost$
on Hotels.meal=dbo.meal_cost$.meal

--Revenue calculation ( discount to be subtracted)
--Select  arrival_date_year,hotel,sum((stays_in_week_nights+stays_in_weekend_nights)*adr) as revenue
--From Hotels
--group by arrival_date_year, hotel