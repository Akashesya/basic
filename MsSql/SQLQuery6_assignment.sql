create database empl;
use empl;

create table el (em_id int ,f_name varchar(50));
insert into el values (1,'akash'),(2,'abhi');
insert into el values (3,'aksh'),(5,'abhishek');


create table el1(em_id int ,f_name varchar(50));
insert into el1 values (3,'aksh'),(4,'abhishek');

select*from el
union
select*from el1

select*from el
union all
select*from el1
---------------------different operation on a particular column-----------------------------------------------
select upper(f_name) as uppercase from el;
select lower(f_name) as uppercase from el;
select len(f_name) as len_f_name,f_name  from el;

select upper(substring(f_name,2,1)) as part,f_name from el;

-----------------reverse the data of the column ------------------------------------------------
select reverse(f_name) as rev,f_name from el;
      
select replace (f_name,'akash','akku') as F_name from el;

ALTER TABLE el
ADD l_name varchar(50);

------------------add two column--------------------------------------------------
select concat('akash',' ','agrahari');

---------------cast change data tyoe of column---------------------------------------------
select cast(em_id as float) from el;

----------------------------getdate--------------------------------------------------------------
select GETDATE();
select convert(varchar(10),getdate(),103);



CREATE TABLE Students2024 (ID INT, Name VARCHAR(50));
CREATE TABLE Students2025 (ID INT, Name VARCHAR(50));

INSERT INTO Students2024 VALUES
(1,'Ravi'),(2,'Asha'),(3,'John'),(4,'Meera'),(5,'Kiran'),
(6,'Divya'),(7,'Lokesh'),(8,'Anita'),(9,'Rahul'),(10,'Sneha');

INSERT INTO Students2025 VALUES
(2,'Asha'),(4,'Meera'),(5,'Kiran'),(11,'Prakash'),(12,'Vidya'),
(13,'Neha'),(14,'Manoj'),(15,'Ramesh'),(16,'Lata'),(17,'Akash');

--------------task1--------------------
select * from Students2024
union 
select * from Students2025

------------------task2------------------------
select * from Students2024
union 
select * from Students2025


CREATE TABLE Employees (EmpID INT, Name VARCHAR(50), Department VARCHAR(20));

INSERT INTO Employees VALUES 
(1,'Ananya','HR'),(2,'Ravi','IT'),(3,'Meera','Finance'),
(4,'John','IT'),(5,'Divya','Marketing'),(6,'Sneha','Finance'),
(7,'Lokesh','HR'),(8,'Asha','IT'),(9,'Kiran','Finance'),(10,'Rahul','Sales');





CREATE TABLE Projects (ProjectID INT, Name VARCHAR(50), StartDate DATE, EndDate DATE);
INSERT INTO Projects VALUES 
(1,'Bank App','2025-01-01','2025-03-15'),
(2,'E-Commerce','2025-02-10','2025-05-20');





CREATE TABLE Contacts (ID INT, Name VARCHAR(50), Email VARCHAR(50), Phone VARCHAR(20));
INSERT INTO Contacts VALUES
(1,'Ravi','ravi@gmail.com',NULL),
(2,'Asha',NULL,'9876543210'),
(3,'John',NULL,NULL);





CREATE TABLE Employees1 (EmpID INT, Name VARCHAR(50), Department VARCHAR(20));

INSERT INTO Employees1 VALUES 
(1,'Ananya','HR'),(2,'Ravi','IT'),(3,'Meera','Finance'),
(4,'John','IT'),(5,'Divya','Marketing'),(6,'Sneha','Finance'),
(7,'Lokesh','HR'),(8,'Asha','IT'),(9,'Kiran','Finance'),(10,'Rahul','Sales');





CREATE TABLE Projects1 (ProjectID INT, Name VARCHAR(50), StartDate DATE, EndDate DATE);
INSERT INTO Projects VALUES 
(1,'Bank App','2025-01-01','2025-03-15'),
(2,'E-Commerce','2025-02-10','2025-05-20');





CREATE TABLE Contacts1 (ID INT, Name VARCHAR(50), Email VARCHAR(50), Phone VARCHAR(20));
INSERT INTO Contacts VALUES
(1,'Ravi','ravi@gmail.com',NULL),
(2,'Asha',NULL,'9876543210'),
(3,'John',NULL,NULL);


---------------------task 3-------------------
select upper(name) as u_name from Employees;
select lower(name) as u_name from Employees;

----task4---------------------
select len(name),name from Employees;

---task5-----------
select SUBSTRING(name,1,3) ,name from Employees;

------------task6-----------
select concat(name ,Department) from Employees
----------task 7--------
select getdate()

