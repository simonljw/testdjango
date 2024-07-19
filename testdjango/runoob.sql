/*
 Navicat Premium Data Transfer

 Source Server         : runoob
 Source Server Type    : MySQL
 Source Server Version : 80012 (8.0.12)
 Source Host           : localhost:3306
 Source Schema         : runoob

 Target Server Type    : MySQL
 Target Server Version : 80012 (8.0.12)
 File Encoding         : 65001

 Date: 19/07/2024 11:14:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissions_group_id_b120cbf9`(`group_id`) USING BTREE,
  INDEX `auth_group_permissions_permission_id_84c5c92e`(`permission_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  INDEX `auth_permission_content_type_id_2f476e4b`(`content_type_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add test', 7, 'add_test');
INSERT INTO `auth_permission` VALUES (26, 'Can change test', 7, 'change_test');
INSERT INTO `auth_permission` VALUES (27, 'Can delete test', 7, 'delete_test');
INSERT INTO `auth_permission` VALUES (28, 'Can view test', 7, 'view_test');
INSERT INTO `auth_permission` VALUES (29, 'Can add book', 8, 'add_book');
INSERT INTO `auth_permission` VALUES (30, 'Can change book', 8, 'change_book');
INSERT INTO `auth_permission` VALUES (31, 'Can delete book', 8, 'delete_book');
INSERT INTO `auth_permission` VALUES (32, 'Can view book', 8, 'view_book');
INSERT INTO `auth_permission` VALUES (33, 'Can add tag', 9, 'add_tag');
INSERT INTO `auth_permission` VALUES (34, 'Can change tag', 9, 'change_tag');
INSERT INTO `auth_permission` VALUES (35, 'Can delete tag', 9, 'delete_tag');
INSERT INTO `auth_permission` VALUES (36, 'Can view tag', 9, 'view_tag');
INSERT INTO `auth_permission` VALUES (37, 'Can add contact', 10, 'add_contact');
INSERT INTO `auth_permission` VALUES (38, 'Can change contact', 10, 'change_contact');
INSERT INTO `auth_permission` VALUES (39, 'Can delete contact', 10, 'delete_contact');
INSERT INTO `auth_permission` VALUES (40, 'Can view contact', 10, 'view_contact');
INSERT INTO `auth_permission` VALUES (41, 'Can add author', 11, 'add_author');
INSERT INTO `auth_permission` VALUES (42, 'Can change author', 11, 'change_author');
INSERT INTO `auth_permission` VALUES (43, 'Can delete author', 11, 'delete_author');
INSERT INTO `auth_permission` VALUES (44, 'Can view author', 11, 'view_author');
INSERT INTO `auth_permission` VALUES (45, 'Can add author detail', 12, 'add_authordetail');
INSERT INTO `auth_permission` VALUES (46, 'Can change author detail', 12, 'change_authordetail');
INSERT INTO `auth_permission` VALUES (47, 'Can delete author detail', 12, 'delete_authordetail');
INSERT INTO `auth_permission` VALUES (48, 'Can view author detail', 12, 'view_authordetail');
INSERT INTO `auth_permission` VALUES (49, 'Can add publish', 13, 'add_publish');
INSERT INTO `auth_permission` VALUES (50, 'Can change publish', 13, 'change_publish');
INSERT INTO `auth_permission` VALUES (51, 'Can delete publish', 13, 'delete_publish');
INSERT INTO `auth_permission` VALUES (52, 'Can view publish', 13, 'view_publish');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$600000$HksPoN4qiIMjcaDfPZMDGh$QqVkKzlPsYU2XDohay4g7dnx1HBymxexzOrMEs8JFbY=', '2024-07-17 06:58:21.849918', 1, '164164', '', '', '123456789@qq.com', 1, 1, '2024-07-17 06:58:02.026916');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_user_id_6a12ed8b`(`user_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544`(`group_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permissions_user_id_a95ead1b`(`user_id`) USING BTREE,
  INDEX `auth_user_user_permissions_permission_id_1fbb5f2c`(`permission_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (7, 'TestModel', 'test');
INSERT INTO `django_content_type` VALUES (8, 'TestModel', 'book');
INSERT INTO `django_content_type` VALUES (9, 'TestModel', 'tag');
INSERT INTO `django_content_type` VALUES (10, 'TestModel', 'contact');
INSERT INTO `django_content_type` VALUES (11, 'TestModel', 'author');
INSERT INTO `django_content_type` VALUES (12, 'TestModel', 'authordetail');
INSERT INTO `django_content_type` VALUES (13, 'TestModel', 'publish');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (24, 'TestModel', '0002_book_contact_tag', '2024-07-19 02:25:49.150483');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0001_initial', '2024-07-17 06:45:43.465283');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2024-07-17 06:45:44.535012');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0001_initial', '2024-07-17 06:45:44.800194');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0002_logentry_remove_auto_add', '2024-07-17 06:45:44.811475');
INSERT INTO `django_migrations` VALUES (6, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-17 06:45:44.835490');
INSERT INTO `django_migrations` VALUES (7, 'contenttypes', '0002_remove_content_type_name', '2024-07-17 06:45:44.972513');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0002_alter_permission_name_max_length', '2024-07-17 06:45:45.051494');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0003_alter_user_email_max_length', '2024-07-17 06:45:45.115493');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0004_alter_user_username_opts', '2024-07-17 06:45:45.126496');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0005_alter_user_last_login_null', '2024-07-17 06:45:45.192494');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0006_require_contenttypes_0002', '2024-07-17 06:45:45.196493');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0007_alter_validators_add_error_messages', '2024-07-17 06:45:45.207493');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0008_alter_user_username_max_length', '2024-07-17 06:45:45.286492');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0009_alter_user_last_name_max_length', '2024-07-17 06:45:45.363491');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0010_alter_group_name_max_length', '2024-07-17 06:45:45.426517');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0011_update_proxy_permissions', '2024-07-17 06:45:45.438493');
INSERT INTO `django_migrations` VALUES (18, 'auth', '0012_alter_user_first_name_max_length', '2024-07-17 06:45:45.508275');
INSERT INTO `django_migrations` VALUES (19, 'sessions', '0001_initial', '2024-07-17 06:45:45.559278');
INSERT INTO `django_migrations` VALUES (23, 'TestModel', '0001_initial', '2024-07-19 02:25:48.981153');
INSERT INTO `django_migrations` VALUES (25, 'TestModel', '0003_author_authordetail_publish_remove_tag_contact_and_more', '2024-07-19 02:25:49.370797');
INSERT INTO `django_migrations` VALUES (26, 'TestModel', '0004_book_authors_alter_book_id_alter_book_publish', '2024-07-19 02:25:50.033628');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('gl0pbwd1wtreh5xz5knntvwei0meeuk8', '.eJxVjEEOwiAQRe_C2pCBBmRcuvcMZIYBqRqalHZlvLtt0oVu33v_v1Wkdalx7XmOo6iLMur0y5jSM7ddyIPafdJpass8st4Tfdiub5Pk1_Vo_w4q9bqtA6AryXgAB4iMfijhjJIdcfKEQBtBa6QEQlssGUgCXgbmEHwmqz5fyrQ3rQ:1sTycH:5_qf6odTwH7xXe-6YQ04b18G8hqjHPNvD1Ze5T1i3j4', '2024-07-31 06:58:21.852925');

-- ----------------------------
-- Table structure for testmodel_author
-- ----------------------------
DROP TABLE IF EXISTS `testmodel_author`;
CREATE TABLE `testmodel_author`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` smallint(6) NOT NULL,
  `au_detail_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `au_detail_id`(`au_detail_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of testmodel_author
-- ----------------------------
INSERT INTO `testmodel_author` VALUES (1, '令狐冲', 25, 1);
INSERT INTO `testmodel_author` VALUES (2, '任我行', 58, 2);
INSERT INTO `testmodel_author` VALUES (3, '任盈盈', 23, 3);

-- ----------------------------
-- Table structure for testmodel_authordetail
-- ----------------------------
DROP TABLE IF EXISTS `testmodel_authordetail`;
CREATE TABLE `testmodel_authordetail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gender` smallint(6) NOT NULL,
  `tel` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addr` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of testmodel_authordetail
-- ----------------------------
INSERT INTO `testmodel_authordetail` VALUES (1, 1, '13432335433', '华山', '1994-05-23');
INSERT INTO `testmodel_authordetail` VALUES (2, 1, '13943454554', '黑木崖', '1961-08-13');
INSERT INTO `testmodel_authordetail` VALUES (3, 0, '13878934322', '黑木崖', '1996-05-20');

-- ----------------------------
-- Table structure for testmodel_book
-- ----------------------------
DROP TABLE IF EXISTS `testmodel_book`;
CREATE TABLE `testmodel_book`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(5, 2) NOT NULL,
  `publish_id` bigint(20) NOT NULL,
  `pub_date` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `TestModel_book_publish_id_544629f5`(`publish_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of testmodel_book
-- ----------------------------
INSERT INTO `testmodel_book` VALUES (1, '菜鸟教程', 200.00, 1, '2010-10-10');

-- ----------------------------
-- Table structure for testmodel_book_authors
-- ----------------------------
DROP TABLE IF EXISTS `testmodel_book_authors`;
CREATE TABLE `testmodel_book_authors`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `book_id` bigint(20) NOT NULL,
  `author_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `TestModel_book_authors_book_id_author_id_ba1665a7_uniq`(`book_id`, `author_id`) USING BTREE,
  INDEX `TestModel_book_authors_book_id_80e0e9b7`(`book_id`) USING BTREE,
  INDEX `TestModel_book_authors_author_id_4981bcfc`(`author_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of testmodel_book_authors
-- ----------------------------

-- ----------------------------
-- Table structure for testmodel_publish
-- ----------------------------
DROP TABLE IF EXISTS `testmodel_publish`;
CREATE TABLE `testmodel_publish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of testmodel_publish
-- ----------------------------
INSERT INTO `testmodel_publish` VALUES (1, '华山出版社', '华山', 'hs@163.com');
INSERT INTO `testmodel_publish` VALUES (2, '明教出版社', '黑木崖', 'mj@163.com');

-- ----------------------------
-- Table structure for testmodel_test
-- ----------------------------
DROP TABLE IF EXISTS `testmodel_test`;
CREATE TABLE `testmodel_test`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of testmodel_test
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
