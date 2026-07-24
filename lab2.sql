
mysql> create database bankdb;
Query OK, 1 row affected (0.02 sec)

mysql> use bankdb;
Database changed
mysql> create table bankaccount(account_id INT PRIMARY KEY,account_holder_name VARCHAR(100),account_balance DECIMAL(10,2));
Query OK, 0 rows affected (0.03 sec)

mysql> show tables;
+------------------+
| Tables_in_bankdb |
+------------------+
| bankaccount      |
+------------------+
1 row in set (0.00 sec)

mysql> desc bankaccount;
+---------------------+---------------+------+-----+---------+-------+
| Field               | Type          | Null | Key | Default | Extra |
+---------------------+---------------+------+-----+---------+-------+
| account_id          | int           | NO   | PRI | NULL    |       |
| account_holder_name | varchar(100)  | YES  |     | NULL    |       |
| account_balance     | decimal(10,2) | YES  |     | NULL    |       |
+---------------------+---------------+------+-----+---------+-------+
3 rows in set (0.02 sec)

mysql> insert into bankaccount (account_id,account_holder_name,account_balance)values (101,'jay',25000),(102,'pratik',45000),(103,'om',32000),(104,'kunal',15000);
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select*from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | jay                 |        25000.00 |
|        102 | pratik              |        45000.00 |
|        103 | om                  |        32000.00 |
|        104 | kunal               |        15000.00 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)

mysql> select account_holder_name,account_balance FROM bankaccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| jay                 |        25000.00 |
| pratik              |        45000.00 |
| om                  |        32000.00 |
| kunal               |        15000.00 |
+---------------------+-----------------+
4 rows in set (0.00 sec)
mysql> select account_holder_name,account_balance from bankaccount WHERE account_balance >30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| pratik              |        45000.00 |
| om                  |        32000.00 |
+---------------------+-----------------+
2 rows in set (0.01 sec)

mysql> update bankaccount set account_balance=35000 where account_id=101;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0
mysql> select* from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | jay                 |        35000.00 |
|        102 | pratik              |        45000.00 |
|        103 | om                  |        32000.00 |
|        104 | kunal               |        15000.00 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)

mysql> select* from bankaccount;



