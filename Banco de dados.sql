-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: stone
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` binary(16) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (_binary '�\�9HM�&-��\r�','Luke SkyWalker');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` binary(16) NOT NULL,
  `title` varchar(45) NOT NULL,
  `price` int NOT NULL,
  `zipcode` varchar(9) NOT NULL,
  `seller` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  `thumbnail_hd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (_binary 'N7-�\�+A����-\�(�','Bota do Imperio',720,'78833-000','Lombimia Mota','26/11/2015','https://cdn.awsli.com.br/600x450/21/21351/produto/3853007/f66e8c63ab.jpg'),(_binary '\�ޢd�ABɘ\�@OB\�\�','Calça do Imperio',7390,'77993-000','João da Silva Mota','26/11/2015','https://cdn.awsli.com.br/600x450/21/21351/produto/3853007/f66e8c63ab.jpg'),(_binary '�\�l\�6�DЯ�n=\��','Blusa do Imperio',7990,'78993-000','João da Silva','26/11/2015','https://cdn.awsli.com.br/600x450/21/21351/produto/3853007/f66e8c63ab.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` binary(16) NOT NULL,
  `clientid` binary(16) DEFAULT NULL,
  `value` int DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `card_number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (_binary '=F!w3\�Bޖ7��a\�',_binary '�\�9HM�&-��\r�',1342236,'17/02/2024','1234123412341234'),(_binary 'C=8>�iC��4\�|@[�+',_binary '�\�9HM�&-��\r�',1342236,'17/02/2024','1234123412341234'),(_binary 'vw!Jv0@�ٛ�J\�2�',_binary '�\�9HM�&-��\r�',1342236,'17/02/2024','1234123412341234'),(_binary '��/Z#Md�\�Cs�\�\'�',_binary '�\�9HM�&-��\r�',1342236,'17/02/2024','1234123412341234'),(_binary '\�\�q�tYAC����R\�',_binary '�\�9HM�&-��\r�',1342236,'17/02/2024','1234123412341234'),(_binary 'ԅO\\\�iAF�\�E9�eo.',_binary '�\�9HM�&-��\r�',1342236,'17/02/2024','1234123412341234');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'stone'
--

--
-- Dumping routines for database 'stone'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-17 15:59:52
