use rajc;
select * from data;
-- selecting product nme ending with 's'
select product_name from data where product_name like '%s';

-- selecting the products whose brand name contains 'ad'
select product_name,brand_name from data where brand_name like '%ad%';

-- selecting the products whose brand name starts with p and ends with s
select product_name,brand_name from data where brand_name like 'p%s';

-- selecting the products whose brand name is exactly 6 characters
select product_name,brand_name from data where brand_name like '______';

-- selecting the products whose brand name second character is s
select product_name,brand_name from data where brand_name like '_s%'
