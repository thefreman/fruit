/*
SQLyog Ultimate - MySQL GUI v8.2 
MySQL - 5.7.17-log : Database - jxc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jxc` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jxc`;

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'å•†å“id',
  `product_name` varchar(32) NOT NULL COMMENT 'å•†å“åç§°',
  `quantity` int(11) NOT NULL COMMENT 'åº“å­˜é‡',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`id`,`product_name`,`quantity`) values (1,'螺蛳粉',100),(2,'口红',29),(3,'矿泉水',1000),(4,'烤腰子',0),(5,'舒肤佳',10000),(6,'舒肤佳',10000),(7,'舒肤佳',10000),(8,'舒肤佳',10000);

/*Table structure for table `sale` */

DROP TABLE IF EXISTS `sale`;

CREATE TABLE `sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'è®°å½•id',
  `price` decimal(8,2) NOT NULL COMMENT 'é”€å”®å•ä»·',
  `quantity` int(11) NOT NULL COMMENT 'æ•°é‡',
  `total_price` decimal(12,2) NOT NULL COMMENT 'æ€»ä»·',
  `sale_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'é”€å”®æ—¶é—´',
  `user_id` int(11) NOT NULL COMMENT 'é”€å”®å‘˜id',
  `product_id` int(11) NOT NULL COMMENT 'å•†å“id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `sale` */

insert  into `sale`(`id`,`price`,`quantity`,`total_price`,`sale_date`,`user_id`,`product_id`) values (1,'10.00',10,'100.00','2018-12-28 13:06:16',1,1),(2,'5.00',3,'15.00','2018-12-28 13:06:28',2,4),(3,'6.00',22,'132.00','2018-12-28 13:06:50',3,2),(4,'8.00',2,'16.00','2018-12-28 13:07:10',1,2),(5,'10.00',10,'100.00','2018-12-28 13:07:18',1,3),(6,'4.00',20,'80.00','2018-12-28 13:07:30',1,4),(7,'10.00',10,'100.00','2018-12-28 14:58:05',1,1),(8,'20.00',2,'40.00','2018-12-31 14:10:51',1,4),(9,'300.00',10,'3000.00','2018-12-31 17:07:42',1,2),(10,'123.00',3,'369.00','2018-12-31 17:13:00',1,4),(11,'11.00',11,'121.00','2019-01-15 11:10:13',1,2),(12,'10.00',10,'100.00','2019-01-15 11:11:26',1,1);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ç”¨æˆ·id',
  `username` varchar(16) NOT NULL COMMENT 'ç”¨æˆ·å',
  `password` varchar(64) NOT NULL COMMENT 'å¯†ç ',
  `realname` varchar(8) NOT NULL COMMENT 'çœŸå®žå§“å',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`realname`) values (1,'zhangsan','9c3b5c0672cd599ccf1019bddaa8089b','张三'),(2,'lisi','123123','李四'),(3,'wangwu','123123','王五');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
