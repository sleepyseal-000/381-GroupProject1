-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: EuropeanCarManufacturer
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `Triggered.Customer`
--

DROP TABLE IF EXISTS `Triggered.Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Triggered.Customer` (
  `SysStartTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `SysEndTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Note` varchar(200) DEFAULT NULL,
  `TransactionNumber` int DEFAULT NULL,
  `IsDeleted` int DEFAULT '0',
  `CustomerName` varchar(100) DEFAULT NULL,
  `CustomerAddress1` varchar(50) DEFAULT NULL,
  `CustomerAddress2` varchar(50) DEFAULT NULL,
  `CustomerTown` varchar(50) DEFAULT NULL,
  `CustomerCountry` char(2) DEFAULT NULL,
  `IsCustomerReseller` int DEFAULT '1',
  `IsCostumerCreditRisk` int DEFAULT '1',
  `CustomerSpendCapacityId` int DEFAULT NULL,
  `CustomerPostalCode` varchar(10) DEFAULT NULL,
  `CustomerId` int NOT NULL,
  PRIMARY KEY (`CustomerId`),
  CONSTRAINT `CK_Template_GreaterThan0_1331601740` CHECK ((`CustomerSpendCapacityId` between 0 and 999999999999999999))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Triggered.Customer`
--

LOCK TABLES `Triggered.Customer` WRITE;
/*!40000 ALTER TABLE `Triggered.Customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `Triggered.Customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-12 16:29:18
