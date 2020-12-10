-- SELECT basics
-- 1.
SELECT population FROM world
  WHERE name = 'Germany'
-- 2.
SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway','Denmark');
-- 3.
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

-- SELECT from WORLD

-- 1.
SELECT name, continent, population FROM world
-- 2.
SELECT name FROM world
WHERE population >200000000
-- 3.
SELECT name, gdp/population FROM world
WHERE population >= 200000000
-- 4.
SELECT name, population/1000000 FROM world 
WHERE continent = 'South America'
-- 5.
SELECT name, population FROM world 
WHERE name IN ('France', 'Germany', 'Italy')
-- 6.
SELECT name FROM world 
WHERE name LIKE 'United%'
-- 7.
SELECT name, population, area FROM world 
WHERE area >3000000 OR population > 250000000
-- 8.
SELECT name, population, area FROM world 
WHERE area >3000000 XOR population > 250000000
-- 9.
SELECT name, ROUND(population/1000000,2), ROUND(gdp/1000000000,2) FROM world 
WHERE continent = 'South America'
-- 10.
SELECT name, ROUND(gdp/population,-3) FROM world 
WHERE gdp >= 1000000000000
-- 11.
SELECT name, capital FROM world
 WHERE LENGTH(name) = LENGTH(capital)
-- 12.
SELECT name, capital FROM world
WHERE LEFT(name,1) = LEFT(CAPITAL,1) AND name <> capital
-- 13.
SELECT name
   FROM world
WHERE name LIKE '%A%' and name LIKE '%E%' and name LIKE '%I%' and name LIKE '%O%' and name LIKE '%U%'
  AND name NOT LIKE '% %'
  
-- SELECT from Nobel

-- 1.
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950
-- 2.
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'
-- 3.
SELECT yr, subject
  FROM nobel
 WHERE winner = 'Albert Einstein'
-- 4.
SELECT winner
  FROM nobel
 WHERE subject = 'Peace' AND yr >= 2000
-- 5.
SELECT *
  FROM nobel
 WHERE subject = 'Literature' AND yr >= 1980 AND yr <= 1989
-- 6.
SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
                   'Barack Obama')
-- 7.
SELECT winner from nobel
WHERE winner LIKE 'John%'
-- 8.
SELECT * from nobel 
WHERE (subject = 'Physics' AND yr = '1980') OR (subject = 'Chemistry' AND yr = '1984')
-- 9.
SELECT * from nobel 
WHERE (subject <> 'Chemistry' AND subject <> 'Medicine' AND yr = '1980') 
-- 10.
SELECT * from nobel 
WHERE (subject = 'Medicine' AND yr < 1910) OR (subject = 'Literature' AND yr >= 2004)
-- 11.
SELECT * from nobel 
WHERE winner = 'Peter Grünberg'
-- 12.
SELECT * from nobel 
WHERE winner = 'Eugene O''Neill'
-- 13.
SELECT winner, yr, subject from nobel 
WHERE winner LIKE 'Sir%' 
-- 14.
SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'),subject,winner

--  SELECT within SELECT

-- 1.
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')
-- 2.
SELECT name FROM world
WHERE continent = 'Europe'
AND gdp/population > (SELECT gdp/population from world WHERE name = 'United Kingdom')
-- 3.
SELECT name, continent FROM world
WHERE continent = (SELECT continent FROM world  WHERE name = 'Argentina') OR continent = (SELECT continent FROM world  WHERE name = 'Australia')
ORDER BY name
-- 4.
SELECT name from world WHERE population > 
(SELECT name FROM world  WHERE name = 'Canada'AND population <
(SELECT name FROM world  WHERE name = 'Poland'))
-- 5.
SELECT name, 
CONCAT(ROUND((population/(SELECT population FROM world WHERE name = 'Germany'))*100,0),'%')
FROM world WHERE continent = 'Europe'
-- 6.
SELECT name
FROM world
WHERE gdp > ALL
(SELECT gdp FROM world WHERE continent = 'Europe' AND gdp > 0)
-- 7.
SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent
          AND population>0)
-- 8.

-- 9.

-- 10.

--  SUM and COUNT

-- 1.
SELECT SUM(population)
FROM world
-- 2.
SELECT DISTINCT continent FROM world 

-- 3.
SELECT SUM(gdp) FROM world WHERE continent = 'Africa'
-- 4.
SELECT COUNT(name) FROM world WHERE area >= 1000000
-- 5.
SELECT SUM(population) FROM world WHERE name IN ('Estonia', 'Latvia', 'Lithuania')
-- 6.
SELECT continent, COUNT(name)FROM world
GROUP BY continent
-- 7.
SELECT continent, COUNT(name)FROM world
WHERE population >= 10000000
GROUP BY continent
-- 8.
SELECT DISTINCT continent FROM world
GROUP BY continent
HAVING SUM(population) >= 100000000

-- The JOIN operation


-- 1.
SELECT matchid, player FROM goal 
 WHERE teamid = 'GER'
-- 2.
SELECT id,stadium,team1,team2
  FROM game
WHERE id = '1012'
-- 3.

-- 4.

-- 5.

-- 6.

-- 7.

-- 8.

-- 9.

-- 10.

-- 11.

-- 12.

-- 13.

-- More JOIN operations

-- 1.

-- 2.

-- 3.

-- 4.

-- 5.

-- 6.

-- 7.

-- 8.

-- 9.

-- 10.

-- 11.

-- 12.

-- 13.

-- 14.

-- 15.

-- Using Null

-- 1.

-- 2.

-- 3.

-- 4.

-- 5.

-- 6.

-- 7.

-- 8.

-- 9.

-- 10.

-- Self join

-- 1.

-- 2.

-- 3.

-- 4.

-- 5.

-- 6.

-- 7.

-- 8.

-- 9.

-- 10.
