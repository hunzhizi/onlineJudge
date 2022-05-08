-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: online_judge
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Table structure for table `commit_info`
--

DROP TABLE IF EXISTS `commit_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commit_info` (
  `commit_uuid` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` varchar(20) DEFAULT NULL,
  `commit_date` date DEFAULT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `num_access_point` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`commit_uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commit_info`
--

LOCK TABLES `commit_info` WRITE;
/*!40000 ALTER TABLE `commit_info` DISABLE KEYS */;
INSERT INTO `commit_info` VALUES (1,'u201911040113','2022-04-17',2,'接受！通过4个测试点！'),(2,'u201911040113','2022-04-17',5,'接受！通过4个测试点！');
/*!40000 ALTER TABLE `commit_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem_info`
--

DROP TABLE IF EXISTS `problem_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `problem_info` (
  `problem_id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_description` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`problem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem_info`
--

LOCK TABLES `problem_info` WRITE;
/*!40000 ALTER TABLE `problem_info` DISABLE KEYS */;
INSERT INTO `problem_info` VALUES (1,'这里是bar'),(2,'这里是bar2'),(3,'这里是bar'),(4,'这里是bar2'),(5,'返回两数之和。输入两个变量a,b 要求打印a+b的结果，要求无多余空格\n示例：输入：1 3 输出 4 '),(6,'给定两个整数，被除数 dividend 和除数 divisor。将两数相除，要求不使用乘法、除法和 mod 运算符。\n返回被除数 dividend 除以除数 divisor 得到的商。\n整数除法的结果应当截去（truncate）其小数部分，例如：truncate(8.345) = 8 以及 truncate(-2.7335) = -2\n示例 1:\n输入: dividend = 10, divisor = 3\n输出: 3\n示例 2:\n输入: dividend = 7, divisor = -3\n输出: -2'),(7,'给你一个整数 x ，如果 x 是一个回文整数，返回 true ；否则，返回 false 。\n\n回文数是指正序（从左向右）和倒序（从右向左）读都是一样的整数。\n\n例如，121 是回文，而 123 不是。\n示例 1：\n输入：x = 121\n输出：true\n示例 2：\n输入：x = -121\n输出：false\n示例 3：\n输入：x = 10\n输出：false'),(8,'给你一个整数 n ，返回 和为 n 的完全平方数的最少数量 。\n完全平方数 是一个整数，其值等于另一个整数的平方；换句话说，其值等于一个整数自乘的积。例如，1、4、9 和 16 都是完全平方数，而 3 和 11 不是。\n示例 1：\n输入：n = 12\n输出：3 \n示例 2：\n输入：n = 13\n输出：2\n \n提示：\n1 <= n <= 104');
/*!40000 ALTER TABLE `problem_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_info`
--

DROP TABLE IF EXISTS `stu_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_info` (
  `stu_id` varchar(20) NOT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `class` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_info`
--

LOCK TABLES `stu_info` WRITE;
/*!40000 ALTER TABLE `stu_info` DISABLE KEYS */;
INSERT INTO `stu_info` VALUES ('000000000001','测试用例','1'),('201911040091','wuJiaShuai','4'),('201911040093','liuKuan','4'),('201911040095','zhaoJiaWei','4'),('201911040104','YuZe','4'),('201911040108','YuMingJiang','4'),('201911040113','周少','4'),('201911049998','李四','3\r'),('201911049999','张三','1\r');
/*!40000 ALTER TABLE `stu_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-17 11:21:58
