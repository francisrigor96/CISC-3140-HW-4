/*Tutorial 0: SELECT basics */

SELECT population FROM world WHERE name = 'Germany'
/* Prints the population of Germany */

SELECT name, population FROM world WHERE name IN('Sweden', 'Norway', 'Denmark')
/* Prints the name and population of Sweden, Norway, and Denmark */

SELECT name, area FROM world WHERE area BETWEEN 200000 AND 250000
/* Prints the name and area of countries that are between the areas of 200,000 and 250,000 sq km */