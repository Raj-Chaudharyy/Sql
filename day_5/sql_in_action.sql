use rajc;

create database rajc;
-- showing the dataset
select * from data; 

-- showing specific column
select product_name,brand_name from data;

-- create new column with mathmatical functions|makinng discounted amount
select product_name, brand_name, marked_price, discounted_price, marked_price-discounted_price as discounted_amount from data;
-- create new column with mathmatical functions|making rating count + rating
select product_name, brand_name, rating, rating_count, rating + rating_count as rating_filter from data;

-- create new column with mathmatical functions|making
select product_name, brand_name, marked_price, discounted_price, ((marked_price-discounted_price)/marked_price)*100 as discount_percentage from data;

-- finding unique values
select distinct (brand_name) from data;

-- adding where clause
select  product_name, brand_name, marked_price, discounted_price from data where brand_tag='puma';

-- adding distinct with where| unique products served by adidas
select distinct (product_name), brand_name from data where brand_tag='adidas';

-- adding distinct with where| unique products served by adidas
select count(distinct (product_name)) from data where brand_tag='adidas';

-- product with multiple whereclause with and
select product_name, brand_name, marked_price, discounted_price from data where brand_tag='adidas' and discounted_price >8000 ;
select product_name, brand_name, marked_price, discounted_price from data where discounted_price >8000 and discounted_price <11000 ;

-- products with between
select product_name, brand_name, marked_price, discounted_price from data where discounted_price between 5000 and 8000 ;

-- adding more filters
select product_name, brand_tag, marked_price, discounted_price from data 
where (discounted_price between 5000 and 8000) and brand_tag='adidas' and rating >4;

-- lets go one step ahead
select product_name, brand_tag, marked_price, discounted_price from data 
where (discounted_price between 3000 and 8000) and 
brand_tag='adidas' and 
rating >4 and
rating_count > 10;

-- one more
select count(distinct(product_tag)) from data where brand_tag='adidas';

-- or
select product_name,product_tag,brand_tag,discounted_price from data
where (brand_tag='adidas' or brand_tag='puma') and discounted_price between 3000 and 5000;

-- using not
select product_name,product_tag,brand_tag,discounted_price from data
where not(brand_tag='adidas' or brand_tag='puma') and discounted_price between 3000 and 5000;

-- using insert
select product_name,product_tag,brand_tag,discounted_price from data
where brand_tag in ('adidas','puma') and discounted_price between 3000 and 5000;

-- using not in
select product_name,product_tag,brand_tag,discounted_price from data
where brand_tag not in ('adidas','puma') and discounted_price between 3000 and 5000;



