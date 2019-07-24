/*
Navicat MySQL Data Transfer

Source Server         : localhost_mysql
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : gym

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2019-07-24 15:18:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_account
-- ----------------------------
DROP TABLE IF EXISTS `t_account`;
CREATE TABLE `t_account` (
  `c_bh` varchar(255) NOT NULL,
  `c_username` varchar(255) DEFAULT NULL,
  `c_password` varchar(255) DEFAULT NULL,
  `c_coach_bh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_account
-- ----------------------------
INSERT INTO `t_account` VALUES ('1', 'sa', 'sa', '1');

-- ----------------------------
-- Table structure for t_coach
-- ----------------------------
DROP TABLE IF EXISTS `t_coach`;
CREATE TABLE `t_coach` (
  `c_bh` varchar(255) NOT NULL,
  `c_name` varchar(255) DEFAULT NULL,
  `c_sex` varchar(255) DEFAULT NULL,
  `c_age` int(255) DEFAULT NULL,
  `c_tel` varchar(255) DEFAULT NULL,
  `c_img` varchar(255) DEFAULT NULL,
  `n_zt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_coach
-- ----------------------------
INSERT INTO `t_coach` VALUES ('1', '王二', '男', '19', '111', null, '1');

-- ----------------------------
-- Table structure for t_course
-- ----------------------------
DROP TABLE IF EXISTS `t_course`;
CREATE TABLE `t_course` (
  `c_bh` varchar(255) NOT NULL,
  `c_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_course
-- ----------------------------

-- ----------------------------
-- Table structure for t_record
-- ----------------------------
DROP TABLE IF EXISTS `t_record`;
CREATE TABLE `t_record` (
  `c_bh` varchar(255) NOT NULL,
  `c_ks_bh` varchar(255) DEFAULT NULL,
  `c_coach_bh` varchar(255) DEFAULT NULL,
  `c_skks` varchar(255) DEFAULT NULL,
  `c_kszj` varchar(255) DEFAULT NULL,
  `dt_cjsj` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_record
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `c_bh` varchar(255) NOT NULL,
  `c_name` varchar(255) DEFAULT NULL,
  `c_sex` varchar(255) DEFAULT NULL,
  `c_age` varchar(255) DEFAULT NULL,
  `c_tel` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_ks
-- ----------------------------
DROP TABLE IF EXISTS `t_user_ks`;
CREATE TABLE `t_user_ks` (
  `c_bh` varchar(255) NOT NULL,
  `c_user_bh` varchar(255) DEFAULT NULL,
  `c_course_bh` varchar(255) DEFAULT NULL,
  `c_sysks` varchar(255) DEFAULT NULL,
  `c_ksjg` varchar(255) DEFAULT NULL,
  `dt_cjsj` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_ks
-- ----------------------------
