/*
Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than .
 Round your answer to  decimal places.
*/

SELECT ROUND(LONG_W,4) FROM STATION WHERE LAT_N IN (SELECT MIN(LAT_N) FROM STATION WHERE LAT_N>38.7780)

-OR

SELECT ROUND(LONG_W, 4) FROM STATION WHERE LAT_N>38.7780 ORDER BY LAT_N LIMIT 1