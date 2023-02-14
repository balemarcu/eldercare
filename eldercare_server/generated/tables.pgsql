--
-- Class House as table house
--

CREATE TABLE "house" (
  "id" serial,
  "name" text NOT NULL,
  "adress" text NOT NULL,
  "capacity" integer NOT NULL
);

ALTER TABLE ONLY "house"
  ADD CONSTRAINT house_pkey PRIMARY KEY (id);


