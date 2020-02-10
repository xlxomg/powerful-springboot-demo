/*
Navicat MySQL Data Transfer

Source Server         : local_test1
Source Server Version : 50727
Source Host           : 192.168.0.135:3306
Source Database       : xlxtest

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2020-01-21 16:17:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dialog
-- ----------------------------
DROP TABLE IF EXISTS `dialog`;
CREATE TABLE `dialog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateDate` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `userId` int(11) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dialog
-- ----------------------------
INSERT INTO `dialog` VALUES ('1', '2020-01-04 15:43:03', '2020-01-04 15:43:03', '1');

-- ----------------------------
-- Table structure for dialog_record
-- ----------------------------
DROP TABLE IF EXISTS `dialog_record`;
CREATE TABLE `dialog_record` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `createDate` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `message` varchar(255) DEFAULT NULL COMMENT '消息内容',
  `createType` varchar(255) DEFAULT NULL COMMENT '创建类型(tuling:机器人  user:用户)',
  `creator` int(255) DEFAULT NULL COMMENT '创建人',
  `relationQuestionId` varchar(255) DEFAULT NULL COMMENT '关联的问题id列表,逗号分隔',
  `dialogId` int(11) DEFAULT NULL COMMENT '会话id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dialog_record
-- ----------------------------
INSERT INTO `dialog_record` VALUES ('1', '2020-01-04 15:41:11', '退换货?', 'tuling', '1', '11,14,15', '1');
INSERT INTO `dialog_record` VALUES ('12', '2020-01-04 16:37:31', '水果有问题', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('13', '2020-01-04 16:37:32', '为了省着点用,返回模拟回复', 'tuling', '1', '2,9,1', null);
INSERT INTO `dialog_record` VALUES ('14', '2020-01-04 17:17:54', '22222', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('15', '2020-01-04 17:17:55', '22223', 'tuling', '1', '6,2,9', null);
INSERT INTO `dialog_record` VALUES ('16', '2020-01-04 17:18:19', '2', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('17', '2020-01-04 17:18:20', '3', 'tuling', '1', '14,11,8', null);
INSERT INTO `dialog_record` VALUES ('18', '2020-01-04 17:20:15', '百果园app上果品价格和门店价格是一样的吗?', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('19', '2020-01-04 17:20:15', '亲亲，百果园App上果品价格和实体门店价格基本上时一样的哦，个别果果App做活动或者单个门店有活动的两个平台可能会有一些差异~', 'tuling', '1', '12,1,16', null);
INSERT INTO `dialog_record` VALUES ('20', '2020-01-04 17:20:20', '7', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('21', '2020-01-04 17:20:20', '8', 'tuling', '1', '8,9,6', null);
INSERT INTO `dialog_record` VALUES ('22', '2020-01-04 17:20:28', '百果园app上果品价格和门店价格是一样的吗?', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('23', '2020-01-04 17:20:28', '亲亲，百果园App上果品价格和实体门店价格基本上时一样的哦，个别果果App做活动或者单个门店有活动的两个平台可能会有一些差异~', 'tuling', '1', '11,5,1', null);
INSERT INTO `dialog_record` VALUES ('24', '2020-01-04 17:21:59', '退换货?', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('25', '2020-01-04 17:21:59', '您好！非常抱歉没有让您满意，百果园会员在百果园购买的果品不好吃或是有质量问题，可在购买日起的7天内，到实体门店,无需小票、无需实物、无需理由直接扫描“退货二维码”自助退款，或是下载百果园App,无需到点直接在App申请\"不好吃瞬间退款\"', 'tuling', '1', '15,1,8', null);
INSERT INTO `dialog_record` VALUES ('26', '2020-01-04 17:24:31', '水果有问题', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('27', '2020-01-04 17:24:31', '为了省着点用,返回模拟回复', 'tuling', '1', '12,15,10', null);
INSERT INTO `dialog_record` VALUES ('28', '2020-01-04 17:25:39', '百果园app上果品价格和门店价格是一样的吗?', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('29', '2020-01-04 17:25:40', '亲亲，百果园App上果品价格和实体门店价格基本上时一样的哦，个别果果App做活动或者单个门店有活动的两个平台可能会有一些差异~', 'tuling', '1', '16,8,15', null);
INSERT INTO `dialog_record` VALUES ('30', '2020-01-04 17:25:41', '门店地址和电话?', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('31', '2020-01-04 17:25:41', '亲亲,百果园门店已遍布全国12大省区,30多个城市,门店数量超2000家。您可以尝试输入XX市XX区/镇 为您查询附件的门店和电话哦.', 'tuling', '1', '13,9,5', null);
INSERT INTO `dialog_record` VALUES ('32', '2020-01-04 17:25:47', 'App售后服务与门店是一样的吗?', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('33', '2020-01-04 17:25:47', 'App和门店一样享受三无退货(无小票、无实物、无理由)的售后服务标准。', 'tuling', '1', '15,12,2', null);
INSERT INTO `dialog_record` VALUES ('34', '2020-01-04 17:26:02', 'App售后服务与门店是一样的吗?', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('35', '2020-01-04 17:26:02', 'App和门店一样享受三无退货(无小票、无实物、无理由)的售后服务标准。', 'tuling', '1', '13,14,16', null);
INSERT INTO `dialog_record` VALUES ('36', '2020-01-04 17:26:30', '4', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('37', '2020-01-04 17:26:30', '5', 'tuling', '1', '7,13,15', null);
INSERT INTO `dialog_record` VALUES ('38', '2020-01-04 17:33:31', '水果有问题', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('39', '2020-01-04 17:33:32', '真的很抱歉，水果属于生鲜商品，请您签收时记得验货哦!如果签收时水果质量有问题，您可以拒收果品；如果您已经签收，请您到App订单页面提交退款申请，并上传坏果图片。', 'tuling', '1', '3,15,10', null);
INSERT INTO `dialog_record` VALUES ('40', '2020-01-04 17:41:45', '可以送货上门吗?', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('41', '2020-01-04 17:41:46', '门店的外卖服务是1公里范围内，50元起送，2小时免费送达！或者您直接进入百果园app下单，下单后59分钟送达哦~', 'tuling', '1', '2,12,15', null);
INSERT INTO `dialog_record` VALUES ('42', '2020-01-04 17:46:16', '金美人', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('43', '2020-01-04 17:46:16', '这是谁，完全没听说过。', 'tuling', '1', '6,3,7', null);
INSERT INTO `dialog_record` VALUES ('44', '2020-01-04 17:46:35', '金美人蜜瓜介绍？', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('45', '2020-01-04 17:46:35', '产品优势：@@1、品种优良，历经近10年的培育种植，技术已相当成熟\n2、果肉绵软香甜，风味浓郁，汁水充足，特别适合秋冬天吃，非常滋润　', 'tuling', '1', '10,6,7', null);
INSERT INTO `dialog_record` VALUES ('46', '2020-01-04 17:46:45', '金美人蜜瓜', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('47', '2020-01-04 17:46:46', '产品优势：@@1、品种优良，历经近10年的培育种植，技术已相当成熟\n2、果肉绵软香甜，风味浓郁，汁水充足，特别适合秋冬天吃，非常滋润　', 'tuling', '1', '9,12,8', null);
INSERT INTO `dialog_record` VALUES ('48', '2020-01-04 17:52:49', '22222', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('49', '2020-01-04 17:52:49', '22223', 'tuling', '1', '2,7,4', null);
INSERT INTO `dialog_record` VALUES ('50', '2020-01-04 17:58:12', '2222', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('51', '2020-01-04 17:58:13', '2223', 'tuling', '1', '15,8,1', null);
INSERT INTO `dialog_record` VALUES ('52', '2020-01-04 18:00:28', ' 实物和图片有差异?/', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('53', '2020-01-04 18:00:28', '亲，我们店铺的图片都是实物拍摄的呢，没有经特别的PS处理，但是图片拍色过程中由于光照原因的影响可能会照成实物和图片有一点差异，但是请您放心差异肯定是非常小的呢，基本都是一样的哦~', 'tuling', '1', '6,5,10', null);
INSERT INTO `dialog_record` VALUES ('54', '2020-01-04 18:00:35', ' 实物有差异?/', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('55', '2020-01-04 18:00:35', '亲，我们店铺的图片都是实物拍摄的呢，没有经特别的PS处理，但是图片拍色过程中由于光照原因的影响可能会照成实物和图片有一点差异，但是请您放心差异肯定是非常小的呢，基本都是一样的哦~', 'tuling', '1', '7,11,13', null);
INSERT INTO `dialog_record` VALUES ('56', '2020-01-04 18:00:40', '店铺的图片都是实物拍摄的', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('57', '2020-01-04 18:00:41', '你见过这么机灵懂事乖巧的机器人吗？', 'tuling', '1', '6,12,13', null);
INSERT INTO `dialog_record` VALUES ('58', '2020-01-04 18:00:44', ' 实物有差异?', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('59', '2020-01-04 18:00:45', '亲，我们店铺的图片都是实物拍摄的呢，没有经特别的PS处理，但是图片拍色过程中由于光照原因的影响可能会照成实物和图片有一点差异，但是请您放心差异肯定是非常小的呢，基本都是一样的哦~', 'tuling', '1', '6,3,11', null);
INSERT INTO `dialog_record` VALUES ('60', '2020-01-04 18:00:48', '没有经特别的PS处理', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('61', '2020-01-04 18:00:49', '你猜我会说什么？', 'tuling', '1', '16,8,9', null);
INSERT INTO `dialog_record` VALUES ('62', '2020-01-04 18:00:54', '你好', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('63', '2020-01-04 18:00:54', '你说好就好吧。', 'tuling', '1', '14,10,3', null);
INSERT INTO `dialog_record` VALUES ('64', '2020-01-04 18:01:00', '你叫什么名字', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('65', '2020-01-04 18:01:01', '在下江湖人称互动果果。', 'tuling', '1', '11,13,3', null);
INSERT INTO `dialog_record` VALUES ('66', '2020-01-04 18:01:19', '在下江湖人称互', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('67', '2020-01-04 18:01:19', '哎呀，又没有听懂，希望不会被鄙视。', 'tuling', '1', '3,6,9', null);
INSERT INTO `dialog_record` VALUES ('68', '2020-01-04 18:01:37', '今天天气怎么样', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('69', '2020-01-04 18:01:37', '请问你想查询哪个城市', 'tuling', '1', '2,12,15', null);
INSERT INTO `dialog_record` VALUES ('70', '2020-01-04 18:01:44', '深圳今天天气怎么样', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('71', '2020-01-04 18:01:44', '深圳:周六 01月04日,多云 持续无风向,最低气温18度，最高气温23度。', 'tuling', '1', '9,1,10', null);
INSERT INTO `dialog_record` VALUES ('72', '2020-01-04 18:01:54', '今天天气怎么样', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('73', '2020-01-04 18:01:54', '请问你想查询哪个城市', 'tuling', '1', '14,13,8', null);
INSERT INTO `dialog_record` VALUES ('74', '2020-01-04 18:01:59', '深圳', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('75', '2020-01-04 18:01:59', '深圳:周六 01月04日,多云 持续无风向,最低气温18度，最高气温23度。', 'tuling', '1', '5,4,1', null);
INSERT INTO `dialog_record` VALUES ('76', '2020-01-04 18:02:09', '北京呢', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('77', '2020-01-04 18:02:10', '北京:周六 01月04日,晴转多云 东北风转东南风,最低气温-5度，最高气温8度。', 'tuling', '1', '8,15,7', null);
INSERT INTO `dialog_record` VALUES ('78', '2020-01-04 18:02:44', '今天天气怎么样', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('79', '2020-01-04 18:02:44', '请问你想查询哪个城市', 'tuling', '1', '10,5,6', null);
INSERT INTO `dialog_record` VALUES ('80', '2020-01-04 18:02:47', '讲一个笑话', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('81', '2020-01-04 18:02:47', '先存盘后重启五星级电脑迷张老师正在抽查背诵。一个学生靠惯性往下背着，背到一小段，没惯性，便打住了，实在想不起来，只好问：“老师，我从头背起行吗？”只听见张老师回答：“行，我先存盘，你再重启吧！”', 'tuling', '1', '3,6,12', null);
INSERT INTO `dialog_record` VALUES ('82', '2020-01-04 18:02:51', '深圳', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('83', '2020-01-04 18:02:52', '我懂你的心情，时间是良药，赠你一剂。', 'tuling', '1', '9,15,8', null);
INSERT INTO `dialog_record` VALUES ('84', '2020-01-04 18:03:18', '北京呢\n', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('85', '2020-01-04 18:03:19', '帝都生活好玩么。', 'tuling', '1', '5,14,7', null);
INSERT INTO `dialog_record` VALUES ('86', '2020-01-04 18:03:22', '今天天气怎么样', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('87', '2020-01-04 18:03:23', '请问你想查询哪个城市', 'tuling', '1', '13,8,14', null);
INSERT INTO `dialog_record` VALUES ('88', '2020-01-04 18:03:27', '今天天气如何', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('89', '2020-01-04 18:03:27', '请问你想查询哪个城市', 'tuling', '1', '13,15,12', null);
INSERT INTO `dialog_record` VALUES ('90', '2020-01-04 18:03:27', '深圳', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('91', '2020-01-04 18:03:28', '深圳:周六 01月04日,多云 持续无风向,最低气温18度，最高气温23度。', 'tuling', '1', '14,6,16', null);
INSERT INTO `dialog_record` VALUES ('92', '2020-01-04 18:03:32', '北京', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('93', '2020-01-04 18:03:32', '北京:周六 01月04日,晴转多云 东北风转东南风,最低气温-5度，最高气温8度。', 'tuling', '1', '14,7,11', null);
INSERT INTO `dialog_record` VALUES ('94', '2020-01-04 18:03:33', '北京呢', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('95', '2020-01-04 18:03:33', '北京:周六 01月04日,晴转多云 东北风转东南风,最低气温-5度，最高气温8度。', 'tuling', '1', '6,13,3', null);
INSERT INTO `dialog_record` VALUES ('96', '2020-01-04 18:03:40', '今天天气如何', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('97', '2020-01-04 18:03:40', '请问你想查询哪个城市', 'tuling', '1', '9,11,13', null);
INSERT INTO `dialog_record` VALUES ('98', '2020-01-04 18:03:43', '深圳', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('99', '2020-01-04 18:03:43', '深圳:周六 01月04日,多云 持续无风向,最低气温18度，最高气温23度。', 'tuling', '1', '6,12,9', null);
INSERT INTO `dialog_record` VALUES ('100', '2020-01-04 18:05:24', '2加3等于几', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('101', '2020-01-04 18:05:24', '2+3=5', 'tuling', '1', '13,15,2', null);
INSERT INTO `dialog_record` VALUES ('102', '2020-01-04 18:42:38', '天气如何\n', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('103', '2020-01-04 18:42:38', '请问你想查询哪个城市', 'tuling', '1', '5,13,12', null);
INSERT INTO `dialog_record` VALUES ('104', '2020-01-04 18:42:42', '深圳', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('105', '2020-01-04 18:42:43', '深圳:周六 01月04日,多云 持续无风向,最低气温18度，最高气温23度。', 'tuling', '1', '16,12,13', null);
INSERT INTO `dialog_record` VALUES ('106', '2020-01-04 18:43:01', '北京', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('107', '2020-01-04 18:43:01', '北京:周六 01月04日,晴转多云 东北风转东南风,最低气温-5度，最高气温8度。', 'tuling', '1', '13,2,14', null);
INSERT INTO `dialog_record` VALUES ('108', '2020-01-04 18:43:09', '凳子', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('109', '2020-01-04 18:43:09', '凳子是什么鬼', 'tuling', '1', '14,12,7', null);
INSERT INTO `dialog_record` VALUES ('110', '2020-01-04 18:43:36', '金美人', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('111', '2020-01-04 18:43:36', '没听说过这个人。', 'tuling', '1', '12,4,9', null);
INSERT INTO `dialog_record` VALUES ('112', '2020-01-04 18:43:45', '金美人蜜瓜', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('113', '2020-01-04 18:43:46', '产品优势：@@1、品种优良，历经近10年的培育种植，技术已相当成熟\n2、果肉绵软香甜，风味浓郁，汁水充足，特别适合秋冬天吃，非常滋润　', 'tuling', '1', '9,15,16', null);
INSERT INTO `dialog_record` VALUES ('114', '2020-01-04 18:43:58', '蜜瓜', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('115', '2020-01-04 18:43:59', '昂昂', 'tuling', '1', '11,4,15', null);
INSERT INTO `dialog_record` VALUES ('116', '2020-01-04 18:44:09', '蜜瓜介绍', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('117', '2020-01-04 18:44:10', '哎呀，今天天气不错呀，好想出去玩。', 'tuling', '1', '13,15,10', null);
INSERT INTO `dialog_record` VALUES ('118', '2020-01-04 18:44:24', 'App售后服务与门店是一样的吗?', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('119', '2020-01-04 18:44:24', 'App和门店一样享受三无退货(无小票、无实物、无理由)的售后服务标准。', 'tuling', '1', '13,4,16', null);
INSERT INTO `dialog_record` VALUES ('120', '2020-01-04 18:44:32', '可以送货上门吗?', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('121', '2020-01-04 18:44:32', '门店的外卖服务是1公里范围内，50元起送，2小时免费送达！或者您直接进入百果园app下单，下单后59分钟送达哦~', 'tuling', '1', '1,5,11', null);
INSERT INTO `dialog_record` VALUES ('122', '2020-01-04 18:45:34', '亲爱的会员：这是一条重要通知哦~@@！！微信提示：平台将在年底12月31日对您的积分进行系统清零，请及时使用以免造成浪费。小果果诚邀您参与级分清零活动：@@★积分当前花：上千份好礼积分兑（夏音葡萄、红芭蕾草莓、良枝苹果等）@@★积分抽好礼：赢取大水果礼包、心享鸡蛋@@★积分抢好券：难得一见的超大额优惠券200-100、100-50等你来抢~', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('123', '2020-01-04 18:45:35', '说的貌似很有深意，你能一条一条说么？', 'tuling', '1', '15,8,6', null);
INSERT INTO `dialog_record` VALUES ('124', '2020-01-04 18:46:27', '7', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('125', '2020-01-06 09:35:04', 'App售后服务与门店是一样的吗?', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('126', '2020-01-06 09:35:04', 'App和门店一样享受三无退货(无小票、无实物、无理由)的售后服务标准。', 'tuling', '1', '8,14,4', null);
INSERT INTO `dialog_record` VALUES ('127', '2020-01-06 09:37:27', '1', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('128', '2020-01-06 09:38:01', '今天天气如何', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('129', '2020-01-06 09:38:02', '请问你想查询哪个城市', 'tuling', '1', '12,11,4', null);
INSERT INTO `dialog_record` VALUES ('130', '2020-01-06 09:38:07', '深圳', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('131', '2020-01-06 09:38:07', '深圳:周一 01月06日,多云转小雨 东风转持续无风向,最低气温18度，最高气温24度。', 'tuling', '1', '9,10,1', null);
INSERT INTO `dialog_record` VALUES ('132', '2020-01-06 09:38:12', '北京', 'user', '1', null, null);
INSERT INTO `dialog_record` VALUES ('133', '2020-01-06 09:38:12', '北京:周一 01月06日,多云 西北风转持续无风向,最低气温-3度，最高气温4度。', 'tuling', '1', '12,6,10', null);

-- ----------------------------
-- Table structure for hd_order
-- ----------------------------
DROP TABLE IF EXISTS `hd_order`;
CREATE TABLE `hd_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateDate` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `goodsName` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `price` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `count` int(11) DEFAULT NULL COMMENT '数量',
  `countUnit` varchar(255) DEFAULT NULL COMMENT '数量单位(斤; 个;盒d等等)',
  `totalMoney` varchar(255) DEFAULT NULL COMMENT '总金额',
  `status` varchar(255) DEFAULT NULL COMMENT '状态',
  `url` varchar(2048) DEFAULT NULL COMMENT '图片地址',
  `userId` int(11) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='订单';

-- ----------------------------
-- Records of hd_order
-- ----------------------------
INSERT INTO `hd_order` VALUES ('1', '2020-01-04 14:08:03', '2020-01-04 14:08:03', '夏音葡萄(A级)', '23.50', '2', '斤', '47', '交易成功', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3139894483,71875053&fm=26&gp=0.jpg', '1');
INSERT INTO `hd_order` VALUES ('2', '2020-01-04 14:08:03', '2020-01-04 14:08:03', '麒麟瓜(A级)', '9.40', '3', '斤', '30', '交易成功', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3539280942,129573777&fm=26&gp=0.jpg', '1');
INSERT INTO `hd_order` VALUES ('3', '2020-01-04 14:08:03', '2020-01-04 14:08:03', '水晶富士(A级)', '21.80', '1', '斤', '21.8', '交易成功', 'https://image.baidu.com/search/detail?ct=503316480&z=0&tn=baiduimagedetail&ipn=d&word=%E6%B0%B4%E6%99%B6%E5%AF%8C%E5%A3%AB&step_word=&ie=utf-8&in=&cl=2&lm=-1&st=-1&hd=undefined&latest=undefined&copyright=undefined&cs=559802894,3904231582&os=638162762,738102157&simid=0,0&pn=3&rn=1&di=66660&ln=1065&fr=&fmq=1578118663529_R&ic=undefined&s=undefined&se=&sme=&tab=0&width=undefined&height=undefined&face=undefined&is=0,0&istype=2&ist=&jit=&bdtype=0&spn=0&pi=0&gsm=0&objurl=http%3A%2F%2Fimage.forestfood.com%2Fimages%2F201710%2Fgoods_img%2F2650_P_1509415365661.jpg&rpstart=0&rpnum=0&adpicid=0&force=undefined', '1');
INSERT INTO `hd_order` VALUES ('4', '2020-01-04 14:08:30', '2020-01-04 14:08:30', '车厘子(B级)', '48.00', '2', '斤', '96', '已发货', 'https://image.baidu.com/search/detail?ct=503316480&z=0&tn=baiduimagedetail&ipn=d&word=%E8%BD%A6%E5%8E%98%E5%AD%90&step_word=&ie=utf-8&in=&cl=2&lm=-1&st=-1&hd=undefined&latest=undefined&copyright=undefined&cs=374470566,626584083&os=2841675486,2664252511&simid=4124871507,710274071&pn=2&rn=1&di=193820&ln=1491&fr=&fmq=1578118641002_R&ic=undefined&s=undefined&se=&sme=&tab=0&width=undefined&height=undefined&face=undefined&is=0,0&istype=2&ist=&jit=&bdtype=0&spn=0&pi=0&gsm=0&objurl=http%3A%2F%2Fimg19.3lian.com%2Fd%2Ffile%2F201801%2F02%2F1a4286a2f7478bf994a1ab02fb560443.png&rpstart=0&rpnum=0&adpicid=0&force=undefined', '1');
INSERT INTO `hd_order` VALUES ('5', '2020-01-04 14:10:08', '2020-01-04 14:10:08', '玫瑰香翡翠葡萄(招牌)', '159.00', '1', '斤', '159', '交易取消', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1578128617787&di=9e8e2fad419deacc9161672374cba32a&imgtype=0&src=http%3A%2F%2Fqcloud.dpfile.com%2Fpc%2Fjn4lmWjYDTRGgeoMEom0u89nzZ-VLQiS2wZUHpbEKvvI9IWH2USlX25drB_EUKcITYGVDmosZWTLal1WbWRW3A.jpg', '1');
INSERT INTO `hd_order` VALUES ('6', '2020-01-04 14:13:09', '2020-01-04 14:13:09', '猕宗绿果(招牌)', '4.50', '3', '个', '13.5', '已发货', 'https://image.baidu.com/search/detail?ct=503316480&z=0&tn=baiduimagedetail&ipn=d&word=%E7%8C%95%E5%AE%97%E7%BB%BF%E6%9E%9C&step_word=&ie=utf-8&in=&cl=2&lm=-1&st=-1&hd=undefined&latest=undefined&copyright=undefined&cs=3225809733,3329992051&os=88813982,4151197480&simid=0,0&pn=5&rn=1&di=3080&ln=38&fr=&fmq=1578118600523_R&ic=undefined&s=undefined&se=&sme=&tab=0&width=undefined&height=undefined&face=undefined&is=0,0&istype=2&ist=&jit=&bdtype=0&spn=0&pi=0&gsm=0&objurl=http%3A%2F%2Fimg3.99114.com%2Fgroup1%2FM00%2F47%2F40%2FwKgGS1ngO_SAXRCuAAC-5Mz_D1M666.jpg&rpstart=0&rpnum=0&adpicid=0&force=undefined', '1');
INSERT INTO `hd_order` VALUES ('7', '2020-01-04 14:13:59', '2020-01-04 14:13:59', '金人参果(B级)', '9.90', '1', '盒', '9.9', '交易取消', 'https://image.baidu.com/search/detail?ct=503316480&z=0&tn=baiduimagedetail&ipn=d&word=%E9%87%91%E4%BA%BA%E5%8F%82%E6%9E%9C&step_word=&ie=utf-8&in=&cl=2&lm=-1&st=-1&hd=undefined&latest=undefined&copyright=undefined&cs=2590223407,606040522&os=545049038,3194416196&simid=4218148722,703376699&pn=0&rn=1&di=14630&ln=918&fr=&fmq=1578118613778_R&ic=undefined&s=undefined&se=&sme=&tab=0&width=undefined&height=undefined&face=undefined&is=0,0&istype=2&ist=&jit=&bdtype=0&spn=0&pi=0&gsm=0&objurl=http%3A%2F%2Fe0.ifengimg.com%2F04%2F2018%2F1201%2F46E443761B8009F38E223EA9FFFA104659A4C3E1_size60_w450_h315.jpeg&rpstart=0&rpnum=0&adpicid=0&force=undefined', '1');

-- ----------------------------
-- Table structure for msg_template
-- ----------------------------
DROP TABLE IF EXISTS `msg_template`;
CREATE TABLE `msg_template` (
  `templateID` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateDate` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `platformType` varchar(255) NOT NULL COMMENT '平台类型(dingding:钉钉;  wechat:微信; wswork:企业微信;  sms:短信;  email:邮件)',
  `functionType` varchar(255) DEFAULT NULL COMMENT '接口功能类型(11: 钉钉_工作通知消息;  12:钉钉_群消息  13:钉钉_普通消息  待补充..)',
  `msgType` varchar(255) DEFAULT NULL COMMENT '消息类型(11: 钉钉_文本消息   12:钉钉_图片消息  13:钉钉_语言消息 14:钉钉_文件消息  15:钉钉_链接消息  16:钉钉_OA消息  17:钉钉_markdown消息  18:钉钉_卡片消息)',
  `title` varchar(512) NOT NULL COMMENT '标题',
  `content` text COMMENT '消息内容',
  `url` varchar(512) DEFAULT NULL COMMENT '调整链接',
  `picUrl` varchar(512) DEFAULT NULL COMMENT '图片链接',
  `others` text COMMENT '消息其他数据',
  PRIMARY KEY (`templateID`)
) ENGINE=InnoDB AUTO_INCREMENT=336 DEFAULT CHARSET=utf8mb4 COMMENT='消息模板';

-- ----------------------------
-- Records of msg_template
-- ----------------------------
INSERT INTO `msg_template` VALUES ('1', '2020-12-12 21:12:21', '2020-12-12 21:12:21', 'wechat', '11', '11', '我是标题', '我是消息内容', '1212', '1212', '2121');
INSERT INTO `msg_template` VALUES ('322', '2019-12-03 11:21:03', '2019-12-03 11:21:03', 'dingding', null, null, '33', null, null, null, '{\"canvasData\":{\"nodes\":[{\"componentType\":\"node\",\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component001.png\",\"itemType\":\"node\",\"shape\":\"flowNode\",\"componentCode\":\"NODE_DEFAULT\",\"functionShapeIdx\":0,\"icon\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component001.png\",\"label\":\"Normal\",\"functionShapeVisibleCount\":4,\"isOnly\":true,\"functionShapes\":[],\"options\":{\"size\":[150,40],\"style\":{\"img\":\"\",\"offset\":0,\"width\":0,\"fill\":\"#fff\",\"radius\":6,\"stroke\":\"#00C587\",\"height\":0}},\"componentFunctionType\":\"NODE\",\"name\":\"节点作业\",\"x\":547,\"componentStyleMode\":\"1\",\"y\":110,\"componentName\":\"NODE_DEFAULT\",\"id\":\"23351086-eda4-4da6-8b2f-eaae9b09bfca\",\"connectID\":\"\"},{\"componentType\":\"node\",\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component001.png\",\"itemType\":\"node\",\"shape\":\"flowNode\",\"componentCode\":\"NODE_DEFAULT\",\"functionShapeIdx\":0,\"icon\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component001.png\",\"label\":\"Normal\",\"functionShapeVisibleCount\":4,\"isOnly\":true,\"functionShapes\":[],\"options\":{\"size\":[150,40],\"style\":{\"img\":\"\",\"offset\":0,\"width\":0,\"fill\":\"#fff\",\"radius\":6,\"stroke\":\"#00C587\",\"height\":0}},\"componentFunctionType\":\"NODE\",\"name\":\"节点作业\",\"x\":346,\"componentStyleMode\":\"1\",\"y\":457,\"componentName\":\"NODE_DEFAULT\",\"id\":\"6b61d0bc-9200-430c-be21-788153fd9be5\",\"connectID\":\"\"},{\"componentType\":\"node\",\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component001.png\",\"itemType\":\"node\",\"shape\":\"flowNode\",\"componentCode\":\"NODE_DEFAULT\",\"functionShapeIdx\":0,\"icon\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component001.png\",\"label\":\"Normal\",\"functionShapeVisibleCount\":4,\"isOnly\":true,\"functionShapes\":[],\"options\":{\"size\":[150,40],\"style\":{\"img\":\"\",\"offset\":0,\"width\":0,\"fill\":\"#fff\",\"radius\":6,\"stroke\":\"#00C587\",\"height\":0}},\"componentFunctionType\":\"NODE\",\"name\":\"节点作业\",\"x\":753,\"componentStyleMode\":\"1\",\"y\":476,\"componentName\":\"NODE_DEFAULT\",\"id\":\"603085c1-de5c-4fdd-aed7-791e06bdb3d9\",\"connectID\":\"\"},{\"componentType\":\"connect\",\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component008.png\",\"itemType\":\"connect\",\"shape\":\"icon\",\"componentCode\":\"CONNECT_CONDITION\",\"icon\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component008.png\",\"label\":\"Normal\",\"isOnly\":true,\"options\":{\"size\":[80,80],\"style\":{\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component008.png\",\"offset\":-5,\"width\":0,\"fill\":\"\",\"radius\":0,\"stroke\":\"\",\"height\":0}},\"componentFunctionType\":\"CONNECT\",\"name\":\"条件分支\",\"x\":545,\"componentStyleMode\":\"1\",\"y\":287,\"componentName\":\"CONNECT_CONDITION\",\"id\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\",\"connectID\":\"\"}],\"edges\":[{\"componentType\":\"connectPoint\",\"sourceAnchor\":0,\"shape\":\"bizFlowEdge\",\"functionShapeIdx\":0,\"startPoint\":{\"x\":545,\"y\":247,\"index\":0,\"id\":\"545-247\"},\"source\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\",\"functionShapeVisibleCount\":3,\"target\":\"23351086-eda4-4da6-8b2f-eaae9b09bfca\",\"endPoint\":{\"x\":547,\"y\":146,\"index\":2,\"id\":\"547-146\"},\"functionShapes\":[],\"targetAnchor\":2,\"style\":{\"offset\":24,\"radius\":8},\"componentName\":\"CONNECT_POINT\",\"id\":\"b70b5c3c-2b9f-4249-a56a-675ecb9c836a\",\"connectID\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\"},{\"componentType\":\"connectPoint\",\"activeFunctionShape\":{\"componentType\":\"event\",\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component018.png\",\"itemType\":\"node-children\",\"shape\":\"icon\",\"componentCode\":\"RULE_DEFAULT\",\"icon\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component018.png\",\"relationComponentType\":[\"connectPoint\"],\"label\":\"Normal\",\"isOnly\":true,\"options\":{\"size\":[16,16],\"style\":{\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component018.png\",\"offset\":-5,\"width\":0,\"fill\":\"\",\"radius\":0,\"stroke\":\"\",\"height\":0}},\"componentFunctionType\":\"RULE\",\"name\":\"决策规则\",\"x\":347,\"componentParentId\":\"15cdf8bc-4d8f-4867-bb4f-bcd1409928b6\",\"componentStyleMode\":\"1\",\"y\":329,\"componentName\":\"RULE_DEFAULT\",\"id\":\"0f69bd11-7cdf-4941-99ee-2b45eea4cc97\",\"connectID\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\"},\"sourceAnchor\":3,\"shape\":\"bizFlowEdge\",\"functionShapeIdx\":0,\"startPoint\":{\"x\":505,\"y\":287,\"index\":3,\"id\":\"505-287\"},\"source\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\",\"functionShapeVisibleCount\":3,\"target\":\"6b61d0bc-9200-430c-be21-788153fd9be5\",\"endPoint\":{\"x\":346,\"y\":421,\"index\":3,\"id\":\"346-421\"},\"functionShapes\":[{\"model\":{\"componentType\":\"event\",\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component018.png\",\"itemType\":\"node-children\",\"shape\":\"icon\",\"componentCode\":\"RULE_DEFAULT\",\"icon\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component018.png\",\"relationComponentType\":[\"connectPoint\"],\"label\":\"Normal\",\"isOnly\":true,\"options\":{\"size\":[16,16],\"style\":{\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component018.png\",\"offset\":-5,\"width\":0,\"fill\":\"\",\"radius\":0,\"stroke\":\"\",\"height\":0}},\"componentFunctionType\":\"RULE\",\"name\":\"决策规则\",\"x\":347,\"componentParentId\":\"15cdf8bc-4d8f-4867-bb4f-bcd1409928b6\",\"componentStyleMode\":\"1\",\"y\":329,\"componentName\":\"RULE_DEFAULT\",\"id\":\"0f69bd11-7cdf-4941-99ee-2b45eea4cc97\",\"connectID\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\"},\"id\":\"0f69bd11-7cdf-4941-99ee-2b45eea4cc97\"}],\"targetAnchor\":3,\"style\":{\"offset\":24,\"radius\":8},\"componentName\":\"CONNECT_POINT\",\"id\":\"15cdf8bc-4d8f-4867-bb4f-bcd1409928b6\",\"connectID\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\",\"0f69bd11-7cdf-4941-99ee-2b45eea4cc97\":{\"conditionContentJSON\":\"@xlx=\'222\'\"}},{\"componentType\":\"connectPoint\",\"sourceAnchor\":1,\"shape\":\"bizFlowEdge\",\"functionShapeIdx\":0,\"startPoint\":{\"x\":585,\"y\":287,\"index\":1,\"id\":\"585-287\"},\"source\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\",\"functionShapeVisibleCount\":3,\"target\":\"603085c1-de5c-4fdd-aed7-791e06bdb3d9\",\"endPoint\":{\"x\":753,\"y\":440,\"index\":3,\"id\":\"753-440\"},\"functionShapes\":[],\"targetAnchor\":3,\"style\":{\"offset\":24,\"radius\":8},\"componentName\":\"CONNECT_POINT\",\"id\":\"8b5dd27e-5593-4db7-ab82-53f42375e8ab\",\"connectID\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\"}],\"groups\":[]},\"removedData\":[]}');
INSERT INTO `msg_template` VALUES ('323', '2019-12-03 11:21:03', '2019-12-03 11:21:03', 'dingding', null, null, '33', null, null, null, '{\"canvasData\":{\"nodes\":[{\"componentType\":\"node\",\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component001.png\",\"itemType\":\"node\",\"shape\":\"flowNode\",\"componentCode\":\"NODE_DEFAULT\",\"functionShapeIdx\":0,\"icon\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component001.png\",\"label\":\"Normal\",\"functionShapeVisibleCount\":4,\"isOnly\":true,\"functionShapes\":[],\"options\":{\"size\":[150,40],\"style\":{\"img\":\"\",\"offset\":0,\"width\":0,\"fill\":\"#fff\",\"radius\":6,\"stroke\":\"#00C587\",\"height\":0}},\"componentFunctionType\":\"NODE\",\"name\":\"节点作业\",\"x\":547,\"componentStyleMode\":\"1\",\"y\":110,\"componentName\":\"NODE_DEFAULT\",\"id\":\"23351086-eda4-4da6-8b2f-eaae9b09bfca\",\"connectID\":\"\"},{\"componentType\":\"node\",\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component001.png\",\"itemType\":\"node\",\"shape\":\"flowNode\",\"componentCode\":\"NODE_DEFAULT\",\"functionShapeIdx\":0,\"icon\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component001.png\",\"label\":\"Normal\",\"functionShapeVisibleCount\":4,\"isOnly\":true,\"functionShapes\":[],\"options\":{\"size\":[150,40],\"style\":{\"img\":\"\",\"offset\":0,\"width\":0,\"fill\":\"#fff\",\"radius\":6,\"stroke\":\"#00C587\",\"height\":0}},\"componentFunctionType\":\"NODE\",\"name\":\"节点作业\",\"x\":346,\"componentStyleMode\":\"1\",\"y\":457,\"componentName\":\"NODE_DEFAULT\",\"id\":\"6b61d0bc-9200-430c-be21-788153fd9be5\",\"connectID\":\"\"},{\"componentType\":\"node\",\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component001.png\",\"itemType\":\"node\",\"shape\":\"flowNode\",\"componentCode\":\"NODE_DEFAULT\",\"functionShapeIdx\":0,\"icon\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component001.png\",\"label\":\"Normal\",\"functionShapeVisibleCount\":4,\"isOnly\":true,\"functionShapes\":[],\"options\":{\"size\":[150,40],\"style\":{\"img\":\"\",\"offset\":0,\"width\":0,\"fill\":\"#fff\",\"radius\":6,\"stroke\":\"#00C587\",\"height\":0}},\"componentFunctionType\":\"NODE\",\"name\":\"节点作业\",\"x\":753,\"componentStyleMode\":\"1\",\"y\":476,\"componentName\":\"NODE_DEFAULT\",\"id\":\"603085c1-de5c-4fdd-aed7-791e06bdb3d9\",\"connectID\":\"\"},{\"componentType\":\"connect\",\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component008.png\",\"itemType\":\"connect\",\"shape\":\"icon\",\"componentCode\":\"CONNECT_CONDITION\",\"icon\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component008.png\",\"label\":\"Normal\",\"isOnly\":true,\"options\":{\"size\":[80,80],\"style\":{\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component008.png\",\"offset\":-5,\"width\":0,\"fill\":\"\",\"radius\":0,\"stroke\":\"\",\"height\":0}},\"componentFunctionType\":\"CONNECT\",\"name\":\"条件分支\",\"x\":545,\"componentStyleMode\":\"1\",\"y\":287,\"componentName\":\"CONNECT_CONDITION\",\"id\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\",\"connectID\":\"\"}],\"edges\":[{\"componentType\":\"connectPoint\",\"sourceAnchor\":0,\"shape\":\"bizFlowEdge\",\"functionShapeIdx\":0,\"startPoint\":{\"x\":545,\"y\":247,\"index\":0,\"id\":\"545-247\"},\"source\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\",\"functionShapeVisibleCount\":3,\"target\":\"23351086-eda4-4da6-8b2f-eaae9b09bfca\",\"endPoint\":{\"x\":547,\"y\":146,\"index\":2,\"id\":\"547-146\"},\"functionShapes\":[],\"targetAnchor\":2,\"style\":{\"offset\":24,\"radius\":8},\"componentName\":\"CONNECT_POINT\",\"id\":\"b70b5c3c-2b9f-4249-a56a-675ecb9c836a\",\"connectID\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\"},{\"componentType\":\"connectPoint\",\"activeFunctionShape\":{\"componentType\":\"event\",\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component018.png\",\"itemType\":\"node-children\",\"shape\":\"icon\",\"componentCode\":\"RULE_DEFAULT\",\"icon\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component018.png\",\"relationComponentType\":[\"connectPoint\"],\"label\":\"Normal\",\"isOnly\":true,\"options\":{\"size\":[16,16],\"style\":{\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component018.png\",\"offset\":-5,\"width\":0,\"fill\":\"\",\"radius\":0,\"stroke\":\"\",\"height\":0}},\"componentFunctionType\":\"RULE\",\"name\":\"决策规则\",\"x\":347,\"componentParentId\":\"15cdf8bc-4d8f-4867-bb4f-bcd1409928b6\",\"componentStyleMode\":\"1\",\"y\":329,\"componentName\":\"RULE_DEFAULT\",\"id\":\"0f69bd11-7cdf-4941-99ee-2b45eea4cc97\",\"connectID\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\"},\"sourceAnchor\":3,\"shape\":\"bizFlowEdge\",\"functionShapeIdx\":0,\"startPoint\":{\"x\":505,\"y\":287,\"index\":3,\"id\":\"505-287\"},\"source\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\",\"functionShapeVisibleCount\":3,\"target\":\"6b61d0bc-9200-430c-be21-788153fd9be5\",\"endPoint\":{\"x\":346,\"y\":421,\"index\":3,\"id\":\"346-421\"},\"functionShapes\":[{\"model\":{\"componentType\":\"event\",\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component018.png\",\"itemType\":\"node-children\",\"shape\":\"icon\",\"componentCode\":\"RULE_DEFAULT\",\"icon\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component018.png\",\"relationComponentType\":[\"connectPoint\"],\"label\":\"Normal\",\"isOnly\":true,\"options\":{\"size\":[16,16],\"style\":{\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component018.png\",\"offset\":-5,\"width\":0,\"fill\":\"\",\"radius\":0,\"stroke\":\"\",\"height\":0}},\"componentFunctionType\":\"RULE\",\"name\":\"决策规则\",\"x\":347,\"componentParentId\":\"15cdf8bc-4d8f-4867-bb4f-bcd1409928b6\",\"componentStyleMode\":\"1\",\"y\":329,\"componentName\":\"RULE_DEFAULT\",\"id\":\"0f69bd11-7cdf-4941-99ee-2b45eea4cc97\",\"connectID\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\"},\"id\":\"0f69bd11-7cdf-4941-99ee-2b45eea4cc97\"}],\"targetAnchor\":3,\"style\":{\"offset\":24,\"radius\":8},\"componentName\":\"CONNECT_POINT\",\"id\":\"15cdf8bc-4d8f-4867-bb4f-bcd1409928b6\",\"connectID\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\",\"0f69bd11-7cdf-4941-99ee-2b45eea4cc97\":{\"conditionContentJSON\":\"@xlx=\'222\'\"}},{\"componentType\":\"connectPoint\",\"sourceAnchor\":1,\"shape\":\"bizFlowEdge\",\"functionShapeIdx\":0,\"startPoint\":{\"x\":585,\"y\":287,\"index\":1,\"id\":\"585-287\"},\"source\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\",\"functionShapeVisibleCount\":3,\"target\":\"603085c1-de5c-4fdd-aed7-791e06bdb3d9\",\"endPoint\":{\"x\":753,\"y\":440,\"index\":3,\"id\":\"753-440\"},\"functionShapes\":[],\"targetAnchor\":3,\"style\":{\"offset\":24,\"radius\":8},\"componentName\":\"CONNECT_POINT\",\"id\":\"8b5dd27e-5593-4db7-ab82-53f42375e8ab\",\"connectID\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\"}],\"groups\":[]},\"removedData\":[]}');
INSERT INTO `msg_template` VALUES ('324', '2019-12-03 11:21:03', '2019-12-03 11:21:03', 'dingding', null, null, '33', null, null, null, '{\"canvasData\":{\"nodes\":[{\"componentType\":\"node\",\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component001.png\",\"itemType\":\"node\",\"shape\":\"flowNode\",\"componentCode\":\"NODE_DEFAULT\",\"functionShapeIdx\":0,\"icon\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component001.png\",\"label\":\"Normal\",\"functionShapeVisibleCount\":4,\"isOnly\":true,\"functionShapes\":[],\"options\":{\"size\":[150,40],\"style\":{\"img\":\"\",\"offset\":0,\"width\":0,\"fill\":\"#fff\",\"radius\":6,\"stroke\":\"#00C587\",\"height\":0}},\"componentFunctionType\":\"NODE\",\"name\":\"u8282u70B9u4F5Cu4E1A\",\"x\":547,\"componentStyleMode\":\"1\",\"y\":110,\"componentName\":\"NODE_DEFAULT\",\"id\":\"23351086-eda4-4da6-8b2f-eaae9b09bfca\",\"connectID\":\"\"},{\"componentType\":\"node\",\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component001.png\",\"itemType\":\"node\",\"shape\":\"flowNode\",\"componentCode\":\"NODE_DEFAULT\",\"functionShapeIdx\":0,\"icon\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component001.png\",\"label\":\"Normal\",\"functionShapeVisibleCount\":4,\"isOnly\":true,\"functionShapes\":[],\"options\":{\"size\":[150,40],\"style\":{\"img\":\"\",\"offset\":0,\"width\":0,\"fill\":\"#fff\",\"radius\":6,\"stroke\":\"#00C587\",\"height\":0}},\"componentFunctionType\":\"NODE\",\"name\":\"u8282u70B9u4F5Cu4E1A\",\"x\":346,\"componentStyleMode\":\"1\",\"y\":457,\"componentName\":\"NODE_DEFAULT\",\"id\":\"6b61d0bc-9200-430c-be21-788153fd9be5\",\"connectID\":\"\"},{\"componentType\":\"node\",\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component001.png\",\"itemType\":\"node\",\"shape\":\"flowNode\",\"componentCode\":\"NODE_DEFAULT\",\"functionShapeIdx\":0,\"icon\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component001.png\",\"label\":\"Normal\",\"functionShapeVisibleCount\":4,\"isOnly\":true,\"functionShapes\":[],\"options\":{\"size\":[150,40],\"style\":{\"img\":\"\",\"offset\":0,\"width\":0,\"fill\":\"#fff\",\"radius\":6,\"stroke\":\"#00C587\",\"height\":0}},\"componentFunctionType\":\"NODE\",\"name\":\"u8282u70B9u4F5Cu4E1A\",\"x\":753,\"componentStyleMode\":\"1\",\"y\":476,\"componentName\":\"NODE_DEFAULT\",\"id\":\"603085c1-de5c-4fdd-aed7-791e06bdb3d9\",\"connectID\":\"\"},{\"componentType\":\"connect\",\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component008.png\",\"itemType\":\"connect\",\"shape\":\"icon\",\"componentCode\":\"CONNECT_CONDITION\",\"icon\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component008.png\",\"label\":\"Normal\",\"isOnly\":true,\"options\":{\"size\":[80,80],\"style\":{\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component008.png\",\"offset\":-5,\"width\":0,\"fill\":\"\",\"radius\":0,\"stroke\":\"\",\"height\":0}},\"componentFunctionType\":\"CONNECT\",\"name\":\"u6761u4EF6u5206u652F\",\"x\":545,\"componentStyleMode\":\"1\",\"y\":287,\"componentName\":\"CONNECT_CONDITION\",\"id\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\",\"connectID\":\"\"}],\"edges\":[{\"componentType\":\"connectPoint\",\"sourceAnchor\":0,\"shape\":\"bizFlowEdge\",\"functionShapeIdx\":0,\"startPoint\":{\"x\":545,\"y\":247,\"index\":0,\"id\":\"545-247\"},\"source\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\",\"functionShapeVisibleCount\":3,\"target\":\"23351086-eda4-4da6-8b2f-eaae9b09bfca\",\"endPoint\":{\"x\":547,\"y\":146,\"index\":2,\"id\":\"547-146\"},\"functionShapes\":[],\"targetAnchor\":2,\"style\":{\"offset\":24,\"radius\":8},\"componentName\":\"CONNECT_POINT\",\"id\":\"b70b5c3c-2b9f-4249-a56a-675ecb9c836a\",\"connectID\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\"},{\"componentType\":\"connectPoint\",\"sourceAnchor\":3,\"shape\":\"bizFlowEdge\",\"functionShapeIdx\":0,\"startPoint\":{\"x\":505,\"y\":287,\"index\":3,\"id\":\"505-287\"},\"source\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\",\"functionShapeVisibleCount\":3,\"target\":\"6b61d0bc-9200-430c-be21-788153fd9be5\",\"endPoint\":{\"x\":346,\"y\":421,\"index\":3,\"id\":\"346-421\"},\"functionShapes\":[{\"model\":{\"componentType\":\"event\",\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component018.png\",\"itemType\":\"node-children\",\"shape\":\"icon\",\"componentCode\":\"RULE_DEFAULT\",\"icon\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component018.png\",\"relationComponentType\":[\"connectPoint\"],\"label\":\"Normal\",\"isOnly\":true,\"options\":{\"size\":[16,16],\"style\":{\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component018.png\",\"offset\":-5,\"width\":0,\"fill\":\"\",\"radius\":0,\"stroke\":\"\",\"height\":0}},\"componentFunctionType\":\"RULE\",\"name\":\"u51B3u7B56u89C4u5219\",\"x\":347,\"componentParentId\":\"15cdf8bc-4d8f-4867-bb4f-bcd1409928b6\",\"componentStyleMode\":\"1\",\"y\":329,\"componentName\":\"RULE_DEFAULT\",\"id\":\"0f69bd11-7cdf-4941-99ee-2b45eea4cc97\",\"connectID\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\"},\"id\":\"0f69bd11-7cdf-4941-99ee-2b45eea4cc97\"}],\"targetAnchor\":3,\"style\":{\"offset\":24,\"radius\":8},\"componentName\":\"CONNECT_POINT\",\"id\":\"15cdf8bc-4d8f-4867-bb4f-bcd1409928b6\",\"connectID\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\",\"0f69bd11-7cdf-4941-99ee-2b45eea4cc97\":{\"conditionContentJSON\":\"@xlx=\'222\'\"}},{\"componentType\":\"connectPoint\",\"sourceAnchor\":1,\"shape\":\"bizFlowEdge\",\"functionShapeIdx\":0,\"startPoint\":{\"x\":585,\"y\":287,\"index\":1,\"id\":\"585-287\"},\"source\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\",\"functionShapeVisibleCount\":3,\"target\":\"603085c1-de5c-4fdd-aed7-791e06bdb3d9\",\"endPoint\":{\"x\":753,\"y\":440,\"index\":3,\"id\":\"753-440\"},\"functionShapes\":[],\"targetAnchor\":3,\"style\":{\"offset\":24,\"radius\":8},\"componentName\":\"CONNECT_POINT\",\"id\":\"8b5dd27e-5593-4db7-ab82-53f42375e8ab\",\"connectID\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\"}],\"groups\":[]},\"removedData\":[]}');
INSERT INTO `msg_template` VALUES ('325', '2019-12-03 11:21:03', '2019-12-03 11:21:03', 'dingding', null, null, '33', null, null, null, '{\"canvasData\":{\"nodes\":[{\"componentType\":\"node\",\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component001.png\",\"itemType\":\"node\",\"shape\":\"flowNode\",\"componentCode\":\"NODE_DEFAULT\",\"functionShapeIdx\":0,\"icon\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component001.png\",\"label\":\"Normal\",\"functionShapeVisibleCount\":4,\"isOnly\":true,\"functionShapes\":[],\"options\":{\"size\":[150,40],\"style\":{\"img\":\"\",\"offset\":0,\"width\":0,\"fill\":\"#fff\",\"radius\":6,\"stroke\":\"#00C587\",\"height\":0}},\"componentFunctionType\":\"NODE\",\"name\":\"u8282u70B9u4F5Cu4E1A\",\"x\":547,\"componentStyleMode\":\"1\",\"y\":110,\"componentName\":\"NODE_DEFAULT\",\"id\":\"23351086-eda4-4da6-8b2f-eaae9b09bfca\",\"connectID\":\"\"},{\"componentType\":\"node\",\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component001.png\",\"itemType\":\"node\",\"shape\":\"flowNode\",\"componentCode\":\"NODE_DEFAULT\",\"functionShapeIdx\":0,\"icon\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component001.png\",\"label\":\"Normal\",\"functionShapeVisibleCount\":4,\"isOnly\":true,\"functionShapes\":[],\"options\":{\"size\":[150,40],\"style\":{\"img\":\"\",\"offset\":0,\"width\":0,\"fill\":\"#fff\",\"radius\":6,\"stroke\":\"#00C587\",\"height\":0}},\"componentFunctionType\":\"NODE\",\"name\":\"u8282u70B9u4F5Cu4E1A\",\"x\":346,\"componentStyleMode\":\"1\",\"y\":457,\"componentName\":\"NODE_DEFAULT\",\"id\":\"6b61d0bc-9200-430c-be21-788153fd9be5\",\"connectID\":\"\"},{\"componentType\":\"node\",\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component001.png\",\"itemType\":\"node\",\"shape\":\"flowNode\",\"componentCode\":\"NODE_DEFAULT\",\"functionShapeIdx\":0,\"icon\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component001.png\",\"label\":\"Normal\",\"functionShapeVisibleCount\":4,\"isOnly\":true,\"functionShapes\":[],\"options\":{\"size\":[150,40],\"style\":{\"img\":\"\",\"offset\":0,\"width\":0,\"fill\":\"#fff\",\"radius\":6,\"stroke\":\"#00C587\",\"height\":0}},\"componentFunctionType\":\"NODE\",\"name\":\"u8282u70B9u4F5Cu4E1A\",\"x\":753,\"componentStyleMode\":\"1\",\"y\":476,\"componentName\":\"NODE_DEFAULT\",\"id\":\"603085c1-de5c-4fdd-aed7-791e06bdb3d9\",\"connectID\":\"\"},{\"componentType\":\"connect\",\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component008.png\",\"itemType\":\"connect\",\"shape\":\"icon\",\"componentCode\":\"CONNECT_CONDITION\",\"icon\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component008.png\",\"label\":\"Normal\",\"isOnly\":true,\"options\":{\"size\":[80,80],\"style\":{\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component008.png\",\"offset\":-5,\"width\":0,\"fill\":\"\",\"radius\":0,\"stroke\":\"\",\"height\":0}},\"componentFunctionType\":\"CONNECT\",\"name\":\"u6761u4EF6u5206u652F\",\"x\":545,\"componentStyleMode\":\"1\",\"y\":287,\"componentName\":\"CONNECT_CONDITION\",\"id\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\",\"connectID\":\"\"}],\"edges\":[{\"componentType\":\"connectPoint\",\"sourceAnchor\":0,\"shape\":\"bizFlowEdge\",\"functionShapeIdx\":0,\"startPoint\":{\"x\":545,\"y\":247,\"index\":0,\"id\":\"545-247\"},\"source\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\",\"functionShapeVisibleCount\":3,\"target\":\"23351086-eda4-4da6-8b2f-eaae9b09bfca\",\"endPoint\":{\"x\":547,\"y\":146,\"index\":2,\"id\":\"547-146\"},\"functionShapes\":[],\"targetAnchor\":2,\"style\":{\"offset\":24,\"radius\":8},\"componentName\":\"CONNECT_POINT\",\"id\":\"b70b5c3c-2b9f-4249-a56a-675ecb9c836a\",\"connectID\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\"},{\"componentType\":\"connectPoint\",\"sourceAnchor\":3,\"shape\":\"bizFlowEdge\",\"functionShapeIdx\":0,\"startPoint\":{\"x\":505,\"y\":287,\"index\":3,\"id\":\"505-287\"},\"source\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\",\"functionShapeVisibleCount\":3,\"target\":\"6b61d0bc-9200-430c-be21-788153fd9be5\",\"endPoint\":{\"x\":346,\"y\":421,\"index\":3,\"id\":\"346-421\"},\"functionShapes\":[{\"model\":{\"componentType\":\"event\",\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component018.png\",\"itemType\":\"node-children\",\"shape\":\"icon\",\"componentCode\":\"RULE_DEFAULT\",\"icon\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component018.png\",\"relationComponentType\":[\"connectPoint\"],\"label\":\"Normal\",\"isOnly\":true,\"options\":{\"size\":[16,16],\"style\":{\"img\":\"http://3ycloud-pro.oss-cn-hangzhou.aliyuncs.com/2019102400-0000-0000-0000-component018.png\",\"offset\":-5,\"width\":0,\"fill\":\"\",\"radius\":0,\"stroke\":\"\",\"height\":0}},\"componentFunctionType\":\"RULE\",\"name\":\"u51B3u7B56u89C4u5219\",\"x\":347,\"componentParentId\":\"15cdf8bc-4d8f-4867-bb4f-bcd1409928b6\",\"componentStyleMode\":\"1\",\"y\":329,\"componentName\":\"RULE_DEFAULT\",\"id\":\"0f69bd11-7cdf-4941-99ee-2b45eea4cc97\",\"connectID\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\"},\"id\":\"0f69bd11-7cdf-4941-99ee-2b45eea4cc97\"}],\"targetAnchor\":3,\"style\":{\"offset\":24,\"radius\":8},\"componentName\":\"CONNECT_POINT\",\"id\":\"15cdf8bc-4d8f-4867-bb4f-bcd1409928b6\",\"connectID\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\",\"0f69bd11-7cdf-4941-99ee-2b45eea4cc97\":{\"conditionContentJSON\":\"@xlx=\'222\'\"}},{\"componentType\":\"connectPoint\",\"sourceAnchor\":1,\"shape\":\"bizFlowEdge\",\"functionShapeIdx\":0,\"startPoint\":{\"x\":585,\"y\":287,\"index\":1,\"id\":\"585-287\"},\"source\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\",\"functionShapeVisibleCount\":3,\"target\":\"603085c1-de5c-4fdd-aed7-791e06bdb3d9\",\"endPoint\":{\"x\":753,\"y\":440,\"index\":3,\"id\":\"753-440\"},\"functionShapes\":[],\"targetAnchor\":3,\"style\":{\"offset\":24,\"radius\":8},\"componentName\":\"CONNECT_POINT\",\"id\":\"8b5dd27e-5593-4db7-ab82-53f42375e8ab\",\"connectID\":\"f8b8d8d7-7b49-4142-8a5f-bc303231d21b\"}],\"groups\":[]},\"removedData\":[]}');
INSERT INTO `msg_template` VALUES ('326', '2019-12-03 11:21:03', '2019-12-03 11:21:03', 'dingding', null, null, '33', null, null, null, '');
INSERT INTO `msg_template` VALUES ('327', '2019-12-03 11:21:03', '2019-12-03 11:21:03', 'dingding', null, null, '33', null, null, null, '<\'124214\'>');
INSERT INTO `msg_template` VALUES ('330', '2020-12-12 21:12:21', '2020-12-12 21:12:21', 'wechat', '11', '11', '我是标题', '我是消息内容', '1212', '1212', '2121');
INSERT INTO `msg_template` VALUES ('331', '2020-01-21 02:52:10', '2020-01-21 02:52:10', 'dingding', null, null, '????', null, null, null, null);
INSERT INTO `msg_template` VALUES ('332', '2020-01-21 02:52:10', '2020-01-21 02:52:10', 'dingding', null, null, '????', null, null, null, null);
INSERT INTO `msg_template` VALUES ('333', '2020-01-21 02:52:10', '2020-01-21 02:52:10', 'dingding', null, null, '????', null, null, null, null);
INSERT INTO `msg_template` VALUES ('334', '2020-01-21 02:52:10', '2020-01-21 02:52:10', 'dingding', null, null, '????', null, null, null, null);
INSERT INTO `msg_template` VALUES ('335', '2020-01-21 02:52:10', '2020-01-21 02:52:10', 'dingding', null, null, '????', null, null, null, null);

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `craeteDate` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateDate` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `question` varchar(255) DEFAULT NULL COMMENT '知识库标题',
  `answer` varchar(255) DEFAULT NULL COMMENT '知识库内容',
  `creater` varchar(255) DEFAULT NULL COMMENT '创建人',
  `relationQuestionId` varchar(11) DEFAULT NULL COMMENT '关联问题id列表,逗号分隔',
  `weight` int(11) DEFAULT NULL COMMENT '权重',
  `priseCount` int(255) DEFAULT NULL COMMENT '点赞数',
  `delete` tinyint(12) NOT NULL DEFAULT '0' COMMENT '是否已删除(0:未删除   1:已删除)',
  PRIMARY KEY (`id`,`delete`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COMMENT='知识库';

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '2020-01-04 13:20:26', '2020-01-04 13:20:26', '怎么在网上购买水果?', '亲,您可在各大手机应用商城下载百果园App,有超多的果果在等您带走哦~', 'xieluxin', null, '0', '0', '0');
INSERT INTO `question` VALUES ('2', '2020-01-04 13:21:04', '2020-01-04 13:21:04', '百果园App有哪些特色服务?', null, 'xieluxin', '4,8', '0', '0', '0');
INSERT INTO `question` VALUES ('3', '2020-01-04 13:21:14', '2020-01-04 13:21:14', ' 实物和图片有差异?', null, 'xieluxin', null, '0', '0', '0');
INSERT INTO `question` VALUES ('4', '2020-01-04 13:21:22', '2020-01-04 13:21:22', '可以送货上门吗?', null, 'xieluxin', null, '2', '0', '0');
INSERT INTO `question` VALUES ('5', '2020-01-04 13:21:27', '2020-01-04 13:21:27', '收货后发现水果有问题?', null, 'xieluxin', null, '0', '0', '0');
INSERT INTO `question` VALUES ('6', '2020-01-04 13:21:33', '2020-01-04 13:21:33', '百果园app上果品价格和门店价格是一样的吗?', null, 'xieluxin', null, '1', '0', '0');
INSERT INTO `question` VALUES ('7', '2020-01-04 13:21:37', '2020-01-04 13:21:37', '退换货?', null, 'xieluxin', '11,14,15', '0', '0', '0');
INSERT INTO `question` VALUES ('8', '2020-01-04 13:21:46', '2020-01-04 13:21:46', '门店地址和电话?', null, 'xieluxin', null, '1', '0', '0');
INSERT INTO `question` VALUES ('9', '2020-01-04 13:21:54', '2020-01-04 13:21:54', '门店营业时间?', null, 'xieluxin', null, '0', '0', '0');
INSERT INTO `question` VALUES ('10', '2020-01-04 13:21:59', '2020-01-04 13:21:59', '线上买的水果会不新鲜吗?', null, 'xieluxin', null, '0', '0', '0');
INSERT INTO `question` VALUES ('11', '2020-01-04 13:22:04', '2020-01-04 13:22:04', '退款要收手续费吗?', null, 'xieluxin', null, '0', '0', '0');
INSERT INTO `question` VALUES ('12', '2020-01-04 13:22:13', '2020-01-04 13:22:13', '购买的商品是百果园配送吗?', null, 'xieluxin', null, '0', '0', '0');
INSERT INTO `question` VALUES ('13', '2020-01-04 13:22:18', '2020-01-04 13:22:18', 'App售后服务与门店是一样的吗?', null, 'xieluxin', null, '4', '0', '0');
INSERT INTO `question` VALUES ('14', '2020-01-04 13:22:22', '2020-01-04 13:22:22', '我的退款为什么少了?', null, 'xieluxin', null, '0', '0', '0');
INSERT INTO `question` VALUES ('15', '2020-01-04 13:22:25', '2020-01-04 13:22:25', '订单取消后还能恢复吗?', null, 'xieluxin', null, '0', '0', '0');
INSERT INTO `question` VALUES ('16', '2020-01-04 13:22:29', '2020-01-04 13:22:29', '如何查询订单物流信息？', null, 'xieluxin', null, '0', '0', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `phone` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `nickName` varchar(255) DEFAULT '' COMMENT '用户昵称',
  `status` varchar(255) DEFAULT NULL COMMENT '状态(0:无效  1:有效)',
  `icon` varchar(2048) DEFAULT NULL COMMENT '用户头像地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '18', '111', '111', '', '1', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1020771565,2453337692&fm=26&gp=0.jpg');
INSERT INTO `user` VALUES ('2', '99', '222', '222', '', '1', 'http://img5.imgtn.bdimg.com/it/u=2491588266,1963864761&fm=26&gp=0.jpg');
