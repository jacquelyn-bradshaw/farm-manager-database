-- MySQL dump 10.13  Distrib 8.1.0, for macos14.0 (arm64)
--
-- Host: 127.0.0.1    Database: farmManager
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `crops`
--

DROP TABLE IF EXISTS `crops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crops` (
  `cropID` varchar(10) NOT NULL,
  `type` char(20) NOT NULL,
  `variety` char(20) DEFAULT NULL,
  `yield` varchar(20) DEFAULT NULL,
  `days` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cropID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crops`
--

LOCK TABLES `crops` WRITE;
/*!40000 ALTER TABLE `crops` DISABLE KEYS */;
INSERT INTO `crops` VALUES ('C1','Wheat','Durum','6 to 9 ton/ha','100 to 130'),('C2','Potato','Charlotte','25 to 35 ton/ha','90 to 120'),('C3','Cabbage',NULL,'25 to 35 ton/ha','120 to 140'),('C4','Grass','Ryegrass','25 ton/ha','90 to 120');
/*!40000 ALTER TABLE `crops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `farmerFieldRelation`
--

DROP TABLE IF EXISTS `farmerFieldRelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farmerFieldRelation` (
  `farmerID` varchar(10) NOT NULL,
  `fieldID` varchar(10) NOT NULL,
  PRIMARY KEY (`farmerID`,`fieldID`),
  KEY `fieldID` (`fieldID`),
  CONSTRAINT `farmerfieldrelation_ibfk_1` FOREIGN KEY (`farmerID`) REFERENCES `farmers` (`farmerID`),
  CONSTRAINT `farmerfieldrelation_ibfk_2` FOREIGN KEY (`fieldID`) REFERENCES `fields` (`fieldID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farmerFieldRelation`
--

LOCK TABLES `farmerFieldRelation` WRITE;
/*!40000 ALTER TABLE `farmerFieldRelation` DISABLE KEYS */;
INSERT INTO `farmerFieldRelation` VALUES ('F1','FD1'),('F3','FD1'),('F1','FD10'),('F7','FD10'),('F8','FD10'),('F1','FD2'),('F4','FD2'),('F1','FD3'),('F1','FD4'),('F2','FD4'),('F1','FD5'),('F3','FD5'),('F1','FD6'),('F1','FD7'),('F2','FD7'),('F1','FD8'),('F6','FD8'),('F1','FD9'),('F7','FD9'),('F8','FD9');
/*!40000 ALTER TABLE `farmerFieldRelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `farmers`
--

DROP TABLE IF EXISTS `farmers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farmers` (
  `farmerID` varchar(10) NOT NULL,
  `firstName` char(20) NOT NULL,
  `lastName` char(20) NOT NULL,
  `street` varchar(50) NOT NULL,
  `city` char(20) DEFAULT NULL,
  `postCode` varchar(10) NOT NULL,
  `salary` int DEFAULT NULL,
  PRIMARY KEY (`farmerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farmers`
--

LOCK TABLES `farmers` WRITE;
/*!40000 ALTER TABLE `farmers` DISABLE KEYS */;
INSERT INTO `farmers` VALUES ('F1','George','Banks','5 Church Street','Buxton','SK17 6HD',8000),('F10','Georgia','Grant','7 Church Sreeet','Buxton','SK17 6HD',7000),('F2','Lucy','Banks','5 Church Street','Buxton','SK17 6HD',6000),('F3','Tom','Banks','Coltcroft farm','Buxton','SK17 9RP',7000),('F4','Fred','Thompson','12 Cumberland Close','Buxton','SK17 9PQ',7000),('F5','Sam','Smith','2 Burbage Way','Buxton','SK17 9GB',6000),('F6','Archie','Shaw','3 Milldale Avenue','Buxton','SK17 9BE',5000),('F7','Leo','Franks','10 Green Lane','Buxton','SK17 9DP',6000),('F8','Evie','Franks','10 Green Lane','Buxton','SK17 9DP',7000),('F9','Arlo','Grant','7 Church Street','Buxton','SK17 6HD',7000);
/*!40000 ALTER TABLE `farmers` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `farmers_before_insert` BEFORE INSERT ON `farmers` FOR EACH ROW BEGIN
	SET NEW.firstName = CONCAT(UPPER(SUBSTRING(NEW.firstName,1,1)), 
							LOWER(SUBSTRING(NEW.firstName FROM 2)));
  SET NEW.lastName = CONCAT(UPPER(SUBSTRING(NEW.lastName,1,1)), 
							LOWER(SUBSTRING(NEW.lastName FROM 2)));
  SET NEW.city = CONCAT(UPPER(SUBSTRING(NEW.city,1,1)), 
							LOWER(SUBSTRING(NEW.city FROM 2)));
  SET NEW.postCode = UPPER(NEW.postCode);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `farmerTractorRelation`
--

DROP TABLE IF EXISTS `farmerTractorRelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farmerTractorRelation` (
  `farmerID` varchar(10) NOT NULL,
  `tractorID` varchar(10) NOT NULL,
  PRIMARY KEY (`farmerID`,`tractorID`),
  KEY `tractorID` (`tractorID`),
  CONSTRAINT `farmertractorrelation_ibfk_1` FOREIGN KEY (`farmerID`) REFERENCES `farmers` (`farmerID`),
  CONSTRAINT `farmertractorrelation_ibfk_2` FOREIGN KEY (`tractorID`) REFERENCES `tractors` (`tractorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farmerTractorRelation`
--

LOCK TABLES `farmerTractorRelation` WRITE;
/*!40000 ALTER TABLE `farmerTractorRelation` DISABLE KEYS */;
INSERT INTO `farmerTractorRelation` VALUES ('F1','T1'),('F1','T2'),('F4','T2'),('F1','T3'),('F2','T3'),('F3','T4'),('F1','T5'),('F2','T5'),('F3','T5'),('F7','T6'),('F8','T6'),('F1','T7'),('F6','T7'),('F7','T8'),('F8','T8');
/*!40000 ALTER TABLE `farmerTractorRelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fields` (
  `fieldID` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `size` int DEFAULT NULL,
  `location` varchar(25) DEFAULT NULL,
  `cropID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`fieldID`),
  KEY `cropID` (`cropID`),
  CONSTRAINT `fields_ibfk_1` FOREIGN KEY (`cropID`) REFERENCES `crops` (`cropID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields`
--

LOCK TABLES `fields` WRITE;
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;
INSERT INTO `fields` VALUES ('FD1','The Ryegrass',12,'53.2591°N, 1.9148°W','C1'),('FD10','Broad Field',13,'53.2574°N, 1.9121°W','C4'),('FD2','Long Meadow',10,'53.2581°N, 1.9155°W','C3'),('FD3','Fair Green',7,'53.2567°N, 1.9160°W','C2'),('FD4','Combines Field',15,'53.2598°N, 1.9142°W','C2'),('FD5','Tansy Hill',12,'53.2595°N, 1.9145°W','C1'),('FD6','Crab Tree',10,'53.2584°N, 1.9134°W','C3'),('FD7','Barrow Field',15,'53.2576°N, 1.9127°W','C2'),('FD8','Grape Tree',13,'53.2578°N, 1.9123°W','C4'),('FD9','Red Field',11,'53.2579°N, 1.9127°W','C4');
/*!40000 ALTER TABLE `fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderID` varchar(10) NOT NULL,
  `farmerID` varchar(10) NOT NULL,
  `supplierID` varchar(10) NOT NULL,
  `productID` varchar(10) NOT NULL,
  `quantity` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`orderID`),
  KEY `farmerID` (`farmerID`),
  KEY `supplierID` (`supplierID`),
  KEY `productID` (`productID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`farmerID`) REFERENCES `farmers` (`farmerID`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`supplierID`) REFERENCES `suppliers` (`supplierID`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('O10','F5','S8','P13',10,'2023-09-30'),('O11','F5','S9','P14',1,'2023-12-17'),('O12','F5','S10','P15',1,'2024-01-11'),('O13','F6','S1','P2',2,'2024-01-17'),('O14','F6','S1','P3',2,'2024-01-17'),('O15','F6','S3','P8',30,'2024-01-17'),('O6','F5','S4','P9',4,'2023-03-16'),('O7','F5','S5','P10',1,'2023-03-16'),('O8','F5','S6','P11',1,'2023-05-01'),('O9','F5','S7','P12',1,'2023-09-30');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `productID` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `supplierID` varchar(10) NOT NULL,
  PRIMARY KEY (`productID`),
  KEY `supplierID` (`supplierID`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`supplierID`) REFERENCES `suppliers` (`supplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('P1','Waterproof overalls',19.95,0.5,'S1'),('P10','CLASS 540RF Baler',23000,NULL,'S5'),('P11','ELHO V-Twin 600 Swather',4750,NULL,'S6'),('P12','Bale spike',495,35,'S7'),('P13','Tractor seat covers',31.03,NULL,'S8'),('P14','Crop sprayer',1495,NULL,'S9'),('P15','Mower',1300,260,'S10'),('P2','Waterproof jacket',32.95,0.5,'S1'),('P3','Lined boot',160,1,'S1'),('P4','Grain trailer',8500,NULL,'S2'),('P5','Rotary muck spreader',4600,NULL,'S2'),('P6','Wheat seeds',975,100,'S3'),('P7','Potato seeds',199.9,50,'S3'),('P8','Cabbage seeds',24.9,NULL,'S3'),('P9','Grass seeds',75,25,'S4');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `supplierID` varchar(10) NOT NULL,
  `name` char(30) NOT NULL,
  `street` varchar(50) NOT NULL,
  `city` char(20) DEFAULT NULL,
  `postCode` varchar(10) NOT NULL,
  PRIMARY KEY (`supplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES ('S1','William Eyre & Sons','Brough Cornmill','Hope Valley','S33 9NG'),('S10','Zaros Machinery','Unit 4, Moat Farm Workshops','Hintlesham','IP8 3QH'),('S2','Wardmans Ltd','Old Coach Road','Matlock','DE4 5FY'),('S3','Elsoms Seeds Ltd','Pinchbeck Rd','Spalding','PE11 1QG'),('S4','Boston Seeds','Manor Road','Boston','PE20 1PH'),('S5','Carr\'s Billington','Unit 4-6 Kingfisher Building','Bakewell','DE45 1GS'),('S6','Shutts Farm Machinery','Shutts Ln','Bakewell','DE45 1JA'),('S7','AGRI-Mech','Old Coach Road','Matlock','DE4 5ND'),('S8','Abbeydale Direct','Unit 2 New Haden Industrial Estate','Cheadle','ST10 2NP'),('S9','Howard & Sons','Manor Farm','Devizes','SN10 5SQ');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tractors`
--

DROP TABLE IF EXISTS `tractors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tractors` (
  `tractorID` varchar(10) NOT NULL,
  `make` char(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  `age` int DEFAULT NULL,
  `registrationPlate` varchar(10) NOT NULL,
  `power` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`tractorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tractors`
--

LOCK TABLES `tractors` WRITE;
/*!40000 ALTER TABLE `tractors` DISABLE KEYS */;
INSERT INTO `tractors` VALUES ('T1','New Holland','T5.120',2,'MN71 7GH','117 HP'),('T2','Massey Ferguson','6480',19,'CU04 MHA','150 HP'),('T3','Claas','Arion 610 C',11,'MN12 6GJ','110 HP'),('T4','Fendt','720 Vario',4,'MN19 7GH','185 HP'),('T5','Fendt','724 Vario',1,'MD23 9GH','220 HP'),('T6','Fendt','828 Vario',3,'MD20 8GJ','260 HP'),('T7','Claas','Axion 840',11,'MH12 4DG','250 HP'),('T8','Class','Arion 420',4,'MD19 7FH','105 HP');
/*!40000 ALTER TABLE `tractors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_farmerfieldcroprelations`
--

DROP TABLE IF EXISTS `view_farmerfieldcroprelations`;
/*!50001 DROP VIEW IF EXISTS `view_farmerfieldcroprelations`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_farmerfieldcroprelations` AS SELECT 
 1 AS `FarmersFirstName`,
 1 AS `FarmersLastName`,
 1 AS `FieldName`,
 1 AS `CropType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_farmertractorrelations`
--

DROP TABLE IF EXISTS `view_farmertractorrelations`;
/*!50001 DROP VIEW IF EXISTS `view_farmertractorrelations`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_farmertractorrelations` AS SELECT 
 1 AS `Farmer's First Name`,
 1 AS `Farmer's Last Name`,
 1 AS `Tractor Make`,
 1 AS `Tractor Model`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_farmerfieldcroprelations`
--

/*!50001 DROP VIEW IF EXISTS `view_farmerfieldcroprelations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_farmerfieldcroprelations` AS select `farmers`.`firstName` AS `FarmersFirstName`,`farmers`.`lastName` AS `FarmersLastName`,`fields`.`name` AS `FieldName`,`crops`.`type` AS `CropType` from (((`farmerfieldrelation` join `farmers` on((`farmerfieldrelation`.`farmerID` = `farmers`.`farmerID`))) join `fields` on((`farmerfieldrelation`.`fieldID` = `fields`.`fieldID`))) join `crops` on((`fields`.`cropID` = `crops`.`cropID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_farmertractorrelations`
--

/*!50001 DROP VIEW IF EXISTS `view_farmertractorrelations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_farmertractorrelations` AS select `farmers`.`firstName` AS `Farmer's First Name`,`farmers`.`lastName` AS `Farmer's Last Name`,`tractors`.`make` AS `Tractor Make`,`tractors`.`model` AS `Tractor Model` from ((`farmertractorrelation` join `farmers` on((`farmertractorrelation`.`farmerID` = `farmers`.`farmerID`))) join `tractors` on((`farmertractorrelation`.`tractorID` = `tractors`.`tractorID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-20 20:22:54
