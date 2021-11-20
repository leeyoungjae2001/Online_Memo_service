-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: pserver
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `postTitle` varchar(45) DEFAULT NULL,
  `postContent` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,17,'안녕안녕','방가워어'),(2,17,'헬로헬로','헬로오'),(3,17,'ㅁㄴㅇ','ㅁㄴㅇ'),(4,17,'ㅁㄴㅁㅁ','ㅁㅁㅁㅁ'),(5,17,'aaaaaaaaaaaaaa','aaaaaaaa'),(16,21,'메모장 도움말','있을 줄 알았지?<br>새글 작성이나 해봐'),(17,22,'메모장 도움말','있을 줄 알았지?<br>새글 작성이나 해봐'),(18,22,'영재의 일상','영재는 오늘도 아침에 일어나 뒤척이며 하루를 시작한다. 잠시후 정신이 들어 빤스바람으로 컴퓨터 앞으로 향한다. 컴퓨터를 시작하며 늘 같은 화면인 넥슨의 개가되어 메이플이란 숙제를 시작한다. 언젠가는 내가 저 간나쉐이의 계정을 훔쳐와 메이플이란 구속에서 구해줘야겠다.'),(19,21,'as','asdas'),(20,21,'안녕','안녕쓰'),(21,21,'안녕','안녕쓰'),(22,21,'ㅁㄴㅇ','ㅁㄴ'),(23,22,'돼지','야 돼지야'),(24,21,'ㅁㅁㅁㅁ','ㅁㅁㅁ'),(25,17,'ㅁㅁㅁ','ㅁㄴㅇㅁㄴㅇ\r <br>ㅁㄴㅇㅁㄴㅇㅁㄴ\r ㅇㅁㄴㅇㅁㄴㅇ\r ㅁㄴ<br>ㅇㅁㄴㅇ\r ㅁㄴㅇ<br>ㅁ\r ㄴㅇㅁㄴ\r ㅇㄴㅁ\r ㅇ\r ㄴㅁ'),(26,17,'ㅁㄴㅇ','ㅁㄴㅇ<br />ㅁㄴㅇ<br />ㅁㄴㅇ'),(27,19,'메모장 도움말','있을 줄 알았지?\n                새글 작성이나 해봐'),(28,19,'안뇽!','안뇽프커미<br />'),(31,23,'메모장 도움말','있을 줄 알았지?\n                새글 작성이나 해봐'),(32,23,'밥','배고파ㅡㅡㅡㅡㅡㅡ<br />'),(33,25,'메모장 도움말','있을 줄 알았지?\n                새글 작성이나 해봐'),(34,25,'asdasdas','asdasdadasdasdasda'),(35,26,'메모장 도움말','있을 줄 알았지?\n                새글 작성이나 해봐'),(36,27,'메모장 도움말','있을 줄 알았지?\n                새글 작성이나 해봐'),(37,28,'메모장 도움말','있을 줄 알았지?\n                새글 작성이나 해봐'),(38,28,'안녕하십니다','반갑습니까'),(39,19,'dh',''),(40,17,'Eee','Ssjdjdhdjdjdjdjdj'),(41,17,'ㅋㅋ','으어어어ㅓㅇ'),(42,30,'메모장 도움말','있을 줄 알았지?\n                새글 작성이나 해봐'),(43,31,'메모장 도움말','있을 줄 알았지?\n                새글 작성이나 해봐'),(44,31,'사랑이란','사랑이란 다 포기할 수 있는 거<br />사랑이란 그 사람의 단점까지 사랑할 수 있는거<br />사랑이란 맞춰가는 거<br />좋아하는 건 장점만 보고 좋아하는거고 단점까진 좋아하지 못한다<br />그래서 장점만 생각하고 그 사람에게 빠진거라면 장점이 사라지면 그 연애는 끝난다.');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userInfo`
--

DROP TABLE IF EXISTS `userInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userInfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userInfo`
--

LOCK TABLES `userInfo` WRITE;
/*!40000 ALTER TABLE `userInfo` DISABLE KEYS */;
INSERT INTO `userInfo` VALUES (17,'dltkdehs710@gmail.com','dudwo2001','이프컴'),(19,'mamoory1219@naver.com','mamoory1219','둥메'),(21,'leeyoungjae2001@naver.com','dudwo2001','이영재다'),(22,'tmdgus810@naver.com','wkdtmdgus10*','이영재의 주인 장승현'),(23,'tnwls040508@gmail.com','dudwo@2001','수'),(24,'asd@a.a','dudwo2001','이영재'),(25,'asd@asd.asd','dudwo2001','이영재'),(26,'eugeneee2003@gmail.com','1q2w3e4rEagleram123','Eugene Han'),(27,'dltkdehs711@gmail.com','dudwo2001','이프컴'),(28,'didals9397@naver.com','didalgh0103','miniminu'),(29,'aaa@aa.com','aaa','ㅁㅁㅁ'),(30,'leeyoungjae2001@icloude.com','fuvreb-jiXjo5-vokviv','이영재'),(31,'ekqls045@naver.com','ekgml0817*','설레는겨울');
/*!40000 ALTER TABLE `userInfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-20 14:24:48
