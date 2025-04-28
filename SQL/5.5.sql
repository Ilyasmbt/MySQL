create database corpus;
use corpus;
create table students(rollno int ,name varchar(20),class varchar(10),dob date, gender varchar(1),city varchar(20),marks int);
describe students;
INSERT INTO Students (RollNo, Name, Class, DOB, Gender, City, Marks) VALUES
(6, 'Marisla', 'XI', '1994-12-12', 'F', 'Dubai', 250),
(1, 'Nanda', 'X', '1995-06-06', 'M', 'Agra', 551),
(7, 'Neha', 'X', '1995-12-08', 'F', 'Moscow', 377),
(8, 'Nishant', 'X', '1995-06-12', 'M', 'Moscow', 489),
(2, 'Saurabh', 'XII', '1993-05-07', 'M', 'Mumbai', 462),
(3, 'Sonal', 'XI', '1994-05-06', 'F', 'Delhi', 400),
(5, 'Store', 'XII', '1995-10-08', 'M', 'Delhi', 369),
(4, 'Trisla', 'XII', '1995-08-08', 'F', 'Mumbai', 450); 
show tables;
select name,class from students;
alter table students modify RollNo int primary key;
select name,marks from students where marks<=400;
select * from students order by name desc;
select count(*)from students where gender="f" and class="x";
select * from students where name like"%s%";
select sum(marks) from students;
select gender,avg(marks)as "avg marks"  from students group by gender;
select name,class from students where marks between 450 and 550;
select name,max(marks) from students where class='XII';
select city,count(*) from students group by city;
alter table  students add  age int;
select * from students;
update students set age=16 where class='XI';
set sql_safe_updates=false;
delete from students  where rollno=5;
update students set age=15 where class='X';
update students set age=16 where name='neha';
update students set age=176 where name='saurabh' and name='trisla';
select * from students;
update students set age=17 where name in('saurabh','trisla');
select name,age from students order by age;







