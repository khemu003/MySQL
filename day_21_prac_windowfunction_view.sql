show databases;
use bank;
show tables;
select * from student;

select count(*) from student;


insert into student 
values(10,"Rahul","Ba","jaipur"),(40,"Shyam","bca","noida");

select * from student;

select id,count(name) from student group by id;

use  sakila;

show tables;

select * from employees;

select *, (select sum(salary)  from employees) from employees;

select salary,sum(Salary)   over() as "Total_Salary" from employees;

select * ,sum(salary) over(partition by dept  order by salary) as "Total_Salary" from employees;

select * ,sum(salary) over(partition by dept  ) as "Total_Salary" from employees order by Total_salary;


select *,row_number() over() from employees;

select *,row_number() over(partition by dept) from employees;

select *,rank() over(order by dept  ) as "Rank" ,dense_rank() over( order by dept  ) as "nn" from employees;

select * ,lead(dept) over(order by dept) from employees;

select * ,lag(dept) over( order by dept) from employees;



--  View in sql

use sakila;

select * from actor;
select * from film_actor;



select a.actor_id,a.first_name,fm.film_id from actor as a join film_actor as fm on a.actor_id = fm.actor_id ;

SELECT 
    actor_id, first_name, COUNT(actor_id)
FROM
    actor
WHERE
    actor_id = 1
GROUP BY first_name;

CREATE OR REPLACE VIEW V1 AS
SELECT 
    ACTOR.actor_id, 
    ACTOR.first_name, 
    COUNT(FILM_ACTOR.film_id) AS film_count
FROM 
    actor
JOIN FILM_ACTOR ON ACTOR.ACTOR_ID =  FILM_ACTOR.ACTOR_ID
WHERE 
    ACTOR.first_name = 'PENELOPE' 
	AND
    ACTOR.actor_id = 1
GROUP BY 
    ACTOR.actor_id, first_name;


SELECT * FROM V1;

SELECT FIRST_NAME, FILM_COUNT  FROM V1;



use deepak;
show tables;

CREATE TABLE Emp (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    managerId INT
);

INSERT INTO Emp (id, name, department, managerId) VALUES 
(1, 'John', 'HR', NULL),
(2, 'Bob', 'HR', 1),
(3, 'Olivia', 'HR', 1),
(4, 'Emma', 'Finance', NULL),
(5, 'Sophia', 'HR', 1),
(6, 'Mason', 'Finance', 4),
(7, 'Ethan', 'HR', 1),
(8, 'Ava', 'HR', 1),
(9, 'Lucas', 'HR', 1),
(10, 'Isabella', 'Finance', 4),
(11, 'Harper', 'Finance', 4),
(12, 'Hemla', 'HR', 3),
(13, 'Aisha', 'HR', 2),
(14, 'Himani', 'HR', 2),
(15, 'Lily', 'HR', 2);


select * from emp;

select * from emp as e1  join emp as e2 where e1.id = e2.managerId;

select e1.*,e2.managerId from emp as e1  join emp as e2 where e1.id = e2.managerId;


select e1.*,count(e2.managerId) over(partition by e2.managerID order by e2.managerID) as cnt from emp as e1  join emp as e2 where e1.id = e2.managerId;

-- WRITE A SQL QUERY TO FIND MANAGER NAME WHO MANAGE MORE THAN 4 EMPLOYEE 

with cte as (
select e1.*,count(e2.managerId) over(partition by e2.managerID order by e2.managerID) as 
cnt from emp as e1  join emp as e2 where e1.id = e2.managerId)
select name  as ManagerNamefrom ,count(1) as emp_no from  cte where cnt >=4 group by name;



