create database if not exists college;
use college;
 create table student(
 rollnum int primary key,
 name varchar(50),
 grade varchar(50),
 marks int,
 city varchar(50)
 );
 insert into student(rollnum,name,grade,marks,city)values(10056,"Ubaid khan","B",85,"Karachi");
 insert into student value(10042,"owaise","A",90,"Karachi");
 insert into student value(10054,"ubaid","A",90,"Karachi");
 insert into student value(10057,"ubaid","A",90,"Karachi");
  insert into student(rollnum,name,grade,marks,city)values(10052,"osama","B",85,"landhi"),(10055,"agha","B",85,"landhi");
  insert into student(rollnum,name,grade,marks,city)values(10086,"mounis","c",60,"sadar"),(10123,"muzammil","f",59,"gulshan");
 select * from student;
 select * from student where marks > 80;
 select  distinct city  from student;
 select name from student order by name asc limit 2;
 select name from student order by name asc;
 select * from student  where marks> 70 and  city = "karachi";
 select * from student  where marks> 70 or  city = "karachi" limit 2;
 select max(marks)  from student;
 select avg(marks) from student;
 select count(name) from student;
 
 alter table student
 add column  gpa double;
 
 alter table student
 drop column gpa;
  update student
  set gpa = 2.75;
  
 
 select name, city,count(rollnum) from student group by city,name;
 
 select city,name , count(rollnum) from student group by city,name;
 
UPDATE student
SET rollnum = 10556
WHERE rollnum = 10056;

select * from student;

update student
set marks = 61
where rollnum = 10086;

update student
set marks = 55
where rollnum = 10086;

delete from student
where marks <60;

create table dep(
 name varchar(50),
 id int primary key
);

create table teacher(
name varchar(50),
id int primary key ,
dep_id int,
foreign key (dep_id) references  dep(id)

);


set sql_safe_updates = 0;