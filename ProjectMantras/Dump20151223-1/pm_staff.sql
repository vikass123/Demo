-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: pm
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `StaffID` int(11) NOT NULL AUTO_INCREMENT,
  `StaffFirstName` varchar(45) NOT NULL,
  `StaffLastName` varchar(45) NOT NULL,
  `ContactNo` bigint(45) NOT NULL,
  `EmailID` varchar(45) NOT NULL,
  `Status` varchar(45) NOT NULL DEFAULT 'Active',
  `City` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `JoininigSalary` bigint(45) NOT NULL,
  `CurrentSalary` bigint(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Position` varchar(45) NOT NULL,
  `BranchID` int(11) DEFAULT NULL,
  `Gender` varchar(45) NOT NULL,
  PRIMARY KEY (`StaffID`),
  UNIQUE KEY `EmailID_UNIQUE` (`EmailID`),
  KEY `BranchID` (`BranchID`),
  CONSTRAINT `Staff_ibfk_1` FOREIGN KEY (`BranchID`) REFERENCES `branch` (`BranchID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Mubeen','Ahmed',5652654875,'mubeen@gmail.com','active','Pune','Maharashtra',10000,13000,'123123','Trainer',100,'Male'),(2,'Nikhil','Salunke',8956452123,'nikhil@gmail.com','inactive','Pune','Mahrashtra',12000,15000,'456456','Trainer',100,'Male');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-23  5:51:16
