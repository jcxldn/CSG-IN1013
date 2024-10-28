# Single table queries

SELECT registration_number, name, age, p_street, p_town, p_postcode	
FROM mccPlayer;

/*
+---------------------+------------------------+------+-------------------+------------+------------+
| registration_number | name                   | age  | p_street          | p_town     | p_postcode |
+---------------------+------------------------+------+-------------------+------------+------------+
| 1001                | AB de Villers          |   29 | Damside           | Morpeth    | NE61 3RP   |
| 1002                | Hashim Amla            |   30 | Old Gate          | Morpeth    | NE61 9LZ   |
| 1003                | Michael Clarke         |   32 | Hotspur Street    | Alnwick    | NE66 8FQ   |
| 1004                | Kumar Sangakkara       |   36 | Percy Street      | Alnwick    | NE66 6ST   |
| 1005                | Shivnarine Chanderpaul |   39 | Well Way          | Morpeth    | NE65 9DR   |
| 1006                | Dale Steyn             |   30 | Wellbeck Road     | Byker      | NE6 3RE    |
| 1007                | Vernon Philander       |   28 | Hollon Street     | Morpeth    | NE65 9DS   |
| 1008                | Rangana Herath         |   35 | Whickham Gardens  | Byker      | NE6 3RB    |
| 1009                | Saeed Ajmal            |   36 | Priory Orchard    | Durham     | DH3 9PQ    |
| 1010                | Ravichandran Ashwin    |   27 | Foyle Street      | Sunderland | SR2 4PO    |
| 1011                | Shane Watson           |   32 | Hawthorne Terrace | Durham     | DH3 9PS    |
| 1012                | Sachin Tendulkar       |   40 | Millburn Street   | Sunderland | SR3 9LV    |
+---------------------+------------------------+------+-------------------+------------+------------+
12 rows in set (0.00 sec)
*/

SELECT * FROM mccPlayer;

/*
+---------------------+------------------------+------+-------------------+------------+------------+
| registration_number | name                   | age  | p_street          | p_town     | p_postcode |
+---------------------+------------------------+------+-------------------+------------+------------+
| 1001                | AB de Villers          |   29 | Damside           | Morpeth    | NE61 3RP   |
| 1002                | Hashim Amla            |   30 | Old Gate          | Morpeth    | NE61 9LZ   |
| 1003                | Michael Clarke         |   32 | Hotspur Street    | Alnwick    | NE66 8FQ   |
| 1004                | Kumar Sangakkara       |   36 | Percy Street      | Alnwick    | NE66 6ST   |
| 1005                | Shivnarine Chanderpaul |   39 | Well Way          | Morpeth    | NE65 9DR   |
| 1006                | Dale Steyn             |   30 | Wellbeck Road     | Byker      | NE6 3RE    |
| 1007                | Vernon Philander       |   28 | Hollon Street     | Morpeth    | NE65 9DS   |
| 1008                | Rangana Herath         |   35 | Whickham Gardens  | Byker      | NE6 3RB    |
| 1009                | Saeed Ajmal            |   36 | Priory Orchard    | Durham     | DH3 9PQ    |
| 1010                | Ravichandran Ashwin    |   27 | Foyle Street      | Sunderland | SR2 4PO    |
| 1011                | Shane Watson           |   32 | Hawthorne Terrace | Durham     | DH3 9PS    |
| 1012                | Sachin Tendulkar       |   40 | Millburn Street   | Sunderland | SR3 9LV    |
+---------------------+------------------------+------+-------------------+------------+------------+
12 rows in set (0.00 sec)
*/

SELECT name, p_town 
FROM mccPlayer;

/*
+------------------------+------------+
| name                   | p_town     |
+------------------------+------------+
| AB de Villers          | Morpeth    |
| Hashim Amla            | Morpeth    |
| Michael Clarke         | Alnwick    |
| Kumar Sangakkara       | Alnwick    |
| Shivnarine Chanderpaul | Morpeth    |
| Dale Steyn             | Byker      |
| Vernon Philander       | Morpeth    |
| Rangana Herath         | Byker      |
| Saeed Ajmal            | Durham     |
| Ravichandran Ashwin    | Sunderland |
| Shane Watson           | Durham     |
| Sachin Tendulkar       | Sunderland |
+------------------------+------------+
12 rows in set (0.00 sec)
*/

SELECT name AS "Full_name", p_town AS "Town"
FROM mccPlayer;

/*
+------------------------+------------+
| Full_name              | Town       |
+------------------------+------------+
| AB de Villers          | Morpeth    |
| Hashim Amla            | Morpeth    |
| Michael Clarke         | Alnwick    |
| Kumar Sangakkara       | Alnwick    |
| Shivnarine Chanderpaul | Morpeth    |
| Dale Steyn             | Byker      |
| Vernon Philander       | Morpeth    |
| Rangana Herath         | Byker      |
| Saeed Ajmal            | Durham     |
| Ravichandran Ashwin    | Sunderland |
| Shane Watson           | Durham     |
| Sachin Tendulkar       | Sunderland |
+------------------------+------------+
12 rows in set (0.00 sec)
*/

SELECT DISTINCT p_town	
FROM mccPlayer;

/*
+------------+
| p_town     |
+------------+
| Morpeth    |
| Alnwick    |
| Byker      |
| Durham     |
| Sunderland |
+------------+
5 rows in set (0.01 sec)
*/

SELECT DISTINCT p_town AS town
FROM mccPlayer;

/*
+------------+
| town       |
+------------+
| Morpeth    |
| Alnwick    |
| Byker      |
| Durham     |
| Sunderland |
+------------+
5 rows in set (0.00 sec)
*/

SELECT name, age		
FROM mccPlayer
WHERE age > 35;

/*
+------------------------+------+
| name                   | age  |
+------------------------+------+
| Kumar Sangakkara       |   36 |
| Shivnarine Chanderpaul |   39 |
| Saeed Ajmal            |   36 |
| Sachin Tendulkar       |   40 |
+------------------------+------+
4 rows in set (0.00 sec)
*/

SELECT name, age		
FROM mccPlayer
WHERE age < 30;

/*
+---------------------+------+
| name                | age  |
+---------------------+------+
| AB de Villers       |   29 |
| Vernon Philander    |   28 |
| Ravichandran Ashwin |   27 |
+---------------------+------+
3 rows in set (0.00 sec)
*/

SELECT name, age		
FROM mccPlayer
WHERE age < 30 
OR age >= 35;

/*
+------------------------+------+
| name                   | age  |
+------------------------+------+
| AB de Villers          |   29 |
| Kumar Sangakkara       |   36 |
| Shivnarine Chanderpaul |   39 |
| Vernon Philander       |   28 |
| Rangana Herath         |   35 |
| Saeed Ajmal            |   36 |
| Ravichandran Ashwin    |   27 |
| Sachin Tendulkar       |   40 |
+------------------------+------+
8 rows in set (0.00 sec)
*/

SELECT name, age		
FROM mccPlayer
WHERE age > 35 
AND p_town = 'Alnwick';

/*
+------------------+------+
| name             | age  |
+------------------+------+
| Kumar Sangakkara |   36 |
+------------------+------+
1 row in set (0.00 sec)
*/

SELECT name, age		
FROM mccPlayer
WHERE age > 35 
AND p_town != 'Alnwick';

/*
+------------------------+------+
| name                   | age  |
+------------------------+------+
| Shivnarine Chanderpaul |   39 |
| Saeed Ajmal            |   36 |
| Sachin Tendulkar       |   40 |
+------------------------+------+
3 rows in set (0.00 sec)
*/

SELECT name, age, p_town		
FROM mccPlayer
WHERE p_town IN ("Alnwick", "Morpeth");

/*
+------------------------+------+---------+
| name                   | age  | p_town  |
+------------------------+------+---------+
| AB de Villers          |   29 | Morpeth |
| Hashim Amla            |   30 | Morpeth |
| Michael Clarke         |   32 | Alnwick |
| Kumar Sangakkara       |   36 | Alnwick |
| Shivnarine Chanderpaul |   39 | Morpeth |
| Vernon Philander       |   28 | Morpeth |
+------------------------+------+---------+
6 rows in set (0.00 sec)
*/

SELECT name, age, p_town		
FROM mccPlayer
WHERE p_town NOT IN ("Alnwick", "Morpeth");

/*
+---------------------+------+------------+
| name                | age  | p_town     |
+---------------------+------+------------+
| Dale Steyn          |   30 | Byker      |
| Rangana Herath      |   35 | Byker      |
| Saeed Ajmal         |   36 | Durham     |
| Ravichandran Ashwin |   27 | Sunderland |
| Shane Watson        |   32 | Durham     |
| Sachin Tendulkar    |   40 | Sunderland |
+---------------------+------+------------+
6 rows in set (0.00 sec)
*/

SELECT name, age, p_town		
FROM mccPlayer
WHERE p_town LIKE "Alnwick";

/*
+------------------+------+---------+
| name             | age  | p_town  |
+------------------+------+---------+
| Michael Clarke   |   32 | Alnwick |
| Kumar Sangakkara |   36 | Alnwick |
+------------------+------+---------+
2 rows in set (0.00 sec)
*/

SELECT name, age, p_town		
FROM mccPlayer
WHERE p_town LIKE "%wick";

/*
+------------------+------+---------+
| name             | age  | p_town  |
+------------------+------+---------+
| Michael Clarke   |   32 | Alnwick |
| Kumar Sangakkara |   36 | Alnwick |
+------------------+------+---------+
2 rows in set (0.01 sec)
*/

SELECT name, age, p_town		
FROM mccPlayer
WHERE p_town LIKE "%r%";

/*
+------------------------+------+------------+
| name                   | age  | p_town     |
+------------------------+------+------------+
| AB de Villers          |   29 | Morpeth    |
| Hashim Amla            |   30 | Morpeth    |
| Shivnarine Chanderpaul |   39 | Morpeth    |
| Dale Steyn             |   30 | Byker      |
| Vernon Philander       |   28 | Morpeth    |
| Rangana Herath         |   35 | Byker      |
| Saeed Ajmal            |   36 | Durham     |
| Ravichandran Ashwin    |   27 | Sunderland |
| Shane Watson           |   32 | Durham     |
| Sachin Tendulkar       |   40 | Sunderland |
+------------------------+------+------------+
10 rows in set (0.00 sec)
*/

SELECT name, age, p_town
FROM mccPlayer
WHERE p_town LIKE "%r%" AND p_town LIKE "%u%";

/*
+---------------------+------+------------+
| name                | age  | p_town     |
+---------------------+------+------------+
| Saeed Ajmal         |   36 | Durham     |
| Ravichandran Ashwin |   27 | Sunderland |
| Shane Watson        |   32 | Durham     |
| Sachin Tendulkar    |   40 | Sunderland |
+---------------------+------+------------+
4 rows in set (0.00 sec)
*/

SELECT name, age, p_town
FROM mccPlayer
WHERE p_town LIKE "%e%r%";

/*
+---------------------+------+------------+
| name                | age  | p_town     |
+---------------------+------+------------+
| Dale Steyn          |   30 | Byker      |
| Rangana Herath      |   35 | Byker      |
| Ravichandran Ashwin |   27 | Sunderland |
| Sachin Tendulkar    |   40 | Sunderland |
+---------------------+------+------------+
*/


INSERT INTO mccPlayer VALUES ("1013", "Chris Smart", 50, NULL, "Tynemouth", "NE30 1RP");

/*
Query OK, 1 row affected (0.00 sec)
*/

SELECT * FROM mccPlayer WHERE p_street IS NULL;

/*
+---------------------+-------------+------+----------+-----------+------------+
| registration_number | name        | age  | p_street | p_town    | p_postcode |
+---------------------+-------------+------+----------+-----------+------------+
| 1013                | Chris Smart |   50 | NULL     | Tynemouth | NE30 1RP   |
+---------------------+-------------+------+----------+-----------+------------+
1 row in set (0.00 sec)
*/

SELECT * FROM mccPlayer WHERE p_street IS NOT NULL;

/*
+---------------------+------------------------+------+-------------------+------------+------------+
| registration_number | name                   | age  | p_street          | p_town     | p_postcode |
+---------------------+------------------------+------+-------------------+------------+------------+
| 1001                | AB de Villers          |   29 | Damside           | Morpeth    | NE61 3RP   |
| 1002                | Hashim Amla            |   30 | Old Gate          | Morpeth    | NE61 9LZ   |
| 1003                | Michael Clarke         |   32 | Hotspur Street    | Alnwick    | NE66 8FQ   |
| 1004                | Kumar Sangakkara       |   36 | Percy Street      | Alnwick    | NE66 6ST   |
| 1005                | Shivnarine Chanderpaul |   39 | Well Way          | Morpeth    | NE65 9DR   |
| 1006                | Dale Steyn             |   30 | Wellbeck Road     | Byker      | NE6 3RE    |
| 1007                | Vernon Philander       |   28 | Hollon Street     | Morpeth    | NE65 9DS   |
| 1008                | Rangana Herath         |   35 | Whickham Gardens  | Byker      | NE6 3RB    |
| 1009                | Saeed Ajmal            |   36 | Priory Orchard    | Durham     | DH3 9PQ    |
| 1010                | Ravichandran Ashwin    |   27 | Foyle Street      | Sunderland | SR2 4PO    |
| 1011                | Shane Watson           |   32 | Hawthorne Terrace | Durham     | DH3 9PS    |
| 1012                | Sachin Tendulkar       |   40 | Millburn Street   | Sunderland | SR3 9LV    |
+---------------------+------------------------+------+-------------------+------------+------------+
12 rows in set (0.00 sec)
*/

SELECT name, age, p_town		
FROM mccPlayer
ORDER BY p_town ASC;

/*
+------------------------+------+------------+
| name                   | age  | p_town     |
+------------------------+------+------------+
| Michael Clarke         |   32 | Alnwick    |
| Kumar Sangakkara       |   36 | Alnwick    |
| Dale Steyn             |   30 | Byker      |
| Rangana Herath         |   35 | Byker      |
| Saeed Ajmal            |   36 | Durham     |
| Shane Watson           |   32 | Durham     |
| AB de Villers          |   29 | Morpeth    |
| Hashim Amla            |   30 | Morpeth    |
| Shivnarine Chanderpaul |   39 | Morpeth    |
| Vernon Philander       |   28 | Morpeth    |
| Ravichandran Ashwin    |   27 | Sunderland |
| Sachin Tendulkar       |   40 | Sunderland |
| Chris Smart            |   50 | Tynemouth  |
+------------------------+------+------------+
13 rows in set (0.00 sec)
*/

SELECT name, age, p_town		
FROM mccPlayer
ORDER BY p_town DESC;

/*
+------------------------+------+------------+
| name                   | age  | p_town     |
+------------------------+------+------------+
| Chris Smart            |   50 | Tynemouth  |
| Ravichandran Ashwin    |   27 | Sunderland |
| Sachin Tendulkar       |   40 | Sunderland |
| AB de Villers          |   29 | Morpeth    |
| Hashim Amla            |   30 | Morpeth    |
| Shivnarine Chanderpaul |   39 | Morpeth    |
| Vernon Philander       |   28 | Morpeth    |
| Saeed Ajmal            |   36 | Durham     |
| Shane Watson           |   32 | Durham     |
| Dale Steyn             |   30 | Byker      |
| Rangana Herath         |   35 | Byker      |
| Michael Clarke         |   32 | Alnwick    |
| Kumar Sangakkara       |   36 | Alnwick    |
+------------------------+------+------------+
13 rows in set (0.00 sec)
*/

SELECT ground_name, g_town
FROM mccGround
ORDER BY g_town DESC, ground_name ASC;

/*
+---------------------+------------+
| ground_name         | g_town     |
+---------------------+------------+
| Gasworks            | Tynemouth  |
| Ashbrooke           | Sunderland |
| Whitburn Hall       | Sunderland |
| Trent Bridge        | Nottingham |
| Crystal Palace Park | London     |
| The Oval            | London     |
| Riverside Ground    | Durham     |
| Collingwood Fields  | Darlington |
| Leaside             | Darlington |
+---------------------+------------+
9 rows in set (0.00 sec)
*/