SET FOREIGN_KEY_CHECKS=0;

CREATE TABLE `ims_ewei_shop_lottery` (
`lottery_id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NULL DEFAULT 0 ,
`lottery_title`  varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`lottery_icon`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`lottery_banner`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`lottery_cannot`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`lottery_type`  tinyint(1) NULL DEFAULT NULL ,
`is_delete`  tinyint(1) NULL DEFAULT 0 ,
`addtime`  int(11) NULL DEFAULT NULL ,
`lottery_data`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`is_goods`  tinyint(1) NULL DEFAULT 0 ,
`lottery_days`  int(11) NULL DEFAULT 0 ,
`task_type`  tinyint(1) NULL DEFAULT 0 ,
`task_data`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`start_time`  int(11) NULL DEFAULT NULL ,
`end_time`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`lottery_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_lottery_default` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL DEFAULT 0 ,
`data`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`addtime`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_lottery_join` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NULL DEFAULT 0 ,
`join_user`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`lottery_id`  int(11) NULL DEFAULT NULL ,
`lottery_num`  int(10) NULL DEFAULT 0 ,
`lottery_tag`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`addtime`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_lottery_log` (
`log_id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NULL DEFAULT NULL ,
`lottery_id`  int(11) NULL DEFAULT 0 ,
`join_user`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`lottery_data`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`is_reward`  tinyint(1) NULL DEFAULT 0 ,
`addtime`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`log_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
ALTER TABLE `ims_ewei_shop_member` ADD COLUMN `openid_wa`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `datavalue`;
ALTER TABLE `ims_ewei_shop_merch_user` ADD COLUMN `pluginset`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `lng`;

CREATE TABLE `ims_ewei_shop_wxcard` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NULL DEFAULT NULL ,
`card_id`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' ,
`displayorder`  int(11) NULL DEFAULT NULL ,
`catid`  int(11) NULL DEFAULT NULL ,
`card_type`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`logo_url`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`wxlogourl`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`brand_name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`code_type`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`title`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`color`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`notice`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`service_phone`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`description`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`datetype`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`begin_timestamp`  int(11) NULL DEFAULT NULL ,
`end_timestamp`  int(11) NULL DEFAULT NULL ,
`fixed_term`  int(11) NULL DEFAULT NULL ,
`fixed_begin_term`  int(11) NULL DEFAULT NULL ,
`quantity`  int(11) NULL DEFAULT NULL ,
`total_quantity`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`use_limit`  int(11) NULL DEFAULT NULL ,
`get_limit`  int(11) NULL DEFAULT NULL ,
`use_custom_code`  tinyint(1) NULL DEFAULT NULL ,
`bind_openid`  tinyint(1) NULL DEFAULT NULL ,
`can_share`  tinyint(1) NULL DEFAULT NULL ,
`can_give_friend`  tinyint(1) NULL DEFAULT NULL ,
`center_title`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`center_sub_title`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`center_url`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`setcustom`  tinyint(1) NULL DEFAULT NULL ,
`custom_url_name`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`custom_url_sub_title`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`custom_url`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`setpromotion`  tinyint(1) NULL DEFAULT NULL ,
`promotion_url_name`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`promotion_url_sub_title`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`promotion_url`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`source`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`can_use_with_other_discount`  tinyint(1) NULL DEFAULT NULL ,
`setabstract`  tinyint(1) NULL DEFAULT NULL ,
`abstract`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`abstractimg`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`icon_url_list`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`accept_category`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`reject_category`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`least_cost`  decimal(10,2) NULL DEFAULT NULL ,
`reduce_cost`  decimal(10,2) NULL DEFAULT NULL ,
`discount`  decimal(10,2) NULL DEFAULT NULL ,
`limitgoodtype`  tinyint(1) NULL DEFAULT 0 ,
`limitgoodcatetype`  tinyint(1) UNSIGNED NULL DEFAULT 0 ,
`limitgoodcateids`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`limitgoodids`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`limitdiscounttype`  tinyint(1) UNSIGNED NULL DEFAULT 0 ,
`merchid`  int(11) NULL DEFAULT 0 ,
`gettype`  tinyint(3) NULL DEFAULT NULL ,
`islimitlevel`  tinyint(1) NULL DEFAULT 0 ,
`limitmemberlevels`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`limitagentlevels`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`limitpartnerlevels`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`limitaagentlevels`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`settitlecolor`  tinyint(1) NULL DEFAULT 0 ,
`titlecolor`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`tagtitle`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
SET FOREIGN_KEY_CHECKS=1;

truncate table ims_ewei_shop_plugin;

INSERT INTO `ims_ewei_shop_plugin` (`id`, `displayorder`, `identity`, `name`, `version`, `author`, `status`, `category`, `isv2`, `thumb`, `desc`, `iscom`, `deprecated`) VALUES
(1, 1, 'qiniu', '七牛存储', '1.0', '官方', 1, 'tool', 0, '../addons/ewei_shopv2/static/images/qiniu.jpg', NULL, 1, 0),
(2, 2, 'taobao', '商品助手', '1.0', '官方', 1, 'tool', 0, '../addons/ewei_shopv2/static/images/taobao.jpg', '', 0, 0),
(3, 3, 'commission', '人人分销', '1.0', '官方', 1, 'biz', 0, '../addons/ewei_shopv2/static/images/commission.jpg', '', 0, 0),
(4, 4, 'poster', '超级海报', '1.2', '官方', 1, 'sale', 0, '../addons/ewei_shopv2/static/images/poster.jpg', '', 0, 0),
(5, 5, 'verify', 'O2O核销', '1.0', '官方', 1, 'biz', 0, '../addons/ewei_shopv2/static/images/verify.jpg', NULL, 1, 0),
(6, 6, 'tmessage', '会员群发', '1.0', '官方', 1, 'tool', 0, '../addons/ewei_shopv2/static/images/tmessage.jpg', NULL, 1, 0),
(7, 7, 'perm', '分权系统', '1.0', '官方', 1, 'help', 0, '../addons/ewei_shopv2/static/images/perm.jpg', NULL, 1, 0),
(8, 8, 'sale', '营销宝', '1.0', '官方', 1, 'sale', 0, '../addons/ewei_shopv2/static/images/sale.jpg', NULL, 1, 0),
(9, 9, 'designer', '店铺装修V1', '1.0', '官方', 1, 'help', 0, '../addons/ewei_shopv2/static/images/designer.jpg', NULL, 0, 1),
(10, 10, 'creditshop', '积分商城', '1.0', '官方', 1, 'biz', 0, '../addons/ewei_shopv2/static/images/creditshop.jpg', '', 0, 0),
(11, 11, 'virtual', '虚拟物品', '1.0', '官方', 1, 'biz', 0, '../addons/ewei_shopv2/static/images/virtual.jpg', NULL, 1, 0),
(12, 11, 'article', '文章营销', '1.0', '官方', 1, 'help', 0, '../addons/ewei_shopv2/static/images/article.jpg', '', 0, 0),
(13, 13, 'coupon', '超级券', '1.0', '官方', 1, 'sale', 0, '../addons/ewei_shopv2/static/images/coupon.jpg', NULL, 1, 0),
(14, 14, 'postera', '活动海报', '1.0', '官方', 1, 'sale', 0, '../addons/ewei_shopv2/static/images/postera.jpg', '', 0, 0),
(15, 16, 'system', '系统工具', '1.0', '官方', 0, 'help', 0, '../addons/ewei_shopv2/static/images/system.jpg', NULL, 0, 1),
(16, 15, 'diyform', '自定表单', '1.0', '官方', 1, 'help', 0, '../addons/ewei_shopv2/static/images/diyform.jpg', '', 0, 0),
(17, 16, 'exhelper', '快递助手', '1.0', '官方', 1, 'help', 0, '../addons/ewei_shopv2/static/images/exhelper.jpg', '', 0, 0),
(18, 19, 'groups', '人人拼团', '1.0', '官方', 1, 'biz', 0, '../addons/ewei_shopv2/static/images/groups.jpg', '', 0, 0),
(19, 20, 'diypage', '店铺装修', '2.0', '官方', 1, 'help', 0, '../addons/ewei_shopv2/static/images/designer.jpg', '', 0, 0),
(20, 22, 'globonus', '全民股东', '1.0', '官方', 1, 'biz', 0, '../addons/ewei_shopv2/static/images/globonus.jpg', '', 0, 0),
(21, 23, 'merch', '多商户', '1.0', '官方', 1, 'biz', 1, '../addons/ewei_shopv2/static/images/merch.jpg', '', 0, 0),
(22, 26, 'qa', '帮助中心', '1.0', '官方', 1, 'help', 1, '../addons/ewei_shopv2/static/images/qa.jpg', '', 0, 0),
(24, 27, 'sms', '短信提醒', '1.0', '官方', 1, 'tool', 1, '../addons/ewei_shopv2/static/images/sms.jpg', '', 1, 0),
(25, 29, 'sign', '积分签到', '1.0', '官方', 1, 'tool', 1, '../addons/ewei_shopv2/static/images/sign.jpg', '', 0, 0),
(26, 30, 'sns', '全民社区', '1.0', '官方', 1, 'sale', 1, '../addons/ewei_shopv2/static/images/sns.jpg', '', 0, 0),
(27, 33, 'wap', '全网通', '1.0', '官方', 1, 'tool', 1, '', '', 1, 0),
(28, 34, 'h5app', 'H5APP', '1.0', '官方', 1, 'tool', 1, '', '', 1, 0),
(29, 26, 'abonus', '区域代理', '1.0', '官方', 1, 'biz', 1, '../addons/ewei_shopv2/static/images/abonus.jpg', '', 0, 0),
(30, 33, 'printer', '小票打印机', '1.0', '官方', 1, 'tool', 1, '', '', 1, 0),
(31, 34, 'bargain', '砍价活动', '1.0', '官方', 1, 'tool', 1, '../addons/ewei_shopv2/static/images/bargain.jpg', '', 0, 0),
(32, 35, 'task','任务中心','1.0','官方',1,'sale',1,'../addons/ewei_shopv2/static/images/task.jpg','',0,0),
(33, 36, 'cashier','收银台','1.0','官方',1,'biz',1,'../addons/ewei_shopv2/static/images/cashier.jpg','',0,0),
(34, 37, 'messages', '消息群发', '1.0','官方', 1, 'tool',1,'../addons/ewei_shopv2/static/images/messages.jpg','',0,0),
(35, 38, 'seckill','整点秒杀','1.0','官方',1,'sale',1,'../addons/ewei_shopv2/static/images/seckill.jpg','',0,0),
(36, 39, 'exchange','兑换中心','1.0','官方',1,'biz',1,'../addons/ewei_shopv2/static/images/exchange.jpg','',0,0),
(37, 40, 'lottery', '游戏营销', '1.0', '官方', 1, 'biz', 1, '../addons/ewei_shopv2/static/images/lottery.jpg', '', 0, 0);

UPDATE  `ims_modules` SET  `version` =  '2.9.2',
`author` =  '微上宝科技',
`url` =  'https://shop140828924.taobao.com' WHERE  `name` ='ewei_shopv2';

SET FOREIGN_KEY_CHECKS=1;