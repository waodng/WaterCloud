/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : watercloudnetdb

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 23/04/2020 08:44:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for art_article
-- ----------------------------
DROP TABLE IF EXISTS `art_article`;
CREATE TABLE `art_article`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_CategoryId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Zhaiyao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_Source` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_SubTitle` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_IsRed` tinyint(1) NULL DEFAULT NULL,
  `F_IsHot` tinyint(1) NULL DEFAULT NULL,
  `F_IsTop` tinyint(1) NULL DEFAULT NULL,
  `F_IsSlide` tinyint(1) NULL DEFAULT NULL,
  `F_IsMsg` tinyint(1) NULL DEFAULT NULL,
  `F_Content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `F_ImgUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LinkUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Click` int(11) NULL DEFAULT NULL,
  `F_Status` tinyint(1) NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for art_category
-- ----------------------------
DROP TABLE IF EXISTS `art_category`;
CREATE TABLE `art_category`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ParentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Layer` int(11) NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_IsHead` tinyint(1) NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for art_tags
-- ----------------------------
DROP TABLE IF EXISTS `art_tags`;
CREATE TABLE `art_tags`  (
  `T_TagId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `T_Tag` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dtk_appconfig
-- ----------------------------
DROP TABLE IF EXISTS `dtk_appconfig`;
CREATE TABLE `dtk_appconfig`  (
  `AppCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AppName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AgentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AppId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AppKey` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AppSecret` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Access_Token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreatorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateTime` timestamp(0) NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifierId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifyTime` timestamp(0) NULL DEFAULT NULL,
  `DeleterId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeleteTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dtk_corpconfig
-- ----------------------------
DROP TABLE IF EXISTS `dtk_corpconfig`;
CREATE TABLE `dtk_corpconfig`  (
  `uuId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CorpId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CorpSecret` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AppName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `HeadPic` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ApiUrl` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AppId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AgentId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AppKey` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AppSecret` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Access_Token` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Status` int(11) NULL DEFAULT NULL,
  `Encoding` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreatorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateTime` timestamp(0) NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifierId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifyTime` timestamp(0) NULL DEFAULT NULL,
  `DeleterId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeleteTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dtk_corpconfig
-- ----------------------------
INSERT INTO `dtk_corpconfig` VALUES ('1', 'dingbxlfyt9shwpqql7a', 'RUCXv_EziNLtYo76sBJFoNwj69L1shAOfPbfrABDafgnepo6jQHT7af6gwT4hpK6', '测试接口使用', NULL, NULL, NULL, '656255403', 'dingbxlfyt9shwpqql7a', 'RUCXv_EziNLtYo76sBJFoNwj69L1shAOfPbfrABDafgnepo6jQHT7af6gwT4hpK6', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for dtk_department
-- ----------------------------
DROP TABLE IF EXISTS `dtk_department`;
CREATE TABLE `dtk_department`  (
  `Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Order` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ParentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateDeptGroup` tinyint(1) NULL DEFAULT NULL,
  `AutoAddUser` tinyint(1) NULL DEFAULT NULL,
  `DeptHiding` tinyint(1) NULL DEFAULT NULL,
  `DeptPermits` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UserPermits` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OuterDept` tinyint(1) NULL DEFAULT NULL,
  `OuterPermitDepts` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OuterPermitUsers` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OrgDeptOwner` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeptManagerUseridList` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SourceIdentifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `GroupContainSubDept` tinyint(1) NULL DEFAULT NULL,
  `UpdateTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dtk_processinstancelist
-- ----------------------------
DROP TABLE IF EXISTS `dtk_processinstancelist`;
CREATE TABLE `dtk_processinstancelist`  (
  `uuId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ProcessCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Approvers` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateTime2` timestamp(0) NULL DEFAULT NULL,
  `FinishTime` timestamp(0) NULL DEFAULT NULL,
  `OriginatorUserId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OriginatorDeptId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CcUserids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CcPosition` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Result` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BusinessId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OriginatorDeptName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BizAction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Tasks` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FormComponentValues` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreatorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateTime` timestamp(0) NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifierId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifyTime` timestamp(0) NULL DEFAULT NULL,
  `DeleterId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeleteTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dtk_user
-- ----------------------------
DROP TABLE IF EXISTS `dtk_user`;
CREATE TABLE `dtk_user`  (
  `UserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OpenId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Active` tinyint(1) NULL DEFAULT NULL,
  `OrderInDepts` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IsAdmin` tinyint(1) NULL DEFAULT NULL,
  `IsBoss` tinyint(1) NULL DEFAULT NULL,
  `Unionid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IsLeaderInDepts` tinyint(1) NULL DEFAULT NULL,
  `IsLeader` tinyint(1) NULL DEFAULT NULL,
  `IsHide` tinyint(1) NULL DEFAULT NULL,
  `Department` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Position` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `HiredDate` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `JobNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IsSenior` tinyint(1) NULL DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OrganizeId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RoleId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SysUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UpdateTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for message_shortmsg
-- ----------------------------
DROP TABLE IF EXISTS `message_shortmsg`;
CREATE TABLE `message_shortmsg`  (
  `uuid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `aliCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `aliMessage` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `aliSendStatus` int(11) NULL DEFAULT NULL,
  `aliContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `aliSendDate` timestamp(0) NULL DEFAULT NULL,
  `aliReceiveDate` timestamp(0) NULL DEFAULT NULL,
  `phoneNumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `signName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `templateCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `templateParam` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creatorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` timestamp(0) NULL DEFAULT NULL,
  `modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modifierId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modifyTime` timestamp(0) NULL DEFAULT NULL,
  `deleterId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deleteTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_area
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_ParentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Layers` int(11) NULL DEFAULT NULL,
  `F_EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_SimpleSpelling` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `IX_Sys_Area`(`F_Layers`, `F_FullName`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_area
-- ----------------------------
INSERT INTO `sys_area` VALUES ('110000', '0', 1, '110000', '北京', 'bj', 110000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('110100', '110000', 2, '110100', '北京市', 'bjs', 110100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('120000', '0', 1, '120000', '天津', 'tj', 120000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, '2020-04-20 17:06:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_area` VALUES ('120100', '120000', 2, '120100', '天津市', 'tjs', 120100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130000', '0', 1, '130000', '河北省', 'hbs', 130000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130100', '130000', 2, '130100', '石家庄市', 'sjzs', 130100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130200', '130000', 2, '130200', '唐山市', 'tss', 130200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130300', '130000', 2, '130300', '秦皇岛市', 'qhds', 130300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130400', '130000', 2, '130400', '邯郸市', 'hds', 130400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130500', '130000', 2, '130500', '邢台市', 'xts', 130500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130600', '130000', 2, '130600', '保定市', 'bds', 130600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130700', '130000', 2, '130700', '张家口市', 'zjks', 130700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130800', '130000', 2, '130800', '承德市', 'cds', 130800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130900', '130000', 2, '130900', '沧州市', 'czs', 130900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131000', '130000', 2, '131000', '廊坊市', 'lfs', 131000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131100', '130000', 2, '131100', '衡水市', 'hss', 131100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140000', '0', 1, '140000', '山西省', 'sxs', 140000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140100', '140000', 2, '140100', '太原市', 'tys', 140100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140200', '140000', 2, '140200', '大同市', 'dts', 140200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140300', '140000', 2, '140300', '阳泉市', 'yqs', 140300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140400', '140000', 2, '140400', '长治市', 'czs', 140400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140500', '140000', 2, '140500', '晋城市', 'jcs', 140500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140600', '140000', 2, '140600', '朔州市', 'szs', 140600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140700', '140000', 2, '140700', '晋中市', 'jzs', 140700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140800', '140000', 2, '140800', '运城市', 'ycs', 140800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140900', '140000', 2, '140900', '忻州市', 'xzs', 140900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141000', '140000', 2, '141000', '临汾市', 'lfs', 141000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141100', '140000', 2, '141100', '吕梁市', 'lls', 141100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150000', '0', 1, '150000', '内蒙古自治区', 'nmgzzq', 150000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150100', '150000', 2, '150100', '呼和浩特市', 'hhhts', 150100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150200', '150000', 2, '150200', '包头市', 'bts', 150200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150300', '150000', 2, '150300', '乌海市', 'whs', 150300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150400', '150000', 2, '150400', '赤峰市', 'cfs', 150400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150500', '150000', 2, '150500', '通辽市', 'tls', 150500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150600', '150000', 2, '150600', '鄂尔多斯市', 'eedss', 150600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150700', '150000', 2, '150700', '呼伦贝尔市', 'hlbes', 150700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150800', '150000', 2, '150800', '巴彦淖尔市', 'bynes', 150800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150900', '150000', 2, '150900', '乌兰察布市', 'wlcbs', 150900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152200', '150000', 2, '152200', '兴安盟', 'xam', 152200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152500', '150000', 2, '152500', '锡林郭勒盟', 'xlglm', 152500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152900', '150000', 2, '152900', '阿拉善盟', 'alsm', 152900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210000', '0', 1, '210000', '辽宁省', 'lns', 210000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210100', '210000', 2, '210100', '沈阳市', 'sys', 210100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210200', '210000', 2, '210200', '大连市', 'dls', 210200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210300', '210000', 2, '210300', '鞍山市', 'ass', 210300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210400', '210000', 2, '210400', '抚顺市', 'fss', 210400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210500', '210000', 2, '210500', '本溪市', 'bxs', 210500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210600', '210000', 2, '210600', '丹东市', 'dds', 210600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210700', '210000', 2, '210700', '锦州市', 'jzs', 210700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210800', '210000', 2, '210800', '营口市', 'yks', 210800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210900', '210000', 2, '210900', '阜新市', 'fxs', 210900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211000', '210000', 2, '211000', '辽阳市', 'lys', 211000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211100', '210000', 2, '211100', '盘锦市', 'pjs', 211100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211200', '210000', 2, '211200', '铁岭市', 'tls', 211200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211300', '210000', 2, '211300', '朝阳市', 'zys', 211300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211400', '210000', 2, '211400', '葫芦岛市', 'hlds', 211400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220000', '0', 1, '220000', '吉林省', 'jls', 220000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220100', '220000', 2, '220100', '长春市', 'zcs', 220100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220200', '220000', 2, '220200', '吉林市', 'jls', 220200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220300', '220000', 2, '220300', '四平市', 'sps', 220300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220400', '220000', 2, '220400', '辽源市', 'lys', 220400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220500', '220000', 2, '220500', '通化市', 'ths', 220500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220600', '220000', 2, '220600', '白山市', 'bss', 220600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220700', '220000', 2, '220700', '松原市', 'sys', 220700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220800', '220000', 2, '220800', '白城市', 'bcs', 220800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('222400', '220000', 2, '222400', '延边朝鲜族自治州', 'ybzxzzzz', 222400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230000', '0', 1, '230000', '黑龙江省', 'hljs', 230000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230100', '230000', 2, '230100', '哈尔滨市', 'hebs', 230100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230200', '230000', 2, '230200', '齐齐哈尔市', 'qqhes', 230200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230300', '230000', 2, '230300', '鸡西市', 'jxs', 230300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230400', '230000', 2, '230400', '鹤岗市', 'hgs', 230400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230500', '230000', 2, '230500', '双鸭山市', 'syss', 230500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230600', '230000', 2, '230600', '大庆市', 'dqs', 230600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230700', '230000', 2, '230700', '伊春市', 'ycs', 230700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230800', '230000', 2, '230800', '佳木斯市', 'jmss', 230800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230900', '230000', 2, '230900', '七台河市', 'qths', 230900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231000', '230000', 2, '231000', '牡丹江市', 'mdjs', 231000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231100', '230000', 2, '231100', '黑河市', 'hhs', 231100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231200', '230000', 2, '231200', '绥化市', 'shs', 231200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('232700', '230000', 2, '232700', '大兴安岭地区', 'dxaldq', 232700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('310000', '0', 1, '310000', '上海', 'sh', 310000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('310100', '310000', 2, '310100', '上海市', 'shs', 310100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320000', '0', 1, '320000', '江苏省', 'jss', 320000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320100', '320000', 2, '320100', '南京市', 'njs', 320100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320200', '320000', 2, '320200', '无锡市', 'wxs', 320200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320300', '320000', 2, '320300', '徐州市', 'xzs', 320300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320400', '320000', 2, '320400', '常州市', 'czs', 320400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320500', '320000', 2, '320500', '苏州市', 'szs', 320500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320600', '320000', 2, '320600', '南通市', 'nts', 320600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320700', '320000', 2, '320700', '连云港市', 'lygs', 320700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320800', '320000', 2, '320800', '淮安市', 'has', 320800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320900', '320000', 2, '320900', '盐城市', 'ycs', 320900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321000', '320000', 2, '321000', '扬州市', 'yzs', 321000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321100', '320000', 2, '321100', '镇江市', 'zjs', 321100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321200', '320000', 2, '321200', '泰州市', 'tzs', 321200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321300', '320000', 2, '321300', '宿迁市', 'sqs', 321300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330000', '0', 1, '330000', '浙江省', 'zjs', 330000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330100', '330000', 2, '330100', '杭州市', 'hzs', 330100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330200', '330000', 2, '330200', '宁波市', 'nbs', 330200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330300', '330000', 2, '330300', '温州市', 'wzs', 330300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330400', '330000', 2, '330400', '嘉兴市', 'jxs', 330400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330500', '330000', 2, '330500', '湖州市', 'hzs', 330500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330600', '330000', 2, '330600', '绍兴市', 'sxs', 330600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330700', '330000', 2, '330700', '金华市', 'jhs', 330700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330800', '330000', 2, '330800', '衢州市', 'qzs', 330800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330900', '330000', 2, '330900', '舟山市', 'zss', 330900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('331000', '330000', 2, '331000', '台州市', 'tzs', 331000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('331100', '330000', 2, '331100', '丽水市', 'lss', 331100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340000', '0', 1, '340000', '安徽省', 'ahs', 340000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340100', '340000', 2, '340100', '合肥市', 'hfs', 340100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340200', '340000', 2, '340200', '芜湖市', 'whs', 340200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340300', '340000', 2, '340300', '蚌埠市', 'bbs', 340300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340400', '340000', 2, '340400', '淮南市', 'hns', 340400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340500', '340000', 2, '340500', '马鞍山市', 'mass', 340500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340600', '340000', 2, '340600', '淮北市', 'hbs', 340600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340700', '340000', 2, '340700', '铜陵市', 'tls', 340700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340800', '340000', 2, '340800', '安庆市', 'aqs', 340800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341000', '340000', 2, '341000', '黄山市', 'hss', 341000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341100', '340000', 2, '341100', '滁州市', 'czs', 341100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341200', '340000', 2, '341200', '阜阳市', 'fys', 341200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341300', '340000', 2, '341300', '宿州市', 'szs', 341300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341500', '340000', 2, '341500', '六安市', 'las', 341500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341600', '340000', 2, '341600', '亳州市', 'bzs', 341600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341700', '340000', 2, '341700', '池州市', 'czs', 341700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341800', '340000', 2, '341800', '宣城市', 'xcs', 341800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350000', '0', 1, '350000', '福建省', 'fjs', 350000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350100', '350000', 2, '350100', '福州市', 'fzs', 350100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350200', '350000', 2, '350200', '厦门市', 'xms', 350200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350300', '350000', 2, '350300', '莆田市', 'pts', 350300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350400', '350000', 2, '350400', '三明市', 'sms', 350400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350500', '350000', 2, '350500', '泉州市', 'qzs', 350500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350600', '350000', 2, '350600', '漳州市', 'zzs', 350600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350700', '350000', 2, '350700', '南平市', 'nps', 350700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350800', '350000', 2, '350800', '龙岩市', 'lys', 350800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350900', '350000', 2, '350900', '宁德市', 'nds', 350900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360000', '0', 1, '360000', '江西省', 'jxs', 360000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360100', '360000', 2, '360100', '南昌市', 'ncs', 360100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360200', '360000', 2, '360200', '景德镇市', 'jdzs', 360200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360300', '360000', 2, '360300', '萍乡市', 'pxs', 360300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360400', '360000', 2, '360400', '九江市', 'jjs', 360400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360500', '360000', 2, '360500', '新余市', 'xys', 360500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360600', '360000', 2, '360600', '鹰潭市', 'yts', 360600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360700', '360000', 2, '360700', '赣州市', 'gzs', 360700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360800', '360000', 2, '360800', '吉安市', 'jas', 360800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360900', '360000', 2, '360900', '宜春市', 'ycs', 360900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361000', '360000', 2, '361000', '抚州市', 'fzs', 361000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361100', '360000', 2, '361100', '上饶市', 'srs', 361100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370000', '0', 1, '370000', '山东省', 'sds', 370000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370100', '370000', 2, '370100', '济南市', 'jns', 370100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370200', '370000', 2, '370200', '青岛市', 'qds', 370200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370300', '370000', 2, '370300', '淄博市', 'zbs', 370300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370400', '370000', 2, '370400', '枣庄市', 'zzs', 370400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370500', '370000', 2, '370500', '东营市', 'dys', 370500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370600', '370000', 2, '370600', '烟台市', 'yts', 370600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370700', '370000', 2, '370700', '潍坊市', 'wfs', 370700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370800', '370000', 2, '370800', '济宁市', 'jns', 370800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370900', '370000', 2, '370900', '泰安市', 'tas', 370900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371000', '370000', 2, '371000', '威海市', 'whs', 371000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371100', '370000', 2, '371100', '日照市', 'rzs', 371100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371200', '370000', 2, '371200', '莱芜市', 'lws', 371200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371300', '370000', 2, '371300', '临沂市', 'lys', 371300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371400', '370000', 2, '371400', '德州市', 'dzs', 371400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371500', '370000', 2, '371500', '聊城市', 'lcs', 371500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371600', '370000', 2, '371600', '滨州市', 'bzs', 371600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371700', '370000', 2, '371700', '菏泽市', 'hzs', 371700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410000', '0', 1, '410000', '河南省', 'hns', 410000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410100', '410000', 2, '410100', '郑州市', 'zzs', 410100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410200', '410000', 2, '410200', '开封市', 'kfs', 410200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410300', '410000', 2, '410300', '洛阳市', 'lys', 410300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410400', '410000', 2, '410400', '平顶山市', 'pdss', 410400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410500', '410000', 2, '410500', '安阳市', 'ays', 410500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410600', '410000', 2, '410600', '鹤壁市', 'hbs', 410600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410700', '410000', 2, '410700', '新乡市', 'xxs', 410700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410800', '410000', 2, '410800', '焦作市', 'jzs', 410800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410881', '410000', 2, '410881', '济源市', 'jys', 410881, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410900', '410000', 2, '410900', '濮阳市', 'pys', 410900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411000', '410000', 2, '411000', '许昌市', 'xcs', 411000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411100', '410000', 2, '411100', '漯河市', 'lhs', 411100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411200', '410000', 2, '411200', '三门峡市', 'smxs', 411200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411300', '410000', 2, '411300', '南阳市', 'nys', 411300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411400', '410000', 2, '411400', '商丘市', 'sqs', 411400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411500', '410000', 2, '411500', '信阳市', 'xys', 411500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411600', '410000', 2, '411600', '周口市', 'zks', 411600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411700', '410000', 2, '411700', '驻马店市', 'zmds', 411700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420000', '0', 1, '420000', '湖北省', 'hbs', 420000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420100', '420000', 2, '420100', '武汉市', 'whs', 420100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420200', '420000', 2, '420200', '黄石市', 'hss', 420200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420300', '420000', 2, '420300', '十堰市', 'sys', 420300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420500', '420000', 2, '420500', '宜昌市', 'ycs', 420500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420600', '420000', 2, '420600', '襄阳市', 'xys', 420600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420700', '420000', 2, '420700', '鄂州市', 'ezs', 420700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420800', '420000', 2, '420800', '荆门市', 'jms', 420800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420900', '420000', 2, '420900', '孝感市', 'xgs', 420900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421000', '420000', 2, '421000', '荆州市', 'jzs', 421000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421100', '420000', 2, '421100', '黄冈市', 'hgs', 421100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421200', '420000', 2, '421200', '咸宁市', 'xns', 421200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421300', '420000', 2, '421300', '随州市', 'szs', 421300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('422800', '420000', 2, '422800', '恩施土家族苗族自治州', 'estjzmzzzz', 422800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430000', '0', 1, '430000', '湖南省', 'hns', 430000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430100', '430000', 2, '430100', '长沙市', 'zss', 430100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430200', '430000', 2, '430200', '株洲市', 'zzs', 430200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430300', '430000', 2, '430300', '湘潭市', 'xts', 430300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430400', '430000', 2, '430400', '衡阳市', 'hys', 430400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430500', '430000', 2, '430500', '邵阳市', 'sys', 430500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430600', '430000', 2, '430600', '岳阳市', 'yys', 430600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430700', '430000', 2, '430700', '常德市', 'cds', 430700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430800', '430000', 2, '430800', '张家界市', 'zjjs', 430800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430900', '430000', 2, '430900', '益阳市', 'yys', 430900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431000', '430000', 2, '431000', '郴州市', 'czs', 431000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431100', '430000', 2, '431100', '永州市', 'yzs', 431100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431200', '430000', 2, '431200', '怀化市', 'hhs', 431200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431300', '430000', 2, '431300', '娄底市', 'lds', 431300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('433100', '430000', 2, '433100', '湘西土家族苗族自治州', 'xxtjzmzzzz', 433100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440000', '0', 1, '440000', '广东省', 'gds', 440000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440100', '440000', 2, '440100', '广州市', 'gzs', 440100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440200', '440000', 2, '440200', '韶关市', 'sgs', 440200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440300', '440000', 2, '440300', '深圳市', 'szs', 440300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440400', '440000', 2, '440400', '珠海市', 'zhs', 440400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440500', '440000', 2, '440500', '汕头市', 'sts', 440500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440600', '440000', 2, '440600', '佛山市', 'fss', 440600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440700', '440000', 2, '440700', '江门市', 'jms', 440700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440800', '440000', 2, '440800', '湛江市', 'zjs', 440800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440900', '440000', 2, '440900', '茂名市', 'mms', 440900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441200', '440000', 2, '441200', '肇庆市', 'zqs', 441200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441300', '440000', 2, '441300', '惠州市', 'hzs', 441300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441400', '440000', 2, '441400', '梅州市', 'mzs', 441400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441500', '440000', 2, '441500', '汕尾市', 'sws', 441500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441600', '440000', 2, '441600', '河源市', 'hys', 441600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441700', '440000', 2, '441700', '阳江市', 'yjs', 441700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441800', '440000', 2, '441800', '清远市', 'qys', 441800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('445100', '440000', 2, '445100', '潮州市', 'czs', 445100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('445200', '440000', 2, '445200', '揭阳市', 'jys', 445200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('445300', '440000', 2, '445300', '云浮市', 'yfs', 445300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450000', '0', 1, '450000', '广西壮族自治区', 'gxzzzzq', 450000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450100', '450000', 2, '450100', '南宁市', 'nns', 450100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450200', '450000', 2, '450200', '柳州市', 'lzs', 450200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450300', '450000', 2, '450300', '桂林市', 'gls', 450300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450400', '450000', 2, '450400', '梧州市', 'wzs', 450400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450500', '450000', 2, '450500', '北海市', 'bhs', 450500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450600', '450000', 2, '450600', '防城港市', 'fcgs', 450600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450700', '450000', 2, '450700', '钦州市', 'qzs', 450700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450800', '450000', 2, '450800', '贵港市', 'ggs', 450800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450900', '450000', 2, '450900', '玉林市', 'yls', 450900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451000', '450000', 2, '451000', '百色市', 'bss', 451000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451100', '450000', 2, '451100', '贺州市', 'hzs', 451100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451200', '450000', 2, '451200', '河池市', 'hcs', 451200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451300', '450000', 2, '451300', '来宾市', 'lbs', 451300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451400', '450000', 2, '451400', '崇左市', 'czs', 451400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('460000', '0', 1, '460000', '海南省', 'hns', 460000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('460100', '460000', 2, '460100', '海口市', 'hks', 460100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500000', '0', 1, '500000', '重庆', 'zq', 500000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500100', '500000', 2, '500100', '重庆市', 'zqs', 500100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510000', '0', 1, '510000', '四川省', 'scs', 510000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510100', '510000', 2, '510100', '成都市', 'cds', 510100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510300', '510000', 2, '510300', '自贡市', 'zgs', 510300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510400', '510000', 2, '510400', '攀枝花市', 'pzhs', 510400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510500', '510000', 2, '510500', '泸州市', 'lzs', 510500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510600', '510000', 2, '510600', '德阳市', 'dys', 510600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510700', '510000', 2, '510700', '绵阳市', 'mys', 510700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510800', '510000', 2, '510800', '广元市', 'gys', 510800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510900', '510000', 2, '510900', '遂宁市', 'sns', 510900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511000', '510000', 2, '511000', '内江市', 'njs', 511000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511100', '510000', 2, '511100', '乐山市', 'yss', 511100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511300', '510000', 2, '511300', '南充市', 'ncs', 511300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511400', '510000', 2, '511400', '眉山市', 'mss', 511400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511500', '510000', 2, '511500', '宜宾市', 'ybs', 511500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511600', '510000', 2, '511600', '广安市', 'gas', 511600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511700', '510000', 2, '511700', '达州市', 'dzs', 511700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511800', '510000', 2, '511800', '雅安市', 'yas', 511800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511900', '510000', 2, '511900', '巴中市', 'bzs', 511900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('512000', '510000', 2, '512000', '资阳市', 'zys', 512000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513200', '510000', 2, '513200', '阿坝藏族羌族自治州', 'abzzqzzzz', 513200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513300', '510000', 2, '513300', '甘孜藏族自治州', 'gzzzzzz', 513300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513400', '510000', 2, '513400', '凉山彝族自治州', 'lsyzzzz', 513400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520000', '0', 1, '520000', '贵州省', 'gzs', 520000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520100', '520000', 2, '520100', '贵阳市', 'gys', 520100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520200', '520000', 2, '520200', '六盘水市', 'lpss', 520200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520300', '520000', 2, '520300', '遵义市', 'zys', 520300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520400', '520000', 2, '520400', '安顺市', 'ass', 520400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522200', '520000', 2, '522200', '铜仁市', 'trs', 522200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522300', '520000', 2, '522300', '黔西南布依族苗族自治州', 'qxnbyzmzzzz', 522300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522400', '520000', 2, '522400', '毕节市', 'bjs', 522400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522600', '520000', 2, '522600', '黔东南苗族侗族自治州', 'qdnmztzzzz', 522600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522700', '520000', 2, '522700', '黔南布依族苗族自治州', 'qnbyzmzzzz', 522700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530000', '0', 1, '530000', '云南省', 'yns', 530000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530100', '530000', 2, '530100', '昆明市', 'kms', 530100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530300', '530000', 2, '530300', '曲靖市', 'qjs', 530300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530400', '530000', 2, '530400', '玉溪市', 'yxs', 530400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530500', '530000', 2, '530500', '保山市', 'bss', 530500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530600', '530000', 2, '530600', '昭通市', 'zts', 530600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530700', '530000', 2, '530700', '丽江市', 'ljs', 530700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530800', '530000', 2, '530800', '普洱市', 'pes', 530800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530900', '530000', 2, '530900', '临沧市', 'lcs', 530900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532300', '530000', 2, '532300', '楚雄彝族自治州', 'cxyzzzz', 532300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532500', '530000', 2, '532500', '红河哈尼族彝族自治州', 'hhhnzyzzzz', 532500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532600', '530000', 2, '532600', '文山壮族苗族自治州', 'wszzmzzzz', 532600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532800', '530000', 2, '532800', '西双版纳傣族自治州', 'xsbndzzzz', 532800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532900', '530000', 2, '532900', '大理白族自治州', 'dlbzzzz', 532900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('533100', '530000', 2, '533100', '德宏傣族景颇族自治州', 'dhdzjpzzzz', 533100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('533300', '530000', 2, '533300', '怒江傈僳族自治州', 'njlszzzz', 533300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('533400', '530000', 2, '533400', '迪庆藏族自治州', 'dqzzzzz', 533400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540000', '0', 1, '540000', '西藏自治区', 'xzzzq', 540000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540100', '540000', 2, '540100', '拉萨市', 'lss', 540100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('542100', '540000', 2, '542100', '昌都地区', 'cddq', 542100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('542200', '540000', 2, '542200', '山南地区', 'sndq', 542200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('542300', '540000', 2, '542300', '日喀则地区', 'rkzdq', 542300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('542400', '540000', 2, '542400', '那曲地区', 'nqdq', 542400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('542500', '540000', 2, '542500', '阿里地区', 'aldq', 542500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('542600', '540000', 2, '542600', '林芝地区', 'lzdq', 542600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610000', '0', 1, '610000', '陕西省', 'sxs', 610000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610100', '610000', 2, '610100', '西安市', 'xas', 610100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610200', '610000', 2, '610200', '铜川市', 'tcs', 610200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610300', '610000', 2, '610300', '宝鸡市', 'bjs', 610300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610400', '610000', 2, '610400', '咸阳市', 'xys', 610400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610500', '610000', 2, '610500', '渭南市', 'wns', 610500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610600', '610000', 2, '610600', '延安市', 'yas', 610600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610700', '610000', 2, '610700', '汉中市', 'hzs', 610700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610800', '610000', 2, '610800', '榆林市', 'yls', 610800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610900', '610000', 2, '610900', '安康市', 'aks', 610900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('611000', '610000', 2, '611000', '商洛市', 'sls', 611000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620000', '0', 1, '620000', '甘肃省', 'gss', 620000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620100', '620000', 2, '620100', '兰州市', 'lzs', 620100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620200', '620000', 2, '620200', '嘉峪关市', 'jygs', 620200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620300', '620000', 2, '620300', '金昌市', 'jcs', 620300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620400', '620000', 2, '620400', '白银市', 'bys', 620400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620500', '620000', 2, '620500', '天水市', 'tss', 620500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620600', '620000', 2, '620600', '武威市', 'wws', 620600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620700', '620000', 2, '620700', '张掖市', 'zys', 620700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620800', '620000', 2, '620800', '平凉市', 'pls', 620800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620900', '620000', 2, '620900', '酒泉市', 'jqs', 620900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621000', '620000', 2, '621000', '庆阳市', 'qys', 621000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621100', '620000', 2, '621100', '定西市', 'dxs', 621100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621200', '620000', 2, '621200', '陇南市', 'lns', 621200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('622900', '620000', 2, '622900', '临夏回族自治州', 'lxhzzzz', 622900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('623000', '620000', 2, '623000', '甘南藏族自治州', 'gnzzzzz', 623000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('630000', '0', 1, '630000', '青海省', 'qhs', 630000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('630100', '630000', 2, '630100', '西宁市', 'xns', 630100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632100', '630000', 2, '632100', '海东市', 'hds', 632100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632200', '630000', 2, '632200', '海北藏族自治州', 'hbzzzzz', 632200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632300', '630000', 2, '632300', '黄南藏族自治州', 'hnzzzzz', 632300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632500', '630000', 2, '632500', '海南藏族自治州', 'hnzzzzz', 632500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632600', '630000', 2, '632600', '果洛藏族自治州', 'glzzzzz', 632600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632700', '630000', 2, '632700', '玉树藏族自治州', 'yszzzzz', 632700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632800', '630000', 2, '632800', '海西蒙古族藏族自治州', 'hxmgzzzzzz', 632800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640000', '0', 1, '640000', '宁夏回族自治区', 'nxhzzzq', 640000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640100', '640000', 2, '640100', '银川市', 'ycs', 640100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640200', '640000', 2, '640200', '石嘴山市', 'szss', 640200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640300', '640000', 2, '640300', '吴忠市', 'wzs', 640300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640400', '640000', 2, '640400', '固原市', 'gys', 640400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640500', '640000', 2, '640500', '中卫市', 'zws', 640500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650000', '0', 1, '650000', '新疆维吾尔自治区', 'xjwwezzq', 650000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650100', '650000', 2, '650100', '乌鲁木齐市', 'wlmqs', 650100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650200', '650000', 2, '650200', '克拉玛依市', 'klmys', 650200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652100', '650000', 2, '652100', '吐鲁番地区', 'tlfdq', 652100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652200', '650000', 2, '652200', '哈密地区', 'hmdq', 652200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652300', '650000', 2, '652300', '昌吉回族自治州', 'cjhzzzz', 652300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652700', '650000', 2, '652700', '博尔塔拉蒙古自治州', 'betlmgzzz', 652700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652800', '650000', 2, '652800', '巴音郭楞蒙古自治州', 'byglmgzzz', 652800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652900', '650000', 2, '652900', '阿克苏地区', 'aksdq', 652900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653000', '650000', 2, '653000', '克孜勒苏柯尔克孜自治州', 'kzlskekzzzz', 653000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653100', '650000', 2, '653100', '喀什地区', 'ksdq', 653100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653200', '650000', 2, '653200', '和田地区', 'htdq', 653200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654000', '650000', 2, '654000', '伊犁哈萨克自治州', 'ylhskzzz', 654000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654200', '650000', 2, '654200', '塔城地区', 'tcdq', 654200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654300', '650000', 2, '654300', '阿勒泰地区', 'altdq', 654300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('810000', '0', 1, '810000', '香港特别行政区', 'xgtbxzq', 810000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('810100', '810000', 2, '810100', '香港岛', 'xgd', 810100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('810200', '810000', 2, '810200', '九龙', 'jl', 810200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('810300', '810000', 2, '810300', '新界', 'xj', 810300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('820000', '0', 1, '820000', '澳门特别行政区', 'amtbxzq', 820000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('820100', '820000', 2, '820100', '澳门半岛', 'ambd', 820100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('820300', '820000', 2, '820300', '路环岛', 'lhd', 820300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('820400', '820000', 2, '820400', '凼仔岛', 'dzd', 820400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('830000', '0', 1, '830000', '台湾省', 'tws', 830000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('830100', '830000', 2, '830100', '台北市', 'tbs', 830100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('830200', '830000', 2, '830200', '高雄市', 'gxs', 830200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('830300', '830000', 2, '830300', '台南市', 'tns', 830300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('830400', '830000', 2, '830400', '台中市', 'tzs', 830400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('830500', '830000', 2, '830500', '南投县', 'ntx', 830500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('830600', '830000', 2, '830600', '基隆市', 'jls', 830600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('830700', '830000', 2, '830700', '新竹市', 'xzs', 830700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('830800', '830000', 2, '830800', '嘉义市', 'jys', 830800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('830900', '830000', 2, '830900', '宜兰县', 'ylx', 830900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('831000', '830000', 2, '831000', '新竹县', 'xzx', 831000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('831100', '830000', 2, '831100', '桃园县', 'tyx', 831100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('831200', '830000', 2, '831200', '苗栗县', 'mlx', 831200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('831300', '830000', 2, '831300', '彰化县', 'zhx', 831300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('831400', '830000', 2, '831400', '嘉义县', 'jyx', 831400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('831500', '830000', 2, '831500', '云林县', 'ylx', 831500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('831600', '830000', 2, '831600', '屏东县', 'pdx', 831600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('831700', '830000', 2, '831700', '台东县', 'tdx', 831700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('831800', '830000', 2, '831800', '花莲县', 'hlx', 831800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('831900', '830000', 2, '831900', '澎湖县', 'phx', 831900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('832000', '830000', 2, '832000', '新北市', 'xbs', 832000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('832100', '830000', 2, '832100', '台中县', 'tzx', 832100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('832200', '830000', 2, '832200', '连江县', 'ljx', 832200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_dbbackup
-- ----------------------------
DROP TABLE IF EXISTS `sys_dbbackup`;
CREATE TABLE `sys_dbbackup`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_BackupType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DbName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_FileName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_FileSize` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_FilePath` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_BackupTime` timestamp(0) NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_filterip
-- ----------------------------
DROP TABLE IF EXISTS `sys_filterip`;
CREATE TABLE `sys_filterip`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_Type` tinyint(1) NULL DEFAULT NULL,
  `F_StartIP` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_EndIP` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_filterip
-- ----------------------------
INSERT INTO `sys_filterip` VALUES ('4e035f2b-a03b-49b5-a38d-1c6d211a2a04', 1, '192.168.1.1', '192.168.1.10', NULL, 0, 0, '测试', '2016-07-18 17:51:06', NULL, '2020-04-20 16:39:09', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_filterip` VALUES ('b3fbe66f-82cd-4f4a-ada3-61eb5a2d9eee', 0, '192.168.0.1', '192.168.0.255', NULL, 0, 0, NULL, '2016-07-18 17:52:47', NULL, '2020-04-16 14:57:58', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);

-- ----------------------------
-- Table structure for sys_items
-- ----------------------------
DROP TABLE IF EXISTS `sys_items`;
CREATE TABLE `sys_items`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_ParentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_IsTree` tinyint(1) NULL DEFAULT NULL,
  `F_Layers` int(11) NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `IX_Sys_Items`(`F_EnCode`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_items
-- ----------------------------
INSERT INTO `sys_items` VALUES ('00F76465-DBBA-484A-B75C-E81DEE9313E6', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'Education', '学历', 0, 2, 8, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('0DF5B725-5FB8-487F-B0E4-BC563A77EB04', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'DbType', '数据库类型', 0, 2, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('15023A4E-4856-44EB-BE71-36A106E2AA59', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', '103', '民族', 0, 2, 14, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('2748F35F-4EE2-417C-A907-3453146AAF67', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'Certificate', '证件名称', 0, 2, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('77070117-3F1A-41BA-BF81-B8B85BF10D5E', '0', 'Sys_Items', '通用字典', 1, 1, 1, 0, 1, NULL, NULL, NULL, '2020-04-20 17:17:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_items` VALUES ('8CEB2F71-026C-4FA6-9A61-378127AE7320', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', '102', '生育', 0, 2, 13, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'AuditState', '审核状态', 0, 2, 6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('9a7079bd-0660-4549-9c2d-db5e8616619f', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'DbLogType', '系统日志', 0, 2, 16, 0, 1, NULL, '2016-07-19 17:09:45', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'OrganizeCategory', '机构分类', 0, 2, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('BDD797C3-2323-4868-9A63-C8CC3437AEAA', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', '104', '性别', 0, 2, 15, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'RoleType', '角色类型', 0, 2, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('FA7537E2-1C64-4431-84BF-66158DD63269', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', '101', '婚姻', 0, 2, 12, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_itemsdetail
-- ----------------------------
DROP TABLE IF EXISTS `sys_itemsdetail`;
CREATE TABLE `sys_itemsdetail`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_ItemId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ParentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ItemCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ItemName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_SimpleSpelling` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_IsDefault` tinyint(1) NULL DEFAULT NULL,
  `F_Layers` int(11) NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `IX_Sys_ItemsDetail`(`F_ItemId`, `F_ItemCode`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_itemsdetail
-- ----------------------------
INSERT INTO `sys_itemsdetail` VALUES ('0096ad81-4317-486e-9144-a6a02999ff19', '2748F35F-4EE2-417C-A907-3453146AAF67', NULL, '4', '护照', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('04aba88d-f09b-46c6-bd90-a38471399b0e', 'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', NULL, '2', '业务角色', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('1950efdf-8685-4341-8d2c-ac85ac7addd0', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '1', '小学', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('19EE595A-E775-409D-A48F-B33CF9F262C7', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, 'WorkGroup', '小组', NULL, 0, NULL, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('24e39617-f04e-4f6f-9209-ad71e870e7c6', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Submit', '提交', NULL, 0, NULL, 7, 0, 1, NULL, '2016-07-19 17:11:19', NULL, '2016-07-19 18:20:54', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('27e85cb8-04e7-447b-911d-dd1e97dfab83', '0DF5B725-5FB8-487F-B0E4-BC563A77EB04', NULL, 'Oracle', 'Oracle', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('2B540AC5-6E64-4688-BB60-E0C01DFA982C', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, 'SubCompany', '子公司', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('2C3715AC-16F7-48FC-AB40-B0931DB1E729', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, 'Area', '区域', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('34222d46-e0c6-446e-8150-dbefc47a1d5f', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '6', '本科', NULL, 0, NULL, 6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('34a642b2-44d4-485f-b3fc-6cce24f68b0f', '0DF5B725-5FB8-487F-B0E4-BC563A77EB04', NULL, 'MySql', 'MySql', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('355ad7a4-c4f8-4bd3-9c72-ff07983da0f0', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '9', '其他', NULL, 0, NULL, 9, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('392f88a8-02c2-49eb-8aed-b2acf474272a', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Update', '修改', NULL, 0, NULL, 6, 0, 1, NULL, '2016-07-19 17:11:14', NULL, '2016-07-19 18:20:49', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('3c884a03-4f34-4150-b134-966387f1de2a', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Exit', '退出', NULL, 0, NULL, 2, 0, 1, NULL, '2016-07-19 17:10:49', NULL, '2016-07-19 18:20:23', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('3f280e2b-92f6-466c-8cc3-d7c8ff48cc8d', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '7', '硕士', NULL, 0, NULL, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('41053517-215d-4e11-81cd-367c0e9578d7', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, '3', '通过', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('433511a9-78bd-41a0-ab25-e4d4b3423055', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '2', '初中', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('486a82e3-1950-425e-b2ce-b5d98f33016a', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '5', '大专', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('48c4e0f5-f570-4601-8946-6078762db3bf', '2748F35F-4EE2-417C-A907-3453146AAF67', NULL, '3', '军官证', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('49300258-1227-4b85-b6a2-e948dbbe57a4', '15023A4E-4856-44EB-BE71-36A106E2AA59', NULL, '汉族', '汉族', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('49b68663-ad01-4c43-b084-f98e3e23fee8', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, '7', '废弃', NULL, 0, NULL, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('4c2f2428-2e00-4336-b9ce-5a61f24193f6', '2748F35F-4EE2-417C-A907-3453146AAF67', NULL, '2', '士兵证', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('582e0b66-2ee9-4885-9f0c-3ce3ebf96e12', '8CEB2F71-026C-4FA6-9A61-378127AE7320', NULL, '1', '已育', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('5d6def0e-e2a7-48eb-b43c-cc3631f60dd7', 'BDD797C3-2323-4868-9A63-C8CC3437AEAA', NULL, '1', '男', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('63acf96d-6115-4d76-a994-438f59419aad', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, '5', '退回', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('643209c8-931b-4641-9e04-b8bdd11800af', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Login', '登录', NULL, 0, NULL, 1, 0, 1, NULL, '2016-07-19 17:10:39', NULL, '2016-07-19 18:20:17', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('738edf2a-d59f-4992-97ef-d847db23bcb8', 'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, '1', '已婚', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('795f2695-497a-4f5e-ab1d-706095c1edb9', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Other', '其他', NULL, 0, NULL, 0, 0, 1, NULL, '2016-07-19 17:10:33', NULL, '2016-07-19 18:20:09', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('7a6d1bc4-3ec7-4c57-be9b-b4c97d60d5f6', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, '1', '草稿', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('7c1135be-0148-43eb-ae49-62a1e16ebbe3', 'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, '5', '其他', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('7fc8fa11-4acf-409a-a771-aaf1eb81e814', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Exception', '异常', NULL, 0, NULL, 8, 0, 1, NULL, '2016-07-19 17:11:25', NULL, '2016-07-19 18:21:01', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('822baf7c-abdb-4257-9b78-1f550806f544', 'BDD797C3-2323-4868-9A63-C8CC3437AEAA', NULL, '0', '女', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('8b7b38bf-07c5-4f71-a853-41c5add4a94e', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, '6', '完成', NULL, 0, NULL, 6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('930b8de2-049f-4753-b9fd-87f484911ee4', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '8', '博士', NULL, 0, NULL, 8, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('9b6a2225-6138-4cf2-9845-1bbecdf9b3ed', '8CEB2F71-026C-4FA6-9A61-378127AE7320', NULL, '3', '其他', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('a13ccf0d-ac8f-44ac-a522-4a54edf1f0fa', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Delete', '删除', NULL, 0, NULL, 5, 0, 1, NULL, '2016-07-19 17:11:09', NULL, '2016-07-19 18:20:43', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('a4974810-d88d-4d54-82cc-fd779875478f', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '4', '中专', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('A64EBB80-6A24-48AF-A10E-B6A532C32CA6', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, 'Department', '部门', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('a6f271f9-8653-4c5c-86cf-4cd00324b3c3', 'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, '4', '丧偶', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('a7c4aba2-a891-4558-9b0a-bd7a1100a645', 'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, '2', '未婚', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('acb128a6-ff63-4e25-b1e8-0a336ed3ab18', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '3', '高中', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('ace2d5e8-56d4-4c8b-8409-34bc272df404', '2748F35F-4EE2-417C-A907-3453146AAF67', NULL, '5', '其它', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('B97BD7F5-B212-40C1-A1F7-DD9A2E63EEF2', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, 'Group', '集团', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('cc6daa5c-a71c-4b2c-9a98-336bc3ee13c8', 'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', NULL, '3', '其他角色', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('ccc8e274-75da-4eb8-bed0-69008ab7c41c', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Visit', '访问', NULL, 0, NULL, 3, 0, 1, NULL, '2016-07-19 17:10:55', NULL, '2016-07-19 18:20:29', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('ce340c73-5048-4940-b86e-e3b3d53fdb2c', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, '2', '提交', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('D082BDB9-5C34-49BF-BD51-4E85D7BFF646', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, 'Company', '公司', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('D1F439B9-D80E-4547-9EF0-163391854AB5', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, 'SubDepartment', '子部门', NULL, 0, NULL, 6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('d69cb819-2bb3-4e1d-9917-33b9a439233d', '2748F35F-4EE2-417C-A907-3453146AAF67', NULL, '1', '身份证', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('de2167f3-40fe-4bf7-b8cb-5b1c554bad7a', '8CEB2F71-026C-4FA6-9A61-378127AE7320', NULL, '2', '未育', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('e1979a4f-7fc1-42b9-a0e2-52d7059e8fb9', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, '4', '待审', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('e5079bae-a8c0-4209-9019-6a2b4a3a7dac', 'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', NULL, '1', '系统角色', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, '2020-04-20 17:06:53', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('e545061c-93fd-4ca2-ab29-b43db9db798b', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Create', '新增', NULL, 0, NULL, 4, 0, 1, NULL, '2016-07-19 17:11:03', NULL, '2016-07-19 18:20:35', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('f9609400-7caf-49af-ae3c-7671a9292fb3', 'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, '3', '离异', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('fa6c1873-888c-4b70-a2cc-59fccbb22078', '0DF5B725-5FB8-487F-B0E4-BC563A77EB04', NULL, 'SqlServer', 'SqlServer', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_Date` timestamp(0) NULL DEFAULT NULL,
  `F_Account` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_NickName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_IPAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_IPAddressName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ModuleId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ModuleName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Result` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_KeyValue` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('00b9d444-88ce-49a8-aacf-cfa95b4c5005', '2020-04-17 10:34:16', '10010', '10010', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 0, '登录失败，可为空的对象必须具有一个值。', '2020-04-17 10:34:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('00e2c94c-8290-477a-89d2-3b7447c7e1f5', '2020-04-17 13:41:15', '10000', '2222', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 13:41:15', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('021da30b-d40d-4428-95d4-f6368b0af6d0', '2020-04-14 08:25:45', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-14 08:25:45', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('0233641b-e71a-4377-94e2-102d58d8cb8b', '2020-04-20 16:25:08', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-20 16:25:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('04491b36-6e16-48c8-a420-9dd171e131d8', '2020-04-17 10:33:52', 'admin', '超级管理员', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 10:33:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('05ac7eec-3b15-4cb3-ae8a-f682d6f9b7af', '2020-04-17 14:41:28', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,修改操作成功', '2020-04-17 14:41:28', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f');
INSERT INTO `sys_log` VALUES ('06bd8ed4-658c-49de-9cdc-391f9477371a', '2020-04-20 14:34:36', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '系统菜单操作,修改操作成功', '2020-04-20 14:34:36', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '7e4e4a48-4d51-4159-a113-2a211186f13a');
INSERT INTO `sys_log` VALUES ('076b4ca4-dbb3-4439-a8fb-01d7bab8eae6', '2020-04-17 14:46:24', 'admin', '超级管理员', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 14:46:24', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('08783c35-ffde-4469-8275-69aeb212eb44', '2020-04-17 12:59:18', '10000', 'sss', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 12:59:18', 'b6651953-b5fb-4051-8919-c22c827f5741', NULL);
INSERT INTO `sys_log` VALUES ('09008760-d668-4874-8b6e-1ab631a7ce69', '2020-04-20 16:27:28', '10000', '2222', 'Login', '127.0.0.1', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-20 16:27:28', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('0a09af6e-348c-4f79-bf49-5eaa07ab31e6', '2020-04-15 17:07:54', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-15 17:07:54', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('0a20eaf8-790c-4527-ab56-f9add29e727c', '2020-04-17 11:20:09', 'admin', '超级管理员', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 11:20:09', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('0b3c8b31-c08a-45e7-bb90-5b56c0a72d73', '2020-04-17 14:40:10', '10000', '2222', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 14:40:10', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('0c8f5f44-9ceb-4ea4-83b6-a1f1e2e33e82', '2020-04-17 11:39:15', '10000', '10000', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 0, '登录失败，密码不正确，请重新输入，还有4次机会', '2020-04-17 11:39:15', '547395a9-1de6-41c6-a829-f1dc036c60b3', NULL);
INSERT INTO `sys_log` VALUES ('0cf84733-058c-4bdd-a0cf-9255b357bf82', '2020-04-17 14:24:53', '10000', '2222', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 14:24:53', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('0ecb7762-393e-494f-9ae0-04bcabc3a208', '2020-04-17 11:32:58', 'admin', '超级管理员', 'Create', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,新增操作成功', '2020-04-17 11:32:58', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('10391a4c-7f39-4f38-a284-a252c2f74358', '2020-04-20 16:22:35', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-20 16:22:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('14f46472-4324-4906-a9a5-c6ce37fe19bd', '2020-04-17 10:49:58', '10000', '莎莎声', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 10:49:58', '8af4f5d6-85a4-4137-87f8-3d1390a67f93', NULL);
INSERT INTO `sys_log` VALUES ('157ffb79-173c-4e52-9530-977b4a91b2c0', '2020-04-21 10:47:03', 'admin', '超级管理员', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-21 10:47:03', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('17363109-4689-46ae-87bb-fda4cb2e5fd2', '2020-04-14 17:05:30', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-14 17:05:30', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('174285bc-cfba-46c4-bd23-2e50ba2844b3', '2020-04-15 17:07:10', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-15 17:07:10', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('17f45c53-476c-40d9-b0a5-502dd38bcc7a', '2020-04-17 15:00:29', '10000', '2222', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 15:00:29', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('196d35e5-b66c-4492-93c1-bb24c0f9972b', '2020-04-20 17:06:14', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '区域管理操作,修改操作成功', '2020-04-20 17:06:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '120000');
INSERT INTO `sys_log` VALUES ('1a9ffb83-f8f4-45fb-b283-79b241d05e03', '2020-04-17 10:23:39', 'admin', '超级管理员', 'Create', '192.168.1.117', '本地局域网', NULL, '系统管理', 0, '角色管理操作,新增操作失败，无法将类型为“Chloe.MySql.MySqlContext”的对象强制转换为类型“Chloe.SqlServer.MsSqlContext”。', '2020-04-17 10:23:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('1cbf6283-139a-499a-b3a4-40944e9c6257', '2020-04-16 08:30:58', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-16 08:30:58', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('1d8bffac-cc3f-4800-bb6e-52e9c837238d', '2020-04-21 10:11:45', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-21 10:11:45', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('205ed834-72ea-4805-9485-6da42765b21e', '2020-04-17 10:34:03', '10010', '10010', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 0, '登录失败，可为空的对象必须具有一个值。', '2020-04-17 10:34:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('221905d6-6575-4cdb-b53a-1537821dbe30', '2020-04-17 11:32:03', 'admin', '超级管理员', 'Delete', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,删除操作成功', '2020-04-17 11:32:03', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('2245675f-2858-414a-b1de-7a3844b654a4', '2020-04-17 10:37:12', '10010', '10010', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 0, '登录失败，可为空的对象必须具有一个值。', '2020-04-17 10:37:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('22496c00-7ba6-439a-b743-fe3b38dd65e7', '2020-04-17 11:53:44', '10000', 'aaa', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,修改操作成功', '2020-04-17 11:53:44', '547395a9-1de6-41c6-a829-f1dc036c60b3', 'b05efc5b-51a0-4843-8d4d-1e191b2863f1');
INSERT INTO `sys_log` VALUES ('22d78eb6-a85c-4576-b1e9-75ceb18d9d9c', '2020-04-20 15:05:25', '10000', '2222', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-20 15:05:25', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('237a09b6-28bc-4b8a-840e-7ab54a3be53b', '2020-04-15 10:04:14', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-15 10:04:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('251a9d3b-5484-4c64-8a36-965220710815', '2020-04-20 16:39:09', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统安全', 1, '访问控制操作,修改操作成功', '2020-04-20 16:39:09', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '4e035f2b-a03b-49b5-a38d-1c6d211a2a04');
INSERT INTO `sys_log` VALUES ('25c62a7d-f26a-4242-9f42-1f4446c1e9ea', '2020-04-20 16:26:07', 'admin', '超级管理员', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-20 16:26:07', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('264071e1-093f-4af0-ad3d-65c7d7b71de0', '2020-04-15 14:42:39', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-15 14:42:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('26aadf79-54de-422d-8f03-d6826e8ee59b', '2020-04-17 11:21:26', '10000', '莎莎声', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 11:21:26', '8af4f5d6-85a4-4137-87f8-3d1390a67f93', NULL);
INSERT INTO `sys_log` VALUES ('26ee9d7d-5fba-46d7-95e4-d2f3165da5e9', '2020-04-15 17:06:46', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-15 17:06:46', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('282408ad-bd08-464c-ae03-595e773deaab', '2020-04-17 11:20:51', '10000', '莎莎声', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 11:20:51', '8af4f5d6-85a4-4137-87f8-3d1390a67f93', NULL);
INSERT INTO `sys_log` VALUES ('2836ba12-34a4-40c6-81e3-c52165a7f916', '2020-04-17 13:30:45', 'admin', '超级管理员', 'Create', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '用户管理操作,新增操作成功', '2020-04-17 13:30:45', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('29cfb3b9-1902-465d-9cc7-af1e6274cdda', '2020-04-17 10:38:31', '10000', '10000', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 0, '登录失败，可为空的对象必须具有一个值。', '2020-04-17 10:38:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('2a69862a-acce-4b1f-9fbb-dd6b35ce285b', '2020-04-17 13:41:00', '10000', '2222', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 13:41:00', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('2ad16e29-e513-4709-838b-5086946f7c20', '2020-04-17 14:40:41', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 14:40:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('2ae3a346-00cd-4087-8234-123c3d734ace', '2020-04-17 14:26:48', 'admin', '超级管理员', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 14:26:48', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('2b310667-62ce-4924-bb46-fb1b5d501452', '2020-04-20 14:32:55', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-20 14:32:55', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('2b6e46af-e2ae-40e5-a0f3-5473ad2326c5', '2020-04-20 16:00:34', '10000', '2222', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-20 16:00:34', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('2d2b2f7c-4e01-4e88-ac89-05e2761410c9', '2020-04-17 10:59:10', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 10:59:10', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('30d40706-d47c-4bf6-9700-05b0764d207d', '2020-04-17 10:37:36', 'admin', '超级管理员', 'Delete', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '用户管理操作,删除操作成功', '2020-04-17 10:37:36', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('31484b1d-2480-44cc-8af7-c1467a22f952', '2020-04-17 12:56:11', '10000', 'sss', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 12:56:11', 'b6651953-b5fb-4051-8919-c22c827f5741', NULL);
INSERT INTO `sys_log` VALUES ('3275a71b-e6db-4d67-bc18-c7f0172ab29d', '2020-04-17 14:54:54', '10000', '10000', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 0, '登录失败，账户未设置权限,请联系管理员', '2020-04-17 14:54:54', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('359bc24f-5d97-4c0a-8050-eb1d4afa47fc', '2020-04-17 09:03:56', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 09:03:56', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('37ab9f71-44aa-408c-8178-878f41264386', '2020-04-17 10:57:52', '10000', '莎莎声', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 10:57:52', '8af4f5d6-85a4-4137-87f8-3d1390a67f93', NULL);
INSERT INTO `sys_log` VALUES ('3825a7d8-e877-4a9c-8401-27dad0a28ea2', '2020-04-17 10:25:20', 'admin', '超级管理员', 'Create', '192.168.1.117', '本地局域网', NULL, '系统管理', 0, '角色管理操作,新增操作失败，无法将类型为“Chloe.MySql.MySqlContext”的对象强制转换为类型“Chloe.SqlServer.MsSqlContext”。', '2020-04-17 10:25:20', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('3ae2f8bf-050e-4f52-b822-27800a81c1c1', '2020-04-17 11:31:52', 'admin', '超级管理员', 'Delete', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '用户管理操作,删除操作成功', '2020-04-17 11:31:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('3bb6554d-848d-4ffc-b28d-a0134069e889', '2020-04-20 14:34:44', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '系统菜单操作,修改操作成功', '2020-04-20 14:34:44', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '7e4e4a48-4d51-4159-a113-2a211186f13a');
INSERT INTO `sys_log` VALUES ('3bd11fb8-144c-49ff-860f-050f6cc0bd8b', '2020-04-17 10:57:59', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 10:57:59', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('3d405162-b098-4042-ac6d-1cc27f5e87c8', '2020-04-20 14:52:11', '10000', '2222', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-20 14:52:11', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('3dcdf6af-1b29-44c9-ac01-4804fcba6a09', '2020-04-20 14:25:10', 'admin', '超级管理员', 'Login', '127.0.0.1', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-20 14:25:10', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('3e88032b-e92f-4291-96c9-534f81d87cce', '2020-04-17 11:31:26', '10000', '莎莎声', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 11:31:26', '8af4f5d6-85a4-4137-87f8-3d1390a67f93', NULL);
INSERT INTO `sys_log` VALUES ('41a2deff-3034-4494-8038-dc91129a532c', '2020-04-20 16:17:26', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-20 16:17:26', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('424addf9-bde9-4341-bd32-b2d41a7c41d5', '2020-04-17 13:48:06', '10000', '2222', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 13:48:06', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('42b43b9f-6dc0-4dd4-9ac6-b4aed702fd0c', '2020-04-17 14:26:43', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,修改操作成功', '2020-04-17 14:26:43', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f');
INSERT INTO `sys_log` VALUES ('42b50f24-87f8-43db-9bb6-749b3a9213d6', '2020-04-17 11:38:37', 'admin', '超级管理员', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 11:38:37', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('42d7db70-bdbb-4ee1-8f16-efe5e0aec463', '2020-04-17 13:00:32', '10000', 'sss', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 13:00:32', 'b6651953-b5fb-4051-8919-c22c827f5741', NULL);
INSERT INTO `sys_log` VALUES ('4424eb93-1360-4ae5-b921-f1352ddef26c', '2020-04-14 13:31:22', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-14 13:31:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('447f0515-de25-4c35-a713-b55231f9077e', '2020-04-17 10:37:57', 'admin', '超级管理员', 'Create', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '用户管理操作,新增操作成功', '2020-04-17 10:37:57', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('45ca6683-490d-494f-bf75-2bf555ecf0eb', '2020-04-15 09:51:02', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-15 09:51:02', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('45d2c4fb-2e5a-4b13-92c0-9e69dc43fc0a', '2020-04-17 13:12:00', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 13:12:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('48466dd1-4bbc-43fd-b36a-dc1a129c1c60', '2020-04-17 11:32:23', 'admin', '超级管理员', 'Delete', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,删除操作成功', '2020-04-17 11:32:23', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('48f18f9a-295f-4a5c-a1c7-4ac91aea63bc', '2020-04-17 10:47:32', '10000', '莎莎声', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 10:47:32', '8af4f5d6-85a4-4137-87f8-3d1390a67f93', NULL);
INSERT INTO `sys_log` VALUES ('4ba43978-2bae-40c1-af1a-25bb94998862', '2020-04-21 10:09:35', 'admin', '超级管理员', 'Login', '127.0.0.1', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-21 10:09:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('4cd5262c-b9b2-41c4-862d-9de973dbd031', '2020-04-17 13:35:58', '10000', '2222', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 13:35:58', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('4d2fd6ab-c367-497b-afba-2e51be62c2dd', '2020-04-17 12:09:11', 'admin', '超级管理员', 'Delete', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '用户管理操作,删除操作成功', '2020-04-17 12:09:11', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('4d477fea-af3b-428e-bdb1-411483ac1172', '2020-04-15 17:07:00', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-15 17:07:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('4eb29522-953a-4218-b876-831e3b3d9dc6', '2020-04-20 17:09:12', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '按钮管理操作,修改操作成功', '2020-04-20 17:09:12', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '3f69d32f-cb3b-4fa0-863b-98b9a090d7e9');
INSERT INTO `sys_log` VALUES ('4f9c5189-7178-4e1e-abbc-3067cbe87eb2', '2020-04-22 14:26:00', 'admin', 'admin', 'Login', '127.0.0.1', '本地局域网', NULL, '系统登录', 0, '登录失败，验证码错误，请重新输入', '2020-04-22 14:26:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('4fd54938-bc92-4430-a541-9a072816fecf', '2020-04-14 17:05:36', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-14 17:05:36', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('52c84906-7be6-48ce-b598-fe5a6ee90f7f', '2020-04-17 14:59:58', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 14:59:58', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('55b5fa16-789b-4ea4-a7ca-47b139bcb75d', '2020-04-21 11:45:37', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-21 11:45:37', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('55e154bc-bb40-40e3-a4b5-5d21f362d1be', '2020-04-20 16:06:09', '10000', '2222', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-20 16:06:09', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('59dd9a8f-3f95-47e8-8b3c-229e8e90a998', '2020-04-17 14:41:06', 'admin', '超级管理员', 'Delete', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '岗位管理操作,删除操作成功', '2020-04-17 14:41:06', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('5d153260-43f7-47c7-9b8e-5dfb8d561f59', '2020-04-17 14:47:44', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 14:47:44', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('609e0259-00f8-4ea0-b02d-0e0f20ba8178', '2020-04-15 10:04:57', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-15 10:05:26', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('60a2e0e5-3406-470b-9bd8-8dcdf7f5f8cf', '2020-04-17 11:31:59', 'admin', '超级管理员', 'Delete', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,删除操作成功', '2020-04-17 11:31:59', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('61496ea5-fb8e-4252-a5d8-285e767c433d', '2020-04-17 11:32:13', 'admin', '超级管理员', 'Delete', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,删除操作成功', '2020-04-17 11:32:13', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('6237cf05-795a-45c5-b756-9ccac413aabd', '2020-04-17 10:33:47', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '用户管理操作,修改重置密码成功', '2020-04-17 10:33:47', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '6052f242-15ae-4b77-ad95-929f8a6f244c');
INSERT INTO `sys_log` VALUES ('6355ec35-8a53-4728-9d10-0a95cdfc4d9f', '2020-04-17 15:00:21', 'admin', '超级管理员', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 15:00:21', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('65094861-dbb6-4bf2-82a9-c48225b3ba8c', '2020-04-17 12:49:53', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '按钮管理操作,修改操作成功', '2020-04-17 12:49:53', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'f93763ff-51a1-478d-9585-3c86084c54f3');
INSERT INTO `sys_log` VALUES ('685f9a33-9752-4deb-ba4e-ba462d22332c', '2020-04-17 14:48:11', '10000', '2222', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 14:48:11', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('68f27dcb-5cc1-4b53-b768-1ad2859714de', '2020-04-17 10:47:03', '10000', '10000', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 0, '登录失败，可为空的对象必须具有一个值。', '2020-04-17 10:47:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('696fba60-9582-40e7-8fb2-6b06eee3e85f', '2020-04-20 17:06:01', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '用户管理操作,修改操作成功', '2020-04-20 17:06:01', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9');
INSERT INTO `sys_log` VALUES ('6ab1d48d-5f65-466e-b390-5768648ae096', '2020-04-17 11:20:03', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '用户管理操作,修改操作成功', '2020-04-17 11:20:03', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '8af4f5d6-85a4-4137-87f8-3d1390a67f93');
INSERT INTO `sys_log` VALUES ('6b1abd12-93af-4f4e-a8d3-9b7a4874b044', '2020-04-20 15:10:07', '10000', '2222', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '系统菜单操作,修改操作成功', '2020-04-20 15:10:07', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', '7e4e4a48-4d51-4159-a113-2a211186f13a');
INSERT INTO `sys_log` VALUES ('6c0adacb-3c8f-460a-a2f3-999bc7fd295c', '2020-04-17 14:25:00', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 14:25:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('6c25c0de-832e-4943-9c24-06f2697a5c78', '2020-04-20 16:26:36', 'admin', '超级管理员', 'Login', '127.0.0.1', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-20 16:26:36', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('6e3e49d6-4d76-40d0-aaf5-a2ecf1a217ea', '2020-04-17 11:32:01', 'admin', '超级管理员', 'Delete', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,删除操作成功', '2020-04-17 11:32:01', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('6f0f4d4a-71d2-4a3b-8474-64904eed2887', '2020-04-20 15:56:12', '10000', '2222', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '系统菜单操作,修改操作成功', '2020-04-20 15:56:12', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', '7e4e4a48-4d51-4159-a113-2a211186f13a');
INSERT INTO `sys_log` VALUES ('6f1d68a3-360b-4657-a7fd-9db6e1cf4390', '2020-04-15 14:39:17', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-15 14:39:17', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('6f2a150d-b9a5-48cd-8b61-6088281a8a97', '2020-04-17 15:00:42', NULL, NULL, 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 0, '角色管理操作,修改操作失败，不能修改用户当前角色', '2020-04-17 15:00:42', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f');
INSERT INTO `sys_log` VALUES ('6fb2145a-f0d9-4452-a195-00f0869cc750', '2020-04-20 16:56:04', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '机构管理操作,修改操作成功', '2020-04-20 16:56:04', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '253EDA1F-F158-4F3F-A778-B7E538E052A2');
INSERT INTO `sys_log` VALUES ('717443c1-e1ab-44f1-9f39-b634a722902a', '2020-04-21 10:53:00', 'admin', '超级管理员', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-21 10:53:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('72650e47-9863-4622-8217-d51402718181', '2020-04-17 11:37:16', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,修改操作成功', '2020-04-17 11:37:16', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'b05efc5b-51a0-4843-8d4d-1e191b2863f1');
INSERT INTO `sys_log` VALUES ('73c53510-0644-426b-a043-1cdd6b759802', '2020-04-17 12:50:57', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '按钮管理操作,修改操作成功', '2020-04-17 12:50:57', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '82f162cb-beb9-4a79-8924-cd1860e26e2e');
INSERT INTO `sys_log` VALUES ('74eb3040-4d97-4e69-b581-03663e955d0a', '2020-04-20 14:52:04', '10000', '10000', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 0, '登录失败，验证码错误，请重新输入', '2020-04-20 14:52:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('756d7f89-1ea5-451e-8410-b0401a3a3fe0', '2020-04-17 13:31:00', '10000', '2222', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 13:31:00', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('76dd42e8-ed51-40cd-9b53-79cf49f38927', '2020-04-15 17:20:11', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-15 17:20:11', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('78a5d95d-27a0-4f9c-921c-4bf79c39ea1f', '2020-04-17 11:32:05', 'admin', '超级管理员', 'Delete', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,删除操作成功', '2020-04-17 11:32:05', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('796b4327-5303-469d-a59d-5a89f1e6580b', '2020-04-17 12:50:13', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '按钮管理操作,修改操作成功', '2020-04-17 12:50:13', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'abfdff21-8ebf-4024-8555-401b4df6acd9');
INSERT INTO `sys_log` VALUES ('798f87e3-18b5-4e3a-a26c-41a298caa26d', '2020-04-17 11:32:07', 'admin', '超级管理员', 'Delete', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,删除操作成功', '2020-04-17 11:32:07', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('7ab15eff-70f3-43d3-9751-0975051f905e', '2020-04-17 10:58:53', 'admin', '超级管理员', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 10:58:53', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('7abfe1b1-62e9-44e7-aa04-4aad5e1eeb1f', '2020-04-17 14:50:47', '10000', '2222', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 14:50:47', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('7c4dea33-f696-4204-b4ae-912993621677', '2020-04-17 10:52:32', '10000', '10000', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 0, '登录失败，验证码错误，请重新输入', '2020-04-17 10:52:32', '8af4f5d6-85a4-4137-87f8-3d1390a67f93', NULL);
INSERT INTO `sys_log` VALUES ('7e37cb31-178b-4800-a682-e2df57479f77', '2020-04-20 17:28:23', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-20 17:28:24', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('7f020dc2-d6a6-49df-a131-05acf10fb525', '2020-04-20 16:27:12', 'admin', '超级管理员', 'Exit', '127.0.0.1', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-20 16:27:12', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('8039abda-9274-4471-ba51-e4db0e7f01ec', '2020-04-17 11:03:08', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 11:03:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('80530324-3cca-4cd6-aeee-554c26f6eaff', '2020-04-17 12:50:04', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '按钮管理操作,修改操作成功', '2020-04-17 12:50:04', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '88f7b3a8-fd6d-4f8e-a861-11405f434868');
INSERT INTO `sys_log` VALUES ('806ad843-661a-4a3a-8640-a90370a5ea10', '2020-04-16 13:56:07', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, 'SystemLogin', 1, '登录成功', '2020-04-16 13:56:07', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('81deea26-74ee-4cbc-a1c0-2ace4e12bef9', '2020-04-17 12:55:16', 'admin', '超级管理员', 'Create', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '用户管理操作,新增操作成功', '2020-04-17 12:55:16', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('8419328f-39b6-49e2-a3f0-0de56733d130', '2020-04-17 11:04:38', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 0, '角色管理操作,修改操作失败，无法将类型为“Chloe.MySql.MySqlContext”的对象强制转换为类型“Chloe.SqlServer.MsSqlContext”。', '2020-04-17 11:04:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'F0A2B36F-35A7-4660-B46C-D4AB796591EB');
INSERT INTO `sys_log` VALUES ('843cb958-9885-4bea-8f87-f60ddcba64a3', '2020-04-17 11:39:25', '10000', 'aaa', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 11:39:25', '547395a9-1de6-41c6-a829-f1dc036c60b3', NULL);
INSERT INTO `sys_log` VALUES ('84f40bc7-c0d7-416c-930a-94945056250d', '2020-04-15 16:10:46', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-15 16:10:46', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('87eeb6f4-bccc-42ad-b38b-0d2c591a8591', '2020-04-14 15:38:39', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-14 15:38:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('88202350-21aa-4b31-a529-583cf96811fa', '2020-04-17 13:50:09', '10000', '2222', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 13:50:09', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('8bd65d09-27e2-428d-a514-636086e171f2', '2020-04-17 15:01:00', '10000', '2222', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 15:01:00', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('8c69e513-2a51-4275-9c55-28ce9605c6ce', '2020-04-17 11:32:11', 'admin', '超级管理员', 'Delete', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,删除操作成功', '2020-04-17 11:32:11', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('8ce8a279-c387-4da0-9327-81bb08f95455', '2020-04-17 11:48:10', '10000', '10000', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 0, '登录失败，验证码错误，请重新输入', '2020-04-17 11:48:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('8e7d4d73-d850-405c-923f-280145bc14fe', '2020-04-17 10:44:44', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '用户管理操作,修改操作成功', '2020-04-17 10:44:44', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '8af4f5d6-85a4-4137-87f8-3d1390a67f93');
INSERT INTO `sys_log` VALUES ('8ececcb3-ff79-47d9-9726-2fb3da0c8ff4', '2020-04-17 13:00:18', '10000', 'sss', 'Delete', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,删除操作成功', '2020-04-17 13:00:18', 'b6651953-b5fb-4051-8919-c22c827f5741', NULL);
INSERT INTO `sys_log` VALUES ('8f2e9a69-5929-4012-b0c8-efafda616b8d', '2020-04-17 14:27:26', '10000', '2222', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 14:27:26', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('8feca57b-7dd7-4c16-9373-29f5b70879d2', '2020-04-17 13:00:23', '10000', 'sss', 'Delete', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '用户管理操作,删除操作成功', '2020-04-17 13:00:23', 'b6651953-b5fb-4051-8919-c22c827f5741', NULL);
INSERT INTO `sys_log` VALUES ('90f80c2e-cea5-4c56-b53f-f79173f284cb', '2020-04-20 15:06:31', '10000', '2222', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-20 15:06:31', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('931720d1-5e97-4b62-8ad9-3fd659d07f7d', '2020-04-20 14:55:39', '10000', '2222', 'Login', '127.0.0.1', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-20 14:55:39', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('93d56c60-72df-4251-871b-102e048c4b35', '2020-04-17 13:30:02', 'admin', '超级管理员', 'Create', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,新增操作成功', '2020-04-17 13:30:02', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('93f18a3e-09c2-428a-b767-b074cd5270b5', '2020-04-17 14:58:32', '10000', '10000', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 0, '登录失败，账户未设置权限,请联系管理员', '2020-04-17 14:58:32', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('941bf0b2-01a7-4cad-9244-b9b7a601a2b3', '2020-04-17 10:45:47', '10000', '10000', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 0, '登录失败，可为空的对象必须具有一个值。', '2020-04-17 10:45:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('94ce45e1-920a-45bf-ac51-22668f07e9a5', '2020-04-20 14:33:46', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '系统菜单操作,修改操作成功', '2020-04-20 14:33:46', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '7e4e4a48-4d51-4159-a113-2a211186f13a');
INSERT INTO `sys_log` VALUES ('95edc581-203b-44f0-8b15-78977732eed2', '2020-04-15 14:43:08', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-15 14:43:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('97ace853-d2a3-4666-875c-a5cfc2fc858e', '2020-04-20 17:17:39', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '字典分类操作,修改操作成功', '2020-04-20 17:17:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '77070117-3F1A-41BA-BF81-B8B85BF10D5E');
INSERT INTO `sys_log` VALUES ('97e438ab-ea40-4658-9100-f52d93b3cdb7', '2020-04-17 10:21:51', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 0, '角色管理操作,修改操作失败，无法将类型为“Chloe.MySql.MySqlContext”的对象强制转换为类型“Chloe.SqlServer.MsSqlContext”。', '2020-04-17 10:21:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'F0A2B36F-35A7-4660-B46C-D4AB796591EB');
INSERT INTO `sys_log` VALUES ('994c168b-d944-4ec9-98df-2823f2b3b3ef', '2020-04-17 11:31:32', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 11:31:32', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('99568ce2-82d9-46e4-a665-4ad9ab8996a6', '2020-04-20 16:28:27', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-20 16:28:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('9a28deda-aaa8-4cad-98a0-8bc61444ab00', '2020-04-13 17:12:36', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-13 17:12:36', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('9a7a86f5-dbb1-42df-9e83-f49fb0503fd8', '2020-04-17 11:45:31', '10000', 'aaa', 'Login', '127.0.0.1', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 11:45:31', '547395a9-1de6-41c6-a829-f1dc036c60b3', NULL);
INSERT INTO `sys_log` VALUES ('9aef7f0c-b516-44df-a702-dd331531453a', '2020-04-17 13:30:51', 'admin', '超级管理员', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 13:30:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('9e173056-a6f9-4e54-b98d-456bdd5cb4a3', '2020-04-17 10:50:30', '10000', '莎莎声', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 10:50:30', '8af4f5d6-85a4-4137-87f8-3d1390a67f93', NULL);
INSERT INTO `sys_log` VALUES ('9f069c00-54a3-4680-b2c1-cb8cd724339c', '2020-04-17 11:32:21', 'admin', '超级管理员', 'Delete', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,删除操作成功', '2020-04-17 11:32:21', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('9f5646eb-f05b-4e43-a760-4ad17a834a56', '2020-04-17 11:32:09', 'admin', '超级管理员', 'Delete', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,删除操作成功', '2020-04-17 11:32:09', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('9f7f60a4-0147-4520-bfae-220241ee1000', '2020-04-17 11:48:59', '10000', 'aaa', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 11:48:59', '547395a9-1de6-41c6-a829-f1dc036c60b3', NULL);
INSERT INTO `sys_log` VALUES ('a1a6ab47-3fa2-4420-bbfb-c9476972f216', '2020-04-17 12:54:59', 'admin', '超级管理员', 'Create', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,新增操作成功', '2020-04-17 12:54:59', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('a2d7f0e9-bd7c-4c8b-b15f-38d540935c4a', '2020-04-17 11:41:15', '10000', 'aaa', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 11:41:15', '547395a9-1de6-41c6-a829-f1dc036c60b3', NULL);
INSERT INTO `sys_log` VALUES ('a3ab9a31-39f1-4363-a317-0fbbc9a90ecb', '2020-04-15 17:06:15', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-15 17:06:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('a4699413-ea55-4717-91b3-478be1aece91', '2020-04-17 14:58:40', 'admin', 'admin', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 0, '登录失败，值不能为 null。', '2020-04-17 14:58:40', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('a534d561-2e0a-4ef8-97c0-f7840dc1c702', '2020-04-17 11:20:13', '10000', '莎莎声', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 11:20:13', '8af4f5d6-85a4-4137-87f8-3d1390a67f93', NULL);
INSERT INTO `sys_log` VALUES ('a6de897f-0f6d-44c6-9769-ea3715417d08', '2020-04-17 10:26:42', 'admin', '超级管理员', 'Create', '192.168.1.117', '本地局域网', NULL, '系统管理', 0, '角色管理操作,新增操作失败，无法将类型为“Chloe.MySql.MySqlContext”的对象强制转换为类型“Chloe.SqlServer.MsSqlContext”。', '2020-04-17 10:26:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('a73bdae5-c5be-4a61-a1de-c421aea13b98', '2020-04-14 11:29:38', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-14 11:29:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('a8907c37-25d3-44e2-97fa-41626849e3af', '2020-04-17 10:30:04', 'admin', '超级管理员', 'Create', '192.168.1.117', '本地局域网', NULL, '系统管理', 0, '角色管理操作,新增操作失败，无法将类型为“Chloe.MySql.MySqlContext”的对象强制转换为类型“Chloe.SqlServer.MsSqlContext”。', '2020-04-17 10:30:04', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('a91f9e2d-e8b8-47b7-a80e-3f8f7b29659e', '2020-04-14 17:05:19', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-14 17:05:19', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('a9d619eb-c801-44cc-a4b5-cb43f67906ea', '2020-04-17 10:52:39', '10000', '莎莎声', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 10:52:39', '8af4f5d6-85a4-4137-87f8-3d1390a67f93', NULL);
INSERT INTO `sys_log` VALUES ('aa761d56-c69c-4eaf-be77-ccb468e83624', '2020-04-17 12:58:55', 'admin', '超级管理员', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 12:58:55', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('ab5e0cb2-bb6a-4130-99ce-dc3379de5db8', '2020-04-17 12:51:25', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '按钮管理操作,修改操作成功', '2020-04-17 12:51:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '329c0326-ce68-4a24-904d-aade67a90fc7');
INSERT INTO `sys_log` VALUES ('ac37fdb7-2e4f-4998-9a5b-064a2950df03', '2020-04-17 10:45:38', 'admin', '超级管理员', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 10:45:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('ac4f2249-7891-4c16-8d35-496e5d5bb48b', '2020-04-15 17:20:05', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-15 17:20:05', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('acab1798-4cdf-45fe-81da-218f1cadbc52', '2020-04-20 15:56:17', '10000', '2222', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '系统菜单操作,修改操作成功', '2020-04-20 15:56:17', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C');
INSERT INTO `sys_log` VALUES ('b12151a5-88b8-4bb7-866b-2f8088885619', '2020-04-17 14:46:28', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 14:46:28', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('b27db694-cf91-4547-a8fe-c41b4d19ff8f', '2020-04-15 16:10:15', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-15 16:10:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('b30a2c6a-d0be-47c9-9737-23d63029cdc8', '2020-04-20 15:09:18', '10000', '2222', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-20 15:09:18', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('b36200ee-a77b-409b-bbb8-a2e8150eda6f', '2020-04-17 10:27:37', 'admin', '超级管理员', 'Create', '192.168.1.117', '本地局域网', NULL, '系统管理', 0, '角色管理操作,新增操作失败，无法将类型为“Chloe.MySql.MySqlContext”的对象强制转换为类型“Chloe.SqlServer.MsSqlContext”。', '2020-04-17 10:27:37', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('b3f98151-6e82-461e-8991-d2ed4cad4969', '2020-04-17 11:37:42', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,修改操作成功', '2020-04-17 11:37:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'b05efc5b-51a0-4843-8d4d-1e191b2863f1');
INSERT INTO `sys_log` VALUES ('b5e65732-4167-4b7a-93f7-1f81da468f0f', '2020-04-17 10:45:18', 'admin', '超级管理员', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 10:45:18', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('b5f117cb-4559-4a58-852d-a7856a547a0f', '2020-04-17 12:55:27', '10000', 'sss', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 12:55:27', 'b6651953-b5fb-4051-8919-c22c827f5741', NULL);
INSERT INTO `sys_log` VALUES ('b65d636f-c6c7-4c56-87e2-bf0fe2af30d9', '2020-04-17 11:19:50', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,修改操作成功', '2020-04-17 11:19:50', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'F0A2B36F-35A7-4660-B46C-D4AB796591EB');
INSERT INTO `sys_log` VALUES ('b670bba6-aa58-4eb1-8221-16c00207b551', '2020-04-20 14:52:28', '10000', '2222', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-20 14:52:28', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('b6b3b148-875d-4b47-98e9-56dce3ac59cd', '2020-04-17 08:44:57', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 08:44:58', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('b90132de-95fa-428f-a1c9-aca52546ddcd', '2020-04-20 16:04:34', '10000', '2222', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-20 16:04:35', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('ba2c1ba0-c2a0-4d6d-8da3-7fad50b689a7', '2020-04-20 16:55:53', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '系统公告操作,修改操作成功', '2020-04-20 16:55:53', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'c839e8c1-14e0-45c3-8d8b-54fe94cb1c19');
INSERT INTO `sys_log` VALUES ('bafcb1e7-b732-4258-a22b-bd37b86cf630', '2020-04-17 13:33:44', '10000', '2222', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 13:33:44', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('bbd9faad-5388-4f7b-a0be-a87e87fdfc8e', '2020-04-17 13:45:28', '10000', '2222', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 13:45:28', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('bdd52ff5-4f4f-4019-b8be-8786ac179844', '2020-04-17 12:58:44', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 12:58:44', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('bea3d9bc-0310-4ccf-8cff-b69ac36d7569', '2020-04-20 14:49:21', 'admin', '超级管理员', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-20 14:49:21', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('c42451c9-bb87-464f-add8-be1f624c0a74', '2020-04-17 10:38:10', 'admin', '超级管理员', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 10:38:10', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('c46e247e-da01-4a6e-963c-9916f9ee818f', '2020-04-17 13:34:54', '10000', '2222', 'Login', '127.0.0.1', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 13:34:54', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('c5255fee-e9dd-440b-ad22-4eef984464e1', '2020-04-20 17:06:53', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '数据字典操作,修改操作成功', '2020-04-20 17:06:53', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'e5079bae-a8c0-4209-9019-6a2b4a3a7dac');
INSERT INTO `sys_log` VALUES ('c528b482-1d83-4516-8af3-3e6c30e1dc03', '2020-04-17 14:26:16', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 14:26:16', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('c666c374-51fd-4d50-83ac-982c2e27b9d9', '2020-04-17 11:35:05', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,修改操作成功', '2020-04-17 11:35:05', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'b05efc5b-51a0-4843-8d4d-1e191b2863f1');
INSERT INTO `sys_log` VALUES ('c6c6c9ce-7f21-4183-9008-1498ab632d2e', '2020-04-17 13:11:48', '10000', '10000', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 0, '登录失败，账户不存在，请重新输入', '2020-04-17 13:11:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('c7bbd782-1e17-4c7b-ba1c-8f349799aec1', '2020-04-17 11:49:06', '10000', 'aaa', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 11:49:06', '547395a9-1de6-41c6-a829-f1dc036c60b3', NULL);
INSERT INTO `sys_log` VALUES ('c7bd3324-199b-4ee5-aec2-36f734b73471', '2020-04-17 14:41:17', 'admin', '超级管理员', 'Delete', '192.168.1.117', '本地局域网', NULL, '系统管理', 0, '角色管理操作,删除操作失败，角色使用中，无法删除', '2020-04-17 14:41:17', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('c84ebc92-8cf8-4503-a60e-8dcd818d05b7', '2020-04-17 10:22:24', 'admin', '超级管理员', 'Create', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '系统公告操作,新增操作成功', '2020-04-17 10:22:24', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('cb6c1557-b0ff-416b-bc3c-f06050bfd393', '2020-04-17 14:48:05', 'admin', '超级管理员', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 14:48:05', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('cc1a492a-b384-4cb7-8dfc-7b75c0fa0755', '2020-04-16 10:34:54', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-16 10:34:54', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('ce3bf546-4aaa-420c-b6a9-f7179ba6b723', '2020-04-15 11:53:22', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-15 11:53:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('cf707ef8-05e4-49ad-97b9-683bd69bc9dd', '2020-04-17 14:24:35', '10000', '2222', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 14:24:35', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('cf7ff7f7-6fdd-4e0c-9633-80e8e3baf6b9', '2020-04-17 11:38:16', 'admin', '超级管理员', 'Create', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '用户管理操作,新增操作成功', '2020-04-17 11:38:16', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('cf83de83-7670-4b8a-a8ab-2bfa452802e4', '2020-04-13 17:26:18', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-13 17:26:18', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('d395e330-87f9-4851-bce4-e78067ecb367', '2020-04-20 14:49:31', '10000', '2222', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-20 14:49:31', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('d548b3b0-8038-4c15-94df-dc05f2381868', '2020-04-17 12:55:22', 'admin', '超级管理员', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 12:55:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('d691878b-7027-4123-971b-9d78059f35ef', '2020-04-16 08:29:48', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-16 08:29:48', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('d9abf221-a29b-43cf-a296-4777dee15d6c', '2020-04-21 10:47:12', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-21 10:47:12', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('dda4b10c-2805-4589-865b-6d9411e4a514', '2020-04-17 12:59:08', '10000', 'sss', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 12:59:08', 'b6651953-b5fb-4051-8919-c22c827f5741', NULL);
INSERT INTO `sys_log` VALUES ('deb4a527-650b-4f9e-a88c-d51ff3ec3fd0', '2020-04-16 14:57:58', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统安全', 1, '访问控制操作,修改操作成功', '2020-04-16 14:57:58', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'b3fbe66f-82cd-4f4a-ada3-61eb5a2d9eee');
INSERT INTO `sys_log` VALUES ('df4e985c-9ad3-4208-9f84-e87bf01adff5', '2020-04-17 10:45:24', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 10:45:24', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('e0767bdf-ab54-4642-9c76-8d6db23ac790', '2020-04-17 10:37:25', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 10:37:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('e10023bb-a851-4763-bfaa-2cfa2030b41b', '2020-04-17 10:59:55', 'admin', '超级管理员', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 10:59:55', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('e3b743d1-297f-410d-ad0c-a849bed6b224', '2020-04-17 11:48:17', '10000', 'aaa', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 11:48:17', '547395a9-1de6-41c6-a829-f1dc036c60b3', NULL);
INSERT INTO `sys_log` VALUES ('e54b1d0f-d827-4eed-9fcc-d097cc4c0fd7', '2020-04-17 11:00:10', '10000', '莎莎声', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 11:00:10', '8af4f5d6-85a4-4137-87f8-3d1390a67f93', NULL);
INSERT INTO `sys_log` VALUES ('e5e777b2-43e0-42aa-92d0-23324e8c2411', '2020-04-17 14:40:29', '10000', '2222', 'Exit', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-17 14:40:29', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('e66a49c6-4e73-42a5-938f-30d533a33184', '2020-04-17 12:09:16', 'admin', '超级管理员', 'Delete', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,删除操作成功', '2020-04-17 12:09:16', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('e7725e43-8762-4cef-b5db-7d8c64a86fc4', '2020-04-17 13:43:05', '10000', '2222', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 13:43:05', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('ea22b94d-4b79-4525-9ca1-e7df4764eb80', '2020-04-20 16:27:39', '10000', '2222', 'Exit', '127.0.0.1', '本地局域网', NULL, '系统登录', 1, '安全退出系统', '2020-04-20 16:27:39', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('eb95f0bc-0fd0-49ba-bf84-3de6b1074cb4', '2020-04-17 10:35:27', '10010', '10010', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 0, '登录失败，可为空的对象必须具有一个值。', '2020-04-17 10:35:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('ec732860-e289-4818-a00e-1efa51c19ed8', '2020-04-17 10:47:50', '10000', '莎莎声', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 10:47:50', '8af4f5d6-85a4-4137-87f8-3d1390a67f93', NULL);
INSERT INTO `sys_log` VALUES ('ecf68da4-5043-4ef5-9001-27febc99148b', '2020-04-17 10:38:44', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 10:38:44', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('ed7f651e-92c2-44eb-ab20-2ee9ee2c86b3', '2020-04-21 10:53:17', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-21 10:53:17', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('edb40f36-34be-46ca-9fbf-6296790885b5', '2020-04-22 14:26:21', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-22 14:26:21', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('edc0667d-cfc4-4ef9-9f33-18bd5383c463', '2020-04-22 14:27:06', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '岗位管理操作,修改操作成功', '2020-04-22 14:27:06', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'B2624F67-E092-461A-AAAD-13592A9429D9');
INSERT INTO `sys_log` VALUES ('ede00966-dd66-49a1-8be8-76a3424a80df', '2020-04-17 14:43:47', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,修改操作成功', '2020-04-17 14:43:47', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f');
INSERT INTO `sys_log` VALUES ('ee41629d-20ea-4dfd-8217-19b57dca0f3a', '2020-04-17 11:38:51', '10000', 'aaa', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 11:38:51', '547395a9-1de6-41c6-a829-f1dc036c60b3', NULL);
INSERT INTO `sys_log` VALUES ('f1aeb65f-2aac-495c-92d0-7a255782259f', '2020-04-17 15:00:15', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,修改操作成功', '2020-04-17 15:00:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f');
INSERT INTO `sys_log` VALUES ('f303d9ce-e8da-4ce2-8e69-9b1027646c4b', '2020-04-17 12:49:27', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '按钮管理操作,修改操作成功', '2020-04-17 12:49:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '7ee3ff62-ab18-4886-9451-89b1d152172e');
INSERT INTO `sys_log` VALUES ('f31b1f2a-41c1-4c7f-9ba8-9f6226e252d3', '2020-04-17 10:22:54', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 0, '角色管理操作,修改操作失败，无法将类型为“Chloe.MySql.MySqlContext”的对象强制转换为类型“Chloe.SqlServer.MsSqlContext”。', '2020-04-17 10:22:54', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'F0A2B36F-35A7-4660-B46C-D4AB796591EB');
INSERT INTO `sys_log` VALUES ('f3213ba6-523d-48b6-8155-ad2b2b2aeade', '2020-04-17 11:38:32', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '用户管理操作,修改重置密码成功', '2020-04-17 11:38:32', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '547395a9-1de6-41c6-a829-f1dc036c60b3');
INSERT INTO `sys_log` VALUES ('f441f6d7-4648-45b3-82f4-8add62b34632', '2020-04-17 11:44:12', '10000', 'aaa', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 11:44:12', '547395a9-1de6-41c6-a829-f1dc036c60b3', NULL);
INSERT INTO `sys_log` VALUES ('f472be20-7094-4f0f-ba89-d8210bd217d9', '2020-04-16 14:43:38', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统安全', 1, '访问控制操作,Update操作成功', '2020-04-16 14:43:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'b3fbe66f-82cd-4f4a-ada3-61eb5a2d9eee');
INSERT INTO `sys_log` VALUES ('f4a21048-d2d6-456e-96f7-262e7589fe74', '2020-04-17 11:32:19', 'admin', '超级管理员', 'Delete', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,删除操作成功', '2020-04-17 11:32:19', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('f613c054-19f9-4322-8e1c-c06002040c25', '2020-04-14 17:04:58', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-14 17:04:59', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('f62da376-74da-43da-9171-7598ec4796d1', '2020-04-17 13:00:05', '10000', 'sss', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 13:00:05', 'b6651953-b5fb-4051-8919-c22c827f5741', NULL);
INSERT INTO `sys_log` VALUES ('f7cab74d-5023-4256-9e35-4702f6474ee4', '2020-04-17 13:37:18', '10000', '2222', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-17 13:37:18', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL);
INSERT INTO `sys_log` VALUES ('fa933115-d85d-4c91-b216-064b0bdaf458', '2020-04-20 17:05:41', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '岗位管理操作,修改操作成功', '2020-04-20 17:05:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'B2624F67-E092-461A-AAAD-13592A9429D9');
INSERT INTO `sys_log` VALUES ('fb3d0cd6-1bce-4186-b2ae-243e22095b99', '2020-04-20 15:59:26', '10000', '2222', 'Update', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '系统菜单操作,修改操作成功', '2020-04-20 15:59:26', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', '7e4e4a48-4d51-4159-a113-2a211186f13a');
INSERT INTO `sys_log` VALUES ('fd8198ca-f075-42dc-b9dd-c7edb64b5352', '2020-04-17 11:32:15', 'admin', '超级管理员', 'Delete', '192.168.1.117', '本地局域网', NULL, '系统管理', 1, '角色管理操作,删除操作成功', '2020-04-17 11:32:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('fe179075-9566-41c7-88c8-982875260f1a', '2020-04-20 14:22:53', 'admin', '超级管理员', 'Login', '127.0.0.1', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-20 14:22:53', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('fe202895-6bc5-4121-9b02-52816207d27a', '2020-04-22 13:58:45', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, '系统登录', 1, '登录成功', '2020-04-22 13:58:45', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('fe742128-4204-4113-a9fa-f4213d3bdaa2', '2020-04-15 17:06:19', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-15 17:06:19', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('feabed0a-5d1d-4fce-88ae-1e87f2300a05', '2020-04-15 10:04:33', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-15 10:04:34', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);

-- ----------------------------
-- Table structure for sys_module
-- ----------------------------
DROP TABLE IF EXISTS `sys_module`;
CREATE TABLE `sys_module`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_ParentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Layers` int(11) NULL DEFAULT NULL,
  `F_EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_UrlAddress` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Target` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_IsMenu` tinyint(1) NULL DEFAULT NULL,
  `F_IsExpand` tinyint(1) NULL DEFAULT NULL,
  `F_IsPublic` tinyint(1) NULL DEFAULT NULL,
  `F_AllowEdit` tinyint(1) NULL DEFAULT NULL,
  `F_AllowDelete` tinyint(1) NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `IX_Sys_Module`(`F_FullName`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_module
-- ----------------------------
INSERT INTO `sys_module` VALUES ('26452c9a-243d-4c81-97b9-a3ad581c3bf4', '462027E0-0848-41DD-BCC3-025DCAE65555', 2, 'Organize', '机构管理', 'fa fa-sitemap', '/SystemManage/Organize/Index', 'iframe', 1, 0, 0, 0, 0, 1, 0, 1, NULL, '2020-04-09 15:24:34', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-04-16 14:09:46', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_module` VALUES ('337A4661-99A5-4E5E-B028-861CACAF9917', '462027E0-0848-41DD-BCC3-025DCAE65555', 2, 'Area', '区域管理', 'fa fa-area-chart', '/SystemManage/Area/Index', 'iframe', 1, 0, 0, 0, 0, 5, 0, 1, NULL, NULL, NULL, '2020-04-16 14:10:12', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_module` VALUES ('38CA5A66-C993-4410-AF95-50489B22939C', '462027E0-0848-41DD-BCC3-025DCAE65555', 2, 'User', '用户管理', 'fa fa-address-card-o', '/SystemManage/User/Index', 'iframe', 1, 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2020-04-16 14:10:05', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_module` VALUES ('423A200B-FA5F-4B29-B7B7-A3F5474B725F', '462027E0-0848-41DD-BCC3-025DCAE65555', 2, 'ItemsData', '数据字典', 'fa fa-align-justify', '/SystemManage/ItemsData/Index', 'iframe', 1, 0, 0, 0, 0, 6, 0, 1, NULL, NULL, NULL, '2020-04-16 14:10:18', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_module` VALUES ('462027E0-0848-41DD-BCC3-025DCAE65555', '0', 1, 'SystemManage', '系统管理', 'fa fa-gears', NULL, 'expand', 1, 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2020-04-16 14:09:10', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_module` VALUES ('49F61713-C1E4-420E-BEEC-0B4DBC2D7DE8', '73FD1267-79BA-4E23-A152-744AF73117E9', 2, 'ServerMonitoring', '服务器监控', 'fa fa-desktop', '/SystemSecurity/ServerMonitoring/Index', 'iframe', 1, 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2020-04-16 14:10:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_module` VALUES ('64A1C550-2C61-4A8C-833D-ACD0C012260F', '462027E0-0848-41DD-BCC3-025DCAE65555', 2, 'Module', '系统菜单', 'fa fa-cogs', '/SystemManage/Module/Index', 'iframe', 1, 0, 0, 0, 0, 7, 0, 1, '测试', NULL, NULL, '2020-04-16 14:10:23', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_module` VALUES ('73FD1267-79BA-4E23-A152-744AF73117E9', '0', 1, 'SystemSecurity', '系统安全', 'fa fa-desktop', NULL, 'expand', 0, 1, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2020-04-16 14:12:11', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_module` VALUES ('7e4e4a48-4d51-4159-a113-2a211186f13a', '462027E0-0848-41DD-BCC3-025DCAE65555', 2, 'Notice', '系统公告', 'fa fa-book', '/SystemManage/Notice/Index', 'iframe', 1, 0, 0, 0, 0, 0, 0, 1, NULL, '2020-04-14 15:39:29', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-04-20 15:59:26', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL, NULL);
INSERT INTO `sys_module` VALUES ('91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', '462027E0-0848-41DD-BCC3-025DCAE65555', 2, 'Role', '角色管理', 'fa fa-user-circle', '/SystemManage/Role/Index', 'iframe', 1, 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2020-04-20 15:56:17', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL, NULL);
INSERT INTO `sys_module` VALUES ('96EE855E-8CD2-47FC-A51D-127C131C9FB9', '73FD1267-79BA-4E23-A152-744AF73117E9', 2, 'Log', '系统日志', 'fa fa-clock-o', '/SystemSecurity/Log/Index', 'iframe', 1, 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2020-04-16 14:10:45', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_module` VALUES ('a3a4742d-ca39-42ec-b95a-8552a6fae579', '73FD1267-79BA-4E23-A152-744AF73117E9', 2, 'FilterIP', '访问控制', 'fa fa-filter', '/SystemSecurity/FilterIP/Index', 'iframe', 1, 0, 0, 0, 0, 2, 0, 1, NULL, '2016-07-17 22:06:10', NULL, '2020-04-16 14:10:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_module` VALUES ('e72c75d0-3a69-41ad-b220-13c9a62ec788', '73FD1267-79BA-4E23-A152-744AF73117E9', 2, 'DbBackup', '数据备份', 'fa fa-server', '/SystemSecurity/DbBackup/Index', 'iframe', 1, 0, 0, 0, 0, 1, 0, 1, NULL, '2016-07-17 22:05:07', NULL, '2020-04-16 14:10:31', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_module` VALUES ('F298F868-B689-4982-8C8B-9268CBF0308D', '462027E0-0848-41DD-BCC3-025DCAE65555', 2, 'Duty', '岗位管理', 'fa fa-users', '/SystemManage/Duty/Index', 'iframe', 1, 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2020-04-16 14:09:59', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);

-- ----------------------------
-- Table structure for sys_modulebutton
-- ----------------------------
DROP TABLE IF EXISTS `sys_modulebutton`;
CREATE TABLE `sys_modulebutton`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_ModuleId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ParentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Layers` int(11) NULL DEFAULT NULL,
  `F_EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Location` int(11) NULL DEFAULT NULL,
  `F_JsEvent` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_UrlAddress` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Split` tinyint(1) NULL DEFAULT NULL,
  `F_IsPublic` tinyint(1) NULL DEFAULT NULL,
  `F_AllowEdit` tinyint(1) NULL DEFAULT NULL,
  `F_AllowDelete` tinyint(1) NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_modulebutton
-- ----------------------------
INSERT INTO `sys_modulebutton` VALUES ('02f35b16-f299-4805-85cf-f4a76c1b1e8a', '5b263367-33a8-48e1-89ec-ba225f7d5e7a', '0', NULL, 'NF-edit', '修改', NULL, 2, 'edit', '/DingTalkManage/Users/Form', 0, 0, 0, 0, 2, 0, 1, NULL, '2018-08-14 22:51:47', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-04-22 10:25:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('037df8cd-ed27-4c6e-9a83-9153a7c2727a', '0c253d7a-f1bf-45c0-9a59-0ad3396323e6', '0', NULL, 'NF-delete', '删除', NULL, 2, 'delete', '/WeixinManage/WxTempMsg/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, '2018-08-14 22:53:13', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-07-04 10:54:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('0b1b307b-2aac-456b-acfb-484a05c71bd7', '26452c9a-243d-4c81-97b9-a3ad581c3bf4', '0', 1, 'NF-edit', '修改岗位', NULL, 2, 'edit', '/SystemManage/Organize/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2020-04-09 15:26:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('0d777b07-041a-4205-a393-d1a009aaafc7', '423A200B-FA5F-4B29-B7B7-A3F5474B725F', '0', 1, 'NF-edit', '修改字典', NULL, 2, 'edit', '/SystemManage/ItemsData/Form', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2016-07-25 15:37:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('0f0596f6-aa50-4df0-ad8e-af867cb4a9de', 'e72c75d0-3a69-41ad-b220-13c9a62ec788', '0', 1, 'NF-delete', '删除备份', NULL, 2, 'delete', '/SystemSecurity/DbBackup/DeleteForm', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2016-07-25 15:47:47', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('10148a76-3843-405c-b5af-b2b3d738a2b0', '5b263367-33a8-48e1-89ec-ba225f7d5e7a', '0', NULL, 'NF-delete', '删除', NULL, 2, 'delete', '/DingTalkManage/Users/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, '2018-08-14 22:53:13', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-04-22 10:26:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('104bcc01-0cfd-433f-87f4-29a8a3efb313', '423A200B-FA5F-4B29-B7B7-A3F5474B725F', '0', 1, 'NF-add', '新建字典', NULL, 1, 'add', '/SystemManage/ItemsData/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2016-07-25 15:37:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('13c9a15f-c50d-4f09-8344-fd0050f70086', 'F298F868-B689-4982-8C8B-9268CBF0308D', '0', 1, 'NF-add', '新建岗位', NULL, 1, 'add', '/SystemManage/Duty/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('14617a4f-bfef-4bc2-b943-d18d3ff8d22f', '38CA5A66-C993-4410-AF95-50489B22939C', '0', 1, 'NF-delete', '删除用户', NULL, 2, 'delete', '/SystemManage/User/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2016-07-25 14:16:13', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('15362a59-b242-494a-bc6e-413b4a63580e', '38CA5A66-C993-4410-AF95-50489B22939C', '0', NULL, 'NF-disabled', '禁用', NULL, 2, 'disabled', '/SystemManage/User/DisabledAccount', 0, 0, 0, 0, 6, 0, 1, NULL, '2016-07-25 15:25:54', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-04-07 14:33:24', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('1b72be70-e44d-43d6-91d0-dc3ad628d22e', '26452c9a-243d-4c81-97b9-a3ad581c3bf4', '0', 1, 'NF-Details', '查看岗位', NULL, 2, 'details', '/SystemManage/Organize/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2020-04-09 15:26:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('1d612157-fb91-447b-80ec-e96514c8e00b', '0c253d7a-f1bf-45c0-9a59-0ad3396323e6', '0', NULL, 'NF-add', '新增', NULL, 1, 'add', '/WeixinManageWxTempMsg/Form', 0, 0, 0, 0, 1, 0, 1, NULL, '2018-08-14 22:49:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-07-04 10:54:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('1ee1c46b-e767-4532-8636-936ea4c12003', '423A200B-FA5F-4B29-B7B7-A3F5474B725F', '0', 1, 'NF-delete', '删除字典', NULL, 2, 'delete', '/SystemManage/ItemsData/DeleteForm', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2016-07-25 15:37:53', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('239077ff-13e1-4720-84e1-67b6f0276979', '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', '0', 1, 'NF-delete', '删除角色', NULL, 2, 'delete', '/SystemManage/Role/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('27b50b8b-0552-4c1c-a0e9-54f3402aa8e2', 'e40a4371-6835-4f67-a349-c2b02ed6760e', '0', NULL, 'NF-Details', '查看', NULL, 2, 'details', '/WeixinManage/Users/Details', 0, 0, 0, 0, 4, 0, 1, NULL, '2018-08-14 22:54:07', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-04-22 10:26:24', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('2a8f5342-5eb7-491c-a1a9-a2631d8eb5d6', '38CA5A66-C993-4410-AF95-50489B22939C', '0', NULL, 'NF-enabled', '启用', NULL, 2, 'enabled', '/SystemManage/User/EnabledAccount', 0, 0, 0, 0, 7, 0, 1, NULL, '2016-07-25 15:28:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-04-07 14:33:30', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('2f21a804-cd90-4da3-98f3-f31cfe6031dc', '5b263367-33a8-48e1-89ec-ba225f7d5e7a', '0', NULL, 'NF-add', '新增', NULL, 1, 'add', '/WeixinManage/Users/Form', 0, 0, 0, 0, 1, 0, 1, NULL, '2018-08-14 22:49:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-04-22 10:25:43', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('329c0326-ce68-4a24-904d-aade67a90fc7', 'a3a4742d-ca39-42ec-b95a-8552a6fae579', '0', 1, 'NF-details', '查看策略', NULL, 2, 'details', '/SystemSecurity/FilterIP/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2020-04-17 12:51:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('38e39592-6e86-42fb-8f72-adea0c82cbc1', '38CA5A66-C993-4410-AF95-50489B22939C', '0', NULL, 'NF-revisepassword', '密码重置', NULL, 2, 'revisepassword', '/SystemManage/User/RevisePassword', 1, 0, 0, 0, 5, 0, 1, NULL, '2016-07-25 14:18:19', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-04-07 14:33:19', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('3a35c662-a356-45e4-953d-00ebd981cad6', '96EE855E-8CD2-47FC-A51D-127C131C9FB9', '0', 1, 'NF-removelog', '清空日志', NULL, 1, 'removeLog', '/SystemSecurity/Log/RemoveLog', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2020-04-07 14:34:56', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('3f69d32f-cb3b-4fa0-863b-98b9a090d7e9', '7e4e4a48-4d51-4159-a113-2a211186f13a', '0', 1, 'NF-add', '新建公告', NULL, 1, 'add', '/SystemManage/Notice/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2020-04-20 17:09:12', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('41862743-f703-4b6d-be54-08d253eb0ebc', 'e72c75d0-3a69-41ad-b220-13c9a62ec788', '0', 1, 'NF-add', '新建备份', NULL, 1, 'add', '/SystemSecurity/DbBackup/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2016-07-25 15:43:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('4727adf7-5525-4c8c-9de5-39e49c268349', '38CA5A66-C993-4410-AF95-50489B22939C', '0', 1, 'NF-edit', '修改用户', NULL, 2, 'edit', '/SystemManage/User/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2016-07-25 14:16:01', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('48afe7b3-e158-4256-b50c-cd0ee7c6dcc9', '337A4661-99A5-4E5E-B028-861CACAF9917', '0', 1, 'NF-add', '新建区域', NULL, 1, 'add', '/SystemManage/Area/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2016-07-25 15:32:26', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('4b876abc-1b85-47b0-abc7-96e313b18ed8', '423A200B-FA5F-4B29-B7B7-A3F5474B725F', '0', NULL, 'NF-itemstype', '分类管理', NULL, 1, 'itemstype', '/SystemManage/ItemsType/Index', 0, 0, 0, 0, 2, 0, 1, NULL, '2016-07-25 15:36:21', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-04-07 14:33:58', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('4bb19533-8e81-419b-86a1-7ee56bf1dd45', '252229DB-35CA-47AE-BDAE-C9903ED5BA7B', '0', 1, 'NF-delete', '删除机构', NULL, 2, 'delete', '/SystemManage/Organize/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2020-04-07 14:22:56', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('4c13c9c3-c1a4-4f7e-a061-2266b2c47c7a', '3593c43a-e4bc-4b7f-9629-0449a3d1818e', '0', NULL, 'NF-delete', '删除', NULL, 2, 'delete', '/DingTalkManage/Department/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, '2018-08-14 22:53:13', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-04-22 10:27:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('5d708d9d-6ebe-40ea-8589-e3efce9e74ec', '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', '0', 1, 'NF-add', '新建角色', NULL, 1, 'add', '/SystemManage/Role/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('5d952e29-963e-48fe-94e5-1795ebaad2d6', '3593c43a-e4bc-4b7f-9629-0449a3d1818e', '0', NULL, 'NF-update', '更新', NULL, 1, 'update', '/DingTalkManage/Department/UpdateDingTalkDepartment', 0, 0, 0, 0, 0, NULL, 1, NULL, '2020-03-27 16:25:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-03-27 16:25:43', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('6b639924-6594-4293-ae72-9e1f84bdcbfa', '9a727a52-43ed-425a-940c-a4b64749f745', '0', NULL, 'NF-edit', '修改', NULL, 2, 'edit', '/WeixinManage/WxUsers/Form', 0, 0, 0, 0, 2, 0, 1, NULL, '2018-08-14 22:51:47', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-07-04 10:54:31', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('6cd3de7d-589b-457f-bfc8-ad3939649519', 'e40a4371-6835-4f67-a349-c2b02ed6760e', '0', NULL, 'NF-edit', '修改', NULL, 2, 'edit', '/WeixinManage/Users/Form', 0, 0, 0, 0, 2, 0, 1, NULL, '2018-08-14 22:51:47', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-04-22 10:25:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('709a4a7b-4d98-462d-b47c-351ef11db06f', '252229DB-35CA-47AE-BDAE-C9903ED5BA7B', '0', 1, 'NF-Details', '查看机构', NULL, 2, 'details', '/SystemManage/Organize/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2020-04-07 14:23:01', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('711e01d6-c5c1-4238-ae23-78e21cf933f3', 'e40a4371-6835-4f67-a349-c2b02ed6760e', '0', NULL, 'NF-delete', '删除', NULL, 2, 'delete', '/WeixinManage/Users/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, '2018-08-14 22:53:13', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-04-22 10:26:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('74eecdfb-3bee-405d-be07-27a78219c179', '38CA5A66-C993-4410-AF95-50489B22939C', '0', 1, 'NF-add', '新建用户', NULL, 1, 'add', '/SystemManage/User/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2016-07-25 14:15:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('78d0d7df-7b33-4b05-be3f-899b79773643', '9a727a52-43ed-425a-940c-a4b64749f745', '0', NULL, 'NF-delete', '删除', NULL, 2, 'delete', '/WeixinManage/WxUsers/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, '2018-08-14 22:53:13', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-07-04 10:54:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('7e10a7ac-8b65-4c7c-8eee-92d69d7dcbd9', '26452c9a-243d-4c81-97b9-a3ad581c3bf4', '0', 1, 'NF-add', '新建岗位', NULL, 1, 'add', '/SystemManage/Organize/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2020-04-09 15:26:36', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('7ee3ff62-ab18-4886-9451-89b1d152172e', '7e4e4a48-4d51-4159-a113-2a211186f13a', '0', 1, 'NF-details', '查看公告', NULL, 2, 'details', '/SystemManage/Notice/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2020-04-17 12:49:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('80afeabc-5502-47cc-a304-a1c736b150d2', '3593c43a-e4bc-4b7f-9629-0449a3d1818e', '0', NULL, 'NF-Details', '查看', NULL, 2, 'details', '/DingTalkManage/Department/Details', 0, 0, 0, 0, 4, 0, 1, NULL, '2018-08-14 22:54:07', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-04-22 10:27:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('82f162cb-beb9-4a79-8924-cd1860e26e2e', '423A200B-FA5F-4B29-B7B7-A3F5474B725F', '0', 1, 'NF-details', '查看字典', NULL, 2, 'details', '/SystemManage/ItemsData/Details', 0, 0, 0, 0, 5, 0, 1, NULL, NULL, NULL, '2020-04-17 12:50:57', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('8379135e-5b13-4236-bfb1-9289e6129034', 'a3a4742d-ca39-42ec-b95a-8552a6fae579', '0', 1, 'NF-delete', '删除策略', NULL, 2, 'delete', '/SystemSecurity/FilterIP/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2016-07-25 15:57:57', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('85F5212F-E321-4124-B155-9374AA5D9C10', '64A1C550-2C61-4A8C-833D-ACD0C012260F', '0', 1, 'NF-delete', '删除菜单', NULL, 2, 'delete', '/SystemManage/Module/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2016-07-25 15:41:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('88f7b3a8-fd6d-4f8e-a861-11405f434868', 'F298F868-B689-4982-8C8B-9268CBF0308D', '0', 1, 'NF-details', '查看岗位', NULL, 2, 'details', '/SystemManage/Duty/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2020-04-17 12:50:04', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('89d7a69d-b953-4ce2-9294-db4f50f2a157', '337A4661-99A5-4E5E-B028-861CACAF9917', '0', 1, 'NF-edit', '修改区域', NULL, 2, 'edit', '/SystemManage/Area/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2016-07-25 15:32:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('8a9993af-69b2-4d8a-85b3-337745a1f428', 'F298F868-B689-4982-8C8B-9268CBF0308D', '0', 1, 'NF-delete', '删除岗位', NULL, 2, 'delete', '/SystemManage/Duty/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('8c7013a9-3682-4367-8bc6-c77ca89f346b', '337A4661-99A5-4E5E-B028-861CACAF9917', '0', 1, 'NF-delete', '删除区域', NULL, 2, 'delete', '/SystemManage/Area/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2016-07-25 15:32:53', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('8d7b059e-4105-4dde-944c-c2424f68b5c5', '0c253d7a-f1bf-45c0-9a59-0ad3396323e6', '0', NULL, 'NF-Details', '查看', NULL, 2, 'details', '/WeixinMPManage/WxTempMsg/Details', 0, 0, 0, 0, 4, 0, 1, NULL, '2018-08-14 22:54:07', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-07-04 10:54:46', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('8f698747-a1c3-468d-9279-99990987e0f9', '7e4e4a48-4d51-4159-a113-2a211186f13a', '0', 1, 'NF-delete', '删除公告', NULL, 2, 'delete', '/SystemManage/Notice/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2020-04-14 16:17:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('91be873e-ccb7-434f-9a3b-d312d6d5798a', '252229DB-35CA-47AE-BDAE-C9903ED5BA7B', '0', 1, 'NF-edit', '修改机构', NULL, 2, 'edit', '/SystemManage/Organize/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2020-04-07 14:22:50', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('9fc77888-bbca-4996-9240-a0f389819f6f', '7e4e4a48-4d51-4159-a113-2a211186f13a', '0', 1, 'NF-edit', '修改公告', NULL, 2, 'edit', '/SystemManage/Notice/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2020-04-14 16:17:16', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('9FD543DB-C5BB-4789-ACFF-C5865AFB032C', '64A1C550-2C61-4A8C-833D-ACD0C012260F', '0', 1, 'NF-add', '新增菜单', NULL, 1, 'add', '/SystemManage/Module/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2016-07-25 15:41:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('a026f86d-d7ed-4cd3-8901-f6c7808026e6', '9a727a52-43ed-425a-940c-a4b64749f745', '0', NULL, 'NF-Details', '查看', NULL, 2, 'details', '/WeixinMPManage/WxUsers/Details', 0, 0, 0, 0, 4, 0, 1, NULL, '2018-08-14 22:54:07', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-07-04 10:54:46', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('a6d7557a-a5ff-42df-a7e6-b5311c2b908e', '5b263367-33a8-48e1-89ec-ba225f7d5e7a', '0', NULL, 'NF-update', '更新', NULL, 1, 'update', '/DingTalkManage/Users/UpdateDingTalkUser', 0, 0, 0, 0, 0, NULL, 1, NULL, '2020-03-27 16:25:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-03-27 16:27:30', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('aaf58c1b-4af2-4e5f-a3e4-c48e86378191', 'a3a4742d-ca39-42ec-b95a-8552a6fae579', '0', 1, 'NF-edit', '修改策略', NULL, 2, 'edit', '/SystemSecurity/FilterIP/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2016-07-25 15:57:49', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('abfdff21-8ebf-4024-8555-401b4df6acd9', '38CA5A66-C993-4410-AF95-50489B22939C', '0', 1, 'NF-details', '查看用户', NULL, 2, 'details', '/SystemManage/User/Details', 1, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2020-04-17 12:50:13', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('aed66cfb-d78e-43d4-9987-c714546be7eb', 'e72c75d0-3a69-41ad-b220-13c9a62ec788', '0', 1, 'NF-download', '下载备份', NULL, 2, 'download', '/SystemSecurity/DbBackup/DownloadBackup', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2020-04-07 14:34:23', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('b02a3807-0835-46c1-a965-af192dfb9823', '0c253d7a-f1bf-45c0-9a59-0ad3396323e6', '0', NULL, 'NF-edit', '修改', NULL, 2, 'edit', '/WeixinManage/WxTempMsg/Form', 0, 0, 0, 0, 2, 0, 1, NULL, '2018-08-14 22:51:47', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-07-04 10:54:31', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('b5168959-7655-4dce-956a-754e3ebbfb2e', '9a727a52-43ed-425a-940c-a4b64749f745', '0', NULL, 'NF-add', '新增', NULL, 1, 'add', '/WeixinManage/WxUsers/Form', 0, 0, 0, 0, 1, 0, 1, NULL, '2018-08-14 22:49:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-07-04 10:54:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('cd65e50a-0bea-45a9-b82e-f2eacdbd209e', '252229DB-35CA-47AE-BDAE-C9903ED5BA7B', '0', 1, 'NF-add', '新建机构', NULL, 1, 'add', '/SystemManage/Organize/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2020-04-07 14:22:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('d02984f1-2fea-4507-9442-72b1d81a490c', '3593c43a-e4bc-4b7f-9629-0449a3d1818e', '0', NULL, 'NF-edit', '修改', NULL, 2, 'edit', '/DingTalkManage/Department/Form', 0, 0, 0, 0, 2, 0, 1, NULL, '2018-08-14 22:51:47', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-04-22 10:27:05', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('d4074121-0d4f-465e-ad37-409bbe15bf8a', 'a3a4742d-ca39-42ec-b95a-8552a6fae579', '0', 1, 'NF-add', '新建策略', NULL, 1, 'add', '/SystemSecurity/FilterIP/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2016-07-25 15:57:40', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('D4FCAFED-7640-449E-80B7-622DDACD5012', '64A1C550-2C61-4A8C-833D-ACD0C012260F', '0', 1, 'NF-Details', '查看菜单', NULL, 2, 'details', '/SystemManage/Module/Details', 1, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2016-07-25 15:41:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('de0dd0b8-defe-4766-a8fe-93da339981e8', 'e40a4371-6835-4f67-a349-c2b02ed6760e', '0', NULL, 'NF-add', '新增', NULL, 1, 'add', '/WeixinManage/Users/Form', 0, 0, 0, 0, 1, 0, 1, NULL, '2018-08-14 22:49:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-04-22 10:25:43', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('E29FCBA7-F848-4A8B-BC41-A3C668A9005D', '64A1C550-2C61-4A8C-833D-ACD0C012260F', '0', 1, 'NF-edit', '修改菜单', NULL, 2, 'edit', '/SystemManage/Module/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2016-07-25 15:41:02', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('e75e4efc-d461-4334-a764-56992fec38e6', 'F298F868-B689-4982-8C8B-9268CBF0308D', '0', 1, 'NF-edit', '修改岗位', NULL, 2, 'edit', '/SystemManage/Duty/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('f51da6f6-8511-49f3-982b-a30ed0946706', '26452c9a-243d-4c81-97b9-a3ad581c3bf4', '0', 1, 'NF-delete', '删除岗位', NULL, 2, 'delete', '/SystemManage/Organize/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2020-04-09 15:26:45', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('f7c7c0ce-1916-449c-b239-a9a5db940c6a', '5b263367-33a8-48e1-89ec-ba225f7d5e7a', '0', NULL, 'NF-Details', '查看', NULL, 2, 'details', '/DingTalkManage/Users/Details', 0, 0, 0, 0, 4, 0, 1, NULL, '2018-08-14 22:54:07', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-04-22 10:26:24', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('f93763ff-51a1-478d-9585-3c86084c54f3', '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', '0', 1, 'NF-details', '查看角色', NULL, 2, 'details', '/SystemManage/Role/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2020-04-17 12:49:53', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('FD3D073C-4F88-467A-AE3B-CDD060952CE6', '64A1C550-2C61-4A8C-833D-ACD0C012260F', '0', 1, 'NF-modulebutton', '按钮管理', NULL, 2, 'modulebutton', '/SystemManage/ModuleButton/Index', 0, 0, 0, 0, 5, 0, 1, NULL, NULL, NULL, '2020-04-07 14:34:09', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('fea84a80-2f19-4118-a2aa-a269a66df346', '3593c43a-e4bc-4b7f-9629-0449a3d1818e', '0', NULL, 'NF-add', '新增', NULL, 1, 'add', '/DingTalkManage/Department/Form', 0, 0, 0, 0, 1, 0, 1, NULL, '2018-08-14 22:49:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-04-22 10:26:57', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('ffffe7f8-900c-413a-9970-bee7d6599cce', '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', '0', 1, 'NF-edit', '修改角色', NULL, 2, 'edit', '/SystemManage/Role/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_moduleform
-- ----------------------------
DROP TABLE IF EXISTS `sys_moduleform`;
CREATE TABLE `sys_moduleform`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ModuleId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_FormJson` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_moduleforminstance
-- ----------------------------
DROP TABLE IF EXISTS `sys_moduleforminstance`;
CREATE TABLE `sys_moduleforminstance`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_FormId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ObjectId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_InstanceJson` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_Title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `IX_Sys_Notice`(`F_Title`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('719decb4-fd6d-40bb-b56c-d5228332cd8c', '系统公告', '测试测测测测踩踩踩踩踩踩踩踩踩踩踩踩踩踩踩1asdadasddasdasdasdasdsadasdadasdasdasdasdasdssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss', 0, 1, NULL, '2020-04-14 16:20:29', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2020-04-14 16:37:13', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_notice` VALUES ('c839e8c1-14e0-45c3-8d8b-54fe94cb1c19', '111', '1111', 0, 1, NULL, '2020-04-17 10:22:24', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2020-04-20 16:55:53', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);

-- ----------------------------
-- Table structure for sys_organize
-- ----------------------------
DROP TABLE IF EXISTS `sys_organize`;
CREATE TABLE `sys_organize`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_ParentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Layers` int(11) NULL DEFAULT NULL,
  `F_EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ShortName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CategoryId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ManagerId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_TelePhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_MobilePhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_WeChat` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_AreaId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_AllowEdit` tinyint(1) NULL DEFAULT NULL,
  `F_AllowDelete` tinyint(1) NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `IX_Sys_Organize`(`F_EnCode`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_organize
-- ----------------------------
INSERT INTO `sys_organize` VALUES ('253EDA1F-F158-4F3F-A778-B7E538E052A2', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'Manufacturing', '生产部', NULL, 'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 1, NULL, '2016-06-10 00:00:00', NULL, '2020-04-20 16:56:04', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_organize` VALUES ('554C61CE-6AE0-44EB-B33D-A462BE7EB3E1', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'Ministry', '技术部', NULL, 'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 5, 0, 1, NULL, '2016-06-10 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_organize` VALUES ('5AB270C0-5D33-4203-A54F-4552699FDA3C', '0', 1, 'Company', '上海东鞋贸易有限公司', NULL, 'Company', '郭总', NULL, NULL, NULL, NULL, NULL, NULL, '上海市松江区', 0, 0, 1, 0, 1, NULL, '2016-06-10 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_organize` VALUES ('5B417E2B-4B96-4F37-8BAA-10E5A812D05E', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'Market', '市场部', NULL, 'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 1, NULL, '2016-06-10 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_organize` VALUES ('80E10CD5-7591-40B8-A005-BCDE1B961E76', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'Administration', '行政部', NULL, 'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 2, 0, 1, NULL, '2016-06-10 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_organize` VALUES ('BD830AEF-0A2E-4228-ACF8-8843C39D41D8', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'Purchase', '采购部', NULL, 'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 6, 0, 1, NULL, '2016-06-10 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_organize` VALUES ('DFA2FB91-C909-44A3-9282-BF946102E1C9', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'HumanResourse', '人事部', NULL, 'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 8, 0, 1, NULL, '2016-06-10 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_organize` VALUES ('F02A66CA-3D8B-491B-8A17-C9ACA3E3B5DD', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'Financial', '财务部', NULL, 'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 1, NULL, '2016-06-10 00:00:00', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_quickmodule
-- ----------------------------
DROP TABLE IF EXISTS `sys_quickmodule`;
CREATE TABLE `sys_quickmodule`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_ModuleId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `IX_Sys_QuickModule`(`F_ModuleId`, `F_CreatorUserId`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_quickmodule
-- ----------------------------
INSERT INTO `sys_quickmodule` VALUES ('0d05da7f-d231-47eb-aeae-10c0221a2dd9', '337A4661-99A5-4E5E-B028-861CACAF9917', 0, 1, NULL, '2020-04-17 11:38:58', '547395a9-1de6-41c6-a829-f1dc036c60b3', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('0fa58ce3-a3c4-4138-80cc-481bee9f460b', '49F61713-C1E4-420E-BEEC-0B4DBC2D7DE8', 0, 1, NULL, '2020-04-17 11:38:58', '547395a9-1de6-41c6-a829-f1dc036c60b3', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('13ec7aab-d25e-4ae9-aff4-a5a3d303ef9f', '26452c9a-243d-4c81-97b9-a3ad581c3bf4', 0, 1, NULL, '2020-04-14 14:26:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('17dde739-2b06-4b88-baa0-7970e80963eb', 'F298F868-B689-4982-8C8B-9268CBF0308D', 0, 1, NULL, '2020-04-17 14:27:32', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('2195bb31-4065-4280-957b-15ecdde6594d', '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', 0, 1, NULL, '2020-04-17 11:38:58', '547395a9-1de6-41c6-a829-f1dc036c60b3', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('3b38d852-9a06-4d95-b6df-c431cb1e4ed7', '64A1C550-2C61-4A8C-833D-ACD0C012260F', 0, 1, NULL, '2020-04-14 14:26:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('3c258aac-902c-4041-beb2-90a143454307', '7e4e4a48-4d51-4159-a113-2a211186f13a', 0, 1, NULL, '2020-04-17 14:27:32', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('4008a7bb-0970-42f1-9a29-c3376d25e67e', '49F61713-C1E4-420E-BEEC-0B4DBC2D7DE8', 0, 1, NULL, '2020-04-17 12:55:31', 'b6651953-b5fb-4051-8919-c22c827f5741', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('45b0fc98-afc4-446f-9f85-f281d8604eef', '337A4661-99A5-4E5E-B028-861CACAF9917', 0, 1, NULL, '2020-04-17 14:27:32', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('46105128-2b41-40c1-8040-328dac9185e4', 'e72c75d0-3a69-41ad-b220-13c9a62ec788', 0, 1, NULL, '2020-04-17 11:38:58', '547395a9-1de6-41c6-a829-f1dc036c60b3', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('56695d51-ee41-4ae2-9726-1c486f6358ab', 'F298F868-B689-4982-8C8B-9268CBF0308D', 0, 1, NULL, '2020-04-17 11:38:58', '547395a9-1de6-41c6-a829-f1dc036c60b3', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('5b3c77aa-b2cb-4e04-a521-2856bc0360cf', 'e72c75d0-3a69-41ad-b220-13c9a62ec788', 0, 1, NULL, '2020-04-14 14:26:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('604df5c8-70ad-4f26-a247-934b313feeb4', '49F61713-C1E4-420E-BEEC-0B4DBC2D7DE8', 0, 1, NULL, '2020-04-14 14:26:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('660f992a-b76d-41c3-8a92-2b6ffec0d302', '38CA5A66-C993-4410-AF95-50489B22939C', 0, 1, NULL, '2020-04-17 14:27:32', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('78aa4757-d9a4-4adc-b7c5-3acd8cc0bbf4', '423A200B-FA5F-4B29-B7B7-A3F5474B725F', 0, 1, NULL, '2020-04-17 11:38:58', '547395a9-1de6-41c6-a829-f1dc036c60b3', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('812b5873-034d-46dd-8772-81086cd9d526', '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', 0, 1, NULL, '2020-04-17 14:27:32', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('879811f4-38e5-4c7f-ac67-6fdfad88e313', '38CA5A66-C993-4410-AF95-50489B22939C', 0, 1, NULL, '2020-04-17 12:55:31', 'b6651953-b5fb-4051-8919-c22c827f5741', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('88498c45-6509-44d2-be4c-8d96064d8d03', 'F298F868-B689-4982-8C8B-9268CBF0308D', 0, 1, NULL, '2020-04-14 14:26:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('906f4263-43be-4f35-9cf9-93d1e17683ed', '423A200B-FA5F-4B29-B7B7-A3F5474B725F', 0, 1, NULL, '2020-04-17 12:55:31', 'b6651953-b5fb-4051-8919-c22c827f5741', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('99b7c0d0-2cd2-4552-84d8-0411c255420d', '64A1C550-2C61-4A8C-833D-ACD0C012260F', 0, 1, NULL, '2020-04-17 12:55:31', 'b6651953-b5fb-4051-8919-c22c827f5741', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('a01403e3-d797-44bf-b20e-4c5ddc50eff3', 'a3a4742d-ca39-42ec-b95a-8552a6fae579', 0, 1, NULL, '2020-04-17 12:55:31', 'b6651953-b5fb-4051-8919-c22c827f5741', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('ad7d7b75-36f6-4c49-88f9-58d3c74a83de', '26452c9a-243d-4c81-97b9-a3ad581c3bf4', 0, 1, NULL, '2020-04-17 14:27:32', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('ad97c53e-19c0-4d89-b006-1107158f2fbf', '337A4661-99A5-4E5E-B028-861CACAF9917', 0, 1, NULL, '2020-04-17 12:55:31', 'b6651953-b5fb-4051-8919-c22c827f5741', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('b855c5d2-9266-4c38-8c54-66ed783bdc70', '38CA5A66-C993-4410-AF95-50489B22939C', 0, 1, NULL, '2020-04-14 14:26:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('b9a9e42f-2fbc-4d4f-97a3-80468b57f251', '96EE855E-8CD2-47FC-A51D-127C131C9FB9', 0, 1, NULL, '2020-04-17 11:38:58', '547395a9-1de6-41c6-a829-f1dc036c60b3', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('c13d6e95-1465-4db9-9f7d-92d056185c4c', '423A200B-FA5F-4B29-B7B7-A3F5474B725F', 0, 1, NULL, '2020-04-17 14:27:32', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('c47a1290-a804-467c-83bb-475b7670f866', '64A1C550-2C61-4A8C-833D-ACD0C012260F', 0, 1, NULL, '2020-04-17 11:38:58', '547395a9-1de6-41c6-a829-f1dc036c60b3', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('cc966bdc-fc91-4eec-8727-37018ba5b94e', '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', 0, 1, NULL, '2020-04-17 12:55:31', 'b6651953-b5fb-4051-8919-c22c827f5741', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('e1a6916d-1136-4fae-bfd7-1976a7e9305d', 'a3a4742d-ca39-42ec-b95a-8552a6fae579', 0, 1, NULL, '2020-04-14 14:26:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('e32603f1-a0f9-40ee-8279-8b9510cd7ea6', '96EE855E-8CD2-47FC-A51D-127C131C9FB9', 0, 1, NULL, '2020-04-14 14:26:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('e3fcae8d-0cfd-48c6-969e-9528dcd0fdbb', '64A1C550-2C61-4A8C-833D-ACD0C012260F', 0, 1, NULL, '2020-04-17 14:27:32', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('f5503f0b-9560-4305-aed4-c38543f84789', 'e72c75d0-3a69-41ad-b220-13c9a62ec788', 0, 1, NULL, '2020-04-17 12:55:31', 'b6651953-b5fb-4051-8919-c22c827f5741', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_OrganizeId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Category` int(11) NULL DEFAULT NULL,
  `F_EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_AllowEdit` tinyint(1) NULL DEFAULT NULL,
  `F_AllowDelete` tinyint(1) NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `IX_Sys_Role`(`F_EnCode`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('0052A230-EA7B-4F3A-A1C9-1611FF26481A', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'manager', '经理', NULL, 0, 0, 3, 0, 1, NULL, '2016-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('05691457-5284-4FEE-8D7E-C35141F3FF39', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, '10024', '总经理助理', NULL, 0, 0, 16, 0, 1, NULL, '2016-07-12 00:00:00', NULL, '2020-04-03 14:07:06', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_role` VALUES ('0CD2A952-2EE0-4CAF-9757-617D5075745B', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'president', '董事长', NULL, 0, 0, 10, 0, 1, NULL, '2016-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('23ED024E-0AAA-4C8D-9216-D1AB93348D26', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'employee', '员工', NULL, 0, 0, 1, 0, 1, NULL, '2016-07-12 00:00:00', NULL, '2016-07-18 15:18:56', NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('2B3406F9-B7FF-4D23-BC61-D8EEB6C88D5B', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, '10023', '行业顾问', NULL, 0, 0, 15, 0, 1, NULL, '2016-07-12 00:00:00', NULL, '2020-04-03 14:45:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_role` VALUES ('3263446A-D303-4C42-B436-6F46BF7CE86A', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, '10019', '总裁', NULL, 0, 0, 12, 0, 1, NULL, '2016-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('3A2FD4D7-E73C-44E4-8AED-B6EE5980779E', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, '10025', '大堂经理', NULL, 0, 0, 17, 0, 1, NULL, '2016-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('796E9C6A-8432-4BA6-8CF6-EFFAB6F2098C', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'general', '总经理', NULL, 0, 0, 6, 0, 1, NULL, '2016-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('7E2639BA-02B9-417A-9AAA-CF6DCF8487E0', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, '10022', '力资源专员', NULL, 0, 0, 14, 0, 1, NULL, '2016-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('91E09653-D3DE-416A-BF6C-E91E60B4B4CF', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'chairman', '主任', NULL, 0, 0, 7, 0, 1, NULL, '2016-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('B2624F67-E092-461A-AAAD-13592A9429D9', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, '10018', '行政助理', NULL, 0, 0, 11, 0, 1, NULL, '2016-07-12 00:00:00', NULL, '2020-04-22 14:27:06', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_role` VALUES ('C609D4D6-81F7-4647-BF2F-81BD4CED2C19', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'fileattache', '档案专员', NULL, 0, 0, 8, 0, 1, NULL, '2016-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('CB116AA3-88CC-4CF7-B0BC-7C55EC502183', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, '10020', '首席执行官', NULL, 0, 0, 13, 0, 1, NULL, '2016-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('CEEA79E8-2E19-4294-8447-13247053DE04', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'director', '总监', NULL, 0, 0, 4, 0, 1, NULL, '2016-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('D335A5B8-7DED-495C-B8FC-EE933FB30779', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'charge', '主管', NULL, 0, 0, 2, 0, 1, NULL, '2016-07-12 00:00:00', NULL, '2016-07-18 15:17:22', NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('d71324b7-e7eb-47b2-bdea-f0293d36bb7f', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, '0001', '0001', '1', 0, 0, 1, 0, 1, NULL, '2016-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('EA56E457-5024-49AF-9410-D5D71D24F14B', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'vicegeneral', '副总经理', NULL, 0, 0, 5, 0, 1, NULL, '2016-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('F03EA699-9A0A-4EE9-9D33-27B9A7DFF09B', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'engineer', '高级工程师', NULL, 0, 0, 9, 0, 1, NULL, '2016-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_roleauthorize
-- ----------------------------
DROP TABLE IF EXISTS `sys_roleauthorize`;
CREATE TABLE `sys_roleauthorize`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_ItemType` int(11) NULL DEFAULT NULL,
  `F_ItemId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ObjectType` int(11) NULL DEFAULT NULL,
  `F_ObjectId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_roleauthorize
-- ----------------------------
INSERT INTO `sys_roleauthorize` VALUES ('095f3da9-179e-433a-8d50-46d58113213d', 2, '104bcc01-0cfd-433f-87f4-29a8a3efb313', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('17b5c08f-0226-49ad-8787-acff690d53c9', 2, '5d708d9d-6ebe-40ea-8589-e3efce9e74ec', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('1b2c3d67-cba2-46cf-b528-6e4e4ab6a5a4', 2, 'abfdff21-8ebf-4024-8555-401b4df6acd9', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('1cdbc73c-d3c9-409c-93c8-02cd0ab32a26', 2, 'f93763ff-51a1-478d-9585-3c86084c54f3', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('1ee441f7-53ef-41ff-b369-07447259e340', 2, '85F5212F-E321-4124-B155-9374AA5D9C10', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('24363939-c428-46b9-b0b9-f8e50cbef87c', 2, 'E29FCBA7-F848-4A8B-BC41-A3C668A9005D', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('2d81836b-b80c-401f-a594-4ca75df24047', 2, 'D4FCAFED-7640-449E-80B7-622DDACD5012', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('2e2ed70a-5063-4ee0-b189-1b3bdc5c1b91', 2, '7e10a7ac-8b65-4c7c-8eee-92d69d7dcbd9', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('3b341395-6cf7-41e9-95d1-f71072f973dd', 1, '337A4661-99A5-4E5E-B028-861CACAF9917', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('3dc79456-7c43-4705-a2d9-b34913f9b0db', 2, 'FD3D073C-4F88-467A-AE3B-CDD060952CE6', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('48c1c44e-a50e-49bb-98fd-61134bc3c5b4', 2, '0b1b307b-2aac-456b-acfb-484a05c71bd7', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('4f64221b-a45b-430a-a9dc-9211e7b47019', 2, '88f7b3a8-fd6d-4f8e-a861-11405f434868', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('4f83ab2a-62d5-4d6a-9c9b-0fdc71741774', 2, '14617a4f-bfef-4bc2-b943-d18d3ff8d22f', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('5a9562bd-2b56-426b-82f5-c8f398e70398', 2, '2a8f5342-5eb7-491c-a1a9-a2631d8eb5d6', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('60a4bec6-dcf5-46a0-9fc8-ddb0e545b6f4', 1, '26452c9a-243d-4c81-97b9-a3ad581c3bf4', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('6d6251b1-27b1-4a5e-ad8b-0dc532f62b25', 2, '239077ff-13e1-4720-84e1-67b6f0276979', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('6f756ed0-4310-4a28-8745-ae754682faac', 2, '1ee1c46b-e767-4532-8636-936ea4c12003', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('7b858967-e077-4655-9089-95e40fd94495', 2, 'ffffe7f8-900c-413a-9970-bee7d6599cce', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('7b93360b-2c89-4207-9972-f23a7e89499a', 2, '8c7013a9-3682-4367-8bc6-c77ca89f346b', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('7f11b7c4-f590-4dde-9811-4dc7dec5f757', 1, '38CA5A66-C993-4410-AF95-50489B22939C', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('8291440c-16af-4f0e-b1b5-b110791335bb', 2, 'e75e4efc-d461-4334-a764-56992fec38e6', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('84529ace-4f20-49b1-baf4-12b1f0d1e88c', 2, '13c9a15f-c50d-4f09-8344-fd0050f70086', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('8c0e3c0e-2340-4b01-86a1-67999e4bafa3', 2, '4727adf7-5525-4c8c-9de5-39e49c268349', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('9252e1b7-7b09-4222-9bec-efcb740f2bfd', 1, '462027E0-0848-41DD-BCC3-025DCAE65555', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('92f141e0-1252-46bf-93f7-d5bb675319bd', 1, 'F298F868-B689-4982-8C8B-9268CBF0308D', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('96c7d03d-f92f-4f8b-a27c-16cab59040eb', 2, '15362a59-b242-494a-bc6e-413b4a63580e', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('9c11ac76-0cc3-4b20-9446-6229cf7122ed', 2, '48afe7b3-e158-4256-b50c-cd0ee7c6dcc9', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('a3fdb115-217e-4864-82b7-7b2f924ca326', 2, '38e39592-6e86-42fb-8f72-adea0c82cbc1', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('ac746b75-fb27-4a88-9455-aedc60c9a793', 2, 'f51da6f6-8511-49f3-982b-a30ed0946706', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('ade6f1e7-3fa8-4a54-b6fd-c00801aa102a', 2, '0d777b07-041a-4205-a393-d1a009aaafc7', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('b1253dd9-8c42-46b9-8a92-7a76bdab5b5f', 2, '89d7a69d-b953-4ce2-9294-db4f50f2a157', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('bd5200d8-3e73-4ca0-97a5-238d626b912e', 2, '4b876abc-1b85-47b0-abc7-96e313b18ed8', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('beccde58-c4d0-4ec2-94ac-a9d5780af473', 2, '82f162cb-beb9-4a79-8924-cd1860e26e2e', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('c22f1b4e-509e-4980-b1a0-4f70adad062d', 1, '7e4e4a48-4d51-4159-a113-2a211186f13a', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('d08b6e52-d9b7-496f-8662-7d99785a1c6e', 2, '8a9993af-69b2-4d8a-85b3-337745a1f428', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('dd3b44cf-9058-431f-80dc-032a38a3dfa0', 1, '64A1C550-2C61-4A8C-833D-ACD0C012260F', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('eb2800e2-bacc-4ff3-bac4-c3b49555ab3c', 1, '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('f491c588-7e63-449e-8a2b-fda9392f9622', 2, '9FD543DB-C5BB-4789-ACFF-C5865AFB032C', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('f95c7f8f-0ae2-40fc-ba2b-f8ae7e9329e3', 2, '1b72be70-e44d-43d6-91d0-dc3ad628d22e', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('fee55f1c-9fe4-4ccb-8271-c406d6ee71e9', 2, '74eecdfb-3bee-405d-be07-27a78219c179', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('ff6354ca-f429-4b62-b0ed-f750068e346b', 1, '423A200B-FA5F-4B29-B7B7-A3F5474B725F', 1, 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_serverstate
-- ----------------------------
DROP TABLE IF EXISTS `sys_serverstate`;
CREATE TABLE `sys_serverstate`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_WebSite` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ARM` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CPU` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_IIS` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Date` date NULL DEFAULT NULL,
  `F_Cout` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `IX_Sys_ServerState`(`F_WebSite`, `F_Date`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_serverstate
-- ----------------------------
INSERT INTO `sys_serverstate` VALUES ('07c7d9de-d1a3-434a-86a6-f3fe4d0d28f6', 'WaterCloud.Web', '77.45', '11.66', '0', '2020-04-14', 87);
INSERT INTO `sys_serverstate` VALUES ('3a823abe-dc4e-4899-a157-c434e2120953', 'WaterCloud.Web', '93.49', '16.25', '7', '2020-04-10', 1);
INSERT INTO `sys_serverstate` VALUES ('3a823abe-dc4e-4899-a157-c434e2120954', 'WaterCloud.Web', '93.49', '16.25', '4', '2020-04-11', 1);
INSERT INTO `sys_serverstate` VALUES ('3a823abe-dc4e-4899-a157-c434e2120955', 'WaterCloud.Web', '93.49', '16.25', '5', '2020-04-12', 1);
INSERT INTO `sys_serverstate` VALUES ('3a823abe-dc4e-4899-a157-c434e2120956', 'WaterCloud.Web', '88.88', '17.28', '0', '2020-04-13', 41);
INSERT INTO `sys_serverstate` VALUES ('53386811-6c32-42a0-a451-475091a776db', 'WaterCloud.Web', '82.93', '29.88', '0', '2020-04-20', 33);
INSERT INTO `sys_serverstate` VALUES ('91ba06c3-c7b1-472a-a05f-73670533c474', 'WaterCloud.Web', '88.19', '24.63', '0', '2020-04-22', 8);
INSERT INTO `sys_serverstate` VALUES ('ce3224a6-a90a-4808-aba7-4a2b988cc189', 'WaterCloud.Web', '83.45', '23.45', '0', '2020-04-21', 33);
INSERT INTO `sys_serverstate` VALUES ('e7182526-1d56-4508-a8d9-c108454cbea2', 'WaterCloud.Web', '78.03', '16.18', '0', '2020-04-15', 59);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_Account` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_RealName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_NickName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_HeadIcon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Gender` tinyint(1) NULL DEFAULT NULL,
  `F_Birthday` timestamp(0) NULL DEFAULT NULL,
  `F_MobilePhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_WeChat` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ManagerId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_SecurityLevel` int(11) NULL DEFAULT NULL,
  `F_Signature` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_OrganizeId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DepartmentId` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_RoleId` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DutyId` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_IsAdmin` tinyint(1) NULL DEFAULT NULL,
  `F_IsBoss` tinyint(1) NULL DEFAULT NULL,
  `F_IsLeaderInDepts` tinyint(1) NULL DEFAULT NULL,
  `F_IsSenior` tinyint(1) NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DingTalkUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DingTalkUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DingTalkAvatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_WxOpenId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_WxNickName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_HeadImgUrl` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `IX_Sys_User`(`F_Account`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'admin', '超级管理员', '超级管理员', NULL, 1, '2020-03-27 00:00:00', '13600000000', '3333', NULL, NULL, NULL, NULL, '5AB270C0-5D33-4203-A54F-4552699FDA3C', '554C61CE-6AE0-44EB-B33D-A462BE7EB3E1', NULL, NULL, 0, 0, 0, 0, NULL, 0, 1, '系统内置账户', '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '闫志辉', NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES ('ac7610db-b66e-4f57-916c-c7ea0a4b84c9', '10000', '2222', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5AB270C0-5D33-4203-A54F-4552699FDA3C', '253EDA1F-F158-4F3F-A778-B7E538E052A2', 'd71324b7-e7eb-47b2-bdea-f0293d36bb7f', '23ED024E-0AAA-4C8D-9216-D1AB93348D26', 0, 0, 0, 0, NULL, 0, 1, NULL, '2020-04-17 13:30:45', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-04-20 17:06:01', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_userlogon
-- ----------------------------
DROP TABLE IF EXISTS `sys_userlogon`;
CREATE TABLE `sys_userlogon`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_UserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_UserPassword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_UserSecretkey` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_AllowStartTime` timestamp(0) NULL DEFAULT NULL,
  `F_AllowEndTime` timestamp(0) NULL DEFAULT NULL,
  `F_LockStartDate` timestamp(0) NULL DEFAULT NULL,
  `F_LockEndDate` timestamp(0) NULL DEFAULT NULL,
  `F_FirstVisitTime` timestamp(0) NULL DEFAULT NULL,
  `F_PreviousVisitTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastVisitTime` timestamp(0) NULL DEFAULT NULL,
  `F_ChangePasswordDate` timestamp(0) NULL DEFAULT NULL,
  `F_MultiUserLogin` tinyint(1) NULL DEFAULT NULL,
  `F_LogOnCount` int(11) NULL DEFAULT NULL,
  `F_UserOnLine` tinyint(1) NULL DEFAULT NULL,
  `F_Question` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_AnswerQuestion` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CheckIPAddress` tinyint(1) NULL DEFAULT NULL,
  `F_Language` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Theme` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LoginSession` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ErrorNum` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_userlogon
-- ----------------------------
INSERT INTO `sys_userlogon` VALUES ('9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'd8f5b789e4bf6f81edb08834660ffe8b', '8210ef253bbf2d37', NULL, NULL, NULL, NULL, NULL, '2020-04-17 14:47:44', '2020-04-17 14:59:58', NULL, 0, 360, 0, NULL, NULL, 0, NULL, NULL, 'evrcyibdv42f3ykhfy1yz3ur', 0);
INSERT INTO `sys_userlogon` VALUES ('ac7610db-b66e-4f57-916c-c7ea0a4b84c9', 'ac7610db-b66e-4f57-916c-c7ea0a4b84c9', '307a2a9db0862ca0290494cd297ff892', '49dd47502dc17ffa', NULL, NULL, NULL, NULL, NULL, '2020-04-17 14:50:47', '2020-04-17 15:00:29', NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, 'evrcyibdv42f3ykhfy1yz3ur', 0);

-- ----------------------------
-- Table structure for wct_requestbasedata
-- ----------------------------
DROP TABLE IF EXISTS `wct_requestbasedata`;
CREATE TABLE `wct_requestbasedata`  (
  `uuId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OpenId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MsgType` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DataContent` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EventKey` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Url2` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `XmlContent` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateDate` timestamp(0) NULL DEFAULT NULL,
  `Flag` int(11) NULL DEFAULT NULL,
  `RType` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtInt` int(11) NULL DEFAULT NULL,
  `ExtStr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtStr2` varchar(700) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtStr3` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreatorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateTime` timestamp(0) NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifierId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifyTime` timestamp(0) NULL DEFAULT NULL,
  `DeleterId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeleteTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wct_requestrule
-- ----------------------------
DROP TABLE IF EXISTS `wct_requestrule`;
CREATE TABLE `wct_requestrule`  (
  `uuId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RuleName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ReqKeywords` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ReqestType` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ResponseType` int(11) NULL DEFAULT NULL,
  `IsDefault` tinyint(1) NULL DEFAULT NULL,
  `ModelFunctionName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModelFunctionId` int(11) NULL DEFAULT NULL,
  `Seq` int(11) NULL DEFAULT NULL,
  `CreateDate` timestamp(0) NULL DEFAULT NULL,
  `AgentUrl` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AgentToken` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IsLikeSearch` tinyint(1) NULL DEFAULT NULL,
  `ExtInt` int(11) NULL DEFAULT NULL,
  `ExtInt2` int(11) NULL DEFAULT NULL,
  `ExtStr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtStr2` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtStr3` varchar(800) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtStr4` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreatorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateTime` timestamp(0) NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifierId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifyTime` timestamp(0) NULL DEFAULT NULL,
  `DeleterId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeleteTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wct_requestrulecontent
-- ----------------------------
DROP TABLE IF EXISTS `wct_requestrulecontent`;
CREATE TABLE `wct_requestrulecontent`  (
  `uuId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RContent` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `RContent2` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DetailUrl` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PicUrl` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MediaUrl` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MeidaHDUrl` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Remark` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Seq` int(11) NULL DEFAULT NULL,
  `CreateDate` timestamp(0) NULL DEFAULT NULL,
  `ExtInt` int(11) NULL DEFAULT NULL,
  `ExtInt2` int(11) NULL DEFAULT NULL,
  `ExtStr` varchar(800) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtStr2` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Extstr3` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreatorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateTime` timestamp(0) NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifierId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifyTime` timestamp(0) NULL DEFAULT NULL,
  `DeleterId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeleteTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wct_responsebasedata
-- ----------------------------
DROP TABLE IF EXISTS `wct_responsebasedata`;
CREATE TABLE `wct_responsebasedata`  (
  `uuId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OpenId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RequestType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RequestContent` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ResponseType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ReponseContent` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `XmlContent` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateDate` timestamp(0) NULL DEFAULT NULL,
  `Flag` int(11) NULL DEFAULT NULL,
  `RType` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtInt` int(11) NULL DEFAULT NULL,
  `ExtStr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtStr2` varchar(700) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtStr3` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreatorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateTime` timestamp(0) NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifierId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifyTime` timestamp(0) NULL DEFAULT NULL,
  `DeleterId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeleteTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wct_templatemessage
-- ----------------------------
DROP TABLE IF EXISTS `wct_templatemessage`;
CREATE TABLE `wct_templatemessage`  (
  `uuId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TemplateId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Primary_Industry` int(11) NULL DEFAULT NULL,
  `Deputy_Industry` int(11) NULL DEFAULT NULL,
  `Data_First` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Data_Remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Data_Keyword1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Data_Keyword2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Data_Keyword3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Data_Keyword4` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Data_Keyword5` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LinkUrl` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MiniProgram` int(11) NULL DEFAULT NULL,
  `Appid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Pagepath` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FirstColor` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RemarkColor` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreatorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateTime` timestamp(0) NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifierId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifyTime` timestamp(0) NULL DEFAULT NULL,
  `DeleterId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeleteTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wct_users
-- ----------------------------
DROP TABLE IF EXISTS `wct_users`;
CREATE TABLE `wct_users`  (
  `uuId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OpenId` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `City` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Country` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Province` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Language` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `HeadImgUrl` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SubscribeTime` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Unionid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateDate` timestamp(0) NULL DEFAULT NULL,
  `GroupId` int(11) NULL DEFAULT NULL,
  `Status` int(11) NULL DEFAULT NULL,
  `WeixinId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UpdateDate` timestamp(0) NULL DEFAULT NULL,
  `Creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreatorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateTime` timestamp(0) NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifierId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifyTime` timestamp(0) NULL DEFAULT NULL,
  `DeleterId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeleteTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wct_wxappconfig
-- ----------------------------
DROP TABLE IF EXISTS `wct_wxappconfig`;
CREATE TABLE `wct_wxappconfig`  (
  `uuId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `WxName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `WxId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `WxCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `HeadPic` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `City` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Token` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ApiUrl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AppId` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AppSecret` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Access_Token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Encoding` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `WxType` int(11) NULL DEFAULT NULL,
  `Status` tinyint(1) NULL DEFAULT NULL,
  `IsDefault` tinyint(1) NULL DEFAULT NULL,
  `CloseKW` tinyint(1) NULL DEFAULT NULL,
  `Remark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TimeStamp` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtStr` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtStr2` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtStr3` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PersonSynDate` timestamp(0) NULL DEFAULT NULL,
  `OpenidCount` int(11) NULL DEFAULT NULL,
  `Creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreatorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateTime` timestamp(0) NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifierId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifyTime` timestamp(0) NULL DEFAULT NULL,
  `DeleterId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeleteTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wct_wxappconfig
-- ----------------------------
INSERT INTO `wct_wxappconfig` VALUES ('2d747bf6-9efc-43e9-8263-fb4cf6f16da8', '宜宾机电一体化研究所', 'gh_69c27280f38d', 'ybjd3936', NULL, NULL, NULL, 'yibinmetec', 'eims.dalecloud.cn/api/weixin/index?apiid=ybjd3936', 'wx21027f00d4234abc', 'e90f525e8d396fc68f0bdf4cafcc56b2', NULL, 'bwQlhHUl2pe2VU9CzVN9FCF2yZDAAiJBZqTLo3o9Oyb', 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '2019-07-04 13:33:02', 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for wct_wxpropertyinfo
-- ----------------------------
DROP TABLE IF EXISTS `wct_wxpropertyinfo`;
CREATE TABLE `wct_wxpropertyinfo`  (
  `uuId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `WxId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TypeId` int(11) NULL DEFAULT NULL,
  `TypeName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IContent` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ExpiresIn` int(11) NULL DEFAULT NULL,
  `Count` int(11) NULL DEFAULT NULL,
  `CategoryId` int(11) NULL DEFAULT NULL,
  `CategoryName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Status` tinyint(1) NULL DEFAULT NULL,
  `Creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreatorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateTime` timestamp(0) NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifierId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifyTime` timestamp(0) NULL DEFAULT NULL,
  `DeleterId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeleteTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;