/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : elasticsearch

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 15/08/2022 14:31:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position`  (
  `companyName` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` double NULL DEFAULT NULL,
  `positionAdvantage` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `companyId` double NULL DEFAULT NULL,
  `positionName` varchar(240) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salary` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salaryMin` double NULL DEFAULT NULL,
  `salaryMax` double NULL DEFAULT NULL,
  `salaryMonth` double NULL DEFAULT NULL,
  `education` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `workYear` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jobNature` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chargeField` blob NULL,
  `createTime` datetime NULL DEFAULT NULL,
  `email` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publishTime` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isEnable` double NULL DEFAULT NULL,
  `isIndex` double NULL DEFAULT NULL,
  `city` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderby` double NULL DEFAULT NULL,
  `isAdvice` double NULL DEFAULT NULL,
  `showorder` double NULL DEFAULT NULL,
  `publishUserId` double NULL DEFAULT NULL,
  `workAddress` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `generateTime` datetime NULL DEFAULT NULL,
  `bornTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isReward` double NULL DEFAULT NULL,
  `rewardMoney` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isExpired` double NULL DEFAULT NULL,
  `positionDetailPV` double NULL DEFAULT NULL,
  `offlineTime` datetime NULL DEFAULT NULL,
  `positionDetailPV_cnbeta` double NULL DEFAULT NULL,
  `adviceTime` datetime NULL DEFAULT NULL,
  `comeFrom` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receivedResumeCount` double NULL DEFAULT NULL,
  `refuseResumeCount` double NULL DEFAULT NULL,
  `markCanInterviewCount` double NULL DEFAULT NULL,
  `haveNoticeInterCount` double NULL DEFAULT NULL,
  `isForbidden` double NULL DEFAULT NULL,
  `reason` varchar(768) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `verifyTime` datetime NULL DEFAULT NULL,
  `adWord` double NULL DEFAULT NULL,
  `adRankAndTime` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adTimes` double NULL DEFAULT NULL,
  `adStartTime` datetime NULL DEFAULT NULL,
  `adEndTime` datetime NULL DEFAULT NULL,
  `adBeforeDetailPV` double NULL DEFAULT NULL,
  `adAfterDetailPV` double NULL DEFAULT NULL,
  `adBeforeReceivedCount` double NULL DEFAULT NULL,
  `adAfterReceivedCount` double NULL DEFAULT NULL,
  `adjustScore` double NULL DEFAULT NULL,
  `weightStartTime` datetime NULL DEFAULT NULL,
  `weightEndTime` datetime NULL DEFAULT NULL,
  `isForward` bit(1) NULL DEFAULT NULL,
  `forwardEmail` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isSchoolJob` bit(1) NULL DEFAULT NULL,
  `type` tinyint NULL DEFAULT NULL,
  `prolong_offline_time` datetime NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES ('百度', 1, 'lianhfisnhdh', 141823, 'java', '15k-25k', 15, 25, 0, '本科', '3-5年', '全职', NULL, '2018-12-06 17:17:24', '', NULL, 1, 0, '青岛', NULL, 0, 0, 100013344, NULL, '2018-11-22 14:58:49', '2020-09-06 11:52:45', 0, NULL, 1, 0, '2018-12-06 17:21:26', 0, NULL, 'andorid', 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, '2020-07-27 14:55:59', '2020-09-30 00:00:58', b'0', '', b'0', 0, NULL);
INSERT INTO `position` VALUES ('阿里', 3, 'Web测试工程师1', 141956, 'Web测试工程师1', '2k-20k', 2, 20, 0, '本科', '1-3年', '全职', NULL, '2017-08-24 07:14:11', 'anan1@lagou.com', '0', 0, 0, '青岛', 65, 0, 1373869361621, 100013340, '北京', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 828, '2018-05-02 16:00:05', 0, NULL, 'andorid', 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('腾讯', 4, '美女多222', 147, 'Web测试工程师', '10k-12k', 10, 12, 0, '本科', '4', '全职', NULL, '2016-07-22 10:24:18', 'fengshao@lagou.com', '2', 0, 0, '北京', 65, 0, 1373870620501, 100011815, '北京', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 752, '2017-10-28 00:00:05', 0, NULL, 'lagouOpen', 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'1', 'alan@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('360', 5, '手机测试工程师111', 147, '手机测试工程师', '2k-20k', 2, 20, 0, '本科', '1-3年', '全职', NULL, '2016-07-22 10:24:18', 'fengshao@lagou.com', '2', 0, 0, '北京', 65, 0, 1373875824893, 100011815, '北京', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 788, '2017-01-16 09:41:33', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('小米', 6, '前端工程师（页面制作）', 147, '前端工程师（页面制作）', '2k-20k', 2, 20, 0, '本科', '1-3年', '全职', NULL, '2016-07-22 10:24:18', 'fengshao@lagou.com', '6', 0, 0, '北京', 65, 0, 1373876343375, 100011815, '北京', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 723, '2017-01-16 09:41:33', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('京东', 7, 'PHP软件工程师', 147, 'PHP软件工程师', '2k-20k', 2, 20, 0, '本科', '1-3年', '全职', NULL, '2016-07-22 10:24:18', 'fengshao@lagou.com', '0', 0, 0, '北京', 65, 0, 1373877071767, 100011815, '北京', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 634, '2017-01-16 09:41:33', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'1', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('亚马逊', 8, 'PHP软件工程师', 147, 'PHP软件工程师', '2k-20k', 2, 20, 0, '本科', '1-3年', '全职', NULL, '2016-07-22 10:24:18', 'fengshao@lagou.com', '2', 0, 0, '北京', 65, 0, 1373877366356, 100011815, '北京', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 774, '2017-01-16 09:41:33', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('口袋购物', 9, 'IPhone手机开发工程师', 147, 'IPhone手机开发工程师', '2k-20k', 2, 20, 0, '本科', '1-3年', '全职', NULL, '2016-07-22 10:24:18', 'fengshao@lagou.com', '0', 0, 0, '北京', 65, 0, 1373877881539, 100011815, '北京', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 650, '2017-01-16 09:41:33', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('当当网', 10, '产品经理', 147, '产品经理', '2k-20k', 2, 20, 0, '本科', '3-5年', '全职', NULL, '2016-07-22 10:24:18', 'fengshao@lagou.com', '6', 0, 0, '北京', 65, 0, 1373878138496, 100011815, '北京', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 299, '2017-01-16 09:41:34', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('聚美优品', 11, '扁平管理', 147, 'C++高级软件工程师（界面开发）', '2k-20k', 2, 20, 0, '本科', '不限', '全职', NULL, '2016-07-22 10:24:18', 'fengshao@lagou.com', '0', 0, 0, '北京', 100, 0, 1373878590050, 100011815, '北京', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 34, '2017-01-16 09:41:34', 0, NULL, NULL, 0, 0, 0, 0, 1, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('美团', 12, '产品运营', 147, '产品运营', '2k-20k', 2, 20, 0, '本科', '1-3年', '全职', NULL, '2019-01-29 11:18:13', 'fengshao@lagou.com', '7', 0, 0, '北京', 65, 0, 1373878652026, 100011815, '北京', '2015-08-18 12:05:24', '2019-01-30 12:02:33', 0, NULL, 1, 327, '2017-01-16 09:41:34', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', '', b'0', 0, NULL);
INSERT INTO `position` VALUES ('拉手网', 13, '制度和环境比较人性化', 5, 'Flash开发工程师', '2k-20k', 2, 20, 0, '本科', '不限', '全职', NULL, '2020-06-15 18:06:24', 'fengshao@lagou.com', '0', 0, 0, '上海', 100, 0, 1373878742151, 2, '上海', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 40, '2018-10-20 00:00:19', 0, NULL, NULL, 0, 0, 0, 0, 1, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('明星衣橱', 14, '扁平管理', 5, 'PHP开发工程师', '2k-20k', 2, 20, 0, '大专', '3-5年', '全职', NULL, '2020-06-15 18:06:24', 'fengshao@lagou.com', '1', 0, 0, '上海', 100, 0, 1373878926196, 2, '上海', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 26, '2018-10-20 00:00:19', 1, NULL, NULL, 0, 0, 0, 0, 1, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('美丽说', 15, '帅哥美女多', 4, '社区运营经理', '2k-20k', 2, 20, 0, '大专', '1-3年', '全职', NULL, '2020-06-15 18:06:08', '6666@qq.com', '3', 0, 0, '上海', 65, 0, 1373878937637, 1, '上海', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 234, '2018-10-20 00:00:20', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('去哪儿', 16, '扁平管理', 5, '产品经理', '2k-20k', 2, 20, 0, '本科', '1-3年', '全职', NULL, '2020-06-15 18:06:24', 'fengshao@lagou.com', '18', 0, 0, '上海', 100, 0, 1373879131552, 2, '上海', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 63, '2018-10-20 00:00:20', 2, NULL, NULL, 0, 0, 0, 0, 1, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('艺龙', 17, '员工福利好', 4, 'UI交互设计师', '2k-20k', 2, 20, 0, '本科', '1-3年', '全职', NULL, '2020-06-15 18:06:09', '6666@qq.com', '8', 0, 0, '上海', 65, 0, 1373879215143, 1, '上海', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 243, '2018-10-20 00:00:20', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('豆瓣', 18, '员工福利好', 4, '视觉设计师', '2k-20k', 2, 20, 0, '本科', '不限', '全职', NULL, '2020-06-15 18:06:09', '6666@qq.com', '8', 0, 0, '上海', 65, 0, 1373879318142, 1, '上海', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 243, '2018-10-20 00:00:20', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('知乎', 19, '员工福利好', 5, 'JAVA开发工程师', '2k-20k', 2, 20, 0, '大专', '1-3年', '全职', NULL, '2020-06-15 18:06:24', 'fengshao@lagou.com', '12', 0, 0, '上海', 100, 0, 1373879768887, 2, '上海', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 6, '2018-10-20 00:00:20', 0, NULL, NULL, 0, 0, 0, 0, 1, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('Nice', 20, '员工福利好', 4, '数据编辑', '2k-20k', 2, 20, 0, '大专', '不限', '全职', NULL, '2020-06-15 18:06:09', '6666@qq.com', '3', 0, 0, '上海', 65, 0, 1373879543712, 1, '上海', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 214, '2018-10-20 00:00:20', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('脉脉', 21, '帅哥多', 5, '测试工程师（移动端）', '2k-20k', 2, 20, 0, '大专', '1-3年', '全职', NULL, '2020-06-15 18:06:25', 'fengshao@lagou.com', '1', 0, 0, '上海', 100, 0, 1373879757316, 2, '上海', '2013-07-20 11:01:35', '2013-07-20 11:01:35', 0, NULL, 1, 5, '2018-10-20 00:00:20', 0, NULL, NULL, 0, 0, 0, 0, 1, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('果壳', 22, '员工福利好', 4, '网站运营专员', '2k-20k', 2, 20, 0, '本科', '1-3年', '全职', NULL, '2020-06-15 18:06:10', '6666@qq.com', '4', 0, 0, '上海', 65, 0, 1373879661503, 1, '上海', '2013-07-20 11:01:35', '2013-07-20 11:01:35', 0, NULL, 1, 315, '2018-10-20 00:00:20', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('陌陌', 23, '美女多、员工福利好', 5, 'IOS 开发工程师', '2k-20k', 2, 20, 0, '本科', '不限', '全职', NULL, '2020-06-15 18:06:25', 'fengshao@lagou.com', '2', 0, 0, '上海', 100, 0, 1373879747360, 2, '上海', '2013-07-20 11:01:35', '2013-07-20 11:01:35', 0, NULL, 1, 3, '2018-10-20 00:00:20', 0, NULL, NULL, 0, 0, 0, 0, 1, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('锤子手机', 24, '节日礼物', 5, 'Android开发工程师', '2k-20k', 2, 20, 0, '本科', '1-3年', '全职', NULL, '2020-06-15 18:06:25', 'fengshao@lagou.com', '3', 0, 0, '上海', 100, 0, 1373879738700, 2, '上海', '2013-07-20 11:01:35', '2013-07-20 11:01:35', 0, NULL, 1, 8, '2018-10-20 00:00:20', 0, NULL, NULL, 0, 0, 0, 0, 1, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('凤凰网', 25, '员工福利好', 4, 'BD', '2k-20k', 2, 20, 0, '本科', '不限', '全职', NULL, '2020-06-15 18:06:10', '6666@qq.com', '0', 0, 0, '上海', 65, 0, 1373879769461, 1, '上海', '2013-07-20 11:01:35', '2013-07-20 11:01:35', 0, NULL, 1, 360, '2018-10-20 00:00:20', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('豌豆荚', 26, '美女多、员工福利好', 5, 'PHP开发工程师（游戏网站）', '2k-20k', 2, 20, 0, '大专', '1-3年', '全职', NULL, '2020-06-15 18:06:25', 'fengshao@lagou.com', '1', 0, 0, '上海', 100, 0, 1373880113172, 2, '上海', '2013-07-20 11:01:35', '2013-07-20 11:01:35', 0, NULL, 1, 6, '2018-10-20 00:00:20', 0, NULL, NULL, 0, 0, 0, 0, 1, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('友盟', 27, '员工福利好', 6, '产品经理', '2k-20k', 2, 20, 0, '不限', '不限', '全职', NULL, '2020-06-15 18:06:11', '6666@qq.com', '6', 0, 0, '上海', 55, 0, 1373881057811, 1, '上海', '2013-07-20 11:01:35', '2013-07-20 11:01:35', 0, NULL, 1, 210, '2018-10-20 00:00:20', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('新浪', 28, '员工福利好', 8, '编辑助理', '2k-20k', 2, 20, 0, '不限', '不限', '全职', NULL, '2020-06-15 18:06:11', '6666@qq.com', '3', 0, 0, '上海', 15, 0, 1373882286658, 1, '上海', '2013-07-20 11:01:35', '2013-07-20 11:01:35', 0, NULL, 1, 360, '2018-10-20 00:00:20', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('网易', 29, '员工福利好', 8, '美工、网页设计', '2k-20k', 2, 20, 0, '不限', '不限', '全职', NULL, '2020-06-15 18:06:11', '6666@qq.com', '1', 0, 0, '上海', 15, 0, 1373882357697, 1, '上海', '2013-07-20 11:01:35', '2013-07-20 11:01:35', 0, NULL, 1, 329, '2018-10-20 00:00:20', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('今日头条', 30, '职位年薪：15-30万', 7, 'js前端高级工程师', '12k-25k', 12, 25, 0, '本科', '3-5年', '全职', NULL, '2016-07-22 10:24:18', 'test@testtest01.com', '1', 1, 0, '北京', 50, 0, 1373882639044, 183, '北京', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 379, '2018-10-20 00:00:20', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', 'fengshao@lagou.com', b'0', 0, NULL);
INSERT INTO `position` VALUES ('极客公园', 31, '薪资构成：基本薪资 + 奖金/提成', 7, 'UI设计师', '2k-20k', 2, 20, 0, '不限', '不限', '全职', NULL, '2016-07-22 10:24:18', 'test@testtest01.com', '25', 1, 0, '北京', 50, 0, 1373883039599, 183, '北京', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 311, '2018-10-20 00:00:20', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', '', b'0', 0, NULL);
INSERT INTO `position` VALUES ('微软', 32, '通信交通：有补助', 7, 'android程序员', '12k-15k', 12, 15, 0, '本科', '1-3年', '全职', NULL, '2016-07-22 10:24:18', 'test@testtest01.com', '3', 1, 0, '北京', 50, 0, 1373883142193, 183, '北京', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 270, '2018-10-20 00:00:20', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', '', b'0', 0, NULL);
INSERT INTO `position` VALUES ('36氪', 33, '居住福利：住房补贴', 7, 'IOS程序员', '2k-20k', 2, 20, 0, '不限', '1-3年', '全职', NULL, '2016-07-22 10:24:18', 'test@testtest01.com', '13', 1, 0, '北京', 50, 0, 1373883247413, 183, '北京', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 301, '2018-10-20 00:00:20', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, '2019-04-11 00:00:00', '2019-04-18 23:59:59', b'0', '', b'0', 0, NULL);
INSERT INTO `position` VALUES ('搜房网', 34, '国际企业', 9, '技术开发工程师', '7k-10k', 7, 10, 0, '不限', '不限', '全职', NULL, '2020-06-15 18:06:12', '6666@qq.com', '1', 0, 0, '北京', 40, 0, 1373884037734, 1, '北京', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 337, '2018-10-20 00:00:20', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', '', b'0', 0, NULL);
INSERT INTO `position` VALUES ('央视网', 35, '员工福利好', 9, 'Flash 资深设计师', '10k-15k', 10, 15, 0, '不限', '1-3年', '全职', NULL, '2020-06-15 18:06:13', '6666@qq.com', '0', 0, 0, '北京', 40, 0, 1373884229000, 1, '北京', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 371, '2018-10-20 00:00:20', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', '', b'0', 0, NULL);
INSERT INTO `position` VALUES ('汽车之家', 36, '员工福利好', 9, '数码分析师', '7k-10k', 7, 10, 0, '本科', '不限', '全职', NULL, '2020-06-15 18:06:13', '6666@qq.com', '3', 0, 0, '北京', 40, 0, 1373884393050, 1, '北京', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 290, '2018-10-20 00:00:21', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', '', b'0', 0, NULL);
INSERT INTO `position` VALUES ('印象笔记', 37, '员工福利好', 9, '数据顾问', '7k-10k', 7, 10, 0, '本科', '不限', '全职', NULL, '2020-06-15 18:06:13', '6666@qq.com', '7', 0, 0, '北京', 40, 0, 1373884954342, 1, '北京', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 379, '2018-10-20 00:00:21', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', '', b'0', 0, NULL);
INSERT INTO `position` VALUES ('金山', 38, '如果你只想跟聪明的人一起工作，就加入我们', 10, '软件工程师', '7k-7k', 7, 7, 0, '本科', '不限', '全职', NULL, '2016-07-22 10:24:18', 'anming@hsgh.com', '1', 1, 0, '北京', 65, 0, 1373885055935, 193, '北京', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 292, '2018-10-20 00:00:21', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', '', b'0', 0, NULL);
INSERT INTO `position` VALUES ('滴滴', 39, '优秀者，可解决北京市户口', 11, '手机测试工程师', '2k-5k', 2, 5, 0, '大专', '1-3年', '全职', NULL, '2016-07-22 10:24:18', 'lixiao@a-onesoft.com', '9', 1, 0, '北京', 40, 0, 1373886219984, 197, '北京', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 348, '2018-10-20 00:00:21', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', '', b'0', 0, NULL);
INSERT INTO `position` VALUES ('猎豹移', 40, '优秀者，可解决北京市户口', 11, '美术UI', '5k-10k', 5, 10, 0, '本科', '3-5年', '全职', NULL, '2016-07-22 10:24:18', 'lixiao@a-onesoft.com', '1', 1, 0, '北京', 40, 0, 1373886377328, 197, '北京', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 345, '2018-10-20 00:00:21', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', '', b'0', 0, NULL);
INSERT INTO `position` VALUES ('联想', 41, '员工福利好', 12, '系统工程师', '2k-20k', 2, 20, 0, '不限', '1-3年', '全职', NULL, '2020-06-15 18:06:13', '6666@qq.com', '1', 0, 0, '上海', 15, 0, 1373890215550, 1, '上海', '2013-07-20 11:01:35', '2013-07-20 11:01:35', 0, NULL, 1, 315, '2018-10-20 00:00:21', 2, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', '', b'0', 0, NULL);
INSERT INTO `position` VALUES (NULL, 42, '员工福利好', 12, '前端工程师', '2k-20k', 2, 20, 0, '不限', '1-3年', '全职', NULL, '2020-06-15 18:06:13', '6666@qq.com', '3', 0, 0, '上海', 15, 0, 1373890347725, 1, '上海', '2013-07-20 11:01:35', '2013-07-20 11:01:35', 0, NULL, 1, 545, '2018-10-20 00:00:21', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', '', b'0', 0, NULL);
INSERT INTO `position` VALUES ('APUS', 43, '员工福利好', 12, 'Android开发工程师', '2k-20k', 2, 20, 0, '不限', '1-3年', '全职', NULL, '2020-06-15 18:06:13', '6666@qq.com', '6', 0, 0, '上海', 15, 0, 1373890444399, 1, '上海', '2013-07-20 11:01:35', '2013-07-20 11:01:35', 0, NULL, 1, 296, '2018-10-20 00:00:21', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', '', b'0', 0, NULL);
INSERT INTO `position` VALUES (NULL, 44, '员工福利好', 12, 'IOS开发工程师', '2k-20k', 2, 20, 0, '不限', '1-3年', '全职', NULL, '2020-06-15 18:06:14', '6666@qq.com', '7', 0, 0, '上海', 15, 0, 1373890590732, 1, '上海', '2013-07-20 11:01:35', '2013-07-20 11:01:35', 0, NULL, 1, 327, '2018-10-20 00:00:21', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', '', b'0', 0, NULL);
INSERT INTO `position` VALUES (NULL, 45, '优秀者，可解决北京市户口', 11, 'ios海外推广', '5k-10k', 5, 10, 0, '本科', '1-3年', '全职', NULL, '2016-07-22 10:24:18', 'lixiao@a-onesoft.com', '8', 1, 0, '北京', 40, 0, 1373890665844, 197, '北京', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 332, '2018-10-20 00:00:21', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', '', b'0', 0, NULL);
INSERT INTO `position` VALUES (NULL, 46, '优秀者，可解决北京市户口', 11, '美术特效', '5k-10k', 5, 10, 0, '不限', '3-5年', '全职', NULL, '2016-07-22 10:24:18', 'lixiao@a-onesoft.com', '1', 1, 0, '北京', 40, 0, 1373890778792, 197, '北京', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 326, '2018-10-20 00:00:21', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', '', b'0', 0, NULL);
INSERT INTO `position` VALUES (NULL, 47, '员工福利好', 12, '数据库工程师', '2k-20k', 2, 20, 0, '不限', '不限', '全职', NULL, '2020-06-15 18:06:14', '6666@qq.com', '0', 0, 0, '上海', 15, 0, 1373890917741, 1, '上海', '2013-07-20 11:01:35', '2013-07-20 11:01:35', 0, NULL, 1, 190, '2018-10-20 00:00:21', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', '', b'0', 0, NULL);
INSERT INTO `position` VALUES (NULL, 48, '优秀者，可解决北京市户口', 11, '测试实习', '2k-5k', 2, 5, 0, '本科', '应届毕业生', '实习', NULL, '2016-07-22 10:24:18', 'lixiao@a-onesoft.com', '13', 1, 0, '北京', 40, 0, 1373890841711, 197, '北京', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 327, '2018-10-20 00:00:21', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', '', b'0', 0, NULL);
INSERT INTO `position` VALUES (NULL, 49, '员工福利好', 12, '后端工程师', '2k-20k', 2, 20, 0, '本科', '不限', '全职', NULL, '2020-06-15 18:06:14', '6666@qq.com', '0', 0, 0, '上海', 15, 0, 1373890902610, 1, '上海', '2013-07-20 11:01:35', '2013-07-20 11:01:35', 0, NULL, 1, 162, '2018-10-20 00:00:22', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', '', b'0', 0, NULL);
INSERT INTO `position` VALUES (NULL, 50, '优秀者，可解决北京市户口', 11, '.NET开发工程师', '5k-10k', 5, 10, 0, '不限', '1-3年', '全职', NULL, '2016-07-22 10:24:18', 'lixiao@a-onesoft.com', '5', 1, 0, '北京', 40, 0, 1373890960056, 197, '北京', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 329, '2018-10-20 00:00:22', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', '', b'0', 0, NULL);
INSERT INTO `position` VALUES (NULL, 51, '优秀者，可解决北京市户口', 11, '美术实习', '2k-5k', 2, 5, 0, '硕士', '1年以下', '实习', NULL, '2016-07-22 10:24:18', 'lixiao@a-onesoft.com', '1', 1, 0, '北京', 40, 0, 1373891110617, 197, '北京', '2015-08-18 12:05:24', '2015-08-18 12:05:24', 0, NULL, 1, 267, '2018-10-20 00:00:22', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, b'0', '', b'0', 0, NULL);

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '博客标题',
  `author` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '博客作者',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '博客内容',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
INSERT INTO `t_blog` VALUES (1, 'Springboot 为什么这', 'bywind', '没错 Springboot ', '2019-12-08 01:44:29', '2019-12-08 01:44:34');
INSERT INTO `t_blog` VALUES (3, 'Springboot 中 Redis', 'bywind', 'Spring Boot中除了对常用的关系型数据库提供了优秀的自动化支持之外，对于很多NoSQL数据库一样提供了自动化配置的支持，包括：Redis, MongoDB, Elasticsearch, Solr和Cassandra。\n\n使用Redis\nRedis是一个开源的使用ANSI C语言编写、支持网络、可基于内存亦可持久化的日志型、Key-Value数据库。\n\nRedis官网\nRedis中文社区\n引入依赖\nSpring Boot提供的数据访问框架Spring Data Redis基于Jedis。可以通过引入spring-boot-starter-redis来配置依赖关系。\n\n<dependency>\n    <groupId>org.springframework.boot</groupId>\n    <artifactId>spring-boot-starter-redis</artifactId>\n</dependency>\n注意不同版本的spring boot下，redis的starter依赖名略有不同，如果上面的不行，可以尝试spring-boot-starter-data-redis\n\n参数配置\n按照惯例在application.properties中加入Redis服务端的相关配置，具体说明如下：\n\n# REDIS (RedisProperties)\n# Redis数据库索引（默认为0）\nspring.redis.database=0\n# Redis服务器地址\nspring.redis.host=localhost\n# Redis服务器连接端口\nspring.redis.port=6379\n# Redis服务器连接密码（默认为空）\nspring.redis.password=\n# 连接池最大连接数（使用负值表示没有限制）\nspring.redis.pool.max-active=8\n# 连接池最大阻塞等待时间（使用负值表示没有限制）\nspring.redis.pool.max-wait=-1\n# 连接池中的最大空闲连接\nspring.redis.pool.max-idle=8\n# 连接池中的最小空闲连接\nspring.redis.pool.min-idle=0\n# 连接超时时间（毫秒）\nspring.redis.timeout=0\n其中spring.redis.database的配置通常使用0即可，Redis在配置的时候可以设置数据库数量，默认为16，可以理解为数据库的schema\n\n测试访问\n通过编写测试用例，举例说明如何访问Redis。\n\n@RunWith(SpringJUnit4ClassRunner.class)\n@SpringApplicationConfiguration(Application.class)\npublic class ApplicationTests {\n\n	@Autowired\n	private StringRedisTemplate stringRedisTemplate;\n\n	@Test\n	public void test() throws Exception {\n\n		// 保存字符串\n		stringRedisTemplate.opsForValue().set(\"aaa\", \"111\");\n		Assert.assertEquals(\"111\", stringRedisTemplate.opsForValue().get(\"aaa\"));\n\n    }\n\n}\n通过上面这段极为简单的测试案例演示了如何通过自动配置的StringRedisTemplate对象进行Redis的读写操作，该对象从命名中就可注意到支持的是String类型。如果有使用过spring-data-redis的开发者一定熟悉RedisTemplate<K, V>接口，StringRedisTemplate就相当于RedisTemplate<String, String>的实现。\n\n除了String类型，实战中我们还经常会在Redis中存储对象，这时候我们就会想是否可以使用类似RedisTemplate<String, User>来初始化并进行操作。但是Spring Boot并不支持直接使用，需要我们自己实现RedisSerializer<T>接口来对传入对象进行序列化和反序列化，下面我们通过一个实例来完成对象的读写操作。\n\n创建要存储的对象：User\npublic class User implements Serializable {\n\n    private static final long serialVersionUID = -1L;\n\n    private String username;\n    private Integer age;\n\n    public User(String username, Integer age) {\n        this.username = username;\n        this.age = age;\n    }\n\n    // 省略getter和setter\n\n}\n实现对象的序列化接口\n\npublic class RedisObjectSerializer implements RedisSerializer<Object> {\n\n  private Converter<Object, byte[]> serializer = new SerializingConverter();\n  private Converter<byte[], Object> deserializer = new DeserializingConverter();\n\n  static final byte[] EMPTY_ARRAY = new byte[0];\n\n  public Object deserialize(byte[] bytes) {\n    if (isEmpty(bytes)) {\n      return null;\n    }\n\n    try {\n      return deserializer.convert(bytes);\n    } catch (Exception ex) {\n      throw new SerializationException(\"Cannot deserialize\", ex);\n    }\n  }\n\n  public byte[] serialize(Object object) {\n    if (object == null) {\n      return EMPTY_ARRAY;\n    }\n\n    try {\n      return serializer.convert(object);\n    } catch (Exception ex) {\n      return EMPTY_ARRAY;\n    }\n  }\n\n  private boolean isEmpty(byte[] data) {\n    return (data == null || data.length == 0);\n  }\n}\n配置针对User的RedisTemplate实例\n\n@Configuration\npublic class RedisConfig {\n\n    @Bean\n    JedisConnectionFactory jedisConnectionFactory() {\n        return new JedisConnectionFactory();\n    }\n\n    @Bean\n    public RedisTemplate<String, User> redisTemplate(RedisConnectionFactory factory) {\n        RedisTemplate<String, User> template = new RedisTemplate<String, User>();\n        template.setConnectionFactory(jedisConnectionFactory());\n        template.setKeySerializer(new StringRedisSerializer());\n        template.setValueSerializer(new RedisObjectSerializer());\n        return template;\n    }\n\n\n}\n完成了配置工作后，编写测试用例实验效果\n\n@RunWith(SpringJUnit4ClassRunner.class)\n@SpringApplicationConfiguration(Application.class)\npublic class ApplicationTests {\n\n	@Autowired\n	private RedisTemplate<String, User> redisTemplate;\n\n	@Test\n	public void test() throws Exception {\n\n		// 保存对象\n		User user = new User(\"超人\", 20);\n		redisTemplate.opsForValue().set(user.getUsername(), user);\n\n		user = new User(\"蝙蝠侠\", 30);\n		redisTemplate.opsForValue().set(user.getUsername(), user);\n\n		user = new User(\"蜘蛛侠\", 40);\n		redisTemplate.opsForValue().set(user.getUsername(), user);\n\n		Assert.assertEquals(20, redisTemplate.opsForValue().get(\"超人\").getAge().longValue());\n		Assert.assertEquals(30, redisTemplate.opsForValue().get(\"蝙蝠侠\").getAge().longValue());\n		Assert.assertEquals(40, redisTemplate.opsForValue().get(\"蜘蛛侠\").getAge().longValue());\n\n	}\n\n}\n当然spring-data-redis中提供的数据操作远不止这些，本文仅作为在Spring Boot中使用redis时的配置参考，更多对于redis的操作使用，请参考Spring-data-redis Reference。\n\n代码示例\n本文的相关例子可以查看下面仓库中的chapter3-2-5目录：\n\nGithub：https://github.com/dyc87112/SpringBoot-Learning\nGitee：https://gitee.com/didispace/SpringBoot-Learning\n如果您觉得本文不错，欢迎Star支持，您的关注是我坚持的动力！', '2019-12-08 01:44:29', '2019-12-08 01:44:56');
INSERT INTO `t_blog` VALUES (4, 'Springboot 中如何优化', 'bywind', '没错 Springboot ', '2019-12-08 01:44:29', '2019-12-08 01:44:56');
INSERT INTO `t_blog` VALUES (5, 'Springboot 消息队列', 'bywind', '没错 Springboot ', '2019-12-08 01:44:29', '2019-12-08 01:44:56');
INSERT INTO `t_blog` VALUES (6, 'Docker Compose + Springboot', 'bywind', '没错 Springboot ', '2019-12-08 01:44:29', '2019-12-08 01:44:56');

SET FOREIGN_KEY_CHECKS = 1;
