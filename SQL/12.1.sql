
CREATE database EMP;
USE EMP;
CREATE TABLE Employees (Emp_ID INT PRIMARY KEY,Emp_Name VARCHAR(50),Dept_ID INT,Salary INT);
CREATE TABLE Departments (Dept_ID INT PRIMARY KEY,Dept_Name VARCHAR(50),Location VARCHAR(50));
CREATE TABLE Projects (Project_ID INT PRIMARY KEY,Project_Name VARCHAR(50),Emp_ID INT,Budget INT);
INSERT INTO Departments (Dept_ID, Dept_Name, Location) VALUES
(101, 'HR', 'New York'),
(102, 'IT', 'Chicago'),
(103, 'Sales', 'Los Angeles'),
(104, 'Finance', 'Houston');
INSERT INTO Employees (Emp_ID, Emp_Name, Dept_ID, Salary) VALUES
(1, 'Alice', 101, 70000),
(2, 'Bob', 102, 85000),
(3, 'Charlie', 101, 60000),
(4, 'David', 103, 90000),
(5, 'Eve', NULL, 75000);
INSERT INTO Projects (Project_ID, Project_Name, Emp_ID, Budget) VALUES
(1, 'Alpha', 1, 50000),
(2, 'Beta', 2, 75000),
(3, 'Gamma', 3, 40000),
(4, 'Delta', 4, 60000),
(5, 'Epsilon', NULL, 55000);
select employees.emp_id,emp_name,dept_name,location,project_name,salary,budget
from employees left join departments on employees.Dept_ID=departments.dept_id left join projects.emp_id=employees.emp_id;
