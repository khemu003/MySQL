use employees;

select * from employees;

select * from dept_emp;

select *from titles;

select emp_no,first_name from employees;



# find hire date where employees.hire_Date = dept.from_date
# co Releted sub query
select emp_no ,first_name ,hire_date
from employees where hire_Date in 
	(select from_date from  dept_emp 
			where emp_no = employees.emp_no);
            
select * from employees;
select * from titles;

select emp_no,first_name,birth_date from employees as e
		(select title from titles where  emp_no = employees.emp_no and title = "manager");


select emp_no,
title from titles where title = "manager";

select first_name , e.emp_no ,title from employees as e join titles where 
e.emp_no  = titles.emp_no and  title = "manager"; 


select first_name ,emp_no 
from employees  as e  where emp_no in ( select emp_no from titles where emp_no = e.emp_no
 and title = "manager") ;
 
select emp_no, first_name,birth_date from employees
where emp_no in (select emp_no from titles where emp_no = employees.emp_no and title ='Manager');


-- any to get the emp_no , first_name of employees for those employees where  the hiring date of 
-- employees is greter than  the oldest date of from_date column

select * from employees;
select * from titles;

select emp_no ,first_name ,hire_Date from employees where hire_date > any (select from_date from titles);


-- emp_no ,first_name ,hire_Date of employees   currently work as a   "assistant engineer "  and hire_Date  
-- less than for the same eemplpyees working on manager position 

select * from employees;
select * from titles;

select * from titles where title= "assistant Engineer" ;

-- select e.emp_no,e.hire_date,title  from titles join employees as e where title= "assistant engineer" < any
-- (select  e.hire_date from titles join employees as e where title= "manager" );

select emp_no , first_name ,hire_Date  from employees  
join  titles  using (emp_no)
where title = "Assistant Engineer"
and hire_date  < any  
(select hire_date from employees join titles using (emp_no) where title = "manager");



# Learning Assignment 24/12/2024
# Views in sql
# what are the usages of Views 
# What are indexes and why they are helpful 




