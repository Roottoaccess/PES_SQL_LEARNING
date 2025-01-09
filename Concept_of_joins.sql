# Creating the new database for performing the joining !
create database if not exists demo_joining;

# Use database
use demo_joining;

# Creating the first table student
create table student (
	student_id int primary key,
    name varchar(20)
);

# Creating the second table course
-- create table course (
-- 	foreign key (student_id) references student (student_id)
--     on update cascade
--     on delete cascade,
--     
--     course varchar(20)
-- ); # On foreign key it is not happening !

# Creating the second table course
create table course (
	student int,
    course varchar(20)
);

select * from student;
select * from course;

# Alter the column name
alter table course
change column student student_id int;

# Inserting the values to both the table
insert into student (student_id, name) values
(101, "adam"),
(102, "bob"),
(103, "casey");

insert into course (student_id, course) values
(102, "english"),
(105, "maths"),
(103, "science"),
(107, "computer science");

# Performing the INNER JOIN in this two tables !!
select *
from student
inner join course
on student.student_id = course.student_id;

# Adding alias in this above query
select * 
from student as s
inner join course as c
on s.student_id = c.student_id;

# performing the LEFT JOIN in this two tables !!
select *
from student as s
left join course as c
on s.student_id = c.student_id;

# Performing the RIGHT JOIN in this two tables !!
select *
from student as s
right join course as c
on s.student_id = c.student_id;

# Performing the FULL JOIN or FULL OUTER JOIN from this two tables !
# Left join
select *
from student as s
left join course as c
on s.student_id = c.student_id

union

select * from student as s
right join course as c on
s.student_id = c.student_id;

# Performing the LEFT EXCLUSIVE JOIN
select * from student as s
left join course as c
on
s.student_id = c.student_id
where c.student_id is null;

# Performing the RIGHT EXCLUSIVE JOIN
select * from student as s
right join course as c
on
s.student_id = c.student_id
where s.student_id is null;

# Performing the FULL EXCLUSIVE JOIN
select * from student as s
left join course as c
on
s.student_id = c.student_id
where c.student_id is null
union
select * from student as s
right join course as c
on
s.student_id = c.student_id
where s.student_id is null;

# Learning about the self join concept
create table employee(
	id int primary key,
    name varchar(50),
    manager_id int
);

insert into employee (id, name, manager_id) values 
(101, "adam", 103),
(102, "bob", 104),
(103, "casey", NULL),
(104, "donald", 103);

select * from employee;

# Performing the self join
select *
from employee as a
join employee as b
on a.id = b.manager_id;

select a.name as manager_name, b.name
from employee as a
join employee as b
on a.id = b.manager_id;