/*
Navicat MySQL Data Transfer

Source Server         : 2017
Source Server Version : 50615
Source Host           : 127.0.0.1:3306
Source Database       : shop2

Target Server Type    : MYSQL
Target Server Version : 50615
File Encoding         : 65001

Date: 2017-12-09 17:54:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '蔬菜');
INSERT INTO `category` VALUES ('2', '水果');
INSERT INTO `category` VALUES ('3', '肉类');
INSERT INTO `category` VALUES ('4', '农场直达');
INSERT INTO `category` VALUES ('5', '新鲜应季');
INSERT INTO `category` VALUES ('6', '折扣热销');
INSERT INTO `category` VALUES ('7', '海外代购');
INSERT INTO `category` VALUES ('8', '新品尝鲜');

-- ----------------------------
-- Table structure for `categorysecond`
-- ----------------------------
DROP TABLE IF EXISTS `categorysecond`;
CREATE TABLE `categorysecond` (
  `csid` int(11) NOT NULL AUTO_INCREMENT,
  `csname` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`csid`),
  KEY `FK936FCAF21DB1FD15` (`cid`),
  CONSTRAINT `FK936FCAF21DB1FD15` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categorysecond
-- ----------------------------
INSERT INTO `categorysecond` VALUES ('1', '库存新鲜', '1');
INSERT INTO `categorysecond` VALUES ('2', '本季热销', '1');
INSERT INTO `categorysecond` VALUES ('3', '健康首选', '1');
INSERT INTO `categorysecond` VALUES ('4', '素食美味', '1');
INSERT INTO `categorysecond` VALUES ('5', '适宜冷藏', '1');
INSERT INTO `categorysecond` VALUES ('6', '汁水充沛', '2');
INSERT INTO `categorysecond` VALUES ('7', '维生素c', '2');
INSERT INTO `categorysecond` VALUES ('8', '应季最新', '2');
INSERT INTO `categorysecond` VALUES ('9', '销售火热', '2');
INSERT INTO `categorysecond` VALUES ('10', '西餐首选', '3');
INSERT INTO `categorysecond` VALUES ('11', '适宜煎烤', '3');
INSERT INTO `categorysecond` VALUES ('12', '低卡路里', '3');
INSERT INTO `categorysecond` VALUES ('13', '西部农场', '4');
INSERT INTO `categorysecond` VALUES ('14', '东部农场', '4');
INSERT INTO `categorysecond` VALUES ('15', '田庄农场', '4');
INSERT INTO `categorysecond` VALUES ('16', '采摘园', '4');
INSERT INTO `categorysecond` VALUES ('17', '养生首选', '5');
INSERT INTO `categorysecond` VALUES ('18', '荤素搭配', '5');
INSERT INTO `categorysecond` VALUES ('19', '本季最旺', '5');
INSERT INTO `categorysecond` VALUES ('20', '蔬菜热销', '6');
INSERT INTO `categorysecond` VALUES ('21', '肉类热销', '6');
INSERT INTO `categorysecond` VALUES ('22', '水果热销', '6');
INSERT INTO `categorysecond` VALUES ('23', '美国代购', '7');
INSERT INTO `categorysecond` VALUES ('24', '新西兰原产地', '7');
INSERT INTO `categorysecond` VALUES ('25', '加拿大农场', '7');
INSERT INTO `categorysecond` VALUES ('26', '水果新品', '8');
INSERT INTO `categorysecond` VALUES ('28', '蔬菜新品', '8');
INSERT INTO `categorysecond` VALUES ('29', '肉类新品', '8');

-- ----------------------------
-- Table structure for `orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `FKE8B2AB6166C01961` (`oid`),
  KEY `FKE8B2AB6171DB7AE4` (`pid`),
  KEY `FKE8B2AB6140ACF87A` (`oid`),
  CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`oid`) REFERENCES `orders` (`oid`),
  CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('1', '1', '18', '6', '1');
INSERT INTO `orderitem` VALUES ('2', '1', '25', '2', '2');
INSERT INTO `orderitem` VALUES ('3', '1', '25', '2', '3');
INSERT INTO `orderitem` VALUES ('4', '1', '25', '2', '4');
INSERT INTO `orderitem` VALUES ('5', '1', '25', '2', '5');
INSERT INTO `orderitem` VALUES ('6', '1', '25', '2', '6');
INSERT INTO `orderitem` VALUES ('7', '1', '25', '2', '7');
INSERT INTO `orderitem` VALUES ('8', '1', '25', '2', '8');
INSERT INTO `orderitem` VALUES ('9', '2', '36', '6', '9');
INSERT INTO `orderitem` VALUES ('10', '1', '25', '2', '9');
INSERT INTO `orderitem` VALUES ('11', '1', '25', '2', '10');
INSERT INTO `orderitem` VALUES ('12', '2', '36', '6', '10');
INSERT INTO `orderitem` VALUES ('13', '1', '25', '2', '11');
INSERT INTO `orderitem` VALUES ('14', '2', '36', '6', '11');
INSERT INTO `orderitem` VALUES ('15', '1', '25', '2', '12');
INSERT INTO `orderitem` VALUES ('16', '2', '36', '6', '12');
INSERT INTO `orderitem` VALUES ('17', '2', '36', '6', '13');
INSERT INTO `orderitem` VALUES ('18', '1', '25', '2', '13');
INSERT INTO `orderitem` VALUES ('19', '1', '25', '2', '14');
INSERT INTO `orderitem` VALUES ('20', '2', '36', '6', '14');
INSERT INTO `orderitem` VALUES ('21', '1', '25', '2', '15');
INSERT INTO `orderitem` VALUES ('22', '2', '36', '6', '15');
INSERT INTO `orderitem` VALUES ('23', '1', '25', '2', '16');
INSERT INTO `orderitem` VALUES ('24', '2', '36', '6', '16');
INSERT INTO `orderitem` VALUES ('25', '2', '36', '6', '17');
INSERT INTO `orderitem` VALUES ('26', '1', '25', '2', '17');
INSERT INTO `orderitem` VALUES ('27', '1', '25', '2', '18');
INSERT INTO `orderitem` VALUES ('28', '2', '36', '6', '18');
INSERT INTO `orderitem` VALUES ('29', '2', '36', '6', '19');
INSERT INTO `orderitem` VALUES ('30', '1', '25', '2', '19');
INSERT INTO `orderitem` VALUES ('31', '1', '25', '2', '20');
INSERT INTO `orderitem` VALUES ('32', '2', '36', '6', '20');
INSERT INTO `orderitem` VALUES ('33', '1', '25', '2', '21');
INSERT INTO `orderitem` VALUES ('34', '2', '36', '6', '21');
INSERT INTO `orderitem` VALUES ('35', '2', '36', '6', '22');
INSERT INTO `orderitem` VALUES ('36', '1', '25', '2', '22');
INSERT INTO `orderitem` VALUES ('37', '2', '36', '6', '23');
INSERT INTO `orderitem` VALUES ('38', '1', '25', '2', '23');
INSERT INTO `orderitem` VALUES ('39', '1', '25', '2', '24');
INSERT INTO `orderitem` VALUES ('40', '2', '36', '6', '24');
INSERT INTO `orderitem` VALUES ('41', '1', '25', '2', '25');
INSERT INTO `orderitem` VALUES ('42', '2', '36', '6', '25');
INSERT INTO `orderitem` VALUES ('43', '1', '25', '2', '26');
INSERT INTO `orderitem` VALUES ('44', '2', '36', '6', '26');
INSERT INTO `orderitem` VALUES ('45', '2', '36', '6', '27');
INSERT INTO `orderitem` VALUES ('46', '1', '25', '2', '27');
INSERT INTO `orderitem` VALUES ('47', '1', '25', '2', '28');
INSERT INTO `orderitem` VALUES ('48', '2', '36', '6', '28');
INSERT INTO `orderitem` VALUES ('49', '1', '25', '2', '29');
INSERT INTO `orderitem` VALUES ('50', '2', '36', '6', '29');
INSERT INTO `orderitem` VALUES ('51', '2', '36', '6', '30');
INSERT INTO `orderitem` VALUES ('52', '1', '25', '2', '30');
INSERT INTO `orderitem` VALUES ('53', '1', '25', '2', '31');
INSERT INTO `orderitem` VALUES ('54', '2', '36', '6', '31');
INSERT INTO `orderitem` VALUES ('55', '1', '25', '2', '32');
INSERT INTO `orderitem` VALUES ('56', '2', '36', '6', '32');
INSERT INTO `orderitem` VALUES ('57', '2', '36', '6', '33');
INSERT INTO `orderitem` VALUES ('58', '1', '25', '2', '33');
INSERT INTO `orderitem` VALUES ('59', '2', '36', '6', '34');
INSERT INTO `orderitem` VALUES ('60', '1', '25', '2', '34');
INSERT INTO `orderitem` VALUES ('61', '1', '25', '2', '35');
INSERT INTO `orderitem` VALUES ('62', '2', '36', '6', '35');
INSERT INTO `orderitem` VALUES ('63', '2', '36', '6', '36');
INSERT INTO `orderitem` VALUES ('64', '1', '25', '2', '36');
INSERT INTO `orderitem` VALUES ('65', '1', '25', '2', '37');
INSERT INTO `orderitem` VALUES ('66', '2', '36', '6', '37');
INSERT INTO `orderitem` VALUES ('67', '1', '25', '2', '38');
INSERT INTO `orderitem` VALUES ('68', '2', '36', '6', '38');
INSERT INTO `orderitem` VALUES ('69', '2', '36', '6', '39');
INSERT INTO `orderitem` VALUES ('70', '1', '25', '2', '39');
INSERT INTO `orderitem` VALUES ('71', '2', '36', '6', '40');
INSERT INTO `orderitem` VALUES ('72', '1', '25', '2', '40');
INSERT INTO `orderitem` VALUES ('73', '1', '25', '2', '41');
INSERT INTO `orderitem` VALUES ('74', '2', '36', '6', '41');
INSERT INTO `orderitem` VALUES ('75', '1', '25', '2', '42');
INSERT INTO `orderitem` VALUES ('76', '2', '36', '6', '42');
INSERT INTO `orderitem` VALUES ('77', '2', '36', '6', '43');
INSERT INTO `orderitem` VALUES ('78', '1', '25', '2', '43');
INSERT INTO `orderitem` VALUES ('79', '1', '25', '2', '44');
INSERT INTO `orderitem` VALUES ('80', '2', '36', '6', '44');
INSERT INTO `orderitem` VALUES ('81', '2', '36', '6', '45');
INSERT INTO `orderitem` VALUES ('82', '1', '25', '2', '45');
INSERT INTO `orderitem` VALUES ('83', '1', '25', '2', '46');
INSERT INTO `orderitem` VALUES ('84', '2', '36', '6', '46');
INSERT INTO `orderitem` VALUES ('85', '2', '36', '6', '47');
INSERT INTO `orderitem` VALUES ('86', '1', '25', '2', '47');
INSERT INTO `orderitem` VALUES ('87', '1', '25', '2', '48');
INSERT INTO `orderitem` VALUES ('88', '2', '36', '6', '48');
INSERT INTO `orderitem` VALUES ('89', '1', '25', '2', '49');
INSERT INTO `orderitem` VALUES ('90', '2', '36', '6', '49');
INSERT INTO `orderitem` VALUES ('91', '1', '25', '2', '50');
INSERT INTO `orderitem` VALUES ('92', '2', '36', '6', '50');
INSERT INTO `orderitem` VALUES ('93', '1', '25', '2', '51');
INSERT INTO `orderitem` VALUES ('94', '2', '36', '6', '51');
INSERT INTO `orderitem` VALUES ('95', '2', '36', '6', '52');
INSERT INTO `orderitem` VALUES ('96', '1', '25', '2', '52');
INSERT INTO `orderitem` VALUES ('97', '1', '25', '2', '53');
INSERT INTO `orderitem` VALUES ('98', '2', '36', '6', '53');
INSERT INTO `orderitem` VALUES ('99', '1', '25', '2', '54');
INSERT INTO `orderitem` VALUES ('100', '2', '36', '6', '54');
INSERT INTO `orderitem` VALUES ('101', '2', '36', '6', '55');
INSERT INTO `orderitem` VALUES ('102', '1', '25', '2', '55');
INSERT INTO `orderitem` VALUES ('103', '1', '25', '2', '56');
INSERT INTO `orderitem` VALUES ('104', '2', '36', '6', '56');
INSERT INTO `orderitem` VALUES ('105', '1', '25', '2', '57');
INSERT INTO `orderitem` VALUES ('106', '2', '36', '6', '57');
INSERT INTO `orderitem` VALUES ('107', '2', '36', '6', '58');
INSERT INTO `orderitem` VALUES ('108', '1', '25', '2', '58');
INSERT INTO `orderitem` VALUES ('109', '1', '25', '2', '59');
INSERT INTO `orderitem` VALUES ('110', '2', '36', '6', '59');
INSERT INTO `orderitem` VALUES ('111', '2', '36', '6', '60');
INSERT INTO `orderitem` VALUES ('112', '1', '25', '2', '60');
INSERT INTO `orderitem` VALUES ('113', '1', '25', '2', '61');
INSERT INTO `orderitem` VALUES ('114', '2', '36', '6', '61');
INSERT INTO `orderitem` VALUES ('115', '1', '25', '2', '62');
INSERT INTO `orderitem` VALUES ('116', '2', '36', '6', '62');
INSERT INTO `orderitem` VALUES ('117', '2', '36', '6', '63');
INSERT INTO `orderitem` VALUES ('118', '1', '25', '2', '63');
INSERT INTO `orderitem` VALUES ('119', '1', '25', '2', '64');
INSERT INTO `orderitem` VALUES ('120', '2', '36', '6', '64');
INSERT INTO `orderitem` VALUES ('121', '2', '36', '6', '65');
INSERT INTO `orderitem` VALUES ('122', '1', '25', '2', '65');
INSERT INTO `orderitem` VALUES ('123', '1', '25', '2', '66');
INSERT INTO `orderitem` VALUES ('124', '2', '36', '6', '66');
INSERT INTO `orderitem` VALUES ('125', '1', '25', '2', '67');
INSERT INTO `orderitem` VALUES ('126', '2', '36', '6', '67');
INSERT INTO `orderitem` VALUES ('127', '2', '36', '6', '68');
INSERT INTO `orderitem` VALUES ('128', '3', '75', '2', '68');
INSERT INTO `orderitem` VALUES ('129', '2', '36', '6', '69');
INSERT INTO `orderitem` VALUES ('130', '3', '75', '2', '69');
INSERT INTO `orderitem` VALUES ('131', '2', '36', '6', '70');
INSERT INTO `orderitem` VALUES ('132', '3', '75', '2', '70');
INSERT INTO `orderitem` VALUES ('133', '3', '75', '2', '71');
INSERT INTO `orderitem` VALUES ('134', '2', '36', '6', '71');
INSERT INTO `orderitem` VALUES ('135', '3', '75', '2', '72');
INSERT INTO `orderitem` VALUES ('136', '2', '36', '6', '72');
INSERT INTO `orderitem` VALUES ('137', '2', '36', '6', '73');
INSERT INTO `orderitem` VALUES ('138', '3', '75', '2', '73');
INSERT INTO `orderitem` VALUES ('139', '3', '75', '2', '74');
INSERT INTO `orderitem` VALUES ('140', '2', '36', '6', '74');
INSERT INTO `orderitem` VALUES ('141', '3', '75', '2', '75');
INSERT INTO `orderitem` VALUES ('142', '2', '36', '6', '75');
INSERT INTO `orderitem` VALUES ('143', '2', '36', '6', '76');
INSERT INTO `orderitem` VALUES ('144', '3', '75', '2', '76');
INSERT INTO `orderitem` VALUES ('145', '2', '36', '6', '77');
INSERT INTO `orderitem` VALUES ('146', '3', '75', '2', '77');
INSERT INTO `orderitem` VALUES ('147', '3', '75', '2', '78');
INSERT INTO `orderitem` VALUES ('148', '2', '36', '6', '78');
INSERT INTO `orderitem` VALUES ('149', '3', '75', '2', '79');
INSERT INTO `orderitem` VALUES ('150', '2', '36', '6', '79');
INSERT INTO `orderitem` VALUES ('151', '3', '75', '2', '80');
INSERT INTO `orderitem` VALUES ('152', '2', '36', '6', '80');
INSERT INTO `orderitem` VALUES ('153', '2', '36', '6', '81');
INSERT INTO `orderitem` VALUES ('154', '3', '75', '2', '81');
INSERT INTO `orderitem` VALUES ('155', '2', '36', '6', '82');
INSERT INTO `orderitem` VALUES ('156', '3', '75', '2', '82');
INSERT INTO `orderitem` VALUES ('157', '3', '75', '2', '83');
INSERT INTO `orderitem` VALUES ('158', '2', '36', '6', '83');
INSERT INTO `orderitem` VALUES ('159', '2', '36', '6', '84');
INSERT INTO `orderitem` VALUES ('160', '3', '75', '2', '84');
INSERT INTO `orderitem` VALUES ('161', '2', '36', '6', '85');
INSERT INTO `orderitem` VALUES ('162', '3', '75', '2', '85');
INSERT INTO `orderitem` VALUES ('163', '2', '36', '6', '86');
INSERT INTO `orderitem` VALUES ('164', '3', '75', '2', '86');
INSERT INTO `orderitem` VALUES ('165', '2', '36', '6', '87');
INSERT INTO `orderitem` VALUES ('166', '3', '75', '2', '87');
INSERT INTO `orderitem` VALUES ('167', '3', '75', '2', '88');
INSERT INTO `orderitem` VALUES ('168', '2', '36', '6', '88');
INSERT INTO `orderitem` VALUES ('169', '2', '36', '6', '89');
INSERT INTO `orderitem` VALUES ('170', '3', '75', '2', '89');
INSERT INTO `orderitem` VALUES ('171', '3', '75', '2', '90');
INSERT INTO `orderitem` VALUES ('172', '2', '36', '6', '90');
INSERT INTO `orderitem` VALUES ('173', '3', '75', '2', '91');
INSERT INTO `orderitem` VALUES ('174', '2', '36', '6', '91');
INSERT INTO `orderitem` VALUES ('175', '2', '36', '6', '92');
INSERT INTO `orderitem` VALUES ('176', '3', '75', '2', '92');
INSERT INTO `orderitem` VALUES ('177', '2', '36', '6', '93');
INSERT INTO `orderitem` VALUES ('178', '3', '75', '2', '93');
INSERT INTO `orderitem` VALUES ('179', '3', '75', '2', '94');
INSERT INTO `orderitem` VALUES ('180', '2', '36', '6', '94');
INSERT INTO `orderitem` VALUES ('181', '3', '75', '2', '95');
INSERT INTO `orderitem` VALUES ('182', '3', '75', '2', '96');
INSERT INTO `orderitem` VALUES ('183', '2', '36', '6', '96');
INSERT INTO `orderitem` VALUES ('184', '3', '75', '2', '97');
INSERT INTO `orderitem` VALUES ('185', '2', '36', '6', '97');
INSERT INTO `orderitem` VALUES ('186', '2', '36', '6', '98');
INSERT INTO `orderitem` VALUES ('187', '3', '75', '2', '98');
INSERT INTO `orderitem` VALUES ('188', '3', '75', '2', '99');
INSERT INTO `orderitem` VALUES ('189', '2', '36', '6', '99');
INSERT INTO `orderitem` VALUES ('190', '3', '75', '2', '100');
INSERT INTO `orderitem` VALUES ('191', '2', '36', '6', '100');
INSERT INTO `orderitem` VALUES ('192', '3', '75', '2', '101');
INSERT INTO `orderitem` VALUES ('193', '2', '36', '6', '101');
INSERT INTO `orderitem` VALUES ('194', '2', '36', '6', '102');
INSERT INTO `orderitem` VALUES ('195', '3', '75', '2', '102');
INSERT INTO `orderitem` VALUES ('196', '3', '75', '2', '103');
INSERT INTO `orderitem` VALUES ('197', '2', '36', '6', '103');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `total` double DEFAULT NULL,
  `ordertime` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `addr` varchar(50) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `FKC3DF62E5AA3D9C7` (`uid`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '18', '2017-12-09 15:25:39', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('2', '25', '2017-12-09 16:17:57', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('3', '25', '2017-12-09 16:18:48', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('4', '25', '2017-12-09 16:29:43', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('5', '25', '2017-12-09 16:31:13', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('6', '25', '2017-12-09 16:31:51', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('7', '25', '2017-12-09 16:34:27', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('8', '25', '2017-12-09 16:35:19', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('9', '61', '2017-12-09 16:37:35', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('10', '61', '2017-12-09 16:37:52', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('11', '61', '2017-12-09 16:38:39', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('12', '61', '2017-12-09 16:38:49', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('13', '61', '2017-12-09 16:39:43', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('14', '61', '2017-12-09 16:41:10', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('15', '61', '2017-12-09 16:42:11', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('16', '61', '2017-12-09 16:42:30', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('17', '61', '2017-12-09 16:43:03', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('18', '61', '2017-12-09 16:43:13', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('19', '61', '2017-12-09 16:43:41', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('20', '61', '2017-12-09 16:44:00', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('21', '61', '2017-12-09 16:45:14', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('22', '61', '2017-12-09 16:45:42', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('23', '61', '2017-12-09 16:46:24', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('24', '61', '2017-12-09 16:47:15', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('25', '61', '2017-12-09 16:47:54', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('26', '61', '2017-12-09 16:48:14', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('27', '61', '2017-12-09 16:49:23', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('28', '61', '2017-12-09 16:50:36', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('29', '61', '2017-12-09 16:53:59', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('30', '61', '2017-12-09 16:55:28', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('31', '61', '2017-12-09 16:55:47', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('32', '61', '2017-12-09 16:56:01', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('33', '61', '2017-12-09 16:56:35', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('34', '61', '2017-12-09 16:56:54', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('35', '61', '2017-12-09 16:58:48', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('36', '61', '2017-12-09 17:00:40', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('37', '61', '2017-12-09 17:01:56', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('38', '61', '2017-12-09 17:02:11', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('39', '61', '2017-12-09 17:02:14', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('40', '61', '2017-12-09 17:03:31', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('41', '61', '2017-12-09 17:04:35', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('42', '61', '2017-12-09 17:04:50', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('43', '61', '2017-12-09 17:05:06', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('44', '61', '2017-12-09 17:05:20', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('45', '61', '2017-12-09 17:05:56', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('46', '61', '2017-12-09 17:06:33', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('47', '61', '2017-12-09 17:09:13', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('48', '61', '2017-12-09 17:09:50', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('49', '61', '2017-12-09 17:10:05', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('50', '61', '2017-12-09 17:10:25', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('51', '61', '2017-12-09 17:11:06', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('52', '61', '2017-12-09 17:11:37', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('53', '61', '2017-12-09 17:11:51', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('54', '61', '2017-12-09 17:12:04', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('55', '61', '2017-12-09 17:12:28', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('56', '61', '2017-12-09 17:14:17', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('57', '61', '2017-12-09 17:15:17', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('58', '61', '2017-12-09 17:15:29', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('59', '61', '2017-12-09 17:16:12', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('60', '61', '2017-12-09 17:17:01', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('61', '61', '2017-12-09 17:18:17', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('62', '61', '2017-12-09 17:19:55', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('63', '61', '2017-12-09 17:20:08', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('64', '61', '2017-12-09 17:20:31', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('65', '61', '2017-12-09 17:20:53', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('66', '61', '2017-12-09 17:21:32', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('67', '61', '2017-12-09 17:21:48', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('68', '111', '2017-12-09 17:24:51', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('69', '111', '2017-12-09 17:25:06', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('70', '111', '2017-12-09 17:26:17', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('71', '111', '2017-12-09 17:26:35', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('72', '111', '2017-12-09 17:27:12', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('73', '111', '2017-12-09 17:27:35', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('74', '111', '2017-12-09 17:31:08', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('75', '111', '2017-12-09 17:31:18', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('76', '111', '2017-12-09 17:31:40', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('77', '111', '2017-12-09 17:31:50', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('78', '111', '2017-12-09 17:32:02', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('79', '111', '2017-12-09 17:32:21', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('80', '111', '2017-12-09 17:33:07', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('81', '111', '2017-12-09 17:33:23', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('82', '111', '2017-12-09 17:33:53', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('83', '111', '2017-12-09 17:34:11', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('84', '111', '2017-12-09 17:34:21', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('85', '111', '2017-12-09 17:35:40', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('86', '111', '2017-12-09 17:35:57', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('87', '111', '2017-12-09 17:36:10', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('88', '111', '2017-12-09 17:36:32', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('89', '111', '2017-12-09 17:40:08', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('90', '111', '2017-12-09 17:40:29', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('91', '111', '2017-12-09 17:40:47', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('92', '111', '2017-12-09 17:41:03', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('93', '111', '2017-12-09 17:41:09', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('94', '111', '2017-12-09 17:41:32', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('95', '75', '2017-12-09 17:42:09', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('96', '111', '2017-12-09 17:45:41', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('97', '111', '2017-12-09 17:46:09', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('98', '111', '2017-12-09 17:47:48', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('99', '111', '2017-12-09 17:49:20', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('100', '111', '2017-12-09 17:50:00', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('101', '111', '2017-12-09 17:50:15', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('102', '111', '2017-12-09 17:50:26', '1', null, null, null, '2');
INSERT INTO `orders` VALUES ('103', '111', '2017-12-09 17:50:49', '1', null, null, null, '2');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) DEFAULT NULL,
  `market_price` double DEFAULT NULL,
  `shop_price` double DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `pdesc` varchar(255) DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `pdate` datetime DEFAULT NULL,
  `csid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FKED8DCCEFB9B74E02` (`csid`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`csid`) REFERENCES `categorysecond` (`csid`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '西蓝花', '20', '32', 'picture/isotope-01.jpg', '双十一促销', '1', '2014-11-02 20:18:00', '1');
INSERT INTO `product` VALUES ('2', '青柠', '20', '25', 'picture/isotope-02.jpg', '清爽一夏', '1', '2014-11-04 20:18:00', '1');
INSERT INTO `product` VALUES ('3', '菠菜', '10', '15', 'picture/isotope-03.jpg', '健康饮食首选', '1', '2014-10-01 20:18:00', '1');
INSERT INTO `product` VALUES ('4', '豆角', '30', '32', 'picture/03.jpg', '清热去火', '1', '2014-12-07 20:18:00', '1');
INSERT INTO `product` VALUES ('5', '苹果', '15', '19', 'picture/masonry-06.jpg', '清甜无比', '1', '2014-11-02 20:18:00', '1');
INSERT INTO `product` VALUES ('6', '鸭梨', '15', '18', 'picture/masonry-09.jpg', '多汁清甜', '1', '2014-11-10 15:18:00', '1');
INSERT INTO `product` VALUES ('7', '莴苣', '19', '20', 'picture/masonry-08.jpg', '甘甜清口', '1', '2014-11-03 20:18:00', '1');
INSERT INTO `product` VALUES ('8', '西红柿', '14', '22', 'picture/masonry-010.jpg', 'Vc补充', '1', '2014-11-03 20:18:00', '1');
INSERT INTO `product` VALUES ('9', '黄瓜', '10', '20', 'picture/masonry-012.jpg', '热销', '0', '2014-11-03 20:18:00', '1');
INSERT INTO `product` VALUES ('10', '苦瓜', '15', '20', 'picture/011.jpg', null, '1', '2014-11-03 20:18:00', '1');
INSERT INTO `product` VALUES ('11', '油麦', '15', '20', 'picture/bc.jpg', null, '1', '2014-11-03 20:18:00', '1');
INSERT INTO `product` VALUES ('12', '土豆', '20', '20', 'picture/td.jpg', null, '1', '2014-11-03 20:18:00', '2');
INSERT INTO `product` VALUES ('13', '树莓', '21', '22', 'picture/widget-product-03.jpg', null, '1', '2014-11-03 20:18:00', '2');
INSERT INTO `product` VALUES ('14', '鸭梨', '22', '25', 'picture/masonry-09.jpg', null, '1', '2014-11-03 20:18:00', '2');
INSERT INTO `product` VALUES ('15', '牛排', '30', '33', 'picture/cat-03.jpg', null, '1', '2014-11-03 20:18:00', '2');
INSERT INTO `product` VALUES ('16', '猪扒', '20', '25', 'picture/015.jpg', null, null, null, '2');
INSERT INTO `product` VALUES ('17', '西红柿', '25', '30', 'picture/masonry-010.jpg', null, null, null, '2');
INSERT INTO `product` VALUES ('18', '青柠', '21', '23', 'picture/isotope-02.jpg', null, null, null, '2');
INSERT INTO `product` VALUES ('19', '木瓜', '22', '26', 'picture/blog-detail-01.jpg', null, null, null, '2');
INSERT INTO `product` VALUES ('20', '茄子', '23', '26', 'picture/qz.jpg', null, null, null, '2');
INSERT INTO `product` VALUES ('21', '油麦', '24', '26', 'picture/bc.jpg', null, null, null, '2');
INSERT INTO `product` VALUES ('22', '胡萝卜', '22', '23', 'picture/lb.jpg', null, null, null, '2');
INSERT INTO `product` VALUES ('23', '生菜', '22', '25', 'picture/01.jpg', null, null, null, '3');
INSERT INTO `product` VALUES ('24', '土豆', '26', '30', 'picture/td.jpg', null, null, null, '3');
INSERT INTO `product` VALUES ('25', '西蓝花', '26', '28', 'picture/isotope-01.jpg', null, null, null, '3');
INSERT INTO `product` VALUES ('26', '木瓜', '22', '26', 'picture/blog-detail-01.jpg', null, null, null, '3');
INSERT INTO `product` VALUES ('27', '苹果', '15', '19', 'picture/thumb-cart-02.jpg', null, null, null, '3');
INSERT INTO `product` VALUES ('28', '梨', '15', '18', 'picture/09.jpg', null, null, null, '3');
INSERT INTO `product` VALUES ('29', '树莓', '15', '20', 'picture/widget-product-03.jpg', null, null, '2017-12-04 19:58:40', '3');
INSERT INTO `product` VALUES ('30', '青柠', '21', '23', 'picture/isotope-02.jpg', null, null, null, '3');
INSERT INTO `product` VALUES ('31', '西瓜', '22', '25', 'picture/xg.jpg', null, null, null, '3');
INSERT INTO `product` VALUES ('32', '香蕉', '12', '15', 'picture/xj.jpg', null, null, null, '3');
INSERT INTO `product` VALUES ('33', '猪扒', '20', '25', 'picture/015.jpg', null, null, null, '3');
INSERT INTO `product` VALUES ('34', '荷兰豆', '22', '25', 'picture/ld.jpg', null, null, null, '3');
INSERT INTO `product` VALUES ('35', '黄瓜', '12', '15', 'picture/masonry-012.jpg', null, null, null, '3');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'aaa', 'aaa', 'aaa', 'aaa@shop.com', '123', '222', '0', '3a82fe82c65e45a59798cea81394fd3507ef5fb6b71642a486b151383430e5ad');
INSERT INTO `user` VALUES ('2', 'zzz', 'zzz', 'zzz', 'aaa@shop.com', 'zzz', 'zzz', '1', null);
