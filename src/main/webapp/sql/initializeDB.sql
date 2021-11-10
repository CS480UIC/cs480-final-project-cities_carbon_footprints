-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: cities_carbon_footprints
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `carbon_emission`
--

DROP TABLE IF EXISTS `carbon_emission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carbon_emission` (
  `emission_source` varchar(50) NOT NULL,
  `emission_percent` decimal(3,2) NOT NULL,
  `emission_type` varchar(10) NOT NULL,
  `emission_date` date NOT NULL,
  PRIMARY KEY (`emission_type`,`emission_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carbon_emission`
--

LOCK TABLES `carbon_emission` WRITE;
/*!40000 ALTER TABLE `carbon_emission` DISABLE KEYS */;
INSERT INTO `carbon_emission` VALUES ('car',0.01,'CO','2021-04-13'),('factory A',0.05,'CO','2023-02-05'),('train',0.02,'Natural','2021-05-12'),('trucks',0.03,'NOx','2021-05-18'),('bus',0.04,'SA','2021-09-15');
/*!40000 ALTER TABLE `carbon_emission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `city_id` int unsigned NOT NULL AUTO_INCREMENT,
  `city_name` varchar(40) NOT NULL,
  `population` int DEFAULT NULL,
  `most_used_transportation` varchar(40) DEFAULT NULL,
  `factory_number` int DEFAULT NULL,
  `city_date` date DEFAULT NULL,
  PRIMARY KEY (`city_id`),
  UNIQUE KEY `city_id` (`city_id`),
  UNIQUE KEY `city_name` (`city_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Chicago',1000000,'Gas',300,'2021-04-13'),(2,'Portland',800000,'Train',100,'2021-05-12'),(3,'Los Angeles',3000000,'Electric',500,'2021-05-18'),(4,'New York',4000000,'Train',1000,'2021-09-15'),(5,'Orlando',350000,'Hybrid Vehicle',340,'2023-02-05');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factory`
--

DROP TABLE IF EXISTS `factory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factory` (
  `factory_id` int unsigned NOT NULL AUTO_INCREMENT,
  `factory_name` varchar(50) NOT NULL,
  `factory_city` varchar(40) NOT NULL,
  `factory_emission_type` varchar(10) NOT NULL,
  `factory_date` date DEFAULT NULL,
  PRIMARY KEY (`factory_id`),
  UNIQUE KEY `factory_id` (`factory_id`),
  KEY `factory_city` (`factory_city`),
  KEY `factory_emission_type` (`factory_emission_type`),
  CONSTRAINT `factory_ibfk_1` FOREIGN KEY (`factory_city`) REFERENCES `city` (`city_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `factory_ibfk_2` FOREIGN KEY (`factory_emission_type`) REFERENCES `carbon_emission` (`emission_type`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factory`
--

LOCK TABLES `factory` WRITE;
/*!40000 ALTER TABLE `factory` DISABLE KEYS */;
INSERT INTO `factory` VALUES (1,'HelloAuto','Chicago','CO','2021-04-13'),(2,'HardVehicle','Los Angeles','SA','2021-05-12'),(3,'FictionGaz','New York','NOx','2021-05-18'),(4,'RetroAuto','Portland','Natural','2021-09-15'),(5,'OOPFactory','Orlando','CO','2023-02-05');
/*!40000 ALTER TABLE `factory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `public_transit`
--

DROP TABLE IF EXISTS `public_transit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `public_transit` (
  `transit_id` int unsigned NOT NULL AUTO_INCREMENT,
  `total_usage` decimal(5,2) DEFAULT NULL,
  `transit_emission_type` varchar(10) NOT NULL,
  `transit_city` varchar(40) NOT NULL,
  `transit_date` date DEFAULT NULL,
  `transit_type` varchar(20) NOT NULL,
  PRIMARY KEY (`transit_id`),
  UNIQUE KEY `transit_id` (`transit_id`),
  KEY `transit_city` (`transit_city`),
  KEY `transit_emission_type` (`transit_emission_type`),
  CONSTRAINT `public_transit_ibfk_1` FOREIGN KEY (`transit_city`) REFERENCES `city` (`city_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `public_transit_ibfk_2` FOREIGN KEY (`transit_emission_type`) REFERENCES `carbon_emission` (`emission_type`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `public_transit`
--

LOCK TABLES `public_transit` WRITE;
/*!40000 ALTER TABLE `public_transit` DISABLE KEYS */;
INSERT INTO `public_transit` VALUES (1,0.05,'NOx','Chicago','2021-04-12','Walking'),(2,0.01,'SA','Portland','2021-05-12','Biking'),(3,0.20,'CO','New York','2021-05-18','Train'),(4,0.04,'CO','Orlando','2021-09-15','Bus'),(5,0.45,'Natural','Los Angeles','2023-02-05','Train');
/*!40000 ALTER TABLE `public_transit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `vehicle_id` int unsigned NOT NULL AUTO_INCREMENT,
  `vehicle_type` varchar(20) NOT NULL,
  `vehicle_emission_type` varchar(10) NOT NULL,
  `gas_mileage` double(65,2) DEFAULT NULL,
  `vehicle_city` varchar(40) NOT NULL,
  `vehicle_date` date DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`),
  UNIQUE KEY `vehicle_id` (`vehicle_id`),
  KEY `vehicle_city` (`vehicle_city`),
  KEY `vehicle_emission_type` (`vehicle_emission_type`),
  CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`vehicle_city`) REFERENCES `city` (`city_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vehicle_ibfk_2` FOREIGN KEY (`vehicle_emission_type`) REFERENCES `carbon_emission` (`emission_type`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'Sedan','CO',16.00,'Portland','2021-04-12'),(2,'SUV','NoX',14.00,'Chicago','2021-05-12'),(3,'Hybrid','CO',26.00,'Chicago','2021-05-18'),(4,'Electric','Natural',45.00,'Los Angeles','2021-09-15'),(5,'Pickup Truck','SA',14.00,'Orlando','2023-02-05');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-09 21:27:08
