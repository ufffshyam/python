/*
SQLyog Ultimate v10.00 Beta1
MySQL - 8.0.20 : Database - proqure
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`proqure` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `proqure`;

/*Table structure for table `batch` */

DROP TABLE IF EXISTS `batch`;

CREATE TABLE `batch` (
  `pk_batch_id` bigint NOT NULL AUTO_INCREMENT,
  `batch_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `batch_description` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `quantity` int NOT NULL,
  `status` tinyint DEFAULT '1',
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_by` bigint DEFAULT NULL,
  `modified_on` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Batch master';

/*Data for the table `batch` */

/*Table structure for table `brand` */

DROP TABLE IF EXISTS `brand`;

CREATE TABLE `brand` (
  `pk_brand_id` bigint NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fk_vertical_id` bigint NOT NULL,
  `fk_partner_id` bigint NOT NULL,
  `fk_roll_id` bigint DEFAULT NULL,
  `brand_description` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `brand_logo` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `brand_url` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_by` bigint DEFAULT NULL,
  `modified_on` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_brand_id`),
  KEY `fk_vertical_b_idx` (`fk_vertical_id`),
  KEY `fk_partner_id_idx` (`fk_partner_id`),
  KEY `fk_roll_id_idx` (`fk_roll_id`),
  CONSTRAINT `fk_partner_id` FOREIGN KEY (`fk_partner_id`) REFERENCES `partner` (`pk_partner_id`),
  CONSTRAINT `fk_roll_id` FOREIGN KEY (`fk_roll_id`) REFERENCES `role` (`pk_role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_vertical_b` FOREIGN KEY (`fk_vertical_id`) REFERENCES `lookup` (`pk_lookup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Brand master';

/*Data for the table `brand` */

insert  into `brand`(`pk_brand_id`,`brand_name`,`fk_vertical_id`,`fk_partner_id`,`fk_roll_id`,`brand_description`,`brand_logo`,`brand_url`,`status`,`created_by`,`created_on`,`modified_by`,`modified_on`) values (99,'Nestle',7,43,1,'Yup',NULL,'http://d1x6f6lmw6hmdy.cloudfront.net/#/brands/brand-create',1,0,'2021-02-17 11:57:39',0,'2021-02-18 07:11:56'),(100,'Amul',27,43,1,'Amul',NULL,'https://www.amul.com/',1,0,'2021-02-17 12:04:09',0,'2021-02-19 11:49:57'),(101,'TATA Motor',11,43,1,'Tata Motors Group (Tata Motors) is a $35 billion organisation. It is a leading global automobile manufacturing company. Its diverse portfolio includes an extensive range of cars, sports utility vehicles, trucks, buses and defence vehicles. Tata Motors is one of India\'s largest OEMs offering an extensive range of integrated, smart and e-mobility solutions\n\nPart of the USD113 billion Tata group founded by Jamsetji Tata in 1868, Tata Motors is among the world’s leading manufacturers of automobiles. We believe in ‘Connecting aspirations’, by offering innovative mobility solutions that are in line with customers\' aspirations. We are India\'s largest automobile manufacturer, and we continue to take the lead in shaping the Indian commercial vehicle landscape, with the introduction of leading-edge powertrains and electric solutions packaged for power performances and user comfort at the lowest life-cycle costs. Our new passenger cars and utility vehicles are based on Impact Design and offer a s','1613563762344Tata Motors Logo.jpg','https://www.tatamotors.com/',1,0,'2021-02-17 12:04:29',0,'2021-02-19 11:49:30'),(102,'Test',7,44,1,'Tata Motors Group (Tata Motors) is a $35 billion organisation. It is a leading global automobile manufacturing company. Its diverse portfolio includes an extensive range of cars, sports utility vehicles, trucks, buses and defence vehicles. Tata Motors is one of India\'s largest OEMs offering an extensive range of integrated, smart and e-mobility solutions\n\nPart of the USD113 billion Tata group founded by Jamsetji Tata in 1868, Tata Motors is among the world’s leading manufacturers of automobiles. We believe in ‘Connecting aspirations’, by offering innovative mobility solutions that are in line with customers\' aspirations. We are India\'s largest automobile manufacturer, and we continue to take the lead in shaping the Indian commercial vehicle landscape, with the introduction of leading-edge powertrains and electric solutions packaged for power performances and user comfort at the lowest life-cycle costs. Our new passenger cars and utility vehicles are based on Impact Design and offer a s',NULL,'',1,0,'2021-02-17 12:10:42',0,'2021-02-19 11:48:31'),(103,'TATA',26,43,1,'Tata Group (/ ˈtɑːtɑː /) is an Indian multinational conglomerate headquartered in Mumbai, Maharashtra, India. Founded in 1868 by Jamsetji Tata, the company gained international recognition after purchasing several global companies. It is one of the biggest and oldest industrial groups in India.Tata Group (/ ˈtɑːtɑː /) is an Indian multinational conglomerate headquartered in Mumbai, Maharashtra, India. Founded in 1868 by Jamsetji Tata, the company gained international recognition after purchasing several global companies. It is one of the biggest and oldest industrial groups in India.Tata Group (/ ˈtɑːtɑː /) is an Indian multinational conglomerate headquartered in Mumbai, Maharashtra, India. Founded in 1868 by Jamsetji Tata, the company gained international recognition after purchasing several global companies. It is one of the biggest and oldest industrial groups in India.Tata Group (/ ˈtɑːtɑː /) is an Indian multinational conglomerate headquartered in Mumbai, Maharashtra, India. Found',NULL,'',1,0,'2021-02-18 09:20:55',0,'2021-02-19 10:20:19'),(104,'Test1234',26,43,1,'',NULL,'',1,0,'2021-02-19 11:48:05',0,'2021-02-19 11:50:51');

/*Table structure for table `brand_goal_mapping` */

DROP TABLE IF EXISTS `brand_goal_mapping`;

CREATE TABLE `brand_goal_mapping` (
  `pk_brand_goal_trn_id` bigint NOT NULL AUTO_INCREMENT,
  `fk_brand_id` bigint NOT NULL,
  `fk_goal_id` bigint NOT NULL,
  `status` tinyint DEFAULT '1',
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_by` bigint DEFAULT NULL,
  `modified_on` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_brand_goal_trn_id`),
  KEY `fk_brand_trn_idx` (`fk_brand_id`),
  KEY `fk_goal_trn_idx` (`fk_goal_id`),
  CONSTRAINT `fk_brand_trn` FOREIGN KEY (`fk_brand_id`) REFERENCES `brand` (`pk_brand_id`),
  CONSTRAINT `fk_goal_trn` FOREIGN KEY (`fk_goal_id`) REFERENCES `goal` (`pk_goal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=399 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Brand and Goal Transaction';

/*Data for the table `brand_goal_mapping` */

insert  into `brand_goal_mapping`(`pk_brand_goal_trn_id`,`fk_brand_id`,`fk_goal_id`,`status`,`created_by`,`created_on`,`modified_by`,`modified_on`) values (362,100,11,1,0,'2021-02-17 12:04:09',0,'2021-02-17 12:04:09'),(363,100,10,1,0,'2021-02-17 12:04:09',0,'2021-02-17 12:04:09'),(364,100,9,1,0,'2021-02-17 12:04:09',0,'2021-02-17 12:04:09'),(365,101,1,1,0,'2021-02-17 12:04:29',0,'2021-02-17 12:04:29'),(378,102,5,1,0,'2021-02-17 12:10:42',0,'2021-02-17 12:10:42'),(379,102,3,1,0,'2021-02-17 12:10:42',0,'2021-02-17 12:10:42'),(381,99,3,1,0,'2021-02-18 07:10:18',0,'2021-02-18 07:10:18'),(382,103,9,1,0,'2021-02-18 09:20:55',0,'2021-02-18 09:20:55'),(383,103,10,1,0,'2021-02-18 09:20:55',0,'2021-02-18 09:20:55'),(384,103,11,1,0,'2021-02-18 09:20:55',0,'2021-02-18 09:20:55'),(385,103,12,1,0,'2021-02-18 09:20:55',0,'2021-02-18 09:20:55'),(386,103,13,1,0,'2021-02-18 09:20:55',0,'2021-02-18 09:20:55'),(387,103,14,1,0,'2021-02-18 09:20:55',0,'2021-02-18 09:20:55'),(388,103,15,1,0,'2021-02-18 09:20:55',0,'2021-02-18 09:20:55'),(389,103,16,1,0,'2021-02-18 09:20:55',0,'2021-02-18 09:20:55'),(390,103,17,1,0,'2021-02-18 09:20:55',0,'2021-02-18 09:20:55'),(391,103,18,1,0,'2021-02-18 09:20:55',0,'2021-02-18 09:20:55'),(392,103,19,1,0,'2021-02-18 09:20:55',0,'2021-02-18 09:20:55'),(393,103,20,1,0,'2021-02-18 09:20:55',0,'2021-02-18 09:20:55'),(394,104,9,1,0,'2021-02-19 11:48:05',0,'2021-02-19 11:48:05'),(395,104,10,1,0,'2021-02-19 11:48:05',0,'2021-02-19 11:48:05'),(396,104,11,1,0,'2021-02-19 11:48:05',0,'2021-02-19 11:48:05'),(397,104,12,1,0,'2021-02-19 11:48:05',0,'2021-02-19 11:48:05'),(398,104,13,1,0,'2021-02-19 11:48:05',0,'2021-02-19 11:48:05');

/*Table structure for table `brand_user_mapping` */

DROP TABLE IF EXISTS `brand_user_mapping`;

CREATE TABLE `brand_user_mapping` (
  `pk_brand_user_id` bigint NOT NULL AUTO_INCREMENT,
  `fk_user_id` bigint NOT NULL,
  `fk_brand_id` bigint NOT NULL,
  `status` tinyint DEFAULT '1',
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` bigint DEFAULT NULL,
  `modified_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_brand_user_id`),
  KEY `fk_user_bu_idx` (`fk_user_id`),
  KEY `fk_brand_bu_idx` (`fk_brand_id`),
  CONSTRAINT `fk_brand_bu` FOREIGN KEY (`fk_brand_id`) REFERENCES `brand` (`pk_brand_id`),
  CONSTRAINT `fk_user_bu` FOREIGN KEY (`fk_user_id`) REFERENCES `user` (`pk_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Brand and User Mapping';

/*Data for the table `brand_user_mapping` */

insert  into `brand_user_mapping`(`pk_brand_user_id`,`fk_user_id`,`fk_brand_id`,`status`,`created_by`,`created_on`,`modified_by`,`modified_on`) values (30,140,101,1,NULL,'2021-02-23 16:10:16',NULL,'2021-02-23 16:10:16'),(31,141,101,1,NULL,'2021-02-26 06:14:28',NULL,'2021-02-26 06:14:28');

/*Table structure for table `campaign` */

DROP TABLE IF EXISTS `campaign`;

CREATE TABLE `campaign` (
  `pk_campaign_id` bigint NOT NULL AUTO_INCREMENT,
  `campaign_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `campaign_description` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `fk_product_id` bigint NOT NULL,
  `fk_brand_id` bigint NOT NULL,
  `number_of_product` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `fk_lookup_id` bigint NOT NULL,
  `fk_goal_id` bigint NOT NULL,
  `status` tinyint DEFAULT '1',
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_by` bigint DEFAULT NULL,
  `modified_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `fk_product_sku_id` bigint DEFAULT NULL,
  PRIMARY KEY (`pk_campaign_id`),
  KEY `fk_goal_c_idx` (`fk_goal_id`),
  KEY `fk_product_cp_idx` (`fk_product_id`),
  KEY `fk_brand_cp_idx` (`fk_brand_id`),
  KEY `fk_product_sku_id_cp_idx` (`fk_product_sku_id`),
  CONSTRAINT `fk_brand_cp` FOREIGN KEY (`fk_brand_id`) REFERENCES `brand` (`pk_brand_id`),
  CONSTRAINT `fk_goal_c` FOREIGN KEY (`fk_goal_id`) REFERENCES `goal` (`pk_goal_id`),
  CONSTRAINT `fk_product_id_cp` FOREIGN KEY (`fk_product_id`) REFERENCES `product` (`pk_product_id`),
  CONSTRAINT `fk_product_sku_id_cp` FOREIGN KEY (`fk_product_sku_id`) REFERENCES `sku_product_mapping` (`pk_sku_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Campaign master';

/*Data for the table `campaign` */

insert  into `campaign`(`pk_campaign_id`,`campaign_name`,`campaign_description`,`fk_product_id`,`fk_brand_id`,`number_of_product`,`start_date`,`end_date`,`fk_lookup_id`,`fk_goal_id`,`status`,`created_by`,`created_on`,`modified_by`,`modified_on`,`fk_product_sku_id`) values (217,'Campaign for Tata Altroz','This is description for Altroz',124,101,320,'2021-02-17','2021-02-26',25,1,1,0,'2021-02-17 12:34:30',0,'2021-02-18 07:38:42',195),(218,'Draft Campaign which needs to be deleted','',125,101,123,'2021-02-18','2021-02-27',4,1,0,0,'2021-02-17 12:36:26',0,'2021-02-19 12:17:08',197),(219,'Campaign for Nestle','',126,99,1312,'2021-02-18','2021-02-27',25,3,1,0,'2021-02-18 07:24:26',0,'2021-02-18 07:42:19',198),(220,'Campaign for Tata Tiago','',123,101,1122,'2021-02-18','2021-02-25',4,1,0,0,'2021-02-18 09:07:41',0,'2021-02-18 15:04:19',193),(221,'asdasd12','asdasd1',123,101,11,'2021-04-17','2021-05-14',4,1,0,0,'2021-02-18 11:02:35',0,'2021-02-18 16:55:29',193),(222,'asasd11','asdasd',125,101,121,'2021-06-12','2021-09-25',1,1,1,0,'2021-02-18 11:08:00',0,'2021-02-18 16:39:15',197),(223,'Draft','asd',125,101,11,'2021-07-08','2021-09-10',4,1,0,0,'2021-02-19 07:35:26',0,'2021-02-19 13:06:27',199),(224,'yuo','asdasd',123,101,100,'2021-10-18','2021-12-24',4,1,0,0,'2021-02-19 07:39:13',0,'2021-02-19 13:09:32',193),(225,'check 1','asd',127,102,11,'2021-02-19','2021-02-26',4,5,0,0,'2021-02-19 11:42:47',0,'2021-02-19 11:42:59',200),(226,'Campaign for Altroz 1','',124,101,11,'2021-02-23','2021-02-26',4,1,1,0,'2021-02-23 10:01:55',0,'2021-02-23 10:01:55',196),(227,'Campaign for tata altroz ','',124,101,121,'2021-03-01','2021-03-27',1,1,1,0,'2021-02-23 10:24:16',0,'2021-02-23 10:24:16',195),(229,'Customer Collabration1','Increase customer attraction into a product3',123,101,2,'2020-10-27','2021-11-27',3,1,1,0,'2021-03-04 09:43:14',0,'2021-03-04 17:02:45',193);

/*Table structure for table `goal` */

DROP TABLE IF EXISTS `goal`;

CREATE TABLE `goal` (
  `pk_goal_id` bigint NOT NULL AUTO_INCREMENT,
  `goal_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `goal_image` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_by` bigint DEFAULT NULL,
  `modified_on` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_goal_id`),
  KEY `fk_status_g_idx` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Goal master';

/*Data for the table `goal` */

insert  into `goal`(`pk_goal_id`,`goal_name`,`description`,`goal_image`,`status`,`created_by`,`created_on`,`modified_by`,`modified_on`) values (1,'Sales','Drive sales to your e-commerce store','ic_increase_sales.png',1,NULL,'2020-10-26 14:53:41',NULL,'2020-10-26 14:53:41'),(2,'Leads','Generate potential leads to drive conversions ','ic_leads.png',1,NULL,'2020-10-26 14:54:09',NULL,'2020-10-26 14:54:09'),(3,'Website traffic','Increase visitors to your brands website','Ic_website_traffic.png',1,NULL,'2020-10-26 14:54:34',NULL,'2020-10-26 14:54:34'),(4,'Brand awareness and reach',NULL,'ic_brand_awarness.png',1,NULL,'2020-10-26 15:01:18',NULL,'2020-10-26 15:01:18'),(5,'App promotion',NULL,'Ic_app_promotions.png',1,NULL,'2020-10-26 15:01:31',NULL,'2020-10-26 15:01:31'),(6,'Customer Acquisition',NULL,'ic_customer_acquisition.png',1,NULL,'2020-11-05 16:20:32',NULL,'2020-11-05 16:24:59'),(7,'Customer Retention',NULL,'ic_customer_retention.png',1,NULL,'2020-11-20 09:50:12',NULL,'2020-11-20 09:50:12'),(8,'Boost Engagement','A high number of clicks but low user engagement','ic_boost_engagement.png',1,NULL,'2021-01-21 07:11:43',NULL,'2021-01-21 07:11:43'),(9,'Collect consumer insights',NULL,'Ic_consumer_insights.png',1,NULL,'2021-02-12 05:46:32',NULL,'2021-02-12 05:46:32'),(10,'Market research',NULL,'Ic_market_research.png',1,NULL,'2021-02-12 05:47:48',NULL,'2021-02-12 05:47:48'),(11,'Special promotion',NULL,'Ic_special_promotion.png',1,NULL,'2021-02-12 05:48:11',NULL,'2021-02-12 05:48:11'),(12,'Competition',NULL,'Ic_competition.png',1,NULL,'2021-02-12 05:48:44',NULL,'2021-02-12 05:48:44'),(13,'Validate user check-in / checkout',NULL,'Ic_validate_user.png',1,NULL,'2021-02-12 05:49:08',NULL,'2021-02-12 05:49:08'),(14,'Consumer education',NULL,'Ic_consumer_education.png',1,NULL,'2021-02-12 05:49:52',NULL,'2021-02-12 05:49:52'),(15,'Increase average spend',NULL,'Ic_average_spend.png',1,NULL,'2021-02-12 05:50:24',NULL,'2021-02-12 05:50:24'),(16,'Enable e-commerce',NULL,'Ic_e-commerce.png',1,NULL,'2021-02-12 05:50:52',NULL,'2021-02-12 05:50:52'),(17,'Boost social media activity',NULL,'Ic_social.png',1,NULL,'2021-02-12 05:52:43',NULL,'2021-02-12 05:52:43'),(18,'Increase product sales',NULL,'Ic_product_sale.png',1,NULL,'2021-02-12 05:52:57',NULL,'2021-02-12 05:52:57'),(19,'Increase brand awareness',NULL,'ic_brand_awarness.png',1,NULL,'2021-02-12 05:53:10',NULL,'2021-02-12 05:53:10'),(20,'Other/Specify',NULL,'Ic_other_services.png',1,NULL,'2021-02-12 06:34:03',NULL,'2021-02-12 06:34:03');

/*Table structure for table `lookup` */

DROP TABLE IF EXISTS `lookup`;

CREATE TABLE `lookup` (
  `pk_lookup_id` bigint NOT NULL AUTO_INCREMENT,
  `key` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `value` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_by` bigint DEFAULT NULL,
  `modified_on` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_lookup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Lookup master which contains metadata';

/*Data for the table `lookup` */

insert  into `lookup`(`pk_lookup_id`,`key`,`value`,`status`,`created_by`,`created_on`,`modified_by`,`modified_on`) values (1,'campaign_status','schedule',1,NULL,'2020-10-26 15:09:00',NULL,'2020-10-26 15:09:00'),(2,'campaign_status','paused',1,NULL,'2020-10-26 15:09:06',NULL,'2020-10-26 15:09:06'),(3,'campaign_status','completed',1,NULL,'2020-10-26 15:09:17',NULL,'2020-10-26 15:09:17'),(4,'campaign_status','draft',1,NULL,'2020-10-27 15:07:26',NULL,'2020-10-27 15:07:26'),(5,'vertical','Healthcare',1,NULL,'2020-10-29 05:46:18',NULL,'2020-10-29 05:46:18'),(6,'vertical','Electronics',1,NULL,'2020-10-29 05:49:30',NULL,'2020-11-03 10:38:22'),(7,'vertical','Fashion',1,NULL,'2020-10-29 05:49:49',NULL,'2020-11-05 16:00:24'),(9,'partner_type','conglomorate',1,NULL,'2020-10-29 05:57:07',NULL,'2020-10-29 05:57:07'),(10,'partner_type','packaging partner',1,NULL,'2020-10-29 05:57:27',NULL,'2020-10-29 05:57:27'),(11,'vertical','Other/Specify',1,NULL,'2020-11-03 10:33:28',NULL,'2020-11-03 10:33:28'),(13,'campaign_pwa_rule','sequnce_of_taps',1,NULL,'2020-11-06 06:27:58',NULL,'2020-11-06 06:27:58'),(14,'campaign_pwa_rule','time_of_the_day',1,NULL,'2020-11-06 06:28:40',NULL,'2020-11-06 06:28:40'),(15,'campaign_pwa_rule','location',1,NULL,'2020-11-06 06:29:04',NULL,'2020-11-06 06:29:04'),(17,'campaign_status','stopped',1,NULL,'2020-10-27 15:07:26',NULL,'2020-10-27 15:07:26'),(18,'campaign_status','running',1,NULL,'2020-11-27 12:49:50',NULL,'2020-11-27 12:49:50'),(20,'tag_master_mode','Generating',1,NULL,'2020-12-16 06:29:02',NULL,'2020-12-16 06:29:02'),(21,'tag_master_mode','To be sent',1,NULL,'2020-12-16 06:29:34',NULL,'2020-12-16 06:29:34'),(22,'tag_master_mode','To be received',1,NULL,'2020-12-16 06:29:35',NULL,'2020-12-16 06:29:35'),(23,'tag_master_mode','Received',1,NULL,'2020-12-16 06:29:37',NULL,'2020-12-16 06:29:37'),(24,'tag_master_mode','assigned',1,NULL,'2020-12-16 06:29:38',NULL,'2020-12-16 06:29:38'),(25,'campaign_status','activated',1,NULL,'2020-12-16 06:29:38',NULL,'2020-12-16 06:29:38'),(26,'vertical','Wine & Spirit',1,NULL,'2021-02-12 05:42:38',NULL,'2021-02-12 05:42:38'),(27,'vertical','General food products',1,NULL,'2021-02-12 05:44:01',NULL,'2021-02-12 05:44:01'),(28,'vertical','Health food',1,NULL,'2021-02-12 05:44:56',NULL,'2021-02-12 05:44:56');

/*Table structure for table `partner` */

DROP TABLE IF EXISTS `partner`;

CREATE TABLE `partner` (
  `pk_partner_id` bigint NOT NULL AUTO_INCREMENT,
  `partner_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `web_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `logo` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `fk_type_id` bigint NOT NULL,
  `status` tinyint DEFAULT '1',
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` bigint DEFAULT NULL,
  `modified_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_partner_id`),
  KEY `fk_type_idx` (`fk_type_id`),
  CONSTRAINT `fk_type` FOREIGN KEY (`fk_type_id`) REFERENCES `lookup` (`pk_lookup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Partner Master';

/*Data for the table `partner` */

insert  into `partner`(`pk_partner_id`,`partner_name`,`web_url`,`description`,`logo`,`fk_type_id`,`status`,`created_by`,`created_on`,`modified_by`,`modified_on`) values (43,'TATA Group','https://www.tata.com/','Founded by Jamsetji Tata in 1868, the Tata group is a global enterprise, headquartered in India, comprising 30 companies across ten verticals.\n\nThe group operates in more than 100 countries across six continents, with a mission \'To improve the quality of life of the communities we serve globally, through long-term stakeholder value creation based on Leadership with Trust’.\n\nTata Sons is the principal investment holding company and promoter of Tata companies. Sixty-six percent of the equity share capital of Tata Sons is held by philanthropic trusts, which support education, health, livelihood generation and art and culture.\n\nIn 2019-20, the revenue of Tata companies, taken together, was $106 billion (INR 7.5 trillion). These companies collectively employ over 750,000 people.\n\nEach Tata company or enterprise operates independently under the guidance and supervision of its own board of directors. There are 29 publicly-listed Tata enterprises with a combined market capitalisation of $123 b','1613561579045Tata Group Logo.jpg',9,1,0,'2021-02-17 11:32:41',0,'2021-02-17 11:32:59'),(44,'ADMIN_USER',NULL,NULL,NULL,9,0,NULL,'2021-02-17 12:01:57',NULL,'2021-02-17 12:01:57');

/*Table structure for table `partner_user_mapping` */

DROP TABLE IF EXISTS `partner_user_mapping`;

CREATE TABLE `partner_user_mapping` (
  `pk_partner_user_id` bigint NOT NULL AUTO_INCREMENT,
  `fk_user_id` bigint NOT NULL,
  `fk_partner_id` bigint NOT NULL,
  `status` tinyint DEFAULT '1',
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` bigint DEFAULT NULL,
  `modified_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_partner_user_id`),
  KEY `fk_user_um_idx` (`fk_user_id`),
  KEY `fk_partner_id_idx` (`fk_partner_id`),
  CONSTRAINT `fk_partner_um` FOREIGN KEY (`fk_partner_id`) REFERENCES `partner` (`pk_partner_id`),
  CONSTRAINT `fk_user_um` FOREIGN KEY (`fk_user_id`) REFERENCES `user` (`pk_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='user mapping with partner';

/*Data for the table `partner_user_mapping` */

insert  into `partner_user_mapping`(`pk_partner_user_id`,`fk_user_id`,`fk_partner_id`,`status`,`created_by`,`created_on`,`modified_by`,`modified_on`) values (70,142,43,1,NULL,'2021-03-16 06:27:27',NULL,'2021-03-16 06:27:27');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `pk_product_id` bigint NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `default_PWA` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `product_description` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `product_image` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `fk_brand_id` bigint DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_by` bigint DEFAULT NULL,
  `modified_on` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_product_id`),
  KEY `fk_brand_p_idx` (`fk_brand_id`),
  CONSTRAINT `fk_brand_p` FOREIGN KEY (`fk_brand_id`) REFERENCES `brand` (`pk_brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Product master';

/*Data for the table `product` */

insert  into `product`(`pk_product_id`,`product_name`,`default_PWA`,`product_description`,`product_image`,`fk_brand_id`,`status`,`created_by`,`created_on`,`modified_by`,`modified_on`) values (123,'Tata Taigo','https://cars.tatamotors.com/cars/tiago','ABSOLUTE SAFETY\nAbsolute safety as standard in all variants. Dual Airbags, ABS with EBD and CSC, Rear view camera adds to the safety in Tiago','1613564103471Tata tiago image.jpg',101,1,0,'2021-02-17 12:14:28',0,'2021-02-17 12:15:04'),(124,'Tata Altroz','https://cars.tatamotors.com/cars/altroz','GOLD STANDARD OF SAFETY\nAltroz has been designed to offer world-class protection to its occupants, Equipped with ALFA Architecture and a comprehensive safety system ALTROZ has achieved 5-star Global NCAP rating','1613564948723Tata Altroz Image.png',101,1,0,'2021-02-17 12:28:52',0,'2021-02-17 12:29:09'),(125,'Tata Harrier','https://cars.tatamotors.com/suv/harrier','MAJESTIC CAMO GREEN\nProclaim your entry as the Mighty King with the glorious Harrier CAMO edition. With its breathtaking design, the impeccable attention to each detail and the colour above all, make the world surrender to you, immediately.','1613565131233Tata Harrier Image.jpg',101,1,0,'2021-02-17 12:32:11',0,'2021-02-18 10:18:42'),(126,'Product 11','https://cars.tatamotors.com/cars/altroz/specifications','',NULL,99,1,0,'2021-02-18 07:21:34',0,'2021-02-18 07:21:34'),(127,'product 1','http://d1x6f6lmw6hmdy.cloudfront.net/#/brands/product-add','asda',NULL,102,1,0,'2021-02-19 11:42:16',0,'2021-02-19 11:42:16');

/*Table structure for table `pwa_campaign_mapping` */

DROP TABLE IF EXISTS `pwa_campaign_mapping`;

CREATE TABLE `pwa_campaign_mapping` (
  `pk_pwa_campaign_mapping_id` bigint NOT NULL AUTO_INCREMENT,
  `rule_name` bigint NOT NULL,
  `rule_value` json NOT NULL,
  `fk_campaign_id` bigint NOT NULL,
  `status` tinyint DEFAULT '1',
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` bigint DEFAULT NULL,
  `modified_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_pwa_campaign_mapping_id`),
  KEY `fk_campaign_pc_idx` (`fk_campaign_id`),
  KEY `fk_lookup_pc_idx` (`rule_name`),
  CONSTRAINT `fk_campaign_lookup_pwa` FOREIGN KEY (`rule_name`) REFERENCES `lookup` (`pk_lookup_id`),
  CONSTRAINT `fk_campaign_pc` FOREIGN KEY (`fk_campaign_id`) REFERENCES `campaign` (`pk_campaign_id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Campaign and PWA mapping';

/*Data for the table `pwa_campaign_mapping` */

insert  into `pwa_campaign_mapping`(`pk_pwa_campaign_mapping_id`,`rule_name`,`rule_value`,`fk_campaign_id`,`status`,`created_by`,`created_on`,`modified_by`,`modified_on`) values (174,13,'[{\"pwa_url\": \"https://cars.tatamotors.com/cars/altroz\"}, {\"pwa_url\": \"https://cars.tatamotors.com/cars/altroz/specifications\"}]',217,1,0,'2021-02-17 12:34:31',0,'2021-02-17 12:34:31'),(175,14,'[{\"pwa_url\": \"https://news.google.com/topstories?hl=en-IN&gl=IN&ceid=IN:enhttps://news.google.com/topstories?hl=en-IN&gl=IN&ceid=IN:en\", \"to_time\": \"11:59PM\", \"from_time\": \"12:00AM\", \"selectAll\": true, \"day_of_week\": [0, 1, 2, 3, 4, 5, 6], \"selectAllTime\": true}]',218,1,0,'2021-02-17 12:36:26',0,'2021-02-18 16:58:43'),(176,13,'[{\"pwa_url\": \"https://www.nestle.in/\"}]',219,1,0,'2021-02-18 07:24:26',0,'2021-02-18 07:24:26'),(177,13,'[{\"pwa_url\": \"https://www.youtube.com/\"}]',220,1,0,'2021-02-18 09:07:41',0,'2021-02-18 09:07:41'),(178,13,'[{\"pwa_url\": \"https://appdividend.com/2018/10/03/angular-ngmodel-directive-example-tutorial\"}]',222,1,0,'2021-02-18 11:08:00',0,'2021-02-18 16:39:06'),(179,13,'[{\"pwa_url\": \"https://stackoverflow.com/questions/5767325/how-can-i-remove-a-specific-item-from-an-array\"}]',223,1,0,'2021-02-19 07:35:26',0,'2021-02-19 07:35:26'),(180,13,'[{\"pwa_url\": \"https://appdividend.com/2018/10/03/angular-ngmodel-directive-example-tutorial\"}]',224,1,0,'2021-02-19 07:39:13',0,'2021-02-19 07:39:13'),(181,13,'[{\"pwa_url\": \"https://stackoverflow.com/questions/5767325/how-can-i-remove-a-specific-item-from-an-array\"}]',225,1,0,'2021-02-19 11:42:47',0,'2021-02-19 11:42:47'),(182,13,'[{\"pwa_url\": \"https://cars.tatamotors.com/\"}]',226,1,0,'2021-02-23 10:01:56',0,'2021-02-23 10:01:56'),(183,13,'[{\"pwa_url\": \"https://www.youtube.com/\"}]',227,1,0,'2021-02-23 10:24:16',0,'2021-02-23 10:24:16'),(188,14,'{\"tap_url\": [\"www.pendgold.com\", \"www.goole.com\"]}',229,1,0,'2021-03-04 12:13:13',0,'2021-03-04 18:20:17');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `pk_role_id` bigint NOT NULL AUTO_INCREMENT,
  `role` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `role_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_by` bigint DEFAULT NULL,
  `modified_on` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Role master';

/*Data for the table `role` */

insert  into `role`(`pk_role_id`,`role`,`role_name`,`status`,`created_by`,`created_on`,`modified_by`,`modified_on`) values (1,'account_manager','Account Manager',1,0,'2020-10-19 12:56:13',0,'2020-10-19 12:56:13'),(2,'creator','Creator',1,0,'2020-12-04 06:07:21',0,'2020-12-04 06:07:21'),(3,'admin','Admin',1,0,'2020-12-04 06:07:21',0,'2020-12-04 06:07:21');

/*Table structure for table `roll` */

DROP TABLE IF EXISTS `roll`;

CREATE TABLE `roll` (
  `pk_roll_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `fk_tag_master_id` bigint unsigned NOT NULL,
  `vendor_roll` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `total_tag` int unsigned NOT NULL,
  `fk_brand_id` bigint DEFAULT NULL,
  `fk_campaign_id` bigint DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `created_by` bigint DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` bigint DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_roll_id`),
  UNIQUE KEY `vendor_roll_UNIQUE` (`vendor_roll`),
  KEY `fk_tag_master_id_idx` (`fk_tag_master_id`),
  KEY `fk_brand_id_idx` (`fk_brand_id`),
  KEY `fk_campaign_id_idx` (`fk_campaign_id`),
  CONSTRAINT `fk_brand_id` FOREIGN KEY (`fk_brand_id`) REFERENCES `brand` (`pk_brand_id`),
  CONSTRAINT `fk_campaign_id` FOREIGN KEY (`fk_campaign_id`) REFERENCES `campaign` (`pk_campaign_id`),
  CONSTRAINT `fk_tag_master_id` FOREIGN KEY (`fk_tag_master_id`) REFERENCES `tag_master` (`pk_tag_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3664 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `roll` */

insert  into `roll`(`pk_roll_id`,`fk_tag_master_id`,`vendor_roll`,`total_tag`,`fk_brand_id`,`fk_campaign_id`,`status`,`created_by`,`created_on`,`modified_by`,`modified_on`) values (492,2,'roll_12345722',90,101,217,1,NULL,'2021-01-06 09:36:48',NULL,'2021-02-19 06:33:21'),(494,2,'roll_12345724',90,101,226,1,NULL,'2021-01-06 09:36:48',NULL,'2021-02-23 10:01:56'),(495,2,'roll_12345725',90,99,219,1,NULL,'2021-01-06 09:36:48',NULL,'2021-02-23 05:09:05'),(496,2,'roll_12345726',90,101,220,1,NULL,'2021-01-06 09:36:48',NULL,'2021-02-18 09:07:41'),(500,2,'roll_12345730',90,100,NULL,1,NULL,'2021-01-06 09:36:48',NULL,'2021-02-23 05:00:29'),(501,2,'roll_12345731',90,101,221,1,NULL,'2021-01-06 09:36:48',NULL,'2021-02-18 11:02:35'),(502,2,'roll_12345732',90,101,222,1,NULL,'2021-01-06 09:36:48',NULL,'2021-02-18 11:08:54'),(503,2,'roll_12345733',90,102,NULL,1,NULL,'2021-01-06 09:36:48',NULL,'2021-02-19 11:48:30'),(506,2,'roll_12345736',90,103,NULL,1,NULL,'2021-01-06 09:36:48',NULL,'2021-02-19 10:20:19'),(507,2,'roll_12345737',90,103,NULL,1,NULL,'2021-01-06 09:36:48',NULL,'2021-02-19 10:20:19'),(3123,3,'roll_12345900',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3124,3,'roll_12345901',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3125,3,'roll_12345902',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3126,3,'roll_12345903',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3127,3,'roll_12345904',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3128,3,'roll_12345905',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3129,3,'roll_12345906',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3130,3,'roll_12345907',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3131,3,'roll_12345908',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3132,3,'roll_12345909',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3133,3,'roll_12345910',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3134,3,'roll_12345911',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3135,3,'roll_12345912',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3136,3,'roll_12345913',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3137,3,'roll_12345914',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3138,3,'roll_12345915',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3139,3,'roll_12345916',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3140,3,'roll_12345917',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3141,3,'roll_12345918',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3142,3,'roll_12345919',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3143,3,'roll_12345920',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3144,3,'roll_12345921',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3145,3,'roll_12345922',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3146,3,'roll_12345923',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3147,3,'roll_12345924',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3148,3,'roll_12345925',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3149,3,'roll_12345926',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3150,3,'roll_12345927',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3151,3,'roll_12345928',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3152,3,'roll_12345930',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3153,3,'roll_12345929',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3154,3,'roll_12345931',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3155,3,'roll_12345932',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3156,3,'roll_12345933',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3157,3,'roll_12345934',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3158,3,'roll_12345935',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3159,3,'roll_12345936',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3160,3,'roll_12345937',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3161,3,'roll_12345938',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3162,3,'roll_12345940',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3163,3,'roll_12345939',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3164,3,'roll_12345941',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3165,3,'roll_12345942',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3166,3,'roll_12345944',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3167,3,'roll_12345943',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3168,3,'roll_12345945',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3169,3,'roll_12345946',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3170,3,'roll_12345947',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3171,3,'roll_12345948',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3172,3,'roll_12345949',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3173,3,'roll_12345950',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3174,3,'roll_12345951',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3175,3,'roll_12345952',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3176,3,'roll_12345953',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3177,3,'roll_12345954',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3178,3,'roll_12345955',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3179,3,'roll_12345956',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3180,3,'roll_12345957',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3181,3,'roll_12345959',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3182,3,'roll_12345958',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3183,3,'roll_12345960',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3184,3,'roll_12345961',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3185,3,'roll_12345962',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3186,3,'roll_12345963',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3187,3,'roll_12345964',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3188,3,'roll_12345965',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3189,3,'roll_12345966',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3190,3,'roll_12345967',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3191,3,'roll_12345969',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3192,3,'roll_12345968',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3193,3,'roll_12345970',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3194,3,'roll_12345971',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3195,3,'roll_12345973',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3196,3,'roll_12345972',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3197,3,'roll_12345974',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3198,3,'roll_12345975',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3199,3,'roll_12345976',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3200,3,'roll_12345977',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3201,3,'roll_12345978',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3202,3,'roll_12345979',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3203,3,'roll_12345980',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3204,3,'roll_12345981',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3205,3,'roll_12345982',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3206,3,'roll_12345983',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3207,3,'roll_12345984',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3208,3,'roll_12345985',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3209,3,'roll_12345987',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3210,3,'roll_12345986',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3211,3,'roll_12345988',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3212,3,'roll_12345989',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3213,3,'roll_12345990',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3214,3,'roll_12345991',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3215,3,'roll_12345992',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3216,3,'roll_12345993',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3217,3,'roll_12345994',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3218,3,'roll_12345995',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3219,3,'roll_12345996',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3220,3,'roll_12345997',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3221,3,'roll_12345998',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3222,3,'roll_12345999',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3223,3,'roll_12346000',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3224,3,'roll_12346001',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3225,3,'roll_12346002',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3226,3,'roll_12346003',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3227,3,'roll_12346004',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3228,3,'roll_12346005',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3229,3,'roll_12346006',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3230,3,'roll_12346007',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3231,3,'roll_12346008',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3232,3,'roll_12346009',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3233,3,'roll_12346010',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3234,3,'roll_12346011',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3235,3,'roll_12346012',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3236,3,'roll_12346013',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3237,3,'roll_12346014',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3238,3,'roll_12346016',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3239,3,'roll_12346015',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3240,3,'roll_12346017',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3241,3,'roll_12346018',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3242,3,'roll_12346020',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3243,3,'roll_12346019',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3244,3,'roll_12346022',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3245,3,'roll_12346021',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3246,3,'roll_12346023',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3247,3,'roll_12346024',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3248,3,'roll_12346025',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3249,3,'roll_12346026',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3250,3,'roll_12346027',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3251,3,'roll_12346028',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3252,3,'roll_12346029',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3253,3,'roll_12346030',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3254,3,'roll_12346031',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3255,3,'roll_12346032',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3256,3,'roll_12346033',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3257,3,'roll_12346034',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3258,3,'roll_12346035',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3259,3,'roll_12346036',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3260,3,'roll_12346037',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3261,3,'roll_12346038',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3262,3,'roll_12346039',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3263,3,'roll_12346040',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3264,3,'roll_12346041',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3265,3,'roll_12346042',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3266,3,'roll_12346043',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3267,3,'roll_12346044',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3268,3,'roll_12346045',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3269,3,'roll_12346046',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3270,3,'roll_12346047',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3271,3,'roll_12346048',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3272,3,'roll_12346049',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3273,3,'roll_12346050',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3274,3,'roll_12346051',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3275,3,'roll_12346052',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3276,3,'roll_12346053',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3277,3,'roll_12346054',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3278,3,'roll_12346055',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3279,3,'roll_12346056',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3280,3,'roll_12346057',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3281,3,'roll_12346058',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3282,3,'roll_12346059',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3283,3,'roll_12346060',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3284,3,'roll_12346061',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3285,3,'roll_12346062',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3286,3,'roll_12346063',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3287,3,'roll_12346064',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3288,3,'roll_12346065',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3289,3,'roll_12346066',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3290,3,'roll_12346067',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3291,3,'roll_12346068',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3292,3,'roll_12346069',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3293,3,'roll_12346070',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3294,3,'roll_12346071',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3295,3,'roll_12346072',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3296,3,'roll_12346073',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3297,3,'roll_12346074',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3298,3,'roll_12346075',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3299,3,'roll_12346076',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3300,3,'roll_12346077',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3301,3,'roll_12346078',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3302,3,'roll_12346079',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3303,3,'roll_12346080',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3304,3,'roll_12346081',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3305,3,'roll_12346082',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3306,3,'roll_12346083',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3307,3,'roll_12346084',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3308,3,'roll_12346085',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3309,3,'roll_12346086',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3310,3,'roll_12346087',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3311,3,'roll_12346088',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3312,3,'roll_12346089',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3313,3,'roll_12346090',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3314,3,'roll_12346091',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3315,3,'roll_12346092',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3316,3,'roll_12346093',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3317,3,'roll_12346094',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3318,3,'roll_12346095',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3319,3,'roll_12346096',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3320,3,'roll_12346097',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3321,3,'roll_12346098',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3322,3,'roll_12346099',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3323,3,'roll_12346100',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3324,3,'roll_12346101',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3325,3,'roll_12346102',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3326,3,'roll_12346103',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3327,3,'roll_12346104',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3328,3,'roll_12346105',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3329,3,'roll_12346106',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3330,3,'roll_12346107',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3331,3,'roll_12346108',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3332,3,'roll_12346109',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3333,3,'roll_12346110',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3334,3,'roll_12346111',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3335,3,'roll_12346112',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3336,3,'roll_12346113',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3337,3,'roll_12346114',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3338,3,'roll_12346115',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3339,3,'roll_12346116',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3340,3,'roll_12346117',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3341,3,'roll_12346118',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3342,3,'roll_12346119',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3343,3,'roll_12346120',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3344,3,'roll_12346121',9,NULL,NULL,1,NULL,'2021-03-18 21:05:53',NULL,'2021-03-18 21:05:53'),(3514,4,'EDU_001',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3515,4,'EDU_002',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3516,4,'EDU_003',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3517,4,'EDU_004',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3518,4,'EDU_005',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3519,4,'EDU_006',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3520,4,'EDU_007',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3521,4,'EDU_008',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3522,4,'EDU_009',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3523,4,'EDU_010',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3524,4,'EDU_011',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3525,4,'EDU_012',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3526,4,'EDU_013',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3527,4,'EDU_014',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3528,4,'EDU_015',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3529,4,'EDU_016',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3530,4,'EDU_017',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3531,4,'EDU_018',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3532,4,'EDU_019',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3533,4,'EDU_020',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3534,4,'EDU_021',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3535,4,'EDU_022',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3536,4,'EDU_023',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3537,4,'EDU_024',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3538,4,'EDU_025',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3539,4,'EDU_026',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3540,4,'EDU_027',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3541,4,'EDU_028',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3542,4,'EDU_029',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3543,4,'EDU_030',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3544,4,'EDU_031',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3545,4,'EDU_032',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3546,4,'EDU_033',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3547,4,'EDU_034',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3548,4,'EDU_035',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3549,4,'EDU_036',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3550,4,'EDU_037',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3551,4,'EDU_038',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3552,4,'EDU_039',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3553,4,'EDU_040',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3554,4,'EDU_041',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3555,4,'EDU_042',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3556,4,'EDU_043',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3557,4,'EDU_044',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3558,4,'EDU_045',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3559,4,'EDU_046',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3560,4,'EDU_047',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3561,4,'EDU_048',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3562,4,'EDU_049',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3563,4,'EDU_050',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3564,4,'INT_001',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3565,4,'INT_002',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3566,4,'INT_003',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3567,4,'INT_004',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3568,4,'INT_005',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3569,4,'INT_006',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3570,4,'INT_007',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3571,4,'INT_008',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3572,4,'INT_009',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3573,4,'INT_010',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3574,4,'INT_011',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3575,4,'INT_012',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3576,4,'INT_013',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3577,4,'INT_014',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3578,4,'INT_015',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3579,4,'INT_016',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3580,4,'INT_017',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3581,4,'INT_018',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3582,4,'INT_019',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3583,4,'INT_020',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3584,4,'INT_021',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3585,4,'INT_022',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3586,4,'INT_023',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3587,4,'INT_024',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3588,4,'INT_025',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3589,4,'INT_026',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3590,4,'INT_027',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3591,4,'INT_028',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3592,4,'INT_029',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3593,4,'INT_030',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3594,4,'INT_031',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3595,4,'INT_032',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3596,4,'INT_033',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3597,4,'INT_034',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3598,4,'INT_035',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3599,4,'INT_036',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3600,4,'INT_037',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3601,4,'INT_038',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3602,4,'INT_039',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3603,4,'INT_040',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3604,4,'INT_041',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3605,4,'INT_042',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3606,4,'INT_043',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3607,4,'INT_044',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3608,4,'INT_045',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3609,4,'INT_046',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3610,4,'INT_047',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3611,4,'INT_048',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3612,4,'INT_049',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3613,4,'INT_050',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3614,4,'QUIZ_001',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3615,4,'QUIZ_002',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3616,4,'QUIZ_003',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3617,4,'QUIZ_004',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3618,4,'QUIZ_005',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3619,4,'QUIZ_006',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3620,4,'QUIZ_007',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3621,4,'QUIZ_008',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3622,4,'QUIZ_009',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3623,4,'QUIZ_010',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3624,4,'QUIZ_011',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3625,4,'QUIZ_012',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3626,4,'QUIZ_013',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3627,4,'QUIZ_014',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3628,4,'QUIZ_015',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3629,4,'QUIZ_016',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3630,4,'QUIZ_017',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3631,4,'QUIZ_018',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3632,4,'QUIZ_019',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3633,4,'QUIZ_020',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3634,4,'QUIZ_021',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3635,4,'QUIZ_022',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3636,4,'QUIZ_023',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3637,4,'QUIZ_024',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3638,4,'QUIZ_025',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3639,4,'QUIZ_026',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3640,4,'QUIZ_027',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3641,4,'QUIZ_028',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3642,4,'QUIZ_029',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3643,4,'QUIZ_030',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3644,4,'QUIZ_031',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3645,4,'QUIZ_032',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3646,4,'QUIZ_033',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3647,4,'QUIZ_034',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3648,4,'QUIZ_035',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3649,4,'QUIZ_036',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3650,4,'QUIZ_037',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3651,4,'QUIZ_038',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3652,4,'QUIZ_039',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3653,4,'QUIZ_040',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3654,4,'QUIZ_041',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3655,4,'QUIZ_042',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3656,4,'QUIZ_043',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3657,4,'QUIZ_044',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3658,4,'QUIZ_045',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3659,4,'QUIZ_046',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3660,4,'QUIZ_047',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3661,4,'QUIZ_048',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3662,4,'QUIZ_049',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46'),(3663,4,'QUIZ_050',100,NULL,NULL,1,NULL,'2021-03-18 23:27:46',NULL,'2021-03-18 23:27:46');

/*Table structure for table `sku_campaign_mapping` */

DROP TABLE IF EXISTS `sku_campaign_mapping`;

CREATE TABLE `sku_campaign_mapping` (
  `pk_sku_cam_id` bigint NOT NULL AUTO_INCREMENT,
  `fk_campaign_id` bigint NOT NULL,
  `fk_sku_product_trn_id` bigint NOT NULL,
  `status` tinyint DEFAULT '1',
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` bigint DEFAULT NULL,
  `modified_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_sku_cam_id`),
  KEY `fk_campaign_sc_idx` (`fk_campaign_id`),
  KEY `fk_sku_product_sc_idx` (`fk_sku_product_trn_id`),
  CONSTRAINT `fk_campaign_sc` FOREIGN KEY (`fk_campaign_id`) REFERENCES `campaign` (`pk_campaign_id`),
  CONSTRAINT `fk_sku_product_sc` FOREIGN KEY (`fk_sku_product_trn_id`) REFERENCES `sku_product_mapping` (`pk_sku_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SKU and Comapaign mapping';

/*Data for the table `sku_campaign_mapping` */

/*Table structure for table `sku_product_mapping` */

DROP TABLE IF EXISTS `sku_product_mapping`;

CREATE TABLE `sku_product_mapping` (
  `pk_sku_product_id` bigint NOT NULL AUTO_INCREMENT,
  `sku_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `sku` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `sku_url` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sku_price` decimal(10,2) DEFAULT NULL,
  `fk_product_id` bigint DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` bigint DEFAULT NULL,
  `modified_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_sku_product_id`),
  KEY `fk_product_c_idx` (`fk_product_id`),
  CONSTRAINT `fk_product_c` FOREIGN KEY (`fk_product_id`) REFERENCES `product` (`pk_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SKU and product transaction';

/*Data for the table `sku_product_mapping` */

insert  into `sku_product_mapping`(`pk_sku_product_id`,`sku_name`,`sku`,`sku_url`,`sku_price`,`fk_product_id`,`status`,`created_by`,`created_on`,`modified_by`,`modified_on`) values (193,'TATA Tiago XE','TATA Tiago ','https://cars.tatamotors.com/cars/tiago','4000.00',123,1,0,'2021-02-17 12:14:28',0,'2021-02-17 12:15:06'),(194,'TATA Tiago XZ+','TATA Tiago Next Version','https://cars.tatamotors.com/cars/tiago','1500.00',123,1,0,'2021-02-17 12:14:28',0,'2021-02-17 12:15:06'),(195,'TATA Altroz XZ+iTurbo','TATA Altroz ','https://cars.tatamotors.com/cars/altroz','4090.00',124,1,0,'2021-02-17 12:28:52',0,'2021-02-17 12:29:12'),(196,'TATA Altroz XZ+','TATA Altroz next model','https://cars.tatamotors.com/cars/altroz','100.00',124,1,0,'2021-02-17 12:28:52',0,'2021-02-17 12:29:12'),(197,'TATA Harrier XZ+iTurbo','TATA Harrier ','https://cars.tatamotors.com/suv/harrier','1244.00',125,1,0,'2021-02-17 12:32:11',0,'2021-02-18 10:19:29'),(198,'SKU Name for Product 1ws','SKU for Product 11',NULL,NULL,126,1,0,'2021-02-18 07:21:35',0,'2021-02-18 07:21:35'),(199,'TATA Harrier XZ+iTurbo Plus','TATA Harrier Plus','https://cars.tatamotors.com/suv/harrier','2000.00',125,1,0,'2021-02-18 10:19:29',0,'2021-02-18 10:19:29'),(200,'asdasd','200 gm','http://d1x6f6lmw6hmdy.cloudfront.net/#/brands/product-add','1.00',127,1,0,'2021-02-19 11:42:16',0,'2021-02-19 11:42:16');

/*Table structure for table `tag_master` */

DROP TABLE IF EXISTS `tag_master`;

CREATE TABLE `tag_master` (
  `pk_tag_master_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `generation_id` varchar(20) NOT NULL,
  `vendor_email` varchar(320) DEFAULT NULL,
  `received_on` datetime DEFAULT NULL,
  `mode` bigint DEFAULT NULL,
  `tag_generated` int unsigned NOT NULL,
  `status` tinyint unsigned DEFAULT '1',
  `created_by` bigint DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` bigint DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_tag_master_id`),
  UNIQUE KEY `generation_id_UNIQUE` (`generation_id`),
  KEY `mode_idx` (`mode`),
  CONSTRAINT `mode` FOREIGN KEY (`mode`) REFERENCES `lookup` (`pk_lookup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `tag_master` */

insert  into `tag_master`(`pk_tag_master_id`,`generation_id`,`vendor_email`,`received_on`,`mode`,`tag_generated`,`status`,`created_by`,`created_on`,`modified_by`,`modified_on`) values (1,'TAG-26-NOV-600000',NULL,'2020-12-21 12:37:26',23,600000,1,NULL,'2020-12-16 16:44:22',NULL,'2020-12-21 07:07:25'),(2,'TAG-18-DEC-500000','','2021-01-06 09:36:48',23,500000,1,0,'2020-12-16 17:44:22',0,'2021-01-06 09:36:48'),(3,'TAG-18-FEB-2000',NULL,'2021-03-19 02:35:54',23,2000,1,NULL,'2021-02-18 13:00:03',NULL,'2021-03-18 21:05:53'),(4,'TAG-18-FEB-20000',NULL,'2021-03-19 04:57:47',23,2000,1,NULL,'2021-02-19 10:23:00',NULL,'2021-03-18 23:27:47');

/*Table structure for table `tbl_lookup_mst` */

DROP TABLE IF EXISTS `tbl_lookup_mst`;

CREATE TABLE `tbl_lookup_mst` (
  `pk_lookup_id` bigint NOT NULL,
  `key` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `value` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_by` bigint DEFAULT NULL,
  `modified_on` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_lookup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Lookup master which contains metadata';

/*Data for the table `tbl_lookup_mst` */

insert  into `tbl_lookup_mst`(`pk_lookup_id`,`key`,`value`,`status`,`created_by`,`created_on`,`modified_by`,`modified_on`) values (1,'vertical','food',1,NULL,'2020-10-14 18:13:12',NULL,'2020-10-14 18:13:12'),(2,'vertical','beverages',1,NULL,'2020-10-14 18:14:15',NULL,'2020-10-14 18:14:15'),(3,'vertical','retail',1,NULL,'2020-10-14 18:15:23',NULL,'2020-10-14 18:15:23'),(4,'vertical','fashion',1,NULL,'2020-10-14 18:16:36',NULL,'2020-10-14 18:16:36'),(5,'vertical','electronics',1,NULL,'2020-10-14 18:17:28',NULL,'2020-10-14 18:17:28'),(6,'vertical','healthcare',1,NULL,'2020-10-16 15:25:01',NULL,'2020-10-16 15:25:01');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `pk_token_id` bigint NOT NULL AUTO_INCREMENT,
  `fk_user_id` bigint NOT NULL,
  `token` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `expirydate` datetime NOT NULL,
  `status` tinyint DEFAULT '1',
  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_on` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_token_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Token Master';

/*Data for the table `token` */

insert  into `token`(`pk_token_id`,`fk_user_id`,`token`,`expirydate`,`status`,`created_on`,`modified_on`) values (1,6,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo2LCJyb2xlX2lkIjozLCJyb2xlIjoiYWRtaW4iLCJmaXJzdG5hbWUiOiJBcmlmIiwibGFzdG5hbWUiOiJSYXRob2QiLCJlbWFpbCI6ImFyaWZyYXRob2Q3QGdtYWlsLmNvbSIsImNvbnRhY3Rfbm8iOjk5NzgzNTAzMjcsImltYWdlIjoiMTYxMTgyNzY3MTgxM1BSS','2021-03-20 14:33:42',1,'2020-11-04 12:59:51','2021-03-19 14:33:42'),(2,16,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxNiwicm9sZV9pZCI6MSwicm9sZSI6ImFjY291bnRfbWFuYWdlciIsImZpcnN0bmFtZSI6InJ1dHUiLCJsYXN0bmFtZSI6InNvbGFua2kiLCJlbWFpbCI6InJ1dHUxMjFAZ21haWwuY29tIiwiaXNfdmVyaWZpZWQiOjAsInN0YXR1cyI6MSwiaXNfZmlyc3R0aW1lX','2020-12-17 08:58:07',1,'2020-11-04 13:11:09','2020-12-16 08:58:06'),(3,81,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo4MSwicm9sZV9pZCI6MSwicm9sZSI6ImFjY291bnRfbWFuYWdlciIsImZpcnN0bmFtZSI6ImRpZ2ljb3JwIiwibGFzdG5hbWUiOiJhY2NvdW50TWFuYWdlciIsImVtYWlsIjoibWFoYW1hZGFyaWYucmF0aG9kMTIzQGRpZ2ktY29ycC5jb20iLCJjb250YWN0X25vI','2021-01-21 07:22:28',1,'2020-12-24 11:29:09','2021-01-20 07:22:28'),(4,83,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo4Mywicm9sZV9pZCI6Miwicm9sZSI6ImNyZWF0b3IiLCJmaXJzdG5hbWUiOiJEaWdpY29ycCIsImxhc3RuYW1lIjoiQ3JlYXRvciIsImVtYWlsIjoicmlmazcxMTNAZ21haWwuY29tIiwiY29udGFjdF9ubyI6MTIzNDU2Nzg5OSwiaW1hZ2UiOm51bGwsImlzX3Zlc','2021-01-20 14:25:00',1,'2020-12-24 13:34:26','2021-01-19 14:25:00'),(5,84,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo4NCwicm9sZV9pZCI6Mywicm9sZSI6ImFkbWluIiwiZmlyc3RuYW1lIjoiU3VkYXJzYW4iLCJsYXN0bmFtZSI6IktoYW4iLCJlbWFpbCI6InN1ZGFyc2FuLmtoYW5AZGlnaS1jb3JwLmNvbSIsImNvbnRhY3Rfbm8iOjYyOTUyNzc4NDAsImltYWdlIjoiMTYwOTgyM','2021-01-20 07:50:55',1,'2020-12-28 07:16:31','2021-01-19 07:50:54'),(6,85,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo4NSwicm9sZV9pZCI6Miwicm9sZSI6ImNyZWF0b3IiLCJmaXJzdG5hbWUiOiJTdWRhcnNhbiIsImxhc3RuYW1lIjoiS2hhbiIsImVtYWlsIjoia2hhbnN1ZGFyc2FuQGdtYWlsLmNvbSIsImNvbnRhY3Rfbm8iOjYyOTUyNzc4NDAsImltYWdlIjpudWxsLCJpc192Z','2020-12-29 13:35:11',1,'2020-12-28 13:09:13','2020-12-28 13:35:11'),(7,89,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo4OSwicm9sZV9pZCI6MSwicm9sZSI6ImFjY291bnRfbWFuYWdlciIsImZpcnN0bmFtZSI6ImFyaWYiLCJsYXN0bmFtZSI6ImtoYW4iLCJlbWFpbCI6Im1haGFtYWRhcmlmLnJhdGhvZEBkaWdpLWNvcnAuY29tIiwiY29udGFjdF9ubyI6OTk3ODM1MDMyNywiaW1hZ','2020-12-29 15:46:06',1,'2020-12-28 15:46:06','2020-12-28 15:46:06'),(8,72,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo3Miwicm9sZV9pZCI6MSwicm9sZSI6ImFjY291bnRfbWFuYWdlciIsImZpcnN0bmFtZSI6Ik1hbmlzaCIsImxhc3RuYW1lIjoiQmhhdm5hbmkiLCJlbWFpbCI6Im1hbmlzaC5iaGF2bmFuaUBkaWdpLWNvcnAuY29tIiwiY29udGFjdF9ubyI6ODg5OTk5OTk5OSwia','2021-01-19 07:03:13',1,'2020-12-30 07:29:40','2021-01-18 07:03:13'),(9,105,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMDUsInJvbGVfaWQiOjIsInJvbGUiOiJjcmVhdG9yIiwiZmlyc3RuYW1lIjoiQXJpZiIsImxhc3RuYW1lIjoicmF0aG9kIiwiZW1haWwiOiJhcmlmLXRlc3RAbWFpbGluYXRvci5jb20iLCJjb250YWN0X25vIjoxMjM0NTY3ODk5LCJpbWFnZSI6bnVsbCwiaXNfd','2021-01-08 06:12:18',1,'2020-12-30 15:32:50','2021-01-07 06:12:18'),(10,106,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMDYsInJvbGVfaWQiOjEsInJvbGUiOiJhY2NvdW50X21hbmFnZXIiLCJmaXJzdG5hbWUiOiJTYW5rZXQiLCJsYXN0bmFtZSI6IlBhdGVsIiwiZW1haWwiOiJzYW5rZXQucGF0ZWxAZGlnaS1jb3JwLmNvbSIsImNvbnRhY3Rfbm8iOjEyMzQ1Njc4OTksImltYWdlI','2021-01-20 13:31:32',1,'2020-12-31 06:03:17','2021-01-19 13:31:31'),(11,109,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMDksInJvbGVfaWQiOjIsInJvbGUiOiJjcmVhdG9yIiwiZmlyc3RuYW1lIjoiU2Fua2V0IiwibGFzdG5hbWUiOiJQYXRlbCIsImVtYWlsIjoic2Fua2V0a3BAZ21haWwuY29tIiwiY29udGFjdF9ubyI6MTIzNDU2Nzg5NCwiaW1hZ2UiOm51bGwsImlzX3Zlcmlma','2021-01-01 18:40:09',1,'2020-12-31 13:50:35','2020-12-31 18:40:09'),(12,13,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMywicm9sZV9pZCI6Mywicm9sZSI6ImFkbWluIiwiZmlyc3RuYW1lIjoic2FteWEgIiwibGFzdG5hbWUiOiJTaGFoIiwiZW1haWwiOiJzYW15YS5zaGFoQGRpZ2ktY29ycC5jb20iLCJjb250YWN0X25vIjoyMzQ1Njc4OTA5LCJpbWFnZSI6IjE2MTE4MjYyMDU4O','2021-02-27 06:13:17',1,'2021-01-01 07:33:44','2021-02-26 06:13:17'),(13,17,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxNywicm9sZV9pZCI6MSwicm9sZSI6ImFjY291bnRfbWFuYWdlciIsImZpcnN0bmFtZSI6IkFCQyBGbmFtZSIsImxhc3RuYW1lIjoiQUJDIGxuYW1lIiwiZW1haWwiOiJhYmMxMjNAZ21haWwuY29tIiwiY29udGFjdF9ubyI6MTIzNDU2Nzg5MCwiaW1hZ2UiOm51b','2021-01-02 13:04:00',1,'2021-01-01 13:03:59','2021-01-01 13:03:59'),(14,14,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxNCwicm9sZV9pZCI6Miwicm9sZSI6ImNyZWF0b3IiLCJmaXJzdG5hbWUiOiJBcmlmIiwibGFzdG5hbWUiOiJLaGFuIiwiZW1haWwiOiJhYmNAZ21haWwuY29tIiwiY29udGFjdF9ubyI6OTk3ODM1MDMyNywiaW1hZ2UiOm51bGwsImlzX3ZlcmlmaWVkIjoxLCJzd','2021-01-02 13:04:51',1,'2021-01-01 13:04:50','2021-01-01 13:04:50'),(15,122,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMjIsInJvbGVfaWQiOjEsInJvbGUiOiJhY2NvdW50X21hbmFnZXIiLCJmaXJzdG5hbWUiOiJUZXN0IiwibGFzdG5hbWUiOiJNYW5hZ2VyIiwiZW1haWwiOiJ0ZXN0X21hbmFnZXJAbWFpbGluYXRvci5jb20iLCJjb250YWN0X25vIjo5Nzc4OTc4OTc4LCJpbWFnZ','2021-01-14 07:53:52',1,'2021-01-12 08:39:47','2021-01-13 07:53:52'),(16,123,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMjMsInJvbGVfaWQiOjEsInJvbGUiOiJhY2NvdW50X21hbmFnZXIiLCJmaXJzdG5hbWUiOiJ0ZXN0IiwibGFzdG5hbWUiOiJtYW5hZ2VyIiwiZW1haWwiOiJ0ZXN0MV9tYW5hZ2VyQG1haWxpbmF0b3IuY29tIiwiY29udGFjdF9ubyI6ODc4OTM3Mjg5NiwiaW1hZ','2021-01-13 11:29:27',1,'2021-01-12 11:29:27','2021-01-12 11:29:27'),(17,125,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMjUsInJvbGVfaWQiOjIsInJvbGUiOiJjcmVhdG9yIiwiZmlyc3RuYW1lIjoiTmV3ICIsImxhc3RuYW1lIjoiVXNlciIsImVtYWlsIjoidXNlcl9icmFuZEBtYWlsaW5hdG9yLmNvbSIsImNvbnRhY3Rfbm8iOjc2NTg3Njk1NjQsImltYWdlIjpudWxsLCJpc192Z','2021-01-14 07:58:27',1,'2021-01-12 11:58:22','2021-01-13 07:58:27'),(18,136,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMzYsInJvbGVfaWQiOjEsInJvbGUiOiJhY2NvdW50X21hbmFnZXIiLCJmaXJzdG5hbWUiOiJBY2NvdW50IE1hbmFnZXIiLCJsYXN0bmFtZSI6IlRBVEEgR3JvdXAiLCJlbWFpbCI6ImFjY291bnQubWFuYWdlcl90YXRhZ3JvdXBAbWFpbGluYXRvci5jb20iLCJjb','2021-02-09 07:54:13',1,'2021-01-27 11:55:37','2021-02-08 07:54:13'),(19,138,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMzgsInJvbGVfaWQiOjIsInJvbGUiOiJjcmVhdG9yIiwiZmlyc3RuYW1lIjoidXNlciIsImxhc3RuYW1lIjoiVEFUQSBNb3RvciIsImVtYWlsIjoidXNlci50YXRhbW90b3JAbWFpbGluYXRvci5jb20iLCJjb250YWN0X25vIjoxMjEyMTMyMzEyLCJpbWFnZSI6b','2021-02-10 12:17:38',1,'2021-01-28 08:37:52','2021-02-09 12:17:38'),(20,139,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMzksInJvbGVfaWQiOjIsInJvbGUiOiJjcmVhdG9yIiwiZmlyc3RuYW1lIjoidGVzdCIsImxhc3RuYW1lIjoidXNlciIsImVtYWlsIjoidXNlcl9icmFuZEBtYWlsaW5hdG9yLmNvbSIsImNvbnRhY3Rfbm8iOjQ4OTY0ODk1NjEsImltYWdlIjpudWxsLCJpc192Z','2021-02-17 11:26:34',1,'2021-02-16 11:26:34','2021-02-16 11:26:34'),(21,140,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxNDAsInJvbGVfaWQiOjIsInJvbGUiOiJjcmVhdG9yIiwiZmlyc3RuYW1lIjoiU2Fua2V0IiwibGFzdG5hbWUiOiJQYXRlbCIsImVtYWlsIjoic2Fua2V0LnBhdGVsQGRpZ2ktY29ycC5jb20iLCJjb250YWN0X25vIjoxMjM0NTY3ODksImltYWdlIjpudWxsLCJpc','2021-02-24 16:12:25',1,'2021-02-23 16:12:25','2021-02-23 16:12:25'),(22,141,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxNDEsInJvbGVfaWQiOjIsInJvbGUiOiJjcmVhdG9yIiwiZmlyc3RuYW1lIjoiVXNlciIsImxhc3RuYW1lIjoiVEFUQSBtb3RvciIsImVtYWlsIjoidXNlci50YXRhbW90b3JAbWFpbGluYXRvci5jb20iLCJjb250YWN0X25vIjoxMjEyMTMyMzEyLCJpbWFnZSI6b','2021-02-27 06:15:34',1,'2021-02-26 06:15:33','2021-02-26 06:15:33'),(23,142,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxNDIsInJvbGVfaWQiOjEsInJvbGUiOiJhY2NvdW50X21hbmFnZXIiLCJmaXJzdG5hbWUiOiJNYW5pc2giLCJsYXN0bmFtZSI6IkJoYXZuYW5pIiwiZW1haWwiOiJtYW5pc2guYmhhdm5hbmlAZGlnaS1jb3JwLmNvbSIsImNvbnRhY3Rfbm8iOjk4ODg4ODg4ODgsI','2021-03-17 06:28:34',1,'2021-03-16 06:28:31','2021-03-16 06:28:34');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `pk_user_id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `first_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `last_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `contact_no` bigint NOT NULL,
  `is_verified` tinyint DEFAULT '0',
  `fk_role_id` bigint NOT NULL,
  `is_firsttime_login` tinyint DEFAULT '1',
  `is_reset_password` tinyint DEFAULT '0',
  `status` tinyint DEFAULT '1',
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` bigint DEFAULT NULL,
  `modified_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_user_id`),
  KEY `fk_role_u_idx` (`fk_role_id`),
  CONSTRAINT `fk_role_u` FOREIGN KEY (`fk_role_id`) REFERENCES `role` (`pk_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User Master';

/*Data for the table `user` */

insert  into `user`(`pk_user_id`,`email`,`first_name`,`last_name`,`password`,`image`,`contact_no`,`is_verified`,`fk_role_id`,`is_firsttime_login`,`is_reset_password`,`status`,`created_by`,`created_on`,`modified_by`,`modified_on`) values (6,'arifrathod7@gmail.com','Arif','Rathod','U2FsdGVkX186d7RDIaizK+XBURKJ2T8096KNphzeIqk=','1611827671813PRI_180244195-640x360.jpg',9978350327,1,3,1,0,1,6,'2020-10-19 17:39:46',6,'2021-01-28 09:54:32'),(13,'samya.shah@digi-corp.com','samya ','Shah','U2FsdGVkX18UsGXe2jC7qTTsunraCD9o4AuTr48cMos=','1611826205882Tata Group Logo.jpg',2345678909,1,3,1,0,1,6,'2020-10-29 12:58:36',6,'2021-01-28 09:33:31'),(140,'sanket.patel@digi-corp.com','Sanket','Patel','U2FsdGVkX1/4ITDr+0TwRcfOPngrYycZi7WvE1iKmes=',NULL,123456789,1,2,0,0,1,6,'2021-02-23 16:10:16',6,'2021-02-23 16:12:15'),(141,'user.tatamotor@mailinator.com','User','TATA motor','U2FsdGVkX1+ZL8nvQgFQowds4itBDN2JpQ+zaVQCLz4=',NULL,1212132312,1,2,0,0,1,13,'2021-02-26 06:14:28',6,'2021-02-26 06:15:18'),(142,'manish.bhavnani@digi-corp.com','Manish','Bhavnani','U2FsdGVkX1/AZQpCX0eiO9VoyU5vtAnI2bMmgtzN7ao=',NULL,9888888888,1,1,0,0,1,6,'2021-03-16 06:27:27',6,'2021-03-16 06:28:25');

/*Table structure for table `vertical_goal_mapping` */

DROP TABLE IF EXISTS `vertical_goal_mapping`;

CREATE TABLE `vertical_goal_mapping` (
  `pk_vertical_goal_map_id` bigint NOT NULL AUTO_INCREMENT,
  `fk_goal_id` bigint NOT NULL,
  `fk_vertical_id` bigint NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_by` bigint DEFAULT NULL,
  `modified_on` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk_vertical_goal_map_id`),
  KEY `fk_status_vg_idx` (`status`),
  KEY `fk_goal_vg_idx` (`fk_goal_id`),
  CONSTRAINT `fk_goal_vg` FOREIGN KEY (`fk_goal_id`) REFERENCES `goal` (`pk_goal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Vertical Goal Mapping';

/*Data for the table `vertical_goal_mapping` */

insert  into `vertical_goal_mapping`(`pk_vertical_goal_map_id`,`fk_goal_id`,`fk_vertical_id`,`status`,`created_by`,`created_on`,`modified_by`,`modified_on`) values (1,6,5,1,0,'2020-10-26 16:48:40',0,'2020-10-26 16:48:40'),(2,7,5,1,0,'2020-12-04 12:06:12',0,'2020-12-04 12:06:12'),(3,2,6,1,NULL,'2020-12-07 11:41:21',NULL,'2020-12-07 11:41:21'),(4,3,6,1,NULL,'2020-12-07 11:41:29',NULL,'2020-12-07 11:41:29'),(5,3,7,1,NULL,'2020-12-07 11:42:00',NULL,'2020-12-07 11:42:00'),(6,5,7,1,NULL,'2020-12-07 11:42:20',NULL,'2020-12-07 11:42:20'),(7,1,11,1,NULL,'2020-12-07 11:42:57',NULL,'2020-12-07 11:42:57'),(8,3,11,1,NULL,'2020-12-07 11:43:10',NULL,'2020-12-07 11:43:10'),(9,2,11,1,NULL,'2020-12-07 11:43:30',NULL,'2020-12-07 11:43:30'),(10,9,26,1,NULL,'2021-02-12 06:18:15',NULL,'2021-02-12 06:18:15'),(11,9,27,1,NULL,'2021-02-12 06:18:15',NULL,'2021-02-12 06:18:15'),(12,9,28,1,NULL,'2021-02-12 06:18:15',NULL,'2021-02-12 06:18:15'),(13,10,26,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(14,10,27,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(15,10,28,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(16,11,26,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(17,11,27,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(18,11,28,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(19,12,26,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(20,12,27,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(21,12,28,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(22,13,26,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(23,13,27,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(24,13,28,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(25,14,26,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(26,14,27,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(27,14,28,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(28,15,26,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(29,15,27,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(30,15,28,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(31,16,26,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(32,16,27,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(33,16,28,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(34,17,26,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(35,17,27,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(36,17,28,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(37,18,26,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(38,18,27,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(39,18,28,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(40,19,26,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(41,19,27,1,NULL,'2021-02-12 06:18:16',NULL,'2021-02-12 06:18:16'),(42,19,28,1,NULL,'2021-02-12 06:18:17',NULL,'2021-02-12 06:18:17'),(43,20,26,1,NULL,'2021-02-12 06:38:01',NULL,'2021-02-12 06:38:01'),(44,20,27,1,NULL,'2021-02-12 06:38:01',NULL,'2021-02-12 06:38:01'),(45,20,28,1,NULL,'2021-02-12 06:38:01',NULL,'2021-02-12 06:38:01'),(46,9,11,1,NULL,'2021-02-12 06:45:40',NULL,'2021-02-12 06:45:40'),(47,10,11,1,NULL,'2021-02-12 06:45:40',NULL,'2021-02-12 06:45:40'),(48,11,11,1,NULL,'2021-02-12 06:45:41',NULL,'2021-02-12 06:45:41'),(49,12,11,1,NULL,'2021-02-12 06:45:41',NULL,'2021-02-12 06:45:41'),(50,13,11,1,NULL,'2021-02-12 06:45:41',NULL,'2021-02-12 06:45:41'),(51,14,11,1,NULL,'2021-02-12 06:45:41',NULL,'2021-02-12 06:45:41'),(52,15,11,1,NULL,'2021-02-12 06:45:41',NULL,'2021-02-12 06:45:41'),(53,16,11,1,NULL,'2021-02-12 06:45:41',NULL,'2021-02-12 06:45:41'),(54,17,11,1,NULL,'2021-02-12 06:45:41',NULL,'2021-02-12 06:45:41'),(55,18,11,1,NULL,'2021-02-12 06:45:41',NULL,'2021-02-12 06:45:41'),(56,19,11,1,NULL,'2021-02-12 06:45:41',NULL,'2021-02-12 06:45:41'),(57,20,11,1,NULL,'2021-02-12 06:45:41',NULL,'2021-02-12 06:45:41');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
