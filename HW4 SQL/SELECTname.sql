/*Tutorial 1: SELECT name */

SELECT name FROM world WHERE name LIKE 'Y%'
/*Lists countries that start with the character "Y" */

SELECT name FROM world WHERE name LIKE '%y'
/*Lists countries that end with the character "y" */

SELECT name FROM world WHERE name LIKE '%x%'
/*Lists countries that have the character "x" */

SELECT name FROM world WHERE name LIKE '%land'
/*Lists countries that end in the character sequence "land" */

SELECT name FROM world WHERE name LIKE 'C%' AND name LIKE '%ia'
/*Lists countries that start with "C" and end with "ia" */

SELECT name FROM world WHERE name LIKE '%oo%'
/*Lists countires that have the sequence "oo" in their name */

SELECT name FROM world WHERE name LIKE '_t%' ORDER BY name
/*Lists countires that have "t" as their second character */

SELECT name FROM world WHERE name LIKE '%o__o%'
/*Lists countires that have two "o" characters separated by two other characters */

SELECT name FROM world WHERE LEN(name) = 4
/*Lists countries that have exactly 4 characters */