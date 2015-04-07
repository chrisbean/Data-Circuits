psql -- Launch an interface to your machines postgresql server

-- Migration: Chaning the organization structure
CREATE DATABASE sportz_teams;
\c sportz_teams -- Connect to the database
CREATE TABLE teams (id SERIAL PRIMARY KEY, name varchar(100), location varchar(100), slogan varchar(250));
CREATE TABLE players (id SERIAL PRIMARY KEY, name varchar(100), age integer, team_id integer);

-- Mutation:  Modifying Data
INSERT INTO teams (name, location, slogan) VALUES ('Lemurs', 'Madagascar Bay', 'Time to climb de fence');
INSERT INTO teams (name, location, slogan) VALUES ('Racoons', 'Jersey', 'Awwwwwwww...  No.');
INSERT INTO teams (name, location, slogan) VALUES ('Cheddarsaurs', 'Vermont', 'Time to Smile');
INSERT INTO teams (name, location, slogan) VALUES ('Sailors', 'Atlantic', 'Red sky all day...');

-- Selection: Obtaining data
SELECT * FROM teams;

-- Mutation:  Modifying Data
INSERT INTO players (name, age) VALUES ('Lichard DeGray', 3);
INSERT INTO players (name, age) VALUES ('Kathew Bod', 4);
INSERT INTO players (name, age) VALUES ('Omily', 7);
INSERT INTO players (name, age) VALUES ('Willip', 5);
INSERT INTO players (name, age) VALUES ('Pauldric', 5);

-- Selection: Obtaining data
SELECT * FROM players;

-- Mutation:  Modifying Data
UPDATE players SET team_id=(SELECT id FROM teams WHERE name LIKE 'Lemurs')
  WHERE name LIKE 'Lichard DeGray';

-- Selection: Obtaining data
SELECT * FROM players;

-- Mutation:  Modifying Data
UPDATE players SET team_id=(SELECT id FROM teams WHERE name LIKE 'Racoons')
  WHERE name LIKE 'Kathew Bod';
UPDATE players SET team_id=(SELECT id FROM teams WHERE name LIKE 'Cheddarsaurs')
  WHERE name LIKE 'Omily';
UPDATE players SET team_id=(SELECT id FROM teams WHERE name LIKE 'Lemurs')
  WHERE name LIKE 'Willip';

-- Selection: Obtaining data
SELECT * FROM players ORDER BY name;
SELECT * FROM players ORDER BY age;
SELECT * FROM players INNER JOIN teams ON teams.id = players.team_id;
SELECT * FROM players LEFT JOIN teams ON teams.id = players.team_id;
SELECT * FROM players RIGHT JOIN teams ON teams.id = players.team_id;

SELECT * FROM players WHERE age = 5;
SELECT * FROM players WHERE age <= 4;
SELECT * FROM teams WHERE id=(SELECT id FROM players WHERE name LIKE 'Lichard DeGray');
SELECT * FROM teams WHERE id=(SELECT id FROM players WHERE name LIKE 'Willip');

SELECT * FROM players WHERE team_id=(SELECT id FROM teams WHERE location LIKE 'Madagascar Bay');
SELECT * FROM players WHERE team_id=(SELECT id FROM teams WHERE name LIKE 'Racoons');
