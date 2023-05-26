
--date functions

select order_id,order_date,ship_date
,datediff(day,order_date,ship_date) as date_diff_days
,datediff(week,order_date,ship_date) as date_diff_days
from orders;
/*
dateadd(day,5,order_date) as order_date_5
,dateadd(week,5,order_date) as order_date_week_5
,dateadd(day,-5,order_date) as order_date_week_5_minus

from orders;
/*,datepart(yy,order_date) as year_of_order_date
,datepart(month,order_date) as month_of_order_date
,datepart(week,order_date) as week_of_order_date
,DATENAME(month,order_date) as month_name
,DATENAME(weekday,order_date) as week_name*/
*/
--if profit < 100 then 'low profit' elseif profit > 100 then 'profit' else end
select order_id,profit,
case
when profit < 100 then 'Low Profit'
when profit < 250 then 'Medium Profit'
when profit < 400 then 'High Profit'
else 'Very high profit'
end as profit_category
,case
when  profit < 0 then 'Loss'
when profit  >= 100 and profit < 250 then 'Medium Profit'
when profit < 100 then 'Low Profit'
when profit >=250 and profit < 400 then 'High Profit'
else 'Very high profit'
end as profit_category
from orders
;





































having count(distinct r.return_reason)=3;


