# Learning about the select query
create database sel;

# using the database
use sel;

# Creating the table student
create table student(
	rollno int primary key,
	name varchar(50),
    marks int not null,
    grade varchar(1),
    city varchar(20)
);
# Inserting the values in the table !!
insert into student (rollno, name, marks, grade, city)
values 
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "druv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

# Select Queries----

select name, marks from student;

# Selecting the unique values from the column only !!
select distinct city from student;

# select the where clause
select * from student
where
marks >= 80;

# Adding the operators in the where clause
select * from student
where
marks + 10 > 100;

# Another where clause example
select * from student
where
marks + 10 > 100 and city = "Mumbai";


# Between parameter
select * from student
where
marks between 80 and 90;

# Using the In operator
select * from student
where
city in ("Delhi", "Mumbai");

# Using the NOT operator
select * from student
where
city not in ("Delhi", "Mumbai");


# When we need the data of only the limited student then we can use
select * from
student
where marks > 75
limit 3;

# Comming to the Order By Clause
select * from student order by city asc; # By default it will give you asending order !

# Trickey
select * from student order by marks desc limit 4;

# Aggregate functions -->(MAX)
select max(marks) from student;


# Applying the group by clauses
select city, count(name)
from student
group by city;

select city, max(marks) # Another Example for understanding it
from student
group by city;

# Practise Question -> Write the Query to find avg marks in each city in ascending order !!
select city, avg(marks)
from student
group by city
order by city asc;

# Another Question
select grade, count(name)
from student
group by grade
order by grade;

select * from student; # Displaying the query once !!

select city, count(rollno)
from student
group by city
having max(marks) > 90;

# Another query for proper!
select city
from student
where grade = "A"
group by city
having max(marks) > 94
order by city asc;

# Coming to the table related query 
# Update Query !!

set sql_safe_updates = 0; # Disable the safe update mode !

update student
set grade = "O"
where grade = "A";

select * from student;

# Updating marks of 105 to 92
update student
set marks = 92
where rollno = 105;

update student # Not working !!
set grade = "B"
where marks between 80 and 90;

select * from student;

# Applying the delete command !!
delete from student
where marks < 85;

select * from student;

# Another query !!
update student
set marks = marks + 1;
