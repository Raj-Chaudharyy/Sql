use employees;
select * from Employees;

-- basic case for sales team
select name, 
case department
	when 'sales' then 'sales team'
    else 'other'
end as employee_name from employees;

-- basic case for sales and marketing team
select name, 
case department
	when 'marketing' then 'marketing team'
    when 'sales' then 'sales team'
    else 'other'
end as employee_name from employees;

-- cases with respect to age
select name, 
case
	when age <30 then 'young'
    when age >=30 and age<=40  then 'mid-aged'
    else 'senior'
end as employee_name from employees;

-- nested cases
select name, 
case
	when age<30 then
		case
			when department='sales' then 'jr sales'
			else 'junior'
		end
	when age>=30 and age<=40 then 'Middle'
    else 'senior'
end as employee_name from Employees;

-- dealing with null values
select name,
case department
	when department is  null then 'department not assigned'
    else department
end as department_status from Employees;