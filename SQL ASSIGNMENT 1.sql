# creating a database
create database school;
use college;
create table STUDENT(
Roll_no int,
Name varchar(20),
Marks int,
Grade char(1)
);
desc STUDENT;
insert into student values(101,'ami',25,'B'),
(102,'kasi',29,'A'),(103,'ninthin',29,'A');
SELECT * FROM STUDENT;
ALTER TABLE STUDENT ADD CONTACT int;
ALTER TABLE STUDENT DROP COLUMN GRADE;
RENAME TABLE STUDENT TO CLASSTEN;
SELECT * FROM CLASSTEN;
TRUNCATE TABLE CLASSTEN;
SELECT * FROM CLASSTEN;
DROP TABLE CLASSTEN;
DESC CLASSTEN;
