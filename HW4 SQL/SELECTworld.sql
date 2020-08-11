/*Tutorial 2: SELECT from WORLD */

SELECT name, continent, population FROM world
/* Lists only the 3 given columns from world */

SELECT name FROM world WHERE population > 199000000
/*Lists all the names of the countries that have a population of at least 200 million */

SELECT name, gdp/population FROM world WHERE population > 199000000
/*Lists the GDP per capita of countries that have a population of at least 200 million */

SELECT name, population/1000000 FROM world WHERE continent = 'South America'
/*Gives a shortened answer in millions of the countries in South America. Given in decimals. */

SELECT name, population FROM world WHERE name IN ('France', 'Germany', 'Italy')
/*Gives the name and population of the countries in France, Germany, and Italy */

SELECT name FROM world WHERE name LIKE 'United%'
/*Lists the countries that have a character sequence of "United" */

SELECT name, population, area FROM world WHERE area > 2900000 OR population > 249000000
/*Lists name, population and area that have an area bigger than 3 million sq km or a population of more than 250 million */

SELECT name, population, area FROM world WHERE area > 3000000 XOR population > 250000000
/*Lists the name, population, and area of countries that are big by area or population but not both */

SELECT name, ROUND(population/1000000, 2), ROUND (gdp/1000000000, 2) FROM world
WHERE continent = 'South America'
/*Lists the name, population, and GDP of countries in South America. Population and GDP are rounded to 2 decimal places */

SELECT name, ROUND(gdp/population, -3) FROM world WHERE gdp >= 1000000000000;
/*Lists the name and gdp per capita of countries that have a GDP of at least 1 trillion. GDP per capita is listed in thousands */

SELECT name, capital FROM world WHERE LENGTH(name) = LENGTH(capital)
/*Lists the country and capital if both have the same character length */

SELECT name FROM world
WHERE name LIKE '%A%' AND name LIKE '%E%' AND name LIKE '%I%' AND name LIKE '%O%' AND name LIKE '%U%'
AND name NOT LIKE '% %';
/*List the country that has all the vowels and no spaces in its name. The country is Mozambique */