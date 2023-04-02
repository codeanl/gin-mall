/*
 Navicat Premium Data Transfer

 Source Server         : lja
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : mall

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 02/04/2023 15:49:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of address
-- ----------------------------
BEGIN;
INSERT INTO `address` (`id`, `created_at`, `updated_at`, `deleted_at`, `user_id`, `name`, `phone`, `address`) VALUES (1, '2023-04-02 15:34:17.654', '2023-04-02 15:34:17.654', NULL, 1, 'codeanl', '11111111111', '广西壮族自治区柳州市');
INSERT INTO `address` (`id`, `created_at`, `updated_at`, `deleted_at`, `user_id`, `name`, `phone`, `address`) VALUES (2, '2023-04-02 15:36:23.354', '2023-04-02 15:38:43.062', NULL, 1, '安', '13400000000', '广西壮族自治区南宁市');
COMMIT;

-- ----------------------------
-- Table structure for carousel
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `img_path` longtext,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of carousel
-- ----------------------------
BEGIN;
INSERT INTO `carousel` (`id`, `created_at`, `updated_at`, `deleted_at`, `img_path`, `product_id`) VALUES (1, '2023-04-02 15:47:20.000', NULL, NULL, 'https://an23.co/upload/2022/07/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20220722020131.jpg', 1);
INSERT INTO `carousel` (`id`, `created_at`, `updated_at`, `deleted_at`, `img_path`, `product_id`) VALUES (2, '2023-04-02 15:47:16.000', NULL, NULL, 'https://an23.co/upload/2022/07/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20220722020131.jpg', 2);
COMMIT;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `boss_id` bigint unsigned DEFAULT NULL,
  `num` bigint unsigned DEFAULT NULL,
  `max_num` bigint unsigned DEFAULT NULL,
  `check` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of cart
-- ----------------------------
BEGIN;
INSERT INTO `cart` (`id`, `created_at`, `updated_at`, `deleted_at`, `user_id`, `product_id`, `boss_id`, `num`, `max_num`, `check`) VALUES (1, '2023-04-02 15:41:02.570', '2023-04-02 15:42:33.813', NULL, 1, 1, 1, 2, 10, 0);
INSERT INTO `cart` (`id`, `created_at`, `updated_at`, `deleted_at`, `user_id`, `product_id`, `boss_id`, `num`, `max_num`, `check`) VALUES (2, '2023-04-02 15:42:38.986', '2023-04-02 15:43:33.068', NULL, 1, 2, 1, 2, 10, 0);
COMMIT;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `category_name` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of category
-- ----------------------------
BEGIN;
INSERT INTO `category` (`id`, `created_at`, `updated_at`, `deleted_at`, `category_name`) VALUES (1, '2023-04-02 15:04:42.000', NULL, NULL, '数码产品');
INSERT INTO `category` (`id`, `created_at`, `updated_at`, `deleted_at`, `category_name`) VALUES (2, '2023-04-02 15:04:45.000', NULL, NULL, '生鲜食品');
COMMIT;

-- ----------------------------
-- Table structure for favorite
-- ----------------------------
DROP TABLE IF EXISTS `favorite`;
CREATE TABLE `favorite` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `boss_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of favorite
-- ----------------------------
BEGIN;
INSERT INTO `favorite` (`id`, `created_at`, `updated_at`, `deleted_at`, `user_id`, `product_id`, `boss_id`) VALUES (1, '2023-04-02 15:19:21.466', '2023-04-02 15:19:21.466', NULL, 1, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of notice
-- ----------------------------
BEGIN;
INSERT INTO `notice` (`id`, `created_at`, `updated_at`, `deleted_at`, `text`) VALUES (1, '2023-04-02 14:51:18.000', NULL, NULL, '您正在绑定邮箱Email');
INSERT INTO `notice` (`id`, `created_at`, `updated_at`, `deleted_at`, `text`) VALUES (2, '2023-04-02 14:51:22.000', NULL, NULL, '您正在解绑邮箱Email');
INSERT INTO `notice` (`id`, `created_at`, `updated_at`, `deleted_at`, `text`) VALUES (3, '2023-04-02 14:51:25.000', NULL, NULL, '您正在修改密码Email');
COMMIT;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `boss_id` bigint unsigned NOT NULL,
  `address_id` bigint unsigned NOT NULL,
  `num` bigint DEFAULT NULL,
  `order_num` bigint unsigned DEFAULT NULL,
  `type` bigint unsigned DEFAULT NULL,
  `money` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of order
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category_id` bigint unsigned NOT NULL,
  `title` longtext,
  `info` varchar(1000) DEFAULT NULL,
  `img_path` longtext,
  `price` longtext,
  `discount_price` longtext,
  `on_sale` tinyint(1) DEFAULT '0',
  `num` bigint DEFAULT NULL,
  `boss_id` bigint DEFAULT NULL,
  `boss_name` longtext,
  `boss_avatar` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_product_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of product
-- ----------------------------
BEGIN;
INSERT INTO `product` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `category_id`, `title`, `info`, `img_path`, `price`, `discount_price`, `on_sale`, `num`, `boss_id`, `boss_name`, `boss_avatar`) VALUES (1, '2023-04-02 15:06:30.947', '2023-04-02 15:06:30.947', NULL, 'iphone13', 1, 'iphone13重磅来袭！！！', 'iphone13重磅来袭！！！iphone13重磅来袭！！！iphone13重磅来袭！！！', 'rsfa3hh3e.hn-bkt.clouddn.comFhQBR-cRCelSfZgM-3r5P_M37y-C', '4399', '3999', 1, 100, 1, 'admin', 'rsfa3hh3e.hn-bkt.clouddn.comFhQBR-cRCelSfZgM-3r5P_M37y-C');
INSERT INTO `product` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `category_id`, `title`, `info`, `img_path`, `price`, `discount_price`, `on_sale`, `num`, `boss_id`, `boss_name`, `boss_avatar`) VALUES (2, '2023-04-02 15:10:22.841', '2023-04-02 15:10:22.841', NULL, 'iphone13', 1, 'iphone13重磅来袭！！！', 'iphone13重磅来袭！！！iphone13重磅来袭！！！iphone13重磅来袭！！！', 'rsfa3hh3e.hn-bkt.clouddn.comFhQBR-cRCelSfZgM-3r5P_M37y-C', '4399', '3999', 1, 100, 1, 'admin', 'rsfa3hh3e.hn-bkt.clouddn.comFhQBR-cRCelSfZgM-3r5P_M37y-C');
COMMIT;

-- ----------------------------
-- Table structure for product_img
-- ----------------------------
DROP TABLE IF EXISTS `product_img`;
CREATE TABLE `product_img` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `img_path` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of product_img
-- ----------------------------
BEGIN;
INSERT INTO `product_img` (`id`, `created_at`, `updated_at`, `deleted_at`, `product_id`, `img_path`) VALUES (1, '2023-04-02 15:06:31.011', '2023-04-02 15:06:31.011', NULL, 1, 'rsfa3hh3e.hn-bkt.clouddn.comFhQBR-cRCelSfZgM-3r5P_M37y-C');
INSERT INTO `product_img` (`id`, `created_at`, `updated_at`, `deleted_at`, `product_id`, `img_path`) VALUES (2, '2023-04-02 15:06:31.077', '2023-04-02 15:06:31.077', NULL, 1, 'rsfa3hh3e.hn-bkt.clouddn.comFhQBR-cRCelSfZgM-3r5P_M37y-C');
INSERT INTO `product_img` (`id`, `created_at`, `updated_at`, `deleted_at`, `product_id`, `img_path`) VALUES (3, '2023-04-02 15:06:31.140', '2023-04-02 15:06:31.140', NULL, 1, 'rsfa3hh3e.hn-bkt.clouddn.comFhQBR-cRCelSfZgM-3r5P_M37y-C');
INSERT INTO `product_img` (`id`, `created_at`, `updated_at`, `deleted_at`, `product_id`, `img_path`) VALUES (4, '2023-04-02 15:10:22.912', '2023-04-02 15:10:22.912', NULL, 2, 'rsfa3hh3e.hn-bkt.clouddn.comFhQBR-cRCelSfZgM-3r5P_M37y-C');
INSERT INTO `product_img` (`id`, `created_at`, `updated_at`, `deleted_at`, `product_id`, `img_path`) VALUES (5, '2023-04-02 15:10:22.986', '2023-04-02 15:10:22.986', NULL, 2, 'rsfa3hh3e.hn-bkt.clouddn.comFhQBR-cRCelSfZgM-3r5P_M37y-C');
INSERT INTO `product_img` (`id`, `created_at`, `updated_at`, `deleted_at`, `product_id`, `img_path`) VALUES (6, '2023-04-02 15:10:23.061', '2023-04-02 15:10:23.061', NULL, 2, 'rsfa3hh3e.hn-bkt.clouddn.comFhQBR-cRCelSfZgM-3r5P_M37y-C');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `user_name` varchar(191) DEFAULT NULL,
  `email` longtext,
  `password_digest` longtext,
  `nick_name` longtext,
  `status` longtext,
  `avatar` varchar(1000) DEFAULT NULL,
  `money` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` (`id`, `created_at`, `updated_at`, `deleted_at`, `user_name`, `email`, `password_digest`, `nick_name`, `status`, `avatar`, `money`) VALUES (1, '2023-04-02 14:40:00.333', '2023-04-02 14:58:39.481', NULL, 'admin', '2633262862@qq.com', '$2a$12$z2/SVzFCiK9W22uYjwJ.WO5ZNOlj23DmMjya74ZiZ0.2WeXnhe.qC', '超级管理员', 'active', 'rsfa3hh3e.hn-bkt.clouddn.comFhQBR-cRCelSfZgM-3r5P_M37y-C', '0');
INSERT INTO `user` (`id`, `created_at`, `updated_at`, `deleted_at`, `user_name`, `email`, `password_digest`, `nick_name`, `status`, `avatar`, `money`) VALUES (2, '2023-04-02 15:46:43.489', '2023-04-02 15:46:43.489', NULL, 'codeanl1', '', '$2a$12$RX8L7.2cG6AB9YrHN6q8H.PL.tMfbwnhJ6gXdgy1kMQBfMg2aylla', 'codeanl', 'active', 'https://an23.co/upload/2022/07/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20220722020131.jpg', '0');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
