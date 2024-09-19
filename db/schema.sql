\c template1;

DROP DATABASE IF EXISTS animals_db;


CREATE DATABASE animals_db;

\c animals_db;

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    name VARCHAR(15) NOT NULL
);

CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name CHAR(15) NOT NULL,
    age INT DEFAULT 1,
    type VARCHAR(15) NOT NULL,
    owner_id INT,
    FOREIGN KEY (owner_id)
    REFERENCES owners(id)
    ON DELETE SET NULL
);
