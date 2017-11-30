-- MySQL dump 10.13  Distrib 5.7.20, for osx10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: goblog
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Test Category#1'),(2,'Test Category#2');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `fk_post_category_id` (`category_id`),
  CONSTRAINT `fk_post_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,1,'Test title#1','<p>Taciti repudiandae tristique, debitis, occaecat justo, ac! Sociis quisquam nemo arcu ex. Ut accumsan. Eos! Turpis quasi turpis taciti magni, accusamus, proident! Porttitor praesentium, esse phasellus consectetuer, facilisi, blandit deserunt. Dui ea error aliquid officia egestas. Nec totam, nihil dolore tempore feugiat, eos ante cupidatat unde quidem consequuntur ratione congue doloribus unde ullam laborum. Ac! Posuere nonummy dolorem tempus necessitatibus. Congue do mattis? Tortor, reprehenderit sodales, iaculis, magnam! Ultrices maecenas montes quae, consequat? Litora turpis fuga, corporis eos, aute, excepturi sociosqu reprehenderit ex accumsan convallis erat commodi accusamus odio! Posuere tortor molestiae hic vehicula felis? Pharetra conubia quisque minima, netus.</p>\n\n<p>Venenatis primis dictumst nunc, aut nostra? Velit, aspernatur. Dignissimos nisl fuga modi, ridiculus cum semper posuere enim error posuere, posuere est vero officiis maecenas, tempus facilisis ac ipsam. Maecenas per, ut culpa? Excepturi, id eleifend duis! Dolorem suspendisse necessitatibus nobis fugit do. Sollicitudin sem? Facilisi consequatur aptent eaque bibendum risus do cubilia, etiam id dapibus leo! Officiis dictum metus hac blandit eleifend nullam ullamcorper sollicitudin debitis do, turpis iaculis harum nullam at asperiores voluptatum dignissimos recusandae convallis quas sociis pulvinar sint accusamus, mi voluptatem, accusamus, quia sequi accusantium sociis magna, mollitia dignissimos beatae, quaerat magni tellus, debitis gravida eos laoreet.</p>');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-30 12:03:49
