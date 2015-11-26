-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: proyectotaxi_development
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

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
-- Current Database: `proyectotaxi_development`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `proyectotaxi_development` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `proyectotaxi_development`;

--
-- Table structure for table `abouts`
--

DROP TABLE IF EXISTS `abouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `imagen_5_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen_5_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen_5_file_size` int(11) DEFAULT NULL,
  `imagen_5_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abouts`
--

LOCK TABLES `abouts` WRITE;
/*!40000 ALTER TABLE `abouts` DISABLE KEYS */;
INSERT INTO `abouts` VALUES (1,'Lorem ipsum dolor sit amet, consecteturpiscinger elit.','Cras er te facilisis, nulla vel viver auctor, leo magna sodales felis, quis malesuad nibh odio ut veliter loki molo. Vivamus at magna non nunc tristique rhoncus. Aliquam nibh ante, egestas id dictum atermolok commodo luctus erito libero.\r\n\r\nPraesent faucibus malesuada faucibus. Donec laoreet metus id laoreet malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consectetur orci sed nulla facilisis consequatertolomon. Curabitur vel lorem sit amet nulla ullamcorper fermentum.','2015-11-15 04:27:05','2015-11-15 04:27:05','page2_img1.jpg','image/jpeg',39740,'2015-11-15 04:27:05'),(2,'Econsecteturpiscinger elit','Sit meter ultricies erat rutrum. Cras er te facilisis, nulla vel viver auctor, leo magna sodales felis, quis malesuad nibh odio ut','2015-11-15 04:44:29','2015-11-15 04:44:29',NULL,NULL,NULL,NULL),(3,'Fconsecteturpiscingerelite','Git meter ultricies erat rutrum. Cras er te facilisis, nulla vel viver auctor, leo magna sodales felis, quis malesuad nibh odio','2015-11-15 04:45:07','2015-11-15 04:45:07',NULL,NULL,NULL,NULL),(4,'Hconsecteturpiscingeliter','Hit meter ultricies erat rutrum. Cras er te facilisis, nulla vel viver auctor, leo magna sodales felis, quis malesuad nibut velit.','2015-11-15 05:01:03','2015-11-15 05:01:03',NULL,NULL,NULL,NULL),(5,'Mconsecteturpiscinr elitwert','Kit meter ultricies erat rutrum. Cras er te facilisis, nulla vel viver auctor, leo magna sodales felis, quis malesuabh odio uter','2015-11-15 05:01:30','2015-11-15 05:01:30',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `abouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admins_on_email` (`email`),
  UNIQUE KEY `index_admins_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'admin@taxixpress.com','$2a$10$atmHLeTS4kBnl2esCch2Aeza6jJPigD78JNDpMIKMoWFSi8S.r7x2',NULL,NULL,NULL,19,'2015-11-19 03:52:36','2015-11-19 03:50:12','127.0.0.1','127.0.0.1','2015-11-14 20:16:26','2015-11-19 03:52:36');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autos`
--

DROP TABLE IF EXISTS `autos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modelo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autos`
--

LOCK TABLES `autos` WRITE;
/*!40000 ALTER TABLE `autos` DISABLE KEYS */;
/*!40000 ALTER TABLE `autos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `imagen_3_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen_3_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen_3_file_size` int(11) DEFAULT NULL,
  `imagen_3_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Taxi Xpress Perú','Av. Primavera S/N Santiago de Surco','511-999-99999','cholo_power@gmail.com','2015-11-15 03:58:31','2015-11-15 05:31:28','logo.png','image/png',5943,'2015-11-15 03:58:31');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asunto` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,NULL,NULL,NULL,'2015-11-15 22:58:39','2015-11-15 22:58:39'),(2,NULL,NULL,NULL,'2015-11-15 23:15:53','2015-11-15 23:15:53'),(3,'David','david@gmail.com','mensaje','2015-11-15 23:41:01','2015-11-15 23:41:01'),(4,'David','david@gmail.com','mensaje','2015-11-15 23:41:30','2015-11-15 23:41:30'),(5,'David','david@gmail.com','mensaje','2015-11-15 23:42:50','2015-11-15 23:42:50'),(6,'David','david@gmail.com','mensaje','2015-11-15 23:42:50','2015-11-15 23:42:50'),(7,'David','david@gmail.com','mensaje','2015-11-15 23:44:21','2015-11-15 23:44:21'),(8,'David','david@gmail.com','mensaje','2015-11-15 23:45:30','2015-11-15 23:45:30'),(9,'David','david@gmail.com','mensaje','2015-11-15 23:45:57','2015-11-15 23:45:57'),(10,NULL,NULL,NULL,'2015-11-15 23:48:47','2015-11-15 23:48:47'),(11,NULL,'croelanjr@grupograndez.com',NULL,'2015-11-15 23:51:54','2015-11-15 23:51:54'),(12,'Ana Maria León Toro','croelanjr@grupograndez.com','es una prueba de website ya debe funcionar la grabacion','2015-11-15 23:54:07','2015-11-15 23:54:07'),(13,NULL,NULL,NULL,'2015-11-19 03:04:09','2015-11-19 03:04:09'),(14,NULL,NULL,NULL,'2015-11-19 03:05:05','2015-11-19 03:05:05'),(15,NULL,NULL,NULL,'2015-11-19 03:06:19','2015-11-19 03:06:19');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drivers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `movil` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dni` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licencia` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen_2_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen_2_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen_2_file_size` int(11) DEFAULT NULL,
  `imagen_2_updated_at` datetime DEFAULT NULL,
  `username_id` int(11) DEFAULT NULL,
  `auto_id` int(11) DEFAULT NULL,
  `marca` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modelo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_drivers_on_email` (`email`),
  UNIQUE KEY `index_drivers_on_reset_password_token` (`reset_password_token`),
  KEY `index_drivers_on_username_id` (`username_id`),
  KEY `index_drivers_on_auto_id` (`auto_id`),
  CONSTRAINT `fk_rails_090e1d6756` FOREIGN KEY (`auto_id`) REFERENCES `autos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
INSERT INTO `drivers` VALUES (1,'conductor@gmail.com','$2a$10$/JN2I/0BL5y9X/1WvsUdjeqz1Lrk6KUih9zWWG4TNx2Ot5vQzmYTG',NULL,NULL,NULL,1,'2015-11-16 01:42:01','2015-11-16 01:42:01','127.0.0.1','127.0.0.1','2015-11-16 01:42:01','2015-11-16 01:42:01','Cholo Power','9898989898','0987878787','JR. SICUANI # 1605 CERCADO DE LIMA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'conducto1r@gmail.com','$2a$10$yfT5CU9jFns8PLLF0dXTu.4/5aLYF1LOv/DlUkt.WTwc.G1y1GBjS',NULL,NULL,NULL,1,'2015-11-16 01:48:46','2015-11-16 01:48:46','127.0.0.1','127.0.0.1','2015-11-16 01:48:45','2015-11-16 01:48:46','Chola Power Ranger','454545454545','34343434343434e','JR. SICUANI # 1605 CERCADO DE LIMA','10260429','Q10260429',NULL,NULL,NULL,NULL,NULL,NULL,'FORD','RANGER','QW2323','Azul','pickup');
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salida` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `llegada` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `precio` decimal(8,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'AEROPUERTO','CERCADO DE LIMA',40.00,'2015-11-16 02:11:30','2015-11-16 02:11:30'),(2,'AEROPUERTO','SAN ISIDRO',50.00,'2015-11-16 02:11:51','2015-11-16 02:11:51'),(3,'AEROPUERTO','MIRAFLORES',80.00,'2015-11-16 02:12:06','2015-11-16 02:12:06'),(4,'AEROPUERTO','SAN BORJA',70.00,'2015-11-16 02:12:51','2015-11-16 02:12:51'),(5,'AEROPUERTO','SANTIAGO DE SURCO',100.00,'2015-11-16 02:13:19','2015-11-16 02:13:19'),(6,'SANTIAGO DE SURCO','AEROPUERTO',90.00,'2015-11-16 02:13:52','2015-11-16 02:13:52'),(7,'MIRAFLORES','AEROPUERTO',80.00,'2015-11-16 02:14:11','2015-11-16 02:14:11'),(8,'SAN BORJA','SAN ISIDRO',30.00,'2015-11-16 02:15:14','2015-11-16 02:15:14'),(9,'MIRAFLORES','SANTIAGO DE SURCO',20.00,'2015-11-16 02:15:35','2015-11-16 02:15:35');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `direccion_salida` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `distrito_salida` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion_llegada` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `distrito_llegada` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modalidad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referencia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_recojo` date DEFAULT NULL,
  `hora_recojo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tiempo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pedido` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `driver_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_reservas_on_driver_id` (`driver_id`),
  CONSTRAINT `fk_rails_cb0b41813f` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (1,'2015-11-18','JR. CUTERVO 1999','Cercado de Lima','AEROPUERTO','San Isidro','Economico','CUADRA 15 DE NACIONES UNIDAS','2015-11-18','1:00pm','','Cambio de Dirección del destino','2015-11-18 21:33:39','2015-11-19 02:26:18',NULL),(2,'2015-11-18','JR. SICUANI 16 15 LIAM','Cercado de Lima','AV. JUAN DE ARONA 883','San Isidro','Lujo','CUADRA 10 DE CANAVAL ','2015-11-18','4:00pm',NULL,'Suspendido por Cliente','2015-11-18 22:28:18','2015-11-19 02:54:38',NULL),(3,'2015-11-19','AEROPUERTO','Callao','JR. SICUANI 1617 LIMA','Cercado de Lima','Economico','CUADRA 15 DE NACIONES UNIDAS','2015-11-19','2:00pm',NULL,'Suspendido por Cliente','2015-11-19 01:36:29','2015-11-19 03:01:33',NULL),(4,'2015-11-19','AEROPUERTO','Callao','JR. SICUANI 1617 LIMA','Cercado de Lima','Economico','CUADRA 15 DE NACIONES UNIDAS','2015-11-19','4:00pm',NULL,'Cambio de Dirección del destino','2015-11-19 01:37:54','2015-11-19 03:04:09',NULL),(5,'2015-11-19','AEROPUERTO','Callao','JR. SICUANI 1617 LIMA','Cercado de Lima','Economico','CUADRA 15 DE NACIONES UNIDAS','2015-11-19','2:00pm',NULL,'Cambio de Dirección punto de Partida','2015-11-19 01:39:27','2015-11-19 03:06:19',NULL),(6,'2015-11-19','AEROPUERTO','Callao','JR. SICUANI 1617 LIMA','Cercado de Lima','Economico','CUADRA 15 DE NACIONES UNIDAS','2015-11-19','2:00pm',NULL,'Cambio de Dirección del destino','2015-11-19 01:39:50','2015-11-19 03:55:21',NULL),(7,'2015-11-19','JR. CAMANA 898 LIMA','Cercado de Lima','AV. CHINCHON 882','San Isidro','Economico','CUADRA DE ARONA 3','2015-11-19','5.00PM',NULL,NULL,'2015-11-19 01:42:02','2015-11-19 01:42:02',NULL),(9,'2015-11-19','gertert434','Santiago de Surco','34534534gfgdg','Surquillo','Economico','reterte','2015-11-19','5.00PM',NULL,NULL,'2015-11-19 01:46:10','2015-11-19 01:46:10',NULL),(10,'2015-11-19','gertert434','Santiago de Surco','34534534gfgdg','Surquillo','Economico','reterte','2015-11-19','5.00PM',NULL,NULL,'2015-11-19 01:47:37','2015-11-19 01:47:37',NULL),(11,'2015-11-19','gertert434','Santiago de Surco','34534534gfgdg','Surquillo','Economico','reterte','2015-11-19','5.00PM',NULL,NULL,'2015-11-19 01:48:08','2015-11-19 01:48:08',NULL),(12,'2015-11-19','r','San Isidro','r','Surquillo','Economico','reterte','2015-11-19','5.00PM',NULL,NULL,'2015-11-19 01:51:44','2015-11-19 01:51:44',NULL),(13,'2015-11-19','w','San Borja','e','Cercado de Lima','Economico','ew','2015-11-19','5.00PM',NULL,NULL,'2015-11-19 01:56:24','2015-11-19 01:56:24',NULL),(14,'2015-11-19','r','San Isidro','r','Surquillo','Economico','reterte','2015-11-19','7.00pm',NULL,NULL,'2015-11-19 01:58:04','2015-11-19 01:58:04',NULL),(15,'2015-11-19','dfsdfsdfsdfsdfsdfsdf','San Isidro','dfwerwercxzxczx','Santiago de Surco','Economico','dsfsdgwefwe','2015-11-19','2:00pm',NULL,NULL,'2015-11-19 02:07:08','2015-11-19 02:07:08',NULL),(16,'2015-11-19','AEROPUERTO','Cercado de Lima','AV. JUAN DE ARONA 883','Mraflores','Economico','eeee','2015-11-19','9:00am',NULL,'Cambio de Dirección del destino','2015-11-19 02:21:43','2015-11-19 02:22:14',NULL);
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20151114191825'),('20151114195930'),('20151114203324'),('20151114221039'),('20151114221454'),('20151114222145'),('20151114224521'),('20151114225030'),('20151114225136'),('20151114225221'),('20151114225336'),('20151114225814'),('20151114235210'),('20151114235407'),('20151115014145'),('20151115014326'),('20151115014420'),('20151116011942'),('20151116013543'),('20151118204938'),('20151118205840'),('20151119034935'),('20151119035151');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `imagen_4_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen_4_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen_4_file_size` int(11) DEFAULT NULL,
  `imagen_4_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Lorem ipsum dolor sit amet, consecteturpiscinger elit.','Sit meter ultricies erat rutrum. Cras er te facilisis, nulla vel viver auctor, leo magna sodales felis, quis malesuad nibh odio ut velit.','2015-11-15 05:19:37','2015-11-15 05:19:37','page4_img1.jpg','image/jpeg',42538,'2015-11-15 05:19:36'),(2,'Dorem ipsum dolor sit amet, consecteturpiscinger elite.','Sit meter ultricies erat rutrum. Cras er te facilisis, nulla vel viver auctor, leo magna sodales felis, quis malesuad nibh odio ut velit.','2015-11-15 05:21:21','2015-11-15 05:21:21','page4_img2.jpg','image/jpeg',31043,'2015-11-15 05:21:21'),(3,'Horempsum dolor sit amet, consecteturpiscinger eliterty.','Sit meter ultricies erat rutrum. Cras er te facilisis, nulla vel viver auctor, leo magna sodales felis, quis malesuad nibh odio ut velit. ','2015-11-15 05:24:31','2015-11-15 05:24:31','page4_img3.jpg','image/jpeg',41073,'2015-11-15 05:24:31'),(4,'Gorem ipsum dolor sit ametertol, consecteturpiscinger elit.','Sit meter ultricies erat rutrum. Cras er te facilisis, nulla vel viver auctor, leo magna sodales felis, quis malesuad nibh odio ut velit. ','2015-11-15 05:25:04','2015-11-15 05:25:04','page4_img4.jpg','image/jpeg',60456,'2015-11-15 05:25:04'),(5,'Norem ipsum dolor sit ametew, consecteturpiscinger eliterty.','Sit meter ultricies erat rutrum. Cras er te facilisis, nulla vel viver auctor, leo magna sodales felis, quis malesuad nibh odio ut velit. ','2015-11-15 05:25:36','2015-11-15 05:25:36','page4_img5.jpg','image/jpeg',35159,'2015-11-15 05:25:36'),(6,'Ipsum dolor sit ametertoli loputyu, consecteturpiscinger elitwer.','Sit meter ultricies erat rutrum. Cras er te facilisis, nulla vel viver auctor, leo magna sodales felis, quis malesuad nibh odio ut velit. ','2015-11-15 05:26:07','2015-11-15 05:26:07','page4_img6.jpg','image/jpeg',63583,'2015-11-15 05:26:06'),(7,'Korem ipsum dolor sit ameter, consecteturpiscinger eliterlo.','Sit meter ultricies erat rutrum. Cras er te facilisis, nulla vel viver auctor, leo magna sodales felis, quis malesuad nibh odio ut velit. ','2015-11-15 05:26:34','2015-11-15 05:26:34','page4_img7.jpg','image/jpeg',45979,'2015-11-15 05:26:34'),(8,'Horem ipsum dolor sit amet, consecteturpiscinger eliter.','Sit meter ultricies erat rutrum. Cras er te facilisis, nulla vel viver auctor, leo magna sodales felis, quis malesuad nibh odio ut velit. ','2015-11-15 05:27:01','2015-11-15 05:27:01','page4_img8.jpg','image/jpeg',57959,'2015-11-15 05:27:00'),(9,'Morem ipsum dolor sit ametolo, consecteturpiscinger eliter.','Sit meter ultricies erat rutrum. Cras er te facilisis, nulla vel viver auctor, leo magna sodales felis, quis malesuad nibh odio ut velit. ','2015-11-15 05:27:32','2015-11-15 05:27:32','page4_img9.jpg','image/jpeg',45360,'2015-11-15 05:27:31');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `movil` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen_1_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen_1_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen_1_file_size` int(11) DEFAULT NULL,
  `imagen_1_updated_at` datetime DEFAULT NULL,
  `reserva_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  KEY `index_users_on_reserva_id` (`reserva_id`),
  CONSTRAINT `fk_rails_df715aee59` FOREIGN KEY (`reserva_id`) REFERENCES `reservas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'croelanjr@cbs-corporation.com.pe','$2a$10$QGXHqUup6xLn/Dt44Xy3uOsM45ugt6A2RzMcXAE3ObUkTg5gXmJ5q',NULL,NULL,NULL,1,'2015-11-16 00:54:13','2015-11-16 00:54:13','127.0.0.1','127.0.0.1','2015-11-16 00:54:13','2015-11-16 00:54:13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'croelanjr@gmail.com','$2a$10$fo/mPukKVAOAOK3Ps04eEOGOuJd8V6fvmgwZKBsbbj2wBSvyts1QS',NULL,NULL,NULL,6,'2015-11-19 03:58:55','2015-11-19 03:55:09','127.0.0.1','127.0.0.1','2015-11-16 01:00:03','2015-11-19 03:58:55','Ana María León Toro','981242988','4255666','JR. SICUANI # 1605 CERCADO DE LIMA',NULL,NULL,NULL,NULL,NULL);
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

-- Dump completed on 2015-11-18 23:26:37
