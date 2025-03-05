use regex2;

show tables;

create table emp(eid int primary key, name varchar(30));
insert into emp values (1, "aman"), (2, "shubham"), (3, "abc");
select * from emp;

create table emp_family(eid int, name varchar(20), father varchar(30));
insert into emp_family values (1, "aman", "raj"), (2, "shubham", "kamal"), (3, "abc", "aman"), (4, "ujjwal", "kaluram");
insert into emp_family
select * from emp_family;

select * from emp
where name in (select father from emp_family where emp.eid=emp_family.eid);


create table emp123(eid int primary key, name varchar(30), salary int, department_id int);
insert into emp123 values(1, "tushar", 900, 10), (2, "shubahm", 100, 10), (3, "aman", 50, 10), (4, "sakshi", 200, 11), (5, "naina", 300, 11);
select * from emp123;

-- i want to get * only for that emp should we greater than the avg salary for this department

select * from emp123
where salary > (select avg(salary) from emp123 as e 
				where emp123.department_id=e.department_id group by e.department_id);
                
                                
-- multi column subquery 
create table product123(pid int primary key, p_name varchar(30));
insert into product123 values (1, "phone"), (2, "tv"), (3, "gas");

create table order123(oid int primary key, product_id int, foreign key (product_id) references product123(pid));
insert into order123 values(101, 2), (102, 3), (103, 1), (104, 3);

select * from product123
where exists (
	select * from order123
    where product123.pid=order123.product_id
);

select * from product123
where not exists (
	select * from order123
    where product123.pid=order123.product_id
);