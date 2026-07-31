-- MySQL dump 10.13  Distrib 8.4.10, for Linux (x86_64)
--
-- Host: localhost    Database: campuslands_mysql
-- ------------------------------------------------------
-- Server version	8.4.10

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
-- Table structure for table `carreras_urbanas_resultados`
--

DROP TABLE IF EXISTS `carreras_urbanas_resultados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carreras_urbanas_resultados` (
  `id_resultado` int NOT NULL AUTO_INCREMENT,
  `piloto` varchar(50) NOT NULL,
  `circuito` varchar(60) NOT NULL,
  `posicion_final` smallint unsigned NOT NULL,
  `tiempo_vuelta` time NOT NULL,
  `premio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `fecha_carrera` date NOT NULL,
  `estado` enum('valido','descalificado','en_revision') NOT NULL DEFAULT 'valido',
  PRIMARY KEY (`id_resultado`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carreras_urbanas_resultados`
--

LOCK TABLES `carreras_urbanas_resultados` WRITE;
/*!40000 ALTER TABLE `carreras_urbanas_resultados` DISABLE KEYS */;
INSERT INTO `carreras_urbanas_resultados` VALUES (1,'Kenji Ortiz','Circuito Norte',1,'00:01:42',4200.00,'2026-07-10','valido'),(2,'Raul Ixtok','Circuito Norte',2,'00:01:45',2000.00,'2026-07-10','valido'),(3,'Vale Nunez','Circuito Sur',1,'00:01:38',4500.00,'2026-07-12','valido'),(4,'Bryan Solis','Circuito Sur',5,'00:01:55',0.00,'2026-07-12','descalificado'),(5,'Fer Osorio','Circuito Este',3,'00:01:50',800.00,'2026-07-15','valido'),(6,'Andy Tul','Circuito Este',2,'00:01:47',1500.00,'2026-07-15','valido'),(7,'Kelly Baten','Circuito Norte',4,'00:01:53',0.00,'2026-07-10','en_revision'),(8,'Ivan Rax','Circuito Sur',2,'00:01:41',2000.00,'2026-07-12','valido');
/*!40000 ALTER TABLE `carreras_urbanas_resultados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-31  2:17:10
