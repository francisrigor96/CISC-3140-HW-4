/*Tutorial 3: SELECT from Nobel */

SELECT * FROM nobel WHERE yr = 1950
/*Prints out all information from the year 1950 */

SELECT winner  FROM nobel WHERE yr = 1962 AND subject = 'Literature'
/*Lists the winners of the Nobel Prize in Literature in 1962 */

SELECT yr, subject FROM nobel WHERE winner = 'Albert Einstein'
/*Prints out Albert Einstein's award */

SELECT winner FROM nobel WHERE yr > 1999 AND subject = 'Peace'
/*Lists out the Nobel Peace Prize winners since 2000 */

SELECT yr, subject, winner FROM nobel WHERE subject = 'Literature' AND yr > 1979 AND yr < 1990
/*Lists all the Nobel Prize in Literature winners from 1980 to 1989 */

SELECT * FROM nobel WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama')
/*Lists all the Nobel Prize information of the specified individuals in parantheses */

SELECT winner FROM nobel WHERE winner LIKE 'John%'
/*Lists all Nobel winners who have first name as "John" */

SELECT * FROM nobel WHERE (yr = 1980 AND subject = 'Physics') OR (yr = 1984 AND subject = 'Chemistry')
/*Lists all Nobel Prize information of the Physics winners from 1980 AND the Chemistry winners from 1984 */

SELECT * FROM nobel WHERE subject NOT IN ('Chemistry', 'Medicine') AND yr = 1980
/*Lists all Nobel Prize info from 1980 excluding those from Chemistry and Medicine */

SELECT * FROM nobel WHERE (subject = 'Medicine' AND yr < 1910) OR (subject = 'Literature' AND yr > 2003)
/* Lists the Nobel Prize in Medicine winners before 1910 AND Nobel Prize in Literature winners after 2003 */

SELECT * FROM nobel WHERE winner = 'PETER GRÜNBERG'
/*Lists the Nobel Prize info won by an individual named Peter Grunberg */