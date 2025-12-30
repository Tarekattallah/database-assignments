use lec3;  -- select Database 
drop table teachers;  -- Drop old table to create new table by new data   -- Note that it is not possible to erase the moisturizer schedule with another schedule in foreign key 
use lec3;  
CREATE TABLE teachers(     -- create column in table teachers 
id INT PRIMARY KEY AUTO_INCREMENT,
Name varchar(50),
Salary DECIMAL(10,2),
Department enum('Front-End', 'Back-End', 'software', 'AWS'),
Hire_date date);

insert into teachers values      -- insert data 
(1, 'ahmed', '202555',"Back-End",'2025-12-12'),
(2, 'eslam', '205455', "Front-End",'2025-10-10'),
(3, 'eman', '120215', "AWS",'2025-9-9'),
(4, 'ali', '454151', "software",'2025-5-5' ),
(5, 'tarek', '102154', "Front-End",'2025-6-6');

select * from teachers; 

create table courses(                            -- create a new table who will attach with teachers table by foreign key 
id int primary key auto_increment,
teacher_id int,                                         -- A column will create and attach tables each athers 
course_name varchar(50) not null,   
foreign key(teacher_id) references teachers(id)        -- select the column in courses table to attach with id column in teachers table 
on delete cascade      -- when delete row in teachers table delete the same row in courses table 
on update cascade);     -- update data in two tables

insert into courses values      -- insert data 
(1, 1, "C++"),
(2, 3, "Css"),
(3, 3, "Js"),
(4, 4, "Node JS"),
(5, 5, ".net"),
(6, 2, "ASP.Net");

select * from courses;

delete from teachers where id = 1;
SET SQL_SAFE_UPDATES = 0;
update teachers SET id = 22 where name = "ali";


INSERT INTO courses (course_name, teacher_id)           
VALUES ('SQL Basics', 99);             -- Error Code: 1452    Cannot add or update a child row:        a foreign key constraint fails
