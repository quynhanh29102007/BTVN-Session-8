create database employee;
use employee; 

create table employees (
employee_id INT primary key,
full_name VARCHAR(150),
department VARCHAR(15),
salary DECIMAL,
hire_date DATE
); 
-- 1. Sử dụng COUNT 
select COUNT(*) AS number_of_employees 
from employees;
-- 2. Sử dụng SUM
select SUM(salary) AS total_monthly_salary 
from employees;
-- 3. Sử dụng AVG
select AVG(salary) AS average_salary
from employees;
-- 4. Sử dụng MIN và MAX
select MAX(salary) AS highest_salary,
MIN(salary) AS lowest_salary
from employees; 
-- 5. Sử dụng kết hợp với where
select SUM(salary) AS it_department_salary
from employees
where department = 'it' 