DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `avgGasMileageForEmissionType`(IN emissionType VARCHAR(10), OUT average INT)
BEGIN
	SELECT AVG(gas_mileage)
    INTO average
    FROM vehicle
    WHERE vehicle_emission_type = emissionType;
END$$
DELIMITER ;


DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `city_procedure`(IN city VARCHAR(40), OUT quantity INT )
BEGIN
	SELECT count(*)
    INTO quantity
    FROM city 
    WHERE city_name = city;
END$$
DELIMITER ;


DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `addAllFactories`() RETURNS int
    READS SQL DATA
BEGIN
	DECLARE total INT;
    
    SELECT SUM(factory_number)
    INTO total
    FROM city;
    
	RETURN total;
END$$
DELIMITER ;


DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `averageUsageOfTransitType`(transitType VARCHAR(20)) RETURNS float
    READS SQL DATA
BEGIN
	DECLARE average float;
    
    SELECT AVG(total_usage)
    INTO average
    FROM public_transit
    WHERE transit_type = transitType;
    
    RETURN average;
END$$
DELIMITER ;

