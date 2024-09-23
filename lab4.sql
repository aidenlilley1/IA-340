--Q4.1
/* no because we still have records in other tables */

--Q4.2
/* no, because no state has fips of 80 */

--Q4.3
/* it works, but can be improved */

--Q4.5
/* yes, great job */

--Q4.6
SELECT n.name, i.year, i.income
FROM income i
JOIN name n ON i.fips = n.fips
WHERE i.year = (SELECT MAX(year) FROM income)
ORDER BY i.income DESC
LIMIT 1; 
/* It works */

--Q4.7
/* PROMPT: can you calculate VA population growth in the past 5 years */
SELECT 
    (p_recent.pop - p_old.pop) AS growth,
    ((p_recent.pop - p_old.pop) / p_old.pop * 100) AS growth_percentage
FROM 
    (SELECT pop FROM population WHERE fips = '51' AND year = (SELECT MAX(year) FROM population)) p_recent,
    (SELECT pop FROM population WHERE fips = '51' AND year = (SELECT MAX(year) - 5 FROM population)) p_old;
/* It doesnt work */  

--Q4.8
/* No ChatGPT does not always generate perfect responses */ 




