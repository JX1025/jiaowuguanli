/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : jiaowuguanli

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2020-01-10 18:34:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) DEFAULT NULL,
  `class_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `class_sort` varchar(255) DEFAULT NULL,
  `class_judge` varchar(255) DEFAULT NULL,
  `class_video` varchar(255) DEFAULT NULL,
  `class_summary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `class_lecturer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `comment_content` varchar(255) DEFAULT NULL,
  `comment_classId` int(11) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `comment_classId` (`comment_classId`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`comment_classId`) REFERENCES `class` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `job_id` int(10) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) DEFAULT NULL,
  `job_salary` varchar(10) DEFAULT NULL,
  `job_company` varchar(255) DEFAULT NULL,
  `job_exprience` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `job_motto` varchar(255) DEFAULT NULL,
  `job_sclass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `job_post` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES ('1', '彭辉', '2300', '阿里巴巴', '按数据IE副科级的许多人靠客户快捷键和尖括号句话健康卡萨帝恢复决胜巅峰黄金时代福克斯的回复SD卡黑科技好靠的就是副科级暗时刻就犯傻看得见风哈萨克减肥或多或少打卡机和', '爱琴海看看回复', '2010', ' 爬虫');
INSERT INTO `job` VALUES ('2', '果唯伊', '5600', '百度', 'qawefsrgtdyu67[p、47阿萨德发给他 ', '大家好本基金 ', '2011', '  爬虫');
INSERT INTO `job` VALUES ('3', '胡依旧', '4060', '阿里巴巴', '的库函数扛回家卡开始动画客家话会计好看', '卡哈萨克大家好', '2000', '  爬虫');
INSERT INTO `job` VALUES ('4', '胡嘎达', '4400', '百度', '卡反馈和客户分奥斯卡了建行卡号', '可好看近代史看见好看放假', ' 5000', '  爬虫');
INSERT INTO `job` VALUES ('5', '葛明洋', '2300', '阿里巴巴', '按数据IE副科级的许多人靠客户快捷键和尖括号句话健康卡萨帝恢复决胜巅峰黄金时代福克斯的回复SD卡黑科技好靠的就是副科级暗时刻就犯傻看得见风哈萨克减肥或多或少打卡机和', '爱琴海看看回复', '2010', '  爬虫');
INSERT INTO `job` VALUES ('6', '郝红书', '2300', '阿里巴巴', '按数据IE副科级的许多人靠客户快捷键和尖括号句话健康卡萨帝恢复决胜巅峰黄金时代福克斯的回复SD卡黑科技好靠的就是副科级暗时刻就犯傻看得见风哈萨克减肥或多或少打卡机和', '爱琴海看看回复', '2010', '  爬虫');
INSERT INTO `job` VALUES ('7', '刘明飞', '3080', '百度', 'qawefsrgtdyu67[p、47阿萨德发给他 ', '大家好本基金 ', '2011', '  爬虫');
INSERT INTO `job` VALUES ('8', '黄少华', '4060', '阿里巴巴', '的库函数扛回家卡开始动画客家话会计好看', '卡哈萨克大家好', '2000', '  爬虫');
INSERT INTO `job` VALUES ('9', '邓虎华', '4400', '百度', '卡反馈和客户分奥斯卡了建行卡号', '可好看近代史看见好看放假', ' 5000', '  爬虫');
INSERT INTO `job` VALUES ('10', '葛明洋', '2300', '阿里巴巴', '按数据IE副科级的许多人靠客户快捷键和尖括号句话健康卡萨帝恢复决胜巅峰黄金时代福克斯的回复SD卡黑科技好靠的就是副科级暗时刻就犯傻看得见风哈萨克减肥或多或少打卡机和', '爱琴海看看回复', '2010', ' 爬虫');
INSERT INTO `job` VALUES ('11', '郝红书', '2300', '阿里巴巴', '按数据IE副科级的许多人靠客户快捷键和尖括号句话健康卡萨帝恢复决胜巅峰黄金时代福克斯的回复SD卡黑科技好靠的就是副科级暗时刻就犯傻看得见风哈萨克减肥或多或少打卡机和', '爱琴海看看回复', '2010', ' 爬虫');
INSERT INTO `job` VALUES ('12', '刘明飞', '3080', '百度', 'qawefsrgtdyu67[p、47阿萨德发给他 ', '大家好本基金 ', '2011', ' 爬虫');
INSERT INTO `job` VALUES ('13', '黄少华', '4060', '阿里巴巴', '的库函数扛回家卡开始动画客家话会计好看', '卡哈萨克大家好', '2000', ' 爬虫');
INSERT INTO `job` VALUES ('14', '邓虎华', '4400', '百度', '卡反馈和客户分奥斯卡了建行卡号', '可好看近代史看见好看放假', ' 5000', ' 爬虫');
INSERT INTO `job` VALUES ('15', '葛明洋', '2300', '阿里巴巴', '按数据IE副科级的许多人靠客户快捷键和尖括号句话健康卡萨帝恢复决胜巅峰黄金时代福克斯的回复SD卡黑科技好靠的就是副科级暗时刻就犯傻看得见风哈萨克减肥或多或少打卡机和', '爱琴海看看回复', '2010', ' 爬虫');
INSERT INTO `job` VALUES ('16', '葛明洋', '2300', '阿里巴巴', '按数据IE副科级的许多人靠客户快捷键和尖括号句话健康卡萨帝恢复决胜巅峰黄金时代福克斯的回复SD卡黑科技好靠的就是副科级暗时刻就犯傻看得见风哈萨克减肥或多或少打卡机和', '爱琴海看看回复', '2010', ' 爬虫');
