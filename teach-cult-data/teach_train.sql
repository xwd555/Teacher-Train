/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : teach_train

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-12-18 21:54:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for page_view
-- ----------------------------
DROP TABLE IF EXISTS `page_view`;
CREATE TABLE `page_view` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pro_hover` int(255) unsigned zerofill DEFAULT NULL,
  `teacher_hover` int(255) unsigned zerofill DEFAULT NULL,
  `admin_hover` int(255) unsigned zerofill DEFAULT NULL,
  `insert_num` int(255) unsigned zerofill DEFAULT NULL,
  `delete_num` int(255) unsigned zerofill DEFAULT NULL,
  `update_num` int(255) unsigned zerofill DEFAULT NULL,
  `select_num` int(255) unsigned zerofill DEFAULT NULL,
  `creat_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of page_view
-- ----------------------------
INSERT INTO `page_view` VALUES ('1', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '2019-12-16 15:06:23', '2019-12-16 15:06:23');

-- ----------------------------
-- Table structure for pr_module
-- ----------------------------
DROP TABLE IF EXISTS `pr_module`;
CREATE TABLE `pr_module` (
  `ref_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cou_id` int(11) DEFAULT NULL,
  `pr_id` int(11) DEFAULT NULL,
  `creat_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ref_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pr_module
-- ----------------------------
INSERT INTO `pr_module` VALUES ('1', '1000', '1', null, null);
INSERT INTO `pr_module` VALUES ('2', '1001', '3', null, null);

-- ----------------------------
-- Table structure for pts_module
-- ----------------------------
DROP TABLE IF EXISTS `pts_module`;
CREATE TABLE `pts_module` (
  `ref_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tr_id` int(11) DEFAULT NULL,
  `pr_id` int(11) DEFAULT NULL,
  `creat_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ref_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pts_module
-- ----------------------------
INSERT INTO `pts_module` VALUES ('1', '1', '1', '2019-12-16 14:40:00', '2019-12-16 14:40:00');
INSERT INTO `pts_module` VALUES ('2', '2', '2', '2019-12-16 14:39:01', '2019-12-16 14:39:01');

-- ----------------------------
-- Table structure for tea_module
-- ----------------------------
DROP TABLE IF EXISTS `tea_module`;
CREATE TABLE `tea_module` (
  `ref_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cou_id` int(11) DEFAULT NULL,
  `tr_id` int(11) DEFAULT NULL,
  `creat_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ref_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tea_module
-- ----------------------------
INSERT INTO `tea_module` VALUES ('1', '1000', '1', '2019-12-16 13:21:01', '2019-12-16 13:21:01');
INSERT INTO `tea_module` VALUES ('2', '1001', '2', '2019-12-16 14:42:00', '2019-12-16 14:42:00');

-- ----------------------------
-- Table structure for tr_admin
-- ----------------------------
DROP TABLE IF EXISTS `tr_admin`;
CREATE TABLE `tr_admin` (
  `ad_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ad_name` varchar(50) NOT NULL,
  `ad_user` varchar(50) NOT NULL,
  `ad_password` varchar(50) NOT NULL,
  `creat_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tr_admin
-- ----------------------------
INSERT INTO `tr_admin` VALUES ('1', '王小明', 'wxm10121', '123123', '2019-12-16 11:41:13', '2019-12-16 11:42:02');

-- ----------------------------
-- Table structure for tr_course
-- ----------------------------
DROP TABLE IF EXISTS `tr_course`;
CREATE TABLE `tr_course` (
  `cou_id` int(11) NOT NULL AUTO_INCREMENT,
  `cou_name` varchar(50) NOT NULL COMMENT '课程名',
  `creat_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cou_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tr_course
-- ----------------------------
INSERT INTO `tr_course` VALUES ('1000', '计算机组成原理', '2019-12-15 20:37:14', '2019-12-15 20:37:14');
INSERT INTO `tr_course` VALUES ('1001', 'CAD制图', '2019-12-16 14:33:44', '2019-12-16 14:33:44');

-- ----------------------------
-- Table structure for tr_professor
-- ----------------------------
DROP TABLE IF EXISTS `tr_professor`;
CREATE TABLE `tr_professor` (
  `pr_id` int(11) NOT NULL AUTO_INCREMENT,
  `pr_name` varchar(18) DEFAULT NULL COMMENT '讲师名字',
  `u_name` varchar(50) NOT NULL COMMENT '用户名',
  `u_password` varchar(200) NOT NULL COMMENT '密码',
  `sex` varchar(2) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `tr_address` varchar(200) DEFAULT NULL COMMENT '培训地点',
  `email` varchar(100) DEFAULT NULL,
  `creat_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='培训教师信息';

-- ----------------------------
-- Records of tr_professor
-- ----------------------------
INSERT INTO `tr_professor` VALUES ('1', '王老师', 'wang121', '123', '男', '30', 'A-319', 'wang@qq.com', '2019-12-16 11:46:13', '2019-12-16 14:31:48');
INSERT INTO `tr_professor` VALUES ('3', '张三', 'zs111', '121', '男', '26', 'B-111', 'zs@139.com', '2019-12-16 14:34:54', '2019-12-16 14:34:54');

-- ----------------------------
-- Table structure for tr_teacher
-- ----------------------------
DROP TABLE IF EXISTS `tr_teacher`;
CREATE TABLE `tr_teacher` (
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(18) DEFAULT NULL,
  `u_name` varchar(50) NOT NULL COMMENT '用户名',
  `u_password` varchar(200) NOT NULL COMMENT '密码',
  `sex` varchar(2) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `creat_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='培训教师信息';

-- ----------------------------
-- Records of tr_teacher
-- ----------------------------
INSERT INTO `tr_teacher` VALUES ('1', '王小虎', 'wangxiaohu123', '123456', '男', '21', '浙江温州', 'xiaohu@qq.com', '2019-12-15 20:16:40', '2019-12-16 11:47:34');
INSERT INTO `tr_teacher` VALUES ('2', '黄丫丫', 'hyy111', '121', '女', '19', '浙江宁波', 'hyy@qq.com', '2019-12-16 14:36:26', '2019-12-16 14:36:26');
