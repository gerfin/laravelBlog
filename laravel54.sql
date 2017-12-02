-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: laravel54
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'2',30,'this comment for test','2017-10-09 12:34:27','2017-10-09 12:34:27'),(2,'2',28,'hahaha','2017-10-09 12:49:14','2017-10-09 12:49:14'),(3,'2',31,'这是一个测试的评论','2017-10-09 12:50:23','2017-10-09 12:50:23'),(4,'2',32,'pinglun','2017-10-09 12:56:15','2017-10-09 12:56:15'),(5,'1',33,'this is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows\r\nthis is test for windows','2017-10-10 12:04:21','2017-10-10 12:04:21');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2017_10_04_065517_create_posts_table',1),(4,'2017_10_08_204217_create_comment_table',2),(5,'2017_10_10_200646_create_zans_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (27,'12345678','12345678<p><br></p>',1,'2017-10-07 12:42:09','2017-10-07 12:42:09'),(28,'Just for practise','<p>this is practise test2<br></p>\r\n                    <p><br></p>',2,'2017-10-07 13:34:05','2017-10-07 13:34:13'),(31,'这只是一个测试的标题','这是一个测试的内容<p><br></p>',2,'2017-10-09 12:50:07','2017-10-09 12:50:07'),(33,'this is test for windows','<p>this&nbsp;is&nbsp;test&nbsp;for&nbsp;windows <br></p><p>this&nbsp;is&nbsp;test&nbsp;for&nbsp;windows</p><p>this&nbsp;is&nbsp;test&nbsp;for&nbsp;windows</p><p>this&nbsp;is&nbsp;test&nbsp;for&nbsp;windows</p><p>this&nbsp;is&nbsp;test&nbsp;for&nbsp;windows</p><p>this&nbsp;is&nbsp;test&nbsp;for&nbsp;windows</p><p>this&nbsp;is&nbsp;test&nbsp;for&nbsp;windows</p><p>this&nbsp;is&nbsp;test&nbsp;for&nbsp;windows</p><p>this&nbsp;is&nbsp;test&nbsp;for&nbsp;windows</p><p>this&nbsp;is&nbsp;test&nbsp;for&nbsp;windows</p><p>this&nbsp;is&nbsp;test&nbsp;for&nbsp;windows</p><p>this&nbsp;is&nbsp;test&nbsp;for&nbsp;windows</p><p>this&nbsp;is&nbsp;test&nbsp;for&nbsp;windows</p><p>this&nbsp;is&nbsp;test&nbsp;for&nbsp;windows</p><p>this&nbsp;is&nbsp;test&nbsp;for&nbsp;windows</p><p>this&nbsp;is&nbsp;test&nbsp;for&nbsp;windows</p><p><br></p>',3,'2017-10-09 13:36:52','2017-10-09 13:36:52'),(34,'早安的心语','<span>往事如烟，浅笑而安。慢慢懂得，人的一生会经历太多起伏，不可能总是一帆风顺，也不会永远风起云涌。因此，千帆过后，要学会坚强，学会忍耐，学会从容！顺境时，多一份思索，逆境时，多一份勇气；成功时，多一份淡然，彷徨时，多一份信念。朋友们，早安！<br></span><span>每个人的身上，都依附着两个自己：好的自己和坏的自己。让积极打败消极，让高尚打败鄙陋，让真诚打败虚伪，让宽容打败计较，让快乐打败忧郁，让勤奋打败懒惰，让坚强打败脆弱。只要你愿意，你就能做最好的自己。新的一天，早安！</span><p><br></p>',2,'2017-10-15 11:55:05','2017-10-15 11:55:05'),(35,'浅笑而安。','<p>往事如烟，浅笑而安。慢慢懂得，人的一生会经历太多起伏，不可能总是一帆风顺，也不会永远风起云涌。因此，千帆过后，要学会坚强，学会忍耐，学会从容！顺境时，多一份思索，逆境时，多一份勇气；成功时，多一份淡然，彷徨时，多一份信念。朋友们，早安！每个人的身上，都依附着两个自己：好的自己和坏的自己。让积极打败消极，让高尚打败鄙陋，让真诚打败虚伪，让宽容打败计较，让快乐打败忧郁，让勤奋打败懒惰，让坚强打败脆弱。只要你愿意，你就能做最好的自己。新的一天，早安！</p><p><br></p>',2,'2017-10-15 12:19:11','2017-10-15 12:19:11'),(36,'浅笑而安。慢','<p>浅笑而安。慢</p><p>浅笑而安。慢</p><p>浅笑而安。慢</p><p>浅笑而安。慢</p><p>浅笑而安。慢</p><p>浅笑而安。慢</p><p>浅笑而安。慢</p><p>浅笑而安。慢</p><p><br></p>',2,'2017-10-15 12:19:21','2017-10-15 12:19:21'),(37,'往事如烟，浅笑而安','<p>往事如烟，浅笑而安。慢慢懂得，人的一生会经历太多起伏，不可能总是一帆风顺，也不会永远风起云涌。因此，千帆过后，要学会坚强，学会忍耐，学会从容！顺境时，多一份思索，逆境时，多一份勇气；成功时，多一份淡然，彷徨时，多一份信念。朋友们，早安！每个人的身上，都依附着两个自己：好的自己和坏的自己。让积极打败消极，让高尚打败鄙陋，让真诚打败虚伪，让宽容打败计较，让快乐打败忧郁，让勤奋打败懒惰，让坚强打败脆弱。只要你愿意，你就能做最好的自己。新的一天，早安！</p><p><br></p>',2,'2017-10-15 12:19:35','2017-10-15 12:19:35'),(38,'慢慢懂得，人的一生','<p>往事如烟，浅笑而安。慢慢懂得，人的一生会经历太多起伏，不可能总是一帆风顺，也不会永远风起云涌。因此，千帆过后，要学会坚强，学会忍耐，学会从容！顺境时，多一份思索，逆境时，多一份勇气；成功时，多一份淡然，彷徨时，多一份信念。朋友们，早安！每个人的身上，都依附着两个自己：好的自己和坏的自己。让积极打败消极，让高尚打败鄙陋，让真诚打败虚伪，让宽容打败计较，让快乐打败忧郁，让勤奋打败懒惰，让坚强打败脆弱。只要你愿意，你就能做最好的自己。新的一天，早安！</p><p><br></p>',2,'2017-10-15 12:19:47','2017-10-15 12:19:47'),(39,'朋友们，早安','<p>往事如烟，浅笑而安。慢慢懂得，人的一生会经历太多起伏，不可能总是一帆风顺，也不会永远风起云涌。因此，千帆过后，要学会坚强，学会忍耐，学会从容！顺境时，多一份思索，逆境时，多一份勇气；成功时，多一份淡然，彷徨时，多一份信念。朋友们，早安！每个人的身上，都依附着两个自己：好的自己和坏的自己。让积极打败消极，让高尚打败鄙陋，让真诚打败虚伪，让宽容打败计较，让快乐打败忧郁，让勤奋打败懒惰，让坚强打败脆弱。只要你愿意，你就能做最好的自己。新的一天，早安！</p><p><br></p>',2,'2017-10-15 12:20:15','2017-10-15 12:20:15');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'qqq','gao@qq.com','$2y$10$XhE7drZHzMrPoUZR35k5D.EJeIvUNFuddt6P7v/TlQKh8QPVQWD/i','iUMPYoWfmbBLkMTUXMDtgN5RipQ2dD3Wc19mlVgxAPlLvmb77VaNu2R9tK4x','2017-10-07 11:46:39','2017-10-07 11:46:39'),(2,'gf2007','gf2007@vip.qq.com','$2y$10$VWMyfFTWpUMNWJPumv.6E.izZt0hgQZizW8ZuQDwHqEAWir4gntDi','rZFcbRforZVSCdFmeERx4KOjqaSpFHe3l1CugH7hbOwPxB9cvMb89fR4dEMC','2017-10-07 13:13:45','2017-10-07 13:13:45'),(3,'gao','test@test.com','$2y$10$k1qR6k5IoL6fRUEnte.ET.0jkMKR6KZY25sXprtnTtQxvh9lfFwbq',NULL,'2017-10-09 13:26:38','2017-10-09 13:26:38');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zans`
--

DROP TABLE IF EXISTS `zans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zans`
--

LOCK TABLES `zans` WRITE;
/*!40000 ALTER TABLE `zans` DISABLE KEYS */;
INSERT INTO `zans` VALUES (2,'1',33,'2017-10-10 12:36:15','2017-10-10 12:36:15');
/*!40000 ALTER TABLE `zans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-15 20:37:57
