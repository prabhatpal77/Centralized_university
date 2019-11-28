-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.33-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema centralized
--

CREATE DATABASE IF NOT EXISTS centralized;
USE centralized;

--
-- Definition of table `branchreg`
--

DROP TABLE IF EXISTS `branchreg`;
CREATE TABLE `branchreg` (
  `courseid` int(11) NOT NULL,
  `branchid` int(11) NOT NULL auto_increment,
  `branchname` varchar(45) NOT NULL,
  `branchicon` varchar(100) default NULL,
  `branchdesc` varchar(500) default NULL,
  PRIMARY KEY  (`branchid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branchreg`
--

/*!40000 ALTER TABLE `branchreg` DISABLE KEYS */;
INSERT INTO `branchreg` (`courseid`,`branchid`,`branchname`,`branchicon`,`branchdesc`) VALUES 
 (1,1,'bkjh','b1.png','branch'),
 (5,2,'Architecture','b2.png','Base branch of arcitecture'),
 (6,3,'Rural Building','b4.jpg','Related to buliding material'),
 (4,4,'Computer Science Engineering','b3.jpg','Software programming');
/*!40000 ALTER TABLE `branchreg` ENABLE KEYS */;


--
-- Definition of table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `sid` varchar(45) NOT NULL,
  `ciid` int(11) NOT NULL auto_increment,
  `ciiname` varchar(45) NOT NULL,
  `ciimap` varchar(500) default NULL,
  `ciidesc` varchar(100) default NULL,
  PRIMARY KEY  (`ciid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` (`sid`,`ciid`,`ciiname`,`ciimap`,`ciidesc`) VALUES 
 ('1',1,'bhopal','bhopal.jpg','Bhopal passport'),
 ('4',2,'Gwalior','gwalior.jpg','Gwalior is my best city'),
 ('3',3,'Australiya','australiya.jpg','very good cricket team'),
 ('3',4,'Argentina','aregentina.jpg','Software company');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;


--
-- Definition of table `collegereg`
--

DROP TABLE IF EXISTS `collegereg`;
CREATE TABLE `collegereg` (
  `clgid` int(11) NOT NULL auto_increment,
  `clgname` varchar(45) default NULL,
  `estab` varchar(45) default NULL,
  `emailid` varchar(45) default NULL,
  `web` varchar(45) default NULL,
  `mno` varchar(45) default NULL,
  `address` varchar(100) default NULL,
  `sid` varchar(45) default NULL,
  `ciid` varchar(45) default NULL,
  `photo` varchar(500) default NULL,
  `clglid` varchar(45) default NULL,
  `pwd` varchar(45) default NULL,
  `status` varchar(45) default NULL,
  `unilid` varchar(45) default NULL,
  `type` varchar(45) default NULL,
  PRIMARY KEY  (`clgid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collegereg`
--

/*!40000 ALTER TABLE `collegereg` DISABLE KEYS */;
INSERT INTO `collegereg` (`clgid`,`clgname`,`estab`,`emailid`,`web`,`mno`,`address`,`sid`,`ciid`,`photo`,`clglid`,`pwd`,`status`,`unilid`,`type`) VALUES 
 (1,'','','','','','','-select state-','-select city-','','','-1105114708','active',NULL,NULL),
 (2,'','','','','','','-select state-','-select city-','','','350960236','active','itm@gmail.com',NULL),
 (3,'ITM','2016-12-31','itm@gmail.com','www.itm@gmail.com','907403','galiro','1','null','','itm@gmail.com','12345','active','itm@gmail.com',NULL),
 (4,'Sikh College','2016-11-22','sikh@gmail.com','www.sikh@gmail.com','9074030346','Sikkim','4','3','c2.jpg','sikh@gmail.com','12345','active','sikkim@gmail.com',NULL),
 (5,'qwerty College','2016-11-15','qwerty@gmail.com','www.qwerty@gmail.com','9074030346','Sikkim','2','3','c3.jpg','qwerty@gmail.com','789911644','active','sikkim@gmail.com',NULL);
/*!40000 ALTER TABLE `collegereg` ENABLE KEYS */;


--
-- Definition of table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `cid` int(11) NOT NULL auto_increment,
  `cname` varchar(45) default NULL,
  `cflag` varchar(500) default NULL,
  `cdesc` varchar(100) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` (`cid`,`cname`,`cflag`,`cdesc`) VALUES 
 (11,'','',''),
 (12,'','','');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;


--
-- Definition of table `coursereg`
--

DROP TABLE IF EXISTS `coursereg`;
CREATE TABLE `coursereg` (
  `courseid` int(11) NOT NULL auto_increment,
  `coursename` varchar(45) default NULL,
  `courseicon` varchar(500) default NULL,
  `coursedesc` varchar(100) default NULL,
  `uid` varchar(45) default NULL,
  `clgid` varchar(45) default NULL,
  PRIMARY KEY  (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursereg`
--

/*!40000 ALTER TABLE `coursereg` DISABLE KEYS */;
INSERT INTO `coursereg` (`courseid`,`coursename`,`courseicon`,`coursedesc`,`uid`,`clgid`) VALUES 
 (3,'Btech','c1.png','  jk mhhhj','itm@gmail.com',NULL),
 (4,'SOET','c5.png','School of Engineerin and technology','sikkim@gmail.com','4'),
 (5,'Art & Design','c4.jpg','Art and design should be neccessary','sikkim@gmail.com','5'),
 (6,'building','co4.jpg','Buliding is in under construction','sikkim@gmail.com','4');
/*!40000 ALTER TABLE `coursereg` ENABLE KEYS */;


--
-- Definition of table `notice`
--

DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `noid` int(11) NOT NULL auto_increment,
  `publishby` varchar(45) NOT NULL,
  `subject` varchar(45) default NULL,
  `detail` varchar(100) default NULL,
  `file` varchar(500) default NULL,
  `image` varchar(500) default NULL,
  `datetime` varchar(45) default NULL,
  PRIMARY KEY  (`noid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` (`noid`,`publishby`,`subject`,`detail`,`file`,`image`,`datetime`) VALUES 
 (1,'admin','Aadhar Card','Registerd for aadhar card','Admissions_Notice_2015.pdf','b6.png','Fri Nov 18 14:43:25 IST 2016'),
 (2,'sikkim@gmail.com','Exam Sheduled','Exam will be held on 21 nov\" hoga','','','null'),
 (3,'sikh@gmail.com','Dress Code','Dress code is fixed','Army_Army_kna.pdf','12991097_1051225271619617_899006832287662513_n.jpg','Fri Nov 18 15:21:57 IST 2016');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;


--
-- Definition of table `state`
--

DROP TABLE IF EXISTS `state`;
CREATE TABLE `state` (
  `cid` varchar(45) NOT NULL,
  `sid` int(10) unsigned NOT NULL auto_increment,
  `sname` varchar(45) NOT NULL,
  `smap` varchar(500) default NULL,
  `sdesc` varchar(100) default NULL,
  PRIMARY KEY  (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` (`cid`,`sid`,`sname`,`smap`,`sdesc`) VALUES 
 ('2',1,'1','gwalior.jpg','heart of india he'),
 ('2',2,'Bhopal','bhopal.jpg','Passport office'),
 ('6',3,'US','us.jpg','Very luxury country'),
 ('2',4,'Utter Pradesh','up.jpg','Aligarh');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;


--
-- Definition of table `studentreg`
--

DROP TABLE IF EXISTS `studentreg`;
CREATE TABLE `studentreg` (
  `stuid` int(11) NOT NULL auto_increment,
  `stuname` varchar(45) default NULL,
  `stufname` varchar(45) default NULL,
  `uid` varchar(45) default NULL,
  `courseid` varchar(45) default NULL,
  `branchid` varchar(45) default NULL,
  `emailid` varchar(45) default NULL,
  `mno` varchar(45) default NULL,
  `dob` varchar(45) default NULL,
  `address` varchar(100) default NULL,
  `sid` varchar(45) default NULL,
  `ciid` varchar(45) default NULL,
  `pcode` varchar(45) default NULL,
  `photo` varchar(500) default NULL,
  `stulid` varchar(45) default NULL,
  `stupwd` varchar(45) default NULL,
  `status` varchar(45) default NULL,
  `rollno` varchar(45) default NULL,
  `clglid` varchar(45) default NULL,
  `gender` varchar(45) default NULL,
  `aadhar` varchar(45) NOT NULL default '',
  `batch` varchar(45) default NULL,
  PRIMARY KEY  USING BTREE (`stuid`,`aadhar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentreg`
--

/*!40000 ALTER TABLE `studentreg` DISABLE KEYS */;
INSERT INTO `studentreg` (`stuid`,`stuname`,`stufname`,`uid`,`courseid`,`branchid`,`emailid`,`mno`,`dob`,`address`,`sid`,`ciid`,`pcode`,`photo`,`stulid`,`stupwd`,`status`,`rollno`,`clglid`,`gender`,`aadhar`,`batch`) VALUES 
 (2,'Sameer khan','Moh. khan','null','3','1','sameer@gmail.com','9074030346','2016-12-31','Gwalior','','','477','admin.jpg','sameer@gmail.com','12345','active','null','itm@gmail.com','male','23698745236','2014'),
 (3,'Rajeev Kumar','Amit kumar','5','4','4','rajeev@gmail.com','9074030346','2016-12-15','Sikkim','-select state-','2','477116','s7.jpg','rajeev@gmail.com','-101944173','active','fb84vdf','sikh@gmail.com','male','254136985745','2013'),
 (4,'Sama khan','Moh khan','5','4','2','sama@gmail.com','9074030346','2016-12-31','Sikkim','4','4','477116','s3.jpg','sama@gmail.com','1235054546','active','qwertas12345','sikh@gmail.com','female','458963658741','2012'),
 (5,'Ajay jatt','Ram jatt','5','4','4','ajay@gmail.com','www.//ajay.com','2016-11-15','Gohad','4','2','477116','s1.jpg','ajay@gmail.com','12345','active','f1d2123df','sikh@gmail.com','male','478512469358','2016'),
 (6,'jk','mrk','5','4','4','jk@gmail.com','9074030346','','Gwalior','-1','2','477116','','jk@gmail.com','-1895984205','active','5DSVdsvsd1','sikh@gmail.com','male','478512469358','2012'),
 (7,'sk','mrk','5','4','2','','','','','-1','-1','','','','-2086509295','active','s','sikh@gmail.com','male','478512469358','2015'),
 (8,'sk','mrk','5','4','2','','','','','-1','-1','','','','-2086509295','active','s','sikh@gmail.com','male','478512469358','2015'),
 (9,'sk','mrk','5','4','2','','','','','-1','-1','','','','-2086509295','active','s','sikh@gmail.com','male','478512469358','2015');
/*!40000 ALTER TABLE `studentreg` ENABLE KEYS */;


--
-- Definition of table `universityreg`
--

DROP TABLE IF EXISTS `universityreg`;
CREATE TABLE `universityreg` (
  `uid` int(11) NOT NULL auto_increment,
  `uname` varchar(45) default NULL,
  `estab` varchar(45) default NULL,
  `recog` varchar(45) default NULL,
  `type` varchar(45) default NULL,
  `email` varchar(45) default NULL,
  `web` varchar(45) default NULL,
  `mno` varchar(45) default NULL,
  `aadd` varchar(100) default NULL,
  `ciid` varchar(45) default NULL,
  `sid` varchar(45) default NULL,
  `ulid` varchar(45) default NULL,
  `upwd` varchar(45) default NULL,
  `photo` varchar(500) default NULL,
  `status` varchar(45) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `universityreg`
--

/*!40000 ALTER TABLE `universityreg` DISABLE KEYS */;
INSERT INTO `universityreg` (`uid`,`uname`,`estab`,`recog`,`type`,`email`,`web`,`mno`,`aadd`,`ciid`,`sid`,`ulid`,`upwd`,`photo`,`status`) VALUES 
 (1,'','','-select branch-','-select type-','','','','','-select city-','-select state-','','-1389217514','null','active'),
 (2,'ITM University Gwalior`','2016-12-31','ugc','pvt','itm@gmail.com','www.itm@gmail.com','+91316512051','Turari Campus gwalior','null','null','itm@gmail.com','123456','u8.png','active'),
 (3,'Aligarh Muslim university','2016-11-08','aicte','central','aligarh@gmail.com','www.aligarh@gmail.com','9074030346','Aligarh','1','4','aligarh@gmail.com','1146877760','u5.png','active'),
 (4,'Boston University','2016-11-18','ugc','state','boston@gmail.com','www.boston@gmail.com','9074030346','Boston','4','3','boston@gmail.com','-829418216','u10.png','active'),
 (5,'Sikkim university','2016-11-20','other','deemed','sikkim@gmail.com','www.sikkim@gmail.com','9074030346','Siikim','4','4','sikkim@gmail.com','12345','u1.png','active');
/*!40000 ALTER TABLE `universityreg` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
