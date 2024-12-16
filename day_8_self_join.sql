
use regex1;

create table employee(eid int, ename varchar(20), manager_id int);

insert into employee values
(10, "aman", null),
(20, "akshay", 30),
(30, "naina", 10),
(40, "abhishek", 30);

select * from employee;

select emp.eid, emp.ename, emp.manager_id, mgr.eid, mgr.ename 
from employee as emp join employee as mgr
where emp.manager_id = mgr.eid;