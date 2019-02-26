-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.16.04.2

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
-- Table structure for table `exercise1_results`
--

DROP TABLE IF EXISTS `exercise1_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exercise1_results` (
  `uid` int(11) NOT NULL,
  `0` int(11) DEFAULT NULL,
  `1` int(11) DEFAULT NULL,
  `2` int(11) DEFAULT NULL,
  `3` int(11) DEFAULT NULL,
  `4` int(11) DEFAULT NULL,
  `5` int(11) DEFAULT NULL,
  `6` int(11) DEFAULT NULL,
  `7` int(11) DEFAULT NULL,
  `8` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise1_results`
--

LOCK TABLES `exercise1_results` WRITE;
/*!40000 ALTER TABLE `exercise1_results` DISABLE KEYS */;
INSERT INTO `exercise1_results` VALUES (1,8,8,11,9,5,NULL,NULL,NULL,NULL),(2,10,10,8,9,13,NULL,NULL,NULL,NULL),(3,11,11,10,9,10,NULL,NULL,NULL,NULL),(4,9,8,7,10,14,NULL,NULL,NULL,NULL),(5,9,9,7,11,9,NULL,NULL,NULL,NULL),(6,10,10,11,10,10,NULL,NULL,NULL,NULL),(7,11,11,10,9,9,NULL,NULL,NULL,NULL),(8,8,7,9,10,8,NULL,NULL,NULL,NULL),(9,11,11,11,11,6,NULL,NULL,NULL,NULL),(10,11,11,10,10,15,NULL,NULL,NULL,NULL),(11,8,10,9,11,3,NULL,NULL,NULL,NULL),(12,7,8,9,9,14,NULL,NULL,NULL,NULL),(13,7,7,9,7,15,NULL,NULL,NULL,NULL),(14,8,9,10,8,14,NULL,NULL,NULL,NULL),(15,11,10,11,10,12,NULL,NULL,NULL,NULL),(16,10,10,9,9,12,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `exercise1_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercise2_results`
--

DROP TABLE IF EXISTS `exercise2_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exercise2_results` (
  `uid` int(11) NOT NULL,
  `0` int(11) DEFAULT NULL,
  `1` int(11) DEFAULT NULL,
  `2` int(11) DEFAULT NULL,
  `3` int(11) DEFAULT NULL,
  `4` int(11) DEFAULT NULL,
  `5` int(11) DEFAULT NULL,
  `6` int(11) DEFAULT NULL,
  `7` int(11) DEFAULT NULL,
  `8` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise2_results`
--

LOCK TABLES `exercise2_results` WRITE;
/*!40000 ALTER TABLE `exercise2_results` DISABLE KEYS */;
INSERT INTO `exercise2_results` VALUES (1,44,44,40,44,45,NULL,NULL,NULL,NULL),(2,42,44,41,44,45,NULL,NULL,NULL,NULL),(3,43,44,42,44,44,NULL,NULL,NULL,NULL),(4,40,44,43,42,44,NULL,NULL,NULL,NULL),(5,39,43,44,43,46,NULL,NULL,NULL,NULL),(6,44,43,43,41,46,NULL,NULL,NULL,NULL),(7,39,43,42,40,42,NULL,NULL,NULL,NULL),(8,44,43,41,39,42,NULL,NULL,NULL,NULL),(9,43,42,40,40,56,NULL,NULL,NULL,NULL),(10,43,42,41,41,56,NULL,NULL,NULL,NULL),(11,41,42,42,42,55,NULL,NULL,NULL,NULL),(12,40,41,42,43,55,NULL,NULL,NULL,NULL),(13,39,40,43,41,45,NULL,NULL,NULL,NULL),(14,40,39,44,40,45,NULL,NULL,NULL,NULL),(15,43,44,44,39,42,NULL,NULL,NULL,NULL),(16,42,43,44,42,42,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `exercise2_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercise3_results`
--

DROP TABLE IF EXISTS `exercise3_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exercise3_results` (
  `uid` int(11) NOT NULL,
  `0` int(11) DEFAULT NULL,
  `1` int(11) DEFAULT NULL,
  `2` int(11) DEFAULT NULL,
  `3` int(11) DEFAULT NULL,
  `4` int(11) DEFAULT NULL,
  `5` int(11) DEFAULT NULL,
  `6` int(11) DEFAULT NULL,
  `7` int(11) DEFAULT NULL,
  `8` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise3_results`
--

LOCK TABLES `exercise3_results` WRITE;
/*!40000 ALTER TABLE `exercise3_results` DISABLE KEYS */;
INSERT INTO `exercise3_results` VALUES (1,11,14,11,11,13,NULL,NULL,NULL,NULL),(2,12,13,12,12,10,NULL,NULL,NULL,NULL),(3,13,12,13,13,11,NULL,NULL,NULL,NULL),(4,12,11,14,14,10,NULL,NULL,NULL,NULL),(5,11,14,15,11,14,NULL,NULL,NULL,NULL),(6,13,13,11,12,11,NULL,NULL,NULL,NULL),(7,14,12,12,13,13,NULL,NULL,NULL,NULL),(8,11,11,13,14,13,NULL,NULL,NULL,NULL),(9,12,15,14,11,12,NULL,NULL,NULL,NULL),(10,13,14,15,12,25,NULL,NULL,NULL,NULL),(11,11,13,14,13,25,NULL,NULL,NULL,NULL),(12,12,12,13,14,9,NULL,NULL,NULL,NULL),(13,13,11,12,14,10,NULL,NULL,NULL,NULL),(14,11,13,11,13,12,NULL,NULL,NULL,NULL),(15,12,12,12,12,14,NULL,NULL,NULL,NULL),(16,13,11,11,11,15,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `exercise3_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercise4_results`
--

DROP TABLE IF EXISTS `exercise4_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exercise4_results` (
  `uid` int(11) NOT NULL,
  `0` int(11) DEFAULT NULL,
  `1` int(11) DEFAULT NULL,
  `2` int(11) DEFAULT NULL,
  `3` int(11) DEFAULT NULL,
  `4` int(11) DEFAULT NULL,
  `5` int(11) DEFAULT NULL,
  `6` int(11) DEFAULT NULL,
  `7` int(11) DEFAULT NULL,
  `8` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise4_results`
--

LOCK TABLES `exercise4_results` WRITE;
/*!40000 ALTER TABLE `exercise4_results` DISABLE KEYS */;
INSERT INTO `exercise4_results` VALUES (1,3,3,3,3,5,NULL,NULL,NULL,NULL),(2,2,2,2,2,5,NULL,NULL,NULL,NULL),(3,1,1,1,1,5,NULL,NULL,NULL,NULL),(4,3,1,1,1,5,NULL,NULL,NULL,NULL),(5,2,2,2,2,3,NULL,NULL,NULL,NULL),(6,1,3,3,3,3,NULL,NULL,NULL,NULL),(7,3,3,3,3,4,NULL,NULL,NULL,NULL),(8,3,2,2,3,2,NULL,NULL,NULL,NULL),(9,1,1,1,3,3,NULL,NULL,NULL,NULL),(10,3,1,1,1,4,NULL,NULL,NULL,NULL),(11,2,2,2,1,4,NULL,NULL,NULL,NULL),(12,1,3,2,1,5,NULL,NULL,NULL,NULL),(13,3,3,1,2,5,NULL,NULL,NULL,NULL),(14,1,2,3,3,4,NULL,NULL,NULL,NULL),(15,2,1,3,3,4,NULL,NULL,NULL,NULL),(16,3,1,3,3,4,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `exercise4_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercises`
--

DROP TABLE IF EXISTS `exercises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exercises` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `low` int(11) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `high` int(11) DEFAULT NULL,
  `lowadv` text,
  `midadv` text,
  `highadv` text,
  `hisb` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercises`
--

LOCK TABLES `exercises` WRITE;
/*!40000 ALTER TABLE `exercises` DISABLE KEYS */;
INSERT INTO `exercises` VALUES (1,'Бросок на время',6,8,12,'<p>В зависимости от вашего уровня вам предложены видео:</p>\n<video controls width=\"400\" height=\"300\">\n  <source src=\"eid1_low.mp4\" type=\"video/mp4\">\n</video>','<p>В зависимости от вашего уровня вам предложены видео:</p>\n<video controls width=\"400\" height=\"300\">\n  <source src=\"eid1_low.mp4\" type=\"video/mp4\">\n</video>\n<video controls width=\"400\" height=\"300\">\n  <source src=\"eid1_mid.mp4\" type=\"video/mp4\">\n</video>','<p>В зависимости от вашего уровня вам предложены видео:</p>\n<video controls width=\"400\" height=\"300\">\n  <source src=\"eid1_low.mp4\" type=\"video/mp4\">\n</video>\n<video controls width=\"400\" height=\"300\">\n  <source src=\"eid1_mid.mp4\" type=\"video/mp4\">\n</video>\n<video controls width=\"400\" height=\"300\">\n  <source src=\"eid1_high.mp4\" type=\"video/mp4\">\n</video>',1),(2,'Передача в парах',35,40,45,'<p>В зависимости от вашего уровня вам предложены видео:</p>\n<video controls width=\"400\" height=\"300\">\n  <source src=\"eid2_low.mp4\" type=\"video/mp4\">\n</video>','<p>В зависимости от вашего уровня вам предложены видео:</p>\n<video controls width=\"400\" height=\"300\">\n  <source src=\"eid2_low.mp4\" type=\"video/mp4\">\n</video>\n<video controls width=\"400\" height=\"300\">\n  <source src=\"eid2_mid.mp4\" type=\"video/mp4\">\n</video>','<p>В зависимости от вашего уровня вам предложены видео:</p>\n<video controls width=\"400\" height=\"300\">\n  <source src=\"eid2_low.mp4\" type=\"video/mp4\">\n</video>\n<video controls width=\"400\" height=\"300\">\n  <source src=\"eid2_mid.mp4\" type=\"video/mp4\">\n</video>\n<video controls width=\"400\" height=\"300\">\n  <source src=\"eid2_high.mp4\" type=\"video/mp4\">\n</video>',1),(3,'Челночный бег с ведением',14,12,10,'<p>В зависимости от вашего уровня вам предложены видео:</p>\n<video controls width=\"400\" height=\"300\">\n  <source src=\"eid3_low.mp4\" type=\"video/mp4\">\n</video>','<p>В зависимости от вашего уровня вам предложены видео:</p>\n<video controls width=\"400\" height=\"300\">\n  <source src=\"eid3_low.mp4\" type=\"video/mp4\">\n</video>\n<video controls width=\"400\" height=\"300\">\n  <source src=\"eid3_mid.mp4\" type=\"video/mp4\">\n</video>','<p>В зависимости от вашего уровня вам предложены видео:</p>\n<video controls width=\"400\" height=\"300\">\n  <source src=\"eid3_low.mp4\" type=\"video/mp4\">\n</video>\n<video controls width=\"400\" height=\"300\">\n  <source src=\"eid3_mid.mp4\" type=\"video/mp4\">\n</video>\n<video controls width=\"400\" height=\"300\">\n  <source src=\"eid3_high.mp4\" type=\"video/mp4\">\n</video>',0),(4,'Штрафной бросок',1,2,3,'<p>В зависимости от вашего уровня вам предложены видео:</p>\n<video controls width=\"400\" height=\"300\">\n  <source src=\"eid4_low.mp4\" type=\"video/mp4\">\n</video>','<p>В зависимости от вашего уровня вам предложены видео:</p>\n<video controls width=\"400\" height=\"300\">\n  <source src=\"eid4_low.mp4\" type=\"video/mp4\">\n</video>\n<video controls width=\"400\" height=\"300\">\n  <source src=\"eid4_mid.mp4\" type=\"video/mp4\">\n</video>','<p>В зависимости от вашего уровня вам предложены видео:</p>\n<video controls width=\"400\" height=\"300\">\n  <source src=\"eid4_low.mp4\" type=\"video/mp4\">\n</video>\n<video controls width=\"400\" height=\"300\">\n  <source src=\"eid4_mid.mp4\" type=\"video/mp4\">\n</video>\n<video controls width=\"400\" height=\"300\">\n  <source src=\"eid4_high.mp4\" type=\"video/mp4\">\n</video>',1);
/*!40000 ALTER TABLE `exercises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `members` json NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'10Б','[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]'),(2,'1 группа','[1, 2, 3, 4]'),(3,'2 группа','[5, 6, 7, 8]'),(4,'3 группа','[9, 10, 11, 12]'),(5,'4 группа','[13, 14, 15, 16]');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Березин Константин'),(2,'Писарев Сергей'),(3,'Жиливостов Иван'),(4,'Гайворонский Виктор'),(5,'Теренин Кирилл'),(6,'Шарапов Иван'),(7,'Зинченко Александр'),(8,'Никитин Роман'),(9,'Пермяков Артем'),(10,'Юнусов Нариман'),(11,'Антипкин Илья'),(12,'Чесноков Алексей'),(13,'Стахеев Антон'),(14,'Бочнев Никита'),(15,'Енин Евгений'),(16,'Гаранин Евгений');
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

-- Dump completed on 2019-02-26 18:02:24
