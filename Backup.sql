CREATE DATABASE  IF NOT EXISTS `ascensores_aquino` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ascensores_aquino`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: ascensores_aquino
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `cuil` varchar(30) NOT NULL,
  `telefono` int NOT NULL,
  `descripcion` char(120) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Amenabar','Amenabar 844','30661068619',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(2,'Araoz','Araoz 2938','30574620224',47456723,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(3,'Arcos','Arcos 2833','30711168415',47446835,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(4,'Arribeños','Arribeños 1212','30599544190',47446881,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(5,'Balbin','Av. Balbin 2711','30579917136',47446902,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(6,'Billinghurts','Billinghurts 1636','30539224855',47446419,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(7,'Conde','Conde 1972','30549861233',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(8,'Fondo de la legua','Fonde de la legua 1139','30709980722',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(9,'Gorostiaga','Gorostiaga 2366','30522811900',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(10,'General paz','General paz 450','30626126924',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(11,'Humboldt','Humboldt 1509','33715947949',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(12,'Jose Hernandez 2194','Jose Hernandez 2194','33517120869',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(13,'Jose Hernandez 1889','Jose Hernandez 1889','30521314644',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(14,'J. F segui','Segui 4460','30628532806',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(15,'Juncal','Juncal 1670','30639259060',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(16,'Juramento 2714','Juramento 2714','30638545272',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(17,'Juramento 2790','Juramento 2790','30591363707',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(18,'Libertador','Libertador 5068','30629791198',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(19,'Jockey club','Marquez 740','30527990773',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(20,'Moldes','Moldes 1896','33538676859',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(21,'Monroe','Monroe 2650','30711510512',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(22,'Nicaragua','Nicaragua 5544','30711379254',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(23,'Obligado 1808','Obligado 1808','30708420766',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(24,'Obligado 2561','Obligado 2561','30545457918',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(25,'Obligado 2539','Obligado 2539','34651282111',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(26,'Ocampo','Ocampo 2612','30546813874',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(27,'Villanueva','Villanueva 1369','33598714229',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(28,'O Higgins 1695','O Higgins 1695','30540149506',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(29,'Olazabal','Olazabal 2815','30621439452',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(30,'O higgins 1845','O higgins 1845','30547609529',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(31,'Rep. de la india','Rep. de la india 3107','33523115729',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(32,'Sucre 2004','Sucre 2004','30547488934',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(33,'Sucre 2126','Sucre 2126','30541218439',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(34,'Sucre 3267','Sucre 3267','30709627631',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(35,'Sucre 2483','Sucre 2483','30607405138',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(36,'Zabala','Zabala 2173','30632853544',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(37,'3 de febrero 1483','3 de febrero 1483','33547432709',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo'),(38,'3 de febrero 1797','3 de febrero 1797','30600260916',47446894,'Este es un edificio ubicado en belgrano trabajando con nosotros hace mucho tiempo');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fechas_arreglos`
--

DROP TABLE IF EXISTS `fechas_arreglos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fechas_arreglos` (
  `id_fecha` int NOT NULL AUTO_INCREMENT,
  `fecha_arreglo` date NOT NULL,
  PRIMARY KEY (`id_fecha`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fechas_arreglos`
--

LOCK TABLES `fechas_arreglos` WRITE;
/*!40000 ALTER TABLE `fechas_arreglos` DISABLE KEYS */;
INSERT INTO `fechas_arreglos` VALUES (1,'2022-10-05'),(2,'2022-09-01'),(3,'2022-08-01'),(4,'2022-07-11'),(5,'2022-06-11'),(6,'2022-05-01'),(7,'2022-04-01'),(8,'2022-03-12'),(9,'2022-02-15'),(10,'2022-01-14'),(11,'2021-12-01'),(12,'2021-11-18'),(13,'2021-10-10'),(14,'2021-09-09'),(15,'2021-08-02'),(16,'2022-09-02'),(17,'2022-10-02'),(18,'2022-11-02');
/*!40000 ALTER TABLE `fechas_arreglos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fechas_bonos`
--

DROP TABLE IF EXISTS `fechas_bonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fechas_bonos` (
  `id_fecha` int NOT NULL AUTO_INCREMENT,
  `fecha_bono` date NOT NULL,
  PRIMARY KEY (`id_fecha`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fechas_bonos`
--

LOCK TABLES `fechas_bonos` WRITE;
/*!40000 ALTER TABLE `fechas_bonos` DISABLE KEYS */;
INSERT INTO `fechas_bonos` VALUES (1,'2022-10-14'),(2,'2022-09-13'),(3,'2022-08-12'),(4,'2022-07-01'),(5,'2022-06-01'),(6,'2022-05-01'),(7,'2022-04-17'),(8,'2022-03-15'),(9,'2022-02-01'),(10,'2022-01-01'),(11,'2021-12-01'),(12,'2021-11-01'),(13,'2021-10-07'),(14,'2021-09-02'),(15,'2021-08-03'),(16,'2022-09-03'),(17,'2022-10-03'),(18,'2022-11-03');
/*!40000 ALTER TABLE `fechas_bonos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fechas_gastos`
--

DROP TABLE IF EXISTS `fechas_gastos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fechas_gastos` (
  `id_fecha` int NOT NULL AUTO_INCREMENT,
  `fecha_gasto` date NOT NULL,
  PRIMARY KEY (`id_fecha`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fechas_gastos`
--

LOCK TABLES `fechas_gastos` WRITE;
/*!40000 ALTER TABLE `fechas_gastos` DISABLE KEYS */;
INSERT INTO `fechas_gastos` VALUES (1,'2022-10-01'),(2,'2022-09-06'),(3,'2022-08-07'),(4,'2022-07-11'),(5,'2022-06-17'),(6,'2022-05-06'),(7,'2022-04-08'),(8,'2022-03-12'),(9,'2022-02-01'),(10,'2022-01-01'),(11,'2021-12-01'),(12,'2021-11-01'),(13,'2021-10-01'),(14,'2021-09-12'),(15,'2021-08-05'),(16,'2022-09-05'),(17,'2022-10-05'),(18,'2022-11-05');
/*!40000 ALTER TABLE `fechas_gastos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gastos_nuestra_empresa`
--

DROP TABLE IF EXISTS `gastos_nuestra_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gastos_nuestra_empresa` (
  `id_gasto_empresa` int NOT NULL AUTO_INCREMENT,
  `id_fecha` int NOT NULL,
  `id_receptor` int NOT NULL,
  `producto` varchar(30) NOT NULL,
  `cantidad` varchar(30) NOT NULL,
  PRIMARY KEY (`id_gasto_empresa`),
  KEY `fk_gastos_empresa` (`id_fecha`),
  KEY `fk_gastos_receptor` (`id_receptor`),
  CONSTRAINT `fk_gastos_empresa` FOREIGN KEY (`id_fecha`) REFERENCES `fechas_gastos` (`id_fecha`),
  CONSTRAINT `fk_gastos_receptor` FOREIGN KEY (`id_receptor`) REFERENCES `receptores` (`id_receptor`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gastos_nuestra_empresa`
--

LOCK TABLES `gastos_nuestra_empresa` WRITE;
/*!40000 ALTER TABLE `gastos_nuestra_empresa` DISABLE KEYS */;
INSERT INTO `gastos_nuestra_empresa` VALUES (1,1,2,'motor de ascensor','37000'),(2,2,3,'puerta de cabina','25200'),(3,3,6,'herramientas varias','6000'),(4,4,10,'cinta de freno','8000'),(5,5,1,'espejo de ascensor','15000'),(6,6,2,'herramientas varias','7000'),(7,7,5,'cinta de freno','8000'),(8,8,6,'panel de botones','10000'),(9,9,8,'herramientas varias','5000'),(10,10,9,'cinta de freno','7000'),(11,11,4,'panel de botones','10000'),(12,12,4,'panel de botones','10000'),(13,13,10,'cinta de freno','6000'),(14,14,1,'panel de botones','9200'),(15,15,2,'motor de ascensor','37000');
/*!40000 ALTER TABLE `gastos_nuestra_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientos`
--

DROP TABLE IF EXISTS `movimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimientos` (
  `id_mov` int NOT NULL AUTO_INCREMENT,
  `accion` varchar(50) DEFAULT NULL,
  `nombre_tabla` varchar(30) DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `fecha_accion` date DEFAULT NULL,
  `horario_accion` time DEFAULT NULL,
  PRIMARY KEY (`id_mov`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientos`
--

LOCK TABLES `movimientos` WRITE;
/*!40000 ALTER TABLE `movimientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientos_2`
--

DROP TABLE IF EXISTS `movimientos_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimientos_2` (
  `id_mov_2` int NOT NULL AUTO_INCREMENT,
  `id_tabla` int DEFAULT NULL,
  `campo_anterior` varchar(100) DEFAULT NULL,
  `campo_nuevo` varchar(100) DEFAULT NULL,
  `accion` varchar(50) DEFAULT NULL,
  `nombre_tabla` varchar(30) DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `fecha_accion` date DEFAULT NULL,
  `horario_accion` time DEFAULT NULL,
  PRIMARY KEY (`id_mov_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientos_2`
--

LOCK TABLES `movimientos_2` WRITE;
/*!40000 ALTER TABLE `movimientos_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimientos_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos_arreglos`
--

DROP TABLE IF EXISTS `pagos_arreglos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos_arreglos` (
  `id_pago_arreglo` int NOT NULL AUTO_INCREMENT,
  `precios` int NOT NULL,
  `tipo_de_arreglo` varchar(40) NOT NULL,
  `nombre_cliente` varchar(30) NOT NULL,
  `id_cliente` int NOT NULL,
  `id_fecha` int NOT NULL,
  `descripcion` char(120) DEFAULT NULL,
  PRIMARY KEY (`id_pago_arreglo`),
  KEY `fk_arreglos_clientes` (`id_cliente`),
  KEY `fk_arreglos_fechas` (`id_fecha`),
  CONSTRAINT `fk_arreglos_clientes` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `fk_arreglos_fechas` FOREIGN KEY (`id_fecha`) REFERENCES `fechas_arreglos` (`id_fecha`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos_arreglos`
--

LOCK TABLES `pagos_arreglos` WRITE;
/*!40000 ALTER TABLE `pagos_arreglos` DISABLE KEYS */;
INSERT INTO `pagos_arreglos` VALUES (1,41500,'Cambio de motor','Nicaragua',22,1,'Hicimos un cambio de motor en el ascensor por fallos de este.'),(2,33200,'Cambio puerta cabina','Amenabar',1,2,'Hicimos un cambio de la puerta de cabina del ascensor para modernizar el mismo.'),(3,41500,'Cambio de motor','Araoz',2,3,'Hicimos un cambio de motor en el ascensor por fallos de este.'),(4,33200,'Cambio puerta cabina','Arcos',3,4,'Hicimos un cambio de la puerta de cabina del ascensor para modernizar el mismo.'),(5,10000,'Cambio de cinta de freno','Jokcey club',19,5,'Hicimos un cambio de la cinta de freno por desgaste.'),(6,41500,'Cambio de motor','Zabala',36,6,'Hicimos un cambio de motor en el ascensor por fallos de este.'),(7,33200,'Cambio puerta cabina','Sucre 2004',32,7,'Hicimos un cambio de la puerta de cabina del ascensor para modernizar el mismo.'),(8,41500,'Cambio de motor','Ocampo',26,8,'Hicimos un cambio de motor en el ascensor por fallos de este.'),(9,10000,'Cambio de cinta de freno','Sucre 2126',33,9,'Hicimos un cambio de la cinta de freno por desgaste.'),(10,33200,'Cambio puerta cabina','Rep. de la india',31,10,'Hicimos un cambio de la puerta de cabina del ascensor para modernizar el mismo.'),(11,10000,'Cambio de cinta de freno','Humboldt',11,11,'Hicimos un cambio de la cinta de freno por desgaste.'),(12,41500,'Cambio de motor','Conde',7,12,'Hicimos un cambio de motor en el ascensor por fallos de este.'),(13,10000,'Cambio de cinta de freno','Monroe',21,13,'Hicimos un cambio de la cinta de freno por desgaste.'),(14,41500,'Cambio de motor','Moldes',20,14,'Hicimos un cambio de motor en el ascensor por fallos de este.'),(15,10000,'Cambio de cinta de freno','Obligado 1808',23,15,'Hicimos un cambio de la cinta de freno por desgaste.');
/*!40000 ALTER TABLE `pagos_arreglos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_mov_arreglos` AFTER INSERT ON `pagos_arreglos` FOR EACH ROW begin
	insert into movimientos (accion, nombre_tabla, usuario, fecha_accion, horario_accion)
    values 					('insert', 'pagos_arreglos', current_user(), curdate(), curtime());

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_mov2_arreglos` BEFORE UPDATE ON `pagos_arreglos` FOR EACH ROW begin
	insert into movimientos_2 (id_tabla, campo_anterior, campo_nuevo, accion, nombre_tabla, usuario, fecha_accion, horario_accion)
    values 					(new.id_pago_arreglo, concat('El precio anterior era: ', old.precios), 
							concat('El precio nuevo es: ', new.precios), 'update', 'pagos_arreglos', current_user(), curdate(), curtime());

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pagos_bonos`
--

DROP TABLE IF EXISTS `pagos_bonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos_bonos` (
  `id_pago_bono` int NOT NULL AUTO_INCREMENT,
  `precio` int NOT NULL,
  `nombre_cliente` varchar(30) NOT NULL,
  `id_cliente` int NOT NULL,
  `id_fecha` int NOT NULL,
  `descripcion` char(120) DEFAULT NULL,
  PRIMARY KEY (`id_pago_bono`),
  KEY `fk_bonos_clientes` (`id_cliente`),
  KEY `fk_bonos_fechas` (`id_fecha`),
  CONSTRAINT `fk_bonos_clientes` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `fk_bonos_fechas` FOREIGN KEY (`id_fecha`) REFERENCES `fechas_bonos` (`id_fecha`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos_bonos`
--

LOCK TABLES `pagos_bonos` WRITE;
/*!40000 ALTER TABLE `pagos_bonos` DISABLE KEYS */;
INSERT INTO `pagos_bonos` VALUES (1,15000,'Nicaragua',22,1,'Este es un pago de bono mensual por prestar nuestros servicios.'),(2,18000,'Amenabar',1,2,'Este es un pago de bono mensual por prestar nuestros servicios.'),(3,8000,'Araoz',2,3,'Este es un pago de bono mensual por prestar nuestros servicios.'),(4,17000,'Arcos',3,4,'Este es un pago de bono mensual por prestar nuestros servicios.'),(5,43000,'Jockey club',19,5,'Este es un pago de bono mensual por prestar nuestros servicios.'),(6,15000,'Zabala',36,6,'Este es un pago de bono mensual por prestar nuestros servicios.'),(7,15000,'Sucre 2004',32,7,'Este es un pago de bono mensual por prestar nuestros servicios.'),(8,7500,'Ocampo',26,8,'Este es un pago de bono mensual por prestar nuestros servicios.'),(9,10000,'Sucre 2126',33,9,'Este es un pago de bono mensual por prestar nuestros servicios.'),(10,13990,'Rep. de la india',31,10,'Este es un pago de bono mensual por prestar nuestros servicios.'),(11,12000,'Humboldt',11,11,'Este es un pago de bono mensual por prestar nuestros servicios.'),(12,15000,'Conde',7,12,'Este es un pago de bono mensual por prestar nuestros servicios.'),(13,13250,'Monroe',21,13,'Este es un pago de bono mensual por prestar nuestros servicios.'),(14,11550,'Moldes',20,14,'Este es un pago de bono mensual por prestar nuestros servicios.'),(15,21000,'Obligado 1808',23,15,'Este es un pago de bono mensual por prestar nuestros servicios.');
/*!40000 ALTER TABLE `pagos_bonos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_mov2_bonos` AFTER UPDATE ON `pagos_bonos` FOR EACH ROW begin
	insert into movimientos_2 (id_tabla, campo_anterior, campo_nuevo, accion, nombre_tabla, usuario, fecha_accion, horario_accion)
    values 					(new.id_pago_bono, concat('El precio anterior era: ', old.precio), 
							concat('El precio nuevo es: ', new.precio), 'update', 'pagos_bonos', current_user(), curdate(), curtime());

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_mov_bonos` BEFORE DELETE ON `pagos_bonos` FOR EACH ROW begin
	insert into movimientos (accion, nombre_tabla, usuario, fecha_accion, horario_accion)
    values 					('delete', 'pagos_bonos', current_user(), curdate(), curtime());

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `receptores`
--

DROP TABLE IF EXISTS `receptores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receptores` (
  `id_receptor` int NOT NULL AUTO_INCREMENT,
  `nombre_receptor` varchar(30) NOT NULL,
  `numero_receptor` int NOT NULL,
  `descripcion` char(255) DEFAULT NULL,
  PRIMARY KEY (`id_receptor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receptores`
--

LOCK TABLES `receptores` WRITE;
/*!40000 ALTER TABLE `receptores` DISABLE KEYS */;
INSERT INTO `receptores` VALUES (1,'Ferreteria corrientes',47447389,'Esta es una ferreteria de confianza donde compramos productos para nuestros arreglos'),(2,'Viltec',47457333,'Esta es otra ferreteria, pero tambien cuenta con productos de ascensores mas especificos'),(3,'Sacra',47469112,'Esta es otra ferreteria, pero tambien cuenta con productos de ascensores mas especificos'),(4,'Repuestos ascensores',4748793,'Aqui podemos encontrar cualquier repuesto de ascensor para realizar nuestros trabajos'),(5,'Inot',119367823,'Esta es otra ferreteria, pero tambien cuenta con productos de ascensores mas especificos'),(6,'Fabricio',1542091273,'Esta persona es de confianza, la cual nos provee de respuestos, lamparas de ascensores y todo tipo de producto que nos pueda servir'),(7,'Osvaldo',1149385726,'Esta persona es de confianza, la cual nos provee de respuestos, lamparas de ascensores y todo tipo de producto que nos pueda servir'),(8,'Ferretetia Belgrano',1148473467,'Esta es una ferreteria de confianza donde compramos productos para nuestros arreglos'),(9,'Miguel',1583950473,'Esta persona es de confianza, la cual nos provee de respuestos, lamparas de ascensores y todo tipo de producto que nos pueda servir'),(10,'Roberto',1136475849,'Esta persona es de confianza, la cual nos provee de respuestos, lamparas de ascensores y todo tipo de producto que nos pueda servir');
/*!40000 ALTER TABLE `receptores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_clientes`
--

DROP TABLE IF EXISTS `vw_clientes`;
/*!50001 DROP VIEW IF EXISTS `vw_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_clientes` AS SELECT 
 1 AS `id_cliente`,
 1 AS `nombre_cliente`,
 1 AS `direccion`,
 1 AS `cuil`,
 1 AS `telefono`,
 1 AS `descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_clientes_pagos_bonos`
--

DROP TABLE IF EXISTS `vw_clientes_pagos_bonos`;
/*!50001 DROP VIEW IF EXISTS `vw_clientes_pagos_bonos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_clientes_pagos_bonos` AS SELECT 
 1 AS `nombre_cliente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_gasto_empresa_mayores`
--

DROP TABLE IF EXISTS `vw_gasto_empresa_mayores`;
/*!50001 DROP VIEW IF EXISTS `vw_gasto_empresa_mayores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_gasto_empresa_mayores` AS SELECT 
 1 AS `mayores_a_10000`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_iva_clientes`
--

DROP TABLE IF EXISTS `vw_iva_clientes`;
/*!50001 DROP VIEW IF EXISTS `vw_iva_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_iva_clientes` AS SELECT 
 1 AS `id_pago_bono`,
 1 AS `precio`,
 1 AS `nombre_cliente`,
 1 AS `id_cliente`,
 1 AS `id_fecha`,
 1 AS `descripcion`,
 1 AS `suma_de_iva`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_pagos_bonos_fechas`
--

DROP TABLE IF EXISTS `vw_pagos_bonos_fechas`;
/*!50001 DROP VIEW IF EXISTS `vw_pagos_bonos_fechas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_pagos_bonos_fechas` AS SELECT 
 1 AS `id_pago_bono`,
 1 AS `precio`,
 1 AS `nombre_cliente`,
 1 AS `id_cliente`,
 1 AS `id_fecha`,
 1 AS `descripcion`,
 1 AS `fecha_bono`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'ascensores_aquino'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_count_clientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_count_clientes`(p_nombre varchar(30)) RETURNS int
    DETERMINISTIC
return (select count(*) from clientes where nombre_cliente like concat('%',p_nombre,'%')) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_receptor_fecha_gasto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_receptor_fecha_gasto`(p_fecha_gasto date) RETURNS varchar(30) CHARSET utf8mb4
    DETERMINISTIC
begin
	declare nombre varchar(30);
    set nombre =
		(select nombre_receptor from receptores as r join gastos_nuestra_empresa as g 
		on r.id_receptor = g.id_receptor 
		join fechas_gastos as f on g.id_fecha = f.id_fecha
		where f.fecha_gasto = p_fecha_gasto);
	return nombre;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cant_total_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cant_total_producto`(inout p_nombre_receptor varchar(30),
									inout p_producto varchar(30),
									out cantidad_total int)
begin

	select r.nombre_receptor, g.producto, sum(g.cantidad) into p_nombre_receptor, p_producto, cantidad_total from receptores as r join gastos_nuestra_empresa as g 
	on r.id_receptor = g.id_receptor 
    where g.producto like concat(p_producto, '%')
	group by r.nombre_receptor 
	having r.nombre_receptor like concat(p_nombre_receptor, '%');

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ins_fecha_bono` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ins_fecha_bono`(inout p_id_fecha int,
									inout p_fecha_bono date)
begin
	insert into fechas_bonos (id_fecha, fecha_bono)
	values					(p_id_fecha, p_fecha_bono);


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_clientes`
--

/*!50001 DROP VIEW IF EXISTS `vw_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_clientes` AS select `clientes`.`id_cliente` AS `id_cliente`,`clientes`.`nombre_cliente` AS `nombre_cliente`,`clientes`.`direccion` AS `direccion`,`clientes`.`cuil` AS `cuil`,`clientes`.`telefono` AS `telefono`,`clientes`.`descripcion` AS `descripcion` from `clientes` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_clientes_pagos_bonos`
--

/*!50001 DROP VIEW IF EXISTS `vw_clientes_pagos_bonos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_clientes_pagos_bonos` AS select `clientes`.`nombre_cliente` AS `nombre_cliente` from `clientes` where `clientes`.`id_cliente` in (select `pagos_bonos`.`id_cliente` from `pagos_bonos` where (`pagos_bonos`.`precio` = 15000)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_gasto_empresa_mayores`
--

/*!50001 DROP VIEW IF EXISTS `vw_gasto_empresa_mayores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_gasto_empresa_mayores` AS select count(`gastos_nuestra_empresa`.`id_gasto_empresa`) AS `mayores_a_10000` from `gastos_nuestra_empresa` where (`gastos_nuestra_empresa`.`cantidad` > 10000) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_iva_clientes`
--

/*!50001 DROP VIEW IF EXISTS `vw_iva_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_iva_clientes` AS select `pagos_bonos`.`id_pago_bono` AS `id_pago_bono`,`pagos_bonos`.`precio` AS `precio`,`pagos_bonos`.`nombre_cliente` AS `nombre_cliente`,`pagos_bonos`.`id_cliente` AS `id_cliente`,`pagos_bonos`.`id_fecha` AS `id_fecha`,`pagos_bonos`.`descripcion` AS `descripcion`,(`pagos_bonos`.`precio` * 0.21) AS `suma_de_iva` from `pagos_bonos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_pagos_bonos_fechas`
--

/*!50001 DROP VIEW IF EXISTS `vw_pagos_bonos_fechas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_pagos_bonos_fechas` AS select `p`.`id_pago_bono` AS `id_pago_bono`,`p`.`precio` AS `precio`,`p`.`nombre_cliente` AS `nombre_cliente`,`p`.`id_cliente` AS `id_cliente`,`p`.`id_fecha` AS `id_fecha`,`p`.`descripcion` AS `descripcion`,`f`.`fecha_bono` AS `fecha_bono` from (`pagos_bonos` `p` join `fechas_bonos` `f` on((`p`.`id_fecha` = `f`.`id_fecha`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-28 19:14:55
