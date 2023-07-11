/*Queries that provide answers to the questions from all projects.*/

CREATE DATABASE vet_clinic;

SELECT * FROM animals
where NAME LIKE '%mon';

SELECT NAME FROM animals
WHERE DATE_OF_BIRTH >= '2016-01-01' AND DATE_OF_BIRTH <= '2019-12-31';

SELECT NAME FROM animals
WHERE neutered = true AND ESCAPE_ATTEMPTS < 3;

SELECT DATE_OF_BIRTH FROM animals
WHERE NAME = 'Agumon' OR NAME = 'Pikachu';

SELECT NAME, ESCAPE_ATTEMPTS FROM animals
WHERE weight_kg > 10.5;

SELECT * FROM animals
WHERE NEUTERED = true;

SELECT * FROM animals
WHERE NAME != 'Gabumon';

SELECT * FROM animals 
WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;

