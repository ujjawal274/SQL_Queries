Create database data_analyst;
use data_analyst;

select database();

CREATE TABLE Students (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    City VARCHAR(50)
);

INSERT INTO Students (ID, Name, Age, City)
VALUES
(1, 'Rahul', 22, 'Delhi'),
(2, 'Aman', 25, 'Patna'),
(3, 'Priya', 20, 'Mumbai'),
(4, 'Neha', 23, 'Pune'),
(5, 'Rohit', 21, 'Jaipur');

/*
✅ SELECT *
✅ Single Column
✅ Multiple Columns */

select * from Students;
SELECT Name, Age FROM students;
SELECT City FROM Students;

/*
✅ AS Alias  */

SELECT Name as Student_Name FROM Students;
SELECT Age as Student_Age FROM Students;
SELECT 
Name as Student_Name,
Age as Student_Age,
City as Student_City
FROM Students;

/*
✅ WHERE Claus  */

SELECT * FROM Students
Where City = 'Mumbai' ;
SELECT * FROM Students
Where Age = 25;
SELECT * FROM Students
Where Name = 'Rohit';
SELECT Name , City
FROM Students
Where City = 'Patna';
SELECT * FROM Students
Where Age > 22;
SELECT * FROM Students
Where Age >= 22;
SELECT * FROM Students
Where Age < 22;
SELECT * FROM Students
Where City != 'Delhi';
SELECT Name, Age 
FROM Students
Where Age > 23;

CREATE table Employees (
 EmpID Int Primary Key,
 EmpName Varchar(50),
 Department Varchar(50),
 Salary Int
 );
 
 INSERT into Employees(EmpID,EmpName,Department,Salary)
 values
 (101, 'Ritik' , 'Sales' , 15000),
 (102,'Suraj' , 'Finance' ,20000),
 (103, 'Vikash' , 'HR' , 25000),
 (104, 'Raj' , 'Web Developer' , 18000),
 (105, 'Kunal' , 'Game Developer' , 23000)
 ;
 
 SELECT * FROM Employees;




