create database collage1; # Command to creating the database !!

# Good habit of creating the database !!
create database if not exists collage1; # Throwing an warning but not a error !!

# Using the database
use collage1;

# Creating the first table in the database
create table student(
id int primary key,
name varchar(50),
age int not null
);

# description of the table
desc student;

# Inserting data in the database
insert into student values(1, "Jeet", 24);
insert into student values(2, "Hrithik", 59);

# Displaying the data from the database
select * from student;
