/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.28 : Database - appgl
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`appgl` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `appgl`;

/*Table structure for table `ad_promotion` */

DROP TABLE IF EXISTS `ad_promotion`;

CREATE TABLE `ad_promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appId` int(11) DEFAULT NULL COMMENT 'appid',
  `adPicPath` varchar(100) DEFAULT NULL COMMENT 'ad形象',
  `adPV` int(11) DEFAULT NULL COMMENT 'ad页面浏览数',
  `carouselPosition` int(11) DEFAULT NULL,
  `startTime` datetime DEFAULT NULL COMMENT '开始时间',
  `endTime` datetime DEFAULT NULL COMMENT '结束时间',
  `createdBy` int(11) DEFAULT NULL COMMENT '创建者',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `modifyBy` int(11) DEFAULT NULL COMMENT '修改者',
  `modifyDate` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ad_promotion` */

/*Table structure for table `app_category` */

DROP TABLE IF EXISTS `app_category`;

CREATE TABLE `app_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `categoryCode` varchar(50) DEFAULT NULL COMMENT '类别代码',
  `categoryName` varchar(50) DEFAULT NULL COMMENT '类别名称',
  `parentId` int(11) DEFAULT NULL COMMENT '父节点；编号',
  `createdBy` int(11) DEFAULT NULL COMMENT '创建者',
  `creationTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifyBy` int(11) DEFAULT NULL COMMENT '修改者',
  `modifyDate` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `app_category` */

insert  into `app_category`(`id`,`categoryCode`,`categoryName`,`parentId`,`createdBy`,`creationTime`,`modifyBy`,`modifyDate`) values (1,'yi','全部游戏',NULL,NULL,NULL,NULL,NULL),(2,'yi','全部应用',NULL,NULL,NULL,NULL,NULL),(3,'er','益智游戏',1,NULL,NULL,NULL,NULL),(4,'er','休闲游戏',1,NULL,NULL,NULL,NULL),(5,'er','卡牌游戏',1,NULL,NULL,NULL,NULL),(6,'er','角色游戏',1,NULL,NULL,NULL,NULL),(7,'er','射击游戏',1,NULL,NULL,NULL,NULL),(8,'er','桌面插件',2,NULL,NULL,NULL,NULL),(9,'er','系统工具',2,NULL,NULL,NULL,NULL),(10,'san','文件管理',9,NULL,NULL,NULL,NULL),(11,'san','输入法',9,NULL,NULL,NULL,NULL),(12,'san','安全防护',9,NULL,NULL,NULL,NULL),(13,'san','物理',8,NULL,NULL,NULL,NULL),(14,'san','冒险',3,NULL,NULL,NULL,NULL),(15,'san','射击',3,NULL,NULL,NULL,NULL),(16,'san','角色',3,NULL,NULL,NULL,NULL),(17,'san','卡牌',3,NULL,NULL,NULL,NULL),(18,'san','解迷',3,NULL,NULL,NULL,NULL),(19,'san','哈哈',7,NULL,NULL,NULL,NULL);

/*Table structure for table `app_info` */

DROP TABLE IF EXISTS `app_info`;

CREATE TABLE `app_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `softwareName` varchar(50) DEFAULT NULL COMMENT '软件名称',
  `APKName` varchar(50) DEFAULT NULL COMMENT 'apk名称',
  `supportROM` varchar(50) DEFAULT NULL COMMENT '支持ROM',
  `interfaceLanguage` varchar(50) DEFAULT NULL COMMENT '界面语言',
  `softwareSize` double DEFAULT NULL COMMENT '软件大小',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `devId` int(11) DEFAULT NULL COMMENT '开发者id',
  `appInfo` varchar(255) DEFAULT NULL COMMENT 'app信息',
  `status` int(11) DEFAULT NULL COMMENT '状态id',
  `onSaleDate` datetime DEFAULT NULL COMMENT '上架时间',
  `offSaleDate` datetime DEFAULT NULL COMMENT '下架时间',
  `flatformId` int(11) DEFAULT NULL COMMENT '平台id',
  `categoryLeve13` int(11) DEFAULT NULL COMMENT '类别3',
  `downloads` int(11) DEFAULT NULL COMMENT '下载次数',
  `categoryLeve11` int(11) DEFAULT NULL COMMENT '类别1',
  `categoryLeve12` int(11) DEFAULT NULL COMMENT '类别2',
  `logoPicPath` varchar(255) DEFAULT NULL COMMENT 'logo形象',
  `logoLocPath` varchar(255) DEFAULT NULL COMMENT 'logo路径',
  `versionId` int(11) DEFAULT NULL COMMENT '版本id',
  `createdBy` int(11) DEFAULT NULL COMMENT '创建者',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `modifyBy` int(11) DEFAULT NULL COMMENT '修改者',
  `modifyDate` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `app_info` */

insert  into `app_info`(`id`,`softwareName`,`APKName`,`supportROM`,`interfaceLanguage`,`softwareSize`,`updateDate`,`devId`,`appInfo`,`status`,`onSaleDate`,`offSaleDate`,`flatformId`,`categoryLeve13`,`downloads`,`categoryLeve11`,`categoryLeve12`,`logoPicPath`,`logoLocPath`,`versionId`,`createdBy`,`creationDate`,`modifyBy`,`modifyDate`) values (1,'沙罗','com.sssssf',NULL,NULL,1,NULL,4,NULL,1,NULL,NULL,8,13,20000,1,3,NULL,NULL,1,NULL,NULL,NULL,NULL),(2,'沙罗','com.sssssf',NULL,NULL,2,NULL,4,NULL,2,NULL,NULL,8,13,20000,1,3,NULL,NULL,1,NULL,NULL,NULL,NULL),(3,'沙罗','com.sssssf',NULL,NULL,2,NULL,3,NULL,1,NULL,NULL,8,13,20000,1,3,NULL,NULL,1,NULL,NULL,NULL,NULL),(4,'沙罗','com.sssssf',NULL,NULL,1,NULL,4,NULL,3,NULL,NULL,8,13,20000,1,3,NULL,NULL,1,NULL,NULL,NULL,NULL),(5,'沙罗','com.sssssf',NULL,NULL,1,NULL,4,NULL,1,NULL,NULL,8,13,20000,1,3,NULL,NULL,1,NULL,NULL,NULL,NULL),(6,'沙罗','com.sssssf',NULL,NULL,1,NULL,4,NULL,5,NULL,NULL,8,13,20000,1,3,NULL,NULL,1,NULL,NULL,NULL,NULL),(7,'机器世界','com.saaa',NULL,NULL,5,NULL,3,NULL,3,NULL,NULL,6,14,200,1,3,NULL,NULL,1,NULL,NULL,NULL,NULL),(8,'机器世界','com.saaa',NULL,NULL,5,NULL,3,NULL,3,NULL,NULL,6,14,200,1,3,NULL,NULL,1,NULL,NULL,NULL,NULL),(9,'沙罗','com.sssssf',NULL,NULL,1,NULL,3,NULL,1,NULL,NULL,8,13,20000,1,3,NULL,NULL,1,NULL,NULL,NULL,NULL),(10,'沙罗','com.sssssf',NULL,NULL,1,NULL,4,NULL,3,NULL,NULL,8,13,20000,1,3,NULL,NULL,1,NULL,NULL,NULL,NULL),(11,'沙罗','com.sssssf',NULL,NULL,1,NULL,3,NULL,1,NULL,NULL,8,13,20000,1,3,NULL,NULL,1,NULL,NULL,NULL,NULL),(12,'机器世界','com.saaa',NULL,NULL,5,NULL,4,NULL,3,NULL,NULL,6,14,200,1,3,NULL,NULL,1,NULL,NULL,NULL,NULL),(13,'沙罗','com.sssssf',NULL,NULL,1,NULL,3,NULL,1,NULL,NULL,8,13,20000,1,3,NULL,NULL,1,NULL,NULL,NULL,NULL);

/*Table structure for table `app_version` */

DROP TABLE IF EXISTS `app_version`;

CREATE TABLE `app_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `appId` int(11) DEFAULT NULL COMMENT 'appID',
  `versionNo` varchar(50) DEFAULT NULL COMMENT '版本号',
  `versionInfo` varchar(255) DEFAULT NULL COMMENT '版本信息',
  `publishStatus` int(11) DEFAULT NULL COMMENT '发布状态',
  `downloadLink` varchar(255) DEFAULT NULL COMMENT '下载链接',
  `versionSize` decimal(20,2) DEFAULT NULL COMMENT '版本大小',
  `apkLocPath` varchar(255) DEFAULT NULL COMMENT 'apk路径',
  `apkFileName` varchar(255) DEFAULT NULL COMMENT 'apk文件名',
  `createdBy` int(11) DEFAULT NULL COMMENT '创建者',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `modifyBy` int(11) DEFAULT NULL COMMENT '修改者',
  `modifyDate` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `app_version` */

insert  into `app_version`(`id`,`appId`,`versionNo`,`versionInfo`,`publishStatus`,`downloadLink`,`versionSize`,`apkLocPath`,`apkFileName`,`createdBy`,`creationDate`,`modifyBy`,`modifyDate`) values (1,NULL,'2.22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `backend_user` */

DROP TABLE IF EXISTS `backend_user`;

CREATE TABLE `backend_user` (
  `backid` int(11) NOT NULL AUTO_INCREMENT,
  `usercode` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `usertype` int(11) DEFAULT NULL COMMENT '类型',
  `createdby` int(11) DEFAULT NULL,
  `creationdate` datetime DEFAULT NULL,
  `modifby` int(11) DEFAULT NULL,
  `modifdate` datetime DEFAULT NULL,
  `userpassword` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`backid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `backend_user` */

insert  into `backend_user`(`backid`,`usercode`,`username`,`usertype`,`createdby`,`creationdate`,`modifby`,`modifdate`,`userpassword`) values (1,'xueli','雪梨',1,1,'2018-01-24 10:58:43',1,'2018-01-25 10:58:57','xueli'),(2,'baixinxin','白欣欣',1,2,'2018-01-24 10:58:43',2,'2018-01-25 10:58:57','baixinxin'),(3,'muxue','暮雪',1,3,'2018-01-24 11:01:56',3,'2018-01-25 11:02:08','muxue');

/*Table structure for table `data_dictionary` */

DROP TABLE IF EXISTS `data_dictionary`;

CREATE TABLE `data_dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `typeCode` varchar(50) DEFAULT NULL COMMENT '类型代码',
  `typeName` varchar(50) DEFAULT NULL COMMENT '类型名称',
  `valueId` int(11) DEFAULT NULL COMMENT '键id',
  `valueName` varchar(50) DEFAULT NULL COMMENT '键名',
  `createdBy` int(11) DEFAULT NULL COMMENT '创建者',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `modifyBy` int(11) DEFAULT NULL COMMENT '修改者',
  `modifyDate` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `data_dictionary` */

insert  into `data_dictionary`(`id`,`typeCode`,`typeName`,`valueId`,`valueName`,`createdBy`,`creationDate`,`modifyBy`,`modifyDate`) values (1,'appState','app状态',1,'待审核',NULL,NULL,NULL,NULL),(2,'appState','app状态',2,'审核通过',NULL,NULL,NULL,NULL),(3,'appState','app状态',3,'审核未通过',NULL,NULL,NULL,NULL),(4,'appState','app状态',4,'已上架',NULL,NULL,NULL,NULL),(5,'appState','app状态',5,'已下架',NULL,NULL,NULL,NULL),(6,'Platform','所属平台',1,'手机',NULL,NULL,NULL,NULL),(7,'Platform','所属平台',2,'平板',NULL,NULL,NULL,NULL),(8,'Platform','所属平台',3,'通用',NULL,NULL,NULL,NULL),(9,'versionState','版本的发布状态',1,'不发布',NULL,NULL,NULL,NULL),(10,'versionState','版本的发布状态',2,'已发布',NULL,NULL,NULL,NULL),(11,'versionState','版本的发布状态',3,'预发布',NULL,NULL,NULL,NULL);

/*Table structure for table `dev_user` */

DROP TABLE IF EXISTS `dev_user`;

CREATE TABLE `dev_user` (
  `devid` int(11) NOT NULL AUTO_INCREMENT,
  `devcode` varchar(50) DEFAULT NULL COMMENT '密码',
  `devname` varchar(50) DEFAULT NULL COMMENT '用户名',
  `devpassword` varchar(50) DEFAULT NULL COMMENT '密码',
  `devemail` varchar(50) DEFAULT NULL,
  `devinfo` varchar(500) DEFAULT NULL,
  `createdby` int(30) DEFAULT NULL COMMENT '创建者',
  `creationdate` datetime DEFAULT NULL COMMENT '编程时间',
  `modifyby` int(30) DEFAULT NULL COMMENT '修改',
  `modifydate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`devid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `dev_user` */

insert  into `dev_user`(`devid`,`devcode`,`devname`,`devpassword`,`devemail`,`devinfo`,`createdby`,`creationdate`,`modifyby`,`modifydate`) values (1,'zhangsan','张三','zhangsan','zhangsan@qq.com','哈哈哈哈哈',1,'2018-01-24 10:33:10',1,'2018-01-25 10:33:18'),(2,'lisi','李四','lisi','lisi@qq.com','啦啦啦啦啦',2,'2018-01-24 10:33:10',2,'2018-01-25 10:33:18'),(3,'wangwu','王五','wangwu','wangwu@qq.com','呵呵呵呵呵呵',3,'2018-01-24 10:33:10',4,'2018-01-25 10:33:18'),(4,'xue','雪','xue','xue@qq.com','xue',NULL,NULL,NULL,NULL),(5,'ss','ss','ss','ss@qq.cpm','ss',NULL,NULL,NULL,NULL),(6,'xin','鑫','xin','xin@qq.com','xin',NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
