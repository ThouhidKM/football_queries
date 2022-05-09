-- Find all the matches from 2017.

SELECT * FROM public.matches WHERE season='2017';

-- Find all the matches featuring Barcelona.

SELECT * FROM public.matches 
WHERE hometeam='Barcelona' 
OR awayteam='Barcelona' ;

-- What are the names of the Scottish divisions included?

SELECT * FROM public.matches 
WHERE division_code ILIKE '%sc%';

-- Find the division code for the Bundesliga. Use that code to find out how many matches Freiburg have played in the Bundesliga since the data started being collected.

SELECT COUNT(*) FROM public.matches 
WHERE division_code ILIKE '%d%';

-- Find the unique names of the teams which include the word "City" in their name (as entered in the database)

SELECT DISTINCT awayteam, hometeam FROM public.matches 
WHERE awayteam ILIKE '%city%'
OR hometeam ILIKE '%city%';

-- How many different teams have played in matches recorded in a French division?
-- Using a derived table
SELECT COUNT(*)
FROM (SELECT DISTINCT hometeam
      FROM  public.matches   
      WHERE division_code ILIKE '%f%') as dt;

-- Have Huddersfield played Swansea in the period covered?

SELECT COUNT(*)
    FROM  public.matches   
      WHERE hometeam ILIKE '%Huddersfield%'
      AND awayteam ILIKE '%Swansea%'
      OR hometeam ILIKE '%Swansea%'
      AND awayteam ILIKE '%Huddersfield%';

-- How many draws were there in the Eredivisie between 2010 and 2015?


-- Select the matches played in the Premier League in order of total goals scored from highest to lowest. Where there is a tie the match with more home goals should come first.


-- In which division and which season were the most goals scored?

