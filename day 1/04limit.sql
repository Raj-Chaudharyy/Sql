use employees;
select * from employees;

select * from employees limit 5;

select * from employees limit 5 offset 10;

select *  from employees where department='sales' limit 5 offset 0;
select *  from employees where department='sales' limit 5 ;


