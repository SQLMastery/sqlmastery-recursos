
/*M!999999\- enable the sandbox mode */
-- MariaDB dump 10.19  Distrib 10.11.13-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: sqlmastery
-- ------------------------------------------------------
-- Server version	10.11.13-MariaDB-0ubuntu0.24.04.1

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
-- Current Database: `sqlmastery`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sqlmastery` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `sqlmastery`;

--
-- Table structure for table `actuaciones_destacadas`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `actuaciones_destacadas` (
  `ID_ALUMNO` int(11) unsigned NOT NULL,
  `ID_CURSO` int(11) unsigned NOT NULL,
  `ACTUACION` varchar(120) NOT NULL,
  KEY `actuaciones_destacadas_ID_ALUMNO_FK` (`ID_ALUMNO`),
  KEY `actuaciones_destacadas_ID_CURSO_FK` (`ID_CURSO`),
  CONSTRAINT `actuaciones_destacadas_ID_ALUMNO_FK` FOREIGN KEY (`ID_ALUMNO`) REFERENCES `alumnos` (`ID_ALUMNO`),
  CONSTRAINT `actuaciones_destacadas_ID_CURSO_FK` FOREIGN KEY (`ID_CURSO`) REFERENCES `cursos` (`ID_CURSO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actuaciones_destacadas`
--

/*!40000 ALTER TABLE `actuaciones_destacadas` DISABLE KEYS */;
INSERT INTO `actuaciones_destacadas` VALUES
(3,1,'10 en examen parcial '),
(3,1,'Práctica PHP muy bien desarrollada'),
(5,3,'Práctica de subconsultas en where perfecta'),
(2,4,'Diseño muy creativo');
/*!40000 ALTER TABLE `actuaciones_destacadas` ENABLE KEYS */;

--
-- Table structure for table `alumnos`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `ID_ALUMNO` int(10) unsigned NOT NULL,
  `NOMBRE` varchar(30) NOT NULL,
  `APELLIDOS` varchar(50) NOT NULL,
  `F_NACIMIENTO` date NOT NULL,
  PRIMARY KEY (`ID_ALUMNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES
(1,'Pablo','Hernández Mata','1995-03-14'),
(2,'Jeremías','Santo Lote','1993-07-12'),
(3,'Teresa','Lomas Trillo','1989-06-19'),
(4,'Marta','Fuego García','1992-11-23'),
(5,'Sergio','Ot Dirmet','1991-04-21'),
(6,'Carmen','Dilma Perna','1987-12-04');
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;

--
-- Table structure for table `alumnos_cursos`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos_cursos` (
  `ID_ALUMNO` int(10) unsigned NOT NULL,
  `ID_CURSO` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID_ALUMNO`,`ID_CURSO`),
  KEY `alumnos_cursos_id_curso_fk` (`ID_CURSO`),
  CONSTRAINT `alumnos_cursos_id_alumno_fk` FOREIGN KEY (`ID_ALUMNO`) REFERENCES `alumnos` (`ID_ALUMNO`),
  CONSTRAINT `alumnos_cursos_id_curso_fk` FOREIGN KEY (`ID_CURSO`) REFERENCES `cursos` (`ID_CURSO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


-- ESTO ES UNA DEMO LIMITADA --