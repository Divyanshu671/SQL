Create database a;
use a;
create table Student(
	sid int primary key,
    name varchar(50)
);
Insert into Student(sid,name)
values
(101,"adam"),
(102,"bob"),
(103,"casey");

create table Course(
	sid int primary key,
    course varchar(50)
);

Insert into Course
values
(102,"en"),
(105,"ma"),
(103,"sci"),
(107,"com sci");

-- Inner Join 
select * from Student s inner join Course c on s.sid=c.sid;
-- Left Join 
select * from Student as s left join Course as c on s.sid=c.sid;
-- Right Join
select * from Student as s  right join Course as c on s.sid=c.sid;
-- Full Join
select * from Student s left join Course c on s.sid=c.sid
union
select * from Student s right join Course c on s.sid=c.sid;

-- left exclusive join
select * from Student s left join Course c on s.sid=c.sid where c.sid is Null;
-- Right exclusive join
select * from Student s right join Course c on s.sid=c.sid where s.sid is Null;
-- Full excludive join
select * from Student s left join Course c on s.sid=c.sid where c.sid is null
union
select * from Student s right join Course c on s.sid=c.sid where s.sid is null;

create table Employee(
	id int primary key,
    name varchar(50),
    mgr_id int
);
insert into Employee
values
(101,"adam",103),
(102,"bob",104),
(103,"casey",NULL),
(104,"donald",103);

-- Self join
select s1.name as mgr_name,s2.name from Employee s1 join Employee s2 on s1.id=s2.mgr_id;

-- Union and Union all
select name from Employee union select name from Employee;
select name from Employee union all select name from Employee;

-- Subqueries - use 2 select statements,use in 3 ways
create table Stu(
	rollno int primary key,
    name varchar(50),
    marks int not null
);
insert into Stu 
values
(101,"ani",78),
(102,"bhumika",93),
(103,"chetan",85),
(104,"dhruv",96),
(105,"emanuel",92),
(106,"farah",82);

-- Using where
-- Static
select avg(marks) from Stu;
-- It is Dynamic:change with updation
select name,marks from Stu where marks > (select avg(marks) from Stu);

select * from Stu where rollno%2=0;
select * from Stu where rollno in (select rollno from Stu where rollno % 2=0);

-- Using from
select max(marks) from (select * from Stu where name like('%a%')) as temp;

-- Using select
select (select max(marks) from Stu),name from Stu;

-- Views:Virtual table
select * from Stu;
Create view v1 as select rollno,name from Stu;
select * from v1;
desc v1;
drop view v1;
