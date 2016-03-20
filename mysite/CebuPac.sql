-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: localhost    Database: CebuPac
-- ------------------------------------------------------
-- Server version	5.7.10

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Airplane`
--

DROP TABLE IF EXISTS `Airplane`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Airplane` (
  `PlaneID` int(11) NOT NULL,
  `Model` varchar(45) DEFAULT NULL,
  `Capacity` int(11) DEFAULT NULL,
  PRIMARY KEY (`PlaneID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Airplane`
--

LOCK TABLES `Airplane` WRITE;
/*!40000 ALTER TABLE `Airplane` DISABLE KEYS */;
/*!40000 ALTER TABLE `Airplane` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomerData`
--

DROP TABLE IF EXISTS `CustomerData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CustomerData` (
  `UserID` int(11) NOT NULL,
  `UserFName` varchar(45) DEFAULT NULL,
  `UserLName` varchar(45) DEFAULT NULL,
  `FlightFromID` int(11) DEFAULT NULL,
  `FlightToID` int(11) DEFAULT NULL,
  `FlightPreference` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomerData`
--

LOCK TABLES `CustomerData` WRITE;
/*!40000 ALTER TABLE `CustomerData` DISABLE KEYS */;
INSERT INTO `CustomerData` VALUES (1,'Rodel Patrick','Naui',900001,900002,'flybag'),(2,'Trixie','Cruz',900001,900002,'fly'),(3,'Nico','Rapisora',900002,900003,'flybagmeal'),(4,'Nelissa','Chua',900002,900003,'flybag'),(5,'Mary Kyle','Labarda',900004,900005,'fly');
/*!40000 ALTER TABLE `CustomerData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomerFlightInfo`
--

DROP TABLE IF EXISTS `CustomerFlightInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CustomerFlightInfo` (
  `FlightID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `SeatNo` varchar(4) DEFAULT NULL,
  `Meal` varchar(45) DEFAULT NULL,
  `SportsEqpt` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`FlightID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomerFlightInfo`
--

LOCK TABLES `CustomerFlightInfo` WRITE;
/*!40000 ALTER TABLE `CustomerFlightInfo` DISABLE KEYS */;
INSERT INTO `CustomerFlightInfo` VALUES (900001,1,'M3','Y','Y'),(900002,2,'A1','N','N'),(900003,3,'B6','N','N'),(900004,4,'H8','Y','N'),(900005,5,'C4','N','N');
/*!40000 ALTER TABLE `CustomerFlightInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FlightControlData`
--

DROP TABLE IF EXISTS `FlightControlData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FlightControlData` (
  `FlightID` varchar(45) NOT NULL,
  `FlightDataID` int(11) NOT NULL,
  `FlightDepDate` datetime NOT NULL,
  `FlightArrDate` datetime NOT NULL,
  `BasePrice` float NOT NULL,
  PRIMARY KEY (`FlightDataID`,`FlightID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FlightControlData`
--

LOCK TABLES `FlightControlData` WRITE;
/*!40000 ALTER TABLE `FlightControlData` DISABLE KEYS */;
INSERT INTO `FlightControlData` VALUES ('MK0001',900001,'2016-10-11 00:00:00','2016-10-11 00:00:00',0),('KB0002',900002,'2016-10-11 00:00:00','2016-10-11 00:00:00',0),('BM0003',900003,'2016-10-12 00:00:00','2016-10-12 00:00:00',0),('MH0004',900004,'2016-10-12 00:00:00','2016-10-12 00:00:00',0),('HL0005',900005,'2016-10-13 00:00:00','2016-10-14 00:00:00',0);
/*!40000 ALTER TABLE `FlightControlData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FlightData`
--

DROP TABLE IF EXISTS `FlightData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FlightData` (
  `FlightID` varchar(45) NOT NULL,
  `CityOrigin` varchar(45) DEFAULT NULL,
  `CityDest` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`FlightID`),
  UNIQUE KEY `idnew_table_UNIQUE` (`FlightID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FlightData`
--

LOCK TABLES `FlightData` WRITE;
/*!40000 ALTER TABLE `FlightData` DISABLE KEYS */;
INSERT INTO `FlightData` VALUES ('BM0003','BCD','MNL'),('HL0005','HND','LAX'),('KB0002','KIX','BCD'),('MH0004','MNL','HND'),('MK0001','MNL','KIX');
/*!40000 ALTER TABLE `FlightData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PaymentData`
--

DROP TABLE IF EXISTS `PaymentData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PaymentData` (
  `RefID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `PaymentMode` varchar(45) DEFAULT NULL,
  `AmtPayable` float DEFAULT NULL,
  `IfPaid` binary(1) DEFAULT NULL,
  PRIMARY KEY (`RefID`,`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PaymentData`
--

LOCK TABLES `PaymentData` WRITE;
/*!40000 ALTER TABLE `PaymentData` DISABLE KEYS */;
INSERT INTO `PaymentData` VALUES (1000001,1,'Credit',20000,'N'),(1000002,2,'Paypal',20102,'N'),(1000003,3,'Debit',18002,'Y'),(1000004,4,'Paypal',5000,'Y'),(1000005,5,'Bancnet',10000,'N');
/*!40000 ALTER TABLE `PaymentData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Receipt`
--

DROP TABLE IF EXISTS `Receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Receipt` (
  `TransactionID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `TripFrom` varchar(45) DEFAULT NULL,
  `TripTo` varchar(45) DEFAULT NULL,
  `PlaneID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`TransactionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Receipt`
--

LOCK TABLES `Receipt` WRITE;
/*!40000 ALTER TABLE `Receipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `Receipt` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-18 20:19:59
