/*Tutorial 5: SUM and COUNT */

SELECT SUM(population) FROM world
/* Sums up all the countries in the world to give a total population of the world */

SELECT DISTINCT(continent) FROM world
/*Lists all of the continents just once */

SELECT SUM(gdp) FROM world WHERE continent = 'Africa'
/*Print out the total GDP by summing up all the African countries */

SELECT COUNT(area) FROM world WHERE area >= 1000000
/*Counts the number of countries that have an area of at least 1 million sq km */

SELECT SUM(population) FROM world
WHERE name IN ('Estonia', 'Latvia', 'Lithuania')
/*Lists the total population by summing up all the Baltic states */

SELECT continent, COUNT(name) FROM world GROUP BY continent
/*For each continent, count how many countries there are in the continent */

SELECT continent, COUNT(name) FROM world WHERE population >= 10000000
GROUP BY continent  
/*For each continent, count how many countries have a population of at least 10 million */

SELECT continent FROM world GROUP BY continent HAVING SUM(population) >= 100000000
/*Lists all the continents that have a total population of at least 100 million */