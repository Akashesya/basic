create table users(user_id int primary key, email varchar(50) unique,names varchar(50));
insert into users values(1,'gotya@gmail.com','gotya')
insert into users values(2,'gopal@gmail.com','gopal')
insert into users values(3,'jai@gmail.com','jai')
insert into users values(4,'exterovert.com','ganesh')
insert into users values(5,'money.com','manu')
insert into users values(6,'chaisutta.com','pkt')
insert into users values(7,'namaj@gmail.com','shreyansh')

create table books(products_id int primary key,title varchar(50),price varchar(50));
insert into books values(10,'ramyan','1500')
insert into books values(11,'how to read book','150')
insert into books values(12,'two states','690')
insert into books values(13,'kalyug','300')
insert into books values(14,'manosmriti','50')
insert into books values(15,'how to kid smooking','6000')
insert into books values(16,'geeta','1800')

create table orders(orders_id int primary key,user_id int foreign key(user_id) references users(user_id),products_id int foreign key(products_id) references books(products_id))
insert into orders values(20,1,10)
insert into orders values(21,2,11)
insert into orders values(22,3,12)
insert into orders values(23,4,13)
insert into orders values(24,5,14)
insert into orders values(25,6,15)
insert into orders values(26,7,16)

select * from users
select * from books
select * from orders

Select *from users u
left join  orders o
on u.user_id=o.orders_id
left join books b
on  b.products_id=o.products_id 

---->>1st task

select *from users u
full outer join orders o
on u.user_id=o.user_id
full outer join books b
on o.products_id=b.products_id

------>2nd task
select  * from users  u
left join orders o
on u.user_id=o.user_id
full outer join books b
on o.products_id=b.products_id

select  b.title,u.names,b.price from users  u
inner join orders o
on u.user_id=o.user_id
 inner join books b
on o.products_id=b.products_id
where b.title in('ramyan','kalyug','geeta')







select *from users u
cross join orders o


