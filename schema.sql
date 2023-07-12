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