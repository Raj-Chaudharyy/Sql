drop table if exists employees;
create table employees(
	employee_id serial primary key, 
	first_name varchar(50),
	last_name varchar(50),
	hire_date date,
	department varchar(50));
select * from employees;

-- insert values in single row
insert into employees(employee_id,first_name,last_name,hire_date, department)
	values
			(1,'Raj','Chaudhary','2025-04-12','CSE');
select * from employees;

-- insert values in multiple rows
insert into employees(employee_id,first_name,last_name,hire_date, department)
	values
			(2,'ritam','pradhan','2025-04-15','sales'),
            (3,'ramu','kaka','2025-04-16','HR'),
            (4,'kalu','kumar','2034-04-15','manager'),
            (5,'white','bahadur','2018-04-09','sales');
select * from employees;

-- inserting partial data
insert into employees(first_name,last_name)
	values
			('Raj','Chaudhary');
select * from employees;

-- inserting values in different order
insert into employees(first_name,department,last_name,hire_date,employee_id)
	values
			('sahiba','marketting','Banu','2025-04-12',8);
select * from employees;