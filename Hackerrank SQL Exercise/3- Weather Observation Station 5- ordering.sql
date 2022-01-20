/*Query the two cities in STATION with the shortest
 and longest CITY names, as well as their respective 
 lengths (i.e.: number of characters in the name). If 
 there is more than one smallest or largest city, choose
 the one that comes first when ordered alphabetically.
 */
 
 -- WRONG- select max(city), length (max(city)), min(city), length(min(city)) from station where city in (select city from station order by city);

(select city, length(city) from station order by length(city) desc, city asc limit 1)
union
(select city, length(city) from station order by length(city) asc, city asc limit 1);
