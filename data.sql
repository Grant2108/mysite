-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: mysite_db
-- ------------------------------------------------------
-- Server version	8.0.13

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
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add blog type',7,'add_blogtype'),(20,'Can change blog type',7,'change_blogtype'),(21,'Can delete blog type',7,'delete_blogtype'),(22,'Can add blog',8,'add_blog'),(23,'Can change blog',8,'change_blog'),(24,'Can delete blog',8,'delete_blog'),(25,'Can add read num',9,'add_readnum'),(26,'Can change read num',9,'change_readnum'),(27,'Can delete read num',9,'delete_readnum'),(28,'Can add read num',10,'add_readnum'),(29,'Can change read num',10,'change_readnum'),(30,'Can delete read num',10,'delete_readnum'),(31,'Can add read detail',11,'add_readdetail'),(32,'Can change read detail',11,'change_readdetail'),(33,'Can delete read detail',11,'delete_readdetail'),(34,'Can add comment',12,'add_comment'),(35,'Can change comment',12,'change_comment'),(36,'Can delete comment',12,'delete_comment');
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
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$zmC2m11A2u3b$QX6niOdeh7g0ilMyoU4UR31M14ZK7nn4KAA6O/EFPrk=','2018-11-21 05:24:00.000000',0,'ysh','','','',0,0,'2017-12-24 17:49:00.000000'),(2,'pbkdf2_sha256$100000$AZnlmNmK2LnP$mgYr9CtaZo4hLmxbfMAfoAY2z/3qoytF9LcNpEqr2xk=','2018-03-31 10:43:26.190000',0,'ysh1','','','1@qq.com',0,1,'2018-03-31 10:43:25.831000'),(3,'pbkdf2_sha256$100000$wcaS6pC6XDeD$7NWytOioWf6/rs2lDBemOFEgJAsv0Gd8SMK4py8ulPk=','2018-11-21 05:19:11.414000',0,'aaa','','','aaa@store.com',0,1,'2018-11-21 05:19:10.780000'),(4,'pbkdf2_sha256$100000$hFy6SoHOoAQN$dLaOmsqrz4u6Y9zF305tU8esTId5+JkeOL+Gi5GezzI=','2018-11-21 05:19:41.557000',0,'bbb','','','qqqq@qq.com',0,1,'2018-11-21 05:19:41.015000'),(5,'pbkdf2_sha256$100000$Fo3DnVkszf1K$qk7rO7kwX6YUdT2G3bXuw30B92JZ28XW63RjeR88YN8=','2018-11-21 05:49:31.583000',1,'mchen','','','',1,1,'2018-11-21 05:22:29.297000');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blog`
--

DROP TABLE IF EXISTS `blog_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_updated_time` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  `blog_type_id` int(11) NOT NULL,
  `is_recommend` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blog_author_id_8791af69_fk_auth_user_id` (`author_id`),
  KEY `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` (`blog_type_id`),
  CONSTRAINT `blog_blog_author_id_8791af69_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` FOREIGN KEY (`blog_type_id`) REFERENCES `blog_blogtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blog`
--

LOCK TABLES `blog_blog` WRITE;
/*!40000 ALTER TABLE `blog_blog` DISABLE KEYS */;
INSERT INTO `blog_blog` VALUES (3,'长内容的博客','<h2>1、测试</h2>\r\n\r\n<p>阿斯顿房价阿斯顿房价阿斯顿房价阿<strong>斯顿房价阿斯</strong><br />\r\n顿房价阿斯顿房价阿斯顿房</p>\r\n\r\n<p><img alt=\"\" src=\"/media/upload/2018/02/05/lwpbrq.png\" style=\"height:240px\" /></p>\r\n\r\n<p><span style=\"color:#1abc9c\">sdfsdfsdf</span></p>\r\n\r\n<p><span style=\"color:#1abc9c\">sdfsdf<span style=\"background-color:#f39c12\">sdfsdf</span></span></p>','2017-12-28 16:52:41.398000','2018-02-04 18:06:59.335000',1,2,0),(4,'随笔2','士大夫','2017-12-28 17:14:14.805000','2017-12-28 17:14:14.806000',1,2,0),(5,'Django1','test','2017-12-28 17:14:29.850000','2017-12-28 17:14:29.850000',1,1,0),(6,'shell下第1篇','xxxxxxx','2018-01-19 17:53:22.745000','2018-01-19 17:53:22.745000',1,1,0),(7,'for 1','xxxx:1','2018-01-19 18:00:40.831000','2018-01-19 18:00:40.831000',1,1,0),(8,'for 2','xxxx:2','2018-01-19 18:00:40.846000','2018-01-19 18:00:40.847000',1,1,0),(9,'for 3','xxxx:3','2018-01-19 18:00:40.856000','2018-01-19 18:00:40.856000',1,1,0),(10,'for 4','xxxx:4','2018-01-19 18:00:40.867000','2018-01-19 18:00:40.867000',1,1,0),(11,'for 5','xxxx:5','2018-01-19 18:00:40.874000','2018-01-19 18:00:40.874000',1,1,0),(12,'for 6','xxxx:6','2018-01-19 18:00:40.880000','2018-01-19 18:00:40.880000',1,1,0),(13,'for 7','xxxx:7','2018-01-19 18:00:40.889000','2018-01-19 18:00:40.889000',1,1,0),(14,'for 8','xxxx:8','2018-01-19 18:00:40.897000','2018-01-19 18:00:40.897000',1,1,0),(15,'for 9','xxxx:9','2018-01-19 18:00:40.906000','2018-01-19 18:00:40.906000',1,1,0),(16,'for 10','xxxx:10','2018-01-19 18:00:40.913000','2018-01-19 18:00:40.913000',1,1,0),(17,'for 11','xxxx:11','2018-01-19 18:00:40.922000','2018-01-19 18:00:40.922000',1,1,0),(18,'for 12','xxxx:12','2018-01-19 18:00:40.929000','2018-01-19 18:00:40.929000',1,1,0),(19,'for 13','xxxx:13','2018-01-19 18:00:40.934000','2018-01-19 18:00:40.935000',1,1,0),(20,'for 14','xxxx:14','2018-01-19 18:00:40.940000','2018-01-19 18:00:40.941000',1,1,0),(21,'for 15','xxxx:15','2018-01-19 18:00:40.954000','2018-01-19 18:00:40.954000',1,1,0),(22,'for 16','xxxx:16','2018-01-19 18:00:40.963000','2018-01-19 18:00:40.964000',1,1,0),(23,'for 17','xxxx:17','2018-01-19 18:00:40.972000','2018-01-19 18:00:40.972000',1,1,0),(24,'for 18','xxxx:18','2018-01-19 18:00:40.980000','2018-01-19 18:00:40.981000',1,1,0),(25,'for 19','xxxx:19','2018-01-19 18:00:40.995000','2018-01-19 18:00:40.995000',1,1,0),(26,'for 20','<p>xxxx:20</p>','2018-01-19 18:00:41.007000','2018-11-19 06:27:50.996000',1,1,1),(27,'for 21','xxxx:21','2018-01-19 18:00:41.016000','2018-01-19 18:00:41.016000',1,1,0),(28,'for 22','<p>xxxx:22</p>','2018-01-19 18:00:41.027000','2018-11-21 05:29:06.296000',1,1,1),(29,'for 23','xxxx:23','2018-01-19 18:00:41.034000','2018-01-19 18:00:41.034000',1,1,0),(30,'for 24','xxxx:24','2018-01-19 18:00:41.042000','2018-01-19 18:00:41.042000',1,1,0),(31,'for 25','xxxx:25','2018-01-19 18:00:41.050000','2018-01-19 18:00:41.050000',1,1,0),(32,'for 26','xxxx:26','2018-01-19 18:00:41.056000','2018-01-19 18:00:41.056000',1,1,0),(33,'for 27','xxxx:27','2018-01-19 18:00:41.065000','2018-01-19 18:00:41.065000',1,1,0),(34,'for 28','xxxx:28','2018-01-19 18:00:41.072000','2018-01-19 18:00:41.073000',1,1,0),(35,'for 29','xxxx:29','2018-01-19 18:00:41.080000','2018-02-07 17:24:16.069000',1,1,0),(36,'for 30','<p>xxxx:30</p>','2018-01-19 18:00:41.089000','2018-11-19 04:55:17.130000',1,1,1);
/*!40000 ALTER TABLE `blog_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogtype`
--

DROP TABLE IF EXISTS `blog_blogtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_blogtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogtype`
--

LOCK TABLES `blog_blogtype` WRITE;
/*!40000 ALTER TABLE `blog_blogtype` DISABLE KEYS */;
INSERT INTO `blog_blogtype` VALUES (1,'Django'),(2,'随笔'),(3,'感悟');
/*!40000 ALTER TABLE `blog_blogtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_comment`
--

DROP TABLE IF EXISTS `comment_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comment_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_time` datetime(6) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `reply_to_id` int(11) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_comment_content_type_id_fbfb9793_fk_django_co` (`content_type_id`),
  KEY `comment_comment_user_id_6078e57b_fk_auth_user_id` (`user_id`),
  KEY `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` (`reply_to_id`),
  KEY `comment_comment_parent_id_b612524c_fk_comment_comment_id` (`parent_id`),
  KEY `comment_comment_root_id_28721811_fk_comment_comment_id` (`root_id`),
  CONSTRAINT `comment_comment_content_type_id_fbfb9793_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `comment_comment_parent_id_b612524c_fk_comment_comment_id` FOREIGN KEY (`parent_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` FOREIGN KEY (`reply_to_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `comment_comment_root_id_28721811_fk_comment_comment_id` FOREIGN KEY (`root_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_user_id_6078e57b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_comment`
--

LOCK TABLES `comment_comment` WRITE;
/*!40000 ALTER TABLE `comment_comment` DISABLE KEYS */;
INSERT INTO `comment_comment` VALUES (2,36,'123','2018-03-25 18:56:01.894000',8,1,NULL,NULL,NULL),(3,36,'234','2018-03-25 19:03:41.918000',8,1,NULL,NULL,NULL),(4,36,'345','2018-04-08 18:01:12.027000',8,1,NULL,NULL,NULL),(5,36,'456','2018-04-08 18:21:35.579000',8,1,NULL,NULL,NULL),(6,36,'<p>567</p>','2018-04-08 18:32:59.263000',8,1,NULL,NULL,NULL),(7,36,'<p>678</p>','2018-04-08 18:54:55.275000',8,1,NULL,NULL,NULL),(8,36,'<p>789</p>','2018-04-08 18:59:01.475000',8,1,NULL,NULL,NULL),(9,36,'<p>899</p>','2018-04-08 19:03:03.352000',8,1,NULL,NULL,NULL),(10,36,'<p><img alt=\"smiley\" height=\"23\" src=\"http://localhost:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" /></p>','2018-04-08 19:18:32.838000',8,1,NULL,NULL,NULL),(11,36,'123123','2018-04-12 20:20:07.926000',8,2,2,1,2),(12,36,'<p>1234</p>','2018-04-12 21:26:24.344000',8,1,10,1,10),(13,36,'<p>1234</p>','2018-04-12 21:27:17.276000',8,1,NULL,NULL,NULL),(14,36,'<p>12345</p>','2018-04-12 21:49:49.195000',8,1,12,1,10),(15,36,'<p>2134</p>','2018-04-12 21:49:57.446000',8,1,13,1,13),(16,36,'<p>dfg</p>','2018-04-12 21:51:50.962000',8,1,13,1,13);
/*!40000 ALTER TABLE `comment_comment` ENABLE KEYS */;
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
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-12-24 17:57:25.871000','1','BlogType object (1)',1,'[{\"added\": {}}]',7,1),(2,'2017-12-24 17:57:34.218000','2','BlogType object (2)',1,'[{\"added\": {}}]',7,1),(3,'2017-12-24 17:57:42.824000','3','BlogType object (3)',1,'[{\"added\": {}}]',7,1),(4,'2017-12-24 17:59:38.608000','1','<Blog: 第一篇博客>',1,'[{\"added\": {}}]',8,1),(5,'2017-12-28 16:45:51.048000','2','<Blog: 第二篇博客>',1,'[{\"added\": {}}]',8,1),(6,'2017-12-28 16:50:53.821000','2','<Blog: 第二篇博客>',3,'',8,1),(7,'2017-12-28 16:50:53.838000','1','<Blog: 第一篇博客>',3,'',8,1),(8,'2017-12-28 16:52:41.400000','3','<Blog: 长内容的博客>',1,'[{\"added\": {}}]',8,1),(9,'2017-12-28 17:14:14.808000','4','<Blog: 随笔2>',1,'[{\"added\": {}}]',8,1),(10,'2017-12-28 17:14:29.852000','5','<Blog: Django1>',1,'[{\"added\": {}}]',8,1),(11,'2018-02-04 17:32:41.794000','3','<Blog: 长内容的博客>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(12,'2018-02-04 17:49:46.452000','3','<Blog: 长内容的博客>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(13,'2018-02-04 18:06:59.339000','3','<Blog: 长内容的博客>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(14,'2018-02-07 17:27:27.225000','36','<Blog: for 30>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(15,'2018-02-23 17:34:48.876000','1','ReadNum object (1)',1,'[{\"added\": {}}]',9,1),(16,'2018-02-23 18:17:40.854000','1','ReadNum object (1)',1,'[{\"added\": {}}]',10,1),(17,'2018-02-28 16:48:58.931000','1','ReadDetail object (1)',1,'[{\"added\": {}}]',11,1),(18,'2018-03-05 18:55:13.053000','5','ReadDetail object (5)',1,'[{\"added\": {}}]',11,1),(19,'2018-03-05 18:55:42.547000','4','ReadNum object (4)',2,'[{\"changed\": {\"fields\": [\"read_num\"]}}]',10,1),(20,'2018-03-25 18:32:56.558000','1','ReadNum object (1)',2,'[{\"changed\": {\"fields\": [\"read_num\"]}}]',10,1),(21,'2018-03-25 18:56:30.855000','1','Comment object (1)',3,'',12,1),(22,'2018-04-12 20:20:07.932000','11','Comment object (11)',1,'[{\"added\": {}}]',12,1),(23,'2018-04-12 20:23:41.856000','11','123123',2,'[{\"changed\": {\"fields\": [\"parent\"]}}]',12,1),(24,'2018-04-12 20:46:06.841000','11','123123',2,'[{\"changed\": {\"fields\": [\"root\", \"reply_to\"]}}]',12,1),(25,'2018-11-19 04:55:17.132000','36','<Blog: for 30>',2,'[{\"changed\": {\"fields\": [\"is_recommend\"]}}]',8,1),(26,'2018-11-19 06:27:50.998000','26','<Blog: for 20>',2,'[{\"changed\": {\"fields\": [\"content\", \"is_recommend\"]}}]',8,1),(27,'2018-11-21 05:23:53.379000','1','ysh',2,'[{\"changed\": {\"fields\": [\"is_superuser\", \"last_login\"]}}]',4,5),(28,'2018-11-21 05:24:48.292000','1','ysh',3,'',4,5),(29,'2018-11-21 05:24:48.434000','2','ysh1',3,'',4,5),(30,'2018-11-21 05:25:22.741000','1','ysh',2,'[{\"changed\": {\"fields\": [\"is_active\", \"is_staff\", \"last_login\"]}}]',4,5),(31,'2018-11-21 05:29:06.298000','28','<Blog: for 22>',2,'[{\"changed\": {\"fields\": [\"content\", \"is_recommend\"]}}]',8,5);
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
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(8,'blog','blog'),(7,'blog','blogtype'),(9,'blog','readnum'),(12,'comment','comment'),(5,'contenttypes','contenttype'),(11,'read_statistics','readdetail'),(10,'read_statistics','readnum'),(6,'sessions','session');
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
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-11-21 08:31:49.991280'),(2,'auth','0001_initial','2018-11-21 08:32:01.588100'),(3,'admin','0001_initial','2018-11-21 08:32:04.006105'),(4,'admin','0002_logentry_remove_auto_add','2018-11-21 08:32:04.084105'),(5,'contenttypes','0002_remove_content_type_name','2018-11-21 08:32:05.708508'),(6,'auth','0002_alter_permission_name_max_length','2018-11-21 08:32:06.660109'),(7,'auth','0003_alter_user_email_max_length','2018-11-21 08:32:06.847310'),(8,'auth','0004_alter_user_username_opts','2018-11-21 08:32:06.909710'),(9,'auth','0005_alter_user_last_login_null','2018-11-21 08:32:07.705311'),(10,'auth','0006_require_contenttypes_0002','2018-11-21 08:32:07.767711'),(11,'auth','0007_alter_validators_add_error_messages','2018-11-21 08:32:07.845712'),(12,'auth','0008_alter_user_username_max_length','2018-11-21 08:32:10.468516'),(13,'auth','0009_alter_user_last_name_max_length','2018-11-21 08:32:11.404518'),(14,'blog','0001_initial','2018-11-21 08:32:14.422324'),(15,'blog','0002_auto_20180120_0210','2018-11-21 08:32:14.484724'),(16,'blog','0003_auto_20180205_0147','2018-11-21 08:32:14.593924'),(17,'blog','0004_auto_20180205_0205','2018-11-21 08:32:14.734324'),(18,'blog','0005_blog_readed_num','2018-11-21 08:32:15.405125'),(19,'blog','0006_auto_20180224_0132','2018-11-21 08:32:18.636331'),(20,'blog','0007_auto_20180224_0212','2018-11-21 08:32:19.946733'),(21,'blog','0008_blog_is_recommend','2018-11-21 08:32:20.539534'),(22,'comment','0001_initial','2018-11-21 08:32:23.411940'),(23,'comment','0002_auto_20180413_0417','2018-11-21 08:32:23.957941'),(24,'comment','0003_auto_20180413_0422','2018-11-21 08:32:26.516345'),(25,'comment','0004_auto_20180413_0431','2018-11-21 08:32:29.950351'),(26,'comment','0005_auto_20180413_0435','2018-11-21 08:32:33.101557'),(27,'comment','0006_auto_20181119_1247','2018-11-21 08:32:33.210757'),(28,'read_statistics','0001_initial','2018-11-21 08:32:34.552359'),(29,'read_statistics','0002_readdetail','2018-11-21 08:32:36.299562'),(30,'sessions','0001_initial','2018-11-21 08:32:37.177164');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1yxmbfojymxplr0akqy57m3lb8ynzrf4','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-03-14 16:48:33.818000'),('2nsxrgbqo9nx2cpw60u4d1e5eklevsql','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-02-18 17:27:25.844000'),('2qf7m5i4cnn0ln4czsp3xuo2isaoq87r','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-02-08 16:45:08.096000'),('60tpad54tedxqyhts7eiwrjlzvj19x0b','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-02-20 14:32:46.134000'),('751hsr4r5zv9gmtb1surmhfk1ss2425w','YWE2N2VjMWU1ZGZlYzE2N2VhMjY0Yzc1MTllNjJjODBhNGU0Yjk1Nzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWJkNWZmOGM4MTcwZGJhMDg1MjU4MGZlYmUyNDc4NWY5NGRkMDYwIn0=','2018-04-14 10:43:26.203000'),('7l3138a1suypj2ymamrtt6x1c416nbss','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-12-03 02:26:27.710000'),('9vm5q2wvdehumcul1y62lf64f06ym3vo','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-01-07 17:54:43.802000'),('b1qnir8vl580cod6y7i9hbxnpj46ce6i','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-02-21 17:00:03.358000'),('cdph81y6ruv5qohm4zved37yeqng6v0z','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-04-08 18:33:21.018000'),('dt02pppm6k4wvp26j03xwltr1ddki4fx','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-04-08 18:29:24.971000'),('ig4glb9bclhog88twq0ynxawgh4fy3mf','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-02-18 17:30:44.870000'),('jn6h93agtv1slq3v23v6m1ri7wpolz5r','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-04-03 19:08:15.069000'),('ksdaeyy8929hgtarw5sp7df4setxrkvx','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-03-09 17:34:33.897000'),('sputf6isbnmcfy3u81588dam4xyfag5j','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-01-11 16:45:20.525000'),('ssc58qs01znb95b2e7jepbhzqyg9k0ra','NGQ0NmRjMjk2MmQ5ZGZmYjg5YTBmYzc2OTZiMjNhNmM3YWM3NDI5YTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzRmNjFhNGIyNGVlYTMwYzZiM2VjMzQ1NzA5YzRkZWU3YzA0NWJmIn0=','2018-12-05 05:25:46.339000'),('tcpqmyupoqs2vhq4wj9skci1whw8gh8n','NGQ0NmRjMjk2MmQ5ZGZmYjg5YTBmYzc2OTZiMjNhNmM3YWM3NDI5YTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzRmNjFhNGIyNGVlYTMwYzZiM2VjMzQ1NzA5YzRkZWU3YzA0NWJmIn0=','2018-12-05 05:49:31.726000'),('tykskoa9mvk65jo72b0yetrqwm2i25rv','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-03-19 18:33:41.869000'),('uogzlzd1wx4k2ixd2nnh283phsjsdxtx','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-04-22 17:53:06.955000'),('v5h02l7n8y230wc23k2zqfia54x189gr','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-02-21 17:26:54.345000'),('vm6goinxqkdaop78iddn12oihw6zaqwb','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-04-08 19:03:39.175000'),('vzqzikib2b4v9u2xb1a0z26wpockme03','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-04-26 20:18:23.070000'),('w2aecfgdj4s9d4ddu95g955u5ap47bk6','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-04-08 18:39:46.772000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_cache_table`
--

DROP TABLE IF EXISTS `my_cache_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `my_cache_table` (
  `cache_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  PRIMARY KEY (`cache_key`),
  KEY `my_cache_table_expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_cache_table`
--

LOCK TABLES `my_cache_table` WRITE;
/*!40000 ALTER TABLE `my_cache_table` DISABLE KEYS */;
INSERT INTO `my_cache_table` VALUES (':1:hot_blogs_for_7_days','gASVKwoAAAAAAACMFmRqYW5nby5kYi5tb2RlbHMucXVlcnmUjAhRdWVyeVNldJSTlCmBlH2UKIwFbW9kZWyUjAtibG9nLm1vZGVsc5SMBEJsb2eUk5SMA19kYpROjAZfaGludHOUfZSMBXF1ZXJ5lIwaZGphbmdvLmRiLm1vZGVscy5zcWwucXVlcnmUjAVRdWVyeZSTlCmBlH2UKGgFaAiMDmFsaWFzX3JlZmNvdW50lH2UKIwJYmxvZ19ibG9nlEsEjBpyZWFkX3N0YXRpc3RpY3NfcmVhZGRldGFpbJRLA3WMCWFsaWFzX21hcJSMC2NvbGxlY3Rpb25zlIwLT3JkZXJlZERpY3SUk5QpUpQoaBSMI2RqYW5nby5kYi5tb2RlbHMuc3FsLmRhdGFzdHJ1Y3R1cmVzlIwJQmFzZVRhYmxllJOUKYGUfZQojAp0YWJsZV9uYW1llGgUjAt0YWJsZV9hbGlhc5RoFHViaBVoG4wESm9pbpSTlCmBlH2UKGggaBWMDHBhcmVudF9hbGlhc5RoFGghaBWMCWpvaW5fdHlwZZSMCklOTkVSIEpPSU6UjAlqb2luX2NvbHOUjAJpZJSMCW9iamVjdF9pZJSGlIWUjApqb2luX2ZpZWxklIwiZGphbmdvLmNvbnRyaWIuY29udGVudHR5cGVzLmZpZWxkc5SMCkdlbmVyaWNSZWyUk5QpgZR9lCiMBWZpZWxklIwXZGphbmdvLmRiLm1vZGVscy5maWVsZHOUjAtfbG9hZF9maWVsZJSTlIwEYmxvZ5RoB4wMcmVhZF9kZXRhaWxzlIeUUpRoBYwWcmVhZF9zdGF0aXN0aWNzLm1vZGVsc5SMClJlYWREZXRhaWyUk5SMDHJlbGF0ZWRfbmFtZZSMASuUjBJyZWxhdGVkX3F1ZXJ5X25hbWWUTowQbGltaXRfY2hvaWNlc190b5R9lIwLcGFyZW50X2xpbmuUiYwJb25fZGVsZXRllIwZZGphbmdvLmRiLm1vZGVscy5kZWxldGlvbpSMCkRPX05PVEhJTkeUk5SMC3N5bW1ldHJpY2FslImMCG11bHRpcGxllIh1YowIbnVsbGFibGWUiIwRZmlsdGVyZWRfcmVsYXRpb26UTnVidYwQZXh0ZXJuYWxfYWxpYXNlc5SPlIwJdGFibGVfbWFwlH2UKGgUXZRoFGFoFV2UaBVhdYwMZGVmYXVsdF9jb2xzlImMEGRlZmF1bHRfb3JkZXJpbmeUiIwRc3RhbmRhcmRfb3JkZXJpbmeUiIwMdXNlZF9hbGlhc2VzlI+UjBBmaWx0ZXJfaXNfc3RpY2t5lImMCHN1YnF1ZXJ5lImMBnNlbGVjdJSMHGRqYW5nby5kYi5tb2RlbHMuZXhwcmVzc2lvbnOUjANDb2yUk5QpgZR9lCiMEV9jb25zdHJ1Y3Rvcl9hcmdzlGgUaDdoOGgHaCqHlFKUhpR9lIaUjAxvdXRwdXRfZmllbGSUaGKMBWFsaWFzlGgUjAZ0YXJnZXSUaGJ1YmhdKYGUfZQoaGBoFGg3aDhoB4wFdGl0bGWUh5RSlIaUfZSGlGhmaG1oZ2gUaGhobXVihpSMBXdoZXJllIwaZGphbmdvLmRiLm1vZGVscy5zcWwud2hlcmWUjAlXaGVyZU5vZGWUk5QpgZR9lCiMCGNoaWxkcmVulF2UKIwYZGphbmdvLmRiLm1vZGVscy5sb29rdXBzlIwITGVzc1RoYW6Uk5QpgZR9lCiMA2xoc5RoXSmBlH2UKGhgaBVoN4wPcmVhZF9zdGF0aXN0aWNzlGg9jARkYXRllIeUUpSGlH2UhpRoZmiFaGdoFWhoaIWMEmNvbnRhaW5zX2FnZ3JlZ2F0ZZSJdWKMA3Joc5SMCGRhdGV0aW1llIwEZGF0ZZSTlEMEB+ILFZSFlFKUjBRiaWxhdGVyYWxfdHJhbnNmb3Jtc5RdlGiJiXViaHqMEkdyZWF0ZXJUaGFuT3JFcXVhbJSTlCmBlH2UKGh/aIBoimiNQwQH4gsOlIWUUpRokV2UaImJdWJljAljb25uZWN0b3KUjANBTkSUjAduZWdhdGVklIloiYl1YowLd2hlcmVfY2xhc3OUaHWMCGdyb3VwX2J5lGheaGmGlIwIb3JkZXJfYnmUjA0tcmVhZF9udW1fc3VtlIWUjAhsb3dfbWFya5RLAIwJaGlnaF9tYXJrlEsHjAhkaXN0aW5jdJSJjA9kaXN0aW5jdF9maWVsZHOUKYwRc2VsZWN0X2Zvcl91cGRhdGWUiYwYc2VsZWN0X2Zvcl91cGRhdGVfbm93YWl0lImMHXNlbGVjdF9mb3JfdXBkYXRlX3NraXBfbG9ja2VklImMFHNlbGVjdF9mb3JfdXBkYXRlX29mlCmMDnNlbGVjdF9yZWxhdGVklImMCW1heF9kZXB0aJRLBYwNdmFsdWVzX3NlbGVjdJRoKmhrhpSMDF9hbm5vdGF0aW9uc5RoGSlSlIwMcmVhZF9udW1fc3VtlIwbZGphbmdvLmRiLm1vZGVscy5hZ2dyZWdhdGVzlIwDU3VtlJOUKYGUfZQoaGCMFnJlYWRfZGV0YWlsc19fcmVhZF9udW2UhZR9lIaUjAZmaWx0ZXKUTowSc291cmNlX2V4cHJlc3Npb25zlF2UaF0pgZR9lChoYGgVaDdogmg9jAhyZWFkX251bZSHlFKUhpR9lIaUaGZow2hnaBVoaGjDjBVfb3V0cHV0X2ZpZWxkX29yX25vbmWUaMNoiYl1YmGMBWV4dHJhlH2UjAppc19zdW1tYXJ5lIloZmjDdWJzjBZhbm5vdGF0aW9uX3NlbGVjdF9tYXNrlI+UKGiykIwYX2Fubm90YXRpb25fc2VsZWN0X2NhY2hllGgZKVKUaLJotnOMCmNvbWJpbmF0b3KUTowOY29tYmluYXRvcl9hbGyUiYwQY29tYmluZWRfcXVlcmllc5QpjAZfZXh0cmGUTowRZXh0cmFfc2VsZWN0X21hc2uUj5SME19leHRyYV9zZWxlY3RfY2FjaGWUTowMZXh0cmFfdGFibGVzlCmMDmV4dHJhX29yZGVyX2J5lCmMEGRlZmVycmVkX2xvYWRpbmeUKJGUiIaUjBNfZmlsdGVyZWRfcmVsYXRpb25zlH2UjA1fbG9va3VwX2pvaW5zlF2UKGgUaBVljApiYXNlX3RhYmxllGgUdWKMDV9yZXN1bHRfY2FjaGWUXZSMDl9zdGlja3lfZmlsdGVylImMCl9mb3Jfd3JpdGWUiYwZX3ByZWZldGNoX3JlbGF0ZWRfbG9va3Vwc5QpjA5fcHJlZmV0Y2hfZG9uZZSJjBZfa25vd25fcmVsYXRlZF9vYmplY3RzlH2UjA9faXRlcmFibGVfY2xhc3OUaACMDlZhbHVlc0l0ZXJhYmxllJOUjAdfZmllbGRzlGgqaGuGlIwPX2RqYW5nb192ZXJzaW9ulIwDMi4wlHViLg==','2018-11-21 09:33:44.000000');
/*!40000 ALTER TABLE `my_cache_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_statistics_readdetail`
--

DROP TABLE IF EXISTS `read_statistics_readdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `read_statistics_readdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `read_num` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_589c7d92_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_589c7d92_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_statistics_readdetail`
--

LOCK TABLES `read_statistics_readdetail` WRITE;
/*!40000 ALTER TABLE `read_statistics_readdetail` DISABLE KEYS */;
INSERT INTO `read_statistics_readdetail` VALUES (1,'2018-02-27',4,36,8),(2,'2018-02-28',1,35,8),(3,'2018-02-28',1,36,8),(4,'2018-03-05',1,36,8),(5,'2018-03-04',2,35,8),(6,'2018-03-20',1,36,8),(7,'2018-03-25',4,36,8),(8,'2018-03-31',1,36,8),(9,'2018-04-08',1,36,8),(10,'2018-04-12',1,36,8),(11,'2018-11-16',1,30,8),(12,'2018-11-19',2,36,8),(13,'2018-11-19',1,35,8),(14,'2018-11-19',1,30,8),(15,'2018-11-20',1,36,8),(16,'2018-11-20',1,30,8);
/*!40000 ALTER TABLE `read_statistics_readdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_statistics_readnum`
--

DROP TABLE IF EXISTS `read_statistics_readnum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `read_statistics_readnum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `read_num` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_560f0f39_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_560f0f39_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_statistics_readnum`
--

LOCK TABLES `read_statistics_readnum` WRITE;
/*!40000 ALTER TABLE `read_statistics_readnum` DISABLE KEYS */;
INSERT INTO `read_statistics_readnum` VALUES (1,24,36,8),(2,2,34,8),(3,1,20,8),(4,5,35,8),(5,1,33,8),(6,1,32,8),(7,3,30,8);
/*!40000 ALTER TABLE `read_statistics_readnum` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-21 22:04:04
