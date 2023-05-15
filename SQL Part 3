
/*
Skills used : date functions,string functions,null handling function,set queries union all, union,except , intersect,create view, foreign key,sub query,CTE(COMMON TABLE EXPRESSION), Window Functions(ranking and value)
*/


--date functions
/*
In MYSQL->
-> instead of datepart mysql has extract: extract(year from column_name)
-> monthname(column_name) : output : january
-> date(column_name) : output : 1 (number )
-> weekday(column_name) : output : 1 to 7
-> dayname(column_name) : output :  sunday
-> extract(year from column_name)
->  extract(month from column_name)
-> extract(day from column_name)
-> extract(week from column_name)
-> date_add(column_name, interval 5 day)
-> date_add(column_name, interval 5 week)
-> datediff (exp1,exp2)

*/
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
-- if profit < 100 then 'low profit' elseif profit > 100 then 'profit' else end
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
from orders;

--string functions
/*
In MYSQL =
-> length(column_name)
-> instead of charindex mysql has position : position(' ',customer_name) as space_position
-> instead of isnull - mysql : ifnull(city,'unknown') as new_city
-> cast in mysql : cast(sales as signed) or cast(sales as unsigned)
*/
select order_id,customer_name
,trim(' ankit bansal ')
,reverse(customer_name) as rev
,REPLACE(order_id,'CA','PB') as replace_ca
,REPLACE(customer_name,' ','') as replace_space
,TRANSLATE(customer_name,'AC','B@') as translate_AG
,len(customer_name) as len_name
,left(customer_name,4) as name_4
,right(customer_name,5) as name_5
--,SUBSTRING(order_id,4,4) as order_year
,left(customer_name,CHARINDEX(' ',customer_name)) as first_name
,CHARINDEX(' ',customer_name) as space_position
,CHARINDEX('n',customer_name) as first_position
,concat(order_id,'-',customer_name)
,order_id+'-'+customer_name 
from orders;

--null handling function
select order_id,city,isnull(city,'unknown') as new_city,
isnull(sales,1) as new_city,
state,coalesce(city,state,region,'unknown') as neww_city
from orders
--where city is null
order by city;

select top 5 order_id,sales,cast(sales as int) as sales_int
,round(sales,1) as sales_int from orders;

--set queries 
--union all, union
create table orders_west
(
order_id int,
region varchar(10),
sales int
);


create table orders_east
(
order_id int,
region varchar(10),
sales int
);

insert into orders_west values(1,'west',100),(2,'west',200);
insert into orders_east values(3,'east',100),(4,'east',300);
insert into orders_west values(3,'east',100)
insert into orders_west values(1,'west',100)
select * from orders_west
union all
select * from orders_east;

select * from orders_west
union 
select * from orders_east;

select * from orders_east;
select * from orders_west;

select sales,order_id as sale from orders_east
union all
select order_id,sales from orders_west;

(select * from orders_east
except 
select * from orders_west)
union all
(select * from orders_west
except 
select * from orders_east);


select * from orders_east
union  
select * from orders_east;

select *,null from orders_east
intersect  
select *,null from orders_east;


select * from orders;

create view - as 
select * from orders where region='South';

select * from orders_south_vw;

create view emp_master as 
select * from master.dbo.emp;


refrencial intergrity constaint 

select * from employee;
select * from dept;

drop table emp
create table emp 
(
emp_id integer  ,
emp_name varchar(10),
dep_id int not null references dept(dep_id)
)

insert into emp 
values (1,'Ankit',100);

update  dept 
set dep_id=600
where dep_id=500;

insert into emp 
values (1,'Ramesh',500);


select * from emp;
select * from dept


insert into dept values (500,'Operations')


alter table dept alter  column  dep_id int not null

alter table dept add constraint primary_key primary key (dep_id)


create table dept1 
(
id int  identity(1,1) ,
dep_id int,
dep_name varchar(10)
)

insert into dept1(dep_id,dep_name) values(100,'HR')
insert into dept1 values(200,'Analytics')
select * from dept1;


ALTER TABLE dbo.Content
   ADD CONSTRAINT FK_Content_Libraries
   FOREIGN KEY(LibraryID, Application)
   REFERENCES dbo.Libraries(ID, Application)

--sub query 
--find average order value
select avg(order_sales) as avg_order_value from
(select order_id,sum(sales) as order_sales
from orders
group by order_id) as orders_aggregated

--find order with sales more than average order value

select * from orders where order_id='CA-2018-100090'


select order_id 
from orders
group by order_id 
having sum(sales) > (select avg(orders_aggregated.order_sales) as avg_order_value from
(select order_id,sum(sales) as order_sales
from orders
group by order_id) as orders_aggregated) ;

select * from employee
where dept_id not in (100,200,300)

select *,(select avg(salary) from employee) as avg_sal from employee
where dept_id  in (select dep_id from dept);

select dept_id from employee
except
select dep_id from dept

select avg(salary) from employee where dept_id !=700 --9200
select * from dept ;


select A.*,B.*
from 
(select order_id , sum(sales) as order_sales
from orders
group by order_id ) A
inner join
(select avg(orders_aggregated.order_sales) as avg_order_value from
(select order_id,sum(sales) as order_sales
from orders
group by order_id) as orders_aggregated) B 
on 1=1
where order_sales > avg_order_value;


select e.*,d.* from
employee e
inner join 
(select dept_id,avg(salary) as avg_dep_salary
from employee
group by dept_id) d
on e.dept_id=d.dept_id;

select team_name,count(*) as matches_played,sum(win_flag) matches_won,count(1)-sum(win_flag) as lost_matches
from
(select team_1 as team_name,case when team_1=winner then 1 else 0 end as win_flag
from icc_world_cup
union all
select team_2 as team_name,case when team_2=winner then 1 else 0 end as win_flag
from icc_world_cup) A
group by team_name
;
--cte common table expression
with A as
(select team_1 as team_name,case when team_1=winner then 1 else 0 end as win_flag
from icc_world_cup
union all
select team_2 as team_name,case when team_2=winner then 1 else 0 end as win_flag
from icc_world_cup) 
select team_name,count(*) as matches_played,sum(win_flag) matches_won,count(1)-sum(win_flag) as lost_matches
from A
group by team_name;

with dep as (select dept_id,avg(salary) as avg_dep_salary
from employee
group by dept_id)
,total_salary as (select sum(avg_dep_salary) as ts from dep)
select e.*,d.* from
employee e
inner join dep d
on e.dept_id=d.dept_id;


with order_wise_sales as (select order_id , sum(sales) as order_sales
from orders
group by order_id)
,B as (select avg(orders_aggregated.order_sales) as avg_order_value from
order_wise_sales as orders_aggregated)
,c as (select * from orders)
select A.*,B.*
from 
order_wise_sales A
, B 
where order_sales > avg_order_value;


select * from employee
where dept_id  in (select dep_id from dept);


--4- write a query to print emp name, salary and dep id of highest salaried employee in each department ;

select * from employee
order by dept_id, salary desc;


select * ,
row_number() over(partition by dept_id order by salary desc) as rn
,rank() over(partition by dept_id order by salary desc) as rnk
,dense_rank() over(partition by dept_id order by salary desc) as d_rnk
from employee;
---to print top 5 selling products from each category by sales

select * 
,rank() over(partition by category order by sales desc) as rn
from orders;

with cat_product_sales as (
select category,product_id,sum(sales) as category_sales
from orders
group by category,product_id )
,rnk_sales as (select *
,rank() over(partition by category order by category_sales desc) as rn
from cat_product_sales)
select * from
rnk_sales
where rn<=5;

with cat_product_sales as (
select category,product_id,sum(sales) as category_sales
from orders
group by category,product_id )
,rnk_sales as (select *
,rank() over(partition by category order by category_sales desc) as rn
from cat_product_sales)
select * from
rnk_sales
where rn<=5;

select * ,
lead(salary,1) over(partition by dept_id order by emp_name desc) as lead_sal
,first_value(salary) over(partition by dept_id order by emp_name desc) as last_value
from employee;







