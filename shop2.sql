/*
Navicat MySQL Data Transfer

Source Server         : 2017
Source Server Version : 50615
Source Host           : 127.0.0.1:3306
Source Database       : shop2

Target Server Type    : MYSQL
Target Server Version : 50615
File Encoding         : 65001

Date: 2017-12-15 19:51:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `adminuser`
-- ----------------------------
DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminuser
-- ----------------------------
INSERT INTO `adminuser` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categorysecond
-- ----------------------------
INSERT INTO `categorysecond` VALUES ('1', '库存新鲜', null);
INSERT INTO `categorysecond` VALUES ('2', '本季热销', null);
INSERT INTO `categorysecond` VALUES ('3', '健康首选', null);
INSERT INTO `categorysecond` VALUES ('4', '素食美味', null);
INSERT INTO `categorysecond` VALUES ('5', '适宜冷藏', '2');
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
INSERT INTO `categorysecond` VALUES ('27', '爱尔兰草原', '8');
INSERT INTO `categorysecond` VALUES ('28', '蔬菜热销', null);
INSERT INTO `categorysecond` VALUES ('29', '肉类新品', '3');

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
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('323', '1', '20', '12', '189');
INSERT INTO `orderitem` VALUES ('324', '1', '20', '10', '190');
INSERT INTO `orderitem` VALUES ('325', '1', '20', '10', null);
INSERT INTO `orderitem` VALUES ('326', '1', '22', '8', null);
INSERT INTO `orderitem` VALUES ('327', '6', '132', '8', null);
INSERT INTO `orderitem` VALUES ('328', '4', '128', '1', '193');
INSERT INTO `orderitem` VALUES ('329', '4', '100', '2', null);
INSERT INTO `orderitem` VALUES ('330', '4', '100', '2', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('189', '20', '2017-12-10 15:45:06', '1', '', null, null, '4');
INSERT INTO `orders` VALUES ('190', '20', '2017-12-10 15:46:01', '1', '', null, null, '4');
INSERT INTO `orders` VALUES ('193', '128', '2017-12-15 19:09:51', '1', null, null, null, '15');

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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

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
INSERT INTO `product` VALUES ('12', '土豆', '20', '20', 'picture/td.jpg', null, '1', '2014-11-03 20:18:00', '2');
INSERT INTO `product` VALUES ('13', '树莓', '21', '22', 'picture/widget-product-03.jpg', null, '1', '2014-11-03 20:18:00', '2');
INSERT INTO `product` VALUES ('14', '鸭梨', '22', '25', 'picture/masonry-09.jpg', null, '1', '2014-11-03 20:18:00', '2');
INSERT INTO `product` VALUES ('15', '牛排', '30', '33', 'picture/cat-03.jpg', null, '1', '2014-11-03 20:18:00', '2');
INSERT INTO `product` VALUES ('16', '猪扒', '20', '25', 'picture/015.jpg', null, '0', null, '2');
INSERT INTO `product` VALUES ('17', '西红柿', '25', '30', 'picture/masonry-010.jpg', null, '0', null, '2');
INSERT INTO `product` VALUES ('18', '青柠', '21', '23', 'picture/isotope-02.jpg', null, '0', null, '2');
INSERT INTO `product` VALUES ('19', '木瓜', '22', '26', 'picture/blog-detail-01.jpg', null, '0', null, '2');
INSERT INTO `product` VALUES ('20', '茄子', '23', '26', 'picture/qz.jpg', null, '0', null, '2');
INSERT INTO `product` VALUES ('21', '油麦', '24', '26', 'picture/bc.jpg', null, '0', null, '3');
INSERT INTO `product` VALUES ('22', '胡萝卜', '22', '23', 'picture/lb.jpg', null, '0', null, '3');
INSERT INTO `product` VALUES ('23', '生菜', '22', '25', 'picture/01.jpg', null, '0', null, '3');
INSERT INTO `product` VALUES ('24', '土豆', '26', '30', 'picture/td.jpg', null, '0', null, '3');
INSERT INTO `product` VALUES ('25', '西蓝花', '26', '28', 'picture/isotope-01.jpg', null, '0', null, '3');
INSERT INTO `product` VALUES ('26', '木瓜', '22', '26', 'picture/blog-detail-01.jpg', null, '0', null, '3');
INSERT INTO `product` VALUES ('27', '苹果', '15', '19', 'picture/thumb-cart-02.jpg', null, '0', null, '3');
INSERT INTO `product` VALUES ('28', '梨', '15', '18', 'picture/09.jpg', null, '0', null, '3');
INSERT INTO `product` VALUES ('29', '树莓', '15', '20', 'picture/widget-product-03.jpg', null, '0', '2017-12-04 19:58:40', '3');
INSERT INTO `product` VALUES ('30', '青柠', '21', '23', 'picture/isotope-02.jpg', null, '0', null, '3');
INSERT INTO `product` VALUES ('31', '西瓜', '22', '25', 'picture/xg.jpg', null, '0', null, '3');
INSERT INTO `product` VALUES ('32', '香蕉', '12', '15', 'picture/xj.jpg', null, '0', null, '3');
INSERT INTO `product` VALUES ('33', '猪扒', '20', '25', 'picture/015.jpg', null, '0', null, '5');
INSERT INTO `product` VALUES ('34', '荷兰豆', '22', '25', 'picture/ld.jpg', null, '0', null, '5');
INSERT INTO `product` VALUES ('35', '黄瓜', '12', '15', 'picture/masonry-012.jpg', null, '0', null, '5');
INSERT INTO `product` VALUES ('36', '白菜', '22', '23', 'picture/baicai.jpg', null, '0', null, '4');
INSERT INTO `product` VALUES ('37', '玉米', '22', '25', 'picture/ym.jpg', null, '0', null, '4');
INSERT INTO `product` VALUES ('38', '柚子', '22', '26', 'picture/yz.jpg', null, '0', null, '4');
INSERT INTO `product` VALUES ('39', '芹菜', '11', '12', 'picture/qc.jpg', null, '0', null, '4');
INSERT INTO `product` VALUES ('40', '韭菜', '13', '15', 'picture/jc.jpg', null, '0', null, '4');
INSERT INTO `product` VALUES ('41', '火腿', '22', '25', 'picture/ht.jpg', null, '0', null, '5');
INSERT INTO `product` VALUES ('42', '羊肉', '25', '26', 'picture/yy.jpg', null, '0', null, '5');
INSERT INTO `product` VALUES ('43', '牛肉', '23', '29', 'picture/nr.jpg', null, '0', null, '5');
INSERT INTO `product` VALUES ('44', '柚子', '22', '25', 'picture/yz.jpg', null, '0', null, '6');
INSERT INTO `product` VALUES ('45', '丑橘', '26', '29', 'picture/cj.jpg', null, '0', null, '6');
INSERT INTO `product` VALUES ('46', '葡萄', '22', '23', 'picture/pt.jpg', null, '0', null, '6');
INSERT INTO `product` VALUES ('47', '提子', '23', '24', 'picture/tz.jpg', null, '0', null, '6');
INSERT INTO `product` VALUES ('48', '牛肉', '22', '22', 'products/nr.jpg', '', '0', '2017-12-15 19:32:03', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('4', 'sss', 'sss', '哈', 'aaa@shop.com', '12306', '深圳腾讯', '1', '');
INSERT INTO `user` VALUES ('11', 'eee', 'eee', 'eee', 'aaa@shop.com', 'eee', 'eee', '0', '3f4f96ea8bd843f4b14bfe3ff20186e54a094d4f74ee4631a4858e4ec8353894');
INSERT INTO `user` VALUES ('12', 'vvv', 'vvv', 'vvv', 'aaa@shop.com', 'vvv', 'vvv', '0', 'c3e55865420145ffbccd534891ffca683855f284057b40b998d4b512465b1223');
INSERT INTO `user` VALUES ('13', 'ggg', 'ggg', 'ggg', 'aaa@shop.com', 'ggg', 'ggg', '1', null);
INSERT INTO `user` VALUES ('14', 'kkk', 'kkk', 'kkk', 'aaa@shop.com', 'kkk', 'kkk', '0', 'efed9397e8e74df1af2842bdffab6b4459a74865314e48179587ec55a5d2f7e8');
INSERT INTO `user` VALUES ('15', 'ppp', 'ppp', 'ppp', 'aaa@shop.com', 'ppp', 'ppp', '1', null);
INSERT INTO `user` VALUES ('16', 'ooo', 'ppp', 'ppp', 'aaa@shop.com', 'ppp', 'ppp', '0', '2ca1aa92a7464b73a41bb0f2aa420700d17a9981ee0143e6a7dd669e98c7bde4');
INSERT INTO `user` VALUES ('17', 'ooo', 'ppp', 'ppp', 'aaa@shop.com', 'ppp', 'ppp', '0', 'd6fbfdf7a6a04e71be4ea1fe15c1726f259ec86569ff4430ad07c77f8e91cdb0');
INSERT INTO `user` VALUES ('18', 'jjj', 'jjj', 'jjj', 'aaa@shop.com', 'jjj', 'jjj', '0', '0baab951e76b4a569485eca691c787331475b784afe7488399c1b2620c19c756');
INSERT INTO `user` VALUES ('19', 'bbb', 'bbb', 'bbb', 'aaa@shop.com', 'bbb', 'bbb', '0', 'ddc1124c2563459db85b8e247c82047e5840c5187c5a4c079cbf51123aca3d5e');
