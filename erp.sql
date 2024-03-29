/*
 Navicat Premium Data Transfer

 Source Server         : Mysql
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : erp

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 11/03/2024 10:59:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bus_customer
-- ----------------------------
DROP TABLE IF EXISTS `bus_customer`;
CREATE TABLE `bus_customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客户编号',
  `customername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '客户姓名',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '客户地址',
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '客户公司电话',
  `linkman` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人手机',
  `bank` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '开户银行',
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '客户银行账号',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人邮箱',
  `fax` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人传真',
  `zipcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '客户邮编',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bus_customer
-- ----------------------------
INSERT INTO `bus_customer` VALUES (1, '小张超市', '武汉', '027-9123131', '张大明', '13812312312321312', '中国银行', '654431331343413', '213123@sina.com', '430000', '111');
INSERT INTO `bus_customer` VALUES (2, '小明超市', '深圳', '0755-9123131', '张小明', '13812312312321312', '中国银行', '654431331343413', '213123@sina.com', '430000', '222');
INSERT INTO `bus_customer` VALUES (3, '快七超市', '武汉', '027-11011011', '雷生', '13434134131', '招商银行', '6543123341334133', '6666@66.com', '545341', '430000');

-- ----------------------------
-- Table structure for bus_goods
-- ----------------------------
DROP TABLE IF EXISTS `bus_goods`;
CREATE TABLE `bus_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品编号',
  `goodsname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品名称',
  `produceplace` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品产地',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品规格',
  `goodspackage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '包装',
  `productcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生产批号',
  `promitcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '批准文号',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品描述',
  `price` double DEFAULT NULL COMMENT '商品售价',
  `number` int(11) DEFAULT NULL COMMENT '商品数量',
  `dangernum` int(11) DEFAULT NULL COMMENT '预警数量',
  `goodsimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品图片',
  `typeid` int(11) DEFAULT NULL COMMENT '商品分类编号',
  `providerid` int(11) DEFAULT NULL COMMENT '供应商编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bus_goods
-- ----------------------------
INSERT INTO `bus_goods` VALUES (1, '娃哈哈', '武汉', '120ML', '瓶', 'PH12345', 'PZ1234', '小孩子都爱的', 2, 488, 10, '2019-11-28/1722929face44a4381b5c11f6f310c02.jpg', 1, 3);
INSERT INTO `bus_goods` VALUES (2, '旺旺雪饼[小包]', '仙桃', '包', '袋', 'PH12312312', 'PZ12312', '好吃不上火', 4, 1100, 10, '2019-12-01/4ff0da80920042129c59c21e9d551299.jpeg', 1, 1);
INSERT INTO `bus_goods` VALUES (3, '旺旺大礼包', '仙桃', '盒', '盒', '11', '11', '111', 28, 1021, 100, '2018-12-25/userface3.jpg', 1, 1);
INSERT INTO `bus_goods` VALUES (4, '娃哈哈', '武汉', '200ML', '瓶', '11', '111', '12321', 3, 1100, 10, '2018-12-25/userface4.jpg', 1, 3);
INSERT INTO `bus_goods` VALUES (6, '旺旺超级大礼包', '1111', '111', '111', '1', '111', '旺旺超级大礼包', 1, 11, 1, 'images/defaultgoodsimg.jpg', 1, 1);
INSERT INTO `bus_goods` VALUES (7, '旺旺超级大礼包', '广州', '1', '1', '1', '1', '旺旺超级大礼包', 1, 1, 1, '2019-11-28/a958089b46d04857a96f7a7a9848c91a.jpg', 1, 1);
INSERT INTO `bus_goods` VALUES (9, '达利园小面包', '广州', '200ML', '瓶', '11', '111', '达利园小面包', 3, 1100, 10, '2019-11-28/ab96eb6b0db54f6780b047cc56106887.jpg_temp', 1, 2);

-- ----------------------------
-- Table structure for bus_goods_type
-- ----------------------------
DROP TABLE IF EXISTS `bus_goods_type`;
CREATE TABLE `bus_goods_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '分类名称',
  `pid` int(11) DEFAULT NULL COMMENT '父类编号',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '分类图标',
  `open` int(11) DEFAULT NULL COMMENT '是否展开（0展开，1不展开）',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bus_inport
-- ----------------------------
DROP TABLE IF EXISTS `bus_inport`;
CREATE TABLE `bus_inport`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paytype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `inporttime` datetime(0) DEFAULT NULL,
  `operateperson` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `inportprice` double DEFAULT NULL,
  `providerid` int(11) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bus_inport
-- ----------------------------
INSERT INTO `bus_inport` VALUES (1, '微信', '2018-05-07 00:00:00', '张三', 100, '备注', 3.5, 1, 1);
INSERT INTO `bus_inport` VALUES (2, '支付宝', '2018-05-07 00:00:00', '张三', 1000, '无', 2.5, 3, 3);
INSERT INTO `bus_inport` VALUES (3, '银联', '2018-05-07 00:00:00', '张三', 100, '1231', 111, 3, 3);
INSERT INTO `bus_inport` VALUES (4, '银联', '2018-05-07 00:00:00', '张三', 1000, '无', 2, 3, 1);
INSERT INTO `bus_inport` VALUES (5, '银联', '2018-05-07 00:00:00', '张三', 100, '无', 1, 3, 1);
INSERT INTO `bus_inport` VALUES (6, '银联', '2018-05-07 00:00:00', '张三', 100, '1231', 2.5, 1, 2);
INSERT INTO `bus_inport` VALUES (8, '支付宝', '2018-05-07 00:00:00', '张三', 100, '', 1, 3, 1);
INSERT INTO `bus_inport` VALUES (10, '支付宝', '2018-08-07 17:17:57', '超级管理员', 100, 'sadfasfdsa', 1.5, 3, 1);
INSERT INTO `bus_inport` VALUES (11, '支付宝', '2018-09-17 16:12:25', '超级管理员', 21, '21', 21, 1, 3);
INSERT INTO `bus_inport` VALUES (12, '微信', '2018-12-25 16:48:24', '超级管理员', 100, '123213213', 12321321, 3, 1);
INSERT INTO `bus_inport` VALUES (13, '微信', NULL, NULL, 100, '', 3.5, 2, 9);

-- ----------------------------
-- Table structure for bus_outport
-- ----------------------------
DROP TABLE IF EXISTS `bus_outport`;
CREATE TABLE `bus_outport`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `providerid` int(11) DEFAULT NULL,
  `paytype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `outputtime` datetime(0) DEFAULT NULL,
  `operateperson` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `outportprice` double(10, 2) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bus_outport
-- ----------------------------
INSERT INTO `bus_outport` VALUES (1, 3, '微信', '2019-08-16 08:19:50', '超级管理员', 12321321.00, 1, '', 1);
INSERT INTO `bus_outport` VALUES (2, 3, '微信', '2019-08-16 08:26:54', '超级管理员', 12321321.00, 11, '11', 1);

-- ----------------------------
-- Table structure for bus_provider
-- ----------------------------
DROP TABLE IF EXISTS `bus_provider`;
CREATE TABLE `bus_provider`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '供应商编号',
  `providername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '供应商名称',
  `zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '供应商邮编',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '供应商地址',
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '供应商公司联系电话',
  `linkman` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人手机',
  `bank` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '开户银行',
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '银行账号',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '供应商邮箱',
  `fax` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '供应商传真',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bus_provider
-- ----------------------------
INSERT INTO `bus_provider` VALUES (1, '旺旺食品', '434000', '仙桃', '0728-4124312', '小明', '13413441141', '中国农业银行', '654124345131', '12312321@sina.com', '5123123');
INSERT INTO `bus_provider` VALUES (2, '达利园食品', '430000', '汉川', '0728-4124312', '大明', '13413441141', '中国农业银行', '654124345131', '12312321@sina.com', '5123123');
INSERT INTO `bus_provider` VALUES (3, '娃哈哈集团', '513131', '杭州', '21312', '小晨', '12312', '建设银行', '512314141541', '123131', '312312');

-- ----------------------------
-- Table structure for bus_sales
-- ----------------------------
DROP TABLE IF EXISTS `bus_sales`;
CREATE TABLE `bus_sales`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerid` int(11) DEFAULT NULL,
  `paytype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `salestime` datetime(0) DEFAULT NULL,
  `operateperson` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `saleprice` decimal(10, 2) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bus_salesback
-- ----------------------------
DROP TABLE IF EXISTS `bus_salesback`;
CREATE TABLE `bus_salesback`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerid` int(11) DEFAULT NULL,
  `paytype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `salesbacktime` datetime(0) DEFAULT NULL,
  `salebackprice` double(10, 2) DEFAULT NULL,
  `operateperson` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门编号',
  `pid` int(11) DEFAULT NULL COMMENT '父级部门编号',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '父级部门名称',
  `open` int(11) DEFAULT NULL COMMENT '是否展开(0-展开,1-不展开)',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '部门地址',
  `createtime` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1, 0, '总经办', 1, '深圳', '2019-04-10 14:06:32', '大BOSS');
INSERT INTO `sys_dept` VALUES (2, 1, '销售部', 0, '武汉', '2019-04-10 14:06:32', '程序员屌丝');
INSERT INTO `sys_dept` VALUES (3, 1, '运营部', 0, '武汉', '2019-04-10 14:06:32', '无');
INSERT INTO `sys_dept` VALUES (4, 1, '生产部', 0, '武汉', '2019-04-10 14:06:32', '无');
INSERT INTO `sys_dept` VALUES (5, 2, '销售一部', 0, '武汉', '2019-04-10 14:06:32', '销售一部');
INSERT INTO `sys_dept` VALUES (6, 2, '销售二部', 0, '武汉', '2019-04-10 14:06:32', '销售二部');
INSERT INTO `sys_dept` VALUES (7, 3, '运营一部', 0, '武汉', '2019-04-10 14:06:32', '运营一部');
INSERT INTO `sys_dept` VALUES (8, 2, '销售三部', 0, '11', '2019-04-10 14:06:32', '销售三部');
INSERT INTO `sys_dept` VALUES (9, 2, '销售四部', 0, '222', '2019-04-10 14:06:32', '销售四部');
INSERT INTO `sys_dept` VALUES (10, 2, '销售五部', 0, '33', '2019-04-10 14:06:32', '销售五部');
INSERT INTO `sys_dept` VALUES (22, 4, '生产一部', 1, '深圳', '2019-11-23 09:50:23', 'xxx');

-- ----------------------------
-- Table structure for sys_leavebill
-- ----------------------------
DROP TABLE IF EXISTS `sys_leavebill`;
CREATE TABLE `sys_leavebill`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '请假编号',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '请假标题',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '请假内容',
  `days` double NOT NULL COMMENT '请假天数',
  `leavetime` datetime(0) NOT NULL COMMENT '请假开始时间',
  `createtime` datetime(0) NOT NULL COMMENT '创建时间',
  `userid` int(11) NOT NULL COMMENT '请假人id',
  `state` int(10) NOT NULL COMMENT '状态：0-未提交，1-待审批，2-审核通过，3-审核不通过，4-已放弃',
  `checkPerson` int(11) DEFAULT NULL COMMENT '审批人',
  `committime` datetime(0) DEFAULT NULL COMMENT '请假单提交时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_leavebill
-- ----------------------------
INSERT INTO `sys_leavebill` VALUES (1, '请假单1', '请假单1', 2, '2019-12-02 00:00:00', '2019-12-02 16:05:42', 3, 1, 2, '2019-12-03 17:51:52');
INSERT INTO `sys_leavebill` VALUES (2, '请假单2', '请假单2', 3, '2019-12-26 00:00:00', '2020-01-03 16:06:25', 3, 1, 2, '2019-12-03 17:51:52');
INSERT INTO `sys_leavebill` VALUES (3, 'xx', '22', 2, '2019-12-02 00:00:00', '2019-12-02 17:49:57', 3, 1, 2, '2019-12-03 17:51:52');
INSERT INTO `sys_leavebill` VALUES (4, '请假回家', '回家', 2, '2019-12-02 00:00:00', '2019-12-02 21:42:38', 3, 0, 2, '2019-12-03 17:51:52');
INSERT INTO `sys_leavebill` VALUES (7, 'test', 'xx', 2, '2019-12-02 00:00:00', '2019-12-02 23:07:11', 3, 0, 2, '2019-12-03 17:51:52');
INSERT INTO `sys_leavebill` VALUES (8, 'test', '33333', 2, '2019-12-02 00:00:00', '2019-12-02 23:07:11', 3, 0, 2, '2019-12-03 17:51:52');
INSERT INTO `sys_leavebill` VALUES (9, '请假回老家', '111', 5, '2019-12-04 00:00:00', '2019-12-04 11:13:58', 3, 1, 2, '2019-12-04 11:15:15');
INSERT INTO `sys_leavebill` VALUES (10, '赵六的请假', 'xxx', 2, '2019-12-04 00:00:00', '2019-12-04 14:55:44', 4, 3, 3, '2019-12-04 15:16:50');
INSERT INTO `sys_leavebill` VALUES (11, 'x', 'x', 1, '2019-12-26 00:00:00', '2019-12-04 14:57:43', 4, 1, 3, NULL);
INSERT INTO `sys_leavebill` VALUES (12, '2', '2', 2, '2019-12-04 00:00:00', '2019-12-04 14:58:50', 4, 2, 3, NULL);
INSERT INTO `sys_leavebill` VALUES (13, '333', '333', 33, '2019-12-04 00:00:00', '2019-12-04 14:59:33', 4, 2, 3, NULL);
INSERT INTO `sys_leavebill` VALUES (14, '9', 'cnm', 9, '2019-12-04 00:00:00', '2019-12-04 15:00:14', 4, 1, 3, '2019-12-04 15:20:08');
INSERT INTO `sys_leavebill` VALUES (15, '11', '11', 11, '2019-12-04 00:00:00', '2019-12-04 15:17:54', 4, 0, 3, NULL);
INSERT INTO `sys_leavebill` VALUES (16, '11', '11', 11, '2019-12-04 00:00:00', '2019-12-04 15:17:54', 4, 0, 3, NULL);

-- ----------------------------
-- Table structure for sys_leavebill_check
-- ----------------------------
DROP TABLE IF EXISTS `sys_leavebill_check`;
CREATE TABLE `sys_leavebill_check`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '审批意见编号',
  `replyContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '审批回复内容',
  `checkUserId` int(11) NOT NULL COMMENT '审批人',
  `checkTime` datetime(0) NOT NULL COMMENT '审批时间',
  `leavebillId` int(11) NOT NULL COMMENT '请假单id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_leavebill_check
-- ----------------------------
INSERT INTO `sys_leavebill_check` VALUES (1, '同意', 2, '2019-12-03 14:51:07', 7);
INSERT INTO `sys_leavebill_check` VALUES (2, '不同意', 2, '2019-12-02 14:53:26', 7);
INSERT INTO `sys_leavebill_check` VALUES (3, 'x', 2, '2019-12-01 14:53:38', 7);
INSERT INTO `sys_leavebill_check` VALUES (4, '同意', 1, '2019-12-03 16:57:15', 8);
INSERT INTO `sys_leavebill_check` VALUES (5, '通过', 1, '2019-12-03 17:02:36', 1);
INSERT INTO `sys_leavebill_check` VALUES (6, '不同意', 1, '2019-12-03 17:03:25', 3);
INSERT INTO `sys_leavebill_check` VALUES (7, '', 3, '2019-12-04 15:09:45', 14);
INSERT INTO `sys_leavebill_check` VALUES (8, '同意', 3, '2019-12-04 15:09:58', 13);
INSERT INTO `sys_leavebill_check` VALUES (9, '同意', 3, '2019-12-04 15:09:58', 13);
INSERT INTO `sys_leavebill_check` VALUES (10, '同意', 3, '2019-12-04 15:10:05', 12);
INSERT INTO `sys_leavebill_check` VALUES (11, '', 3, '2019-12-04 15:10:35', 10);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志编号',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '日志内容',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '日志操作类型',
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '执行人',
  `userid` int(11) DEFAULT NULL COMMENT '执行人编号',
  `loginip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '登录ip',
  `createtime` datetime(0) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (1, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-11 16:50:30');
INSERT INTO `sys_log` VALUES (2, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-11 16:59:15');
INSERT INTO `sys_log` VALUES (3, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-11 17:48:28');
INSERT INTO `sys_log` VALUES (4, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-12 12:07:41');
INSERT INTO `sys_log` VALUES (5, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-12 14:32:21');
INSERT INTO `sys_log` VALUES (6, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-12 16:39:45');
INSERT INTO `sys_log` VALUES (7, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-12 17:45:41');
INSERT INTO `sys_log` VALUES (8, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-12 17:45:59');
INSERT INTO `sys_log` VALUES (9, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-12 17:46:01');
INSERT INTO `sys_log` VALUES (10, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-12 17:46:03');
INSERT INTO `sys_log` VALUES (11, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-12 17:46:05');
INSERT INTO `sys_log` VALUES (12, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-12 17:46:07');
INSERT INTO `sys_log` VALUES (13, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-13 11:49:16');
INSERT INTO `sys_log` VALUES (14, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-13 12:01:09');
INSERT INTO `sys_log` VALUES (15, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-13 15:07:40');
INSERT INTO `sys_log` VALUES (16, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-13 15:25:06');
INSERT INTO `sys_log` VALUES (17, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-13 15:53:18');
INSERT INTO `sys_log` VALUES (18, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-13 15:55:24');
INSERT INTO `sys_log` VALUES (19, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-13 17:05:32');
INSERT INTO `sys_log` VALUES (20, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-15 22:00:27');
INSERT INTO `sys_log` VALUES (21, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-16 10:56:07');
INSERT INTO `sys_log` VALUES (22, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-16 16:17:57');
INSERT INTO `sys_log` VALUES (23, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-16 17:02:38');
INSERT INTO `sys_log` VALUES (24, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-16 17:36:20');
INSERT INTO `sys_log` VALUES (25, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-17 14:19:58');
INSERT INTO `sys_log` VALUES (26, '用户登录', '登录操作', 'system-超级管理员', 1, '0:0:0:0:0:0:0:1', '2019-12-17 15:05:23');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告编号',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公告标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '公告内容',
  `createtime` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `modifytime` datetime(0) DEFAULT NULL COMMENT '修改时间',
  `opername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发布人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '2019年就要结束了', '<p>2019年就要结束了</p>', '2019-12-03 17:38:17', NULL, '超级管理员');
INSERT INTO `sys_notice` VALUES (2, '双12要来了', '双12来了》。。', '2019-12-03 17:38:38', NULL, '超级管理员');
INSERT INTO `sys_notice` VALUES (3, '圣诞节怎么过', '圣诞节怎么过呢....', '2019-12-03 17:38:55', NULL, '超级管理员');
INSERT INTO `sys_notice` VALUES (4, '2020元旦放假通知', '<p>2020元旦放假通知</p>', '2019-12-03 17:40:14', NULL, '超级管理员');
INSERT INTO `sys_notice` VALUES (5, '寒假放假通知', '<p>寒假放假通知...</p>', '2019-12-03 17:40:28', NULL, '超级管理员');
INSERT INTO `sys_notice` VALUES (6, '春节放假安排', '<p>春节放假安排</p>', '2019-12-03 17:40:53', NULL, '超级管理员');
INSERT INTO `sys_notice` VALUES (7, 'x', 'x<img src=\"http://localhost:8080/resources/layui/images/face/0.gif\" alt=\"[微笑]\">', '2019-12-11 17:49:39', NULL, '超级管理员');
INSERT INTO `sys_notice` VALUES (8, '腾讯放假通知', '<p>公司全体员工：</p><p>&nbsp; &nbsp; &nbsp;根据国务院办公厅通知，2015年元旦放假安排如下:</p><p>&nbsp; &nbsp; &nbsp;2016年1月1日(元旦，星期四)、1月2日(星期五)、1月3日是(星期六)放假三天。1月4日(星期日)调体上班。</p><p>&nbsp; &nbsp; &nbsp; 节假日期间，各单位要妥善安排好值班和安全、保卫、防火等工作，遇有重大突发事件发生，要按照规定及时报告并妥善处置，确保人民群众祥和平安度过节日假期。</p><p style=\"text-align: right;\"><br></p><p style=\"text-align: right;\">人事部</p><p style=\"text-align: right; \">2019年12月13日</p>', '2019-12-12 12:21:32', NULL, '超级管理员');
INSERT INTO `sys_notice` VALUES (9, '2', '2', '2019-12-12 14:46:29', NULL, '超级管理员');
INSERT INTO `sys_notice` VALUES (10, '222', '222', '2019-12-12 14:46:46', NULL, '超级管理员');
INSERT INTO `sys_notice` VALUES (11, 'xxqqq', '', '2019-12-12 16:40:00', NULL, '超级管理员');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单权限编号',
  `pid` int(11) DEFAULT NULL COMMENT '所属菜单',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限类型[menu/permission]',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单权限名称',
  `percode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限编码[只有type= permission才有  user:view]',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单图标',
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单跳转请求路径',
  `open` int(11) DEFAULT NULL COMMENT '菜单是否展开(0展开，1不展开)',
  `ordernum` int(11) DEFAULT NULL COMMENT '排序码',
  `available` int(11) DEFAULT NULL COMMENT '状态【0不可用1可用】',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES (1, 0, 'menu', '进销存管理系统', NULL, '&#xe68e;', '', 1, 1, 1);
INSERT INTO `sys_permission` VALUES (2, 1, 'menu', '基础管理', NULL, '&#xe857;', '', 1, 2, 1);
INSERT INTO `sys_permission` VALUES (3, 1, 'menu', '进货管理', NULL, '&#xe645;', '', 0, 3, 1);
INSERT INTO `sys_permission` VALUES (4, 1, 'menu', '销售管理', NULL, '&#xe611;', '', 0, 4, 1);
INSERT INTO `sys_permission` VALUES (5, 1, 'menu', '系统管理', NULL, '&#xe614;', '', 0, 5, 1);
INSERT INTO `sys_permission` VALUES (6, 1, 'menu', '其它管理', NULL, '&#xe628;', '', 0, 6, 1);
INSERT INTO `sys_permission` VALUES (7, 2, 'menu', '客户管理', NULL, '&#xe651;', '/bus/toCustomerManager', 0, 7, 1);
INSERT INTO `sys_permission` VALUES (8, 2, 'menu', '供应商管理', NULL, '&#xe658;', '/bus/toProviderManager', 0, 8, 1);
INSERT INTO `sys_permission` VALUES (9, 2, 'menu', '商品管理', NULL, '&#xe657;', '/bus/toGoodsManager', 0, 9, 1);
INSERT INTO `sys_permission` VALUES (10, 3, 'menu', '商品进货', NULL, '&#xe756;', '/bus/toInportManager', 0, 10, 1);
INSERT INTO `sys_permission` VALUES (11, 3, 'menu', '商品退货查询', NULL, '&#xe65a;', '/bus/toOutportManager', 0, 11, 1);
INSERT INTO `sys_permission` VALUES (12, 4, 'menu', '商品销售', NULL, '&#xe65b;', '', 0, 12, 1);
INSERT INTO `sys_permission` VALUES (13, 4, 'menu', '销售退货查询', NULL, '&#xe770;', '', 0, 13, 1);
INSERT INTO `sys_permission` VALUES (14, 5, 'menu', '部门管理', NULL, '&#xe770;', '/sys/toDeptManager', 0, 14, 1);
INSERT INTO `sys_permission` VALUES (15, 5, 'menu', '菜单管理', NULL, '&#xe857;', '/sys/toMenuManager', 0, 15, 1);
INSERT INTO `sys_permission` VALUES (16, 5, 'menu', '权限管理', '', '&#xe857;', '/sys/toPermissionManager', 0, 16, 1);
INSERT INTO `sys_permission` VALUES (17, 5, 'menu', '角色管理', '', '&#xe650;', '/sys/toRoleManager', 0, 17, 1);
INSERT INTO `sys_permission` VALUES (18, 5, 'menu', '用户管理', '', '&#xe612;', '/sys/toUserManager', 0, 18, 1);
INSERT INTO `sys_permission` VALUES (21, 6, 'menu', '登陆日志', NULL, '&#xe675;', '/sys/toLogManager', 0, 21, 1);
INSERT INTO `sys_permission` VALUES (22, 6, 'menu', '系统公告', NULL, '&#xe756;', '/sys/toNoticeManager', 0, 22, 1);
INSERT INTO `sys_permission` VALUES (23, 6, 'menu', '图标管理', NULL, '&#xe670;', '../resources/page/icon.html', 0, 23, 1);
INSERT INTO `sys_permission` VALUES (30, 14, 'permission', '添加部门', 'dept:create', '', NULL, 0, 24, 1);
INSERT INTO `sys_permission` VALUES (31, 14, 'permission', '修改部门', 'dept:update', '', NULL, 0, 26, 1);
INSERT INTO `sys_permission` VALUES (32, 14, 'permission', '删除部门', 'dept:delete', '', NULL, 0, 27, 1);
INSERT INTO `sys_permission` VALUES (34, 15, 'permission', '添加菜单', 'menu:create', '', '', 0, 29, 1);
INSERT INTO `sys_permission` VALUES (35, 15, 'permission', '修改菜单', 'menu:update', '', NULL, 0, 30, 1);
INSERT INTO `sys_permission` VALUES (36, 15, 'permission', '删除菜单', 'menu:delete', '', NULL, 0, 31, 1);
INSERT INTO `sys_permission` VALUES (38, 16, 'permission', '添加权限', 'permission:create', '', NULL, 0, 33, 1);
INSERT INTO `sys_permission` VALUES (39, 16, 'permission', '修改权限', 'permission:update', '', NULL, 0, 34, 1);
INSERT INTO `sys_permission` VALUES (40, 16, 'permission', '删除权限', 'permission:delete', '', NULL, 0, 35, 1);
INSERT INTO `sys_permission` VALUES (42, 17, 'permission', '添加角色', 'role:create', '', NULL, 0, 37, 1);
INSERT INTO `sys_permission` VALUES (43, 17, 'permission', '修改角色', 'role:update', '', NULL, 0, 38, 1);
INSERT INTO `sys_permission` VALUES (44, 17, 'permission', '角色删除', 'role:delete', '', NULL, 0, 39, 1);
INSERT INTO `sys_permission` VALUES (46, 17, 'permission', '分配权限', 'role:selectPermission', '', NULL, 0, 41, 1);
INSERT INTO `sys_permission` VALUES (47, 18, 'permission', '添加用户', 'user:create', '', NULL, 0, 42, 1);
INSERT INTO `sys_permission` VALUES (48, 18, 'permission', '修改用户', 'user:update', '', NULL, 0, 43, 1);
INSERT INTO `sys_permission` VALUES (49, 18, 'permission', '删除用户', 'user:delete', '', NULL, 0, 44, 1);
INSERT INTO `sys_permission` VALUES (51, 18, 'permission', '用户分配角色', 'user:selectRole', '', NULL, 0, 46, 1);
INSERT INTO `sys_permission` VALUES (52, 18, 'permission', '重置密码', 'user:resetPwd', NULL, NULL, 0, 47, 1);
INSERT INTO `sys_permission` VALUES (53, 14, 'permission', '部门查询', 'dept:view', NULL, NULL, 0, 48, 1);
INSERT INTO `sys_permission` VALUES (54, 15, 'permission', '菜单查询', 'menu:view', NULL, NULL, 0, 49, 1);
INSERT INTO `sys_permission` VALUES (55, 16, 'permission', '权限查询', 'permission:view', NULL, NULL, 0, 50, 1);
INSERT INTO `sys_permission` VALUES (56, 17, 'permission', '角色查询', 'role:view', NULL, NULL, 0, 51, 1);
INSERT INTO `sys_permission` VALUES (57, 18, 'permission', '用户查询', 'user:view', NULL, NULL, 0, 52, 1);
INSERT INTO `sys_permission` VALUES (68, 7, 'permission', '客户查询', 'customer:view', NULL, NULL, NULL, 60, 1);
INSERT INTO `sys_permission` VALUES (69, 7, 'permission', '客户添加', 'customer:create', NULL, NULL, NULL, 61, 1);
INSERT INTO `sys_permission` VALUES (70, 7, 'permission', '客户修改', 'customer:update', NULL, NULL, NULL, 62, 1);
INSERT INTO `sys_permission` VALUES (71, 7, 'permission', '客户删除', 'customer:delete', NULL, NULL, NULL, 63, 1);
INSERT INTO `sys_permission` VALUES (73, 21, 'permission', '日志查询', 'info:view', NULL, NULL, NULL, 65, 1);
INSERT INTO `sys_permission` VALUES (74, 21, 'permission', '日志删除', 'info:delete', NULL, NULL, NULL, 66, 1);
INSERT INTO `sys_permission` VALUES (75, 21, 'permission', '日志批量删除', 'info:batchdelete', NULL, NULL, NULL, 67, 1);
INSERT INTO `sys_permission` VALUES (76, 22, 'permission', '公告查询', 'notice:view', NULL, NULL, NULL, 68, 1);
INSERT INTO `sys_permission` VALUES (77, 22, 'permission', '公告添加', 'notice:create', NULL, NULL, NULL, 69, 1);
INSERT INTO `sys_permission` VALUES (78, 22, 'permission', '公告修改', 'notice:update', NULL, NULL, NULL, 70, 1);
INSERT INTO `sys_permission` VALUES (79, 22, 'permission', '公告删除', 'notice:delete', NULL, NULL, NULL, 71, 1);
INSERT INTO `sys_permission` VALUES (81, 8, 'permission', '供应商查询', 'provider:view', NULL, NULL, NULL, 73, 1);
INSERT INTO `sys_permission` VALUES (82, 8, 'permission', '供应商添加', 'provider:create', NULL, NULL, NULL, 74, 1);
INSERT INTO `sys_permission` VALUES (83, 8, 'permission', '供应商修改', 'provider:update', NULL, NULL, NULL, 75, 1);
INSERT INTO `sys_permission` VALUES (84, 8, 'permission', '供应商删除', 'provider:delete', NULL, NULL, NULL, 76, 1);
INSERT INTO `sys_permission` VALUES (86, 22, 'permission', '公告查看', 'notice:viewnotice', NULL, NULL, NULL, 78, 1);
INSERT INTO `sys_permission` VALUES (91, 9, 'permission', '商品查询', 'goods:view', NULL, NULL, 0, 79, 1);
INSERT INTO `sys_permission` VALUES (92, 9, 'permission', '商品添加', 'goods:create', NULL, NULL, 0, 80, 1);
INSERT INTO `sys_permission` VALUES (95, 1, 'menu', '请假管理', NULL, '&#xe63c;', '', 0, 81, 1);
INSERT INTO `sys_permission` VALUES (96, 95, 'menu', '查看请假单', '', '&#xe615;', '/sys/toLeaveBillManager', 1, 82, 1);
INSERT INTO `sys_permission` VALUES (97, 95, 'menu', '我的待审批', NULL, '&#xe642;', '/sys/toMyCheckManager', 0, 83, 1);
INSERT INTO `sys_permission` VALUES (98, 96, 'permission', '添加请假单', 'leavebill:add', NULL, NULL, 0, NULL, 1);
INSERT INTO `sys_permission` VALUES (99, 96, 'permission', '修改请假单', 'leavebill:update', NULL, NULL, 1, NULL, 1);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色编号',
  `rolecode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色编码',
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色名称',
  `createtime` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, NULL, '超级管理员', '2019-04-10 14:06:32', '拥有所有菜单权限');
INSERT INTO `sys_role` VALUES (4, NULL, '基础数据管理员', '2019-04-10 14:06:32', '基础数据管理员');
INSERT INTO `sys_role` VALUES (5, NULL, '仓库管理员', '2019-04-10 14:06:32', '仓库管理员');
INSERT INTO `sys_role` VALUES (6, NULL, '销售管理员', '2019-04-10 14:06:32', '销售管理员');
INSERT INTO `sys_role` VALUES (7, NULL, '系统管理员', '2019-04-10 14:06:32', '系统管理员');
INSERT INTO `sys_role` VALUES (10, NULL, '测试角色', '2019-11-25 09:18:09', '测试');
INSERT INTO `sys_role` VALUES (11, 'd2', 'x2', '2019-12-17 15:45:21', 'x2');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`  (
  `rid` int(11) NOT NULL COMMENT '角色编号',
  `pid` int(11) NOT NULL COMMENT '权限编号',
  PRIMARY KEY (`pid`, `rid`) USING BTREE,
  INDEX `FK_tcsr9ucxypb3ce1q5qngsfk33`(`rid`) USING BTREE,
  CONSTRAINT `sys_role_permission_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `sys_permission` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_role_permission_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `sys_role` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES (4, 1);
INSERT INTO `sys_role_permission` VALUES (4, 95);
INSERT INTO `sys_role_permission` VALUES (4, 96);
INSERT INTO `sys_role_permission` VALUES (4, 97);
INSERT INTO `sys_role_permission` VALUES (7, 1);
INSERT INTO `sys_role_permission` VALUES (7, 5);
INSERT INTO `sys_role_permission` VALUES (7, 14);
INSERT INTO `sys_role_permission` VALUES (7, 31);

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user`  (
  `rid` int(11) NOT NULL COMMENT '角色编号',
  `uid` int(11) NOT NULL COMMENT '用户编号',
  PRIMARY KEY (`uid`, `rid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES (4, 1);
INSERT INTO `sys_role_user` VALUES (4, 2);
INSERT INTO `sys_role_user` VALUES (4, 3);
INSERT INTO `sys_role_user` VALUES (7, 3);
INSERT INTO `sys_role_user` VALUES (4, 4);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '登录名称',
  `loginpwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '登录密码',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户真实姓名',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户地址',
  `sex` int(11) DEFAULT NULL COMMENT '性别(0男1女)',
  `deptid` int(11) DEFAULT NULL COMMENT '所在部门编号',
  `hiredate` datetime(0) DEFAULT NULL COMMENT '入职日期',
  `mgr` int(11) DEFAULT NULL COMMENT '所属领导',
  `type` int(255) DEFAULT NULL COMMENT '用户类型[0超级管理员1，管理员，2普通用户]',
  `imgpath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像地址',
  `available` int(11) DEFAULT 1 COMMENT '是否可用(0否1可)',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码加密盐值',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_3rrcpvho2w1mx1sfiuuyir1h`(`deptid`) USING BTREE,
  CONSTRAINT `sys_user_ibfk_1` FOREIGN KEY (`deptid`) REFERENCES `sys_dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'system', '532ac00e86893901af5f0be6b704dbc7', '超级管理员', '系统深处的男人', 1, 1, '2019-11-30 16:00:00', NULL, 0, '2019-12-01/b3e3f0e2a7a54db8b90ffcaeb448f80e.jpg', 1, '04A93C74C8294AA09A8B974FD1F4ECBB', '超级管理员');
INSERT INTO `sys_user` VALUES (2, 'ls', 'b07b848d69e0553b80e601d31571797e', '李四', '武汉', 1, 1, '2019-12-03 00:00:00', NULL, 1, '2019-12-03/c8a0a567f0a040d98b1458f3affee3b1.jpg', 1, 'FC1EE06AE4354D3FBF7FDD15C8FCDA71', 'KING');
INSERT INTO `sys_user` VALUES (3, 'ww', '3c3f971eae61e097f59d52360323f1c8', '王五', '武汉', 1, 3, '2019-12-02 00:00:00', 2, 1, '2019-12-02/45c5345e6fc94f798580ae7036a1cc63.jpeg', 1, '3D5F956E053C4E85B7D2681386E235D2', '管理员');
INSERT INTO `sys_user` VALUES (4, 'zl', '2e969742a7ea0c7376e9551d578e05dd', '赵六', '武汉', 1, 4, '2019-12-04 00:00:00', 3, 1, '2019-12-04/60463678b7b2491e890accced64dc1c6.jpg', 1, '6480EE1391E34B0886ACADA501E31145', '程序员');
INSERT INTO `sys_user` VALUES (6, 'lb', 'bcee2b05b4b591106829aec69a094806', '刘八', '深圳', 1, 4, '2018-08-06 11:21:12', 3, 1, '../resources/images/defaultusertitle.jpg', 1, 'E6CCF54A09894D998225878BBD139B20', '程序员');
INSERT INTO `sys_user` VALUES (7, 'chenli', 'ec45c735897df3381708d980e747ec5d', '陈丽', '广州市天河区', 1, 5, '2019-11-26 08:35:00', 5, 1, NULL, 1, 'b6472bee89b24b8aba541e30d986c1d4', 'xxx');
INSERT INTO `sys_user` VALUES (8, 'lilei', '0eddde08b497a9c92392d84054901fb5', '李磊', 'xx', 1, 2, '2019-11-26 08:35:51', 5, 1, NULL, 1, '6bfcb66c306a4cd1895a2717bf04d8c5', 'x');
INSERT INTO `sys_user` VALUES (11, 'ceshi', '2ae7c2958626267e6375d9009555432c', '测试', 'ceshi', 1, 5, '2019-11-26 08:37:39', 5, 1, NULL, 1, '6d1a89052e414788aa00772d8f41e469', 'ceshi');
INSERT INTO `sys_user` VALUES (12, 'lierxiao', '5d282a47ae88966b56ce64ca71f1b492', '李二小', 'xx', 1, 2, '2019-11-26 09:33:00', 5, 1, NULL, 1, '2252859c5e7b4e89ab31f9d47927689f', 'xx');
INSERT INTO `sys_user` VALUES (13, 'lilis', '5ffc7fb7d8cfa25e2db9f28d1244c4d3', 'x', 'ss', 1, 2, '2019-11-26 09:37:20', 5, 1, NULL, 1, '1091098e0b8b41d28f23e30e7068b8f8', 'ss');
INSERT INTO `sys_user` VALUES (14, 'liliss', 'af8c879ff93b67f3680050d1fc8d8419', 'ss', 'sss', 1, 2, '2019-11-26 09:39:00', 5, 1, NULL, 1, '9a955f84cfc2453794a3feaa24f85919', 'ss');
INSERT INTO `sys_user` VALUES (15, 'lilixxx', '19d6106805325630947a3d97397ad6c0', 'x', 'x', 1, 2, '2019-11-26 09:42:10', 5, 1, NULL, 1, 'ed1fa29dc5ea4a71baee17b5f2046f89', 'x');

SET FOREIGN_KEY_CHECKS = 1;
