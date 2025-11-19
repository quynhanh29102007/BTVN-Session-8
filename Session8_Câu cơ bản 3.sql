create database catagories; 
use catagories;


create table books(
book_id INT primary key,
title VARCHAR(255),
author VARCHAR(50),
publication_year INT,
pages INT
);
create table borrowingrecords(
record_id INT primary key,
book_id INT,
foreign key(book_id) references books(book_id),
borrow_date DATE
);
-- 1. Sử dụng COUNT 
select COUNT(book_id) AS total_books
from books;
-- 2. Sử dụng SUM
select SUM(pages) AS total_pages_in_library
from books; 
-- 3. Sử dụng AVG 
select AVG(pages) AS average_pages_per_book
from books;
-- 4. Sử dụng MIN, MAX
select MAX(publication_year) AS oldest_book_year,
MIN(publication_year) AS newest_book_year 
from books;
-- 5. Ngày mượn sách đầu tiên
select MIN(borrow_date) AS first_borrow_date 
from borrowingrecords;
-- 6. Sử dụng với where
select * from books AS books_after_2000
where publication_year>2000