create database village;
use village;
create table apt (flat_no int,Names varchar(50),phone_no varchar(10));
select * from apt;

exec sp_help apt;
exec sp_rename 'apt', 'society';
exec sp_rename 'society.phone_no', 'mobile_no','column';

alter table society alter column mobile_no float
alter table society  alter column mobile_no varchar(100)



create database employee
use employee
create table emp(ID int, Name varchar(50),Dept varchar(50),Salary float)
exec sp_rename 'emp.Name', 'Names','column';
select *from emp
insert into emp(ID,Names,Dept,Salary) values(5,'Soumya','IT',100000);
update emp set Salary=1.4*Salary where ID=5;
delete from emp where ID=3;
exec sp_rename 'emp', 'Friends';
exec sp_help Friends;
alter table Friends  add Address varchar(100);
alter table Friends alter column salary varchar(15);
alter table Friends  add phone_no varchar(12);
select *from Friends;
alter table Friends Drop column Address;
exec sp_rename 'Friends.phone_no', 'mobile_no','column';


