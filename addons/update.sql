SET FOREIGN_KEY_CHECKS=0;



CREATE TABLE `ims_ewei_shop_fullback_goods` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL DEFAULT 0 ,
`type`  tinyint(3) NOT NULL DEFAULT 0 ,
`goodsid`  int(11) NOT NULL DEFAULT 0 ,
`titles`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`thumb`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`marketprice`  decimal(10,2) NOT NULL DEFAULT 0.00 ,
`minallfullbackallprice`  decimal(10,2) NOT NULL DEFAULT 0.00 ,
`maxallfullbackallprice`  decimal(10,2) NOT NULL ,
`minallfullbackallratio`  tinyint(3) NOT NULL DEFAULT 0 ,
`maxallfullbackallratio`  tinyint(3) NOT NULL ,
`day`  int(11) NOT NULL DEFAULT 0 ,
`fullbackprice`  decimal(10,2) NOT NULL DEFAULT 0.00 ,
`fullbackratio`  tinyint(3) NOT NULL DEFAULT 0 ,
`status`  tinyint(3) NOT NULL DEFAULT 0 ,
`displayorder`  int(11) NOT NULL DEFAULT 0 ,
`hasoption`  tinyint(3) NOT NULL DEFAULT 0 ,
`optionid`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_fullback_log` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL ,
`openid`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`orderid`  int(11) NOT NULL ,
`price`  decimal(10,2) NOT NULL ,
`priceevery`  decimal(10,2) NOT NULL ,
`day`  int(10) NOT NULL ,
`fullbackday`  int(10) NOT NULL ,
`createtime`  int(10) NOT NULL ,
`fullbacktime`  int(10) NOT NULL ,
`isfullback`  tinyint(3) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `isfullback`  tinyint(3) NOT NULL DEFAULT 0 AFTER `intervalprice`;

CREATE TABLE `ims_ewei_shop_goodscode_good` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL ,
`goodsid`  int(11) NOT NULL ,
`title`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`thumb`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`qrcode`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`status`  tinyint(3) NOT NULL ,
`displayorder`  int(11) NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
ALTER TABLE `ims_ewei_shop_goods_option` ADD COLUMN `day`  int(3) NOT NULL AFTER `presellprice`;
ALTER TABLE `ims_ewei_shop_goods_option` ADD COLUMN `allfullbackprice`  decimal(10,2) NOT NULL AFTER `day`;
ALTER TABLE `ims_ewei_shop_goods_option` ADD COLUMN `fullbackprice`  decimal(10,2) NOT NULL AFTER `allfullbackprice`;
ALTER TABLE `ims_ewei_shop_goods_option` ADD COLUMN `allfullbackratio`  tinyint(3) NOT NULL AFTER `fullbackprice`;
ALTER TABLE `ims_ewei_shop_goods_option` ADD COLUMN `fullbackratio`  tinyint(3) NOT NULL AFTER `allfullbackratio`;
ALTER TABLE `ims_ewei_shop_goods_option` ADD COLUMN `isfullback`  tinyint(3) NOT NULL AFTER `fullbackratio`;


ALTER TABLE `ims_ewei_shop_order` ADD COLUMN `quickid`  int(11) NOT NULL DEFAULT 0 AFTER `dispatchkey`;
CREATE TABLE `ims_ewei_shop_order_peerpay` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL DEFAULT 0 ,
`orderid`  int(11) NOT NULL DEFAULT 0 ,
`peerpay_type`  tinyint(1) NOT NULL DEFAULT 0 ,
`peerpay_price`  decimal(10,2) NOT NULL DEFAULT 0.00 ,
`peerpay_maxprice`  decimal(10,2) NOT NULL DEFAULT 0.00 ,
`peerpay_realprice`  decimal(10,2) NOT NULL DEFAULT 0.00 ,
`peerpay_selfpay`  decimal(10,2) NOT NULL DEFAULT 0.00 ,
`peerpay_message`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`status`  tinyint(1) NOT NULL DEFAULT 0 ,
`createtime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`),
INDEX `uniacid` (`uniacid`) USING BTREE ,
INDEX `orderid` (`orderid`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_order_peerpay_payinfo` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`pid`  int(11) NOT NULL DEFAULT 0 ,
`uid`  int(11) NOT NULL DEFAULT 0 ,
`uname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`usay`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`price`  decimal(10,2) NOT NULL DEFAULT 0.00 ,
`createtime`  int(11) NOT NULL DEFAULT 0 ,
`headimg`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_quick` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL ,
`title`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`keyword`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`datas`  mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`cart`  tinyint(3) NOT NULL DEFAULT 0 ,
`createtime`  int(11) NULL DEFAULT NULL ,
`lasttime`  int(11) NULL DEFAULT NULL ,
`share_title`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`share_desc`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`share_icon`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`enter_title`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`enter_desc`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`enter_icon`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`status`  tinyint(3) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_quick_adv` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NULL DEFAULT 0 ,
`merchid`  int(11) NOT NULL DEFAULT 0 ,
`advname`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`link`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`thumb`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`displayorder`  int(11) NULL DEFAULT 0 ,
`enabled`  int(11) NULL DEFAULT 0 ,
PRIMARY KEY (`id`),
INDEX `idx_uniacid` (`uniacid`) USING BTREE ,
INDEX `idx_enabled` (`enabled`) USING BTREE ,
INDEX `idx_displayorder` (`displayorder`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_quick_cart` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL DEFAULT 0 ,
`quickid`  int(11) NOT NULL DEFAULT 0 ,
`openid`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`goodsid`  int(11) NULL DEFAULT 0 ,
`total`  int(11) NULL DEFAULT 0 ,
`marketprice`  decimal(10,2) NULL DEFAULT 0.00 ,
`deleted`  tinyint(1) NULL DEFAULT 0 ,
`optionid`  int(11) NULL DEFAULT 0 ,
`createtime`  int(11) NULL DEFAULT 0 ,
`diyformdataid`  int(11) NULL DEFAULT NULL ,
`diyformdata`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`diyformfields`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`diyformid`  int(11) NULL DEFAULT 0 ,
`selected`  tinyint(1) NULL DEFAULT 1 ,
`merchid`  int(11) NULL DEFAULT 0 ,
`selectedadd`  tinyint(1) NULL DEFAULT 1 ,
PRIMARY KEY (`id`),
INDEX `idx_uniacid` (`uniacid`) USING BTREE ,
INDEX `idx_goodsid` (`goodsid`) USING BTREE ,
INDEX `idx_openid` (`openid`) USING BTREE ,
INDEX `idx_deleted` (`deleted`) USING BTREE ,
INDEX `idx_merchid` (`merchid`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;

ALTER TABLE `ims_ewei_shop_task_poster` MODIFY COLUMN `needcount`  int(11) NOT NULL DEFAULT 0 AFTER `reward_data`;

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
(37, 40, 'lottery', '游戏营销', '1.0', '官方', 1, 'biz', 1, '../addons/ewei_shopv2/static/images/lottery.jpg', '', 0, 0),
(38, 41, 'wxcard', '微信卡券', '1.0', '官方', 1, 'sale', 1,'', '', 1, 0),
(39, 42, 'quick', '快速购买', '1.0', '官方', 1, 'biz', 1,'../addons/ewei_shopv2/static/images/quick.jpg', '', 0, 0);

UPDATE  `ims_modules` SET  `version` =  '2.9.5',
`author` =  '微上宝科技',
`url` =  'https://shop140828924.taobao.com' WHERE  `name` ='ewei_shopv2';

SET FOREIGN_KEY_CHECKS=1;