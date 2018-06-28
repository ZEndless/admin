/*
Navicat MariaDB Data Transfer

Source Server         : localhost
Source Server Version : 100214
Source Host           : localhost:3306
Source Database       : admin

Target Server Type    : MariaDB
Target Server Version : 100214
File Encoding         : 65001

Date: 2018-06-28 13:59:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` varchar(64) NOT NULL COMMENT '主键ID',
  `url` varchar(255) DEFAULT NULL COMMENT 'url地址',
  `permission` varchar(255) DEFAULT NULL COMMENT '权限名字',
  `pid` varchar(64) DEFAULT NULL COMMENT '父级ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `modify_time` datetime NOT NULL COMMENT '最后一次更新时间',
  `state` tinyint(4) NOT NULL DEFAULT 0 COMMENT '账户状态 0：正常 1：冻结',
  `del_flag` tinyint(4) NOT NULL COMMENT '逻辑删除标识： 0：正常 1：删除',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varbinary(64) NOT NULL COMMENT '主键ID',
  `name` varchar(64) NOT NULL COMMENT '角色名字',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `modify_time` datetime NOT NULL COMMENT '最后一次更新时间',
  `state` tinyint(4) NOT NULL DEFAULT 0 COMMENT '账户状态 0：正常 1：冻结',
  `del_flag` tinyint(4) NOT NULL COMMENT '逻辑删除标识： 0：正常 1：删除',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `id` varchar(64) NOT NULL COMMENT '主键ID',
  `rid` varchar(64) NOT NULL COMMENT '角色ID',
  `permission_id` varchar(64) NOT NULL COMMENT '权限ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT '主键ID',
  `user_name` varchar(64) NOT NULL COMMENT '用户名',
  `nickname` varchar(64) DEFAULT NULL COMMENT '昵称',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `modify_time` datetime NOT NULL COMMENT '最后一次更新时间',
  `state` tinyint(4) NOT NULL DEFAULT 0 COMMENT '账户状态 0：正常 1：冻结',
  `del_flag` tinyint(4) NOT NULL COMMENT '逻辑删除标识： 0：正常 1：删除',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` varchar(64) NOT NULL COMMENT '主键ID',
  `uid` varchar(64) NOT NULL COMMENT '用户ID',
  `rid` varchar(64) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
