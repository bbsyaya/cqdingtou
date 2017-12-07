SET FOREIGN_KEY_CHECKS=0;
SET FOREIGN_KEY_CHECKS=0;
ALTER TABLE `ims_ewei_message_mass_template` ADD COLUMN `miniprogram`  tinyint(1) NULL DEFAULT 0 AFTER `sendcount`;
ALTER TABLE `ims_ewei_message_mass_template` ADD COLUMN `appid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `miniprogram`;
ALTER TABLE `ims_ewei_message_mass_template` ADD COLUMN `pagepath`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `appid`;

CREATE TABLE `ims_ewei_shop_exhelper_esheet` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`name`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`express`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`code`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`datas`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_exhelper_esheet_temp` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NULL DEFAULT 0 ,
`esheetid`  int(11) NOT NULL DEFAULT 0 ,
`esheetname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`customername`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`customerpwd`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`monthcode`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`sendsite`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`paytype`  tinyint(3) NOT NULL DEFAULT 1 ,
`templatesize`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`isnotice`  tinyint(3) NOT NULL DEFAULT 0 ,
`merchid`  int(11) NOT NULL DEFAULT 0 ,
`issend`  tinyint(3) NOT NULL DEFAULT 1 ,
`isdefault`  tinyint(3) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`),
INDEX `idx_isdefault` (`isdefault`) USING BTREE ,
INDEX `idx_uniacid` (`uniacid`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
ALTER TABLE `ims_ewei_shop_exhelper_senduser` ADD COLUMN `province`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `merchid`;
ALTER TABLE `ims_ewei_shop_exhelper_senduser` ADD COLUMN `city`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `province`;
ALTER TABLE `ims_ewei_shop_exhelper_senduser` ADD COLUMN `area`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `city`;
ALTER TABLE `ims_ewei_shop_exhelper_sys` ADD COLUMN `ebusiness`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `merchid`;
ALTER TABLE `ims_ewei_shop_exhelper_sys` ADD COLUMN `apikey`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `ebusiness`;

ALTER TABLE `ims_ewei_shop_order_goods` ADD COLUMN `esheetprintnum`  int(11) NOT NULL DEFAULT 0 AFTER `peopleid`;
ALTER TABLE `ims_ewei_shop_order_goods` ADD COLUMN `ordercode`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `esheetprintnum`;
ALTER TABLE `ims_ewei_shop_payment` ADD COLUMN `paytype`  tinyint(3) NOT NULL DEFAULT 0 AFTER `createtime`;
ALTER TABLE `ims_ewei_shop_payment` ADD COLUMN `alitype`  tinyint(3) NOT NULL DEFAULT 0 AFTER `paytype`;
ALTER TABLE `ims_ewei_shop_payment` ADD COLUMN `alipay_sec`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `alitype`;
CREATE TABLE `ims_ewei_shop_task_list` (
`status`  tinyint(1) NOT NULL DEFAULT 0 ,
`displayorder`  int(11) NOT NULL DEFAULT 0 ,
`id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL DEFAULT 0 ,
`title`  char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`image`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`type`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`starttime`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`endtime`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`demand`  int(11) NOT NULL DEFAULT 0 ,
`requiregoods`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`picktype`  tinyint(1) NOT NULL DEFAULT 0 ,
`stop_type`  tinyint(1) NOT NULL DEFAULT 0 ,
`stop_limit`  int(11) NOT NULL DEFAULT 0 ,
`stop_time`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`stop_cycle`  tinyint(1) NOT NULL DEFAULT 0 ,
`repeat_type`  tinyint(1) NOT NULL DEFAULT 0 ,
`repeat_interval`  int(11) NOT NULL DEFAULT 0 ,
`repeat_cycle`  tinyint(1) NOT NULL DEFAULT 0 ,
`reward`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`followreward`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`goods_limit`  int(11) NOT NULL DEFAULT 0 ,
`notice`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`design_data`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`design_bg`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`native_data`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`native_data2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`native_data3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`reward2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`reward3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`level2`  int(11) NOT NULL DEFAULT 0 ,
`level3`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`),
INDEX `idx_uniacid` (`uniacid`) USING BTREE ,
INDEX `idx_passive` (`picktype`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_task_qr` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL DEFAULT 0 ,
`openid`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`recordid`  int(11) NOT NULL DEFAULT 0 ,
`sceneid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`mediaid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`ticket`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`id`),
INDEX `uniacid` (`uniacid`) USING BTREE ,
INDEX `recordid` (`recordid`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_task_record` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL DEFAULT 0 ,
`taskid`  int(11) NOT NULL DEFAULT 0 ,
`tasktitle`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`taskimage`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`tasktype`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`task_progress`  int(11) NOT NULL DEFAULT 0 ,
`task_demand`  int(11) NOT NULL DEFAULT 0 ,
`openid`  char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`nickname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`picktime`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`stoptime`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`finishtime`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`reward_data`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`followreward_data`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`design_data`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`design_bg`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`require_goods`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`level1`  int(11) NOT NULL DEFAULT 0 ,
`reward_data1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`level2`  int(11) NOT NULL DEFAULT 0 ,
`reward_data2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`),
INDEX `uniacid` (`uniacid`) USING BTREE ,
INDEX `taskid` (`taskid`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_task_reward` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL DEFAULT 0 ,
`taskid`  int(11) NOT NULL DEFAULT 0 ,
`tasktitle`  char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`tasktype`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`taskowner`  char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`ownernickname`  char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`recordid`  int(11) NOT NULL DEFAULT 0 ,
`nickname`  char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`headimg`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`openid`  char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`reward_type`  char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`reward_title`  char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`reward_data`  decimal(10,2) NOT NULL DEFAULT 0.00 ,
`get`  tinyint(1) NOT NULL DEFAULT 0 ,
`sent`  tinyint(1) NOT NULL DEFAULT 0 ,
`gettime`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`senttime`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`isjoiner`  tinyint(1) NOT NULL DEFAULT 0 ,
`price`  decimal(10,2) NOT NULL DEFAULT 0.00 ,
`level`  tinyint(1) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`),
INDEX `uniacid` (`uniacid`) USING BTREE ,
INDEX `recordid` (`recordid`) USING BTREE ,
INDEX `taskid` (`taskid`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_task_set` (
`uniacid`  int(11) NOT NULL DEFAULT 0 ,
`entrance`  tinyint(1) NOT NULL DEFAULT 0 ,
`keyword`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`cover_title`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`cover_img`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`cover_desc`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`msg_pick`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`msg_progress`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`msg_finish`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`msg_follow`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`isnew`  tinyint(1) NOT NULL DEFAULT 0 ,
`bg_img`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '../addons/ewei_shopv2/plugin/task/static/images/sky.png' ,
PRIMARY KEY (`uniacid`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_task_type` (
`id`  int(11) NOT NULL ,
`type_key`  char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`type_name`  char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`description`  char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`verb`  char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`numeric`  tinyint(1) NOT NULL DEFAULT 0 ,
`unit`  char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`goods`  tinyint(1) NOT NULL DEFAULT 0 ,
`theme`  char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`once`  tinyint(1) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Fixed
DELAY_KEY_WRITE=0
;




INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES ('1', '顺丰', '', 'SF', 'a:2:{i:0;a:4:{s:5:\"style\";s:9:\"二联150\";s:4:\"spec\";s:33:\"（宽100mm高150mm切点90/60）\";s:4:\"size\";s:3:\"150\";s:9:\"isdefault\";i:1;}i:1;a:4:{s:5:\"style\";s:9:\"三联210\";s:4:\"spec\";s:38:\"（宽100mm 高210mm 切点90/60/60）\";s:4:\"size\";s:3:\"210\";s:9:\"isdefault\";i:0;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES ('2', '百世快递', '', 'HTKY', 'a:2:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:0;}i:1;a:4:{s:5:\"style\";s:9:\"二联183\";s:4:\"spec\";s:37:\"（宽100mm 高183mm 切点87/5/91）\";s:4:\"size\";s:3:\"183\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES ('3', '韵达', '', 'YD', 'a:2:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:0;}i:1;a:4:{s:5:\"style\";s:9:\"二联203\";s:4:\"spec\";s:36:\"（宽100mm 高203mm 切点152/51）\";s:4:\"size\";s:3:\"203\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES ('4', '申通', '', 'STO', 'a:2:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}i:1;a:4:{s:5:\"style\";s:9:\"二联150\";s:4:\"spec\";s:35:\"（宽100mm 高150mm 切点90/60）\";s:4:\"size\";s:3:\"150\";s:9:\"isdefault\";i:0;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES ('5', '圆通', '', 'YTO', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES ('6', 'EMS', '', 'EMS', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联150\";s:4:\"spec\";s:33:\"（宽100mm高150mm切点90/60）\";s:4:\"size\";s:3:\"150\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES ('7', '中通', '', 'ZTO', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES ('8', '德邦', '', 'DBL', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联177\";s:4:\"spec\";s:34:\"（宽100mm高177mm切点107/70）\";s:4:\"size\";s:3:\"177\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES ('9', '优速', '', 'UC', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES ('10', '宅急送', '', 'ZJS', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联120\";s:4:\"spec\";s:33:\"（宽100mm高116mm切点98/10）\";s:4:\"size\";s:3:\"120\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES ('11', '京东', '', 'JD', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联110\";s:4:\"spec\";s:33:\"（宽100mm高110mm切点60/50）\";s:4:\"size\";s:3:\"110\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES ('12', '信丰', '', 'XFEX', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联150\";s:4:\"spec\";s:33:\"（宽100mm高150mm切点90/60）\";s:4:\"size\";s:3:\"150\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES ('13', '全峰', '', 'QFKD', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES ('14', '跨越速运', '', 'KYSY', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联137\";s:4:\"spec\";s:34:\"（宽100mm高137mm切点101/36）\";s:4:\"size\";s:3:\"137\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES ('15', '安能', '', 'ANE', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"三联180\";s:4:\"spec\";s:37:\"（宽100mm高180mm切点110/30/40）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES ('16', '快捷', '', 'FAST', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES ('17', '国通', '', 'GTO', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES ('18', '天天', '', 'HHTT', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES ('19', '中铁快运', '', 'ZTKY', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联150\";s:4:\"spec\";s:33:\"（宽100mm高150mm切点90/60）\";s:4:\"size\";s:3:\"150\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES ('20', '邮政快递包裹', '', 'YZPY', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');


UPDATE  `ims_modules` SET  `version` =  '3.1.3',
`author` =  '微上宝科技',
`url` =  'https://shop140828924.taobao.com' WHERE  `name` ='ewei_shopv2';




SET FOREIGN_KEY_CHECKS=1;