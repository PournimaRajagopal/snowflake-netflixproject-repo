Most Popular Show Genres by Count
----------------------------------
SELECT MAIN_GENRE, count(*) AS moviescount
FROM neflixdb.public.bestshowsbyyear
GROUP BY MAIN_GENRE
ORDER BY moviescount desc;


Top 5 Most Voted Shows
----------------------
SELECT TITLE, NUMBER_OF_VOTES,main_genre
FROM NETFLIXDB.PUBLIC.bestshows
ORDER BY NUMBER_OF_VOTES DESC
LIMIT 5;

Movie Count by Production Country
---------------------------------
SELECT MAIN_PRODUCTION, COUNT(*) AS MOVIE_COUNT
FROM NETFLIXDB.PUBLIC.bestmovies
GROUP BY MAIN_PRODUCTION
ORDER BY MOVIE_COUNT DESC;

Top 5 Most Voted Movies
-----------------------
SELECT TITLE, NUMBER_OF_VOTES,main_genre
FROM NETFLIXDB.PUBLIC.bestmovies
ORDER BY NUMBER_OF_VOTES DESC
LIMIT 5;

Most Popular Movie Genres by Count
----------------------------------
SELECT MAIN_GENRE, count(*) AS moviescount
FROM neflixdb.public.bestmoviesbyyear
GROUP BY MAIN_GENRE
ORDER BY moviescount desc;