SELECT * FROM TopCelebs;

--FIND THE YEAR WHEN -->TOP CELEBS
--OUTPUT-->2022

SELECT Year_of_MostPopularRole, COUNT(*) AS NumTopCelebs
FROM 
TopCelebs
GROUP BY Year_of_MostPopularRole
ORDER BY NumTopCelebs DESC;

--> TOP 5 
SELECT TOP 5 Names_Popular_Celebs  , Role
FROM
TopCelebs 
WHERE Role LIKE '%Writer%' ;
-----------------------------------------------------------------------------
Select * FROM PopularFilms
--
-->best 10 
SELECT Films_Names , Stars FROM(
SELECT TOP 11 Stars , Films_Names , DENSE_RANK() OVER(ORDER BY Stars) AS TOP_STAR
FROM
PopularFilms
ORDER BY STARS DESC) AS NEW

WHERE TOP_STAR IN (25, 24, 23, 22, 21, 20, 19, 18, 17, 16)





SELECT COUNT(*) , Stars
FROM 
PopularFilms
GROUP BY Stars 
HAVING COUNT(*)>1

--------------------------------
SELECT * FROM Fan_Favorites


SELECT Top 20 *
FROM Fan_Favorites

SELECT AVG(Stars_of_Films)
FROM
Fan_Favorites --->8,1
------------------------------------------------------------------------

SELECT TOP 10  T1.Series_Title , T1.Meta_score , T2.IMDB_Rating
INTO TOP_TEN_IN_RATE_META
FROM
(SELECT TOP 100 Series_Title , Meta_score FROM kaggle_IMDB ORDER BY Meta_score DESC) AS T1
INNER JOIN
(SELECT TOP 100 Series_Title , IMDB_Rating FROM kaggle_IMDB ORDER BY IMDB_Rating DESC) AS T2
ON T1.Series_Title = T2.Series_Title;

--------------------------------
SELECT * FROM kaggle_IMDB
-------------------------------


SELECT TOP 100 Gross , Series_Title 
INTO GROSS_OVER_100FILMS
FROM 
kaggle_IMDB
ORDER BY Gross DESC


SELECT AVG( Gross )
FROM 
kaggle_IMDB ----> 68034750.9338147

--------------
SELECT TOP 10 Series_Title , Genre
INTO TOP_GEN_GROSS
FROM 
kaggle_IMDB
ORDER BY Gross DESC

-----------------
SELECT TOP 10 Series_Title , Genre
INTO TOP_GEN_RATE
FROM 
kaggle_IMDB
ORDER BY IMDB_Rating DESC
---------------------------------
SELECT COUNT(Series_Title) AS COUNT_GEN , Genre 
INTO COUNT_FILMS_BY_GEN
FROM
kaggle_IMDB
GROUP BY Genre
ORDER BY COUNT_GEN DESC
----------------------------------
SELECT TOP 10  Series_Title , No_of_Votes
INTO TOP10_BY_VOTING
FROM
kaggle_IMDB
ORDER BY No_of_Votes DESC

-------------------------------------------------









