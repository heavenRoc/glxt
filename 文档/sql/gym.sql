/*
Navicat MySQL Data Transfer

Source Server         : localhost_mysql
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : gym

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2019-08-02 18:33:34
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
INSERT INTO `t_account` VALUES ('35850cd7204b4998a59bb2227b4c6d02', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'be62393e65394d5ab90593e56b3656cf');
INSERT INTO `t_account` VALUES ('67EA792C2C194EC8863497CB9B8268B9', 'zhangsan', 'E10ADC3949BA59ABBE56E057F20F883E', '6A5B7283B848459EB186AEB922F7B721');

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
INSERT INTO `t_coach` VALUES ('be62393e65394d5ab90593e56b3656cf', '管理员', '男', '19', '111', 'https://i.loli.net/2019/07/24/5d3806a1ae47179446.jpg', '1');
INSERT INTO `t_coach` VALUES ('6A5B7283B848459EB186AEB922F7B721', '张三', '男', '20', '18395589678', 'https://i.loli.net/2019/05/22/5ce43019c4ba860403.png', '2');

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
INSERT INTO `t_course` VALUES ('850058331DA047C191F56992B1F128C1', '举重');

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
INSERT INTO `t_user` VALUES ('D3F46E412F0A40609442F2649EC95A71', '1', '男', '1', '1');
INSERT INTO `t_user` VALUES ('33EFDF61660D493FBAB9813A8278EB67', '1', '男', '1', '1');
INSERT INTO `t_user` VALUES ('924E629D14294E06A7C07D80A966484F', '1', '男', '1', '1');
INSERT INTO `t_user` VALUES ('FF41429361964BA48E8B09D769AF9BC5', '1', '男', '1', '1');

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
  `dt_cjsj` varchar(255) DEFAULT NULL,
  `c_coach_bh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_ks
-- ----------------------------
INSERT INTO `t_user_ks` VALUES ('F7AD108C20ED41E199F843F4A97E49C3', 'FF41429361964BA48E8B09D769AF9BC5', '850058331DA047C191F56992B1F128C1', '1', '1', '2019-08-02 17:04:39', '6A5B7283B848459EB186AEB922F7B721');
