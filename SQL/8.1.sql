use corpus;
create table emp1(employee_id int,first_name varchar(20),last_name varchar(20),department_id int,job_title varchar(20),salary int);
INSERT INTO Emp1 (employee_id, first_name, last_name, department_id, job_title, salary) VALUES
(101, 'Satish', 'Kumar', 1, 'Manager', 150000),
(102, 'Vishal', 'Singhal', 3, 'Assistant Manager', 100000),
(103, 'Vivek', 'Chauhan', 1, 'Executive', 75000),
(104, 'Geethika', 'Kaul', 2, 'Lead', 45000),
(105, 'Niharika', 'Chauhan', 3, 'Manager', 250000);
CREATE TABLE Dep1(
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    floor int
);
INSERT INTO Dep1 (department_id, department_name,floor) VALUES
(1, 'HR',2),
(2, 'IT',1),
(3, 'Finance',3);
select * from emp1;
select * from dep1;
select avg(emp1.salary) 
from  emp1 inner join dep1 on emp1.department_id=dep1.department_id 
where dep1.department_name='HR';