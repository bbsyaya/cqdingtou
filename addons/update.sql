SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `ims_ewei_shop_pc_adv`;
CREATE TABLE `ims_ewei_shop_pc_adv` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) unsigned NOT NULL,
  `advname` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `src` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `enabled` tinyint(3) unsigned NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `width` int(11) unsigned NOT NULL,
  `height` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `ims_ewei_shop_pc_link`;
CREATE TABLE `ims_ewei_shop_pc_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) unsigned NOT NULL,
  `linkname` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `ims_ewei_shop_pc_menu`;
CREATE TABLE `ims_ewei_shop_pc_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) unsigned NOT NULL,
  `type` int(11) unsigned DEFAULT '0',
  `displayorder` int(11) unsigned DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `enabled` tinyint(3) unsigned DEFAULT '1',
  `createtime` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `ims_ewei_shop_pc_slide`;
CREATE TABLE `ims_ewei_shop_pc_slide` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) unsigned DEFAULT '0',
  `type` int(11) unsigned DEFAULT '0',
  `advname` varchar(50) DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `backcolor` varchar(255) DEFAULT NULL,
  `displayorder` int(11) DEFAULT '0',
  `enabled` int(11) DEFAULT '0',
  `shopid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_enabled` (`enabled`),
  KEY `idx_displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;


ALTER TABLE `ims_ewei_shop_article` MODIFY COLUMN `article_keyword2`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `article_keyword`;
ALTER TABLE `ims_ewei_shop_article` MODIFY COLUMN `uniacid`  int(11) NOT NULL DEFAULT 0 AFTER `article_state`;
ALTER TABLE `ims_ewei_shop_article_category` MODIFY COLUMN `displayorder`  int(11) NOT NULL DEFAULT 0 AFTER `category_name`;
ALTER TABLE `ims_ewei_shop_article_category` MODIFY COLUMN `isshow`  tinyint(1) NOT NULL DEFAULT 0 AFTER `displayorder`;
ALTER TABLE `ims_ewei_shop_article_sys` MODIFY COLUMN `article_source`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `article_keyword`;
ALTER TABLE `ims_ewei_shop_category` MODIFY COLUMN `level`  tinyint(3) NULL DEFAULT NULL AFTER `ishome`;
ALTER TABLE `ims_ewei_shop_commission_apply` MODIFY COLUMN `alipay1`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `realname`;
ALTER TABLE `ims_ewei_shop_commission_apply` MODIFY COLUMN `bankname1`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `alipay1`;
ALTER TABLE `ims_ewei_shop_commission_apply` MODIFY COLUMN `bankcard1`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `bankname1`;
ALTER TABLE `ims_ewei_shop_commission_level` MODIFY COLUMN `ordermoney`  decimal(10,2) NULL DEFAULT 0.00 AFTER `commission3`;
ALTER TABLE `ims_ewei_shop_commission_level` MODIFY COLUMN `ordercount`  int(11) NULL DEFAULT 0 AFTER `ordermoney`;
ALTER TABLE `ims_ewei_shop_commission_level` MODIFY COLUMN `downcount`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `ordercount`;
ALTER TABLE `ims_ewei_shop_commission_level` DROP COLUMN `withdraw`;
ALTER TABLE `ims_ewei_shop_commission_level` DROP COLUMN `repurchase`;
ALTER TABLE `ims_ewei_shop_coupon` MODIFY COLUMN `pwdkey2`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `pwdkey`;
ALTER TABLE `ims_ewei_shop_creditshop_log` MODIFY COLUMN `transid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `verifyopenid`;
ALTER TABLE `ims_ewei_shop_creditshop_log` MODIFY COLUMN `dispatchtransid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `transid`;

ALTER TABLE `ims_ewei_shop_dispatch` ADD COLUMN `freeprice`  decimal(10,2) NOT NULL DEFAULT 0.00 AFTER `isdispatcharea`;
ALTER TABLE `ims_ewei_shop_exchange_code` ADD COLUMN `repeatcount`  int(11) NOT NULL DEFAULT 1 AFTER `goodsstatus`;
ALTER TABLE `ims_ewei_shop_exhelper_sys` MODIFY COLUMN `ip_cloud`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `ip`;
ALTER TABLE `ims_ewei_shop_fullback_goods` MODIFY COLUMN `minallfullbackallratio`  decimal(10,2) NULL DEFAULT NULL AFTER `maxallfullbackallprice`;
ALTER TABLE `ims_ewei_shop_fullback_goods` MODIFY COLUMN `maxallfullbackallratio`  decimal(10,2) NULL DEFAULT NULL AFTER `minallfullbackallratio`;
ALTER TABLE `ims_ewei_shop_fullback_goods` MODIFY COLUMN `fullbackratio`  decimal(10,2) NULL DEFAULT NULL AFTER `fullbackprice`;

ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `tcate`  int(11) NULL DEFAULT 0 AFTER `ccate`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `isdiscount_title`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `isdiscount`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `isdiscount_time`  int(11) NULL DEFAULT 0 AFTER `isdiscount_title`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `isdiscount_discounts`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `isdiscount_time`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `commission`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `commission3_pay`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `followurl`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `needfollow`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `shorttitle`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `deduct`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `detail_logo`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `tcates`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `detail_shopname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `detail_logo`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `detail_totaltitle`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `detail_shopname`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `detail_btntext1`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `detail_totaltitle`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `detail_btnurl1`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `detail_btntext1`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `detail_btntext2`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `detail_btnurl1`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `detail_btnurl2`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `detail_btntext2`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `edareas`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `ednum`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `merchid`  int(11) NULL DEFAULT 0 AFTER `sharebtn`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `checked`  tinyint(3) NULL DEFAULT 0 AFTER `merchid`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `thumb_first`  tinyint(3) NULL DEFAULT 0 AFTER `checked`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `threen`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `unite_total`;
ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `showsales`  tinyint(3) NOT NULL DEFAULT 1 AFTER `nosearch`;

ALTER TABLE `ims_ewei_shop_goods_option` MODIFY COLUMN `allfullbackratio`  decimal(10,2) NULL DEFAULT NULL AFTER `fullbackprice`;
ALTER TABLE `ims_ewei_shop_goods_option` MODIFY COLUMN `fullbackratio`  decimal(10,2) NULL DEFAULT NULL AFTER `allfullbackratio`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `goodssn`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `uniacid`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `productsn`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `goodssn`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `showstock`  tinyint(2) NOT NULL AFTER `category`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `goodsnum`  int(11) NOT NULL DEFAULT 1 AFTER `groupsprice`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `purchaselimit`  int(11) NOT NULL DEFAULT 0 AFTER `goodsnum`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `single`  tinyint(2) NOT NULL DEFAULT 0 AFTER `purchaselimit`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `dispatchtype`  tinyint(2) NOT NULL AFTER `units`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `dispatchid`  int(11) NOT NULL AFTER `dispatchtype`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `isindex`  tinyint(3) NOT NULL DEFAULT 0 AFTER `status`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `followurl`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `followtext`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `thumb_url`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `deduct`;
ALTER TABLE `ims_ewei_shop_groups_goods` DROP COLUMN `ishot`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `credit`  int(11) NULL DEFAULT 0 AFTER `paytime`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `creditmoney`  decimal(11,2) NULL DEFAULT 0.00 AFTER `credit`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `dispatchid`  int(11) NULL DEFAULT NULL AFTER `pay_type`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `addressid`  int(11) NOT NULL DEFAULT 0 AFTER `dispatchid`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `address`  varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `addressid`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `discount`  decimal(10,2) NULL DEFAULT 0.00 AFTER `heads`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `canceltime`  int(11) NOT NULL DEFAULT 0 AFTER `starttime`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `finishtime`  int(11) NOT NULL DEFAULT 0 AFTER `createtime`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `refundid`  int(11) NOT NULL DEFAULT 0 AFTER `finishtime`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `refundstate`  tinyint(2) NOT NULL DEFAULT 0 AFTER `refundid`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `refundtime`  int(11) NOT NULL DEFAULT 0 AFTER `refundstate`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `express`  varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `refundtime`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `expresscom`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `express`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `expresssn`  varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `expresscom`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `sendtime`  int(45) NULL DEFAULT 0 AFTER `expresssn`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `remark`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `sendtime`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `remarkclose`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `remark`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `remarksend`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `remarkclose`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `message`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `remarksend`;
ALTER TABLE `ims_ewei_shop_groups_order` DROP COLUMN `delete`;
ALTER TABLE `ims_ewei_shop_groups_set` MODIFY COLUMN `followqrcode`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `followurl`;
ALTER TABLE `ims_ewei_shop_groups_set` MODIFY COLUMN `share_url`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `share_desc`;
ALTER TABLE `ims_ewei_shop_member` MODIFY COLUMN `agentnotupgrade`  int(11) NULL DEFAULT 0 AFTER `childtime`;
ALTER TABLE `ims_ewei_shop_member` MODIFY COLUMN `username`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `agentblack`;
ALTER TABLE `ims_ewei_shop_member` MODIFY COLUMN `diymemberdataid`  int(11) NULL DEFAULT 0 AFTER `diymemberid`;
ALTER TABLE `ims_ewei_shop_member` MODIFY COLUMN `diymemberdata`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `diymemberdataid`;
ALTER TABLE `ims_ewei_shop_member` MODIFY COLUMN `diycommissionid`  int(11) NULL DEFAULT 0 AFTER `diymemberdata`;
ALTER TABLE `ims_ewei_shop_member` MODIFY COLUMN `diycommissiondataid`  int(11) NULL DEFAULT 0 AFTER `diycommissionid`;
ALTER TABLE `ims_ewei_shop_member` MODIFY COLUMN `diycommissiondata`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `diycommissiondataid`;
ALTER TABLE `ims_ewei_shop_member` MODIFY COLUMN `isblack`  int(11) NULL DEFAULT 0 AFTER `diycommissiondata`;
ALTER TABLE `ims_ewei_shop_member_cart` MODIFY COLUMN `merchid`  int(11) NULL DEFAULT 0 AFTER `selected`;
ALTER TABLE `ims_ewei_shop_member_log` MODIFY COLUMN `transid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `rechargetype`;
ALTER TABLE `ims_ewei_shop_order` MODIFY COLUMN `verifytime`  int(11) NULL DEFAULT 0 AFTER `verifyopenid`;
ALTER TABLE `ims_ewei_shop_order` MODIFY COLUMN `closereason`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `storeid`;
ALTER TABLE `ims_ewei_shop_order` MODIFY COLUMN `remarksaler`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `closereason`;
ALTER TABLE `ims_ewei_shop_order` MODIFY COLUMN `merchid`  int(11) NULL DEFAULT 0 AFTER `verifycodes`;
ALTER TABLE `ims_ewei_shop_order` ADD COLUMN `istrade`  tinyint(3) NOT NULL DEFAULT 0 AFTER `quickid`;
ALTER TABLE `ims_ewei_shop_order` DROP COLUMN `authorid`;
ALTER TABLE `ims_ewei_shop_order` DROP COLUMN `isauthor`;
ALTER TABLE `ims_ewei_shop_order_goods` MODIFY COLUMN `diyformdata`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `commissions`;
ALTER TABLE `ims_ewei_shop_order_goods` MODIFY COLUMN `diyformfields`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `diyformdata`;
ALTER TABLE `ims_ewei_shop_order_goods` MODIFY COLUMN `diyformdataid`  int(11) NULL DEFAULT 0 AFTER `diyformfields`;
ALTER TABLE `ims_ewei_shop_order_goods` MODIFY COLUMN `openid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `diyformdataid`;
ALTER TABLE `ims_ewei_shop_order_goods` MODIFY COLUMN `rstate`  tinyint(3) NULL DEFAULT 0 AFTER `diyformid`;
ALTER TABLE `ims_ewei_shop_order_goods` MODIFY COLUMN `refundtime`  int(11) NULL DEFAULT 0 AFTER `rstate`;
ALTER TABLE `ims_ewei_shop_order_goods` DROP COLUMN `is_make`;
ALTER TABLE `ims_ewei_shop_order_refund` MODIFY COLUMN `realprice`  decimal(10,2) NULL DEFAULT 0.00 AFTER `refundtype`;
ALTER TABLE `ims_ewei_shop_order_refund` MODIFY COLUMN `refundtime`  int(11) NULL DEFAULT 0 AFTER `realprice`;
ALTER TABLE `ims_ewei_shop_perm_log` MODIFY COLUMN `ip`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `op`;
ALTER TABLE `ims_ewei_shop_perm_role` MODIFY COLUMN `perms2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `perms`;
ALTER TABLE `ims_ewei_shop_perm_user` MODIFY COLUMN `perms2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `perms`;
ALTER TABLE `ims_ewei_shop_plugin` MODIFY COLUMN `category`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `identity`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `keyword2`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `keyword`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `resptype`  tinyint(3) NULL DEFAULT 0 AFTER `isdefault`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `resptext`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `resptype`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `scantext`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `recmoney`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `subtext`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `scantext`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `beagent`  tinyint(3) NULL DEFAULT 0 AFTER `subtext`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `bedown`  tinyint(3) NULL DEFAULT 0 AFTER `beagent`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `isopen`  tinyint(3) NULL DEFAULT 0 AFTER `bedown`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `opentext`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `isopen`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `openurl`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `opentext`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `subpaycontent`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `paytype`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `recpaycontent`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `subpaycontent`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `keyword2`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `keyword`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `resptype`  tinyint(3) NULL DEFAULT 0 AFTER `isdefault`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `resptext`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `resptype`;
ALTER TABLE `ims_ewei_shop_poster_qr` MODIFY COLUMN `posterid`  int(11) NULL DEFAULT 0 AFTER `qrimg`;
ALTER TABLE `ims_ewei_shop_quick` ADD COLUMN `merchid`  int(11) NOT NULL DEFAULT 0 AFTER `status`;
ALTER TABLE `ims_ewei_shop_refund_address` MODIFY COLUMN `openid`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' AFTER `uniacid`;
ALTER TABLE `ims_ewei_shop_store` MODIFY COLUMN `type`  tinyint(1) NULL DEFAULT 0 AFTER `status`;
ALTER TABLE `ims_ewei_shop_task_default` ADD COLUMN `bgimg`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `addtime`;
ALTER TABLE `ims_ewei_shop_task_default` ADD COLUMN `open`  tinyint(1) NOT NULL DEFAULT 0 AFTER `bgimg`;

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
(39, 42, 'quick', '快速购买', '1.0', '官方', 1, 'biz', 1,'../addons/ewei_shopv2/static/images/quick.jpg', '', 0, 0),
(40, 43, 'mmanage', '手机端商家管理中心', '1.0', '官方', 1, 'tool',1, '../addons/ewei_shopv2/static/images/mmanage.jpg', '', 0, 0),
(41, 44, 'pc', 'PC端', '1.0', '二开', '1', 'tool', 0,'../addons/ewei_shopv2/static/images/pc.jpg', '',  0, 0);

UPDATE  `ims_modules` SET  `version` =  '2.10.0',
`author` =  '微上宝科技',
`url` =  'https://shop140828924.taobao.com' WHERE  `name` ='ewei_shopv2';

SET FOREIGN_KEY_CHECKS=1;