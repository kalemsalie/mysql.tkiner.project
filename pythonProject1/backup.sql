-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: lifechoicesonline
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(60) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Admin','lifechoices','@Lifechoices1234');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time`
--

DROP TABLE IF EXISTS `time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time` (
  `username` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `logintime` varchar(20) NOT NULL,
  `logouttime` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time`
--

LOCK TABLES `time` WRITE;
/*!40000 ALTER TABLE `time` DISABLE KEYS */;
INSERT INTO `time` VALUES ('kalili','20/01/21','11:52:22','11:52:22'),('kalili','20/01/21','11:53:56','11:53:56'),('kalili','20/01/21','11:56:08','11:56:30'),('kalil021','20/01/21','13:19:13','13:19:13'),('mattt','20/01/21','15:36:08','15:36:08'),('kalem789','22/01/21','09:02:11','09:02:11'),('kalem789','22/01/21','09:03:01','09:03:01'),('kalili','22/01/21','09:55:52','09:55:56'),('kalili','22/01/21','10:05:25','10:05:28'),('kalili','22/01/21','10:12:39','10:12:42'),('kalili','22/01/21','10:28:45','10:28:47'),('kalili','22/01/21','11:18:22','11:18:25'),('kalili','22/01/21','11:28:04','11:28:17'),('kalili','22/01/21','13:14:25','13:14:27'),('kalili','22/01/21','14:34:15','14:34:19'),('kalili','22/01/21','14:43:16','14:43:22'),('kalili','22/01/21','14:43:59','14:44:01'),('kalili','22/01/21','15:05:15','15:05:20'),('kalili','23/01/21','09:25:09','09:25:13'),('kalili','23/01/21','10:29:58','10:30:02'),('kalili','23/01/21','13:24:45','13:24:48'),('ash','23/01/21','16:14:47','16:14:52'),('kingk','23/01/21','16:16:37','16:16:43'),('kalili','25/01/21','11:42:57','11:42:59'),('kalili','25/01/21','11:42:57','11:42:59'),('lifechoices','25/01/21','11:48:42','11:48:47'),('kalili','25/01/21','12:02:03','12:02:06'),('kalili','25/01/21','12:02:49','12:02:51'),('salieboy','25/01/21','12:12:30','12:12:34'),('kalili','25/01/21','12:16:36','12:16:38'),('kalili','25/01/21','15:31:25','15:31:28'),('kalili','25/01/21','15:53:06','15:53:09'),('abdul','25/01/21','15:53:50','15:53:52'),('abdul','25/01/21','16:16:07','16:16:10'),('kalemmm','25/01/21','16:16:57','16:16:59');
/*!40000 ALTER TABLE `time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(60) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `mobile_number` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'kalem salie','kalili','king',''),(5,'kalem789','kalem789','kalem789',''),(6,'kalemkalili','kalemkalili','Jack123!','0622488735'),(14,'mat','mat','mat','8898'),(15,'aasi','ash','1234','4321'),(17,'kalem salie','kingk','kingk','123'),(19,'kalem','salieboy','123','123'),(21,'abdul','abdul','abdul','999'),(22,'kalemmm','kalemmm','jack','999');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-25 16:26:14
