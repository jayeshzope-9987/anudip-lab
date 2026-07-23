mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| ecommerce          |
| ecommerse          |
| information_schema |
| jayesh             |
| mysql              |
| performance_schema |
| sakila             |
| studentdb          |
| sys                |
| world              |
+--------------------+
10 rows in set (0.00 sec)

mysql> create database itcompany;
Query OK, 1 row affected (0.02 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| ecommerce          |
| ecommerse          |
| information_schema |
| itcompany          |
| jayesh             |
| mysql              |
| performance_schema |
| sakila             |
| studentdb          |
| sys                |
| world              |
+--------------------+
11 rows in set (0.00 sec)

mysql> use itcompany;
Database changed
mysql> create table employe(id VARCHAR(10) primary key,deptname VARCHAR(20),salary INT);
Query OK, 0 rows affected (0.04 sec)

mysql> show tables;
+---------------------+
| Tables_in_itcompany |
+---------------------+
| employe             |
+---------------------+
1 row in set (0.00 sec)

mysql> insert into employe values ('E101','HR',2000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into employe values ('E102','HR',15000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into employe values ('E103','IT',20000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into employe values ('E104','IT',13500);
Query OK, 1 row affected (0.02 sec)

mysql> insert into employe values ('E105','MARKETING',20000);
Query OK, 1 row affected (0.02 sec)

mysql> select*from employe;
+------+-----------+--------+
| id   | deptname  | salary |
+------+-----------+--------+
| E101 | HR        |   2000 |
| E102 | HR        |  15000 |
| E103 | IT        |  20000 |
| E104 | IT        |  13500 |
| E105 | MARKETING |  20000 |
+------+-----------+--------+
5 rows in set (0.00 sec)

mysql> select deptname,avg(salary) as avgsalary from employe group by deptname;
+-----------+------------+
| deptname  | avgsalary  |
+-----------+------------+
| HR        |  8500.0000 |
| IT        | 16750.0000 |
| MARKETING | 20000.0000 |
+-----------+------------+
3 rows in set (0.01 sec)

mysql> select deptname,count(*) as totalemploye from employe group by deptname;
+-----------+--------------+
| deptname  | totalemploye |
+-----------+--------------+
| HR        |            2 |
| IT        |            2 |
| MARKETING |            1 |
+-----------+--------------+
3 rows in set (0.01 sec)

mysql> select deptname,sum(salary) as totalsalary from employe group by deptname;
+-----------+-------------+
| deptname  | totalsalary |
+-----------+-------------+
| HR        |       17000 |
| IT        |       33500 |
| MARKETING |       20000 |
+-----------+-------------+
3 rows in set (0.00 sec)

mysql> select deptname,max(salary) as highsalary from employe group by deptname;
+-----------+------------+
| deptname  | highsalary |
+-----------+------------+
| HR        |      15000 |
| IT        |      20000 |
| MARKETING |      20000 |
+-----------+------------+
3 rows in set (0.01 sec)

mysql> select deptname,avg(salary) as avgsalary from employe group by deptname;
+-----------+------------+
| deptname  | avgsalary  |
+-----------+------------+
| HR        |  8500.0000 |
| IT        | 16750.0000 |
| MARKETING | 20000.0000 |
+-----------+------------+
3 rows in set (0.00 sec)

mysql> select deptname,avg(salary) as avgsalary from employe group by deptname having avg(salary)>10000;
+-----------+------------+
| deptname  | avgsalary  |
+-----------+------------+
| IT        | 16750.0000 |
| MARKETING | 20000.0000 |
+-----------+------------+
2 rows in set (0.01 sec)

mysql> select deptname,count(*) as totalemploye from employe group by deptname having count(*)>=2;
+----------+--------------+
| deptname | totalemploye |
+----------+--------------+
| HR       |            2 |
| IT       |            2 |
+----------+--------------+
2 rows in set (0.00 sec)

mysql> select deptname,count(*) as totalemploye from employe group by deptname having count(*)>1;
+----------+--------------+
| deptname | totalemploye |
+----------+--------------+
| HR       |            2 |
| IT       |            2 |
+----------+--------------+
2 rows in set (0.00 sec)

mysql> select deptname,avg(salary) as avgsalary from employe group by deptname;
+-----------+------------+
| deptname  | avgsalary  |
+-----------+------------+
| HR        |  8500.0000 |
| IT        | 16750.0000 |
| MARKETING | 20000.0000 |
+-----------+------------+
3 rows in set (0.00 sec)

mysql> select deptname,avg(salary) as avgsalary from employe group by deptname having avg(salary)<10000;
+----------+-----------+
| deptname | avgsalary |
+----------+-----------+
| HR       | 8500.0000 |
+----------+-----------+
1 row in set (0.00 sec)

mysql> select deptname, min(salary)as minimumsalary from employe group by deptname having min(salary)<=20000;
+-----------+---------------+
| deptname  | minimumsalary |
+-----------+---------------+
| HR        |          2000 |
| IT        |         13500 |
| MARKETING |         20000 |
+-----------+---------------+
3 rows in set (0.00 sec)

mysql> select*from employe;
+------+-----------+--------+
| id   | deptname  | salary |
+------+-----------+--------+
| E101 | HR        |   2000 |
| E102 | HR        |  15000 |
| E103 | IT        |  20000 |
| E104 | IT        |  13500 |
| E105 | MARKETING |  20000 |
+------+-----------+--------+
5 rows in set (0.00 sec)

mysql> select e.id,e.deptname,e.salary from employe as e;
+------+-----------+--------+
| id   | deptname  | salary |
+------+-----------+--------+
| E101 | HR        |   2000 |
| E102 | HR        |  15000 |
| E103 | IT        |  20000 |
| E104 | IT        |  13500 |
| E105 | MARKETING |  20000 |
+------+-----------+--------+
5 rows in set (0.00 sec)

