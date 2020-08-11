/*Tutorial 4: SELECT within SELECT */

SELECT name FROM world WHERE population >
    (SELECT population FROM world WHERE name='Russia')
/*Lists all the countries that have a population larger than Russia */	

SELECT name FROM world WHERE continent = 'Europe' AND gdp/population > 
(SELECT gdp/population FROM world WHERE name = 'United Kingdom')
/*Lists all countries that have a gdp per capita greater than the United Kingdom */

SELECT name, continent FROM world WHERE continent IN
  (SELECT continent FROM world WHERE name='Argentina' OR name='Australia')
   ORDER BY name
/*Lists all the countries that in the continent containing Argentina and Australia in alphabetical order */  

SELECT name, population FROM world WHERE population > 
(SELECT population FROM world WHERE name = 'Canada') 
AND population <(SELECT population FROM world WHERE name = 'Poland')
/*Lists the name and population of the country that is larger than Canada and less than Poland. Which is none.*/

SELECT name FROM world WHERE gdp > 
(SELECT MAX(gdp) FROM world WHERE continent = 'Europe')
/*Lists all the countries that have a gdp bigger than all countries in Europe */