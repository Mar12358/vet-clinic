/* Populate database with sample data. */

INSERT INTO animals (NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG)
VALUES ('Agumon', '2020-02-03', 0, true, 10.23 );

INSERT INTO animals (NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG)
VALUES ('Gabumon', '2018-11-15', 2, true, 8 );

INSERT INTO animals (NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG)
VALUES ('Pikachu', '2021-01-07', 1, false, 15.04 );

INSERT INTO animals (NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG)
VALUES ('Devimon', '2017-05-12', 5, true, 11 );



INSERT INTO animals (NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG)
VALUES ('Charmander', '2020-02-08', 0, false, -11 );

INSERT INTO animals (NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG)
VALUES ('Plantmon', '2021-11-15', 2, true, -5.7 );

INSERT INTO animals (NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG)
VALUES ('Squirtle', '1993-04-02', 3, false, -12.13 );

INSERT INTO animals (NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG)
VALUES ('Angemon', '2005-06-12', 1, true, -45 );

INSERT INTO animals (NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG)
VALUES ('Boarmon', '2005-06-07', 7, true, 20.4 );

INSERT INTO animals (NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG)
VALUES ('Blossom', '1998-09-13', 3, true, 17 );

INSERT INTO animals (NAME, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG)
VALUES ('Ditto', '2022-05-14', 4, true, 22 );



INSERT INTO owners (full_name, age)
VALUES ('Sam Smith', 34);
INSERT INTO owners (full_name, age)
VALUES ('Jennifer Orwell', 19);
INSERT INTO owners (full_name, age)
VALUES ('Bob', 45);
INSERT INTO owners (full_name, age)
VALUES ('Melody Pond', 77);
INSERT INTO owners (full_name, age)
VALUES ('Dean Winchester', 14);
INSERT INTO owners (full_name, age)
VALUES ('Jodie Whittaker', 38);

INSERT INTO species (name)
VALUES ('Pokemon');
INSERT INTO species (name)
VALUES ('Digimon');


UPDATE animals SET species_id = 2 where name like '%mon';
UPDATE animals SET species_id = 1 where name not like '%mon';

UPDATE animals SET owners_id = owners.id FROM owners
WHERE owners.full_name = 'Sam Smith' AND name = 'Agumon';
UPDATE animals SET owners_id = owners.id FROM owners
WHERE owners.full_name = 'Jennifer Orwell' AND (name = 'Gabumon' OR name = 'Pikachu');
UPDATE animals SET owners_id = owners.id FROM owners
WHERE owners.full_name = 'Bob' AND (name = 'Devimon' OR name = 'Plantmon');
UPDATE animals SET owners_id = owners.id FROM owners
WHERE owners.full_name = 'Melody Pond' AND (name = 'Charmander' OR name = 'Squirtle' OR name = 'Blossom');
UPDATE animals SET owners_id = owners.id FROM owners
WHERE owners.full_name = 'Dean Winchester' AND (name = 'Angemon' OR name = 'Boarmon');

INSERT INTO VETS (NAME, AGE, DATE_OF_GRADUATION)
VALUES ('William Tatcher', 45, '2000-04-23');
INSERT INTO VETS (NAME, AGE, DATE_OF_GRADUATION)
VALUES ('Maisy Smith', 26, '2019-01-17');
INSERT INTO VETS (NAME, AGE, DATE_OF_GRADUATION)
VALUES ('Stephanie Mendez', 64, '1981-05-04');
INSERT INTO VETS (NAME, AGE, DATE_OF_GRADUATION)
VALUES ('Jack Harkness', 38, '2008-06-08');

INSERT INTO specializations (SPECIES_ID, VETS_ID) VALUES (1, 1);
INSERT INTO specializations (SPECIES_ID, VETS_ID) VALUES (2, 3);
INSERT INTO specializations (SPECIES_ID, VETS_ID) VALUES (1, 3);
INSERT INTO specializations (SPECIES_ID, VETS_ID) VALUES (2, 4);

INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VISIT) VALUES (1, 1, '2020-05-24');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VISIT) VALUES (1, 3, '2020-06-22');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VISIT) VALUES (2, 4, '2021-02-02');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VISIT) VALUES (3, 2, '2020-01-05');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VISIT) VALUES (3, 2, '2020-03-08');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VISIT) VALUES (3, 2, '2020-05-14');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VISIT) VALUES (4, 3, '2021-05-04');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VISIT) VALUES (5, 4, '2021-02-24');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VISIT) VALUES (6, 2, '2019-12-21');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VISIT) VALUES (6, 1, '2020-08-10');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VISIT) VALUES (6, 2, '2021-04-07');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VISIT) VALUES (7, 3, '2019-09-29');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VISIT) VALUES (8, 4, '2020-09-03');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VISIT) VALUES (8, 4, '2020-11-04');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VISIT) VALUES (9, 2, '2019-01-24');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VISIT) VALUES (9, 2, '2019-05-15');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VISIT) VALUES (9, 2, '2020-02-27');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VISIT) VALUES (9, 2, '2020-08-03');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VISIT) VALUES (10, 3, '2020-05-24');
INSERT INTO visits (ANIMALS_ID, VETS_ID, DATE_OF_VISIT) VALUES (10, 1, '2021-01-11');