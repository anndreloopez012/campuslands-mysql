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
-- Table structure for table `partidas_guardadas`
--

DROP TABLE IF EXISTS `partidas_guardadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partidas_guardadas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `jugador` varchar(60) NOT NULL,
  `nivel_actual` int NOT NULL,
  `puntos_experiencia` int NOT NULL DEFAULT '0',
  `ubicacion` varchar(80) NOT NULL,
  `fecha_guardado` datetime NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `chk_nivel_partida` CHECK ((`nivel_actual` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidas_guardadas`
--

LOCK TABLES `partidas_guardadas` WRITE;
/*!40000 ALTER TABLE `partidas_guardadas` DISABLE KEYS */;
INSERT INTO `partidas_guardadas` VALUES (1,'Kaelen Voss',12,8400,'Ruinas de Ashfall','2026-06-01 20:15:00'),(2,'Mira Solene',8,5200,'Bosque Sombrio','2026-06-03 21:40:00'),(3,'Dorian Thackeray',15,11300,'Ciudadela de Hierro','2026-06-05 19:05:00'),(4,'Kaelen Voss',14,9750,'Cumbre Helada','2026-06-10 22:30:00'),(5,'Yara Nix',6,3100,'Puerto Abandonado','2026-06-12 18:50:00');
/*!40000 ALTER TABLE `partidas_guardadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objetos_recolectados`
--

DROP TABLE IF EXISTS `objetos_recolectados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `objetos_recolectados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `partida_id` int NOT NULL,
  `nombre_objeto` varchar(100) NOT NULL,
  `cantidad` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_objeto_partida` (`partida_id`),
  CONSTRAINT `fk_objeto_partida` FOREIGN KEY (`partida_id`) REFERENCES `partidas_guardadas` (`id`),
  CONSTRAINT `chk_cantidad_objeto_recolectado` CHECK ((`cantidad` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objetos_recolectados`
--

LOCK TABLES `objetos_recolectados` WRITE;
/*!40000 ALTER TABLE `objetos_recolectados` DISABLE KEYS */;
INSERT INTO `objetos_recolectados` VALUES (1,1,'Fragmento de Cristal Antiguo',3),(2,1,'Pocion de Vida',5),(3,2,'Llave Oxidada',1),(4,2,'Pergamino Arcano',2),(5,3,'Espada del Alba',1),(6,3,'Escudo de Hierro Forjado',1),(7,3,'Pocion de Vida',8),(8,4,'Fragmento de Cristal Antiguo',7),(9,4,'Amuleto de Resistencia al Frio',1),(10,5,'Mapa del Tesoro Hundido',1);
/*!40000 ALTER TABLE `objetos_recolectados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-28 12:29:03
