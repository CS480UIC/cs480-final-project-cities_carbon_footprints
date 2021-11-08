CREATE DATABASE cities_carbon_footprints;


use  cities_carbon_footprints;

CREATE TABLE user
(
  
  username VARCHAR(50) primary key,
  `password` VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL
);


CREATE TABLE entity1 
(
  
  username VARCHAR(50) primary key,
  `password` VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL
);


CREATE TABLE city
(
	city_id INT UNSIGNED AUTO_INCREMENT NOT NULL,
	city_name VARCHAR(40) UNIQUE NOT NULL,
	population INT NOT UNIQUE NULL,
	most_used_transportation VARCHAR(40) NOT UNIQUE NULL,
	factory_number INT NOT UNIQUE NULL,
	city_date DATE NOT UNIQUE NULL,
	PRIMARY KEY(city_id)
);

CREATE TABLE vehicle 
(
	vehicle_id INT UNSIGHED AUTO_INCREMENT NOT NULL,
	vehicle_type VARCHAR(20) NOT UNIQUE NOT NULL,
	vehicle_emission_type VARCHAR(10) NOT UNIQUE NOT NULL,
	gas_mileage DOUBLE(65,2) NOT UNIQUE NULL,
	vehicle_city VARCHAR(40) NOT UNIQUE NOT NULL,
	vehicle_date DATE NOT UNIQUE NULL,
	PRIMARY KEY(vehicle_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY(vehicle_city) REFERENCES city(city_name)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT,
--	FOREIGN KEY(vehicle_emission_type) REFERENCES carbon_emission(emission_type)
--		ON DELETE RESTRICT
--		ON UPDATE RESTRICT
);

CREATE TABLE public_transit
(
	transit_id INT UNSIGNED AUTO_INCREMENT NOT NULL ,
	total_usage DECIMAL(5,2) NOT UNIQUE NULL,
	transit_emission_type VARCHAR(10) NOT UNIQUE NOT NULL,
	transit_city VARCHAR(40) NOT UNIQUE NOT NULL,
	transit_date DATE NOT UNIQUE NULL,
	transit_type VARCHAR(20) NOT UNIQUE NOT NULL,
	PRIMARY KEY(transit_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY(transit_city) REFERENCES city(city_name)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT
--	FOREIGN KEY(transit_emission_type) REFERENCES carbon_emission(emission_type)
--		ON DELETE RESTRICT
--		ON UPDATE RESTRICT
);







