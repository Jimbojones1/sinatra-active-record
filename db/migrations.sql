CREATE DATABASE fun_friday;

\c fun_friday;

CREATE TABLE users (id SERIAL PRIMARY KEY, username varchar(255), password varchar(255));
