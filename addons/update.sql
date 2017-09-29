SET FOREIGN_KEY_CHECKS=0;

ALTER TABLE `ims_ewei_shop_coupon` ADD COLUMN `quickget`  tinyint(1) NULL DEFAULT 0 AFTER `limitdiscounttype`;
ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `islive`  int(11) NOT NULL DEFAULT 0 AFTER `showsales`;
ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `liveprice`  decimal(10,2) NOT NULL DEFAULT 0.00 AFTER `islive`;
ALTER TABLE `ims_ewei_shop_goods_option` ADD COLUMN `islive`  int(11) NOT NULL AFTER `isfullback`;
ALTER TABLE `ims_ewei_shop_goods_option` ADD COLUMN `liveprice`  decimal(10,2) NOT NULL DEFAULT 0.00 AFTER `islive`;
CREATE TABLE `ims_ewei_shop_live` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL DEFAULT 0 ,
`merchid`  int(11) NOT NULL DEFAULT 0 ,
`title`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`livetype`  tinyint(3) NOT NULL DEFAULT 0 ,
`liveidentity`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`screen`  tinyint(3) NOT NULL DEFAULT 0 ,
`goodsid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`category`  int(11) NOT NULL DEFAULT 0 ,
`url`  varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`thumb`  varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`hot`  tinyint(3) NOT NULL DEFAULT 0 ,
`recommend`  tinyint(3) NOT NULL DEFAULT 0 ,
`living`  tinyint(3) NOT NULL DEFAULT 0 ,
`status`  tinyint(3) NOT NULL DEFAULT 0 ,
`displayorder`  int(11) NOT NULL DEFAULT 0 ,
`livetime`  int(10) NOT NULL DEFAULT 0 ,
`lastlivetime`  int(11) NOT NULL DEFAULT 0 ,
`createtime`  int(10) NOT NULL DEFAULT 0 ,
`introduce`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`packetmoney`  decimal(10,2) NOT NULL DEFAULT 0.00 ,
`packettotal`  int(11) NOT NULL DEFAULT 0 ,
`packetprice`  decimal(10,2) NOT NULL DEFAULT 0.00 ,
`packetdes`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`couponid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`share_title`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`share_icon`  varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`share_desc`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`share_url`  varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`subscribe`  int(11) NOT NULL DEFAULT 0 ,
`subscribenotice`  tinyint(3) NOT NULL DEFAULT 0 ,
`visit`  int(11) NOT NULL DEFAULT 0 ,
`video`  varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`covertype`  tinyint(3) NOT NULL DEFAULT 0 ,
`cover`  varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`id`),
INDEX `idx_uniacid` (`uniacid`) USING BTREE ,
INDEX `idx_merchid` (`merchid`) USING BTREE ,
INDEX `idx_category` (`category`) USING BTREE ,
INDEX `idx_hot` (`hot`) USING BTREE ,
INDEX `idx_recommend` (`recommend`) USING BTREE ,
INDEX `idx_living` (`living`) USING BTREE ,
INDEX `idx_status` (`status`) USING BTREE ,
INDEX `idx_livetime` (`livetime`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_live_adv` (
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
CREATE TABLE `ims_ewei_shop_live_category` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NULL DEFAULT 0 ,
`name`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`thumb`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`displayorder`  tinyint(3) UNSIGNED NULL DEFAULT 0 ,
`enabled`  tinyint(1) NULL DEFAULT 1 ,
`advimg`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`advurl`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`isrecommand`  tinyint(3) NULL DEFAULT 0 ,
PRIMARY KEY (`id`),
INDEX `idx_uniacid` (`uniacid`) USING BTREE ,
INDEX `idx_displayorder` (`displayorder`) USING BTREE ,
INDEX `idx_enabled` (`enabled`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_live_coupon` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL DEFAULT 0 ,
`roomid`  int(11) NOT NULL DEFAULT 0 ,
`couponid`  int(11) NOT NULL DEFAULT 0 ,
`coupontotal`  int(11) NOT NULL DEFAULT 0 ,
`couponlimit`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`),
INDEX `idx_uniacid` (`uniacid`) USING BTREE ,
INDEX `idx_roomid` (`roomid`) USING BTREE ,
INDEX `idx_couponid` (`couponid`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Fixed
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_live_favorite` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL DEFAULT 0 ,
`roomid`  int(11) NOT NULL DEFAULT 0 ,
`openid`  tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`deleted`  tinyint(3) NOT NULL DEFAULT 0 ,
`createtime`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`),
INDEX `idx_uniacid` (`uniacid`) USING BTREE ,
INDEX `idx_roomid` (`roomid`) USING BTREE ,
INDEX `idx_deleted` (`deleted`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_live_setting` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL DEFAULT 0 ,
`ismember`  tinyint(3) NOT NULL DEFAULT 0 ,
`share_title`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`share_icon`  varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`share_desc`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`share_url`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`livenoticetime`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`),
INDEX `idx_uniacid` (`uniacid`) USING BTREE ,
INDEX `idx_ismember` (`ismember`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_live_view` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL DEFAULT 0 ,
`openid`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`roomid`  int(11) NOT NULL DEFAULT 0 ,
`viewing`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`),
INDEX `idx_uniacid` (`uniacid`) USING BTREE ,
INDEX `idx_roomid` (`roomid`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
ALTER TABLE `ims_ewei_shop_member` ADD COLUMN `membercardid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `updateaddress`;
ALTER TABLE `ims_ewei_shop_member` ADD COLUMN `membercardcode`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `membercardid`;
ALTER TABLE `ims_ewei_shop_member` ADD COLUMN `membershipnumber`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `membercardcode`;
ALTER TABLE `ims_ewei_shop_member` ADD COLUMN `membercardactive`  tinyint(1) NULL DEFAULT 0 AFTER `membershipnumber`;
ALTER TABLE `ims_ewei_shop_merch_user` ADD COLUMN `maxgoods`  int(11) NOT NULL DEFAULT 0 AFTER `upass`;

ALTER TABLE `ims_ewei_shop_order` ADD COLUMN `isnewstore`  tinyint(3) NOT NULL DEFAULT 0 AFTER `istrade`;
ALTER TABLE `ims_ewei_shop_order` ADD COLUMN `liveid`  int(11) NULL DEFAULT NULL AFTER `isnewstore`;
ALTER TABLE `ims_ewei_shop_system_plugingrant_plugin` ADD COLUMN `plugintype`  tinyint(3) NOT NULL DEFAULT 0 AFTER `displayorder`;
ALTER TABLE `ims_ewei_shop_system_plugingrant_plugin` ADD COLUMN `name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `plugintype`;

truncate table ims_ewei_shop_plugin;

INSERT INTO `ims_ewei_shop_plugin` (`id`, `displayorder`, `identity`, `name`, `version`, `author`, `status`, `category`, `thumb`, `desc`, `iscom`, `deprecated`, `isv2`) VALUES
(1, 1, 'qiniu', '七牛存储', '1.0', '官方', 1, 'tool', '../addons/ewei_shopv2/static/images/qiniu.jpg', NULL, 1, 0, 0),
(2, 2, 'taobao', '商品助手', '1.0', '官方', 1, 'tool', '../addons/ewei_shopv2/static/images/taobao.jpg', '', 0, 0, 0),
(3, 3, 'commission', '人人分销', '1.0', '官方', 1, 'biz', '../addons/ewei_shopv2/static/images/commission.jpg', '', 0, 0, 0),
(4, 4, 'poster', '超级海报', '1.2', '官方', 1, 'sale', '../addons/ewei_shopv2/static/images/poster.jpg', '', 0, 0, 0),
(5, 5, 'verify', 'O2O核销', '1.0', '官方', 1, 'biz', '../addons/ewei_shopv2/static/images/verify.jpg', NULL, 1, 0, 0),
(6, 6, 'tmessage', '会员群发', '1.0', '官方', 1, 'tool', '../addons/ewei_shopv2/static/images/tmessage.jpg', NULL, 1, 0, 0),
(7, 7, 'perm', '分权系统', '1.0', '官方', 1, 'help', '../addons/ewei_shopv2/static/images/perm.jpg', NULL, 1, 0, 0),
(8, 8, 'sale', '营销宝', '1.0', '官方', 1, 'sale', '../addons/ewei_shopv2/static/images/sale.jpg', NULL, 1, 0, 0),
(9, 9, 'designer', '店铺装修V1', '1.0', '官方', 1, 'help', '../addons/ewei_shopv2/static/images/designer.jpg', NULL, 0, 1, 0),
(10, 10, 'creditshop', '积分商城', '1.0', '官方', 1, 'biz', '../addons/ewei_shopv2/static/images/creditshop.jpg', '', 0, 0, 0),
(11, 11, 'virtual', '虚拟物品', '1.0', '官方', 1, 'biz', '../addons/ewei_shopv2/static/images/virtual.jpg', NULL, 1, 0, 0),
(12, 11, 'article', '文章营销', '1.0', '官方', 1, 'help', '../addons/ewei_shopv2/static/images/article.jpg', '', 0, 0, 0),
(13, 13, 'coupon', '超级券', '1.0', '官方', 1, 'sale', '../addons/ewei_shopv2/static/images/coupon.jpg', NULL, 1, 0, 0),
(14, 14, 'postera', '活动海报', '1.0', '官方', 1, 'sale', '../addons/ewei_shopv2/static/images/postera.jpg', '', 0, 0, 0),
(15, 16, 'system', '系统工具', '1.0', '官方', 0, 'help', '../addons/ewei_shopv2/static/images/system.jpg', NULL, 0, 1, 0),
(16, 15, 'diyform', '自定表单', '1.0', '官方', 1, 'help', '../addons/ewei_shopv2/static/images/diyform.jpg', '', 0, 0, 0),
(17, 16, 'exhelper', '快递助手', '1.0', '官方', 1, 'help', '../addons/ewei_shopv2/static/images/exhelper.jpg', '', 0, 0, 0),
(18, 19, 'groups', '人人拼团', '1.0', '官方', 1, 'biz', '../addons/ewei_shopv2/static/images/groups.jpg', '', 0, 0, 0),
(19, 20, 'diypage', '店铺装修', '2.0', '官方', 1, 'help', '../addons/ewei_shopv2/static/images/designer.jpg', '', 0, 0, 0),
(20, 22, 'globonus', '全民股东', '1.0', '官方', 1, 'biz', '../addons/ewei_shopv2/static/images/globonus.jpg', '', 0, 0, 0),
(21, 23, 'merch', '多商户', '1.0', '官方', 1, 'biz', '../addons/ewei_shopv2/static/images/merch.jpg', '', 0, 0, 1),
(22, 26, 'qa', '帮助中心', '1.0', '官方', 1, 'help', '../addons/ewei_shopv2/static/images/qa.jpg', '', 0, 0, 1),
(24, 27, 'sms', '短信提醒', '1.0', '官方', 1, 'tool', '../addons/ewei_shopv2/static/images/sms.jpg', '', 1, 0, 1),
(25, 29, 'sign', '积分签到', '1.0', '官方', 1, 'tool', '../addons/ewei_shopv2/static/images/sign.jpg', '', 0, 0, 1),
(26, 30, 'sns', '全民社区', '1.0', '官方', 1, 'sale', '../addons/ewei_shopv2/static/images/sns.jpg', '', 0, 0, 1),
(27, 33, 'wap', '全网通', '1.0', '官方', 1, 'tool', '', '', 1, 0, 1),
(28, 34, 'h5app', 'H5APP', '1.0', '官方', 1, 'tool', '', '', 1, 0, 1),
(29, 26, 'abonus', '区域代理', '1.0', '官方', 1, 'biz', '../addons/ewei_shopv2/static/images/abonus.jpg', '', 0, 0, 1),
(30, 33, 'printer', '小票打印机', '1.0', '官方', 1, 'tool', '', '', 1, 0, 1),
(31, 34, 'bargain', '砍价活动', '1.0', '官方', 1, 'tool', '../addons/ewei_shopv2/static/images/bargain.jpg', '', 0, 0, 1),
(32, 35, 'task', '任务中心', '1.0', '官方', 1, 'sale', '../addons/ewei_shopv2/static/images/task.jpg', '', 0, 0, 1),
(33, 36, 'cashier', '收银台', '1.0', '官方', 1, 'biz', '../addons/ewei_shopv2/static/images/cashier.jpg', '', 0, 0, 1),
(34, 37, 'messages', '消息群发', '1.0', '官方', 1, 'tool', '../addons/ewei_shopv2/static/images/messages.jpg', '', 0, 0, 1),
(35, 38, 'seckill', '整点秒杀', '1.0', '官方', 1, 'sale', '../addons/ewei_shopv2/static/images/seckill.jpg', '', 0, 0, 1),
(36, 39, 'exchange', '兑换中心', '1.0', '官方', 1, 'biz', '../addons/ewei_shopv2/static/images/exchange.jpg', '', 0, 0, 1),
(37, 40, 'lottery', '游戏营销', '1.0', '官方', 1, 'biz', '../addons/ewei_shopv2/static/images/lottery.jpg', '', 0, 0, 1),
(38, 41, 'wxcard', '微信卡券', '1.0', '官方', 1, 'sale', '', '', 1, 0, 1),
(39, 42, 'quick', '快速购买', '1.0', '官方', 1, 'biz', '../addons/ewei_shopv2/static/images/quick.jpg', '', 0, 0, 1),
(40, 43, 'mmanage', '手机端商家管理中心', '1.0', '官方', 1, 'tool', '../addons/ewei_shopv2/static/images/mmanage.jpg', '', 0, 0, 1),
(41, 44, 'pc', 'PC端', '1.0', '二开', 1, 'tool', '../addons/ewei_shopv2/static/images/pc.jpg', '', 0, 0, 0),
(42, 45, 'live', '互动直播', '1.0', '官方', 1, 'sale', '../addons/ewei_shopv2/static/images/live.jpg', '', 0, 0, 1);


UPDATE  `ims_modules` SET  `version` =  '2.10.3',
`author` =  '微上宝科技',
`url` =  'https://shop140828924.taobao.com' WHERE  `name` ='ewei_shopv2';

SET FOREIGN_KEY_CHECKS=1;