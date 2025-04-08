-- creating first table
drop table  if exists employee;
create table employee(employee_id int, name varchar(50), age int, department varchar(50));

select * from employee;

-- creating table with constraints
drop table  if exists employee;
create table employee(
employee_id int not null, 
name varchar(50), 
age int check (age>=18), 
department varchar(50));
select * from employee;

drop table  if exists employee;
create table employee(
employee_id serial, 
name varchar(50), 
age int check (age>=18), 
department varchar(50),
hire_date date);
select * from employee;
