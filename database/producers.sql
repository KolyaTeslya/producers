/*
 Navicat Premium Data Transfer

 Source Server         : BimedisLocal
 Source Server Type    : MySQL
 Source Server Version : 50650
 Source Host           : 192.168.88.237:3306
 Source Schema         : remmed

 Target Server Type    : MySQL
 Target Server Version : 50650
 File Encoding         : 65001

 Date: 06/09/2022 12:51:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for producers
-- ----------------------------
DROP TABLE IF EXISTS `producers`;
CREATE TABLE `producers`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `is_active`(`is_active`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 35629 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of producers
-- ----------------------------
INSERT INTO `producers` VALUES (3, 'AMSCO', 1);
INSERT INTO `producers` VALUES (10, 'TOSHIBA', 1);
INSERT INTO `producers` VALUES (18, 'CHISON', 1);
INSERT INTO `producers` VALUES (19, 'ESAOTE', 1);
INSERT INTO `producers` VALUES (21, 'SONOSITE', 1);
INSERT INTO `producers` VALUES (33, 'FENWAL', 1);
INSERT INTO `producers` VALUES (34, 'BELMONT', 1);
INSERT INTO `producers` VALUES (35, 'STIHLER ELECTRONIC', 1);
INSERT INTO `producers` VALUES (38, 'IMEX', 1);
INSERT INTO `producers` VALUES (40, 'DYMAX', 1);
INSERT INTO `producers` VALUES (41, 'TERASON', 1);
INSERT INTO `producers` VALUES (42, 'NICOLET', 1);
INSERT INTO `producers` VALUES (44, 'AIR TECHNIQUES', 1);
INSERT INTO `producers` VALUES (45, 'B&K', 1);
INSERT INTO `producers` VALUES (47, 'VERATHON', 1);
INSERT INTO `producers` VALUES (49, 'FUKUDA DENSHI', 1);
INSERT INTO `producers` VALUES (50, 'BARD', 1);
INSERT INTO `producers` VALUES (51, 'HITACHI', 1);
INSERT INTO `producers` VALUES (52, 'MEDIWATCH', 1);
INSERT INTO `producers` VALUES (53, 'BROADSOUND', 1);
INSERT INTO `producers` VALUES (54, 'DIASONICS', 1);
INSERT INTO `producers` VALUES (57, 'LORAD', 1);
INSERT INTO `producers` VALUES (59, 'SHIMADZU', 1);
INSERT INTO `producers` VALUES (60, 'KRETZ', 1);
INSERT INTO `producers` VALUES (66, 'VINGMED', 1);
INSERT INTO `producers` VALUES (67, 'COROMETRICS', 1);
INSERT INTO `producers` VALUES (68, 'MAI', 1);
INSERT INTO `producers` VALUES (73, 'SONOSCAPE', 1);
INSERT INTO `producers` VALUES (74, 'KRANZBUHLER', 1);
INSERT INTO `producers` VALUES (75, 'SONORA', 1);
INSERT INTO `producers` VALUES (76, 'ULTRASONIX', 1);
INSERT INTO `producers` VALUES (78, 'VASOMEDICAL', 1);
INSERT INTO `producers` VALUES (80, 'PIE MEDICAL', 1);
INSERT INTO `producers` VALUES (81, 'CIVCO', 1);
INSERT INTO `producers` VALUES (86, 'WELLD', 1);
INSERT INTO `producers` VALUES (87, 'KAIXIN', 1);
INSERT INTO `producers` VALUES (88, 'AUSONICS', 1);
INSERT INTO `producers` VALUES (90, 'CAREWELL', 1);
INSERT INTO `producers` VALUES (92, 'ELSCINT', 1);
INSERT INTO `producers` VALUES (97, 'DYNAMIC IMAGING', 1);
INSERT INTO `producers` VALUES (98, 'SUMMIT DOPPLER', 1);
INSERT INTO `producers` VALUES (99, 'RICH-MAR', 1);

-- ----------------------------
-- Triggers structure for table producers
-- ----------------------------
DROP TRIGGER IF EXISTS `producer_to_upper_case_insert_copy1`;
delimiter ;;
CREATE TRIGGER `producer_to_upper_case_insert_copy1` BEFORE INSERT ON `producers` FOR EACH ROW BEGIN
SET NEW.name=UPPER(TRIM(NEW.name));
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table producers
-- ----------------------------
DROP TRIGGER IF EXISTS `producer_to_upper_case_copy1`;
delimiter ;;
CREATE TRIGGER `producer_to_upper_case_copy1` BEFORE UPDATE ON `producers` FOR EACH ROW BEGIN
SET NEW.name=UPPER(TRIM(NEW.name));
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
