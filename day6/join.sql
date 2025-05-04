use users;
create database users;
create table if not exists users.users_2021(user_id int primary key, name varchar(50));
create table users.users_2022(user_id int primary key, name varchar(50));
create table users.users_2023(user_id int primary key, name varchar(50));
insert into users_2021(user_id , name )
values(1,'raj'),(2,'laura'),(7,'prakash');

insert into users_2022(user_id , name )
values(1,'raj'),(2,'laura'),(3,'charlie'),(4,'grace');

insert into users_2023(user_id , name )
values(1,'raj'),(2,'laura'),(3,'charlie'),(4,'grace'),(5,'henry');


select * from users_2021;
select * from users_2022;
select * from users_2023;
 
 -- users 2021 and 2022
 select * from users_2021 as t_2021 inner join users_2022 as t_2022 on t_2021.user_id=t_2022.user_id;
 
  -- users 2022 and 2023
 select * from users_2022 as t_2022 inner join users_2023 as t_2023 on t_2022.user_id=t_2023.user_id;
 
  -- users 2021 and 2022 and 2023
 select * from users_2021 as t_2021 inner join users_2022 as t_2022 on t_2021.user_id=t_2022.user_id
 inner join users_2023 as t_2023 on t_2022.user_id=t_2023.user_id;
 
  -- left join on users 2021 and 2022
 select * from users_2021 as t_2021 left join users_2022 as t_2022 on t_2021.user_id=t_2022.user_id;
 
 
