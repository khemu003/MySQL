use regex2;
drop table employees;
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    dept VARCHAR(20),
    salary INT
);

-- Inserting Data
INSERT INTO employees (dept, salary) VALUES
("hr", 200),
("hr", 300),
("hr", 100),
("marketing", 70),
("marketing", 50),
("marketing", 200),
("marketing", 400),
("marketing", 200),
("marketing", 600),
("dsa", 150),
("dsa", 120),
("dsa", 40),
("dsa", 90),
("dsa", 500);

SELECT dept,
 SUM(salary) FROM employees GROUP BY dept;
 
SELECT dept, 
AVG(salary) FROM employees GROUP BY dept;

SELECT dept, 
COUNT(*) FROM employees GROUP BY dept;

SELECT *, RANK() 
OVER (PARTITION BY dept ORDER BY salary) FROM employees;

SELECT *, DENSE_RANK() 
OVER (PARTITION BY dept ORDER BY salary) FROM employees;

SELECT *, ROW_NUMBER() 
OVER (PARTITION BY dept ORDER BY salary) FROM employees;

SELECT *, LAG(salary) 
OVER (PARTITION BY dept ORDER BY id) FROM employees;

SELECT *, LEAD(salary) 
OVER (PARTITION BY dept ORDER BY id) FROM employees;

SELECT *, NTILE(4) 
OVER (ORDER BY salary DESC) FROM employees;


-- to find the n highest salary

use sakila;

select * from payment;

select * from 
(SELECT amount, dense_rank() over(order by amount desc) as rating from payment) as rate_tab
where rating = 2;


-- CTE (Common Table Expression) ==> 
with cte as 
(SELECT amount, dense_rank() over(order by amount desc) as rating from payment)
select * from cte;


-- temporary table ==> that table that does not exist permanant
create temporary table temp_actor as select * from actor;
select * from temp_actor;

use sakila;

with 
cte1 as (select * from actor where actor_id>2),
cte2 as (select * from film_actor where film_id=30)
select cte1.actor_id, film_id from cte1  join cte2
where cte1.actor_id=cte2.actor_id;


-- recursive cte ==> utill some condition is satisty

with recursive num_table as
(select 1 as num
union
select num+1 from num_table where num<13)
select * from num_table;

select * from actor;
-- actor id , first name full name from the table where either the actor_id
-- > 5 or the name is nick

with recursive cte as
(select actor_id, first_name, concat(first_name, " " ,last_name) from actor where actor_id>5
union 
select actor_id, first_name, concat(first_name, " " ,last_name) from actor where first_name="NICK")
select * from cte;

