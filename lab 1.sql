
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
9 rows in set (0.00 sec)

mysql> use ecommerce;
Database changed
mysql> create table coustomer(cust_id VARCHAR(10) primary key,name VARCHAR(30) not null,city VARCHAR(20
    -> ) not null, pincode INT(6) not null query ok,0 rows affected,1 warning (0.03 sec)
    -> use ecommerce;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'query ok,0 rows affected,1 warning (0.03 sec)
use ecommerce' at line 2
mysql>
mysql> show table;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> create table customer (cust_id VARCHAR(100 primary key,name VARCHAR(30) not null,city VARCHAR(20) NOT NULL,pincode INT not null);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'primary key,name VARCHAR(30) not null,city VARCHAR(20) NOT NULL,pincode INT not ' at line 1
mysql> create table customer (cust_id VARCHAR(10) primary key,name VARCHAR(30) not null,city VARCHAR(20) not null,pincode INT not null);
Query OK, 0 rows affected (0.04 sec)

mysql> desc customer;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| cust_id | varchar(10) | NO   | PRI | NULL    |       |
| name    | varchar(30) | NO   |     | NULL    |       |
| city    | varchar(20) | NO   |     | NULL    |       |
| pincode | int         | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.02 sec)

mysql> select*from customer ;
Empty set (0.00 sec)

mysql> insert into customer (cust_id,name,city,picode)values ("C101","jayesh","thane",400607);
ERROR 1054 (42S22): Unknown column 'picode' in 'field list'
mysql> insert into customer (cust_id ,name,city,pincode)values("c101","jayesh","thane",200020);
Query OK, 1 row affected (0.02 sec)

mysql> select*from customer;
+---------+--------+-------+---------+
| cust_id | name   | city  | pincode |
+---------+--------+-------+---------+
| c101    | jayesh | thane |  200020 |
+---------+--------+-------+---------+
1 row in set (0.00 sec)

mysql> insert into customer (cust_id,name city,pincode
    ->
    ->
    ->
    -> select*from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'city,pincode



select*from customer' at line 1
mysql> select*from customer;
+---------+--------+-------+---------+
| cust_id | name   | city  | pincode |
+---------+--------+-------+---------+
| c101    | jayesh | thane |  200020 |
+---------+--------+-------+---------+
1 row in set (0.00 sec)

mysql> insert into customer values("C102","rahul","mumbra",292299);
Query OK, 1 row affected (0.02 sec)

mysql> select*from customer;
+---------+--------+--------+---------+
| cust_id | name   | city   | pincode |
+---------+--------+--------+---------+
| c101    | jayesh | thane  |  200020 |
| C102    | rahul  | mumbra |  292299 |
+---------+--------+--------+---------+
2 rows in set (0.00 sec)

mysql> insert into customer values("C103""omkar","vasai",421306);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> inser into customer values("C103","omi","vasai",421306);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'inser into customer values("C103","omi","vasai",421306)' at line 1
mysql> select*from customer;
+---------+--------+--------+---------+
| cust_id | name   | city   | pincode |
+---------+--------+--------+---------+
| c101    | jayesh | thane  |  200020 |
| C102    | rahul  | mumbra |  292299 |
+---------+--------+--------+---------+
2 rows in set (0.00 sec)

mysql> insert into customer values("c103","ram","mumbai",403256),("C104","shubham","vashin",458970);
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select
    ->
    -> select*from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select*from customer' at line 3
mysql> select*from customer;
+---------+---------+--------+---------+
| cust_id | name    | city   | pincode |
+---------+---------+--------+---------+
| c101    | jayesh  | thane  |  200020 |
| C102    | rahul   | mumbra |  292299 |
| c103    | ram     | mumbai |  403256 |
| C104    | shubham | vashin |  458970 |
+---------+---------+--------+---------+
4 rows in set (0.00 sec)

mysql> select name from cutomer;
ERROR 1146 (42S02): Table 'ecommerce.cutomer' doesn't exist
mysql> select name from customer;
+---------+
| name    |
+---------+
| jayesh  |
| rahul   |
| ram     |
| shubham |
+---------+
4 rows in set (0.00 sec)

mysql> ^C
mysql>