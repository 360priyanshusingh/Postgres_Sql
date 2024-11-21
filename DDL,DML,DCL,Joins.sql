-- command                          uses
-- \l	                        List all databases
-- \c dbname	                Connect to a database
-- \dt	                        List all tables in the current database
-- \d                           tablename Describe a table (list columns and details)
-- \q	                        Quit the psql terminal


-- 1 DDL(data defination language) :-
create database order_service;
create database student
create table student_table(
     rollNumber int primary key,
     FirstName varchar(20),
     LastName varchar(30)
);

truncate table student
drop table student
insert into student_table(rollNumber,FirstName,LastName) values(3,'Divya','Sisodiya3');

COMMENT "priyanshu sisodiya" ON TABLE student2;


-- 2 DML(data manuplation language) :- 

insert into t_orders(id,order_number) values(5,'17GT5GDGE53DG53FE35');
insert into student_Table(rollNumber,FirstName,LastName) values('1','Priyanshu','Sisodiya');

INSERT INTO t_orders(id,order_number) values(6,'826shw653g6g7dve7dvw7'),(7,'826shw653g6g7dve7dvw7'),(8,'8237hdgd653g7sg57g7gsf537')
insert into t_orders values(10,'8dhy736dge64gd763gdye6');
update t_orders set order_number='837hde6ts6fffff' where  id=1 ;
delete from t_orders where id=6
RENAME TABLE student1 TO student2;

alter table student2 add column id int 
alter table student2 drop column id
alter table student2 rename column  id to _id 
select * from student2  

update student2 set _id=3 where rollNumber=3

-- 3 data query language (DQL):-

select * from student_table 

-- for showing all database
SELECT datname FROM pg_database;

-- for showing all colunm name of perticular table name
SELECT column_name, data_type, is_nullable FROM information_schema.columns WHERE table_name = 'student_table';




-- 3 joins :- 
select * from student2 left join t_orders on student2._id=t_orders.id
select * from student2 right join t_orders on student2._id=t_orders.id  group by student2._id 
select * from student2 s inner join t_orders t on  s._id
select * from student2 s  join t_orders t on s._id=t.id

-- 4 fuctions :- 

select  max(rollNumber) from student2 
select MIN(rollNumber) as MINnumber from student2

select student2._id ,student2.rollNumber , student2.FirstName , count(_id) as counts from student2 
 group by student2._id , student2.rollNumber,student2.FirstName;
