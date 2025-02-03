

CREATE TABLE Item (
	  ItemName VARCHAR (30) NOT NULL,
  ItemType CHAR(1) NOT NULL,
  ItemColour VARCHAR(10),
  PRIMARY KEY (ItemName));

CREATE TABLE Employee (
  EmployeeNumber SMALLINT UNSIGNED NOT NULL ,
  EmployeeName VARCHAR(10) NOT NULL ,
  EmployeeSalary INTEGER UNSIGNED NOT NULL ,
  DepartmentName VARCHAR(10) NOT NULL REFERENCES Department,
  BossNumber SMALLINT UNSIGNED NOT NULL REFERENCES Employee,
  PRIMARY KEY (EmployeeNumber));

CREATE TABLE Department (
  DepartmentName VARCHAR(10) NOT NULL,
  DepartmentFloor SMALLINT UNSIGNED NOT NULL,
  DepartmentPhone SMALLINT UNSIGNED NOT NULL,
  EmployeeNumber SMALLINT UNSIGNED NOT NULL REFERENCES 
    Employee,
  PRIMARY KEY (DepartmentName));

CREATE TABLE Sale (
  SaleNumber INTEGER UNSIGNED NOT NULL,
  SaleQuantity SMALLINT UNSIGNED NOT NULL DEFAULT 1,
  ItemName VARCHAR(30) NOT NULL REFERENCES Item,
  DepartmentName VARCHAR(10) NOT NULL REFERENCES Department,
  PRIMARY KEY (SaleNumber));

CREATE TABLE Supplier (
  SupplierNumber INTEGER UNSIGNED NOT NULL,
  SupplierName VARCHAR(30) NOT NULL,
  PRIMARY KEY (SupplierNumber));

CREATE TABLE Delivery (
  DeliveryNumber INTEGER UNSIGNED NOT NULL,
  DeliveryQuantity SMALLINT UNSIGNED NOT NULL DEFAULT 1,
  ItemName VARCHAR(30) NOT NULL REFERENCES Item,
  DepartmentName VARCHAR(10) NOT NULL REFERENCES Department,
  SupplierNumber INTEGER UNSIGNED NOT NULL REFERENCES  
     Supplier,
  PRIMARY KEY (DeliveryNumber));

-- using the data in the text files, insert into the tables this information
INSERT INTO Item (ItemName,ItemType,ItemColour)VALUES
('Boots-snakeproof','C','Green'),
('Camel Saddle','R','Brown'),
('Compass','N','\N'),
('Elephant polo stick','R','Bamboo'),
('Exploring in 10 Easy Lessons','B','\N'),
('Geo positioning system','N','\N'),
('Hammock','F','Khaki'),
('Hat-Polar Explorer','C','White'),
('How to Win Foreign Friends','B','\N'),
('Map case','E','Brown'),
('Map measure','N','\N'),
('Pith Helmet','C','Khaki'),
('Pocket knife-Avon','E','Brown'),
('Pocket knife-Nile','E','Brown'),
('Safari chair','F','Khaki'),
('Safari cooking kit','F','\N'),
('Sextant','N','\N'),
('Stetson','C','Black'),
('Tent - 2 person','F','Khaki'),
('Tent - 8 person','F','Khaki');


INSERT INTO Employee (EmployeeNumber,EmployeeName,EmployeeSalary,DepartmentName,BossNumber)VALUES
('1','Alice','75000','Management','\N'),
('2','Ned','45000','Marketing','1'),
('3','Andrew','25000','Marketing','2'),
('4','Clare','22000','Marketing','2'),
('5','Todd','38000','Accounting','1'),
('6','Nancy','22000','Accounting','5'),
('7','Brier','43000','Purchasing','1'),
('8','Sarah','56000','Purchasing','7'),
('9','Sophie','35000','Personnel','1'),
('10','Sanjay','15000','Navigation','3'),
('11','Rita','15000','Books','4'),
('12','Gigi','16000','Clothes','4'),
('13','Maggie','16000','Clothes','4'),
('14','Paul','11000','Equipment','3'),
('15','James','15000','Equipment','3'),
('16','Pat','15000','Furniture','3'),
('17','Mark','15000','Recreation','3');

INSERT INTO Department (DepartmentName,DepartmentFloor,DepartmentPhone,EmployeeNumber) VALUES
('Management','5','34','1'),
('Books','1','81','4'),
('Clothes','2','24','4'),
('Equipment','3','57','3'),
('Furniture','4','14','3'),
('Navigation','1','41','3'),
('Recreation','2','29','4'),
('Accounting','5','35','5'),
('Purchasing','5','36','7'),
('Personnel','5','37','9'),
('Marketing','5','38','2');

INSERT INTO Sale (SaleNumber,SaleQuantity,ItemName,DepartmentName) VALUES
('1001','2','Boots-snakeproof','Clothes'),
('1002','1','Pith Helmet','Clothes'),
('1003','1','Sextant','Navigation'),
('1004','3','Hat-Polar Explorer','Clothes'),
('1005','5','Pith Helmet','Equipment'),
('1006','1','Pocket knife-Nile','Clothes'),
('1007','1','Pocket knife-Nile','Recreation'),
('1008','1','Compass','Navigation'),
('1009','1','Geo positioning system','Navigation'),
('1010','5','Map measure','Navigation'),
('1011','1','Geo positioning system','Books'),
('1012','1','Sextant','Books'),
('1013','3','Pocket knife-Nile','Books'),
('1014','1','Pocket knife-Nile','Navigation'),
('1015','1','Pocket knife-Nile','Equipment'),
('1016','1','Sextant','Clothes'),
('1017','1','Sextant','Equipment'),
('1018','1','Sextant','Recreation'),
('1019','1','Sextant','Furniture'),
('1020','1','Pocket knife-Nile','Furniture'),
('1021','1','Exploring in 10 Easy Lessons','Books'),
('1022','1','How to Win Foreign Friends','Books'),
('1023','1','Compass','Books'),
('1024','1','Pith Helmet','Books'),
('1025','1','Elephant polo stick','Recreation'),
('1026','1','Camel Saddle','Recreation');

INSERT INTO Supplier (SupplierNumber,SupplierName) VALUES
('101','Global Maps and Books'),
('102','Nepalese Corp.'),
('103','All Sports Manufacturing'),
('104','Sweatshops Unlimited'),
('105','All Points inc.'),
('106','Sao Paulo Manufacturing');

INSERT INTO Delivery (DeliveryNumber,DeliveryQuantity,ItemName,DepartmentName,SupplierNumber) VALUES
('51','50','Pocket knife-Nile','Navigation','105'),
('52','10','Pocket knife-Nile','Books','105'),
('53','10','Pocket knife-Nile','Clothes','105'),
('54','10','Pocket knife-Nile','Equipment','105'),
('55','10','Pocket knife-Nile','Furniture','105'),
('56','10','Pocket knife-Nile','Recreation','105'),
('57','50','Compass','Navigation','101'),
('58','10','Geo positioning system','Navigation','101'),
('59','10','Map measure','Navigation','101'),
('60','25','Map case','Navigation','101'),
('61','2','Sextant','Navigation','101'),
('62','1','Sextant','Equipment','105'),
('63','20','Compass','Equipment','103'),
('64','1','Geo positioning system','Books','103'),
('65','15','Map measure','Navigation','103'),
('66','1','Sextant','Books','103'),
('67','5','Sextant','Recreation','102'),
('68','3','Sextant','Navigation','104'),
('69','5','Boots-snakeproof','Clothes','105'),
('70','15','Pith Helmet','Clothes','105'),
('71','1','Pith Helmet','Clothes','105'),
('72','1','Pith Helmet','Clothes','101'),
('73','1','Pith Helmet','Clothes','103'),
('74','1','Pith Helmet','Clothes','104'),
('75','5','Pith Helmet','Navigation','105'),
('76','5','Pith Helmet','Books','105'),
('77','5','Pith Helmet','Equipment','105'),
('78','5','Pith Helmet','Furniture','105'),
('79','5','Pith Helmet','Recreation','105'),
('80','10','Pocket knife-Nile','Navigation','102'),
('81','1','Compass','Navigation','102'),
('82','1','Geo positioning system','Navigation','102'),
('83','10','Map measure','Navigation','102'),
('84','5','Map case','Navigation','102'),
('85','5','Compass','Books','102'),
('86','5','Pocket knife-Avon','Recreation','102'),
('87','5','Tent - 2 person','Recreation','102'),
('88','2','Tent - 8 person','Recreation','102'),
('89','5','Exploring in 10 Easy Lessons','Navigation','102'),
('90','5','How to Win Foreign Friends','Navigation','102'),
('91','10','Exploring in 10 Easy Lessons','Books','102'),
('92','10','How to Win Foreign Friends','Books','102'),
('93','2','Exploring in 10 Easy Lessons','Recreation','102'),
('94','2','How to Win Foreign Friends','Recreation','102'),
('95','5','Compass','Equipment','105'),
('96','2','Boots-snakeproof','Equipment','105'),
('97','20','Pith Helmet','Equipment','106'),
('98','20','Pocket knife-Nile','Equipment','106'),
('99','1','Sextant','Equipment','106'),
('100','3','Hat-Polar Explorer','Clothes','105'),
('101','3','Stetson','Clothes','105');


--1. What are the names of employees in the Marketing Department?
--SELECT * FROM Employee WHERE DepartmentName = 'Marketing';
--2. Find the items sold by the departments on the second floor.
--SELECT DISTINCT ItemName,DepartmentName,DepartmentFloor FROM (SALE NATURAL JOIN Department) WHERE Department.DepartmentFloor = '2';
--3. Identify by floor the items available on floors other than the second floor
--SELECT DISTINCT ItemName,DepartmentFloor FROM (DELIVERY NATURAL JOIN Department) WHERE Department.DepartmentFloor <> '2' ORDER BY DepartmentFloor,ItemName;
--4. Find the average salary of the employees in the Clothes department
--SELECT avg(EmployeeSalary) FROM Employee WHERE DepartmentName <> 'Clothes';
--5. Find, for each department, the average salary of the employees in that department and report by descending salary.
--SELECT DepartmentName,avg(EmployeeSalary) AS 'AverageSalary' FROM Employee GROUP BY DepartmentName ORDER BY AverageSalary DESC;
--6. List the items delivered by exactly one supplier (i.e. the items always delivered by the same supplier)
--SELECT ItemName,SupplierNumber,(COUNT(DISTINCT SupplierNumber)) AS SupplierNumberCountByItem FROM Delivery GROUP BY ItemName HAVING SupplierNumberCountByItem = 1;
--7. List the suppliers that deliver at least 10 items.
/*SELECT Supplier.SupplierNumber,Supplier.SupplierName,COUNT(DISTINCT Delivery.ItemName)
FROM Delivery,Supplier 
WHERE Delivery.SupplierNumber = Supplier.SupplierNumber
GROUP BY Supplier.SupplierNumber
HAVING COUNT(DISTINCT Delivery.ItemName) >=10;

SELECT SupplierNumber, SupplierName, COUNT(DISTINCT ItemName) FROM (Delivery NATURAL JOIN Supplier) GROUP BY SupplierName HAVING COUNT(DISTINCT ItemName) >= 10; */
--8. Count the number of direct employees of each manager
/*SELECT Boss.EmployeeNumber,
Boss.EmployeeName, COUNT(*) AS
'Employees'
FROM Employee AS Worker, Employee AS Boss
WHERE Worker.BossNumber = Boss.EmployeeNumber
GROUP BY Boss.EmployeeNumber, Boss.EmployeeName;*/

--9. Find, for each department that sells items of type 'E' the average salary of the employees. YOU HAD TO USE EQUIJOIN DUE TO TWO POSSIBLE RELATIONSHIPS
/*SELECT Department.DepartmentName,
AVG(EmployeeSalary) AS 'Average Salary'
FROM Employee, Department, Sale, Item
WHERE Employee.DepartmentName =
Department.DepartmentName AND
Department.DepartmentName =
Sale.DepartmentName AND Sale.ItemName =
Item.ItemName
AND ItemType = 'E'
GROUP BY Department.DepartmentName;*/

--10. Find the total number of items of type 'E' sold by departments on the second floor
/*SELECT SUM(SaleQuantity) AS 'Number of Items'
FROM Department, Sale, Item
WHERE Department.DepartmentName =
Sale.DepartmentName AND
Sale.ItemName = Item.ItemName
AND ItemType = 'E' AND
DepartmentFloor = '2';

SELECT SUM(SaleQuantity) AS 'Number of Items'
FROM ((Department NATURAL JOIN Sale)NATURAL JOIN ITEM)
WHERE ItemType = 'E' AND DepartmentFloor = '2'; */

--11. What is the average delivery quantity of items of type 'N' delivered by each company?
/*SELECT Delivery.SupplierNumber,
SupplierName, Delivery.ItemName,
AVG(Delivery.DeliveryQuantity) AS
'Average Quantity'
FROM ((Delivery NATURAL JOIN Supplier) NATURAL JOIN Item)
WHERE Item.ItemType = 'N'
GROUP BY Delivery.SupplierNumber,
SupplierName, Delivery.ItemName ORDER BY
Delivery.SupplierNumber, SupplierName,
'Average Quantity' DESC,
Delivery.ItemName;*/

--Nested Queries
--1. What are the names of items sold by departments on the second floor? This was previously solved in the preceding section by the use of a join. However, it could be more efficiently solved by using an inner query:
/*OLD QUERY: SELECT DISTINCT ItemName,DepartmentName,DepartmentFloor FROM (SALE NATURAL JOIN Department) WHERE Department.DepartmentFloor = '2'; */
/*SELECT DISTINCT ItemName FROM Sale WHERE DepartmentName IN (SELECT DepartmentName FROM Department WHERE DepartmentFloor = 2);*/

--2. Find the salary of Clare's manager.
/*SELECT EmployeeName,EmployeeSalary FROM EMPLOYEE WHERE EmployeeNumber = (SELECT BossNumber FROM Employee WHERE EmployeeName = 'Clare'); */

--3. Find the name and salary of the managers with more than two employees
/*Select EmployeeName,EmployeeSalary FROM EMPLOYEE WHERE EmployeeNumber IN (SELECT BossNumber FROM EMPLOYEE GROUP BY BossNumber HAVING COUNT(*) >2);*/

--4. List the names of the employees who earn more than any employee in the Marketing department
/*SELECT EmployeeName FROM Employee WHERE EmployeeSalary >(SELECT MAX(EmployeeSalary) FROM EMPLOYEE WHERE DepartmentName = 'Marketing');*/

--5. Among all the departments with a total salary greater than £25000, find the departments that sell Stetsons.
/*SELECT DISTINCT DepartmentName
FROM Delivery
WHERE ItemName = 'Stetson' AND DepartmentName IN
(SELECT DepartmentName
FROM Employee
GROUP BY DepartmentName HAVING
SUM(EmployeeSalary) > 25000);*/

--6. Find the suppliers that deliver compasses and at least one other kind of item
/*SELECT DISTINCT SupplierNumber,
SupplierName FROM (Supplier
NATURAL JOIN Delivery)
WHERE (ItemName <> 'Compass' AND
SupplierNumber IN (SELECT
SupplierNumber
FROM Delivery
WHERE ItemName = 'Compass'));*/

--7. Find the suppliers that deliver compasses and at least three other kinds of item
/*SELECT DISTINCT SupplierNumber,
SupplierName FROM (Supplier
NATURAL JOIN Delivery)
WHERE (SupplierNumber IN (SELECT
SupplierNumber
FROM Delivery
WHERE ItemName = 'Compass')) GROUP BY SupplierNumber,SupplierName HAVING COUNT(DISTINCT ItemName)>=3;*/

--8. List the departments for which each item delivered to the department is delivered to some other department as well
SELECT DepartmentName
FROM Delivery AS Delivery1
WHERE NOT EXISTS
(SELECT *
FROM Delivery AS Delivery2
WHERE Delivery2.DepartmentName =
Delivery1.DepartmentName
AND ItemName NOT IN
(SELECT ItemName
FROM Delivery AS Delivery3
WHERE Delivery3.DepartmentName <>
Delivery1.DepartmentName));




