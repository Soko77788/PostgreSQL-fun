\c template1;

DROP DATABASE IF EXISTS animals_db;


CREATE DATABASE animals_db;

\c animals_db;

CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name CHAR(50),
    age INT,
    type VARCHAR(50),
    owner_id INT
);

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);