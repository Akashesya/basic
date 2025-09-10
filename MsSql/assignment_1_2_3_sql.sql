create database Smart_Meter;
use Smart_Meter;

create table Customers( customerId int primary key,Name varchar(50),address varchar(50),region varchar(50));

create table SmartMeterReading(MeterId int primary key, customerId int foreign key(customerId) references Customers(customerId),location varchar(50),installedDate varchar(50),readingDateTime varchar(50),EnergyConsumed float)
---->>task 0 creating the table
select*from Customers;
select *from SmartMeterReading;

insert into Customers values(1,'Vaibhav','Gorakhpur','North'),
(2,'Shiv','Satna','Central'),
(3,'Abhishek','Panna','Central'),
(4,'Nitish','Gujrat','west');

insert into SmartMeterReading values(101,1,'rooftop','2020-2-15','2022-4-28 10:00:00' ,150),
                             (102,2,'basement','2020-3-15','2023-6-28 12:01:00' ,160.5),
							 (103,3,'basement','2019-2-16','2024-4-28 05:23:50' ,139),
							 (104,4,'rooftop','2017-9-10','2023-5-28 11:59:43' ,148);


 ----->task 1 

 select MeterId,readingDateTime,EnergyConsumed from SmartMeterReading where EnergyConsumed between 10 and 50;
  select MeterId,readingDateTime,EnergyConsumed from SmartMeterReading where readingDateTime between '2024-01-01' and '2024-12-31';
   select MeterId,readingDateTime,EnergyConsumed from SmartMeterReading where installedDate <= '2024-06-30';
   select MeterId,readingDateTime,EnergyConsumed from SmartMeterReading where (EnergyConsumed between 10 and 50) and(readingDateTime between '2024-01-01' and '2024-12-31') and( installedDate <= '2024-06-30');


   -->2nd task
   select Avg(EnergyConsumed) as AvgEnergyConsumed from SmartMeterReading 

   select max(EnergyConsumed) as MaxEnergyConsumed from SmartMeterReading 

   select* from SmartMeterReading where readingDateTime>='2025-00-00';
