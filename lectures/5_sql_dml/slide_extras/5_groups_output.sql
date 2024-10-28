# Groups

SELECT ground_name, COUNT(*)
FROM mccMatches
GROUP BY ground_name; 

/*
+---------------------+----------+
| ground_name         | COUNT(*) |
+---------------------+----------+
| Collingwood Fields  |        4 |
| Crystal Palace Park |        1 |
| Gasworks            |        4 |
| Leaside             |        4 |
+---------------------+----------+
4 rows in set (0.00 sec)
*/

SELECT ground_name, match_date, COUNT(*)
FROM mccMatches
GROUP BY ground_name;

/*
ERROR 1055 (42000): Expression #2 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'mcc.mccMatches.match_date' which is not functionally dependent on columns in GROUP BY clause;
*/

SELECT ground_name, match_date
FROM mccMatches 
ORDER BY ground_name;

/*
+---------------------+------------+
| ground_name         | match_date |
+---------------------+------------+
| Collingwood Fields  |     100804 |
| Collingwood Fields  |     110710 |
| Collingwood Fields  |     120829 |
| Collingwood Fields  |     130817 |
| Crystal Palace Park |     110819 |
| Gasworks            |     100615 |
| Gasworks            |     110621 |
| Gasworks            |     120608 |
| Gasworks            |     130705 |
| Leaside             |     100907 |
| Leaside             |     110902 |
| Leaside             |     120925 |
| Leaside             |     130906 |
+---------------------+------------+
13 rows in set (0.00 sec)
*/

SELECT ground_name, COUNT(*)
FROM mccMatches 
WHERE match_date > 120100 
GROUP BY ground_name;

/*
+--------------------+----------+
| ground_name        | COUNT(*) |
+--------------------+----------+
| Collingwood Fields |        2 |
| Gasworks           |        2 |
| Leaside            |        2 |
+--------------------+----------+
3 rows in set (0.00 sec)
*/

SELECT ground_name, COUNT(*) 
FROM mccMatches
WHERE match_date > 050100 
GROUP BY ground_name 
HAVING COUNT(*) >= 4;  

/*
+--------------------+----------+
| ground_name        | COUNT(*) |
+--------------------+----------+
| Collingwood Fields |        4 |
| Gasworks           |        4 |
| Leaside            |        4 |
+--------------------+----------+
3 rows in set (0.00 sec)
*/
