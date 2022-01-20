/*Query the list of CITY names starting with vowels 
(i.e., a, e, i, o, or u) from STATION. 
Your result cannot contain duplicates.*/

select distinct(city) from station where city REGEXP "^[aieou]";

-- OR
SELECT DISTINCT city FROM station WHERE city REGEXP "^[aeiou].*";