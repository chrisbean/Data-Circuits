psql -- Launch an interface to your machines postgresql server

-- Migration: Chaning the organization structure
CREATE DATABASE lemur_jungle;
\c lemur_jungle -- Connect to the database
CREATE TABLE lemurs (name varchar(100), id SERIAL PRIMARY KEY);

-- Mutation:  Modifying Data
INSERT INTO lemurs (name) VALUES ('Lichard DeGray');
INSERT INTO lemurs (name) VALUES ('Kathew Bod');

-- Selection: Obtaining data
SELECT * FROM lemurs;
