-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: social_network
-- ------------------------------------------------------
-- Server version	5.7.27-log

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(120) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `idx_user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Kenton_Kirlin','2017-02-16 16:22:11'),(2,'Andre_Purdy85','2017-04-02 14:11:21'),(3,'Harley_Lind18','2017-02-21 09:12:33'),(4,'Arely_Bogan63','2016-08-12 22:28:43'),(5,'Aniya_Hackett','2016-12-06 23:04:39'),(6,'Travon.Waters','2017-04-30 10:26:14'),(7,'Kasandra_Homenick','2016-12-12 04:50:08'),(8,'Tabitha_Schamberger11','2016-08-19 23:19:46'),(9,'Gus93','2016-06-24 16:36:31'),(10,'Presley_McClure','2016-08-07 13:25:49'),(11,'Justina.Gaylord27','2017-05-04 13:32:16'),(12,'Dereck65','2017-01-18 23:34:14'),(13,'Alexandro35','2017-03-29 14:09:02'),(14,'Jaclyn81','2017-02-06 21:29:16'),(15,'Billy52','2016-10-05 11:10:20'),(16,'Annalise.McKenzie16','2016-08-02 18:32:46'),(17,'Norbert_Carroll35','2017-02-06 20:05:43'),(18,'Odessa2','2016-10-21 15:16:56'),(19,'Hailee26','2017-04-29 15:53:40'),(20,'Delpha.Kihn','2016-08-30 23:42:30'),(21,'Rocio33','2017-01-23 09:51:15'),(22,'Kenneth64','2016-12-27 07:48:17'),(23,'Eveline95','2017-01-23 21:14:19'),(24,'Maxwell.Halvorson','2017-04-17 23:32:44'),(25,'Tierra.Trantow','2016-10-03 09:49:21'),(26,'Josianne.Friesen','2016-06-07 09:47:01'),(27,'Darwin29','2017-03-18 01:10:07'),(28,'Dario77','2016-08-18 04:15:03'),(29,'Jaime53','2016-09-11 15:51:57'),(30,'Kaley9','2016-09-23 18:24:20'),(31,'Aiyana_Hoeger','2016-09-29 17:28:12'),(32,'Irwin.Larson','2016-08-26 16:36:22'),(33,'Yvette.Gottlieb91','2016-11-14 10:32:01'),(34,'Pearl7','2016-07-08 18:42:01'),(35,'Lennie_Hartmann40','2017-03-30 00:25:22'),(36,'Ollie_Ledner37','2016-08-04 12:42:20'),(37,'Yazmin_Mills95','2016-07-26 21:56:44'),(38,'Jordyn.Jacobson2','2016-05-14 04:56:26'),(39,'Kelsi26','2016-06-08 14:48:08'),(40,'Rafael.Hickle2','2016-05-19 06:51:26'),(41,'Mckenna17','2016-07-17 14:25:45'),(42,'Maya.Farrell','2016-12-11 16:04:45'),(43,'Janet.Armstrong','2016-10-06 04:57:44'),(44,'Seth46','2016-07-07 08:40:27'),(45,'David.Osinski47','2017-02-05 19:23:37'),(46,'Malinda_Streich','2016-07-09 18:37:08'),(47,'Harrison.Beatty50','2016-09-02 00:48:38'),(48,'Granville_Kutch','2016-06-26 00:10:22'),(49,'Morgan.Kassulke','2016-10-30 10:42:31'),(50,'Gerard79','2016-08-23 16:47:44'),(51,'Mariano_Koch3','2017-04-17 11:14:46'),(52,'Zack_Kemmer93','2017-01-01 03:58:22'),(53,'Linnea59','2017-02-07 05:49:34'),(54,'Duane60','2016-12-21 02:43:38'),(55,'Meggie_Doyle','2017-04-04 09:17:34'),(56,'Peter.Stehr0','2016-08-22 15:05:42'),(57,'Julien_Schmidt','2017-02-02 21:12:48'),(58,'Aurelie71','2016-05-31 03:20:57'),(59,'Cesar93','2016-10-18 13:42:43'),(60,'Sam52','2017-03-30 19:03:45');
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

-- Dump completed on 2020-01-20 12:29:43
