/*
Navicat MySQL Data Transfer

Source Server         : Captain
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : db_learning

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2019-04-25 20:27:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hufu
-- ----------------------------
DROP TABLE IF EXISTS `hufu`;
CREATE TABLE `hufu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hufu
-- ----------------------------
INSERT INTO `hufu` VALUES ('1', '4', '48', 'BBB', '2019-03-24 15:17:32');
INSERT INTO `hufu` VALUES ('2', '4', '48', 'CCC', '2019-03-24 15:21:50');
INSERT INTO `hufu` VALUES ('3', '5', '106', '我是王五', '2019-03-26 12:54:05');
INSERT INTO `hufu` VALUES ('4', '5', '106', 'CCCCCCCCCCCC', '2019-03-26 18:22:04');
INSERT INTO `hufu` VALUES ('5', '4', '171', '321', '2019-03-29 20:02:27');
INSERT INTO `hufu` VALUES ('6', '4', '212', '回复1', '2019-03-30 20:54:21');
INSERT INTO `hufu` VALUES ('7', '21', '208', '测试', '2019-03-30 22:53:09');
INSERT INTO `hufu` VALUES ('8', '22', '208', '测试', '2019-03-30 23:01:57');
INSERT INTO `hufu` VALUES ('9', '23', '233', '测试', '2019-03-30 23:12:27');
INSERT INTO `hufu` VALUES ('10', '24', '208', '测试', '2019-03-30 23:17:46');
INSERT INTO `hufu` VALUES ('11', '24', '171', '测试', '2019-03-30 23:18:27');
INSERT INTO `hufu` VALUES ('12', '25', '208', '测试', '2019-03-30 23:23:09');
INSERT INTO `hufu` VALUES ('13', '25', '171', '测试', '2019-03-30 23:24:30');
INSERT INTO `hufu` VALUES ('14', '7', '249', 'suqi', '2019-03-30 23:29:28');
INSERT INTO `hufu` VALUES ('15', '7', '249', 'suqi', '2019-03-30 23:33:41');
INSERT INTO `hufu` VALUES ('16', '7', '249', '234', '2019-03-30 23:34:51');
INSERT INTO `hufu` VALUES ('17', '30', '241', '我是用户5', '2019-04-12 11:35:48');

-- ----------------------------
-- Table structure for kind
-- ----------------------------
DROP TABLE IF EXISTS `kind`;
CREATE TABLE `kind` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kindname` varchar(255) DEFAULT NULL COMMENT '类别名称',
  `isexamine` int(11) DEFAULT NULL COMMENT '是否审核',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kind
-- ----------------------------
INSERT INTO `kind` VALUES ('2', 'C++', null);
INSERT INTO `kind` VALUES ('4', 'JAVA', null);
INSERT INTO `kind` VALUES ('5', 'C#', null);
INSERT INTO `kind` VALUES ('6', 'HTML', null);
INSERT INTO `kind` VALUES ('7', 'JQuery', null);
INSERT INTO `kind` VALUES ('8', 'SQL', null);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` varchar(10000) DEFAULT NULL COMMENT '内容',
  `pubtime` varchar(255) DEFAULT NULL COMMENT '发布时间',
  `uid` int(11) DEFAULT NULL COMMENT '发布人',
  `top` int(11) DEFAULT NULL COMMENT '1：话题 2：公告',
  `kindid` int(11) DEFAULT NULL COMMENT '类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('2', 'CCCCCCCCCCCCC', 'BBBBBBBBBBBBBBBBBBBBBBBBBB', '2019-03-24 16:10:43', '4', '1', '5');
INSERT INTO `news` VALUES ('3', '测试', '测试', '2019-03-30 23:12:11', '23', '2', null);
INSERT INTO `news` VALUES ('4', '测试', '测试A', '2019-03-30 23:26:42', '25', '2', null);
INSERT INTO `news` VALUES ('5', '最新公告', '12321321', '2019-04-10 15:26:03', '1', '2', null);
INSERT INTO `news` VALUES ('6', '测试', '其味无穷', '2019-04-10 18:25:38', '1', '2', null);
INSERT INTO `news` VALUES ('7', null, 'C#AAA', '2019-04-11 14:29:07', '4', null, '5');
INSERT INTO `news` VALUES ('8', '测试', '12', '2019-04-11 17:33:55', '26', '1', '5');
INSERT INTO `news` VALUES ('9', '我是yonghu3', '123', '2019-04-12 09:09:01', '28', '1', '5');
INSERT INTO `news` VALUES ('10', '标题', '内容', '2019-04-12 10:05:16', '1', '2', null);
INSERT INTO `news` VALUES ('11', null, null, '2019-04-12 10:28:06', '26', null, '5');
INSERT INTO `news` VALUES ('12', '我是用户4', '我是用户4', '2019-04-12 10:47:56', '29', '1', '5');
INSERT INTO `news` VALUES ('13', '新通知', '欢迎用户4', '2019-04-12 10:50:24', '1', '2', null);
INSERT INTO `news` VALUES ('14', '我是用户5', '我是用户5', '2019-04-12 11:36:12', '30', '1', '5');
INSERT INTO `news` VALUES ('15', '这是标题', '欢迎用户5', '2019-04-12 11:38:44', '1', '2', null);
INSERT INTO `news` VALUES ('16', 's', 'ssa', '2019-04-25 19:38:22', '1', '1', '8');
INSERT INTO `news` VALUES ('17', 'sss', 'sss', '2019-04-25 19:38:36', '1', '1', '8');
INSERT INTO `news` VALUES ('18', 'ss', 'ss', '2019-04-25 19:38:53', '1', '1', '7');
INSERT INTO `news` VALUES ('19', 'sss', 'sss', '2019-04-25 19:38:58', '1', '1', '5');
INSERT INTO `news` VALUES ('20', 'ss', 'as', '2019-04-25 19:40:14', '1', '1', '7');
INSERT INTO `news` VALUES ('21', 'ss', 'ss', '2019-04-25 19:43:02', '1', '1', '5');
INSERT INTO `news` VALUES ('22', 'ss', 'ss', '2019-04-25 19:43:06', '1', '1', '8');
INSERT INTO `news` VALUES ('23', 'ss', 'ss', '2019-04-25 19:43:11', '1', '1', '7');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(255) DEFAULT NULL COMMENT '时间',
  `uid` int(11) DEFAULT NULL COMMENT '用户',
  `nid` int(11) DEFAULT NULL COMMENT '对象',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `role` int(11) DEFAULT NULL COMMENT ' 3：评论视频 6:评论话题 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('15', '2019-03-24 11:16:25', '4', '5', 'C#和.NET框架', '5');
INSERT INTO `record` VALUES ('16', '2019-03-24 11:20:43', '4', '5', null, '2');
INSERT INTO `record` VALUES ('17', '2019-03-24 11:22:04', '4', '5', null, '2');
INSERT INTO `record` VALUES ('18', '2019-03-24 11:23:00', '4', '5', 'C#变量', '5');
INSERT INTO `record` VALUES ('25', '2019-03-24 12:27:06', '4', '5', null, '2');
INSERT INTO `record` VALUES ('26', '2019-03-24 12:27:12', '4', '5', null, '2');
INSERT INTO `record` VALUES ('43', '2019-03-24 13:40:04', '4', '5', null, '2');
INSERT INTO `record` VALUES ('44', '2019-03-24 13:40:14', '4', '5', null, '1');
INSERT INTO `record` VALUES ('45', '2019-03-24 13:43:24', '4', '5', null, '2');
INSERT INTO `record` VALUES ('47', '2019-03-24 13:45:45', '4', '5', null, '2');
INSERT INTO `record` VALUES ('48', '2019-03-24 13:45:50', '4', '5', 'AAA', '3');
INSERT INTO `record` VALUES ('49', '2019-03-24 13:47:39', '4', '5', null, '2');
INSERT INTO `record` VALUES ('50', '2019-03-24 13:47:52', '4', '5', '老师讲的真好', '3');
INSERT INTO `record` VALUES ('51', '2019-03-24 13:56:14', '4', '5', null, '2');
INSERT INTO `record` VALUES ('52', '2019-03-24 13:57:28', '4', '5', null, '2');
INSERT INTO `record` VALUES ('53', '2019-03-24 14:42:57', '4', '5', null, '2');
INSERT INTO `record` VALUES ('54', '2019-03-24 14:49:27', '4', '5', null, '2');
INSERT INTO `record` VALUES ('55', '2019-03-24 14:52:26', '4', '5', null, '2');
INSERT INTO `record` VALUES ('56', '2019-03-24 14:53:30', '4', '5', null, '2');
INSERT INTO `record` VALUES ('57', '2019-03-24 14:55:11', '4', '5', null, '2');
INSERT INTO `record` VALUES ('58', '2019-03-24 15:07:07', '4', '5', null, '2');
INSERT INTO `record` VALUES ('59', '2019-03-24 15:10:28', '4', '5', null, '2');
INSERT INTO `record` VALUES ('60', '2019-03-24 15:21:43', '4', '5', null, '2');
INSERT INTO `record` VALUES ('61', '2019-03-24 15:31:03', '4', '5', null, '2');
INSERT INTO `record` VALUES ('62', '2019-03-24 15:32:24', '4', '5', null, '2');
INSERT INTO `record` VALUES ('63', '2019-03-24 15:32:42', '4', '5', null, '2');
INSERT INTO `record` VALUES ('64', '2019-03-24 15:33:41', '4', '5', null, '2');
INSERT INTO `record` VALUES ('65', '2019-03-24 17:01:29', '4', '6', null, '2');
INSERT INTO `record` VALUES ('66', '2019-03-24 20:31:46', '4', '11', null, '2');
INSERT INTO `record` VALUES ('67', '2019-03-24 20:32:36', '4', '11', null, '2');
INSERT INTO `record` VALUES ('68', '2019-03-24 20:35:35', '4', '12', null, '2');
INSERT INTO `record` VALUES ('69', '2019-03-24 20:35:43', '4', '11', null, '2');
INSERT INTO `record` VALUES ('70', '2019-03-24 20:36:53', '4', '11', null, '2');
INSERT INTO `record` VALUES ('71', '2019-03-24 20:37:01', '4', '12', null, '2');
INSERT INTO `record` VALUES ('72', '2019-03-24 20:37:10', '4', '12', null, '2');
INSERT INTO `record` VALUES ('73', '2019-03-24 20:37:40', '4', '12', null, '2');
INSERT INTO `record` VALUES ('74', '2019-03-24 20:37:45', '4', '12', null, '2');
INSERT INTO `record` VALUES ('75', '2019-03-24 20:40:53', '4', '13', null, '2');
INSERT INTO `record` VALUES ('76', '2019-03-24 20:42:19', '4', '13', null, '2');
INSERT INTO `record` VALUES ('77', '2019-03-24 20:42:27', '4', '12', null, '2');
INSERT INTO `record` VALUES ('78', '2019-03-24 20:44:07', '4', '12', null, '2');
INSERT INTO `record` VALUES ('79', '2019-03-24 20:45:15', '4', '13', null, '2');
INSERT INTO `record` VALUES ('80', '2019-03-24 20:48:27', '4', '13', null, '2');
INSERT INTO `record` VALUES ('81', '2019-03-24 20:48:34', '4', '12', null, '2');
INSERT INTO `record` VALUES ('82', '2019-03-24 20:49:58', '4', '14', null, '2');
INSERT INTO `record` VALUES ('83', '2019-03-24 20:51:57', '4', '14', null, '2');
INSERT INTO `record` VALUES ('84', '2019-03-24 20:52:12', '4', '15', null, '2');
INSERT INTO `record` VALUES ('85', '2019-03-24 22:18:37', '4', '7', null, '2');
INSERT INTO `record` VALUES ('86', '2019-03-24 22:18:45', '4', '7', null, '1');
INSERT INTO `record` VALUES ('87', '2019-03-24 22:19:43', '4', '9', null, '2');
INSERT INTO `record` VALUES ('88', '2019-03-24 22:20:24', '4', '9', null, '2');
INSERT INTO `record` VALUES ('89', '2019-03-24 22:26:10', '4', '11', null, '2');
INSERT INTO `record` VALUES ('90', '2019-03-24 22:26:27', '4', '11', null, '1');
INSERT INTO `record` VALUES ('91', '2019-03-24 23:03:36', '4', '11', null, '2');
INSERT INTO `record` VALUES ('92', '2019-03-24 23:11:03', '4', '15', null, '2');
INSERT INTO `record` VALUES ('93', '2019-03-24 23:12:44', '4', '17', null, '2');
INSERT INTO `record` VALUES ('94', '2019-03-24 23:13:10', '1', '17', null, '2');
INSERT INTO `record` VALUES ('95', '2019-03-24 23:13:14', '1', '14', null, '2');
INSERT INTO `record` VALUES ('96', '2019-03-24 23:15:40', '4', '17', null, '2');
INSERT INTO `record` VALUES ('97', '2019-03-24 23:16:12', '7', '14', null, '2');
INSERT INTO `record` VALUES ('98', '2019-03-25 01:33:52', '1', '17', null, '2');
INSERT INTO `record` VALUES ('99', '2019-03-25 01:36:14', '1', '17', null, '2');
INSERT INTO `record` VALUES ('100', '2019-03-25 21:45:03', '1', '17', null, '2');
INSERT INTO `record` VALUES ('101', '2019-03-25 21:49:01', '17', '18', null, '2');
INSERT INTO `record` VALUES ('102', '2019-03-25 21:49:27', '17', '18', null, '1');
INSERT INTO `record` VALUES ('103', '2019-03-25 21:49:32', '17', '18', null, '2');
INSERT INTO `record` VALUES ('104', '2019-03-25 21:50:25', '17', '18', '此C#视频有一点好', '5');
INSERT INTO `record` VALUES ('105', '2019-03-25 21:50:34', '17', '18', 'AAAAAAAAAAAAA', '5');
INSERT INTO `record` VALUES ('106', '2019-03-25 21:50:46', '17', '18', 'AAAAAAAAAAAAA', '3');
INSERT INTO `record` VALUES ('107', '2019-03-25 21:52:23', '1', '18', null, '2');
INSERT INTO `record` VALUES ('108', '2019-03-26 10:49:31', '18', '19', null, '2');
INSERT INTO `record` VALUES ('109', '2019-03-26 10:49:54', '18', '19', 'SSSSSSSSSSSSs', '5');
INSERT INTO `record` VALUES ('110', '2019-03-26 10:50:03', '18', '19', 'AAAAAAAAAAAAA', '5');
INSERT INTO `record` VALUES ('111', '2019-03-26 10:50:08', '18', '19', null, '1');
INSERT INTO `record` VALUES ('112', '2019-03-26 10:50:12', '18', '19', null, '2');
INSERT INTO `record` VALUES ('113', '2019-03-26 10:50:19', '18', '19', 'SSSSSSSSSSS', '3');
INSERT INTO `record` VALUES ('114', '2019-03-26 10:52:10', '1', '19', null, '2');
INSERT INTO `record` VALUES ('116', '2019-03-26 12:53:54', '5', '18', '我是王五', '5');
INSERT INTO `record` VALUES ('117', '2019-03-26 12:54:21', '5', '18', null, '1');
INSERT INTO `record` VALUES ('118', '2019-03-26 16:24:32', '1', '18', null, '2');
INSERT INTO `record` VALUES ('119', '2019-03-26 16:32:10', '1', '18', null, '2');
INSERT INTO `record` VALUES ('126', '2019-03-26 17:44:05', '5', '18', null, '2');
INSERT INTO `record` VALUES ('127', '2019-03-26 18:08:25', '5', '18', null, '2');
INSERT INTO `record` VALUES ('128', '2019-03-26 18:08:35', '5', '18', 'AAAAAAAAAAAAA', '5');
INSERT INTO `record` VALUES ('129', '2019-03-26 18:08:50', '5', '18', '我是王武', '3');
INSERT INTO `record` VALUES ('130', '2019-03-26 18:09:22', '5', '18', null, '2');
INSERT INTO `record` VALUES ('131', '2019-03-26 18:09:36', '5', '18', null, '2');
INSERT INTO `record` VALUES ('132', '2019-03-26 18:21:25', '5', '18', null, '2');
INSERT INTO `record` VALUES ('133', '2019-03-26 18:21:33', '5', '18', 'BBBBBBBBBBBBB', '5');
INSERT INTO `record` VALUES ('134', '2019-03-26 18:22:17', '5', '18', null, '2');
INSERT INTO `record` VALUES ('135', '2019-03-26 18:22:20', '5', '18', null, '2');
INSERT INTO `record` VALUES ('136', '2019-03-29 16:55:06', '4', '18', null, '2');
INSERT INTO `record` VALUES ('137', '2019-03-29 16:55:15', '4', '17', null, '2');
INSERT INTO `record` VALUES ('138', '2019-03-29 16:57:02', '4', '17', null, '2');
INSERT INTO `record` VALUES ('139', '2019-03-29 16:57:35', '4', '17', null, '2');
INSERT INTO `record` VALUES ('140', '2019-03-29 16:58:50', '4', '17', null, '2');
INSERT INTO `record` VALUES ('141', '2019-03-29 17:02:39', '4', '17', null, '2');
INSERT INTO `record` VALUES ('142', '2019-03-29 18:56:04', '4', '17', null, '2');
INSERT INTO `record` VALUES ('143', '2019-03-29 18:56:51', '4', '17', null, '2');
INSERT INTO `record` VALUES ('144', '2019-03-29 18:56:59', '4', '17', null, '2');
INSERT INTO `record` VALUES ('145', '2019-03-29 18:57:11', '4', '17', null, '2');
INSERT INTO `record` VALUES ('146', '2019-03-29 18:57:26', '4', '17', null, '2');
INSERT INTO `record` VALUES ('148', '2019-03-29 18:57:33', '4', '17', null, '1');
INSERT INTO `record` VALUES ('166', '2019-03-29 19:25:21', '4', '14', null, '1');
INSERT INTO `record` VALUES ('167', '2019-03-29 19:26:06', '4', '14', null, '2');
INSERT INTO `record` VALUES ('169', '2019-03-29 19:33:02', '4', '14', null, '2');
INSERT INTO `record` VALUES ('171', '2019-03-29 19:56:10', '4', '2', '123', '6');
INSERT INTO `record` VALUES ('172', '2019-03-29 20:04:13', '4', '17', null, '2');
INSERT INTO `record` VALUES ('173', '2019-03-29 20:04:18', '4', '17', '123', '3');
INSERT INTO `record` VALUES ('174', '2019-03-29 20:07:29', '4', '14', null, '2');
INSERT INTO `record` VALUES ('175', '2019-03-29 20:07:31', '4', '7', null, '4');
INSERT INTO `record` VALUES ('176', '2019-03-29 20:49:23', '17', '17', null, '2');
INSERT INTO `record` VALUES ('177', '2019-03-29 20:55:32', '4', '14', null, '2');
INSERT INTO `record` VALUES ('178', '2019-03-29 20:55:37', '4', '17', null, '2');
INSERT INTO `record` VALUES ('179', '2019-03-29 21:08:08', '4', '2', null, '1');
INSERT INTO `record` VALUES ('180', '2019-03-29 21:12:08', '4', '17', null, '2');
INSERT INTO `record` VALUES ('181', '2019-03-29 21:12:13', '4', '17', null, '2');
INSERT INTO `record` VALUES ('182', '2019-03-29 21:12:36', '4', '17', null, '2');
INSERT INTO `record` VALUES ('183', '2019-03-29 21:12:37', '4', '17', null, '2');
INSERT INTO `record` VALUES ('184', '2019-03-29 21:12:38', '4', '17', null, '2');
INSERT INTO `record` VALUES ('185', '2019-03-29 21:13:03', '4', '17', null, '2');
INSERT INTO `record` VALUES ('186', '2019-03-29 21:13:04', '4', '17', null, '2');
INSERT INTO `record` VALUES ('187', '2019-03-29 21:13:05', '4', '17', null, '2');
INSERT INTO `record` VALUES ('188', '2019-03-29 21:13:13', '4', '17', null, '2');
INSERT INTO `record` VALUES ('189', '2019-03-30 20:02:01', '4', '14', null, '2');
INSERT INTO `record` VALUES ('190', '2019-03-30 20:02:08', '4', '14', null, '2');
INSERT INTO `record` VALUES ('191', '2019-03-30 20:02:12', '4', '17', null, '2');
INSERT INTO `record` VALUES ('192', '2019-03-30 20:17:40', '4', '14', null, '2');
INSERT INTO `record` VALUES ('193', '2019-03-30 20:21:57', '4', '14', null, '2');
INSERT INTO `record` VALUES ('194', '2019-03-30 20:26:41', '4', '14', null, '2');
INSERT INTO `record` VALUES ('195', '2019-03-30 20:28:15', '4', '14', null, '2');
INSERT INTO `record` VALUES ('196', '2019-03-30 20:29:10', '4', '14', null, '2');
INSERT INTO `record` VALUES ('197', '2019-03-30 20:29:13', '4', '17', null, '2');
INSERT INTO `record` VALUES ('198', '2019-03-30 20:29:22', '4', '17', null, '2');
INSERT INTO `record` VALUES ('199', '2019-03-30 20:29:25', '4', '14', null, '2');
INSERT INTO `record` VALUES ('200', '2019-03-30 20:31:39', '4', '14', null, '2');
INSERT INTO `record` VALUES ('201', '2019-03-30 20:31:53', '4', '14', null, '2');
INSERT INTO `record` VALUES ('202', '2019-03-30 20:31:56', '4', '17', null, '2');
INSERT INTO `record` VALUES ('203', '2019-03-30 20:32:43', '4', '17', null, '2');
INSERT INTO `record` VALUES ('204', '2019-03-30 20:32:47', '4', '17', null, '2');
INSERT INTO `record` VALUES ('205', '2019-03-30 20:32:48', '4', '17', null, '2');
INSERT INTO `record` VALUES ('206', '2019-03-30 20:32:51', '4', '14', null, '2');
INSERT INTO `record` VALUES ('207', '2019-03-30 20:33:19', '4', '14', null, '2');
INSERT INTO `record` VALUES ('208', '2019-03-30 20:33:47', '4', '14', '评论1', '3');
INSERT INTO `record` VALUES ('209', '2019-03-30 20:34:52', '17', '17', null, '2');
INSERT INTO `record` VALUES ('210', '2019-03-30 20:37:18', '17', '14', null, '2');
INSERT INTO `record` VALUES ('211', '2019-03-30 20:42:29', '17', '14', null, '2');
INSERT INTO `record` VALUES ('212', '2019-03-30 20:50:52', '4', '2', '评论1', '6');
INSERT INTO `record` VALUES ('213', '2019-03-30 20:54:04', '4', '14', null, '2');
INSERT INTO `record` VALUES ('214', '2019-03-30 20:54:08', '4', '17', null, '2');
INSERT INTO `record` VALUES ('215', '2019-03-30 22:21:48', '18', '14', null, '2');
INSERT INTO `record` VALUES ('216', '2019-03-30 22:22:03', '18', '17', null, '2');
INSERT INTO `record` VALUES ('217', '2019-03-30 22:52:32', '21', '14', null, '2');
INSERT INTO `record` VALUES ('218', '2019-03-30 22:52:52', '21', '14', null, '1');
INSERT INTO `record` VALUES ('219', '2019-03-30 22:52:59', '21', '14', null, '2');
INSERT INTO `record` VALUES ('220', '2019-03-30 22:53:15', '21', '7', null, '4');
INSERT INTO `record` VALUES ('221', '2019-03-30 22:53:25', '21', '14', null, '2');
INSERT INTO `record` VALUES ('222', '2019-03-30 22:53:32', '21', '14', '测试', '3');
INSERT INTO `record` VALUES ('223', '2019-03-30 23:01:35', '22', '14', null, '2');
INSERT INTO `record` VALUES ('224', '2019-03-30 23:02:03', '22', '14', null, '1');
INSERT INTO `record` VALUES ('225', '2019-03-30 23:02:08', '22', '14', null, '2');
INSERT INTO `record` VALUES ('226', '2019-03-30 23:02:24', '22', '7', null, '4');
INSERT INTO `record` VALUES ('227', '2019-03-30 23:02:35', '22', '14', null, '2');
INSERT INTO `record` VALUES ('228', '2019-03-30 23:02:48', '22', '2', '测试', '6');
INSERT INTO `record` VALUES ('229', '2019-03-30 23:03:31', '22', '20', null, '2');
INSERT INTO `record` VALUES ('230', '2019-03-30 23:03:46', '22', '20', null, '2');
INSERT INTO `record` VALUES ('231', '2019-03-30 23:11:18', '23', '21', null, '2');
INSERT INTO `record` VALUES ('232', '2019-03-30 23:11:54', '23', '20', null, '2');
INSERT INTO `record` VALUES ('233', '2019-03-30 23:12:22', '23', '3', '测试', '6');
INSERT INTO `record` VALUES ('234', '2019-03-30 23:17:17', '24', '14', null, '2');
INSERT INTO `record` VALUES ('235', '2019-03-30 23:17:54', '24', '14', '测试', '3');
INSERT INTO `record` VALUES ('236', '2019-03-30 23:17:58', '24', '7', null, '4');
INSERT INTO `record` VALUES ('237', '2019-03-30 23:18:06', '24', '14', null, '2');
INSERT INTO `record` VALUES ('238', '2019-03-30 23:18:08', '24', '14', null, '1');
INSERT INTO `record` VALUES ('239', '2019-03-30 23:18:13', '24', '14', null, '2');
INSERT INTO `record` VALUES ('240', '2019-03-30 23:23:01', '25', '14', null, '2');
INSERT INTO `record` VALUES ('241', '2019-03-30 23:23:16', '25', '14', '测试', '3');
INSERT INTO `record` VALUES ('242', '2019-03-30 23:23:42', '25', '14', null, '1');
INSERT INTO `record` VALUES ('243', '2019-03-30 23:23:47', '25', '14', null, '2');
INSERT INTO `record` VALUES ('245', '2019-03-30 23:24:09', '25', '14', null, '2');
INSERT INTO `record` VALUES ('246', '2019-03-30 23:24:12', '25', '7', null, '4');
INSERT INTO `record` VALUES ('247', '2019-03-30 23:24:18', '25', '14', null, '2');
INSERT INTO `record` VALUES ('248', '2019-03-30 23:25:04', '1', '14', null, '2');
INSERT INTO `record` VALUES ('249', '2019-03-30 23:29:21', '7', '4', 'suqi', '6');
INSERT INTO `record` VALUES ('254', null, '26', '5', null, '8');
INSERT INTO `record` VALUES ('255', '2019-04-11 17:35:08', '26', '8', '测试', '6');
INSERT INTO `record` VALUES ('256', null, '28', '5', null, '8');
INSERT INTO `record` VALUES ('257', '2019-04-12 09:06:13', '4', '14', null, '2');
INSERT INTO `record` VALUES ('258', '2019-04-12 09:07:52', '28', '14', null, '2');
INSERT INTO `record` VALUES ('259', '2019-04-12 09:08:01', '28', '17', null, '2');
INSERT INTO `record` VALUES ('260', '2019-04-12 09:10:37', '28', '14', null, '2');
INSERT INTO `record` VALUES ('261', '2019-04-12 09:12:49', '28', '14', null, '2');
INSERT INTO `record` VALUES ('262', null, '26', '7', null, '8');
INSERT INTO `record` VALUES ('263', '2019-04-12 10:47:09', '29', '14', null, '2');
INSERT INTO `record` VALUES ('264', '2019-04-12 10:47:29', '29', '9', 'CCCCCCCC', '6');
INSERT INTO `record` VALUES ('265', '2019-04-12 10:48:39', '4', '14', null, '2');
INSERT INTO `record` VALUES ('266', '2019-04-12 11:35:24', '30', '14', null, '2');
INSERT INTO `record` VALUES ('267', '2019-04-12 11:35:42', '30', '14', '我是用户5', '3');
INSERT INTO `record` VALUES ('268', '2019-04-25 19:19:36', '1', '14', null, '2');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `realname` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `address` varchar(255) DEFAULT NULL COMMENT '住址',
  `role` int(11) DEFAULT NULL COMMENT '身份 1：超级管理员 2：管理员 3：用户 ',
  `headpic` varchar(255) DEFAULT NULL COMMENT '头像路劲',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', null, null, null, null, '1', null);
INSERT INTO `user` VALUES ('4', 'lisi', '123', '123', '22@w222', '李四', '321', '2', '1.jpg');
INSERT INTO `user` VALUES ('7', 'suqi', '123', '123', '22@w', '苏七', '321', '2', '2.jpg');
INSERT INTO `user` VALUES ('10', 'lilaoshi', '123', '123', '22@w', '李老师', '321', '2', '3.jpg');
INSERT INTO `user` VALUES ('11', '1', '123', '1', '22@w', '1', '321', '2', '1.jpg');
INSERT INTO `user` VALUES ('13', '3', '3', '3', '22@w', '3', '321', '2', '1.jpg');
INSERT INTO `user` VALUES ('14', '4', '4', '4', '22@w', '4', '4', '2', '1.jpg');
INSERT INTO `user` VALUES ('25', '测试', '123', '123123', '222@WE123', '测试', '123123', '2', '4.jpg');
INSERT INTO `user` VALUES ('26', '用户1', '123', '12', '12@12', '12', 'QW', '3', '5.jpg');
INSERT INTO `user` VALUES ('27', 'yonghu2', '123', '123', '12@ww', '啥的', '123', '2', '4.jpg');
INSERT INTO `user` VALUES ('28', 'yonghu3', '123', '123', '123@ww', '123', 'qwe', '3', '3.jpg');
INSERT INTO `user` VALUES ('29', 'yonghu4', '123', '123', '12@ww', '123', 'QW', '3', '2.jpg');
INSERT INTO `user` VALUES ('30', 'yonghu5', '123', '123', '123@ww', '123', 'QW', '3', '3.jpg');

-- ----------------------------
-- Table structure for void
-- ----------------------------
DROP TABLE IF EXISTS `void`;
CREATE TABLE `void` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voidname` varchar(255) DEFAULT NULL COMMENT '视频名称',
  `voidcontent` varchar(1000) DEFAULT NULL COMMENT '视屏介绍',
  `kindid` int(11) DEFAULT NULL COMMENT '视屏类别id',
  `uid` int(11) DEFAULT NULL COMMENT '发布人id',
  `teachername` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL COMMENT '发布时间',
  `viodpath` varchar(255) DEFAULT NULL COMMENT '路劲',
  `top` int(11) DEFAULT NULL,
  `role` int(11) DEFAULT NULL COMMENT '1：视频 2：资料 3：老师发布作业 4：学生t交作业',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of void
-- ----------------------------
INSERT INTO `void` VALUES ('12', '第二讲', 'C#第二讲3333', '5', '4', 'lisi', '2019-03-24 22:27:01', '/upload/images/20190324102701691.ppt', '0', '2');
INSERT INTO `void` VALUES ('14', '第二讲', 'C#第二讲', '5', '7', 'suqi', '2019-03-24 23:08:00', '/upload/images/20190324110800582.mp4', '1', '1');
INSERT INTO `void` VALUES ('16', '第一讲', 'C#第一讲', '5', '4', 'lisi', '2019-03-24 23:10:57', '/upload/images/20190324111057713.ppt', '0', '2');
INSERT INTO `void` VALUES ('17', '第一讲', 'C#第一讲', '5', '4', 'lisi', '2019-03-24 23:11:30', '/upload/images/20190324111130819.mp4', '0', '1');
