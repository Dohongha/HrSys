-- MariaDB dump 10.17  Distrib 10.4.8-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: apsystem
-- ------------------------------------------------------
-- Server version	10.4.8-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK','Harry','Trang','male6.jpg','2018-04-30');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_in` time NOT NULL,
  `status` int(1) NOT NULL,
  `time_out` time NOT NULL,
  `num_hr` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (13,1,'2020-08-27','08:00:00',1,'17:00:00',8),(14,1,'2020-08-28','08:00:00',1,'17:00:00',8),(15,1,'2018-05-04','08:00:00',1,'17:00:00',8),(16,1,'2018-05-02','08:00:00',1,'17:00:00',8),(17,1,'2018-05-01','08:00:00',1,'17:00:00',8),(18,1,'2018-05-03','08:00:00',1,'17:00:00',8),(74,1,'2018-04-30','08:00:00',1,'16:44:23',7.7333333333333),(75,3,'2018-04-18','08:00:00',1,'17:00:00',8),(76,4,'2018-04-19','08:00:00',1,'17:00:00',8),(77,4,'2018-04-27','08:00:00',1,'17:00:00',7),(78,4,'2018-04-28','08:00:00',1,'17:00:00',8),(79,4,'2018-05-01','08:30:00',1,'17:00:00',8),(80,4,'2018-05-03','08:00:00',1,'17:00:00',0),(81,4,'2018-05-05','08:00:00',1,'17:00:00',9),(83,4,'2018-05-31','12:00:00',0,'18:00:00',5),(84,4,'2018-05-18','08:00:00',1,'17:00:00',7),(85,4,'2018-05-09','09:00:00',1,'18:00:00',8),(86,5,'2018-07-11','07:41:00',1,'16:00:00',7),(87,1,'2018-07-11','06:27:00',1,'15:00:00',6),(88,6,'2018-07-11','07:45:00',1,'14:48:00',3.8),(89,7,'2018-07-11','07:56:00',1,'17:00:00',8),(90,8,'2018-07-11','06:05:12',1,'16:00:00',7),(91,9,'2018-07-11','18:12:06',0,'00:00:00',0),(92,10,'2018-07-11','18:13:01',0,'00:00:00',0),(93,11,'2018-07-11','18:14:30',0,'00:00:00',0),(94,12,'2018-07-11','18:16:14',0,'00:00:00',0),(95,13,'2018-07-11','18:17:32',0,'00:00:00',0),(96,14,'2018-07-11','18:18:33',0,'00:00:00',0),(97,15,'2018-07-11','18:19:26',0,'00:00:00',0),(98,16,'2018-07-11','18:20:26',0,'00:00:00',0),(99,17,'2018-07-11','18:21:41',0,'00:00:00',0),(100,18,'2018-07-12','23:46:31',1,'00:00:00',0),(101,19,'2018-07-12','23:50:28',1,'00:00:00',0),(102,20,'2018-07-12','23:52:48',1,'00:00:00',0),(103,21,'2018-07-12','23:54:50',1,'00:00:00',0),(104,22,'2018-07-12','23:56:02',1,'00:00:00',0),(105,23,'2018-07-12','13:57:00',0,'00:00:00',12.95),(106,1,'2020-10-12','16:34:21',0,'16:42:54',0.13333333333333),(107,5,'2020-10-12','16:39:27',0,'21:25:44',3.7666666666667),(108,1,'2020-11-17','06:27:00',1,'18:27:23',8),(110,21,'2020-11-17','01:00:00',1,'18:33:06',8),(111,3,'2020-11-17','01:00:00',1,'18:39:38',8),(112,5,'2020-11-17','18:41:00',0,'18:41:00',1.6833333333333);
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cashadvance`
--

DROP TABLE IF EXISTS `cashadvance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cashadvance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_advance` date NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `amount` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cashadvance`
--

LOCK TABLES `cashadvance` WRITE;
/*!40000 ALTER TABLE `cashadvance` DISABLE KEYS */;
INSERT INTO `cashadvance` VALUES (2,'2018-05-02','1',1000),(3,'2018-05-02','1',1000),(4,'2018-07-12','5',3500),(5,'2020-10-12','5',3500);
/*!40000 ALTER TABLE `cashadvance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deductions`
--

DROP TABLE IF EXISTS `deductions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deductions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deductions`
--

LOCK TABLES `deductions` WRITE;
/*!40000 ALTER TABLE `deductions` DISABLE KEYS */;
INSERT INTO `deductions` VALUES (1,'SSS',100),(2,'Pagibig',150),(3,'PhilHealth',150),(4,'Project Issues',1500);
/*!40000 ALTER TABLE `deductions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `birthdate` date NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `position_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL,
  `password` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'ABC123456789','Christine','Smith','Brgy. Mambulac, Silay City','2018-04-02','09000035719','Male',1,2,'desktop.jpg','2018-04-28','$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK'),(3,'DYE473869250','Julyn','Divinagracia','E.B. Magalona','1992-05-02','09123456789','Female',2,2,'','2018-04-30','$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK'),(4,'JIE625973480','Gemalyn','Cepe','Carmen, Bohol','1995-10-02','09468029840','Female',2,3,'','2018-04-30','$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK'),(5,'TQO238109674','Bruno','Den','Test','1995-08-23','5454578965','Male',1,2,'thanossmile.jpg','2018-07-11','$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK'),(6,'EDQ203874591','Henry','Doe','New St. Esp','1991-07-25','9876543210','Male',2,4,'male.png','2018-07-11','$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK'),(7,'TWY781946302','Johnny','Jr','Esp','1995-07-11','8467067344','Male',1,2,'profile.jpg','2018-07-11','$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK'),(8,'GWZ071342865','Tonny','Jr','Esp 12 South Street','1994-07-19','9876543210','Male',1,2,'profile.jpg','2018-07-11','$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK'),(9,'HEL079321846','Jacob','Carter','St12 N1','1995-07-18','5454578965','Male',1,2,'profile.jpg','2018-07-11','$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK'),(10,'OCN273564901','Benjamin','Cohen','TEST','1991-07-25','78548852145','Male',2,3,'profile.jpg','2018-07-11','$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK'),(11,'PGX413705682','Ethan','Carson','DEMO','1994-07-19','8467067344','Male',1,2,'profile.jpg','2018-07-11','$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK'),(12,'YWX536478912','Daniel','Cooper','Test','1995-07-11','9876543210','Male',2,4,'profile.jpg','2018-07-11','$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK'),(13,'ALB590623481','Emma','Wallis','Test','1994-07-19','9632145655','Female',1,3,'female4.jpg','2018-07-11','$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK'),(14,'IOV153842976','Sophia','Maguire','Test','1995-07-11','5454578965','Female',2,2,'profile.jpg','2018-07-11','$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK'),(15,'CAB835624170','Mia','Hollister','Test','1995-07-18','9632145655','Female',2,3,'profile.jpg','2018-07-11','$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK'),(16,'MGZ312906745','Emily','JK','Test','1996-07-24','9876543210','Female',2,3,'profile.jpg','2018-07-11','$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK'),(17,'HSP067892134','Nakia','Grey','Test','1995-10-24','8467067344','Female',1,2,'profile.jpg','2018-07-11','$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK'),(18,'BVH081749563','Dave','Cruze','Demo','1990-01-02','5454578965','Male',2,2,'profile.jpg','2018-07-11','$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK'),(19,'ZTC714069832','Logan','Paul','Esp 16','1994-12-30','0202121255','Male',1,1,'profile.jpg','2018-07-11','$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK'),(20,'VFT157620348','Jack','Adler','Test','1991-07-25','6545698880','Male',1,4,'profile.jpg','2018-07-11','$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK'),(21,'XRF342608719','Mason','Beckett','Demo','1996-07-24','8467067344','Male',2,1,'profile.jpg','2018-07-11','$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK'),(22,'LVO541238690','Lucas','Cooper','Demo','1995-07-18','9632145655','Male',2,1,'profile.jpg','2018-07-11','$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK'),(24,'ZQC109862547','Huong','Pham','BG','2020-10-05','09000035719','Male',3,3,'','2020-10-12','$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `description` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (19,'noteuc1 33333','ooi132uj213','2020-11-14 10:53:40'),(21,'te','<h3>12312323434</h3><p></p><ol><li>sad123123</li><li>123</li><li>12fdffd</li><li>3123</li></ol><p></p>','2020-11-17 10:53:40'),(22,'do hong ha','<p><b><i></i>hankurga</b></p><p><b><i><u>fmkashd</u></i></b><i><b><u></u></b></i></p>','2020-11-11 10:53:40'),(23,'do hong ha','<p>xss</p>','2020-11-17 10:53:40'),(24,'notice 1','<p>xasjdj</p><p>asdlkas&nbsp;</p><p>qwe</p><p>&nbsp;</p><p>qw e</p><p>qweqwe</p>','2020-11-17 11:24:15');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `overtime`
--

DROP TABLE IF EXISTS `overtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `overtime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(15) NOT NULL,
  `hours` double NOT NULL,
  `rate` double NOT NULL,
  `date_overtime` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `overtime`
--

LOCK TABLES `overtime` WRITE;
/*!40000 ALTER TABLE `overtime` DISABLE KEYS */;
INSERT INTO `overtime` VALUES (4,'6',240,1500,'2031-11-08'),(5,'4',283.33333333333,3600,'2018-06-05');
/*!40000 ALTER TABLE `overtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(150) NOT NULL,
  `rate` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'Programmer',100),(2,'Writer',50),(3,'Marketing ',35),(4,'Graphic Designer',75);
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (1,'07:00:00','16:00:00'),(2,'08:00:00','17:00:00'),(3,'09:00:00','18:00:00'),(4,'10:00:00','19:00:00');
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-17 19:24:42
