CREATE TABLE Dep2 (
    DepCode INT PRIMARY KEY,
    DepName VARCHAR(50) NOT NULL,
    Budget INT NOT NULL
);

CREATE TABLE emp3 (
    ECode INT PRIMARY KEY,
    LastName VARCHAR(50) NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    Department varchar(50));

INSERT INTO Dep2 (DepCode, DepName, Budget) VALUES
(101, 'Sales', 200000),
(102, 'Personnel', 150000),
(104, 'Accounts', 300000);

INSERT INTO emp3 (ECode, LastName, FirstName, Department) VALUES
(101, 'Sharma', 'Amit', 'sales'),
(102, 'Arora', 'Shiv', 'personnel'),
(103, 'Lakshmi', 'KS', 'accounts'),
(104, 'Rajlani', 'Shivika', 'Accounts'),
(105, 'Thakral', 'Satvik', 'sales');
select firstname,lastname from emp3;
select distinct(department) from emp3;
select * from emp3 where lastname='lakshmi';
SELECT * FROM Emp3
WHERE LastName IN ('Rajlani', 'Sharma');
SELECT ECode, FirstName FROM Emp3 
WHERE Department =  'Accounts';
SELECT DepName FROM Dep2 
WHERE Budget > 18000;
SELECT * FROM Emp3 
WHERE FirstName LIKE 'S%';
SELECT * FROM Dep2 
ORDER BY Budget DESC;
UPDATE Dep2 
SET DepName = 'Marketing' 
WHERE DepName = 'Sales';

UPDATE Emp3 
SET Department =  'marketing'
WHERE Department = 'sales'  ;

INSERT INTO Dep2 (DepCode, DepName, Budget) 
VALUES (105, 'IT', 250000);
select* from emp3;
select*from dep2;
