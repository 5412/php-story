-- MySQL dump 10.13  Distrib 5.7.17, for osx10.12 (x86_64)
--
-- Host: 192.168.50.194    Database: web
-- ------------------------------------------------------
-- Server version	5.5.53

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
-- Table structure for table `auth_assignment`
--

DROP TABLE IF EXISTS `auth_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_assignment`
--

LOCK TABLES `auth_assignment` WRITE;
/*!40000 ALTER TABLE `auth_assignment` DISABLE KEYS */;
INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES ('教师任务添加修改权限','2',1502956849),('教师课程任务查看权限','2',1502956846),('添加修改排课权限','2',1502956853),('添加修改服务记录权限','2',1502956854),('系统管理员','1',1484190988),('组课程任务查看权限','2',1502956862),('组课程任务添加修改权限','2',1502956865),('考试部总监','1',1505286661),('考试部总监','4',1503892854),('考试部总监助理','6',1503893100),('考试部组长','2',1502957029),('考试部组长','5',1503892981),('考试部组长','8',1505112393),('考试部组长','9',1505112407),('考试部老师','10',1505112429),('考试部老师','11',1505717528);
/*!40000 ALTER TABLE `auth_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item`
--

DROP TABLE IF EXISTS `auth_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item`
--

LOCK TABLES `auth_item` WRITE;
/*!40000 ALTER TABLE `auth_item` DISABLE KEYS */;
INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES ('/*',2,NULL,NULL,NULL,1484199188,1484199188),('/admin/*',2,NULL,NULL,NULL,1484199424,1484199424),('/admin/assignment/*',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/assignment/assign',2,NULL,NULL,NULL,1484189599,1484189599),('/admin/assignment/index',2,NULL,NULL,NULL,1484189599,1484189599),('/admin/assignment/revoke',2,NULL,NULL,NULL,1484189599,1484189599),('/admin/assignment/view',2,NULL,NULL,NULL,1484189599,1484189599),('/admin/default/*',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/default/index',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/menu/*',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/menu/create',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/menu/delete',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/menu/index',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/menu/update',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/menu/view',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/permission/*',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/permission/assign',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/permission/create',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/permission/delete',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/permission/index',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/permission/remove',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/permission/update',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/permission/view',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/role/*',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/role/assign',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/role/create',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/role/delete',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/role/index',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/role/remove',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/role/update',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/role/view',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/route/*',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/route/assign',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/route/create',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/route/index',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/route/refresh',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/route/remove',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/rule/*',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/rule/create',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/rule/delete',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/rule/index',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/rule/update',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/rule/view',2,NULL,NULL,NULL,1484189586,1484189586),('/admin/user/*',2,NULL,NULL,NULL,1484199424,1484199424),('/admin/user/activate',2,NULL,NULL,NULL,1484199424,1484199424),('/admin/user/change-password',2,NULL,NULL,NULL,1484199424,1484199424),('/admin/user/delete',2,NULL,NULL,NULL,1484199424,1484199424),('/admin/user/index',2,NULL,NULL,NULL,1484199423,1484199423),('/admin/user/login',2,NULL,NULL,NULL,1484199424,1484199424),('/admin/user/logout',2,NULL,NULL,NULL,1484199424,1484199424),('/admin/user/request-password-reset',2,NULL,NULL,NULL,1484199424,1484199424),('/admin/user/reset-password',2,NULL,NULL,NULL,1484199424,1484199424),('/admin/user/signup',2,NULL,NULL,NULL,1484199424,1484199424),('/admin/user/view',2,NULL,NULL,NULL,1484199424,1484199424),('/debug/*',2,NULL,NULL,NULL,1484189587,1484189587),('/debug/default/*',2,NULL,NULL,NULL,1484189587,1484189587),('/debug/default/db-explain',2,NULL,NULL,NULL,1484189586,1484189586),('/debug/default/download-mail',2,NULL,NULL,NULL,1484189587,1484189587),('/debug/default/index',2,NULL,NULL,NULL,1484189586,1484189586),('/debug/default/toolbar',2,NULL,NULL,NULL,1484189587,1484189587),('/debug/default/view',2,NULL,NULL,NULL,1484189587,1484189587),('/erp-contract/*',2,NULL,NULL,NULL,1499398317,1499398317),('/erp-contract/create',2,NULL,NULL,NULL,1499398317,1499398317),('/erp-contract/create-exam-course-order',2,NULL,NULL,NULL,1500259769,1500259769),('/erp-contract/create-smallclass-order',2,NULL,NULL,NULL,1501492879,1501492879),('/erp-contract/delete',2,NULL,NULL,NULL,1499398317,1499398317),('/erp-contract/index',2,NULL,NULL,NULL,1499398317,1499398317),('/erp-contract/update',2,NULL,NULL,NULL,1499398317,1499398317),('/erp-contract/view',2,NULL,NULL,NULL,1499398317,1499398317),('/exam/*',2,NULL,NULL,NULL,1498458480,1498458480),('/exam/chart/*',2,NULL,NULL,NULL,1501227516,1501227516),('/exam/chart/ajax-order',2,NULL,NULL,NULL,1503890754,1503890754),('/exam/chart/course-order',2,NULL,NULL,NULL,1501492879,1501492879),('/exam/chart/department',2,NULL,NULL,NULL,1501227516,1501227516),('/exam/chart/group',2,NULL,NULL,NULL,1501227516,1501227516),('/exam/chart/index',2,NULL,NULL,NULL,1501227516,1501227516),('/exam/chart/order',2,NULL,NULL,NULL,1503300379,1503300379),('/exam/chart/order-detail',2,NULL,NULL,NULL,1503890754,1503890754),('/exam/chart/personal',2,NULL,NULL,NULL,1501227516,1501227516),('/exam/course-order/*',2,NULL,NULL,NULL,1499411577,1499411577),('/exam/course-order/create',2,NULL,NULL,NULL,1499411577,1499411577),('/exam/course-order/delete',2,NULL,NULL,NULL,1499411577,1499411577),('/exam/course-order/index',2,NULL,NULL,NULL,1499411577,1499411577),('/exam/course-order/update',2,NULL,NULL,NULL,1499411577,1499411577),('/exam/course-order/view',2,NULL,NULL,NULL,1499411577,1499411577),('/exam/course-task-child/*',2,NULL,NULL,NULL,1499052988,1499052988),('/exam/course-task-child/create',2,NULL,NULL,NULL,1499052988,1499052988),('/exam/course-task-child/delete',2,NULL,NULL,NULL,1499052988,1499052988),('/exam/course-task-child/index',2,NULL,NULL,NULL,1499052988,1499052988),('/exam/course-task-child/task-list',2,NULL,NULL,NULL,1503890754,1503890754),('/exam/course-task-child/update',2,NULL,NULL,NULL,1499052988,1499052988),('/exam/course-task-child/view',2,NULL,NULL,NULL,1499052988,1499052988),('/exam/course-task/*',2,NULL,NULL,NULL,1498727569,1498727569),('/exam/course-task/create',2,NULL,NULL,NULL,1498727569,1498727569),('/exam/course-task/delete',2,NULL,NULL,NULL,1498727569,1498727569),('/exam/course-task/index',2,NULL,NULL,NULL,1498727569,1498727569),('/exam/course-task/update',2,NULL,NULL,NULL,1498727569,1498727569),('/exam/course-task/view',2,NULL,NULL,NULL,1498727569,1498727569),('/exam/course/*',2,NULL,NULL,NULL,1498463929,1498463929),('/exam/course/create',2,NULL,NULL,NULL,1498463929,1498463929),('/exam/course/delete',2,NULL,NULL,NULL,1498463929,1498463929),('/exam/course/index',2,NULL,NULL,NULL,1498463929,1498463929),('/exam/course/update',2,NULL,NULL,NULL,1498463929,1498463929),('/exam/course/view',2,NULL,NULL,NULL,1498463929,1498463929),('/exam/default/*',2,NULL,NULL,NULL,1498458480,1498458480),('/exam/default/index',2,NULL,NULL,NULL,1498458480,1498458480),('/exam/group/*',2,NULL,NULL,NULL,1499655399,1499655399),('/exam/group/create',2,NULL,NULL,NULL,1499655399,1499655399),('/exam/group/delete',2,NULL,NULL,NULL,1499655399,1499655399),('/exam/group/index',2,NULL,NULL,NULL,1499655399,1499655399),('/exam/group/update',2,NULL,NULL,NULL,1499655399,1499655399),('/exam/group/view',2,NULL,NULL,NULL,1499655399,1499655399),('/exam/order-smallclass-relation/*',2,NULL,NULL,NULL,1501227516,1501227516),('/exam/order-smallclass-relation/create',2,NULL,NULL,NULL,1501227516,1501227516),('/exam/order-smallclass-relation/delete',2,NULL,NULL,NULL,1501227516,1501227516),('/exam/order-smallclass-relation/index',2,NULL,NULL,NULL,1501227516,1501227516),('/exam/order-smallclass-relation/update',2,NULL,NULL,NULL,1501227516,1501227516),('/exam/order-smallclass-relation/view',2,NULL,NULL,NULL,1501227516,1501227516),('/exam/order-smallclass/*',2,NULL,NULL,NULL,1499398317,1499398317),('/exam/order-smallclass/absent',2,NULL,NULL,NULL,1503300379,1503300379),('/exam/order-smallclass/create',2,NULL,NULL,NULL,1499398316,1499398316),('/exam/order-smallclass/delete',2,NULL,NULL,NULL,1499398317,1499398317),('/exam/order-smallclass/index',2,NULL,NULL,NULL,1499398316,1499398316),('/exam/order-smallclass/no-service',2,NULL,NULL,NULL,1503300379,1503300379),('/exam/order-smallclass/remove',2,NULL,NULL,NULL,1503300379,1503300379),('/exam/order-smallclass/remove-class',2,NULL,NULL,NULL,1501227516,1501227516),('/exam/order-smallclass/update',2,NULL,NULL,NULL,1499398316,1499398316),('/exam/order-smallclass/view',2,NULL,NULL,NULL,1499398316,1499398316),('/exam/order/*',2,NULL,NULL,NULL,1498699523,1498699523),('/exam/order/add',2,NULL,NULL,NULL,1503890754,1503890754),('/exam/order/create',2,NULL,NULL,NULL,1498699523,1498699523),('/exam/order/delete',2,NULL,NULL,NULL,1498699523,1498699523),('/exam/order/index',2,NULL,NULL,NULL,1498699523,1498699523),('/exam/order/remove-class',2,NULL,NULL,NULL,1501227516,1501227516),('/exam/order/update',2,NULL,NULL,NULL,1498699523,1498699523),('/exam/order/update-class',2,NULL,NULL,NULL,1501227516,1501227516),('/exam/order/validate',2,NULL,NULL,NULL,1501492879,1501492879),('/exam/order/view',2,NULL,NULL,NULL,1498699523,1498699523),('/exam/process/*',2,NULL,NULL,NULL,1498786323,1498786323),('/exam/process/course-task',2,NULL,NULL,NULL,1501227516,1501227516),('/exam/process/create',2,NULL,NULL,NULL,1498786322,1498786322),('/exam/process/delete',2,NULL,NULL,NULL,1498786323,1498786323),('/exam/process/index',2,NULL,NULL,NULL,1498786322,1498786322),('/exam/process/update',2,NULL,NULL,NULL,1498786322,1498786322),('/exam/process/view',2,NULL,NULL,NULL,1498786322,1498786322),('/exam/scores/*',2,NULL,NULL,NULL,1502674585,1502674585),('/exam/scores/basic',2,NULL,NULL,NULL,1502674585,1502674585),('/exam/scores/create',2,NULL,NULL,NULL,1502674585,1502674585),('/exam/scores/delete',2,NULL,NULL,NULL,1502674585,1502674585),('/exam/scores/index',2,NULL,NULL,NULL,1502674585,1502674585),('/exam/scores/update',2,NULL,NULL,NULL,1502674585,1502674585),('/exam/scores/view',2,NULL,NULL,NULL,1502674585,1502674585),('/exam/sign/*',2,NULL,NULL,NULL,1503300379,1503300379),('/exam/sign/ajax-contract',2,NULL,NULL,NULL,1503890754,1503890754),('/exam/sign/create',2,NULL,NULL,NULL,1503300379,1503300379),('/exam/sign/delete',2,NULL,NULL,NULL,1503300379,1503300379),('/exam/sign/index',2,NULL,NULL,NULL,1503300379,1503300379),('/exam/sign/update',2,NULL,NULL,NULL,1503300379,1503300379),('/exam/sign/view',2,NULL,NULL,NULL,1503300379,1503300379),('/exam/smallclass-process/*',2,NULL,NULL,NULL,1501227516,1501227516),('/exam/smallclass-process/create',2,NULL,NULL,NULL,1501227516,1501227516),('/exam/smallclass-process/delete',2,NULL,NULL,NULL,1501227516,1501227516),('/exam/smallclass-process/index',2,NULL,NULL,NULL,1501227516,1501227516),('/exam/smallclass-process/index-process',2,NULL,NULL,NULL,1501227516,1501227516),('/exam/smallclass-process/score-attendance',2,NULL,NULL,NULL,1501227516,1501227516),('/exam/smallclass-process/update',2,NULL,NULL,NULL,1501227516,1501227516),('/exam/smallclass-process/view',2,NULL,NULL,NULL,1501227516,1501227516),('/exam/smallclass-students-relation/*',2,NULL,NULL,NULL,1499398317,1499398317),('/exam/smallclass-students-relation/create',2,NULL,NULL,NULL,1499398317,1499398317),('/exam/smallclass-students-relation/delete',2,NULL,NULL,NULL,1499398317,1499398317),('/exam/smallclass-students-relation/index',2,NULL,NULL,NULL,1499398317,1499398317),('/exam/smallclass-students-relation/update',2,NULL,NULL,NULL,1499398317,1499398317),('/exam/smallclass-students-relation/view',2,NULL,NULL,NULL,1499398317,1499398317),('/exam/smallclass/*',2,NULL,NULL,NULL,1498642395,1498642395),('/exam/smallclass/create',2,NULL,NULL,NULL,1498642395,1498642395),('/exam/smallclass/delete',2,NULL,NULL,NULL,1498642395,1498642395),('/exam/smallclass/index',2,NULL,NULL,NULL,1498642395,1498642395),('/exam/smallclass/student-info',2,NULL,NULL,NULL,1503890754,1503890754),('/exam/smallclass/update',2,NULL,NULL,NULL,1498642395,1498642395),('/exam/smallclass/view',2,NULL,NULL,NULL,1498642395,1498642395),('/exam/teacher/*',2,NULL,NULL,NULL,1498632987,1498632987),('/exam/teacher/create',2,NULL,NULL,NULL,1498632987,1498632987),('/exam/teacher/delete',2,NULL,NULL,NULL,1498632987,1498632987),('/exam/teacher/index',2,NULL,NULL,NULL,1498632986,1498632986),('/exam/teacher/update',2,NULL,NULL,NULL,1498632987,1498632987),('/exam/teacher/view',2,NULL,NULL,NULL,1498632987,1498632987),('/exam/time-table/*',2,NULL,NULL,NULL,1501227516,1501227516),('/exam/time-table/ajax-list',2,NULL,NULL,NULL,1502674585,1502674585),('/exam/time-table/index',2,NULL,NULL,NULL,1500540800,1500540800),('/exam/time-table/information',2,NULL,NULL,NULL,1502674585,1502674585),('/gii/*',2,NULL,NULL,NULL,1484189587,1484189587),('/gii/default/*',2,NULL,NULL,NULL,1484189587,1484189587),('/gii/default/action',2,NULL,NULL,NULL,1484189587,1484189587),('/gii/default/diff',2,NULL,NULL,NULL,1484189587,1484189587),('/gii/default/index',2,NULL,NULL,NULL,1484189587,1484189587),('/gii/default/preview',2,NULL,NULL,NULL,1484189587,1484189587),('/gii/default/view',2,NULL,NULL,NULL,1484189587,1484189587),('/site/*',2,NULL,NULL,NULL,1484189587,1484189587),('/site/error',2,NULL,NULL,NULL,1484189587,1484189587),('/site/index',2,NULL,NULL,NULL,1484189587,1484189587),('/site/login',2,NULL,NULL,NULL,1484189587,1484189587),('/site/logout',2,NULL,NULL,NULL,1484189587,1484189587),('/student/*',2,NULL,NULL,NULL,1498444829,1498444829),('/student/create',2,NULL,NULL,NULL,1498444829,1498444829),('/student/create-one-order',2,NULL,NULL,NULL,1499411577,1499411577),('/student/delete',2,NULL,NULL,NULL,1498444829,1498444829),('/student/index',2,NULL,NULL,NULL,1498444829,1498444829),('/student/update',2,NULL,NULL,NULL,1498444829,1498444829),('/student/view',2,NULL,NULL,NULL,1498444829,1498444829),('/system-user/*',2,NULL,NULL,NULL,1484189599,1484189599),('/system-user/create',2,NULL,NULL,NULL,1484189587,1484189587),('/system-user/delete',2,NULL,NULL,NULL,1484189587,1484189587),('/system-user/index',2,NULL,NULL,NULL,1484189587,1484189587),('/system-user/update',2,NULL,NULL,NULL,1484189587,1484189587),('/system-user/view',2,NULL,NULL,NULL,1484189587,1484189587),('合同信息查看权限',2,'查看果Hu合同',NULL,NULL,1500259743,1500259743),('合同转化订单权限',2,'将果Hu合同转化为新系统的订单',NULL,NULL,1500259825,1500259825),('学员管理权限',2,'管理学员的改查',NULL,NULL,1500260002,1500260075),('学员管理查看权限',2,NULL,NULL,NULL,1503891223,1503891223),('小班排课权限',2,NULL,NULL,NULL,1503891816,1503891816),('小班服务记录权限',2,NULL,NULL,NULL,1503891884,1503891884),('教务设置',2,NULL,NULL,NULL,1503891444,1503891444),('教务设置权限',2,NULL,NULL,NULL,1503891593,1503891593),('教学日历权限',2,NULL,NULL,NULL,1503892064,1503892064),('教师任务添加修改权限',2,NULL,NULL,NULL,1500262444,1500950789),('教师课程任务查看权限',2,'一对一任务',NULL,NULL,1500261101,1500261193),('权限管理',2,NULL,NULL,NULL,1484190878,1484190878),('果图',2,NULL,NULL,NULL,1503892623,1503892623),('添加修改排课权限',2,NULL,NULL,NULL,1500263641,1500263641),('添加修改服务记录权限',2,NULL,NULL,NULL,1500263697,1500263697),('添加学员权限',2,'为解决合同延期问题，顾学员可以先添加后处理合同订单',NULL,NULL,1500260259,1500260259),('添加订单权限',2,'为学员添加一对一订单与小班订单',NULL,NULL,1500260118,1500260383),('班级查看权限',2,'班级管理，列表页，详情页查看的权限',NULL,NULL,1503891708,1503891708),('班级管理权限',2,'班级的增删改查',NULL,NULL,1503891767,1503891767),('系统管理员',1,NULL,NULL,NULL,1484190969,1484190969),('组信息查看权限',2,NULL,NULL,NULL,1504768555,1504768555),('组管理权限',2,'课程组的增删查',NULL,NULL,1503891460,1503891492),('组课程任务查看权限',2,NULL,NULL,NULL,1500261034,1500263475),('组课程任务添加修改权限',2,NULL,NULL,NULL,1500263509,1500263545),('考试部总监',1,NULL,NULL,NULL,1500263805,1500263805),('考试部总监助理',1,NULL,NULL,NULL,1503892205,1503892347),('考试部组长',1,NULL,NULL,NULL,1502956923,1503892359),('考试部老师',1,'教务系统基本排课权限',NULL,NULL,1503891980,1503891991),('考试部老师管理权限',2,'考试部老师的增改查',NULL,NULL,1503891561,1503891561),('订单管理权限',2,NULL,NULL,NULL,1500260429,1500260489),('课程管理权限',2,'课程的增改查',NULL,NULL,1503891517,1503891517),('销售管理权限',2,NULL,NULL,NULL,1503891640,1503891640);
/*!40000 ALTER TABLE `auth_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item_child`
--

DROP TABLE IF EXISTS `auth_item_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item_child`
--

LOCK TABLES `auth_item_child` WRITE;
/*!40000 ALTER TABLE `auth_item_child` DISABLE KEYS */;
INSERT INTO `auth_item_child` (`parent`, `child`) VALUES ('系统管理员','/*'),('系统管理员','/admin/*'),('系统管理员','/admin/assignment/*'),('系统管理员','/admin/assignment/assign'),('系统管理员','/admin/assignment/index'),('系统管理员','/admin/assignment/revoke'),('系统管理员','/admin/assignment/view'),('系统管理员','/admin/default/*'),('系统管理员','/admin/default/index'),('系统管理员','/admin/menu/*'),('系统管理员','/admin/menu/create'),('系统管理员','/admin/menu/delete'),('系统管理员','/admin/menu/index'),('系统管理员','/admin/menu/update'),('系统管理员','/admin/menu/view'),('系统管理员','/admin/permission/*'),('系统管理员','/admin/permission/assign'),('系统管理员','/admin/permission/create'),('系统管理员','/admin/permission/delete'),('系统管理员','/admin/permission/index'),('系统管理员','/admin/permission/remove'),('系统管理员','/admin/permission/update'),('系统管理员','/admin/permission/view'),('系统管理员','/admin/role/*'),('系统管理员','/admin/role/assign'),('系统管理员','/admin/role/create'),('系统管理员','/admin/role/delete'),('系统管理员','/admin/role/index'),('系统管理员','/admin/role/remove'),('系统管理员','/admin/role/update'),('系统管理员','/admin/role/view'),('系统管理员','/admin/route/*'),('系统管理员','/admin/route/assign'),('系统管理员','/admin/route/create'),('系统管理员','/admin/route/index'),('系统管理员','/admin/route/refresh'),('系统管理员','/admin/route/remove'),('系统管理员','/admin/rule/*'),('系统管理员','/admin/rule/create'),('系统管理员','/admin/rule/delete'),('系统管理员','/admin/rule/index'),('系统管理员','/admin/rule/update'),('系统管理员','/admin/rule/view'),('系统管理员','/admin/user/*'),('系统管理员','/admin/user/activate'),('系统管理员','/admin/user/change-password'),('系统管理员','/admin/user/delete'),('系统管理员','/admin/user/index'),('系统管理员','/admin/user/login'),('系统管理员','/admin/user/logout'),('系统管理员','/admin/user/request-password-reset'),('系统管理员','/admin/user/reset-password'),('系统管理员','/admin/user/signup'),('系统管理员','/admin/user/view'),('系统管理员','/debug/*'),('系统管理员','/debug/default/*'),('系统管理员','/debug/default/db-explain'),('系统管理员','/debug/default/download-mail'),('系统管理员','/debug/default/index'),('系统管理员','/debug/default/toolbar'),('系统管理员','/debug/default/view'),('系统管理员','/erp-contract/*'),('系统管理员','/erp-contract/create'),('合同转化订单权限','/erp-contract/create-exam-course-order'),('系统管理员','/erp-contract/create-exam-course-order'),('合同转化订单权限','/erp-contract/create-smallclass-order'),('系统管理员','/erp-contract/create-smallclass-order'),('系统管理员','/erp-contract/delete'),('合同信息查看权限','/erp-contract/index'),('系统管理员','/erp-contract/index'),('系统管理员','/erp-contract/update'),('系统管理员','/erp-contract/view'),('系统管理员','/exam/*'),('果图','/exam/chart/*'),('系统管理员','/exam/chart/*'),('果图','/exam/chart/ajax-order'),('系统管理员','/exam/chart/ajax-order'),('果图','/exam/chart/course-order'),('系统管理员','/exam/chart/course-order'),('果图','/exam/chart/department'),('系统管理员','/exam/chart/department'),('果图','/exam/chart/group'),('系统管理员','/exam/chart/group'),('果图','/exam/chart/index'),('系统管理员','/exam/chart/index'),('果图','/exam/chart/order'),('系统管理员','/exam/chart/order'),('果图','/exam/chart/order-detail'),('系统管理员','/exam/chart/order-detail'),('果图','/exam/chart/personal'),('系统管理员','/exam/chart/personal'),('系统管理员','/exam/course-order/*'),('添加订单权限','/exam/course-order/create'),('系统管理员','/exam/course-order/create'),('订单管理权限','/exam/course-order/create'),('系统管理员','/exam/course-order/delete'),('系统管理员','/exam/course-order/index'),('订单管理权限','/exam/course-order/index'),('系统管理员','/exam/course-order/update'),('订单管理权限','/exam/course-order/update'),('系统管理员','/exam/course-order/view'),('订单管理权限','/exam/course-order/view'),('系统管理员','/exam/course-task-child/*'),('教师任务添加修改权限','/exam/course-task-child/create'),('系统管理员','/exam/course-task-child/create'),('系统管理员','/exam/course-task-child/delete'),('教师课程任务查看权限','/exam/course-task-child/index'),('系统管理员','/exam/course-task-child/index'),('教师课程任务查看权限','/exam/course-task-child/task-list'),('系统管理员','/exam/course-task-child/task-list'),('教师任务添加修改权限','/exam/course-task-child/update'),('系统管理员','/exam/course-task-child/update'),('教师课程任务查看权限','/exam/course-task-child/view'),('系统管理员','/exam/course-task-child/view'),('系统管理员','/exam/course-task/*'),('系统管理员','/exam/course-task/create'),('组课程任务添加修改权限','/exam/course-task/create'),('系统管理员','/exam/course-task/delete'),('系统管理员','/exam/course-task/index'),('组课程任务查看权限','/exam/course-task/index'),('系统管理员','/exam/course-task/update'),('组课程任务添加修改权限','/exam/course-task/update'),('系统管理员','/exam/course-task/view'),('组课程任务查看权限','/exam/course-task/view'),('系统管理员','/exam/course/*'),('系统管理员','/exam/course/create'),('课程管理权限','/exam/course/create'),('系统管理员','/exam/course/delete'),('系统管理员','/exam/course/index'),('课程管理权限','/exam/course/index'),('系统管理员','/exam/course/update'),('课程管理权限','/exam/course/update'),('系统管理员','/exam/course/view'),('课程管理权限','/exam/course/view'),('系统管理员','/exam/default/*'),('系统管理员','/exam/default/index'),('系统管理员','/exam/group/*'),('系统管理员','/exam/group/create'),('组管理权限','/exam/group/create'),('系统管理员','/exam/group/delete'),('系统管理员','/exam/group/index'),('组管理权限','/exam/group/index'),('系统管理员','/exam/group/update'),('组管理权限','/exam/group/update'),('系统管理员','/exam/group/view'),('组信息查看权限','/exam/group/view'),('组管理权限','/exam/group/view'),('系统管理员','/exam/order-smallclass-relation/*'),('系统管理员','/exam/order-smallclass-relation/create'),('系统管理员','/exam/order-smallclass-relation/delete'),('系统管理员','/exam/order-smallclass-relation/index'),('系统管理员','/exam/order-smallclass-relation/update'),('系统管理员','/exam/order-smallclass-relation/view'),('系统管理员','/exam/order-smallclass/*'),('小班排课权限','/exam/order-smallclass/absent'),('系统管理员','/exam/order-smallclass/absent'),('小班排课权限','/exam/order-smallclass/create'),('系统管理员','/exam/order-smallclass/create'),('小班排课权限','/exam/order-smallclass/delete'),('系统管理员','/exam/order-smallclass/delete'),('小班排课权限','/exam/order-smallclass/index'),('班级查看权限','/exam/order-smallclass/index'),('系统管理员','/exam/order-smallclass/index'),('小班排课权限','/exam/order-smallclass/no-service'),('系统管理员','/exam/order-smallclass/no-service'),('小班排课权限','/exam/order-smallclass/remove'),('系统管理员','/exam/order-smallclass/remove'),('小班排课权限','/exam/order-smallclass/remove-class'),('系统管理员','/exam/order-smallclass/remove-class'),('小班排课权限','/exam/order-smallclass/update'),('系统管理员','/exam/order-smallclass/update'),('小班排课权限','/exam/order-smallclass/view'),('班级查看权限','/exam/order-smallclass/view'),('系统管理员','/exam/order-smallclass/view'),('系统管理员','/exam/order/*'),('添加修改排课权限','/exam/order/add'),('系统管理员','/exam/order/add'),('添加修改排课权限','/exam/order/create'),('系统管理员','/exam/order/create'),('系统管理员','/exam/order/delete'),('系统管理员','/exam/order/index'),('添加修改排课权限','/exam/order/remove-class'),('系统管理员','/exam/order/remove-class'),('添加修改排课权限','/exam/order/update'),('系统管理员','/exam/order/update'),('添加修改排课权限','/exam/order/update-class'),('系统管理员','/exam/order/update-class'),('系统管理员','/exam/order/validate'),('系统管理员','/exam/order/view'),('系统管理员','/exam/process/*'),('系统管理员','/exam/process/course-task'),('添加修改服务记录权限','/exam/process/create'),('系统管理员','/exam/process/create'),('系统管理员','/exam/process/delete'),('系统管理员','/exam/process/index'),('添加修改服务记录权限','/exam/process/update'),('系统管理员','/exam/process/update'),('系统管理员','/exam/process/view'),('系统管理员','/exam/scores/*'),('系统管理员','/exam/scores/basic'),('系统管理员','/exam/scores/create'),('系统管理员','/exam/scores/delete'),('系统管理员','/exam/scores/index'),('系统管理员','/exam/scores/update'),('系统管理员','/exam/scores/view'),('系统管理员','/exam/sign/*'),('系统管理员','/exam/sign/ajax-contract'),('销售管理权限','/exam/sign/ajax-contract'),('系统管理员','/exam/sign/create'),('销售管理权限','/exam/sign/create'),('系统管理员','/exam/sign/delete'),('销售管理权限','/exam/sign/delete'),('系统管理员','/exam/sign/index'),('销售管理权限','/exam/sign/index'),('系统管理员','/exam/sign/update'),('销售管理权限','/exam/sign/update'),('系统管理员','/exam/sign/view'),('销售管理权限','/exam/sign/view'),('系统管理员','/exam/smallclass-process/*'),('小班服务记录权限','/exam/smallclass-process/create'),('系统管理员','/exam/smallclass-process/create'),('系统管理员','/exam/smallclass-process/delete'),('小班服务记录权限','/exam/smallclass-process/index'),('系统管理员','/exam/smallclass-process/index'),('小班服务记录权限','/exam/smallclass-process/index-process'),('系统管理员','/exam/smallclass-process/index-process'),('小班服务记录权限','/exam/smallclass-process/score-attendance'),('系统管理员','/exam/smallclass-process/score-attendance'),('小班服务记录权限','/exam/smallclass-process/update'),('系统管理员','/exam/smallclass-process/update'),('小班服务记录权限','/exam/smallclass-process/view'),('系统管理员','/exam/smallclass-process/view'),('系统管理员','/exam/smallclass-students-relation/*'),('添加订单权限','/exam/smallclass-students-relation/create'),('系统管理员','/exam/smallclass-students-relation/create'),('订单管理权限','/exam/smallclass-students-relation/create'),('系统管理员','/exam/smallclass-students-relation/delete'),('系统管理员','/exam/smallclass-students-relation/index'),('订单管理权限','/exam/smallclass-students-relation/index'),('系统管理员','/exam/smallclass-students-relation/update'),('订单管理权限','/exam/smallclass-students-relation/update'),('系统管理员','/exam/smallclass-students-relation/view'),('订单管理权限','/exam/smallclass-students-relation/view'),('系统管理员','/exam/smallclass/*'),('班级管理权限','/exam/smallclass/create'),('系统管理员','/exam/smallclass/create'),('系统管理员','/exam/smallclass/delete'),('班级查看权限','/exam/smallclass/index'),('班级管理权限','/exam/smallclass/index'),('系统管理员','/exam/smallclass/index'),('班级查看权限','/exam/smallclass/student-info'),('班级管理权限','/exam/smallclass/student-info'),('系统管理员','/exam/smallclass/student-info'),('班级管理权限','/exam/smallclass/update'),('系统管理员','/exam/smallclass/update'),('班级查看权限','/exam/smallclass/view'),('班级管理权限','/exam/smallclass/view'),('系统管理员','/exam/smallclass/view'),('系统管理员','/exam/teacher/*'),('系统管理员','/exam/teacher/create'),('考试部老师管理权限','/exam/teacher/create'),('系统管理员','/exam/teacher/delete'),('系统管理员','/exam/teacher/index'),('考试部老师管理权限','/exam/teacher/index'),('系统管理员','/exam/teacher/update'),('考试部老师管理权限','/exam/teacher/update'),('系统管理员','/exam/teacher/view'),('考试部老师管理权限','/exam/teacher/view'),('系统管理员','/exam/time-table/*'),('教学日历权限','/exam/time-table/ajax-list'),('系统管理员','/exam/time-table/ajax-list'),('教学日历权限','/exam/time-table/index'),('系统管理员','/exam/time-table/index'),('教学日历权限','/exam/time-table/information'),('系统管理员','/exam/time-table/information'),('系统管理员','/gii/*'),('系统管理员','/gii/default/*'),('系统管理员','/gii/default/action'),('系统管理员','/gii/default/diff'),('系统管理员','/gii/default/index'),('系统管理员','/gii/default/preview'),('系统管理员','/gii/default/view'),('系统管理员','/site/*'),('系统管理员','/site/error'),('系统管理员','/site/index'),('系统管理员','/site/login'),('系统管理员','/site/logout'),('系统管理员','/student/*'),('添加学员权限','/student/create'),('系统管理员','/student/create'),('系统管理员','/student/create-one-order'),('系统管理员','/student/delete'),('学员管理权限','/student/index'),('学员管理查看权限','/student/index'),('系统管理员','/student/index'),('学员管理权限','/student/update'),('系统管理员','/student/update'),('学员管理权限','/student/view'),('学员管理查看权限','/student/view'),('系统管理员','/student/view'),('系统管理员','/system-user/*'),('系统管理员','/system-user/create'),('系统管理员','/system-user/delete'),('系统管理员','/system-user/index'),('系统管理员','/system-user/update'),('系统管理员','/system-user/view'),('考试部总监','合同信息查看权限'),('考试部总监助理','合同信息查看权限'),('考试部总监','合同转化订单权限'),('考试部总监助理','合同转化订单权限'),('考试部总监','学员管理权限'),('考试部总监助理','学员管理权限'),('考试部总监','学员管理查看权限'),('考试部总监助理','学员管理查看权限'),('考试部老师','小班排课权限'),('考试部老师','小班服务记录权限'),('考试部总监助理','教务设置'),('考试部总监','教务设置权限'),('考试部总监助理','教务设置权限'),('考试部总监助理','教学日历权限'),('考试部老师','教学日历权限'),('考试部总监','教师任务添加修改权限'),('考试部总监助理','教师任务添加修改权限'),('考试部组长','教师任务添加修改权限'),('考试部总监','教师课程任务查看权限'),('考试部总监助理','教师课程任务查看权限'),('考试部老师','教师课程任务查看权限'),('考试部总监助理','权限管理'),('考试部总监','果图'),('考试部老师','添加修改排课权限'),('考试部老师','添加修改服务记录权限'),('考试部总监','添加学员权限'),('考试部总监助理','添加学员权限'),('考试部总监','添加订单权限'),('考试部总监助理','添加订单权限'),('考试部总监','班级查看权限'),('考试部总监助理','班级查看权限'),('考试部老师','班级查看权限'),('考试部总监','班级管理权限'),('考试部总监助理','班级管理权限'),('考试部组长','班级管理权限'),('教务设置权限','组管理权限'),('考试部总监','组管理权限'),('考试部总监助理','组管理权限'),('考试部总监','组课程任务查看权限'),('考试部总监助理','组课程任务查看权限'),('考试部组长','组课程任务查看权限'),('考试部总监','组课程任务添加修改权限'),('考试部总监助理','组课程任务添加修改权限'),('考试部总监','考试部老师'),('考试部总监助理','考试部老师'),('考试部组长','考试部老师'),('教务设置权限','考试部老师管理权限'),('考试部总监','考试部老师管理权限'),('考试部总监助理','考试部老师管理权限'),('考试部总监','订单管理权限'),('考试部总监助理','订单管理权限'),('教务设置权限','课程管理权限'),('考试部总监','课程管理权限'),('考试部总监助理','课程管理权限'),('考试部总监','销售管理权限'),('考试部总监助理','销售管理权限');
/*!40000 ALTER TABLE `auth_item_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_rule`
--

DROP TABLE IF EXISTS `auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_rule`
--

LOCK TABLES `auth_rule` WRITE;
/*!40000 ALTER TABLE `auth_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_audit_record`
--

DROP TABLE IF EXISTS `exam_audit_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_audit_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '旁听课ID',
  `teacher_id` int(11) NOT NULL COMMENT '老师的ID',
  `student_id` int(11) NOT NULL COMMENT '旁听学员',
  `sign_grade` varchar(50) NOT NULL COMMENT '旁听科目',
  `attendtime` int(10) NOT NULL COMMENT '旁听日期',
  `course_import` int(10) NOT NULL COMMENT '课程导入技能',
  `explain_skill` int(10) NOT NULL COMMENT '讲解技能',
  `teaching_process` int(10) NOT NULL COMMENT '教学过程',
  `teaching_method` int(10) NOT NULL COMMENT '教学方法',
  `teaching_effect` int(10) NOT NULL COMMENT '教学效果',
  `teaching_basic` int(10) NOT NULL COMMENT '教学基本功',
  `score` decimal(10,2) NOT NULL COMMENT '当次旁听分值',
  `advantage` mediumtext NOT NULL COMMENT '优点',
  `defect` mediumtext NOT NULL COMMENT '缺点',
  `status` tinyint(1) NOT NULL COMMENT '状态：0为正常，7为删除',
  `created_at` int(10) NOT NULL COMMENT '添加时间',
  `updated_at` int(10) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_audit_record`
--

LOCK TABLES `exam_audit_record` WRITE;
/*!40000 ALTER TABLE `exam_audit_record` DISABLE KEYS */;
INSERT INTO `exam_audit_record` (`id`, `teacher_id`, `student_id`, `sign_grade`, `attendtime`, `course_import`, `explain_skill`, `teaching_process`, `teaching_method`, `teaching_effect`, `teaching_basic`, `score`, `advantage`, `defect`, `status`, `created_at`, `updated_at`) VALUES (1,10,56,'听力1',1505145600,4,5,6,7,5,7,2.20,'水电费水电费','佛挡杀佛',0,1505705134,1505705134),(2,10,56,'听力1',1505145600,4,7,8,2,2,4,2.25,'电饭锅回复','电饭锅',0,1505705166,1505705166);
/*!40000 ALTER TABLE `exam_audit_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_course`
--

DROP TABLE IF EXISTS `exam_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '课程名',
  `leader_id` int(11) NOT NULL COMMENT '负责人',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT '状态',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_course`
--

LOCK TABLES `exam_course` WRITE;
/*!40000 ALTER TABLE `exam_course` DISABLE KEYS */;
INSERT INTO `exam_course` (`id`, `name`, `leader_id`, `status`, `created_at`, `updated_at`) VALUES (1,'托福',1,0,1503975898,1503975898),(2,'IELTS',1,0,1503975913,1504838871),(3,'GRE',2,0,1503975925,1503975925),(4,'GMAT',4,0,1503975942,1503975942),(5,'IBT',1,0,1504838987,1504838987),(6,'SAT',1,0,1504840113,1504840113),(7,'AP',1,0,1504841363,1504841363);
/*!40000 ALTER TABLE `exam_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_course_order`
--

DROP TABLE IF EXISTS `exam_course_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_course_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contract_number` varchar(255) NOT NULL COMMENT '合同编号',
  `sign_type` int(11) NOT NULL DEFAULT '0' COMMENT '签约类型',
  `order_type` int(11) NOT NULL DEFAULT '0',
  `class_id` int(11) NOT NULL DEFAULT '0',
  `student_id` int(11) NOT NULL COMMENT '学员ID',
  `class_hours` smallint(6) NOT NULL DEFAULT '0' COMMENT '总课时数',
  `course_info` varchar(255) NOT NULL COMMENT '课程信息',
  `service_status` smallint(6) NOT NULL DEFAULT '0' COMMENT '订单状态',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT '状态',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `contract_number` (`contract_number`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_course_order`
--

LOCK TABLES `exam_course_order` WRITE;
/*!40000 ALTER TABLE `exam_course_order` DISABLE KEYS */;
INSERT INTO `exam_course_order` (`id`, `contract_number`, `sign_type`, `order_type`, `class_id`, `student_id`, `class_hours`, `course_info`, `service_status`, `status`, `created_at`, `updated_at`) VALUES (1,'CD201707000107',2,0,0,19,200,'[{\"course_id\":\"1\",\"group_id\":\"1\",\"class_hours\":\"50\"},{\"course_id\":\"2\",\"group_id\":\"2\",\"class_hours\":\"100\"},{\"course_id\":\"3\",\"group_id\":\"3\",\"class_hours\":\"50\"}]',0,0,1503976134,1503976134),(2,'BJ201707000503',1,0,0,44,150,'[{\"course_id\":\"1\",\"group_id\":\"1\",\"class_hours\":\"100\"},{\"course_id\":\"2\",\"group_id\":\"2\",\"class_hours\":\"20\"}]',100,0,1503976739,1503979889),(3,'BJ201707000001',2,1,1,7,50,'',100,0,1503976890,1503976890),(4,'SH201707000186',3,1,1,18,30,'',100,0,1503976930,1503976930),(5,'LS1503977080',2,1,1,45,40,'',100,0,1503977080,1503977080),(6,'SH201707000181',1,0,0,20,120,'[{\"course_id\":\"1\",\"group_id\":\"1\",\"class_hours\":\"50\"},{\"course_id\":\"2\",\"group_id\":\"2\",\"class_hours\":\"50\"},{\"course_id\":\"3\",\"group_id\":\"3\",\"class_hours\":\"20\"}]',0,0,1503979248,1503979248),(7,'BJ201707000493',2,1,2,29,50,'',100,0,1503987444,1503987444),(8,'BJ201707000502',1,1,2,22,50,'',100,0,1504235784,1504235784),(9,'BJ201707000472',2,1,2,37,45,'',100,0,1504235831,1504235893),(10,'BJ201707000488',1,0,0,30,60,'[{\"course_id\":\"1\",\"group_id\":\"1\",\"class_hours\":\"20\"}]',100,0,1504236159,1504238020),(11,'CD201707000109',1,0,0,40,1000,'[{\"course_id\":\"1\",\"group_id\":\"1\",\"class_hours\":\"100\"},{\"course_id\":\"1\",\"group_id\":\"2\",\"class_hours\":\"100\"}]',0,0,1504237000,1504237000),(12,'BJ201707000484',1,0,0,41,100,'[{\"course_id\":\"1\",\"group_id\":\"1\",\"class_hours\":\"100\"}]',0,0,1504237134,1504237134),(13,'SH201707000178',1,0,0,23,50,'[{\"course_id\":\"1\",\"group_id\":\"1\",\"class_hours\":\"20\"},{\"course_id\":\"2\",\"group_id\":\"2\",\"class_hours\":\"30\"}]',0,0,1504237966,1504237966),(14,'LS1504246383',1,1,3,11,30,'',100,0,1504246383,1504246383),(15,'LS1504246437',1,1,3,9,30,'',100,0,1504246437,1504246437),(16,'SH201707000180',1,1,2,24,50,'',100,0,1504249960,1504249960),(17,'BJ201707000513',2,0,0,46,50,'[{\"course_id\":\"1\",\"group_id\":\"1\",\"class_hours\":\"25\"},{\"course_id\":\"2\",\"group_id\":\"2\",\"class_hours\":\"25\"}]',0,0,1504250438,1504250438),(18,'SH201707000176',1,0,0,42,50,'[{\"course_id\":\"1\",\"group_id\":\"1\",\"class_hours\":\"25\"},{\"course_id\":\"2\",\"group_id\":\"2\",\"class_hours\":\"25\"}]',0,0,1504512077,1504512077),(19,'BJ201707000512',1,0,0,47,50,'[{\"course_id\":\"1\",\"group_id\":\"1\",\"class_hours\":\"25\"},{\"course_id\":\"2\",\"group_id\":\"2\",\"class_hours\":\"25\"}]',0,0,1504513925,1504513925),(20,'BJ201707000470',1,0,0,48,1000,'[{\"course_id\":\"1\",\"group_id\":\"1\",\"class_hours\":\"1000\"}]',0,0,1504660192,1504660192),(21,'SH201707000177',1,0,0,49,50,'[{\"course_id\":\"1\",\"group_id\":\"1\",\"class_hours\":\"25\"},{\"course_id\":\"2\",\"group_id\":\"2\",\"class_hours\":\"25\"}]',0,0,1504684566,1504684566),(22,'CD201707000101',1,0,0,53,50,'[{\"course_id\":\"2\",\"group_id\":\"1\",\"class_hours\":\"50\"}]',0,0,1504766506,1504766506),(23,'CD201707000095',2,0,0,54,30,'[{\"course_id\":\"1\",\"group_id\":\"2\",\"class_hours\":\"30\"}]',0,0,1504766557,1504766557),(24,'LS1504773596',1,1,3,10,30,'',100,0,1504773596,1504773596),(25,'BJ201707000491',1,0,0,55,50,'[{\"course_id\":\"1\",\"group_id\":\"1\",\"class_hours\":\"50\"}]',0,0,1505110640,1505110640),(26,'BJ201707000466',1,0,0,56,50,'[{\"course_id\":\"1\",\"group_id\":\"2\",\"class_hours\":\"50\"}]',0,0,1505110760,1505110760),(27,'SH201707000168',1,0,0,57,50,'[{\"course_id\":\"1\",\"group_id\":\"5\",\"class_hours\":\"50\"}]',0,0,1505111107,1505111107),(28,'BJ201707000463',1,1,4,58,50,'',100,0,1505113021,1505113021),(29,'CD201707000098',1,1,4,59,50,'',100,0,1505113086,1505113086),(30,'BJ201707000456',1,1,5,60,40,'',100,0,1505118446,1505118446),(31,'CD201707000097',1,1,5,62,40,'',100,0,1505118790,1505118790),(32,'BJ201707000422',1,1,5,63,40,'',100,0,1505118810,1505118810),(33,'BJ201707000481',1,0,0,64,100,'[{\"course_id\":\"1\",\"group_id\":\"1\",\"class_hours\":\"100\"}]',0,0,1505201641,1505201641),(34,'LS1505459959',1,0,0,18,50,'[{\"course_id\":\"1\",\"group_id\":\"1\",\"class_hours\":\"10\"}]',100,0,1505459959,1505460010),(35,'GZ201706000145',1,1,6,65,40,'',100,0,1505715128,1505715128),(36,'BJ201706000417',1,1,6,66,40,'',100,0,1505715503,1505715503),(37,'SH201706000165',1,0,0,67,50,'[{\"course_id\":\"1\",\"group_id\":\"3\",\"class_hours\":\"50\"}]',0,0,1505717084,1505717084);
/*!40000 ALTER TABLE `exam_course_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_course_task`
--

DROP TABLE IF EXISTS `exam_course_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_course_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_order_id` int(11) NOT NULL DEFAULT '0' COMMENT '一对一订单ID',
  `group_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属组ID',
  `course_id` int(11) NOT NULL COMMENT '课程ID',
  `student_id` int(11) NOT NULL COMMENT '学员ID',
  `class_hours` smallint(6) NOT NULL DEFAULT '0' COMMENT '课时数',
  `service_status` smallint(6) NOT NULL DEFAULT '0' COMMENT '服务状态',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT '状态',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gco` (`group_id`,`course_id`,`course_order_id`),
  KEY `exam_course_task_course_order_id_index` (`course_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_course_task`
--

LOCK TABLES `exam_course_task` WRITE;
/*!40000 ALTER TABLE `exam_course_task` DISABLE KEYS */;
INSERT INTO `exam_course_task` (`id`, `course_order_id`, `group_id`, `course_id`, `student_id`, `class_hours`, `service_status`, `status`, `created_at`, `updated_at`) VALUES (1,1,1,1,19,50,100,0,1503976134,1503976409),(2,1,2,2,19,100,100,0,1503976134,1503990172),(3,1,3,3,19,50,0,0,1503976134,1503976134),(4,2,1,1,44,100,100,0,1503976739,1503988560),(5,2,2,2,44,20,100,0,1503976739,1503987103),(6,6,1,1,20,50,100,0,1503979248,1503979315),(7,6,2,2,20,50,100,0,1503979248,1503979339),(8,6,3,3,20,20,100,0,1503979248,1503979349),(9,2,3,4,44,30,100,0,1503979889,1503979912),(10,10,1,1,30,20,100,0,1504236159,1504237138),(11,11,1,1,40,100,100,0,1504237000,1504237066),(12,11,2,1,40,100,0,0,1504237000,1504237000),(13,12,1,1,41,100,100,0,1504237134,1504237457),(14,13,1,1,23,20,0,0,1504237966,1504237966),(15,13,2,2,23,30,0,0,1504237966,1504237966),(16,10,2,3,30,30,0,0,1504238020,1504238020),(17,17,1,1,46,25,100,0,1504250438,1504250530),(18,17,2,2,46,25,0,0,1504250438,1504250438),(19,18,1,1,42,25,100,0,1504512077,1504512181),(20,18,2,2,42,25,100,0,1504512077,1504512192),(21,19,1,1,47,25,0,0,1504513925,1504513925),(22,19,2,2,47,25,0,0,1504513925,1504513925),(23,20,1,1,48,1000,100,0,1504660192,1504661332),(24,21,1,1,49,25,100,0,1504684566,1504684614),(25,21,2,2,49,25,100,0,1504684566,1504684741),(26,22,1,2,53,50,100,0,1504766506,1504767653),(27,23,2,1,54,30,0,0,1504766557,1504766557),(28,25,1,1,55,50,100,0,1505110640,1505111068),(29,26,2,1,56,50,100,0,1505110760,1505112608),(30,27,5,1,57,50,0,0,1505111107,1505111107),(31,33,1,1,64,100,0,0,1505201641,1505201641),(32,34,1,1,18,20,100,0,1505459959,1505462725),(33,34,3,4,18,20,100,0,1505460010,1505460115),(34,37,3,1,67,50,100,0,1505717084,1505717443);
/*!40000 ALTER TABLE `exam_course_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_course_task_child`
--

DROP TABLE IF EXISTS `exam_course_task_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_course_task_child` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL COMMENT '课程ID',
  `course_order_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `course_id` int(11) NOT NULL DEFAULT '0',
  `teacher_id` int(11) NOT NULL COMMENT '教师ID',
  `student_id` int(11) NOT NULL DEFAULT '0',
  `class_hours` smallint(6) NOT NULL DEFAULT '0' COMMENT '课时数',
  `service_status` smallint(6) NOT NULL DEFAULT '0' COMMENT '服务状态',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT '状态',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pt` (`parent_id`,`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_course_task_child`
--

LOCK TABLES `exam_course_task_child` WRITE;
/*!40000 ALTER TABLE `exam_course_task_child` DISABLE KEYS */;
INSERT INTO `exam_course_task_child` (`id`, `parent_id`, `course_order_id`, `group_id`, `course_id`, `teacher_id`, `student_id`, `class_hours`, `service_status`, `status`, `created_at`, `updated_at`) VALUES (1,1,1,1,1,1,19,8,200,0,1503976409,1503993472),(2,1,1,1,1,5,19,30,100,0,1503976442,1503995327),(3,6,6,1,1,1,20,20,100,0,1503979315,1503990267),(4,6,6,1,1,5,20,30,0,0,1503979327,1503979327),(5,7,6,2,2,2,20,50,0,0,1503979339,1503979339),(6,8,6,3,3,3,20,20,0,0,1503979349,1503979349),(7,9,2,3,4,3,44,30,0,0,1503979912,1503979912),(8,5,2,2,2,2,44,20,0,0,1503987103,1503987103),(9,4,2,1,1,1,44,20,100,0,1503988560,1503988606),(10,2,1,2,2,2,19,20,0,0,1503990172,1503990172),(11,11,11,1,1,7,40,100,100,0,1504237066,1504237553),(12,10,10,1,1,1,30,10,100,0,1504237138,1504237237),(13,13,12,1,1,7,41,100,0,0,1504237457,1504237457),(14,17,17,1,1,6,46,10,0,0,1504250530,1504250530),(15,17,17,1,1,5,46,15,0,0,1504250546,1504250546),(16,19,18,1,1,1,42,25,0,0,1504512181,1504512181),(17,20,18,2,2,2,42,25,0,0,1504512192,1504512192),(18,23,20,1,1,1,48,513,100,0,1504661332,1504661679),(19,24,21,1,1,1,49,20,100,0,1504684614,1504684850),(20,24,21,1,1,7,49,5,0,0,1504684627,1504684627),(21,25,21,2,2,2,49,25,0,0,1504684741,1504684759),(22,26,22,1,2,7,53,50,0,0,1504767653,1504767653),(23,28,25,1,1,7,55,50,100,0,1505111068,1505111407),(24,29,26,2,1,10,56,50,100,0,1505112608,1505112734),(25,32,34,1,1,7,18,10,0,0,1505460102,1505460102),(26,33,34,3,4,9,18,10,100,0,1505460115,1505460245),(27,33,34,3,4,3,18,5,0,0,1505462509,1505462509),(28,33,34,3,4,11,18,2,0,0,1505462652,1505462652),(29,32,34,1,1,1,18,5,100,0,1505462744,1505462778),(30,34,37,3,1,11,67,50,0,0,1505717443,1505717443);
/*!40000 ALTER TABLE `exam_course_task_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_group`
--

DROP TABLE IF EXISTS `exam_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '课程名',
  `leader_id` int(11) NOT NULL COMMENT '负责人',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT '状态',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_group`
--

LOCK TABLES `exam_group` WRITE;
/*!40000 ALTER TABLE `exam_group` DISABLE KEYS */;
INSERT INTO `exam_group` (`id`, `name`, `leader_id`, `status`, `created_at`, `updated_at`) VALUES (1,'A组',4,0,1503975899,1504663672),(2,'B组',5,0,1503975930,1504663692),(3,'C组',1,0,1503975954,1504663707),(4,'质检组',5,0,1504835657,1504835657),(5,'外地',6,0,1504835686,1504835686);
/*!40000 ALTER TABLE `exam_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_order`
--

DROP TABLE IF EXISTS `exam_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_order` (
  `rid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `student_id` int(10) NOT NULL COMMENT '学生的id',
  `teacher_id` int(10) NOT NULL COMMENT '老师的id',
  `course_id` int(10) NOT NULL COMMENT '授课科目',
  `class_id` int(10) NOT NULL,
  `course_task_child_id` int(10) NOT NULL COMMENT '关联一对一课程id',
  `category` int(10) NOT NULL COMMENT '类别',
  `order_type` tinyint(1) NOT NULL COMMENT '订单类型：0为一对一；1小班；2为公开课',
  `course_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '授课类型:1为面授；3为网校',
  `stu_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '出勤状态 : 0为默认；1为出勤；2为旷课；3为请假；4为请假待确认；5为旷课待确认',
  `sign_grade` varchar(50) NOT NULL COMMENT '预约课程',
  `sign_date` varchar(50) NOT NULL COMMENT '预约日期',
  `sign_time` tinyint(3) NOT NULL COMMENT '预约时间',
  `sign_fields` tinyint(3) NOT NULL COMMENT '预约场地',
  `onlinecourse_id` int(10) NOT NULL COMMENT '网校课程id',
  `gensee_id` varchar(255) NOT NULL COMMENT '展示互动课程id',
  `client_url` varchar(255) NOT NULL COMMENT '客户链接',
  `teacher_url` varchar(255) NOT NULL COMMENT '老师链接',
  `playback_url` varchar(255) NOT NULL COMMENT '回放链接',
  `content` varchar(255) NOT NULL COMMENT '预约备注',
  `score` int(11) NOT NULL COMMENT '评分',
  `month` varchar(255) NOT NULL COMMENT '月份',
  `service_ischeck` tinyint(1) NOT NULL DEFAULT '0' COMMENT '服务确认状态：0默认，1拒绝，2确认',
  `ischeck` tinyint(1) NOT NULL COMMENT '是否完成：0未完成，1表示完成',
  `status` tinyint(1) NOT NULL COMMENT '状态：0表示存在，7表示删除',
  `finishdate` int(11) NOT NULL COMMENT '完成时间',
  `result_time` int(11) NOT NULL COMMENT '确认时间',
  `created_at` int(11) NOT NULL COMMENT '添加时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`rid`),
  KEY `student_id` (`student_id`) USING BTREE,
  KEY `teacher_id` (`teacher_id`) USING BTREE,
  KEY `course_id` (`course_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_order`
--

LOCK TABLES `exam_order` WRITE;
/*!40000 ALTER TABLE `exam_order` DISABLE KEYS */;
INSERT INTO `exam_order` (`rid`, `student_id`, `teacher_id`, `course_id`, `class_id`, `course_task_child_id`, `category`, `order_type`, `course_type`, `stu_status`, `sign_grade`, `sign_date`, `sign_time`, `sign_fields`, `onlinecourse_id`, `gensee_id`, `client_url`, `teacher_url`, `playback_url`, `content`, `score`, `month`, `service_ischeck`, `ischeck`, `status`, `finishdate`, `result_time`, `created_at`, `updated_at`) VALUES (1,19,1,1,0,1,3,0,1,1,'雅思','2017-08-28',11,0,0,'','','','','的萨达',0,'',0,1,0,1503977459,0,1503977081,1503977459),(2,0,6,1,1,0,2,1,1,0,'托福口语1','2017-08-30',13,0,0,'','','','','',0,'',0,1,0,1503978007,0,1503977136,1503978007),(3,19,1,1,0,1,4,0,3,0,'雅思课程二','2017-09-04',10,0,0,'miPtqtIA4N','http://taisha.gensee.com/training/site/s/92695170','http://taisha.gensee.com/training/site/r/92695170','','',0,'',0,0,0,0,0,1503977204,1504517729),(4,0,7,1,1,0,2,1,3,0,'托福口语练习2017/08/31','2017-08-30',16,0,0,'w77rcVrgMz','http://taisha.gensee.com/training/site/s/25732783','http://taisha.gensee.com/training/site/r/25732783','','',0,'',0,0,7,0,0,1503977262,1505118683),(5,0,1,1,1,0,2,1,3,0,'托福口语练习题讲解','2017-08-31',13,0,0,'Jgjq8F0NI9','http://taisha.gensee.com/training/site/s/91339745','http://taisha.gensee.com/training/site/r/91339745','','',0,'',0,0,7,0,0,1503977334,1505118865),(6,19,1,1,0,1,4,0,1,1,'托福课程三','2017-09-01',9,0,0,'','','','','',0,'',1,1,0,1503978193,0,1503978134,1503978193),(7,0,5,1,1,0,2,1,1,0,'测试旷课','2017-08-29',9,0,0,'','','','','',0,'',0,1,0,1503978871,0,1503978854,1503978871),(8,20,1,1,0,3,6,0,1,1,'雅思课程二','2017-08-28',13,0,0,'','','','','',0,'',0,1,0,1503980113,0,1503980090,1503980113),(9,0,1,1,1,0,2,1,1,0,'托福1','2017-08-31',14,0,0,'','','','','',0,'',0,1,0,1504249466,0,1503985972,1504249466),(10,0,1,1,1,0,2,1,1,0,'托福2','2017-09-01',13,0,0,'','','','','',0,'',0,1,0,1503987774,0,1503986012,1503987774),(11,0,6,1,1,0,3,1,1,0,'托福3','2017-09-01',15,0,0,'','','','','',0,'',0,0,0,0,0,1503986032,1503986032),(12,0,7,1,1,0,3,1,1,0,'托福5','2017-09-03',12,0,0,'','','','','',0,'',0,1,0,1503994489,0,1503986056,1503994489),(13,0,5,1,1,0,7,1,1,0,'托福6','2017-09-03',15,0,0,'','','','','',0,'',0,0,0,0,0,1503986088,1503986088),(14,0,4,1,1,0,3,1,1,0,'托福7','2017-09-02',17,0,0,'','','','','',0,'',0,0,0,0,0,1503986110,1503986110),(16,44,1,1,0,9,2,0,1,0,'雅思课程三','2017-09-02',13,0,0,'','','','','的萨达',0,'',0,0,0,0,0,1503988606,1503988606),(17,44,1,1,0,9,6,0,1,1,'GRE课程','2017-08-28',14,0,0,'','','','','',0,'',0,1,0,1504246545,0,1503989404,1504246545),(18,44,1,1,0,9,6,0,1,1,'托福课程五','2017-08-30',12,0,0,'','','','','',0,'',2,1,0,1503996869,0,1503989478,1503996869),(19,44,1,1,0,9,9,0,3,0,'雅思课程六','2017-08-30',20,0,0,'bGjykRzE81','http://taisha.gensee.com/training/site/s/42436231','http://taisha.gensee.com/training/site/r/42436231','','',0,'',0,0,0,0,0,1503989592,1503989592),(20,20,1,1,0,3,4,0,1,0,'雅思3','2017-08-27',9,0,0,'','','','','',0,'',0,0,0,0,0,1503990267,1503990267),(21,19,1,1,0,1,3,0,1,0,'雅思口语','2017-08-23',9,0,0,'','','','','',0,'',0,0,0,0,0,1503992664,1503992664),(22,19,1,1,0,1,5,0,1,0,'雅思笔试课程','2017-08-21',11,0,0,'','','','','',0,'',0,0,0,0,0,1503992786,1503992786),(23,19,1,1,0,1,3,0,1,1,'雅思','2017-08-25',11,0,0,'','','','','',0,'',0,1,0,1503993472,0,1503992880,1503993472),(24,19,1,1,0,1,4,0,1,0,'雅思24324','2017-09-02',16,0,0,'','','','','',0,'',0,0,0,0,0,1503992966,1503992966),(25,19,1,1,0,1,1,0,1,0,'雅思243244343','2017-08-23',14,0,0,'','','','','',0,'',0,0,0,0,0,1503993077,1503993077),(26,19,5,1,0,2,4,0,1,1,'雅思课程三','2017-08-31',10,0,0,'','','','','',0,'',0,1,0,1503995572,0,1503995327,1503995572),(28,0,1,1,1,0,7,1,1,0,'服务记录测试','2017-08-28',10,0,0,'','','','','',0,'',0,1,0,1504247837,0,1503995735,1504247837),(29,19,5,1,0,2,3,0,1,0,'雅思3-2','2017-08-28',9,0,0,'','','','','',0,'',0,0,0,0,0,1503998855,1503998855),(32,30,1,1,0,12,3,0,1,0,'托福作文练习','2017-09-02',15,0,0,'','','','','',0,'',0,0,0,0,0,1504237237,1504237237),(33,30,1,1,0,12,3,0,3,0,'托福作文练习2017/09/01','2017-09-01',15,0,0,'SAimO5NOHM','http://taisha.gensee.com/training/site/s/27192307','http://taisha.gensee.com/training/site/r/27192307','','',0,'',0,0,0,0,0,1504237263,1504237263),(34,40,7,1,0,11,2,0,1,0,'46546','2017-09-01',16,0,0,'','','','','3132',0,'',0,0,0,0,0,1504237553,1504237553),(35,0,4,1,1,0,2,1,1,0,'雅思4345423','2017-08-28',18,0,0,'','','','','',0,'',0,0,0,0,0,1504238317,1504238317),(37,0,2,2,2,0,4,1,1,0,'雅思2017/09/01','2017-08-30',12,0,0,'','','','','',0,'',0,0,0,0,0,1504238451,1504238451),(38,0,2,2,2,0,4,1,1,0,'雅思阅读练习2017/09/01','2017-09-02',11,0,0,'','','','','',0,'',0,0,0,0,0,1504238569,1504238569),(39,0,2,1,2,0,2,1,1,0,'雅思434-23','2017-08-30',9,0,0,'','','','','',0,'',0,0,0,0,0,1504238617,1504238617),(45,0,3,2,3,0,2,1,1,0,'雅思54','2017-08-30',10,0,0,'','','','','',0,'',0,0,0,0,0,1504246476,1504246476),(46,0,2,1,2,0,2,1,1,0,'烦烦','2017-08-28',13,0,0,'','','','','',0,'',0,0,0,0,0,1504250273,1504250273),(47,30,1,1,0,12,2,0,1,0,'雅思2','2017-08-28',12,0,0,'','','','','',0,'',0,0,0,0,0,1504250605,1504250605),(48,20,1,1,0,3,3,0,1,0,'雅思课程三','2017-09-05',10,0,0,'','','','','',0,'',0,0,7,0,0,1504508348,1504508369),(49,20,1,1,0,3,2,0,1,1,'雅思2-1','2017-09-04',9,0,0,'','','','','',0,'',0,1,0,1504661791,0,1504508387,1504661791),(50,44,1,1,0,9,3,0,3,0,'托福课程一','2017-09-04',13,0,0,'AxTgYi9DwQ','http://taisha.gensee.com/training/site/s/34207877','http://taisha.gensee.com/training/site/r/34207877','','',0,'',0,0,0,0,0,1504508433,1504508433),(51,48,1,1,0,18,1,0,1,0,'听力，how are you','2017-09-07',11,0,0,'','','','','dasda',0,'',0,0,0,0,0,1504661679,1504661679),(52,48,1,1,0,18,1,0,1,0,'听力，how are you','2017-09-06',10,0,0,'','','','','dasd',0,'',0,0,0,0,0,1504661749,1504661749),(53,49,1,1,0,19,2,0,3,0,'雅思升级','2017-09-03',15,0,0,'IQOakcPxNu','http://taisha.gensee.com/training/site/s/23754220','http://taisha.gensee.com/training/site/r/23754220','','你好',0,'',0,0,7,0,0,1504684850,1504684897),(54,49,1,1,0,19,4,0,1,1,'雅思升级','2017-09-05',9,0,0,'','','','','你好',0,'',0,1,0,1504685060,0,1504684936,1504685060),(55,49,1,1,0,19,4,0,1,1,'雅思升级二','2017-09-06',13,0,0,'','','','','萨达',0,'',0,1,0,1504685163,0,1504685135,1504685163),(56,0,3,3,3,0,3,1,1,0,'学生端手机号加密','2017-09-09',12,0,0,'','','','','',0,'',0,0,0,0,0,1504773634,1504773634),(57,55,7,1,0,23,1,0,1,0,'1','2017-09-12',11,0,0,'','','','','',0,'',0,0,0,0,0,1505111407,1505111407),(58,55,7,1,0,23,2,0,1,1,'2','2017-09-11',9,0,0,'','','','','',0,'',0,1,0,1505111462,0,1505111432,1505111462),(59,55,7,1,0,23,2,0,1,0,'托福','2017-09-11',14,0,0,'','','','','',0,'',0,0,0,0,0,1505111509,1505111509),(60,56,10,1,0,24,2,0,1,0,'听力1','2017-09-12',0,0,0,'','','','','',0,'',0,0,0,0,0,1505112734,1505112734),(61,0,223,1,5,0,1,1,1,0,'听力1','2017-09-12',10,0,0,'','','','','',0,'',0,0,0,0,0,1505119025,1505119025),(62,0,223,1,5,0,1,1,1,0,'听力2','2017-09-12',11,0,0,'','','','','',0,'',0,0,0,0,0,1505119049,1505119049),(63,0,224,1,5,0,4,1,1,0,'阅读1','2017-09-11',16,0,0,'','','','','',0,'',0,0,0,0,0,1505119396,1505119396),(64,0,224,1,5,0,4,1,1,0,'阅读2','2017-09-11',17,0,0,'','','','','',0,'',0,0,0,0,0,1505119416,1505119416),(65,0,10,1,5,0,2,1,1,0,'口语1','2017-09-11',18,0,0,'','','','','',0,'',0,0,0,0,0,1505120133,1505120133),(66,18,9,4,0,26,5,0,1,0,'额为222','2017-09-14',12,0,0,'','','','','',0,'',0,0,0,0,0,1505460245,1505460245),(67,18,1,1,0,29,5,0,1,0,'令人作呕665','2017-09-16',11,0,0,'','','','','',0,'',0,0,0,0,0,1505462778,1505462778);
/*!40000 ALTER TABLE `exam_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_order_smallclass_relation`
--

DROP TABLE IF EXISTS `exam_order_smallclass_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_order_smallclass_relation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL COMMENT '课程id',
  `class_id` int(10) NOT NULL COMMENT '班级id',
  `student_id` int(10) NOT NULL COMMENT '学生id',
  `teacher_id` int(10) NOT NULL COMMENT '老师id',
  `month` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '月份',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '分数',
  `created_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  `stu_status` int(10) NOT NULL DEFAULT '0' COMMENT '出勤状态1为出勤2为旷课3为请假4为待确认请假5为待确认旷课',
  `service_ischeck` int(10) NOT NULL DEFAULT '0' COMMENT '课程确认 0为默认值，1为拒绝，2为确认',
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`) USING BTREE,
  KEY `classId` (`class_id`) USING BTREE,
  KEY `studentId` (`student_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_order_smallclass_relation`
--

LOCK TABLES `exam_order_smallclass_relation` WRITE;
/*!40000 ALTER TABLE `exam_order_smallclass_relation` DISABLE KEYS */;
INSERT INTO `exam_order_smallclass_relation` (`id`, `rid`, `class_id`, `student_id`, `teacher_id`, `month`, `score`, `created_at`, `updated_at`, `stu_status`, `service_ischeck`) VALUES (1,2,1,7,6,'201708',96,1503977136,1503977136,1,2),(2,2,1,18,6,'201708',0,1503977136,1503977136,5,0),(3,2,1,45,6,'201708',0,1503977136,1503977136,1,0),(4,4,1,7,7,'201708',0,1503977262,1503977262,0,0),(5,4,1,18,7,'201708',0,1503977262,1503977262,0,0),(6,4,1,45,7,'201708',0,1503977262,1503977262,0,0),(7,5,1,7,1,'201708',0,1503977334,1503977334,0,0),(8,5,1,18,1,'201708',0,1503977334,1503977334,0,0),(9,5,1,45,1,'201708',0,1503977334,1503977334,0,0),(10,7,1,7,5,'201708',72,1503978854,1503978854,2,2),(11,7,1,18,5,'201708',0,1503978854,1503978854,1,0),(12,7,1,45,5,'201708',0,1503978854,1503978854,1,0),(13,9,1,7,1,'201708',120,1503985972,1503985972,1,2),(14,9,1,18,1,'201708',0,1503985972,1503985972,1,0),(15,9,1,45,1,'201708',0,1503985972,1503985972,1,0),(16,10,1,7,1,'201709',24,1503986012,1503986012,1,2),(17,10,1,18,1,'201709',0,1503986012,1503986012,1,0),(18,10,1,45,1,'201709',0,1503986012,1503986012,1,0),(19,11,1,7,6,'201709',0,1503986032,1503986032,0,0),(20,11,1,18,6,'201709',0,1503986032,1503986032,0,0),(21,11,1,45,6,'201709',0,1503986032,1503986032,0,0),(22,12,1,7,7,'201709',120,1503986056,1503986056,1,2),(23,12,1,18,7,'201709',0,1503986056,1503986056,1,0),(24,12,1,45,7,'201709',0,1503986056,1503986056,1,0),(25,13,1,7,5,'201709',0,1503986088,1503986088,0,0),(26,13,1,18,5,'201709',0,1503986088,1503986088,0,0),(27,13,1,45,5,'201709',0,1503986088,1503986088,0,0),(28,14,1,7,4,'201709',0,1503986110,1503986110,0,0),(29,14,1,18,4,'201709',0,1503986110,1503986110,0,0),(30,14,1,45,4,'201709',0,1503986110,1503986110,0,0),(35,28,1,7,1,'201708',72,1503995735,1503995735,1,2),(36,28,1,18,1,'201708',0,1503995735,1503995735,1,0),(39,35,1,18,4,'201708',0,1504238317,1504238317,0,0),(40,37,2,29,2,'201708',0,1504238451,1504238451,0,0),(41,37,2,22,2,'201708',0,1504238451,1504238451,0,0),(42,37,2,37,2,'201708',0,1504238451,1504238451,0,0),(43,38,2,29,2,'201709',0,1504238569,1504238569,0,0),(44,38,2,22,2,'201709',0,1504238569,1504238569,0,0),(45,38,2,37,2,'201709',0,1504238569,1504238569,0,0),(46,39,2,22,2,'201708',0,1504238617,1504238617,0,0),(47,45,3,11,3,'201708',0,1504246476,1504246476,0,0),(48,46,2,37,2,'201708',0,1504250273,1504250273,0,0),(49,46,2,24,2,'201708',0,1504250273,1504250273,0,0),(50,56,3,11,3,'201709',0,1504773634,1504773634,0,0),(51,56,3,9,3,'201709',0,1504773634,1504773634,0,0),(52,56,3,10,3,'201709',0,1504773634,1504773634,0,0),(53,61,5,62,10,'201709',0,1505119025,1505119025,0,0),(54,61,5,63,10,'201709',0,1505119025,1505119025,0,0),(55,62,5,60,10,'201709',0,1505119049,1505119049,0,0),(56,62,5,62,10,'201709',0,1505119049,1505119049,0,0),(57,63,5,62,10,'201709',0,1505119396,1505119396,0,0),(58,64,5,60,10,'201709',0,1505119416,1505119416,0,0),(59,64,5,62,11,'201709',0,1505119416,1505119416,0,0),(60,64,5,63,11,'201709',0,1505119416,1505119416,0,0),(61,65,5,60,10,'201709',0,1505120133,1505120133,0,0),(62,65,5,62,10,'201709',0,1505120133,1505120133,0,0);
/*!40000 ALTER TABLE `exam_order_smallclass_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_process`
--

DROP TABLE IF EXISTS `exam_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_process` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `class_id` int(11) NOT NULL COMMENT '班级id',
  `course_id` int(11) NOT NULL COMMENT '课程的id',
  `teacher_id` int(11) NOT NULL COMMENT '老师id',
  `course_task_child_id` int(11) NOT NULL COMMENT '关联一对一课程任务id',
  `rid` int(11) NOT NULL COMMENT '预约id',
  `servicestyle` tinyint(3) NOT NULL COMMENT '服务方式',
  `content` mediumtext CHARACTER SET utf8 NOT NULL COMMENT '服务内容',
  `begindate` int(11) NOT NULL COMMENT '服务开始时间',
  `endate` int(11) NOT NULL COMMENT '服务结束时间',
  `subdate` int(10) NOT NULL COMMENT '本次服务时长(分钟)',
  `status` tinyint(1) NOT NULL COMMENT '状态：0为正常，9为删除',
  `istrouble` tinyint(1) NOT NULL COMMENT '状态：0为服务审核未通过；1为服务通过审核',
  `created_at` int(10) NOT NULL COMMENT '添加时间',
  `updated_at` int(10) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `rid` (`rid`) USING BTREE,
  KEY `teacherId` (`teacher_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_process`
--

LOCK TABLES `exam_process` WRITE;
/*!40000 ALTER TABLE `exam_process` DISABLE KEYS */;
INSERT INTO `exam_process` (`pid`, `class_id`, `course_id`, `teacher_id`, `course_task_child_id`, `rid`, `servicestyle`, `content`, `begindate`, `endate`, `subdate`, `status`, `istrouble`, `created_at`, `updated_at`) VALUES (1,0,1,1,1,1,1,'教授雅思课程提升阶段！',1503889200,1503892800,60,0,0,1503977459,1503977459),(2,1,0,6,0,2,1,'口语练习',1504069200,1504072800,60,0,0,1503978007,1503978007),(3,0,1,1,1,6,1,'正处于阶段5',1504227600,1504231200,60,0,0,1503978193,1503978193),(4,1,0,5,0,7,1,'专门测试旷课的bug',1503968400,1503972000,60,0,0,1503978871,1503978871),(5,0,1,1,3,8,1,'反倒是',1503896400,1503900000,60,0,0,1503980113,1503980113),(6,1,0,1,0,10,1,'DFSFSD',1504242000,1504245600,60,0,0,1503987774,1503987774),(8,0,1,1,1,23,1,'你好',1503630000,1503633600,60,0,0,1503993472,1503993472),(9,1,0,7,0,12,1,'你好',1504411200,1504414800,60,0,0,1503994489,1503994489),(10,0,1,5,2,26,1,'发生大幅度',1504144800,1504148400,60,0,0,1503995572,1503995572),(11,0,1,1,9,18,1,'sadsad ',1504065600,1504069200,60,0,0,1503996869,1503996869),(12,0,1,1,9,17,1,'发打发斯蒂芬',1503900000,1503903600,60,0,0,1504246545,1504246545),(13,1,0,1,0,28,1,'测试bug并修改',1503885600,1503889200,60,0,0,1504247837,1504247837),(14,1,0,1,0,9,1,'范德萨发斯蒂芬',1504159200,1504162800,60,0,0,1504249466,1504249466),(15,0,1,1,3,49,1,'大撒的撒',1504486800,1504490400,60,0,0,1504661791,1504661791),(16,0,1,1,19,54,1,'服务态度良好！值得称赞。',1504573200,1504576800,60,0,0,1504685060,1504685060),(17,0,1,1,19,55,1,'服务不怎么样，有待提高',1504674000,1504677600,60,0,0,1504685163,1504685163),(18,0,1,7,23,58,1,'完成了口语授课',1505091600,1505095200,60,0,0,1505111462,1505111462);
/*!40000 ALTER TABLE `exam_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_scores`
--

DROP TABLE IF EXISTS `exam_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_scores` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号id',
  `teacher_id` int(11) NOT NULL COMMENT '添加人的id',
  `student_id` int(11) NOT NULL COMMENT '学生id',
  `course_id` int(11) NOT NULL COMMENT '课程id',
  `exam_score` varchar(20) NOT NULL DEFAULT '0' COMMENT '考试成绩',
  `exam_time` varchar(50) NOT NULL DEFAULT '0' COMMENT '考试成绩',
  `score_type` tinyint(1) NOT NULL COMMENT '成绩类型：0普通成绩，1表示基点成绩，2表示最终成绩',
  `report_img` varchar(255) NOT NULL COMMENT '成绩单',
  `status` smallint(6) NOT NULL COMMENT '状态：0表示正常，7删除',
  `created_at` int(10) NOT NULL COMMENT '添加时间',
  `updated_at` int(10) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `teacher_id` (`teacher_id`) USING BTREE,
  KEY `student_id` (`student_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_scores`
--

LOCK TABLES `exam_scores` WRITE;
/*!40000 ALTER TABLE `exam_scores` DISABLE KEYS */;
INSERT INTO `exam_scores` (`id`, `teacher_id`, `student_id`, `course_id`, `exam_score`, `exam_time`, `score_type`, `report_img`, `status`, `created_at`, `updated_at`) VALUES (1,1,19,2,'130','2017-08-02',1,'/uploads/basic/19/Basic5461.jpg',0,1503978443,1503978443),(2,1,19,1,'130','2017-08-01',2,'/uploads/final/19/Final8924.jpg',0,1503978881,1503978881),(3,1,19,2,'130','2017-08-09',2,'/uploads/final/19/Final8583.jpg',0,1503978919,1503978919),(4,1,7,2,'130','2017-08-09',1,'/uploads/basic/7/Basic6493.jpg',0,1504142140,1504142140),(5,1,44,1,'130','2017-08-16',2,'/uploads/final/44/Final5051.jpg',0,1504142539,1504142539),(6,1,48,1,'100','2017-08-12',1,'/uploads/basic/48/Basic8935.jpeg',0,1504661944,1504661944);
/*!40000 ALTER TABLE `exam_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_service_log`
--

DROP TABLE IF EXISTS `exam_service_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_service_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '服务日志id',
  `student_id` int(11) NOT NULL COMMENT '学生的ID',
  `teacher_id` int(11) NOT NULL COMMENT '老师的ID',
  `class_id` int(11) NOT NULL COMMENT '班级id',
  `course_task_child_id` int(11) NOT NULL COMMENT '一对一任务ID',
  `order_type` tinyint(1) NOT NULL COMMENT '订单类型：0为一对一；1小班；2为公开课',
  `type` smallint(6) NOT NULL COMMENT '类型',
  `content` mediumtext NOT NULL COMMENT '服务内容',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `created_at` int(10) NOT NULL COMMENT '添加时间',
  `updated_at` int(10) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_service_log`
--

LOCK TABLES `exam_service_log` WRITE;
/*!40000 ALTER TABLE `exam_service_log` DISABLE KEYS */;
INSERT INTO `exam_service_log` (`id`, `student_id`, `teacher_id`, `class_id`, `course_task_child_id`, `order_type`, `type`, `content`, `status`, `created_at`, `updated_at`) VALUES (1,56,10,0,24,0,1,'范德萨范德萨发',0,1505267833,1505267833),(2,49,7,0,20,0,1,'发斯蒂芬',0,1505444798,1505444798),(3,0,1,2,0,1,1,'是发生的范德萨发',0,1505465685,1505465685);
/*!40000 ALTER TABLE `exam_service_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_sign`
--

DROP TABLE IF EXISTS `exam_sign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_sign` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号id',
  `course_id` int(11) NOT NULL COMMENT '课程id',
  `teacher_id` int(11) NOT NULL COMMENT '老师id',
  `contid` int(11) NOT NULL COMMENT '合同ID',
  `sales_type` tinyint(1) NOT NULL COMMENT '销售类别:1为助签，2为转表，3为独立签约，4为其他',
  `course_type` tinyint(1) NOT NULL COMMENT '购课类型:1为续课，2为老退新，3为其他',
  `sign_date` int(10) NOT NULL COMMENT '签约日期',
  `signatory` varchar(50) NOT NULL COMMENT '签约人',
  `sign_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '签约金额',
  `achievement_money` varchar(50) NOT NULL COMMENT '业绩提成',
  `status` smallint(6) NOT NULL COMMENT '状态：0为正常，7为删除',
  `created_at` int(10) NOT NULL COMMENT '添加时间',
  `updated_at` int(10) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `contid` (`contid`) USING BTREE,
  KEY `teacher_id` (`teacher_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_sign`
--

LOCK TABLES `exam_sign` WRITE;
/*!40000 ALTER TABLE `exam_sign` DISABLE KEYS */;
INSERT INTO `exam_sign` (`id`, `course_id`, `teacher_id`, `contid`, `sales_type`, `course_type`, `sign_date`, `signatory`, `sign_money`, `achievement_money`, `status`, `created_at`, `updated_at`) VALUES (1,2,1,22450,1,1,1483632000,'刘洋',12000.00,'1000',0,1503978959,1503978959),(2,2,5,22462,2,2,1484150400,'熊云雅',16000.00,'2000',0,1503978978,1503978978),(3,1,2,23126,2,2,1491926400,'顾庆洋',30000.00,'1000',0,1504238648,1504238648),(4,4,3,22460,2,1,1483718400,'马静',60000.00,'1200',0,1505118847,1505118847);
/*!40000 ALTER TABLE `exam_sign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_smallclass`
--

DROP TABLE IF EXISTS `exam_smallclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_smallclass` (
  `class_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '班级id',
  `course_id` varchar(255) NOT NULL COMMENT '课程',
  `group_id` int(10) NOT NULL COMMENT '组',
  `teacher_id` int(10) NOT NULL COMMENT '班级负责人',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '班级名称',
  `class_num` int(10) NOT NULL DEFAULT '0' COMMENT '班级人数',
  `class_hours` int(10) NOT NULL DEFAULT '0' COMMENT '课时数',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '班级是否删除',
  `created_at` int(11) NOT NULL COMMENT '班级创建时间',
  `updated_at` int(11) NOT NULL COMMENT '班级更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  `creater_id` int(10) NOT NULL COMMENT '班级创建人id',
  `class_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '班级状态 0未开始，1开始，2结束',
  PRIMARY KEY (`class_id`),
  KEY `groupId` (`group_id`) USING BTREE,
  KEY `teacherId` (`teacher_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_smallclass`
--

LOCK TABLES `exam_smallclass` WRITE;
/*!40000 ALTER TABLE `exam_smallclass` DISABLE KEYS */;
INSERT INTO `exam_smallclass` (`class_id`, `course_id`, `group_id`, `teacher_id`, `name`, `class_num`, `class_hours`, `status`, `created_at`, `updated_at`, `remark`, `creater_id`, `class_status`) VALUES (1,'[\"1\"]',1,1,'托福小班口语',3,50,0,1503976010,1503977136,'',1,1),(2,'[\"2\"]',2,1,'雅思阅读训练',4,60,0,1503976090,1504238451,'',1,1),(3,'[\"3\"]',3,1,'GRE小班口语',5,30,0,1503989264,1504246476,'',1,1),(4,'[\"2\"]',1,7,'2017年9月IELTS ',3,50,0,1505112500,1505112500,'',5,1),(5,'[\"1\"]',2,8,'2017年第五期托福小班',3,40,0,1505115043,1505119497,'',8,1),(6,'[\"1\"]',3,9,'2017-1V2满分005班',2,40,0,1505714964,1505716082,'',4,1);
/*!40000 ALTER TABLE `exam_smallclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_smallclass_students_relation`
--

DROP TABLE IF EXISTS `exam_smallclass_students_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_smallclass_students_relation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_id` int(10) NOT NULL COMMENT '班级id',
  `student_id` int(10) NOT NULL COMMENT '学生id',
  `contract_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '合同编号',
  `class_hours` int(10) NOT NULL COMMENT '学生的课时数',
  `course_order_id` int(10) NOT NULL COMMENT '订单id',
  `sign_type` int(10) NOT NULL COMMENT '签约类型',
  `created_at` int(10) NOT NULL COMMENT '创建时间',
  `updated_at` int(10) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `contract_number` (`contract_number`) USING BTREE,
  KEY `classId` (`class_id`) USING BTREE,
  KEY `studentId` (`student_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_smallclass_students_relation`
--

LOCK TABLES `exam_smallclass_students_relation` WRITE;
/*!40000 ALTER TABLE `exam_smallclass_students_relation` DISABLE KEYS */;
INSERT INTO `exam_smallclass_students_relation` (`id`, `class_id`, `student_id`, `contract_number`, `class_hours`, `course_order_id`, `sign_type`, `created_at`, `updated_at`) VALUES (1,1,7,'BJ201707000001',50,3,2,1503976890,1503976890),(2,1,18,'SH201707000186',30,4,3,1503976930,1503976930),(3,1,45,'LS1503977080',40,5,2,1503977080,1503977080),(4,2,29,'BJ201707000493',50,7,2,1503987444,1503987444),(5,2,22,'BJ201707000502',50,8,1,1504235784,1504235784),(6,2,37,'BJ201707000472',45,9,2,1504235831,1504235831),(7,3,11,'LS1504246383',30,14,1,1504246383,1504246383),(8,3,9,'LS1504246437',30,15,1,1504246437,1504246437),(9,2,24,'SH201707000180',50,16,1,1504249960,1504249960),(10,3,10,'LS1504773596',30,24,1,1504773596,1504773596),(11,4,58,'BJ201707000463',50,28,1,1505113021,1505113021),(12,4,59,'CD201707000098',50,29,1,1505113086,1505113086),(13,5,60,'BJ201707000456',40,30,1,1505118446,1505118446),(14,5,62,'CD201707000097',40,31,1,1505118790,1505118790),(15,5,63,'BJ201707000422',40,32,1,1505118810,1505118810),(16,6,65,'GZ201706000145',40,35,1,1505715128,1505715128),(17,6,66,'BJ201706000417',40,36,1,1505715503,1505715503);
/*!40000 ALTER TABLE `exam_smallclass_students_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_teacher`
--

DROP TABLE IF EXISTS `exam_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_teacher` (
  `user_id` int(10) NOT NULL COMMENT '用户ID',
  `group_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属组ID',
  `work_type` smallint(6) NOT NULL DEFAULT '0' COMMENT '工作类别',
  `is_foreign` smallint(6) NOT NULL DEFAULT '0' COMMENT '是否为外教',
  `is_mobile` smallint(6) NOT NULL DEFAULT '0' COMMENT '是否接收短信',
  `campus_id` smallint(6) NOT NULL DEFAULT '0' COMMENT '所属校区',
  `job` smallint(6) NOT NULL DEFAULT '0' COMMENT '职务',
  `level` smallint(6) NOT NULL DEFAULT '0' COMMENT '级别',
  `course_id` smallint(6) NOT NULL DEFAULT '0' COMMENT '主教课程',
  `salt` smallint(6) NOT NULL DEFAULT '0' COMMENT '奖励比',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT '状态',
  `remarks` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_teacher`
--

LOCK TABLES `exam_teacher` WRITE;
/*!40000 ALTER TABLE `exam_teacher` DISABLE KEYS */;
INSERT INTO `exam_teacher` (`user_id`, `group_id`, `work_type`, `is_foreign`, `is_mobile`, `campus_id`, `job`, `level`, `course_id`, `salt`, `status`, `remarks`, `created_at`, `updated_at`) VALUES (1,1,0,0,0,1,1,1,1,100,0,'',1498720926,1500947350),(2,2,0,0,0,1,2,1,1,100,0,'',1498721019,1503279312),(3,3,0,0,0,1,0,1,1,100,0,'1000',1498721813,1498726241),(4,1,0,0,1,1,1,1,1,100,0,'',1503893402,1504752050),(5,1,0,0,0,1,2,1,1,100,0,'',1503893013,1503893013),(6,1,0,1,1,1,11,1,1,100,0,'',1503893378,1503893378),(7,1,0,0,1,1,4,2,2,100,0,'',1503893200,1503893200),(8,2,0,0,1,1,2,1,2,100,0,'',1504767146,1504767146),(9,3,0,1,1,1,2,2,2,100,0,'',1504767169,1504767169),(10,2,0,1,1,1,4,1,1,100,0,'',1504767194,1504767194),(11,3,0,1,1,1,4,1,1,100,0,'',1504767219,1504767219);
/*!40000 ALTER TABLE `exam_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_visit`
--

DROP TABLE IF EXISTS `exam_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_visit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(10) NOT NULL DEFAULT '0' COMMENT '学生id',
  `app_season` int(10) NOT NULL DEFAULT '0' COMMENT '申请季',
  `teacher_id` int(10) NOT NULL DEFAULT '0' COMMENT '上课老师',
  `visit_content` varchar(255) NOT NULL COMMENT '回访内容',
  `visit_date` int(10) NOT NULL DEFAULT '0' COMMENT '回访时间',
  `visit_teacher_id` int(10) NOT NULL DEFAULT '0' COMMENT '回访老师',
  `suggest` varchar(255) NOT NULL COMMENT '建议',
  `created_at` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated_at` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_visit`
--

LOCK TABLES `exam_visit` WRITE;
/*!40000 ALTER TABLE `exam_visit` DISABLE KEYS */;
INSERT INTO `exam_visit` (`id`, `student_id`, `app_season`, `teacher_id`, `visit_content`, `visit_date`, `visit_teacher_id`, `suggest`, `created_at`, `updated_at`) VALUES (1,18,3,4,'{\"授课节奏及进度\":\"1\",\"授课思路\":\"1\",\"授课方法\":\"0.5\",\"授课内容\":\"0.5\",\"答疑解惑\":\"0.5\",\"作业布置\":\"0.5\",\"教学态度\":\"0.5\",\"学习收获\":\"0.5\",\"学生关怀\":\"0.5\",\"纪律要求\":\"0.5\"}',1505468700,1,'fsdfds',0,0),(2,44,3,1,'{\"授课节奏及进度\":\"1\",\"授课思路\":\"0.5\",\"授课方法\":\"0.5\",\"授课内容\":\"1\",\"答疑解惑\":\"0\",\"作业布置\":\"0.5\",\"教学态度\":\"0\",\"学习收获\":\"0.5\",\"学生关怀\":\"1\",\"纪律要求\":\"0.5\"}',1505469420,1,'cdasdas',1505469442,1505469442);
/*!40000 ALTER TABLE `exam_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import`
--

DROP TABLE IF EXISTS `import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '姓名',
  `password` varchar(255) DEFAULT NULL,
  `employeeId` varchar(255) DEFAULT NULL COMMENT '员工编号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `group` varchar(255) DEFAULT NULL COMMENT '所属组别',
  `category` varchar(255) DEFAULT NULL COMMENT '工作类别',
  `zone` varchar(255) DEFAULT NULL COMMENT '所属校区',
  `job` varchar(255) DEFAULT NULL COMMENT '职务',
  `course` varchar(255) DEFAULT NULL COMMENT '主教课程',
  `status` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import`
--

LOCK TABLES `import` WRITE;
/*!40000 ALTER TABLE `import` DISABLE KEYS */;
INSERT INTO `import` (`id`, `username`, `password`, `employeeId`, `email`, `phone`, `group`, `category`, `zone`, `job`, `course`, `status`) VALUES (2,'王颖','taisha6652','300016','2355468046@qq.com','15801690100','质检组','全职','北京','总监','',1),(3,'李书亮','taisha7280','300018','2355468057@qq.com','18911803104','质检组','全职','北京','质检','',1),(4,'董斯斯','taisha6441','300067','2355467802@qq.com ','15011340171','质检组','全职','北京','助理','',1),(5,'于靓','taisha5364','300019','2355468047@qq.com','15810611711','A组','全职','北京','组长','',1),(6,'任敏','taisha7495','300006','2355468051@qq.com','13811186780','A组','全职','北京','教师','GRE',1),(7,'吕俊华','taisha6386','300031','2355468053@qq.com','18910933772','A组','全职','北京','教师兼队长','IELTS',1),(8,'吕静','taisha9444','300032','2355468055@qq.com','15001319209','A组','全职','北京','教师兼队长','GRE',1),(9,'刘娜','taisha8061','300023','2355468033@qq.com ','18001180027','A组','全职','北京','教师','IELTS',1),(10,'唐新星','taisha6970','300002','2355468059@qq.com','15210722880','A组','全职','北京','教师','IBT',1),(11,'吴頔','taisha5670','300013','2355468023@qq.com','13426288435','A组','全职','北京','教师','IELTS&SSAT',1),(12,'张蕾','taisha7439','300004','2355468038@qq.com','18533615905','A组','全职','北京','教师','IELTS',1),(13,'云亭亭','taisha5183','300005','2355468137@qq.com','18500137893','A组','全职','北京','教师','GRE',1),(14,'劳凯丽','taisha8599','300060','2355468190@qq.com','18301580935','A组','全职','北京','教师','GRE',1),(15,'  李山丹  ','taisha7446','LS0012','703410895@qq.com','13691426836','A组','兼职','北京','教师','GMAT',1),(16,' 李迟 \n','taisha6434','LS0013','99544926@qq.com','17900908478','A组','兼职','北京','教师','GMAT',1),(17,'王琦萱','taisha9829','LS0014','qxcherry_wang@163.com','13240104138','A组','兼职','北京','教师','GMAT',1),(18,'郑莉佳','taisha9844','300008','2355468034@qq.com','13810773683','B组','全职','北京','组长','',1),(19,'姬珍慧','taisha9731','300009','2355468052@qq.com','18511820218','B组','全职','北京','教师兼队长','IBT',1),(20,'钮伟娜','taisha9122','300027','2355468043@qq.com','15210371265','B组','全职','北京','教师','SAT&IBT',1),(21,'高丹','taisha6416','300017','2355468030@qq.com','15910898142','B组','全职','北京','教师','IBT',1),(22,'徐永杰','taisha9715','300012','2355468070@qq.com','13811563103','B组','全职','北京','教师','IBT',1),(23,'曹向阳','taisha9326','300024','2355468237@qq.com','18501180875','B组','全职','北京','教师','SAT&ACT',1),(24,'崔鉴慈','taisha7486','300045','2355468062@qq.com','15900267019','B组','全职','北京','教师','IBT',1),(25,'邵雨明','taisha9452','300064','2355468187@qq.com','13488749081','B组','全职','北京','教师','IBT',1),(26,'赵冲','taisha9798','300053','2355467863@qq.com','15075155998','B组','全职','北京','教师','IBT',1),(27,'徐晓庆','taisha5637','300007','xiaoqingwendy@126.com','13261977473','B组','兼职','北京','教师','IBT',1),(28,'王梅','taisha8791','LS0015','welcomemay@126.com','15910593952','B组','兼职','北京','教师','SAT&IBT',1),(29,'张敏','taisha7040','LS0016','493798682@qq.com','15617915360','B组','兼职','北京','教师','IBT',1),(30,'严雪娟','taisha8830','CD0013','2355468178@qq.com','13693423907','外地','全职','成都','教师兼队长','IBT',1),(31,'钟秋霞','taisha8027','CD0014\n','2355467939@qq.com ','18228022294','外地','全职','成都','教师','IELTS',1),(32,'汪永军','taisha8644','CD0006','2355467915@qq.com','18683958953','外地','全职','成都','教师','IBT&IELTS&GMAT&GRE',1),(33,'王颖','taisha9140','SH0193','2355468171@qq.com','13917376210','外地','全职','上海','教师','IBT',1),(34,'刘昕阳','taisha9768','SH0203','2355468225@qq.com','15800810434','外地','全职','上海','教师','IELTS',1),(35,'蒋雪颖','taisha6418','SH0204','2355468229@qq.com','18616732813','外地','全职','上海','教师','GRE',1),(36,'贾佳珍','taisha7788','GZ0065','2355468144@qq.com','18529135120','外地','全职','广州','教师兼队长','IBT',1),(37,'沈艳芳','taisha9684','GZ0068','2355468127@qq.com','13437234687','外地','全职','广州','教师','GMAT',1),(38,'陆越辰','taisha5056','SH0012','27554458@qq.com','13816711917','外地','兼职','上海','教师','IELTS&IBT',1),(39,'陈晓燕','taisha6225','SH0013','julie_chan@126.com','18621293188','外地','兼职','上海','教师','IBT&IELTS&SAT',1),(40,'郑雄','taisha5959','SH0014','1084349853@qq.com','15002149200','外地','兼职','上海','教师','GMAT&GRE',1),(41,'胡建华','taisha6119','SH0015','18101820865@163.com','18101820865','外地','兼职','上海','教师','IELTS',1),(42,'武广军','taisha7719','SH0016','1510079330@qq.com','18917574230','外地','兼职','上海','教师','IBT&IELTS',1),(43,'万智娟','taisha5236','SH0017','1449906328@qq.com','17071321906','外地','兼职','上海','教师','IBT&SAT&IELTS',1),(44,'栾佳韵','taisha8024','SH0018','1739927597@qq.com','13061966717','外地','兼职','上海','教师','GMAT&IELTS&IBT',1),(45,'孙捷成','taisha9410','SH0019','jackeysjc@126.com','13651997654','外地','兼职','上海','教师','IBT&IELTS',1),(46,'李希','taisha7979','SH0020','1175504944@qq.com ','15202103245','外地','兼职','上海','教师','SAT',1),(47,'伍松','taisha6667','SH0021','ws15000909089@163.com','13162001862','外地','兼职','上海','教师','GRE&SAT/ACT',1),(48,'何民','taisha9389','SH0022','minhetuck04@yahoo.com','13817893283','外地','兼职','上海','教师','AP',1),(49,'夏南楠','taisha6949','GZ0023','371090830@qq.com','','外地','兼职','广州','教师','IELTS&IBT',1),(50,'古雨静','taisha6576','GZ0024','storm138@163.com','13570983022','外地','兼职','广州','教师','IBT',1),(51,'李改','taisha7032','GZ0025','44653125@qq.com','13760203671','外地','兼职','广州','教师','IELTS',1),(52,'韦颖宇','taisha5433','GZ0026','490889916@qq.com','18642330855','外地','兼职','广州','教师','GRE',1),(53,'王远斌','taisha6067','GZ0027','1300228177@qq.com','13798190806','外地','兼职','广州','教师','IELTS&IBT',1),(54,'李冬梅','taisha9038','GZ0028','mayboli@163.com','15802011314','外地','兼职','广州','教师','IBT&IELTS',1),(55,'张锋','taisha6987','HK0001','2584847831@qq.com ','18656679048','外地','兼职','香港','教师','IELTS&GMAT',1),(56,'谭雯','taisha7822','CS0002','tanwenlove301@126.com','18601354337','外地','兼职','长沙','教师','IBT&GMAT',1),(57,'张莹莹','taisha8147','LS0017','zonghe16@163.com','15801366931','外地','兼职','北京','教师','IELTS',1);
/*!40000 ALTER TABLE `import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`id`, `name`, `parent`, `route`, `order`, `data`) VALUES (1,'权限管理',9,'/admin/default/index',3,'{\"icon\": \"lock\", \"visible\": true}'),(2,'路由设置',1,'/admin/route/index',1,NULL),(3,'权限设置',1,'/admin/permission/index',2,NULL),(4,'角色设置',1,'/admin/role/index',3,NULL),(5,'规则设置',1,'/admin/rule/index',4,NULL),(7,'用户管理',9,'/system-user/index',1,'{\"icon\": \"users\", \"visible\": true}'),(8,'菜单管理',9,'/admin/menu/index',2,'{\"icon\": \"book\", \"visible\": true}'),(9,'系统设置',NULL,'/admin/default/index',1000,'{\"icon\": \"wrench\", \"visible\": true}'),(10,'系统工具',NULL,'/gii/default/index',999,'{\"icon\": \"cogs\", \"visible\": true}'),(11,'Gii',10,'/gii/default/index',1,'{\"icon\": \"file-code-o\", \"visible\": true}'),(12,'Debug',10,'/debug/default/index',2,'{\"icon\": \"dashboard\", \"visible\": true}'),(13,'学员管理',NULL,'/student/index',1,'{\"icon\":\"child\"}'),(14,'教务系统',NULL,'/exam/default/index',2,'{\"icon\":\"cubes\"}'),(15,'课程管理',25,'/exam/course/index',0,NULL),(16,'教师管理',25,'/exam/teacher/index',1,NULL),(17,'班级管理',14,'/exam/smallclass/index',2,'{\"icon\": \"university\", \"visible\": true}'),(19,'组课程任务管理',14,'/exam/course-task/index',3,'{\"icon\": \"tasks\", \"visible\": true}'),(21,'一对一任务管理',14,'/exam/course-task-child/index',4,'{\"icon\": \"bookmark\", \"visible\": true}'),(22,'果Hu合同',NULL,'/erp-contract/index',NULL,'{\"icon\": \"file-text\", \"visible\": true}'),(23,'一对一订单',26,'/exam/course-order/index',1,NULL),(24,'组管理',25,'/exam/group/index',9,NULL),(25,'教务设置',14,'/exam/default/index',9,'{\"icon\": \"cube\", \"visible\": true}'),(26,'考试订单',14,'/exam/course-order/index',8,'{\"icon\": \"gavel\", \"visible\": true}'),(27,'教学日历',NULL,'/exam/time-table/index',1,'{\"icon\": \"calendar\", \"visible\": true}'),(28,'果图',NULL,'/exam/chart/index',99,'{\"icon\": \"bar-chart-o\", \"visible\": true}'),(29,'小班订单',26,'/exam/smallclass-students-relation/index',29,NULL),(30,'订单统计',28,'/exam/chart/course-order',1,NULL),(31,'组课程任务统计',28,'/exam/chart/group',NULL,NULL),(32,'考试成绩管理',14,'/exam/scores/index',10,'{\"icon\": \"book\", \"visible\": true}'),(33,'排课统计',28,'/exam/chart/order',NULL,NULL),(34,'销售管理',14,'/exam/sign/index',8,'{\"icon\": \"briefcase\", \"visible\": true}');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` (`version`, `apply_time`) VALUES ('m000000_000000_base',1497949601),('m130524_201442_init',1497949604),('m140506_102106_rbac_init',1484188952),('m140602_111327_create_menu_table',1484188543),('m160312_050000_create_user',1484188543),('m170620_012934_system_user',1497949604),('m170626_020954_student',1498720608),('m170626_063925_course',1498720687),('m170626_085313_teacher',1498720687),('m170629_082340_course_task',1499051314),('m170703_031431_course_task_child',1499051935);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '真实姓名',
  `id_type` int(11) DEFAULT '0',
  `id_card` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sex` smallint(6) NOT NULL DEFAULT '0' COMMENT '性别',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '邮箱',
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '电话',
  `app_season` smallint(6) NOT NULL DEFAULT '0' COMMENT '申请季',
  `service_status` smallint(6) NOT NULL DEFAULT '0' COMMENT '服务状态',
  `campus_id` int(11) NOT NULL DEFAULT '1',
  `created_user_id` int(11) NOT NULL DEFAULT '0',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT '状态',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `student_id_card_uindex` (`id_card`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`id`, `name`, `id_type`, `id_card`, `sex`, `email`, `phone`, `app_season`, `service_status`, `campus_id`, `created_user_id`, `status`, `created_at`, `updated_at`) VALUES (7,'韩晶',1,'360622199505220011',1,'solarpwx@yeah.net114','18341995703',1,0,1,1,0,1499846447,1501224143),(8,'朴朴',1,'130821199103232759',1,'solarpwx@yeah.net','18341995704',1,0,1,1,0,1499932178,1499932178),(9,'万政',1,'622223198910280333',1,'solarpwx22@yeah.net','15712970677',1,0,1,1,0,1499933182,1499933182),(10,'网校-阿木',1,'622223199910100000',1,'solarpwxy@eah.net114','18501253665',1,0,1,1,0,1500004656,1500006711),(11,'杨阳',1,'342922199311073775',1,'15712970677@163.com','18056610866',1,0,1,1,0,1500257133,1500257133),(12,'孙竞宇',1,'510107199608034219',1,'solarpwx223@yeah.net','18080448752',2,0,1,1,0,1500280219,1500280219),(13,'黎明',1,'322226198812010587',1,'1255@126.com','15712954545',4,0,1,1,0,1500630304,1500630304),(14,'高三',1,'410928199204112712',1,'28528514@qq.com','18539310569',1,0,1,1,0,1501119068,1501119068),(15,'张三丰',1,'110223197845451262',1,'125@126.com','15746495123',6,0,1,1,0,1501128578,1501128578),(16,'张三',1,'622223198910280514',1,'125@163.com','15712695487',1,0,1,1,0,1501214610,1501214610),(17,'党文琳',1,'450981199205250049',1,'123@234.com','15078861232',3,0,1,1,0,1501579643,1501579643),(18,'王凯鑫',1,'330102199309161810',1,'2344@qq.com','18368163657',3,0,1,1,0,1501579865,1501579865),(19,'夏鑫尧',1,'510122200102120039',1,'solarpwx12@yeah.net','13693434802',2,0,1,1,0,1501728646,1501728646),(20,'窦研画',1,'321008199507260020',1,'solarpwx1222@yeah.net','13852207880',4,0,1,1,0,1501728791,1501728791),(21,'王珊珊',1,'371522197310180010',2,'2345678@sina.com','18911834412',3,0,1,1,0,1502087716,1502087716),(22,'林天懿',1,'110104198610040839',1,'solarpwx@yeah.net444','13901370629',2,0,1,1,0,1502760570,1502760570),(23,'韩婧',1,'520102198708152023',1,'solarpwx@yeah.net4441','13795342212',4,0,1,1,0,1502767172,1502767172),(24,'高颖',1,'350302199105221628',1,'231421@qq.com','13162222607',1,0,1,1,0,1502957501,1502957501),(29,'杨南箫',1,'110102199605143026',1,'125re@126.com','18811019859',6,0,1,1,0,1502964495,1502964495),(30,'曾源波',1,'110106199403142717',1,'1254re@126.com','18600375176',6,0,1,1,0,1502964625,1502964625),(34,'黄金龙',1,'622323198820092001',1,'125578876@126.com','13856561212',6,0,1,1,0,1503039913,1503039913),(35,'王江',1,'622323198820092003',1,'rer125@163.com','15912124545',1,0,1,1,0,1503042017,1503042017),(36,'张三丰',1,'41092818540412112712',1,'123855825@qq.com','15101115368',1,0,1,1,0,1503885463,1503885463),(37,'王梦梦',1,'340226199810173822',1,'solarpwx@yeah.net44','15258352427',2,0,1,1,0,1503887218,1503887218),(40,'张亚男',1,'130722199604191124',1,'14718927@yeah.net123','13980510902',2,0,1,1,0,1503887351,1503887351),(41,'杨帆',1,'15040219880116064X',1,'solarpwx12@yeah.net34','15010706019',2,0,1,4,0,1503893557,1503893557),(42,'韦长林',1,'340123199702101658',1,'14718927@yeah.net123d','18856336895',3,0,1,4,0,1503893577,1503893577),(43,'朴伟雄',1,'13082119910323275x',1,'solarpwx@yeah.net1','18001023261',1,0,1,4,0,1503893674,1503893674),(44,'张楚阳',1,'150105199907137314',1,'5282522@163.com','18539310261',3,0,1,1,0,1503976739,1503976739),(45,'李思思',1,'622225151548789652',2,'12565655@163.com','13856561210',5,0,1,1,0,1503977054,1503977054),(46,'雷晴',1,'442000199705220228',1,'4741475282522@163.com','13680260888',3,0,1,1,0,1504250438,1504250438),(47,'宁睿棋',1,'340123199803300015',1,'528252243@163.com','18701555016',2,0,1,1,0,1504513925,1504513925),(48,'赵蕴奇',1,'110108199705066812',1,'solarpwx@yeah.net090','13439756867',1,0,1,1,0,1504660192,1504660192),(49,'李灵',1,'452402198508230656',1,'530872205@163.com','13761896063',2,0,1,1,0,1504684566,1504684566),(53,'何婷钰',1,'510107198809282169',2,'25678956@163.com','13028141097',3,0,1,4,0,1504766506,1504766506),(54,'黄财群',1,'500226199306206225',1,'2345678@163.com','18284575028',3,0,1,4,0,1504766557,1504766557),(55,'高钰泫',1,'43038119960211102x',1,'23554678@qq.com','15073261187',3,0,1,4,0,1505110640,1505110640),(56,'傅天翼',1,'230602199409251710',1,'2344789@qq.com','15501127925',3,0,1,4,0,1505110760,1505110760),(57,'王怡昕',1,'330225199510310021',1,'23445689@qq.com','18858715218',3,0,2,4,0,1505111107,1505111107),(58,'公瑞琪',1,'230103199307092826',1,'246678@qq.com','18611582772',3,0,1,4,0,1505113021,1505113021),(59,'尹思源',1,'230102199503123419',1,'5567890101@qq.com','13504519110',5,0,2,4,0,1505113086,1505113086),(60,'许诗',1,'360102200007084320',1,'2345@qq.com','13607080673',3,0,1,4,0,1505118446,1505118446),(62,'范晓晖',1,'510821199208226313',1,'23456@qq.com','18000533190',3,0,1,4,0,1505118790,1505118790),(63,'徐霏',1,'320582199802090341',1,'234566@qq.com','18662230033',4,0,1,4,0,1505118810,1505118810),(64,'李卓兰',1,'110101200106195023',1,'solarpwx@yeah.net123213','18002009232',1,0,1,1,0,1505201641,1505201641),(65,'尤秀佳',1,'445122199609140021',1,'23556890@qq.com','18826101538',4,0,1,4,0,1505715128,1505715128),(66,'李雨欣',1,'371002199609181023',1,'23556790@qq.com','13212121023',5,0,1,4,0,1505715503,1505715503),(67,'单娟',1,'310102199408044421',1,'278956@qq.com','13917066394',4,0,2,4,0,1505717084,1505717084);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_user`
--

DROP TABLE IF EXISTS `system_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户编号',
  `real_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '真实姓名',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '邮箱',
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '电话',
  `status` smallint(6) NOT NULL DEFAULT '10' COMMENT '状态：10 激活',
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '认证码',
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '密码hash',
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '重置密码token',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登陆时间',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_user`
--

LOCK TABLES `system_user` WRITE;
/*!40000 ALTER TABLE `system_user` DISABLE KEYS */;
INSERT INTO `system_user` (`id`, `username`, `real_name`, `email`, `phone`, `status`, `auth_key`, `password_hash`, `password_reset_token`, `last_login_time`, `created_at`, `updated_at`) VALUES (1,'200009','朴伟雄（A）','solarpwx@yeah.net','18001023261',10,'dadas','$2y$13$014/3o0MuabWlToM8ESZrOiDL/n1a1khur0c/WCJXpmE1B5uVKv9m',NULL,0,1497949610,1500533286),(2,'200008','朴朴（B）','solarpwx1@yeah.net','18001023271',10,'0','$2y$13$.ODkxN1M2FJf/mfALTQ81eRrz/BhGe65gH4urdW2F4b1dB8VLvXf6',NULL,0,1484193934,1500533299),(3,'200007','朴伟雄（C）','solarpwx@yeah.net12','18001023264',0,'EWNO_N1dJeAzl_3CSutORp2R0OPMWTSS','$2y$13$IQJmHWdphJqWCUJKfGChiOYPFexPetuWDUOL2/2lS3WYHlKwM108y',NULL,0,1484200064,1500533312),(4,'200001','测试-总监','2355468046@qq.com','18001010102',10,'_1Wo90h10X1JQPBlIA5BDrKVQgu-oTmi','$2y$13$M1b0DHjE4sctymek7L.JyukI/64vGW43vok1acf6AoIGXILQIZG1G',NULL,0,1503892839,1504234430),(5,'200002','测试A组长','2355468045@qq.com','18001010103',10,'_DMgPGUR1vE4J14BWw908sRiS_svb1Ug','$2y$13$OPoKekNlE4Y04wV3IJU18.ds.tWXOsPubtNmxUnbCbHUlLzbZW70a',NULL,0,1503892968,1504767007),(6,'200003','测试-助理','2355468044@qq.com','18001010104',10,'c-HYvTDcTrYgWj7kj131Roz3GMSXPbG9','$2y$13$sz4zfHmml9U/uQMtylFXnubxS4Qkq2P6bI0tvIe58M4tntHIcfhjW',NULL,0,1503893091,1504234481),(7,'200004','测试A组老师','2355468043@qq.com','18001010105',10,'jCdzGTH7hoO29FWpWL1cxcUetolkmbIH','$2y$13$LgF9o2sx/1xmrrPrubuWRuM/xoS9XuWQHjbbbMy/RQC25WTwbct8a',NULL,0,1503893148,1504767031),(8,'200005','测试B组组长','solarpwx@5yeah.netdad','18001010109',10,'anOepLM--Z6_XYRS9A7uzQwj43AJiaAY','$2y$13$NfVmhibwQiOW6ZtpmGQOoO7k2w21qPcpfB.ZfFWx/quHIzcPzOto6',NULL,0,1504766950,1504766950),(9,'200010','测试C组组长','solarpwx@5yeah.net','18001010106',10,'FtF2JsIBlYpv-crLcXWVIOj93LpbKlrz','$2y$13$VGvKPBI5BIoONDhcf1cKnO/lLh3MLf9I7uEXEND9kQr7GAeCNSMua',NULL,0,1504766992,1504766992),(10,'200011','测试B组老师','235546804612@qq.com','18001010110',10,'r6SfrI8lho-LSTme45revkXcMfq8zbbs','$2y$13$bGe3HFz8BwQ5aKLe0gUhJ.DKLqDxGcWpQ7eub.do69dM5weHo6l0C',NULL,0,1504767061,1504767061),(11,'200012','测试C组老师','solarpwx@5yeah.net123','18001010113',10,'nq4TKxkBAPzIoql3RNgYM-3jFGt6KNHY','$2y$13$UtlnfNyHzSIsGpB3lWCZsO9jrEKsYdbfjkqmpu9K33BbaQHx0SI/u',NULL,0,1504767101,1504767101);
/*!40000 ALTER TABLE `system_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES (1,'1991','zrX7U8yLxI-UKb52mcRJa0ImqupPS7qx','$2y$13$Ed2bbdT0thHFFuiM1J4uH.tsPjDyAi8cA.wvAbMutTA6qXlsxgRgG',NULL,'solarpwx@yeah.net',10,1484191122,1484191122);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-18 15:35:01
