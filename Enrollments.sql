use lec3;  -- select Database 
drop table students;  -- Drop old table to create new table by new data   -- Note that it is not possible to erase the moisturizer schedule with another schedule in foreign key 
use lec3;  
CREATE TABLE students (     -- create column in table students 
id INT PRIMARY KEY AUTO_INCREMENT,
name varchar(50),
brith_date date,
email varchar(100) unique);

insert into students values      -- insert data 
(1, "ahmed", "2025-10-15", "ahmed@gmail.com"),
(2, "eslam", "2025-1-16", "eslaim@gmail.com"),
(3, "eman", "2025-11-16", "eman@gmail.com"),
(4, "ali", "2025-12-20", "ali@gmail.com"),
(5, "tarek", "2025-9-22", "tarek@gmail.com");

select * from students; 

create table enrollments(                            -- create a new table who will attach with students table by foreign key 
id int primary key auto_increment,
student_id int,                                         -- A column will create and attach tables each athers 
course_name varchar(50) not null,   
enrollment_date date not null,
foreign key(student_id) references students(id)        -- select the column in enrollments table to attach with id column in students table 
on delete cascade      -- when delete row in students table delete the same row in enrollments table 
on update cascade);     -- update data in two tables

insert into enrollments values      -- insert data 
(1, 1, "C++", "2025-10-15"),
(2, 1, "Css", "2025-10-15"),
(3, 3, "Js", "2025-10-20"),
(4, 4, "Node JS", "2025-10-22"),
(5, 5, ".net", "2025-10-30"),
(6, 2, "ASP.Net", "2025-10-2");

select * from enrollments;

delete from students where id = 3;
update students SET id = 22 where name = "ali";