mysql> select *from products;
Empty set (0.00 sec)

mysql> desc products;
+----------------+---------------+------+-----+-------------------+-------------------+
| Field          | Type          | Null | Key | Default           | Extra             |
+----------------+---------------+------+-----+-------------------+-------------------+
| product_id     | int           | NO   | PRI | NULL              | auto_increment    |
| product_name   | varchar(100)  | NO   |     | NULL              |                   |
| category       | varchar(50)   | YES  |     | NULL              |                   |
| price          | decimal(10,2) | NO   |     | NULL              |                   |
| stock_quantity | int           | YES  |     | 0                 |                   |
| created_at     | timestamp     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+----------------+---------------+------+-----+-------------------+-------------------+
6 rows in set (0.00 sec)
mysql> insert into products(product_name,category,price,stock_quantity)values('bat','sport',200,12);
Query OK, 1 row affected (0.02 sec)

mysql> select*from products;
+------------+--------------+----------+--------+----------------+---------------------+
| product_id | product_name | category | price  | stock_quantity | created_at          |
+------------+--------------+----------+--------+----------------+---------------------+
|          1 | bat          | sport    | 200.00 |             12 | 2026-07-22 15:55:15 |
+------------+--------------+----------+--------+----------------+---------------------+
1 row in set (0.00 sec)
mysql> insert into products(product_name,category,price,stock_quantity)values('bat','sport',200,12);
Query OK, 1 row affected (0.02 sec)

mysql> select*from products;
+------------+--------------+----------+--------+----------------+---------------------+
| product_id | product_name | category | price  | stock_quantity | created_at          |
+------------+--------------+----------+--------+----------------+---------------------+
|          1 | bat          | sport    | 200.00 |             12 | 2026-07-22 15:55:15 |
+------------+--------------+----------+--------+----------------+---------------------+
1 row in set (0.00 sec)

mysql> insert into products(product_name,category,price,stock_quantity)values('ball','sport',100,13);
Query OK, 1 row affected (0.02 sec)

mysql> select*from products;
+------------+--------------+----------+--------+----------------+---------------------+
| product_id | product_name | category | price  | stock_quantity | created_at          |
+------------+--------------+----------+--------+----------------+---------------------+
|          1 | bat          | sport    | 200.00 |             12 | 2026-07-22 15:55:15 |
|          2 | ball         | sport    | 100.00 |             13 | 2026-07-22 15:56:14 |
+------------+--------------+----------+--------+----------------+---------------------+
2 rows in set (0.00 sec)

mysql> insert into products(product_name,category,price,stock_quantity)values('speaker','sound',400,14);
Query OK, 1 row affected (0.02 sec)

mysql> select*from products;
+------------+--------------+----------+--------+----------------+---------------------+
| product_id | product_name | category | price  | stock_quantity | created_at          |
+------------+--------------+----------+--------+----------------+---------------------+
|          1 | bat          | sport    | 200.00 |             12 | 2026-07-22 15:55:15 |
|          2 | ball         | sport    | 100.00 |             13 | 2026-07-22 15:56:14 |
|          3 | speaker      | sound    | 400.00 |             14 | 2026-07-22 15:56:59 |
+------------+--------------+----------+--------+----------------+---------------------+
3 rows in set (0.00 sec)

mysql> insert into products(product_name,category,price,stock_quantity)values('carrot','vegies',36,15);
Query OK, 1 row affected (0.02 sec)

mysql> insert into products(product_name,category,price,stock_quantity)values('carrot','onion',50,38);
Query OK, 1 row affected (0.02 sec)

mysql> select*from products;
+------------+--------------+----------+--------+----------------+---------------------+
| product_id | product_name | category | price  | stock_quantity | created_at          |
+------------+--------------+----------+--------+----------------+---------------------+
|          1 | bat          | sport    | 200.00 |             12 | 2026-07-22 15:55:15 |
|          2 | ball         | sport    | 100.00 |             13 | 2026-07-22 15:56:14 |
|          3 | speaker      | sound    | 400.00 |             14 | 2026-07-22 15:56:59 |
|          4 | carrot       | vegies   |  36.00 |             15 | 2026-07-22 15:57:39 |
|          5 | carrot       | onion    |  50.00 |             38 | 2026-07-22 15:58:08 |
+------------+--------------+----------+--------+----------------+---------------------+
5 rows in set (0.00 sec)

mysql> insert into products(product_name,category,price,stock_quantity)values('football','sport',100,89);
Query OK, 1 row affected (0.02 sec)

mysql> select*from products;
+------------+--------------+----------+--------+----------------+---------------------+
| product_id | product_name | category | price  | stock_quantity | created_at          |
+------------+--------------+----------+--------+----------------+---------------------+
|          1 | bat          | sport    | 200.00 |             12 | 2026-07-22 15:55:15 |
|          2 | ball         | sport    | 100.00 |             13 | 2026-07-22 15:56:14 |
|          3 | speaker      | sound    | 400.00 |             14 | 2026-07-22 15:56:59 |
|          4 | carrot       | vegies   |  36.00 |             15 | 2026-07-22 15:57:39 |
|          5 | carrot       | onion    |  50.00 |             38 | 2026-07-22 15:58:08 |
|          6 | football     | sport    | 100.00 |             89 | 2026-07-22 15:58:40 |
+------------+--------------+----------+--------+----------------+---------------------+
6 rows in set (0.00 sec)
mysql> SELECT product_id, product_name, price FROM products WHERE product_id BETWEEN 2 AND 6;
+------------+--------------+--------+
| product_id | product_name | price  |
+------------+--------------+--------+
|          2 | ball         | 100.00 |
|          3 | speaker      | 400.00 |
|          4 | carrot       |  36.00 |
|          5 | carrot       |  50.00 |
|          6 | football     | 100.00 |
+------------+--------------+--------+
5 rows in set (0.00 sec)
mysql> select *from products where product_name  between 'a' and 'f';
+------------+--------------+----------+--------+----------------+---------------------+
| product_id | product_name | category | price  | stock_quantity | created_at          |
+------------+--------------+----------+--------+----------------+---------------------+
|          1 | bat          | sport    | 200.00 |             12 | 2026-07-22 15:55:15 |
|          2 | ball         | sport    | 100.00 |             13 | 2026-07-22 15:56:14 |
|          4 | carrot       | vegies   |  36.00 |             15 | 2026-07-22 15:57:39 |
|          5 | carrot       | onion    |  50.00 |             38 | 2026-07-22 15:58:08 |
+------------+--------------+----------+--------+----------------+---------------------+
4 rows in set (0.00 sec)

mysql> select*from products where product_name not between 'a' and 'f' ;
+------------+--------------+----------+--------+----------------+---------------------+
| product_id | product_name | category | price  | stock_quantity | created_at          |
+------------+--------------+----------+--------+----------------+---------------------+
|          3 | speaker      | sound    | 400.00 |             14 | 2026-07-22 15:56:59 |
|          6 | football     | sport    | 100.00 |             89 | 2026-07-22 15:58:40 |
+------------+--------------+----------+--------+----------------+---------------------+
2 rows in set (0.00 sec)

mysql> select *from products where product_id in(2,4,5);
+------------+--------------+----------+--------+----------------+---------------------+
| product_id | product_name | category | price  | stock_quantity | created_at          |
+------------+--------------+----------+--------+----------------+---------------------+
|          2 | ball         | sport    | 100.00 |             13 | 2026-07-22 15:56:14 |
|          4 | carrot       | vegies   |  36.00 |             15 | 2026-07-22 15:57:39 |
|          5 | carrot       | onion    |  50.00 |             38 | 2026-07-22 15:58:08 |
+------------+--------------+----------+--------+----------------+---------------------+
3 rows in set (0.00 sec)

mysql> select *from products where product_id not in(2,4,5);
+------------+--------------+----------+--------+----------------+---------------------+
| product_id | product_name | category | price  | stock_quantity | created_at          |
+------------+--------------+----------+--------+----------------+---------------------+
|          1 | bat          | sport    | 200.00 |             12 | 2026-07-22 15:55:15 |
|          3 | speaker      | sound    | 400.00 |             14 | 2026-07-22 15:56:59 |
|          6 | football     | sport    | 100.00 |             89 | 2026-07-22 15:58:40 |
+------------+--------------+----------+--------+----------------+---------------------+
3 rows in set (0.00 sec)

mysql> select*from products;
+------------+--------------+----------+--------+----------------+---------------------+
| product_id | product_name | category | price  | stock_quantity | created_at          |
+------------+--------------+----------+--------+----------------+---------------------+
|          1 | bat          | sport    | 200.00 |             12 | 2026-07-22 15:55:15 |
|          2 | ball         | sport    | 100.00 |             13 | 2026-07-22 15:56:14 |
|          3 | speaker      | sound    | 400.00 |             14 | 2026-07-22 15:56:59 |
|          4 | carrot       | vegies   |  36.00 |             15 | 2026-07-22 15:57:39 |
|          5 | carrot       | onion    |  50.00 |             38 | 2026-07-22 15:58:08 |
|          6 | football     | sport    | 100.00 |             89 | 2026-07-22 15:58:40 |
+------------+--------------+----------+--------+----------------+---------------------+
6 rows in set (0.00 sec)

mysql> select *from products where product_name is null;
Empty set (0.00 sec)

mysql> select *from products order by product_name;
+------------+--------------+----------+--------+----------------+---------------------+
| product_id | product_name | category | price  | stock_quantity | created_at          |
+------------+--------------+----------+--------+----------------+---------------------+
|          2 | ball         | sport    | 100.00 |             13 | 2026-07-22 15:56:14 |
|          1 | bat          | sport    | 200.00 |             12 | 2026-07-22 15:55:15 |
|          4 | carrot       | vegies   |  36.00 |             15 | 2026-07-22 15:57:39 |
|          5 | carrot       | onion    |  50.00 |             38 | 2026-07-22 15:58:08 |
|          6 | football     | sport    | 100.00 |             89 | 2026-07-22 15:58:40 |
|          3 | speaker      | sound    | 400.00 |             14 | 2026-07-22 15:56:59 |
+------------+--------------+----------+--------+----------------+---------------------+
6 rows in set (0.00 sec)

mysql> select *from products order by product_name desc;
+------------+--------------+----------+--------+----------------+---------------------+
| product_id | product_name | category | price  | stock_quantity | created_at          |
+------------+--------------+----------+--------+----------------+---------------------+
|          3 | speaker      | sound    | 400.00 |             14 | 2026-07-22 15:56:59 |
|          6 | football     | sport    | 100.00 |             89 | 2026-07-22 15:58:40 |
|          4 | carrot       | vegies   |  36.00 |             15 | 2026-07-22 15:57:39 |
|          5 | carrot       | onion    |  50.00 |             38 | 2026-07-22 15:58:08 |
|          1 | bat          | sport    | 200.00 |             12 | 2026-07-22 15:55:15 |
|          2 | ball         | sport    | 100.00 |             13 | 2026-07-22 15:56:14 |
+------------+--------------+----------+--------+----------------+---------------------+
6 rows in set (0.00 sec)

mysql>  select *from products order by price desc;
+------------+--------------+----------+--------+----------------+---------------------+
| product_id | product_name | category | price  | stock_quantity | created_at          |
+------------+--------------+----------+--------+----------------+---------------------+
|          3 | speaker      | sound    | 400.00 |             14 | 2026-07-22 15:56:59 |
|          1 | bat          | sport    | 200.00 |             12 | 2026-07-22 15:55:15 |
|          2 | ball         | sport    | 100.00 |             13 | 2026-07-22 15:56:14 |
|          6 | football     | sport    | 100.00 |             89 | 2026-07-22 15:58:40 |
|          5 | carrot       | onion    |  50.00 |             38 | 2026-07-22 15:58:08 |
|          4 | carrot       | vegies   |  36.00 |             15 | 2026-07-22 15:57:39 |
+------------+--------------+----------+--------+----------------+---------------------+
6 rows in set (0.00 sec)

mysql>  select *from products order by price ;
+------------+--------------+----------+--------+----------------+---------------------+
| product_id | product_name | category | price  | stock_quantity | created_at          |
+------------+--------------+----------+--------+----------------+---------------------+
|          4 | carrot       | vegies   |  36.00 |             15 | 2026-07-22 15:57:39 |
|          5 | carrot       | onion    |  50.00 |             38 | 2026-07-22 15:58:08 |
|          2 | ball         | sport    | 100.00 |             13 | 2026-07-22 15:56:14 |
|          6 | football     | sport    | 100.00 |             89 | 2026-07-22 15:58:40 |
|          1 | bat          | sport    | 200.00 |             12 | 2026-07-22 15:55:15 |
|          3 | speaker      | sound    | 400.00 |             14 | 2026-07-22 15:56:59 |
+------------+--------------+----------+--------+----------------+---------------------+
6 rows in set (0.00 sec)

mysql> select *from products order by price desc limit 3;
+------------+--------------+----------+--------+----------------+---------------------+
| product_id | product_name | category | price  | stock_quantity | created_at          |
+------------+--------------+----------+--------+----------------+---------------------+
|          3 | speaker      | sound    | 400.00 |             14 | 2026-07-22 15:56:59 |
|          1 | bat          | sport    | 200.00 |             12 | 2026-07-22 15:55:15 |
|          2 | ball         | sport    | 100.00 |             13 | 2026-07-22 15:56:14 |
+------------+--------------+----------+--------+----------------+---------------------+
3 rows in set (0.00 sec)

mysql> select *from products where category='sport' and price=200;
+------------+--------------+----------+--------+----------------+---------------------+
| product_id | product_name | category | price  | stock_quantity | created_at          |
+------------+--------------+----------+--------+----------------+---------------------+
|          1 | bat          | sport    | 200.00 |             12 | 2026-07-22 15:55:15 |
+------------+--------------+----------+--------+----------------+---------------------+
1 row in set (0.01 sec)

mysql> select sum(price)from products;
+------------+
| sum(price) |
+------------+
|     886.00 |
+------------+
1 row in set (0.01 sec)

mysql> select avg(price)from products;
+------------+
| avg(price) |
+------------+
| 147.666667 |
+------------+
1 row in set (0.00 sec)

mysql> select count(price)from products;
+--------------+
| count(price) |
+--------------+
|            6 |
+--------------+
1 row in set (0.02 sec)
