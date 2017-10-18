SET FOREIGN_KEY_CHECKS=0;
CREATE TABLE `ims_ewei_shop_article_comment` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NULL DEFAULT 0 ,
`articleid`  int(11) NULL DEFAULT 0 ,
`openid`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`nickname`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`headimgurl`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`content`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`reply_createtime`  int(11) NULL DEFAULT NULL ,
`createtime`  int(11) NULL DEFAULT 0 ,
`deleted`  tinyint(3) NULL DEFAULT 0 ,
`status`  tinyint(1) NULL DEFAULT 0 ,
`reply_content`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
PRIMARY KEY (`id`),
INDEX `idx_uniacid` (`uniacid`) USING BTREE ,
INDEX `idx_openid` (`openid`) USING BTREE ,
INDEX `idx_createtime` (`createtime`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_order_print` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`status`  tinyint(3) NULL DEFAULT 0 ,
`sid`  tinyint(3) NULL DEFAULT 0 ,
`foid`  tinyint(3) NULL DEFAULT 0 ,
`oid`  int(11) NULL DEFAULT 0 ,
`pid`  int(11) NULL DEFAULT 0 ,
`uniacid`  int(11) NULL DEFAULT 0 ,
`addtime`  int(11) NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Fixed
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_print` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`status`  tinyint(3) NULL DEFAULT 0 ,
`name`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`print_no`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`key`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`print_nums`  tinyint(3) NULL DEFAULT 0 ,
`uniacid`  int(11) NULL DEFAULT 0 ,
`sid`  tinyint(3) NULL DEFAULT 0 ,
`print_type`  tinyint(3) NULL DEFAULT 0 ,
`qrcode_link`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_version` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uid`  int(11) NOT NULL ,
`type`  tinyint(3) NOT NULL DEFAULT 0 ,
`uniacid`  int(11) NOT NULL ,
`version`  tinyint(3) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`),
INDEX `idx_uid` (`uid`) USING BTREE ,
INDEX `idx_version` (`version`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Fixed
DELAY_KEY_WRITE=0
;



ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `saleupdate`  tinyint(3) NULL DEFAULT 0 AFTER `ednum`;
ALTER TABLE `ims_ewei_shop_member` ADD COLUMN `commission`  decimal(10,2) NULL DEFAULT 0.00 AFTER `weixin`;
ALTER TABLE `ims_ewei_shop_member` ADD COLUMN `commission_pay`  decimal(10,2) NULL DEFAULT 0.00 AFTER `commission`;
ALTER TABLE `ims_ewei_shop_member` ADD COLUMN `idnumber`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `membercardactive`;
ALTER TABLE `ims_ewei_shop_virtual_type` ADD COLUMN `linktext`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `merchid`;
ALTER TABLE `ims_ewei_shop_virtual_type` ADD COLUMN `linkurl`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `linktext`;

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
(42, 45, 'live', '互动直播', '1.0', '官方', 1, 'sale', '../addons/ewei_shopv2/static/images/live.jpg', '', 0, 0, 1),
(43, 46, 'invitation', '邀请卡', '1.0', '官方', 1, 'sale', '../addons/ewei_shopv2/static/images/invitation.png', '', 0, 0, 1);


UPDATE  `ims_modules` SET  `version` =  '3.0.0',
`author` =  '微上宝科技',
`url` =  'https://shop140828924.taobao.com' WHERE  `name` ='ewei_shopv2';




SET FOREIGN_KEY_CHECKS=1;