-- Insert record
insert into tbname(fie1,fie2,...) values(val1,val2,...);
insert into student(id,name,age,sex) values('001','zhangsan',18,'male'); --sample

-- Revise record
update 表名称 set 列名称 = 新值 where 列名称 = 某值;
update student set age=0 where age=18; --sample

-- Delete record
delete from tbname where condition;
delete from student where name='zhangsan'; --sample

-- Search record
select 列名称 from 表名称;
select * from student; --sample
select age from student; --sample
