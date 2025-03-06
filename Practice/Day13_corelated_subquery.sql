use employees;

select * from employees;

select * from departments;

select * from salaries;

select * from titles;

desc employees;
desc titles;

-- now get those employee number where the salary is less than the salary of employee 10003;
select * from salaries where salary <all (select salary from salaries where emp_no=10003);

-- find out the emp_no, name, title
select e.emp_no, e.first_name, t.title from employees as e join titles as t
where e.emp_no = t.emp_no and title="Manager";

select e.emp_no, e.first_name, t.title from employees as e join titles as t
where e.emp_no = t.emp_no and title<>"Manager";

-- i need to get emp_no, first_name, last_name, title from this table where current poistion manager and also worked on any other position

select e.emp_no, e.first_name, e.last_name, t.title 
from employees as e join titles as t on e.emp_no = t.emp_no 
where t.title='manager' and  e.emp_no in (select e.emp_no from employees as e 
join titles as t on e.emp_no = t.emp_no 
where t.title != 'manager');


select distinct e.emp_no , e.first_name,e.last_name , t.title 
from employees
as e join titles as t using (emp_no) 
 JOIN titles AS t2 using (emp_no)
WHERE t.title = 'Manager' 
AND t2.title <> 'Manager';


-- i need to get emp_no, first_name, titles and hire date for all the employee

select e.emp_no, e.first_name, e.last_name, t.title, e.hire_date
from employees as e join titles as t
on e.emp_no=t.emp_no where title="Assistant Engineer";

-- i need to get all the info for assistant engineer where hire date is before the haring date of any manager position

select e.emp_no,e.first_name,e.last_name,t.title,e.hire_date from employees as e join titles as t
on e.emp_no=t.emp_no 
where t.title = 'assistant engineer' and 
e.hire_date < any (select e.hire_date from employees as e join titles as t
					on e.emp_no=t.emp_no 
                    where t.title != 'assistant engineer');
                    
                    
                    
-- from the titles table get the emp_no, title and the year of the hiring date for the current maanager poistion
-- where the person has been promated in the same year if his working on any position

select emp_no, year(form_date) as fd from titles where title = "manager"
and (emp_no, year(from_date)) >any
	(
    select emp_no, year(from_date) from titles
    where )