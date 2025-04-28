create database bca_students;
use bca_students;
create table bca(id int,name varchar(20),class varchar(20), mark int,gender varchar(20));
describe bca;
insert into bca values(1,"ilyas","four",88,"male"),
(2,"musi","five",77,"male"),(3,"abu","five",66,"male"),(4,"john","three",77,"male"),(5,"adhi","three",77,"female");
select* from bca;