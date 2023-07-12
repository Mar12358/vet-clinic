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