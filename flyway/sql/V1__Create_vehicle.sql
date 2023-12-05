--
-- Create enumeration to restrict vhicle types
--
CREATE TYPE vehicle_type AS ENUM (
	'Car',
	'Camper',
	'Motorbike'
);

--
-- Create vehicle base tabe
--
CREATE TABLE IF NOT EXISTS vehicle (
    id serial PRIMARY KEY,
    vehicle_registration VARCHAR (12) UNIQUE NOT NULL,
    type vehicle_type NOT NULL,
    brand VARCHAR (30) NOT NULL,
    model VARCHAR (30) NOT NULL,
    odometer INTEGER
);