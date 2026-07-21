mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| ecommerce          |
| ecommerse          |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| smart              |
| sys                |
| world              |
+--------------------+
9 rows in set (0.02 sec)
mysql> use smart;
Database changed
mysql> create table students (roll_no INT primary key,name VARCHAR(30),courses VARCHAR(20);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> create table students (roll_no INT primary key,name VARCHAR(30),courses VARCHAR(20));
Query OK, 0 rows affected (0.05 sec)

mysql> show table;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> show tables;
+-----------------+
| Tables_in_smart |
+-----------------+
| students        |
+-----------------+
1 row in set (0.02 sec)

mysql> insert into students values (1,'raja','CSE'),(2,'bunty','AIML');
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select*from students;
+---------+-------+---------+
| roll_no | name  | courses |
+---------+-------+---------+
|       1 | raja  | CSE     |
|       2 | bunty | AIML    |
+---------+-------+---------+
2 rows in set (0.00 sec)

mysql> select name from students;
+-------+
| name  |
+-------+
| raja  |
| bunty |
+-------+
2 rows in set (0.00 sec)

mysql> update students set name ='priyanka'where roll_no=1;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select
    -> select *from students;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select *from students' at line 2
mysql> select*from students;
+---------+----------+---------+
| roll_no | name     | courses |
+---------+----------+---------+
|       1 | priyanka | CSE     |
|       2 | bunty    | AIML    |
+---------+----------+---------+
2 rows in set (0.00 sec)
mysql> update students set courses='bsc'where roll_no=2;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select*from students;
+---------+----------+---------+
| roll_no | name     | courses |
+---------+----------+---------+
|       1 | priyanka | CSE     |
|       2 | bunty    | bsc     |
+---------+----------+---------+
2 rows in set (0.01 sec)

mysql> desc students;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| roll_no | int         | NO   | PRI | NULL    |       |
| name    | varchar(30) | YES  |     | NULL    |       |
| courses | varchar(20) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.02 sec)

mysql> insert into students values(3,"om","IOT"),(4,"siddhu","MSC"),(5,"kunal","BCA"),(6,"sahil","MCA");
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select*from students;
+---------+----------+---------+
| roll_no | name     | courses |
+---------+----------+---------+
|       1 | priyanka | CSE     |
|       2 | bunty    | bsc     |
|       3 | om       | IOT     |
|       4 | siddhu   | MSC     |
|       5 | kunal    | BCA     |
|       6 | sahil    | MCA     |
+---------+----------+---------+
6 rows in set (0.00 sec)

mysql> delete from students where roll_no=6;
Query OK, 1 row affected (0.01 sec)

mysql> select*from students;
+---------+----------+---------+
| roll_no | name     | courses |
+---------+----------+---------+
|       1 | priyanka | CSE     |
|       2 | bunty    | bsc     |
|       3 | om       | IOT     |
|       4 | siddhu   | MSC     |
|       5 | kunal    | BCA     |
+---------+----------+---------+
5 rows in set (0.00 sec)

mysql> delete from students;
Query OK, 5 rows affected (0.02 sec)

mysql> select*from students;
Empty set (0.00 sec)

mysql> desc students;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| roll_no | int         | NO   | PRI | NULL    |       |
| name    | varchar(30) | YES  |     | NULL    |       |
| courses | varchar(20) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.02 sec)

mysql> insert into students values(3,"om","IOT"),(4,"siddhu","MSC"),(5,"kunal","BCA"),(6,"sahil","MCA");
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0
mysql> truncate table students;
Query OK, 0 rows affected (0.05 sec)

mysql> select*from students;
Empty set (0.00 sec)

mysql> desc students;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| roll_no | int         | NO   | PRI | NULL    |       |
| name    | varchar(30) | YES  |     | NULL    |       |
| courses | varchar(20) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into students values (1,'raja','CSE'),(2,'bunty','AIML');
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> insert into students values(3,"om","IOT"),(4,"siddhu","MSC"),(5,"kunal","BCA"),(6,"sahil","MCA");
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select*from students;
+---------+--------+---------+
| roll_no | name   | courses |
+---------+--------+---------+
|       1 | raja   | CSE     |
|       2 | bunty  | AIML    |
|       3 | om     | IOT     |
|       4 | siddhu | MSC     |
|       5 | kunal  | BCA     |
|       6 | sahil  | MCA     |
+---------+--------+---------+
6 rows in set (0.00 sec)

mysql> drop table students;
Query OK, 0 rows affected (0.03 sec)

mysql> drop database smart;
Query OK, 0 rows affected (0.02 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| ecommerce          |
| ecommerse          |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
8 rows in set (0.01 sec)

mysql> create database studentDB;
Query OK, 1 row affected (0.02 sec)
mysql> create database studentDB;
Query OK, 1 row affected (0.02 sec)

mysql> use studentDB
Database changed
mysql> insert into student values (101,'aryan',25,'thane'),(102,'kunal',24,'kalva'),(103,'siddhu',26,'mumbai'),(104,'parth',28,'vasai');
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select*from student where name like 'k%' ;
+---------+-------+-----+---------+
| roll_no | name  | age | address |
+---------+-------+-----+---------+
| 102     | kunal |  24 | kalva   |
+---------+-------+-----+---------+
1 row in set (0.00 sec)

mysql> select *from student where name like 's%' ;
+---------+--------+-----+---------+
| roll_no | name   | age | address |
+---------+--------+-----+---------+
| 103     | siddhu |  26 | mumbai  |
+---------+--------+-----+---------+
1 row in set (0.00 sec)

mysql> select *from student where address like 'bai%' ;
Empty set (0.00 sec)

mysql> select *from student where address like '%lva' ;
+---------+-------+-----+---------+
| roll_no | name  | age | address |
+---------+-------+-----+---------+
| 102     | kunal |  24 | kalva   |
+---------+-------+-----+---------+
1 row in set (0.00 sec)

mysql> select *from student where address like 'mum%' ;
+---------+--------+-----+---------+
| roll_no | name   | age | address |
+---------+--------+-----+---------+
| 103     | siddhu |  26 | mumbai  |
+---------+--------+-----+---------+
1 row in set (0.00 sec)

mysql> select*from student;
+---------+--------+-----+---------+
| roll_no | name   | age | address |
+---------+--------+-----+---------+
| 101     | aryan  |  25 | thane   |
| 102     | kunal  |  24 | kalva   |
| 103     | siddhu |  26 | mumbai  |
| 104     | parth  |  28 | vasai   |
+---------+--------+-----+---------+
4 rows in set (0.00 sec)

mysql> select *from student where address like '%an%' ;
+---------+-------+-----+---------+
| roll_no | name  | age | address |
+---------+-------+-----+---------+
| 101     | aryan |  25 | thane   |
+---------+-------+-----+---------+
1 row in set (0.00 sec)

mysql> select *from student where address like 'k____' ;
+---------+-------+-----+---------+
| roll_no | name  | age | address |
+---------+-------+-----+---------+
| 102     | kunal |  24 | kalva   |
+---------+-------+-----+---------+
1 row in set (0.00 sec)

mysql> select *from student where address like 'p____' ;
Empty set (0.00 sec)

mysql> select *from student where name  like 'p____' ;
+---------+-------+-----+---------+
| roll_no | name  | age | address |
+---------+-------+-----+---------+
| 104     | parth |  28 | vasai   |
+---------+-------+-----+---------+
1 row in set (0.00 sec)

mysql>




