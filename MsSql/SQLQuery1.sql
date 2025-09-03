create database village
use village
create table apt (flat_no int,Names varchar(50),phone_no varchar(10))
select * from apt
insert into apt(flat_no,Names,phone_no)values(2,'Anand','4567891');
update apt set Names='Anand' where flat_no=1;
delete from apt where flat_no=2;

create database emp
use emp
create table empl(emp_id int ,name varchar(43),dept varchar(23),sal Integer)
select * from empl
insert into empl(emp_id,name,dept,sal) values(1,'saran','it',4350);
insert into empl(emp_id,name,dept,sal) values(2,'maran','marketing',4850);
insert into empl(emp_id,name,dept,sal) values(3,'paran','security',43500);
insert into empl(emp_id,name,dept,sal) values(4,'faran','developer',48050);
insert into empl(emp_id,name,dept,sal) values(4,'garan','helper',48852);
select*from empl where sal>4350
update empl set emp_id=5 where dept='helper' ;
