 1 
SELECT * FROM `movies` WHERE year = 1995


 2
SELECT COUNT(ac.first_name) as "Actors" FROM actors ac 
JOIN roles rl ON ac.id=rl.actor_id
JOIN movies mv ON rl.movie_id=mv.id
WHERE mv.name="Lost in Translation"


 3 
SELECT ac.first_name FROM actors ac 
JOIN roles rl ON ac.id=rl.actor_id
JOIN movies mv ON rl.movie_id=mv.id
WHERE mv.name="Lost in Translation"

4
SELECT dir.first_name , dir.last_name FROM directors dir 
JOIN movies_directors mvdir ON dir.id=mvdir.director_id
JOIN movies mv on mvdir.movie_id=mv.id
WHERE mv.name="Fight Club"

5
SELECT COUNT(mv.name) as "Number of movies" FROM movies mv
JOIN movies_directors mvdir ON mv.id=mvdir.movie_id
JOIN directors dir ON mvdir.director_id=dir.id
WHERE dir.first_name="Clint" AND dir.last_name="Eastwood"

6 
SELECT mv.name FROM movies mv
JOIN movies_directors mvdir ON mv.id=mvdir.movie_id
JOIN directors dir ON mvdir.director_id=dir.id
WHERE dir.first_name="Clint" AND dir.last_name="Eastwood"

7
SELECT dir.first_name, dir.last_name FROM directors dir
JOIN movies_directors mvdir ON mvdir.director_id=dir.id
JOIN movies mv ON mv.id=mvdir.movie_id
JOIN movies_genres gen ON gen.movie_id=mv.id
WHERE gen.genre="Horror"

8
SELECT ac.first_name FROM actors ac
JOIN roles rl ON rl.actor_id=ac.id
JOIN movies mv ON mv.id=rl.movie_id
JOIN movies_directors mvdir ON mvdir.movie_id=mv.id
JOIN directors dir ON dir.id=mvdir.director_id
WHERE dir.first_name="Christopher" AND dir.last_name="Nolan"