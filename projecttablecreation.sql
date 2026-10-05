-- tables creation
create database project12;
use project12;
-- depart creation
create table departments(d_id varchar(20) primary key,
d_name varchar(30),
block_name varchar(30),
hod_name varchar(30));
-- students table creation
create table students(rollno varchar(30) primary key,
name varchar(30) NOT NULL,
phn varchar(11) unique,
email varchar(30) unique,
year_ int check(year_<=4 and year_>=1),
d_id varchar(20),
foreign key(d_id) references departments(d_id));
-- faculty table creation 
create table faculty(f_id varchar(30) primary key,
f_name varchar(30) NOT NULL,
salary int check(salary>0),
designation varchar(20),
d_id varchar(30),
foreign key(d_id) references departments(d_id));
-- courses table craetion
create table course(c_id varchar(20) primary key,
c_name varchar(30),
credits int  check(credits>=0),
d_id varchar(30),
foreign key(d_id) references departments(d_id)); 
-- creating attendance table
create table attendance(s_id varchar(30),c_id varchar(30),
c_held int,c_attended int,
foreign key(s_id) references students(rollno),
foreign key(c_id) references course(c_id));
-- creating marks table
create table marks(s_id varchar(20),c_id varchar(20),
mid1 int ,
mid2 int ,
external int,
foreign key(s_id) references students(rollno),
foreign key(c_id) references course(c_id));










