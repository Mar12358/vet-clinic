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

SELECT o.full_name as owner, COUNT(*) AS total_animals FROM animals a
JOIN owners o ON a.owners_id = o.id
GROUP BY o.full_name
ORDER BY total_animals DESC
LIMIT 1;

SELECT v.date_of_visit, a.name as last_seen_animal FROM animals a
JOIN visits v ON a.id = v.animals_id
JOIN vets ve ON ve.id = v.vets_id AND ve.name = 'William Tatcher'
GROUP BY a.name, v.date_of_visit
ORDER BY v.date_of_visit DESC
LIMIT 1;

SELECT COUNT(DISTINCT v.animals_id) FROM visits v
JOIN vets ve ON ve.id = v.vets_id
WHERE ve.name = 'Stephanie Mendez';

SELECT ve.name as vets, s.name as specialties
FROM vets ve
LEFT JOIN specializations sp ON sp.vets_id = ve.id
LEFT JOIN species s ON s.id = sp.species_id
ORDER BY ve.name;

SELECT a.name FROM animals a
JOIN visits v ON a.id = v.animals_id
JOIN vets ve ON ve.id = v.vets_id
WHERE ve.name = 'Stephanie Mendez'
AND date_of_visit BETWEEN '2020-04-01' AND '2020-08-30';

SELECT a.name, COUNT(*) as most_visits
FROM animals a
JOIN visits v ON a.id = v.animals_id
GROUP BY a.name
ORDER BY most_visits DESC
LIMIT 1;

SELECT v.date_of_visit, a.name AS first_visit FROM animals a
JOIN visits v ON a.id = v.animals_id
JOIN vets ve ON ve.id = v.vets_id
WHERE ve.name = 'Maisy Smith'
ORDER BY v.date_of_visit ASC
LIMIT 1;

SELECT COUNT(*) AS num_visits
FROM visits v
JOIN animals a ON a.id = v.animals_id
JOIN vets ve ON ve.id = v.vets_id
WHERE NOT EXISTS (
    SELECT 1
    FROM specializations sp
    WHERE sp.vets_id = ve.id AND sp.species_id = a.species_id
);

SELECT s.name, COUNT(*) from species s
JOIN animals a ON a.species_id = s.id
JOIN visits v ON v.animals_id = a.id
JOIN vets ve ON ve.id = v.vets_id
WHERE ve.name = 'Maisy Smith'
GROUP BY s.name
ORDER BY COUNT(*) DESC
LIMIT 1;