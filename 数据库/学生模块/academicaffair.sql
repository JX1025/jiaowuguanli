/*
Navicat MySQL Data Transfer

Source Server         : zch
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : academicaffair

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2020-01-12 13:44:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `allcourse`
-- ----------------------------
DROP TABLE IF EXISTS `allcourse`;
CREATE TABLE `allcourse` (
  `cnum` int(10) NOT NULL DEFAULT '0',
  `cname` varchar(20) DEFAULT NULL,
  `cteacher` varchar(12) DEFAULT NULL,
  `cyear` varchar(12) DEFAULT NULL,
  `cterm` int(4) DEFAULT NULL,
  `cweek` int(4) DEFAULT NULL,
  `ctime` int(4) DEFAULT NULL,
  `college` varchar(20) DEFAULT NULL,
  `type` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`cnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of allcourse
-- ----------------------------

-- ----------------------------
-- Table structure for `classroom`
-- ----------------------------
DROP TABLE IF EXISTS `classroom`;
CREATE TABLE `classroom` (
  `rnum` int(4) NOT NULL DEFAULT '0',
  `rname` varchar(10) DEFAULT NULL,
  `rweek` int(4) DEFAULT NULL,
  `rtime` int(4) DEFAULT NULL,
  PRIMARY KEY (`rnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classroom
-- ----------------------------

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `snum` varchar(12) NOT NULL DEFAULT '',
  `cnum` int(4) NOT NULL DEFAULT '0',
  `tnum` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`snum`,`cnum`,`tnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------

-- ----------------------------
-- Table structure for `grade`
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `snum` varchar(12) NOT NULL DEFAULT '',
  `cnum` int(4) NOT NULL DEFAULT '0',
  `tnum` varchar(12) NOT NULL DEFAULT '',
  `score` int(3) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`snum`,`cnum`,`tnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade
-- ----------------------------

-- ----------------------------
-- Table structure for `login`
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `snum` varchar(12) NOT NULL DEFAULT '',
  `psw` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`snum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login
-- ----------------------------

-- ----------------------------
-- Table structure for `praise`
-- ----------------------------
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `tnum` varchar(12) NOT NULL DEFAULT '',
  `count` int(10) DEFAULT NULL,
  PRIMARY KEY (`tnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of praise
-- ----------------------------

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `snum` varchar(12) NOT NULL DEFAULT '',
  `sname` varchar(12) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `grade` int(6) DEFAULT NULL,
  `class` int(6) DEFAULT NULL,
  `birthday` varchar(12) DEFAULT NULL,
  `political` varchar(10) DEFAULT NULL,
  `admission` int(4) DEFAULT NULL,
  `hometown` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`snum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
