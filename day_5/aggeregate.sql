use rajc;
select * from data;
-- finding the no of products in the dataset
select count(*) as total_product from data;
select count(product_name) as total_product_name from data;
select count(distinct(product_name)) as total_unique_product from data;

-- finding the average discounted price of products in the dataset
select avg(discounted_price) as average_price from data;
select avg(marked_price) as average_price from data;

-- finding the most expensive product
select max(discounted_price) as max_discounted_price from data;

-- finding the cheapest product in the dataset
select min(discounted_price) as min_discounted_price from data;

-- finding the total rating coount of all products
 select sum(rating_count) as total_rating_count from data;
 
 -- find the toatal unique brand
 select count(distinct (brand_tag)) as unique_brand from data;
