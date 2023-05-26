
-- JOINS

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

select * from people
create table people
(
manager varchar(20),
region varchar(10)
)





















