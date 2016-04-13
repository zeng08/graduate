-- MySQL dump 10.13  Distrib 5.7.11, for osx10.11 (x86_64)
--
-- Host: localhost    Database: graduate
-- ------------------------------------------------------
-- Server version	5.7.11

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
-- Table structure for table `zh_house`
--

DROP TABLE IF EXISTS `zh_house`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zh_house` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `building_id` bigint(20) NOT NULL,
  `house_state_id` bigint(20) NOT NULL,
  `floor` int(11) DEFAULT NULL,
  `house_no` int(11) DEFAULT NULL,
  `space` int(11) DEFAULT NULL,
  `buy_date` datetime(6) DEFAULT NULL,
  `in_date` datetime(6) DEFAULT NULL,
  `sell_price_per_square_meter` int(11) DEFAULT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_zh_house_user_3` (`user_id`),
  KEY `ix_zh_house_buildingId_4` (`building_id`),
  KEY `ix_zh_house_state_5` (`house_state_id`),
  CONSTRAINT `fk_zh_house_buildingId_4` FOREIGN KEY (`building_id`) REFERENCES `zh_building` (`id`),
  CONSTRAINT `fk_zh_house_state_5` FOREIGN KEY (`house_state_id`) REFERENCES `zh_house_state` (`id`),
  CONSTRAINT `fk_zh_house_user_3` FOREIGN KEY (`user_id`) REFERENCES `zh_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zh_house`
--

LOCK TABLES `zh_house` WRITE;
/*!40000 ALTER TABLE `zh_house` DISABLE KEYS */;
INSERT INTO `zh_house` VALUES (8,5,13,1,3,301,90,NULL,NULL,13000,'house1.jpg'),(9,6,13,1,4,401,110,NULL,NULL,15000,'house1.jpg'),(10,6,13,6,5,501,150,NULL,NULL,17000,'house1.jpg'),(11,NULL,14,2,6,601,210,NULL,NULL,20000,'house1.jpg'),(12,10,14,1,3,301,90,NULL,NULL,13000,'house1.jpg'),(13,11,14,1,3,301,91,NULL,NULL,13000,'house1.jpg'),(14,NULL,14,2,3,301,90,NULL,NULL,13000,'house1.jpg'),(15,11,15,1,3,301,92,NULL,NULL,13000,'house1.jpg'),(16,10,15,6,3,301,95,NULL,NULL,13000,'house1.jpg'),(17,NULL,15,2,3,301,110,NULL,NULL,12000,'house1.jpg'),(18,12,16,1,1,101,240,NULL,NULL,30000,'house1.jpg'),(19,13,17,1,1,101,200,NULL,NULL,26000,'house1.jpg'),(20,14,18,1,1,101,210,NULL,NULL,28000,'house1.jpg');
/*!40000 ALTER TABLE `zh_house` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-13 19:50:22