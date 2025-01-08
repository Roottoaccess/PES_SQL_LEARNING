create database if not exists demo;

use demo;

create table student(
	rollno int primary key,
	name varchar(50),
    marks int not null,
    grade varchar(1),
    city varchar(20)
);

drop table student;
# Inserting the values in the table !!
insert into student (rollno, name, marks, grade, city)
values 
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "druv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

select * from student;

# Changing the column name to full_name
alter table student
change name full_name varchar(50);

select * from student;

# Deleting all the student who scored marks less than 80....
delete from student
where marks < 80;

# Delete the column grade
alter table student
drop column grade;

