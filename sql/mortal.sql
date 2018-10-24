/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : mortal

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-10-24 00:12:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `article_user_id` int(10) unsigned DEFAULT NULL COMMENT '文章的作者ID',
  `article_title` varchar(255) DEFAULT NULL COMMENT '文章标题',
  `article_content` mediumtext COMMENT '文章内容',
  `article_parent_category_id` int(10) DEFAULT NULL COMMENT '文章父级分类',
  `article_child_category_id` int(10) DEFAULT NULL COMMENT '文章的子级分类',
  `article_tag_ids` varchar(50) DEFAULT NULL COMMENT '文章所带标签',
  `article_view_count` int(10) unsigned DEFAULT '0' COMMENT '文章浏览数',
  `article_comment_count` int(10) unsigned DEFAULT '0' COMMENT '文章评论数',
  `article_like_count` int(10) unsigned DEFAULT '0' COMMENT '文章点赞数',
  `article_post_time` datetime DEFAULT NULL COMMENT '文章上传时间',
  `article_update_time` datetime DEFAULT NULL COMMENT '文章更新时间',
  `article_is_comment` int(2) unsigned DEFAULT NULL COMMENT '文章允许评论',
  `article_status` int(2) unsigned DEFAULT '1' COMMENT '1是正式发布，0是草稿',
  `article_order` int(2) unsigned DEFAULT NULL COMMENT '文章排序，1到10，order越大排序越前',
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `category_pid` int(5) DEFAULT NULL COMMENT '父级分类ID',
  `category_name` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `category_icon` varchar(20) DEFAULT NULL COMMENT '分类图标',
  `category_status` int(2) unsigned DEFAULT '1' COMMENT '分类状态，1显示，0隐藏',
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `comment_pid` int(10) unsigned DEFAULT '0' COMMENT '评论父级ID',
  `comment_pname` varchar(255) DEFAULT NULL COMMENT '被评论的人的昵称',
  `comment_article_id` int(10) unsigned DEFAULT NULL COMMENT '评论的文章ID',
  `comment_author_name` varchar(50) DEFAULT NULL COMMENT '评论者昵称',
  `comment_author_qq` varchar(50) DEFAULT NULL COMMENT 'qq',
  `comment_author_url` varchar(50) DEFAULT NULL COMMENT '网址',
  `comment_content` varchar(1000) DEFAULT NULL COMMENT '评论内容',
  `comment_agent` varchar(200) DEFAULT NULL COMMENT '代理网址',
  `comment_ip` varchar(50) DEFAULT NULL COMMENT '评论者IP',
  `comment_create_time` datetime DEFAULT NULL COMMENT '评论时间',
  `comment_role` int(2) DEFAULT NULL COMMENT '1是作者，0是游客',
  `comment_status` int(2) unsigned DEFAULT '1' COMMENT '1显示，0隐藏（被屏蔽了）',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for link
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '链接ID',
  `link_url` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `link_name` varchar(255) DEFAULT NULL COMMENT '链接名称',
  `link_description` varchar(255) DEFAULT NULL COMMENT '链接描述',
  `link_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `link_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `link_order` int(2) unsigned DEFAULT '1' COMMENT '排序',
  `link_status` int(2) unsigned DEFAULT '1' COMMENT '1是显示，0是隐藏',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `link_name` (`link_name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of link
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menu_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `menu_url` varchar(255) DEFAULT NULL COMMENT '菜单链接，/***，菜单的访问地址',
  `menu_level` int(2) DEFAULT NULL COMMENT '1是顶部菜单，2是主要菜单',
  `menu_icon` varchar(255) DEFAULT NULL COMMENT '菜单图标',
  `menu_order` int(2) DEFAULT NULL COMMENT '页面显示顺序',
  `menu_status` int(2) DEFAULT '1' COMMENT '1是显示，0是隐藏',
  PRIMARY KEY (`menu_id`),
  UNIQUE KEY `menu_name` (`menu_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(255) DEFAULT NULL COMMENT '公告标题',
  `notice_content` varchar(10000) DEFAULT NULL COMMENT '公告内容',
  `notice_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `notice_update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `notice_status` int(2) unsigned DEFAULT '1' COMMENT '1是显示，0是隐藏',
  `notice_order` int(2) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------

-- ----------------------------
-- Table structure for options
-- ----------------------------
DROP TABLE IF EXISTS `options`;
CREATE TABLE `options` (
  `option_id` int(11) NOT NULL COMMENT '基本设置ID',
  `option_site_title` varchar(255) DEFAULT NULL COMMENT '网站标题',
  `option_site_descrption` varchar(255) DEFAULT NULL COMMENT '网站描述',
  `option_meta_descrption` varchar(255) DEFAULT NULL COMMENT '网站标签',
  `option_meta_keyword` varchar(255) DEFAULT NULL COMMENT '关键字',
  `option_aboutsite_Photo` varchar(255) DEFAULT NULL COMMENT '网站介绍图片',
  `option_aboutsite_title` varchar(255) DEFAULT NULL COMMENT '网站简介标题',
  `option_aboutsite_content` varchar(255) DEFAULT NULL COMMENT '网站简介内容',
  `option_aboutsite_wechat` varchar(255) DEFAULT NULL COMMENT '微信图片',
  `option_aboutsite_qq` varchar(255) DEFAULT NULL COMMENT 'qq号',
  `option_aboutsite_github` varchar(255) DEFAULT NULL COMMENT 'github账号',
  `option_aboutsite_weibo` varchar(255) DEFAULT NULL COMMENT '微博号',
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of options
-- ----------------------------

-- ----------------------------
-- Table structure for page
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '页面ID',
  `page_key` varchar(50) DEFAULT NULL COMMENT '页面地址',
  `page_title` varchar(50) DEFAULT NULL COMMENT '页面标题',
  `page_content` mediumtext COMMENT '页面内容',
  `page_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `page_update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `page_view_count` int(10) unsigned DEFAULT '0' COMMENT '浏览数',
  `page_comment_count` int(5) unsigned DEFAULT '0' COMMENT '评论数',
  `page_status` int(2) unsigned DEFAULT '1' COMMENT '1显示，0隐藏',
  PRIMARY KEY (`page_id`),
  UNIQUE KEY `page_key` (`page_key`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of page
-- ----------------------------

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `tag_id` int(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '标签ID',
  `tag_name` varchar(20) DEFAULT NULL COMMENT '标签名称',
  `tag_status` int(2) unsigned DEFAULT '1' COMMENT '1显示，0隐藏',
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `tag_name` (`tag_name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_name` varchar(255) NOT NULL DEFAULT '' COMMENT '用户名称',
  `user_passwordword` varchar(255) NOT NULL DEFAULT '' COMMENT '用户密码',
  `user_nickname` varchar(255) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_qq` varchar(100) DEFAULT '' COMMENT '用户昵称',
  `user_url` varchar(100) DEFAULT '' COMMENT '用户网站',
  `user_photo` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `user_last_login_ip` varchar(255) DEFAULT NULL COMMENT '上次登录IP',
  `user_register_time` datetime DEFAULT NULL COMMENT '注册时间',
  `user_last_login_time` datetime DEFAULT NULL COMMENT '上次登录时间',
  `user_role` int(2) unsigned DEFAULT '0' COMMENT '1是管理员，0是游客',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_qq` (`user_qq`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
