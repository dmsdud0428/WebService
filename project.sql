-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `award`
--

DROP TABLE IF EXISTS `award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `award` (
  `id` char(9) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `organization` varchar(100) DEFAULT NULL,
  `rating` varchar(1) DEFAULT NULL,
  `day` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award`
--

LOCK TABLES `award` WRITE;
/*!40000 ALTER TABLE `award` DISABLE KEYS */;
/*!40000 ALTER TABLE `award` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `career`
--

DROP TABLE IF EXISTS `career`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `career` (
  `id` char(9) NOT NULL,
  `kind` varchar(100) DEFAULT NULL,
  `compandy` varchar(100) DEFAULT NULL,
  `business` varchar(100) DEFAULT NULL,
  `s_day` date DEFAULT NULL,
  `e_day` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `career`
--

LOCK TABLES `career` WRITE;
/*!40000 ALTER TABLE `career` DISABLE KEYS */;
/*!40000 ALTER TABLE `career` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etc`
--

DROP TABLE IF EXISTS `etc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `etc` (
  `id` char(9) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `organization` varchar(100) DEFAULT NULL,
  `s_day` date DEFAULT NULL,
  `e_day` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etc`
--

LOCK TABLES `etc` WRITE;
/*!40000 ALTER TABLE `etc` DISABLE KEYS */;
/*!40000 ALTER TABLE `etc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview`
--

DROP TABLE IF EXISTS `interview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `interview` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `id` char(9) DEFAULT NULL,
  `year` char(4) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `spec` varchar(100) DEFAULT NULL,
  `review` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview`
--

LOCK TABLES `interview` WRITE;
/*!40000 ALTER TABLE `interview` DISABLE KEYS */;
/*!40000 ALTER TABLE `interview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `introduction`
--

DROP TABLE IF EXISTS `introduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `introduction` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `id` char(9) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `day` date DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `business` varchar(100) DEFAULT NULL,
  `kind` varchar(10) DEFAULT NULL,
  `question_1` varchar(500) DEFAULT NULL,
  `answer_1` varchar(3000) DEFAULT NULL,
  `question_2` varchar(500) DEFAULT NULL,
  `answer_2` varchar(3000) DEFAULT NULL,
  `question_3` varchar(500) DEFAULT NULL,
  `answer_3` varchar(3000) DEFAULT NULL,
  `question_4` varchar(500) DEFAULT NULL,
  `answer_4` varchar(3000) DEFAULT NULL,
  `question_5` varchar(500) DEFAULT NULL,
  `answer_5` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `introduction`
--

LOCK TABLES `introduction` WRITE;
/*!40000 ALTER TABLE `introduction` DISABLE KEYS */;
/*!40000 ALTER TABLE `introduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `language` (
  `id` char(9) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `rating` varchar(1) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `day` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license`
--

DROP TABLE IF EXISTS `license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `license` (
  `id` char(9) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `organization` varchar(100) DEFAULT NULL,
  `rating` varchar(1) DEFAULT NULL,
  `day` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license`
--

LOCK TABLES `license` WRITE;
/*!40000 ALTER TABLE `license` DISABLE KEYS */;
/*!40000 ALTER TABLE `license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `service` (
  `id` char(9) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `organization` varchar(100) DEFAULT NULL,
  `kind` varchar(100) DEFAULT NULL,
  `s_day` date DEFAULT NULL,
  `e_day` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subject` (
  `code` char(9) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `m` tinyint(1) DEFAULT '0',
  `bsm` tinyint(1) DEFAULT '0',
  `engineeringMajor` tinyint(1) DEFAULT '0',
  `engineeringR` tinyint(1) DEFAULT '0',
  `major` tinyint(1) DEFAULT '0',
  `majorNecessary` tinyint(1) DEFAULT '0',
  `necessaryR` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES ('AS044','인간심리의이해',3,0,0,0,1,0,0,0),('AS659','일반확률론',3,0,1,0,0,0,0,0),('AS705','컴퓨터네트워크',3,0,0,1,0,1,0,0),('AS711','수리논리',3,1,1,0,0,0,0,0),('AS775','일반통계학',3,0,1,0,0,0,0,0),('AS794','글쓰기',3,0,0,0,0,0,0,1),('AS916','공학윤리',3,0,0,0,1,0,0,0),('AS928','미분적분학1',3,1,1,0,0,0,0,0),('AS929','미분적분학2',3,1,1,0,0,0,0,0),('AS955','일반물리학및실험Ⅰ',3,1,1,0,0,0,0,0),('AS956','일반물리학및실험Ⅱ',3,1,1,0,0,0,0,0),('AS957','일반화학및실험Ⅰ',3,1,1,0,0,0,0,0),('AS958','일반화학및실험Ⅱ',3,1,1,0,0,0,0,0),('CS343','자료구조론',3,0,0,1,0,1,0,0),('DD013','컴퓨터과학개론',3,1,1,0,0,0,0,0),('DD017','이산수학',3,1,0,1,0,1,0,0),('DD298','컴퓨터과학전공및진로탐색',1,0,0,1,0,1,1,0),('DD703','프로그래밍언어론',3,0,0,1,0,1,0,0),('DD724','운영체제',3,0,0,1,0,1,0,0),('DD726','네트워크프로그래밍',3,0,0,1,0,1,0,0),('DD727','데이터베이스',3,0,0,1,0,1,0,0),('DD746','창의기초설계',3,0,0,0,0,1,1,0),('DD747','수치계산',3,1,0,1,0,1,0,0),('DD748','시스템소프트웨어',3,0,0,1,0,1,0,0),('DD771','계산이론',3,0,0,1,0,1,0,0),('DD801','C프로그래밍',3,0,0,0,0,1,1,0),('DD802','자바프로그래밍1',3,0,0,1,0,1,0,0),('DD803','자료구조설계',3,0,0,1,0,1,0,0),('DD804','자바프로그래밍2',3,0,0,1,0,1,0,0),('DD805','워크플로우관리시스템',3,0,0,1,0,1,0,0),('EF624','컴퓨터구조',3,0,0,1,0,1,0,0),('YA029','창의적문제해결전략',3,0,0,0,1,0,0,0);
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-29 22:13:48
