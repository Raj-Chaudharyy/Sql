-- 1.Primary key
drop table if exists employees;
create table employees(department_id int primary key, name varchar(50), department varchar(50));
select * from employees;

-- 2.Composite key
drop table if exists orders;
create table orders(order_id serial , customer_id int,order_date date, primary key(order_id, customer_id));
select * from orders;

-- 3.foreign key
drop table if exists orders;
create table orders(order_id serial primary key, customer_name varchar(50), order_date date, customer_id int, foreign key(customer_id) references employees(department_id));
select * from orders;

-- Unique constraint
drop table if exists employees;
create table employees(
department_id serial primary key, 
name varchar(50), 
email varchar(50),
phone int,
department varchar(50),
unique(phone,email));
select * from employees;

-- check constraint
drop table if exists employees;
create table employees(
department_id serial primary key, 
name varchar(50), 
email varchar(50),
phone int,
age int check (age>=18),
department varchar(50),
unique(phone,email));
select * from employees;

