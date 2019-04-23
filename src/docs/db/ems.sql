/*
Navicat MySQL Data Transfer

Source Server         : qhit
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : ems

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2019-04-22 22:10:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for base_company
-- ----------------------------
DROP TABLE IF EXISTS `base_company`;
CREATE TABLE `base_company` (
  `compid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `compname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '公司名称',
  `contacts` varchar(60) COLLATE utf8_bin DEFAULT NULL COMMENT '联系人',
  `comptel` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '联系电话',
  `industry` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '行业',
  `address` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`compid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of base_company
-- ----------------------------
INSERT INTO `base_company` VALUES ('1', '周口港', '盛明春', '133445566', '水运', '周口市沙河南岸');
INSERT INTO `base_company` VALUES ('2', '漯河港', '史安杰', '17890929876', '水运', '黑龙潭镇政府东面');
INSERT INTO `base_company` VALUES ('3', '日照港', '蒋科磊', '13654578219', '水运', '上海路');
INSERT INTO `base_company` VALUES ('10', '上海港', '田淞丹', '13896963545', '水运', '长江入海口处');

-- ----------------------------
-- Table structure for base_device
-- ----------------------------
DROP TABLE IF EXISTS `base_device`;
CREATE TABLE `base_device` (
  `devid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `devname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '设备名称',
  `typeid` int(11) DEFAULT NULL COMMENT '设备类别',
  `devdate` date DEFAULT NULL COMMENT '投入时间',
  `devuser` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '责任人',
  `compid` int(11) DEFAULT NULL COMMENT '所属企业',
  PRIMARY KEY (`devid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of base_device
-- ----------------------------
INSERT INTO `base_device` VALUES ('1', 'zk-1#斗轮机', '1', '2017-02-01', '刘长江', '1');
INSERT INTO `base_device` VALUES ('2', 'zk-2#斗轮机', '1', '2010-02-02', '李少庆', '1');
INSERT INTO `base_device` VALUES ('3', 'zk-3#斗轮机', '1', '2011-03-03', '张庆', '1');
INSERT INTO `base_device` VALUES ('4', 'zk-1#装船机', '2', '2010-04-01', '冯士纯', '1');
INSERT INTO `base_device` VALUES ('5', 'zk-2#装船机', '2', '2010-06-08', '于圣杰', '1');
INSERT INTO `base_device` VALUES ('6', 'zk-3#装船机', '2', '2011-01-02', '郭亚茹', '1');
INSERT INTO `base_device` VALUES ('8', 'zk-bm1', '3', '2011-02-01', '杨雪婷', '1');
INSERT INTO `base_device` VALUES ('9', 'zk-bm2', '3', '2010-02-02', '胡雯月', '1');
INSERT INTO `base_device` VALUES ('10', 'zk-bm3', '3', '2012-02-01', '邢文哲', '1');
INSERT INTO `base_device` VALUES ('11', 'zk-bk1', '3', '2010-06-01', '梁哲', '1');
INSERT INTO `base_device` VALUES ('12', 'zk-bk2', '3', '2010-02-02', '梁壮壮', '1');
INSERT INTO `base_device` VALUES ('13', 'sh-1#斗轮机', '1', '2010-01-02', '刘长江', '10');
INSERT INTO `base_device` VALUES ('14', 'sh-2#斗轮机', '1', '2010-02-02', '李佳康', '10');
INSERT INTO `base_device` VALUES ('15', 'sh-1#装船机', '2', '2010-05-04', '赵舞阳', '10');
INSERT INTO `base_device` VALUES ('16', 'sh-2#装船机', '2', '2010-06-02', '王定宇', '10');
INSERT INTO `base_device` VALUES ('17', 'sh-bm1', '3', '2010-02-03', '李利利', '10');
INSERT INTO `base_device` VALUES ('18', 'sh-bm2', '3', '2011-02-01', '曾祥顺', '10');
INSERT INTO `base_device` VALUES ('19', 'lh-1#斗轮机', '1', '2011-10-03', '李佳康', '2');
INSERT INTO `base_device` VALUES ('20', 'lh-2#斗轮机', '1', '2010-05-03', '刘万通', '2');
INSERT INTO `base_device` VALUES ('21', 'lh-1#装船机', '2', '2011-05-02', '李利利', '2');
INSERT INTO `base_device` VALUES ('22', 'lh-2#装船机', '2', '2011-02-01', '杜会友', '2');
INSERT INTO `base_device` VALUES ('23', 'lh-bm1皮带机', '3', '2012-03-07', '李少庆', '2');
INSERT INTO `base_device` VALUES ('24', 'lh-bm2', '3', '2011-02-17', '于圣杰', '2');
INSERT INTO `base_device` VALUES ('25', 'rz-1#斗轮机', '1', '2011-03-03', '高洁', '3');
INSERT INTO `base_device` VALUES ('26', 'rz-2#斗轮机', '1', '2011-02-01', '高洁', '3');
INSERT INTO `base_device` VALUES ('27', 'rz-1#装船机', '2', '2011-02-02', '夏杰', '3');
INSERT INTO `base_device` VALUES ('28', 'rz-2#装船机', '2', '2011-02-02', '夏杰', '3');
INSERT INTO `base_device` VALUES ('29', 'rz-bm1皮带机', '3', '2013-02-05', '夏杰', '3');
INSERT INTO `base_device` VALUES ('30', 'rz-bm2', '3', '2013-02-06', '夏杰', '3');

-- ----------------------------
-- Table structure for base_devtype
-- ----------------------------
DROP TABLE IF EXISTS `base_devtype`;
CREATE TABLE `base_devtype` (
  `typeid` int(11) NOT NULL AUTO_INCREMENT COMMENT '类别ID',
  `typename` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT '类别名称',
  PRIMARY KEY (`typeid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of base_devtype
-- ----------------------------
INSERT INTO `base_devtype` VALUES ('1', '斗轮机');
INSERT INTO `base_devtype` VALUES ('2', '装船机');
INSERT INTO `base_devtype` VALUES ('3', '皮带机');

-- ----------------------------
-- Table structure for base_flow
-- ----------------------------
DROP TABLE IF EXISTS `base_flow`;
CREATE TABLE `base_flow` (
  `flowid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `flowname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '流程名称',
  `dljid` int(11) DEFAULT NULL COMMENT '斗轮机',
  `zcjid` int(11) DEFAULT NULL COMMENT '装船机',
  `pdjid` int(11) DEFAULT NULL COMMENT '皮带机',
  `compid` int(11) DEFAULT NULL COMMENT '所属企业',
  PRIMARY KEY (`flowid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of base_flow
-- ----------------------------
INSERT INTO `base_flow` VALUES ('1', 'zk-101', '1', '4', '8', '1');
INSERT INTO `base_flow` VALUES ('2', 'zk-102', '1', '5', '9', '1');
INSERT INTO `base_flow` VALUES ('3', 'zk-103', '2', '5', '10', '1');
INSERT INTO `base_flow` VALUES ('4', 'zk-104', '3', '6', '12', '1');
INSERT INTO `base_flow` VALUES ('5', 'zk-201', '1', '6', '11', '1');
INSERT INTO `base_flow` VALUES ('6', 'zk-202', '2', '6', '12', '1');
INSERT INTO `base_flow` VALUES ('7', 'sh-101', '13', '15', '17', '10');
INSERT INTO `base_flow` VALUES ('8', 'sh-102', '14', '16', '18', '10');
INSERT INTO `base_flow` VALUES ('9', 'sh-103', '13', '16', '18', '10');
INSERT INTO `base_flow` VALUES ('10', 'lh-101流程', '19', '21', '23', '2');
INSERT INTO `base_flow` VALUES ('11', 'lh-102流程', '20', '22', '24', '2');
INSERT INTO `base_flow` VALUES ('12', 'rz-101流程', '25', '27', '29', '3');
INSERT INTO `base_flow` VALUES ('13', 'rz-102流程', '26', '28', '30', '3');

-- ----------------------------
-- Table structure for base_user
-- ----------------------------
DROP TABLE IF EXISTS `base_user`;
CREATE TABLE `base_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cname` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `username` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '用户名',
  `password` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `telno` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '手机号',
  `email` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `sex` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `compid` int(11) DEFAULT NULL COMMENT '所属企业',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of base_user
-- ----------------------------
INSERT INTO `base_user` VALUES ('1', '李海星', 'lhx', '123456', '13648495251', '123@qq.com', '女', '1');
INSERT INTO `base_user` VALUES ('2', '王文政', 'wwz', '123456', '13246467979', '234@qq.com', '男', '8');
INSERT INTO `base_user` VALUES ('3', '测试', '1', '1', '1', '1', '1', '9');
INSERT INTO `base_user` VALUES ('4', '王文政', 'wwz', '123456', '13827299834', '1234@qq.com', '男', '2');
INSERT INTO `base_user` VALUES ('5', '梁壮壮', 'lzz', '123456', '13690947856', '2345@qq.com', '男', '10');
INSERT INTO `base_user` VALUES ('8', '蒋科磊', 'jkl', '123456', '13789064523', '36119@qq.com', '男', '3');

-- ----------------------------
-- Table structure for energy_consume
-- ----------------------------
DROP TABLE IF EXISTS `energy_consume`;
CREATE TABLE `energy_consume` (
  `consumeid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键能耗id',
  `devid` int(11) DEFAULT NULL COMMENT '设备名称',
  `electric` double DEFAULT NULL COMMENT '电耗(kw.h)',
  `water` double DEFAULT NULL COMMENT '水耗(吨)',
  `oil` double DEFAULT NULL COMMENT '油耗(L)',
  `reportid` int(11) DEFAULT NULL COMMENT '报岗id',
  PRIMARY KEY (`consumeid`)
) ENGINE=InnoDB AUTO_INCREMENT=1072 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of energy_consume
-- ----------------------------
INSERT INTO `energy_consume` VALUES ('1', '1', '10560', '400', '720', '1');
INSERT INTO `energy_consume` VALUES ('2', '4', '10600', '280', '1240', '1');
INSERT INTO `energy_consume` VALUES ('3', '8', '3840', '80', '400', '1');
INSERT INTO `energy_consume` VALUES ('7', '2', '18112', '448', '1408', '3');
INSERT INTO `energy_consume` VALUES ('8', '5', '13312', '320', '1536', '3');
INSERT INTO `energy_consume` VALUES ('9', '10', '3264', '64', '1024', '3');
INSERT INTO `energy_consume` VALUES ('10', '1', '17496', '720', '2376', '4');
INSERT INTO `energy_consume` VALUES ('11', '4', '9144', '576', '1872', '4');
INSERT INTO `energy_consume` VALUES ('12', '8', '5148', '108', '1152', '4');
INSERT INTO `energy_consume` VALUES ('13', '1', '14008', '408', '952', '5');
INSERT INTO `energy_consume` VALUES ('14', '4', '7480', '408', '680', '5');
INSERT INTO `energy_consume` VALUES ('15', '8', '7072', '136', '442', '5');
INSERT INTO `energy_consume` VALUES ('16', '1', '13134', '198', '726', '6');
INSERT INTO `energy_consume` VALUES ('17', '4', '18942', '594', '1056', '6');
INSERT INTO `energy_consume` VALUES ('18', '8', '7293', '165', '627', '6');
INSERT INTO `energy_consume` VALUES ('19', '1', '12444', '512.4', '805.2', '7');
INSERT INTO `energy_consume` VALUES ('20', '4', '21667.2', '439.2', '1390.8', '7');
INSERT INTO `energy_consume` VALUES ('21', '8', '10394.4', '256.2', '475.8', '7');
INSERT INTO `energy_consume` VALUES ('22', '1', '11259.2', '496', '793.6', '8');
INSERT INTO `energy_consume` VALUES ('23', '4', '12449.6', '297.6', '1884.8', '8');
INSERT INTO `energy_consume` VALUES ('24', '8', '4439.2', '148.8', '620', '8');
INSERT INTO `energy_consume` VALUES ('25', '1', '5778', '378', '1242', '9');
INSERT INTO `energy_consume` VALUES ('26', '4', '10098', '540', '1242', '9');
INSERT INTO `energy_consume` VALUES ('27', '8', '6858', '135', '432', '9');
INSERT INTO `energy_consume` VALUES ('28', '1', '11443.2', '357.6', '774.8', '10');
INSERT INTO `energy_consume` VALUES ('29', '4', '17462.8', '417.2', '1728.4', '10');
INSERT INTO `energy_consume` VALUES ('30', '8', '4440.2', '119.2', '983.4', '10');
INSERT INTO `energy_consume` VALUES ('31', '1', '13846', '322', '1610', '11');
INSERT INTO `energy_consume` VALUES ('32', '4', '11527.6', '128.8', '1352.4', '11');
INSERT INTO `energy_consume` VALUES ('33', '8', '7599.2', '32.2', '644', '11');
INSERT INTO `energy_consume` VALUES ('34', '1', '12974.4', '306', '856.8', '12');
INSERT INTO `energy_consume` VALUES ('35', '4', '8996.4', '367.2', '1162.8', '12');
INSERT INTO `energy_consume` VALUES ('36', '8', '8262', '306', '397.8', '12');
INSERT INTO `energy_consume` VALUES ('37', '1', '7838.4', '511.2', '1192.8', '13');
INSERT INTO `energy_consume` VALUES ('38', '4', '7781.6', '454.4', '1647.2', '13');
INSERT INTO `energy_consume` VALUES ('39', '8', '3663.6', '142', '397.6', '13');
INSERT INTO `energy_consume` VALUES ('40', '1', '11453.2', '164.4', '986.4', '14');
INSERT INTO `energy_consume` VALUES ('41', '4', '8713.2', '548', '1534.4', '14');
INSERT INTO `energy_consume` VALUES ('42', '8', '5918.4', '54.8', '767.2', '14');
INSERT INTO `energy_consume` VALUES ('43', '1', '17802.4', '308', '1909.6', '15');
INSERT INTO `energy_consume` VALUES ('44', '4', '13182.4', '369.6', '1786.4', '15');
INSERT INTO `energy_consume` VALUES ('45', '8', '7053.2', '61.6', '1139.6', '15');
INSERT INTO `energy_consume` VALUES ('46', '1', '10526.4', '103.2', '619.2', '16');
INSERT INTO `energy_consume` VALUES ('47', '4', '7843.2', '103.2', '1857.6', '16');
INSERT INTO `energy_consume` VALUES ('48', '8', '3870', '103.2', '980.4', '16');
INSERT INTO `energy_consume` VALUES ('49', '1', '10617.6', '403.2', '940.8', '17');
INSERT INTO `energy_consume` VALUES ('50', '4', '12432', '604.8', '1948.8', '17');
INSERT INTO `energy_consume` VALUES ('51', '8', '6720', '268.8', '1344', '17');
INSERT INTO `energy_consume` VALUES ('52', '1', '11252', '580', '986', '18');
INSERT INTO `energy_consume` VALUES ('53', '4', '8932', '174', '1102', '18');
INSERT INTO `energy_consume` VALUES ('54', '8', '7540', '174', '1160', '18');
INSERT INTO `energy_consume` VALUES ('55', '1', '11044.8', '62.4', '1248', '19');
INSERT INTO `energy_consume` VALUES ('56', '4', '14414.4', '124.8', '2121.6', '19');
INSERT INTO `energy_consume` VALUES ('57', '8', '5116.8', '249.6', '1248', '19');
INSERT INTO `energy_consume` VALUES ('58', '1', '13759.2', '252', '604.8', '21');
INSERT INTO `energy_consume` VALUES ('59', '5', '11289.6', '50.4', '655.2', '21');
INSERT INTO `energy_consume` VALUES ('60', '9', '5468.4', '50.4', '932.4', '21');
INSERT INTO `energy_consume` VALUES ('61', '1', '9928.8', '453.6', '1512', '22');
INSERT INTO `energy_consume` VALUES ('62', '5', '14868', '403.2', '1260', '22');
INSERT INTO `energy_consume` VALUES ('63', '9', '6577.2', '201.6', '428.4', '22');
INSERT INTO `energy_consume` VALUES ('64', '1', '17064', '632', '1011.2', '23');
INSERT INTO `energy_consume` VALUES ('65', '5', '13208.8', '189.6', '1580', '23');
INSERT INTO `energy_consume` VALUES ('66', '9', '8721.6', '126.4', '821.6', '23');
INSERT INTO `energy_consume` VALUES ('67', '1', '9438', '171.6', '800.8', '24');
INSERT INTO `energy_consume` VALUES ('68', '5', '6120.4', '171.6', '629.2', '24');
INSERT INTO `energy_consume` VALUES ('69', '9', '6892.6', '257.4', '1144', '24');
INSERT INTO `energy_consume` VALUES ('70', '1', '13912.8', '744', '2083.2', '25');
INSERT INTO `energy_consume` VALUES ('71', '5', '18376.8', '669.6', '2604', '25');
INSERT INTO `energy_consume` VALUES ('72', '9', '8742', '37.2', '781.2', '25');
INSERT INTO `energy_consume` VALUES ('73', '1', '15686.4', '206.4', '2270.4', '26');
INSERT INTO `energy_consume` VALUES ('74', '5', '10044.8', '68.8', '825.6', '26');
INSERT INTO `energy_consume` VALUES ('75', '9', '8084', '68.8', '653.6', '26');
INSERT INTO `energy_consume` VALUES ('76', '1', '7561.6', '380.8', '2012.8', '27');
INSERT INTO `energy_consume` VALUES ('77', '5', '14688', '326.4', '1360', '27');
INSERT INTO `energy_consume` VALUES ('78', '9', '7888', '27.2', '761.6', '27');
INSERT INTO `energy_consume` VALUES ('79', '1', '12992.8', '536.4', '2384', '28');
INSERT INTO `energy_consume` VALUES ('80', '5', '10549.2', '238.4', '1966.8', '28');
INSERT INTO `energy_consume` VALUES ('81', '9', '3248.2', '29.8', '1072.8', '28');
INSERT INTO `energy_consume` VALUES ('82', '1', '11558.4', '537.6', '2083.2', '29');
INSERT INTO `energy_consume` VALUES ('83', '5', '13507.2', '201.6', '1276.8', '29');
INSERT INTO `energy_consume` VALUES ('84', '9', '7291.2', '33.6', '369.6', '29');
INSERT INTO `energy_consume` VALUES ('85', '1', '21200', '720', '2800', '30');
INSERT INTO `energy_consume` VALUES ('86', '5', '16240', '320', '2080', '30');
INSERT INTO `energy_consume` VALUES ('87', '9', '11520', '200', '1360', '30');
INSERT INTO `energy_consume` VALUES ('88', '1', '9000', '288', '1368', '31');
INSERT INTO `energy_consume` VALUES ('89', '5', '8496', '216', '936', '31');
INSERT INTO `energy_consume` VALUES ('90', '9', '5436', '72', '1332', '31');
INSERT INTO `energy_consume` VALUES ('91', '1', '5307.2', '49.6', '496', '32');
INSERT INTO `energy_consume` VALUES ('92', '5', '12598.4', '396.8', '1190.4', '32');
INSERT INTO `energy_consume` VALUES ('93', '9', '4092', '173.6', '421.6', '32');
INSERT INTO `energy_consume` VALUES ('94', '1', '10428', '220', '748', '33');
INSERT INTO `energy_consume` VALUES ('95', '5', '8096', '176', '1496', '33');
INSERT INTO `energy_consume` VALUES ('96', '9', '4048', '22', '264', '33');
INSERT INTO `energy_consume` VALUES ('97', '1', '14822.4', '307.2', '921.6', '34');
INSERT INTO `energy_consume` VALUES ('98', '5', '22656', '384', '1228.8', '34');
INSERT INTO `energy_consume` VALUES ('99', '9', '9600', '76.8', '729.6', '34');
INSERT INTO `energy_consume` VALUES ('100', '1', '17593.2', '434.4', '2099.6', '35');
INSERT INTO `energy_consume` VALUES ('101', '5', '19548', '217.2', '2172', '35');
INSERT INTO `energy_consume` VALUES ('102', '9', '4597.4', '362', '470.6', '35');
INSERT INTO `energy_consume` VALUES ('103', '1', '17608.8', '139.2', '2018.4', '36');
INSERT INTO `energy_consume` VALUES ('104', '5', '14198.4', '487.2', '2366.4', '36');
INSERT INTO `energy_consume` VALUES ('105', '9', '3758.4', '313.2', '487.2', '36');
INSERT INTO `energy_consume` VALUES ('106', '2', '20976', '532', '836', '41');
INSERT INTO `energy_consume` VALUES ('107', '5', '7600', '532', '2128', '41');
INSERT INTO `energy_consume` VALUES ('108', '10', '5890', '190', '646', '41');
INSERT INTO `energy_consume` VALUES ('109', '2', '15052.8', '156.8', '1803.2', '42');
INSERT INTO `energy_consume` VALUES ('110', '5', '8545.6', '313.6', '784', '42');
INSERT INTO `energy_consume` VALUES ('111', '10', '9133.6', '352.8', '784', '42');
INSERT INTO `energy_consume` VALUES ('112', '2', '17808', '168', '1092', '43');
INSERT INTO `energy_consume` VALUES ('113', '5', '22848', '588', '2940', '43');
INSERT INTO `energy_consume` VALUES ('114', '10', '9072', '378', '966', '43');
INSERT INTO `energy_consume` VALUES ('115', '2', '23672', '440', '2112', '44');
INSERT INTO `energy_consume` VALUES ('116', '5', '16456', '704', '2992', '44');
INSERT INTO `energy_consume` VALUES ('117', '10', '12496', '220', '1100', '44');
INSERT INTO `energy_consume` VALUES ('118', '2', '11668.8', '571.2', '3264', '45');
INSERT INTO `energy_consume` VALUES ('119', '5', '23500.8', '816', '1958.4', '45');
INSERT INTO `energy_consume` VALUES ('120', '10', '6324', '367.2', '652.8', '45');
INSERT INTO `energy_consume` VALUES ('121', '2', '15573.6', '741.6', '1153.6', '46');
INSERT INTO `energy_consume` VALUES ('122', '5', '16150.4', '824', '1565.6', '46');
INSERT INTO `energy_consume` VALUES ('123', '10', '8693.2', '247.2', '1359.6', '46');
INSERT INTO `energy_consume` VALUES ('124', '2', '20516', '368', '1656', '47');
INSERT INTO `energy_consume` VALUES ('125', '5', '15180', '184', '3128', '47');
INSERT INTO `energy_consume` VALUES ('126', '10', '10120', '276', '1748', '47');
INSERT INTO `energy_consume` VALUES ('127', '2', '11376', '360', '2592', '48');
INSERT INTO `energy_consume` VALUES ('128', '5', '20160', '432', '1008', '48');
INSERT INTO `energy_consume` VALUES ('129', '10', '9540', '36', '1296', '48');
INSERT INTO `energy_consume` VALUES ('130', '2', '18944', '640', '2368', '49');
INSERT INTO `energy_consume` VALUES ('131', '5', '13120', '512', '1088', '49');
INSERT INTO `energy_consume` VALUES ('132', '10', '8032', '192', '352', '49');
INSERT INTO `energy_consume` VALUES ('133', '2', '14643.2', '704', '1900.8', '50');
INSERT INTO `energy_consume` VALUES ('134', '5', '13798.4', '492.8', '2534.4', '50');
INSERT INTO `energy_consume` VALUES ('135', '10', '9257.6', '352', '844.8', '50');
INSERT INTO `energy_consume` VALUES ('136', '2', '17910', '270', '1080', '51');
INSERT INTO `energy_consume` VALUES ('137', '5', '19170', '540', '2160', '51');
INSERT INTO `energy_consume` VALUES ('138', '10', '10710', '90', '1620', '51');
INSERT INTO `energy_consume` VALUES ('139', '2', '21084', '840', '2184', '52');
INSERT INTO `energy_consume` VALUES ('140', '5', '16128', '588', '1344', '52');
INSERT INTO `energy_consume` VALUES ('141', '10', '10038', '336', '504', '52');
INSERT INTO `energy_consume` VALUES ('142', '2', '6848', '64', '1088', '53');
INSERT INTO `energy_consume` VALUES ('143', '5', '17152', '192', '960', '53');
INSERT INTO `energy_consume` VALUES ('144', '10', '4000', '288', '1216', '53');
INSERT INTO `energy_consume` VALUES ('145', '2', '9600', '307.2', '1152', '54');
INSERT INTO `energy_consume` VALUES ('146', '5', '11289.6', '768', '1920', '54');
INSERT INTO `energy_consume` VALUES ('147', '10', '5644.8', '76.8', '1228.8', '54');
INSERT INTO `energy_consume` VALUES ('148', '2', '20561.6', '724', '1520.4', '55');
INSERT INTO `energy_consume` VALUES ('149', '5', '10425.6', '651.6', '796.4', '55');
INSERT INTO `energy_consume` VALUES ('150', '10', '7312.4', '289.6', '1194.6', '55');
INSERT INTO `energy_consume` VALUES ('151', '2', '18450.8', '463.2', '2084.4', '56');
INSERT INTO `energy_consume` VALUES ('152', '5', '12660.8', '694.8', '1621.2', '56');
INSERT INTO `energy_consume` VALUES ('153', '10', '8955.2', '193', '1273.8', '56');
INSERT INTO `energy_consume` VALUES ('154', '3', '13800', '100', '2000', '61');
INSERT INTO `energy_consume` VALUES ('155', '6', '10550', '300', '1600', '61');
INSERT INTO `energy_consume` VALUES ('156', '12', '3100', '200', '525', '61');
INSERT INTO `energy_consume` VALUES ('157', '3', '13382.4', '489.6', '598.4', '62');
INSERT INTO `energy_consume` VALUES ('158', '6', '10988.8', '380.8', '1577.6', '62');
INSERT INTO `energy_consume` VALUES ('159', '12', '8051.2', '81.6', '462.4', '62');
INSERT INTO `energy_consume` VALUES ('160', '3', '8792', '448', '1176', '63');
INSERT INTO `energy_consume` VALUES ('161', '6', '7224', '392', '1064', '63');
INSERT INTO `energy_consume` VALUES ('162', '12', '5516', '140', '504', '63');
INSERT INTO `energy_consume` VALUES ('163', '3', '8016', '96', '480', '64');
INSERT INTO `energy_consume` VALUES ('164', '6', '12336', '432', '1728', '64');
INSERT INTO `energy_consume` VALUES ('165', '12', '3384', '168', '288', '64');
INSERT INTO `energy_consume` VALUES ('166', '3', '5654.4', '99.2', '992', '65');
INSERT INTO `energy_consume` VALUES ('167', '6', '13937.6', '496', '694.4', '65');
INSERT INTO `energy_consume` VALUES ('168', '12', '3720', '99.2', '297.6', '65');
INSERT INTO `energy_consume` VALUES ('169', '3', '5614.4', '371.2', '649.6', '66');
INSERT INTO `energy_consume` VALUES ('170', '6', '9883.2', '464', '1392', '66');
INSERT INTO `energy_consume` VALUES ('171', '12', '5196.8', '139.2', '835.2', '66');
INSERT INTO `energy_consume` VALUES ('172', '3', '12948', '260', '520', '67');
INSERT INTO `energy_consume` VALUES ('173', '6', '9620', '364', '1976', '67');
INSERT INTO `energy_consume` VALUES ('174', '12', '4004', '234', '910', '67');
INSERT INTO `energy_consume` VALUES ('175', '3', '18936', '144', '864', '68');
INSERT INTO `energy_consume` VALUES ('176', '6', '8496', '360', '720', '68');
INSERT INTO `energy_consume` VALUES ('177', '12', '10296', '180', '756', '68');
INSERT INTO `energy_consume` VALUES ('178', '3', '16256', '576', '1792', '69');
INSERT INTO `energy_consume` VALUES ('179', '6', '18560', '448', '896', '69');
INSERT INTO `energy_consume` VALUES ('180', '12', '5152', '32', '608', '69');
INSERT INTO `energy_consume` VALUES ('181', '3', '8518.4', '70.4', '1267.2', '70');
INSERT INTO `energy_consume` VALUES ('182', '6', '10700.8', '704', '1619.2', '70');
INSERT INTO `energy_consume` VALUES ('183', '12', '5772.8', '140.8', '1232', '70');
INSERT INTO `energy_consume` VALUES ('184', '3', '10050', '350', '1350', '71');
INSERT INTO `energy_consume` VALUES ('185', '6', '14750', '50', '1700', '71');
INSERT INTO `energy_consume` VALUES ('186', '12', '3925', '50', '375', '71');
INSERT INTO `energy_consume` VALUES ('187', '3', '9900', '88', '1716', '72');
INSERT INTO `energy_consume` VALUES ('188', '6', '11924', '88', '1144', '72');
INSERT INTO `energy_consume` VALUES ('189', '12', '2706', '88', '836', '72');
INSERT INTO `energy_consume` VALUES ('190', '3', '7561.6', '489.6', '1686.4', '73');
INSERT INTO `energy_consume` VALUES ('191', '6', '8758.4', '326.4', '2067.2', '73');
INSERT INTO `energy_consume` VALUES ('192', '12', '3563.2', '108.8', '380.8', '73');
INSERT INTO `energy_consume` VALUES ('193', '3', '4880', '488', '1952', '74');
INSERT INTO `energy_consume` VALUES ('194', '6', '7027.2', '341.6', '1415.2', '74');
INSERT INTO `energy_consume` VALUES ('195', '12', '4148', '24.4', '683.2', '74');
INSERT INTO `energy_consume` VALUES ('196', '3', '14514.8', '262', '628.8', '75');
INSERT INTO `energy_consume` VALUES ('197', '6', '7283.6', '419.2', '733.6', '75');
INSERT INTO `energy_consume` VALUES ('198', '12', '6052.2', '104.8', '812.2', '75');
INSERT INTO `energy_consume` VALUES ('199', '3', '9788.8', '425.6', '1064', '76');
INSERT INTO `energy_consume` VALUES ('200', '6', '10374', '425.6', '904.4', '76');
INSERT INTO `energy_consume` VALUES ('201', '12', '6091.4', '26.6', '611.8', '76');
INSERT INTO `energy_consume` VALUES ('202', '1', '7440', '434', '1674', '81');
INSERT INTO `energy_consume` VALUES ('203', '6', '10416', '434', '2418', '81');
INSERT INTO `energy_consume` VALUES ('204', '11', '4464', '186', '837', '81');
INSERT INTO `energy_consume` VALUES ('205', '1', '17670.4', '352', '2675.2', '82');
INSERT INTO `energy_consume` VALUES ('206', '6', '13868.8', '211.2', '1689.6', '82');
INSERT INTO `energy_consume` VALUES ('207', '11', '8201.6', '140.8', '1372.8', '82');
INSERT INTO `energy_consume` VALUES ('208', '1', '9632', '336', '896', '83');
INSERT INTO `energy_consume` VALUES ('209', '6', '14336', '392', '560', '83');
INSERT INTO `energy_consume` VALUES ('210', '11', '4900', '168', '1008', '83');
INSERT INTO `energy_consume` VALUES ('211', '1', '13184', '320', '1408', '84');
INSERT INTO `energy_consume` VALUES ('212', '6', '12224', '448', '1344', '84');
INSERT INTO `energy_consume` VALUES ('213', '11', '5056', '64', '640', '84');
INSERT INTO `energy_consume` VALUES ('214', '1', '10316.8', '49.6', '1587.2', '85');
INSERT INTO `energy_consume` VALUES ('215', '6', '12995.2', '496', '1736', '85');
INSERT INTO `energy_consume` VALUES ('216', '11', '2604', '148.8', '818.4', '85');
INSERT INTO `energy_consume` VALUES ('217', '1', '9229.6', '664', '1726.4', '86');
INSERT INTO `energy_consume` VALUES ('218', '6', '14076.8', '199.2', '2324', '86');
INSERT INTO `energy_consume` VALUES ('219', '11', '7934.8', '332', '1062.4', '86');
INSERT INTO `energy_consume` VALUES ('220', '1', '13572', '156', '728', '87');
INSERT INTO `energy_consume` VALUES ('221', '6', '12220', '416', '624', '87');
INSERT INTO `energy_consume` VALUES ('222', '11', '7306', '208', '598', '87');
INSERT INTO `energy_consume` VALUES ('223', '1', '9648', '216', '2880', '88');
INSERT INTO `energy_consume` VALUES ('224', '6', '16992', '576', '2376', '88');
INSERT INTO `energy_consume` VALUES ('225', '11', '4356', '72', '1188', '88');
INSERT INTO `energy_consume` VALUES ('226', '1', '6528', '512', '1408', '89');
INSERT INTO `energy_consume` VALUES ('227', '6', '12160', '448', '960', '89');
INSERT INTO `energy_consume` VALUES ('228', '11', '6272', '256', '768', '89');
INSERT INTO `energy_consume` VALUES ('229', '1', '16192', '352', '2534.4', '90');
INSERT INTO `energy_consume` VALUES ('230', '6', '9785.6', '704', '1196.8', '90');
INSERT INTO `energy_consume` VALUES ('231', '11', '7004.8', '70.4', '422.4', '90');
INSERT INTO `energy_consume` VALUES ('232', '1', '17298', '62', '930', '91');
INSERT INTO `energy_consume` VALUES ('233', '6', '7688', '62', '2294', '91');
INSERT INTO `energy_consume` VALUES ('234', '11', '6479', '31', '651', '91');
INSERT INTO `energy_consume` VALUES ('235', '1', '16128', '648', '2376', '92');
INSERT INTO `energy_consume` VALUES ('236', '6', '21384', '648', '2376', '92');
INSERT INTO `energy_consume` VALUES ('237', '11', '5688', '252', '1368', '92');
INSERT INTO `energy_consume` VALUES ('238', '1', '12294.4', '108.8', '1523.2', '93');
INSERT INTO `energy_consume` VALUES ('239', '6', '12457.6', '380.8', '1033.6', '93');
INSERT INTO `energy_consume` VALUES ('240', '11', '3808', '81.6', '734.4', '93');
INSERT INTO `energy_consume` VALUES ('241', '1', '17388.8', '364.8', '729.6', '94');
INSERT INTO `energy_consume` VALUES ('242', '6', '9910.4', '304', '1945.6', '94');
INSERT INTO `energy_consume` VALUES ('243', '11', '5532.8', '30.4', '1064', '94');
INSERT INTO `energy_consume` VALUES ('244', '1', '14410', '262', '1886.4', '95');
INSERT INTO `energy_consume` VALUES ('245', '6', '5502', '157.2', '1624.4', '95');
INSERT INTO `energy_consume` VALUES ('246', '11', '6104.6', '183.4', '314.4', '95');
INSERT INTO `energy_consume` VALUES ('247', '1', '14242.8', '171.6', '1658.8', '96');
INSERT INTO `energy_consume` VALUES ('248', '6', '8580', '171.6', '2002', '96');
INSERT INTO `energy_consume` VALUES ('249', '11', '7464.6', '286', '772.2', '96');
INSERT INTO `energy_consume` VALUES ('250', '2', '14446', '186', '2170', '101');
INSERT INTO `energy_consume` VALUES ('251', '6', '11656', '310', '806', '101');
INSERT INTO `energy_consume` VALUES ('252', '12', '4650', '93', '651', '101');
INSERT INTO `energy_consume` VALUES ('253', '2', '8236.8', '281.6', '1126.4', '102');
INSERT INTO `energy_consume` VALUES ('254', '6', '10278.4', '422.4', '1478.4', '102');
INSERT INTO `energy_consume` VALUES ('255', '12', '8764.8', '281.6', '1056', '102');
INSERT INTO `energy_consume` VALUES ('256', '2', '21168', '576', '936', '103');
INSERT INTO `energy_consume` VALUES ('257', '6', '13608', '216', '1512', '103');
INSERT INTO `energy_consume` VALUES ('258', '12', '5040', '36', '432', '103');
INSERT INTO `energy_consume` VALUES ('259', '2', '9216', '512', '1728', '104');
INSERT INTO `energy_consume` VALUES ('260', '6', '16768', '256', '1664', '104');
INSERT INTO `energy_consume` VALUES ('261', '12', '6432', '288', '1280', '104');
INSERT INTO `energy_consume` VALUES ('262', '2', '18624', '620.8', '2172.8', '105');
INSERT INTO `energy_consume` VALUES ('263', '6', '16296', '232.8', '2871.2', '105');
INSERT INTO `energy_consume` VALUES ('264', '12', '7527.2', '271.6', '1513.2', '105');
INSERT INTO `energy_consume` VALUES ('265', '2', '17795.2', '597.6', '1328', '106');
INSERT INTO `energy_consume` VALUES ('266', '6', '14276', '398.4', '664', '106');
INSERT INTO `energy_consume` VALUES ('267', '12', '4017.2', '66.4', '464.8', '106');
INSERT INTO `energy_consume` VALUES ('268', '2', '22496', '304', '2280', '107');
INSERT INTO `energy_consume` VALUES ('269', '6', '9880', '684', '2584', '107');
INSERT INTO `energy_consume` VALUES ('270', '12', '9234', '266', '532', '107');
INSERT INTO `energy_consume` VALUES ('271', '2', '10872', '576', '1296', '108');
INSERT INTO `energy_consume` VALUES ('272', '6', '9072', '360', '1728', '108');
INSERT INTO `energy_consume` VALUES ('273', '12', '6372', '216', '720', '108');
INSERT INTO `energy_consume` VALUES ('274', '2', '14016', '320', '1152', '109');
INSERT INTO `energy_consume` VALUES ('275', '6', '12224', '640', '1152', '109');
INSERT INTO `energy_consume` VALUES ('276', '12', '7328', '128', '896', '109');
INSERT INTO `energy_consume` VALUES ('277', '2', '16684.8', '633.6', '2182.4', '110');
INSERT INTO `energy_consume` VALUES ('278', '6', '10841.6', '422.4', '985.6', '110');
INSERT INTO `energy_consume` VALUES ('279', '12', '5139.2', '352', '1161.6', '110');
INSERT INTO `energy_consume` VALUES ('280', '2', '8928', '496', '992', '111');
INSERT INTO `energy_consume` VALUES ('281', '6', '6882', '310', '1116', '111');
INSERT INTO `energy_consume` VALUES ('282', '12', '4030', '93', '434', '111');
INSERT INTO `energy_consume` VALUES ('283', '2', '15552', '360', '1800', '112');
INSERT INTO `energy_consume` VALUES ('284', '6', '17712', '648', '2016', '112');
INSERT INTO `energy_consume` VALUES ('285', '12', '5580', '180', '720', '112');
INSERT INTO `energy_consume` VALUES ('286', '2', '9956.8', '705.6', '940.8', '113');
INSERT INTO `energy_consume` VALUES ('287', '6', '21324.8', '470.4', '862.4', '113');
INSERT INTO `energy_consume` VALUES ('288', '12', '6036.8', '117.6', '1097.6', '113');
INSERT INTO `energy_consume` VALUES ('289', '2', '18057.6', '121.6', '2006.4', '114');
INSERT INTO `energy_consume` VALUES ('290', '6', '9667.2', '547.2', '729.6', '114');
INSERT INTO `energy_consume` VALUES ('291', '12', '6809.6', '30.4', '1003.2', '114');
INSERT INTO `energy_consume` VALUES ('292', '2', '22431.6', '562.8', '1206', '115');
INSERT INTO `energy_consume` VALUES ('293', '6', '8763.6', '723.6', '2974.8', '115');
INSERT INTO `energy_consume` VALUES ('294', '12', '6110.4', '40.2', '1246.2', '115');
INSERT INTO `energy_consume` VALUES ('295', '2', '19936.8', '85.2', '1022.4', '116');
INSERT INTO `energy_consume` VALUES ('296', '6', '16954.8', '85.2', '3237.6', '116');
INSERT INTO `energy_consume` VALUES ('297', '12', '5325', '42.6', '1491', '116');
INSERT INTO `energy_consume` VALUES ('736', '13', '12558', '546', '3276', '499');
INSERT INTO `energy_consume` VALUES ('737', '15', '12230.4', '873.6', '1092', '499');
INSERT INTO `energy_consume` VALUES ('738', '17', '5460', '163.8', '1092', '499');
INSERT INTO `energy_consume` VALUES ('739', '13', '9724', '618.8', '2298.4', '500');
INSERT INTO `energy_consume` VALUES ('740', '15', '22984', '707.2', '2828.8', '500');
INSERT INTO `energy_consume` VALUES ('741', '17', '7469.8', '442', '663', '500');
INSERT INTO `energy_consume` VALUES ('742', '13', '16830.4', '964.8', '4073.6', '501');
INSERT INTO `energy_consume` VALUES ('743', '15', '23691.2', '214.4', '3108.8', '501');
INSERT INTO `energy_consume` VALUES ('744', '17', '8468.8', '214.4', '1500.8', '501');
INSERT INTO `energy_consume` VALUES ('745', '13', '13024', '947.2', '1894.4', '502');
INSERT INTO `energy_consume` VALUES ('746', '15', '35401.6', '1184', '4380.8', '502');
INSERT INTO `energy_consume` VALUES ('747', '17', '7340.8', '473.6', '710.4', '502');
INSERT INTO `energy_consume` VALUES ('748', '13', '23222.4', '492', '2164.8', '503');
INSERT INTO `energy_consume` VALUES ('749', '15', '18302.4', '196.8', '1377.6', '503');
INSERT INTO `energy_consume` VALUES ('750', '17', '12595.2', '295.2', '541.2', '503');
INSERT INTO `energy_consume` VALUES ('751', '13', '32184', '864', '2160', '504');
INSERT INTO `energy_consume` VALUES ('752', '15', '31428', '1080', '2484', '504');
INSERT INTO `energy_consume` VALUES ('753', '17', '11610', '540', '1998', '504');
INSERT INTO `energy_consume` VALUES ('754', '13', '15744', '864', '3840', '505');
INSERT INTO `energy_consume` VALUES ('755', '15', '18432', '192', '2976', '505');
INSERT INTO `energy_consume` VALUES ('756', '17', '11328', '336', '480', '505');
INSERT INTO `energy_consume` VALUES ('757', '13', '22210.8', '446', '1248.8', '506');
INSERT INTO `energy_consume` VALUES ('758', '15', '17661.6', '802.8', '3211.2', '506');
INSERT INTO `energy_consume` VALUES ('759', '17', '7136', '446', '1115', '506');
INSERT INTO `energy_consume` VALUES ('760', '13', '27246.8', '103.6', '3004.4', '507');
INSERT INTO `energy_consume` VALUES ('761', '15', '18130', '518', '1346.8', '507');
INSERT INTO `energy_consume` VALUES ('762', '17', '6682.2', '155.4', '1761.2', '507');
INSERT INTO `energy_consume` VALUES ('763', '13', '14028', '84', '1512', '508');
INSERT INTO `energy_consume` VALUES ('764', '15', '18732', '252', '1176', '508');
INSERT INTO `energy_consume` VALUES ('765', '17', '7056', '252', '966', '508');
INSERT INTO `energy_consume` VALUES ('766', '13', '31327.6', '975.6', '1084', '509');
INSERT INTO `energy_consume` VALUES ('767', '15', '19512', '216.8', '1300.8', '509');
INSERT INTO `energy_consume` VALUES ('768', '17', '15880.6', '433.6', '2005.4', '509');
INSERT INTO `energy_consume` VALUES ('769', '13', '15392.8', '758.8', '1951.2', '510');
INSERT INTO `energy_consume` VALUES ('770', '15', '14308.8', '975.6', '4227.6', '510');
INSERT INTO `energy_consume` VALUES ('771', '17', '12737', '379.4', '1029.8', '510');
INSERT INTO `energy_consume` VALUES ('772', '13', '26418', '621.6', '1968.4', '511');
INSERT INTO `energy_consume` VALUES ('773', '15', '23310', '103.6', '1450.4', '511');
INSERT INTO `energy_consume` VALUES ('774', '17', '10101', '466.2', '1554', '511');
INSERT INTO `energy_consume` VALUES ('775', '13', '21708.8', '848', '1356.8', '512');
INSERT INTO `energy_consume` VALUES ('776', '15', '12974.4', '848', '2035.2', '512');
INSERT INTO `energy_consume` VALUES ('777', '17', '11702.4', '212', '1441.6', '512');
INSERT INTO `energy_consume` VALUES ('778', '13', '14100', '676.8', '2030.4', '513');
INSERT INTO `energy_consume` VALUES ('779', '15', '13310.4', '564', '2820', '513');
INSERT INTO `energy_consume` VALUES ('780', '17', '9870', '112.8', '958.8', '513');
INSERT INTO `energy_consume` VALUES ('781', '13', '10528', '94', '2820', '514');
INSERT INTO `energy_consume` VALUES ('782', '15', '26696', '564', '940', '514');
INSERT INTO `energy_consume` VALUES ('783', '17', '10293', '329', '1551', '514');
INSERT INTO `energy_consume` VALUES ('784', '14', '12896', '832', '1081.6', '515');
INSERT INTO `energy_consume` VALUES ('785', '16', '14976', '582.4', '2246.4', '515');
INSERT INTO `energy_consume` VALUES ('786', '18', '10483.2', '124.8', '1497.6', '515');
INSERT INTO `energy_consume` VALUES ('787', '14', '19434', '663.6', '3033.6', '516');
INSERT INTO `energy_consume` VALUES ('788', '16', '18012', '663.6', '3697.2', '516');
INSERT INTO `energy_consume` VALUES ('789', '18', '11992.2', '189.6', '568.8', '516');
INSERT INTO `energy_consume` VALUES ('790', '14', '26419.2', '206.4', '3405.6', '517');
INSERT INTO `energy_consume` VALUES ('791', '16', '30340.8', '825.6', '3302.4', '517');
INSERT INTO `energy_consume` VALUES ('792', '18', '13209.6', '412.8', '1651.2', '517');
INSERT INTO `energy_consume` VALUES ('793', '14', '30962.4', '532', '1489.6', '518');
INSERT INTO `energy_consume` VALUES ('794', '16', '18407.2', '744.8', '3936.8', '518');
INSERT INTO `energy_consume` VALUES ('795', '18', '13087.2', '478.8', '691.6', '518');
INSERT INTO `energy_consume` VALUES ('796', '14', '29363.2', '947.2', '4144', '519');
INSERT INTO `energy_consume` VALUES ('797', '16', '26758.4', '1184', '4144', '519');
INSERT INTO `energy_consume` VALUES ('798', '18', '11307.2', '355.2', '1243.2', '519');
INSERT INTO `energy_consume` VALUES ('799', '14', '20003.2', '212.8', '3724', '520');
INSERT INTO `energy_consume` VALUES ('800', '16', '22450.4', '851.2', '3617.6', '520');
INSERT INTO `energy_consume` VALUES ('801', '18', '9576', '106.4', '1649.2', '520');
INSERT INTO `energy_consume` VALUES ('802', '14', '22855.2', '513.6', '2054.4', '521');
INSERT INTO `energy_consume` VALUES ('803', '16', '16863.2', '428', '2311.2', '521');
INSERT INTO `energy_consume` VALUES ('804', '18', '4408.4', '128.4', '1326.8', '521');
INSERT INTO `energy_consume` VALUES ('805', '14', '10753.2', '939.6', '2296.8', '522');
INSERT INTO `energy_consume` VALUES ('806', '16', '15555.6', '1044', '2714.4', '522');
INSERT INTO `energy_consume` VALUES ('807', '18', '9396', '365.4', '939.6', '522');
INSERT INTO `energy_consume` VALUES ('808', '14', '12680.8', '677.6', '3581.6', '523');
INSERT INTO `energy_consume` VALUES ('809', '16', '11519.2', '871.2', '1936', '523');
INSERT INTO `energy_consume` VALUES ('810', '18', '13890.8', '145.2', '1210', '523');
INSERT INTO `energy_consume` VALUES ('811', '14', '19180.8', '947.2', '1184', '524');
INSERT INTO `energy_consume` VALUES ('812', '16', '30192', '236.8', '2131.2', '524');
INSERT INTO `energy_consume` VALUES ('813', '18', '12787.2', '59.2', '1953.6', '524');
INSERT INTO `energy_consume` VALUES ('814', '14', '23414.4', '864', '3283.2', '525');
INSERT INTO `energy_consume` VALUES ('815', '16', '25747.2', '432', '1987.2', '525');
INSERT INTO `energy_consume` VALUES ('816', '18', '6480', '432', '864', '525');
INSERT INTO `energy_consume` VALUES ('817', '14', '19494', '684', '2622', '526');
INSERT INTO `energy_consume` VALUES ('818', '16', '32832', '570', '2622', '526');
INSERT INTO `energy_consume` VALUES ('819', '18', '10317', '171', '1653', '526');
INSERT INTO `energy_consume` VALUES ('820', '14', '29700', '324', '1080', '527');
INSERT INTO `energy_consume` VALUES ('821', '16', '27324', '648', '1404', '527');
INSERT INTO `energy_consume` VALUES ('822', '18', '14796', '378', '1242', '527');
INSERT INTO `energy_consume` VALUES ('823', '14', '13513.6', '659.2', '3296', '528');
INSERT INTO `energy_consume` VALUES ('824', '16', '17633.6', '494.4', '3048.8', '528');
INSERT INTO `energy_consume` VALUES ('825', '18', '7992.8', '288.4', '453.2', '528');
INSERT INTO `energy_consume` VALUES ('826', '14', '32922', '111.6', '2343.6', '529');
INSERT INTO `energy_consume` VALUES ('827', '16', '13950', '446.4', '3124.8', '529');
INSERT INTO `energy_consume` VALUES ('828', '18', '12499.2', '558', '1562.4', '529');
INSERT INTO `energy_consume` VALUES ('829', '14', '23400', '630', '1170', '530');
INSERT INTO `energy_consume` VALUES ('830', '16', '16200', '90', '3240', '530');
INSERT INTO `energy_consume` VALUES ('831', '18', '7965', '225', '630', '530');
INSERT INTO `energy_consume` VALUES ('832', '14', '23230.8', '860.4', '1051.6', '531');
INSERT INTO `energy_consume` VALUES ('833', '16', '26959.2', '956', '1625.2', '531');
INSERT INTO `energy_consume` VALUES ('834', '18', '9751.2', '191.2', '1338.4', '531');
INSERT INTO `energy_consume` VALUES ('835', '13', '9542.4', '340.8', '1618.8', '532');
INSERT INTO `energy_consume` VALUES ('836', '16', '22748.4', '85.2', '937.2', '532');
INSERT INTO `energy_consume` VALUES ('837', '18', '10948.2', '298.2', '553.8', '532');
INSERT INTO `energy_consume` VALUES ('838', '13', '12768', '912', '3420', '533');
INSERT INTO `energy_consume` VALUES ('839', '16', '16758', '1026', '2508', '533');
INSERT INTO `energy_consume` VALUES ('840', '18', '8379', '570', '1254', '533');
INSERT INTO `energy_consume` VALUES ('841', '13', '25514.8', '454', '1816', '534');
INSERT INTO `energy_consume` VALUES ('842', '16', '15072.8', '817.2', '1362', '534');
INSERT INTO `energy_consume` VALUES ('843', '18', '5039.4', '408.6', '1543.6', '534');
INSERT INTO `energy_consume` VALUES ('844', '13', '21726', '1020', '2652', '535');
INSERT INTO `energy_consume` VALUES ('845', '16', '29376', '816', '1836', '535');
INSERT INTO `energy_consume` VALUES ('846', '18', '14994', '306', '1479', '535');
INSERT INTO `energy_consume` VALUES ('847', '13', '30753.6', '953.6', '4410.4', '536');
INSERT INTO `energy_consume` VALUES ('848', '16', '35164', '238.4', '2026.4', '536');
INSERT INTO `energy_consume` VALUES ('849', '18', '6198.4', '476.8', '1847.6', '536');
INSERT INTO `energy_consume` VALUES ('850', '13', '12218', '246', '1394', '537');
INSERT INTO `energy_consume` VALUES ('851', '16', '22960', '574', '2706', '537');
INSERT INTO `energy_consume` VALUES ('852', '18', '8405', '369', '1517', '537');
INSERT INTO `energy_consume` VALUES ('853', '13', '30352', '216.8', '2601.6', '538');
INSERT INTO `energy_consume` VALUES ('854', '16', '25799.2', '650.4', '3252', '538');
INSERT INTO `energy_consume` VALUES ('855', '18', '15501.2', '542', '1626', '538');
INSERT INTO `energy_consume` VALUES ('856', '13', '28292.4', '542', '1842.8', '539');
INSERT INTO `energy_consume` VALUES ('857', '16', '15176', '975.6', '2601.6', '539');
INSERT INTO `energy_consume` VALUES ('858', '18', '5420', '487.8', '2113.8', '539');
INSERT INTO `energy_consume` VALUES ('859', '13', '22110', '562.8', '1045.2', '540');
INSERT INTO `energy_consume` VALUES ('860', '16', '15356.4', '160.8', '1206', '540');
INSERT INTO `energy_consume` VALUES ('861', '18', '6713.4', '402', '1286.4', '540');
INSERT INTO `energy_consume` VALUES ('862', '13', '12870', '270', '900', '541');
INSERT INTO `energy_consume` VALUES ('863', '16', '13860', '900', '1350', '541');
INSERT INTO `energy_consume` VALUES ('864', '18', '6840', '270', '1395', '541');
INSERT INTO `energy_consume` VALUES ('865', '13', '27242', '212', '3816', '542');
INSERT INTO `energy_consume` VALUES ('866', '16', '23850', '742', '3922', '542');
INSERT INTO `energy_consume` VALUES ('867', '18', '7579', '424', '742', '542');
INSERT INTO `energy_consume` VALUES ('868', '13', '30402.8', '809.2', '3699.2', '543');
INSERT INTO `energy_consume` VALUES ('869', '16', '13756.4', '1040.4', '4624', '543');
INSERT INTO `energy_consume` VALUES ('870', '18', '17224.4', '231.2', '1271.6', '543');
INSERT INTO `energy_consume` VALUES ('871', '13', '30000', '100', '1100', '544');
INSERT INTO `energy_consume` VALUES ('872', '16', '26600', '300', '1800', '544');
INSERT INTO `energy_consume` VALUES ('873', '18', '5650', '500', '1750', '544');
INSERT INTO `energy_consume` VALUES ('874', '13', '11130', '954', '3392', '545');
INSERT INTO `energy_consume` VALUES ('875', '16', '28090', '1060', '3180', '545');
INSERT INTO `energy_consume` VALUES ('876', '18', '9805', '265', '1590', '545');
INSERT INTO `energy_consume` VALUES ('877', '13', '11266', '602', '1204', '546');
INSERT INTO `energy_consume` VALUES ('878', '16', '10234', '860', '946', '546');
INSERT INTO `energy_consume` VALUES ('879', '18', '7525', '301', '559', '546');
INSERT INTO `energy_consume` VALUES ('880', '25', '13776', '295.2', '1672.8', '580');
INSERT INTO `energy_consume` VALUES ('881', '27', '8806.8', '196.8', '1131.6', '580');
INSERT INTO `energy_consume` VALUES ('882', '29', '3025.8', '172.2', '393.6', '580');
INSERT INTO `energy_consume` VALUES ('883', '25', '11871.2', '170.4', '1022.4', '581');
INSERT INTO `energy_consume` VALUES ('884', '27', '12780', '568', '1704', '581');
INSERT INTO `energy_consume` VALUES ('885', '29', '3067.2', '28.4', '766.8', '581');
INSERT INTO `energy_consume` VALUES ('886', '25', '9550', '350', '1600', '582');
INSERT INTO `energy_consume` VALUES ('887', '27', '14650', '150', '800', '582');
INSERT INTO `energy_consume` VALUES ('888', '29', '4550', '100', '850', '582');
INSERT INTO `energy_consume` VALUES ('889', '25', '13002', '394', '2994.4', '583');
INSERT INTO `energy_consume` VALUES ('890', '27', '13790', '157.6', '1260.8', '583');
INSERT INTO `energy_consume` VALUES ('891', '29', '5043.2', '39.4', '472.8', '583');
INSERT INTO `energy_consume` VALUES ('892', '25', '12852.8', '417.6', '1809.6', '584');
INSERT INTO `energy_consume` VALUES ('893', '27', '10904', '371.2', '649.6', '584');
INSERT INTO `energy_consume` VALUES ('894', '29', '3944', '92.8', '835.2', '584');
INSERT INTO `energy_consume` VALUES ('895', '25', '15901.6', '500.4', '2112.8', '585');
INSERT INTO `energy_consume` VALUES ('896', '27', '9507.6', '222.4', '1501.2', '585');
INSERT INTO `energy_consume` VALUES ('897', '29', '3113.6', '111.2', '472.6', '585');
INSERT INTO `energy_consume` VALUES ('898', '25', '6795.2', '438.4', '712.4', '586');
INSERT INTO `energy_consume` VALUES ('899', '27', '6192.4', '54.8', '1370', '586');
INSERT INTO `energy_consume` VALUES ('900', '29', '7398', '274', '438.4', '586');
INSERT INTO `energy_consume` VALUES ('901', '25', '12497.2', '238.8', '2308.4', '587');
INSERT INTO `energy_consume` VALUES ('902', '27', '11701.2', '477.6', '1910.4', '587');
INSERT INTO `energy_consume` VALUES ('903', '29', '11303.2', '358.2', '955.2', '587');
INSERT INTO `energy_consume` VALUES ('904', '25', '14313.6', '201.6', '2016', '588');
INSERT INTO `energy_consume` VALUES ('905', '27', '8064', '470.4', '2486.4', '588');
INSERT INTO `energy_consume` VALUES ('906', '29', '9811.2', '168', '739.2', '588');
INSERT INTO `energy_consume` VALUES ('907', '25', '11511.6', '217.2', '2389.2', '589');
INSERT INTO `energy_consume` VALUES ('908', '27', '18679.2', '217.2', '1737.6', '589');
INSERT INTO `energy_consume` VALUES ('909', '29', '7891.6', '217.2', '1375.6', '589');
INSERT INTO `energy_consume` VALUES ('910', '25', '12280.8', '464.4', '1186.8', '590');
INSERT INTO `energy_consume` VALUES ('911', '27', '15273.6', '103.2', '1909.2', '590');
INSERT INTO `energy_consume` VALUES ('912', '29', '3560.4', '103.2', '1032', '590');
INSERT INTO `energy_consume` VALUES ('913', '25', '11415.6', '362.4', '1328.8', '591');
INSERT INTO `energy_consume` VALUES ('914', '27', '12019.6', '604', '1872.4', '591');
INSERT INTO `energy_consume` VALUES ('915', '29', '7097', '151', '1117.4', '591');
INSERT INTO `energy_consume` VALUES ('916', '25', '15642', '528', '1650', '592');
INSERT INTO `energy_consume` VALUES ('917', '27', '9042', '132', '1584', '592');
INSERT INTO `energy_consume` VALUES ('918', '29', '8712', '66', '1089', '592');
INSERT INTO `energy_consume` VALUES ('919', '25', '19113.6', '289.6', '1737.6', '593');
INSERT INTO `energy_consume` VALUES ('920', '27', '17520.8', '289.6', '868.8', '593');
INSERT INTO `energy_consume` VALUES ('921', '29', '8905.2', '72.4', '470.6', '593');
INSERT INTO `energy_consume` VALUES ('922', '25', '9180', '216', '594', '594');
INSERT INTO `energy_consume` VALUES ('923', '27', '7614', '324', '1674', '594');
INSERT INTO `energy_consume` VALUES ('924', '29', '2781', '81', '594', '594');
INSERT INTO `energy_consume` VALUES ('925', '25', '12844', '338', '1014', '595');
INSERT INTO `energy_consume` VALUES ('926', '27', '16156.4', '473.2', '1622.4', '595');
INSERT INTO `energy_consume` VALUES ('927', '29', '8517.6', '101.4', '811.2', '595');
INSERT INTO `energy_consume` VALUES ('928', '26', '22320', '669.6', '1041.6', '596');
INSERT INTO `energy_consume` VALUES ('929', '28', '10564.8', '744', '2157.6', '596');
INSERT INTO `energy_consume` VALUES ('930', '30', '8742', '297.6', '1376.4', '596');
INSERT INTO `energy_consume` VALUES ('931', '26', '14755.2', '318', '1526.4', '597');
INSERT INTO `energy_consume` VALUES ('932', '28', '9540', '572.4', '1590', '597');
INSERT INTO `energy_consume` VALUES ('933', '30', '7155', '190.8', '318', '597');
INSERT INTO `energy_consume` VALUES ('934', '26', '6989.2', '282.8', '1050.4', '598');
INSERT INTO `energy_consume` VALUES ('935', '28', '6019.6', '363.6', '888.8', '598');
INSERT INTO `energy_consume` VALUES ('936', '30', '2242.2', '60.6', '808', '598');
INSERT INTO `energy_consume` VALUES ('937', '26', '14160', '495.6', '1486.8', '599');
INSERT INTO `energy_consume` VALUES ('938', '28', '7292.4', '283.2', '1982.4', '599');
INSERT INTO `energy_consume` VALUES ('939', '30', '10584.6', '354', '1380.6', '599');
INSERT INTO `energy_consume` VALUES ('940', '26', '14732', '116', '2030', '600');
INSERT INTO `energy_consume` VALUES ('941', '28', '16820', '580', '580', '600');
INSERT INTO `energy_consume` VALUES ('942', '30', '4785', '174', '899', '600');
INSERT INTO `energy_consume` VALUES ('943', '26', '7457.2', '370.8', '453.2', '601');
INSERT INTO `energy_consume` VALUES ('944', '28', '9187.6', '123.6', '824', '601');
INSERT INTO `energy_consume` VALUES ('945', '30', '4635', '206', '576.8', '601');
INSERT INTO `energy_consume` VALUES ('946', '26', '10956', '660', '2508', '602');
INSERT INTO `energy_consume` VALUES ('947', '28', '17886', '264', '990', '602');
INSERT INTO `energy_consume` VALUES ('948', '30', '3795', '33', '660', '602');
INSERT INTO `energy_consume` VALUES ('949', '26', '14410', '262', '2043.6', '603');
INSERT INTO `energy_consume` VALUES ('950', '28', '14672', '314.4', '681.2', '603');
INSERT INTO `energy_consume` VALUES ('951', '30', '7755.2', '183.4', '497.8', '603');
INSERT INTO `energy_consume` VALUES ('952', '26', '14762.8', '668', '1603.2', '604');
INSERT INTO `energy_consume` VALUES ('953', '28', '6947.2', '334', '1068.8', '604');
INSERT INTO `energy_consume` VALUES ('954', '30', '5477.6', '66.8', '768.2', '604');
INSERT INTO `energy_consume` VALUES ('955', '26', '21883.2', '388', '2483.2', '605');
INSERT INTO `energy_consume` VALUES ('956', '28', '14123.2', '155.2', '2793.6', '605');
INSERT INTO `energy_consume` VALUES ('957', '30', '10126.8', '116.4', '1474.4', '605');
INSERT INTO `energy_consume` VALUES ('958', '26', '13121.6', '500.4', '778.4', '606');
INSERT INTO `energy_consume` VALUES ('959', '28', '7172.4', '444.8', '1056.4', '606');
INSERT INTO `energy_consume` VALUES ('960', '30', '3141.4', '83.4', '806.2', '606');
INSERT INTO `energy_consume` VALUES ('961', '26', '12250', '450', '550', '607');
INSERT INTO `energy_consume` VALUES ('962', '28', '6450', '350', '1600', '607');
INSERT INTO `energy_consume` VALUES ('963', '30', '2775', '250', '950', '607');
INSERT INTO `energy_consume` VALUES ('964', '26', '18136.8', '396', '1108.8', '608');
INSERT INTO `energy_consume` VALUES ('965', '28', '17028', '316.8', '1504.8', '608');
INSERT INTO `energy_consume` VALUES ('966', '30', '4593.6', '79.2', '1584', '608');
INSERT INTO `energy_consume` VALUES ('967', '26', '10587.6', '69.2', '1522.4', '609');
INSERT INTO `energy_consume` VALUES ('968', '28', '13355.6', '622.8', '968.8', '609');
INSERT INTO `energy_consume` VALUES ('969', '30', '7196.8', '69.2', '1211', '609');
INSERT INTO `energy_consume` VALUES ('970', '26', '16776', '432', '1008', '610');
INSERT INTO `energy_consume` VALUES ('971', '28', '14544', '720', '1800', '610');
INSERT INTO `energy_consume` VALUES ('972', '30', '4248', '144', '504', '610');
INSERT INTO `energy_consume` VALUES ('973', '26', '14317.2', '196.8', '541.2', '611');
INSERT INTO `energy_consume` VALUES ('974', '28', '11414.4', '344.4', '688.8', '611');
INSERT INTO `energy_consume` VALUES ('975', '30', '6273', '147.6', '541.2', '611');
INSERT INTO `energy_consume` VALUES ('976', '19', '10112', '192', '1216', '612');
INSERT INTO `energy_consume` VALUES ('977', '21', '6528', '384', '1664', '612');
INSERT INTO `energy_consume` VALUES ('978', '23', '3328', '160', '768', '612');
INSERT INTO `energy_consume` VALUES ('979', '19', '25630', '466', '1118.4', '613');
INSERT INTO `energy_consume` VALUES ('980', '21', '21715.6', '932', '1957.2', '613');
INSERT INTO `energy_consume` VALUES ('981', '23', '6803.6', '233', '1398', '613');
INSERT INTO `energy_consume` VALUES ('982', '19', '15408', '85.6', '2653.6', '614');
INSERT INTO `energy_consume` VALUES ('983', '21', '12754.4', '513.6', '2910.4', '614');
INSERT INTO `energy_consume` VALUES ('984', '23', '8431.6', '428', '1241.2', '614');
INSERT INTO `energy_consume` VALUES ('985', '19', '26312', '264', '968', '615');
INSERT INTO `energy_consume` VALUES ('986', '21', '16984', '704', '2640', '615');
INSERT INTO `energy_consume` VALUES ('987', '23', '9020', '352', '1452', '615');
INSERT INTO `energy_consume` VALUES ('988', '19', '18900', '350', '1050', '616');
INSERT INTO `energy_consume` VALUES ('989', '21', '18900', '140', '1050', '616');
INSERT INTO `energy_consume` VALUES ('990', '23', '6020', '280', '945', '616');
INSERT INTO `energy_consume` VALUES ('991', '19', '14632.4', '932', '2796', '617');
INSERT INTO `energy_consume` VALUES ('992', '21', '26282.4', '652.4', '2702.8', '617');
INSERT INTO `energy_consume` VALUES ('993', '23', '6757', '186.4', '745.6', '617');
INSERT INTO `energy_consume` VALUES ('994', '19', '10324.8', '95.6', '2390', '618');
INSERT INTO `energy_consume` VALUES ('995', '21', '17686', '860.4', '3632.8', '618');
INSERT INTO `energy_consume` VALUES ('996', '23', '6357.4', '430.2', '621.4', '618');
INSERT INTO `energy_consume` VALUES ('997', '19', '8282', '246', '1148', '619');
INSERT INTO `energy_consume` VALUES ('998', '21', '11152', '656', '1804', '619');
INSERT INTO `energy_consume` VALUES ('999', '23', '6396', '82', '1476', '619');
INSERT INTO `energy_consume` VALUES ('1000', '19', '13280.4', '183.6', '2448', '620');
INSERT INTO `energy_consume` VALUES ('1001', '21', '7099.2', '550.8', '1897.2', '620');
INSERT INTO `energy_consume` VALUES ('1002', '23', '7099.2', '30.6', '612', '620');
INSERT INTO `energy_consume` VALUES ('1003', '19', '10800', '259.2', '1382.4', '621');
INSERT INTO `energy_consume` VALUES ('1004', '21', '14515.2', '777.6', '2592', '621');
INSERT INTO `energy_consume` VALUES ('1005', '23', '8683.2', '345.6', '1252.8', '621');
INSERT INTO `energy_consume` VALUES ('1006', '19', '15783.2', '434.4', '1158.4', '622');
INSERT INTO `energy_consume` VALUES ('1007', '21', '9484.4', '724', '1737.6', '622');
INSERT INTO `energy_consume` VALUES ('1008', '23', '9556.8', '289.6', '687.8', '622');
INSERT INTO `energy_consume` VALUES ('1009', '19', '12127.2', '195.6', '1760.4', '623');
INSERT INTO `energy_consume` VALUES ('1010', '21', '13040', '521.6', '2216.8', '623');
INSERT INTO `energy_consume` VALUES ('1011', '23', '3846.8', '228.2', '652', '623');
INSERT INTO `energy_consume` VALUES ('1012', '19', '16896', '594', '2310', '624');
INSERT INTO `energy_consume` VALUES ('1013', '21', '9900', '594', '1584', '624');
INSERT INTO `energy_consume` VALUES ('1014', '23', '7788', '264', '924', '624');
INSERT INTO `energy_consume` VALUES ('1015', '19', '17678.8', '916', '2656.4', '625');
INSERT INTO `energy_consume` VALUES ('1016', '21', '24915.2', '274.8', '2106.8', '625');
INSERT INTO `energy_consume` VALUES ('1017', '23', '9709.6', '320.6', '1694.6', '625');
INSERT INTO `energy_consume` VALUES ('1018', '19', '11384.4', '716', '1288.8', '626');
INSERT INTO `energy_consume` VALUES ('1019', '21', '10883.2', '572.8', '1145.6', '626');
INSERT INTO `energy_consume` VALUES ('1020', '23', '3651.6', '322.2', '572.8', '626');
INSERT INTO `energy_consume` VALUES ('1021', '19', '15364', '668', '2338', '627');
INSERT INTO `energy_consume` VALUES ('1022', '21', '9084.8', '467.6', '734.8', '627');
INSERT INTO `energy_consume` VALUES ('1023', '23', '9151.6', '233.8', '1068.8', '627');
INSERT INTO `energy_consume` VALUES ('1024', '20', '14664', '624', '2574', '628');
INSERT INTO `energy_consume` VALUES ('1025', '22', '18486', '546', '1950', '628');
INSERT INTO `energy_consume` VALUES ('1026', '24', '7293', '390', '819', '628');
INSERT INTO `energy_consume` VALUES ('1027', '20', '23631.2', '261.6', '2703.2', '629');
INSERT INTO `energy_consume` VALUES ('1028', '22', '14562.4', '174.4', '2877.6', '629');
INSERT INTO `energy_consume` VALUES ('1029', '24', '4883.2', '348.8', '1569.6', '629');
INSERT INTO `energy_consume` VALUES ('1030', '20', '18682.4', '677.6', '3388', '630');
INSERT INTO `energy_consume` VALUES ('1031', '22', '19747.2', '387.2', '2420', '630');
INSERT INTO `energy_consume` VALUES ('1032', '24', '11035.2', '193.6', '1645.6', '630');
INSERT INTO `energy_consume` VALUES ('1033', '20', '12110.8', '707.2', '1060.8', '631');
INSERT INTO `energy_consume` VALUES ('1034', '22', '25194', '265.2', '2475.2', '631');
INSERT INTO `energy_consume` VALUES ('1035', '24', '12641.2', '442', '1502.8', '631');
INSERT INTO `energy_consume` VALUES ('1036', '20', '8960', '70', '2520', '632');
INSERT INTO `energy_consume` VALUES ('1037', '22', '12740', '420', '1610', '632');
INSERT INTO `energy_consume` VALUES ('1038', '24', '8715', '280', '1120', '632');
INSERT INTO `energy_consume` VALUES ('1039', '20', '10754.8', '322', '2125.2', '633');
INSERT INTO `energy_consume` VALUES ('1040', '22', '7856.8', '322', '1288', '633');
INSERT INTO `energy_consume` VALUES ('1041', '24', '9112.6', '64.4', '418.6', '633');
INSERT INTO `energy_consume` VALUES ('1042', '20', '12814.8', '141.6', '1203.6', '634');
INSERT INTO `energy_consume` VALUES ('1043', '22', '12956.4', '283.2', '2761.2', '634');
INSERT INTO `energy_consume` VALUES ('1044', '24', '7858.8', '106.2', '1239', '634');
INSERT INTO `energy_consume` VALUES ('1045', '20', '23476.8', '262.8', '3153.6', '635');
INSERT INTO `energy_consume` VALUES ('1046', '22', '14103.6', '876', '2277.6', '635');
INSERT INTO `energy_consume` VALUES ('1047', '24', '7008', '131.4', '1708.2', '635');
INSERT INTO `energy_consume` VALUES ('1048', '20', '13328', '78.4', '1254.4', '636');
INSERT INTO `energy_consume` VALUES ('1049', '22', '17796.8', '470.4', '1568', '636');
INSERT INTO `energy_consume` VALUES ('1050', '24', '4351.2', '196', '1372', '636');
INSERT INTO `energy_consume` VALUES ('1051', '20', '26084.8', '380.8', '1428', '637');
INSERT INTO `energy_consume` VALUES ('1052', '22', '23419.2', '95.2', '1332.8', '637');
INSERT INTO `energy_consume` VALUES ('1053', '24', '10091.2', '380.8', '1428', '637');
INSERT INTO `energy_consume` VALUES ('1054', '20', '19264', '206.4', '1651.2', '638');
INSERT INTO `energy_consume` VALUES ('1055', '22', '11764.8', '344', '1995.2', '638');
INSERT INTO `energy_consume` VALUES ('1056', '24', '3749.6', '172', '481.6', '638');
INSERT INTO `energy_consume` VALUES ('1057', '20', '13347.2', '68.8', '2545.6', '639');
INSERT INTO `energy_consume` VALUES ('1058', '22', '20296', '137.6', '1926.4', '639');
INSERT INTO `energy_consume` VALUES ('1059', '24', '8290.4', '344', '825.6', '639');
INSERT INTO `energy_consume` VALUES ('1060', '20', '20641.6', '310.4', '1629.6', '640');
INSERT INTO `energy_consume` VALUES ('1061', '22', '13657.6', '620.8', '853.6', '640');
INSERT INTO `energy_consume` VALUES ('1062', '24', '11329.6', '155.2', '1280.4', '640');
INSERT INTO `energy_consume` VALUES ('1063', '20', '13753.2', '87.6', '1927.2', '641');
INSERT INTO `energy_consume` VALUES ('1064', '22', '25141.2', '700.8', '2277.6', '641');
INSERT INTO `energy_consume` VALUES ('1065', '24', '6175.8', '175.2', '1401.6', '641');
INSERT INTO `energy_consume` VALUES ('1066', '20', '23848', '704', '3168', '642');
INSERT INTO `energy_consume` VALUES ('1067', '22', '16544', '352', '3432', '642');
INSERT INTO `energy_consume` VALUES ('1068', '24', '8184', '44', '1188', '642');
INSERT INTO `energy_consume` VALUES ('1069', '20', '19295.2', '284.8', '2634.4', '643');
INSERT INTO `energy_consume` VALUES ('1070', '22', '13172', '498.4', '1139.2', '643');
INSERT INTO `energy_consume` VALUES ('1071', '24', '7938.8', '106.8', '1210.4', '643');

-- ----------------------------
-- Table structure for energy_standradcoal
-- ----------------------------
DROP TABLE IF EXISTS `energy_standradcoal`;
CREATE TABLE `energy_standradcoal` (
  `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `energetype` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '能源类别',
  `ratio` float DEFAULT NULL COMMENT '系数',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of energy_standradcoal
-- ----------------------------
INSERT INTO `energy_standradcoal` VALUES ('1', '电', '4.04');
INSERT INTO `energy_standradcoal` VALUES ('2', '水', '0.26');
INSERT INTO `energy_standradcoal` VALUES ('3', '油', '1.47');

-- ----------------------------
-- Table structure for produce_fault
-- ----------------------------
DROP TABLE IF EXISTS `produce_fault`;
CREATE TABLE `produce_fault` (
  `fault_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键故障id',
  `devid` int(11) DEFAULT NULL COMMENT '设备名称',
  `cause` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '故障原因',
  `faultuser` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '报告人',
  `faulttime` int(11) DEFAULT NULL COMMENT '故障时间(分钟)',
  PRIMARY KEY (`fault_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of produce_fault
-- ----------------------------
INSERT INTO `produce_fault` VALUES ('1', '1', '自然原因(风)', '于合壁', '50');
INSERT INTO `produce_fault` VALUES ('2', '2', '突然断电', '柴年年', '32');
INSERT INTO `produce_fault` VALUES ('3', '4', '短路', '赵舞阳', '36');
INSERT INTO `produce_fault` VALUES ('4', '8', '卡东西', '党刘涛', '20');
INSERT INTO `produce_fault` VALUES ('5', '13', '自然原因', '梁哲', '36');
INSERT INTO `produce_fault` VALUES ('6', '15', '人为操作不当', '梁壮壮', '60');
INSERT INTO `produce_fault` VALUES ('7', '18', '自然原因', '王欣', '50');
INSERT INTO `produce_fault` VALUES ('8', '25', '人为操作不当', '王文政', '80');
INSERT INTO `produce_fault` VALUES ('9', '21', '自然原因', '蒋科磊', '45');

-- ----------------------------
-- Table structure for produce_job
-- ----------------------------
DROP TABLE IF EXISTS `produce_job`;
CREATE TABLE `produce_job` (
  `jobid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `devid` int(100) DEFAULT NULL COMMENT '设备名称',
  `starttime` datetime DEFAULT NULL COMMENT '开始作业时间',
  `completetime` datetime DEFAULT NULL COMMENT '结束作业时间',
  `duration` double DEFAULT NULL COMMENT '运行时长',
  `amount` double DEFAULT NULL COMMENT '作业量',
  `reportid` int(11) DEFAULT NULL COMMENT '报岗id',
  PRIMARY KEY (`jobid`)
) ENGINE=InnoDB AUTO_INCREMENT=1072 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of produce_job
-- ----------------------------
INSERT INTO `produce_job` VALUES ('1', '1', '2019-04-01 02:00:00', '2019-04-01 05:00:00', '3', '40', '1');
INSERT INTO `produce_job` VALUES ('2', '4', '2019-04-01 02:00:00', '2019-04-01 05:00:00', '3', '40', '1');
INSERT INTO `produce_job` VALUES ('3', '8', '2019-04-01 02:00:00', '2019-04-01 05:00:00', '3', '20', '1');
INSERT INTO `produce_job` VALUES ('7', '2', '2019-04-02 11:00:00', '2019-04-02 16:10:00', '5.17', '64', '3');
INSERT INTO `produce_job` VALUES ('8', '5', '2019-04-02 11:00:00', '2019-04-02 16:10:00', '5.17', '64', '3');
INSERT INTO `produce_job` VALUES ('9', '10', '2019-04-02 11:00:00', '2019-04-02 16:10:00', '5.17', '32', '3');
INSERT INTO `produce_job` VALUES ('10', '1', '2018-01-01 10:00:00', '2018-01-01 14:35:00', '4.58', '72', '4');
INSERT INTO `produce_job` VALUES ('11', '4', '2018-01-01 10:00:00', '2018-01-01 14:35:00', '4.58', '72', '4');
INSERT INTO `produce_job` VALUES ('12', '8', '2018-01-01 10:00:00', '2018-01-01 14:35:00', '4.58', '36', '4');
INSERT INTO `produce_job` VALUES ('13', '1', '2018-02-01 10:00:00', '2018-02-01 18:00:00', '8', '68', '5');
INSERT INTO `produce_job` VALUES ('14', '4', '2018-02-01 10:00:00', '2018-02-01 18:00:00', '8', '68', '5');
INSERT INTO `produce_job` VALUES ('15', '8', '2018-02-01 10:00:00', '2018-02-01 18:00:00', '8', '34', '5');
INSERT INTO `produce_job` VALUES ('16', '1', '2018-03-01 10:00:00', '2018-03-01 17:10:00', '7.17', '66', '6');
INSERT INTO `produce_job` VALUES ('17', '4', '2018-03-01 10:00:00', '2018-03-01 17:10:00', '7.17', '66', '6');
INSERT INTO `produce_job` VALUES ('18', '8', '2018-03-01 10:00:00', '2018-03-01 17:10:00', '7.17', '33', '6');
INSERT INTO `produce_job` VALUES ('19', '1', '2018-04-01 10:00:00', '2018-04-01 20:30:00', '10.5', '73.2', '7');
INSERT INTO `produce_job` VALUES ('20', '4', '2018-04-01 10:00:00', '2018-04-01 20:30:00', '10.5', '73.2', '7');
INSERT INTO `produce_job` VALUES ('21', '8', '2018-04-01 10:00:00', '2018-04-01 20:30:00', '10.5', '36.6', '7');
INSERT INTO `produce_job` VALUES ('22', '1', '2018-05-01 10:00:00', '2018-05-01 17:20:00', '7.33', '49.6', '8');
INSERT INTO `produce_job` VALUES ('23', '4', '2018-05-01 10:00:00', '2018-05-01 17:20:00', '7.33', '49.6', '8');
INSERT INTO `produce_job` VALUES ('24', '8', '2018-05-01 10:00:00', '2018-05-01 17:20:00', '7.33', '24.8', '8');
INSERT INTO `produce_job` VALUES ('25', '1', '2018-06-01 10:00:00', '2018-06-01 16:25:00', '6.42', '54', '9');
INSERT INTO `produce_job` VALUES ('26', '4', '2018-06-01 10:00:00', '2018-06-01 16:25:00', '6.42', '54', '9');
INSERT INTO `produce_job` VALUES ('27', '8', '2018-06-01 10:00:00', '2018-06-01 16:25:00', '6.42', '27', '9');
INSERT INTO `produce_job` VALUES ('28', '1', '2018-07-01 10:00:00', '2018-07-01 13:15:00', '3.25', '59.6', '10');
INSERT INTO `produce_job` VALUES ('29', '4', '2018-07-01 10:00:00', '2018-07-01 13:15:00', '3.25', '59.6', '10');
INSERT INTO `produce_job` VALUES ('30', '8', '2018-07-01 10:00:00', '2018-07-01 13:15:00', '3.25', '29.8', '10');
INSERT INTO `produce_job` VALUES ('31', '1', '2018-08-01 10:00:00', '2018-08-01 15:35:00', '5.58', '64.4', '11');
INSERT INTO `produce_job` VALUES ('32', '4', '2018-08-01 10:00:00', '2018-08-01 15:35:00', '5.58', '64.4', '11');
INSERT INTO `produce_job` VALUES ('33', '8', '2018-08-01 10:00:00', '2018-08-01 15:35:00', '5.58', '32.2', '11');
INSERT INTO `produce_job` VALUES ('34', '1', '2018-09-01 10:00:00', '2018-09-01 16:45:00', '6.75', '61.2', '12');
INSERT INTO `produce_job` VALUES ('35', '4', '2018-09-01 10:00:00', '2018-09-01 16:45:00', '6.75', '61.2', '12');
INSERT INTO `produce_job` VALUES ('36', '8', '2018-09-01 10:00:00', '2018-09-01 16:45:00', '6.75', '30.6', '12');
INSERT INTO `produce_job` VALUES ('37', '1', '2018-10-01 10:00:00', '2018-10-01 19:16:00', '9.27', '56.8', '13');
INSERT INTO `produce_job` VALUES ('38', '4', '2018-10-01 10:00:00', '2018-10-01 19:16:00', '9.27', '56.8', '13');
INSERT INTO `produce_job` VALUES ('39', '8', '2018-10-01 10:00:00', '2018-10-01 19:16:00', '9.27', '28.4', '13');
INSERT INTO `produce_job` VALUES ('40', '1', '2018-11-01 10:00:00', '2018-11-01 20:22:00', '10.37', '54.8', '14');
INSERT INTO `produce_job` VALUES ('41', '4', '2018-11-01 10:00:00', '2018-11-01 20:22:00', '10.37', '54.8', '14');
INSERT INTO `produce_job` VALUES ('42', '8', '2018-11-01 10:00:00', '2018-11-01 20:22:00', '10.37', '27.4', '14');
INSERT INTO `produce_job` VALUES ('43', '1', '2018-12-01 10:00:00', '2018-12-01 14:35:00', '4.58', '61.6', '15');
INSERT INTO `produce_job` VALUES ('44', '4', '2018-12-01 10:00:00', '2018-12-01 14:35:00', '4.58', '61.6', '15');
INSERT INTO `produce_job` VALUES ('45', '8', '2018-12-01 10:00:00', '2018-12-01 14:35:00', '4.58', '30.8', '15');
INSERT INTO `produce_job` VALUES ('46', '1', '2019-01-01 10:00:00', '2019-01-01 16:25:00', '6.42', '51.6', '16');
INSERT INTO `produce_job` VALUES ('47', '4', '2019-01-01 10:00:00', '2019-01-01 16:25:00', '6.42', '51.6', '16');
INSERT INTO `produce_job` VALUES ('48', '8', '2019-01-01 10:00:00', '2019-01-01 16:25:00', '6.42', '25.8', '16');
INSERT INTO `produce_job` VALUES ('49', '1', '2019-02-01 10:00:00', '2019-02-01 21:30:00', '11.5', '67.2', '17');
INSERT INTO `produce_job` VALUES ('50', '4', '2019-02-01 10:00:00', '2019-02-01 21:30:00', '11.5', '67.2', '17');
INSERT INTO `produce_job` VALUES ('51', '8', '2019-02-01 10:00:00', '2019-02-01 21:30:00', '11.5', '33.6', '17');
INSERT INTO `produce_job` VALUES ('52', '1', '2019-03-01 10:00:00', '2019-03-01 16:36:00', '6.6', '58', '18');
INSERT INTO `produce_job` VALUES ('53', '4', '2019-03-01 10:00:00', '2019-03-01 16:36:00', '6.6', '58', '18');
INSERT INTO `produce_job` VALUES ('54', '8', '2019-03-01 10:00:00', '2019-03-01 16:36:00', '6.6', '29', '18');
INSERT INTO `produce_job` VALUES ('55', '1', '2019-04-01 10:00:00', '2019-04-01 18:35:00', '8.58', '62.4', '19');
INSERT INTO `produce_job` VALUES ('56', '4', '2019-04-01 10:00:00', '2019-04-01 18:35:00', '8.58', '62.4', '19');
INSERT INTO `produce_job` VALUES ('57', '8', '2019-04-01 10:00:00', '2019-04-01 18:35:00', '8.58', '31.2', '19');
INSERT INTO `produce_job` VALUES ('58', '1', '2018-01-01 06:00:00', '2018-01-01 09:25:00', '3.42', '50.4', '21');
INSERT INTO `produce_job` VALUES ('59', '5', '2018-01-01 06:00:00', '2018-01-01 09:25:00', '3.42', '50.4', '21');
INSERT INTO `produce_job` VALUES ('60', '9', '2018-01-01 06:00:00', '2018-01-01 09:25:00', '3.42', '25.2', '21');
INSERT INTO `produce_job` VALUES ('61', '1', '2018-02-01 06:00:00', '2018-02-01 09:25:00', '3.42', '50.4', '22');
INSERT INTO `produce_job` VALUES ('62', '5', '2018-02-01 06:00:00', '2018-02-01 09:25:00', '3.42', '50.4', '22');
INSERT INTO `produce_job` VALUES ('63', '9', '2018-02-01 06:00:00', '2018-02-01 09:25:00', '3.42', '25.2', '22');
INSERT INTO `produce_job` VALUES ('64', '1', '2018-03-01 06:00:00', '2018-03-01 12:34:00', '6.57', '63.2', '23');
INSERT INTO `produce_job` VALUES ('65', '5', '2018-03-01 06:00:00', '2018-03-01 12:34:00', '6.57', '63.2', '23');
INSERT INTO `produce_job` VALUES ('66', '9', '2018-03-01 06:00:00', '2018-03-01 12:34:00', '6.57', '31.6', '23');
INSERT INTO `produce_job` VALUES ('67', '1', '2018-04-01 06:00:00', '2018-04-01 08:46:00', '2.77', '57.2', '24');
INSERT INTO `produce_job` VALUES ('68', '5', '2018-04-01 06:00:00', '2018-04-01 08:46:00', '2.77', '57.2', '24');
INSERT INTO `produce_job` VALUES ('69', '9', '2018-04-01 06:00:00', '2018-04-01 08:46:00', '2.77', '28.6', '24');
INSERT INTO `produce_job` VALUES ('70', '1', '2018-05-01 06:00:00', '2018-05-01 14:35:00', '8.58', '74.4', '25');
INSERT INTO `produce_job` VALUES ('71', '5', '2018-05-01 06:00:00', '2018-05-01 14:35:00', '8.58', '74.4', '25');
INSERT INTO `produce_job` VALUES ('72', '9', '2018-05-01 06:00:00', '2018-05-01 14:35:00', '8.58', '37.2', '25');
INSERT INTO `produce_job` VALUES ('73', '1', '2018-06-01 06:00:00', '2018-06-01 13:10:00', '7.17', '68.8', '26');
INSERT INTO `produce_job` VALUES ('74', '5', '2018-06-01 06:00:00', '2018-06-01 13:10:00', '7.17', '68.8', '26');
INSERT INTO `produce_job` VALUES ('75', '9', '2018-06-01 06:00:00', '2018-06-01 13:10:00', '7.17', '34.4', '26');
INSERT INTO `produce_job` VALUES ('76', '1', '2018-07-01 06:00:00', '2018-07-01 16:14:00', '10.23', '54.4', '27');
INSERT INTO `produce_job` VALUES ('77', '5', '2018-07-01 06:00:00', '2018-07-01 16:14:00', '10.23', '54.4', '27');
INSERT INTO `produce_job` VALUES ('78', '9', '2018-07-01 06:00:00', '2018-07-01 16:14:00', '10.23', '27.2', '27');
INSERT INTO `produce_job` VALUES ('79', '1', '2018-08-01 06:00:00', '2018-08-01 19:25:00', '13.42', '59.6', '28');
INSERT INTO `produce_job` VALUES ('80', '5', '2018-08-01 06:00:00', '2018-08-01 19:25:00', '13.42', '59.6', '28');
INSERT INTO `produce_job` VALUES ('81', '9', '2018-08-01 06:00:00', '2018-08-01 19:25:00', '13.42', '29.8', '28');
INSERT INTO `produce_job` VALUES ('82', '1', '2018-09-01 06:00:00', '2018-09-01 11:15:00', '5.25', '67.2', '29');
INSERT INTO `produce_job` VALUES ('83', '5', '2018-09-01 06:00:00', '2018-09-01 11:15:00', '5.25', '67.2', '29');
INSERT INTO `produce_job` VALUES ('84', '9', '2018-09-01 06:00:00', '2018-09-01 11:15:00', '5.25', '33.6', '29');
INSERT INTO `produce_job` VALUES ('85', '1', '2018-10-01 06:00:00', '2018-10-01 13:14:00', '7.23', '80', '30');
INSERT INTO `produce_job` VALUES ('86', '5', '2018-10-01 06:00:00', '2018-10-01 13:14:00', '7.23', '80', '30');
INSERT INTO `produce_job` VALUES ('87', '9', '2018-10-01 06:00:00', '2018-10-01 13:14:00', '7.23', '40', '30');
INSERT INTO `produce_job` VALUES ('88', '1', '2018-11-01 06:00:00', '2018-11-01 16:50:00', '10.83', '72', '31');
INSERT INTO `produce_job` VALUES ('89', '5', '2018-11-01 06:00:00', '2018-11-01 16:50:00', '10.83', '72', '31');
INSERT INTO `produce_job` VALUES ('90', '9', '2018-11-01 06:00:00', '2018-11-01 16:50:00', '10.83', '36', '31');
INSERT INTO `produce_job` VALUES ('91', '1', '2018-12-01 06:00:00', '2018-12-01 20:25:00', '14.42', '49.6', '32');
INSERT INTO `produce_job` VALUES ('92', '5', '2018-12-01 06:00:00', '2018-12-01 20:25:00', '14.42', '49.6', '32');
INSERT INTO `produce_job` VALUES ('93', '9', '2018-12-01 06:00:00', '2018-12-01 20:25:00', '14.42', '24.8', '32');
INSERT INTO `produce_job` VALUES ('94', '1', '2019-01-01 06:00:00', '2019-01-01 18:20:00', '12.33', '44', '33');
INSERT INTO `produce_job` VALUES ('95', '5', '2019-01-01 06:00:00', '2019-01-01 18:20:00', '12.33', '44', '33');
INSERT INTO `produce_job` VALUES ('96', '9', '2019-01-01 06:00:00', '2019-01-01 18:20:00', '12.33', '22', '33');
INSERT INTO `produce_job` VALUES ('97', '1', '2019-02-01 06:00:00', '2019-02-01 14:10:00', '8.17', '76.8', '34');
INSERT INTO `produce_job` VALUES ('98', '5', '2019-02-01 06:00:00', '2019-02-01 14:10:00', '8.17', '76.8', '34');
INSERT INTO `produce_job` VALUES ('99', '9', '2019-02-01 06:00:00', '2019-02-01 14:10:00', '8.17', '38.4', '34');
INSERT INTO `produce_job` VALUES ('100', '1', '2019-03-01 06:00:00', '2019-03-01 15:10:00', '9.17', '72.4', '35');
INSERT INTO `produce_job` VALUES ('101', '5', '2019-03-01 06:00:00', '2019-03-01 15:10:00', '9.17', '72.4', '35');
INSERT INTO `produce_job` VALUES ('102', '9', '2019-03-01 06:00:00', '2019-03-01 15:10:00', '9.17', '36.2', '35');
INSERT INTO `produce_job` VALUES ('103', '1', '2019-04-01 06:00:00', '2019-04-01 14:10:00', '8.17', '69.6', '36');
INSERT INTO `produce_job` VALUES ('104', '5', '2019-04-01 06:00:00', '2019-04-01 14:10:00', '8.17', '69.6', '36');
INSERT INTO `produce_job` VALUES ('105', '9', '2019-04-01 06:00:00', '2019-04-01 14:10:00', '8.17', '34.8', '36');
INSERT INTO `produce_job` VALUES ('106', '2', '2018-01-01 03:00:00', '2018-01-01 09:25:00', '6.42', '76', '41');
INSERT INTO `produce_job` VALUES ('107', '5', '2018-01-01 03:00:00', '2018-01-01 09:25:00', '6.42', '76', '41');
INSERT INTO `produce_job` VALUES ('108', '10', '2018-01-01 03:00:00', '2018-01-01 09:25:00', '6.42', '38', '41');
INSERT INTO `produce_job` VALUES ('109', '2', '2018-02-01 03:00:00', '2018-02-01 09:25:00', '6.42', '78.4', '42');
INSERT INTO `produce_job` VALUES ('110', '5', '2018-02-01 03:00:00', '2018-02-01 09:25:00', '6.42', '78.4', '42');
INSERT INTO `produce_job` VALUES ('111', '10', '2018-02-01 03:00:00', '2018-02-01 09:25:00', '6.42', '39.2', '42');
INSERT INTO `produce_job` VALUES ('112', '2', '2018-03-01 03:00:00', '2018-03-01 12:34:00', '9.57', '84', '43');
INSERT INTO `produce_job` VALUES ('113', '5', '2018-03-01 03:00:00', '2018-03-01 12:34:00', '9.57', '84', '43');
INSERT INTO `produce_job` VALUES ('114', '10', '2018-03-01 03:00:00', '2018-03-01 12:34:00', '9.57', '42', '43');
INSERT INTO `produce_job` VALUES ('115', '2', '2018-04-01 03:00:00', '2018-04-01 08:46:00', '5.77', '88', '44');
INSERT INTO `produce_job` VALUES ('116', '5', '2018-04-01 03:00:00', '2018-04-01 08:46:00', '5.77', '88', '44');
INSERT INTO `produce_job` VALUES ('117', '10', '2018-04-01 03:00:00', '2018-04-01 08:46:00', '5.77', '44', '44');
INSERT INTO `produce_job` VALUES ('118', '2', '2018-05-01 03:00:00', '2018-05-01 14:35:00', '11.58', '81.6', '45');
INSERT INTO `produce_job` VALUES ('119', '5', '2018-05-01 03:00:00', '2018-05-01 14:35:00', '11.58', '81.6', '45');
INSERT INTO `produce_job` VALUES ('120', '10', '2018-05-01 03:00:00', '2018-05-01 14:35:00', '11.58', '40.8', '45');
INSERT INTO `produce_job` VALUES ('121', '2', '2018-06-01 03:00:00', '2018-06-01 13:10:00', '10.17', '82.4', '46');
INSERT INTO `produce_job` VALUES ('122', '5', '2018-06-01 03:00:00', '2018-06-01 13:10:00', '10.17', '82.4', '46');
INSERT INTO `produce_job` VALUES ('123', '10', '2018-06-01 03:00:00', '2018-06-01 13:10:00', '10.17', '41.2', '46');
INSERT INTO `produce_job` VALUES ('124', '2', '2018-07-01 03:00:00', '2018-07-01 16:14:00', '13.23', '92', '47');
INSERT INTO `produce_job` VALUES ('125', '5', '2018-07-01 03:00:00', '2018-07-01 16:14:00', '13.23', '92', '47');
INSERT INTO `produce_job` VALUES ('126', '10', '2018-07-01 03:00:00', '2018-07-01 16:14:00', '13.23', '46', '47');
INSERT INTO `produce_job` VALUES ('127', '2', '2018-08-01 03:00:00', '2018-08-01 19:25:00', '16.42', '72', '48');
INSERT INTO `produce_job` VALUES ('128', '5', '2018-08-01 03:00:00', '2018-08-01 19:25:00', '16.42', '72', '48');
INSERT INTO `produce_job` VALUES ('129', '10', '2018-08-01 03:00:00', '2018-08-01 19:25:00', '16.42', '36', '48');
INSERT INTO `produce_job` VALUES ('130', '2', '2018-09-01 03:00:00', '2018-09-01 11:15:00', '8.25', '64', '49');
INSERT INTO `produce_job` VALUES ('131', '5', '2018-09-01 03:00:00', '2018-09-01 11:15:00', '8.25', '64', '49');
INSERT INTO `produce_job` VALUES ('132', '10', '2018-09-01 03:00:00', '2018-09-01 11:15:00', '8.25', '32', '49');
INSERT INTO `produce_job` VALUES ('133', '2', '2018-10-01 03:00:00', '2018-10-01 13:14:00', '10.23', '70.4', '50');
INSERT INTO `produce_job` VALUES ('134', '5', '2018-10-01 03:00:00', '2018-10-01 13:14:00', '10.23', '70.4', '50');
INSERT INTO `produce_job` VALUES ('135', '10', '2018-10-01 03:00:00', '2018-10-01 13:14:00', '10.23', '35.2', '50');
INSERT INTO `produce_job` VALUES ('136', '2', '2018-11-01 03:00:00', '2018-11-01 16:50:00', '13.83', '90', '51');
INSERT INTO `produce_job` VALUES ('137', '5', '2018-11-01 03:00:00', '2018-11-01 16:50:00', '13.83', '90', '51');
INSERT INTO `produce_job` VALUES ('138', '10', '2018-11-01 03:00:00', '2018-11-01 16:50:00', '13.83', '45', '51');
INSERT INTO `produce_job` VALUES ('139', '2', '2018-12-01 03:00:00', '2018-12-01 20:25:00', '17.42', '84', '52');
INSERT INTO `produce_job` VALUES ('140', '5', '2018-12-01 03:00:00', '2018-12-01 20:25:00', '17.42', '84', '52');
INSERT INTO `produce_job` VALUES ('141', '10', '2018-12-01 03:00:00', '2018-12-01 20:25:00', '17.42', '42', '52');
INSERT INTO `produce_job` VALUES ('142', '2', '2019-01-01 03:00:00', '2019-01-01 18:20:00', '15.33', '64', '53');
INSERT INTO `produce_job` VALUES ('143', '5', '2019-01-01 03:00:00', '2019-01-01 18:20:00', '15.33', '64', '53');
INSERT INTO `produce_job` VALUES ('144', '10', '2019-01-01 03:00:00', '2019-01-01 18:20:00', '15.33', '32', '53');
INSERT INTO `produce_job` VALUES ('145', '2', '2019-02-01 03:00:00', '2019-02-01 14:10:00', '11.17', '76.8', '54');
INSERT INTO `produce_job` VALUES ('146', '5', '2019-02-01 03:00:00', '2019-02-01 14:10:00', '11.17', '76.8', '54');
INSERT INTO `produce_job` VALUES ('147', '10', '2019-02-01 03:00:00', '2019-02-01 14:10:00', '11.17', '38.4', '54');
INSERT INTO `produce_job` VALUES ('148', '2', '2019-03-01 03:00:00', '2019-03-01 15:10:00', '12.17', '72.4', '55');
INSERT INTO `produce_job` VALUES ('149', '5', '2019-03-01 03:00:00', '2019-03-01 15:10:00', '12.17', '72.4', '55');
INSERT INTO `produce_job` VALUES ('150', '10', '2019-03-01 03:00:00', '2019-03-01 15:10:00', '12.17', '36.2', '55');
INSERT INTO `produce_job` VALUES ('151', '2', '2019-04-01 03:00:00', '2019-04-01 14:10:00', '11.17', '77.2', '56');
INSERT INTO `produce_job` VALUES ('152', '5', '2019-04-01 03:00:00', '2019-04-01 14:10:00', '11.17', '77.2', '56');
INSERT INTO `produce_job` VALUES ('153', '10', '2019-04-01 03:00:00', '2019-04-01 14:10:00', '11.17', '38.6', '56');
INSERT INTO `produce_job` VALUES ('154', '3', '2018-01-01 01:00:00', '2018-01-01 09:25:00', '8.42', '50', '61');
INSERT INTO `produce_job` VALUES ('155', '6', '2018-01-01 01:00:00', '2018-01-01 09:25:00', '8.42', '50', '61');
INSERT INTO `produce_job` VALUES ('156', '12', '2018-01-01 01:00:00', '2018-01-01 09:25:00', '8.42', '25', '61');
INSERT INTO `produce_job` VALUES ('157', '3', '2018-02-01 01:00:00', '2018-02-01 09:25:00', '8.42', '54.4', '62');
INSERT INTO `produce_job` VALUES ('158', '6', '2018-02-01 01:00:00', '2018-02-01 09:25:00', '8.42', '54.4', '62');
INSERT INTO `produce_job` VALUES ('159', '12', '2018-02-01 01:00:00', '2018-02-01 09:25:00', '8.42', '27.2', '62');
INSERT INTO `produce_job` VALUES ('160', '3', '2018-03-01 01:00:00', '2018-03-01 12:34:00', '11.57', '56', '63');
INSERT INTO `produce_job` VALUES ('161', '6', '2018-03-01 01:00:00', '2018-03-01 12:34:00', '11.57', '56', '63');
INSERT INTO `produce_job` VALUES ('162', '12', '2018-03-01 01:00:00', '2018-03-01 12:34:00', '11.57', '28', '63');
INSERT INTO `produce_job` VALUES ('163', '3', '2018-04-01 01:00:00', '2018-04-01 08:46:00', '7.77', '48', '64');
INSERT INTO `produce_job` VALUES ('164', '6', '2018-04-01 01:00:00', '2018-04-01 08:46:00', '7.77', '48', '64');
INSERT INTO `produce_job` VALUES ('165', '12', '2018-04-01 01:00:00', '2018-04-01 08:46:00', '7.77', '24', '64');
INSERT INTO `produce_job` VALUES ('166', '3', '2018-05-01 01:00:00', '2018-05-01 14:35:00', '13.58', '49.6', '65');
INSERT INTO `produce_job` VALUES ('167', '6', '2018-05-01 01:00:00', '2018-05-01 14:35:00', '13.58', '49.6', '65');
INSERT INTO `produce_job` VALUES ('168', '12', '2018-05-01 01:00:00', '2018-05-01 14:35:00', '13.58', '24.8', '65');
INSERT INTO `produce_job` VALUES ('169', '3', '2018-06-01 01:00:00', '2018-06-01 13:10:00', '12.17', '46.4', '66');
INSERT INTO `produce_job` VALUES ('170', '6', '2018-06-01 01:00:00', '2018-06-01 13:10:00', '12.17', '46.4', '66');
INSERT INTO `produce_job` VALUES ('171', '12', '2018-06-01 01:00:00', '2018-06-01 13:10:00', '12.17', '23.2', '66');
INSERT INTO `produce_job` VALUES ('172', '3', '2018-07-01 01:00:00', '2018-07-01 16:14:00', '15.23', '52', '67');
INSERT INTO `produce_job` VALUES ('173', '6', '2018-07-01 01:00:00', '2018-07-01 16:14:00', '15.23', '52', '67');
INSERT INTO `produce_job` VALUES ('174', '12', '2018-07-01 01:00:00', '2018-07-01 16:14:00', '15.23', '26', '67');
INSERT INTO `produce_job` VALUES ('175', '3', '2018-08-01 01:00:00', '2018-08-01 19:25:00', '18.42', '72', '68');
INSERT INTO `produce_job` VALUES ('176', '6', '2018-08-01 01:00:00', '2018-08-01 19:25:00', '18.42', '72', '68');
INSERT INTO `produce_job` VALUES ('177', '12', '2018-08-01 01:00:00', '2018-08-01 19:25:00', '18.42', '36', '68');
INSERT INTO `produce_job` VALUES ('178', '3', '2018-09-01 01:00:00', '2018-09-01 11:15:00', '10.25', '64', '69');
INSERT INTO `produce_job` VALUES ('179', '6', '2018-09-01 01:00:00', '2018-09-01 11:15:00', '10.25', '64', '69');
INSERT INTO `produce_job` VALUES ('180', '12', '2018-09-01 01:00:00', '2018-09-01 11:15:00', '10.25', '32', '69');
INSERT INTO `produce_job` VALUES ('181', '3', '2018-10-01 01:00:00', '2018-10-01 13:14:00', '12.23', '70.4', '70');
INSERT INTO `produce_job` VALUES ('182', '6', '2018-10-01 01:00:00', '2018-10-01 13:14:00', '12.23', '70.4', '70');
INSERT INTO `produce_job` VALUES ('183', '12', '2018-10-01 01:00:00', '2018-10-01 13:14:00', '12.23', '35.2', '70');
INSERT INTO `produce_job` VALUES ('184', '3', '2018-11-01 01:00:00', '2018-11-01 16:50:00', '15.83', '50', '71');
INSERT INTO `produce_job` VALUES ('185', '6', '2018-11-01 01:00:00', '2018-11-01 16:50:00', '15.83', '50', '71');
INSERT INTO `produce_job` VALUES ('186', '12', '2018-11-01 01:00:00', '2018-11-01 16:50:00', '15.83', '25', '71');
INSERT INTO `produce_job` VALUES ('187', '3', '2018-12-01 01:00:00', '2018-12-01 20:25:00', '19.42', '44', '72');
INSERT INTO `produce_job` VALUES ('188', '6', '2018-12-01 01:00:00', '2018-12-01 20:25:00', '19.42', '44', '72');
INSERT INTO `produce_job` VALUES ('189', '12', '2018-12-01 01:00:00', '2018-12-01 20:25:00', '19.42', '22', '72');
INSERT INTO `produce_job` VALUES ('190', '3', '2019-01-01 01:00:00', '2019-01-01 18:20:00', '17.33', '54.4', '73');
INSERT INTO `produce_job` VALUES ('191', '6', '2019-01-01 01:00:00', '2019-01-01 18:20:00', '17.33', '54.4', '73');
INSERT INTO `produce_job` VALUES ('192', '12', '2019-01-01 01:00:00', '2019-01-01 18:20:00', '17.33', '27.2', '73');
INSERT INTO `produce_job` VALUES ('193', '3', '2019-02-01 01:00:00', '2019-02-01 14:10:00', '13.17', '48.8', '74');
INSERT INTO `produce_job` VALUES ('194', '6', '2019-02-01 01:00:00', '2019-02-01 14:10:00', '13.17', '48.8', '74');
INSERT INTO `produce_job` VALUES ('195', '12', '2019-02-01 01:00:00', '2019-02-01 14:10:00', '13.17', '24.4', '74');
INSERT INTO `produce_job` VALUES ('196', '3', '2019-03-01 01:00:00', '2019-03-01 15:10:00', '14.17', '52.4', '75');
INSERT INTO `produce_job` VALUES ('197', '6', '2019-03-01 01:00:00', '2019-03-01 15:10:00', '14.17', '52.4', '75');
INSERT INTO `produce_job` VALUES ('198', '12', '2019-03-01 01:00:00', '2019-03-01 15:10:00', '14.17', '26.2', '75');
INSERT INTO `produce_job` VALUES ('199', '3', '2019-04-01 01:00:00', '2019-04-01 14:10:00', '13.17', '53.2', '76');
INSERT INTO `produce_job` VALUES ('200', '6', '2019-04-01 01:00:00', '2019-04-01 14:10:00', '13.17', '53.2', '76');
INSERT INTO `produce_job` VALUES ('201', '12', '2019-04-01 01:00:00', '2019-04-01 14:10:00', '13.17', '26.6', '76');
INSERT INTO `produce_job` VALUES ('202', '1', '2018-01-01 02:00:00', '2018-01-01 09:25:00', '7.42', '62', '81');
INSERT INTO `produce_job` VALUES ('203', '6', '2018-01-01 02:00:00', '2018-01-01 09:25:00', '7.42', '62', '81');
INSERT INTO `produce_job` VALUES ('204', '11', '2018-01-01 02:00:00', '2018-01-01 09:25:00', '7.42', '31', '81');
INSERT INTO `produce_job` VALUES ('205', '1', '2018-02-01 02:00:00', '2018-02-01 09:25:00', '7.42', '70.4', '82');
INSERT INTO `produce_job` VALUES ('206', '6', '2018-02-01 02:00:00', '2018-02-01 09:25:00', '7.42', '70.4', '82');
INSERT INTO `produce_job` VALUES ('207', '11', '2018-02-01 02:00:00', '2018-02-01 09:25:00', '7.42', '35.2', '82');
INSERT INTO `produce_job` VALUES ('208', '1', '2018-03-01 02:00:00', '2018-03-01 12:34:00', '10.57', '56', '83');
INSERT INTO `produce_job` VALUES ('209', '6', '2018-03-01 02:00:00', '2018-03-01 12:34:00', '10.57', '56', '83');
INSERT INTO `produce_job` VALUES ('210', '11', '2018-03-01 02:00:00', '2018-03-01 12:34:00', '10.57', '28', '83');
INSERT INTO `produce_job` VALUES ('211', '1', '2018-04-01 02:00:00', '2018-04-01 08:46:00', '6.77', '64', '84');
INSERT INTO `produce_job` VALUES ('212', '6', '2018-04-01 02:00:00', '2018-04-01 08:46:00', '6.77', '64', '84');
INSERT INTO `produce_job` VALUES ('213', '11', '2018-04-01 02:00:00', '2018-04-01 08:46:00', '6.77', '32', '84');
INSERT INTO `produce_job` VALUES ('214', '1', '2018-05-01 02:00:00', '2018-05-01 14:35:00', '12.58', '49.6', '85');
INSERT INTO `produce_job` VALUES ('215', '6', '2018-05-01 02:00:00', '2018-05-01 14:35:00', '12.58', '49.6', '85');
INSERT INTO `produce_job` VALUES ('216', '11', '2018-05-01 02:00:00', '2018-05-01 14:35:00', '12.58', '24.8', '85');
INSERT INTO `produce_job` VALUES ('217', '1', '2018-06-01 02:00:00', '2018-06-01 13:10:00', '11.17', '66.4', '86');
INSERT INTO `produce_job` VALUES ('218', '6', '2018-06-01 02:00:00', '2018-06-01 13:10:00', '11.17', '66.4', '86');
INSERT INTO `produce_job` VALUES ('219', '11', '2018-06-01 02:00:00', '2018-06-01 13:10:00', '11.17', '33.2', '86');
INSERT INTO `produce_job` VALUES ('220', '1', '2018-07-01 02:00:00', '2018-07-01 16:14:00', '14.23', '52', '87');
INSERT INTO `produce_job` VALUES ('221', '6', '2018-07-01 02:00:00', '2018-07-01 16:14:00', '14.23', '52', '87');
INSERT INTO `produce_job` VALUES ('222', '11', '2018-07-01 02:00:00', '2018-07-01 16:14:00', '14.23', '26', '87');
INSERT INTO `produce_job` VALUES ('223', '1', '2018-08-01 02:00:00', '2018-08-01 19:25:00', '17.42', '72', '88');
INSERT INTO `produce_job` VALUES ('224', '6', '2018-08-01 02:00:00', '2018-08-01 19:25:00', '17.42', '72', '88');
INSERT INTO `produce_job` VALUES ('225', '11', '2018-08-01 02:00:00', '2018-08-01 19:25:00', '17.42', '36', '88');
INSERT INTO `produce_job` VALUES ('226', '1', '2018-09-01 02:00:00', '2018-09-01 11:15:00', '9.25', '64', '89');
INSERT INTO `produce_job` VALUES ('227', '6', '2018-09-01 02:00:00', '2018-09-01 11:15:00', '9.25', '64', '89');
INSERT INTO `produce_job` VALUES ('228', '11', '2018-09-01 02:00:00', '2018-09-01 11:15:00', '9.25', '32', '89');
INSERT INTO `produce_job` VALUES ('229', '1', '2018-10-01 02:00:00', '2018-10-01 13:14:00', '11.23', '70.4', '90');
INSERT INTO `produce_job` VALUES ('230', '6', '2018-10-01 02:00:00', '2018-10-01 13:14:00', '11.23', '70.4', '90');
INSERT INTO `produce_job` VALUES ('231', '11', '2018-10-01 02:00:00', '2018-10-01 13:14:00', '11.23', '35.2', '90');
INSERT INTO `produce_job` VALUES ('232', '1', '2018-11-01 02:00:00', '2018-11-01 16:50:00', '14.83', '62', '91');
INSERT INTO `produce_job` VALUES ('233', '6', '2018-11-01 02:00:00', '2018-11-01 16:50:00', '14.83', '62', '91');
INSERT INTO `produce_job` VALUES ('234', '11', '2018-11-01 02:00:00', '2018-11-01 16:50:00', '14.83', '31', '91');
INSERT INTO `produce_job` VALUES ('235', '1', '2018-12-01 02:00:00', '2018-12-01 20:25:00', '18.42', '72', '92');
INSERT INTO `produce_job` VALUES ('236', '6', '2018-12-01 02:00:00', '2018-12-01 20:25:00', '18.42', '72', '92');
INSERT INTO `produce_job` VALUES ('237', '11', '2018-12-01 02:00:00', '2018-12-01 20:25:00', '18.42', '36', '92');
INSERT INTO `produce_job` VALUES ('238', '1', '2019-01-01 02:00:00', '2019-01-01 18:20:00', '16.33', '54.4', '93');
INSERT INTO `produce_job` VALUES ('239', '6', '2019-01-01 02:00:00', '2019-01-01 18:20:00', '16.33', '54.4', '93');
INSERT INTO `produce_job` VALUES ('240', '11', '2019-01-01 02:00:00', '2019-01-01 18:20:00', '16.33', '27.2', '93');
INSERT INTO `produce_job` VALUES ('241', '1', '2019-02-01 02:00:00', '2019-02-01 14:10:00', '12.17', '60.8', '94');
INSERT INTO `produce_job` VALUES ('242', '6', '2019-02-01 02:00:00', '2019-02-01 14:10:00', '12.17', '60.8', '94');
INSERT INTO `produce_job` VALUES ('243', '11', '2019-02-01 02:00:00', '2019-02-01 14:10:00', '12.17', '30.4', '94');
INSERT INTO `produce_job` VALUES ('244', '1', '2019-03-01 02:00:00', '2019-03-01 15:10:00', '13.17', '52.4', '95');
INSERT INTO `produce_job` VALUES ('245', '6', '2019-03-01 02:00:00', '2019-03-01 15:10:00', '13.17', '52.4', '95');
INSERT INTO `produce_job` VALUES ('246', '11', '2019-03-01 02:00:00', '2019-03-01 15:10:00', '13.17', '26.2', '95');
INSERT INTO `produce_job` VALUES ('247', '1', '2019-04-01 02:00:00', '2019-04-01 14:10:00', '12.17', '57.2', '96');
INSERT INTO `produce_job` VALUES ('248', '6', '2019-04-01 02:00:00', '2019-04-01 14:10:00', '12.17', '57.2', '96');
INSERT INTO `produce_job` VALUES ('249', '11', '2019-04-01 02:00:00', '2019-04-01 14:10:00', '12.17', '28.6', '96');
INSERT INTO `produce_job` VALUES ('250', '2', '2018-01-01 04:00:00', '2018-01-01 09:25:00', '5.42', '62', '101');
INSERT INTO `produce_job` VALUES ('251', '6', '2018-01-01 04:00:00', '2018-01-01 09:25:00', '5.42', '62', '101');
INSERT INTO `produce_job` VALUES ('252', '12', '2018-01-01 04:00:00', '2018-01-01 09:25:00', '5.42', '31', '101');
INSERT INTO `produce_job` VALUES ('253', '2', '2018-02-01 04:00:00', '2018-02-01 09:25:00', '5.42', '70.4', '102');
INSERT INTO `produce_job` VALUES ('254', '6', '2018-02-01 04:00:00', '2018-02-01 09:25:00', '5.42', '70.4', '102');
INSERT INTO `produce_job` VALUES ('255', '12', '2018-02-01 04:00:00', '2018-02-01 09:25:00', '5.42', '35.2', '102');
INSERT INTO `produce_job` VALUES ('256', '2', '2018-03-01 04:00:00', '2018-03-01 12:34:00', '8.57', '72', '103');
INSERT INTO `produce_job` VALUES ('257', '6', '2018-03-01 04:00:00', '2018-03-01 12:34:00', '8.57', '72', '103');
INSERT INTO `produce_job` VALUES ('258', '12', '2018-03-01 04:00:00', '2018-03-01 12:34:00', '8.57', '36', '103');
INSERT INTO `produce_job` VALUES ('259', '2', '2018-04-01 04:00:00', '2018-04-01 08:46:00', '4.77', '64', '104');
INSERT INTO `produce_job` VALUES ('260', '6', '2018-04-01 04:00:00', '2018-04-01 08:46:00', '4.77', '64', '104');
INSERT INTO `produce_job` VALUES ('261', '12', '2018-04-01 04:00:00', '2018-04-01 08:46:00', '4.77', '32', '104');
INSERT INTO `produce_job` VALUES ('262', '2', '2018-05-01 04:00:00', '2018-05-01 14:35:00', '10.58', '77.6', '105');
INSERT INTO `produce_job` VALUES ('263', '6', '2018-05-01 04:00:00', '2018-05-01 14:35:00', '10.58', '77.6', '105');
INSERT INTO `produce_job` VALUES ('264', '12', '2018-05-01 04:00:00', '2018-05-01 14:35:00', '10.58', '38.8', '105');
INSERT INTO `produce_job` VALUES ('265', '2', '2018-06-01 04:00:00', '2018-06-01 13:10:00', '9.17', '66.4', '106');
INSERT INTO `produce_job` VALUES ('266', '6', '2018-06-01 04:00:00', '2018-06-01 13:10:00', '9.17', '66.4', '106');
INSERT INTO `produce_job` VALUES ('267', '12', '2018-06-01 04:00:00', '2018-06-01 13:10:00', '9.17', '33.2', '106');
INSERT INTO `produce_job` VALUES ('268', '2', '2018-07-01 04:00:00', '2018-07-01 16:14:00', '12.23', '76', '107');
INSERT INTO `produce_job` VALUES ('269', '6', '2018-07-01 04:00:00', '2018-07-01 16:14:00', '12.23', '76', '107');
INSERT INTO `produce_job` VALUES ('270', '12', '2018-07-01 04:00:00', '2018-07-01 16:14:00', '12.23', '38', '107');
INSERT INTO `produce_job` VALUES ('271', '2', '2018-08-01 04:00:00', '2018-08-01 19:25:00', '15.42', '72', '108');
INSERT INTO `produce_job` VALUES ('272', '6', '2018-08-01 04:00:00', '2018-08-01 19:25:00', '15.42', '72', '108');
INSERT INTO `produce_job` VALUES ('273', '12', '2018-08-01 04:00:00', '2018-08-01 19:25:00', '15.42', '36', '108');
INSERT INTO `produce_job` VALUES ('274', '2', '2018-09-01 04:00:00', '2018-09-01 11:15:00', '7.25', '64', '109');
INSERT INTO `produce_job` VALUES ('275', '6', '2018-09-01 04:00:00', '2018-09-01 11:15:00', '7.25', '64', '109');
INSERT INTO `produce_job` VALUES ('276', '12', '2018-09-01 04:00:00', '2018-09-01 11:15:00', '7.25', '32', '109');
INSERT INTO `produce_job` VALUES ('277', '2', '2018-10-01 04:00:00', '2018-10-01 13:14:00', '9.23', '70.4', '110');
INSERT INTO `produce_job` VALUES ('278', '6', '2018-10-01 04:00:00', '2018-10-01 13:14:00', '9.23', '70.4', '110');
INSERT INTO `produce_job` VALUES ('279', '12', '2018-10-01 04:00:00', '2018-10-01 13:14:00', '9.23', '35.2', '110');
INSERT INTO `produce_job` VALUES ('280', '2', '2018-11-01 04:00:00', '2018-11-01 16:50:00', '12.83', '62', '111');
INSERT INTO `produce_job` VALUES ('281', '6', '2018-11-01 04:00:00', '2018-11-01 16:50:00', '12.83', '62', '111');
INSERT INTO `produce_job` VALUES ('282', '12', '2018-11-01 04:00:00', '2018-11-01 16:50:00', '12.83', '31', '111');
INSERT INTO `produce_job` VALUES ('283', '2', '2018-12-01 04:00:00', '2018-12-01 20:25:00', '16.42', '72', '112');
INSERT INTO `produce_job` VALUES ('284', '6', '2018-12-01 04:00:00', '2018-12-01 20:25:00', '16.42', '72', '112');
INSERT INTO `produce_job` VALUES ('285', '12', '2018-12-01 04:00:00', '2018-12-01 20:25:00', '16.42', '36', '112');
INSERT INTO `produce_job` VALUES ('286', '2', '2019-01-01 04:00:00', '2019-01-01 18:20:00', '14.33', '78.4', '113');
INSERT INTO `produce_job` VALUES ('287', '6', '2019-01-01 04:00:00', '2019-01-01 18:20:00', '14.33', '78.4', '113');
INSERT INTO `produce_job` VALUES ('288', '12', '2019-01-01 04:00:00', '2019-01-01 18:20:00', '14.33', '39.2', '113');
INSERT INTO `produce_job` VALUES ('289', '2', '2019-02-01 04:00:00', '2019-02-01 14:10:00', '10.17', '60.8', '114');
INSERT INTO `produce_job` VALUES ('290', '6', '2019-02-01 04:00:00', '2019-02-01 14:10:00', '10.17', '60.8', '114');
INSERT INTO `produce_job` VALUES ('291', '12', '2019-02-01 04:00:00', '2019-02-01 14:10:00', '10.17', '30.4', '114');
INSERT INTO `produce_job` VALUES ('292', '2', '2019-03-01 04:00:00', '2019-03-01 15:10:00', '11.17', '80.4', '115');
INSERT INTO `produce_job` VALUES ('293', '6', '2019-03-01 04:00:00', '2019-03-01 15:10:00', '11.17', '80.4', '115');
INSERT INTO `produce_job` VALUES ('294', '12', '2019-03-01 04:00:00', '2019-03-01 15:10:00', '11.17', '40.2', '115');
INSERT INTO `produce_job` VALUES ('295', '2', '2019-04-01 04:00:00', '2019-04-01 14:10:00', '10.17', '85.2', '116');
INSERT INTO `produce_job` VALUES ('296', '6', '2019-04-01 04:00:00', '2019-04-01 14:10:00', '10.17', '85.2', '116');
INSERT INTO `produce_job` VALUES ('297', '12', '2019-04-01 04:00:00', '2019-04-01 14:10:00', '10.17', '42.6', '116');
INSERT INTO `produce_job` VALUES ('736', '13', '2018-01-02 04:00:00', '2018-01-02 11:53:00', '7.88', '109.2', '499');
INSERT INTO `produce_job` VALUES ('737', '15', '2018-01-02 04:00:00', '2018-01-02 11:53:00', '7.88', '109.2', '499');
INSERT INTO `produce_job` VALUES ('738', '17', '2018-01-02 04:00:00', '2018-01-02 11:53:00', '7.88', '54.6', '499');
INSERT INTO `produce_job` VALUES ('739', '13', '2018-02-02 04:00:00', '2018-02-02 08:50:00', '4.83', '88.4', '500');
INSERT INTO `produce_job` VALUES ('740', '15', '2018-02-02 04:00:00', '2018-02-02 08:50:00', '4.83', '88.4', '500');
INSERT INTO `produce_job` VALUES ('741', '17', '2018-02-02 04:00:00', '2018-02-02 08:50:00', '4.83', '44.2', '500');
INSERT INTO `produce_job` VALUES ('742', '13', '2018-03-02 03:00:00', '2018-03-02 08:34:00', '5.57', '107.2', '501');
INSERT INTO `produce_job` VALUES ('743', '15', '2018-03-02 03:00:00', '2018-03-02 08:34:00', '5.57', '107.2', '501');
INSERT INTO `produce_job` VALUES ('744', '17', '2018-03-02 03:00:00', '2018-03-02 08:34:00', '5.57', '53.6', '501');
INSERT INTO `produce_job` VALUES ('745', '13', '2018-04-02 02:00:00', '2018-04-02 08:18:00', '6.3', '118.4', '502');
INSERT INTO `produce_job` VALUES ('746', '15', '2018-04-02 02:00:00', '2018-04-02 08:18:00', '6.3', '118.4', '502');
INSERT INTO `produce_job` VALUES ('747', '17', '2018-04-02 02:00:00', '2018-04-02 08:18:00', '6.3', '59.2', '502');
INSERT INTO `produce_job` VALUES ('748', '13', '2018-05-02 03:00:00', '2018-05-02 08:07:00', '5.12', '98.4', '503');
INSERT INTO `produce_job` VALUES ('749', '15', '2018-05-02 03:00:00', '2018-05-02 08:07:00', '5.12', '98.4', '503');
INSERT INTO `produce_job` VALUES ('750', '17', '2018-05-02 03:00:00', '2018-05-02 08:07:00', '5.12', '49.2', '503');
INSERT INTO `produce_job` VALUES ('751', '13', '2018-06-02 04:00:00', '2018-06-02 10:28:00', '6.47', '108', '504');
INSERT INTO `produce_job` VALUES ('752', '15', '2018-06-02 04:00:00', '2018-06-02 10:28:00', '6.47', '108', '504');
INSERT INTO `produce_job` VALUES ('753', '17', '2018-06-02 04:00:00', '2018-06-02 10:28:00', '6.47', '54', '504');
INSERT INTO `produce_job` VALUES ('754', '13', '2018-07-02 02:00:00', '2018-07-02 12:24:00', '10.4', '96', '505');
INSERT INTO `produce_job` VALUES ('755', '15', '2018-07-02 02:00:00', '2018-07-02 12:24:00', '10.4', '96', '505');
INSERT INTO `produce_job` VALUES ('756', '17', '2018-07-02 02:00:00', '2018-07-02 12:24:00', '10.4', '48', '505');
INSERT INTO `produce_job` VALUES ('757', '13', '2018-08-02 01:00:00', '2018-08-02 08:03:00', '7.05', '89.2', '506');
INSERT INTO `produce_job` VALUES ('758', '15', '2018-08-02 01:00:00', '2018-08-02 08:03:00', '7.05', '89.2', '506');
INSERT INTO `produce_job` VALUES ('759', '17', '2018-08-02 01:00:00', '2018-08-02 08:03:00', '7.05', '44.6', '506');
INSERT INTO `produce_job` VALUES ('760', '13', '2018-09-02 04:00:00', '2018-09-02 08:49:00', '4.82', '103.6', '507');
INSERT INTO `produce_job` VALUES ('761', '15', '2018-09-02 04:00:00', '2018-09-02 08:49:00', '4.82', '103.6', '507');
INSERT INTO `produce_job` VALUES ('762', '17', '2018-09-02 04:00:00', '2018-09-02 08:49:00', '4.82', '51.8', '507');
INSERT INTO `produce_job` VALUES ('763', '13', '2018-10-02 01:00:00', '2018-10-02 11:55:00', '10.92', '84', '508');
INSERT INTO `produce_job` VALUES ('764', '15', '2018-10-02 01:00:00', '2018-10-02 11:55:00', '10.92', '84', '508');
INSERT INTO `produce_job` VALUES ('765', '17', '2018-10-02 01:00:00', '2018-10-02 11:55:00', '10.92', '42', '508');
INSERT INTO `produce_job` VALUES ('766', '13', '2018-11-02 04:00:00', '2018-11-02 10:27:00', '6.45', '108.4', '509');
INSERT INTO `produce_job` VALUES ('767', '15', '2018-11-02 04:00:00', '2018-11-02 10:27:00', '6.45', '108.4', '509');
INSERT INTO `produce_job` VALUES ('768', '17', '2018-11-02 04:00:00', '2018-11-02 10:27:00', '6.45', '54.2', '509');
INSERT INTO `produce_job` VALUES ('769', '13', '2018-12-02 01:00:00', '2018-12-02 10:22:00', '9.37', '108.4', '510');
INSERT INTO `produce_job` VALUES ('770', '15', '2018-12-02 01:00:00', '2018-12-02 10:22:00', '9.37', '108.4', '510');
INSERT INTO `produce_job` VALUES ('771', '17', '2018-12-02 01:00:00', '2018-12-02 10:22:00', '9.37', '54.2', '510');
INSERT INTO `produce_job` VALUES ('772', '13', '2019-01-02 00:00:00', '2019-01-02 10:41:00', '10.68', '103.6', '511');
INSERT INTO `produce_job` VALUES ('773', '15', '2019-01-02 00:00:00', '2019-01-02 10:41:00', '10.68', '103.6', '511');
INSERT INTO `produce_job` VALUES ('774', '17', '2019-01-02 00:00:00', '2019-01-02 10:41:00', '10.68', '51.8', '511');
INSERT INTO `produce_job` VALUES ('775', '13', '2019-02-02 00:00:00', '2019-02-02 09:10:00', '9.17', '84.8', '512');
INSERT INTO `produce_job` VALUES ('776', '15', '2019-02-02 00:00:00', '2019-02-02 09:10:00', '9.17', '84.8', '512');
INSERT INTO `produce_job` VALUES ('777', '17', '2019-02-02 00:00:00', '2019-02-02 09:10:00', '9.17', '42.4', '512');
INSERT INTO `produce_job` VALUES ('778', '13', '2019-03-02 02:00:00', '2019-03-02 10:29:00', '8.48', '112.8', '513');
INSERT INTO `produce_job` VALUES ('779', '15', '2019-03-02 02:00:00', '2019-03-02 10:29:00', '8.48', '112.8', '513');
INSERT INTO `produce_job` VALUES ('780', '17', '2019-03-02 02:00:00', '2019-03-02 10:29:00', '8.48', '56.4', '513');
INSERT INTO `produce_job` VALUES ('781', '13', '2019-04-02 02:00:00', '2019-04-02 10:27:00', '8.45', '94', '514');
INSERT INTO `produce_job` VALUES ('782', '15', '2019-04-02 02:00:00', '2019-04-02 10:27:00', '8.45', '94', '514');
INSERT INTO `produce_job` VALUES ('783', '17', '2019-04-02 02:00:00', '2019-04-02 10:27:00', '8.45', '47', '514');
INSERT INTO `produce_job` VALUES ('784', '14', '2018-01-02 04:00:00', '2018-01-02 12:54:00', '8.9', '83.2', '515');
INSERT INTO `produce_job` VALUES ('785', '16', '2018-01-02 04:00:00', '2018-01-02 12:54:00', '8.9', '83.2', '515');
INSERT INTO `produce_job` VALUES ('786', '18', '2018-01-02 04:00:00', '2018-01-02 12:54:00', '8.9', '41.6', '515');
INSERT INTO `produce_job` VALUES ('787', '14', '2018-02-02 00:00:00', '2018-02-02 10:19:00', '10.32', '94.8', '516');
INSERT INTO `produce_job` VALUES ('788', '16', '2018-02-02 00:00:00', '2018-02-02 10:19:00', '10.32', '94.8', '516');
INSERT INTO `produce_job` VALUES ('789', '18', '2018-02-02 00:00:00', '2018-02-02 10:19:00', '10.32', '47.4', '516');
INSERT INTO `produce_job` VALUES ('790', '14', '2018-03-02 00:00:00', '2018-03-02 08:25:00', '8.42', '103.2', '517');
INSERT INTO `produce_job` VALUES ('791', '16', '2018-03-02 00:00:00', '2018-03-02 08:25:00', '8.42', '103.2', '517');
INSERT INTO `produce_job` VALUES ('792', '18', '2018-03-02 00:00:00', '2018-03-02 08:25:00', '8.42', '51.6', '517');
INSERT INTO `produce_job` VALUES ('793', '14', '2018-04-02 00:00:00', '2018-04-02 10:39:00', '10.65', '106.4', '518');
INSERT INTO `produce_job` VALUES ('794', '16', '2018-04-02 00:00:00', '2018-04-02 10:39:00', '10.65', '106.4', '518');
INSERT INTO `produce_job` VALUES ('795', '18', '2018-04-02 00:00:00', '2018-04-02 10:39:00', '10.65', '53.2', '518');
INSERT INTO `produce_job` VALUES ('796', '14', '2018-05-02 03:00:00', '2018-05-02 10:06:00', '7.1', '118.4', '519');
INSERT INTO `produce_job` VALUES ('797', '16', '2018-05-02 03:00:00', '2018-05-02 10:06:00', '7.1', '118.4', '519');
INSERT INTO `produce_job` VALUES ('798', '18', '2018-05-02 03:00:00', '2018-05-02 10:06:00', '7.1', '59.2', '519');
INSERT INTO `produce_job` VALUES ('799', '14', '2018-06-02 01:00:00', '2018-06-02 08:37:00', '7.62', '106.4', '520');
INSERT INTO `produce_job` VALUES ('800', '16', '2018-06-02 01:00:00', '2018-06-02 08:37:00', '7.62', '106.4', '520');
INSERT INTO `produce_job` VALUES ('801', '18', '2018-06-02 01:00:00', '2018-06-02 08:37:00', '7.62', '53.2', '520');
INSERT INTO `produce_job` VALUES ('802', '14', '2018-07-02 03:00:00', '2018-07-02 11:38:00', '8.63', '85.6', '521');
INSERT INTO `produce_job` VALUES ('803', '16', '2018-07-02 03:00:00', '2018-07-02 11:38:00', '8.63', '85.6', '521');
INSERT INTO `produce_job` VALUES ('804', '18', '2018-07-02 03:00:00', '2018-07-02 11:38:00', '8.63', '42.8', '521');
INSERT INTO `produce_job` VALUES ('805', '14', '2018-08-02 03:00:00', '2018-08-02 11:30:00', '8.5', '104.4', '522');
INSERT INTO `produce_job` VALUES ('806', '16', '2018-08-02 03:00:00', '2018-08-02 11:30:00', '8.5', '104.4', '522');
INSERT INTO `produce_job` VALUES ('807', '18', '2018-08-02 03:00:00', '2018-08-02 11:30:00', '8.5', '52.2', '522');
INSERT INTO `produce_job` VALUES ('808', '14', '2018-09-02 04:00:00', '2018-09-02 10:48:00', '6.8', '96.8', '523');
INSERT INTO `produce_job` VALUES ('809', '16', '2018-09-02 04:00:00', '2018-09-02 10:48:00', '6.8', '96.8', '523');
INSERT INTO `produce_job` VALUES ('810', '18', '2018-09-02 04:00:00', '2018-09-02 10:48:00', '6.8', '48.4', '523');
INSERT INTO `produce_job` VALUES ('811', '14', '2018-10-02 03:00:00', '2018-10-02 10:22:00', '7.37', '118.4', '524');
INSERT INTO `produce_job` VALUES ('812', '16', '2018-10-02 03:00:00', '2018-10-02 10:22:00', '7.37', '118.4', '524');
INSERT INTO `produce_job` VALUES ('813', '18', '2018-10-02 03:00:00', '2018-10-02 10:22:00', '7.37', '59.2', '524');
INSERT INTO `produce_job` VALUES ('814', '14', '2018-11-02 00:00:00', '2018-11-02 11:45:00', '11.75', '86.4', '525');
INSERT INTO `produce_job` VALUES ('815', '16', '2018-11-02 00:00:00', '2018-11-02 11:45:00', '11.75', '86.4', '525');
INSERT INTO `produce_job` VALUES ('816', '18', '2018-11-02 00:00:00', '2018-11-02 11:45:00', '11.75', '43.2', '525');
INSERT INTO `produce_job` VALUES ('817', '14', '2018-12-02 00:00:00', '2018-12-02 10:40:00', '10.67', '114', '526');
INSERT INTO `produce_job` VALUES ('818', '16', '2018-12-02 00:00:00', '2018-12-02 10:40:00', '10.67', '114', '526');
INSERT INTO `produce_job` VALUES ('819', '18', '2018-12-02 00:00:00', '2018-12-02 10:40:00', '10.67', '57', '526');
INSERT INTO `produce_job` VALUES ('820', '14', '2018-01-02 03:00:00', '2018-01-02 12:02:00', '9.03', '108', '527');
INSERT INTO `produce_job` VALUES ('821', '16', '2018-01-02 03:00:00', '2018-01-02 12:02:00', '9.03', '108', '527');
INSERT INTO `produce_job` VALUES ('822', '18', '2018-01-02 03:00:00', '2018-01-02 12:02:00', '9.03', '54', '527');
INSERT INTO `produce_job` VALUES ('823', '14', '2019-02-02 04:00:00', '2019-02-02 10:33:00', '6.55', '82.4', '528');
INSERT INTO `produce_job` VALUES ('824', '16', '2019-02-02 04:00:00', '2019-02-02 10:33:00', '6.55', '82.4', '528');
INSERT INTO `produce_job` VALUES ('825', '18', '2019-02-02 04:00:00', '2019-02-02 10:33:00', '6.55', '41.2', '528');
INSERT INTO `produce_job` VALUES ('826', '14', '2019-03-02 04:00:00', '2019-03-02 12:38:00', '8.63', '111.6', '529');
INSERT INTO `produce_job` VALUES ('827', '16', '2019-03-02 04:00:00', '2019-03-02 12:38:00', '8.63', '111.6', '529');
INSERT INTO `produce_job` VALUES ('828', '18', '2019-03-02 04:00:00', '2019-03-02 12:38:00', '8.63', '55.8', '529');
INSERT INTO `produce_job` VALUES ('829', '14', '2019-04-02 03:00:00', '2019-04-02 11:11:00', '8.18', '90', '530');
INSERT INTO `produce_job` VALUES ('830', '16', '2019-04-02 03:00:00', '2019-04-02 11:11:00', '8.18', '90', '530');
INSERT INTO `produce_job` VALUES ('831', '18', '2019-04-02 03:00:00', '2019-04-02 11:11:00', '8.18', '45', '530');
INSERT INTO `produce_job` VALUES ('832', '14', '2019-01-02 01:00:00', '2019-01-02 12:14:00', '11.23', '95.6', '531');
INSERT INTO `produce_job` VALUES ('833', '16', '2019-01-02 01:00:00', '2019-01-02 12:14:00', '11.23', '95.6', '531');
INSERT INTO `produce_job` VALUES ('834', '18', '2019-01-02 01:00:00', '2019-01-02 12:14:00', '11.23', '47.8', '531');
INSERT INTO `produce_job` VALUES ('835', '13', '2018-02-02 01:00:00', '2018-02-02 08:29:00', '7.48', '85.2', '532');
INSERT INTO `produce_job` VALUES ('836', '16', '2018-02-02 01:00:00', '2018-02-02 08:29:00', '7.48', '85.2', '532');
INSERT INTO `produce_job` VALUES ('837', '18', '2018-02-02 01:00:00', '2018-02-02 08:29:00', '7.48', '42.6', '532');
INSERT INTO `produce_job` VALUES ('838', '13', '2018-03-02 00:00:00', '2018-03-02 10:59:00', '10.98', '114', '533');
INSERT INTO `produce_job` VALUES ('839', '16', '2018-03-02 00:00:00', '2018-03-02 10:59:00', '10.98', '114', '533');
INSERT INTO `produce_job` VALUES ('840', '18', '2018-03-02 00:00:00', '2018-03-02 10:59:00', '10.98', '57', '533');
INSERT INTO `produce_job` VALUES ('841', '13', '2018-04-02 02:00:00', '2018-04-02 10:50:00', '8.83', '90.8', '534');
INSERT INTO `produce_job` VALUES ('842', '16', '2018-04-02 02:00:00', '2018-04-02 10:50:00', '8.83', '90.8', '534');
INSERT INTO `produce_job` VALUES ('843', '18', '2018-04-02 02:00:00', '2018-04-02 10:50:00', '8.83', '45.4', '534');
INSERT INTO `produce_job` VALUES ('844', '13', '2018-05-02 04:00:00', '2018-05-02 08:24:00', '4.4', '102', '535');
INSERT INTO `produce_job` VALUES ('845', '16', '2018-05-02 04:00:00', '2018-05-02 08:24:00', '4.4', '102', '535');
INSERT INTO `produce_job` VALUES ('846', '18', '2018-05-02 04:00:00', '2018-05-02 08:24:00', '4.4', '51', '535');
INSERT INTO `produce_job` VALUES ('847', '13', '2018-06-02 04:00:00', '2018-06-02 12:43:00', '8.72', '119.2', '536');
INSERT INTO `produce_job` VALUES ('848', '16', '2018-06-02 04:00:00', '2018-06-02 12:43:00', '8.72', '119.2', '536');
INSERT INTO `produce_job` VALUES ('849', '18', '2018-06-02 04:00:00', '2018-06-02 12:43:00', '8.72', '59.6', '536');
INSERT INTO `produce_job` VALUES ('850', '13', '2018-07-02 01:00:00', '2018-07-02 11:47:00', '10.78', '82', '537');
INSERT INTO `produce_job` VALUES ('851', '16', '2018-07-02 01:00:00', '2018-07-02 11:47:00', '10.78', '82', '537');
INSERT INTO `produce_job` VALUES ('852', '18', '2018-07-02 01:00:00', '2018-07-02 11:47:00', '10.78', '41', '537');
INSERT INTO `produce_job` VALUES ('853', '13', '2018-08-02 00:00:00', '2018-08-02 10:38:00', '10.63', '108.4', '538');
INSERT INTO `produce_job` VALUES ('854', '16', '2018-08-02 00:00:00', '2018-08-02 10:38:00', '10.63', '108.4', '538');
INSERT INTO `produce_job` VALUES ('855', '18', '2018-08-02 00:00:00', '2018-08-02 10:38:00', '10.63', '54.2', '538');
INSERT INTO `produce_job` VALUES ('856', '13', '2018-09-02 00:00:00', '2018-09-02 11:38:00', '11.63', '108.4', '539');
INSERT INTO `produce_job` VALUES ('857', '16', '2018-09-02 00:00:00', '2018-09-02 11:38:00', '11.63', '108.4', '539');
INSERT INTO `produce_job` VALUES ('858', '18', '2018-09-02 00:00:00', '2018-09-02 11:38:00', '11.63', '54.2', '539');
INSERT INTO `produce_job` VALUES ('859', '13', '2018-10-02 02:00:00', '2018-10-02 12:23:00', '10.38', '80.4', '540');
INSERT INTO `produce_job` VALUES ('860', '16', '2018-10-02 02:00:00', '2018-10-02 12:23:00', '10.38', '80.4', '540');
INSERT INTO `produce_job` VALUES ('861', '18', '2018-10-02 02:00:00', '2018-10-02 12:23:00', '10.38', '40.2', '540');
INSERT INTO `produce_job` VALUES ('862', '13', '2018-11-02 03:00:00', '2018-11-02 10:27:00', '7.45', '90', '541');
INSERT INTO `produce_job` VALUES ('863', '16', '2018-11-02 03:00:00', '2018-11-02 10:27:00', '7.45', '90', '541');
INSERT INTO `produce_job` VALUES ('864', '18', '2018-11-02 03:00:00', '2018-11-02 10:27:00', '7.45', '45', '541');
INSERT INTO `produce_job` VALUES ('865', '13', '2018-12-02 00:00:00', '2018-12-02 12:16:00', '12.27', '106', '542');
INSERT INTO `produce_job` VALUES ('866', '16', '2018-12-02 00:00:00', '2018-12-02 12:16:00', '12.27', '106', '542');
INSERT INTO `produce_job` VALUES ('867', '18', '2018-12-02 00:00:00', '2018-12-02 12:16:00', '12.27', '53', '542');
INSERT INTO `produce_job` VALUES ('868', '13', '2018-01-02 03:00:00', '2018-01-02 11:54:00', '8.9', '115.6', '543');
INSERT INTO `produce_job` VALUES ('869', '16', '2018-01-02 03:00:00', '2018-01-02 11:54:00', '8.9', '115.6', '543');
INSERT INTO `produce_job` VALUES ('870', '18', '2018-01-02 03:00:00', '2018-01-02 11:54:00', '8.9', '57.8', '543');
INSERT INTO `produce_job` VALUES ('871', '13', '2018-02-02 04:00:00', '2018-02-02 08:38:00', '4.63', '100', '544');
INSERT INTO `produce_job` VALUES ('872', '16', '2018-02-02 04:00:00', '2018-02-02 08:38:00', '4.63', '100', '544');
INSERT INTO `produce_job` VALUES ('873', '18', '2018-02-02 04:00:00', '2018-02-02 08:38:00', '4.63', '50', '544');
INSERT INTO `produce_job` VALUES ('874', '13', '2019-03-02 02:00:00', '2019-03-02 12:07:00', '10.12', '106', '545');
INSERT INTO `produce_job` VALUES ('875', '16', '2019-03-02 02:00:00', '2019-03-02 12:07:00', '10.12', '106', '545');
INSERT INTO `produce_job` VALUES ('876', '18', '2019-03-02 02:00:00', '2019-03-02 12:07:00', '10.12', '53', '545');
INSERT INTO `produce_job` VALUES ('877', '13', '2019-04-02 03:00:00', '2019-04-02 09:44:00', '6.73', '86', '546');
INSERT INTO `produce_job` VALUES ('878', '16', '2019-04-02 03:00:00', '2019-04-02 09:44:00', '6.73', '86', '546');
INSERT INTO `produce_job` VALUES ('879', '18', '2019-04-02 03:00:00', '2019-04-02 09:44:00', '6.73', '43', '546');
INSERT INTO `produce_job` VALUES ('880', '25', '2018-01-03 00:00:00', '2018-01-03 10:22:00', '10.37', '49.2', '580');
INSERT INTO `produce_job` VALUES ('881', '27', '2018-01-03 00:00:00', '2018-01-03 10:22:00', '10.37', '49.2', '580');
INSERT INTO `produce_job` VALUES ('882', '29', '2018-01-03 00:00:00', '2018-01-03 10:22:00', '10.37', '24.6', '580');
INSERT INTO `produce_job` VALUES ('883', '25', '2018-02-03 04:00:00', '2018-02-03 12:14:00', '8.23', '56.8', '581');
INSERT INTO `produce_job` VALUES ('884', '27', '2018-02-03 04:00:00', '2018-02-03 12:14:00', '8.23', '56.8', '581');
INSERT INTO `produce_job` VALUES ('885', '29', '2018-02-03 04:00:00', '2018-02-03 12:14:00', '8.23', '28.4', '581');
INSERT INTO `produce_job` VALUES ('886', '25', '2018-03-03 04:00:00', '2018-03-03 11:29:00', '7.48', '50', '582');
INSERT INTO `produce_job` VALUES ('887', '27', '2018-03-03 04:00:00', '2018-03-03 11:29:00', '7.48', '50', '582');
INSERT INTO `produce_job` VALUES ('888', '29', '2018-03-03 04:00:00', '2018-03-03 11:29:00', '7.48', '25', '582');
INSERT INTO `produce_job` VALUES ('889', '25', '2018-04-03 04:00:00', '2018-04-03 12:32:00', '8.53', '78.8', '583');
INSERT INTO `produce_job` VALUES ('890', '27', '2018-04-03 04:00:00', '2018-04-03 12:32:00', '8.53', '78.8', '583');
INSERT INTO `produce_job` VALUES ('891', '29', '2018-04-03 04:00:00', '2018-04-03 12:32:00', '8.53', '39.4', '583');
INSERT INTO `produce_job` VALUES ('892', '25', '2018-05-03 02:00:00', '2018-05-03 12:17:00', '10.28', '46.4', '584');
INSERT INTO `produce_job` VALUES ('893', '27', '2018-05-03 02:00:00', '2018-05-03 12:17:00', '10.28', '46.4', '584');
INSERT INTO `produce_job` VALUES ('894', '29', '2018-05-03 02:00:00', '2018-05-03 12:17:00', '10.28', '23.2', '584');
INSERT INTO `produce_job` VALUES ('895', '25', '2018-06-03 03:00:00', '2018-06-03 11:32:00', '8.53', '55.6', '585');
INSERT INTO `produce_job` VALUES ('896', '27', '2018-06-03 03:00:00', '2018-06-03 11:32:00', '8.53', '55.6', '585');
INSERT INTO `produce_job` VALUES ('897', '29', '2018-06-03 03:00:00', '2018-06-03 11:32:00', '8.53', '27.8', '585');
INSERT INTO `produce_job` VALUES ('898', '25', '2018-07-03 00:00:00', '2018-07-03 08:28:00', '8.47', '54.8', '586');
INSERT INTO `produce_job` VALUES ('899', '27', '2018-07-03 00:00:00', '2018-07-03 08:28:00', '8.47', '54.8', '586');
INSERT INTO `produce_job` VALUES ('900', '29', '2018-07-03 00:00:00', '2018-07-03 08:28:00', '8.47', '27.4', '586');
INSERT INTO `produce_job` VALUES ('901', '25', '2018-08-03 03:00:00', '2018-08-03 10:33:00', '7.55', '79.6', '587');
INSERT INTO `produce_job` VALUES ('902', '27', '2018-08-03 03:00:00', '2018-08-03 10:33:00', '7.55', '79.6', '587');
INSERT INTO `produce_job` VALUES ('903', '29', '2018-08-03 03:00:00', '2018-08-03 10:33:00', '7.55', '39.8', '587');
INSERT INTO `produce_job` VALUES ('904', '25', '2018-09-03 02:00:00', '2018-09-03 08:18:00', '6.3', '67.2', '588');
INSERT INTO `produce_job` VALUES ('905', '27', '2018-09-03 02:00:00', '2018-09-03 08:18:00', '6.3', '67.2', '588');
INSERT INTO `produce_job` VALUES ('906', '29', '2018-09-03 02:00:00', '2018-09-03 08:18:00', '6.3', '33.6', '588');
INSERT INTO `produce_job` VALUES ('907', '25', '2018-10-03 04:00:00', '2018-10-03 12:59:00', '8.98', '72.4', '589');
INSERT INTO `produce_job` VALUES ('908', '27', '2018-10-03 04:00:00', '2018-10-03 12:59:00', '8.98', '72.4', '589');
INSERT INTO `produce_job` VALUES ('909', '29', '2018-10-03 04:00:00', '2018-10-03 12:59:00', '8.98', '36.2', '589');
INSERT INTO `produce_job` VALUES ('910', '25', '2018-11-03 00:00:00', '2018-11-03 08:55:00', '8.92', '51.6', '590');
INSERT INTO `produce_job` VALUES ('911', '27', '2018-11-03 00:00:00', '2018-11-03 08:55:00', '8.92', '51.6', '590');
INSERT INTO `produce_job` VALUES ('912', '29', '2018-11-03 00:00:00', '2018-11-03 08:55:00', '8.92', '25.8', '590');
INSERT INTO `produce_job` VALUES ('913', '25', '2018-12-03 04:00:00', '2018-12-03 09:56:00', '5.93', '60.4', '591');
INSERT INTO `produce_job` VALUES ('914', '27', '2018-12-03 04:00:00', '2018-12-03 09:56:00', '5.93', '60.4', '591');
INSERT INTO `produce_job` VALUES ('915', '29', '2018-12-03 04:00:00', '2018-12-03 09:56:00', '5.93', '30.2', '591');
INSERT INTO `produce_job` VALUES ('916', '25', '2019-01-03 00:00:00', '2019-01-03 09:16:00', '9.27', '66', '592');
INSERT INTO `produce_job` VALUES ('917', '27', '2019-01-03 00:00:00', '2019-01-03 09:16:00', '9.27', '66', '592');
INSERT INTO `produce_job` VALUES ('918', '29', '2019-01-03 00:00:00', '2019-01-03 09:16:00', '9.27', '33', '592');
INSERT INTO `produce_job` VALUES ('919', '25', '2019-02-03 03:00:00', '2019-02-03 12:59:00', '9.98', '72.4', '593');
INSERT INTO `produce_job` VALUES ('920', '27', '2019-02-03 03:00:00', '2019-02-03 12:59:00', '9.98', '72.4', '593');
INSERT INTO `produce_job` VALUES ('921', '29', '2019-02-03 03:00:00', '2019-02-03 12:59:00', '9.98', '36.2', '593');
INSERT INTO `produce_job` VALUES ('922', '25', '2019-03-03 01:00:00', '2019-03-03 12:55:00', '11.92', '54', '594');
INSERT INTO `produce_job` VALUES ('923', '27', '2019-03-03 01:00:00', '2019-03-03 12:55:00', '11.92', '54', '594');
INSERT INTO `produce_job` VALUES ('924', '29', '2019-03-03 01:00:00', '2019-03-03 12:55:00', '11.92', '27', '594');
INSERT INTO `produce_job` VALUES ('925', '25', '2019-04-03 00:00:00', '2019-04-03 11:01:00', '11.02', '67.6', '595');
INSERT INTO `produce_job` VALUES ('926', '27', '2019-04-03 00:00:00', '2019-04-03 11:01:00', '11.02', '67.6', '595');
INSERT INTO `produce_job` VALUES ('927', '29', '2019-04-03 00:00:00', '2019-04-03 11:01:00', '11.02', '33.8', '595');
INSERT INTO `produce_job` VALUES ('928', '26', '2018-01-03 02:00:00', '2018-01-03 12:57:00', '10.95', '74.4', '596');
INSERT INTO `produce_job` VALUES ('929', '28', '2018-01-03 02:00:00', '2018-01-03 12:57:00', '10.95', '74.4', '596');
INSERT INTO `produce_job` VALUES ('930', '30', '2018-01-03 02:00:00', '2018-01-03 12:57:00', '10.95', '37.2', '596');
INSERT INTO `produce_job` VALUES ('931', '26', '2018-02-03 04:00:00', '2018-02-03 11:58:00', '7.97', '63.6', '597');
INSERT INTO `produce_job` VALUES ('932', '28', '2018-02-03 04:00:00', '2018-02-03 11:58:00', '7.97', '63.6', '597');
INSERT INTO `produce_job` VALUES ('933', '30', '2018-02-03 04:00:00', '2018-02-03 11:58:00', '7.97', '31.8', '597');
INSERT INTO `produce_job` VALUES ('934', '26', '2018-03-03 02:00:00', '2018-03-03 10:39:00', '8.65', '40.4', '598');
INSERT INTO `produce_job` VALUES ('935', '28', '2018-03-03 02:00:00', '2018-03-03 10:39:00', '8.65', '40.4', '598');
INSERT INTO `produce_job` VALUES ('936', '30', '2018-03-03 02:00:00', '2018-03-03 10:39:00', '8.65', '20.2', '598');
INSERT INTO `produce_job` VALUES ('937', '26', '2018-04-03 01:00:00', '2018-04-03 08:02:00', '7.03', '70.8', '599');
INSERT INTO `produce_job` VALUES ('938', '28', '2018-04-03 01:00:00', '2018-04-03 08:02:00', '7.03', '70.8', '599');
INSERT INTO `produce_job` VALUES ('939', '30', '2018-04-03 01:00:00', '2018-04-03 08:02:00', '7.03', '35.4', '599');
INSERT INTO `produce_job` VALUES ('940', '26', '2018-05-03 03:00:00', '2018-05-03 10:00:00', '7', '58', '600');
INSERT INTO `produce_job` VALUES ('941', '28', '2018-05-03 03:00:00', '2018-05-03 10:00:00', '7', '58', '600');
INSERT INTO `produce_job` VALUES ('942', '30', '2018-05-03 03:00:00', '2018-05-03 10:00:00', '7', '29', '600');
INSERT INTO `produce_job` VALUES ('943', '26', '2018-06-03 04:00:00', '2018-06-03 10:38:00', '6.63', '41.2', '601');
INSERT INTO `produce_job` VALUES ('944', '28', '2018-06-03 04:00:00', '2018-06-03 10:38:00', '6.63', '41.2', '601');
INSERT INTO `produce_job` VALUES ('945', '30', '2018-06-03 04:00:00', '2018-06-03 10:38:00', '6.63', '20.6', '601');
INSERT INTO `produce_job` VALUES ('946', '26', '2018-07-03 00:00:00', '2018-07-03 12:10:00', '12.17', '66', '602');
INSERT INTO `produce_job` VALUES ('947', '28', '2018-07-03 00:00:00', '2018-07-03 12:10:00', '12.17', '66', '602');
INSERT INTO `produce_job` VALUES ('948', '30', '2018-07-03 00:00:00', '2018-07-03 12:10:00', '12.17', '33', '602');
INSERT INTO `produce_job` VALUES ('949', '26', '2018-08-03 00:00:00', '2018-08-03 11:22:00', '11.37', '52.4', '603');
INSERT INTO `produce_job` VALUES ('950', '28', '2018-08-03 00:00:00', '2018-08-03 11:22:00', '11.37', '52.4', '603');
INSERT INTO `produce_job` VALUES ('951', '30', '2018-08-03 00:00:00', '2018-08-03 11:22:00', '11.37', '26.2', '603');
INSERT INTO `produce_job` VALUES ('952', '26', '2018-09-03 01:00:00', '2018-09-03 09:26:00', '8.43', '66.8', '604');
INSERT INTO `produce_job` VALUES ('953', '28', '2018-09-03 01:00:00', '2018-09-03 09:26:00', '8.43', '66.8', '604');
INSERT INTO `produce_job` VALUES ('954', '30', '2018-09-03 01:00:00', '2018-09-03 09:26:00', '8.43', '33.4', '604');
INSERT INTO `produce_job` VALUES ('955', '26', '2018-10-03 04:00:00', '2018-10-03 08:13:00', '4.22', '77.6', '605');
INSERT INTO `produce_job` VALUES ('956', '28', '2018-10-03 04:00:00', '2018-10-03 08:13:00', '4.22', '77.6', '605');
INSERT INTO `produce_job` VALUES ('957', '30', '2018-10-03 04:00:00', '2018-10-03 08:13:00', '4.22', '38.8', '605');
INSERT INTO `produce_job` VALUES ('958', '26', '2018-11-03 01:00:00', '2018-11-03 09:27:00', '8.45', '55.6', '606');
INSERT INTO `produce_job` VALUES ('959', '28', '2018-11-03 01:00:00', '2018-11-03 09:27:00', '8.45', '55.6', '606');
INSERT INTO `produce_job` VALUES ('960', '30', '2018-11-03 01:00:00', '2018-11-03 09:27:00', '8.45', '27.8', '606');
INSERT INTO `produce_job` VALUES ('961', '26', '2018-12-03 01:00:00', '2018-12-03 08:34:00', '7.57', '50', '607');
INSERT INTO `produce_job` VALUES ('962', '28', '2018-12-03 01:00:00', '2018-12-03 08:34:00', '7.57', '50', '607');
INSERT INTO `produce_job` VALUES ('963', '30', '2018-12-03 01:00:00', '2018-12-03 08:34:00', '7.57', '25', '607');
INSERT INTO `produce_job` VALUES ('964', '26', '2018-01-03 01:00:00', '2018-01-03 11:24:00', '10.4', '79.2', '608');
INSERT INTO `produce_job` VALUES ('965', '28', '2018-01-03 01:00:00', '2018-01-03 11:24:00', '10.4', '79.2', '608');
INSERT INTO `produce_job` VALUES ('966', '30', '2018-01-03 01:00:00', '2018-01-03 11:24:00', '10.4', '39.6', '608');
INSERT INTO `produce_job` VALUES ('967', '26', '2019-02-03 00:00:00', '2019-02-03 08:27:00', '8.45', '69.2', '609');
INSERT INTO `produce_job` VALUES ('968', '28', '2019-02-03 00:00:00', '2019-02-03 08:27:00', '8.45', '69.2', '609');
INSERT INTO `produce_job` VALUES ('969', '30', '2019-02-03 00:00:00', '2019-02-03 08:27:00', '8.45', '34.6', '609');
INSERT INTO `produce_job` VALUES ('970', '26', '2019-03-03 04:00:00', '2019-03-03 10:28:00', '6.47', '72', '610');
INSERT INTO `produce_job` VALUES ('971', '28', '2019-03-03 04:00:00', '2019-03-03 10:28:00', '6.47', '72', '610');
INSERT INTO `produce_job` VALUES ('972', '30', '2019-03-03 04:00:00', '2019-03-03 10:28:00', '6.47', '36', '610');
INSERT INTO `produce_job` VALUES ('973', '26', '2019-04-03 01:00:00', '2019-04-03 12:06:00', '11.1', '49.2', '611');
INSERT INTO `produce_job` VALUES ('974', '28', '2019-04-03 01:00:00', '2019-04-03 12:06:00', '11.1', '49.2', '611');
INSERT INTO `produce_job` VALUES ('975', '30', '2019-04-03 01:00:00', '2019-04-03 12:06:00', '11.1', '24.6', '611');
INSERT INTO `produce_job` VALUES ('976', '19', '2018-01-04 02:00:00', '2018-01-04 10:48:00', '8.8', '64', '612');
INSERT INTO `produce_job` VALUES ('977', '21', '2018-01-04 02:00:00', '2018-01-04 10:48:00', '8.8', '64', '612');
INSERT INTO `produce_job` VALUES ('978', '23', '2018-01-04 02:00:00', '2018-01-04 10:48:00', '8.8', '32', '612');
INSERT INTO `produce_job` VALUES ('979', '19', '2018-02-04 02:00:00', '2018-02-04 09:43:00', '7.72', '93.2', '613');
INSERT INTO `produce_job` VALUES ('980', '21', '2018-02-04 02:00:00', '2018-02-04 09:43:00', '7.72', '93.2', '613');
INSERT INTO `produce_job` VALUES ('981', '23', '2018-02-04 02:00:00', '2018-02-04 09:43:00', '7.72', '46.6', '613');
INSERT INTO `produce_job` VALUES ('982', '19', '2018-03-04 01:00:00', '2018-03-04 08:44:00', '7.73', '85.6', '614');
INSERT INTO `produce_job` VALUES ('983', '21', '2018-03-04 01:00:00', '2018-03-04 08:44:00', '7.73', '85.6', '614');
INSERT INTO `produce_job` VALUES ('984', '23', '2018-03-04 01:00:00', '2018-03-04 08:44:00', '7.73', '42.8', '614');
INSERT INTO `produce_job` VALUES ('985', '19', '2018-04-04 00:00:00', '2018-04-04 11:52:00', '11.87', '88', '615');
INSERT INTO `produce_job` VALUES ('986', '21', '2018-04-04 00:00:00', '2018-04-04 11:52:00', '11.87', '88', '615');
INSERT INTO `produce_job` VALUES ('987', '23', '2018-04-04 00:00:00', '2018-04-04 11:52:00', '11.87', '44', '615');
INSERT INTO `produce_job` VALUES ('988', '19', '2018-05-04 01:00:00', '2018-05-04 09:17:00', '8.28', '70', '616');
INSERT INTO `produce_job` VALUES ('989', '21', '2018-05-04 01:00:00', '2018-05-04 09:17:00', '8.28', '70', '616');
INSERT INTO `produce_job` VALUES ('990', '23', '2018-05-04 01:00:00', '2018-05-04 09:17:00', '8.28', '35', '616');
INSERT INTO `produce_job` VALUES ('991', '19', '2018-06-04 03:00:00', '2018-06-04 11:01:00', '8.02', '93.2', '617');
INSERT INTO `produce_job` VALUES ('992', '21', '2018-06-04 03:00:00', '2018-06-04 11:01:00', '8.02', '93.2', '617');
INSERT INTO `produce_job` VALUES ('993', '23', '2018-06-04 03:00:00', '2018-06-04 11:01:00', '8.02', '46.6', '617');
INSERT INTO `produce_job` VALUES ('994', '19', '2018-07-04 00:00:00', '2018-07-04 11:03:00', '11.05', '95.6', '618');
INSERT INTO `produce_job` VALUES ('995', '21', '2018-07-04 00:00:00', '2018-07-04 11:03:00', '11.05', '95.6', '618');
INSERT INTO `produce_job` VALUES ('996', '23', '2018-07-04 00:00:00', '2018-07-04 11:03:00', '11.05', '47.8', '618');
INSERT INTO `produce_job` VALUES ('997', '19', '2018-08-04 01:00:00', '2018-08-04 11:29:00', '10.48', '82', '619');
INSERT INTO `produce_job` VALUES ('998', '21', '2018-08-04 01:00:00', '2018-08-04 11:29:00', '10.48', '82', '619');
INSERT INTO `produce_job` VALUES ('999', '23', '2018-08-04 01:00:00', '2018-08-04 11:29:00', '10.48', '41', '619');
INSERT INTO `produce_job` VALUES ('1000', '19', '2018-09-04 00:00:00', '2018-09-04 12:17:00', '12.28', '61.2', '620');
INSERT INTO `produce_job` VALUES ('1001', '21', '2018-09-04 00:00:00', '2018-09-04 12:17:00', '12.28', '61.2', '620');
INSERT INTO `produce_job` VALUES ('1002', '23', '2018-09-04 00:00:00', '2018-09-04 12:17:00', '12.28', '30.6', '620');
INSERT INTO `produce_job` VALUES ('1003', '19', '2018-10-04 04:00:00', '2018-10-04 08:14:00', '4.23', '86.4', '621');
INSERT INTO `produce_job` VALUES ('1004', '21', '2018-10-04 04:00:00', '2018-10-04 08:14:00', '4.23', '86.4', '621');
INSERT INTO `produce_job` VALUES ('1005', '23', '2018-10-04 04:00:00', '2018-10-04 08:14:00', '4.23', '43.2', '621');
INSERT INTO `produce_job` VALUES ('1006', '19', '2018-11-04 00:00:00', '2018-11-04 12:48:00', '12.8', '72.4', '622');
INSERT INTO `produce_job` VALUES ('1007', '21', '2018-11-04 00:00:00', '2018-11-04 12:48:00', '12.8', '72.4', '622');
INSERT INTO `produce_job` VALUES ('1008', '23', '2018-11-04 00:00:00', '2018-11-04 12:48:00', '12.8', '36.2', '622');
INSERT INTO `produce_job` VALUES ('1009', '19', '2018-12-04 02:00:00', '2018-12-04 08:25:00', '6.42', '65.2', '623');
INSERT INTO `produce_job` VALUES ('1010', '21', '2018-12-04 02:00:00', '2018-12-04 08:25:00', '6.42', '65.2', '623');
INSERT INTO `produce_job` VALUES ('1011', '23', '2018-12-04 02:00:00', '2018-12-04 08:25:00', '6.42', '32.6', '623');
INSERT INTO `produce_job` VALUES ('1012', '19', '2019-01-04 01:00:00', '2019-01-04 08:06:00', '7.1', '66', '624');
INSERT INTO `produce_job` VALUES ('1013', '21', '2019-01-04 01:00:00', '2019-01-04 08:06:00', '7.1', '66', '624');
INSERT INTO `produce_job` VALUES ('1014', '23', '2019-01-04 01:00:00', '2019-01-04 08:06:00', '7.1', '33', '624');
INSERT INTO `produce_job` VALUES ('1015', '19', '2019-02-04 03:00:00', '2019-02-04 09:13:00', '6.22', '91.6', '625');
INSERT INTO `produce_job` VALUES ('1016', '21', '2019-02-04 03:00:00', '2019-02-04 09:13:00', '6.22', '91.6', '625');
INSERT INTO `produce_job` VALUES ('1017', '23', '2019-02-04 03:00:00', '2019-02-04 09:13:00', '6.22', '45.8', '625');
INSERT INTO `produce_job` VALUES ('1018', '19', '2019-03-04 03:00:00', '2019-03-04 11:56:00', '8.93', '71.6', '626');
INSERT INTO `produce_job` VALUES ('1019', '21', '2019-03-04 03:00:00', '2019-03-04 11:56:00', '8.93', '71.6', '626');
INSERT INTO `produce_job` VALUES ('1020', '23', '2019-03-04 03:00:00', '2019-03-04 11:56:00', '8.93', '35.8', '626');
INSERT INTO `produce_job` VALUES ('1021', '19', '2019-04-04 03:00:00', '2019-04-04 08:07:00', '5.12', '66.8', '627');
INSERT INTO `produce_job` VALUES ('1022', '21', '2019-04-04 03:00:00', '2019-04-04 08:07:00', '5.12', '66.8', '627');
INSERT INTO `produce_job` VALUES ('1023', '23', '2019-04-04 03:00:00', '2019-04-04 08:07:00', '5.12', '33.4', '627');
INSERT INTO `produce_job` VALUES ('1024', '20', '2018-01-04 00:00:00', '2018-01-04 12:36:00', '12.6', '78', '628');
INSERT INTO `produce_job` VALUES ('1025', '22', '2018-01-04 00:00:00', '2018-01-04 12:36:00', '12.6', '78', '628');
INSERT INTO `produce_job` VALUES ('1026', '24', '2018-01-04 00:00:00', '2018-01-04 12:36:00', '12.6', '39', '628');
INSERT INTO `produce_job` VALUES ('1027', '20', '2018-02-04 01:00:00', '2018-02-04 08:44:00', '7.73', '87.2', '629');
INSERT INTO `produce_job` VALUES ('1028', '22', '2018-02-04 01:00:00', '2018-02-04 08:44:00', '7.73', '87.2', '629');
INSERT INTO `produce_job` VALUES ('1029', '24', '2018-02-04 01:00:00', '2018-02-04 08:44:00', '7.73', '43.6', '629');
INSERT INTO `produce_job` VALUES ('1030', '20', '2018-03-04 04:00:00', '2018-03-04 08:47:00', '4.78', '96.8', '630');
INSERT INTO `produce_job` VALUES ('1031', '22', '2018-03-04 04:00:00', '2018-03-04 08:47:00', '4.78', '96.8', '630');
INSERT INTO `produce_job` VALUES ('1032', '24', '2018-03-04 04:00:00', '2018-03-04 08:47:00', '4.78', '48.4', '630');
INSERT INTO `produce_job` VALUES ('1033', '20', '2018-04-04 01:00:00', '2018-04-04 08:13:00', '7.22', '88.4', '631');
INSERT INTO `produce_job` VALUES ('1034', '22', '2018-04-04 01:00:00', '2018-04-04 08:13:00', '7.22', '88.4', '631');
INSERT INTO `produce_job` VALUES ('1035', '24', '2018-04-04 01:00:00', '2018-04-04 08:13:00', '7.22', '44.2', '631');
INSERT INTO `produce_job` VALUES ('1036', '20', '2018-05-04 01:00:00', '2018-05-04 11:07:00', '10.12', '70', '632');
INSERT INTO `produce_job` VALUES ('1037', '22', '2018-05-04 01:00:00', '2018-05-04 11:07:00', '10.12', '70', '632');
INSERT INTO `produce_job` VALUES ('1038', '24', '2018-05-04 01:00:00', '2018-05-04 11:07:00', '10.12', '35', '632');
INSERT INTO `produce_job` VALUES ('1039', '20', '2018-06-04 03:00:00', '2018-06-04 10:49:00', '7.82', '64.4', '633');
INSERT INTO `produce_job` VALUES ('1040', '22', '2018-06-04 03:00:00', '2018-06-04 10:49:00', '7.82', '64.4', '633');
INSERT INTO `produce_job` VALUES ('1041', '24', '2018-06-04 03:00:00', '2018-06-04 10:49:00', '7.82', '32.2', '633');
INSERT INTO `produce_job` VALUES ('1042', '20', '2018-07-04 04:00:00', '2018-07-04 09:26:00', '5.43', '70.8', '634');
INSERT INTO `produce_job` VALUES ('1043', '22', '2018-07-04 04:00:00', '2018-07-04 09:26:00', '5.43', '70.8', '634');
INSERT INTO `produce_job` VALUES ('1044', '24', '2018-07-04 04:00:00', '2018-07-04 09:26:00', '5.43', '35.4', '634');
INSERT INTO `produce_job` VALUES ('1045', '20', '2018-08-04 04:00:00', '2018-08-04 09:54:00', '5.9', '87.6', '635');
INSERT INTO `produce_job` VALUES ('1046', '22', '2018-08-04 04:00:00', '2018-08-04 09:54:00', '5.9', '87.6', '635');
INSERT INTO `produce_job` VALUES ('1047', '24', '2018-08-04 04:00:00', '2018-08-04 09:54:00', '5.9', '43.8', '635');
INSERT INTO `produce_job` VALUES ('1048', '20', '2018-09-04 01:00:00', '2018-09-04 11:57:00', '10.95', '78.4', '636');
INSERT INTO `produce_job` VALUES ('1049', '22', '2018-09-04 01:00:00', '2018-09-04 11:57:00', '10.95', '78.4', '636');
INSERT INTO `produce_job` VALUES ('1050', '24', '2018-09-04 01:00:00', '2018-09-04 11:57:00', '10.95', '39.2', '636');
INSERT INTO `produce_job` VALUES ('1051', '20', '2018-10-04 01:00:00', '2018-10-04 09:04:00', '8.07', '95.2', '637');
INSERT INTO `produce_job` VALUES ('1052', '22', '2018-10-04 01:00:00', '2018-10-04 09:04:00', '8.07', '95.2', '637');
INSERT INTO `produce_job` VALUES ('1053', '24', '2018-10-04 01:00:00', '2018-10-04 09:04:00', '8.07', '47.6', '637');
INSERT INTO `produce_job` VALUES ('1054', '20', '2018-11-04 01:00:00', '2018-11-04 11:57:00', '10.95', '68.8', '638');
INSERT INTO `produce_job` VALUES ('1055', '22', '2018-11-04 01:00:00', '2018-11-04 11:57:00', '10.95', '68.8', '638');
INSERT INTO `produce_job` VALUES ('1056', '24', '2018-11-04 01:00:00', '2018-11-04 11:57:00', '10.95', '34.4', '638');
INSERT INTO `produce_job` VALUES ('1057', '20', '2018-12-04 03:00:00', '2018-12-04 11:23:00', '8.38', '68.8', '639');
INSERT INTO `produce_job` VALUES ('1058', '22', '2018-12-04 03:00:00', '2018-12-04 11:23:00', '8.38', '68.8', '639');
INSERT INTO `produce_job` VALUES ('1059', '24', '2018-12-04 03:00:00', '2018-12-04 11:23:00', '8.38', '34.4', '639');
INSERT INTO `produce_job` VALUES ('1060', '20', '2018-01-04 02:00:00', '2018-01-04 08:04:00', '6.07', '77.6', '640');
INSERT INTO `produce_job` VALUES ('1061', '22', '2018-01-04 02:00:00', '2018-01-04 08:04:00', '6.07', '77.6', '640');
INSERT INTO `produce_job` VALUES ('1062', '24', '2018-01-04 02:00:00', '2018-01-04 08:04:00', '6.07', '38.8', '640');
INSERT INTO `produce_job` VALUES ('1063', '20', '2019-02-04 00:00:00', '2019-02-04 12:13:00', '12.22', '87.6', '641');
INSERT INTO `produce_job` VALUES ('1064', '22', '2019-02-04 00:00:00', '2019-02-04 12:13:00', '12.22', '87.6', '641');
INSERT INTO `produce_job` VALUES ('1065', '24', '2019-02-04 00:00:00', '2019-02-04 12:13:00', '12.22', '43.8', '641');
INSERT INTO `produce_job` VALUES ('1066', '20', '2019-03-04 04:00:00', '2019-03-04 10:08:00', '6.13', '88', '642');
INSERT INTO `produce_job` VALUES ('1067', '22', '2019-03-04 04:00:00', '2019-03-04 10:08:00', '6.13', '88', '642');
INSERT INTO `produce_job` VALUES ('1068', '24', '2019-03-04 04:00:00', '2019-03-04 10:08:00', '6.13', '44', '642');
INSERT INTO `produce_job` VALUES ('1069', '20', '2019-04-04 04:00:00', '2019-04-04 12:50:00', '8.83', '71.2', '643');
INSERT INTO `produce_job` VALUES ('1070', '22', '2019-04-04 04:00:00', '2019-04-04 12:50:00', '8.83', '71.2', '643');
INSERT INTO `produce_job` VALUES ('1071', '24', '2019-04-04 04:00:00', '2019-04-04 12:50:00', '8.83', '35.6', '643');

-- ----------------------------
-- Table structure for produce_repair
-- ----------------------------
DROP TABLE IF EXISTS `produce_repair`;
CREATE TABLE `produce_repair` (
  `repairid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键维修id',
  `devid` int(11) DEFAULT NULL COMMENT '设备名称',
  `cause` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '维修原因',
  `cost` int(11) DEFAULT NULL COMMENT '维修费用',
  `repairdate` date DEFAULT NULL COMMENT '维修日期',
  PRIMARY KEY (`repairid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of produce_repair
-- ----------------------------
INSERT INTO `produce_repair` VALUES ('1', '1', '设备老化', '500', '2019-04-09');
INSERT INTO `produce_repair` VALUES ('2', '3', '润滑保养', '100', '2019-04-08');
INSERT INTO `produce_repair` VALUES ('3', '1', '运行中出现故障', '3000', '2018-02-05');
INSERT INTO `produce_repair` VALUES ('4', '19', '润滑保养', '600', '2018-06-05');
INSERT INTO `produce_repair` VALUES ('5', '4', '设备运行时有声音', '1000', '2018-06-05');

-- ----------------------------
-- Table structure for produce_report
-- ----------------------------
DROP TABLE IF EXISTS `produce_report`;
CREATE TABLE `produce_report` (
  `reportid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键报岗id',
  `shipname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '船队名称',
  `capacity` float DEFAULT NULL COMMENT '装载量(吨)',
  `planjobtime` datetime DEFAULT NULL COMMENT '预计到港时间',
  `startjobtime` datetime DEFAULT NULL COMMENT '实际到港时间',
  `completetime` datetime DEFAULT NULL COMMENT '完成时间',
  `flowid` int(11) DEFAULT NULL COMMENT '流程',
  `reportuser` varchar(60) COLLATE utf8_bin DEFAULT NULL COMMENT '报岗人',
  `compid` int(11) DEFAULT NULL COMMENT '所属企业',
  PRIMARY KEY (`reportid`)
) ENGINE=InnoDB AUTO_INCREMENT=644 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of produce_report
-- ----------------------------
INSERT INTO `produce_report` VALUES ('1', 'zk-船p001', '100', '2019-04-09 03:00:00', '2019-04-01 02:00:00', '2019-04-01 05:00:00', '1', '盛明春', '1');
INSERT INTO `produce_report` VALUES ('2', 'zk-船p002', '120', '2019-04-08 01:00:00', null, null, null, '李继光', '1');
INSERT INTO `produce_report` VALUES ('3', 'zk-船p003', '160', '2019-04-02 10:00:00', '2019-04-02 11:00:00', '2019-04-02 16:10:00', '3', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('4', 'zk-船p004', '180', '2018-01-01 10:00:00', '2018-01-01 10:00:00', '2018-01-01 14:35:00', '1', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('5', 'zk-船p005', '170', '2018-02-01 10:00:00', '2018-02-01 10:00:00', '2018-02-01 18:00:00', '1', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('6', 'zk-船p006', '165', '2018-03-01 10:00:00', '2018-03-01 10:00:00', '2018-03-01 17:10:00', '1', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('7', 'zk-船p007', '183', '2018-04-01 10:00:00', '2018-04-01 10:00:00', '2018-04-01 20:30:00', '1', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('8', 'zk-船p008', '124', '2018-05-01 10:00:00', '2018-05-01 10:00:00', '2018-05-01 17:20:00', '1', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('9', 'zk-船p009', '135', '2018-06-01 10:00:00', '2018-06-01 10:00:00', '2018-06-01 16:25:00', '1', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('10', 'zk-船p010', '149', '2018-07-01 10:00:00', '2018-07-01 10:00:00', '2018-07-01 13:15:00', '1', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('11', 'zk-船p011', '161', '2018-08-01 10:00:00', '2018-08-01 10:00:00', '2018-08-01 15:35:00', '1', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('12', 'zk-船p012', '153', '2018-09-01 10:00:00', '2018-09-01 10:00:00', '2018-09-01 16:45:00', '1', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('13', 'zk-船p013', '142', '2018-10-01 10:00:00', '2018-10-01 10:00:00', '2018-10-01 19:16:00', '1', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('14', 'zk-船p014', '137', '2018-11-01 10:00:00', '2018-11-01 10:00:00', '2018-11-01 20:22:00', '1', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('15', 'zk-船p015', '154', '2018-12-01 10:00:00', '2018-12-01 10:00:00', '2018-12-01 14:35:00', '1', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('16', 'zk-船p016', '129', '2019-01-01 10:00:00', '2019-01-01 10:00:00', '2019-01-01 16:25:00', '1', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('17', 'zk-船p017', '168', '2019-02-01 10:00:00', '2019-02-01 10:00:00', '2019-02-01 21:30:00', '1', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('18', 'zk-船p018', '145', '2019-03-01 10:00:00', '2019-03-01 10:00:00', '2019-03-01 16:36:00', '1', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('19', 'zk-船p019', '156', '2019-04-01 10:00:00', '2019-04-01 10:00:00', '2019-04-01 18:35:00', '1', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('21', 'zk-船p021', '126', '2018-01-01 06:00:00', '2018-01-01 06:00:00', '2018-01-01 09:25:00', '2', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('22', 'zk-船p022', '126', '2018-02-01 06:00:00', '2018-02-01 06:00:00', '2018-02-01 09:25:00', '2', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('23', 'zk-船p023', '158', '2018-03-01 06:00:00', '2018-03-01 06:00:00', '2018-03-01 12:34:00', '2', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('24', 'zk-船p024', '143', '2018-04-01 06:00:00', '2018-04-01 06:00:00', '2018-04-01 08:46:00', '2', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('25', 'zk-船p025', '186', '2018-05-01 06:00:00', '2018-05-01 06:00:00', '2018-05-01 14:35:00', '2', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('26', 'zk-船p026', '172', '2018-06-01 06:00:00', '2018-06-01 06:00:00', '2018-06-01 13:10:00', '2', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('27', 'zk-船p027', '136', '2018-07-01 06:00:00', '2018-07-01 06:00:00', '2018-07-01 16:14:00', '2', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('28', 'zk-船p028', '149', '2018-08-01 06:00:00', '2018-08-01 06:00:00', '2018-08-01 19:25:00', '2', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('29', 'zk-船p029', '168', '2018-09-01 06:00:00', '2018-09-01 06:00:00', '2018-09-01 11:15:00', '2', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('30', 'zk-船p030', '200', '2018-10-01 06:00:00', '2018-10-01 06:00:00', '2018-10-01 13:14:00', '2', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('31', 'zk-船p031', '180', '2018-11-01 06:00:00', '2018-11-01 06:00:00', '2018-11-01 16:50:00', '2', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('32', 'zk-船p032', '124', '2018-12-01 06:00:00', '2018-12-01 06:00:00', '2018-12-01 20:25:00', '2', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('33', 'zk-船p033', '110', '2019-01-01 06:00:00', '2019-01-01 06:00:00', '2019-01-01 18:20:00', '2', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('34', 'zk-船p034', '192', '2019-02-01 06:00:00', '2019-02-01 06:00:00', '2019-02-01 14:10:00', '2', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('35', 'zk-船p035', '181', '2019-03-01 06:00:00', '2019-03-01 06:00:00', '2019-03-01 15:10:00', '2', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('36', 'zk-船p036', '174', '2019-04-01 06:00:00', '2019-04-01 06:00:00', '2019-04-01 14:10:00', '2', '刘长江', '1');
INSERT INTO `produce_report` VALUES ('41', 'zk-船p041', '190', '2018-01-01 03:00:00', '2018-01-01 03:00:00', '2018-01-01 09:25:00', '3', '刘泗鑫', '1');
INSERT INTO `produce_report` VALUES ('42', 'zk-船p042', '196', '2018-02-01 03:00:00', '2018-02-01 03:00:00', '2018-02-01 09:25:00', '3', '刘泗鑫', '1');
INSERT INTO `produce_report` VALUES ('43', 'zk-船p043', '210', '2018-03-01 03:00:00', '2018-03-01 03:00:00', '2018-03-01 12:34:00', '3', '刘泗鑫', '1');
INSERT INTO `produce_report` VALUES ('44', 'zk-船p044', '220', '2018-04-01 03:00:00', '2018-04-01 03:00:00', '2018-04-01 08:46:00', '3', '刘泗鑫', '1');
INSERT INTO `produce_report` VALUES ('45', 'zk-船p045', '204', '2018-05-01 03:00:00', '2018-05-01 03:00:00', '2018-05-01 14:35:00', '3', '刘泗鑫', '1');
INSERT INTO `produce_report` VALUES ('46', 'zk-船p046', '206', '2018-06-01 03:00:00', '2018-06-01 03:00:00', '2018-06-01 13:10:00', '3', '刘泗鑫', '1');
INSERT INTO `produce_report` VALUES ('47', 'zk-船p047', '230', '2018-07-01 03:00:00', '2018-07-01 03:00:00', '2018-07-01 16:14:00', '3', '刘泗鑫', '1');
INSERT INTO `produce_report` VALUES ('48', 'zk-船p048', '180', '2018-08-01 03:00:00', '2018-08-01 03:00:00', '2018-08-01 19:25:00', '3', '刘泗鑫', '1');
INSERT INTO `produce_report` VALUES ('49', 'zk-船p049', '160', '2018-09-01 03:00:00', '2018-09-01 03:00:00', '2018-09-01 11:15:00', '3', '刘泗鑫', '1');
INSERT INTO `produce_report` VALUES ('50', 'zk-船p050', '176', '2018-10-01 03:00:00', '2018-10-01 03:00:00', '2018-10-01 13:14:00', '3', '刘泗鑫', '1');
INSERT INTO `produce_report` VALUES ('51', 'zk-船p051', '225', '2018-11-01 03:00:00', '2018-11-01 03:00:00', '2018-11-01 16:50:00', '3', '刘泗鑫', '1');
INSERT INTO `produce_report` VALUES ('52', 'zk-船p052', '210', '2018-12-01 03:00:00', '2018-12-01 03:00:00', '2018-12-01 20:25:00', '3', '刘泗鑫', '1');
INSERT INTO `produce_report` VALUES ('53', 'zk-船p053', '160', '2019-01-01 03:00:00', '2019-01-01 03:00:00', '2019-01-01 18:20:00', '3', '刘泗鑫', '1');
INSERT INTO `produce_report` VALUES ('54', 'zk-船p054', '192', '2019-02-01 03:00:00', '2019-02-01 03:00:00', '2019-02-01 14:10:00', '3', '刘泗鑫', '1');
INSERT INTO `produce_report` VALUES ('55', 'zk-船p055', '181', '2019-03-01 03:00:00', '2019-03-01 03:00:00', '2019-03-01 15:10:00', '3', '刘泗鑫', '1');
INSERT INTO `produce_report` VALUES ('56', 'zk-船p056', '193', '2019-04-01 03:00:00', '2019-04-01 03:00:00', '2019-04-01 14:10:00', '3', '刘泗鑫', '1');
INSERT INTO `produce_report` VALUES ('61', 'zk-船p61', '125', '2018-01-01 01:00:00', '2018-01-01 01:00:00', '2018-01-01 09:25:00', '4', '王定宇', '1');
INSERT INTO `produce_report` VALUES ('62', 'zk-船p062', '136', '2018-02-01 01:00:00', '2018-02-01 01:00:00', '2018-02-01 09:25:00', '4', '王定宇', '1');
INSERT INTO `produce_report` VALUES ('63', 'zk-船p063', '140', '2018-03-01 01:00:00', '2018-03-01 01:00:00', '2018-03-01 12:34:00', '4', '王定宇', '1');
INSERT INTO `produce_report` VALUES ('64', 'zk-船p064', '120', '2018-04-01 01:00:00', '2018-04-01 01:00:00', '2018-04-01 08:46:00', '4', '王定宇', '1');
INSERT INTO `produce_report` VALUES ('65', 'zk-船p065', '124', '2018-05-01 01:00:00', '2018-05-01 01:00:00', '2018-05-01 14:35:00', '4', '王定宇', '1');
INSERT INTO `produce_report` VALUES ('66', 'zk-船p066', '116', '2018-06-01 01:00:00', '2018-06-01 01:00:00', '2018-06-01 13:10:00', '4', '王定宇', '1');
INSERT INTO `produce_report` VALUES ('67', 'zk-船p067', '130', '2018-07-01 01:00:00', '2018-07-01 01:00:00', '2018-07-01 16:14:00', '4', '王定宇', '1');
INSERT INTO `produce_report` VALUES ('68', 'zk-船p068', '180', '2018-08-01 01:00:00', '2018-08-01 01:00:00', '2018-08-01 19:25:00', '4', '王定宇', '1');
INSERT INTO `produce_report` VALUES ('69', 'zk-船p069', '160', '2018-09-01 01:00:00', '2018-09-01 01:00:00', '2018-09-01 11:15:00', '4', '王定宇', '1');
INSERT INTO `produce_report` VALUES ('70', 'zk-船p070', '176', '2018-10-01 01:00:00', '2018-10-01 01:00:00', '2018-10-01 13:14:00', '4', '王定宇', '1');
INSERT INTO `produce_report` VALUES ('71', 'zk-船p071', '125', '2018-11-01 01:00:00', '2018-11-01 01:00:00', '2018-11-01 16:50:00', '4', '王定宇', '1');
INSERT INTO `produce_report` VALUES ('72', 'zk-船p072', '110', '2018-12-01 01:00:00', '2018-12-01 01:00:00', '2018-12-01 20:25:00', '4', '王定宇', '1');
INSERT INTO `produce_report` VALUES ('73', 'zk-船p073', '136', '2019-01-01 01:00:00', '2019-01-01 01:00:00', '2019-01-01 18:20:00', '4', '王定宇', '1');
INSERT INTO `produce_report` VALUES ('74', 'zk-船p074', '122', '2019-02-01 01:00:00', '2019-02-01 01:00:00', '2019-02-01 14:10:00', '4', '王定宇', '1');
INSERT INTO `produce_report` VALUES ('75', 'zk-船p075', '131', '2019-03-01 01:00:00', '2019-03-01 01:00:00', '2019-03-01 15:10:00', '4', '王定宇', '1');
INSERT INTO `produce_report` VALUES ('76', 'zk-船p076', '133', '2019-04-01 01:00:00', '2019-04-01 01:00:00', '2019-04-01 14:10:00', '4', '王定宇', '1');
INSERT INTO `produce_report` VALUES ('81', 'zk-船p81', '155', '2018-01-01 02:00:00', '2018-01-01 02:00:00', '2018-01-01 09:25:00', '5', '朱迪平', '1');
INSERT INTO `produce_report` VALUES ('82', 'zk-船p082', '176', '2018-02-01 02:00:00', '2018-02-01 02:00:00', '2018-02-01 09:25:00', '5', '朱迪平', '1');
INSERT INTO `produce_report` VALUES ('83', 'zk-船p083', '140', '2018-03-01 02:00:00', '2018-03-01 02:00:00', '2018-03-01 12:34:00', '5', '朱迪平', '1');
INSERT INTO `produce_report` VALUES ('84', 'zk-船p084', '160', '2018-04-01 02:00:00', '2018-04-01 02:00:00', '2018-04-01 08:46:00', '5', '朱迪平', '1');
INSERT INTO `produce_report` VALUES ('85', 'zk-船p085', '124', '2018-05-01 02:00:00', '2018-05-01 02:00:00', '2018-05-01 14:35:00', '5', '朱迪平', '1');
INSERT INTO `produce_report` VALUES ('86', 'zk-船p086', '166', '2018-06-01 02:00:00', '2018-06-01 02:00:00', '2018-06-01 13:10:00', '5', '朱迪平', '1');
INSERT INTO `produce_report` VALUES ('87', 'zk-船p087', '130', '2018-07-01 02:00:00', '2018-07-01 02:00:00', '2018-07-01 16:14:00', '5', '朱迪平', '1');
INSERT INTO `produce_report` VALUES ('88', 'zk-船p088', '180', '2018-08-01 02:00:00', '2018-08-01 02:00:00', '2018-08-01 19:25:00', '5', '朱迪平', '1');
INSERT INTO `produce_report` VALUES ('89', 'zk-船p089', '160', '2018-09-01 02:00:00', '2018-09-01 02:00:00', '2018-09-01 11:15:00', '5', '朱迪平', '1');
INSERT INTO `produce_report` VALUES ('90', 'zk-船p090', '176', '2018-10-01 02:00:00', '2018-10-01 02:00:00', '2018-10-01 13:14:00', '5', '朱迪平', '1');
INSERT INTO `produce_report` VALUES ('91', 'zk-船p091', '155', '2018-11-01 02:00:00', '2018-11-01 02:00:00', '2018-11-01 16:50:00', '5', '朱迪平', '1');
INSERT INTO `produce_report` VALUES ('92', 'zk-船p092', '180', '2018-12-01 02:00:00', '2018-12-01 02:00:00', '2018-12-01 20:25:00', '5', '朱迪平', '1');
INSERT INTO `produce_report` VALUES ('93', 'zk-船p093', '136', '2019-01-01 02:00:00', '2019-01-01 02:00:00', '2019-01-01 18:20:00', '5', '朱迪平', '1');
INSERT INTO `produce_report` VALUES ('94', 'zk-船p094', '152', '2019-02-01 02:00:00', '2019-02-01 02:00:00', '2019-02-01 14:10:00', '5', '朱迪平', '1');
INSERT INTO `produce_report` VALUES ('95', 'zk-船p095', '131', '2019-03-01 02:00:00', '2019-03-01 02:00:00', '2019-03-01 15:10:00', '5', '朱迪平', '1');
INSERT INTO `produce_report` VALUES ('96', 'zk-船p096', '143', '2019-04-01 02:00:00', '2019-04-01 02:00:00', '2019-04-01 14:10:00', '5', '朱迪平', '1');
INSERT INTO `produce_report` VALUES ('101', 'zk-船p101', '155', '2018-01-01 04:00:00', '2018-01-01 04:00:00', '2018-01-01 09:25:00', '6', '王梦瑶', '1');
INSERT INTO `produce_report` VALUES ('102', 'zk-船p102', '176', '2018-02-01 04:00:00', '2018-02-01 04:00:00', '2018-02-01 09:25:00', '6', '王梦瑶', '1');
INSERT INTO `produce_report` VALUES ('103', 'zk-船p103', '180', '2018-03-01 04:00:00', '2018-03-01 04:00:00', '2018-03-01 12:34:00', '6', '王梦瑶', '1');
INSERT INTO `produce_report` VALUES ('104', 'zk-船p104', '160', '2018-04-01 04:00:00', '2018-04-01 04:00:00', '2018-04-01 08:46:00', '6', '王梦瑶', '1');
INSERT INTO `produce_report` VALUES ('105', 'zk-船p105', '194', '2018-05-01 04:00:00', '2018-05-01 04:00:00', '2018-05-01 14:35:00', '6', '王梦瑶', '1');
INSERT INTO `produce_report` VALUES ('106', 'zk-船p106', '166', '2018-06-01 04:00:00', '2018-06-01 04:00:00', '2018-06-01 13:10:00', '6', '王梦瑶', '1');
INSERT INTO `produce_report` VALUES ('107', 'zk-船p107', '190', '2018-07-01 04:00:00', '2018-07-01 04:00:00', '2018-07-01 16:14:00', '6', '王梦瑶', '1');
INSERT INTO `produce_report` VALUES ('108', 'zk-船p108', '180', '2018-08-01 04:00:00', '2018-08-01 04:00:00', '2018-08-01 19:25:00', '6', '王梦瑶', '1');
INSERT INTO `produce_report` VALUES ('109', 'zk-船p109', '160', '2018-09-01 04:00:00', '2018-09-01 04:00:00', '2018-09-01 11:15:00', '6', '王梦瑶', '1');
INSERT INTO `produce_report` VALUES ('110', 'zk-船p110', '176', '2018-10-01 04:00:00', '2018-10-01 04:00:00', '2018-10-01 13:14:00', '6', '王梦瑶', '1');
INSERT INTO `produce_report` VALUES ('111', 'zk-船p111', '155', '2018-11-01 04:00:00', '2018-11-01 04:00:00', '2018-11-01 16:50:00', '6', '王梦瑶', '1');
INSERT INTO `produce_report` VALUES ('112', 'zk-船p112', '180', '2018-12-01 04:00:00', '2018-12-01 04:00:00', '2018-12-01 20:25:00', '6', '王梦瑶', '1');
INSERT INTO `produce_report` VALUES ('113', 'zk-船p113', '196', '2019-01-01 04:00:00', '2019-01-01 04:00:00', '2019-01-01 18:20:00', '6', '王梦瑶', '1');
INSERT INTO `produce_report` VALUES ('114', 'zk-船p114', '152', '2019-02-01 04:00:00', '2019-02-01 04:00:00', '2019-02-01 14:10:00', '6', '王梦瑶', '1');
INSERT INTO `produce_report` VALUES ('115', 'zk-船p115', '201', '2019-03-01 04:00:00', '2019-03-01 04:00:00', '2019-03-01 15:10:00', '6', '王梦瑶', '1');
INSERT INTO `produce_report` VALUES ('116', 'zk-船p116', '213', '2019-04-01 04:00:00', '2019-04-01 04:00:00', '2019-04-01 14:10:00', '6', '王梦瑶', '1');
INSERT INTO `produce_report` VALUES ('499', 'sh-船A101', '273', '2018-01-02 04:00:00', '2018-01-02 04:00:00', '2018-01-02 11:53:00', '7', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('500', 'sh-船A102', '221', '2018-02-02 04:00:00', '2018-02-02 04:00:00', '2018-02-02 08:50:00', '7', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('501', 'sh-船A103', '268', '2018-03-02 03:00:00', '2018-03-02 03:00:00', '2018-03-02 08:34:00', '7', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('502', 'sh-船A104', '296', '2018-04-02 02:00:00', '2018-04-02 02:00:00', '2018-04-02 08:18:00', '7', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('503', 'sh-船A105', '246', '2018-05-02 03:00:00', '2018-05-02 03:00:00', '2018-05-02 08:07:00', '7', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('504', 'sh-船A106', '270', '2018-06-02 04:00:00', '2018-06-02 04:00:00', '2018-06-02 10:28:00', '7', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('505', 'sh-船A107', '240', '2018-07-02 02:00:00', '2018-07-02 02:00:00', '2018-07-02 12:24:00', '7', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('506', 'sh-船A108', '223', '2018-08-02 01:00:00', '2018-08-02 01:00:00', '2018-08-02 08:03:00', '7', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('507', 'sh-船A109', '259', '2018-09-02 04:00:00', '2018-09-02 04:00:00', '2018-09-02 08:49:00', '7', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('508', 'sh-船A110', '210', '2018-10-02 01:00:00', '2018-10-02 01:00:00', '2018-10-02 11:55:00', '7', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('509', 'sh-船A111', '271', '2018-11-02 04:00:00', '2018-11-02 04:00:00', '2018-11-02 10:27:00', '7', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('510', 'sh-船A112', '271', '2018-12-02 01:00:00', '2018-12-02 01:00:00', '2018-12-02 10:22:00', '7', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('511', 'sh-船A113', '259', '2019-01-02 00:00:00', '2019-01-02 00:00:00', '2019-01-02 10:41:00', '7', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('512', 'sh-船A114', '212', '2019-02-02 00:00:00', '2019-02-02 00:00:00', '2019-02-02 09:10:00', '7', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('513', 'sh-船A115', '282', '2019-03-02 02:00:00', '2019-03-02 02:00:00', '2019-03-02 10:29:00', '7', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('514', 'sh-船A116', '235', '2019-04-02 02:00:00', '2019-04-02 02:00:00', '2019-04-02 10:27:00', '7', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('515', 'sh-船A117', '208', '2018-01-02 04:00:00', '2018-01-02 04:00:00', '2018-01-02 12:54:00', '8', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('516', 'sh-船A118', '237', '2018-02-02 00:00:00', '2018-02-02 00:00:00', '2018-02-02 10:19:00', '8', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('517', 'sh-船A119', '258', '2018-03-02 00:00:00', '2018-03-02 00:00:00', '2018-03-02 08:25:00', '8', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('518', 'sh-船A120', '266', '2018-04-02 00:00:00', '2018-04-02 00:00:00', '2018-04-02 10:39:00', '8', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('519', 'sh-船A121', '296', '2018-05-02 03:00:00', '2018-05-02 03:00:00', '2018-05-02 10:06:00', '8', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('520', 'sh-船A122', '266', '2018-06-02 01:00:00', '2018-06-02 01:00:00', '2018-06-02 08:37:00', '8', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('521', 'sh-船A123', '214', '2018-07-02 03:00:00', '2018-07-02 03:00:00', '2018-07-02 11:38:00', '8', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('522', 'sh-船A124', '261', '2018-08-02 03:00:00', '2018-08-02 03:00:00', '2018-08-02 11:30:00', '8', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('523', 'sh-船A125', '242', '2018-09-02 04:00:00', '2018-09-02 04:00:00', '2018-09-02 10:48:00', '8', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('524', 'sh-船A126', '296', '2018-10-02 03:00:00', '2018-10-02 03:00:00', '2018-10-02 10:22:00', '8', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('525', 'sh-船A127', '216', '2018-11-02 00:00:00', '2018-11-02 00:00:00', '2018-11-02 11:45:00', '8', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('526', 'sh-船A128', '285', '2018-12-02 00:00:00', '2018-12-02 00:00:00', '2018-12-02 10:40:00', '8', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('527', 'sh-船A129', '270', '2018-01-02 03:00:00', '2018-01-02 03:00:00', '2018-01-02 12:02:00', '8', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('528', 'sh-船A130', '206', '2019-02-02 04:00:00', '2019-02-02 04:00:00', '2019-02-02 10:33:00', '8', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('529', 'sh-船A131', '279', '2019-03-02 04:00:00', '2019-03-02 04:00:00', '2019-03-02 12:38:00', '8', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('530', 'sh-船A132', '225', '2019-04-02 03:00:00', '2019-04-02 03:00:00', '2019-04-02 11:11:00', '8', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('531', 'sh-船A133', '239', '2019-01-02 01:00:00', '2019-01-02 01:00:00', '2019-01-02 12:14:00', '8', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('532', 'sh-船A134', '213', '2018-02-02 01:00:00', '2018-02-02 01:00:00', '2018-02-02 08:29:00', '9', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('533', 'sh-船A135', '285', '2018-03-02 00:00:00', '2018-03-02 00:00:00', '2018-03-02 10:59:00', '9', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('534', 'sh-船A136', '227', '2018-04-02 02:00:00', '2018-04-02 02:00:00', '2018-04-02 10:50:00', '9', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('535', 'sh-船A137', '255', '2018-05-02 04:00:00', '2018-05-02 04:00:00', '2018-05-02 08:24:00', '9', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('536', 'sh-船A138', '298', '2018-06-02 04:00:00', '2018-06-02 04:00:00', '2018-06-02 12:43:00', '9', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('537', 'sh-船A139', '205', '2018-07-02 01:00:00', '2018-07-02 01:00:00', '2018-07-02 11:47:00', '9', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('538', 'sh-船A140', '271', '2018-08-02 00:00:00', '2018-08-02 00:00:00', '2018-08-02 10:38:00', '9', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('539', 'sh-船A141', '271', '2018-09-02 00:00:00', '2018-09-02 00:00:00', '2018-09-02 11:38:00', '9', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('540', 'sh-船A142', '201', '2018-10-02 02:00:00', '2018-10-02 02:00:00', '2018-10-02 12:23:00', '9', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('541', 'sh-船A143', '225', '2018-11-02 03:00:00', '2018-11-02 03:00:00', '2018-11-02 10:27:00', '9', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('542', 'sh-船A144', '265', '2018-12-02 00:00:00', '2018-12-02 00:00:00', '2018-12-02 12:16:00', '9', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('543', 'sh-船A145', '289', '2018-01-02 03:00:00', '2018-01-02 03:00:00', '2018-01-02 11:54:00', '9', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('544', 'sh-船A146', '250', '2018-02-02 04:00:00', '2018-02-02 04:00:00', '2018-02-02 08:38:00', '9', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('545', 'sh-船A147', '265', '2019-03-02 02:00:00', '2019-03-02 02:00:00', '2019-03-02 12:07:00', '9', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('546', 'sh-船A148', '215', '2019-04-02 03:00:00', '2019-04-02 03:00:00', '2019-04-02 09:44:00', '9', '廖伟良', '10');
INSERT INTO `produce_report` VALUES ('580', 'rz-船A101', '123', '2018-01-03 00:00:00', '2018-01-03 00:00:00', '2018-01-03 10:22:00', '12', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('581', 'rz-船A102', '142', '2018-02-03 04:00:00', '2018-02-03 04:00:00', '2018-02-03 12:14:00', '12', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('582', 'rz-船A103', '125', '2018-03-03 04:00:00', '2018-03-03 04:00:00', '2018-03-03 11:29:00', '12', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('583', 'rz-船A104', '197', '2018-04-03 04:00:00', '2018-04-03 04:00:00', '2018-04-03 12:32:00', '12', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('584', 'rz-船A105', '116', '2018-05-03 02:00:00', '2018-05-03 02:00:00', '2018-05-03 12:17:00', '12', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('585', 'rz-船A106', '139', '2018-06-03 03:00:00', '2018-06-03 03:00:00', '2018-06-03 11:32:00', '12', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('586', 'rz-船A107', '137', '2018-07-03 00:00:00', '2018-07-03 00:00:00', '2018-07-03 08:28:00', '12', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('587', 'rz-船A108', '199', '2018-08-03 03:00:00', '2018-08-03 03:00:00', '2018-08-03 10:33:00', '12', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('588', 'rz-船A109', '168', '2018-09-03 02:00:00', '2018-09-03 02:00:00', '2018-09-03 08:18:00', '12', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('589', 'rz-船A110', '181', '2018-10-03 04:00:00', '2018-10-03 04:00:00', '2018-10-03 12:59:00', '12', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('590', 'rz-船A111', '129', '2018-11-03 00:00:00', '2018-11-03 00:00:00', '2018-11-03 08:55:00', '12', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('591', 'rz-船A112', '151', '2018-12-03 04:00:00', '2018-12-03 04:00:00', '2018-12-03 09:56:00', '12', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('592', 'rz-船A113', '165', '2019-01-03 00:00:00', '2019-01-03 00:00:00', '2019-01-03 09:16:00', '12', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('593', 'rz-船A114', '181', '2019-02-03 03:00:00', '2019-02-03 03:00:00', '2019-02-03 12:59:00', '12', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('594', 'rz-船A115', '135', '2019-03-03 01:00:00', '2019-03-03 01:00:00', '2019-03-03 12:55:00', '12', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('595', 'rz-船A116', '169', '2019-04-03 00:00:00', '2019-04-03 00:00:00', '2019-04-03 11:01:00', '12', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('596', 'rz-船A117', '186', '2018-01-03 02:00:00', '2018-01-03 02:00:00', '2018-01-03 12:57:00', '13', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('597', 'rz-船A118', '159', '2018-02-03 04:00:00', '2018-02-03 04:00:00', '2018-02-03 11:58:00', '13', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('598', 'rz-船A119', '101', '2018-03-03 02:00:00', '2018-03-03 02:00:00', '2018-03-03 10:39:00', '13', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('599', 'rz-船A120', '177', '2018-04-03 01:00:00', '2018-04-03 01:00:00', '2018-04-03 08:02:00', '13', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('600', 'rz-船A121', '145', '2018-05-03 03:00:00', '2018-05-03 03:00:00', '2018-05-03 10:00:00', '13', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('601', 'rz-船A122', '103', '2018-06-03 04:00:00', '2018-06-03 04:00:00', '2018-06-03 10:38:00', '13', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('602', 'rz-船A123', '165', '2018-07-03 00:00:00', '2018-07-03 00:00:00', '2018-07-03 12:10:00', '13', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('603', 'rz-船A124', '131', '2018-08-03 00:00:00', '2018-08-03 00:00:00', '2018-08-03 11:22:00', '13', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('604', 'rz-船A125', '167', '2018-09-03 01:00:00', '2018-09-03 01:00:00', '2018-09-03 09:26:00', '13', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('605', 'rz-船A126', '194', '2018-10-03 04:00:00', '2018-10-03 04:00:00', '2018-10-03 08:13:00', '13', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('606', 'rz-船A127', '139', '2018-11-03 01:00:00', '2018-11-03 01:00:00', '2018-11-03 09:27:00', '13', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('607', 'rz-船A128', '125', '2018-12-03 01:00:00', '2018-12-03 01:00:00', '2018-12-03 08:34:00', '13', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('608', 'rz-船A129', '198', '2018-01-03 01:00:00', '2018-01-03 01:00:00', '2018-01-03 11:24:00', '13', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('609', 'rz-船A130', '173', '2019-02-03 00:00:00', '2019-02-03 00:00:00', '2019-02-03 08:27:00', '13', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('610', 'rz-船A131', '180', '2019-03-03 04:00:00', '2019-03-03 04:00:00', '2019-03-03 10:28:00', '13', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('611', 'rz-船A132', '123', '2019-04-03 01:00:00', '2019-04-03 01:00:00', '2019-04-03 12:06:00', '13', '蒋科磊', '3');
INSERT INTO `produce_report` VALUES ('612', 'lh-船A101', '160', '2018-01-04 02:00:00', '2018-01-04 02:00:00', '2018-01-04 10:48:00', '10', '王文政', '2');
INSERT INTO `produce_report` VALUES ('613', 'lh-船A102', '233', '2018-02-04 02:00:00', '2018-02-04 02:00:00', '2018-02-04 09:43:00', '10', '王文政', '2');
INSERT INTO `produce_report` VALUES ('614', 'lh-船A103', '214', '2018-03-04 01:00:00', '2018-03-04 01:00:00', '2018-03-04 08:44:00', '10', '王文政', '2');
INSERT INTO `produce_report` VALUES ('615', 'lh-船A104', '220', '2018-04-04 00:00:00', '2018-04-04 00:00:00', '2018-04-04 11:52:00', '10', '王文政', '2');
INSERT INTO `produce_report` VALUES ('616', 'lh-船A105', '175', '2018-05-04 01:00:00', '2018-05-04 01:00:00', '2018-05-04 09:17:00', '10', '王文政', '2');
INSERT INTO `produce_report` VALUES ('617', 'lh-船A106', '233', '2018-06-04 03:00:00', '2018-06-04 03:00:00', '2018-06-04 11:01:00', '10', '王文政', '2');
INSERT INTO `produce_report` VALUES ('618', 'lh-船A107', '239', '2018-07-04 00:00:00', '2018-07-04 00:00:00', '2018-07-04 11:03:00', '10', '王文政', '2');
INSERT INTO `produce_report` VALUES ('619', 'lh-船A108', '205', '2018-08-04 01:00:00', '2018-08-04 01:00:00', '2018-08-04 11:29:00', '10', '王文政', '2');
INSERT INTO `produce_report` VALUES ('620', 'lh-船A109', '153', '2018-09-04 00:00:00', '2018-09-04 00:00:00', '2018-09-04 12:17:00', '10', '王文政', '2');
INSERT INTO `produce_report` VALUES ('621', 'lh-船A110', '216', '2018-10-04 04:00:00', '2018-10-04 04:00:00', '2018-10-04 08:14:00', '10', '王文政', '2');
INSERT INTO `produce_report` VALUES ('622', 'lh-船A111', '181', '2018-11-04 00:00:00', '2018-11-04 00:00:00', '2018-11-04 12:48:00', '10', '王文政', '2');
INSERT INTO `produce_report` VALUES ('623', 'lh-船A112', '163', '2018-12-04 02:00:00', '2018-12-04 02:00:00', '2018-12-04 08:25:00', '10', '王文政', '2');
INSERT INTO `produce_report` VALUES ('624', 'lh-船A113', '165', '2019-01-04 01:00:00', '2019-01-04 01:00:00', '2019-01-04 08:06:00', '10', '王文政', '2');
INSERT INTO `produce_report` VALUES ('625', 'lh-船A114', '229', '2019-02-04 03:00:00', '2019-02-04 03:00:00', '2019-02-04 09:13:00', '10', '王文政', '2');
INSERT INTO `produce_report` VALUES ('626', 'lh-船A115', '179', '2019-03-04 03:00:00', '2019-03-04 03:00:00', '2019-03-04 11:56:00', '10', '王文政', '2');
INSERT INTO `produce_report` VALUES ('627', 'lh-船A116', '167', '2019-04-04 03:00:00', '2019-04-04 03:00:00', '2019-04-04 08:07:00', '10', '王文政', '2');
INSERT INTO `produce_report` VALUES ('628', 'lh-船A117', '195', '2018-01-04 00:00:00', '2018-01-04 00:00:00', '2018-01-04 12:36:00', '11', '王文政', '2');
INSERT INTO `produce_report` VALUES ('629', 'lh-船A118', '218', '2018-02-04 01:00:00', '2018-02-04 01:00:00', '2018-02-04 08:44:00', '11', '王文政', '2');
INSERT INTO `produce_report` VALUES ('630', 'lh-船A119', '242', '2018-03-04 04:00:00', '2018-03-04 04:00:00', '2018-03-04 08:47:00', '11', '王文政', '2');
INSERT INTO `produce_report` VALUES ('631', 'lh-船A120', '221', '2018-04-04 01:00:00', '2018-04-04 01:00:00', '2018-04-04 08:13:00', '11', '王文政', '2');
INSERT INTO `produce_report` VALUES ('632', 'lh-船A121', '175', '2018-05-04 01:00:00', '2018-05-04 01:00:00', '2018-05-04 11:07:00', '11', '王文政', '2');
INSERT INTO `produce_report` VALUES ('633', 'lh-船A122', '161', '2018-06-04 03:00:00', '2018-06-04 03:00:00', '2018-06-04 10:49:00', '11', '王文政', '2');
INSERT INTO `produce_report` VALUES ('634', 'lh-船A123', '177', '2018-07-04 04:00:00', '2018-07-04 04:00:00', '2018-07-04 09:26:00', '11', '王文政', '2');
INSERT INTO `produce_report` VALUES ('635', 'lh-船A124', '219', '2018-08-04 04:00:00', '2018-08-04 04:00:00', '2018-08-04 09:54:00', '11', '王文政', '2');
INSERT INTO `produce_report` VALUES ('636', 'lh-船A125', '196', '2018-09-04 01:00:00', '2018-09-04 01:00:00', '2018-09-04 11:57:00', '11', '王文政', '2');
INSERT INTO `produce_report` VALUES ('637', 'lh-船A126', '238', '2018-10-04 01:00:00', '2018-10-04 01:00:00', '2018-10-04 09:04:00', '11', '王文政', '2');
INSERT INTO `produce_report` VALUES ('638', 'lh-船A127', '172', '2018-11-04 01:00:00', '2018-11-04 01:00:00', '2018-11-04 11:57:00', '11', '王文政', '2');
INSERT INTO `produce_report` VALUES ('639', 'lh-船A128', '172', '2018-12-04 03:00:00', '2018-12-04 03:00:00', '2018-12-04 11:23:00', '11', '王文政', '2');
INSERT INTO `produce_report` VALUES ('640', 'lh-船A129', '194', '2018-01-04 02:00:00', '2018-01-04 02:00:00', '2018-01-04 08:04:00', '11', '王文政', '2');
INSERT INTO `produce_report` VALUES ('641', 'lh-船A130', '219', '2019-02-04 00:00:00', '2019-02-04 00:00:00', '2019-02-04 12:13:00', '11', '王文政', '2');
INSERT INTO `produce_report` VALUES ('642', 'lh-船A131', '220', '2019-03-04 04:00:00', '2019-03-04 04:00:00', '2019-03-04 10:08:00', '11', '王文政', '2');
INSERT INTO `produce_report` VALUES ('643', 'lh-船A132', '178', '2019-04-04 04:00:00', '2019-04-04 04:00:00', '2019-04-04 12:50:00', '11', '王文政', '2');
