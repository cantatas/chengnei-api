-- MySQL dump 10.13  Distrib 8.0.26, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: chengnei
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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `author` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `thumb_url` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'修改标题','admin','测试内容','',1,'2022-02-15 08:28:52','2022-02-15 08:28:52');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weather`
--

DROP TABLE IF EXISTS `weather`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weather` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `forecast` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather`
--

LOCK TABLES `weather` WRITE;
/*!40000 ALTER TABLE `weather` DISABLE KEYS */;
INSERT INTO `weather` VALUES (1,'','null'),(2,'','null'),(3,'测试天气','\"{\\\"forecast\\\":{\\\"12h\\\":{\\\"101010100\\\":{\\\"1001001\\\":[{\\\"002\\\":\\\"4\\\",\\\"003\\\":\\\"-6\\\",\\\"004\\\":\\\"1\\\",\\\"005\\\":\\\"7\\\",\\\"001\\\":\\\"00\\\",\\\"000\\\":\\\"20220222080000~20220222200000\\\"},{\\\"002\\\":\\\"-1\\\",\\\"003\\\":\\\"-7\\\",\\\"004\\\":\\\"0\\\",\\\"005\\\":\\\"5\\\",\\\"001\\\":\\\"00\\\",\\\"000\\\":\\\"20220222200000~20220223080000\\\"},{\\\"002\\\":\\\"6\\\",\\\"003\\\":\\\"-5\\\",\\\"004\\\":\\\"0\\\",\\\"005\\\":\\\"8\\\",\\\"001\\\":\\\"00\\\",\\\"000\\\":\\\"20220223080000~20220223200000\\\"},{\\\"002\\\":\\\"0\\\",\\\"003\\\":\\\"-6\\\",\\\"004\\\":\\\"0\\\",\\\"005\\\":\\\"5\\\",\\\"001\\\":\\\"00\\\",\\\"000\\\":\\\"20220223200000~20220224080000\\\"},{\\\"002\\\":\\\"9\\\",\\\"003\\\":\\\"-5\\\",\\\"004\\\":\\\"0\\\",\\\"005\\\":\\\"5\\\",\\\"001\\\":\\\"00\\\",\\\"000\\\":\\\"20220224080000~20220224200000\\\"},{\\\"002\\\":\\\"1\\\",\\\"003\\\":\\\"-4\\\",\\\"004\\\":\\\"0\\\",\\\"005\\\":\\\"8\\\",\\\"001\\\":\\\"00\\\",\\\"000\\\":\\\"20220224200000~20220225080000\\\"}],\\\"000\\\":\\\"202202220800\\\"}},\\\"24h\\\":{\\\"101010100\\\":{\\\"1001001\\\":[{\\\"002\\\":\\\"00\\\",\\\"003\\\":\\\"4\\\",\\\"004\\\":\\\"-7\\\",\\\"005\\\":\\\"1\\\",\\\"001\\\":\\\"00\\\",\\\"006\\\":\\\"0\\\",\\\"007\\\":\\\"7\\\",\\\"008\\\":\\\"5\\\"},{\\\"002\\\":\\\"00\\\",\\\"003\\\":\\\"6\\\",\\\"004\\\":\\\"-6\\\",\\\"005\\\":\\\"0\\\",\\\"001\\\":\\\"00\\\",\\\"006\\\":\\\"0\\\",\\\"007\\\":\\\"8\\\",\\\"008\\\":\\\"5\\\"},{\\\"002\\\":\\\"00\\\",\\\"003\\\":\\\"9\\\",\\\"004\\\":\\\"-5\\\",\\\"005\\\":\\\"0\\\",\\\"001\\\":\\\"00\\\",\\\"006\\\":\\\"0\\\",\\\"007\\\":\\\"5\\\",\\\"008\\\":\\\"8\\\"}],\\\"000\\\":\\\"202202220800\\\"}}}}\\n\"');
/*!40000 ALTER TABLE `weather` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-10 14:32:54
