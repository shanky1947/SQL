/*Find the difference between the total number of CITY 
entries in the table and the number of distinct CITY 
entries in the table.*/


-- WORNG- select count(city) from station - select count(distinct(city)) from station;

select count(city)-count(distinct(city)) from station;