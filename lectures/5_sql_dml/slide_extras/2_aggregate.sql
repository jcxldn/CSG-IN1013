# Aggregate functions


SELECT COUNT(name)
FROM mccPlayer
WHERE p_town = 'Alnwick';

/*
+-------------+
| COUNT(name) |
+-------------+
|           2 |
+-------------+
1 row in set (0.00 sec)
*/

SELECT COUNT(*) FROM mccMatches; 

/*
+----------+
| COUNT(*) |
+----------+
|       13 |
+----------+
1 row in set (0.00 sec)
*/

SELECT COUNT(age) FROM mccPlayer
WHERE age >= 50;

/*
+------------+
| COUNT(age) |
+------------+
|          1 |
+------------+
1 row in set (0.00 sec)
*/

SELECT COUNT(g_town) FROM mccGround;

/*
+---------------+
| COUNT(g_town) |
+---------------+
|             9 |
+---------------+
1 row in set (0.00 sec)
*/

SELECT COUNT(DISTINCT g_town) FROM mccGround;

/*
+------------------------+
| COUNT(DISTINCT g_town) |
+------------------------+
|                      6 |
+------------------------+
1 row in set (0.00 sec)
*/

SELECT MAX(batting_score) FROM mccMatch_performance; 

/*
+--------------------+
| MAX(batting_score) |
+--------------------+
|                151 |
+--------------------+
1 row in set (0.00 sec)
*/

SELECT MIN(batting_score) FROM mccMatch_performance; 

/*
mysql> SELECT MIN(batting_score) FROM mccMatch_performance; 
+--------------------+
| MIN(batting_score) |
+--------------------+
|                  0 |
+--------------------+
1 row in set (0.00 sec)
*/

SELECT AVG(batting_score) FROM mccMatch_performance; 

/*
+--------------------+
| AVG(batting_score) |
+--------------------+
|            57.8352 |
+--------------------+
1 row in set (0.00 sec)
*/

SELECT SUM(batting_score) FROM mccMatch_performance; 

/*
+--------------------+
| SUM(batting_score) |
+--------------------+
|               5263 |
+--------------------+
1 row in set (0.00 sec)
*/

SELECT MAX(batting_score) FROM mccMatch_performance WHERE match_date > 120100; 

/*
+--------------------+
| MAX(batting_score) |
+--------------------+
|                151 |
+--------------------+
1 row in set (0.00 sec)
*/

SELECT SUM(batting_score) FROM mccMatch_performance
WHERE match_date = 100615;

/*
+--------------------+
| SUM(batting_score) |
+--------------------+
|                408 |
+--------------------+
1 row in set (0.00 sec)
*/

SELECT AVG(batting_score),
		SUM(batting_score) / COUNT(batting_score) as Average,
		SUM(batting_score * batting_score) as "Sum of Squares",
		SUM(batting_score) * SUM(batting_score) as "Squared Sum",
		COUNT(DISTINCT (batting_score % 10)) as "Distinct modulos"
FROM mccMatch_performance;

/*
+--------------------+---------+----------------+-------------+------------------+
| AVG(batting_score) | Average | Sum of Squares | Squared Sum | Distinct modulos |
+--------------------+---------+----------------+-------------+------------------+
|            57.8352 | 57.8352 |         505511 |    27699169 |                6 |
+--------------------+---------+----------------+-------------+------------------+
*/