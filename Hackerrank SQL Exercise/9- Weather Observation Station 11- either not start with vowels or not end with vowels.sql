/*Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. 
Your result cannot contain duplicates.*/

select distinct city from station where city regexp "^[^aeiou]|.*[^aeiou]$";

-- OR

select distinct city from station where left(city,1) NOT IN ('a','e','i','o','u') OR right(city,1) NOT IN ('a','e','i','o','u');