SELECT * FROM cities_carbon_footprints.city WHERE YEAR(city_date) = '2021';

SELECT LOWER(vehicle_type), vehicle_city FROM cities_carbon_footprints.vehicle WHERE vehicle_city = 'Chicago';