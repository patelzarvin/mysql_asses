create database asses;
use asses;
create table worker(
WORKER_ID INT PRIMARY KEY,
FIRST_NAME varchar(50),
LAST_NAME varchar(50),
SALARY INT,
JOINING_DATE datetime,
DEPARTMENT VARCHAR(23)
);
select*from worker;

select *,date_format(joining_date,'%m/%d/%y %h:%i') as Joiningdate from Worker ;

#1]1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME 
#Ascending and DEPARTMENT Descending. 
select*from worker order by FIRST_NAME ;
select*from worker order by FIRST_NAME desc ;


#2].Write an SQL query to print details for Workers with the first names  
 #“Vipul” and “Satish”  from the Worker table.    

select*from worker where first_name in ("vipul","satish");

#3]Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and 
#contains six alphabets. 

SELECT *
FROM Worker
WHERE FIRST_NAME LIKE '_____h';

#4] Write an SQL query to print details of the Workers whose SALARY lies between 1. 

SELECT *
FROM Worker
WHERE SALARY BETWEEN 1000 AND 100000 order by SALARY;

#5] Write an SQL query to fetch duplicate records 
#having matching data in some fields of a table. 
SELECT DEPARTMENT,count(SALARY)
FROM Worker
group by DEPARTMENT;

#6. Write an SQL query to show the top 6 records of a table. 

SELECT*FROM WORKER ORDER BY WORKER_ID LIMIT 6;

#7. Write an SQL query to fetch the departments that have less than five people in them. 
SELECT DEPARTMENT,count(DEPARTMENT) < 5
FROM Worker
group by DEPARTMENT;

#8. Write an SQL query to show all departments along with the number of people in there. 
SELECT DEPARTMENT,count(WORKER_ID)
FROM Worker
group by DEPARTMENT;

#9. Write an SQL query to print the name of employees having the highest salary in each department. 
SELECT DEPARTMENT,MAX(SALARY)
FROM WORKER
GROUP BY DEPARTMENT;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE DATABASE SCHOOL ;
USE SCHOOL;
CREATE TABLE STUDENT(
StdID INT PRIMARY KEY auto_increment,
StDName VARCHAR(50),
Sex enum("MALE","FEMALE"),
Percentage decimal,
Class INT,
Sec VARCHAR(1),
Stream1 varchar(30),
DOB date);

#1 To display all the records form STUDENT table 
select*FROM STUDENT ;

#2 To display any name and date of birth from the table STUDENT.

SELECT StdName, DOB 
FROM student ; 

#3]To display all students record where percentage is greater of equal to 80 FROM student table
SELECT * FROM student WHERE percentage >= 80;  

#4]. To display student name, stream and percentage where percentage of student is more than 80 
SELECT StDName, Stream1, Percentage FROM STUDENT WHERE percentage > 80; 

#5] To display all records of science students whose percentage is more than 75 form student table. 
SELECT * from student WHERE stream1 = "science" AND percentage > 75; 