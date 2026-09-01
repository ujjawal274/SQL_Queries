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
 SELECT Name , City 
 FROM Students 
 WHERE Age <= 22;
 SELECT ID, Name, Age
 FROM Students
 WHERE City = 'Pune';
 SELECT Name 
 FROM Students
 WHERE City = 'Jaipur' AND Age = 21;
 
 SELECT EmpName, Salary
 FROM Employees;
 SELECT * FROM Employees
 Where Salary > 20000;
 SELECT * FROM Employees
 WHERE Department = 'Finance';
 SELECT EmpName, Department
 FROM Employees
 WHERE Salary >= 18000;
 SELECT * FROM Employees
 WHERE Salary < 25000;
 SELECT EmpName FROM Employees
 WHERE Department = 'HR' AND Salary = 25000;
 SELECT EmpID, EmpName, Salary
 FROM Employees 
 WHERE Salary > 15000 AND Salary < 23000;
 SELECT Department FROM Employees
 WHERE EmpName = 'Raj' ;
 SELECT * FROM Employees
 WHERE Department = 'Sales' AND Salary = 15000;
 SELECT * FROM Employees
 WHERE Department = 'HR' OR Department = 'Finance';
 SELECT * FROM Employees
 WHERE Salary > 18000 AND Department = 'Game Developer';
 SELECT * FROM Employees
 WHERE Department = 'Finance' OR Salary = 25000;
 SELECT * FROM Employees
 Where NOT Department = 'Sales';
 SELECT * FROM Employees
 WHERE Salary > 18000 AND Salary < 25000;
 SELECT * FROM Employees
 WHERE Department = 'Finance' OR Department = 'HR' 
 AND Salary >= 20000;
 SELECT * FROM Employees
WHERE NOT Department = 'Game Developer' AND Salary < 23000;
 
 SELECT * FROM Employees
 WHERE Department = 'Sales' AND Salary = 15000;
 
 SELECT * FROM Employees
 WHERE Department = 'HR' AND Salary = 20000;
 SELECT * FROM Employees
 WHERE Department = 'Game Developer' AND Salary = 23000;
 SELECT *
FROM Employees
WHERE NOT (Department = 'HR' OR Salary > 20000);

SELECT EmpName ,Department 
FROM Employees;
SELECT * FROM Employees
WHERE Salary = 20000;
SELECT EmpName, Salary
FROM Employees
WHERE Department = 'HR';
SELECT * FROM Employees
WHERE Salary > 18000;

SELECT * FROM Employees
WHERE Department = 'Finance' AND Salary = 20000;
SELECT * FROM Employees
WHERE Department = 'Sales' OR Department = 'HR';
SELECT EmpID, EmpName, Salary
FROM Employees
WHERE Salary > 15000 AND Salary < 25000;
SELECT EmpName, Department
FROM Employees
WHERE Department != 'Game Developer';

SELECT * FROM Employees
WHERE (Department = 'Finance' OR Department = 'HR')
AND Salary >= 20000;
SELECT EmpName FROM Employees
WHERE Salary < 23000 
AND Department != 'Sales' ;
     
 WHERE NOT Department = 'Game Developer' AND Salary < 23000;

/*
✅ IN  */

SELECT * FROM Employees 
WHERE Department IN ('HR' ,'Game Developer');
SELECT * FROM Employees
WHERE Salary IN (15000 ,20000 ,25000);
SELECT EmpName , Department 
FROM Employees
WHERE Department IN ('Finance' ,'Sales' ,'Web Developer' );

SELECT * FROM Employees
WHERE Department IN ('Finance' ,'HR' ); 
SELECT * FROM Employees
WHERE Salary IN (18000 ,23000 );
SELECT EmpName ,Department 
FROM Employees 
WHERE Department IN ('Sales' ,'Finance' ,'HR');
SELECT EmpName ,Salary
FROM Employees
WHERE Salary IN (15000 ,18000 ,23000 );
SELECT * FROM Employees
WHERE Department IN ('HR' ,'Game Developer' )
AND Salary IN (23000 ,25000 );
SELECT EmpName FROM Employees
WHERE Department IN ('Finance' ,'HR' ,'Web Developer')
AND Salary IN  (18000 ,20000 ,25000 );
SELECT * FROM Employees
WHERE Department IN ('Sales' ,'Finance' ,'HR')
AND Salary != 18000 ;
SELECT * FROM Employees
WHERE Department IN ('Finance' ,'Game Developer' );

/*
✅ BETWEEN  */

SELECT * FROM Employees
WHERE Salary BETWEEN 15000 AND 20000;
SELECT * FROM Students
WHERE Age BETWEEN 21 AND 23;
SELECT EmpName ,Salary
FROM Employees
WHERE Salary BETWEEN 18000 AND 25000;

-- Table Created By Me --

CREATE table Flowers (
ID INT PRIMARY KEY,
FlowerName VARCHAR(50),
City VARCHAR(50),
Price INT
);

INSERT into Flowers(ID ,FlowerName ,City ,Price)
values
(101 ,'Lily' ,'Patna' ,2700 ),
(102 ,'Lotus' ,'Vrindawan' ,2400);

SELECT * FROM Flowers;

-- New Table --

CREATE TABLE Restaurant (
    ItemID INT PRIMARY KEY,
    ItemName VARCHAR(50),
    Category VARCHAR(30),
    Price INT,
    Rating DECIMAL(2,1),
    Available VARCHAR(5)
);

INSERT INTO Restaurant
(ItemID, ItemName, Category, Price, Rating, Available)
VALUES
(101, 'Veg Burger', 'Burger', 120, 4.2, 'Yes'),
(102, 'Chawmin Burger', 'Burger', 180, 4.5, 'Yes'),
(103, 'Margherita Pizza', 'Pizza', 350, 4.6, 'Yes'),
(104, 'Farmhouse Pizza', 'Pizza', 450, 4.8, 'No'),
(105, 'French Fries', 'Snacks', 100, 4.1, 'Yes'),
(106, 'Cold Coffee', 'Beverage', 150, 4.3, 'Yes'),
(107, 'Cappuccino', 'Beverage', 200, 4.7, 'No'),
(108, 'Pasta Alfredo', 'Pasta', 280, 4.4, 'Yes'),
(109, 'Veg Sandwich', 'Sandwich', 140, 4.0, 'Yes'),
(110, 'Chocolate Shake', 'Beverage', 220, 4.6, 'Yes');

SELECT * FROM Restaurant
WHERE Price BETWEEN 100 AND 180;
SELECT ItemName ,Price 
FROM Restaurant
WHERE Price BETWEEN 150 AND 250;
SELECT * FROM Restaurant
WHERE Rating BETWEEN 4.2 AND 4.6;
SELECT ItemName ,Category ,Price
FROM Restaurant
WHERE Price BETWEEN 120 AND 220;
SELECT * FROM Restaurant
WHERE Available = 'Yes' 
AND Price BETWEEN 100 AND 200;
SELECT * FROM Restaurant
WHERE Category= 'Beverage'
AND (Price BETWEEN 150 AND 250);
SELECT * FROM Restaurant
WHERE (Rating BETWEEN 4.5 AND 4.8)
AND Available= 'Yes';
SELECT * FROM Restaurant
WHERE (Category= 'Pizza' OR  Category='Pasta')
AND (Price BETWEEN 250 AND 500);

 /*
✅ ORDER BY  */

SELECT * FROM Restaurant 
ORDER BY price ASC;
SELECT ItemName, Price
FROM Restaurant
ORDER BY Price DESC;
SELECT ItemName, Rating
FROM Restaurant
ORDER BY Rating DESC;

SELECT * FROM restaurant
ORDER BY itemname;
SELECT * FROM restaurant
ORDER BY itemname DESC, price desc;
-- Doubt --
SELECT * FROM restaurant
WHERE available= 'Yes'
ORDER BY price ;
SELECT * FROM restaurant
WHERE category= 'Beverage' 
ORDER BY rating DESC;
SELECT * FROM restaurant
WHERE price BETWEEN 100 AND 250
ORDER BY rating DESC;
SELECT * FROM restaurant
ORDER BY category , price ASC;
SELECT * FROM restaurant
ORDER BY rating DESC, itemname ASC;
SELECT * FROM restaurant
ORDER BY category ASC, price DESC;




