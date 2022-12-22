CREATE TABLE companies (
	"id" serial NOT NULL PRIMARY KEY,
	"name" TEXT NOT NULL,
	"acronym" TEXT NOT NULL UNIQUE
);

CREATE TABLE airports (
	"id" serial NOT NULL PRIMARY KEY,
	"name" TEXT NOT NULL,
	"acronym" TEXT NOT NULL UNIQUE
);

CREATE TABLE flights (
	"id" serial NOT NULL PRIMARY KEY,
	"code" TEXT NOT NULL,
	"company_id" integer NOT NULL REFERENCES "companies"("id"),
	"departure_airport_id" integer NOT NULL REFERENCES "airports"("id"),
	"arrival_airport_id" integer NOT NULL REFERENCES "airports"("id"),
	"departure_time" TIMESTAMP NOT NULL,
	"arrival_time" TIMESTAMP NOT NULL
);