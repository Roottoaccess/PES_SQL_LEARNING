create database if not exists foreign_example;

# Using the database
use foreign_example;

# Creating the tables
create table department (
	id int primary key,
    name varchar(50)
);

# Creating another table
create table teacher(
	id int primary key,
    name varchar(20),
    department_id int,
    foreign key(department_id) references department(id)
    on update cascade # Update will happen in both the table !
    on delete cascade # Delete will happen in both the table !
);

# Inserting the data in the first table !!
insert into department (id, name) values (101,"Science"),
(102, "English"),
(103, "Maths");

# Inserting the data in the secound table !!
insert into teacher (id, name, department_id) values
(101, "Adam", 101),
(102, "Bob", 103),
(103, "Casey", 102),
(104, "Donald", 102);

select * from department; 
select * from teacher;

-- drop table if exists teacher;

# Updating information in the table one
update department
set id = 104
where name = "Maths";


