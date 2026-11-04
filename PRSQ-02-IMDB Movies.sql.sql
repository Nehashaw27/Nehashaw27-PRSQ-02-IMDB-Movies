show databases;
create database dm86;

-- a)	Can you get all data about movies? 
         select * from movies;
         
-- b)	How do you get all data about directors?
		select * from directors;

-- c) Check how many movies are present in IMDB.
		SELECT COUNT(*) AS Total_Movies
		FROM movies;

-- d) Find these 3 directors: James Cameron ; Luc Besson ; John Woo
		SELECT *
		FROM directors
		WHERE Name IN ('James Cameron', 'Luc Besson', 'John Woo');

-- e) Find all directors with name starting with S.
		select * from directors where name like 'S%';
 
 -- f) Count female directors.
		 SELECT COUNT(*) AS Female_Directors
			FROM directors
			WHERE Gender = 1;

-- g)	Find the name of the 10th first women directors?
		 SELECT Name
		  FROM directors
		   WHERE Gender = 1
			 ORDER BY Name ASC
			   LIMIT 9, 1;

-- h)	What are the 3 most popular movies?
		 SELECT 
		  `original_title`,
			Popularity FROM  movies
			 ORDER BY Popularity DESC
			  LIMIT 3;

-- i)	What are the 3 most bankable movies?
		 SELECT 
         `original_title`,
           Revenue FROM movies
            ORDER BY Revenue DESC
             LIMIT 3;

-- j)  What is the most awarded average vote since the January 1st, 2000?
        SELECT
		`Original_title`,
		`vote_average`,
		`release_date`
		  FROM movies
			WHERE `release_date` >= '2000-01-01'
			 ORDER BY `vote_average` DESC
			   LIMIT 1;

-- k)	Which movie(s) were directed by Brenda Chapman?
		 SELECT
          m.`Original_title`,
          d.Name
			FROM movies m
			 INNER JOIN directors d
			  ON m.`Director_ID` = d.ID
			   WHERE d.Name = 'Brenda_Chapman';

-- l)	Which director made the most movies?
         SELECT
          d.Name, COUNT(m.ID) AS Total_Movies
			FROM directors d
			 INNER JOIN movies m
			  ON d.ID = m.`Director_ID`
			   GROUP BY d.ID, d.Name
			    ORDER BY Total_Movies DESC
			     LIMIT 1;

-- m)	Which director is the most bankable?
			SELECT d.Name,
			 SUM(m.Revenue) AS Total_Revenue
			  FROM directors d
			   INNER JOIN movies m
			    ON d.ID = m.`Director_ID`
			     GROUP BY d.ID, d.Name
			      ORDER BY Total_Revenue DESC
			       LIMIT 1;

-- Join Query  To merge this both tables use id as primary key from table directors and drop id from table movies and replace directors_id to id.
		SELECT *
		FROM movies m
		INNER JOIN directors d
		ON m.Director_ID = d.ID;

-- creating a combined table
   SELECT
    m.id AS Movie_ID,
    m.original_title,
    m.director_id,
    d.id AS Director_ID,
    d.name AS Director_Name
	FROM movies m
	 LEFT JOIN directors d
	  ON m.director_id = d.id
	   LIMIT 20;









