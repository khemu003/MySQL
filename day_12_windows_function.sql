use sakila;

create table employees(dept varchar(20),salary int);

insert into employees(dept,salary) values("hr",2000),("it",4000),("it",2000),("marketing",2000),
("hr",2000),("dsa",5000),("dsa",6000);


# windows function 


select * from employees;
select *, (select sum(salary) from employees) from employees;

select * ,sum(salary) over() from employees;


select * ,sum(salary) over(partition by dept) from employees;


select sum(salary) from employees where dept="hr";

select * ,sum(salary) over(order by salary) from employees;

select * , sum(salary) over(partition by dept order by salary) from employees;


# analytical function is called windows function

select * , rank() over() from employees;  # all rank 1 

select * , rank() over(order by salary desc) from employees;     # rank bases on salary  if two rank is same to give a same rank and count number and then next rank start count number

select * , dense_rank() over(order by salary desc) from employees;  # rank bases in right form 

# row_number()

select * , rank() over(order by salary desc) ,
row_number() over(order by salary desc)
from employees;


# lead compare two value to set the first value right set
select *, lead(salary,1) over() from employees;

select *, lead(salary,1) over(partition by dept) from employees;





