/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xingshunwuliu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xingshunwuliu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xingshunwuliu`;

/*Table structure for table `cheliang` */

DROP TABLE IF EXISTS `cheliang`;

CREATE TABLE `cheliang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `cheliang_name` varchar(200) DEFAULT NULL COMMENT '车辆名称  Search111 ',
  `cheliang_uuid_number` varchar(200) DEFAULT NULL COMMENT '车辆编号',
  `cheliang_photo` varchar(200) DEFAULT NULL COMMENT '车辆照片',
  `cheliang_yanse` varchar(200) DEFAULT NULL COMMENT '车辆颜色',
  `cheliang_chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `cheliang_types` int(11) DEFAULT NULL COMMENT '车辆类型 Search111',
  `cheliang_content` longtext COMMENT '车辆介绍 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='车辆';

/*Data for the table `cheliang` */

insert  into `cheliang`(`id`,`cheliang_name`,`cheliang_uuid_number`,`cheliang_photo`,`cheliang_yanse`,`cheliang_chepaihao`,`cheliang_types`,`cheliang_content`,`insert_time`,`create_time`) values (1,'车辆名称1','1679884918461','upload/cheliang1.jpg','车辆颜色1','车牌号1',2,'车辆介绍1','2023-03-27 10:41:58','2023-03-27 10:41:58'),(2,'车辆名称2','1679884918493','upload/cheliang2.jpg','车辆颜色2','车牌号2',4,'车辆介绍2','2023-03-27 10:41:58','2023-03-27 10:41:58'),(3,'车辆名称3','1679884918494','upload/cheliang3.jpg','车辆颜色3','车牌号3',4,'车辆介绍3','2023-03-27 10:41:58','2023-03-27 10:41:58'),(4,'车辆名称4','1679884918523','upload/cheliang4.jpg','车辆颜色4','车牌号4',2,'车辆介绍4','2023-03-27 10:41:58','2023-03-27 10:41:58'),(5,'车辆名称5','1679884918501','upload/cheliang5.jpg','车辆颜色5','车牌号5',1,'车辆介绍5','2023-03-27 10:41:58','2023-03-27 10:41:58'),(6,'车辆名称6','1679884918474','upload/cheliang6.jpg','车辆颜色6','车牌号6',3,'车辆介绍6','2023-03-27 10:41:58','2023-03-27 10:41:58'),(7,'车辆名称7','1679884918512','upload/cheliang7.jpg','车辆颜色7','车牌号7',2,'车辆介绍7','2023-03-27 10:41:58','2023-03-27 10:41:58'),(8,'车辆名称8','1679884918494','upload/cheliang8.jpg','车辆颜色8','车牌号8',1,'车辆介绍8','2023-03-27 10:41:58','2023-03-27 10:41:58'),(9,'车辆名称9','1679884918515','upload/cheliang9.jpg','车辆颜色9','车牌号9',2,'车辆介绍9','2023-03-27 10:41:58','2023-03-27 10:41:58'),(10,'车辆名称10','1679884918523','upload/cheliang10.jpg','车辆颜色10','车牌号10',1,'车辆介绍10','2023-03-27 10:41:58','2023-03-27 10:41:58'),(11,'车辆名称11','1679884918523','upload/cheliang11.jpg','车辆颜色11','车牌号11',4,'车辆介绍11','2023-03-27 10:41:58','2023-03-27 10:41:58'),(12,'车辆名称12','1679884918538','upload/cheliang12.jpg','车辆颜色12','车牌号12',2,'车辆介绍12','2023-03-27 10:41:58','2023-03-27 10:41:58'),(13,'车辆名称13','1679884918528','upload/cheliang13.jpg','车辆颜色13','车牌号13',3,'车辆介绍13','2023-03-27 10:41:58','2023-03-27 10:41:58'),(14,'车辆名称14','1679884918484','upload/cheliang14.jpg','车辆颜色14','车牌号14',3,'车辆介绍14','2023-03-27 10:41:58','2023-03-27 10:41:58');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'gonggao_types','物流资讯类型',1,'公告类型1',NULL,NULL,'2023-03-27 10:41:23'),(2,'gonggao_types','物流资讯类型',2,'公告类型2',NULL,NULL,'2023-03-27 10:41:23'),(3,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-27 10:41:23'),(4,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-27 10:41:23'),(5,'cheliang_types','车辆类型',1,'车辆类型1',NULL,NULL,'2023-03-27 10:41:23'),(6,'cheliang_types','车辆类型',2,'车辆类型2',NULL,NULL,'2023-03-27 10:41:23'),(7,'cheliang_types','车辆类型',3,'车辆类型3',NULL,NULL,'2023-03-27 10:41:23'),(8,'cheliang_types','车辆类型',4,'车辆类型4',NULL,NULL,'2023-03-27 10:41:23'),(9,'yushu_types','运输状态',1,'已接单',NULL,NULL,'2023-03-27 10:41:23'),(10,'yushu_types','运输状态',2,'已装车',NULL,NULL,'2023-03-27 10:41:23'),(11,'yushu_types','运输状态',3,'已出发',NULL,NULL,'2023-03-27 10:41:23'),(12,'yushu_types','运输状态',4,'已送达',NULL,NULL,'2023-03-27 10:41:23'),(13,'huoyun_types','货运类型',1,'货运类型1',NULL,NULL,'2023-03-27 10:41:23'),(14,'huoyun_types','货运类型',2,'货运类型2',NULL,NULL,'2023-03-27 10:41:23'),(15,'huoyun_types','货运类型',3,'货运类型3',NULL,NULL,'2023-03-27 10:41:23'),(16,'huoyun_types','货运类型',4,'货运类型4',NULL,NULL,'2023-03-27 10:41:23'),(17,'wupin_types','物品类型',1,'物品类型1',NULL,NULL,'2023-03-27 10:41:23'),(18,'wupin_types','物品类型',2,'物品类型2',NULL,NULL,'2023-03-27 10:41:23'),(19,'wupin_types','物品类型',3,'物品类型3',NULL,NULL,'2023-03-27 10:41:23'),(20,'wupin_types','物品类型',4,'物品类型4',NULL,NULL,'2023-03-27 10:41:23'),(21,'tongzhi_types','通知类型',1,'通知类型1',NULL,NULL,'2023-03-27 10:41:23'),(22,'tongzhi_types','通知类型',2,'通知类型2',NULL,NULL,'2023-03-27 10:41:23'),(23,'yushu_types','运输状态',5,'已评价',NULL,NULL,'2023-03-27 10:41:23'),(24,'wupin_types','物品类型',5,'物品类型5',NULL,'','2023-03-27 11:24:37');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1',1,'2023-03-27 10:41:58','公告详情1','2023-03-27 10:41:58'),(2,'公告名称2',1,'2023-03-27 10:41:58','公告详情2','2023-03-27 10:41:58'),(3,'公告名称3',1,'2023-03-27 10:41:58','公告详情3','2023-03-27 10:41:58'),(4,'公告名称4',1,'2023-03-27 10:41:58','公告详情4','2023-03-27 10:41:58'),(5,'公告名称5',1,'2023-03-27 10:41:58','公告详情5','2023-03-27 10:41:58'),(6,'公告名称6',1,'2023-03-27 10:41:58','公告详情6','2023-03-27 10:41:58'),(7,'公告名称7',2,'2023-03-27 10:41:58','公告详情7','2023-03-27 10:41:58'),(8,'公告名称8',2,'2023-03-27 10:41:58','公告详情8','2023-03-27 10:41:58'),(9,'公告名称9',2,'2023-03-27 10:41:58','公告详情9','2023-03-27 10:41:58'),(10,'公告名称10',2,'2023-03-27 10:41:58','公告详情10','2023-03-27 10:41:58'),(11,'公告名称11',1,'2023-03-27 10:41:58','公告详情11','2023-03-27 10:41:58'),(12,'公告名称12',1,'2023-03-27 10:41:58','公告详情12','2023-03-27 10:41:58'),(13,'公告名称13',1,'2023-03-27 10:41:58','公告详情13','2023-03-27 10:41:58'),(14,'公告名称14',1,'2023-03-27 10:41:58','<p>公告详情14哈哈哈</p>','2023-03-27 10:41:58');

/*Table structure for table `huoyun` */

DROP TABLE IF EXISTS `huoyun`;

CREATE TABLE `huoyun` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kehu_id` int(11) DEFAULT NULL COMMENT '客户',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `jiashiyuan_id` int(11) DEFAULT NULL COMMENT '驾驶员',
  `cheliang_id` int(11) DEFAULT NULL COMMENT '车辆',
  `huoyun_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号  Search111 ',
  `huoyun_name` varchar(200) DEFAULT NULL COMMENT '物品标题  Search111 ',
  `wupin_types` int(11) DEFAULT NULL COMMENT '物品类型 Search111',
  `huoyun_types` int(11) DEFAULT NULL COMMENT '货运类型 Search111',
  `huoyun_zhongliang` decimal(10,2) DEFAULT NULL COMMENT '物品重量 ',
  `huoyun_chang` decimal(10,2) DEFAULT NULL COMMENT '物品长',
  `huoyun_kuan` decimal(10,2) DEFAULT NULL COMMENT '物品宽',
  `huoyun_gao` decimal(10,2) DEFAULT NULL COMMENT '物品高',
  `huoyun_jine` decimal(10,2) DEFAULT NULL COMMENT '货运金额',
  `huoyun_chufadi` varchar(200) DEFAULT NULL COMMENT '出发地  Search111 ',
  `chufa_time` timestamp NULL DEFAULT NULL COMMENT '出发时间',
  `huoyun_tujing` varchar(200) DEFAULT NULL COMMENT '途径地  Search111 ',
  `huoyun_didadi` varchar(200) DEFAULT NULL COMMENT '抵达地  Search111 ',
  `songda_time` timestamp NULL DEFAULT NULL COMMENT '送达时间',
  `wupin_content` longtext COMMENT '物品备注 ',
  `huoyun_content` longtext COMMENT '货运备注 ',
  `yushu_types` int(11) DEFAULT NULL COMMENT '运输状态 Search111',
  `huoyun_pingjia_content` longtext COMMENT '评价',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='货运';

/*Data for the table `huoyun` */

insert  into `huoyun`(`id`,`kehu_id`,`yuangong_id`,`jiashiyuan_id`,`cheliang_id`,`huoyun_uuid_number`,`huoyun_name`,`wupin_types`,`huoyun_types`,`huoyun_zhongliang`,`huoyun_chang`,`huoyun_kuan`,`huoyun_gao`,`huoyun_jine`,`huoyun_chufadi`,`chufa_time`,`huoyun_tujing`,`huoyun_didadi`,`songda_time`,`wupin_content`,`huoyun_content`,`yushu_types`,`huoyun_pingjia_content`,`insert_time`,`create_time`) values (1,3,3,1,1,'1679884918528','物品标题1',3,4,'507.00','10.17','694.81','692.97','138.45','出发地1','2023-03-27 10:41:58','途径地1','抵达地1','2023-03-27 10:41:58','物品备注1','货运备注1',4,'评价1','2023-03-27 10:41:58','2023-03-27 10:41:58'),(2,2,2,2,2,'1679884918522','物品标题2',3,4,'430.66','201.74','360.01','337.61','911.64','出发地2','2023-03-27 10:41:58','途径地2','抵达地2','2023-03-27 10:41:58','物品备注2','货运备注2',1,'评价2','2023-03-27 10:41:58','2023-03-27 10:41:58'),(3,1,1,3,3,'1679884918523','物品标题3',2,3,'799.81','250.26','675.30','740.60','954.25','出发地3','2023-03-27 10:41:58','途径地3','抵达地3','2023-03-27 10:41:58','物品备注3','货运备注3',4,'评价3','2023-03-27 10:41:58','2023-03-27 10:41:58'),(4,3,2,4,4,'1679884918523','物品标题4',3,3,'104.62','912.57','379.11','558.18','571.64','出发地4','2023-03-27 10:41:58','途径地4','抵达地4','2023-03-27 10:41:58','物品备注4','货运备注4',2,'评价4','2023-03-27 10:41:58','2023-03-27 10:41:58'),(5,2,2,5,5,'1679884918464','物品标题5',1,1,'976.38','347.20','894.94','346.69','827.29','出发地5','2023-03-27 10:41:58','途径地5','抵达地5','2023-03-27 10:41:58','物品备注5','货运备注5',3,'评价5','2023-03-27 10:41:58','2023-03-27 10:41:58'),(6,3,2,6,6,'1679884918525','物品标题6',2,2,'244.01','29.52','852.60','311.94','892.04','出发地6','2023-03-27 10:41:58','途径地6','抵达地6','2023-03-27 10:41:58','物品备注6','货运备注6',2,'评价6','2023-03-27 10:41:58','2023-03-27 10:41:58'),(7,2,3,7,7,'1679884918548','物品标题7',1,2,'672.26','43.64','220.39','340.67','69.17','出发地7','2023-03-27 10:41:58','途径地7','抵达地7','2023-03-27 10:41:58','物品备注7','货运备注7',1,'评价7','2023-03-27 10:41:58','2023-03-27 10:41:58'),(8,2,2,8,8,'1679884918462','物品标题8',1,2,'58.51','61.85','370.29','889.39','661.33','出发地8','2023-03-27 10:41:58','途径地8','抵达地8','2023-03-27 10:41:58','物品备注8','货运备注8',3,'评价8','2023-03-27 10:41:58','2023-03-27 10:41:58'),(9,3,3,9,9,'1679884918514','物品标题9',2,2,'512.36','966.79','748.98','488.57','68.01','出发地9','2023-03-27 10:41:58','途径地9','抵达地9','2023-03-27 10:41:58','物品备注9','货运备注9',3,'评价9','2023-03-27 10:41:58','2023-03-27 10:41:58'),(10,3,3,10,10,'1679884918486','物品标题10',4,4,'844.09','133.86','128.70','601.40','205.41','出发地10','2023-03-27 10:41:58','途径地10','抵达地10','2023-03-27 10:41:58','物品备注10','货运备注10',3,'评价10','2023-03-27 10:41:58','2023-03-27 10:41:58'),(11,3,1,11,11,'1679884918468','物品标题11',1,1,'414.53','635.17','501.90','940.74','422.52','出发地11','2023-03-27 10:41:58','途径地11','抵达地11','2023-03-27 10:41:58','物品备注11','货运备注11',3,'评价11','2023-03-27 10:41:58','2023-03-27 10:41:58'),(12,1,2,12,12,'1679884918532','物品标题12',2,1,'509.66','731.32','240.93','723.07','96.54','出发地12','2023-03-27 10:41:58','途径地12','抵达地12','2023-03-27 10:41:58','物品备注12','货运备注12',5,'<p>评价12哼哼唧唧</p>','2023-03-27 10:41:58','2023-03-27 10:41:58'),(13,2,1,13,13,'1679884918518','物品标题13',3,3,'351.56','995.86','800.82','993.60','403.73','出发地13','2023-03-27 10:41:58','途径地13','抵达地13','2023-03-27 10:41:58','物品备注13','货运备注13',2,'评价13','2023-03-27 10:41:58','2023-03-27 10:41:58'),(14,3,3,14,14,'1679884918548','物品标题14',4,2,'326.88','267.94','180.04','571.33','163.03','出发地14','2023-03-27 10:41:58','途径地14','抵达地14','2023-03-27 10:41:58','物品备注14','货运备注14',2,'评价14','2023-03-27 10:41:58','2023-03-27 10:41:58'),(15,1,1,14,11,'1679885721317','物品111',4,3,'99.20','55.00','44.00','33.00','1.00','出发地1','2023-03-27 10:58:30','途径地11','抵达地','2023-03-27 11:05:29','<p>和广东发生过是单号是回复大家好</p>','<p>地方还记得就</p>',5,'<p>和京津冀哈哈哈</p>','2023-03-27 10:59:19','2023-03-27 10:59:19'),(16,4,1,12,13,'1679887345402','物品1111',3,2,'88.00','77.00','212.00','11.00','900.00','出发地111','2023-03-27 11:22:56','途径地','抵达地','2023-03-27 11:23:29','<p>更好地三国杀的后果是的话</p>','<p>和回房间</p>',5,'<p>哼哼唧唧军军扩</p>','2023-03-27 11:23:14','2023-03-27 11:23:14');

/*Table structure for table `jiashiyuan` */

DROP TABLE IF EXISTS `jiashiyuan`;

CREATE TABLE `jiashiyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiashiyuan_name` varchar(200) DEFAULT NULL COMMENT '驾驶员姓名 Search111 ',
  `jiashiyuan_phone` varchar(200) DEFAULT NULL COMMENT '驾驶员手机号',
  `jiashiyuan_id_number` varchar(200) DEFAULT NULL COMMENT '驾驶员身份证号',
  `jiashiyuan_photo` varchar(200) DEFAULT NULL COMMENT '驾驶员照片',
  `jiashiyuan_jiazhao_photo` varchar(200) DEFAULT NULL COMMENT '驾照照片',
  `jiashiyuan_jialing` varchar(200) DEFAULT NULL COMMENT '驾龄',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jiashiyuan_email` varchar(200) DEFAULT NULL COMMENT '驾驶员邮箱',
  `jiashiyuan_content` longtext COMMENT '驾驶员介绍 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='驾驶员';

/*Data for the table `jiashiyuan` */

insert  into `jiashiyuan`(`id`,`jiashiyuan_name`,`jiashiyuan_phone`,`jiashiyuan_id_number`,`jiashiyuan_photo`,`jiashiyuan_jiazhao_photo`,`jiashiyuan_jialing`,`sex_types`,`jiashiyuan_email`,`jiashiyuan_content`,`create_time`) values (1,'驾驶员姓名1','17703786901','410224199010102001','upload/yuangong1.jpg','upload/jiashiyuan_jiazhao1.jpg','驾龄1',2,'1@qq.com','驾驶员介绍1','2023-03-27 10:41:58'),(2,'驾驶员姓名2','17703786902','410224199010102002','upload/yuangong2.jpg','upload/jiashiyuan_jiazhao2.jpg','驾龄2',1,'2@qq.com','驾驶员介绍2','2023-03-27 10:41:58'),(3,'驾驶员姓名3','17703786903','410224199010102003','upload/yuangong3.jpg','upload/jiashiyuan_jiazhao3.jpg','驾龄3',2,'3@qq.com','驾驶员介绍3','2023-03-27 10:41:58'),(4,'驾驶员姓名4','17703786904','410224199010102004','upload/yuangong1.jpg','upload/jiashiyuan_jiazhao4.jpg','驾龄4',1,'4@qq.com','驾驶员介绍4','2023-03-27 10:41:58'),(5,'驾驶员姓名5','17703786905','410224199010102005','upload/yuangong2.jpg','upload/jiashiyuan_jiazhao5.jpg','驾龄5',2,'5@qq.com','驾驶员介绍5','2023-03-27 10:41:58'),(6,'驾驶员姓名6','17703786906','410224199010102006','upload/yuangong3.jpg','upload/jiashiyuan_jiazhao6.jpg','驾龄6',2,'6@qq.com','驾驶员介绍6','2023-03-27 10:41:58'),(7,'驾驶员姓名7','17703786907','410224199010102007','upload/yuangong3.jpg','upload/jiashiyuan_jiazhao7.jpg','驾龄7',1,'7@qq.com','驾驶员介绍7','2023-03-27 10:41:58'),(8,'驾驶员姓名8','17703786908','410224199010102008','upload/yuangong1.jpg','upload/jiashiyuan_jiazhao8.jpg','驾龄8',1,'8@qq.com','驾驶员介绍8','2023-03-27 10:41:58'),(9,'驾驶员姓名9','17703786909','410224199010102009','upload/yuangong1.jpg','upload/jiashiyuan_jiazhao9.jpg','驾龄9',1,'9@qq.com','驾驶员介绍9','2023-03-27 10:41:58'),(10,'驾驶员姓名10','17703786910','410224199010102010','upload/yuangong2.jpg','upload/jiashiyuan_jiazhao10.jpg','驾龄10',1,'10@qq.com','驾驶员介绍10','2023-03-27 10:41:58'),(11,'驾驶员姓名11','17703786911','410224199010102011','upload/yuangong3.jpg','upload/jiashiyuan_jiazhao11.jpg','驾龄11',1,'11@qq.com','驾驶员介绍11','2023-03-27 10:41:58'),(12,'驾驶员姓名12','17703786912','410224199010102012','upload/yuangong1.jpg','upload/jiashiyuan_jiazhao12.jpg','驾龄12',2,'12@qq.com','驾驶员介绍12','2023-03-27 10:41:58'),(13,'驾驶员姓名13','17703786913','410224199010102013','upload/yuangong2.jpg','upload/jiashiyuan_jiazhao13.jpg','驾龄13',2,'13@qq.com','驾驶员介绍13','2023-03-27 10:41:58'),(14,'驾驶员姓名14','17703786914','410224199010102014','upload/yuangong3.jpg','upload/jiashiyuan_jiazhao14.jpg','驾龄14',1,'14@qq.com','驾驶员介绍14','2023-03-27 10:41:58');

/*Table structure for table `kehu` */

DROP TABLE IF EXISTS `kehu`;

CREATE TABLE `kehu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `kehu_name` varchar(200) DEFAULT NULL COMMENT '客户姓名 Search111 ',
  `kehu_phone` varchar(200) DEFAULT NULL COMMENT '客户手机号',
  `kehu_id_number` varchar(200) DEFAULT NULL COMMENT '客户身份证号',
  `kehu_photo` varchar(200) DEFAULT NULL COMMENT '客户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `kehu_email` varchar(200) DEFAULT NULL COMMENT '客户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='客户';

/*Data for the table `kehu` */

insert  into `kehu`(`id`,`username`,`password`,`kehu_name`,`kehu_phone`,`kehu_id_number`,`kehu_photo`,`sex_types`,`kehu_email`,`new_money`,`create_time`) values (1,'a1','123456','客户姓名1','17703786901','410224199010102001','upload/kehu1.jpg',1,'1@qq.com','60.03','2023-03-27 10:41:58'),(2,'a2','123456','客户姓名2','17703786902','410224199010102002','upload/kehu2.jpg',2,'2@qq.com','628.82','2023-03-27 10:41:58'),(3,'a3','123456','客户姓名3','17703786903','410224199010102003','upload/kehu3.jpg',1,'3@qq.com','642.95','2023-03-27 10:41:58'),(4,'a5','123456','张5','17788889999','444778888899999999','/upload/1679887160556.jpg',1,'5@qq.com','100.00','2023-03-27 11:18:30');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','5nxdta9txyz1z41lvxzbsiha41l34hx3','2023-03-27 10:46:10','2023-03-27 12:27:06'),(2,1,'a1','yuangong','员工','tai7goz590dndqm1w5pkshrmpzzoxo54','2023-03-27 10:55:18','2023-03-27 12:24:04'),(3,1,'a1','kehu','客户','xiuh9v24ve7yl2rbzy4wa50okizrki90','2023-03-27 11:07:30','2023-03-27 12:23:38'),(4,4,'a5','kehu','客户','7emgmqshh83bva0izud4z2n2xee010un','2023-03-27 11:18:37','2023-03-27 12:23:44');

/*Table structure for table `tongzhi` */

DROP TABLE IF EXISTS `tongzhi`;

CREATE TABLE `tongzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `tongzhi_name` varchar(200) DEFAULT NULL COMMENT '通知标题  Search111 ',
  `tongzhi_types` int(11) NOT NULL COMMENT '通知类型 Search111 ',
  `tongzhi_text` longtext COMMENT '通知内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '通知时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='通知板';

/*Data for the table `tongzhi` */

insert  into `tongzhi`(`id`,`yuangong_id`,`tongzhi_name`,`tongzhi_types`,`tongzhi_text`,`insert_time`,`create_time`) values (1,2,'通知标题1',1,'通知内容1','2023-03-27 10:41:58','2023-03-27 10:41:58'),(2,3,'通知标题2',1,'通知内容2','2023-03-27 10:41:58','2023-03-27 10:41:58'),(3,1,'通知标题3',1,'通知内容3','2023-03-27 10:41:58','2023-03-27 10:41:58'),(4,3,'通知标题4',2,'通知内容4','2023-03-27 10:41:58','2023-03-27 10:41:58'),(5,1,'通知标题5',1,'通知内容5','2023-03-27 10:41:58','2023-03-27 10:41:58'),(6,2,'通知标题6',1,'通知内容6','2023-03-27 10:41:58','2023-03-27 10:41:58'),(7,2,'通知标题7',1,'通知内容7','2023-03-27 10:41:58','2023-03-27 10:41:58'),(8,1,'通知标题8',2,'通知内容8','2023-03-27 10:41:58','2023-03-27 10:41:58'),(9,3,'通知标题9',1,'通知内容9','2023-03-27 10:41:58','2023-03-27 10:41:58'),(10,2,'通知标题10',1,'通知内容10','2023-03-27 10:41:58','2023-03-27 10:41:58'),(11,3,'通知标题11',1,'通知内容11','2023-03-27 10:41:58','2023-03-27 10:41:58'),(12,2,'通知标题12',1,'通知内容12','2023-03-27 10:41:58','2023-03-27 10:41:58'),(13,1,'通知标题13',2,'通知内容13','2023-03-27 10:41:58','2023-03-27 10:41:58'),(14,1,'通知标题14',1,'通知内容14','2023-03-27 10:41:58','2023-03-27 10:41:58'),(15,2,'通知111`1',1,'郭德纲的方式和发的好地方和','2023-03-27 11:25:29','2023-03-27 11:25:29');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-27 10:41:23');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '员工邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`sex_types`,`yuangong_email`,`create_time`) values (1,'a1','123456','员工姓名1','17703786901','410224199010102001','upload/yuangong1.jpg',2,'1@qq.com','2023-03-27 10:41:58'),(2,'a2','123456','员工姓名2','17703786902','410224199010102002','upload/yuangong2.jpg',2,'2@qq.com','2023-03-27 10:41:58'),(3,'a3','123456','员工姓名3','17703786903','410224199010102003','upload/yuangong3.jpg',1,'3@qq.com','2023-03-27 10:41:58');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
