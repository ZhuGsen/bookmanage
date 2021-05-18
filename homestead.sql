/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : homestead

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2021-05-18 09:13:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `books`
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(10) DEFAULT NULL COMMENT '图书id',
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `edition` varchar(255) DEFAULT NULL,
  `category_id` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES ('1', 'book1 stest', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3522678218,164639122&fm=224&gp=0.jpg', 'book', '1', '2021-05-18 02:15:08', '2021-05-18 00:25:21');
INSERT INTO `books` VALUES ('2', 'book2 wtest', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2098930488,1058231772&fm=224&gp=0.jpg', 'book2', '1', '2021-05-18 02:15:25', '2021-05-18 01:36:45');
INSERT INTO `books` VALUES ('3', 'book3 ', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2515092633,1900877804&fm=26&gp=0.jpg', 'book', '1', '2021-05-18 02:15:38', '2021-05-18 01:36:57');

-- ----------------------------
-- Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `hostory` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'categories', '2021-05-11 00:38:44', '2021-05-18 01:29:01', '2021-05-10 00:38:53');

-- ----------------------------
-- Table structure for `menus`
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单名称',
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单标识',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级菜单id',
  `level` int(11) NOT NULL COMMENT '菜单等级',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#' COMMENT '菜单路由地址',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '菜单状态，0关闭，1开启',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', 'System manage', 'fa-gear', '0', '1', '#', '1', null, '2021-05-17 19:11:36', null);
INSERT INTO `menus` VALUES ('2', '管理员管理', 'fa-user', '1', '2', '/adminuser', '1', null, null, null);
INSERT INTO `menus` VALUES ('3', '角色管理', 'fa-group', '1', '2', '/role', '1', null, null, null);
INSERT INTO `menus` VALUES ('4', '权限管理', 'fa-gear', '1', '2', '/permission', '1', null, null, null);
INSERT INTO `menus` VALUES ('5', '菜单管理', 'fa-cog', '1', '2', '/menu', '1', null, null, null);
INSERT INTO `menus` VALUES ('6', 'book manage', '# fa-book', '0', '1', '', '1', '2021-05-16 09:52:24', '2021-05-17 19:12:06', null);
INSERT INTO `menus` VALUES ('7', 'book manage', '#fa-list-alt', '6', '2', 'booklist', '1', '2021-05-16 09:55:24', '2021-05-16 10:12:22', null);
INSERT INTO `menus` VALUES ('8', 'category manage', '# fa-book', '0', '1', '', '1', '2021-05-17 16:33:38', '2021-05-17 19:13:32', null);
INSERT INTO `menus` VALUES ('9', 'category manage', '#fa-calendar-check-o', '8', '2', 'categorylist', '1', '2021-05-17 16:34:13', '2021-05-17 19:12:44', null);

-- ----------------------------
-- Table structure for `menu_role`
-- ----------------------------
DROP TABLE IF EXISTS `menu_role`;
CREATE TABLE `menu_role` (
  `menu_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menu_role
-- ----------------------------
INSERT INTO `menu_role` VALUES ('1', '1');
INSERT INTO `menu_role` VALUES ('2', '1');
INSERT INTO `menu_role` VALUES ('3', '1');
INSERT INTO `menu_role` VALUES ('4', '1');
INSERT INTO `menu_role` VALUES ('5', '1');
INSERT INTO `menu_role` VALUES ('6', '1');
INSERT INTO `menu_role` VALUES ('7', '1');
INSERT INTO `menu_role` VALUES ('8', '1');
INSERT INTO `menu_role` VALUES ('8', '2');
INSERT INTO `menu_role` VALUES ('9', '1');
INSERT INTO `menu_role` VALUES ('9', '2');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_10_31_035440_create_menus_table', '1');
INSERT INTO `migrations` VALUES ('4', '2019_11_01_091459_create_roles_table', '1');
INSERT INTO `migrations` VALUES ('5', '2019_11_01_091620_create_menu_role_table', '1');
INSERT INTO `migrations` VALUES ('6', '2019_11_01_091628_create_user_role_table', '1');
INSERT INTO `migrations` VALUES ('7', '2019_11_01_091645_create_permissions_table', '1');
INSERT INTO `migrations` VALUES ('8', '2019_11_01_091654_create_permission_role_table', '1');
INSERT INTO `migrations` VALUES ('9', '2020_03_17_065944_create_views_table', '1');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `permissions`
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `routes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', '超级权限', 'GET:/,GET:index,GET:menu,GET:menu/create,POST:menu,GET:menu/{menu},GET:menu/{menu}/edit,PUT:menu/{menu},DELETE:menu/{menu},GET:adminuser,GET:adminuser/create,POST:adminuser,GET:adminuser/{adminuser},GET:adminuser/{adminuser}/edit,PUT:adminuser/{adminuser},DELETE:adminuser/{adminuser},GET:role,GET:role/create,POST:role,GET:role/{role},GET:role/{role}/edit,PUT:role/{role},DELETE:role/{role},GET:permission,GET:permission/create,POST:permission,GET:permission/{permission},GET:permission/{permission}/edit,PUT:permission/{permission},DELETE:permission/{permission},GET:modifyPassword,GET:modifyPassword/create,POST:modifyPassword,GET:modifyPassword/{modifyPassword},GET:modifyPassword/{modifyPassword}/edit,PUT:modifyPassword/{modifyPassword},DELETE:modifyPassword/{modifyPassword}', '2021-05-16 08:11:44', '2021-05-16 08:11:44');
INSERT INTO `permissions` VALUES ('2', 'test', 'GET:/,GET:booklist,GET:booklist/create,POST:booklist', '2021-05-17 16:21:12', '2021-05-17 16:21:12');

-- ----------------------------
-- Table structure for `permission_role`
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
INSERT INTO `permission_role` VALUES ('1', '1');
INSERT INTO `permission_role` VALUES ('1', '2');

-- ----------------------------
-- Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', '超级管理员', 'et', '2021-05-16 08:11:44', '2021-05-16 08:11:44');
INSERT INTO `roles` VALUES ('2', 'test', 'visitor', '2021-05-17 16:19:39', '2021-05-17 16:19:39');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'http://adminlte.la998.com/dist/img/user2-160x160.jpg',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'davis.devan@example.net', 'http://adminlte.la998.com/dist/img/user2-160x160.jpg', null, '$2y$10$XwbGBTRxgISB/7aTWrex.eooINEnR2mBkFsay1ykbb1lkAIrOE.W6', 'FNOyLaEsZNqNV3szCwqnBmRHYVhzT1qZor4fZ1v873BsoPAkocLqWrv4sc5p', '2021-05-16 08:11:44', '2021-05-16 08:15:00');
INSERT INTO `users` VALUES ('2', 'test', 'test', 'http://adminlte.la998.com/dist/img/user2-160x160.jpg', null, '$2y$10$GobsWDPHPV5rckEdKPcake/J7fDc347/vYOgC2xaDdAaXJk475M5K', null, '2021-05-17 16:20:16', '2021-05-17 16:20:16');

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1');
INSERT INTO `user_role` VALUES ('2', '2');

-- ----------------------------
-- Table structure for `views`
-- ----------------------------
DROP TABLE IF EXISTS `views`;
CREATE TABLE `views` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of views
-- ----------------------------
