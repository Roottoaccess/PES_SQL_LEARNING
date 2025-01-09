create database if not exists mysql_view;

use mysql_view;

create table student(
	rollno int primary key,
	name varchar(50),
    marks int not null,
    grade varchar(1),
    city varchar(20)
);

insert into student (rollno, name, marks, grade, city)
values 
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "druv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

select * from student;

# Creating the view and implementing it !!
create view view1 as
select rollno, name from student;

# Operation on the view
select * from view1 where rollno = 102;

# We can also drop the view !
drop view view1;
