use rajc;
-- basic subqueries: find the average rating of the products
select avg(rating) as 'avg_rating' from data;

-- subquery in where clause: find the brand name with product rating higher than the avg rating
select brand_name,product_name, rating from data
where rating > (select avg(rating) as 'avg_rating' from data);

-- subquery in SELECT clause: retrieve the product name along the average rating of thr product
select 
product_name,rating, 
(select avg(rating) from data) as 'avg_rating'
 from data;

-- subquery with multiple result: find the total rating count of the product for each brand compared to overall rating count
select brand_name, 
(select sum(rating_count) from data where brand_name=p.brand_name) as 'total_rate_count'
from (select distinct brand_name from data) as p;