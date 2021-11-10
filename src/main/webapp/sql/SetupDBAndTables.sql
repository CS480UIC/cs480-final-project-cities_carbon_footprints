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
	city_id INT UNSIGNED AUTO_INCREMENT UNIQUE NOT NULL,
	city_name VARCHAR(40) UNIQUE NOT NULL,
	population INT,
	most_used_transportation VARCHAR(40),
	factory_number INT,
	city_date DATE,
	PRIMARY KEY(city_id)
);

CREATE TABLE carbon_emission
(
	emission_source VARCHAR(50) NOT NULL,
	emission_percent DECIMAL(3,2) NOT NULL,
	emission_type VARCHAR(10) NOT NULL,
	emission_date DATE,
	PRIMARY KEY(emission_type, emission_date)
);

CREATE TABLE vehicle 
(
	vehicle_id INT UNSIGNED AUTO_INCREMENT UNIQUE NOT NULL,
	vehicle_type VARCHAR(20) NOT NULL,
	vehicle_emission_type VARCHAR(10) NOT NULL,
	gas_mileage DOUBLE(65,2),
	vehicle_city VARCHAR(40) NOT NULL,
	vehicle_date DATE,
	PRIMARY KEY(vehicle_id),
	FOREIGN KEY(vehicle_city) REFERENCES city(city_name)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY(vehicle_emission_type) REFERENCES carbon_emission(emission_type)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE public_transit
(
	transit_id INT UNSIGNED AUTO_INCREMENT UNIQUE NOT NULL ,
	total_usage DECIMAL(5,2),
	transit_emission_type VARCHAR(10) NOT NULL,
	transit_city VARCHAR(40) NOT NULL,
	transit_date DATE,
	transit_type VARCHAR(20) NOT NULL,
	PRIMARY KEY(transit_id),
	FOREIGN KEY(transit_city) REFERENCES city(city_name)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY(transit_emission_type) REFERENCES carbon_emission(emission_type)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT
);

CREATE TABLE factory
(
	factory_id INT UNSIGNED AUTO_INCREMENT UNIQUE NOT NULL,
	factory_name VARCHAR(50) NOT NULL,
	factory_city VARCHAR(40) NOT NULL,
	factory_emission_type VARCHAR(10) NOT NULL,
	factory_date DATE,
	PRIMARY KEY(factory_id),
	FOREIGN KEY(factory_city) REFERENCES city(city_name)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY(factory_emission_type) REFERENCES carbon_emission(emission_type)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT
);