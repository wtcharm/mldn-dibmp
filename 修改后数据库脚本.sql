/*
Navicat MySQL Data Transfer

Source Server         : mysql-windows
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : mldnmember

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2017-11-11 02:21:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for action
-- ----------------------------
DROP TABLE IF EXISTS `action`;
CREATE TABLE `action` (
  `actid` varchar(50) NOT NULL default '',
  `rid` varchar(50) default NULL,
  `title` varchar(50) default NULL,
  PRIMARY KEY  (`actid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of action
-- ----------------------------
INSERT INTO `action` VALUES ('customer:add', 'customer', '增加客户');
INSERT INTO `action` VALUES ('customer:edit', 'customer', '修改客户');
INSERT INTO `action` VALUES ('customer:list', 'customer', '客户列表');
INSERT INTO `action` VALUES ('customer:record', 'customer', '客户联系记录');
INSERT INTO `action` VALUES ('dept:add', 'dept', '部门增加');
INSERT INTO `action` VALUES ('dept:edit', 'dept', '部门编辑');
INSERT INTO `action` VALUES ('dept:list', 'dept', '部门列表');
INSERT INTO `action` VALUES ('distribution:add', 'distribution', '创建分销申请');
INSERT INTO `action` VALUES ('distribution:apply', 'distribution', '提交分销申请');
INSERT INTO `action` VALUES ('distribution:cancel', 'distribution', '取消分销申请');
INSERT INTO `action` VALUES ('goods:add', 'goods', '增加商品');
INSERT INTO `action` VALUES ('goods:edit', 'goods', '修改商品');
INSERT INTO `action` VALUES ('goods:list', 'goods', '商品列表');
INSERT INTO `action` VALUES ('manage:distribution', 'manage', '出库处理');
INSERT INTO `action` VALUES ('manage:storage', 'manage', '入库处理');
INSERT INTO `action` VALUES ('member:add', 'member', '雇员增加');
INSERT INTO `action` VALUES ('member:delete', 'member', '雇员删除');
INSERT INTO `action` VALUES ('member:edit', 'member', '雇员编辑');
INSERT INTO `action` VALUES ('member:get', 'member', '雇员查看');
INSERT INTO `action` VALUES ('member:list', 'member', '雇员列表');
INSERT INTO `action` VALUES ('salegoods:list', 'salegoods', '商品列表');
INSERT INTO `action` VALUES ('salegoods:prepare', 'salegoods', '待出库商品');
INSERT INTO `action` VALUES ('storage:add', 'storage', '创建入库申请单');
INSERT INTO `action` VALUES ('storage:apply', 'storage', '入库申请单提交');
INSERT INTO `action` VALUES ('storage:details', 'storage', '入库申请单详情');
INSERT INTO `action` VALUES ('storage:edit', 'storage', '编辑入库申请单');
INSERT INTO `action` VALUES ('storage:list', 'storage', '入库申请单列表');
INSERT INTO `action` VALUES ('storageaudit:check', 'storageaudit', '入库单审核');
INSERT INTO `action` VALUES ('storageaudit:history', 'storageaudit', '入库单列表');
INSERT INTO `action` VALUES ('storageaudit:prepare', 'storageaudit', '待审核入库单列表');
INSERT INTO `action` VALUES ('warehouse:add', 'warehouse', '增加仓库');
INSERT INTO `action` VALUES ('warehouse:edit', 'warehouse', '修改仓库');
INSERT INTO `action` VALUES ('warehouse:list', 'warehouse', '仓库列表');

-- ----------------------------
-- Table structure for citem
-- ----------------------------
DROP TABLE IF EXISTS `citem`;
CREATE TABLE `citem` (
  `ciid` bigint(20) NOT NULL auto_increment,
  `title` varchar(50) default NULL,
  PRIMARY KEY  (`ciid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of citem
-- ----------------------------
INSERT INTO `citem` VALUES ('1', '潜在客户');
INSERT INTO `citem` VALUES ('2', '大单客户');
INSERT INTO `citem` VALUES ('3', '重要客户');
INSERT INTO `citem` VALUES ('4', '网站客户');

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `cid` bigint(20) NOT NULL auto_increment,
  `pid` bigint(20) default NULL,
  `title` varchar(50) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', '1', '魔力科技');
INSERT INTO `city` VALUES ('2', '35', '合肥');
INSERT INTO `city` VALUES ('3', '35', '安庆');
INSERT INTO `city` VALUES ('4', '35', '蚌埠');
INSERT INTO `city` VALUES ('5', '35', '亳州');
INSERT INTO `city` VALUES ('6', '35', '巢湖');
INSERT INTO `city` VALUES ('7', '35', '滁州');
INSERT INTO `city` VALUES ('8', '35', '阜阳');
INSERT INTO `city` VALUES ('9', '35', '贵池');
INSERT INTO `city` VALUES ('10', '35', '淮北');
INSERT INTO `city` VALUES ('11', '35', '淮化');
INSERT INTO `city` VALUES ('12', '35', '淮南');
INSERT INTO `city` VALUES ('13', '35', '黄山');
INSERT INTO `city` VALUES ('14', '35', '九华山');
INSERT INTO `city` VALUES ('15', '35', '六安');
INSERT INTO `city` VALUES ('16', '35', '马鞍山');
INSERT INTO `city` VALUES ('17', '35', '宿州');
INSERT INTO `city` VALUES ('18', '35', '铜陵');
INSERT INTO `city` VALUES ('19', '35', '屯溪');
INSERT INTO `city` VALUES ('20', '35', '芜湖');
INSERT INTO `city` VALUES ('21', '35', '宣城');
INSERT INTO `city` VALUES ('22', '2', '北京');
INSERT INTO `city` VALUES ('23', '3', '重庆');
INSERT INTO `city` VALUES ('24', '4', '福州');
INSERT INTO `city` VALUES ('25', '4', '福安');
INSERT INTO `city` VALUES ('26', '4', '龙岩');
INSERT INTO `city` VALUES ('27', '4', '南平');
INSERT INTO `city` VALUES ('28', '4', '宁德');
INSERT INTO `city` VALUES ('29', '4', '莆田');
INSERT INTO `city` VALUES ('30', '4', '泉州');
INSERT INTO `city` VALUES ('31', '4', '三明');
INSERT INTO `city` VALUES ('32', '4', '邵武');
INSERT INTO `city` VALUES ('33', '4', '石狮');
INSERT INTO `city` VALUES ('34', '4', '永安');
INSERT INTO `city` VALUES ('35', '4', '武夷山');
INSERT INTO `city` VALUES ('36', '4', '厦门');
INSERT INTO `city` VALUES ('37', '4', '漳州');
INSERT INTO `city` VALUES ('38', '5', '兰州');
INSERT INTO `city` VALUES ('39', '5', '白银');
INSERT INTO `city` VALUES ('40', '5', '定西');
INSERT INTO `city` VALUES ('41', '5', '敦煌');
INSERT INTO `city` VALUES ('42', '5', '甘南');
INSERT INTO `city` VALUES ('43', '5', '金昌');
INSERT INTO `city` VALUES ('44', '5', '酒泉');
INSERT INTO `city` VALUES ('45', '5', '临夏');
INSERT INTO `city` VALUES ('46', '5', '平凉');
INSERT INTO `city` VALUES ('47', '5', '天水');
INSERT INTO `city` VALUES ('48', '5', '武都');
INSERT INTO `city` VALUES ('49', '5', '武威');
INSERT INTO `city` VALUES ('50', '5', '西峰');
INSERT INTO `city` VALUES ('51', '5', '张掖');
INSERT INTO `city` VALUES ('52', '6', '广州');
INSERT INTO `city` VALUES ('53', '6', '潮阳');
INSERT INTO `city` VALUES ('54', '6', '潮州');
INSERT INTO `city` VALUES ('55', '6', '澄海');
INSERT INTO `city` VALUES ('56', '6', '东莞');
INSERT INTO `city` VALUES ('57', '6', '佛山');
INSERT INTO `city` VALUES ('58', '6', '河源');
INSERT INTO `city` VALUES ('59', '6', '惠州');
INSERT INTO `city` VALUES ('60', '6', '江门');
INSERT INTO `city` VALUES ('61', '6', '揭阳');
INSERT INTO `city` VALUES ('62', '6', '开平');
INSERT INTO `city` VALUES ('63', '6', '茂名');
INSERT INTO `city` VALUES ('64', '6', '梅州');
INSERT INTO `city` VALUES ('65', '6', '清远');
INSERT INTO `city` VALUES ('66', '6', '汕头');
INSERT INTO `city` VALUES ('67', '6', '汕尾');
INSERT INTO `city` VALUES ('68', '6', '韶关');
INSERT INTO `city` VALUES ('69', '6', '深圳');
INSERT INTO `city` VALUES ('70', '6', '顺德');
INSERT INTO `city` VALUES ('71', '6', '阳江');
INSERT INTO `city` VALUES ('72', '6', '英德');
INSERT INTO `city` VALUES ('73', '6', '云浮');
INSERT INTO `city` VALUES ('74', '6', '增城');
INSERT INTO `city` VALUES ('75', '6', '湛江');
INSERT INTO `city` VALUES ('76', '6', '肇庆');
INSERT INTO `city` VALUES ('77', '6', '中山');
INSERT INTO `city` VALUES ('78', '6', '珠海');
INSERT INTO `city` VALUES ('79', '7', '南宁');
INSERT INTO `city` VALUES ('80', '7', '百色');
INSERT INTO `city` VALUES ('81', '7', '北海');
INSERT INTO `city` VALUES ('82', '7', '桂林');
INSERT INTO `city` VALUES ('83', '7', '防城港');
INSERT INTO `city` VALUES ('84', '7', '河池');
INSERT INTO `city` VALUES ('85', '7', '贺州');
INSERT INTO `city` VALUES ('86', '7', '柳州');
INSERT INTO `city` VALUES ('87', '7', '钦州');
INSERT INTO `city` VALUES ('88', '7', '梧州');
INSERT INTO `city` VALUES ('89', '7', '玉林');
INSERT INTO `city` VALUES ('90', '8', '贵阳');
INSERT INTO `city` VALUES ('91', '8', '安顺');
INSERT INTO `city` VALUES ('92', '8', '毕节');
INSERT INTO `city` VALUES ('93', '8', '都匀');
INSERT INTO `city` VALUES ('94', '8', '凯里');
INSERT INTO `city` VALUES ('95', '8', '六盘水');
INSERT INTO `city` VALUES ('96', '8', '铜仁');
INSERT INTO `city` VALUES ('97', '8', '兴义');
INSERT INTO `city` VALUES ('98', '8', '玉屏');
INSERT INTO `city` VALUES ('99', '8', '遵义');
INSERT INTO `city` VALUES ('100', '9', '海口');
INSERT INTO `city` VALUES ('101', '9', '儋县');
INSERT INTO `city` VALUES ('102', '9', '陵水');
INSERT INTO `city` VALUES ('103', '9', '琼海');
INSERT INTO `city` VALUES ('104', '9', '三亚');
INSERT INTO `city` VALUES ('105', '9', '五指山');
INSERT INTO `city` VALUES ('106', '9', '万宁');
INSERT INTO `city` VALUES ('107', '10', '石家庄');
INSERT INTO `city` VALUES ('108', '10', '保定');
INSERT INTO `city` VALUES ('109', '10', '北戴河');
INSERT INTO `city` VALUES ('110', '10', '沧州');
INSERT INTO `city` VALUES ('111', '10', '承德');
INSERT INTO `city` VALUES ('112', '10', '丰润');
INSERT INTO `city` VALUES ('113', '10', '邯郸');
INSERT INTO `city` VALUES ('114', '10', '衡水');
INSERT INTO `city` VALUES ('115', '10', '廊坊');
INSERT INTO `city` VALUES ('116', '10', '南戴河');
INSERT INTO `city` VALUES ('117', '10', '秦皇岛');
INSERT INTO `city` VALUES ('118', '10', '唐山');
INSERT INTO `city` VALUES ('119', '10', '新城');
INSERT INTO `city` VALUES ('120', '10', '邢台');
INSERT INTO `city` VALUES ('121', '10', '张家口');
INSERT INTO `city` VALUES ('122', '11', '哈尔滨');
INSERT INTO `city` VALUES ('123', '11', '北安');
INSERT INTO `city` VALUES ('124', '11', '大庆');
INSERT INTO `city` VALUES ('125', '11', '大兴安岭');
INSERT INTO `city` VALUES ('126', '11', '鹤岗');
INSERT INTO `city` VALUES ('127', '11', '黑河');
INSERT INTO `city` VALUES ('128', '11', '佳木斯');
INSERT INTO `city` VALUES ('129', '11', '鸡西');
INSERT INTO `city` VALUES ('130', '11', '牡丹江');
INSERT INTO `city` VALUES ('131', '11', '齐齐哈尔');
INSERT INTO `city` VALUES ('132', '11', '七台河');
INSERT INTO `city` VALUES ('133', '11', '双鸭山');
INSERT INTO `city` VALUES ('134', '11', '绥化');
INSERT INTO `city` VALUES ('135', '11', '伊春');
INSERT INTO `city` VALUES ('136', '12', '郑州');
INSERT INTO `city` VALUES ('137', '12', '安阳');
INSERT INTO `city` VALUES ('138', '12', '鹤壁');
INSERT INTO `city` VALUES ('139', '12', '潢川');
INSERT INTO `city` VALUES ('140', '12', '焦作');
INSERT INTO `city` VALUES ('141', '12', '济源');
INSERT INTO `city` VALUES ('142', '12', '开封');
INSERT INTO `city` VALUES ('143', '12', '漯河');
INSERT INTO `city` VALUES ('144', '12', '洛阳');
INSERT INTO `city` VALUES ('145', '12', '南阳');
INSERT INTO `city` VALUES ('146', '12', '平顶山');
INSERT INTO `city` VALUES ('147', '12', '濮阳');
INSERT INTO `city` VALUES ('148', '12', '三门峡');
INSERT INTO `city` VALUES ('149', '12', '商丘');
INSERT INTO `city` VALUES ('150', '12', '新乡');
INSERT INTO `city` VALUES ('151', '12', '信阳');
INSERT INTO `city` VALUES ('152', '12', '许昌');
INSERT INTO `city` VALUES ('153', '12', '周口');
INSERT INTO `city` VALUES ('154', '12', '驻马店');
INSERT INTO `city` VALUES ('155', '13', '香港');
INSERT INTO `city` VALUES ('156', '13', '九龙');
INSERT INTO `city` VALUES ('157', '13', '新界');
INSERT INTO `city` VALUES ('158', '14', '武汉');
INSERT INTO `city` VALUES ('159', '14', '恩施');
INSERT INTO `city` VALUES ('160', '14', '鄂州');
INSERT INTO `city` VALUES ('161', '14', '黄冈');
INSERT INTO `city` VALUES ('162', '14', '黄石');
INSERT INTO `city` VALUES ('163', '14', '荆门');
INSERT INTO `city` VALUES ('164', '14', '荆州');
INSERT INTO `city` VALUES ('165', '14', '潜江');
INSERT INTO `city` VALUES ('166', '14', '十堰');
INSERT INTO `city` VALUES ('167', '14', '随州');
INSERT INTO `city` VALUES ('168', '14', '武穴');
INSERT INTO `city` VALUES ('169', '14', '仙桃');
INSERT INTO `city` VALUES ('170', '14', '咸宁');
INSERT INTO `city` VALUES ('171', '14', '襄阳');
INSERT INTO `city` VALUES ('172', '14', '襄樊');
INSERT INTO `city` VALUES ('173', '14', '孝感');
INSERT INTO `city` VALUES ('174', '14', '宜昌');
INSERT INTO `city` VALUES ('175', '15', '长沙');
INSERT INTO `city` VALUES ('176', '15', '常德');
INSERT INTO `city` VALUES ('177', '15', '郴州');
INSERT INTO `city` VALUES ('178', '15', '衡阳');
INSERT INTO `city` VALUES ('179', '15', '怀化');
INSERT INTO `city` VALUES ('180', '15', '吉首');
INSERT INTO `city` VALUES ('181', '15', '娄底');
INSERT INTO `city` VALUES ('182', '15', '邵阳');
INSERT INTO `city` VALUES ('183', '15', '湘潭');
INSERT INTO `city` VALUES ('184', '15', '益阳');
INSERT INTO `city` VALUES ('185', '15', '岳阳');
INSERT INTO `city` VALUES ('186', '15', '永州');
INSERT INTO `city` VALUES ('187', '15', '张家界');
INSERT INTO `city` VALUES ('188', '15', '株洲');
INSERT INTO `city` VALUES ('189', '16', '南京');
INSERT INTO `city` VALUES ('190', '16', '常熟');
INSERT INTO `city` VALUES ('191', '16', '常州');
INSERT INTO `city` VALUES ('192', '16', '海门');
INSERT INTO `city` VALUES ('193', '16', '淮安');
INSERT INTO `city` VALUES ('194', '16', '江都');
INSERT INTO `city` VALUES ('195', '16', '江阴');
INSERT INTO `city` VALUES ('196', '16', '昆山');
INSERT INTO `city` VALUES ('197', '16', '连云港');
INSERT INTO `city` VALUES ('198', '16', '南通');
INSERT INTO `city` VALUES ('199', '16', '启东');
INSERT INTO `city` VALUES ('200', '16', '沭阳');
INSERT INTO `city` VALUES ('201', '16', '宿迁');
INSERT INTO `city` VALUES ('202', '16', '苏州');
INSERT INTO `city` VALUES ('203', '16', '太仓');
INSERT INTO `city` VALUES ('204', '16', '泰州');
INSERT INTO `city` VALUES ('205', '16', '同里');
INSERT INTO `city` VALUES ('206', '16', '无锡');
INSERT INTO `city` VALUES ('207', '16', '徐州');
INSERT INTO `city` VALUES ('208', '16', '盐城');
INSERT INTO `city` VALUES ('209', '16', '扬州');
INSERT INTO `city` VALUES ('210', '16', '宜兴');
INSERT INTO `city` VALUES ('211', '16', '仪征');
INSERT INTO `city` VALUES ('212', '16', '张家港');
INSERT INTO `city` VALUES ('213', '16', '镇江');
INSERT INTO `city` VALUES ('214', '16', '周庄');
INSERT INTO `city` VALUES ('215', '17', '南昌');
INSERT INTO `city` VALUES ('216', '17', '抚州');
INSERT INTO `city` VALUES ('217', '17', '赣州');
INSERT INTO `city` VALUES ('218', '17', '吉安');
INSERT INTO `city` VALUES ('219', '17', '景德镇');
INSERT INTO `city` VALUES ('220', '17', '井冈山');
INSERT INTO `city` VALUES ('221', '17', '九江');
INSERT INTO `city` VALUES ('222', '17', '庐山');
INSERT INTO `city` VALUES ('223', '17', '萍乡');
INSERT INTO `city` VALUES ('224', '17', '上饶');
INSERT INTO `city` VALUES ('225', '17', '新余');
INSERT INTO `city` VALUES ('226', '17', '宜春');
INSERT INTO `city` VALUES ('227', '17', '鹰潭');
INSERT INTO `city` VALUES ('228', '18', '长春');
INSERT INTO `city` VALUES ('229', '18', '白城');
INSERT INTO `city` VALUES ('230', '18', '白山');
INSERT INTO `city` VALUES ('231', '18', '珲春');
INSERT INTO `city` VALUES ('232', '18', '辽源');
INSERT INTO `city` VALUES ('233', '18', '梅河');
INSERT INTO `city` VALUES ('234', '18', '吉林');
INSERT INTO `city` VALUES ('235', '18', '四平');
INSERT INTO `city` VALUES ('236', '18', '松原');
INSERT INTO `city` VALUES ('237', '18', '通化');
INSERT INTO `city` VALUES ('238', '18', '延吉');
INSERT INTO `city` VALUES ('239', '19', '沈阳');
INSERT INTO `city` VALUES ('240', '19', '鞍山');
INSERT INTO `city` VALUES ('241', '19', '本溪');
INSERT INTO `city` VALUES ('242', '19', '朝阳');
INSERT INTO `city` VALUES ('243', '19', '大连');
INSERT INTO `city` VALUES ('244', '19', '丹东');
INSERT INTO `city` VALUES ('245', '19', '抚顺');
INSERT INTO `city` VALUES ('246', '19', '阜新');
INSERT INTO `city` VALUES ('247', '19', '葫芦岛');
INSERT INTO `city` VALUES ('248', '19', '锦州');
INSERT INTO `city` VALUES ('249', '19', '辽阳');
INSERT INTO `city` VALUES ('250', '19', '盘锦');
INSERT INTO `city` VALUES ('251', '19', '铁岭');
INSERT INTO `city` VALUES ('252', '19', '营口');
INSERT INTO `city` VALUES ('253', '20', '澳门');
INSERT INTO `city` VALUES ('254', '21', '呼和浩特');
INSERT INTO `city` VALUES ('255', '21', '阿拉善盟');
INSERT INTO `city` VALUES ('256', '21', '包头');
INSERT INTO `city` VALUES ('257', '21', '赤峰');
INSERT INTO `city` VALUES ('258', '21', '东胜');
INSERT INTO `city` VALUES ('259', '21', '海拉尔');
INSERT INTO `city` VALUES ('260', '21', '集宁');
INSERT INTO `city` VALUES ('261', '21', '临河');
INSERT INTO `city` VALUES ('262', '21', '通辽');
INSERT INTO `city` VALUES ('263', '21', '乌海');
INSERT INTO `city` VALUES ('264', '21', '乌兰浩特');
INSERT INTO `city` VALUES ('265', '21', '锡林浩特');
INSERT INTO `city` VALUES ('266', '22', '银川');
INSERT INTO `city` VALUES ('267', '22', '固原');
INSERT INTO `city` VALUES ('268', '22', '石嘴山');
INSERT INTO `city` VALUES ('269', '22', '吴忠');
INSERT INTO `city` VALUES ('270', '23', '西宁');
INSERT INTO `city` VALUES ('271', '23', '德令哈');
INSERT INTO `city` VALUES ('272', '23', '格尔木');
INSERT INTO `city` VALUES ('273', '23', '共和');
INSERT INTO `city` VALUES ('274', '23', '海东');
INSERT INTO `city` VALUES ('275', '23', '海晏');
INSERT INTO `city` VALUES ('276', '23', '玛沁');
INSERT INTO `city` VALUES ('277', '23', '同仁');
INSERT INTO `city` VALUES ('278', '23', '玉树');
INSERT INTO `city` VALUES ('279', '24', '济南');
INSERT INTO `city` VALUES ('280', '24', '滨州');
INSERT INTO `city` VALUES ('281', '24', '兖州');
INSERT INTO `city` VALUES ('282', '24', '德州');
INSERT INTO `city` VALUES ('283', '24', '东营');
INSERT INTO `city` VALUES ('284', '24', '菏泽');
INSERT INTO `city` VALUES ('285', '24', '济宁');
INSERT INTO `city` VALUES ('286', '24', '莱芜');
INSERT INTO `city` VALUES ('287', '24', '聊城');
INSERT INTO `city` VALUES ('288', '24', '临沂');
INSERT INTO `city` VALUES ('289', '24', '蓬莱');
INSERT INTO `city` VALUES ('290', '24', '青岛');
INSERT INTO `city` VALUES ('291', '24', '曲阜');
INSERT INTO `city` VALUES ('292', '24', '日照');
INSERT INTO `city` VALUES ('293', '24', '泰安');
INSERT INTO `city` VALUES ('294', '24', '潍坊');
INSERT INTO `city` VALUES ('295', '24', '威海');
INSERT INTO `city` VALUES ('296', '24', '烟台');
INSERT INTO `city` VALUES ('297', '24', '枣庄');
INSERT INTO `city` VALUES ('298', '24', '淄博');
INSERT INTO `city` VALUES ('299', '25', '上海');
INSERT INTO `city` VALUES ('300', '25', '崇明');
INSERT INTO `city` VALUES ('301', '25', '朱家角');
INSERT INTO `city` VALUES ('302', '26', '太原');
INSERT INTO `city` VALUES ('303', '26', '长治');
INSERT INTO `city` VALUES ('304', '26', '大同');
INSERT INTO `city` VALUES ('305', '26', '候马');
INSERT INTO `city` VALUES ('306', '26', '晋城');
INSERT INTO `city` VALUES ('307', '26', '离石');
INSERT INTO `city` VALUES ('308', '26', '临汾');
INSERT INTO `city` VALUES ('309', '26', '宁武');
INSERT INTO `city` VALUES ('310', '26', '朔州');
INSERT INTO `city` VALUES ('311', '26', '忻州');
INSERT INTO `city` VALUES ('312', '26', '阳泉');
INSERT INTO `city` VALUES ('313', '26', '榆次');
INSERT INTO `city` VALUES ('314', '26', '运城');
INSERT INTO `city` VALUES ('315', '27', '西安');
INSERT INTO `city` VALUES ('316', '27', '安康');
INSERT INTO `city` VALUES ('317', '27', '宝鸡');
INSERT INTO `city` VALUES ('318', '27', '汉中');
INSERT INTO `city` VALUES ('319', '27', '渭南');
INSERT INTO `city` VALUES ('320', '27', '商州');
INSERT INTO `city` VALUES ('321', '27', '绥德');
INSERT INTO `city` VALUES ('322', '27', '铜川');
INSERT INTO `city` VALUES ('323', '27', '咸阳');
INSERT INTO `city` VALUES ('324', '27', '延安');
INSERT INTO `city` VALUES ('325', '27', '榆林');
INSERT INTO `city` VALUES ('326', '28', '成都');
INSERT INTO `city` VALUES ('327', '28', '巴中');
INSERT INTO `city` VALUES ('328', '28', '达州');
INSERT INTO `city` VALUES ('329', '28', '德阳');
INSERT INTO `city` VALUES ('330', '28', '都江堰');
INSERT INTO `city` VALUES ('331', '28', '峨眉山');
INSERT INTO `city` VALUES ('332', '28', '涪陵');
INSERT INTO `city` VALUES ('333', '28', '广安');
INSERT INTO `city` VALUES ('334', '28', '广元');
INSERT INTO `city` VALUES ('335', '28', '九寨沟');
INSERT INTO `city` VALUES ('336', '28', '康定');
INSERT INTO `city` VALUES ('337', '28', '乐山');
INSERT INTO `city` VALUES ('338', '28', '泸州');
INSERT INTO `city` VALUES ('339', '28', '马尔康');
INSERT INTO `city` VALUES ('340', '28', '绵阳');
INSERT INTO `city` VALUES ('341', '28', '眉山');
INSERT INTO `city` VALUES ('342', '28', '南充');
INSERT INTO `city` VALUES ('343', '28', '内江');
INSERT INTO `city` VALUES ('344', '28', '攀枝花');
INSERT INTO `city` VALUES ('345', '28', '遂宁');
INSERT INTO `city` VALUES ('346', '28', '汶川');
INSERT INTO `city` VALUES ('347', '28', '西昌');
INSERT INTO `city` VALUES ('348', '28', '雅安');
INSERT INTO `city` VALUES ('349', '28', '宜宾');
INSERT INTO `city` VALUES ('350', '28', '自贡');
INSERT INTO `city` VALUES ('351', '28', '资阳');
INSERT INTO `city` VALUES ('352', '29', '台北');
INSERT INTO `city` VALUES ('353', '29', '基隆');
INSERT INTO `city` VALUES ('354', '29', '台南');
INSERT INTO `city` VALUES ('355', '29', '台中');
INSERT INTO `city` VALUES ('356', '30', '天津');
INSERT INTO `city` VALUES ('357', '31', '乌鲁木齐');
INSERT INTO `city` VALUES ('358', '31', '阿克苏');
INSERT INTO `city` VALUES ('359', '31', '阿勒泰');
INSERT INTO `city` VALUES ('360', '31', '阿图什');
INSERT INTO `city` VALUES ('361', '31', '博乐');
INSERT INTO `city` VALUES ('362', '31', '昌吉');
INSERT INTO `city` VALUES ('363', '31', '东山');
INSERT INTO `city` VALUES ('364', '31', '哈密');
INSERT INTO `city` VALUES ('365', '31', '和田');
INSERT INTO `city` VALUES ('366', '31', '喀什');
INSERT INTO `city` VALUES ('367', '31', '克拉玛依');
INSERT INTO `city` VALUES ('368', '31', '库车');
INSERT INTO `city` VALUES ('369', '31', '库尔勒');
INSERT INTO `city` VALUES ('370', '31', '奎屯');
INSERT INTO `city` VALUES ('371', '31', '石河子');
INSERT INTO `city` VALUES ('372', '31', '塔城');
INSERT INTO `city` VALUES ('373', '31', '吐鲁番');
INSERT INTO `city` VALUES ('374', '31', '伊宁');
INSERT INTO `city` VALUES ('375', '32', '拉萨');
INSERT INTO `city` VALUES ('376', '32', '阿里');
INSERT INTO `city` VALUES ('377', '32', '昌都');
INSERT INTO `city` VALUES ('378', '32', '林芝');
INSERT INTO `city` VALUES ('379', '32', '那曲');
INSERT INTO `city` VALUES ('380', '32', '日喀则');
INSERT INTO `city` VALUES ('381', '32', '山南');
INSERT INTO `city` VALUES ('382', '33', '昆明');
INSERT INTO `city` VALUES ('383', '33', '大理');
INSERT INTO `city` VALUES ('384', '33', '保山');
INSERT INTO `city` VALUES ('385', '33', '楚雄');
INSERT INTO `city` VALUES ('386', '33', '东川');
INSERT INTO `city` VALUES ('387', '33', '个旧');
INSERT INTO `city` VALUES ('388', '33', '景洪');
INSERT INTO `city` VALUES ('389', '33', '开远');
INSERT INTO `city` VALUES ('390', '33', '临沧');
INSERT INTO `city` VALUES ('391', '33', '丽江');
INSERT INTO `city` VALUES ('392', '33', '六库');
INSERT INTO `city` VALUES ('393', '33', '潞西');
INSERT INTO `city` VALUES ('394', '33', '曲靖');
INSERT INTO `city` VALUES ('395', '33', '思茅');
INSERT INTO `city` VALUES ('396', '33', '文山');
INSERT INTO `city` VALUES ('397', '33', '西双版纳');
INSERT INTO `city` VALUES ('398', '33', '玉溪');
INSERT INTO `city` VALUES ('399', '33', '中甸');
INSERT INTO `city` VALUES ('400', '33', '昭通');
INSERT INTO `city` VALUES ('401', '34', '杭州');
INSERT INTO `city` VALUES ('402', '34', '安吉');
INSERT INTO `city` VALUES ('403', '34', '慈溪');
INSERT INTO `city` VALUES ('404', '34', '定海');
INSERT INTO `city` VALUES ('405', '34', '奉化');
INSERT INTO `city` VALUES ('406', '34', '海盐');
INSERT INTO `city` VALUES ('407', '34', '黄岩');
INSERT INTO `city` VALUES ('408', '34', '湖州');
INSERT INTO `city` VALUES ('409', '34', '嘉兴');
INSERT INTO `city` VALUES ('410', '34', '金华');
INSERT INTO `city` VALUES ('411', '34', '临安');
INSERT INTO `city` VALUES ('412', '34', '临海');
INSERT INTO `city` VALUES ('413', '34', '丽水');
INSERT INTO `city` VALUES ('414', '34', '宁波');
INSERT INTO `city` VALUES ('415', '34', '瓯海');
INSERT INTO `city` VALUES ('416', '34', '平湖');
INSERT INTO `city` VALUES ('417', '34', '千岛湖');
INSERT INTO `city` VALUES ('418', '34', '衢州');
INSERT INTO `city` VALUES ('419', '34', '江山');
INSERT INTO `city` VALUES ('420', '34', '瑞安');
INSERT INTO `city` VALUES ('421', '34', '绍兴');
INSERT INTO `city` VALUES ('422', '34', '嵊州');
INSERT INTO `city` VALUES ('423', '34', '台州');
INSERT INTO `city` VALUES ('424', '34', '温岭');
INSERT INTO `city` VALUES ('425', '34', '温州');
INSERT INTO `city` VALUES ('426', '34', '舟山');

-- ----------------------------
-- Table structure for critem
-- ----------------------------
DROP TABLE IF EXISTS `critem`;
CREATE TABLE `critem` (
  `criid` bigint(20) NOT NULL auto_increment,
  `title` varchar(50) default NULL,
  PRIMARY KEY  (`criid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of critem
-- ----------------------------
INSERT INTO `critem` VALUES ('1', '普通联系');
INSERT INTO `critem` VALUES ('2', '销售推荐');
INSERT INTO `critem` VALUES ('3', '客户回访');
INSERT INTO `critem` VALUES ('4', '业务合作');
INSERT INTO `critem` VALUES ('5', '其它');

-- ----------------------------
-- Table structure for csource
-- ----------------------------
DROP TABLE IF EXISTS `csource`;
CREATE TABLE `csource` (
  `csid` bigint(20) NOT NULL auto_increment,
  `title` varchar(50) default NULL,
  PRIMARY KEY  (`csid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of csource
-- ----------------------------
INSERT INTO `csource` VALUES ('1', '电话咨询');
INSERT INTO `csource` VALUES ('2', '上门访问');
INSERT INTO `csource` VALUES ('3', '网站购物');
INSERT INTO `csource` VALUES ('4', '推广渠道');
INSERT INTO `csource` VALUES ('5', '销售关系');
INSERT INTO `csource` VALUES ('6', '其它');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `cuid` bigint(20) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `phone` varchar(50) default NULL,
  `pid` bigint(20) default NULL,
  `cid` bigint(20) default NULL,
  `address` varchar(200) default NULL,
  `indate` datetime default NULL,
  `connum` int(11) default NULL,
  `ciid` bigint(20) default NULL,
  `csid` bigint(20) default NULL,
  `note` text,
  `recorder` varchar(50) default NULL,
  PRIMARY KEY  (`cuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '老李', '18346071518', '1', '1', '北京', '2017-11-07 20:41:38', '1', '1', '1', '老李', '要加');
INSERT INTO `customer` VALUES ('2', '姚佳', '18346071518', '2', '1', '上海', '2017-11-07 20:41:38', '1', '1', '1', '擦擦擦', '得到');

-- ----------------------------
-- Table structure for customer_record
-- ----------------------------
DROP TABLE IF EXISTS `customer_record`;
CREATE TABLE `customer_record` (
  `crid` bigint(20) NOT NULL auto_increment,
  `cmid` varchar(50) default NULL,
  `cuid` bigint(20) default NULL,
  `cdate` datetime default NULL,
  `criid` bigint(20) default NULL,
  `note` text,
  PRIMARY KEY  (`crid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer_record
-- ----------------------------
INSERT INTO `customer_record` VALUES ('1', 'mldn-sale', '1', '2017-11-28 21:23:09', '1', '/usr/local/redis/bin/redis-server /usr/local/redis/conf/redis.conf ');
INSERT INTO `customer_record` VALUES ('2', 'mldn-sale', '2', '2017-11-28 21:23:09', '1', '/usr/local/redis/bin/redis-server /usr/local/redis/conf/redis.conf ');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `did` bigint(20) NOT NULL auto_increment,
  `dname` varchar(50) default NULL,
  `mid` varchar(50) default NULL,
  `maxnum` int(11) default NULL,
  `currnum` int(11) default NULL,
  PRIMARY KEY  (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '管理部', 'mldn-chief', '3', '2');
INSERT INTO `dept` VALUES ('2', '人事部', 'mldn-human', '3', '3');
INSERT INTO `dept` VALUES ('3', '财务部', 'mldn-finance', '5', '4');
INSERT INTO `dept` VALUES ('4', '市场部', 'mldn-market', '10', '8');
INSERT INTO `dept` VALUES ('5', '开发部', 'mldn-dev', '10', '6');
INSERT INTO `dept` VALUES ('6', '营销部', 'mldn-sale', '10', '9');
INSERT INTO `dept` VALUES ('7', '后勤部', 'mldn-log', '20', '16');
INSERT INTO `dept` VALUES ('8', '仓储部', 'mldn-warehouse', '50', '10');

-- ----------------------------
-- Table structure for dept_role
-- ----------------------------
DROP TABLE IF EXISTS `dept_role`;
CREATE TABLE `dept_role` (
  `did` bigint(20) default NULL,
  `rid` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept_role
-- ----------------------------
INSERT INTO `dept_role` VALUES ('1', 'chief');
INSERT INTO `dept_role` VALUES ('2', 'dept');
INSERT INTO `dept_role` VALUES ('2', 'member');
INSERT INTO `dept_role` VALUES ('3', 'storageaudit');
INSERT INTO `dept_role` VALUES ('4', 'goods');
INSERT INTO `dept_role` VALUES ('6', 'salegoods');
INSERT INTO `dept_role` VALUES ('6', 'customer');
INSERT INTO `dept_role` VALUES ('6', 'storage');
INSERT INTO `dept_role` VALUES ('6', 'distribution');
INSERT INTO `dept_role` VALUES ('5', 'storageaudit');
INSERT INTO `dept_role` VALUES ('5', 'goods');
INSERT INTO `dept_role` VALUES ('5', 'storage');
INSERT INTO `dept_role` VALUES ('5', 'distribution');
INSERT INTO `dept_role` VALUES ('5', 'salegoods');
INSERT INTO `dept_role` VALUES ('5', 'customer');
INSERT INTO `dept_role` VALUES ('5', 'warehouse');
INSERT INTO `dept_role` VALUES ('5', 'manage');
INSERT INTO `dept_role` VALUES ('8', 'manage');
INSERT INTO `dept_role` VALUES ('8', 'warehouse');

-- ----------------------------
-- Table structure for distribution
-- ----------------------------
DROP TABLE IF EXISTS `distribution`;
CREATE TABLE `distribution` (
  `dsid` bigint(20) NOT NULL auto_increment,
  `title` varchar(50) default NULL,
  `pid` bigint(20) default NULL,
  `cid` bigint(20) default NULL,
  `gnum` int(11) default NULL,
  `price` double default NULL,
  `status` int(11) default NULL,
  `note` text,
  PRIMARY KEY  (`dsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of distribution
-- ----------------------------
INSERT INTO `distribution` VALUES ('1', 'cccc', '5', '41', '2', '200', '0', 'vvv');
INSERT INTO `distribution` VALUES ('2', 'www', '6', '61', '2', '200', '0', 'wwwwww');
INSERT INTO `distribution` VALUES ('3', 'ggg', '4', '29', '2', '200', '0', 'gggg');
INSERT INTO `distribution` VALUES ('4', 'dddd', '11', '125', '2', '200', '0', 'dddddddddddddddddddddddddddd');
INSERT INTO `distribution` VALUES ('5', 'mmmm', '5', '47', '2', '200', '0', 'mmmmmmm');
INSERT INTO `distribution` VALUES ('6', 'kkk', '5', '43', '2', '17776', '0', 'kkkkk');
INSERT INTO `distribution` VALUES ('7', 'AAA', '13', '156', '2', '17776', '0', 'AAAAAA');
INSERT INTO `distribution` VALUES ('8', 'PPPP', '15', '175', '2', '17776', '0', 'PPPPPPP');
INSERT INTO `distribution` VALUES ('9', 'ASDFGH', '12', '141', '2', '17776', '0', 'ASDFG');
INSERT INTO `distribution` VALUES ('10', '姚佳', '11', '122', '1', '8888', '0', '毕业于黑龙江大学');
INSERT INTO `distribution` VALUES ('11', 'bbbb', '9', '105', '1', '8888', '0', 'bbbb');
INSERT INTO `distribution` VALUES ('12', 'ggg', '4', '27', '3', '319', '0', 'ggg');
INSERT INTO `distribution` VALUES ('13', 'mmmmmmmmmmmmmm', '11', '133', '1', '43', '0', 'mmmmmmmmmmmmmm');
INSERT INTO `distribution` VALUES ('14', '456', '8', '94', '1', '554', '0', '456');
INSERT INTO `distribution` VALUES ('15', '789', '9', '103', '2', '9442', '0', '789');
INSERT INTO `distribution` VALUES ('16', '111', '5', '43', '2', '654', '0', '222');
INSERT INTO `distribution` VALUES ('17', 'feffasld', '5', '43', '2', '8988', '0', '432');
INSERT INTO `distribution` VALUES ('18', 'ceshi', '7', '83', '5', '18076', '0', '123');
INSERT INTO `distribution` VALUES ('19', '3123', '5', '42', '1', '54', '0', '32132');

-- ----------------------------
-- Table structure for distribution_details
-- ----------------------------
DROP TABLE IF EXISTS `distribution_details`;
CREATE TABLE `distribution_details` (
  `dsdid` bigint(20) NOT NULL auto_increment,
  `gid` bigint(20) default NULL,
  `name` varchar(50) default NULL,
  `num` int(11) default NULL,
  `price` double default NULL,
  `status` int(11) default NULL,
  `wid` bigint(20) default NULL,
  `outmid` varchar(50) default NULL,
  PRIMARY KEY  (`dsdid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of distribution_details
-- ----------------------------
INSERT INTO `distribution_details` VALUES ('1', '2', '88888', '5896', '8888', '0', '2', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('2', '2', '88888', '5896', '8888', '0', '2', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('3', '2', '88888', '5896', '8888', '0', '2', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('4', '2', '88888', '5896', '8888', '0', '2', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('5', '2', '88888', '5896', '8888', '0', '2', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('6', '2', '88888', '5896', '8888', '0', '2', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('7', '1', '1111', '145', '100', '0', '1', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('8', '1', '1111', '145', '100', '0', '1', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('9', '2', '88888', '5896', '8888', '0', '2', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('10', '2', '88888', '5896', '8888', '0', '2', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('11', '1', '1111', '145', '100', '0', '1', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('12', '1', '1111', '145', '100', '0', '1', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('13', '2', '88888', '5896', '8888', '0', '2', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('14', '2', '88888', '5896', '8888', '0', '2', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('15', '2', '88888', '5896', '8888', '0', '2', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('16', '2', '88888', '5896', '8888', '0', '2', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('17', '1', '1111', '145', '100', '0', '1', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('18', '1', '1111', '145', '100', '0', '1', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('19', '2', '88888', '5896', '8888', '0', '2', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('20', '2', '88888', '5896', '8888', '0', '2', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('21', '1', '1111', '145', '100', '0', '1', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('22', '1', '1111', '145', '100', '0', '1', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('23', '2', '88888', '5896', '8888', '0', '2', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('24', '2', '88888', '5896', '8888', '0', '2', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('25', '1', '1111', '145', '100', '0', '1', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('26', '1', '1111', '145', '100', '0', '1', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('27', '2', '88888', '5896', '8888', '0', '2', 'mldn-sale');
INSERT INTO `distribution_details` VALUES ('28', '2', '88888', '5896', '8888', '0', '2', 'mldn-sale');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `gid` bigint(20) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `wiid` bigint(20) default NULL,
  `stid` bigint(20) default NULL,
  `price` double default NULL,
  `weight` double default NULL,
  `photo` varchar(200) default NULL,
  `note` text,
  `lastin` datetime default NULL,
  `stornum` int(11) default NULL,
  `recorder` varchar(50) default NULL,
  `delflag` int(11) default NULL,
  PRIMARY KEY  (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'sadf', '2', '4', '54', '3535', 'group1/M00/00/00/wKgclVoF18WAflHNAAAAAAAAAAA3001152', 'dfgsdfg ', '2017-11-11 00:45:58', '0', 'mldn-market', '0');
INSERT INTO `goods` VALUES ('2', 'erter', '1', '1', '34', '34', 'group1/M00/00/00/wKgclVoF2HWAcPtFAAAAAAAAAAA7178177', 'fgsdfg ', '2017-11-11 00:48:54', '0', null, '0');
INSERT INTO `goods` VALUES ('3', 'fgdf', '1', '1', '3434', '342354', 'group1/M00/00/00/wKgclVoF2R-Ae0rjAAAAAAAAAAA0841281', 'sdfgsdf', '2017-11-11 00:51:43', '0', 'mldn-market', '0');
INSERT INTO `goods` VALUES ('4', 'dfadf', '2', '4', '4353', '435341', 'group1/M00/00/00/wKgclVoF2U-AdplnAADuokTT_sY822.jpg', 'dfgsdf', '2017-11-11 00:52:32', '0', 'mldn-market', '0');

-- ----------------------------
-- Table structure for level
-- ----------------------------
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level` (
  `lid` int(11) NOT NULL default '0',
  `title` varchar(50) default NULL,
  `losal` double default NULL,
  `hisal` double default NULL,
  PRIMARY KEY  (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of level
-- ----------------------------
INSERT INTO `level` VALUES ('0', '总裁', '30001', '99999');
INSERT INTO `level` VALUES ('1', '总监', '15001', '30000');
INSERT INTO `level` VALUES ('2', '部门经理', '8001', '15000');
INSERT INTO `level` VALUES ('3', '普通员工', '3000', '8000');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `mid` varchar(50) NOT NULL,
  `lid` int(11) default NULL,
  `did` bigint(20) default NULL,
  `name` varchar(50) default NULL,
  `salary` double default NULL,
  `phone` varchar(20) default NULL,
  `password` varchar(32) default NULL,
  `photo` varchar(200) default NULL,
  `note` text,
  `hiredate` date default NULL,
  `inmid` varchar(50) default NULL,
  `locked` int(11) default '0',
  PRIMARY KEY  (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('mldn-chief', '1', '1', '老张', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-10-10', null, '0');
INSERT INTO `member` VALUES ('mldn-dev', '2', '5', '老赵', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-10-14', 'mldn-human', '0');
INSERT INTO `member` VALUES ('mldn-finance', '2', '3', '老王', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-10-12', 'mldn-human', '0');
INSERT INTO `member` VALUES ('mldn-human', '2', '2', '老闽', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-10-11', null, '0');
INSERT INTO `member` VALUES ('mldn-log', '2', '7', '老孙', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-10-16', 'mldn-human', '0');
INSERT INTO `member` VALUES ('mldn-market', '2', '4', '老林', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-10-13', 'mldn-human', '0');
INSERT INTO `member` VALUES ('mldn-president', '0', '1', '老李', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-10-10', null, '0');
INSERT INTO `member` VALUES ('mldn-sale', '2', '6', '老孙', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-10-15', 'mldn-human', '0');
INSERT INTO `member` VALUES ('mldn-warehouse', '2', '8', '老阿', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-10-16', 'mldn-human', '0');
INSERT INTO `member` VALUES ('mldn1', '3', '2', '魔乐科技-1', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-11-11', 'mldn-human', '0');
INSERT INTO `member` VALUES ('mldn10', '3', '4', '魔乐科技-10', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-11-15', 'mldn1', '0');
INSERT INTO `member` VALUES ('mldn11', '3', '4', '魔乐科技-11', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-11-15', 'mldn1', '0');
INSERT INTO `member` VALUES ('mldn12', '3', '4', '魔乐科技-12', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-11-15', 'mldn1', '0');
INSERT INTO `member` VALUES ('mldn13', '3', '5', '魔乐科技-333333', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-11-15', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn14', '3', '5', '魔乐科技-14', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-11-15', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn15', '3', '5', '魔乐科技-15', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-11-15', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn16', '3', '5', '魔乐科技-16', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-11-15', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn17', '3', '5', '魔乐科技-17', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-11-15', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn18', '3', '6', '魔乐科技-18', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-11-15', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn19', '3', '6', '魔乐科技-19', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-11-15', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn2', '3', '2', '魔乐科技-2', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-11-11', 'mldn1', '0');
INSERT INTO `member` VALUES ('mldn20', '3', '6', '魔乐科技-20', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-11-15', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn21', '3', '6', '魔乐科技-21', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-11-15', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn22', '3', '6', '魔乐科技-22', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-11-15', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn23', '3', '6', '魔乐科技-23', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-11-15', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn24', '3', '6', '魔乐科技-24', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-11-15', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn25', '3', '6', '魔乐科技-25', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-11-15', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn26', '3', '7', '魔乐科技-26', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-12-16', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn27', '3', '7', '魔乐科技-27', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-12-16', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn28', '3', '7', '魔乐科技-28', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-12-16', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn29', '3', '7', '魔乐科技-29', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-12-16', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn3', '3', '3', '魔乐科技-3', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-11-12', 'mldn1', '0');
INSERT INTO `member` VALUES ('mldn30', '3', '7', '魔乐科技-30', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-12-16', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn31', '3', '7', '魔乐科技-31', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-12-16', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn32', '3', '7', '魔乐科技-32', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-12-16', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn33', '3', '7', '魔乐科技-33', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-12-16', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn34', '3', '7', '魔乐科技-34', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-12-16', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn35', '3', '7', '魔乐科技-35', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-12-16', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn36', '3', '7', '魔乐科技-36', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-12-16', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn37', '3', '7', '魔乐科技-37', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-12-16', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn38', '3', '7', '魔乐科技-38', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-12-16', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn39', '3', '7', '魔乐科技-39', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-12-16', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn4', '3', '3', '魔乐科技-4', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-11-12', 'mldn1', '0');
INSERT INTO `member` VALUES ('mldn40', '3', '7', '魔乐科技-40', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-12-16', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn5', '3', '3', '魔乐科技-5', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-11-12', 'mldn1', '0');
INSERT INTO `member` VALUES ('mldn50', '3', '8', '魔乐科技-50', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-12-16', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn51', '3', '8', '魔乐科技-51', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-12-16', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn52', '3', '8', '魔乐科技-52', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-12-16', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn53', '3', '8', '魔乐科技-53', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-12-16', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn54', '3', '8', '魔乐科技-54', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-12-16', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn55', '3', '8', '魔乐科技-55', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-12-16', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn56', '3', '8', '魔乐科技-56', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-12-16', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn57', '3', '8', '魔乐科技-57', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-12-16', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn58', '3', '8', '魔乐科技-58', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-12-16', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn59', '3', '8', '魔乐科技-59', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-12-16', 'mldn2', '0');
INSERT INTO `member` VALUES ('mldn6', '3', '4', '魔乐科技-6', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-11-13', 'mldn1', '0');
INSERT INTO `member` VALUES ('mldn7', '3', '4', '魔乐科技-7', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-11-13', 'mldn1', '0');
INSERT INTO `member` VALUES ('mldn8', '3', '4', '魔乐科技-8', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-11-15', 'mldn1', '0');
INSERT INTO `member` VALUES ('mldn9', '3', '4', '魔乐科技-9', null, '01051283346', 'EAB62A7769F0313F8D69CEBA32F4347E', 'nophoto.png', '很好的员工', '2010-11-15', 'mldn1', '0');

-- ----------------------------
-- Table structure for member_role
-- ----------------------------
DROP TABLE IF EXISTS `member_role`;
CREATE TABLE `member_role` (
  `mid` varchar(50) default NULL,
  `rid` varchar(50) default NULL,
  KEY `fk_mid2` (`mid`),
  KEY `fk_rid2` (`rid`),
  CONSTRAINT `fk_mid2` FOREIGN KEY (`mid`) REFERENCES `member` (`mid`),
  CONSTRAINT `fk_rid2` FOREIGN KEY (`rid`) REFERENCES `role` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_role
-- ----------------------------
INSERT INTO `member_role` VALUES ('admin', 'member');
INSERT INTO `member_role` VALUES ('admin', 'dept');
INSERT INTO `member_role` VALUES ('admin', 'news');
INSERT INTO `member_role` VALUES ('mldn', 'news');
INSERT INTO `member_role` VALUES ('mermaid', 'dept');

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `pid` bigint(20) NOT NULL auto_increment,
  `title` varchar(50) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES ('1', '北京市魔力科技');
INSERT INTO `province` VALUES ('2', '北京');
INSERT INTO `province` VALUES ('3', '重庆');
INSERT INTO `province` VALUES ('4', '福建');
INSERT INTO `province` VALUES ('5', '甘肃');
INSERT INTO `province` VALUES ('6', '广东');
INSERT INTO `province` VALUES ('7', '广西');
INSERT INTO `province` VALUES ('8', '贵州');
INSERT INTO `province` VALUES ('9', '海南');
INSERT INTO `province` VALUES ('10', '河北');
INSERT INTO `province` VALUES ('11', '黑龙江');
INSERT INTO `province` VALUES ('12', '河南');
INSERT INTO `province` VALUES ('13', '香港');
INSERT INTO `province` VALUES ('14', '湖北');
INSERT INTO `province` VALUES ('15', '湖南');
INSERT INTO `province` VALUES ('16', '江苏');
INSERT INTO `province` VALUES ('17', '江西');
INSERT INTO `province` VALUES ('18', '吉林');
INSERT INTO `province` VALUES ('19', '辽宁');
INSERT INTO `province` VALUES ('20', '澳门');
INSERT INTO `province` VALUES ('21', '内蒙古');
INSERT INTO `province` VALUES ('22', '宁夏');
INSERT INTO `province` VALUES ('23', '青海');
INSERT INTO `province` VALUES ('24', '山东');
INSERT INTO `province` VALUES ('25', '上海');
INSERT INTO `province` VALUES ('26', '山西');
INSERT INTO `province` VALUES ('27', '陕西');
INSERT INTO `province` VALUES ('28', '四川');
INSERT INTO `province` VALUES ('29', '台湾');
INSERT INTO `province` VALUES ('30', '天津');
INSERT INTO `province` VALUES ('31', '新疆');
INSERT INTO `province` VALUES ('32', '西藏');
INSERT INTO `province` VALUES ('33', '云南');
INSERT INTO `province` VALUES ('34', '浙江');
INSERT INTO `province` VALUES ('35', '安徽');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `rid` varchar(50) NOT NULL default '',
  `title` varchar(50) default NULL,
  PRIMARY KEY  (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('chief', '【管理部】查看信息');
INSERT INTO `role` VALUES ('customer', '【营销部】客户管理');
INSERT INTO `role` VALUES ('dept', '【人事部】部门信息管理');
INSERT INTO `role` VALUES ('distribution', '【营销部】出库管理');
INSERT INTO `role` VALUES ('goods', '【市场部】商品管理');
INSERT INTO `role` VALUES ('manage', '【仓储部】仓储管理');
INSERT INTO `role` VALUES ('member', '【人事部】雇员信息管理');
INSERT INTO `role` VALUES ('salegoods', '【营销部】商品销售');
INSERT INTO `role` VALUES ('storage', '【营销部】入库管理');
INSERT INTO `role` VALUES ('storageaudit', '【财务部】入库审核');
INSERT INTO `role` VALUES ('warehouse', '【仓储部】仓库管理');

-- ----------------------------
-- Table structure for storage_apply
-- ----------------------------
DROP TABLE IF EXISTS `storage_apply`;
CREATE TABLE `storage_apply` (
  `said` bigint(20) NOT NULL auto_increment,
  `title` varchar(50) default NULL,
  `pid` bigint(20) default NULL,
  `cid` bigint(20) default NULL,
  `wiid` bigint(20) default NULL,
  `wid` bigint(20) default NULL,
  `note` text,
  `status` int(11) default NULL,
  `appmid` varchar(50) default NULL,
  `auname` varchar(20) default NULL,
  `apptime` datetime default NULL,
  `autime` datetime default NULL,
  PRIMARY KEY  (`said`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_apply
-- ----------------------------
INSERT INTO `storage_apply` VALUES ('5', 'wang', '2', '5', '2', '3', 'tao', '1', 'mldn-1', null, '2017-11-09 00:00:00', null);
INSERT INTO `storage_apply` VALUES ('6', 'wang1', '2', '5', '2', '3', 'tao', '1', 'mldn-1', null, '2017-11-09 00:00:00', null);
INSERT INTO `storage_apply` VALUES ('7', 'wang2', '2', '5', '2', '3', 'tao', '5', 'mldn-1', '老王', '2017-11-09 00:00:00', '2017-11-11 02:11:25');
INSERT INTO `storage_apply` VALUES ('8', 'wang3', '2', '5', '2', '3', 'tao', '1', 'mldn-1', 'mldn-1', '2017-11-09 00:00:00', '2017-11-09 00:00:00');
INSERT INTO `storage_apply` VALUES ('9', 'wang4', '2', '5', '2', '3', 'tao', '1', 'mldn-1', 'mldn-1', '2017-11-09 00:00:00', '2017-11-09 00:00:00');
INSERT INTO `storage_apply` VALUES ('10', 'wang5', '2', '5', '2', '3', 'tao', '1', 'mldn-1', 'mldn-1', '2017-11-09 00:00:00', '2017-11-09 00:00:00');
INSERT INTO `storage_apply` VALUES ('11', 'wang6', '2', '5', '2', '3', 'tao', '5', 'mldn-1', 'mldn-1', '2017-11-09 00:00:00', '2017-11-09 00:00:00');
INSERT INTO `storage_apply` VALUES ('12', 'wang7', '2', '5', '2', '3', 'tao', '5', 'mldn-1', 'mldn-1', '2017-11-09 00:00:00', '2017-11-09 00:00:00');
INSERT INTO `storage_apply` VALUES ('13', 'wang8', '2', '5', '2', '3', 'tao', '5', 'mldn-1', 'mldn-1', '2017-11-09 00:00:00', '2017-11-09 00:00:00');
INSERT INTO `storage_apply` VALUES ('14', 'wang9', '2', '5', '2', '3', 'tao', '5', 'mldn-1', 'mldn-1', '2017-11-09 00:00:00', '2017-11-09 00:00:00');

-- ----------------------------
-- Table structure for storage_apply_details
-- ----------------------------
DROP TABLE IF EXISTS `storage_apply_details`;
CREATE TABLE `storage_apply_details` (
  `sadid` bigint(20) NOT NULL auto_increment,
  `gid` bigint(20) default NULL,
  `said` bigint(20) default NULL,
  `name` varchar(50) default NULL,
  `num` int(11) default NULL,
  `price` double default NULL,
  `weight` double default NULL,
  PRIMARY KEY  (`sadid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_apply_details
-- ----------------------------
INSERT INTO `storage_apply_details` VALUES ('3', '3', '1', 'zhang', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('4', '3', '1', 'zhang1', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('5', '3', '1', 'zhang2', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('6', '3', '1', 'zhang3', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('7', '3', '2', 'zhang', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('8', '3', '2', 'zhang2', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('9', '3', '2', 'zhang1', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('10', '3', '2', 'zhang3', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('11', '3', '3', 'zhang', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('12', '3', '3', 'zhang1', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('13', '3', '3', 'zhang2', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('14', '3', '3', 'zhang3', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('15', '3', '4', 'zhang', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('16', '3', '4', 'zhang1', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('17', '3', '4', 'zhang2', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('18', '3', '4', 'zhang3', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('19', '3', '5', 'zhang', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('20', '3', '5', 'zhang1', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('21', '3', '5', 'zhang2', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('22', '3', '5', 'zhang3', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('23', '3', '6', 'zhang', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('24', '3', '6', 'zhang1', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('25', '3', '6', 'zhang2', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('26', '3', '6', 'zhang3', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('27', '3', '7', 'zhang', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('28', '3', '7', 'zhang1', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('29', '3', '7', 'zhang2', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('30', '3', '7', 'zhang3', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('31', '3', '8', 'zhang', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('32', '3', '8', 'zhang1', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('33', '3', '8', 'zhang2', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('34', '3', '8', 'zhang3', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('35', '3', '9', 'zhang', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('36', '3', '9', 'zhang1', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('37', '3', '9', 'zhang2', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('38', '3', '9', 'zhang3', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('39', '3', '10', 'zhang', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('40', '3', '10', 'zhang1', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('41', '3', '10', 'zhang2', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('42', '3', '10', 'zhang3', '12', '12.2', '25.3');
INSERT INTO `storage_apply_details` VALUES ('43', '4', null, '你好', '5', '5.02', '2.5');

-- ----------------------------
-- Table structure for storage_apply_status
-- ----------------------------
DROP TABLE IF EXISTS `storage_apply_status`;
CREATE TABLE `storage_apply_status` (
  `sasid` int(50) NOT NULL,
  `sastitle` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_apply_status
-- ----------------------------
INSERT INTO `storage_apply_status` VALUES ('0', '未提交');
INSERT INTO `storage_apply_status` VALUES ('1', '待审核');
INSERT INTO `storage_apply_status` VALUES ('3', '已拒绝');
INSERT INTO `storage_apply_status` VALUES ('5', '已通过');

-- ----------------------------
-- Table structure for storage_record
-- ----------------------------
DROP TABLE IF EXISTS `storage_record`;
CREATE TABLE `storage_record` (
  `srid` bigint(20) NOT NULL auto_increment,
  `said` bigint(20) default NULL,
  `gid` bigint(20) default NULL,
  `name` varchar(50) default NULL,
  `num` int(11) default NULL,
  `price` double default NULL,
  `weight` double default NULL,
  `status` int(11) default NULL,
  `inmid` varchar(50) default NULL,
  PRIMARY KEY  (`srid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_record
-- ----------------------------
INSERT INTO `storage_record` VALUES ('1', '1', '1', 'cc', '10', '10', '10', '0', 'vv');
INSERT INTO `storage_record` VALUES ('2', '2', '2', 'cc', '568', '789', '741', '0', 'mldn');
INSERT INTO `storage_record` VALUES ('3', '5', '3', 'zhang', '12', '12.2', '25.3', '5', '老阿');
INSERT INTO `storage_record` VALUES ('4', '5', '3', 'zhang1', '12', '12.2', '25.3', '5', '老阿');
INSERT INTO `storage_record` VALUES ('5', '5', '3', 'zhang2', '12', '12.2', '25.3', '5', '老阿');
INSERT INTO `storage_record` VALUES ('6', '5', '3', 'zhang3', '12', '12.2', '25.3', '5', '老阿');
INSERT INTO `storage_record` VALUES ('7', '6', '3', 'zhang', '12', '12.2', '25.3', '5', '老阿');
INSERT INTO `storage_record` VALUES ('8', '6', '3', 'zhang1', '12', '12.2', '25.3', '5', '老阿');
INSERT INTO `storage_record` VALUES ('9', '6', '3', 'zhang2', '12', '12.2', '25.3', '5', '老阿');
INSERT INTO `storage_record` VALUES ('10', '6', '3', 'zhang3', '12', '12.2', '25.3', '5', '老阿');

-- ----------------------------
-- Table structure for subtype
-- ----------------------------
DROP TABLE IF EXISTS `subtype`;
CREATE TABLE `subtype` (
  `stid` bigint(20) NOT NULL auto_increment,
  `title` varchar(50) default NULL,
  `wiid` bigint(20) default NULL,
  PRIMARY KEY  (`stid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subtype
-- ----------------------------
INSERT INTO `subtype` VALUES ('1', '帽子', '1');
INSERT INTO `subtype` VALUES ('2', '鞋子', '1');
INSERT INTO `subtype` VALUES ('3', '时装', '1');
INSERT INTO `subtype` VALUES ('4', '主板', '2');
INSERT INTO `subtype` VALUES ('5', 'U盘', '2');
INSERT INTO `subtype` VALUES ('6', '硬盘', '2');
INSERT INTO `subtype` VALUES ('7', '手机', '2');
INSERT INTO `subtype` VALUES ('8', '平板', '2');
INSERT INTO `subtype` VALUES ('9', '编程图书', '3');
INSERT INTO `subtype` VALUES ('10', '大学教材', '3');
INSERT INTO `subtype` VALUES ('11', '数据库', '3');
INSERT INTO `subtype` VALUES ('12', '大数据', '3');
INSERT INTO `subtype` VALUES ('13', '沙发', '4');
INSERT INTO `subtype` VALUES ('14', '椅子', '4');
INSERT INTO `subtype` VALUES ('15', '桌子', '4');
INSERT INTO `subtype` VALUES ('16', '冰箱', '5');
INSERT INTO `subtype` VALUES ('17', '电视', '5');
INSERT INTO `subtype` VALUES ('18', '洗衣机', '5');

-- ----------------------------
-- Table structure for warehouse
-- ----------------------------
DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE `warehouse` (
  `wid` bigint(20) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `pid` bigint(20) default NULL,
  `cid` bigint(20) default NULL,
  `wiid` bigint(20) default NULL,
  `address` varchar(50) default NULL,
  `area` double default NULL,
  `maximum` int(11) default NULL,
  `currnum` int(11) default NULL,
  `photo` varchar(200) default NULL,
  `note` text,
  `recorder` varchar(50) default NULL,
  `admin` varchar(50) default NULL,
  PRIMARY KEY  (`wid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouse
-- ----------------------------
INSERT INTO `warehouse` VALUES ('1', '国际', '6', '59', '1', '广东 惠州 川', null, '80', '20', '11111', '阿斯顿', null, null);
INSERT INTO `warehouse` VALUES ('2', '荒川', '6', '56', '2', '广东 惠州 域', null, '50', '50', '22222', '3232', null, null);
INSERT INTO `warehouse` VALUES ('3', '古树', '6', '57', '5', '广东 惠州 鑫', null, '70', '50', '33333', '范德萨', null, null);
INSERT INTO `warehouse` VALUES ('4', '天目湖', '6', '60', '4', '广东 惠州 州', null, '60', '20', '44444', '实打实', null, null);

-- ----------------------------
-- Table structure for witem
-- ----------------------------
DROP TABLE IF EXISTS `witem`;
CREATE TABLE `witem` (
  `wiid` bigint(20) NOT NULL auto_increment,
  `title` varchar(50) default NULL,
  PRIMARY KEY  (`wiid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of witem
-- ----------------------------
INSERT INTO `witem` VALUES ('1', '服装');
INSERT INTO `witem` VALUES ('2', '电子');
INSERT INTO `witem` VALUES ('3', '图书');
INSERT INTO `witem` VALUES ('4', '家居');
INSERT INTO `witem` VALUES ('5', '家电');
