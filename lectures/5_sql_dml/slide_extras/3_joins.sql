# Joins

SELECT *
From mccMatches T1
INNER JOIN mccGround T2
ON T1.ground_name = T2.ground_name;

/*
+------------+----------------+---------------------+---------------------+------------------+------------+------------+
| match_date | opposing_team  | ground_name         | ground_name         | g_street         | g_town     | g_postcode |
+------------+----------------+---------------------+---------------------+------------------+------------+------------+
|     100615 | Whitley Bay    | Gasworks            | Gasworks            | King Edward Road | Tynemouth  | NE30 2HA   |
|     100804 | Darlington     | Collingwood Fields  | Collingwood Fields  | Crown Street     | Darlington | DA2 5RL    |
|     100907 | Alnwick        | Leaside             | Leaside             | Haldane Street   | Darlington | N63 8EJ    |
|     110621 | Whitley Bay    | Gasworks            | Gasworks            | King Edward Road | Tynemouth  | NE30 2HA   |
|     110710 | Darlington     | Collingwood Fields  | Collingwood Fields  | Crown Street     | Darlington | DA2 5RL    |
|     110819 | Crystal Palace | Crystal Palace Park | Crystal Palace Park | Anerley Road     | London     | SE19 2GA   |
|     110902 | Alnwick        | Leaside             | Leaside             | Haldane Street   | Darlington | N63 8EJ    |
|     120608 | Whitley Bay    | Gasworks            | Gasworks            | King Edward Road | Tynemouth  | NE30 2HA   |
|     120829 | Darlington     | Collingwood Fields  | Collingwood Fields  | Crown Street     | Darlington | DA2 5RL    |
|     120925 | Alnwick        | Leaside             | Leaside             | Haldane Street   | Darlington | N63 8EJ    |
|     130705 | Whitley Bay    | Gasworks            | Gasworks            | King Edward Road | Tynemouth  | NE30 2HA   |
|     130817 | Darlington     | Collingwood Fields  | Collingwood Fields  | Crown Street     | Darlington | DA2 5RL    |
|     130906 | Alnwick        | Leaside             | Leaside             | Haldane Street   | Darlington | N63 8EJ    |
+------------+----------------+---------------------+---------------------+------------------+------------+------------+
13 rows in set (0.01 sec)
*/

SELECT opposing_team, T1.ground_name, g_town
FROM mccMatches T1
INNER JOIN mccGround T2
ON T1.ground_name = T2.ground_name;

/*
*/

SELECT *
From mccMatches T1, mccGround T2;
/*
+------------+----------------+---------------------+---------------------+-------------------+------------+------------+
| match_date | opposing_team  | ground_name         | ground_name         | g_street          | g_town     | g_postcode |
+------------+----------------+---------------------+---------------------+-------------------+------------+------------+
|     100615 | Whitley Bay    | Gasworks            | Ashbrooke           | West Lawn         | Sunderland | SR2 7HH    |
|     100615 | Whitley Bay    | Gasworks            | Collingwood Fields  | Crown Street      | Darlington | DA2 5RL    |
|     100615 | Whitley Bay    | Gasworks            | Crystal Palace Park | Anerley Road      | London     | SE19 2GA   |
|     100615 | Whitley Bay    | Gasworks            | Gasworks            | King Edward Road  | Tynemouth  | NE30 2HA   |
|     100615 | Whitley Bay    | Gasworks            | Leaside             | Haldane Street    | Darlington | N63 8EJ    |
|     100615 | Whitley Bay    | Gasworks            | Riverside Ground    | Chester-le-Street | Durham     | DH3 3QR    |
|     100615 | Whitley Bay    | Gasworks            | The Oval            | Kennington        | London     | SE11 5SS   |
|     100615 | Whitley Bay    | Gasworks            | Trent Bridge        | Bridgeford Road   | Nottingham | NG2 6AG    |
|     100615 | Whitley Bay    | Gasworks            | Whitburn Hall       | Whitburn Road     | Sunderland | SR6 7BZ    |
|     100804 | Darlington     | Collingwood Fields  | Ashbrooke           | West Lawn         | Sunderland | SR2 7HH    |
|     100804 | Darlington     | Collingwood Fields  | Collingwood Fields  | Crown Street      | Darlington | DA2 5RL    |
|     100804 | Darlington     | Collingwood Fields  | Crystal Palace Park | Anerley Road      | London     | SE19 2GA   |
|     100804 | Darlington     | Collingwood Fields  | Gasworks            | King Edward Road  | Tynemouth  | NE30 2HA   |
|     100804 | Darlington     | Collingwood Fields  | Leaside             | Haldane Street    | Darlington | N63 8EJ    |
|     100804 | Darlington     | Collingwood Fields  | Riverside Ground    | Chester-le-Street | Durham     | DH3 3QR    |
|     100804 | Darlington     | Collingwood Fields  | The Oval            | Kennington        | London     | SE11 5SS   |
|     100804 | Darlington     | Collingwood Fields  | Trent Bridge        | Bridgeford Road   | Nottingham | NG2 6AG    |
|     100804 | Darlington     | Collingwood Fields  | Whitburn Hall       | Whitburn Road     | Sunderland | SR6 7BZ    |
|     100907 | Alnwick        | Leaside             | Ashbrooke           | West Lawn         | Sunderland | SR2 7HH    |
|     100907 | Alnwick        | Leaside             | Collingwood Fields  | Crown Street      | Darlington | DA2 5RL    |
|     100907 | Alnwick        | Leaside             | Crystal Palace Park | Anerley Road      | London     | SE19 2GA   |
|     100907 | Alnwick        | Leaside             | Gasworks            | King Edward Road  | Tynemouth  | NE30 2HA   |
|     100907 | Alnwick        | Leaside             | Leaside             | Haldane Street    | Darlington | N63 8EJ    |
|     100907 | Alnwick        | Leaside             | Riverside Ground    | Chester-le-Street | Durham     | DH3 3QR    |
|     100907 | Alnwick        | Leaside             | The Oval            | Kennington        | London     | SE11 5SS   |
|     100907 | Alnwick        | Leaside             | Trent Bridge        | Bridgeford Road   | Nottingham | NG2 6AG    |
|     100907 | Alnwick        | Leaside             | Whitburn Hall       | Whitburn Road     | Sunderland | SR6 7BZ    |
|     110621 | Whitley Bay    | Gasworks            | Ashbrooke           | West Lawn         | Sunderland | SR2 7HH    |
|     110621 | Whitley Bay    | Gasworks            | Collingwood Fields  | Crown Street      | Darlington | DA2 5RL    |
|     110621 | Whitley Bay    | Gasworks            | Crystal Palace Park | Anerley Road      | London     | SE19 2GA   |
|     110621 | Whitley Bay    | Gasworks            | Gasworks            | King Edward Road  | Tynemouth  | NE30 2HA   |
|     110621 | Whitley Bay    | Gasworks            | Leaside             | Haldane Street    | Darlington | N63 8EJ    |
|     110621 | Whitley Bay    | Gasworks            | Riverside Ground    | Chester-le-Street | Durham     | DH3 3QR    |
|     110621 | Whitley Bay    | Gasworks            | The Oval            | Kennington        | London     | SE11 5SS   |
|     110621 | Whitley Bay    | Gasworks            | Trent Bridge        | Bridgeford Road   | Nottingham | NG2 6AG    |
|     110621 | Whitley Bay    | Gasworks            | Whitburn Hall       | Whitburn Road     | Sunderland | SR6 7BZ    |
|     110710 | Darlington     | Collingwood Fields  | Ashbrooke           | West Lawn         | Sunderland | SR2 7HH    |
|     110710 | Darlington     | Collingwood Fields  | Collingwood Fields  | Crown Street      | Darlington | DA2 5RL    |
|     110710 | Darlington     | Collingwood Fields  | Crystal Palace Park | Anerley Road      | London     | SE19 2GA   |
|     110710 | Darlington     | Collingwood Fields  | Gasworks            | King Edward Road  | Tynemouth  | NE30 2HA   |
|     110710 | Darlington     | Collingwood Fields  | Leaside             | Haldane Street    | Darlington | N63 8EJ    |
|     110710 | Darlington     | Collingwood Fields  | Riverside Ground    | Chester-le-Street | Durham     | DH3 3QR    |
|     110710 | Darlington     | Collingwood Fields  | The Oval            | Kennington        | London     | SE11 5SS   |
|     110710 | Darlington     | Collingwood Fields  | Trent Bridge        | Bridgeford Road   | Nottingham | NG2 6AG    |
|     110710 | Darlington     | Collingwood Fields  | Whitburn Hall       | Whitburn Road     | Sunderland | SR6 7BZ    |
|     110819 | Crystal Palace | Crystal Palace Park | Ashbrooke           | West Lawn         | Sunderland | SR2 7HH    |
|     110819 | Crystal Palace | Crystal Palace Park | Collingwood Fields  | Crown Street      | Darlington | DA2 5RL    |
|     110819 | Crystal Palace | Crystal Palace Park | Crystal Palace Park | Anerley Road      | London     | SE19 2GA   |
|     110819 | Crystal Palace | Crystal Palace Park | Gasworks            | King Edward Road  | Tynemouth  | NE30 2HA   |
|     110819 | Crystal Palace | Crystal Palace Park | Leaside             | Haldane Street    | Darlington | N63 8EJ    |
|     110819 | Crystal Palace | Crystal Palace Park | Riverside Ground    | Chester-le-Street | Durham     | DH3 3QR    |
|     110819 | Crystal Palace | Crystal Palace Park | The Oval            | Kennington        | London     | SE11 5SS   |
|     110819 | Crystal Palace | Crystal Palace Park | Trent Bridge        | Bridgeford Road   | Nottingham | NG2 6AG    |
|     110819 | Crystal Palace | Crystal Palace Park | Whitburn Hall       | Whitburn Road     | Sunderland | SR6 7BZ    |
|     110902 | Alnwick        | Leaside             | Ashbrooke           | West Lawn         | Sunderland | SR2 7HH    |
|     110902 | Alnwick        | Leaside             | Collingwood Fields  | Crown Street      | Darlington | DA2 5RL    |
|     110902 | Alnwick        | Leaside             | Crystal Palace Park | Anerley Road      | London     | SE19 2GA   |
|     110902 | Alnwick        | Leaside             | Gasworks            | King Edward Road  | Tynemouth  | NE30 2HA   |
|     110902 | Alnwick        | Leaside             | Leaside             | Haldane Street    | Darlington | N63 8EJ    |
|     110902 | Alnwick        | Leaside             | Riverside Ground    | Chester-le-Street | Durham     | DH3 3QR    |
|     110902 | Alnwick        | Leaside             | The Oval            | Kennington        | London     | SE11 5SS   |
|     110902 | Alnwick        | Leaside             | Trent Bridge        | Bridgeford Road   | Nottingham | NG2 6AG    |
|     110902 | Alnwick        | Leaside             | Whitburn Hall       | Whitburn Road     | Sunderland | SR6 7BZ    |
|     120608 | Whitley Bay    | Gasworks            | Ashbrooke           | West Lawn         | Sunderland | SR2 7HH    |
|     120608 | Whitley Bay    | Gasworks            | Collingwood Fields  | Crown Street      | Darlington | DA2 5RL    |
|     120608 | Whitley Bay    | Gasworks            | Crystal Palace Park | Anerley Road      | London     | SE19 2GA   |
|     120608 | Whitley Bay    | Gasworks            | Gasworks            | King Edward Road  | Tynemouth  | NE30 2HA   |
|     120608 | Whitley Bay    | Gasworks            | Leaside             | Haldane Street    | Darlington | N63 8EJ    |
|     120608 | Whitley Bay    | Gasworks            | Riverside Ground    | Chester-le-Street | Durham     | DH3 3QR    |
|     120608 | Whitley Bay    | Gasworks            | The Oval            | Kennington        | London     | SE11 5SS   |
|     120608 | Whitley Bay    | Gasworks            | Trent Bridge        | Bridgeford Road   | Nottingham | NG2 6AG    |
|     120608 | Whitley Bay    | Gasworks            | Whitburn Hall       | Whitburn Road     | Sunderland | SR6 7BZ    |
|     120829 | Darlington     | Collingwood Fields  | Ashbrooke           | West Lawn         | Sunderland | SR2 7HH    |
|     120829 | Darlington     | Collingwood Fields  | Collingwood Fields  | Crown Street      | Darlington | DA2 5RL    |
|     120829 | Darlington     | Collingwood Fields  | Crystal Palace Park | Anerley Road      | London     | SE19 2GA   |
|     120829 | Darlington     | Collingwood Fields  | Gasworks            | King Edward Road  | Tynemouth  | NE30 2HA   |
|     120829 | Darlington     | Collingwood Fields  | Leaside             | Haldane Street    | Darlington | N63 8EJ    |
|     120829 | Darlington     | Collingwood Fields  | Riverside Ground    | Chester-le-Street | Durham     | DH3 3QR    |
|     120829 | Darlington     | Collingwood Fields  | The Oval            | Kennington        | London     | SE11 5SS   |
|     120829 | Darlington     | Collingwood Fields  | Trent Bridge        | Bridgeford Road   | Nottingham | NG2 6AG    |
|     120829 | Darlington     | Collingwood Fields  | Whitburn Hall       | Whitburn Road     | Sunderland | SR6 7BZ    |
|     120925 | Alnwick        | Leaside             | Ashbrooke           | West Lawn         | Sunderland | SR2 7HH    |
|     120925 | Alnwick        | Leaside             | Collingwood Fields  | Crown Street      | Darlington | DA2 5RL    |
|     120925 | Alnwick        | Leaside             | Crystal Palace Park | Anerley Road      | London     | SE19 2GA   |
|     120925 | Alnwick        | Leaside             | Gasworks            | King Edward Road  | Tynemouth  | NE30 2HA   |
|     120925 | Alnwick        | Leaside             | Leaside             | Haldane Street    | Darlington | N63 8EJ    |
|     120925 | Alnwick        | Leaside             | Riverside Ground    | Chester-le-Street | Durham     | DH3 3QR    |
|     120925 | Alnwick        | Leaside             | The Oval            | Kennington        | London     | SE11 5SS   |
|     120925 | Alnwick        | Leaside             | Trent Bridge        | Bridgeford Road   | Nottingham | NG2 6AG    |
|     120925 | Alnwick        | Leaside             | Whitburn Hall       | Whitburn Road     | Sunderland | SR6 7BZ    |
|     130705 | Whitley Bay    | Gasworks            | Ashbrooke           | West Lawn         | Sunderland | SR2 7HH    |
|     130705 | Whitley Bay    | Gasworks            | Collingwood Fields  | Crown Street      | Darlington | DA2 5RL    |
|     130705 | Whitley Bay    | Gasworks            | Crystal Palace Park | Anerley Road      | London     | SE19 2GA   |
|     130705 | Whitley Bay    | Gasworks            | Gasworks            | King Edward Road  | Tynemouth  | NE30 2HA   |
|     130705 | Whitley Bay    | Gasworks            | Leaside             | Haldane Street    | Darlington | N63 8EJ    |
|     130705 | Whitley Bay    | Gasworks            | Riverside Ground    | Chester-le-Street | Durham     | DH3 3QR    |
|     130705 | Whitley Bay    | Gasworks            | The Oval            | Kennington        | London     | SE11 5SS   |
|     130705 | Whitley Bay    | Gasworks            | Trent Bridge        | Bridgeford Road   | Nottingham | NG2 6AG    |
|     130705 | Whitley Bay    | Gasworks            | Whitburn Hall       | Whitburn Road     | Sunderland | SR6 7BZ    |
|     130817 | Darlington     | Collingwood Fields  | Ashbrooke           | West Lawn         | Sunderland | SR2 7HH    |
|     130817 | Darlington     | Collingwood Fields  | Collingwood Fields  | Crown Street      | Darlington | DA2 5RL    |
|     130817 | Darlington     | Collingwood Fields  | Crystal Palace Park | Anerley Road      | London     | SE19 2GA   |
|     130817 | Darlington     | Collingwood Fields  | Gasworks            | King Edward Road  | Tynemouth  | NE30 2HA   |
|     130817 | Darlington     | Collingwood Fields  | Leaside             | Haldane Street    | Darlington | N63 8EJ    |
|     130817 | Darlington     | Collingwood Fields  | Riverside Ground    | Chester-le-Street | Durham     | DH3 3QR    |
|     130817 | Darlington     | Collingwood Fields  | The Oval            | Kennington        | London     | SE11 5SS   |
|     130817 | Darlington     | Collingwood Fields  | Trent Bridge        | Bridgeford Road   | Nottingham | NG2 6AG    |
|     130817 | Darlington     | Collingwood Fields  | Whitburn Hall       | Whitburn Road     | Sunderland | SR6 7BZ    |
|     130906 | Alnwick        | Leaside             | Ashbrooke           | West Lawn         | Sunderland | SR2 7HH    |
|     130906 | Alnwick        | Leaside             | Collingwood Fields  | Crown Street      | Darlington | DA2 5RL    |
|     130906 | Alnwick        | Leaside             | Crystal Palace Park | Anerley Road      | London     | SE19 2GA   |
|     130906 | Alnwick        | Leaside             | Gasworks            | King Edward Road  | Tynemouth  | NE30 2HA   |
|     130906 | Alnwick        | Leaside             | Leaside             | Haldane Street    | Darlington | N63 8EJ    |
|     130906 | Alnwick        | Leaside             | Riverside Ground    | Chester-le-Street | Durham     | DH3 3QR    |
|     130906 | Alnwick        | Leaside             | The Oval            | Kennington        | London     | SE11 5SS   |
|     130906 | Alnwick        | Leaside             | Trent Bridge        | Bridgeford Road   | Nottingham | NG2 6AG    |
|     130906 | Alnwick        | Leaside             | Whitburn Hall       | Whitburn Road     | Sunderland | SR6 7BZ    |
+------------+----------------+---------------------+---------------------+-------------------+------------+------------+
117 rows in set (0.00 sec)
*/

SELECT *
From mccMatches T1, mccGround T2
WHERE T1.ground_name = T2.ground_name;

/*
+------------+----------------+---------------------+---------------------+------------------+------------+------------+
| match_date | opposing_team  | ground_name         | ground_name         | g_street         | g_town     | g_postcode |
+------------+----------------+---------------------+---------------------+------------------+------------+------------+
|     100615 | Whitley Bay    | Gasworks            | Gasworks            | King Edward Road | Tynemouth  | NE30 2HA   |
|     100804 | Darlington     | Collingwood Fields  | Collingwood Fields  | Crown Street     | Darlington | DA2 5RL    |
|     100907 | Alnwick        | Leaside             | Leaside             | Haldane Street   | Darlington | N63 8EJ    |
|     110621 | Whitley Bay    | Gasworks            | Gasworks            | King Edward Road | Tynemouth  | NE30 2HA   |
|     110710 | Darlington     | Collingwood Fields  | Collingwood Fields  | Crown Street     | Darlington | DA2 5RL    |
|     110819 | Crystal Palace | Crystal Palace Park | Crystal Palace Park | Anerley Road     | London     | SE19 2GA   |
|     110902 | Alnwick        | Leaside             | Leaside             | Haldane Street   | Darlington | N63 8EJ    |
|     120608 | Whitley Bay    | Gasworks            | Gasworks            | King Edward Road | Tynemouth  | NE30 2HA   |
|     120829 | Darlington     | Collingwood Fields  | Collingwood Fields  | Crown Street     | Darlington | DA2 5RL    |
|     120925 | Alnwick        | Leaside             | Leaside             | Haldane Street   | Darlington | N63 8EJ    |
|     130705 | Whitley Bay    | Gasworks            | Gasworks            | King Edward Road | Tynemouth  | NE30 2HA   |
|     130817 | Darlington     | Collingwood Fields  | Collingwood Fields  | Crown Street     | Darlington | DA2 5RL    |
|     130906 | Alnwick        | Leaside             | Leaside             | Haldane Street   | Darlington | N63 8EJ    |
+------------+----------------+---------------------+---------------------+------------------+------------+------------+
13 rows in set (0.00 sec)
*/

SELECT name, T2.match_date, batting_score
FROM mccPlayer T1
INNER JOIN mccMatch_performance T2
WHERE T1.registration_number = T2.registration_number;

/*
+---------------------+------------+---------------+
| name                | match_date | batting_score |
+---------------------+------------+---------------+
| AB de Villers       |     100615 |            59 |
| AB de Villers       |     100804 |            59 |
| AB de Villers       |     100907 |            59 |
| AB de Villers       |     110621 |            59 |
| AB de Villers       |     110710 |            59 |
| AB de Villers       |     110819 |            59 |
| AB de Villers       |     110902 |            59 |
| AB de Villers       |     120608 |            59 |
| AB de Villers       |     120829 |            59 |
| AB de Villers       |     120925 |            59 |
| AB de Villers       |     130705 |            59 |
| AB de Villers       |     130817 |            59 |
| AB de Villers       |     130906 |            59 |
| Hashim Amla         |     100615 |            24 |
| Hashim Amla         |     100804 |            24 |
| Hashim Amla         |     100907 |            24 |
| Hashim Amla         |     110621 |            24 |
| Hashim Amla         |     110710 |            24 |
| Hashim Amla         |     110819 |            24 |
| Hashim Amla         |     110902 |            24 |
| Hashim Amla         |     120608 |            24 |
| Hashim Amla         |     120829 |            24 |
| Hashim Amla         |     120925 |            24 |
| Hashim Amla         |     130705 |             0 |
| Hashim Amla         |     130817 |            24 |
| Hashim Amla         |     130906 |            24 |
| Michael Clarke      |     100615 |            38 |
| Michael Clarke      |     100804 |            38 |
| Michael Clarke      |     100907 |            38 |
| Michael Clarke      |     110621 |            38 |
| Michael Clarke      |     110710 |            38 |
| Michael Clarke      |     110819 |            38 |
| Michael Clarke      |     110902 |            38 |
| Michael Clarke      |     120608 |            38 |
| Michael Clarke      |     120829 |            38 |
| Michael Clarke      |     120925 |            38 |
| Michael Clarke      |     130705 |            38 |
| Michael Clarke      |     130817 |            38 |
| Michael Clarke      |     130906 |            38 |
| Saeed Ajmal         |     100615 |            17 |
| Saeed Ajmal         |     100804 |            17 |
| Saeed Ajmal         |     100907 |            17 |
| Saeed Ajmal         |     110621 |            17 |
| Saeed Ajmal         |     110710 |            17 |
| Saeed Ajmal         |     110819 |            17 |
| Saeed Ajmal         |     110902 |            17 |
| Saeed Ajmal         |     120608 |            17 |
| Saeed Ajmal         |     120829 |            17 |
| Saeed Ajmal         |     120925 |            17 |
| Saeed Ajmal         |     130705 |             0 |
| Saeed Ajmal         |     130817 |            17 |
| Saeed Ajmal         |     130906 |            17 |
| Ravichandran Ashwin |     100615 |            19 |
| Ravichandran Ashwin |     100804 |            19 |
| Ravichandran Ashwin |     100907 |            19 |
| Ravichandran Ashwin |     110621 |            19 |
| Ravichandran Ashwin |     110710 |            19 |
| Ravichandran Ashwin |     110819 |            19 |
| Ravichandran Ashwin |     110902 |            19 |
| Ravichandran Ashwin |     120608 |            19 |
| Ravichandran Ashwin |     120829 |            19 |
| Ravichandran Ashwin |     120925 |            19 |
| Ravichandran Ashwin |     130705 |            19 |
| Ravichandran Ashwin |     130817 |            19 |
| Ravichandran Ashwin |     130906 |            19 |
| Shane Watson        |     100615 |           151 |
| Shane Watson        |     100804 |           151 |
| Shane Watson        |     100907 |           151 |
| Shane Watson        |     110621 |           151 |
| Shane Watson        |     110710 |           151 |
| Shane Watson        |     110819 |           151 |
| Shane Watson        |     110902 |           151 |
| Shane Watson        |     120608 |           151 |
| Shane Watson        |     120829 |           151 |
| Shane Watson        |     120925 |           151 |
| Shane Watson        |     130705 |           151 |
| Shane Watson        |     130817 |           151 |
| Shane Watson        |     130906 |           151 |
| Sachin Tendulkar    |     100615 |           100 |
| Sachin Tendulkar    |     100804 |           100 |
| Sachin Tendulkar    |     100907 |           100 |
| Sachin Tendulkar    |     110621 |           100 |
| Sachin Tendulkar    |     110710 |           100 |
| Sachin Tendulkar    |     110819 |           100 |
| Sachin Tendulkar    |     110902 |           100 |
| Sachin Tendulkar    |     120608 |           100 |
| Sachin Tendulkar    |     120829 |           100 |
| Sachin Tendulkar    |     120925 |           100 |
| Sachin Tendulkar    |     130705 |           100 |
| Sachin Tendulkar    |     130817 |           100 |
| Sachin Tendulkar    |     130906 |           100 |
+---------------------+------------+---------------+
91 rows in set (0.00 sec)
*/

SELECT name, T2.match_date, batting_score
FROM mccPlayer T1
INNER JOIN mccMatch_performance T2
WHERE T1.registration_number = T2.registration_number AND T1.name LIKE "Michael %";

/*
+----------------+------------+---------------+
| name           | match_date | batting_score |
+----------------+------------+---------------+
| Michael Clarke |     100615 |            38 |
| Michael Clarke |     100804 |            38 |
| Michael Clarke |     100907 |            38 |
| Michael Clarke |     110621 |            38 |
| Michael Clarke |     110710 |            38 |
| Michael Clarke |     110819 |            38 |
| Michael Clarke |     110902 |            38 |
| Michael Clarke |     120608 |            38 |
| Michael Clarke |     120829 |            38 |
| Michael Clarke |     120925 |            38 |
| Michael Clarke |     130705 |            38 |
| Michael Clarke |     130817 |            38 |
| Michael Clarke |     130906 |            38 |
+----------------+------------+---------------+
13 rows in set (0.00 sec)
*/

SELECT name, age, T2.match_date, batting_score
FROM mccPlayer T1
INNER JOIN mccMatch_performance T2
WHERE T1.registration_number = T2.registration_number AND T1.age >= 35;

/*
+------------------+------+------------+---------------+
| name             | age  | match_date | batting_score |
+------------------+------+------------+---------------+
| Saeed Ajmal      |   36 |     100615 |            17 |
| Saeed Ajmal      |   36 |     100804 |            17 |
| Saeed Ajmal      |   36 |     100907 |            17 |
| Saeed Ajmal      |   36 |     110621 |            17 |
| Saeed Ajmal      |   36 |     110710 |            17 |
| Saeed Ajmal      |   36 |     110819 |            17 |
| Saeed Ajmal      |   36 |     110902 |            17 |
| Saeed Ajmal      |   36 |     120608 |            17 |
| Saeed Ajmal      |   36 |     120829 |            17 |
| Saeed Ajmal      |   36 |     120925 |            17 |
| Saeed Ajmal      |   36 |     130705 |             0 |
| Saeed Ajmal      |   36 |     130817 |            17 |
| Saeed Ajmal      |   36 |     130906 |            17 |
| Sachin Tendulkar |   40 |     100615 |           100 |
| Sachin Tendulkar |   40 |     100804 |           100 |
| Sachin Tendulkar |   40 |     100907 |           100 |
| Sachin Tendulkar |   40 |     110621 |           100 |
| Sachin Tendulkar |   40 |     110710 |           100 |
| Sachin Tendulkar |   40 |     110819 |           100 |
| Sachin Tendulkar |   40 |     110902 |           100 |
| Sachin Tendulkar |   40 |     120608 |           100 |
| Sachin Tendulkar |   40 |     120829 |           100 |
| Sachin Tendulkar |   40 |     120925 |           100 |
| Sachin Tendulkar |   40 |     130705 |           100 |
| Sachin Tendulkar |   40 |     130817 |           100 |
| Sachin Tendulkar |   40 |     130906 |           100 |
+------------------+------+------------+---------------+
26 rows in set (0.00 sec)
*/


SELECT name, batting_score, ground_name
From mccPlayer T1
INNER JOIN mccMatch_performance T2
ON T1. registration_number = T2.registration_number
INNER JOIN mccMatches T3
ON T2.match_date = T3.match_date;

/*
+---------------------+---------------+---------------------+
| name                | batting_score | ground_name         |
+---------------------+---------------+---------------------+
| AB de Villers       |            59 | Collingwood Fields  |
| Hashim Amla         |            24 | Collingwood Fields  |
| Michael Clarke      |            38 | Collingwood Fields  |
| Saeed Ajmal         |            17 | Collingwood Fields  |
| Ravichandran Ashwin |            19 | Collingwood Fields  |
| Shane Watson        |           151 | Collingwood Fields  |
| Sachin Tendulkar    |           100 | Collingwood Fields  |
| AB de Villers       |            59 | Collingwood Fields  |
| Hashim Amla         |            24 | Collingwood Fields  |
| Michael Clarke      |            38 | Collingwood Fields  |
| Saeed Ajmal         |            17 | Collingwood Fields  |
| Ravichandran Ashwin |            19 | Collingwood Fields  |
| Shane Watson        |           151 | Collingwood Fields  |
| Sachin Tendulkar    |           100 | Collingwood Fields  |
| AB de Villers       |            59 | Collingwood Fields  |
| Hashim Amla         |            24 | Collingwood Fields  |
| Michael Clarke      |            38 | Collingwood Fields  |
| Saeed Ajmal         |            17 | Collingwood Fields  |
| Ravichandran Ashwin |            19 | Collingwood Fields  |
| Shane Watson        |           151 | Collingwood Fields  |
| Sachin Tendulkar    |           100 | Collingwood Fields  |
| AB de Villers       |            59 | Collingwood Fields  |
| Hashim Amla         |            24 | Collingwood Fields  |
| Michael Clarke      |            38 | Collingwood Fields  |
| Saeed Ajmal         |            17 | Collingwood Fields  |
| Ravichandran Ashwin |            19 | Collingwood Fields  |
| Shane Watson        |           151 | Collingwood Fields  |
| Sachin Tendulkar    |           100 | Collingwood Fields  |
| AB de Villers       |            59 | Crystal Palace Park |
| Hashim Amla         |            24 | Crystal Palace Park |
| Michael Clarke      |            38 | Crystal Palace Park |
| Saeed Ajmal         |            17 | Crystal Palace Park |
| Ravichandran Ashwin |            19 | Crystal Palace Park |
| Shane Watson        |           151 | Crystal Palace Park |
| Sachin Tendulkar    |           100 | Crystal Palace Park |
| AB de Villers       |            59 | Gasworks            |
| Hashim Amla         |            24 | Gasworks            |
| Michael Clarke      |            38 | Gasworks            |
| Saeed Ajmal         |            17 | Gasworks            |
| Ravichandran Ashwin |            19 | Gasworks            |
| Shane Watson        |           151 | Gasworks            |
| Sachin Tendulkar    |           100 | Gasworks            |
| AB de Villers       |            59 | Gasworks            |
| Hashim Amla         |            24 | Gasworks            |
| Michael Clarke      |            38 | Gasworks            |
| Saeed Ajmal         |            17 | Gasworks            |
| Ravichandran Ashwin |            19 | Gasworks            |
| Shane Watson        |           151 | Gasworks            |
| Sachin Tendulkar    |           100 | Gasworks            |
| AB de Villers       |            59 | Gasworks            |
| Hashim Amla         |            24 | Gasworks            |
| Michael Clarke      |            38 | Gasworks            |
| Saeed Ajmal         |            17 | Gasworks            |
| Ravichandran Ashwin |            19 | Gasworks            |
| Shane Watson        |           151 | Gasworks            |
| Sachin Tendulkar    |           100 | Gasworks            |
| AB de Villers       |            59 | Gasworks            |
| Hashim Amla         |             0 | Gasworks            |
| Michael Clarke      |            38 | Gasworks            |
| Saeed Ajmal         |             0 | Gasworks            |
| Ravichandran Ashwin |            19 | Gasworks            |
| Shane Watson        |           151 | Gasworks            |
| Sachin Tendulkar    |           100 | Gasworks            |
| AB de Villers       |            59 | Leaside             |
| Hashim Amla         |            24 | Leaside             |
| Michael Clarke      |            38 | Leaside             |
| Saeed Ajmal         |            17 | Leaside             |
| Ravichandran Ashwin |            19 | Leaside             |
| Shane Watson        |           151 | Leaside             |
| Sachin Tendulkar    |           100 | Leaside             |
| AB de Villers       |            59 | Leaside             |
| Hashim Amla         |            24 | Leaside             |
| Michael Clarke      |            38 | Leaside             |
| Saeed Ajmal         |            17 | Leaside             |
| Ravichandran Ashwin |            19 | Leaside             |
| Shane Watson        |           151 | Leaside             |
| Sachin Tendulkar    |           100 | Leaside             |
| AB de Villers       |            59 | Leaside             |
| Hashim Amla         |            24 | Leaside             |
| Michael Clarke      |            38 | Leaside             |
| Saeed Ajmal         |            17 | Leaside             |
| Ravichandran Ashwin |            19 | Leaside             |
| Shane Watson        |           151 | Leaside             |
| Sachin Tendulkar    |           100 | Leaside             |
| AB de Villers       |            59 | Leaside             |
| Hashim Amla         |            24 | Leaside             |
| Michael Clarke      |            38 | Leaside             |
| Saeed Ajmal         |            17 | Leaside             |
| Ravichandran Ashwin |            19 | Leaside             |
| Shane Watson        |           151 | Leaside             |
| Sachin Tendulkar    |           100 | Leaside             |
+---------------------+---------------+---------------------+
91 rows in set (0.00 sec)
*/

SELECT name, batting_score, ground_name
FROM mccPlayer T1
INNER JOIN mccMatch_performance T2
ON T1.registration_number = T2.registration_number
INNER JOIN mccMatches T3
ON T2.match_date = T3.match_date
WHERE T2.batting_score > 100;

/*
+--------------+---------------+---------------------+
| name         | batting_score | ground_name         |
+--------------+---------------+---------------------+
| Shane Watson |           151 | Gasworks            |
| Shane Watson |           151 | Collingwood Fields  |
| Shane Watson |           151 | Leaside             |
| Shane Watson |           151 | Gasworks            |
| Shane Watson |           151 | Collingwood Fields  |
| Shane Watson |           151 | Crystal Palace Park |
| Shane Watson |           151 | Leaside             |
| Shane Watson |           151 | Gasworks            |
| Shane Watson |           151 | Collingwood Fields  |
| Shane Watson |           151 | Leaside             |
| Shane Watson |           151 | Gasworks            |
| Shane Watson |           151 | Collingwood Fields  |
| Shane Watson |           151 | Leaside             |
+--------------+---------------+---------------------+
13 rows in set (0.00 sec)
*/

SELECT name, batting_score, T2.registration_number
FROM mccPlayer T1
LEFT JOIN mccMatch_performance T2
ON T1.registration_number = T2. registration_number;

/*
+------------------------+---------------+---------------------+
| name                   | batting_score | registration_number |
+------------------------+---------------+---------------------+
| AB de Villers          |            59 | 1001                |
| AB de Villers          |            59 | 1001                |
| AB de Villers          |            59 | 1001                |
| AB de Villers          |            59 | 1001                |
| AB de Villers          |            59 | 1001                |
| AB de Villers          |            59 | 1001                |
| AB de Villers          |            59 | 1001                |
| AB de Villers          |            59 | 1001                |
| AB de Villers          |            59 | 1001                |
| AB de Villers          |            59 | 1001                |
| AB de Villers          |            59 | 1001                |
| AB de Villers          |            59 | 1001                |
| AB de Villers          |            59 | 1001                |
| Hashim Amla            |            24 | 1002                |
| Hashim Amla            |            24 | 1002                |
| Hashim Amla            |            24 | 1002                |
| Hashim Amla            |            24 | 1002                |
| Hashim Amla            |            24 | 1002                |
| Hashim Amla            |            24 | 1002                |
| Hashim Amla            |            24 | 1002                |
| Hashim Amla            |            24 | 1002                |
| Hashim Amla            |            24 | 1002                |
| Hashim Amla            |            24 | 1002                |
| Hashim Amla            |             0 | 1002                |
| Hashim Amla            |            24 | 1002                |
| Hashim Amla            |            24 | 1002                |
| Michael Clarke         |            38 | 1003                |
| Michael Clarke         |            38 | 1003                |
| Michael Clarke         |            38 | 1003                |
| Michael Clarke         |            38 | 1003                |
| Michael Clarke         |            38 | 1003                |
| Michael Clarke         |            38 | 1003                |
| Michael Clarke         |            38 | 1003                |
| Michael Clarke         |            38 | 1003                |
| Michael Clarke         |            38 | 1003                |
| Michael Clarke         |            38 | 1003                |
| Michael Clarke         |            38 | 1003                |
| Michael Clarke         |            38 | 1003                |
| Michael Clarke         |            38 | 1003                |
| Kumar Sangakkara       |          NULL | NULL                |
| Shivnarine Chanderpaul |          NULL | NULL                |
| Dale Steyn             |          NULL | NULL                |
| Vernon Philander       |          NULL | NULL                |
| Rangana Herath         |          NULL | NULL                |
| Saeed Ajmal            |            17 | 1009                |
| Saeed Ajmal            |            17 | 1009                |
| Saeed Ajmal            |            17 | 1009                |
| Saeed Ajmal            |            17 | 1009                |
| Saeed Ajmal            |            17 | 1009                |
| Saeed Ajmal            |            17 | 1009                |
| Saeed Ajmal            |            17 | 1009                |
| Saeed Ajmal            |            17 | 1009                |
| Saeed Ajmal            |            17 | 1009                |
| Saeed Ajmal            |            17 | 1009                |
| Saeed Ajmal            |             0 | 1009                |
| Saeed Ajmal            |            17 | 1009                |
| Saeed Ajmal            |            17 | 1009                |
| Ravichandran Ashwin    |            19 | 1010                |
| Ravichandran Ashwin    |            19 | 1010                |
| Ravichandran Ashwin    |            19 | 1010                |
| Ravichandran Ashwin    |            19 | 1010                |
| Ravichandran Ashwin    |            19 | 1010                |
| Ravichandran Ashwin    |            19 | 1010                |
| Ravichandran Ashwin    |            19 | 1010                |
| Ravichandran Ashwin    |            19 | 1010                |
| Ravichandran Ashwin    |            19 | 1010                |
| Ravichandran Ashwin    |            19 | 1010                |
| Ravichandran Ashwin    |            19 | 1010                |
| Ravichandran Ashwin    |            19 | 1010                |
| Ravichandran Ashwin    |            19 | 1010                |
| Shane Watson           |           151 | 1011                |
| Shane Watson           |           151 | 1011                |
| Shane Watson           |           151 | 1011                |
| Shane Watson           |           151 | 1011                |
| Shane Watson           |           151 | 1011                |
| Shane Watson           |           151 | 1011                |
| Shane Watson           |           151 | 1011                |
| Shane Watson           |           151 | 1011                |
| Shane Watson           |           151 | 1011                |
| Shane Watson           |           151 | 1011                |
| Shane Watson           |           151 | 1011                |
| Shane Watson           |           151 | 1011                |
| Shane Watson           |           151 | 1011                |
| Sachin Tendulkar       |           100 | 1012                |
| Sachin Tendulkar       |           100 | 1012                |
| Sachin Tendulkar       |           100 | 1012                |
| Sachin Tendulkar       |           100 | 1012                |
| Sachin Tendulkar       |           100 | 1012                |
| Sachin Tendulkar       |           100 | 1012                |
| Sachin Tendulkar       |           100 | 1012                |
| Sachin Tendulkar       |           100 | 1012                |
| Sachin Tendulkar       |           100 | 1012                |
| Sachin Tendulkar       |           100 | 1012                |
| Sachin Tendulkar       |           100 | 1012                |
| Sachin Tendulkar       |           100 | 1012                |
| Sachin Tendulkar       |           100 | 1012                |
| Chris Smart            |          NULL | NULL                |
+------------------------+---------------+---------------------+
97 rows in set (0.00 sec)
*/

Select p_town from mccPlayer where name = "Hashim Amla"; 

/*
+---------+
| p_town  |
+---------+
| Morpeth |
+---------+
1 row in set (0.00 sec)
*/

SELECT DISTINCT T2.name, T2.p_street
FROM mccPlayer T1
INNER JOIN mccPlayer T2
ON T1.p_town = T2.p_town
WHERE T1.name = "Hashim Amla";

/*
+------------------------+---------------+
| name                   | p_street      |
+------------------------+---------------+
| AB de Villers          | Damside       |
| Hashim Amla            | Old Gate      |
| Shivnarine Chanderpaul | Well Way      |
| Vernon Philander       | Hollon Street |
+------------------------+---------------+
4 rows in set (0.01 sec)
*/

SELECT T2.ground_name, T2.g_street
FROM mccGround T1
INNER JOIN mccGround T2
ON T1.g_town = T2.g_town AND T1.ground_name = 'Leaside';

/*
+--------------------+----------------+
| ground_name        | g_street       |
+--------------------+----------------+
| Collingwood Fields | Crown Street   |
| Leaside            | Haldane Street |
+--------------------+----------------+
2 rows in set (0.00 sec)
*/

SELECT p_town
FROM mccPlayer
UNION
SELECT g_town
FROM mccGround;

/*
+------------+
| p_town     |
+------------+
| Morpeth    |
| Alnwick    |
| Byker      |
| Durham     |
| Sunderland |
| Tynemouth  |
| Darlington |
| London     |
| Nottingham |
+------------+
9 rows in set (0.00 sec)
*/

SELECT name, p_street
FROM mccPlayer T1
INNER JOIN mccMatch_performance T2
ON T1.registration_number = T2.registration_number
WHERE batting_score > 100
UNION
SELECT DISTINCT name, p_street
FROM mccPlayer
WHERE p_town = 'Alnwick';

/*
+------------------+-------------------+
| name             | p_street          |
+------------------+-------------------+
| Shane Watson     | Hawthorne Terrace |
| Michael Clarke   | Hotspur Street    |
| Kumar Sangakkara | Percy Street      |
+------------------+-------------------+
3 rows in set (0.00 sec)
*/
