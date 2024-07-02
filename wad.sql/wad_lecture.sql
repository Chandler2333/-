-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: wad
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `lecture`
--

DROP TABLE IF EXISTS `lecture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecture` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL COMMENT 'time',
  `instructor_id` int NOT NULL COMMENT 'instructor_id ',
  `course_id` int NOT NULL COMMENT 'course_id',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'is_delete',
  `lecture_name` varchar(64) DEFAULT NULL,
  `course_name` varchar(32) NOT NULL,
  `status` int NOT NULL DEFAULT '0' COMMENT '教课评判状态',
  `academic_year` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecture`
--

LOCK TABLES `lecture` WRITE;
/*!40000 ALTER TABLE `lecture` DISABLE KEYS */;
INSERT INTO `lecture` VALUES (1,'2024-04-17 15:07:45',1,1,0,'Advanced Mathematics Class 2','Advanced Mathematics A (1)\n',0,'Spring semester'),(2,'2024-04-17 15:07:49',2,2,0,'Advanced Mathematics Class 3','Advanced Mathematics A (1)\r ',0,'Spring semester'),(3,'2024-04-18 13:34:17',2,2,1,'Advanced Mathematics Class 4','Advanced Mathematics A (1)\r ',1,'Spring semester'),(5,'2024-04-18 06:15:22',1,2,1,'Discrete Mathematics (1) Class (Level 1 Course Class)','discrete mathematics \n',1,'Spring semester'),(6,'2024-04-18 06:15:22',1,2,1,'Discrete Mathematics (2) Class (Level 1 Course Class)','discrete mathematics \n',1,'Spring semester'),(8,'2024-04-18 14:10:59',1,2,1,'Discrete Mathematics (3) Class (Level 1 Course Class)','discrete mathematics \n',1,'Autumn semester'),(9,'2024-04-21 03:54:42',1,2,0,'Discrete Mathematics (2) Class (Level 2 Course Class)','discrete mathematics \n',1,'Spring semester'),(11,'2024-05-20 16:20:57',1,2,0,'Discrete Mathematics (1) Class (Level 2 Course Class)','discrete mathematics \n',0,'Spring semester');
/*!40000 ALTER TABLE `lecture` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-28 22:17:04
