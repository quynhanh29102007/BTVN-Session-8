create database queries;
use queries; 

create table products(
product_id INT primary key,
product_name VARCHAR(150), 
price DECIMAL,
stock_quantity INT 
);
create table customers(
customer_id INT primary key,
customer_name VARCHAR(150),
city VARCHAR(50)
);
create table orders(
order_id INT primary key,
customer_id INT,
order_date DATE,
total_amount DECIMAL(15,2),
foreign key(customer_id) references customers(customer_id)
);
-- 1. Sử dụng lệnh COUNT 
select * from products AS total_products;
-- 2. Sử dụng SUM
select SUM(total_amount) AS total_revenue 
from orders;
-- 3. Sử dụng AVG
select AVG(price) AS average_price
from products;
-- 4. Sử dụng MIN và MAX
select MAX(total_amount) AS max_order_amount from orders;
select MIN(total_amount) AS min_order_amount from orders; 
-- 5. Kết hợp với Where
select * from customers AS hanoi_customers_count
where city = 'Hà Nội';