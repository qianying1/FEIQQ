/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50162
Source Host           : localhost:3306
Source Database       : qqchect

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2019-03-12 13:24:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fqq_category
-- ----------------------------
DROP TABLE IF EXISTS `fqq_category`;
CREATE TABLE `fqq_category` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `owner_id` bigint(12) NOT NULL,
  `category_type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fqq_category
-- ----------------------------
INSERT INTO `fqq_category` VALUES ('1', 'hello', '1', 'user');
INSERT INTO `fqq_category` VALUES ('2', '傻逼们', '2', 'user');
INSERT INTO `fqq_category` VALUES ('3', '傻叉们', '2', 'user');

-- ----------------------------
-- Table structure for fqq_category_member
-- ----------------------------
DROP TABLE IF EXISTS `fqq_category_member`;
CREATE TABLE `fqq_category_member` (
  `id` bigint(12) NOT NULL,
  `category_id` bigint(12) NOT NULL,
  `owner_id` bigint(12) NOT NULL,
  `member_id` bigint(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fqq_category_member
-- ----------------------------
INSERT INTO `fqq_category_member` VALUES ('1', '1', '1', '2');
INSERT INTO `fqq_category_member` VALUES ('2', '2', '2', '1');

-- ----------------------------
-- Table structure for fqq_user
-- ----------------------------
DROP TABLE IF EXISTS `fqq_user`;
CREATE TABLE `fqq_user` (
  `id` bigint(12) NOT NULL,
  `nick_name` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_password` varchar(200) NOT NULL,
  `user_signature` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fqq_user
-- ----------------------------
INSERT INTO `fqq_user` VALUES ('1', 'ff', '12345', '123456', '123456');
INSERT INTO `fqq_user` VALUES ('2', '你是傻逼吧', 'qianying', '123456', '这里是开放qq位置');
