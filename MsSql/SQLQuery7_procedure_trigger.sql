-------------------for student ----------------------------------------------------------------


create procedure retrieve_data
as
begin
select * from student
where id=1;
end

exec retrieve_data;
drop procedure retrieve_dataa


create procedure retrieve_dataa
@id int 
as
begin
select * from student where id = @id
end

exec retrieve_dataa @id=1 ;

------------------------------------employee table-------------------------------------------------------
select * from employee;

------------------------for employee table apply procedure--------------------------------------------------

create procedure checkempsalary
@id int
as
begin
declare @salary int;
select @salary =salary
from employee
where id=@id
if @salary>=45000567
print 'high salary employee';
else if @salary>=5000
print 'medium salary employee';
else
print 'lower salary';
end;

exec checkempsalary @id=6;

-------------------trigger------------------------------
create trigger trgstudent on student
after insert
as
begin
print 'a new student recodr inserted'
end;

insert into student values(7,'kunali',5676798);

select * from student;


exec sp_help  student


