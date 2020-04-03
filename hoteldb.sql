/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : hoteldb

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2019-04-22 23:11:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill` (
  `id` varchar(64) NOT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  `createId` varchar(64) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `days` varchar(255) DEFAULT NULL,
  `departureDate` date DEFAULT NULL,
  `totalCosts` double DEFAULT NULL,
  `checkinID` varchar(64) DEFAULT NULL,
  `loginId` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs9745b9r27vpahex80d7i3q0k` (`checkinID`),
  KEY `FKgr3dcan3bap2pfsr4jfbe00i9` (`loginId`),
  CONSTRAINT `FKgr3dcan3bap2pfsr4jfbe00i9` FOREIGN KEY (`loginId`) REFERENCES `sysuser` (`id`),
  CONSTRAINT `FKs9745b9r27vpahex80d7i3q0k` FOREIGN KEY (`checkinID`) REFERENCES `checkin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bill
-- ----------------------------
INSERT INTO `bill` VALUES ('3830f661-9b84-41b4-a9b5-14777a2fd6d7', null, null, '0', '0', '2019-04-03', '499', '3d9eb881-b07a-47e6-b44c-7654ebaff0ce', null);

-- ----------------------------
-- Table structure for booking
-- ----------------------------
DROP TABLE IF EXISTS `booking`;
CREATE TABLE `booking` (
  `id` varchar(64) NOT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  `createId` varchar(64) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `arrivalDate` date DEFAULT NULL,
  `bookingDate` date DEFAULT NULL,
  `roomTypeID` varchar(64) DEFAULT NULL,
  `vipPhone` varchar(255) DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKeys32vgwhojwdjk88ojg97y10` (`roomTypeID`),
  KEY `FKeett6elu0xx6t2ojixk371a2u` (`vipPhone`),
  CONSTRAINT `FKeett6elu0xx6t2ojixk371a2u` FOREIGN KEY (`vipPhone`) REFERENCES `vip` (`phone`),
  CONSTRAINT `FKeys32vgwhojwdjk88ojg97y10` FOREIGN KEY (`roomTypeID`) REFERENCES `room_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of booking
-- ----------------------------

-- ----------------------------
-- Table structure for checkin
-- ----------------------------
DROP TABLE IF EXISTS `checkin`;
CREATE TABLE `checkin` (
  `id` varchar(64) NOT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  `createId` varchar(64) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `accesscardID` varchar(255) DEFAULT NULL,
  `arrivalDate` date DEFAULT NULL,
  `ispay` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `roomID` varchar(64) DEFAULT NULL,
  `vipID` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKli2l2l7attjp8vt7m9c0ymuxs` (`roomID`),
  KEY `FKmcw130e4a020t8xv4gi77fbyy` (`vipID`),
  CONSTRAINT `FKli2l2l7attjp8vt7m9c0ymuxs` FOREIGN KEY (`roomID`) REFERENCES `room` (`id`),
  CONSTRAINT `FKmcw130e4a020t8xv4gi77fbyy` FOREIGN KEY (`vipID`) REFERENCES `vip` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of checkin
-- ----------------------------
INSERT INTO `checkin` VALUES ('3d9eb881-b07a-47e6-b44c-7654ebaff0ce', null, null, '1', '333', '2019-04-03', '1', '333', '78c5daed-7833-404a-b48f-1c6c498e4954', null);
INSERT INTO `checkin` VALUES ('3e7d8910-2d84-43fd-bbd8-66bdaa29a277', null, null, '1', '666666', '2019-04-02', '1', '无无', '698b1789-1673-4399-a430-41cbdc655646', '2d15d859-6eb4-451a-8edb-aa378142be5c');
INSERT INTO `checkin` VALUES ('60f660ef-4392-480a-be4e-07d6ecef7412', null, null, '1', '222', '2019-04-03', '0', '222', 'ad7e9969-2241-4b7f-a170-9d302d2e8ad7', '20165787-6c93-487a-9e1b-f5e0aa690a73');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` varchar(64) NOT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  `createId` varchar(64) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `time` datetime(6) DEFAULT NULL,
  `vipID` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK78ryjool0tvf40e7v8fwj6c1b` (`vipID`),
  CONSTRAINT `FK78ryjool0tvf40e7v8fwj6c1b` FOREIGN KEY (`vipID`) REFERENCES `vip` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1ab2652f-9895-45d3-a017-7481974918ed', null, null, '0', '真的被酒店惊喜到了，房间浓郁的老上海调调，暖心的送餐服务，大堂吧charming songs and whiskey，让匆忙的商务出行有了回家的温暖，忍不住要评论，下次回再预定\r\n', '2019-04-03 15:29:15.166000', '19ed9824-95e4-4d06-83ea-d267b0ca905f');
INSERT INTO `comment` VALUES ('70a85721-075c-4de4-bdac-313ac2b1fecb', null, null, '0', '比较愉快的入住体验。办理入住的时候等候了许久，前台给了两张免费饮料券，边喝饮料边聊天，拿到房间后，Kathy主动陪同我们到了房间，见我怀了宝宝，主动送了一台空气净化器来，非常贴心，很感谢！更衣室去游泳池没有指示，找了许久，前台小哥服务态度非常好，主动带我到了泳池。因为是结婚纪念日，吃完晚饭回来有惊喜，送了一个非常精美的蛋糕与卡片，非常美味！\r\n', '2019-04-03 15:28:44.956000', '19ed9824-95e4-4d06-83ea-d267b0ca905f');
INSERT INTO `comment` VALUES ('b5fcbc20-6399-4d7c-9a6f-6cc8fff2c174', null, null, '0', '测试', '2019-04-18 17:29:51.475000', '2d15d859-6eb4-451a-8edb-aa378142be5c');
INSERT INTO `comment` VALUES ('b7930d61-2076-40a3-b84e-dfcc4b5b5011', null, null, '0', '惬意的晚风，百听不厌的浪声，就像你的温柔！', '2019-04-03 10:00:52.379000', '2d15d859-6eb4-451a-8edb-aa378142be5c');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` varchar(64) NOT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  `createId` varchar(64) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `customerAddress` varchar(255) DEFAULT NULL,
  `customerCard` varchar(255) DEFAULT NULL,
  `customerName` varchar(255) DEFAULT NULL,
  `customerPhone` varchar(255) DEFAULT NULL,
  `customerSex` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `vipID` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_cond5jwrdl459dg1ybbabcgyf` (`customerCard`),
  KEY `FKandbyolvkmawycsbeba8j15di` (`vipID`),
  CONSTRAINT `FKandbyolvkmawycsbeba8j15di` FOREIGN KEY (`vipID`) REFERENCES `vip` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('11aa98cb-77e7-4c52-b61b-35cd6a8b98fb', null, null, '0', '广东广州', '333', '熙雯', '333', '女', '', '20165787-6c93-487a-9e1b-f5e0aa690a73');
INSERT INTO `customer` VALUES ('2f21cc9e-e11e-49da-a696-d4cfc0297386', null, null, '1', '五一大道', '11', '测试', '15673413600', '男', null, null);
INSERT INTO `customer` VALUES ('531472c0-265c-4e1a-87b7-b8c6459678bd', null, null, '0', '五一大道', '430321199701032216', '张繁', '15673272679', '男', '无', '2d15d859-6eb4-451a-8edb-aa378142be5c');
INSERT INTO `customer` VALUES ('67bc4fb1-8e02-4bc7-9e37-eb8247a13c17', null, null, '0', '五一大道', '1', '小飒飒', '15673413600', '女', '1', '19ed9824-95e4-4d06-83ea-d267b0ca905f');

-- ----------------------------
-- Table structure for customer_checkin
-- ----------------------------
DROP TABLE IF EXISTS `customer_checkin`;
CREATE TABLE `customer_checkin` (
  `id` varchar(64) NOT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  `createId` varchar(64) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `checkinID` varchar(64) DEFAULT NULL,
  `customerID` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj840lxxo8mkuyo0d7hmd1vgvw` (`checkinID`),
  KEY `FKjyvpinj7l2crsgtoopsvty6l9` (`customerID`),
  CONSTRAINT `FKj840lxxo8mkuyo0d7hmd1vgvw` FOREIGN KEY (`checkinID`) REFERENCES `checkin` (`id`),
  CONSTRAINT `FKjyvpinj7l2crsgtoopsvty6l9` FOREIGN KEY (`customerID`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer_checkin
-- ----------------------------
INSERT INTO `customer_checkin` VALUES ('5ffd60d7-7bed-4bf2-8478-64553000d1ed', null, null, '0', '3d9eb881-b07a-47e6-b44c-7654ebaff0ce', '2f21cc9e-e11e-49da-a696-d4cfc0297386');
INSERT INTO `customer_checkin` VALUES ('c1813898-a125-4e6f-8c63-44cf1ee45395', null, null, '0', '60f660ef-4392-480a-be4e-07d6ecef7412', '2f21cc9e-e11e-49da-a696-d4cfc0297386');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `id` varchar(64) NOT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  `createId` varchar(64) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `roomAble` varchar(255) DEFAULT NULL,
  `roomName` varchar(255) DEFAULT NULL,
  `roomPhone` varchar(255) DEFAULT NULL,
  `roomPrice` double DEFAULT NULL,
  `roomState` varchar(255) DEFAULT NULL,
  `roomTypeId` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_7naxk12lho25o5c13slimv96q` (`roomName`),
  KEY `FKgk4m9p1t7pt8y1d7i5df70l88` (`roomTypeId`),
  CONSTRAINT `FKgk4m9p1t7pt8y1d7i5df70l88` FOREIGN KEY (`roomTypeId`) REFERENCES `room_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES ('022aa88d-51c7-4614-8d0a-1a8fc5f2e6d8', null, null, '3', '0802', '1', '0802', '0802', '599', '空房', '64a6cc44-beb0-4ed4-92e8-b1730d68a291');
INSERT INTO `room` VALUES ('1aeb056f-16c5-4eeb-83f8-ce67dc6ae6f3', null, null, '0', '0603', '1', '0603', '0603', '399', '空房', '5fa7cf9f-514f-4cb2-93a9-e49e155d481a');
INSERT INTO `room` VALUES ('4baa5168-8150-421a-983e-fabd5efde9fb', null, null, '0', '0303', '1', '0303', '0303', '499', '空房', '56e0192e-059c-419f-a44c-5fe753cb0c1d');
INSERT INTO `room` VALUES ('55d65e74-5753-4e1b-87d1-962af64e6fcf', null, null, '0', '0403', '1', '0403', '0403', '499', '空房', 'd026d6ca-8790-4505-92eb-3baf1c5cdff9');
INSERT INTO `room` VALUES ('5828feba-905e-4eef-8daa-6e5e45cba9cf', null, null, '0', '0305', '1', '0305', '0305', '499', '空房', '56e0192e-059c-419f-a44c-5fe753cb0c1d');
INSERT INTO `room` VALUES ('5ed9c050-8a05-424f-8618-7cd237e63045', null, null, '0', '0302', '1', '0302', '0302', '499', '空房', '56e0192e-059c-419f-a44c-5fe753cb0c1d');
INSERT INTO `room` VALUES ('698b1789-1673-4399-a430-41cbdc655646', null, null, '3', '0701', '1', '0701', '0701', '999', '空房', '34d7316e-972c-43ef-b60f-5edffe5c639b');
INSERT INTO `room` VALUES ('6a9ad72e-bcd1-4f2d-b843-292b608ad83d', null, null, '0', '0605', '1', '0605', '0605', '399', '空房', '5fa7cf9f-514f-4cb2-93a9-e49e155d481a');
INSERT INTO `room` VALUES ('6dbfbeae-de49-459c-aeff-7d3aef3a1a23', null, null, '0', '0304', '1', '0304', '0304', '499', '空房', '56e0192e-059c-419f-a44c-5fe753cb0c1d');
INSERT INTO `room` VALUES ('76b3be4d-4ec8-4e2c-8d48-5a8534bbb312', null, null, '0', '0604', '1', '0604', '0604', '399', '空房', '5fa7cf9f-514f-4cb2-93a9-e49e155d481a');
INSERT INTO `room` VALUES ('78b220df-accf-4db3-9e9c-81b3b45b688e', null, null, '2', '0503', '1', '0503', '0503', '199', '空房', null);
INSERT INTO `room` VALUES ('78c5daed-7833-404a-b48f-1c6c498e4954', null, null, '2', '0301', '1', '0301', '0301', '499', '空房', '56e0192e-059c-419f-a44c-5fe753cb0c1d');
INSERT INTO `room` VALUES ('8b6bf288-d68c-43a8-8c30-433d0c0729bd', null, null, '0', '0702', '1', '0702', '0702', '999', '空房', '34d7316e-972c-43ef-b60f-5edffe5c639b');
INSERT INTO `room` VALUES ('972614b0-6d5d-442b-8fa5-eca8463bd9ce', null, null, '0', '0803', '1', '0803', '0803', '599', '空房', '64a6cc44-beb0-4ed4-92e8-b1730d68a291');
INSERT INTO `room` VALUES ('a19c223d-d7e1-4441-b2d2-b73b6ef4e5c5', null, null, '1', '0504', '1', '0504', '0504', '199', '空房', null);
INSERT INTO `room` VALUES ('a98453a9-1f6d-43ba-83c1-2bc6cbc8ee18', null, null, '3', '0501', '1', '0501', '0501', '1000', '空房', 'd470216d-2d84-4e97-9261-58469992ed86');
INSERT INTO `room` VALUES ('ad7e9969-2241-4b7f-a170-9d302d2e8ad7', null, null, '4', '0502', '1', '0502', '0502', '1000', '有客', 'd470216d-2d84-4e97-9261-58469992ed86');
INSERT INTO `room` VALUES ('bbf3a5f7-c541-4fa9-8811-8685fc184605', null, null, '0', '0401', '1', '0401', '0401', '499', '空房', 'd026d6ca-8790-4505-92eb-3baf1c5cdff9');
INSERT INTO `room` VALUES ('c671d70d-0549-4099-9b4e-37bcde962a88', null, null, '0', '0601', '1', '0601', '0601', '399', '空房', '5fa7cf9f-514f-4cb2-93a9-e49e155d481a');
INSERT INTO `room` VALUES ('d5a9807d-0c82-4cea-89bb-34b04fdd204a', null, null, '1', '0504', '1', '0505', '0505', '199', '空房', null);
INSERT INTO `room` VALUES ('d9ddc3f3-fba7-46c2-94b6-22e940cca147', null, null, '0', '0602', '1', '0602', '0602', '399', '空房', '5fa7cf9f-514f-4cb2-93a9-e49e155d481a');
INSERT INTO `room` VALUES ('dfe01db5-bcab-49a1-a518-53a6b984d72e', null, null, '2', '0402', '1', '0402', '0402', '499', '空房', 'd026d6ca-8790-4505-92eb-3baf1c5cdff9');
INSERT INTO `room` VALUES ('f27c2e83-d285-4d5a-bf5d-0fb27d2b2c07', null, null, '0', '0703', '1', '0703', '0703', '999', '空房', '34d7316e-972c-43ef-b60f-5edffe5c639b');
INSERT INTO `room` VALUES ('f702e0a4-087a-46b0-899a-cf48072272d3', null, null, '3', '0801', '1', '0801', '0801', '599', '空房', '64a6cc44-beb0-4ed4-92e8-b1730d68a291');

-- ----------------------------
-- Table structure for room_type
-- ----------------------------
DROP TABLE IF EXISTS `room_type`;
CREATE TABLE `room_type` (
  `id` varchar(64) NOT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  `createId` varchar(64) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `roomTypeDescription` varchar(255) DEFAULT NULL,
  `roomTypeName` varchar(255) DEFAULT NULL,
  `roomTypeUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room_type
-- ----------------------------
INSERT INTO `room_type` VALUES ('34d7316e-972c-43ef-b60f-5edffe5c639b', null, null, '5', '总统套房有书房，会议室，饱览迷人风光的全景天窗，可容纳12人的豪华小餐厅，厨具一应俱全，主客两间卧室各设会客区和浴室。', '总统套房', '1cc4f75c-e30f-4777-a84b-11f2b5f4fe9d.jpg');
INSERT INTO `room_type` VALUES ('56e0192e-059c-419f-a44c-5fe753cb0c1d', null, null, '3', '该客房提供水疗服务，让您褪去劳累一天后的工作与生活中的疲惫，放松身心，感受无尽的快乐。', '水疗房', '50c61226-f623-498a-b9ec-4822ff454399.jpg');
INSERT INTO `room_type` VALUES ('5fa7cf9f-514f-4cb2-93a9-e49e155d481a', null, null, '3', '优雅的商务套房享有50平方米私人空间，更配有独立客厅，东城南城的亮丽的景致尽收眼底。', '商务套房', 'ec12f2a3-cf47-420d-a911-5145c81e09bd.jpg');
INSERT INTO `room_type` VALUES ('64a6cc44-beb0-4ed4-92e8-b1730d68a291', null, null, '3', '行政套房采用开放式设计，让您坐拥极致瑰丽的珠江美景。房间尊享独立客厅设计，宽敞的客厅以现代、简约、环保的风格精心搭配，让视野所及之处都令您的身心倍感舒畅与温暖。', '行政套房', '0c8d92a0-30c5-4b53-9a6d-fa8f433d9079.jpg');
INSERT INTO `room_type` VALUES ('d026d6ca-8790-4505-92eb-3baf1c5cdff9', null, null, '3', '客房采用欧陆风格设计结合温馨舒适的起居配置，在突显高贵雅致的情调同时让您舒缓在忙碌工作后的疲劳。宽敞的玻璃窗及高楼层开阔的视野，为您呈奉美丽的东莞景。', '欧式套房', 'cf3f58ed-9794-4df2-92bb-2a285e1cabc7.jpg');
INSERT INTO `room_type` VALUES ('d470216d-2d84-4e97-9261-58469992ed86', null, null, '2', '惬意的海风，温柔的海浪，让你一直拥抱着夏天不放手~', '海景房', 'df61c14c-caff-4803-98fd-637b37434bbd.jpg');

-- ----------------------------
-- Table structure for sysuser
-- ----------------------------
DROP TABLE IF EXISTS `sysuser`;
CREATE TABLE `sysuser` (
  `id` varchar(64) NOT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  `createId` varchar(64) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `able` int(11) DEFAULT NULL,
  `loginId` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_5gb2c19q1di6q7uvam3b288bn` (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysuser
-- ----------------------------
INSERT INTO `sysuser` VALUES ('0799c15f-eaeb-4597-b943-4e179e8cc799', null, null, '1', '1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', null, '超级管理员');
INSERT INTO `sysuser` VALUES ('1a2d7865-0278-4c0c-9e9a-0ecafd66bb98', null, null, '0', '0', '1', 'c4ca4238a0b923820dcc509a6f75849b', null, '丘处机');
INSERT INTO `sysuser` VALUES ('3', '2019-04-02 15:41:13.000000', '', '1', '1', 'admin2', '1', '', '超级管理员');

-- ----------------------------
-- Table structure for vip
-- ----------------------------
DROP TABLE IF EXISTS `vip`;
CREATE TABLE `vip` (
  `id` varchar(64) NOT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  `createId` varchar(64) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `vipCredit` int(11) DEFAULT NULL,
  `vipLevel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_paj0dcc21ge1v0a1dq1ohy26f` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vip
-- ----------------------------
INSERT INTO `vip` VALUES ('19ed9824-95e4-4d06-83ea-d267b0ca905f', null, null, '0', '2019-04-03', '1', '1', '15673413600', '10', '白银会员');
INSERT INTO `vip` VALUES ('20165787-6c93-487a-9e1b-f5e0aa690a73', null, null, '0', '1997-02-24', '1', '333', '333', '10', '白银会员');
INSERT INTO `vip` VALUES ('2d15d859-6eb4-451a-8edb-aa378142be5c', null, null, '1', '2019-04-02', '1', '1', '15673272679', '1000', '钻石会员');
