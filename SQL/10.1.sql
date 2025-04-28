	create table sttd	(	
			
ID	int,NAME	varchar(50),AGE	int,CID int);
insert into sttd (ID	,NAME,	AGE,	CID)values

(1,	'Dilna',	22,	3),
(2,	"Sneha"	,25,	2),
(3,	"Shahid"	,20,	3),
(4,	"anjana",	21	,1),
(5,	"Arsha",	26	,1),
(6,	"Nihal",	23	,2),
(7,	"Amal",	25,	4);
CREATE TABLE Course1 (
    ID INT PRIMARY KEY,
    CNAME VARCHAR(50),
    FEES INT,
    DURATION INT
);
INSERT INTO Course1 (ID, CNAME, FEES, DURATION) VALUES
(1, 'Data Science', 60000, 7),
(2, 'Data Analytics', 50000, 6),
(3, 'Business Analytics', 45000, 4),
(5, 'Software Testing', 35000, 3);
select sttd.name,course1.cname
from sttd inner join course1 
where sttd.cid=course1.id;
select count(name)
from sttd inner join course1 
where cname="business analytics" and sttd.cid=course1.id;
select sum(course1.fees) as total_fees_ds 
from sttd1 inner join course1 on sttd.cid=course1.id
where course1.cname="data science"   ;

