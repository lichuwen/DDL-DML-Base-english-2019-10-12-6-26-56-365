-- **Database level:**
-- Display all the database
show databases;

-- Enter a certain database
use dbname; 

-- Create a database
create database if not exists dbname;

-- Create the database of the designated character set
create database dbname DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

-- Display the creation information fo the database
show create database dbname;

-- Revise the codes of the database
ALTER DATABASE dbname
ADD FILE / MODIFY FILE / ...
(
	NAME = First_App,
	FILENAME = 'D:\First_App.ndf',
	SIZE = 10,
	MAXSIZE = 500,
	FILEGROWTH = 10)

ALTER DATABASE st
modify name = studens --修改数据库名

-- Delete a database
drop database if exists dbname;

-- **Table level**
-- Revise table name
rename table tbname to new_tbname; --mysql
alter table 表名 rename 新表名; --mysql
alter table old_table_name rename to new_table_name; --oracle

-- Revise the field's data type
alter table tbname modify 字段名 数据类型;
alter table student modify new_age char(5);--sample

-- Revise field name
alter table tbname change 旧字段名 新字段名 新类型;
alter table student change age new_age int(5);--sample

-- Add field
alter table tbname add column fieldname fieldType;
alter table student add column phone long(5); --sample

-- Delete field
alter table tbname drop fieldname;

-- Revise the table's storage engine
ALTER TABLE corr_alert_copy ENGINE=INNODB;
--show engines;已提供什么存储引擎
--show variables like '%storage_engine%'; 看当前存储引擎
--show create table 表名; 查看表所用引擎，engine参数

-- Delete the table's foreign key restriant
alter table 表名 drop constraint 外键约束名;

-- Delete a table
drop table tbname;
