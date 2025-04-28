use corpus;
CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    Dept_ID INT,
    Name VARCHAR(50),
    City VARCHAR(50),
    Salary INT
);
INSERT INTO Employees (ID, Dept_ID, Name, City, Salary) VALUES
(1, 1014, 'Ajay', 'Bangalore', 58000),
(3, 1003, 'Anjali', 'Bangalore', 34000),
(6, 1023, 'Rajni', 'Mumbai', 56000),
(7, 1003, 'Zaid', 'Mumbai', 29000),
(8, 1249, 'Bob', 'NY', 87000);
select * from employees;
create table emp2(emp_id int, emp_name varchar(20), working_date date, working_hours int);

describe emp2;

insert into emp2 values(1, "Ajeet", "2015-01-24",12), (2, "Ayun", "2015-01-24",11),
(3, "Milan", "2015-01-24",11),
(4, "Ruchi","2015-01-24",10),
(1, "Ajeet", "2015-01-25",10),
(2, "Ayan", "2015-01-25",10),
(4, "Ruchi", "2015-01-25",7),
(3, "Milan","2015-01-25",18),
(1,"Aleet", "2015-01-26",9);
select * from emp2;
select sum(working_hours) from emp2;
select emp_name,sum(working_hours) as "total_working_hours" from emp2 group by emp_name;
select emp_name,min(working_hours) as "minimum_working_hours" from emp2 group by emp_name;
select emp_name,sum(working_hours) as "total_working_hours" from emp2 where emp_name="ajeet";
select emp_name,sum(working_hours) as "total_working_hours" from emp2 group by emp_name having sum(working_hours)>15;

select working_date,count(*) from emp2 group by working_date;
select * from emp2 limit 1;