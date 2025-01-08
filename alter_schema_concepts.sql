create database if not exists alter_schema;

use alter_schema;

# Creating the table student
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

# Learning about the alter command in sql !!
alter table student
add column age int;

# desc student;

# Dropping a column from the table
alter table student
drop column age;

# Rename a column from the table student
alter table student
rename to student_info;

select * from student_info; # Selecting with the new table name !!

# Changing a column name from the table
alter table student 
change name stu_name varchar(50); # This code is not working !!

# Using the truncate command to delete all the datas from the student table !!
truncate table student;

