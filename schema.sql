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
