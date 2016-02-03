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
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `StudentID` int(11) NOT NULL AUTO_INCREMENT,
  `StudentFirstName` varchar(45) NOT NULL,
  `StudentLastName` varchar(45) NOT NULL,
  `ContactNo` varchar(45) NOT NULL,
  `EmailID` varchar(45) NOT NULL,
  `Status` varchar(45) NOT NULL DEFAULT 'New',
  `City` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Training` varchar(45) NOT NULL DEFAULT 'No',
  `Internship` varchar(45) NOT NULL DEFAULT 'No',
  `Project` varchar(45) NOT NULL DEFAULT 'No',
  `Date_Of_Registration` date NOT NULL,
  `DomainID` int(11) DEFAULT NULL,
  `Gender` varchar(45) NOT NULL,
  PRIMARY KEY (`StudentID`),
  UNIQUE KEY `EmailID_UNIQUE` (`EmailID`),
  KEY `DomainID` (`DomainID`),
  CONSTRAINT `Student_ibfk_1` FOREIGN KEY (`DomainID`) REFERENCES `domain` (`DomainID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Ahmed','Yasir','9272435410','ansair@gmail','Active','Nasik','Maharashtra','123','No','No','Yes','2015-12-04',200,'Male'),(2,'siddhu','anache','924546520','siddhu@gmail.com','Active','Banglore','Karnataka','12345','Yes','No','Yes','2015-12-04',200,'Male'),(3,'Vikash','Shelke','9272556322','vikash@gmail.com','inactive','Pune','Maharashtra','v','No','No','No','2015-12-04',200,'Male'),(4,'Ammar','Ahmed','8956232145','ammar@gmail.com','split','Pune','Maharashtra','a','Yes','No','Yes','2015-12-04',200,'Male'),(6,'Sameer','Kulkarni','8965235645','sam@gmail.com','New','Nasik','Maharashtra','sam','Yes','No','No','2015-12-07',202,'Male'),(7,'Krunal','chtriv','546595623','krunal@gmail.com','active','Nagpur','Maharashtra','kru','No','No','Yes','2015-12-07',200,'Male');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
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
