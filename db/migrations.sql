CREATE DATABASE big_gulp;
\c big_gulp;
CREATE TABLE tasks (id SERIAL PRIMARY KEY, name VARCHAR(255), description VARCHAR(255));
