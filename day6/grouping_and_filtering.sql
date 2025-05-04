use rajc;
select * from data;
-- finding the names of the unique brands
select distinct(brand_name) from data;

-- finding the number of  unique brands
select count(distinct brand_name) from data;

-- finding the number of product in each brands
select brand_tag , count(product_tag) from data group by brand_tag;

 -- finding the top 5 brands who has most number of products| different products in their inventory
 select brand_tag , count(product_tag) as 'total_products' from data 
 group by brand_tag
 order by total_products desc limit 5 ;
 
  -- finding the top 5 brands who sold most number of products
 select brand_tag , sum(rating_count) as 'total_sells' from data 
 group by brand_tag
 order by total_sells desc limit 5;
 
-- finding the top 5 most expensive brands based on ther discounted price
 select brand_tag , round(avg(discounted_price)) as 'avg_price' from data 
 group by brand_tag
 order by avg_price desc limit 5;
 
 -- finding the top 5 least expensive brands based on ther discounted price
 select brand_tag , round(avg(discounted_price)) as 'avg_price' from data 
 group by brand_tag
 order by avg_price asc limit 5;
 
  -- finding the top 5 best selling product categories
 select product_tag ,sum(rating_count) as 'total_sells' from data 
 group by product_tag
 order by total_sells desc limit 5;
 
 -- finding the top 5 brands wo gives maximum discounts
 select brand_tag , avg(discount_percent) as 'avg_disccount' from data 
 group by brand_tag
 order by avg_disccount desc limit 5;

-- brand report card
select brand_tag,
sum(rating_count) as 'people_rated',
-- marked_price,
max(marked_price) as 'max_mar_price',
min(marked_price) as 'min_mar_price',
avg(marked_price) as 'avg_mar_price'
from data group by brand_tag;

-- which product category of any brand is sold the most
select brand_tag, product_tag, sum(rating_count) as 'total_sells' from data
group by product_tag, brand_tag
order by total_sells desc limit 5;

-- top 5 brands which have sold most number of t-shirts
select brand_tag, product_tag, sum(rating_count) as 'total_sells', avg(discounted_price) 
from data 
where product_tag='tshirts'
group by product_tag, brand_tag
order by total_sells desc limit 5;

-- top 5 brands which have sold most number of shirts
select brand_tag, product_tag, sum(rating_count) as 'total_sells', avg(discounted_price) 
from data 
where product_tag='shirts'
group by product_tag, brand_tag
order by total_sells desc limit 5;

-- top 5 brands which have sold most number of jeans
select brand_tag, product_tag, sum(rating_count) as 'total_sells', avg(discounted_price) 
from data 
where product_tag='jeans'
group by product_tag, brand_tag
order by total_sells desc limit 5;

-- top 5 brands which have sold most number of dresses
select brand_tag, product_tag, sum(rating_count) as 'total_sells', avg(discounted_price) 
from data 
where product_tag='dresses'
group by product_tag, brand_tag
order by total_sells desc limit 5;

-- most popular product listed on myntra
select product_name, count(product_name) as 'name_count' from data
group by product_name
order by name_count desc limit 10;

-- no of products sold for every rating(0-5)
select rating,count(rating) as 'freq' 
from data
where rating_count between 0 and 6
group by rating
order by freq desc limit 10
;
-- no of product sold for every rating by nike
select rating,count(rating) as 'freq' 
from data
where brand_tag='nike'
group by rating
order by freq desc limit 10;

-- no of product sold for every rating in tshirt category
select rating,count(rating_count) as 'freq' 
from data
where product_tag='tshirts'
group by rating
order by freq desc limit 10;

-- relation btwn price of tshirt and its rating wrt people rated
select product_tag, rating, round(avg(rating_count)) as 'product_count', round(avg(discounted_price))
from data
where product_tag='tshirts'
group by rating
order by rating asc;

-- find the average rating for each product category along with the no of products and total rating count
select product_tag, round(avg(rating_count)) as 'avg_rate_count', count(*) as 'total_products',sum(rating_count) as 'total_rate_count'
from data
group by product_tag
order by avg_rate_count asc;

-- find the brands with the highest average rating with the discounted price  greater than 5000
select brand_tag, round(avg(rating)) as 'avg_rating'
from data
where discounted_price>5000
group by brand_tag
order by avg_rating desc;
