create table employeess(emp_id int primary key,name varchar(50),salary int,department varchar(20));
insert into employeess values
(1,'alice',50000,'hr'),
(2,'bob',null,'it'),
(4,'david',null,'marketing'),
(5,'eve',70000,null),
(3,null,60000,'finance');
select * from employeess;
select* from employeess where salary is null;
select* from employeess where salary is not null;
create view emp as select *  from employeess;
select* from emp;
select emp_id,name,ifnull(department,"sales") from employeess;
select emp_id,name,coalesce(salary,4000) from employeess;
select