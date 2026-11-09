Project Approach
The main objective of this project was to analyze IMDb movie data using SQL and identify insights about movie popularity, revenue, ratings, and director performance.

The project was completed through the following steps:
1. Imported and explored the Movies and Directors datasets.
2. Examined the data using SQL SELECT queries.
3. Combined both tables using INNER JOIN and LEFT JOIN.
4. Used filtering conditions to identify specific directors and female directors.
5. Used aggregate functions such as COUNT() and SUM() to calculate movie counts and revenue.
6. Used ORDER BY and LIMIT to identify popular and highest-revenue movies.
7. Analyzed director performance based on the number of movies and total revenue.
2. Dataset Description
The project uses an IMDb Movies dataset containing two tables.

Table 1: Movies
Column	Description
ID	Unique movie ID
Original Title	Movie name
Budget	Movie production budget
Popularity	Movie popularity score
Release Date	Movie release date
Revenue	Revenue generated
Vote Average	Average IMDb rating
Vote Count	Number of votes
Overview	Movie description
Director ID	Director reference ID

Table 2: Directors
Column	Description
ID	Unique director ID
Name	Director name
Gender	Director gender
Department	Director department

3. Models / Techniques Used
This project did not use Machine Learning models. It used SQL queries and database analysis techniques.
Technique	Purpose
SELECT	Retrieve movie and director data
WHERE	Filter records
JOIN	Combine Movies and Directors tables
GROUP BY	Group movies by directors
COUNT()	Count movies and female directors
SUM()	Calculate total movie revenue
ORDER BY	Rank movies and directors
LIMIT	Identify top-performing records
LIKE	Search directors by name

4. Project Conclusions
The SQL analysis helps identify:
1. The total number of movies available in the IMDb dataset.
2. The three most popular movies based on popularity scores.
3. The three most bankable movies based on revenue.
4. The highest-rated movie released since January 1, 2000.
5. The number of female directors.
6. Movies directed by Brenda Chapman.
7. The director who made the highest number of movies.
8. The director who generated the highest total movie revenue.

