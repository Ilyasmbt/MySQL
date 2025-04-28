use corpus;
CREATE TABLE Charity (
    P_Id INT PRIMARY KEY,
    LastName VARCHAR(50),
    FirstName VARCHAR(50),
    Address VARCHAR(100),
    City VARCHAR(50),
    Contribution DECIMAL(10,2)
);
INSERT INTO Charity (P_Id, LastName, FirstName, Address, City, Contribution) VALUES
(1, 'Bindra', 'Jaspreet', '5B, Gomti Nagar', 'Lucknow', 3500.50),
(2, 'Rana', 'Monica', '21 A, Bandra', 'Mumbai', 2768.00),
(3, 'Singh', 'Jatinder', '8, Punjabi Bagh', 'Delhi', 2000.50),
(4, 'Arora', 'Satinder', 'K/1, Shere Punjab Colony', 'Mumbai', 1900.00),
(5, 'Krishnan', 'Vineeta', 'A-75, Adarsh Nagar', 'NULL', NULL);  -- Since City & Contribution are missing
select* from charity;
select lower(firstname) from charity;
select upper(lastname) from charity where city='mumbai';
select* from charity;
select p_id,substring(firstname,1,3) from charity;
select concat(firstname,lastname) as "full name" from charity;
select * from charity;
alter table charity add fullname varchar(100);
update charity set fullname=concat(firstname,' ',lastname);
set sql_safe_updates=false;
select p_id,length(address) from charity;
select substring(city,-2) from charity;
select firstname,lastname from charity where firstname like'%_at%'or '__at%';
select firstname,lastname from charity where firstname like'%_at%'and firstname like'%r';
select firstname,lastname from charity where firstname like'%a';
select position("a" in lastname ) from charity;
select trim(concat(firstname,lastname)) from charity;
select p_id,lastname,round(contribution) from charity;
select p_id,lastname,truncate(contribution,0) from charity;
select lastname,contribution,round(contribution/10) from charity;
