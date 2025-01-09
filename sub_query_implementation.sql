# Implementing sub query

create database if not exists sub_query;

use sub_query;

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

# Applying the sub_query
select avg(marks)
from student;

select name, marks
from student
where marks > 74.3333;

# Applying the sub query
select name, marks
from student
where marks > (select avg(marks) from student); # This is the dynamic way to perform this operation !!

# Solving another problem (find the name of all students with even roll numbers ) ?

select name, rollno
from student
where rollno in (
	select rollno
	from student where rollno % 2 = 0
);

# Another Example
select max(marks) from (select * from student where city = "Mumbai") as temp;

