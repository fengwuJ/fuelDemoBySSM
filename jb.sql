/*
SQLyog Ultimate v12.09 (32 bit)
MySQL - 5.7.18-1 : Database - mydb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mydb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mydb`;

/*Table structure for table `cgsqtable` */

DROP TABLE IF EXISTS `cgsqtable`;

CREATE TABLE `cgsqtable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tn` varchar(100) NOT NULL COMMENT '单据编号',
  `time` date NOT NULL COMMENT '时间',
  `coaltype` varchar(100) NOT NULL COMMENT '煤种',
  `number` double NOT NULL COMMENT '数量',
  `jsfs` varchar(100) NOT NULL COMMENT '结算方式',
  `fqr` varchar(100) NOT NULL COMMENT '发起人',
  `cz` varchar(100) NOT NULL COMMENT '执行操作',
  `status` varchar(100) NOT NULL COMMENT '订单状态',
  `sprq` date DEFAULT NULL COMMENT '审批日期',
  `rkz` double NOT NULL COMMENT '热卡值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cgsqtable_UN` (`tn`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='首页的采购申请表';

/*Data for the table `cgsqtable` */

insert  into `cgsqtable`(`id`,`tn`,`time`,`coaltype`,`number`,`jsfs`,`fqr`,`cz`,`status`,`sprq`,`rkz`) values (1,'津能热电2015-09-112','2018-07-27','烟煤',5,'一票结算','津能热电','查看','已发布','2018-08-09',4000),(2,'津能热电2015-09-113','2018-07-27','烟煤',5,'一票结算','津能热电','查看','已发布','2018-08-09',4000),(3,'津能热电2015-09-114','2018-07-27','烟煤',5,'一票结算','津能热电','审核','待审核',NULL,4000),(4,'津能热电2015-09-115','2018-07-27','烟煤',5,'一票结算','津能热电','审核','待审核',NULL,4000),(5,'津能热电2015-09-116','2018-07-27','烟煤',5,'一票结算','津能热电','查看','已发布','2018-08-09',4000),(6,'津能热电2015-09-117','2018-07-27','烟煤',5,'一票结算','津能热电','审核','待审核',NULL,4000);

/*Table structure for table `cgxxtable` */

DROP TABLE IF EXISTS `cgxxtable`;

CREATE TABLE `cgxxtable` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id标识',
  `bjjzrq` datetime NOT NULL COMMENT '报价截止日期',
  `tn` varchar(100) NOT NULL COMMENT '单据编号',
  `sqdw` varchar(100) NOT NULL COMMENT '申请单位',
  `sqr` varchar(100) NOT NULL COMMENT '申请人',
  `qfr` varchar(100) NOT NULL COMMENT '签发人',
  `sqrq` date NOT NULL COMMENT '申请日期',
  `starttime` date NOT NULL COMMENT '开始时间',
  `finishtime` date DEFAULT NULL COMMENT '结束时间',
  `mz` varchar(100) NOT NULL COMMENT '煤种',
  `cgsl` double NOT NULL COMMENT '采购数量',
  `ysfs` varchar(100) NOT NULL COMMENT '运输方式',
  `jhdd` varchar(100) NOT NULL COMMENT '交货地点',
  `jsfs` varchar(100) NOT NULL COMMENT '结算方式',
  `yunshufs` varchar(100) NOT NULL COMMENT '验收方式',
  `zgxj` varchar(100) NOT NULL COMMENT '最高限价',
  `zdxj` varchar(100) NOT NULL COMMENT '最低限价',
  `jsfkfs` varchar(100) NOT NULL COMMENT '结算付款方式',
  `bzjyq` varchar(256) DEFAULT NULL COMMENT '保证金要求',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cgxx_UN` (`id`,`tn`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='首页-采购申请-审核-采购信息表';

/*Data for the table `cgxxtable` */

insert  into `cgxxtable`(`id`,`bjjzrq`,`tn`,`sqdw`,`sqr`,`qfr`,`sqrq`,`starttime`,`finishtime`,`mz`,`cgsl`,`ysfs`,`jhdd`,`jsfs`,`yunshufs`,`zgxj`,`zdxj`,`jsfkfs`,`bzjyq`) values (1,'2018-06-30 14:59:21','津能热电2015-09-112','津能热电','张文忠','周三兵','2018-04-30','2018-05-30','2018-06-30','烟煤',5,'到厂验收','津能热电','一票结算','船运','有','无','现汇或承兑汇票','参见采购需求单报价时，要求通过保证金账号缴纳xxx保证金'),(2,'2018-06-30 14:59:21','津能热电2015-09-113','津能热电','张文忠','周三兵','2018-04-30','2018-05-30','2018-06-30','烟煤',5,'到厂验收','津能热电','一票结算','船运','有','无','现汇或承兑汇票','参见采购需求单报价时，要求通过保证金账号缴纳xxx保证金'),(3,'2018-06-30 14:59:21','津能热电2015-09-114','津能热电','张文忠','周三兵','2018-04-30','2018-05-30','2018-06-30','烟煤',5,'到厂验收','津能热电','一票结算','船运','有','无','现汇或承兑汇票','参见采购需求单报价时，要求通过保证金账号缴纳xxx保证金'),(4,'2018-06-30 14:59:21','津能热电2015-09-115','津能热电','张文忠','周三兵','2018-04-30','2018-05-30','2018-06-30','烟煤',5,'到厂验收','津能热电','一票结算','船运','有','无','现汇或承兑汇票','参见采购需求单报价时，要求通过保证金账号缴纳xxx保证金'),(5,'2018-06-30 14:59:21','津能热电2015-09-116','津能热电','张文忠','周三兵','2018-04-30','2018-05-30','2018-06-30','烟煤',5,'到厂验收','津能热电','一票结算','船运','有','无','现汇或承兑汇票','参见采购需求单报价时，要求通过保证金账号缴纳xxx保证金'),(6,'2018-06-30 14:59:21','津能热电2015-09-117','津能热电','张文忠','周三兵','2018-04-30','2018-05-30','2018-06-30','烟煤',5,'到厂验收','津能热电','一票结算','船运','有','无','现汇或承兑汇票','参见采购需求单报价时，要求通过保证金账号缴纳xxx保证金'),(7,'2018-06-30 14:59:21','津能热电2015-09-118','津能热电','张文忠','周三兵','2018-04-30','2018-05-30','2018-06-30','烟煤',5,'到厂验收','津能热电','一票结算','船运','有','无','现汇或承兑汇票','参见采购需求单报价时，要求通过保证金账号缴纳xxx保证金'),(8,'2018-06-30 14:59:21','津能热电2015-09-119','津能热电','张文忠','周三兵','2018-04-30','2018-05-30','2018-06-30','烟煤',5,'到厂验收','津能热电','一票结算','船运','有','无','现汇或承兑汇票','参见采购需求单报价时，要求通过保证金账号缴纳xxx保证金'),(9,'2018-06-30 14:59:21','津能热电2015-09-120','津能热电','张文忠','周三兵','2018-04-30','2018-05-30','2018-06-30','烟煤',5,'到厂验收','津能热电','一票结算','船运','有','无','现汇或承兑汇票','参见采购需求单报价时，要求通过保证金账号缴纳xxx保证金'),(10,'2018-06-30 14:59:21','津能热电2015-09-121','津能热电','张文忠','周三兵','2018-04-30','2018-05-30','2018-06-30','烟煤',5,'到厂验收','津能热电','一票结算','船运','有','无','现汇或承兑汇票','参见采购需求单报价时，要求通过保证金账号缴纳xxx保证金'),(11,'2018-06-30 14:59:21','津能热电2015-09-122','津能热电','张文忠','周三兵','2018-04-30','2018-05-30','2018-06-30','烟煤',5,'到厂验收','津能热电','一票结算','船运','有','无','现汇或承兑汇票','参见采购需求单报价时，要求通过保证金账号缴纳xxx保证金'),(12,'2018-06-30 14:59:21','津能热电2015-09-123','津能热电','张文忠','周三兵','2018-04-30','2018-05-30','2018-06-30','烟煤',5,'到厂验收','津能热电','一票结算','船运','有','无','现汇或承兑汇票','参见采购需求单报价时，要求通过保证金账号缴纳xxx保证金');

/*Table structure for table `dcsqshtable` */

DROP TABLE IF EXISTS `dcsqshtable`;

CREATE TABLE `dcsqshtable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gysname` varchar(100) NOT NULL COMMENT '供应商名称',
  `time` date NOT NULL COMMENT '申请时间',
  `sqdw` varchar(100) NOT NULL COMMENT '申请单位',
  `splx` varchar(100) NOT NULL COMMENT '审批类型',
  `cz` varchar(100) NOT NULL COMMENT '执行操作',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dcsqshtable_UN` (`gysname`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='首页的电厂申请表';

/*Data for the table `dcsqshtable` */

insert  into `dcsqshtable`(`id`,`gysname`,`time`,`sqdw`,`splx`,`cz`) values (1,'夏灵武煤炭工贸有限公司','2018-04-11','辽河电厂','供应商申请','审批'),(2,'山西朔州平鲁区西易党新煤矿有限公司','2018-04-11','辽河电厂','供应商申请','审批'),(3,'山西省朔州市小禹有限公司','2018-04-11','辽河电厂','黑名单申请','审批'),(4,'江苏新立能源有限公司','2018-04-11','辽河电厂','黑名单申请','审批');

/*Table structure for table `djczjltable` */

DROP TABLE IF EXISTS `djczjltable`;

CREATE TABLE `djczjltable` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id标识',
  `czry` varchar(100) NOT NULL COMMENT '操作人员',
  `dw` varchar(100) NOT NULL COMMENT '单位',
  `tn` varchar(100) NOT NULL COMMENT '单据编号2查询',
  `cz` varchar(100) NOT NULL COMMENT '操作',
  `spyj` varchar(100) DEFAULT NULL COMMENT '审批意见',
  `czsj` datetime NOT NULL COMMENT '操作时间',
  `bzly` varchar(256) NOT NULL COMMENT '备注留言',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='首页-采购申请-审核-单据操作记录表';

/*Data for the table `djczjltable` */

insert  into `djczjltable`(`id`,`czry`,`dw`,`tn`,`cz`,`spyj`,`czsj`,`bzly`) values (1,'何大海','津能热电','津能热电2015-09-112','创建',' ','2018-05-19 15:19:27','暂无'),(2,'何大海','津能热电','津能热电2015-09-113','创建',' ','2018-05-19 15:19:27','暂无'),(3,'何大海','津能热电','津能热电2015-09-114','创建',' ','2018-05-19 15:19:27','暂无'),(4,'何大海','津能热电','津能热电2015-09-115','创建',' ','2018-05-19 15:19:27','暂无'),(5,'何大海','津能热电','津能热电2015-09-116','创建',' ','2018-05-19 15:19:27','暂无'),(6,'何大海','津能热电','津能热电2015-09-117','创建',' ','2018-05-19 15:19:27','暂无'),(7,'李飞','津能热电','津能热电2015-09-112','审核','同意','2018-05-20 15:21:17','暂无'),(8,'李飞','津能热电','津能热电2015-09-113','审核','同意','2018-05-20 15:21:17','暂无'),(9,'李飞','津能热电','津能热电2015-09-114','审核','同意','2018-05-20 15:21:17','暂无'),(10,'李飞','津能热电','津能热电2015-09-115','审核','同意','2018-05-20 15:21:17','暂无'),(11,'李飞','津能热电','津能热电2015-09-116','审核','同意','2018-05-20 15:21:17','暂无'),(12,'李飞','津能热电','津能热电2015-09-117','审核','同意','2018-05-20 15:21:17','暂无'),(13,'李飞','津能热电','津能热电2015-09-118','审核','同意','2018-05-20 15:21:17','暂无'),(14,'李飞','津能热电','津能热电2015-09-119','审核','同意','2018-05-20 15:21:17','暂无'),(15,'李飞','津能热电','津能热电2015-09-120','审核','同意','2018-05-20 15:21:17','暂无'),(16,'李飞','津能热电','津能热电2015-09-121','审核','同意','2018-05-20 15:21:17','暂无'),(17,'李飞','津能热电','津能热电2015-09-122','审核','同意','2018-05-20 15:21:17','暂无'),(18,'李飞','津能热电','津能热电2015-09-123','审核','同意','2018-05-20 15:21:17','暂无'),(19,'何大海','津能热电','津能热电2015-09-118','创建',NULL,'2018-05-19 15:19:27','暂无'),(20,'何大海','津能热电','津能热电2015-09-119','创建',NULL,'2018-05-19 15:19:27','暂无'),(21,'何大海','津能热电','津能热电2015-09-120','创建',NULL,'2018-05-19 15:19:27','暂无'),(22,'何大海','津能热电','津能热电2015-09-121','创建',NULL,'2018-05-19 15:19:27','暂无'),(23,'何大海','津能热电','津能热电2015-09-122','创建',NULL,'2018-05-19 15:19:27','暂无'),(24,'何大海','津能热电','津能热电2015-09-123','创建',NULL,'2018-05-19 15:19:27','暂无');

/*Table structure for table `mzyqtable` */

DROP TABLE IF EXISTS `mzyqtable`;

CREATE TABLE `mzyqtable` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id注释',
  `tn` varchar(100) NOT NULL COMMENT '单据编号2查询',
  `sdjfrl` double DEFAULT NULL COMMENT '收到基发热量',
  `sdjql` double DEFAULT NULL COMMENT '收到基全硫',
  `sdjqsf` double DEFAULT NULL COMMENT '全水分',
  `sdjhf` double DEFAULT NULL COMMENT '收到基灰分',
  `kgjsf` double DEFAULT NULL COMMENT '空干基水分',
  `kgjql` double DEFAULT NULL COMMENT '空干基全硫',
  `kgjhff` varchar(100) DEFAULT NULL COMMENT '空干基挥发分',
  `gjgwfrl` varchar(100) DEFAULT NULL COMMENT '干基高位发热量',
  `gjql` varchar(100) DEFAULT NULL COMMENT '干基全硫',
  `gjwhdhff` double DEFAULT NULL COMMENT '干基无灰度挥发分',
  `ld` double DEFAULT NULL COMMENT '粒度',
  `hrd` double DEFAULT NULL COMMENT '灰熔点',
  `hskmxs` double DEFAULT NULL COMMENT '哈氏可磨系数',
  `bz` varchar(256) DEFAULT NULL COMMENT '备注',
  `sdjhffstart` double DEFAULT NULL COMMENT '收到基挥发分开始',
  `sdjhffend` double DEFAULT NULL COMMENT '收到基挥发分结束',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='首页-采购申请-审核-煤质要求表';

/*Data for the table `mzyqtable` */

insert  into `mzyqtable`(`id`,`tn`,`sdjfrl`,`sdjql`,`sdjqsf`,`sdjhf`,`kgjsf`,`kgjql`,`kgjhff`,`gjgwfrl`,`gjql`,`gjwhdhff`,`ld`,`hrd`,`hskmxs`,`bz`,`sdjhffstart`,`sdjhffend`) values (1,'津能热电2015-09-112',4000,1,2,3,50,1.2,'0.0','1','2',3,4,5,6,'收到基低位发热量值,要求在5300到5500区间內',30,40),(2,'津能热电2015-09-113',4000,1,2,3,50,1.2,'0.0','1','2',3,4,5,6,'收到基低位发热量值,要求在5300到5500区间內',30,40),(3,'津能热电2015-09-114',4000,1,2,3,50,1.2,'0.0','1','2',3,4,5,6,'收到基低位发热量值,要求在5300到5500区间內',30,40),(4,'津能热电2015-09-115',4000,1,2,3,50,1.2,'0.0','1','2',3,4,5,6,'收到基低位发热量值,要求在5300到5500区间內',30,40),(5,'津能热电2015-09-116',4000,1,2,3,50,1.2,'0.0','1','2',3,4,5,6,'收到基低位发热量值,要求在5300到5500区间內',30,40),(6,'津能热电2015-09-117',4000,1,2,3,50,1.2,'0.0','1','2',3,4,5,6,'收到基低位发热量值,要求在5300到5500区间內',30,40),(7,'津能热电2015-09-118',4000,1,2,3,50,1.2,'0.0','1','2',3,4,5,6,'收到基低位发热量值,要求在5300到5500区间內',30,40),(8,'津能热电2015-09-119',4000,1,2,3,50,1.2,'0.0','1','2',3,4,5,6,'收到基低位发热量值,要求在5300到5500区间內',30,40),(9,'津能热电2015-09-120',4000,1,2,3,50,1.2,'0.0','1','2',3,4,5,6,'收到基低位发热量值,要求在5300到5500区间內',30,40),(10,'津能热电2015-09-121',4000,1,2,3,50,1.2,'0.0','1','2',3,4,5,6,'收到基低位发热量值,要求在5300到5500区间內',30,40),(11,'津能热电2015-09-122',4000,1,2,3,50,1.2,'0.0','1','2',3,4,5,6,'收到基低位发热量值,要求在5300到5500区间內',30,40),(12,'津能热电2015-09-123',4000,1,2,3,50,1.2,'0.0','1','2',3,4,5,6,'收到基低位发热量值,要求在5300到5500区间內',30,40);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `xm` varchar(255) NOT NULL,
  `dw` varchar(255) NOT NULL,
  `bm` varchar(255) NOT NULL,
  `dh` varchar(255) NOT NULL,
  `js` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`xm`,`dw`,`bm`,`dh`,`js`) values (1,'root','jb961125','波','153314961','2153656','18875499999','管理人员'),(2,'fengwuj','fengwuj','波','153314961','2153656','18875499999','管理人员'),(3,'yjj','jb961125','杨家集','单位','部门','18723134510','普通人员');

/*Table structure for table `zzjgxdtable` */

DROP TABLE IF EXISTS `zzjgxdtable`;

CREATE TABLE `zzjgxdtable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tn` varchar(100) NOT NULL COMMENT '单据编号',
  `time` date NOT NULL COMMENT '下达日期',
  `coaltype` varchar(100) NOT NULL COMMENT '煤种',
  `number` double NOT NULL COMMENT '数量',
  `frl` varchar(100) NOT NULL COMMENT '发热量',
  `ysfs` varchar(100) NOT NULL COMMENT '运输方式',
  `cz` varchar(100) NOT NULL COMMENT '执行操作',
  `xdrq` date DEFAULT NULL COMMENT '下达日期',
  `status` varchar(100) NOT NULL COMMENT '状态',
  `gysname` varchar(100) NOT NULL COMMENT '供应商名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zzjgxdtable_UN` (`tn`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='首页的中标结果下达表';

/*Data for the table `zzjgxdtable` */

insert  into `zzjgxdtable`(`id`,`tn`,`time`,`coaltype`,`number`,`frl`,`ysfs`,`cz`,`xdrq`,`status`,`gysname`) values (1,'津能热电2015-09-112','2017-07-26','烟煤',5,'5200','船运','查看','2018-08-14','已发布','津能热电'),(2,'津能热电2015-09-113','2017-08-26','烟煤',5,'5200','船运','下达',NULL,'未下达','津能热电'),(3,'津能热电2015-09-114','2017-08-27','烟煤',5,'5200','船运','查看','2018-08-14','已下达','津能热电'),(4,'津能热电2015-09-115','2017-09-26','烟煤',5,'5200','船运','下达',NULL,'未下达','津能热电'),(5,'津能热电2015-09-116','2017-09-26','烟煤',5,'5200','船运','查看','2018-08-14','已作废','津能热电'),(6,'津能热电2015-09-117','2017-09-26','烟煤',5,'5200','船运','查看','2018-08-14','已驳回','津能热电'),(7,'津能热电2015-09-118','2017-09-26','烟煤',5,'5200','船运','下达',NULL,'未下达','津能热电'),(8,'津能热电2015-09-119','2017-09-26','烟煤',5,'5200','船运','查看','2018-08-14','已作废','津能热电'),(9,'津能热电2015-09-120','2017-09-26','烟煤',5,'5200','船运','查看','2018-08-14','已驳回','津能热电'),(10,'津能热电2015-09-121','2017-09-26','烟煤',5,'5200','船运','查看','2018-08-14','已下达','津能热电'),(11,'津能热电2015-09-122','2017-09-26','烟煤',5,'5200','船运','查看','2018-08-14','已发布','津能热电'),(12,'津能热电2015-09-123','2017-09-26','烟煤',5,'5200','船运','查看','2018-08-14','已驳回','津能热电');

/*Table structure for table `zzshtable` */

DROP TABLE IF EXISTS `zzshtable`;

CREATE TABLE `zzshtable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tn` varchar(100) NOT NULL COMMENT '单据编号',
  `time` date NOT NULL COMMENT '下达日期',
  `coaltype` varchar(100) NOT NULL COMMENT '煤种',
  `number` double NOT NULL COMMENT '数量',
  `frl` varchar(100) NOT NULL COMMENT '发热量',
  `ysfs` varchar(100) NOT NULL COMMENT '运输方式',
  `cz` varchar(100) NOT NULL COMMENT '执行操作',
  `status` varchar(100) NOT NULL COMMENT '状态',
  `gysname` varchar(100) NOT NULL COMMENT '供应商名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zzjgxdtable_UN` (`tn`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='首页的中标审核表';

/*Data for the table `zzshtable` */

insert  into `zzshtable`(`id`,`tn`,`time`,`coaltype`,`number`,`frl`,`ysfs`,`cz`,`status`,`gysname`) values (1,'津能热电2015-09-034','2017-12-27','烟煤',5,'5200','船运','审核','待审核','津能热电'),(2,'津能热电2015-09-035','2017-12-28','烟煤',5,'5200','船运','查看','已审核','津能热电'),(3,'津能热电2015-09-036','2017-12-29','烟煤',5,'5200','船运','审核','待审核','津能热电'),(4,'津能热电2015-09-037','2017-12-30','烟煤',5,'5200','船运','审核','待审核','津能热电');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
