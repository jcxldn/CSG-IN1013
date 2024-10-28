# Sub queries

SELECT DISTINCT name 
FROM mccPlayer, mccMatch_performance 
WHERE mccPlayer.registration_number = mccMatch_performance.registration_number 
AND batting_score >= 100; 

/*
+------------------+
| name             |
+------------------+
| Shane Watson     |
| Sachin Tendulkar |
+------------------+
2 rows in set (0.00 sec)
*/

SELECT name
FROM mccPlayer
WHERE registration_number IN (	SELECT DISTINCT registration_number 
								FROM mccMatch_performance 
								WHERE batting_score >= 100); 

/*
+------------------+
| name             |
+------------------+
| Shane Watson     |
| Sachin Tendulkar |
+------------------+
2 rows in set (0.00 sec)
*/

SELECT name
FROM mccPlayer
WHERE registration_number NOT IN (	SELECT DISTINCT registration_number 
									FROM mccMatch_performance); 

/*
+------------------------+
| name                   |
+------------------------+
| Kumar Sangakkara       |
| Shivnarine Chanderpaul |
| Dale Steyn             |
| Vernon Philander       |
| Rangana Herath         |
| Chris Smart            |
+------------------------+
6 rows in set (0.00 sec)
*/

SELECT registration_number, batting_score
FROM mccMatch_performance
WHERE batting_score IN (	SELECT MAX(batting_score) 
							FROM mccMatch_performance); 

/*
+---------------------+---------------+
| registration_number | batting_score |
+---------------------+---------------+
| 1011                |           151 |
| 1011                |           151 |
| 1011                |           151 |
| 1011                |           151 |
| 1011                |           151 |
| 1011                |           151 |
| 1011                |           151 |
| 1011                |           151 |
| 1011                |           151 |
| 1011                |           151 |
| 1011                |           151 |
| 1011                |           151 |
| 1011                |           151 |
+---------------------+---------------+
13 rows in set (0.00 sec)
*/

SELECT registration_number, batting_score
FROM mccMatch_performance
WHERE batting_score = (	SELECT MAX(batting_score) 
						FROM mccMatch_performance); 

/*
+---------------------+---------------+
| registration_number | batting_score |
+---------------------+---------------+
| 1011                |           151 |
| 1011                |           151 |
| 1011                |           151 |
| 1011                |           151 |
| 1011                |           151 |
| 1011                |           151 |
| 1011                |           151 |
| 1011                |           151 |
| 1011                |           151 |
| 1011                |           151 |
| 1011                |           151 |
| 1011                |           151 |
| 1011                |           151 |
+---------------------+---------------+
13 rows in set (0.00 sec)
*/

SELECT name 
FROM mccPlayer
WHERE registration_number IN (	SELECT DISTINCT (registration_number)
								FROM mccMatch_performance
								WHERE batting_score > (	SELECT AVG(batting_score) 
														FROM mccMatch_performance)); 

/*
+------------------+
| name             |
+------------------+
| AB de Villers    |
| Shane Watson     |
| Sachin Tendulkar |
+------------------+
3 rows in set (0.00 sec)
*/

SELECT name 
FROM mccPlayer P
WHERE EXISTS (	SELECT * 
				FROM mccMatch_performance MP INNER JOIN mccMatches M 
				WHERE MP.match_date = M.match_date 
				AND ground_name = "Collingwood Fields" 
				AND P.registration_number = MP.registration_number);

/*
+---------------------+
| name                |
+---------------------+
| AB de Villers       |
| Hashim Amla         |
| Michael Clarke      |
| Saeed Ajmal         |
| Ravichandran Ashwin |
| Shane Watson        |
| Sachin Tendulkar    |
+---------------------+
7 rows in set (0.00 sec)
*/

SELECT name 
FROM mccPlayer P
WHERE NOT EXISTS (	SELECT * 
					FROM mccMatch_performance MP INNER JOIN mccMatches M
					WHERE MP.match_date = M.match_date
					AND ground_name = "Collingwood Fields"
					AND P.registration_number = MP.registration_number);
/*
+------------------------+
| name                   |
+------------------------+
| Kumar Sangakkara       |
| Shivnarine Chanderpaul |
| Dale Steyn             |
| Vernon Philander       |
| Rangana Herath         |
| Chris Smart            |
+------------------------+
6 rows in set (0.00 sec)
*/


/*

*/


/*

*/


/*

*/


/*

*/


/*

*/


