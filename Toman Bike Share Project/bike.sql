with cte as 
(
select * from bike_share_yr_0
union all
select * from bike_share_yr_1)

select 
       [dteday]
      ,[season]
      ,a.yr
    --  ,[mnth]
     -- ,[hr]
     -- ,[holiday]
      ,[weekday]
	  ,[hr]
      --,[workingday]
     -- ,[weathersit]
     -- ,[temp]
     -- ,[atemp]
     -- ,[hum]
     -- ,[windspeed]
      ,[rider_type]
      ,[riders]
	  ,b.price
      ,b.COGS
	  ,riders * price as revenue
	  ,riders * price - COGS as profit
from cte a left join bike_data.dbo.cost_table b
on a.yr =b.yr