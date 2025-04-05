use employees;
select * from Employees;


-- getting the employees with age more than 30
select * from Employees where age>30;

-- getting the employees from sales whose age is more than 30
select * from Employees where department='sales' and age> 30;

-- employees with age in range between 30 to 40
select * from Employees where age>30 AND AGE<40;
select * from Employees where age between 30 and 40;

-- employees from sales or marketting
select * from Employees where department="sales" or department="marketing";

-- searching for some whose name starts with jo
select * from Employees where name like 'jo%';

-- getting data of employees whose depart ment is not null
select * from Employees where department is not null;

-- getting only not null  data throughout the table
select * from Employees where age is not null and department is not null;

-- getting data using IN command
select * from Employees where department in("sales","marketing");

-- getting data using NOT IN command
select * from Employees where department not in("sales","marketing");

-- marketing or sales employee with age more than 30
select * from Employees where department in("sales","marketing") and age>30;

