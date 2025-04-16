use employees;
drop table if exists people;
create table people(
				person_id serial primary key, 
                first_name varchar(50), 
                last_name varchar(50), 
                age int,
                city varchar(50));
-- inserting data into the table
INSERT INTO people(first_name,last_name,age,city)
	values
	('John', 'Doe', 30, 'New York'),
    ('Jane', 'Smith', 25, 'Los Angeles'),
    ('Michael', 'Johnson', 40, 'Chicago'),
    ('Emily', 'Brown', 35, 'Houston'),
    ('David', 'Jones', 28, 'San Francisco'),
    ('Sarah', 'Davis', 32, 'Seattle'),
    ('Robert', 'Wilson', 45, 'Boston'),
    ('Jennifer', 'Martinez', 27, 'Miami'),
    ('William', 'Taylor', 38, 'Atlanta'),
    ('Jessica', 'Anderson', 33, 'Dallas'),
    ('Daniel', 'Thomas', 29, 'Philadelphia'),
    ('Maria', 'Jackson', 42, 'Phoenix'),
    ('James', 'White', 31, 'Denver'),
    ('Elizabeth', 'Harris', 36, 'Austin'),
    ('Christopher', 'Clark', 39, 'San Diego'),
    ('Amanda', 'Lewis', 26, 'Portland'),
    ('Matthew', 'Walker', 34, 'Detroit'),
    ('Ashley', 'Allen', 37, 'Las Vegas'),
    ('Joseph', 'Young', 41, 'Nashville'),
    ('Stephanie', 'Scott', 24, 'Orlando'),
	('Raj','Chaudhary',22,'Gurgaon'),
	('Nabin','Pathak',24,'Delhi');
    
select * from people;
-- update the data based on age
update people
set age=40
where person_id=1;
select * from people;

-- update the city as per last name
update people 
set city ='Bihar'
WHERE  last_name= 'Doe';
select * from people;

-- updating age of all people whose age is less than 30 t0 30
update people 
set age = 30
WHERE  age < 30;
select * from people;

-- updating ages of all the people of specific city
update people 
set age = 90
WHERE  city='delhi' or city='Gurgaon';
select * from people;



    
            