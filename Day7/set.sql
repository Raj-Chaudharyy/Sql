drop database if exists users;
create database users;
create table if not exists users.users_2021(user_id int primary key, name varchar(50));
create table users.users_2022(user_id int primary key, name varchar(50));
create table users.users_2023(user_id int primary key, name varchar(50));
insert into users.users_2021(user_id , name )
values(1,'raj'),(2,'laura'),(7,'prakash');

insert into users.users_2022(user_id , name )
values(1,'raj'),(2,'laura'),(3,'charlie'),(4,'grace');

insert into users.users_2023(user_id , name )
values(1,'raj'),(2,'laura'),(3,'charlie'),(4,'grace'),(5,'henry');
 -- union|remove the duplicate and join the table
select * from users.users_2021 union select * from users.users_2022;
select * from users.users_2021 union select * from users.users_2023;
select * from users.users_2023 union select * from users.users_2021;

-- union all| doesnot remove duplicates
select * from users.users_2021 union all select * from users.users_2022;

-- Except|shows all the data in the dominating table that is not in the other tabe
select * from users.users_2021 except select * from users.users_2022;

-- intersect| shows all the common data in both the tables
select * from users.users_2021 intersect select * from users.users_2022;

-- list of new users added in 2022
select * from users.users_2022 except select * from users.users_2021;

-- list the user that left use
select * from users.users_2021 except select * from users.users_2022 except select * from users.users_2023 ;

-- list the users they are there throughout the database in year 2021 and 2022
select * from users.users_2021 union select * from users.users_2022;

-- list the users they are there throughout the database 
select * from users.users_2021 union select * from users.users_2022 union select * from users.users_2023;

-- list the users they are there with us from last 3 years
select * from users.users_2021 intersect select * from users.users_2022 intersect select * from users.users_2023 ;

-- list all the users except the usersthat  are there with us from last 3 years
select * from users.users_2021 union select * from users.users_2022 union select * from users.users_2023
except
select * from users.users_2021 intersect select * from users.users_2022 intersect select * from users.users_2023 ;

select name from users.users_2021 where name like'%___' order by name   asc ;


