SELECT city.population, factory.factory_name, factory.factory_emission_type
FROM city
INNER JOIN Factory
ON city.city_name = factory.factory_city;

SELECT vehicle.vehicle_type, vehicle.gas_mileage
FROM vehicle
WHERE vehicle.vehicle_city = 
			(SELECT transit_city
            FROM public_transit
            WHERE transit_emission_type = vehicle.vehicle_emission_type);

SELECT vehicle_type, gas_mileage, vehicle_city
FROM vehicle
WHERE EXISTS ( SELECT emission_type
			   FROM carbon_emission
               WHERE carbon_emission.emission_type = vehicle.vehicle_emission_type);

CREATE INDEX FirstIndex
ON city (city_name);

CREATE INDEX SecondIndex
ON vehicle (vehicle_type);

CREATE INDEX ThirdIndex
ON public_transit(transit_type);

CREATE INDEX FourthIndex
ON factory(factory_name);

CREATE INDEX FifthIndex
ON carbon_emission(emission_percent);

SELECT * FROM cities_carbon_footprints.city WHERE YEAR(city_date) = '2021';

SELECT LOWER(vehicle_type), vehicle_city, vehicle_emission_type, gas_mileage, vehicle_date FROM vehicle WHERE vehicle_city = 'Chicago'