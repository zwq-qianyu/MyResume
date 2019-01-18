/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : resume

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 15/01/2019 11:36:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for baseInfo
-- ----------------------------
DROP TABLE IF EXISTS `baseInfo`;
CREATE TABLE `baseInfo` (
  `user_id` varchar(255) NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `head_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `wechat` varchar(30) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `id_name` varchar(50) DEFAULT NULL,
  `blog` varchar(255) DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for experience
-- ----------------------------
DROP TABLE IF EXISTS `experience`;
CREATE TABLE `experience` (
  `exp_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `nature` int(5) NOT NULL COMMENT '性质，1是公司实习项目，2是个人项目',
  `enter_icon` varchar(255) DEFAULT NULL COMMENT 'icon的相对地址或者icon名字',
  `enter_name` varchar(255) DEFAULT NULL,
  `project_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `project_description` varchar(255) DEFAULT NULL,
  `project_imgs` varchar(255) DEFAULT NULL COMMENT 'project_imgs的相对地址或图片名',
  PRIMARY KEY (`exp_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `job` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`job_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for prize
-- ----------------------------
DROP TABLE IF EXISTS `prize`;
CREATE TABLE `prize` (
  `prize_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `time` datetime DEFAULT NULL,
  `prize` varchar(255) NOT NULL,
  `internal` int(5) NOT NULL COMMENT '是国际级的为1，否则为0',
  `nation` int(5) NOT NULL COMMENT '是国家级的为1，否则为0',
  `provincial` int(5) NOT NULL COMMENT '是省级的为1，否则为0',
  `school` int(5) NOT NULL COMMENT '是校级的为1，否则为0',
  PRIMARY KEY (`prize_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skill
-- ----------------------------
DROP TABLE IF EXISTS `skill`;
CREATE TABLE `skill` (
  `skill_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `catalogue` varchar(50) NOT NULL,
  `skill_name` varchar(255) NOT NULL,
  `skill_description` varchar(0) DEFAULT NULL,
  PRIMARY KEY (`skill_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for skillScore
-- ----------------------------
DROP TABLE IF EXISTS `skillScore`;
CREATE TABLE `skillScore` (
  `skill_keyid` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `skill` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` int(10) NOT NULL,
  PRIMARY KEY (`skill_keyid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` varchar(255) NOT NULL COMMENT '即用户名，用户名为手机号，不能重复',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
