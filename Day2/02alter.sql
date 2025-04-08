drop table  if exists employee;
create table employee(
	employee_id int not null, 
	name varchar(50), 
	age int check (age>=18), 
	department varchar(50));
    
-- adding new colimn in the table
select * from employee;
alter table employee add column mail varchar(50);
select* from employee;

-- rename the column
alter table employee rename column employee_id to id;
select* from employee;

-- dropping the column
alter table employee drop column  mail;

-- adding column with default values
alter table employee add column maritial_status varchar(50) default 'unknown';
select* from employee;

