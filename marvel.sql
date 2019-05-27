DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies
(
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people
(
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);

INSERT INTO people (name) VALUES ('George Gordon');
INSERT INTO people (name) VALUES ('Stephen Gossip');
INSERT INTO people (name) VALUES ('Simon Hall');
INSERT INTO people (name) VALUES ('Katherine Kerr');
INSERT INTO people (name) VALUES ('John McNeill');
INSERT INTO people (name) VALUES ('Shae Nicholsun');
INSERT INTO people (name) VALUES ('Rory O''Shea');
INSERT INTO people (name) VALUES ('Jamie Paterson');
INSERT INTO people (name) VALUES ('Harrison Booth');
INSERT INTO people (name) VALUES ('Stephanie Scullion');
INSERT INTO people (name) VALUES ('Patryk Smacki');
INSERT INTO people (name) VALUES ('Robert Tam');
INSERT INTO people (name) VALUES ('Michal Tyranski');
INSERT INTO people (name) VALUES ('Michael Urquhart');
INSERT INTO people (name) VALUES ('Kyle Walker');
INSERT INTO people (name) VALUES ('Jeremy Wood');
INSERT INTO people (name) VALUES ('Captain Code Craig Morton');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '15:10');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '20:45');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '13:15');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '18:55');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '22:50');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '12:35');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '15:35');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '15:55');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '15:40');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '21:00');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '23:40');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '21:25');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '23:40');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '15:15');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '22:35');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '15:55');
INSERT INTO movies (title, year, show_time) VALUES ('Spider-Man: Homecoming', 2017, '17:40');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: Ragnarok', 2017, '15:55');
INSERT INTO movies (title, year, show_time) VALUES ('Black Panther', 2018, '17:45');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Infinity War', 2018, '14:50');

INSERT INTO movies (title, year, show_time) VALUES ('Captain Marvel', 2019, '24:00');

UPDATE movies SET show_time = '01:40' WHERE title = 'Guardians of the Galaxy 2';


UPDATE people SET name = 'Chae Nicholson'  WHERE name = 'Shae Nicholsun';

DELETE FROM movies WHERE title = 'Batman Begins';
DELETE FROM people WHERE name = 'Harrison Booth';

SELECT * FROM movies;
SELECT name FROM people;
SELECT * FROM people WHERE name = 'Simon Hall';





-- # SQL Homework
--
-- The local cinema are having a Marvel Movie Marathon! They have asked you to help maintain their database of movies with times and attendees.
--
-- ## To access the database:
--
-- #1. DONE. First, create a database called 'marvel'
--
-- ```
-- #2. DONE. terminal
-- createdb marvel
-- ```
--
-- #3. DONE. Next, run the provided SQL script to populate your database:
--
-- ```
-- #4. DONE. terminal
-- psql -d marvel -f marvel.sql
-- ```
--
-- Use the supplied data as the source of data to answer the questions. Copy the SQL command you have used to get the answer, and paste it below the question, along with the result they gave.
--
-- ## Questions
--
-- 1.  #DONE. Return ALL the data in the 'movies' table.
-- SELECT * FROM movies;

-- 2.  #DONE. Return ONLY the name column from the 'people' table
--SELECT name FROM people;


-- 3.  #DONE. Oops! Someone at CodeClan spelled Chae's name wrong! Change it to reflect the proper spelling ('Shae Nicholsun' should be 'Chae Nicholson').
--UPDATE people SET name = 'Chae Nicholson'  WHERE name = 'Shae Nicholsun';

-- 4.  #DONE. Return ONLY your name from the 'people' table.
--SELECT * FROM people WHERE name = 'Simon Hall';

-- 5.  #DONE. The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
--DELETE FROM movies WHERE title = 'Batman Begins';

-- 6.  #DONE. Create a new entry in the 'people' table with the name of one of the instructors.
--INSERT INTO people (name) VALUES ('Captain Code Craig Morton');


-- 7.  #DONE. Harrison Booth has decided to hijack our movie evening, Remove him from the table of people.
--DELETE FROM people WHERE name = 'Harrison Booth';

-- 8.  #DONE. The cinema has just heard that they will be holding an exclusive midnight showing of 'Captain Marvel'!! Create a new entry in the 'movies' table to reflect this.
--INSERT INTO movies (title, year, show_time) VALUES ('Captain Marvel', 2019, '24:00');


-- 9. #DONE. The cinema would also like to make the Guardians movies a back to back feature. Find out the show time of "Guardians of the Galaxy" and set the show time of "Guardians of the Galaxy 2" to start two hours later.
--UPDATE movies SET show_time = '01:40' WHERE title = 'Guardians of the Galaxy 2';



-- ## Extension
--
-- 1.  Research how to delete multiple entries from your table in a single command.
