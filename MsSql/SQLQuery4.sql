create table employee (id int primary key,names varchar(50),branch varchar(50),salary float);
insert into employee values (1,'akash','it',4567678);
insert into employee values (2,'shivam','mkt',456900);
insert into employee values (3,'abhi','sells',300000);
insert into employee values (4,'naveen','energy',460078);
insert into employee values (5,'vaibhav','bess',46789);
insert into employee (id,names,branch) values (6,'shiv','bes');
select * from employee where id=1;
select * from employee where id!=1;
select * from employee where salary is NOT NULL ;
select * from employee where names like '%h';
select * from employee where names like 'a%';
select * from employee where names like 'a__i';
select * from employee where names like '%va%' and names not like 's%';
select  * from employee where salary=(select min(salary) from employee);
select min(salary) from employee;
select  * from employee where salary between 350000 and 500000;
select avg(salary) as avg_salary from employee;
select  * from employee where salary>=(select avg(salary) from employee);
select * from employee order by salary;
select * from employee order by salary desc; 




