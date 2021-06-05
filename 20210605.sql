create database  three20210605 default charset=utf8;
use three20210605;
create table student1(
sid int ,
cid int,
`name` varchar(10),
sex char,
age int,
address varchar(100)
);

create table class(
	sid int,
	cid int,
	grade int
);

insert into student1 values(1,201,'张无忌','男',20,'河南许昌'),(2,201,'张无','男',20,'河南许昌'),(3,201,'张峰','男',20,'河南许昌'),(4,202,'张忌','男',28,'河南许昌'),(5,202,'李丰','男',20,'河南许昌');
insert into student1 values(6,206,'李调','男',30,"江苏");
select*from student1;

insert into class values (1,201,98),(2,201,89),(3,202,79),(4,202,78),(5,203,87);
select*from class;
select student1.sid,student1.cid,`name`,grade from student1,class where student1.cid=class.cid;

--  内连接
select student1.sid ,student1.cid ,`name`  ,grade from student1 inner join class on student1.cid=class.cid;

-- 左外连接
select student1.cid, `name` ,grade from student1 left join class on student1.cid=class.cid;
 -- 右外连接
 select  class.cid ,`name` ,grade  from student1 right join class on student1.cid=class.cid;
 -- 全外连接
 select *from student1 full join on student1.cid=class.cid;
  -- SQL syntax 语法错误