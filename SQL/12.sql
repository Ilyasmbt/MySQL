create table courses(course_id int primary key,course_name varchar(50) not null);
CREATE TABLE Stdnt (Student_ID INT PRIMARY KEY, Student_Name VARCHAR(50) NOT NULL, Course_ID INT,

FOREIGN KEY (Course_ID) REFERENCES Courses(Course_ID) on delete cascade);

INSERT INTO Courses (Course_ID, Course_Name) VALUES (101," Mathematics"), (102, "Physics");

INSERT INTO Stdnt(Student_ID, Student_Name, Course_ID) VALUES

(1, "Alice", 101),

(2, "Bob", 102),

 (3, "Charlie", 101);

 delete from courses where course_id=102;

 select * from stdnt;
 select* from courses;

 insert into courses values (103, "english");

 insert into stdnt values (4, "nida",103);

 delete from courses where course_id=103;