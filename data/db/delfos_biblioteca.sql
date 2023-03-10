-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: biblioteca
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Current Database: `biblioteca`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `biblioteca` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `biblioteca`;

--
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor` (
  `id` int NOT NULL,
  `nombre` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `apellidos` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT  IGNORE INTO `autor` VALUES (1,'Zacaras','Zapata Yanguas'),(2,'Xabat','Bosco Xerica'),(3,'Valetín','Lamas Hermo'),(4,'Xabat','Zapata Zapata'),(5,'Rosa','Fuertes Fuertes'),(6,'Jess','Elías Hermo'),(7,'Ignacio','Lamas García'),(8,'Jess','Navaridas Ansa'),(9,'Xabat','Navaridas Zapata'),(10,'Kepa','Lamas Pastor'),(11,'Quintin','Bosco Valdés'),(12,'Rosa','Quintana Corta'),(13,'Héctor','Bosco Hermo'),(14,'Rosa','Valdés Zapata'),(15,'Jess','Zapata Sobera'),(16,'Olga','Ansa Xerica'),(17,'Esther','Romero Telleria'),(18,'Casimiro','Xerica Yanguas'),(19,'Héctor','Sobera Urrutia'),(20,'Héctor','Ibáñez Hermo'),(21,'Urko','Ibáñez Zapata'),(22,'Jess','Navaridas Ansa'),(23,'Gabriel','García Fuertes'),(24,'Marta','Sobera García'),(25,'Quintin','Telleria Zapata'),(26,'Rosa','Quintana Jauregui'),(27,'Zacaras','Ansa Xerica'),(28,'Urko','Hermo Urrutia'),(29,'Nora','Kaufman Urrutia'),(30,'Urko','Navaridas Hermo');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autorlibro`
--

DROP TABLE IF EXISTS `autorlibro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autorlibro` (
  `autor` int NOT NULL,
  `libro` int NOT NULL,
  PRIMARY KEY (`autor`,`libro`),
  KEY `FK_autorLibro_libro` (`libro`),
  CONSTRAINT `FK_autorLibro_autor` FOREIGN KEY (`autor`) REFERENCES `autor` (`id`),
  CONSTRAINT `FK_autorLibro_libro` FOREIGN KEY (`libro`) REFERENCES `libro` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autorlibro`
--

LOCK TABLES `autorlibro` WRITE;
/*!40000 ALTER TABLE `autorlibro` DISABLE KEYS */;
INSERT  IGNORE INTO `autorlibro` VALUES (7,1),(8,2),(11,3),(21,4),(6,5),(1,6),(10,7),(22,8),(27,9),(8,10),(20,11),(9,12),(14,13),(19,13),(14,14),(6,15),(19,16),(13,17),(27,18),(3,19),(17,20),(14,21),(5,22),(2,23),(6,24),(5,25),(25,26),(18,27),(25,28),(28,29),(8,30),(24,31),(13,32),(23,33),(29,34),(29,35),(6,36),(21,37),(27,38),(2,39),(7,40),(6,41),(24,42),(22,43),(8,44),(7,45),(17,46),(28,47),(11,48),(12,49),(2,50),(18,51),(17,52),(1,53),(27,54),(19,55),(9,56),(12,57),(13,58),(18,59),(14,60),(9,61),(25,61),(7,62),(17,63),(28,64),(27,65),(21,66),(6,67),(24,68),(11,69),(12,70),(11,71),(28,73),(22,74),(22,75),(22,76),(28,77),(22,78),(21,79),(25,80),(21,81),(24,82),(15,83),(7,84),(21,85),(21,86),(17,87),(18,88),(1,89),(14,89),(20,90),(29,91),(8,92),(14,93),(29,94),(3,95),(20,96),(15,97),(23,98),(24,98),(26,98),(11,99),(16,100),(22,101),(19,102),(28,103),(29,103),(11,104);
/*!40000 ALTER TABLE `autorlibro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biblioteca`
--

DROP TABLE IF EXISTS `biblioteca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biblioteca` (
  `id` int NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `tfno` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UN_biblioteca_1` (`nombre`),
  UNIQUE KEY `UN_biblioteca_2` (`tfno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biblioteca`
--

LOCK TABLES `biblioteca` WRITE;
/*!40000 ALTER TABLE `biblioteca` DISABLE KEYS */;
INSERT  IGNORE INTO `biblioteca` VALUES (1,'Quevedo','calle San Martín 7, Logroño',933108762),(2,'Cervantes','plaza de Colón 22, Arnedo',940190304),(3,'Baroja','calle Campanario 36, Villamediana',957216424),(4,'Unamuno','plaza San Martín 16, Logroño',919682228),(5,'Ortega','avenida San Martín 9, Villamediana',996102921);
/*!40000 ALTER TABLE `biblioteca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editorial`
--

DROP TABLE IF EXISTS `editorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editorial` (
  `nombre` varchar(40) NOT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `tfno` int DEFAULT NULL,
  PRIMARY KEY (`nombre`),
  UNIQUE KEY `UN_editorial` (`tfno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editorial`
--

LOCK TABLES `editorial` WRITE;
/*!40000 ALTER TABLE `editorial` DISABLE KEYS */;
INSERT  IGNORE INTO `editorial` VALUES ('Buenda','avenida de la República 3, Barcelona',932098693),('El feriante','avenida Campanario 42, A Corua',924343068),('El molino','plaza Teresa de Calcta 6, Valencia',997050824),('Galera','plaza Pérez Galdós 19, Valladolid',988650997),('La ruleta','avenida Campanario 31, Madrid',959775815),('Lorca','plaza Ramón y Cajal 11, Barcelona',972896540),('Mundo literario','calle San Martín 44, Zaragoza',956923854),('Nuevos tiempos','avenida de la República 5, Valencia',952540466),('Pergamino','plaza Teresa de Calcúta 17, Valladolid',992392105),('Prado','calle de Colón 35, Málaga',970808433);
/*!40000 ALTER TABLE `editorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ejemplar`
--

DROP TABLE IF EXISTS `ejemplar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ejemplar` (
  `libro` int NOT NULL,
  `ejemplar` int NOT NULL,
  `biblioteca` int NOT NULL,
  `fecha_solicitud` date DEFAULT NULL,
  `fecha_compra` date DEFAULT NULL,
  PRIMARY KEY (`libro`,`ejemplar`),
  KEY `FK_ejemplar_biblioteca` (`biblioteca`),
  CONSTRAINT `FK_ejemplar_biblioteca` FOREIGN KEY (`biblioteca`) REFERENCES `biblioteca` (`id`),
  CONSTRAINT `FK_ejemplar_libro` FOREIGN KEY (`libro`) REFERENCES `libro` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejemplar`
--

LOCK TABLES `ejemplar` WRITE;
/*!40000 ALTER TABLE `ejemplar` DISABLE KEYS */;
INSERT  IGNORE INTO `ejemplar` VALUES (1,1,2,'2005-07-05','2005-08-07'),(1,2,2,'2008-04-02','2008-05-21'),(1,3,2,'2005-06-23','2005-07-20'),(1,4,2,'2000-01-14','2000-02-26'),(2,1,3,'2007-12-11','2008-02-08'),(2,2,3,'2007-12-31','2008-01-30'),(2,3,2,'2004-04-11','2004-06-16'),(3,1,4,'1987-11-28','1988-01-11'),(3,2,2,'1984-04-14','1984-06-24'),(4,1,3,'2000-05-02','2000-05-12'),(5,1,1,'1997-12-03','1998-02-04'),(5,2,2,'1994-09-30','1994-11-26'),(5,3,4,'2003-08-16','2003-09-13'),(5,4,2,'2001-06-21','2001-07-03'),(6,1,2,'1988-08-09','1988-08-23'),(7,1,4,'2007-02-03','2007-04-08'),(7,2,4,'2000-11-28','2001-02-01'),(8,1,3,'2007-01-11','2007-01-22'),(9,1,1,'2008-05-03','2008-06-19'),(9,2,3,'2007-01-10','2007-01-11'),(9,3,2,'2005-10-05','2005-10-09'),(9,4,3,'2006-09-14','2006-10-27'),(10,1,1,'2000-02-18','2000-02-21'),(10,2,1,'2008-09-22','2008-09-30'),(11,1,2,'2004-08-23','2004-10-04'),(11,2,2,'2007-06-27','2007-08-05'),(11,3,4,'2007-02-25','2007-04-27'),(11,4,2,'2005-03-06','2005-05-18'),(12,1,1,'1990-08-08','1990-09-17'),(12,2,2,'1993-09-21','1993-10-26'),(12,3,2,'2003-06-07','2003-06-20'),(13,1,3,'2007-07-11','2007-07-19'),(13,2,1,'2003-11-19','2004-01-20'),(13,3,4,'2004-08-24','2004-08-26'),(14,1,2,'2001-12-13','2002-01-13'),(14,2,3,'2000-01-22','2000-02-02'),(14,3,4,'1996-05-08','1996-06-23'),(15,1,4,'2002-03-13','2002-05-15'),(16,1,2,'1993-06-25','1993-07-19'),(16,2,3,'1989-11-22','1990-01-19'),(16,3,3,'1992-11-28','1992-12-19'),(17,1,2,'2008-08-31','2008-10-17'),(17,2,1,'1999-05-19','1999-07-03'),(17,3,4,'2001-11-08','2001-12-08'),(17,4,4,'2003-02-11','2003-03-18'),(18,1,1,'2007-06-01','2007-06-12'),(18,2,4,'2004-03-10','2004-05-07'),(18,3,2,'2008-09-21','2008-11-27'),(19,1,2,'2001-10-15','2001-12-25'),(20,1,4,'2005-04-05','2005-06-18'),(20,2,1,'2004-10-23','2004-11-30'),(20,3,1,'2007-07-30','2007-10-07'),(20,4,1,'2000-08-05','2000-09-25'),(21,1,1,'2006-09-13','2006-09-23'),(21,2,3,'2005-02-07','2005-04-15'),(22,1,2,'1989-12-02','1990-01-20'),(22,2,4,'1994-02-24','1994-04-30'),(22,3,4,'2008-03-05','2008-05-11'),(22,4,4,'2004-08-15','2004-08-31'),(23,1,2,'2007-06-06','2007-08-12'),(23,2,3,'2000-01-12','2000-03-11'),(23,3,1,'2001-04-11','2001-05-21'),(24,1,1,'2002-08-17','2002-11-02'),(25,1,4,'1995-08-11','1995-10-02'),(25,2,4,'2008-07-10','2008-09-22'),(26,1,4,'1998-01-13','1998-02-17'),(26,2,1,'2002-07-20','2002-09-08'),(27,1,3,'2005-04-10','2005-04-22'),(27,2,1,'2008-08-16','2008-10-30'),(28,1,3,'1995-02-04','1995-03-12'),(28,2,4,'1993-09-07','1993-09-27'),(29,1,4,'2005-11-09','2005-12-03'),(29,2,4,'2004-02-19','2004-04-07'),(29,3,1,'1998-06-21','1998-08-05'),(30,1,3,'2000-11-18','2001-01-31'),(30,2,1,'2006-03-18','2006-05-23'),(31,1,1,'2006-01-08','2006-01-11'),(32,1,2,'2001-03-20','2001-06-02'),(32,2,1,'2004-02-19','2004-04-20'),(33,1,1,'2006-04-24','2006-07-13'),(33,2,3,'2002-02-22','2002-03-13'),(33,3,4,'2001-10-03','2001-10-08'),(34,1,4,'2008-03-26','2008-05-05'),(34,2,2,'2000-09-01','2000-11-13'),(34,3,4,'1998-02-21','1998-04-02'),(34,4,3,'2003-04-09','2003-05-05'),(36,1,4,'1997-09-01','1997-09-29'),(37,1,1,'2006-12-18','2006-12-22'),(38,1,4,'2008-07-29','2008-08-28'),(39,1,4,'2002-08-15','2002-10-29'),(39,2,2,'2006-10-23','2007-01-07'),(39,3,1,'2007-01-06','2007-03-01'),(40,1,3,'2000-07-30','2000-08-08'),(40,2,3,'2004-05-05','2004-06-22'),(41,1,2,'2007-06-29','2007-09-15'),(41,2,4,'2007-05-21','2007-08-05'),(41,3,1,'2007-06-25','2007-09-13'),(41,4,2,'2007-02-20','2007-04-27'),(42,1,3,'2000-03-13','2000-03-14'),(42,2,2,'1996-03-03','1996-04-21'),(42,3,2,'2005-04-30','2005-07-01'),(42,4,1,'2002-10-10','2002-11-12'),(43,1,2,'1998-02-03','1998-03-26'),(43,2,2,'2002-05-03','2002-07-09'),(44,1,2,'1999-08-07','1999-08-29'),(44,2,4,'2007-11-23','2008-02-07'),(44,3,4,'1997-09-09','1997-09-23'),(45,1,2,'2003-12-25','2004-02-02'),(46,1,3,'2008-06-29','2008-09-17'),(46,2,2,'2008-02-19','2008-04-18'),(46,3,2,'2007-03-14','2007-05-21'),(47,1,2,'2004-05-24','2004-06-08'),(47,2,2,'2007-05-29','2007-06-21'),(47,3,2,'2008-10-22','2008-11-09'),(48,1,1,'2008-03-05','2008-04-21'),(49,1,2,'1990-05-01','1990-05-08'),(49,2,2,'1985-02-18','1985-04-06'),(49,3,2,'2000-03-21','2000-05-16'),(50,1,1,'2005-04-08','2005-04-14'),(50,2,1,'2003-04-24','2003-06-14'),(51,1,2,'2005-06-10','2005-07-23'),(51,2,1,'2003-01-21','2003-01-30'),(51,3,4,'2007-01-13','2007-02-11'),(53,1,3,'2005-02-22','2005-05-01'),(53,2,2,'2007-05-08','2007-07-13'),(53,3,2,'2006-12-31','2007-01-05'),(54,1,1,'2008-03-14','2008-05-27'),(54,2,2,'2008-10-13','2008-11-20'),(54,3,3,'2008-02-17','2008-04-21'),(55,1,3,'2008-08-07','2008-10-07'),(55,2,2,'2008-11-01','2009-01-15'),(55,3,3,'2007-09-13','2007-10-06'),(56,1,2,'2006-08-05','2006-10-20'),(56,2,4,'2007-11-15','2008-01-02'),(57,1,4,'2003-11-13','2004-01-10'),(57,2,4,'2005-12-24','2006-01-30'),(57,3,3,'1994-06-17','1994-07-05'),(57,4,4,'1990-07-12','1990-07-24'),(58,1,2,'2004-12-07','2005-01-04'),(58,2,4,'2005-02-01','2005-04-18'),(58,3,1,'2008-08-03','2008-09-01'),(58,4,4,'2005-06-26','2005-07-12'),(59,1,1,'1990-06-06','1990-07-03'),(59,2,4,'1991-01-22','1991-02-12'),(59,3,2,'1990-05-21','1990-06-13'),(60,1,3,'2006-07-04','2006-08-09'),(60,2,4,'2008-01-31','2008-03-06'),(60,3,3,'2006-08-15','2006-09-23'),(61,1,3,'2006-08-19','2006-09-18'),(61,2,4,'2007-12-18','2007-12-21'),(61,3,1,'2002-03-31','2002-04-16'),(61,4,1,'2007-03-13','2007-03-21'),(62,1,1,'2008-05-09','2008-07-27'),(63,1,2,'2008-02-27','2008-03-13'),(63,2,4,'2008-11-16','2009-01-03'),(63,3,2,'2008-01-15','2008-03-22'),(64,1,2,'2000-10-03','2000-12-01'),(64,2,4,'2005-08-15','2005-08-29'),(65,1,4,'2008-06-08','2008-08-04'),(65,2,4,'2008-01-03','2008-02-28'),(66,1,4,'2003-09-12','2003-09-20'),(67,1,3,'2008-11-20','2009-01-18'),(67,2,2,'2008-03-08','2008-03-09'),(67,3,4,'2006-09-30','2006-11-22'),(67,4,2,'2007-05-07','2007-06-04'),(68,1,1,'2003-08-19','2003-09-18'),(69,1,1,'2001-11-18','2002-01-15'),(69,2,2,'2006-07-09','2006-08-03'),(69,3,1,'1999-03-13','1999-05-02'),(69,4,3,'2002-11-10','2003-01-11'),(70,1,1,'2005-04-15','2005-04-17'),(70,2,3,'2004-01-31','2004-02-11'),(70,3,1,'2001-03-30','2001-04-06'),(70,4,2,'2002-09-01','2002-09-30'),(71,1,1,'2008-01-17','2008-03-22'),(71,2,4,'2007-06-15','2007-08-25'),(72,1,1,'1994-02-20','1994-05-05'),(73,1,4,'2007-07-29','2007-08-05'),(74,1,4,'2003-11-15','2004-01-27'),(74,2,3,'2002-08-10','2002-08-16'),(74,3,1,'2005-04-27','2005-06-23'),(75,1,2,'1994-11-19','1994-12-14'),(76,1,2,'2004-07-26','2004-07-31'),(77,1,2,'1996-01-18','1996-03-31'),(77,2,1,'1996-11-17','1997-01-24'),(77,3,2,'1999-04-19','1999-05-27'),(77,4,1,'1998-09-14','1998-10-18'),(78,1,4,'2007-07-30','2007-08-16'),(78,2,4,'2007-06-14','2007-08-24'),(78,3,4,'2007-11-04','2008-01-10'),(79,1,2,'2001-06-24','2001-08-27'),(79,2,4,'2007-05-06','2007-06-23'),(79,3,3,'2003-08-18','2003-09-29'),(79,4,3,'2003-07-24','2003-08-13'),(80,1,4,'2004-10-19','2004-11-02'),(80,2,1,'2007-07-30','2007-10-07'),(80,3,2,'2008-07-31','2008-08-04'),(81,1,4,'1984-01-16','1984-03-23'),(82,1,4,'2006-12-10','2007-01-12'),(83,1,2,'1998-03-13','1998-05-30'),(83,2,1,'2001-07-21','2001-08-07'),(84,1,1,'2008-07-14','2008-07-28'),(84,2,4,'2005-12-22','2006-02-13'),(84,3,1,'2000-03-30','2000-05-31'),(85,1,3,'1998-12-28','1999-02-28'),(85,2,3,'1997-01-12','1997-03-10'),(85,3,4,'2004-09-03','2004-11-22'),(85,4,2,'2004-10-09','2004-12-19'),(86,1,4,'2007-09-20','2007-10-09'),(87,1,1,'1999-06-03','1999-08-05'),(87,2,3,'1999-04-06','1999-06-11'),(87,3,3,'2001-12-06','2001-12-28'),(87,4,2,'1993-09-24','1993-11-11'),(88,1,3,'1990-06-16','1990-06-19'),(88,2,4,'2003-06-20','2003-08-28'),(88,3,3,'1995-07-22','1995-09-21'),(88,4,4,'2007-10-28','2007-12-13'),(89,1,2,'1993-09-25','1993-12-11'),(89,2,1,'2008-06-02','2008-07-10'),(89,3,1,'2003-09-01','2003-11-13'),(89,4,1,'2001-01-10','2001-01-25'),(90,1,3,'2005-07-18','2005-09-02'),(91,1,2,'2003-05-13','2003-07-04'),(92,1,2,'2005-09-06','2005-10-18'),(93,1,1,'1997-12-12','1998-02-20'),(94,1,1,'1998-08-23','1998-10-27'),(94,2,2,'2003-03-29','2003-05-16'),(95,1,4,'2004-06-01','2004-07-28'),(95,2,3,'2008-10-03','2008-10-28'),(95,3,1,'2007-07-08','2007-08-26'),(95,4,1,'2004-04-05','2004-05-03'),(96,1,4,'2007-06-27','2007-07-19'),(97,1,4,'2007-08-11','2007-09-21'),(98,1,4,'2005-12-23','2006-03-09'),(98,2,3,'2007-02-24','2007-03-03'),(98,3,1,'2000-03-23','2000-05-10'),(99,1,4,'2008-03-07','2008-04-25'),(99,2,1,'2007-10-17','2007-12-16'),(100,1,1,'2007-10-06','2007-11-16'),(101,1,1,'2007-04-05','2007-06-07'),(101,2,3,'2002-10-04','2002-11-20'),(102,1,4,'2003-09-30','2003-11-19'),(103,1,2,'2007-01-10','2007-03-12');
/*!40000 ALTER TABLE `ejemplar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lector`
--

DROP TABLE IF EXISTS `lector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lector` (
  `id` int NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellidos` varchar(30) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `tfno` int DEFAULT NULL,
  `fecha_inscripcion` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lector`
--

LOCK TABLES `lector` WRITE;
/*!40000 ALTER TABLE `lector` DISABLE KEYS */;
INSERT  IGNORE INTO `lector` VALUES (1,'Alicia','Indar Ramos','calle del Centenario 17, Alfaro',941849488,'1999-05-01'),(2,'Oscar','Indar Xala','calle Ramón y Cajal 13, Alfaro',991114588,'1983-11-24'),(3,'Zulema','Domínguez Urquijo','avenida San Martín 3, Logroño',966483001,'1991-07-23'),(4,'Eloy','Peñafiel Seoane','calle de la Constitución 39, Fuenmayor',963805839,'2005-06-10'),(5,'Gloria','Ramos Vega','avenida Pérez Galdós 8, Anguiano',913104159,'2004-05-18'),(6,'Victoria','Lumbreras Vega','plaza de Colón 35, Logroño',993801489,'2000-07-20'),(7,'Gloria','Juaristi Washington','avenida de Colón 21, Alberite',998281664,'1997-11-27'),(8,'Lorenzo','Peñafiel Vega','avenida San Martín 29, Villamediana',977564774,'1983-04-08'),(9,'Tania','Indar Lumbreras','calle del Centenario 6, Nalda',981557951,'1992-05-22'),(10,'Carmen','Antoana Lumbreras','calle de la Constitución 35, Logroño',906970067,'1986-03-30'),(11,'Oscar','Antoana Antoana','plaza del Centenario 3, Alfaro',962354310,'1996-01-12'),(12,'Carmen','Zugasti Domínguez','avenida Urdaneta 34, Lardero',950065983,'2003-03-23'),(13,'Yolanda','Folgado Xala','avenida Ramón y Cajal 2, Alberite',918840430,'2006-11-03'),(14,'Victoria','Erdocia Gil','plaza San Martín 15, Calahorra',956591656,'1999-07-02'),(15,'Yolanda','Ramos Domínguez','calle del Centenario 4, Anguiano',938647915,'1986-04-11'),(16,'Dolores','Zugasti Benitez','avenida Teresa de Calcúta 29, Fuenmayor',938213192,'2000-12-07'),(17,'Alicia','Peafiel Ramos','avenida de la República 7, Nalda',993816910,'1980-04-02'),(18,'Carmen','Xala Herce','calle de la Constitución 15, Anguiano',994759939,'1999-05-11'),(19,'Manuel','Zugasti Novoa','avenida Urdaneta 11, Logroño',920911303,'2001-07-29'),(20,'Nestor','Zugasti Mendoza','avenida Pérez Galdós 9, Logroño',919930523,'2000-04-11'),(21,'Victoria','Zugasti Lumbreras','calle del Centenario 9, Lardero',964435816,'1987-09-08'),(22,'Alicia','Mendoza Lumbreras','calle de la República 5, Anguiano',963712802,'1993-06-04'),(23,'Lorenzo','Seoane Juaristi','avenida de la República 6, Logroño',958297683,'1996-01-20'),(24,'Katia','Folgado Juaristi','avenida Urdaneta 13, Alfaro',921254468,'2004-10-09'),(25,'Eloy','Indar Novoa','calle Teresa de Calcúta 16, Alberite',972736235,'1994-03-06'),(26,'Blas','Erdocia Benitez','plaza Teresa de Calcúta 13, Logroño',998346750,'1980-04-12'),(27,'Silvia','Erdocia Yaez','calle de la Constitución 20, Alfaro',991201785,'1989-05-13'),(28,'Tania','Benitez Juaristi','avenida Pérez Galdós 42, Albelda',934454077,'2006-12-31'),(29,'Lorenzo','Urquijo Domínguez','calle del Centenario 34, Fuenmayor',935621540,'1991-10-09'),(30,'Herminia','Colmenar Washington','plaza San Martín 36, Agoncillo',994098212,'1999-10-06'),(31,'Katia','Olmedilla Kramm','avenida de la República 31, Fuenmayor',909811763,'1996-05-21'),(32,'Herminia','Yaez Novoa','calle Ramón y Cajal 36, Lardero',965177966,'1980-12-06'),(33,'Alicia','Benitez Washington','plaza Campanario 48, Arnedo',991693759,'1982-12-07'),(34,'Querubina','Urquijo Zugasti','calle Teresa de Calcúta 49, Anguiano',945548188,'1993-01-27'),(35,'Lorenzo','Tejada Ramos','plaza Pérez Galdós 35, Cervera',904032533,'1994-01-08'),(36,'Nestor','Vega Washington','avenida Campanario 47, Berceo',928909851,'1996-09-26'),(37,'Eloy','Herce Novoa','plaza de la República 46, Logroño',952921460,'1981-07-16'),(38,'Gloria','Mendoza Peafiel','plaza San Martín 44, Fuenmayor',909940441,'2002-04-12'),(39,'Zulema','Herce Quincoces','calle San Martín 22, Agoncillo',912455421,'1993-05-03'),(40,'Tania','Yaez Kramm','plaza Ramón y Cajal 50, Logroño',924864034,'1981-09-04'),(41,'Carmen','Vega Vega','avenida Teresa de Calcúta 2, Cervera',933064823,'1993-06-22'),(42,'Gloria','Urquijo Zugasti','calle Campanario 10, Berceo',933476408,'1986-01-26'),(43,'Roberto','Xala Olmedilla','calle de la Constitución 6, Albelda',937110611,'1990-11-08'),(44,'Lorenzo','Lumbreras Zugasti','calle Campanario 22, Alfaro',973126853,'1995-07-19'),(45,'Blas','Xala Herce','plaza Teresa de Calcúta 2, Lardero',986126374,'2002-03-24'),(46,'Jaione','Washington Vega','plaza Teresa de Calcúta 16, Logroño',970793581,'2002-03-02'),(47,'Fátima','Herce Peafiel','calle Urdaneta 13, Logroño',936193165,'1991-02-15'),(48,'Pascual','Peafiel Zugasti','avenida Urdaneta 22, Alfaro',974125948,'1983-09-13'),(49,'Irene','Urquijo Benitez','calle del Centenario 9, Alberite',903915547,'2006-02-02'),(50,'Jaione','Urquijo Erdocia','calle del Centenario 48, Logroño',995766188,'1994-08-23'),(51,'Blas','Olmedilla Urquijo','calle San Martín 7, Lardero',968021298,'1985-07-08'),(52,'Ursula','Xala Gil','calle Ramón y Cajal 32, Berceo',946815653,'2004-09-26'),(53,'Manuel','Juaristi Urquijo','avenida San Martín 45, Lardero',965655521,'1991-11-26'),(54,'Katia','Folgado Juaristi','calle de Colón 38, Calahorra',910894669,'2003-05-07'),(55,'Oscar','Xala Gil','avenida Teresa de Calcúta 1, Lardero',931114648,'1991-11-28'),(56,'Lorenzo','Xala Gil','plaza de Colón 30, Berceo',988379794,'1989-05-05'),(57,'Pascual','Benitez Washington','calle Campanario 24, Lardero',996588765,'1985-05-29'),(58,'Pascual','Benitez Washington','plaza Ramón y Cajal 25, Lardero',970690312,'1985-10-20'),(59,'Katia','Yaez Colmenar','avenida Urdaneta 22, Alfaro',974125948,'1986-07-08'),(60,'Pascual','Mendoza Urquijo','avenida Urdaneta 22, Alfaro',974125948,'2004-02-14'),(61,'Carmen','Quincoces Peafiel','avenida Pérez Galdós 8, Anguiano',930522336,'2005-08-29'),(62,'Roberto','Vega Juaristi','avenida Pérez Galdós 8, Anguiano',961062794,'1991-01-20'),(63,'Mariano','Tejada Baez','avenida de La Rioja 6, Tudelilla',961062794,'1991-01-20');
/*!40000 ALTER TABLE `lector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libro` (
  `id` int NOT NULL,
  `titulo` varchar(40) DEFAULT NULL,
  `editorial` varchar(40) DEFAULT NULL,
  `año` int DEFAULT NULL,
  `peso` int DEFAULT NULL,
  `paginas` int DEFAULT NULL,
  `precio` int DEFAULT NULL,
  `primer_solicitante` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_libro_editorial` (`editorial`),
  KEY `FK_libro_lector` (`primer_solicitante`),
  CONSTRAINT `FK_libro_editorial` FOREIGN KEY (`editorial`) REFERENCES `editorial` (`nombre`),
  CONSTRAINT `FK_libro_lector` FOREIGN KEY (`primer_solicitante`) REFERENCES `lector` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT  IGNORE INTO `libro` VALUES (1,'Mañana lejana','Pergamino',2000,630,808,29,NULL),(2,'El libro de jade','Galera',2002,NULL,421,NULL,NULL),(3,'Sangre de abril','Lorca',1981,913,754,NULL,32),(4,'Sábana lejana','La ruleta',1986,329,277,NULL,NULL),(5,'Despertar dorado','Pergamino',1981,218,NULL,NULL,25),(6,'La senda brumosa','Nuevos tiempos',1986,864,753,21,NULL),(7,'La cámara oculta','Nuevos tiempos',1982,53,344,62,50),(8,'Cuestión misteriosa','Nuevos tiempos',1984,456,114,NULL,21),(9,'Cuestión brumosa','Prado',2005,510,441,70,NULL),(10,'Mundo santo','Galera',2000,NULL,367,NULL,NULL),(11,'Mañana de las amapolas','La ruleta',1994,459,790,NULL,NULL),(12,'La patrulla oculta','Lorca',1988,305,578,NULL,NULL),(13,'La cámara embrujada','La ruleta',1998,894,576,16,NULL),(14,'Sangre de las amapolas','Lorca',1987,194,900,56,27),(15,'El vellocino brumoso','El feriante',1995,761,749,67,26),(16,'El libro de las amapolas','La ruleta',1988,689,311,79,NULL),(17,'Despertar brumoso','La ruleta',1993,NULL,443,39,33),(18,'Sábana de las amapolas','Galera',2001,622,148,79,21),(19,'La pantera de los inocentes','Galera',1992,699,131,26,NULL),(20,'El vellocino dorado','Galera',2000,423,NULL,60,40),(21,'El espectáculo de las nieves','Pergamino',1998,389,150,54,51),(22,'La espada lejana','Buenda',1981,NULL,410,48,56),(23,'La pantera oculta','Pergamino',1982,617,734,66,27),(24,'La compaña oculta','La ruleta',1987,951,313,NULL,44),(25,'La patrulla brumosa','Lorca',1994,768,NULL,NULL,NULL),(26,'Sábana de las nieves','El feriante',1988,403,749,NULL,11),(27,'La patrulla de las amapolas','Lorca',1986,44,627,NULL,24),(28,'La compaña de los horrores','La ruleta',1985,696,277,48,58),(29,'El libro de abril','Galera',1982,975,232,20,NULL),(30,'El vellocino de abril','Mundo literario',1999,803,194,99,NULL),(31,'La cripta de abril','El feriante',2006,690,730,39,2),(32,'Sangre santa','Lorca',1997,186,NULL,20,NULL),(33,'La cámara brumosa','Nuevos tiempos',1984,NULL,677,66,41),(34,'Sangre de las amapolas','El feriante',1997,626,868,17,35),(35,'Misterio perdido','La ruleta',1989,647,801,80,NULL),(36,'El vellocino embrujado','Buenda',1997,409,NULL,85,NULL),(37,'Mañana perdida','Lorca',2002,NULL,904,33,NULL),(38,'Cuestión oculta','El feriante',2008,722,775,55,NULL),(39,'La espada de Damocles','El feriante',1997,700,792,79,41),(40,'Mundo de jade','Mundo literario',1997,NULL,978,NULL,11),(41,'El vellocino de las nieves','La ruleta',2006,611,709,70,NULL),(42,'La espada de abril','Galera',1992,NULL,883,NULL,NULL),(43,'La cripta oculta','Buenda',1992,NULL,962,NULL,36),(44,'El puente oculto','Nuevos tiempos',1997,517,949,52,NULL),(45,'La compaña santa','Pergamino',1996,515,102,61,18),(46,'Sangre oculta','Mundo literario',1984,97,301,62,4),(47,'La patrulla dorada','Buenda',1995,NULL,NULL,NULL,46),(48,'El vellocino santo','La ruleta',2008,460,723,NULL,NULL),(49,'La pantera lejana','Prado',1982,555,NULL,19,NULL),(50,'La verdad brumosa','Nuevos tiempos',2000,791,653,NULL,62),(51,'Sangre de los horrores','Nuevos tiempos',2003,386,NULL,84,21),(52,'El vellocino perdido','La ruleta',1982,814,NULL,74,NULL),(53,'La cripta de las nieves','Mundo literario',2003,715,561,NULL,NULL),(54,'El puente santo','Prado',2008,315,699,22,NULL),(55,'El puente perdido','Lorca',1989,914,22,63,49),(56,'La espada embrujada','Pergamino',1995,220,866,30,60),(57,'La patrulla de los inocentes','Nuevos tiempos',1988,688,96,NULL,NULL),(58,'La pantera lejana','Galera',1985,658,735,11,12),(59,'Cuestión santa','Mundo literario',1989,379,NULL,63,NULL),(60,'La compaña de las amapolas','Galera',2006,991,905,64,NULL),(61,'Misterio oculto','El feriante',1997,554,279,47,NULL),(62,'Sangre brumosa','La ruleta',2003,NULL,496,NULL,NULL),(63,'La compaña de jade','Pergamino',2008,60,NULL,NULL,53),(64,'La espada santa','La ruleta',1999,162,874,71,48),(65,'Mañana de abril','Buenda',2008,65,327,24,NULL),(66,'Sábana dorada','Prado',1990,901,62,15,20),(67,'La verdad de los inocentes','Nuevos tiempos',2004,860,399,13,3),(68,'Mañana de las nieves','Lorca',1992,NULL,890,76,NULL),(69,'El puente dorado','La ruleta',1998,130,373,NULL,NULL),(70,'Despertar santo','Pergamino',2001,883,316,NULL,48),(71,'La espada brumosa','La ruleta',2007,214,854,36,NULL),(72,'Sábana brumosa','Prado',1981,944,608,21,NULL),(73,'La compaña dorada','La ruleta',2001,493,NULL,61,12),(74,'El espectáculo oculto','Buenda',2000,419,812,68,NULL),(75,'El vellocino oculto','Prado',1991,984,30,90,NULL),(76,'Mundo de las amapolas','Pergamino',1986,406,21,32,27),(77,'Sábana embrujada','Galera',1996,NULL,617,NULL,NULL),(78,'El espectáculo misterioso','Pergamino',2007,576,NULL,NULL,NULL),(79,'El puente de la raza','Buenda',2001,NULL,819,86,41),(80,'La cripta perdida','La ruleta',2001,186,340,49,NULL),(81,'Cuestión de las amapolas','Nuevos tiempos',1984,NULL,999,45,NULL),(82,'Despertar de las amapolas','Galera',1995,NULL,151,95,19),(83,'Misterio brumoso','Mundo literario',1989,159,NULL,NULL,NULL),(84,'Sábana oculta','Galera',2000,426,204,89,NULL),(85,'Mañana perdida','Lorca',1989,278,56,94,NULL),(86,'Sangre de Damocles','Lorca',2006,881,534,NULL,50),(87,'Mañana brumosa','Pergamino',1991,473,871,NULL,NULL),(88,'El espectáculo de las amapolas','Galera',1983,349,259,47,21),(89,'El espectáculo dorado','Prado',1987,596,108,34,NULL),(90,'Mañana de las amapolas','Nuevos tiempos',2003,506,758,78,NULL),(91,'La cámara santa','Galera',2001,31,975,NULL,23),(92,'La verdad perdida','Pergamino',2003,NULL,NULL,NULL,NULL),(93,'Cuestión dorada','Galera',1995,800,829,68,51),(94,'El puente brumoso','La ruleta',1991,251,821,59,NULL),(95,'La verdad santa','Pergamino',1996,772,NULL,NULL,60),(96,'Mañana de las amapolas','Prado',2005,NULL,517,64,NULL),(97,'Despertar del océano','El feriante',2000,408,796,86,NULL),(98,'El libro de los inocentes','Pergamino',1997,895,877,18,51),(99,'El libro de los horrores','La ruleta',2007,NULL,NULL,NULL,NULL),(100,'Sábana perdida','El feriante',2007,457,NULL,NULL,NULL),(101,'El espectáculo brumoso','Mundo literario',1986,470,673,31,57),(102,'La patrulla misteriosa','Nuevos tiempos',2003,465,856,53,57),(103,'La cámara perdida','Galera',1983,433,223,26,NULL),(104,'Misterio de Damocles','La ruleta',2007,NULL,NULL,27,57);
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamo`
--

DROP TABLE IF EXISTS `prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamo` (
  `libro` int NOT NULL,
  `ejemplar` int NOT NULL,
  `fecha_prestado` date NOT NULL,
  `fecha_devuelto` date DEFAULT NULL,
  `lector` int NOT NULL,
  PRIMARY KEY (`libro`,`ejemplar`,`fecha_prestado`),
  KEY `FK_prestamo_lector` (`lector`),
  CONSTRAINT `FK_prestamo_ejemplar` FOREIGN KEY (`libro`, `ejemplar`) REFERENCES `ejemplar` (`libro`, `ejemplar`),
  CONSTRAINT `FK_prestamo_lector` FOREIGN KEY (`lector`) REFERENCES `lector` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamo`
--

LOCK TABLES `prestamo` WRITE;
/*!40000 ALTER TABLE `prestamo` DISABLE KEYS */;
INSERT  IGNORE INTO `prestamo` VALUES (1,1,'2005-07-28','2005-08-12',20),(1,1,'2005-12-10','2005-12-17',56),(1,1,'2006-08-25','2006-08-30',49),(1,1,'2006-09-02','2006-09-12',61),(1,2,'2008-07-22','2008-07-30',2),(1,2,'2008-11-22','2008-12-02',38),(1,2,'2008-12-27','2008-12-31',27),(1,2,'2009-01-10','2009-01-17',15),(1,2,'2009-01-20','2009-01-21',55),(1,3,'2007-03-13','2007-03-21',28),(1,3,'2007-06-29','2007-07-15',17),(1,3,'2007-08-01','2007-08-21',20),(1,3,'2008-01-21','2008-01-23',11),(1,3,'2008-01-27','2008-02-01',44),(1,4,'2003-03-24','2003-04-11',23),(1,4,'2004-06-20','2004-06-25',55),(1,4,'2005-02-07','2005-02-12',43),(2,1,'2008-03-30','2008-04-12',23),(2,1,'2008-07-13','2008-07-17',17),(2,1,'2008-07-21','2008-07-27',56),(2,1,'2008-09-15','2008-09-19',58),(2,1,'2008-11-06','2008-11-27',19),(2,2,'2008-04-05','2008-04-10',8),(2,2,'2008-07-26','2008-08-13',40),(2,3,'2006-05-02','2006-05-23',27),(2,3,'2007-02-27','2007-03-18',61),(3,1,'1998-02-11','1998-02-17',3),(3,1,'2000-12-16','2000-12-27',55),(3,2,'1986-07-18','1986-08-08',58),(3,2,'1996-04-13','1996-04-16',51),(5,2,'1997-05-15','1997-06-04',37),(5,2,'2002-10-11','2002-10-21',56),(5,4,'2003-04-28','2003-05-04',8),(5,4,'2005-01-06','2005-01-11',43),(5,4,'2006-11-03','2006-11-21',17),(5,4,'2007-04-30','2007-05-19',50),(6,1,'1989-02-01','1989-02-11',2),(6,1,'1998-12-27','1999-01-03',8),(6,1,'2000-03-07','2000-03-09',51),(6,1,'2003-03-10','2003-03-16',1),(6,1,'2003-12-30',NULL,41),(6,1,'2008-04-20',NULL,8),(7,1,'2007-04-13','2007-04-28',11),(7,1,'2007-12-25','2007-12-31',14),(7,1,'2008-02-20','2008-03-11',38),(7,1,'2008-04-18','2008-04-24',55),(7,2,'2001-04-28','2001-05-02',15),(8,1,'2007-06-22','2007-07-05',49),(8,1,'2007-09-08','2007-09-25',24),(9,2,'2007-11-19','2007-12-01',21),(9,2,'2007-12-27','2007-12-28',30),(9,2,'2008-05-27','2008-05-30',7),(9,2,'2008-07-30','2008-08-15',41),(9,3,'2006-11-29','2006-12-14',43),(9,3,'2007-12-18','2008-01-05',43),(9,3,'2008-02-09','2008-02-28',59),(9,3,'2008-06-28','2008-07-14',3),(9,3,'2008-08-24','2008-09-11',57),(10,2,'2008-11-30','2008-12-01',10),(10,2,'2009-01-09','2009-01-25',20),(11,1,'2004-11-02','2004-11-03',40),(11,1,'2006-03-18','2006-04-02',59),(11,3,'2007-09-24','2007-10-09',49),(11,4,'2005-05-12','2005-05-23',10),(11,4,'2006-02-08','2006-02-10',34),(11,4,'2007-07-08','2007-07-21',1),(11,4,'2007-08-25','2007-09-14',9),(12,1,'1998-05-19','1998-06-07',39),(12,1,'1998-10-31','1998-11-03',22),(12,1,'2001-10-10','2001-10-11',44),(12,1,'2004-01-08','2004-01-20',29),(12,1,'2005-10-12','2005-11-01',23),(13,1,'2007-12-29','2008-01-10',39),(13,1,'2008-05-21','2008-05-30',1),(14,1,'2003-10-18','2003-11-05',54),(14,1,'2006-06-01','2006-06-07',23),(14,1,'2006-06-25','2006-07-09',59),(14,1,'2007-04-01',NULL,33),(14,2,'2002-04-19','2002-04-27',8),(14,2,'2003-08-14','2003-08-27',12),(14,2,'2005-06-26','2005-06-28',24),(14,2,'2005-12-23','2005-12-24',27),(14,2,'2007-03-07','2007-03-09',5),(14,3,'2002-09-05','2002-09-15',2),(14,3,'2005-03-13','2005-03-21',52),(14,3,'2006-08-03','2006-08-21',24),(15,1,'2005-04-04','2005-04-08',45),(16,1,'1999-07-19','1999-07-21',48),(16,2,'1989-11-25','1989-12-13',48),(16,2,'1999-07-04','1999-07-15',37),(16,2,'2001-05-24','2001-06-08',51),(16,2,'2001-10-21','2001-10-22',20),(16,2,'2002-04-02','2002-04-10',30),(16,3,'2000-01-13','2000-01-30',17),(17,1,'2008-11-27','2008-12-15',1),(17,2,'2001-07-01','2001-07-19',55),(17,2,'2003-11-07','2003-11-16',10),(17,2,'2006-04-11','2006-04-30',45),(17,2,'2007-06-27','2007-07-10',10),(17,2,'2007-12-22',NULL,20),(17,3,'2002-04-19','2002-05-03',25),(17,4,'2003-03-09','2003-03-19',11),(18,1,'2007-07-08','2007-07-24',23),(18,2,'2004-06-02','2004-06-18',38),(18,2,'2005-09-03','2005-09-22',59),(18,3,'2008-09-27','2008-10-14',12),(18,3,'2008-12-16','2008-12-27',60),(20,2,'2005-12-06','2005-12-07',12),(20,2,'2006-09-13','2006-09-30',3),(20,2,'2007-08-19','2007-09-01',23),(20,2,'2008-03-04','2008-03-05',14),(20,2,'2008-08-03','2008-08-23',32),(20,3,'2007-12-01','2007-12-11',17),(20,3,'2008-01-16','2008-02-01',25),(20,4,'2002-03-24','2002-03-25',15),(21,2,'2005-04-24','2005-05-07',3),(22,1,'1996-09-08','1996-09-21',40),(22,1,'2001-05-01','2001-05-05',62),(22,1,'2005-01-21','2005-01-25',44),(22,1,'2006-09-10','2006-09-19',19),(22,1,'2006-11-28','2006-12-19',29),(22,2,'2001-04-19','2001-05-04',1),(22,2,'2002-09-16','2002-10-06',27),(22,2,'2005-05-16','2005-05-19',31),(22,4,'2004-09-10','2004-10-01',10),(22,4,'2005-04-20','2005-05-05',37),(22,4,'2007-01-27','2007-02-17',62),(22,4,'2007-09-13','2007-09-19',21),(22,4,'2007-09-26','2007-09-27',17),(23,1,'2008-04-23','2008-05-10',8),(23,1,'2008-10-06','2008-10-09',30),(23,1,'2008-12-24','2009-01-10',60),(23,2,'2001-02-25','2001-02-28',40),(24,1,'2005-03-05','2005-03-25',2),(24,1,'2005-05-25','2005-06-14',44),(24,1,'2006-12-18','2006-12-19',13),(25,2,'2008-08-29','2008-09-19',57),(25,2,'2008-10-09','2008-10-18',8),(25,2,'2008-12-13','2009-01-02',33),(25,2,'2009-01-30',NULL,13),(26,1,'2003-04-14','2003-04-26',17),(26,1,'2003-10-03','2003-10-05',56),(26,1,'2005-03-04','2005-03-17',21),(26,2,'2004-05-21','2004-06-05',62),(26,2,'2005-09-26','2005-10-05',38),(26,2,'2005-12-08','2005-12-09',29),(26,2,'2006-01-11','2006-01-31',48),(26,2,'2006-09-13','2006-09-22',3),(27,1,'2007-01-10','2007-01-16',27),(27,1,'2007-11-15','2007-12-06',53),(28,1,'2002-02-05','2002-02-08',7),(28,1,'2004-10-29','2004-11-06',39),(28,1,'2006-06-08','2006-06-23',44),(28,1,'2007-05-24','2007-05-31',6),(28,2,'1994-11-25','1994-12-16',51),(28,2,'1998-02-21','1998-03-07',58),(28,2,'1999-08-17','1999-09-04',53),(28,2,'2001-06-06','2001-06-13',7),(28,2,'2001-08-25','2001-08-31',9),(29,2,'2004-03-30','2004-04-11',62),(29,2,'2004-06-09','2004-06-14',37),(29,3,'2002-03-06','2002-03-09',31),(29,3,'2002-04-04','2002-04-20',30),(29,3,'2002-12-27','2003-01-07',26),(29,3,'2004-05-25','2004-05-28',6),(30,1,'2001-07-21','2001-07-25',11),(30,1,'2003-12-29','2004-01-05',34),(30,1,'2004-06-25','2004-06-26',42),(30,1,'2006-06-25','2006-07-07',20),(30,1,'2007-04-20','2007-04-25',4),(30,2,'2006-09-28',NULL,22),(31,1,'2007-05-01','2007-05-15',1),(32,1,'2003-01-13','2003-01-14',2),(32,1,'2003-04-13','2003-04-20',17),(32,1,'2003-07-26','2003-07-31',17),(32,1,'2004-08-03','2004-08-20',53),(32,1,'2006-10-18','2006-10-26',3),(32,2,'2004-09-22','2004-09-24',14),(32,2,'2005-09-20','2005-09-27',4),(32,2,'2006-07-20','2006-07-25',62),(32,2,'2007-04-05','2007-04-07',55),(32,2,'2007-11-27','2007-12-09',49),(33,1,'2006-12-12','2006-12-17',17),(33,1,'2007-06-04','2007-06-24',31),(33,1,'2007-07-15','2007-07-18',44),(33,1,'2007-10-09','2007-10-13',58),(33,2,'2005-03-20','2005-03-22',34),(33,3,'2003-06-09','2003-06-23',35),(33,3,'2004-03-31','2004-04-06',42),(33,3,'2006-03-26','2006-04-15',25),(33,3,'2006-08-14','2006-08-18',30),(34,1,'2008-07-15','2008-07-17',37),(34,1,'2008-10-21','2008-10-26',35),(34,1,'2008-11-14','2008-11-20',45),(34,1,'2008-12-13','2008-12-30',59),(34,3,'2000-05-20','2000-06-09',26),(34,3,'2001-03-24','2001-04-01',3),(34,3,'2001-10-01','2001-10-19',47),(34,4,'2005-08-06','2005-08-22',46),(36,1,'1999-05-21','1999-05-26',25),(36,1,'2001-04-13','2001-04-15',33),(36,1,'2003-05-27','2003-06-06',29),(36,1,'2004-02-28','2004-03-01',25),(36,1,'2004-08-21','2004-09-11',59),(37,1,'2007-05-14','2007-05-24',57),(37,1,'2007-09-13','2007-10-01',5),(37,1,'2008-04-13','2008-04-28',7),(38,1,'2008-08-12','2008-09-01',17),(38,1,'2008-09-03','2008-09-13',57),(38,1,'2008-09-24','2008-10-08',19),(39,1,'2004-10-28','2004-11-06',11),(39,1,'2006-11-04','2006-11-13',16),(39,1,'2007-12-10','2007-12-14',54),(39,1,'2007-12-22','2007-12-24',46),(39,2,'2006-12-27','2007-01-17',33),(39,2,'2007-02-04','2007-02-25',55),(39,2,'2008-01-01','2008-01-04',49),(39,2,'2008-07-16','2008-08-06',58),(39,3,'2007-07-27','2007-07-28',35),(39,3,'2008-03-21','2008-04-08',4),(40,2,'2006-09-16','2006-09-21',3),(40,2,'2006-09-27','2006-10-05',41),(40,2,'2007-07-21','2007-08-04',11),(41,1,'2007-10-29','2007-11-18',28),(41,1,'2008-01-23','2008-02-11',30),(41,1,'2008-08-07','2008-08-10',29),(41,1,'2008-10-31','2008-11-12',5),(41,2,'2007-06-07','2007-06-24',61),(41,3,'2008-02-17','2008-02-23',25),(41,3,'2008-05-23','2008-06-10',25),(41,3,'2008-08-02','2008-08-19',20),(41,3,'2008-08-21','2008-09-07',13),(41,3,'2008-10-30','2008-11-19',30),(41,4,'2007-11-26','2007-12-17',39),(41,4,'2008-03-10','2008-03-26',20),(41,4,'2008-09-10','2008-09-12',62),(42,1,'2000-03-18','2000-03-28',43),(42,1,'2002-08-22','2002-08-29',11),(42,2,'1996-09-24','1996-09-25',3),(42,2,'1996-11-27',NULL,53),(42,3,'2005-05-10','2005-05-13',25),(42,3,'2006-02-25','2006-03-17',45),(42,3,'2007-02-15','2007-02-18',45),(42,3,'2007-10-07','2007-10-09',28),(42,3,'2008-05-26','2008-06-03',59),(43,1,'2000-11-02','2000-11-10',15),(43,2,'2003-03-16','2003-04-04',23),(43,2,'2003-06-13','2003-06-29',55),(44,1,'2001-06-07','2001-06-10',16),(44,1,'2002-02-21','2002-03-02',34),(44,1,'2002-10-19','2002-10-27',16),(44,1,'2005-10-14','2005-10-16',12),(44,2,'2008-06-23','2008-06-28',24),(44,2,'2008-09-01','2008-09-17',49),(44,2,'2008-09-27','2008-10-11',62),(44,3,'2001-12-27','2001-12-31',37),(44,3,'2004-09-08','2004-09-14',31),(44,3,'2005-07-13','2005-07-24',14),(44,3,'2007-05-05','2007-05-22',47),(44,3,'2007-09-28','2007-10-04',62),(45,1,'2006-03-09','2006-03-30',19),(45,1,'2007-07-27','2007-07-28',31),(45,1,'2008-02-12','2008-02-15',45),(45,1,'2008-06-06','2008-06-24',52),(45,1,'2008-10-11','2008-10-15',50),(46,1,'2008-07-02','2008-07-22',6),(46,1,'2008-09-04','2008-09-12',59),(46,1,'2008-10-24','2008-10-25',40),(46,1,'2008-12-09','2008-12-28',28),(47,1,'2005-11-06','2005-11-15',33),(47,1,'2007-07-14','2007-07-27',13),(47,1,'2007-08-04','2007-08-06',37),(47,2,'2007-08-20','2007-08-31',35),(47,3,'2008-11-15','2008-11-21',45),(48,1,'2008-04-15','2008-04-16',16),(49,1,'1993-05-02','1993-05-13',57),(49,1,'1999-07-18','1999-08-02',11),(49,1,'2002-05-26','2002-06-12',32),(49,2,'1993-03-12','1993-03-13',33),(49,2,'2000-02-23','2000-03-15',11),(51,2,'2005-10-08','2005-10-13',5),(51,2,'2006-02-10','2006-03-03',31),(51,2,'2007-01-17','2007-02-01',53),(51,2,'2008-01-30','2008-02-11',57),(51,2,'2008-02-28','2008-03-18',11),(51,3,'2007-02-08','2007-02-27',8),(51,3,'2008-02-23','2008-03-02',2),(51,3,'2008-05-19','2008-06-06',56),(51,3,'2008-08-03','2008-08-09',25),(51,3,'2008-09-24','2008-09-29',31),(53,1,'2005-07-14','2005-07-26',23),(53,1,'2006-07-06','2006-07-10',21),(53,1,'2006-10-04',NULL,53),(53,2,'2007-10-29','2007-11-11',36),(53,2,'2008-02-11','2008-02-18',2),(54,1,'2008-07-02','2008-07-21',21),(54,1,'2008-08-07','2008-08-13',61),(54,1,'2008-11-20','2008-11-30',46),(54,1,'2008-12-30','2008-12-31',54),(54,1,'2009-01-20','2009-02-01',56),(54,2,'2008-10-19','2008-11-06',26),(55,2,'2008-12-07','2008-12-23',27),(55,2,'2008-12-25','2009-01-02',9),(55,2,'2009-01-21','2009-02-10',34),(55,2,'2009-02-24','2009-03-08',12),(56,2,'2008-02-15','2008-03-02',48),(57,2,'2006-09-30','2006-10-19',59),(57,2,'2007-09-13','2007-09-28',60),(57,2,'2008-04-21','2008-05-10',2),(57,3,'1998-01-20','1998-01-31',37),(57,3,'2003-07-11','2003-07-27',55),(57,3,'2003-10-11','2003-11-01',6),(57,3,'2004-01-22','2004-02-06',11),(57,4,'1994-07-07','1994-07-23',40),(57,4,'1998-11-12','1998-11-27',25),(57,4,'2003-06-21','2003-06-23',62),(58,2,'2006-03-22','2006-03-26',54),(58,2,'2007-07-03','2007-07-04',46),(58,2,'2008-01-02','2008-01-06',33),(58,2,'2008-03-29','2008-04-13',15),(58,2,'2008-09-19','2008-10-03',35),(58,4,'2006-11-23','2006-11-24',18),(58,4,'2007-04-25','2007-05-03',33),(59,1,'1998-06-20','1998-07-01',47),(59,1,'2000-10-26','2000-11-06',55),(59,2,'1999-04-10','1999-04-14',15),(59,2,'2004-02-02','2004-02-23',58),(59,2,'2006-03-02','2006-03-10',11),(59,2,'2007-09-10','2007-09-21',43),(59,2,'2008-06-14','2008-06-15',37),(59,3,'1994-12-13','1995-01-03',59),(59,3,'1996-11-13','1996-11-25',36),(59,3,'2001-01-09','2001-01-27',37),(60,1,'2007-04-01','2007-04-04',36),(60,1,'2007-12-13','2008-01-03',59),(60,1,'2008-03-24',NULL,30),(60,2,'2008-02-16','2008-02-27',59),(60,2,'2008-04-07','2008-04-12',39),(60,3,'2007-05-07','2007-05-14',32),(60,3,'2007-11-22','2007-11-26',26),(61,1,'2007-04-09','2007-04-29',38),(61,1,'2008-03-17','2008-04-01',57),(61,1,'2008-06-17','2008-06-30',27),(61,1,'2008-10-28','2008-11-02',46),(61,2,'2008-07-12','2008-07-27',47),(61,2,'2008-09-03','2008-09-05',15),(61,2,'2008-11-15','2008-11-26',28),(61,3,'2004-11-15','2004-11-24',1),(61,3,'2005-08-24','2005-09-10',26),(61,3,'2006-08-17','2006-08-22',46),(61,3,'2007-10-07','2007-10-17',33),(61,3,'2008-06-20','2008-06-26',32),(61,4,'2008-01-25','2008-02-12',27),(61,4,'2008-03-22','2008-03-25',33),(61,4,'2008-07-15','2008-07-19',55),(61,4,'2008-10-13','2008-10-16',31),(61,4,'2008-12-21','2008-12-23',3),(62,1,'2008-08-07','2008-08-21',54),(62,1,'2008-11-17','2008-12-07',44),(62,1,'2009-01-16','2009-01-18',37),(62,1,'2009-01-31','2009-02-09',39),(62,1,'2009-02-21','2009-03-12',15),(63,1,'2008-03-11','2008-03-26',24),(63,1,'2008-09-13','2008-09-30',37),(63,2,'2008-11-26','2008-12-11',31),(63,2,'2009-01-14','2009-01-24',2),(63,2,'2009-02-18',NULL,60),(63,3,'2008-01-21','2008-02-07',26),(63,3,'2008-04-10','2008-04-26',34),(63,3,'2008-08-30','2008-09-15',47),(63,3,'2008-11-14','2008-12-02',38),(64,1,'2001-06-23','2001-06-26',1),(64,1,'2004-11-15','2004-12-03',41),(64,1,'2006-10-01','2006-10-02',35),(64,2,'2005-09-30','2005-10-08',35),(64,2,'2006-12-10','2006-12-20',42),(65,2,'2008-07-01','2008-07-10',60),(65,2,'2008-10-30','2008-11-10',13),(65,2,'2008-12-31','2009-01-02',21),(65,2,'2009-02-08','2009-02-23',42),(66,1,'2003-12-22','2004-01-05',10),(66,1,'2005-09-08','2005-09-09',56),(66,1,'2005-10-30','2005-11-03',40),(67,1,'2008-12-18','2008-12-31',32),(67,1,'2009-01-14',NULL,61),(67,2,'2008-04-18','2008-04-27',47),(67,2,'2008-05-25','2008-06-02',25),(67,2,'2008-06-08','2008-06-11',26),(67,2,'2008-10-22','2008-10-26',32),(67,4,'2007-12-22','2008-01-11',4),(67,4,'2008-06-28','2008-07-04',41),(67,4,'2008-08-30','2008-09-04',20),(68,1,'2003-08-22','2003-09-01',14),(68,1,'2005-12-01','2005-12-17',10),(68,1,'2006-12-31','2007-01-07',10),(68,1,'2007-04-28','2007-05-11',62),(68,1,'2008-02-27','2008-02-29',8),(69,1,'2004-02-22','2004-02-23',25),(69,1,'2006-04-20','2006-05-06',39),(69,1,'2006-09-09','2006-09-30',1),(69,1,'2007-02-26','2007-03-17',3),(69,1,'2007-09-28','2007-10-12',44),(69,2,'2006-10-19','2006-10-25',10),(69,2,'2006-11-15','2006-12-06',10),(69,2,'2007-12-27','2007-12-28',39),(69,2,'2007-12-30','2008-01-15',45),(69,4,'2003-08-25','2003-09-06',15),(69,4,'2005-11-24','2005-12-09',3),(69,4,'2006-03-31','2006-04-16',2),(69,4,'2007-07-15','2007-08-03',51),(69,4,'2008-05-19','2008-05-23',55),(70,2,'2006-05-15','2006-05-26',2),(70,3,'2004-12-19','2004-12-24',43),(70,3,'2005-12-31','2006-01-16',61),(70,3,'2007-07-04','2007-07-22',33),(70,3,'2007-11-09','2007-11-14',55),(70,3,'2008-03-12','2008-03-21',27),(70,4,'2002-11-30','2002-12-04',26),(70,4,'2004-05-09','2004-05-24',9),(70,4,'2005-08-12','2005-08-22',59),(71,1,'2008-05-29','2008-05-30',19),(71,2,'2007-12-19','2007-12-30',52),(71,2,'2008-03-08','2008-03-20',31),(71,2,'2008-09-09','2008-09-12',36),(71,2,'2008-09-25','2008-10-08',10),(72,1,'1997-03-17','1997-03-29',48),(72,1,'2002-02-11','2002-02-27',47),(73,1,'2007-09-16','2007-10-07',3),(73,1,'2007-11-28','2007-12-04',19),(73,1,'2008-04-23','2008-05-03',27),(73,1,'2008-06-07',NULL,60),(74,1,'2004-02-01','2004-02-22',10),(74,1,'2006-02-09','2006-02-16',41),(74,2,'2005-07-20','2005-08-05',50),(74,3,'2006-10-13','2006-10-21',37),(75,1,'2000-04-10','2000-04-24',51),(75,1,'2001-02-05','2001-02-20',59),(75,1,'2004-03-07','2004-03-24',11),(76,1,'2005-11-27','2005-12-12',27),(76,1,'2007-05-23','2007-06-06',57),(76,1,'2007-09-28','2007-10-18',49),(77,1,'1998-12-11','1998-12-14',53),(77,1,'1999-07-14','1999-07-16',23),(77,1,'2001-12-17','2001-12-27',7),(77,1,'2003-09-12','2003-10-02',1),(77,2,'1998-09-27','1998-10-04',37),(77,2,'2003-10-30','2003-11-11',7),(77,2,'2005-06-03','2005-06-11',48),(77,2,'2005-06-16','2005-06-30',22),(77,2,'2006-10-06','2006-10-19',62),(77,3,'1999-08-08','1999-08-26',59),(77,3,'2002-07-03','2002-07-22',37),(77,3,'2002-08-05','2002-08-18',21),(77,3,'2002-08-23','2002-08-27',11),(77,4,'2001-10-10','2001-10-13',39),(77,4,'2002-11-18','2002-11-22',1),(77,4,'2003-06-10','2003-06-28',22),(77,4,'2006-04-23','2006-05-05',23),(78,1,'2008-03-24','2008-04-13',42),(78,3,'2008-04-16','2008-04-26',15),(78,3,'2008-06-12','2008-06-25',52),(79,1,'2004-02-07','2004-02-10',9),(79,1,'2005-08-23','2005-09-10',38),(79,1,'2007-05-25','2007-06-10',41),(79,1,'2007-10-09','2007-10-20',35),(79,1,'2008-01-17','2008-01-19',23),(79,2,'2007-09-03','2007-09-09',15),(79,2,'2008-02-10','2008-02-19',36),(79,2,'2008-05-11',NULL,10),(79,3,'2005-10-23','2005-10-27',25),(79,4,'2003-09-29','2003-10-01',14),(79,4,'2004-07-13','2004-07-31',19),(79,4,'2005-06-12','2005-06-13',17),(79,4,'2006-05-25','2006-05-27',3),(79,4,'2007-02-19','2007-03-08',47),(80,2,'2007-11-03','2007-11-09',36),(80,2,'2008-03-06','2008-03-26',37),(80,2,'2008-07-06','2008-07-16',45),(80,2,'2008-10-07','2008-10-24',46),(80,3,'2008-11-07','2008-11-20',62),(80,3,'2008-12-03','2008-12-06',13),(80,3,'2008-12-15','2008-12-24',56),(81,1,'1990-03-03','1990-03-22',37),(81,1,'1992-06-20','1992-06-29',9),(81,1,'1999-01-09','1999-01-19',36),(81,1,'2003-02-24','2003-03-16',25),(83,1,'2003-08-13','2003-08-31',15),(83,2,'2003-01-24','2003-02-12',40),(83,2,'2005-07-17','2005-07-30',35),(83,2,'2005-12-27','2006-01-12',24),(84,1,'2008-10-07','2008-10-18',28),(84,1,'2008-12-09','2008-12-25',61),(84,2,'2006-01-24','2006-02-01',9),(84,3,'2002-10-29','2002-10-31',23),(84,3,'2004-01-20','2004-02-08',22),(84,3,'2004-06-10','2004-06-13',23),(85,1,'2001-09-24','2001-10-13',26),(85,1,'2002-11-06','2002-11-27',20),(85,1,'2005-08-03','2005-08-24',44),(85,1,'2006-11-14','2006-11-22',25),(85,2,'2002-03-09','2002-03-13',17),(85,2,'2004-11-02','2004-11-16',9),(85,2,'2005-07-22','2005-08-10',46),(85,2,'2006-11-06','2006-11-27',5),(85,3,'2006-07-25',NULL,14),(86,1,'2008-06-11','2008-06-14',31),(87,1,'1999-09-07','1999-09-18',7),(87,1,'2001-03-26','2001-04-04',14),(87,1,'2003-11-22','2003-11-29',16),(87,2,'2003-06-04','2003-06-12',19),(87,3,'2003-06-06','2003-06-08',55),(87,3,'2004-03-27','2004-04-17',39),(87,3,'2004-12-25','2005-01-06',7),(87,3,'2005-08-06','2005-08-08',5),(88,1,'1996-10-15','1996-11-02',17),(88,1,'2002-10-25',NULL,21),(88,2,'2006-01-30','2006-02-18',24),(88,2,'2007-03-20','2007-04-06',16),(88,2,'2007-07-20','2007-08-09',59),(88,2,'2007-12-29','2008-01-14',56),(88,4,'2008-02-12','2008-02-21',39),(88,4,'2008-05-18','2008-06-07',30),(88,4,'2008-09-30','2008-10-19',55),(89,1,'1998-06-16','1998-07-01',51),(89,1,'2001-08-30','2001-09-13',31),(89,1,'2003-09-29','2003-10-01',19),(89,1,'2004-10-23','2004-11-03',2),(89,1,'2005-12-25','2006-01-08',2),(89,3,'2006-02-14','2006-02-27',50),(89,3,'2006-12-14','2006-12-26',18),(89,3,'2007-12-11','2007-12-27',62),(89,3,'2008-06-08','2008-06-26',23),(89,4,'2001-10-07','2001-10-20',27),(89,4,'2003-09-16','2003-09-19',39),(89,4,'2005-12-13','2006-01-03',43),(89,4,'2007-02-23','2007-03-02',2),(89,4,'2008-02-22','2008-03-11',4),(90,1,'2007-05-03','2007-05-11',39),(91,1,'2005-09-14','2005-09-25',9),(92,1,'2006-11-29','2006-12-01',25),(92,1,'2007-06-20','2007-07-08',30),(92,1,'2008-03-19','2008-03-20',49),(92,1,'2008-05-09','2008-05-27',40),(93,1,'2001-10-23','2001-11-04',31),(93,1,'2002-08-18','2002-08-31',36),(93,1,'2003-09-14','2003-10-05',18),(94,1,'2000-02-29','2000-03-13',50),(94,1,'2003-11-09','2003-11-19',1),(94,1,'2004-01-30','2004-02-08',20),(94,2,'2004-09-20','2004-09-27',6),(94,2,'2006-03-24','2006-04-05',1),(94,2,'2006-12-14','2006-12-15',11),(95,1,'2004-09-16','2004-10-02',19),(95,1,'2006-07-25','2006-07-28',58),(95,1,'2007-10-04','2007-10-09',53),(95,1,'2008-03-21','2008-03-25',48),(95,1,'2008-08-21',NULL,25),(95,2,'2008-10-14','2008-11-03',39),(95,2,'2009-01-08','2009-01-22',4),(95,2,'2009-01-29','2009-02-13',42),(95,3,'2008-04-01','2008-04-14',61),(95,3,'2008-07-21','2008-08-02',28),(95,3,'2008-09-22','2008-09-23',55),(95,3,'2008-11-11','2008-11-13',18),(95,3,'2009-01-04','2009-01-13',28),(95,4,'2005-09-07','2005-09-28',12),(95,4,'2006-05-23','2006-06-07',8),(95,4,'2007-08-24','2007-09-09',49),(95,4,'2008-06-05','2008-06-14',29),(95,4,'2008-06-19','2008-06-26',5),(96,1,'2007-09-08','2007-09-26',5),(96,1,'2007-12-23','2008-01-11',21),(97,1,'2007-09-27','2007-10-02',35),(97,1,'2008-03-18','2008-03-25',25),(97,1,'2008-08-15','2008-08-21',32),(97,1,'2008-10-04','2008-10-09',4),(97,1,'2008-10-22','2008-11-11',39),(98,1,'2007-03-28','2007-03-31',39),(98,2,'2007-05-10','2007-05-14',19),(98,2,'2007-06-19','2007-07-06',15),(98,2,'2008-01-26','2008-02-08',28),(98,2,'2008-04-20',NULL,8),(98,3,'2004-03-12','2004-03-26',36),(98,3,'2006-05-02','2006-05-21',45),(98,3,'2007-05-12','2007-05-23',14),(99,1,'2008-04-13','2008-04-20',8),(99,1,'2008-09-17','2008-09-29',54),(99,1,'2008-12-06','2008-12-20',55),(99,1,'2009-01-05','2009-01-21',34),(99,1,'2009-02-04',NULL,18),(99,2,'2007-12-17','2007-12-27',43),(100,1,'2008-03-16','2008-04-01',25),(100,1,'2008-04-30','2008-05-04',17),(101,1,'2007-05-20','2007-06-04',21),(101,1,'2007-08-07','2007-08-22',33),(101,2,'2003-12-08','2003-12-13',16);
/*!40000 ALTER TABLE `prestamo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-17 10:18:56


