/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 8.0.17 : Database - scdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`scdb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `scdb`;

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `Cno` char(4) NOT NULL,
  `Cname` char(40) NOT NULL,
  `Cpno` char(4) DEFAULT NULL,
  `Ccredit` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`Cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `course` */

insert  into `course`(`Cno`,`Cname`,`Cpno`,`Ccredit`) values 
('','',NULL,NULL),
('1','数据库','5',4),
('2','数学',NULL,2),
('3','信息系统','1',4),
('4','操作系统','6',3),
('5','数据结构','7',4),
('6','数据处理',NULL,2),
('7','PASCAL语言','6',4);

/*Table structure for table `sc` */

DROP TABLE IF EXISTS `sc`;

CREATE TABLE `sc` (
  `Sno` char(9) NOT NULL,
  `Cno` char(4) NOT NULL,
  `Grade` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`Sno`,`Cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sc` */

insert  into `sc`(`Sno`,`Cno`,`Grade`) values 
('201215121','1',92),
('201215121','2',85),
('201215121','3',88),
('201215122','2',90),
('201215122','3',80);

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `Sno` char(9) NOT NULL,
  `Sname` char(20) DEFAULT NULL,
  `Ssex` char(2) DEFAULT NULL,
  `Sage` smallint(6) DEFAULT NULL,
  `Sdept` char(20) DEFAULT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`Sno`,`Sname`,`Ssex`,`Sage`,`Sdept`) values 
('201215121','李勇','男',20,'CS'),
('201215122','刘晨','女',19,'CS'),
('201215123','王敏','女',18,'MA'),
('201215125','张立','男',19,'IS');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
