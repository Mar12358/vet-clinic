/*Queries that provide answers to the questions from all projects.*/

/*CREATE DATABASE vet_clinic;*/

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

BEGIN TRANSACTION;
UPDATE animals SET species = 'digimon' WHERE NAME LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
COMMIT;

BEGIN TRANSACTION;
DELETE FROM animals;
ROLLBACK;

BEGIN TRANSACTION;
DELETE FROM animals WHERE DATE_OF_BIRTH > '2022-01-01';
SAVEPOINT SP1;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO SP1;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;