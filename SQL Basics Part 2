-- Superstore orders dataset
/*
Skills Used : top,distinct, filters(=, !=, <, >, >=,<=),in,between,pattern matching like operator, filtering null values, aggregate functions(avg, count, sum, min, max, group_concat,first,last)),group by,order by,database joins(inner join,left,right joins,full outer join)

*/


select top 5*
from orders 
order by order_date desc
;
--to get distinct value of a column
select distinct order_date from orders
order by order_date;

select distinct ship_mode,segment from orders;

select distinct * from orders;
---filters-----
select * from orders
where ship_mode='First Class';

select * from orders
where order_date='2020-12-08';

select order_date,quantity 
from orders
where quantity != 5
order by quantity desc;


select * from orders
where order_date < '2020-12-08'
order by order_date desc
;


select * from orders
where order_date between '2020-12-08' and '2020-12-12'
order by order_date desc

select * from orders
where quantity between 3 and 5
order by quantity desc;

select distinct ship_mode from orders
where ship_mode in ('First Class','Same Day');


select * from orders
where quantity in (3, 5 , 4)
order by quantity desc;

select distinct ship_mode from orders
where ship_mode not in ('First Class','Same Day');


select distinct ship_mode from orders
where ship_mode >= 'Second Class'

select order_date, ship_mode,segment from orders
where ship_mode = 'First Class' and segment='Consumer'


select order_date, ship_mode,segment from orders
where ship_mode = 'First Class' or segment='Consumer'

select distinct ship_mode from orders
where ship_mode in ('First Class','Same Day');

select * from orders
where ship_mode = 'First Class' or ship_mode='Same Day'; --or filter always increase rows

select * from orders where quantity>5 and order_date<'2020-11-08' -- and will decrease;

select *,profit/sales as ratio,profit*sales,getdate() as total
from orders
where order_date between  '2022-11-01 12:00:00' and  '2022-11-01 12:40:00'
order by order_date
;
--pattern matching like operator
select order_id,order_date,customer_name
from orders
where customer_name like 'Chris%';

select order_id,order_date,customer_name
from orders
where customer_name like '%t';

select order_id,order_date,customer_name
from orders
where customer_name like '%ven%';


select order_id,order_date,customer_name,upper(customer_name) as name_upper
from orders
where upper(customer_name) like 'A%A' ;


select order_id,order_date,customer_name
from orders
where customer_name like '_l%' ;
--%--0 or more any characters
-- _ - > one character

select order_id,order_date,customer_name
from orders
where customer_name like 'C[albo]%'


select order_id,order_date,customer_name
from orders
where customer_name like 'C[^albo]%';


select order_id,order_date,customer_name
from orders
where order_id like 'CA-20[][1-2]%'
order by customer_name

--- filtering null values 
select * from orders
where city is null;
select * from orders
where city is not null ;

---aggregation
select  count(*) as cnt
,sum(sales) as total_sales
,max(sales) as max_sales
,min(profit) as min_profit
,avg(profit) as avg_profit
from orders;

--group by
select region, count(*) as cnt
,sum(sales) as total_sales
,max(sales) as max_sales
,min(profit) as min_profit
,avg(profit) as avg_profit
from orders
group by region;

select region,category,sum(sales) as total_sales
from orders
group by region;

select region,sum(sales) as total_sales
from orders
group by region;

select top 2 region,sum(sales) as total_sales
from orders
where profit>50
group by region
order by total_sales desc
;

select sub_category,sum(sales) as total_sales
from orders
group by sub_category
having sum(sales) > 100000
order by total_sales desc;

select top 5 sub_category,sum(sales) as total_sales
from orders
where profit>50
group by sub_category
having sum(sales) > 100000
order by total_sales desc



select top 5 sub_category,sum(sales) as total_sales
from orders
where sub_category = 'Phones'
group by sub_category
order by total_sales desc;

select sub_category,sum(sales) as total_sales
from orders
group by sub_category
having max(order_date) > '2020-01-01'
order by total_sales desc;


select sub_category,min(order_date),sum(sales) as total_sales--, max(order_date)
from orders
group by sub_category
having max(order_date) > '2020-01-01'
order by total_sales desc;

select sub_category,sum(sales) as total_sales--, max(order_date)
from orders
where order_date > '2020-01-01'
group by sub_category
order by total_sales desc;

-- string_agg(column_name,' ') : in sql
select dept_id,STRING_AGG(emp_name,';' )  WITHIN GROUP (ORDER BY salary desc) as list_of_employees
from employee
group by dept_id;

-- group_concat(column_name) : in mysql
select dept_id,group_concat(emp_name ORDER BY salary desc) as list_of_employees
from employee
group by dept_id
;


---count
select count(distinct region),
count(*),count(city),sum(sales)
from orders;


select region, avg(sales) as avg_sales--150 -- sum(sales)/count(sales)
,sum(sales)/count(region) -- 100
from orders
group by region;

-- database joins
select o.order_id,o.product_id,r.return_reason
from orders o
inner join returns r on o.order_id=r.order_id;


select o.order_id,o.product_id,r.return_reason, r.order_id as return_order_id
from orders o
left join returns r on o.order_id=r.order_id
;

select r.return_reason,sum(sales) as total_sales
from orders o
inner join returns r on o.order_id=r.order_id
group by r.return_reason;

--cross join
select e.emp_id,e.emp_name,e.dept_id,d.dep_name from 
employee e
inner join dept d on e.dept_id=d.dep_id;

select e.emp_id,e.emp_name,e.dept_id,d.dep_name from 
employee e
left join dept d on e.dept_id=d.dep_id

select e.emp_id,e.emp_name,e.dept_id,d.dep_id,d.dep_name from 
employee e
right join dept d on e.dept_id=d.dep_id;

select e.emp_id,e.emp_name,e.dept_id,d.dep_name from 
dept d
left join employee e on e.dept_id=d.dep_id;

select e.emp_id,e.emp_name,e.dept_id,d.dep_id ,d.dep_name from 
dept d
full outer join employee e on e.dept_id=d.dep_id;

select * from employee;
select * from dept;

select o.order_id,o.product_id,r.return_reason,p.manager
from orders o
left join returns r on o.order_id=r.order_id
inner join people p on o.region=p.region
;









