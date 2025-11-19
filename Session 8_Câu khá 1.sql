create database products;
use products; 

create table products (
product_id INT primary key,
product_name VARCHAR(150),
category VARCHAR(150), 
price DECIMAL
);
create table orders (
order_id INT primary key, 
customer_id INT,
order_date DATE,
total_amount DECIMAL
);
-- 1. Sử dụng group by
select category, COUNT(*) AS number_of_products 
from Products
group by category;
-- 2. Sử dụng group by và sum
select SUM(total_amount) AS total_spent
from orders
group by customer_id;
-- 3. Kết hợp nhiều hàm tổng hợp với group by 
select category,
COUNT(*) AS product_count, 
AVG(price) AS avg_price,
MAX(price) AS max_price,
MIN(price) AS min_price
from products 
group by category;
-- 4. Sử dụng having để lập nhóm
select customer_id,
SUM(total_amount) AS total_spent from orders
group by customer_id
having SUM(total_amount)>1000;
-- 5. Sử dụng having với count
select category,
COUNT(*) AS product_count
from products 
group by category
having COUNT(*)>5;
-- 6. Sử dụng group by, order by, limit
select customer_id,
SUM(total_amount) AS total_spent
from orders 
group by customer_id
order by total_spent DESC
limit 3