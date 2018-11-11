-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: grandcreate
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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add balance',7,'add_balance'),(26,'Can change balance',7,'change_balance'),(27,'Can delete balance',7,'delete_balance'),(28,'Can view balance',7,'view_balance'),(29,'Can add not register user',8,'add_notregisteruser'),(30,'Can change not register user',8,'change_notregisteruser'),(31,'Can delete not register user',8,'delete_notregisteruser'),(32,'Can view not register user',8,'view_notregisteruser'),(33,'Can add trade',9,'add_trade'),(34,'Can change trade',9,'change_trade'),(35,'Can delete trade',9,'delete_trade'),(36,'Can view trade',9,'view_trade'),(37,'Can add transaction',10,'add_transaction'),(38,'Can change transaction',10,'change_transaction'),(39,'Can delete transaction',10,'delete_transaction'),(40,'Can view transaction',10,'view_transaction'),(41,'Can add user',11,'add_user'),(42,'Can change user',11,'change_user'),(43,'Can delete user',11,'delete_user'),(44,'Can view user',11,'view_user'),(45,'Can add user friend request order',12,'add_userfriendrequestorder'),(46,'Can change user friend request order',12,'change_userfriendrequestorder'),(47,'Can delete user friend request order',12,'delete_userfriendrequestorder'),(48,'Can view user friend request order',12,'view_userfriendrequestorder'),(49,'Can add user mapping',13,'add_usermapping'),(50,'Can change user mapping',13,'change_usermapping'),(51,'Can delete user mapping',13,'delete_usermapping'),(52,'Can view user mapping',13,'view_usermapping'),(53,'Can add user session',14,'add_usersession'),(54,'Can change user session',14,'change_usersession'),(55,'Can delete user session',14,'delete_usersession'),(56,'Can view user session',14,'view_usersession');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$vgcLGIlHp8Fj$9HbE524NwDwhxtrCGf3U4w1jAqbHoeoHHkUBd+Az4Tc=','2018-10-22 08:05:33.794384',1,'vaskka','','','15145051056@163.com',1,1,'2018-10-22 08:05:21.024596'),(2,'pbkdf2_sha256$120000$uaKLcIljZeR7$PfWKeTEBKF/yPw4ldw7XqryQFH8AvdoF6CV0hERehE8=','2018-11-04 12:18:09.384868',1,'admin','','','1139851358@qq.com',1,1,'2018-11-04 12:17:46.095561');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chain_balance`
--

DROP TABLE IF EXISTS `chain_balance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chain_balance` (
  `value` int(11) NOT NULL,
  `balance_id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `user_id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`balance_id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `chain_balance_user_id_06aec4f8_fk_chain_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `chain_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chain_balance`
--

LOCK TABLES `chain_balance` WRITE;
/*!40000 ALTER TABLE `chain_balance` DISABLE KEYS */;
/*!40000 ALTER TABLE `chain_balance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chain_notregisteruser`
--

DROP TABLE IF EXISTS `chain_notregisteruser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chain_notregisteruser` (
  `user_id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `nick_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `verify_code` varchar(4) COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chain_notregisteruser`
--

LOCK TABLES `chain_notregisteruser` WRITE;
/*!40000 ALTER TABLE `chain_notregisteruser` DISABLE KEYS */;
/*!40000 ALTER TABLE `chain_notregisteruser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chain_trade`
--

DROP TABLE IF EXISTS `chain_trade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chain_trade` (
  `trade_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `trade_type` int(11) NOT NULL,
  `face_token` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `trade_value` int(11) NOT NULL,
  `trade_time` datetime(6) NOT NULL,
  `balance_id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `transaction_id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`trade_id`),
  KEY `chain_trade_transaction_id_afe473cd_fk_chain_tra` (`transaction_id`),
  KEY `chain_trade_balance_id_59358dce` (`balance_id`),
  CONSTRAINT `chain_trade_balance_id_59358dce_fk_chain_balance_balance_id` FOREIGN KEY (`balance_id`) REFERENCES `chain_balance` (`balance_id`),
  CONSTRAINT `chain_trade_transaction_id_afe473cd_fk_chain_tra` FOREIGN KEY (`transaction_id`) REFERENCES `chain_transaction` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chain_trade`
--

LOCK TABLES `chain_trade` WRITE;
/*!40000 ALTER TABLE `chain_trade` DISABLE KEYS */;
/*!40000 ALTER TABLE `chain_trade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chain_transaction`
--

DROP TABLE IF EXISTS `chain_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chain_transaction` (
  `order_id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int(11) NOT NULL,
  `transaction_value` int(11) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `receiver_id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `sender_id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `chain_transaction_receiver_id_537e32b7` (`receiver_id`),
  KEY `chain_transaction_sender_id_e5bfcf6a` (`sender_id`),
  CONSTRAINT `chain_transaction_receiver_id_537e32b7_fk_chain_user_user_id` FOREIGN KEY (`receiver_id`) REFERENCES `chain_user` (`user_id`),
  CONSTRAINT `chain_transaction_sender_id_e5bfcf6a_fk_chain_user_user_id` FOREIGN KEY (`sender_id`) REFERENCES `chain_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chain_transaction`
--

LOCK TABLES `chain_transaction` WRITE;
/*!40000 ALTER TABLE `chain_transaction` DISABLE KEYS */;
INSERT INTO `chain_transaction` VALUES ('o1',1,2000,'2018-11-06 03:44:58.148958','2018-11-06 03:44:58.148998','user2222222222222222V222222222aZ','n1'),('o2',1,500000,'2018-11-06 03:45:09.187915','2018-11-06 03:45:09.187947','user2222222222222222V222222222aZ','u3'),('o3',1,2102,'2018-11-06 03:48:36.176204','2018-11-06 03:48:36.176373','n1','u3'),('o4',1,21423,'2018-11-06 03:48:44.600032','2018-11-06 03:48:44.600066','n1','user2222222222222222V222222222aZ'),('o5',0,5999,'2018-11-06 03:48:52.408990','2018-11-06 03:48:52.409012','u3','user2222222222222222V222222222aZ'),('o6',0,4555,'2018-11-06 03:49:00.717983','2018-11-06 03:49:00.718010','user2222222222222222V222222222aZ','n1'),('o7',0,900,'2018-11-06 03:49:11.115887','2018-11-06 03:49:11.115914','u3','n1');
/*!40000 ALTER TABLE `chain_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chain_user`
--

DROP TABLE IF EXISTS `chain_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chain_user` (
  `user_id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `trader_id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `nick_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `face_token` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chain_user`
--

LOCK TABLES `chain_user` WRITE;
/*!40000 ALTER TABLE `chain_user` DISABLE KEYS */;
INSERT INTO `chain_user` VALUES ('n1','t1','n1','p1','e1','t1','2018-11-06 03:44:09.534034','2018-11-06 03:44:09.534128'),('u3','t3','n3','p3','e3','f3','2018-11-06 03:44:34.882817','2018-11-06 03:44:34.882867'),('user2222222222222222V222222222aZ','t2','n2','p2','email2@email.com','t2','2018-11-06 03:44:23.029061','2018-11-06 03:44:23.029101');
/*!40000 ALTER TABLE `chain_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chain_userfriendrequestorder`
--

DROP TABLE IF EXISTS `chain_userfriendrequestorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chain_userfriendrequestorder` (
  `friend_order_id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `recipient_id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `sponsor_id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`friend_order_id`),
  UNIQUE KEY `chain_userfriendrequestorder_recipient_id_03e71a5b_uniq` (`recipient_id`),
  UNIQUE KEY `chain_userfriendrequestorder_sponsor_id_d2288831_uniq` (`sponsor_id`),
  CONSTRAINT `chain_userfriendrequ_recipient_id_03e71a5b_fk_chain_use` FOREIGN KEY (`recipient_id`) REFERENCES `chain_user` (`user_id`),
  CONSTRAINT `chain_userfriendrequ_sponsor_id_d2288831_fk_chain_use` FOREIGN KEY (`sponsor_id`) REFERENCES `chain_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chain_userfriendrequestorder`
--

LOCK TABLES `chain_userfriendrequestorder` WRITE;
/*!40000 ALTER TABLE `chain_userfriendrequestorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `chain_userfriendrequestorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chain_usermapping`
--

DROP TABLE IF EXISTS `chain_usermapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chain_usermapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `another_user_id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `one_user_id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `another_user_id` (`another_user_id`),
  UNIQUE KEY `one_user_id` (`one_user_id`),
  CONSTRAINT `chain_usermapping_another_user_id_38040228_fk_chain_user_user_id` FOREIGN KEY (`another_user_id`) REFERENCES `chain_user` (`user_id`),
  CONSTRAINT `chain_usermapping_one_user_id_24d90f7e_fk_chain_user_user_id` FOREIGN KEY (`one_user_id`) REFERENCES `chain_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chain_usermapping`
--

LOCK TABLES `chain_usermapping` WRITE;
/*!40000 ALTER TABLE `chain_usermapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `chain_usermapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chain_usersession`
--

DROP TABLE IF EXISTS `chain_usersession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chain_usersession` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_token` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `user_id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `chain_usersession_user_id_d079bae2_fk_chain_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `chain_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chain_usersession`
--

LOCK TABLES `chain_usersession` WRITE;
/*!40000 ALTER TABLE `chain_usersession` DISABLE KEYS */;
INSERT INTO `chain_usersession` VALUES (17,'s2','2018-11-06 03:44:44.976593','2018-11-06 03:44:44.976630','user2222222222222222V222222222aZ');
/*!40000 ALTER TABLE `chain_usersession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-10-22 08:33:29.225229','order5e41712533dcaa1fc0abbd0521d','UserFriendRequestOrder object (order5e41712533dcaa1fc0abbd0521d)',3,'',12,1),(2,'2018-10-22 08:49:24.688139','order75dca249eea03412b6095a0dca8','UserFriendRequestOrder object (order75dca249eea03412b6095a0dca8)',3,'',12,1),(3,'2018-10-22 09:02:16.802759','balance6ae43c23797635fd5d25a7a93','Balance object (balance6ae43c23797635fd5d25a7a93)',2,'[{\"changed\": {\"fields\": [\"value\"]}}]',7,1),(4,'2018-10-22 09:02:52.623562','balance6ae43c23797635fd5d25a7a93','Balance object (balance6ae43c23797635fd5d25a7a93)',2,'[{\"changed\": {\"fields\": [\"value\"]}}]',7,1),(5,'2018-10-22 09:04:31.366433','user498b4e171541952f88f0f9d7630a','User object (user498b4e171541952f88f0f9d7630a)',3,'',11,1),(6,'2018-10-22 09:04:31.393639','user3633189de80b9001746f7d2a6e9b','User object (user3633189de80b9001746f7d2a6e9b)',3,'',11,1),(7,'2018-10-22 09:33:25.378870','order49e3d2f690a245c3f160edf7121','Vaskka->Viskka',3,'',10,1),(8,'2018-10-22 09:33:54.846647','orderff9f056b34c864db4f7e40b7f91','Vaskka->Viskka',3,'',10,1),(9,'2018-11-04 12:19:06.914324','usera7593e68e734ad8c3c3ca5de711e','Viskka',3,'',11,2),(10,'2018-11-04 12:19:06.937288','user0dc8c61df8e77774bfb53a476d61','Vaskka',3,'',11,2),(11,'2018-11-05 11:10:08.719110','orderdce82271179f353a7881dce3911','Vaskka->Viskka',3,'',10,2),(12,'2018-11-05 11:10:08.750017','orderaed2bc767c8b5f96c18ead7fbb7','Vaskka->Viskka',3,'',10,2),(13,'2018-11-05 11:10:08.751715','order8219bc5175d3085f4ede8ccc933','Vaskka->Viskka',3,'',10,2),(14,'2018-11-05 11:10:08.753070','order382d9f0c2b71c4aaf99534d32cf','Vaskka->Viskka',3,'',10,2),(15,'2018-11-05 11:29:16.742976','order6a27529eb5a21b2593dc4365097','Vaskka->Viskka',3,'',10,2),(16,'2018-11-05 11:29:16.772937','order5415b99101e05113699b4e80d70','Vaskka->Viskka',3,'',10,2),(17,'2018-11-05 11:38:50.021784','userd191b740db36efcb4004d2e90666','Viskka',3,'',11,2),(18,'2018-11-05 11:38:50.104238','user6b6413ad3fa683b811d39f114fc5','Vaskka',3,'',11,2),(19,'2018-11-05 12:11:40.418893','userd13a9ac6b05eb814842fa23ca9dc','Vaskka',3,'',11,2),(20,'2018-11-05 12:11:40.438354','user7a3b6a103425b4ddee428ac63541','Viskka',3,'',11,2),(21,'2018-11-06 03:15:05.399222','user1','nick1',1,'[{\"added\": {}}]',11,2),(22,'2018-11-06 03:15:23.455232','user2','nick2',1,'[{\"added\": {}}]',11,2),(23,'2018-11-06 03:15:43.167598','order1','nick1->nick2',1,'[{\"added\": {}}]',10,2),(24,'2018-11-06 03:16:17.459021','user3','nick3',1,'[{\"added\": {}}]',11,2),(25,'2018-11-06 03:16:47.127335','order2','nick3->nick2',1,'[{\"added\": {}}]',10,2),(26,'2018-11-06 03:16:56.850874','11','nick1',1,'[{\"added\": {}}]',14,2),(27,'2018-11-06 03:17:05.296379','12','nick2',1,'[{\"added\": {}}]',14,2),(28,'2018-11-06 03:17:09.014005','13','nick3',1,'[{\"added\": {}}]',14,2),(29,'2018-11-06 03:30:57.815953','user2','nick2',2,'[{\"changed\": {\"fields\": [\"email\"]}}]',11,2),(30,'2018-11-06 03:38:18.438585','user222222222222222222222222222','nick2',2,'[{\"changed\": {\"fields\": [\"user_id\"]}}]',11,2),(31,'2018-11-06 03:39:26.040457','user222222222222222222222222222','nick2',3,'',11,2),(32,'2018-11-06 03:39:49.123391','user3','nick3',3,'',11,2),(33,'2018-11-06 03:39:49.175823','user2','nick2',3,'',11,2),(34,'2018-11-06 03:39:49.178538','user1','nick1',3,'',11,2),(35,'2018-11-06 03:40:12.677176','u1','n1',1,'[{\"added\": {}}]',11,2),(36,'2018-11-06 03:40:30.551545','user2222222222222222222222222aZ','n2',1,'[{\"added\": {}}]',11,2),(37,'2018-11-06 03:40:44.927002','u3','n3',1,'[{\"added\": {}}]',11,2),(38,'2018-11-06 03:40:56.024125','14','n1',1,'[{\"added\": {}}]',14,2),(39,'2018-11-06 03:41:02.516498','15','n3',1,'[{\"added\": {}}]',14,2),(40,'2018-11-06 03:41:11.803054','16','n2',1,'[{\"added\": {}}]',14,2),(41,'2018-11-06 03:41:18.062673','15','n3',2,'[{\"changed\": {\"fields\": [\"session_token\"]}}]',14,2),(42,'2018-11-06 03:41:36.146022','o1','n1->n2',1,'[{\"added\": {}}]',10,2),(43,'2018-11-06 03:41:45.236394','o2','n3->n2',1,'[{\"added\": {}}]',10,2),(44,'2018-11-06 03:43:44.204834','user2222222222222222V222222222aZ','n2',2,'[{\"changed\": {\"fields\": [\"user_id\"]}}]',11,2),(45,'2018-11-06 03:43:50.708707','user2222222222222222V222222222aZ','n2',3,'',11,2),(46,'2018-11-06 03:43:50.736171','user2222222222222222222222222aZ','n2',3,'',11,2),(47,'2018-11-06 03:43:50.737972','u3','n3',3,'',11,2),(48,'2018-11-06 03:43:50.739772','u1','n1',3,'',11,2),(49,'2018-11-06 03:44:09.535084','n1','n1',1,'[{\"added\": {}}]',11,2),(50,'2018-11-06 03:44:23.029769','user2222222222222222V222222222aZ','n2',1,'[{\"added\": {}}]',11,2),(51,'2018-11-06 03:44:34.883533','u3','n3',1,'[{\"added\": {}}]',11,2),(52,'2018-11-06 03:44:44.977195','17','n2',1,'[{\"added\": {}}]',14,2),(53,'2018-11-06 03:44:58.149851','o1','n1->n2',1,'[{\"added\": {}}]',10,2),(54,'2018-11-06 03:45:09.188997','o2','n3->n2',1,'[{\"added\": {}}]',10,2),(55,'2018-11-06 03:48:36.177876','o3','n3->n1',1,'[{\"added\": {}}]',10,2),(56,'2018-11-06 03:48:44.600871','o4','n2->n1',1,'[{\"added\": {}}]',10,2),(57,'2018-11-06 03:48:52.410271','o5','n2->n3',1,'[{\"added\": {}}]',10,2),(58,'2018-11-06 03:49:00.718652','o6','n1->n2',1,'[{\"added\": {}}]',10,2),(59,'2018-11-06 03:49:11.116377','o7','n1->n3',1,'[{\"added\": {}}]',10,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'chain','balance'),(8,'chain','notregisteruser'),(9,'chain','trade'),(10,'chain','transaction'),(11,'chain','user'),(12,'chain','userfriendrequestorder'),(13,'chain','usermapping'),(14,'chain','usersession'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-10-22 08:04:43.743471'),(2,'auth','0001_initial','2018-10-22 08:04:44.008891'),(3,'admin','0001_initial','2018-10-22 08:04:44.084375'),(4,'admin','0002_logentry_remove_auto_add','2018-10-22 08:04:44.092113'),(5,'admin','0003_logentry_add_action_flag_choices','2018-10-22 08:04:44.106637'),(6,'contenttypes','0002_remove_content_type_name','2018-10-22 08:04:44.175039'),(7,'auth','0002_alter_permission_name_max_length','2018-10-22 08:04:44.206374'),(8,'auth','0003_alter_user_email_max_length','2018-10-22 08:04:44.234797'),(9,'auth','0004_alter_user_username_opts','2018-10-22 08:04:44.247098'),(10,'auth','0005_alter_user_last_login_null','2018-10-22 08:04:44.287472'),(11,'auth','0006_require_contenttypes_0002','2018-10-22 08:04:44.289593'),(12,'auth','0007_alter_validators_add_error_messages','2018-10-22 08:04:44.297627'),(13,'auth','0008_alter_user_username_max_length','2018-10-22 08:04:44.343295'),(14,'auth','0009_alter_user_last_name_max_length','2018-10-22 08:04:44.404512'),(15,'chain','0001_initial','2018-10-22 08:04:44.844315'),(16,'sessions','0001_initial','2018-10-22 08:04:44.864422'),(17,'chain','0002_auto_20181022_0830','2018-10-22 08:30:29.296109'),(18,'chain','0003_auto_20181022_0836','2018-10-22 08:36:38.601205'),(19,'chain','0004_auto_20181022_0849','2018-10-22 08:49:04.100531'),(20,'chain','0005_auto_20181022_0934','2018-10-22 09:34:52.186594'),(21,'chain','0006_auto_20181022_0949','2018-10-22 09:49:17.416277');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('nl0u0rtc671trqfpiaet2ng86yy5rejv','YTczN2EyMzBjMGFmNTdlZjFlZDlkMTY1ZTRmOGEyZDQyMTY1YTU3Zjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzOWY1NjI3NDVkOTcyZWExODNkZTdhYjFiYTMwYTdlYTg2YTI3Mjk2In0=','2018-11-18 12:18:09.402801'),('pukiih9bdp7h4hpa35tpr970pu8fr329','MmJlNjJjMDI2YmE5OTRlNzk1NDI1NTY3ZmM5NTc3Y2Y5ODJlMDNjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWUyNGIxNDZkZDE4OGU5YjhiZmM0ZmQ4ZDFmY2Q3NTg0NmM2ZDRhIn0=','2018-11-05 08:05:33.798342');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-12  3:06:33
