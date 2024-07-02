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
-- Table structure for table `feedback_detail`
--

DROP TABLE IF EXISTS `feedback_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `criteria` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '尺度',
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '教师评论',
  `score_sum` int NOT NULL DEFAULT '0' COMMENT '该项总分',
  `score_get` int DEFAULT '0' COMMENT '获得的分数',
  `submission_feedback_id` int NOT NULL COMMENT '关联的反馈表的id',
  PRIMARY KEY (`id`),
  KEY `feedback_detail_submission_feedback_id_fk` (`submission_feedback_id`),
  CONSTRAINT `feedback_detail_submission_feedback_id_fk` FOREIGN KEY (`submission_feedback_id`) REFERENCES `submission_feedback` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback_detail`
--

LOCK TABLES `feedback_detail` WRITE;
/*!40000 ALTER TABLE `feedback_detail` DISABLE KEYS */;
INSERT INTO `feedback_detail` VALUES (1,'Functionality','The software exceeds the specified requirements and performs itsintended functions exceptionally well.\n',10,8,2),(2,'Usability','The user interface is highly intuitive, user-friendly, and provides anexceptional user experience.',5,4,2),(3,'Performance','The software demonstrates outstanding efficiency andresponsiveness across all tasks and loads.',5,4,2),(4,'Adherence to project requirements','The software aligns perfectly with the project\'s defined scope,objectives, and constraints.',5,4,2),(5,'Sprint documentation quality','The documentation is thorough, meticulously organized, and exhibitsexcellent clarity and consistency.',10,9,2),(6,'Question response','The response meets or exceeds the word count requirement and iswell-structured, coherent, and engaging to read.',5,5,2);
/*!40000 ALTER TABLE `feedback_detail` ENABLE KEYS */;
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
