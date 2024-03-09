 
CREATE TABLE "address" (
  "address_id" integer,
  "address" varchar NOT NULL DEFAULT 'unknown',
  "town" varchar
  CONSTRAINT "PK_address_id" PRIMARY KEY  ("address_id")
);

CREATE TABLE "propertytype" (
  "propertytype_id",
  "property" varchar NOT NULL DEFAULT 'unknown'
  CONSTRAINT "PK_propertytype_id" PRIMARY KEY  ("propertytype_id")
);

CREATE TABLE "residentialtype" (
  "residential_id" integer,
  "residentialtype" varchar NOT NULL DEFAULT 'unknown'
  CONSTRAINT "PK_residential_id" PRIMARY KEY  ("residential_id")
);

CREATE TABLE "property" (
  "property_id" integer,
  "address_id" integer NOT NULL,
  "residential_id" integer NOT NULL,
  "propertytype_id" integer NOT NULL,
  "list_year" integer NOT NULL,
  "date_recorded" timestamp,
  "accessed_value" integer NOT NULL,
  "sale_amount" integer,
  "sale_ratio" decimal NOT NULL
  CONSTRAINT "PK_property_id" PRIMARY KEY  ("property_id")
);

ALTER TABLE "address" ADD CONSTRAINT "FK_address_id"
FOREIGN KEY ("address_id") REFERENCES "property" ("address_id") ON DELETE NO ACTION;

ALTER TABLE "property" ADD CONSTRAINT "FK_propertytype_id"
FOREIGN KEY ("propertytype_id") REFERENCES "propertytype" ("propertytype_id") ON DELETE NO ACTION;

ALTER TABLE "property" ADD CONSTRAINT "FK_residential_id"
FOREIGN KEY ("residential_id") REFERENCES "residentialtype" ("residential_id") ON DELETE NO ACTION;

 