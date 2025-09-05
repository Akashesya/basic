


create table student(id int primary key, names varchar(50))
select * from student
insert into student values(2,'shiva',45678);
alter table student add number int unique
insert into student values(3,'raj',NULL);

create table teachers(id int primary key, subject varchar(50),foreign key(id) references student(id));
insert into teachers values(1,'math')
select * from teachers
select * from student

delete from teachers where id=1
delete from student where id=1

insert into student values(1,'manu',34567)
insert into teachers values(1,'math')

create table users(user_id int primary key, email varchar(50) unique,names varchar(50));
insert into users values(2,'gopal@gmail.com','gopal')
insert into users values(3,'jai@gmail.com','jai')
insert into users values(4,'exterovert.com','ganesh')
create table books(products_id int primary key,title varchar(50),price varchar(50));
insert into books values(10,'ramyan','1500')
insert into books values(11,'how to read book','150')
insert into books values(12,'two states','690')
insert into books values(13,'kalyug','300')
create table orders(orders_id int primary key,user_id int foreign key(user_id) references users(user_id),products_id int foreign key(products_id) references books(products_id))
select * from users
select * from books
select * from orders




