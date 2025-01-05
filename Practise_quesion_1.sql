# Creating the database first !!
create database if not exists xyz;

# Using the new database -->
use xyz;

# Creating the table
create table employee_info(
	id int primary key,
    name varchar(20),
    salary int
);

# Displaying the structure of the created table !
-- desc employee_info;

# Inserting the values in the table
insert into employee_info values (1, "adam", 25000);
insert into employee_info values (2, "bob", 30000);
insert into employee_info values (3, "casey", 40000);

# displaying the data from the table
select * from employee_info;

-- drop table if exists employee_info;

# Creating another table
create table emp(
id int,
salary int default 25000
);

# Inserting the values
insert into emp (id) values (1);

select * from emp;