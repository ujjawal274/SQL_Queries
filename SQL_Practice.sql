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

 /*
✅ LIMIT  */

SELECT * FROM restaurant
LIMIT 5;
SELECT * FROM restaurant 
ORDER BY price DESC 
LIMIT 3;
SELECT itemname, rating
FROM restaurant
ORDER BY rating DESC
LIMIT 4;

SELECT * FROM restaurant
ORDER BY price ASC
LIMIT 4;
SELECT itemname, price
FROM restaurant 
ORDER BY price DESC
LIMIT 5;
SELECT * FROM restaurant
WHERE available= 'Yes'
ORDER BY price DESC
LIMIT 3;
SELECT * FROM restaurant
WHERE category= 'Beverage'
ORDER BY rating DESC
LIMIT 2;
SELECT * FROM restaurant
WHERE price BETWEEN 100 AND 250
ORDER BY rating ASC
LIMIT 3;
SELECT * FROM restaurant
WHERE available= 'Yes'
ORDER BY rating DESC
LIMIT 5;
SELECT * FROM restaurant
WHERE category ='Pizza' OR category= 'Pasta'
ORDER BY price DESC
LIMIT 2;
SELECT * FROM restaurant
WHERE category IN ('Burger' ,'Beverage')
ORDER BY price ASC
LIMIT 3;

 /*
✅ DISTINCT */

SELECT DISTINCT category FROM restaurant;
SELECT DISTINCT rating FROM restaurant;
SELECT DISTINCT category ,available FROM restaurant;

SELECT DISTINCT available FROM restaurant;
SELECT DISTINCT category ,rating FROM restaurant;
SELECT DISTINCT category FROM restaurant
WHERE available= 'Yes' ;
SELECT DISTINCT rating FROM restaurant
WHERE price BETWEEN 100 AND 250;
SELECT DISTINCT available FROM restaurant
WHERE category= 'Beverage';
SELECT DISTINCT category FROM restaurant
ORDER BY category ASC;
SELECT DISTINCT rating  FROM restaurant
WHERE available= 'Yes'
ORDER BY rating DESC;
SELECT DISTINCT price FROM restaurant
WHERE category IN ('Burger' ,'Beverage')
ORDER BY price ASC;

 /*
✅ 5 Aggregate Functions */

SELECT count(*) FROM restaurant;
SELECT sum(price) FROM restaurant;
SELECT AVG(rating) FROM restaurant;
SELECT min(price) FROM restaurant;
SELECT max(price) FROM restaurant;

SELECT sum(price) FROM restaurant
WHERE category= 'Beverage' ;
SELECT count(*) FROM restaurant
WHERE available= 'Yes';
SELECT avg(price) FROM restaurant
WHERE category= 'Burger';
SELECT max( rating) FROM restaurant
WHERE available= 'NO';
SELECT min(rating) FROM restaurant
WHERE price BETWEEN 150 AND 300;

/* Mobile_Store */

CREATE TABLE MobileStore (
    MobileID INT PRIMARY KEY,
    Brand VARCHAR(30),
    Model VARCHAR(50),
    Price INT,
    RAM INT,
    Storage INT,
    Rating DECIMAL(2,1),
    InStock VARCHAR(5)
);

INSERT INTO MobileStore
(MobileID, Brand, Model, Price, RAM, Storage, Rating, InStock)
VALUES
(101, 'Samsung', 'Galaxy A35', 28999, 8, 128, 4.5, 'Yes'),
(102, 'Apple', 'iPhone 15', 79999, 6, 128, 4.8, 'Yes'),
(103, 'OnePlus', 'Nord CE 4', 24999, 8, 256, 4.4, 'Yes'),
(104, 'Xiaomi', 'Redmi Note 13', 18999, 6, 128, 4.2, 'No'),
(105, 'Realme', 'Narzo 70', 16999, 8, 128, 4.1, 'Yes'),
(106, 'Vivo', 'V30', 33999, 12, 256, 4.6, 'Yes'),
(107, 'Oppo', 'Reno 11', 29999, 8, 256, 4.3, 'No'),
(108, 'Motorola', 'Edge 50 Fusion', 27999, 12, 256, 4.7, 'Yes'),
(109, 'Google', 'Pixel 8a', 52999, 8, 128, 4.8, 'Yes'),
(110, 'Nothing', 'Phone 2a', 23999, 8, 256, 4.5, 'Yes'),
(111, 'Samsung', 'Galaxy M35', 21999, 6, 128, 4.3, 'Yes'),
(112, 'Apple', 'iPhone 14', 69999, 6, 128, 4.7, 'No'),
(113, 'OnePlus', '11R', 39999, 16, 256, 4.8, 'Yes'),
(114, 'Xiaomi', 'Redmi 13', 14999, 6, 128, 4.0, 'Yes'),
(115, 'Realme', 'GT 6T', 35999, 12, 256, 4.6, 'Yes'),
(116, 'Vivo', 'T3 Pro', 26999, 8, 256, 4.4, 'No'),
(117, 'Oppo', 'A79', 19999, 8, 128, 4.2, 'Yes'),
(118, 'Motorola', 'Moto G85', 17999, 8, 128, 4.3, 'Yes'),
(119, 'Google', 'Pixel 7a', 42999, 8, 128, 4.7, 'No'),
(120, 'Nothing', 'Phone 2', 44999, 12, 256, 4.8, 'Yes');

SELECT * FROM mobilestore;

SELECT count(*) FROM mobilestore;
SELECT sum(price) FROM mobilestore;
SELECT avg(rating) FROM mobilestore
WHERE brand= 'Samsung';
SELECT max(price) FROM mobilestore
WHERE instock= 'Yes';
SELECT min(price) FROM mobilestore 
WHERE ram= 8;
SELECT count(*) FROM mobilestore
WHERE price BETWEEN 20000 AND 40000;
SELECT sum(price) FROM mobilestore
WHERE brand IN ('Apple' ,'Samsung' );
SELECT avg(price) FROM mobilestore
WHERE storage= 256 AND instock= 'Yes' ;

SELECT count(*) AS Total_Mobiles FROM mobilestore;
SELECT count(*) AS Samsung_Brand_Mobiles  FROM mobilestore WHERE brand= 'Samsung';
SELECT count(*) AS Expensive_Mobiles FROM mobilestore WHERE price > 30000;
SELECT sum(price) AS Total_Price FROM mobilestore;
SELECT sum(price) AS Total_Price_Of_Apple FROM mobilestore WHERE brand= 'Apple';
SELECT avg(price) AS AVG_PRICE_OF_ONEPLUS FROM mobilestore WHERE brand= 'OnePlus';
SELECT max(rating) AS HIGHEST_RATING_MOBILE FROM mobilestore WHERE instock= 'Yes';
SELECT min(price) AS lowest_Price_256 FROM mobilestore WHERE storage= 256;

SELECT COUNT(*) AS Samsung_Mobiles FROM mobilestore 
WHERE brand= 'Samsung' ;
SELECT SUM(price) AS Apple_Total_Price FROM mobilestore
WHERE brand= 'Apple' ;
SELECT model, price FROM mobilestore
WHERE price > 30000 ORDER BY price DESC;
SELECT count(*) AS Total_Mobile FROM mobilestore WHERE ram= 8 AND storage= 256;
SELECT avg(rating)  AS Avg_Rating FROM mobilestore WHERE brand IN ('Samsung' ,'OnePlus');
SELECT brand, model, price FROM mobilestore WHERE price BETWEEN 20000 AND 40000
ORDER BY price ASC;
SELECT max(price) AS Expensive_Mobile FROM mobilestore WHERE instock= 'Yes' AND storage= 256;
SELECT count(*) AS Android_IN_Budget FROM mobilestore WHERE brand != 'Apple' AND price < 30000;
SELECT DISTINCT brand FROM mobilestore WHERE rating >= 4.5 ORDER BY brand ASC;
SELECT avg(price) FROM mobilestore 
WHERE brand IN ('Samsung' ,'OnePlus' ,'Motorola') 
AND price BETWEEN 20000 AND 40000 AND instock= 'Yes' AND ( storage= 256 OR ram= 12);

/*
✅ GROUP BY */

SELECT brand , count(*) AS Total_Mobiles FROM mobilestore GROUP BY brand;
SELECT brand , avg(price) AS Avg_Price FROM mobilestore GROUP BY brand;
SELECT brand , max(price) AS Highest_Price FROM mobilestore GROUP BY brand;
SELECT brand , min(price) AS Lowest_Price FROM mobilestore GROUP BY brand;
SELECT ram , count(*) AS Total_Mobiles FROM mobilestore GROUP BY ram;
SELECT storage, avg(price) AS Avg_Price FROM mobilestore GROUP BY storage;
SELECT brand, max(rating) AS Highest_Rating FROM mobilestore GROUP BY brand;
SELECT instock, count(*) AS Total_Mobile FROM mobilestore GROUP BY instock;

SELECT brand, count(*) AS Total_Mobile FROM mobilestore 
GROUP BY brand 
ORDER BY brand ASC;
SELECT brand, avg(price) AS Avg_Price FROM mobilestore
GROUP BY brand 
ORDER BY avg(price) DESC;
SELECT ram, count(*) AS Total_Mobile FROM mobilestore 
WHERE instock= 'Yes'
GROUP BY ram ;
SELECT storage, max(price) AS Highest_Price FROM mobilestore
WHERE price > 20000
GROUP BY storage;
SELECT brand, min(rating) FROM mobilestore 
WHERE storage= 256
GROUP BY brand;
SELECT brand, count(*) AS Total_Mobiles FROM mobilestore
WHERE price BETWEEN 20000 AND 40000
GROUP BY brand
ORDER BY Total_Mobiles DESC;
SELECT ram, avg(price) AS Avg_Price FROM mobilestore 
WHERE brand IN ('Samsung','OnePlus','Motorola')
GROUP BY ram;
SELECT brand, max(rating) AS Highest_Rating FROM mobilestore 
WHERE instock= 'Yes'
AND price > 20000
GROUP BY brand
ORDER BY max(rating) DESC;


 /*
✅ HAVING Clause */

SELECT brand, count(*) AS Total_Mobiles FROM mobilestore 
GROUP BY brand
HAVING Total_Mobiles >= 2;
SELECT ram, avg(price) AS Avg_Price FROM mobilestore
GROUP BY ram
HAVING Avg_Price > 30000;
SELECT storage, max(price) AS Highest_Price FROM mobilestore
GROUP BY storage
HAVING Highest_Price > 50000;
SELECT brand, min(rating) AS min_rating FROM mobilestore
GROUP BY brand
HAVING min(rating) >= 4.5;
SELECT brand, count(*) AS total_mobile FROM mobilestore
WHERE instock= 'Yes'
GROUP BY brand
HAVING count(*) >= 2;
SELECT ram, avg(price) AS Avg_Price FROM mobilestore
WHERE price > 20000 
GROUP BY ram
HAVING avg(price) > 30000;
SELECT storage, count(*) AS total_mobile FROM mobilestore
WHERE brand IN ( 'Samsung' ,'Oneplus' ,'Apple')
GROUP BY storage
HAVING count(*) >= 3;
SELECT brand, max(rating) AS highest_rating FROM mobilestore
WHERE instock= 'Yes' AND price BETWEEN 20000 AND 50000 
GROUP BY brand
HAVING highest_rating >= 4.6
ORDER BY highest_rating DESC;















