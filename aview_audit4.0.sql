/*
SQLyog Community Edition- MySQL GUI v8.04 
MySQL - 5.5.16-log : Database - aview_audit
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`aview_audit` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `aview_audit`;

/*Table structure for table `user_action` */

DROP TABLE IF EXISTS `user_action`;

CREATE TABLE `user_action` (
  `user_action_id` int(10) NOT NULL AUTO_INCREMENT,
  `action_id` int(10) NOT NULL,
  `created_by_user_id` int(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by_user_id` int(10) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status_id` int(10) NOT NULL DEFAULT '1',
  `audit_user_login_id` int(10) DEFAULT NULL,
  `lecture_id` int(10) DEFAULT NULL,
  `attr1_value` varchar(1024) DEFAULT NULL,
  `attr2_value` varchar(1024) DEFAULT NULL,
  `attr3_value` varchar(1024) DEFAULT NULL,
  `audit_lecture_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`user_action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3907296 DEFAULT CHARSET=latin1 COMMENT='Table for capturing all the user actions.';

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
