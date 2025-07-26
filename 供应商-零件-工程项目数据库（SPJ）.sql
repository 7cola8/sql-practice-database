/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 8.0.17 : Database - spj
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`spj` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `spj`;

/*Table structure for table `j` */

DROP TABLE IF EXISTS `j`;

CREATE TABLE `j` (
  `JNO` char(9) NOT NULL,
  `JNAME` char(9) DEFAULT NULL,
  `CITY` char(9) DEFAULT NULL,
  PRIMARY KEY (`JNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `j` */

insert  into `j`(`JNO`,`JNAME`,`CITY`) values 
('J1','三建','北京'),
('J2','一汽','长春'),
('J3','弹簧厂','天津'),
('J4','造船厂','天津'),
('J5','机车厂','唐山'),
('J6','无线电厂','常州'),
('J7','半导体厂','南京');

/*Table structure for table `p` */

DROP TABLE IF EXISTS `p`;

CREATE TABLE `p` (
  `PNO` char(9) NOT NULL,
  `PNAME` char(9) DEFAULT NULL,
  `COLOR` char(2) DEFAULT NULL,
  `WEIGHT` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`PNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `p` */

insert  into `p`(`PNO`,`PNAME`,`COLOR`,`WEIGHT`) values 
('P1','螺母','红',12),
('P2','螺栓','绿',17),
('P3','螺丝刀','蓝',14),
('P4','螺丝刀','红',14),
('P5','凸轮','蓝',40),
('P6','齿轮','红',30);

/*Table structure for table `s` */

DROP TABLE IF EXISTS `s`;

CREATE TABLE `s` (
  `SNO` char(9) NOT NULL,
  `SNAME` char(9) DEFAULT NULL,
  `STATUS` char(9) DEFAULT NULL,
  `CITY` char(9) DEFAULT NULL,
  PRIMARY KEY (`SNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `s` */

insert  into `s`(`SNO`,`SNAME`,`STATUS`,`CITY`) values 
('S1','精益','20','天津'),
('S2','盛锡','10','北京'),
('S3','东方红','30','北京'),
('S4','丰泰盛','30','天津'),
('S5','为民','30','上海');

/*Table structure for table `spj` */

DROP TABLE IF EXISTS `spj`;

CREATE TABLE `spj` (
  `SNO` char(9) DEFAULT NULL,
  `PNO` char(9) DEFAULT NULL,
  `JNO` char(9) DEFAULT NULL,
  `QTY` smallint(6) DEFAULT NULL,
  KEY `SNO` (`SNO`),
  KEY `PNO` (`PNO`),
  KEY `JNO` (`JNO`),
  CONSTRAINT `spj_ibfk_1` FOREIGN KEY (`SNO`) REFERENCES `s` (`SNO`),
  CONSTRAINT `spj_ibfk_2` FOREIGN KEY (`PNO`) REFERENCES `p` (`PNO`),
  CONSTRAINT `spj_ibfk_3` FOREIGN KEY (`JNO`) REFERENCES `j` (`JNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `spj` */

insert  into `spj`(`SNO`,`PNO`,`JNO`,`QTY`) values 
('S1','P1','J1',200),
('S1','P1','J3',100),
('S1','P1','J4',700),
('S1','P2','J2',100),
('S2','P3','J1',400),
('S2','P3','J2',200),
('S2','P3','J4',500),
('S2','P3','J5',400),
('S2','P5','J1',400),
('S2','P5','J2',100),
('S3','P1','J1',200),
('S3','P3','J1',200),
('S4','P5','J1',100),
('S4','P6','J3',300),
('S4','P6','J4',200),
('S5','P2','J4',100),
('S5','P3','J1',200),
('S5','P6','J2',200),
('S5','P6','J4',500);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
