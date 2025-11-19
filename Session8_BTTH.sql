create database orders;
use orders;
create table orders (
order_id INT auto_increment primary key,
customer_name VARCHAR(150) not null,
product VARCHAR(150),
order_quanitity INT,
order_price DECIMAL,
country VARCHAR(150)
);
insert into orders 
values (1, 'John Doe', 'Laptop', 2, 800, 'USA'),
(2, 'Robert Luna', 'Smartphone', 1, 600, 'USA'),
(3, 'David Robin', 'Tablet', 3, 300, 'UK'),
(4, 'John Reinh', 'Laptop', 1, 800, 'UK'),
(5, 'Betty Doe', 'Headphones', 4, 50, 'UAE') ;
-- 1. COUNT 
select COUNT(*) AS tong_don_hang
from orders;
-- 2. SUM
select SUM(order_quantity) AS tong_so_luong_sp_da_ban
from orders;
-- 3. AVG
select AVG(order_price) AS gia_trung_binh
from orders;
-- 4. MIN 
select MIN(order_price) AS gia_thap_nhat
from orders;
-- 5. MAX 
select MAX(order_price) AS gia_cao_nhat
from orders;
-- 6. COUNT + GROUP BY
select order_id,
COUNT(*) AS so_don_hang
from orders
group by order_id;
-- 7. AVG + GROUP BY
select AVG(order_price) AS gia_trung_binh
from orders
group by order_price