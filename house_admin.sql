/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : house_admin

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 17/03/2020 21:46:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_sys_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_comment`;
CREATE TABLE `t_sys_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '评价表',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `name` varchar(255) DEFAULT NULL COMMENT '课程或教练名称',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `course_id` int(10) DEFAULT NULL COMMENT '课程id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_comment
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_comment` VALUES (1, '没有', '2020-02-22 19:28:59', '123', '关于课程评价', 1, NULL, NULL);
INSERT INTO `t_sys_comment` VALUES (2, '324', '2020-02-22 19:29:14', '小懒虫', '测试', 2, NULL, NULL);
INSERT INTO `t_sys_comment` VALUES (3, '344', '2020-02-29 14:00:00', '123', '测试4', 1234, '3123', NULL);
INSERT INTO `t_sys_comment` VALUES (4, '', '1899-12-31 00:00:00', '112', '24', 32, '123', NULL);
INSERT INTO `t_sys_comment` VALUES (5, '324', '2020-02-26 20:00:00', '123', '测试一县', 123, 'admin', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_sys_contract
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_contract`;
CREATE TABLE `t_sys_contract` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL COMMENT '合同编号',
  `content` text COMMENT '合同内容',
  `create_date` varchar(50) DEFAULT NULL COMMENT '签订日期',
  `h_id` int(10) DEFAULT NULL COMMENT '房屋id',
  `status` int(10) DEFAULT NULL COMMENT '合同状态',
  `customer` varchar(255) DEFAULT NULL COMMENT '客户姓名',
  `company` varchar(255) DEFAULT NULL COMMENT '公司名称',
  `user_id` int(10) DEFAULT NULL COMMENT '业主id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='合同信息表';

-- ----------------------------
-- Table structure for t_sys_customer
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_customer`;
CREATE TABLE `t_sys_customer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(50) DEFAULT NULL COMMENT '姓名',
  `age` int(10) DEFAULT NULL COMMENT '年龄',
  `sex` varchar(20) DEFAULT NULL COMMENT '性别',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `phone` varchar(50) DEFAULT NULL COMMENT '手机号',
  `address` varchar(255) DEFAULT NULL COMMENT '家庭住址',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `hobby` varchar(255) DEFAULT NULL COMMENT '爱好',
  `user_id` int(10) DEFAULT NULL COMMENT 'userid',
  `create_date` datetime DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_sys_customer
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_customer` VALUES (1, '小雨', 1, '男', '2020-02-26 20:00:00', '15248409766', '中国', '123@163.com', '无', 1, '2020-02-26 20:00:00');
INSERT INTO `t_sys_customer` VALUES (2, 'test', 14, '', NULL, '', '', '', '', 9338787, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_sys_datas
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_datas`;
CREATE TABLE `t_sys_datas` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `file_path` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '文件地址',
  `file_suffix` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '后缀',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文件表存储表';

-- ----------------------------
-- Records of t_sys_datas
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_datas` VALUES ('354984152409444352', 'static/images_upload/655e075657837d5f18a8371b66b8a230.jpg', '.jpg');
INSERT INTO `t_sys_datas` VALUES ('399147852363862016', 'static/images_upload/5990c973526439e0a933b870a91fa957.png', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dict_data`;
CREATE TABLE `t_sys_dict_data` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT '' COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT '' COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of t_sys_dict_data
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_dict_data` VALUES ('331043380933038080', 1, '一般', '1', 'sys_notice_type', '', 'info', 'Y', '0', 'admin', '2019-09-09 22:15:03', 'admin', '2019-09-09 22:15:43', '');
INSERT INTO `t_sys_dict_data` VALUES ('331043525137403904', 2, '重要', '2', 'sys_notice_type', '', 'important', 'N', '0', 'admin', '2019-09-09 22:15:37', 'admin', '2019-09-11 00:30:04', '');
INSERT INTO `t_sys_dict_data` VALUES ('340080322395901952', 1, '开启', '0', 'sys_province_state', '', 'info', 'Y', '0', 'admin', '2019-10-04 20:44:37', 'admin', '2019-10-04 20:46:41', '');
INSERT INTO `t_sys_dict_data` VALUES ('340080779201744896', 2, '关闭', '-1', 'sys_province_state', '', 'important', 'Y', '0', 'admin', '2019-10-04 20:46:26', 'admin', '2019-10-04 20:46:45', '');
INSERT INTO `t_sys_dict_data` VALUES ('373494384659927040', 0, 'GET请求', '1', 'sys_inter_url_type', '', 'primary', 'Y', '0', 'admin', '2020-01-05 01:40:11', 'admin', '2020-01-05 01:52:43', '');
INSERT INTO `t_sys_dict_data` VALUES ('373494483465146368', 1, 'POST请求', '2', 'sys_inter_url_type', '', 'info', 'N', '0', 'admin', '2020-01-05 01:40:34', 'admin', '2020-01-05 01:52:18', '');
COMMIT;

-- ----------------------------
-- Table structure for t_sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dict_type`;
CREATE TABLE `t_sys_dict_type` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of t_sys_dict_type
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_dict_type` VALUES ('340079827459641344', '省份状态', 'sys_province_state', '0', 'admin', '2019-10-04 20:42:39', '', '2019-10-04 20:42:39', '省份状态');
INSERT INTO `t_sys_dict_type` VALUES ('373493952487231488', '拦截器类型', 'sys_inter_url_type', '0', 'admin', '2020-01-05 01:38:28', 'admin', '2020-01-05 01:38:50', '拦截器类型');
INSERT INTO `t_sys_dict_type` VALUES ('6', '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-09-15 00:29:19', '通知类型列表');
COMMIT;

-- ----------------------------
-- Table structure for t_sys_file
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_file`;
CREATE TABLE `t_sys_file` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `file_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '图片名字',
  `create_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人id',
  `create_user_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名字',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人',
  `update_user_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名字',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文件信息表';

-- ----------------------------
-- Records of t_sys_file
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_file` VALUES ('354984159875305472', '3333', '1', 'admin', '2019-11-14 23:47:09', NULL, NULL, NULL);
INSERT INTO `t_sys_file` VALUES ('399147852472913920', '百度富文本上传', '1', 'admin', '2020-03-15 20:37:54', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_sys_file_data
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_file_data`;
CREATE TABLE `t_sys_file_data` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `data_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '数据id',
  `file_id` varchar(255) COLLATE utf8_bin DEFAULT '文件id' COMMENT '文件id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文件数据外键绑定表';

-- ----------------------------
-- Records of t_sys_file_data
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_file_data` VALUES ('354984159875305473', '354984152409444352', '354984159875305472');
INSERT INTO `t_sys_file_data` VALUES ('399147852472913921', '399147852363862016', '399147852472913920');
COMMIT;

-- ----------------------------
-- Table structure for t_sys_house
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_house`;
CREATE TABLE `t_sys_house` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_desc` varchar(255) NOT NULL COMMENT '租房描述',
  `house_model` varchar(20) NOT NULL COMMENT '房屋类型，几室几厅',
  `house_area` varchar(20) NOT NULL COMMENT '房屋面积',
  `house_floor` varchar(20) NOT NULL COMMENT '房屋楼层',
  `house_type` varchar(20) NOT NULL COMMENT '出租方式',
  `house_price` int(10) NOT NULL COMMENT '出租价格',
  `house_address` varchar(100) NOT NULL COMMENT '出租地址',
  `house_image` varchar(1000) NOT NULL COMMENT '房屋简介照片',
  `community_name` varchar(100) NOT NULL COMMENT '小区名字',
  `house_linkman` varchar(11) NOT NULL COMMENT '房屋联系电话',
  `house_oriented` varchar(20) NOT NULL COMMENT '房屋朝向',
  `house_detailes_img` varchar(1000) NOT NULL COMMENT '房屋详细页面展示图片',
  `publisher` varchar(50) NOT NULL DEFAULT '管理员' COMMENT '发布人',
  `publish_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '发布时间',
  `user_id` int(10) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `status_str` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_house
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_house` VALUES (22, '1213', '123', '123', '312', '整租', 123, '中国', '', '123', '15248484848', '南北', '', 'rain', '2020-03-15 18:58:25', 0, 1, '');
INSERT INTO `t_sys_house` VALUES (23, '22', '2', '1', '1', '1', 1, '1', '', '1', '1', '1', '', '', '2020-03-16 20:55:42', NULL, 1, '');
COMMIT;

-- ----------------------------
-- Table structure for t_sys_inter_url
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_inter_url`;
CREATE TABLE `t_sys_inter_url` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `inter_name` varchar(255) DEFAULT NULL COMMENT '拦截名称',
  `url` varchar(255) DEFAULT NULL COMMENT '拦截url',
  `type` int(2) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拦截url表';

-- ----------------------------
-- Records of t_sys_inter_url
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_inter_url` VALUES ('373496755515428864', '用户添加', '/UserController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373497670557372416', '用户删除', '/UserController/remove', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373497840930000896', '用户修改', '/UserController/edit', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373497897913815040', '用户修改密码', '/UserController/editPwd', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373498025491959808', '自动生成添加', '/autoCodeController/addGlobal', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373498096644132864', '自动生成保存', '/autoCodeController/saveOne', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373498292627181568', '字典表添加', '/DictDataController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373498349552275456', '字典表删除', '/DictDataController/remove', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373498496684265472', '字典表修改', '/DictDataController/edit', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373498567521865728', '字典表类型添加', '/DictTypeController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373498625474564096', '字典表类型删除', '/DictTypeController/remove', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373498715475939328', '字典表类型修改', '/DictTypeController/edit', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373498811429031936', '邮箱添加', '/EmailController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373498868127633408', '邮箱修改', '/EmailController/edit', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373498918975180800', '邮箱删除', '/EmailController/remove', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373498988751622144', '文件上传', '/FileController/upload', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373499051250946048', '文件上传添加', '/FileController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373499108104736768', '文件上传删除', '/FileController/remove', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373499205047685120', '文件上传删除2', '/FileController/del_file', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373499263713415168', '文件上传修改', '/FileController/edit', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373499326967713792', '日志删除', '/LogController/remove', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373499404776247296', '权限添加', '/PermissionController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373499452364820480', '权限删除', '/PermissionController/remove', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373499526859853824', '权限修改', '/PermissionController/edit', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373499613015052288', '定时器添加', '/SysQuartzJobController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373499677636694016', '定时器删除', '/SysQuartzJobController/remove', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373499748591734784', '定时器修改', '/SysQuartzJobController/edit', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373499825582379008', '定时器状态切换', '/SysQuartzJobController/changeStatus', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373499894721286144', '定时器启动', '/SysQuartzJobController/run', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373499948769087488', '定时器日志删除', '/SysQuartzJobLogController/remove', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373500039596740608', '角色添加', '/RoleController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373500088284221440', '角色删除', '/RoleController/remove', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373500133054222336', '角色修改', '/RoleController/edit', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373500178268819456', '公告添加', '/SysNoticeController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373500217934352384', '公告删除', '/SysNoticeController/remove', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373500268949671936', '公告展示', '/SysNoticeController/viewinfo', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373500319365206016', '公告修改', '/SysNoticeController/edit', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373500397240848384', '省份添加', '/SysProvinceController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373500437623607296', '省份删除', '/SysProvinceController/remove', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373500524961599488', '省份修改', '/SysProvinceController/edit', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373500569433804800', '地区添加', '/SysAreaController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373500609669763072', '地区删除', '/SysAreaController/remove', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373500648181862400', '地区修改', '/SysAreaController/edit', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373500706268778496', '城市添加', '/SysCityController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373500743581306880', '城市删除', '/SysCityController/remove', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373500781405540352', '城市修改', '/SysCityController/edit', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373500835193294848', '街道添加', '/SysStreetController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373500877971001344', '街道删除', '/SysStreetController/remove', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373500915308695552', '街道修改', '/SysStreetController/edit', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373501029066608640', '百度编辑器添加', '/UeditorController/ueditor', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373501103570030592', '百度编辑器', '/UeditorController/', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373501147362758656', '百度编辑器上传', '/UeditorController/imgUpload', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373501199686701056', '七牛文件上传', '/QiNiuCloudController/uploadToQiNiu', 2);
INSERT INTO `t_sys_inter_url` VALUES ('373501333854097408', '定时器停止', '/quartz/stop', 1);
INSERT INTO `t_sys_inter_url` VALUES ('373501434756468736', '定时器继续', '/quartz/resume', 1);
INSERT INTO `t_sys_inter_url` VALUES ('373501545595146240', '定时器状态修改', '/quartz/update', 1);
INSERT INTO `t_sys_inter_url` VALUES ('373501599198351360', '定时器删除2', '/quartz/delete', 1);
COMMIT;

-- ----------------------------
-- Table structure for t_sys_myhouse
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_myhouse`;
CREATE TABLE `t_sys_myhouse` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `house_id` int(10) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_sys_myhouse
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_myhouse` VALUES (4, 1, 22, '2020-03-16 22:21:37', 2, 98.00);
COMMIT;

-- ----------------------------
-- Table structure for t_sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_notice`;
CREATE TABLE `t_sys_notice` (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '内容',
  `type` int(5) DEFAULT NULL COMMENT '类型',
  `create_id` varchar(255) DEFAULT NULL COMMENT '创建人id',
  `create_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '创建人name',
  `create_time` datetime DEFAULT NULL COMMENT '发信时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公告';

-- ----------------------------
-- Records of t_sys_notice
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_notice` VALUES ('393297509184835584', '测试', '<p>324324</p>', 2, '1', 'admin', '2020-02-28 17:10:44');
COMMIT;

-- ----------------------------
-- Table structure for t_sys_notice_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_notice_user`;
CREATE TABLE `t_sys_notice_user` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `notice_id` varchar(255) DEFAULT NULL COMMENT '公告id',
  `user_id` varchar(255) DEFAULT NULL COMMENT '用户id',
  `state` int(2) DEFAULT NULL COMMENT '0未阅读 1 阅读',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公告_用户外键';

-- ----------------------------
-- Records of t_sys_notice_user
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_notice_user` VALUES ('330381411037089792', '330381411007729664', '1', 1);
INSERT INTO `t_sys_notice_user` VALUES ('330381411045478400', '330381411007729664', '488294747442511872', 0);
INSERT INTO `t_sys_notice_user` VALUES ('330381806375407616', '330381806358630400', '1', 1);
INSERT INTO `t_sys_notice_user` VALUES ('330381806379601920', '330381806358630400', '488294747442511872', 0);
INSERT INTO `t_sys_notice_user` VALUES ('330622143622680576', '330622143597514752', '1', 1);
INSERT INTO `t_sys_notice_user` VALUES ('330622143626874880', '330622143597514752', '488294747442511872', 0);
INSERT INTO `t_sys_notice_user` VALUES ('354984345649418240', '354984345632641024', '1', 1);
INSERT INTO `t_sys_notice_user` VALUES ('373478037158760448', '373478036928073728', '1', 1);
INSERT INTO `t_sys_notice_user` VALUES ('373478037162954752', '373478036928073728', '368026921239449600', 0);
INSERT INTO `t_sys_notice_user` VALUES ('373478037171343360', '373478036928073728', '368026937181999104', 0);
INSERT INTO `t_sys_notice_user` VALUES ('373478037175537664', '373478036928073728', '368027013392502784', 0);
INSERT INTO `t_sys_notice_user` VALUES ('373478037183926272', '373478036928073728', '368027030899527680', 0);
INSERT INTO `t_sys_notice_user` VALUES ('373478037192314880', '373478036928073728', '368027048402358272', 0);
INSERT INTO `t_sys_notice_user` VALUES ('373478037204897792', '373478036928073728', '368027066563694592', 0);
INSERT INTO `t_sys_notice_user` VALUES ('373478037213286400', '373478036928073728', '368027087866564608', 0);
INSERT INTO `t_sys_notice_user` VALUES ('373478037217480704', '373478036928073728', '368027104895438848', 0);
INSERT INTO `t_sys_notice_user` VALUES ('373478037225869312', '373478036928073728', '368027130728157184', 0);
INSERT INTO `t_sys_notice_user` VALUES ('373478037230063616', '373478036928073728', '368027151624179712', 0);
INSERT INTO `t_sys_notice_user` VALUES ('373478037238452224', '373478036928073728', '368382463233363968', 0);
INSERT INTO `t_sys_notice_user` VALUES ('393297509218390016', '393297509184835584', '1', 1);
INSERT INTO `t_sys_notice_user` VALUES ('393297509226778624', '393297509184835584', '2', 0);
INSERT INTO `t_sys_notice_user` VALUES ('393297509230972928', '393297509184835584', '368026921239449600', 0);
INSERT INTO `t_sys_notice_user` VALUES ('393297509235167232', '393297509184835584', '368026937181999104', 0);
INSERT INTO `t_sys_notice_user` VALUES ('393297509239361536', '393297509184835584', '368027013392502784', 0);
INSERT INTO `t_sys_notice_user` VALUES ('393297509243555840', '393297509184835584', '368027030899527680', 0);
INSERT INTO `t_sys_notice_user` VALUES ('393297509251944448', '393297509184835584', '368027048402358272', 0);
INSERT INTO `t_sys_notice_user` VALUES ('393297509256138752', '393297509184835584', '368027066563694592', 0);
INSERT INTO `t_sys_notice_user` VALUES ('393297509260333056', '393297509184835584', '368027087866564608', 0);
INSERT INTO `t_sys_notice_user` VALUES ('393297509268721664', '393297509184835584', '368027104895438848', 0);
INSERT INTO `t_sys_notice_user` VALUES ('393297509272915968', '393297509184835584', '368027130728157184', 0);
INSERT INTO `t_sys_notice_user` VALUES ('393297509277110272', '393297509184835584', '368027151624179712', 0);
INSERT INTO `t_sys_notice_user` VALUES ('393297509281304576', '393297509184835584', '368382463233363968', 0);
COMMIT;

-- ----------------------------
-- Table structure for t_sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_oper_log`;
CREATE TABLE `t_sys_oper_log` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `method` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '方法',
  `oper_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '操作人',
  `oper_url` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'url',
  `oper_param` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '参数',
  `error_msg` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `oper_time` date DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='日志记录表';

-- ----------------------------
-- Table structure for t_sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_permission`;
CREATE TABLE `t_sys_permission` (
  `id` varchar(255) NOT NULL COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '权限名称',
  `descripion` varchar(255) DEFAULT NULL COMMENT '权限描述',
  `url` varchar(255) DEFAULT NULL COMMENT '授权链接',
  `is_blank` int(255) DEFAULT '0' COMMENT '是否跳转 0 不跳转 1跳转',
  `pid` varchar(255) DEFAULT NULL COMMENT '父节点id',
  `perms` varchar(255) DEFAULT NULL COMMENT '权限标识',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(255) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `visible` int(255) DEFAULT NULL COMMENT '是否可见',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of t_sys_permission
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_permission` VALUES ('1', '首页', '首页', '#', 0, '0', '#', 0, 'fa fa-home', 1, 0);
INSERT INTO `t_sys_permission` VALUES ('10', '角色集合', '角色集合', '/RoleController/list', 0, '9', 'system:role:list', 2, '', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('11', '角色添加', '角色添加', '/RoleController/add', 0, '9', 'system:role:add', 2, 'entypo-plus-squared', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('12', '角色删除', '角色删除', '/RoleController/remove', 0, '9', 'system:role:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('13', '角色修改', '角色修改', '/RoleController/edit', 0, '9', 'system:role:edit', 2, 'fa fa-wrench', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('14', '权限展示', '权限展示', '/PermissionController/view', 0, '592059865673760768', 'system:permission:view', 1, 'fa fa-key', 3, 0);
INSERT INTO `t_sys_permission` VALUES ('15', '权限集合', '权限集合', '/PermissionController/list', 0, '14', 'system:permission:list', 2, '', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('16', '权限添加', '权限添加', '/permissionController/add', 0, '14', 'system:permission:add', 2, 'entypo-plus-squared', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('17', '权限删除', '权限删除', '/PermissionController/remove', 0, '14', 'system:permission:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('18', '权限修改', '权限修改', '/PermissionController/edit', 0, '14', 'system:permission:edit', 2, 'fa fa-wrench', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('330365026642825216', '公告管理', '公告展示', '/SysNoticeController/view', 0, '592059865673760768', 'gen:sysNotice:view', 1, 'fa fa-telegram', 10, 0);
INSERT INTO `t_sys_permission` VALUES ('3303650266428252171', '公告集合', '公告集合', '/SysNoticeController/list', 0, '330365026642825216', 'gen:sysNotice:list', 2, '', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3303650266428252182', '公告添加', '公告添加', '/SysNoticeController/add', 0, '330365026642825216', 'gen:sysNotice:add', 2, 'entypo-plus-squared', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3303650266428252193', '公告删除', '公告删除', '/SysNoticeController/remove', 0, '330365026642825216', 'gen:sysNotice:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3303650266428252204', '公告修改', '公告修改', '/SysNoticeController/edit', 0, '330365026642825216', 'gen:sysNotice:edit', 2, 'fa fa-wrench', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('392620214652637184', '用户信息管理', '展示', '/SysCustomerController/view', 0, '589559748521623552', 'gen:sysCustomer:view', 1, 'fa fa-quora', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3926202146526371851', '集合', '集合', '/SysCustomerController/list', 0, '392620214652637184', 'gen:sysCustomer:list', 2, '', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3926202146568314882', '添加', '添加', '/SysCustomerController/add', 0, '392620214652637184', 'gen:sysCustomer:add', 2, 'entypo-plus-squared', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3926202146568314893', '删除', '删除', '/SysCustomerController/remove', 0, '392620214652637184', 'gen:sysCustomer:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3926202146568314904', '修改', '修改', '/SysCustomerController/edit', 0, '392620214652637184', 'gen:sysCustomer:edit', 2, 'fa fa-wrench', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('393278841784766464', '意见管理', '展示', '/SysCommentController/view', 0, '589559748521623552', 'gen:sysComment:view', 1, 'fa fa-quora', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3932788417847664651', '集合', '集合', '/SysCommentController/list', 0, '393278841784766464', 'gen:sysComment:list', 2, '', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3932788417847664662', '添加', '添加', '/SysCommentController/add', 0, '393278841784766464', 'gen:sysComment:add', 2, 'entypo-plus-squared', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3932788417847664673', '删除', '删除', '/SysCommentController/remove', 0, '393278841784766464', 'gen:sysComment:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3932788417847664684', '修改', '修改', '/SysCommentController/edit', 0, '393278841784766464', 'gen:sysComment:edit', 2, 'fa fa-wrench', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('393304694174388224', '我的信息', '', '/SysCustomerController/edit2', 0, '589559748521623552', 'gen:sysCustomer:edit2', 1, 'fa fa-vcard-o', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('393318867012816896', '修改密码', '', '/UserController/editPwd2', 0, '592059865673760768', 'system:user:editPwd2', 1, 'fa fa-wrench', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('393327396855615488', '销售业绩', '', '/SysCommentController/bar', 1, '393377199522189312', 'gen:sysComment:bar', 1, 'fa fa-eercast', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('393377199522189312', '报表管理', '', '#', 0, '589559475422101504', '#', 1, 'fa fa-bar-chart', 2, 0);
INSERT INTO `t_sys_permission` VALUES ('399511385433837568', '房屋管理', '展示', '/SysHouseController/view', 0, '399884606293282816', 'gen:sysHouse:view', 1, 'fa fa-quora', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3995113854338375691', '集合', '集合', '/SysHouseController/list', 0, '399511385433837568', 'gen:sysHouse:list', 2, '', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3995113854338375702', '添加', '添加', '/SysHouseController/add', 0, '399511385433837568', 'gen:sysHouse:add', 2, 'entypo-plus-squared', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3995113854338375713', '删除', '删除', '/SysHouseController/remove', 0, '399511385433837568', 'gen:sysHouse:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3995113854338375724', '修改', '修改', '/SysHouseController/edit', 0, '399511385433837568', 'gen:sysHouse:edit', 2, 'fa fa-wrench', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('399525790808674304', '在线预订', '', '/SysHouseController/buylist', 0, '399883471654359040', 'gen:sysHouse:buylist', 1, 'fa fa-shopping-bag', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('399528754772316160', '团购预订', '', '/SysHouseController/bulklist', 0, '399883471654359040', 'gen:sysHouse:bulklist', 1, 'fa fa-braille', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('399531772221722624', '我的预订', '', '/SysHouseController/mylist', 0, '399883471654359040', 'gen:sysHouse:mylist', 1, 'fa fa-user-circle', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('399532560721514496', '合同管理', '合同信息表展示', '/SysContractController/view', 0, '399884606293282816', 'gen:sysContract:view', 1, 'fa fa-quora', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3995325607215144971', '合同信息表集合', '合同信息表集合', '/SysContractController/list', 0, '399532560721514496', 'gen:sysContract:list', 2, '', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3995325607215144982', '合同信息表添加', '合同信息表添加', '/SysContractController/add', 0, '399532560721514496', 'gen:sysContract:add', 2, 'entypo-plus-squared', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3995325607215144993', '合同信息表删除', '合同信息表删除', '/SysContractController/remove', 0, '399532560721514496', 'gen:sysContract:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3995325607215145004', '合同信息表修改', '合同信息表修改', '/SysContractController/edit', 0, '399532560721514496', 'gen:sysContract:edit', 2, 'fa fa-wrench', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('399532947629281280', '订单管理', '展示', '/SysMyhouseController/view', 0, '399883471654359040', 'gen:sysMyhouse:view', 1, 'fa fa-quora', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3995329476292812811', '集合', '集合', '/SysMyhouseController/list', 0, '399532947629281280', 'gen:sysMyhouse:list', 2, '', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3995329476292812822', '添加', '添加', '/SysMyhouseController/add', 0, '399532947629281280', 'gen:sysMyhouse:add', 2, 'entypo-plus-squared', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3995329476292812833', '删除', '删除', '/SysMyhouseController/remove', 0, '399532947629281280', 'gen:sysMyhouse:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3995329476292812844', '修改', '修改', '/SysMyhouseController/edit', 0, '399532947629281280', 'gen:sysMyhouse:edit', 2, 'fa fa-wrench', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('399538888273694720', '意见反馈', '', '/SysCommentController/add/0', 0, '589559748521623552', '#', 1, 'fa fa-twitch', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('399883471654359040', '预订管理', '', '#', 0, '589559475422101504', '#', 1, 'fa fa-imdb', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('399884606293282816', '房屋合同', '', '#', 0, '589559475422101504', '#', 1, 'fa fa-home', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('4', '用户管理', '用户展示', '/UserController/view', 0, '592059865673760768', 'system:user:view', 1, 'icon icon-user', 1, 0);
INSERT INTO `t_sys_permission` VALUES ('486690002869157888', '用户密码修改', '用户密码修改', '/UserController/editPwd', 0, '4', 'system:user:editPwd', 2, 'entypo-tools', 3, 0);
INSERT INTO `t_sys_permission` VALUES ('496126970468237312', '日志展示', '日志管理', '/LogController/view', 0, '592059865673760768', 'system:log:view', 1, 'fa fa-info', 9, 0);
INSERT INTO `t_sys_permission` VALUES ('496127240363311104', '日志删除', '日志删除', '/LogController/remove', 0, '496126970468237312', 'system:log:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('496127794879660032', '日志集合', '日志集合', '/LogController/list', 0, '496126970468237312', 'system:log:list', 2, NULL, NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('496782496638173184', '系统设置', '后台设置', NULL, 0, '1', NULL, 0, 'fa fa-gear', 3, 0);
INSERT INTO `t_sys_permission` VALUES ('5', '用户集合', '用户集合', '/UserController/list', 0, '4', 'system:user:list', 2, '', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('589559475422101504', '我的功能', '功能', NULL, 0, '1', NULL, 0, 'fa fa-etsy', 2, 0);
INSERT INTO `t_sys_permission` VALUES ('589559748521623552', '功能管理', '测试菜单', '#', 0, '589559475422101504', '#', 1, 'fa fa-address-book', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('592059865673760768', '系统管理', '后台管理', '#', 0, '496782496638173184', '#', 1, 'fa fa-home', 1, 0);
INSERT INTO `t_sys_permission` VALUES ('592167738407911424', '系统监控', '系统监控', '/ServiceController/view', 0, '617766548966211584', 'system:service:view', 1, 'fa fa-video-camera', 7, 0);
INSERT INTO `t_sys_permission` VALUES ('594691026430459904', '电子邮件管理', '电子邮件展示', '/EmailController/view', 0, '592059865673760768', 'system:email:view', 1, 'fa fa-envelope', 8, 0);
INSERT INTO `t_sys_permission` VALUES ('5946910264304599041', '电子邮件集合', '电子邮件集合', '/EmailController/list', 0, '594691026430459904', 'system:email:list', 2, '', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('5946910264304599042', '电子邮件添加', '电子邮件添加', '/EmailController/add', 0, '594691026430459904', 'system:email:add', 2, 'entypo-plus-squared', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('5946910264304599043', '电子邮件删除', '电子邮件删除', '/EmailController/remove', 0, '594691026430459904', 'system:email:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('5946910264304599044', '电子邮件修改', '电子邮件修改', '/EmailController/edit', 0, '594691026430459904', 'system:email:edit', 2, 'fa fa-wrench', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('6', '用户添加', '用户添加', '/UserController/add', 0, '4', 'system:user:add', 2, 'entypo-plus-squared', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('617766548966211584', '系统工具', '系统工具', '#', 0, '496782496638173184', '#', 1, 'fa fa-th-large', 2, 0);
INSERT INTO `t_sys_permission` VALUES ('7', '用户删除', '用户删除', '/UserController/remove', 0, '4', 'system:user:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('8', '用户修改', '用户修改', '/UserController/edit', 0, '4', 'system:user:edit', 2, 'fa fa-wrench', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('9', '角色管理', '角色展示', '/RoleController/view', 0, '592059865673760768', 'system:role:view', 1, 'fa fa-group', 2, 0);
COMMIT;

-- ----------------------------
-- Table structure for t_sys_permission_role
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_permission_role`;
CREATE TABLE `t_sys_permission_role` (
  `id` varchar(255) NOT NULL,
  `role_id` varchar(255) DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(255) DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限中间表';

-- ----------------------------
-- Records of t_sys_permission_role
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_permission_role` VALUES ('0a64cb27-e3a7-4711-9d4d-330082b598f1', '393320526766018560', '');
INSERT INTO `t_sys_permission_role` VALUES ('0b39efdf-5006-4c4c-810f-91442356d9b1', '488243256161730560', '5');
INSERT INTO `t_sys_permission_role` VALUES ('0eaed944-fa97-4c66-988d-3229f4b96e04', '488243256161730560', '18');
INSERT INTO `t_sys_permission_role` VALUES ('142b6a30-9853-422b-bb3f-934920393af2', '488243256161730560', '3926202146526371851');
INSERT INTO `t_sys_permission_role` VALUES ('1587b9d5-464c-41f6-995a-709ef598ddaa', '488243256161730560', '3995329476292812811');
INSERT INTO `t_sys_permission_role` VALUES ('16e9d63b-c85b-4448-98c4-86836f3cf2ad', '488243256161730560', '3995325607215144971');
INSERT INTO `t_sys_permission_role` VALUES ('18148dfd-3789-4b52-959f-90cd4f77ffdf', '488243256161730560', '496127240363311104');
INSERT INTO `t_sys_permission_role` VALUES ('1a818591-6b73-470d-8159-7b578f4072ce', '488243256161730560', '399531772221722624');
INSERT INTO `t_sys_permission_role` VALUES ('245b3da1-6182-49e6-8f31-993149340644', '488243256161730560', '3303650266428252193');
INSERT INTO `t_sys_permission_role` VALUES ('2b1e525a-2eba-4399-b4a4-284e270f735c', '488243256161730560', '496127794879660032');
INSERT INTO `t_sys_permission_role` VALUES ('2b6b9ec8-b334-4672-9418-15db00b841f1', '488243256161730560', '393278841784766464');
INSERT INTO `t_sys_permission_role` VALUES ('2c1f1bd8-848a-4a00-ac72-736a7fa79e5b', '488289006124007424', '1');
INSERT INTO `t_sys_permission_role` VALUES ('2cbe48cc-3b7c-4e48-82c9-d5082a1b917b', '488289006124007424', '589559748521623552');
INSERT INTO `t_sys_permission_role` VALUES ('3064e62c-bf04-4ac5-a679-49d8df3dd212', '488243256161730560', '6');
INSERT INTO `t_sys_permission_role` VALUES ('333369ba-110b-4fdb-a2e3-fb7a83e3ef3b', '488243256161730560', '3995329476292812833');
INSERT INTO `t_sys_permission_role` VALUES ('3903a9f4-8d0e-4907-addc-bfb46a3798f2', '488243256161730560', '3926202146568314882');
INSERT INTO `t_sys_permission_role` VALUES ('3a9c0641-e477-4464-ad2c-40715ffa8c96', '488243256161730560', '3303650266428252182');
INSERT INTO `t_sys_permission_role` VALUES ('3b036e76-8d6a-4fea-b997-9b26a37f80da', '488243256161730560', '392620214652637184');
INSERT INTO `t_sys_permission_role` VALUES ('3c25a572-38f3-4ca9-b415-7f48bfca6039', '488243256161730560', '3995325607215145004');
INSERT INTO `t_sys_permission_role` VALUES ('415d3cff-d9af-422e-afbb-2e8c1d7196b7', '488243256161730560', '7');
INSERT INTO `t_sys_permission_role` VALUES ('45d1a230-fbc7-488d-9feb-a1453c7903ae', '488243256161730560', '3995113854338375724');
INSERT INTO `t_sys_permission_role` VALUES ('48b82aa7-a9b6-4a8b-ab2f-24e56455f0d7', '488243256161730560', '399511385433837568');
INSERT INTO `t_sys_permission_role` VALUES ('4b65473b-02d8-44f7-933e-e91ba0abc450', '488243256161730560', '3932788417847664662');
INSERT INTO `t_sys_permission_role` VALUES ('5b943ce7-b465-4a73-a0ec-54230526d66e', '488243256161730560', '330365026642825216');
INSERT INTO `t_sys_permission_role` VALUES ('67284587-9f73-4139-adae-6c3f4f608626', '488243256161730560', '592059865673760768');
INSERT INTO `t_sys_permission_role` VALUES ('678ae6b5-d5a0-4dd7-b9cb-766f7e71c19d', '488243256161730560', '399538888273694720');
INSERT INTO `t_sys_permission_role` VALUES ('68cd6302-cb4d-48cd-9373-8024b34ed241', '488243256161730560', '399525790808674304');
INSERT INTO `t_sys_permission_role` VALUES ('69503d14-831f-4c60-a74c-3625376fd3ce', '488289006124007424', '393304694174388224');
INSERT INTO `t_sys_permission_role` VALUES ('6ac1c273-2fc1-459c-be88-fbf6ebf5639f', '488243256161730560', '3995325607215144993');
INSERT INTO `t_sys_permission_role` VALUES ('6c6c1830-a2fe-4be0-9d8f-7a4c2fa043b4', '488243256161730560', '1');
INSERT INTO `t_sys_permission_role` VALUES ('6d8e575a-1d85-42fe-9cc8-0ee758803124', '488243256161730560', '9');
INSERT INTO `t_sys_permission_role` VALUES ('6dcc7d18-956f-4204-b2cc-f4d3884a053a', '488243256161730560', '14');
INSERT INTO `t_sys_permission_role` VALUES ('70a1307c-2a16-4d1c-8a04-c93f86afab56', '488243256161730560', '393327396855615488');
INSERT INTO `t_sys_permission_role` VALUES ('717253e4-801d-4cd8-bed2-5f99d0518172', '488243256161730560', '393377199522189312');
INSERT INTO `t_sys_permission_role` VALUES ('77b1cfed-9908-4c36-8d70-71b38ac33b11', '488243256161730560', '589559748521623552');
INSERT INTO `t_sys_permission_role` VALUES ('79e4b4cb-54b2-41d7-aad3-3d5549f99738', '488243256161730560', '393304694174388224');
INSERT INTO `t_sys_permission_role` VALUES ('807dd0d3-1a46-4c5a-bf38-2595720cf1e7', '488243256161730560', '3995113854338375702');
INSERT INTO `t_sys_permission_role` VALUES ('8907d7cc-1063-4d1b-8410-4c1e6dda68ec', '488243256161730560', '496126970468237312');
INSERT INTO `t_sys_permission_role` VALUES ('9452ee60-4699-4ead-be91-d26a89ac4200', '488243256161730560', '3995329476292812822');
INSERT INTO `t_sys_permission_role` VALUES ('949f356d-1d8f-4e55-88a0-e29aad16a652', '488243256161730560', '15');
INSERT INTO `t_sys_permission_role` VALUES ('96857f4a-6190-4cca-9a1b-a74aa77d47b5', '488243256161730560', '13');
INSERT INTO `t_sys_permission_role` VALUES ('99712957-e964-44c0-9f19-e01f7bd8b60c', '488243256161730560', '399528754772316160');
INSERT INTO `t_sys_permission_role` VALUES ('9f9d45c8-9047-4bf1-b0c5-7245999067b2', '488243256161730560', '399884606293282816');
INSERT INTO `t_sys_permission_role` VALUES ('a3414b90-bddb-4176-9505-f0030df1c895', '488243256161730560', '3995113854338375691');
INSERT INTO `t_sys_permission_role` VALUES ('a3a6e02b-95b6-4b8e-aaf8-a1f2db48bbd9', '488243256161730560', '3926202146568314893');
INSERT INTO `t_sys_permission_role` VALUES ('a46a4e54-5a0b-42ca-8a06-84d120436b7f', '488243256161730560', '399532560721514496');
INSERT INTO `t_sys_permission_role` VALUES ('a567779d-64ca-4642-b489-d567a4d409f3', '488243256161730560', '16');
INSERT INTO `t_sys_permission_role` VALUES ('b24baaa2-d453-4614-a750-95b42cefd9a1', '488243256161730560', '496782496638173184');
INSERT INTO `t_sys_permission_role` VALUES ('b5a7b3e4-9c72-410e-881e-a2478e2c2729', '488243256161730560', '399532947629281280');
INSERT INTO `t_sys_permission_role` VALUES ('b5b12d36-28a0-4126-a55b-c74a9a332427', '488289006124007424', '392643829007781888');
INSERT INTO `t_sys_permission_role` VALUES ('b71471d3-1c9b-4ff8-9e32-c6fda3e3820f', '488289006124007424', '393281296937390080');
INSERT INTO `t_sys_permission_role` VALUES ('b7b37a36-9369-48b6-be2a-754e85b66c30', '488243256161730560', '3303650266428252204');
INSERT INTO `t_sys_permission_role` VALUES ('bba42332-7d44-449d-88b0-6641d9ec8738', '488243256161730560', '3995325607215144982');
INSERT INTO `t_sys_permission_role` VALUES ('bc8e9970-73ac-41f5-a30c-802e7775da4f', '488243256161730560', '3932788417847664651');
INSERT INTO `t_sys_permission_role` VALUES ('bde5e7b0-6cb3-4585-a39e-4db2fc54db27', '488243256161730560', '3995113854338375713');
INSERT INTO `t_sys_permission_role` VALUES ('bf3a4735-0ab0-4599-9825-6fa31db0b90b', '488243256161730560', '393318867012816896');
INSERT INTO `t_sys_permission_role` VALUES ('c04662fa-46b6-44b7-ad35-98691ddd6924', '488243256161730560', '10');
INSERT INTO `t_sys_permission_role` VALUES ('c4085d63-510d-4472-9ebb-10648c8cd2b7', '488243256161730560', '592167738407911424');
INSERT INTO `t_sys_permission_role` VALUES ('c484a201-d0d9-4bb4-aa53-50cb973715c8', '488289006124007424', '393318867012816896');
INSERT INTO `t_sys_permission_role` VALUES ('c488f4af-ff0b-4d5d-899e-43a6d4ab3f8a', '488243256161730560', '3995329476292812844');
INSERT INTO `t_sys_permission_role` VALUES ('c49f832a-416a-429f-8754-89510787c56f', '488243256161730560', '3932788417847664673');
INSERT INTO `t_sys_permission_role` VALUES ('c89e2f67-9c0f-4a44-87f2-3b167657f2f8', '488243256161730560', '617766548966211584');
INSERT INTO `t_sys_permission_role` VALUES ('d2794156-c047-4e5b-91a9-59a11ee4868a', '488243256161730560', '589559475422101504');
INSERT INTO `t_sys_permission_role` VALUES ('d579cf65-9744-4bf8-96b9-1009232c15e3', '488243256161730560', '3926202146568314904');
INSERT INTO `t_sys_permission_role` VALUES ('d664532d-6a2c-4a5f-8c8d-d06823dbc219', '488243256161730560', '8');
INSERT INTO `t_sys_permission_role` VALUES ('d81c8e0e-d26f-4c67-86c2-559fe326ccad', '488243256161730560', '3932788417847664684');
INSERT INTO `t_sys_permission_role` VALUES ('db503731-e1b1-4c31-8cb7-92954fd88c3d', '488243256161730560', '486690002869157888');
INSERT INTO `t_sys_permission_role` VALUES ('ddd44908-59f9-4c25-a636-6b2cee6a171b', '488243256161730560', '11');
INSERT INTO `t_sys_permission_role` VALUES ('e0257fcf-8a31-4e1d-874e-131e642afc78', '488243256161730560', '17');
INSERT INTO `t_sys_permission_role` VALUES ('eea5c6ea-36e8-4961-93c7-35644aeae59e', '488243256161730560', '3303650266428252171');
INSERT INTO `t_sys_permission_role` VALUES ('f79e20df-b124-4fe0-b75d-37f9f85c2d20', '488243256161730560', '4');
INSERT INTO `t_sys_permission_role` VALUES ('f7e0bfe2-c8a6-4883-9618-2831e9aba824', '488243256161730560', '399883471654359040');
INSERT INTO `t_sys_permission_role` VALUES ('fa4ec19c-74bb-4cc7-aec4-5f1d9ee071da', '488243256161730560', '12');
COMMIT;

-- ----------------------------
-- Table structure for t_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role` (
  `id` varchar(255) NOT NULL COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of t_sys_role
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_role` VALUES ('393320526766018560', '销售员');
INSERT INTO `t_sys_role` VALUES ('488243256161730560', '管理员');
INSERT INTO `t_sys_role` VALUES ('488289006124007424', '普通用户');
INSERT INTO `t_sys_role` VALUES ('488305788310257664', '能修改用户密码角色');
COMMIT;

-- ----------------------------
-- Table structure for t_sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role_user`;
CREATE TABLE `t_sys_role_user` (
  `id` varchar(255) NOT NULL,
  `sys_user_id` varchar(255) DEFAULT NULL COMMENT '用户id',
  `sys_role_id` varchar(255) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色中间表';

-- ----------------------------
-- Records of t_sys_role_user
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_role_user` VALUES ('353711021275353089', '353711021275353088', '488289006124007424');
INSERT INTO `t_sys_role_user` VALUES ('353714370687143936', '488294747442511872', '488289006124007424');
INSERT INTO `t_sys_role_user` VALUES ('354984037766533120', '354984005751410688', '488243256161730560');
INSERT INTO `t_sys_role_user` VALUES ('354988722443390977', '354988722443390976', '488243256161730560');
INSERT INTO `t_sys_role_user` VALUES ('354989789679849472', '354989789675655168', '488305788310257664');
INSERT INTO `t_sys_role_user` VALUES ('392603506332274688', '368027013392502784', '488243256161730560');
INSERT INTO `t_sys_role_user` VALUES ('393347615607099392', '368382463233363968', '393320526766018560');
INSERT INTO `t_sys_role_user` VALUES ('393349734133272576', '1', '393320526766018560');
INSERT INTO `t_sys_role_user` VALUES ('393349734162632704', '1', '488243256161730560');
INSERT INTO `t_sys_role_user` VALUES ('393368260843802625', '393368260843802624', '488289006124007424');
INSERT INTO `t_sys_role_user` VALUES ('393385787816808448', '393385787812614144', '488289006124007424');
INSERT INTO `t_sys_role_user` VALUES ('393386400751423489', '393386400751423488', '488289006124007424');
INSERT INTO `t_sys_role_user` VALUES ('393387873509969921', '9338787', '488289006124007424');
INSERT INTO `t_sys_role_user` VALUES ('399888854955462657', '9988885', '488289006124007424');
INSERT INTO `t_sys_role_user` VALUES ('399889170769776640', '368026937181999104', '488289006124007424');
INSERT INTO `t_sys_role_user` VALUES ('612107905532952576', '612107905532952576', '488289006124007424');
INSERT INTO `t_sys_role_user` VALUES ('612107905537146880', '612107905532952576', '488305788310257664');
COMMIT;

-- ----------------------------
-- Table structure for t_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户账号',
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户密码',
  `nickname` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '昵称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户表';

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_user` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '管理员');
INSERT INTO `t_sys_user` VALUES ('2', 'adminpppoooo2', '8769c8e5c430f5a461e10680357bef09', 'pppppppppp');
INSERT INTO `t_sys_user` VALUES ('368026921239449600', 'admin1', 'e00cf25ad42683b3df678c61f42c6bda', '');
INSERT INTO `t_sys_user` VALUES ('368026937181999104', 'admin2', 'c84258e9c39059a89ab77d846ddab909', '');
INSERT INTO `t_sys_user` VALUES ('368027013392502784', '44', '73882ab1fa529d7273da0db6b49cc4f3', '444');
INSERT INTO `t_sys_user` VALUES ('368027030899527680', '5555555', '7a48932b26f04fccb55f0409ba3451fc', '5555555555555');
INSERT INTO `t_sys_user` VALUES ('368027048402358272', '66', '9f0863dd5f0256b0f586a7b523f8cfe8', '6666666666');
INSERT INTO `t_sys_user` VALUES ('368027066563694592', '2222', '0d777e9e30b918e9034ab610712c90cf', '2222222222222222');
INSERT INTO `t_sys_user` VALUES ('368027087866564608', '4444', '9a741f0ad60975ae15d3d83a769442a1', '44444444444');
INSERT INTO `t_sys_user` VALUES ('368027104895438848', '5555', '90a3e7de4de4a1f8bbe3c092858ed812', '555555555555');
INSERT INTO `t_sys_user` VALUES ('368027130728157184', '666', '68bac75ed032e0a86bc3eae1b5c996cf', '666666666');
INSERT INTO `t_sys_user` VALUES ('368027151624179712', '33333333333333', '7b9e4ac60eb7c66e06592cee6dbd0c57', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('368382463233363968', 'adminpppoooo', '8769c8e5c430f5a461e10680357bef09', 'pppppppppp');
INSERT INTO `t_sys_user` VALUES ('393368260843802624', '423', 'e10adc3949ba59abbe56e057f20f883e', '4324');
INSERT INTO `t_sys_user` VALUES ('9338787', 'test', 'e10adc3949ba59abbe56e057f20f883e', 'test');
INSERT INTO `t_sys_user` VALUES ('9988885', 'admin2', 'e10adc3949ba59abbe56e057f20f883e', '哈哈');
COMMIT;

-- ----------------------------
-- Table structure for t_test
-- ----------------------------
DROP TABLE IF EXISTS `t_test`;
CREATE TABLE `t_test` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `age` int(11) DEFAULT NULL COMMENT '性别',
  `cratetime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='测试表';

SET FOREIGN_KEY_CHECKS = 1;
