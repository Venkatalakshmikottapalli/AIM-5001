--create database "Microplastics";
CREATE TABLE "Location" (
  "Location_id" integer,
  "Location" varchar(30) NOT NULL,
	CONSTRAINT "PK_Location_id" PRIMARY KEY ("Location_id")
);

CREATE TABLE "Country" (
  "Country_id" integer,
  "Country" varchar(15) NOT NULL,
	CONSTRAINT "PK_Country_id" PRIMARY KEY ("Country_id")
);

CREATE TABLE "Source" (
  "Source_id" integer,
  "Source" varchar(20) NOT NULL,
	CONSTRAINT "PK_Source_id" PRIMARY KEY ("Source_id")
);

CREATE TABLE "Concentration_Units" (
  "Concentration_Units_id" integer,
  "Concentration_Units" varchar(25) NOT NULL,
	CONSTRAINT "PK_Concentration_Units_id" PRIMARY KEY ("Concentration_Units_id")
);

CREATE TABLE "Sample" (
  "Sample_id" integer,
  "Subsample_id" varchar(50),
  "Location_id" integer NOT NULL,
  "Country_id" integer NOT NULL,
  "Source_id" integer NOT NULL,
  "Concentration" decimal(10,2) NOT NULL,
  "Concentration_Units_id" integer NOT NULL,
  "Size" integer NOT NULL,
	CONSTRAINT "PK_Sample_id" PRIMARY KEY ("Sample_id")
);

ALTER TABLE "Sample" ADD CONSTRAINT "FK_Location_id"
FOREIGN KEY ("Location_id") REFERENCES "Location" ("Location_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "Sample" ADD CONSTRAINT "FK_Country_id"
FOREIGN KEY ("Country_id") REFERENCES "Country" ("Country_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "Sample" ADD CONSTRAINT "FK_Source_id"
FOREIGN KEY ("Source_id") REFERENCES "Source" ("Source_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "Sample" ADD CONSTRAINT "FK_Concentration_Units_id"
FOREIGN KEY ("Concentration_Units_id") REFERENCES "Concentration_Units" ("Concentration_Units_id") ON DELETE NO ACTION ON UPDATE NO ACTION;


