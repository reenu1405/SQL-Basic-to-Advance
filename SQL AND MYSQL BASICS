
/*
Skills used : create tables, delete, drop, insert data, select queries, alter,constraints,top or limit,update
*/


--DDL - > data definition language
create table amazon_orders
(
order_id integer,
order_date date,
product_name varchar(100),
total_price decimal(6,2),
payment_method varchar(20)
);
--delete a table
--drop table amazon_orders;

--DML -> data Manipulation language
insert into amazon_orders values(1,'2022-10-01','Baby Milk',30.5,'UPI');
insert into amazon_orders values(2,'2022-10-02','Baby Powder',130,'Credit Card');

insert into amazon_orders values(3,'2022-10-01','Baby cream',30.5,'UPI');
insert into amazon_orders values(4,'2022-10-02','Baby soap',130,'Credit Card');

--to delete data
delete from amazon_orders;
--SQL--> structured query language

-- DQL -> data querying language

select * from amazon_orders;

--limiting columns or selecting specific columns

select product_name,order_date,total_price from amazon_orders;

--limiting rows

select top 1 * from amazon_orders;
/* IN MYSQL  we use limit :
select * from amazon_orders
limit 1;
*/

--data sorting

select * from amazon_orders
order by order_date desc,product_name desc,payment_method;



select * from amazon_orders;

--change data type of a column
alter table amazon_orders alter column order_date datetime; --DDL
-- IN MYSQL  we use modify : alter table amazon_orders modify column order_date datetime;
alter table amazon_orders alter column order_id date; --DDL data type should be compatible
alter table amazon_orders alter column product_name varchar(20); --DDL data type should be compatible
alter table amazon_orders alter column order_date datetime; --DDL data type should be compatible
--if table is empty we can change from any datetype to any other data type

insert into amazon_orders values(5,'2022-10-01 12:05:12','Shoes',132.5,'UPI');
--insert into amazon_orders values(5,'10-10-2022 12:05:12','Shoes',132.5,'UPI','ANKIT');
insert into amazon_orders values(6,'2022-10-01 12:05:12',null,132.5,'UPI','Ankit');
insert into amazon_orders values(7,'2022-10-01 12:05:12','null',132.5,'UPI','Ankit');
--add a column in a existing table
alter table amazon_orders add username varchar(20);
alter table amazon_orders add category varchar(20);
--delete a column from an existing table
alter table amazon_orders drop column category ;
---constraints

drop table a_orders ;
create table a_orders
(
order_id integer  , -- not null constarint , unique constraint
order_date date ,
product_name varchar(100),
total_price decimal(6,2) ,
payment_method varchar(20) check (payment_method in ('UPI','CREDIT CARD')) default 'UPI', --check constraint
discount integer check (discount<=20) , --check constraint,
category varchar(20) default 'Mens Wear' --default constarint
primary key (order_id,product_name)
);
insert into a_orders values(1,'2022-10-01','Shirts',132.5,'UPI',20,'kids wear');
select * from a_orders;
insert into a_orders values(3,'2022-10-01','Shirts',132.5,'UPI',20,'');
insert into a_orders(order_id,order_date,product_name,total_price,payment_method) 
values(7,'2022-10-01','Shirts',132.5,'UPI');
insert into a_orders(order_id,order_date,product_name,total_price,payment_method) 
values(null,'2022-10-01','Shirts',132.5,default);

select * from a_orders ;

insert into a_orders(order_id,order_date,product_name,total_price,payment_method) 
values(1,'2022-10-01','Shirts',132.5,default);
insert into a_orders(order_id,order_date,product_name,total_price,payment_method) 
values(2,'2022-10-01','jeans',132.5,default);
--primary key is ..unique + not null constaint

--delete with a filter condition
delete from a_orders where product_name='jeans' ; --DML
-------------- update-- DML
update a_orders
set discount=10;

update a_orders
set discount=10
where order_id=2;

update a_orders
set product_name='jeans2' , payment_method='CREDIT CARD'
where  product_name='jeans'



select * from a_orders



