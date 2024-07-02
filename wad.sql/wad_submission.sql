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
-- Table structure for table `submission`
--

DROP TABLE IF EXISTS `submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lecture_id` int NOT NULL COMMENT 'lecture_id',
  `student_id` int NOT NULL COMMENT 'student_id',
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'title',
  `submit_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'submit_time',
  `description` text COMMENT 'description',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT 'is_delete',
  `file_path` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件相对路径',
  PRIMARY KEY (`id`),
  KEY `submission_student_id_fk` (`student_id`),
  KEY `lecture_id` (`lecture_id`),
  CONSTRAINT `submission_ibfk_1` FOREIGN KEY (`lecture_id`) REFERENCES `lecture` (`id`),
  CONSTRAINT `submission_student_id_fk` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission`
--

LOCK TABLES `submission` WRITE;
/*!40000 ALTER TABLE `submission` DISABLE KEYS */;
INSERT INTO `submission` VALUES (8,1,1,'mid-term examination','2024-04-17 04:24:53','very good',0,NULL),(9,1,1,'mid-term examination','2024-04-17 04:25:20','132',0,NULL),(10,1,2,'mid-term examination','2024-04-20 19:24:09','A+',0,NULL),(11,1,2,'final-term examination','2024-05-20 03:31:58','666',0,NULL),(14,2,2,'final-term examination','2024-05-20 08:53:34','4',0,NULL),(15,5,2,'tset1','2024-05-20 08:54:23','good',0,NULL),(16,5,1,'tset12','2024-05-20 08:59:09','nice',0,NULL),(18,5,1,'tset13','2024-05-20 09:00:03','good',0,NULL),(19,5,1,'tset5','2023-05-20 09:04:13','666',0,NULL),(20,5,1,'tset16','2024-05-20 12:06:13','',0,NULL),(21,1,2,'tset4','2024-05-20 12:07:06','666',0,NULL),(22,5,1,'tset100','2024-05-20 12:11:34','',0,NULL),(26,5,1,'tset1','2024-05-20 12:16:07','',0,NULL),(27,5,1,'tset13','2024-05-20 12:18:31','',0,NULL);
/*!40000 ALTER TABLE `submission` ENABLE KEYS */;
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
