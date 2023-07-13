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

SELECT COUNT(*) from animals;

SELECT COUNT(*) from animals
WHERE ESCAPE_ATTEMPTS = 0;

SELECT AVG(WEIGHT_KG) from animals

SELECT neutered, MAX(escape_attempts) FROM animals
GROUP BY neutered;

SELECT species, MAX(weight_kg) as max_weight, MIN(weight_kg) as min_weight 
FROM animals
GROUP BY species;

SELECT species, AVG(ESCAPE_ATTEMPTS) AS avg_escapes FROM animals
WHERE DATE_OF_BIRTH BETWEEN '1990-01-01' AND '2000-12-31'
GROUP BY species;

SELECT name FROM animals a 
JOIN owners o ON a.owners_id = o.id 
WHERE o.full_name = 'Melody Pond';

SELECT * FROM animals a 
JOIN species s ON a.species_id = s.id 
WHERE s.name = 'Pokemon';

SELECT full_name as owner, name as animal FROM owners
LEFT JOIN animals
ON owners.ID = animals.OWNERS_ID 

SELECT COUNT(*), s.name FROM animals
JOIN species s ON animals.species_id = s.id
GROUP BY s.name;

SELECT a.name FROM animals a
JOIN species s ON a.species_id = s.id
JOIN owners o ON a.owners_id = o.id
WHERE s.name ='Digimon' AND o.full_name = 'Jennifer Orwell'

SELECT a.name FROM animals a
JOIN owners o ON a.owners_id = o.id
WHERE a.escape_attempts = 0 AND o.full_name = 'Dean Winchester'



