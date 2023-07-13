/* Database schema to keep the structure of entire database. */

CREATE TABLE animals(
   ID int GENERATED ALWAYS AS IDENTITY,
   NAME varchar(100),
   DATE_OF_BIRTH date,
   ESCAPE_ATTEMPTS int,
   NEUTERED boolean,
   WEIGHT_KG decimal,
   PRIMARY KEY(ID)
);

ALTER TABLE animals ADD species varchar(250);

CREATE TABLE owners(
   ID int GENERATED ALWAYS AS IDENTITY,
   age int,
   full_name varchar(250),
   PRIMARY KEY(ID)
);

CREATE TABLE species(
   ID int GENERATED ALWAYS AS IDENTITY,
   name varchar(100),
   PRIMARY KEY(ID)
);

BEGIN;
ALTER TABLE animals
DROP COLUMN species,

ALTER TABLE animals
ADD COLUMN SPECIES_ID INT,
ADD COLUMN OWNERS_ID INT;

ALTER TABLE animals
ADD CONSTRAINT fk_animals_species
FOREIGN KEY (SPECIES_ID)
REFERENCES species(ID),
ADD CONSTRAINT fk_animals_owners
FOREIGN KEY (owners_ID)
REFERENCES owners(ID);

COMMIT;
SELECT * FROM ANIMALS;

CREATE TABLE vets(
	id int GENERATED ALWAYS AS IDENTITY,
	name varchar(100),
	age int,
	date_of_graduation date,
	PRIMARY KEY(ID)
);

CREATE TABLE specializations (
  species_id int,
  vets_id int,
  FOREIGN KEY (species_id) REFERENCES species(ID),
  FOREIGN KEY (vets_id) REFERENCES vets(ID)
);


CREATE TABLE visits (
  animals_id int,
  vets_id int,
  date_of_visit date,
  FOREIGN KEY (animals_id) REFERENCES animals(ID),
  FOREIGN KEY (vets_id) REFERENCES vets(ID)
);