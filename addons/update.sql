SET FOREIGN_KEY_CHECKS=0;

ALTER TABLE `ims_ewei_shop_article` MODIFY COLUMN `article_report`  int(1) NOT NULL DEFAULT 0 AFTER `article_keyword`;
ALTER TABLE `ims_ewei_shop_article` MODIFY COLUMN `product_advs_type`  int(1) NOT NULL DEFAULT 0 AFTER `article_report`;
ALTER TABLE `ims_ewei_shop_article` MODIFY COLUMN `product_advs_title`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `product_advs_type`;
ALTER TABLE `ims_ewei_shop_article` MODIFY COLUMN `product_advs_more`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `product_advs_title`;
ALTER TABLE `ims_ewei_shop_article` MODIFY COLUMN `product_advs_link`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `product_advs_more`;
ALTER TABLE `ims_ewei_shop_article` MODIFY COLUMN `product_advs`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `product_advs_link`;
ALTER TABLE `ims_ewei_shop_article` MODIFY COLUMN `article_state`  int(1) NOT NULL DEFAULT 0 AFTER `product_advs`;
ALTER TABLE `ims_ewei_shop_article` MODIFY COLUMN `network_attachment`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `article_state`;
ALTER TABLE `ims_ewei_shop_article` MODIFY COLUMN `uniacid`  int(11) NOT NULL DEFAULT 0 AFTER `network_attachment`;
ALTER TABLE `ims_ewei_shop_article` MODIFY COLUMN `article_rule_credittotal`  int(11) NULL DEFAULT 0 AFTER `uniacid`;
ALTER TABLE `ims_ewei_shop_article` MODIFY COLUMN `article_rule_moneytotal`  decimal(10,2) NULL DEFAULT 0.00 AFTER `article_rule_credittotal`;
ALTER TABLE `ims_ewei_shop_article` MODIFY COLUMN `article_rule_credit2`  int(11) NOT NULL DEFAULT 0 AFTER `article_rule_moneytotal`;
ALTER TABLE `ims_ewei_shop_article` MODIFY COLUMN `article_rule_money2`  decimal(10,2) NOT NULL DEFAULT 0.00 AFTER `article_rule_credit2`;
ALTER TABLE `ims_ewei_shop_article` MODIFY COLUMN `article_rule_creditm`  int(11) NOT NULL DEFAULT 0 AFTER `article_rule_money2`;
ALTER TABLE `ims_ewei_shop_article` MODIFY COLUMN `article_rule_moneym`  decimal(10,2) NOT NULL DEFAULT 0.00 AFTER `article_rule_creditm`;
ALTER TABLE `ims_ewei_shop_article` MODIFY COLUMN `article_rule_creditm2`  int(11) NOT NULL DEFAULT 0 AFTER `article_rule_moneym`;
ALTER TABLE `ims_ewei_shop_article` MODIFY COLUMN `article_rule_moneym2`  decimal(10,2) NOT NULL DEFAULT 0.00 AFTER `article_rule_creditm2`;
ALTER TABLE `ims_ewei_shop_article` MODIFY COLUMN `article_readtime`  int(11) NULL DEFAULT 0 AFTER `article_rule_moneym2`;
ALTER TABLE `ims_ewei_shop_article` MODIFY COLUMN `article_areas`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `article_readtime`;
ALTER TABLE `ims_ewei_shop_article` MODIFY COLUMN `article_endtime`  int(11) NULL DEFAULT 0 AFTER `article_areas`;
ALTER TABLE `ims_ewei_shop_article` MODIFY COLUMN `article_hasendtime`  tinyint(3) NULL DEFAULT 0 AFTER `article_endtime`;
ALTER TABLE `ims_ewei_shop_article` MODIFY COLUMN `displayorder`  int(11) NULL DEFAULT 0 AFTER `article_hasendtime`;
ALTER TABLE `ims_ewei_shop_article_category` MODIFY COLUMN `uniacid`  int(11) NOT NULL DEFAULT 0 AFTER `category_name`;
ALTER TABLE `ims_ewei_shop_article_sys` MODIFY COLUMN `article_temp`  int(11) NOT NULL DEFAULT 0 AFTER `article_keyword`;
ALTER TABLE `ims_ewei_shop_category` MODIFY COLUMN `advimg`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `ishome`;
ALTER TABLE `ims_ewei_shop_category` MODIFY COLUMN `advurl`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `advimg`;
ALTER TABLE `ims_ewei_shop_commission_apply` MODIFY COLUMN `repurchase`  decimal(10,2) NULL DEFAULT 0.00 AFTER `realname`;
ALTER TABLE `ims_ewei_shop_commission_level` MODIFY COLUMN `commissionmoney`  decimal(10,2) NULL DEFAULT 0.00 AFTER `commission3`;
ALTER TABLE `ims_ewei_shop_commission_level` MODIFY COLUMN `downcount`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `ordermoney`;
ALTER TABLE `ims_ewei_shop_commission_level` ADD COLUMN `withdraw`  decimal(10,2) NULL DEFAULT 0.00 AFTER `ordercount`;
ALTER TABLE `ims_ewei_shop_commission_level` ADD COLUMN `repurchase`  decimal(10,2) NULL DEFAULT 0.00 AFTER `withdraw`;
ALTER TABLE `ims_ewei_shop_coupon` MODIFY COLUMN `pwdsuc`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `pwdkey`;
ALTER TABLE `ims_ewei_shop_coupon` MODIFY COLUMN `pwdfail`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `pwdsuc`;
ALTER TABLE `ims_ewei_shop_coupon` MODIFY COLUMN `pwdurl`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `pwdfail`;
ALTER TABLE `ims_ewei_shop_coupon` MODIFY COLUMN `pwdask`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `pwdurl`;
ALTER TABLE `ims_ewei_shop_coupon` MODIFY COLUMN `pwdstatus`  tinyint(3) NULL DEFAULT 0 AFTER `pwdask`;
ALTER TABLE `ims_ewei_shop_coupon` MODIFY COLUMN `pwdtimes`  int(11) NULL DEFAULT 0 AFTER `pwdstatus`;
ALTER TABLE `ims_ewei_shop_coupon` MODIFY COLUMN `pwdfull`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `pwdtimes`;
ALTER TABLE `ims_ewei_shop_coupon` MODIFY COLUMN `pwdwords`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `pwdfull`;
ALTER TABLE `ims_ewei_shop_coupon` MODIFY COLUMN `pwdopen`  tinyint(3) NULL DEFAULT 0 AFTER `pwdwords`;
ALTER TABLE `ims_ewei_shop_coupon` MODIFY COLUMN `pwdown`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `pwdopen`;
ALTER TABLE `ims_ewei_shop_coupon` MODIFY COLUMN `pwdexit`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `pwdown`;
ALTER TABLE `ims_ewei_shop_coupon` MODIFY COLUMN `pwdexitstr`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `pwdexit`;
ALTER TABLE `ims_ewei_shop_coupon` MODIFY COLUMN `displayorder`  int(11) NULL DEFAULT 0 AFTER `pwdexitstr`;
ALTER TABLE `ims_ewei_shop_creditshop_log` MODIFY COLUMN `storeid`  int(11) NULL DEFAULT 0 AFTER `verifyopenid`;
ALTER TABLE `ims_ewei_shop_creditshop_log` MODIFY COLUMN `realname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `storeid`;
ALTER TABLE `ims_ewei_shop_creditshop_log` MODIFY COLUMN `mobile`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `realname`;
ALTER TABLE `ims_ewei_shop_creditshop_log` MODIFY COLUMN `couponid`  int(11) NULL DEFAULT 0 AFTER `mobile`;
ALTER TABLE `ims_ewei_shop_creditshop_log` MODIFY COLUMN `dupdate1`  tinyint(3) NULL DEFAULT 0 AFTER `couponid`;
ALTER TABLE `ims_ewei_shop_exchange_group` ADD COLUMN `repeat`  tinyint(1) NOT NULL DEFAULT 0 AFTER `remark`;
ALTER TABLE `ims_ewei_shop_exchange_group` ADD COLUMN `koulingstart`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `repeat`;
ALTER TABLE `ims_ewei_shop_exchange_group` ADD COLUMN `koulingend`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `koulingstart`;
ALTER TABLE `ims_ewei_shop_exchange_group` ADD COLUMN `kouling`  tinyint(1) NOT NULL DEFAULT 0 AFTER `koulingend`;
ALTER TABLE `ims_ewei_shop_exchange_group` ADD COLUMN `chufa`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `kouling`;
ALTER TABLE `ims_ewei_shop_exchange_group` ADD COLUMN `chufaend`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `chufa`;
ALTER TABLE `ims_ewei_shop_exhelper_sys` MODIFY COLUMN `port`  int(11) NOT NULL DEFAULT 8000 AFTER `ip`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `type`  tinyint(1) NULL DEFAULT 1 AFTER `ccate`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `status`  tinyint(1) NULL DEFAULT 1 AFTER `type`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `displayorder`  int(11) NULL DEFAULT 0 AFTER `status`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `title`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `displayorder`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `thumb`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `title`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `unit`  varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `thumb`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `description`  varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `unit`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `content`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `description`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `goodssn`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `content`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `productsn`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `goodssn`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `productprice`  decimal(10,2) NULL DEFAULT 0.00 AFTER `productsn`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `marketprice`  decimal(10,2) NULL DEFAULT 0.00 AFTER `productprice`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `costprice`  decimal(10,2) NULL DEFAULT 0.00 AFTER `marketprice`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `originalprice`  decimal(10,2) NULL DEFAULT 0.00 AFTER `costprice`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `total`  int(10) NULL DEFAULT 0 AFTER `originalprice`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `totalcnf`  int(11) NULL DEFAULT 0 AFTER `total`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `sales`  int(11) NULL DEFAULT 0 AFTER `totalcnf`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `salesreal`  int(11) NULL DEFAULT 0 AFTER `sales`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `spec`  varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `salesreal`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `createtime`  int(11) NULL DEFAULT 0 AFTER `spec`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `weight`  decimal(10,2) NULL DEFAULT 0.00 AFTER `createtime`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `credit`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `weight`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `maxbuy`  int(11) NULL DEFAULT 0 AFTER `credit`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `usermaxbuy`  int(11) NULL DEFAULT 0 AFTER `maxbuy`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `hasoption`  int(11) NULL DEFAULT 0 AFTER `usermaxbuy`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `dispatch`  int(11) NULL DEFAULT 0 AFTER `hasoption`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `thumb_url`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `dispatch`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `isnew`  tinyint(1) NULL DEFAULT 0 AFTER `thumb_url`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `ishot`  tinyint(1) NULL DEFAULT 0 AFTER `isnew`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `isdiscount`  tinyint(1) NULL DEFAULT 0 AFTER `ishot`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `isrecommand`  tinyint(1) NULL DEFAULT 0 AFTER `isdiscount`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `issendfree`  tinyint(1) NULL DEFAULT 0 AFTER `isrecommand`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `istime`  tinyint(1) NULL DEFAULT 0 AFTER `issendfree`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `iscomment`  tinyint(1) NULL DEFAULT 0 AFTER `istime`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `timestart`  int(11) NULL DEFAULT 0 AFTER `iscomment`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `timeend`  int(11) NULL DEFAULT 0 AFTER `timestart`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `viewcount`  int(11) NULL DEFAULT 0 AFTER `timeend`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `deleted`  tinyint(3) NULL DEFAULT 0 AFTER `viewcount`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `hascommission`  tinyint(3) NULL DEFAULT 0 AFTER `deleted`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `commission1_rate`  decimal(10,2) NULL DEFAULT 0.00 AFTER `hascommission`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `commission1_pay`  decimal(10,2) NULL DEFAULT 0.00 AFTER `commission1_rate`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `commission2_rate`  decimal(10,2) NULL DEFAULT 0.00 AFTER `commission1_pay`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `commission2_pay`  decimal(10,2) NULL DEFAULT 0.00 AFTER `commission2_rate`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `commission3_rate`  decimal(10,2) NULL DEFAULT 0.00 AFTER `commission2_pay`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `commission3_pay`  decimal(10,2) NULL DEFAULT 0.00 AFTER `commission3_rate`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `score`  decimal(10,2) NULL DEFAULT 0.00 AFTER `commission3_pay`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `taobaoid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `score`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `taotaoid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `taobaoid`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `taobaourl`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `taotaoid`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `updatetime`  int(11) NULL DEFAULT 0 AFTER `taobaourl`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `share_title`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `updatetime`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `share_icon`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `share_title`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `cash`  tinyint(3) NULL DEFAULT 0 AFTER `share_icon`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `commission_thumb`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `cash`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `isnodiscount`  tinyint(3) NULL DEFAULT 0 AFTER `commission_thumb`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `showlevels`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `isnodiscount`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `buylevels`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `showlevels`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `showgroups`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `buylevels`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `buygroups`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `showgroups`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `isverify`  tinyint(3) NULL DEFAULT 0 AFTER `buygroups`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `storeids`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `isverify`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `noticeopenid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `storeids`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `noticetype`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `tcate`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `needfollow`  tinyint(3) NULL DEFAULT 0 AFTER `noticetype`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `followtip`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `needfollow`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `followurl`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `followtip`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `deduct`  decimal(10,2) NULL DEFAULT 0.00 AFTER `followurl`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `virtual`  int(11) NULL DEFAULT 0 AFTER `deduct`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `ccates`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `virtual`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `discounts`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `ccates`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `nocommission`  tinyint(3) NULL DEFAULT 0 AFTER `discounts`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `hidecommission`  tinyint(3) NULL DEFAULT 0 AFTER `nocommission`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `pcates`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `hidecommission`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `tcates`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `pcates`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `cates`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `tcates`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `artid`  int(11) NULL DEFAULT 0 AFTER `cates`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `detail_logo`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `artid`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `detail_shopname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `detail_logo`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `detail_btntext1`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `detail_shopname`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `detail_btnurl1`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `detail_btntext1`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `detail_btntext2`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `detail_btnurl1`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `detail_btnurl2`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `detail_btntext2`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `detail_totaltitle`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `detail_btnurl2`;

ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `ednum`  int(11) NULL DEFAULT 0 AFTER `deduct2`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `edmoney`  decimal(10,2) NULL DEFAULT 0.00 AFTER `ednum`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `edareas`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `edmoney`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `diyformtype`  tinyint(1) NULL DEFAULT 0 AFTER `edareas`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `diyformid`  int(11) NULL DEFAULT 0 AFTER `diyformtype`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `diymode`  tinyint(1) NULL DEFAULT 0 AFTER `diyformid`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `dispatchtype`  tinyint(1) NULL DEFAULT 0 AFTER `diymode`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `dispatchid`  int(11) NULL DEFAULT 0 AFTER `dispatchtype`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `dispatchprice`  decimal(10,2) NULL DEFAULT 0.00 AFTER `dispatchid`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `manydeduct`  tinyint(1) NULL DEFAULT 0 AFTER `dispatchprice`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `shorttitle`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `manydeduct`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `catesinit3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `sharebtn`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `showtotaladd`  tinyint(1) NULL DEFAULT 0 AFTER `catesinit3`;
ALTER TABLE `ims_ewei_shop_goods` MODIFY COLUMN `buyagain_price`  decimal(10,2) NULL DEFAULT 0.00 AFTER `unite_total`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `title`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `uniacid`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `category`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `title`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `stock`  int(11) NOT NULL DEFAULT 0 AFTER `category`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `price`  decimal(10,2) NULL DEFAULT 0.00 AFTER `stock`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `groupsprice`  decimal(10,2) NULL DEFAULT 0.00 AFTER `price`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `singleprice`  decimal(10,2) NULL DEFAULT 0.00 AFTER `groupsprice`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `goodsnum`  int(11) NOT NULL DEFAULT 1 AFTER `singleprice`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `units`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '件' AFTER `goodsnum`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `freight`  decimal(10,2) NULL DEFAULT 0.00 AFTER `units`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `endtime`  int(11) UNSIGNED NOT NULL DEFAULT 0 AFTER `freight`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `groupnum`  int(10) NOT NULL DEFAULT 0 AFTER `endtime`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `sales`  int(10) NOT NULL DEFAULT 0 AFTER `groupnum`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `thumb`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `sales`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `description`  varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `thumb`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `content`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `description`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `createtime`  int(11) UNSIGNED NOT NULL DEFAULT 0 AFTER `content`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `status`  tinyint(3) NOT NULL DEFAULT 0 AFTER `createtime`;
ALTER TABLE `ims_ewei_shop_groups_goods` ADD COLUMN `ishot`  tinyint(3) NOT NULL DEFAULT 0 AFTER `status`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `deleted`  tinyint(3) NOT NULL DEFAULT 0 AFTER `ishot`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `goodsid`  int(11) NOT NULL DEFAULT 0 AFTER `deleted`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `followneed`  tinyint(2) NOT NULL DEFAULT 0 AFTER `goodsid`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `followtext`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `followneed`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `share_title`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `followtext`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `share_icon`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `share_title`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `share_desc`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `share_icon`;
ALTER TABLE `ims_ewei_shop_groups_goods` MODIFY COLUMN `rights`  tinyint(2) NOT NULL DEFAULT 1 AFTER `deduct`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `price`  decimal(11,2) NULL DEFAULT 0.00 AFTER `paytime`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `freight`  decimal(11,2) NULL DEFAULT 0.00 AFTER `price`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `status`  int(9) NOT NULL AFTER `freight`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `pay_type`  varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `status`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `goodid`  int(11) NOT NULL AFTER `pay_type`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `teamid`  int(11) NOT NULL AFTER `goodid`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `is_team`  int(2) NOT NULL AFTER `teamid`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `heads`  int(11) NULL DEFAULT 0 AFTER `is_team`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `starttime`  int(11) NOT NULL AFTER `heads`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `endtime`  int(45) NOT NULL AFTER `starttime`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `createtime`  int(11) NOT NULL AFTER `endtime`;
ALTER TABLE `ims_ewei_shop_groups_order` MODIFY COLUMN `success`  int(2) NOT NULL DEFAULT 0 AFTER `createtime`;
ALTER TABLE `ims_ewei_shop_groups_order` ADD COLUMN `delete`  int(2) NOT NULL DEFAULT 0 AFTER `success`;
ALTER TABLE `ims_ewei_shop_groups_set` MODIFY COLUMN `groupsurl`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `followurl`;
ALTER TABLE `ims_ewei_shop_groups_set` MODIFY COLUMN `share_title`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `groupsurl`;
ALTER TABLE `ims_ewei_shop_groups_set` MODIFY COLUMN `share_icon`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `share_title`;
ALTER TABLE `ims_ewei_shop_groups_set` MODIFY COLUMN `share_desc`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `share_icon`;
ALTER TABLE `ims_ewei_shop_groups_set` MODIFY COLUMN `groups_description`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `share_desc`;
ALTER TABLE `ims_ewei_shop_groups_set` MODIFY COLUMN `description`  int(2) NOT NULL DEFAULT 0 AFTER `groups_description`;
ALTER TABLE `ims_ewei_shop_member` MODIFY COLUMN `inviter`  int(11) NULL DEFAULT 0 AFTER `childtime`;
ALTER TABLE `ims_ewei_shop_member` MODIFY COLUMN `fixagentid`  tinyint(3) NULL DEFAULT 0 AFTER `agentblack`;
ALTER TABLE `ims_ewei_shop_member` MODIFY COLUMN `diymemberid`  int(11) NULL DEFAULT 0 AFTER `fixagentid`;
ALTER TABLE `ims_ewei_shop_member` MODIFY COLUMN `diymemberfields`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `diymemberid`;
ALTER TABLE `ims_ewei_shop_member` MODIFY COLUMN `diymemberdata`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `diymemberfields`;
ALTER TABLE `ims_ewei_shop_member` MODIFY COLUMN `diymemberdataid`  int(11) NULL DEFAULT 0 AFTER `diymemberdata`;
ALTER TABLE `ims_ewei_shop_member` MODIFY COLUMN `diycommissionid`  int(11) NULL DEFAULT 0 AFTER `diymemberdataid`;
ALTER TABLE `ims_ewei_shop_member` MODIFY COLUMN `diycommissionfields`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `diycommissionid`;
ALTER TABLE `ims_ewei_shop_member` MODIFY COLUMN `diycommissiondata`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `diycommissionfields`;
ALTER TABLE `ims_ewei_shop_member` MODIFY COLUMN `diycommissiondataid`  int(11) NULL DEFAULT 0 AFTER `diycommissiondata`;
ALTER TABLE `ims_ewei_shop_member` MODIFY COLUMN `isblack`  int(11) NULL DEFAULT 0 AFTER `diycommissiondataid`;
ALTER TABLE `ims_ewei_shop_member_cart` MODIFY COLUMN `selectedadd`  tinyint(1) NULL DEFAULT 1 AFTER `selected`;
ALTER TABLE `ims_ewei_shop_member_log` MODIFY COLUMN `gives`  decimal(10,2) NULL DEFAULT NULL AFTER `rechargetype`;
ALTER TABLE `ims_ewei_shop_member_log` MODIFY COLUMN `couponid`  int(11) NULL DEFAULT 0 AFTER `gives`;

ALTER TABLE `ims_ewei_shop_order` MODIFY COLUMN `verifycode`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `verifyopenid`;
ALTER TABLE `ims_ewei_shop_order` MODIFY COLUMN `printstate`  tinyint(1) NULL DEFAULT 0 AFTER `storeid`;
ALTER TABLE `ims_ewei_shop_order` MODIFY COLUMN `printstate2`  tinyint(1) NULL DEFAULT 0 AFTER `printstate`;
ALTER TABLE `ims_ewei_shop_order` MODIFY COLUMN `address_send`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `printstate2`;
ALTER TABLE `ims_ewei_shop_order` MODIFY COLUMN `refundstate`  tinyint(3) NULL DEFAULT 0 AFTER `address_send`;
ALTER TABLE `ims_ewei_shop_order` MODIFY COLUMN `invoicename`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `verifycodes`;
ALTER TABLE `ims_ewei_shop_order` ADD COLUMN `authorid`  int(11) NULL DEFAULT 0 AFTER `buyagainprice`;
ALTER TABLE `ims_ewei_shop_order` ADD COLUMN `isauthor`  tinyint(1) NULL DEFAULT 0 AFTER `authorid`;
ALTER TABLE `ims_ewei_shop_order_goods` MODIFY COLUMN `diyformid`  int(11) NULL DEFAULT 0 AFTER `commissions`;
ALTER TABLE `ims_ewei_shop_order_goods` MODIFY COLUMN `diyformdataid`  int(11) NULL DEFAULT 0 AFTER `diyformid`;
ALTER TABLE `ims_ewei_shop_order_goods` MODIFY COLUMN `printstate`  int(11) NOT NULL DEFAULT 0 AFTER `openid`;
ALTER TABLE `ims_ewei_shop_order_goods` MODIFY COLUMN `printstate2`  int(11) NOT NULL DEFAULT 0 AFTER `printstate`;
ALTER TABLE `ims_ewei_shop_order_goods` ADD COLUMN `is_make`  tinyint(1) NULL DEFAULT 0 AFTER `seckill_timeid`;
ALTER TABLE `ims_ewei_shop_order_refund` MODIFY COLUMN `orderprice`  decimal(10,2) NULL DEFAULT 0.00 AFTER `refundtype`;
ALTER TABLE `ims_ewei_shop_order_refund` MODIFY COLUMN `applyprice`  decimal(10,2) NULL DEFAULT 0.00 AFTER `orderprice`;
ALTER TABLE `ims_ewei_shop_order_refund` MODIFY COLUMN `imgs`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `applyprice`;
ALTER TABLE `ims_ewei_shop_order_refund` MODIFY COLUMN `rtype`  tinyint(3) NULL DEFAULT 0 AFTER `imgs`;
ALTER TABLE `ims_ewei_shop_order_refund` MODIFY COLUMN `refundaddress`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `rtype`;
ALTER TABLE `ims_ewei_shop_order_refund` MODIFY COLUMN `message`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `refundaddress`;
ALTER TABLE `ims_ewei_shop_order_refund` MODIFY COLUMN `express`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `message`;
ALTER TABLE `ims_ewei_shop_order_refund` MODIFY COLUMN `expresscom`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `express`;
ALTER TABLE `ims_ewei_shop_order_refund` MODIFY COLUMN `expresssn`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `expresscom`;
ALTER TABLE `ims_ewei_shop_order_refund` MODIFY COLUMN `operatetime`  int(11) NULL DEFAULT 0 AFTER `expresssn`;
ALTER TABLE `ims_ewei_shop_order_refund` MODIFY COLUMN `sendtime`  int(11) NULL DEFAULT 0 AFTER `operatetime`;
ALTER TABLE `ims_ewei_shop_order_refund` MODIFY COLUMN `returntime`  int(11) NULL DEFAULT 0 AFTER `sendtime`;
ALTER TABLE `ims_ewei_shop_order_refund` MODIFY COLUMN `refundtime`  int(11) NULL DEFAULT 0 AFTER `returntime`;
ALTER TABLE `ims_ewei_shop_order_refund` MODIFY COLUMN `rexpress`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `refundtime`;
ALTER TABLE `ims_ewei_shop_order_refund` MODIFY COLUMN `rexpresscom`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `rexpress`;
ALTER TABLE `ims_ewei_shop_order_refund` MODIFY COLUMN `rexpresssn`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `rexpresscom`;
ALTER TABLE `ims_ewei_shop_order_refund` MODIFY COLUMN `refundaddressid`  int(11) NULL DEFAULT 0 AFTER `rexpresssn`;
ALTER TABLE `ims_ewei_shop_order_refund` MODIFY COLUMN `endtime`  int(11) NULL DEFAULT 0 AFTER `refundaddressid`;
ALTER TABLE `ims_ewei_shop_perm_log` MODIFY COLUMN `createtime`  int(11) NULL DEFAULT 0 AFTER `op`;
ALTER TABLE `ims_ewei_shop_perm_role` MODIFY COLUMN `deleted`  tinyint(3) NULL DEFAULT 0 AFTER `perms`;
ALTER TABLE `ims_ewei_shop_perm_user` MODIFY COLUMN `deleted`  tinyint(3) NULL DEFAULT 0 AFTER `perms`;
ALTER TABLE `ims_ewei_shop_perm_user` MODIFY COLUMN `realname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `deleted`;
ALTER TABLE `ims_ewei_shop_perm_user` MODIFY COLUMN `mobile`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `realname`;
ALTER TABLE `ims_ewei_shop_plugin` MODIFY COLUMN `name`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `identity`;
ALTER TABLE `ims_ewei_shop_plugin` MODIFY COLUMN `version`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `name`;
ALTER TABLE `ims_ewei_shop_plugin` MODIFY COLUMN `author`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `version`;
ALTER TABLE `ims_ewei_shop_plugin` MODIFY COLUMN `status`  int(11) NULL DEFAULT 0 AFTER `author`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `times`  int(11) NULL DEFAULT 0 AFTER `keyword`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `follows`  int(11) NULL DEFAULT 0 AFTER `times`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `isdefault`  tinyint(3) NULL DEFAULT 0 AFTER `follows`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `resptitle`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `isdefault`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `respthumb`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `resptitle`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `createtime`  int(11) NULL DEFAULT 0 AFTER `respthumb`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `respdesc`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `createtime`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `respurl`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `respdesc`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `waittext`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `respurl`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `oktext`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `waittext`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `subcredit`  int(11) NULL DEFAULT 0 AFTER `oktext`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `submoney`  decimal(10,2) NULL DEFAULT 0.00 AFTER `subcredit`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `reccredit`  int(11) NULL DEFAULT 0 AFTER `submoney`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `recmoney`  decimal(10,2) NULL DEFAULT 0.00 AFTER `reccredit`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `paytype`  tinyint(1) NOT NULL DEFAULT 0 AFTER `recmoney`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `scantext`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `paytype`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `subtext`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `scantext`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `beagent`  tinyint(3) NULL DEFAULT 0 AFTER `subtext`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `bedown`  tinyint(3) NULL DEFAULT 0 AFTER `beagent`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `isopen`  tinyint(3) NULL DEFAULT 0 AFTER `bedown`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `opentext`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `isopen`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `openurl`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `opentext`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `templateid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `openurl`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `subpaycontent`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `templateid`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `recpaycontent`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `subpaycontent`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `entrytext`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `recpaycontent`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `reccouponid`  int(11) NULL DEFAULT 0 AFTER `entrytext`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `reccouponnum`  int(11) NULL DEFAULT 0 AFTER `reccouponid`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `subcouponid`  int(11) NULL DEFAULT 0 AFTER `reccouponnum`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `subcouponnum`  int(11) NULL DEFAULT 0 AFTER `subcouponid`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `resptype`  tinyint(3) NULL DEFAULT 0 AFTER `subcouponnum`;
ALTER TABLE `ims_ewei_shop_poster` MODIFY COLUMN `resptext`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `resptype`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `isdefault`  tinyint(3) NULL DEFAULT 0 AFTER `keyword`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `resptitle`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `isdefault`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `respthumb`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `resptitle`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `createtime`  int(11) NULL DEFAULT 0 AFTER `respthumb`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `respdesc`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `createtime`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `respurl`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `respdesc`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `waittext`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `respurl`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `oktext`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `waittext`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `subcredit`  int(11) NULL DEFAULT 0 AFTER `oktext`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `submoney`  decimal(10,2) NULL DEFAULT 0.00 AFTER `subcredit`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `reccredit`  int(11) NULL DEFAULT 0 AFTER `submoney`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `recmoney`  decimal(10,2) NULL DEFAULT 0.00 AFTER `reccredit`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `scantext`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `recmoney`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `subtext`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `scantext`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `beagent`  tinyint(3) NULL DEFAULT 0 AFTER `subtext`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `bedown`  tinyint(3) NULL DEFAULT 0 AFTER `beagent`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `isopen`  tinyint(3) NULL DEFAULT 0 AFTER `bedown`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `opentext`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `isopen`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `openurl`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `opentext`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `paytype`  tinyint(1) NOT NULL DEFAULT 0 AFTER `openurl`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `subpaycontent`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `paytype`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `recpaycontent`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `subpaycontent`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `templateid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `recpaycontent`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `entrytext`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `templateid`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `reccouponid`  int(11) NULL DEFAULT 0 AFTER `entrytext`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `reccouponnum`  int(11) NULL DEFAULT 0 AFTER `reccouponid`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `subcouponid`  int(11) NULL DEFAULT 0 AFTER `reccouponnum`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `subcouponnum`  int(11) NULL DEFAULT 0 AFTER `subcouponid`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `timestart`  int(11) NULL DEFAULT 0 AFTER `subcouponnum`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `timeend`  int(11) NULL DEFAULT 0 AFTER `timestart`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `status`  tinyint(3) NULL DEFAULT 0 AFTER `timeend`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `goodsid`  int(11) NULL DEFAULT 0 AFTER `status`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `starttext`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `goodsid`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `endtext`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `starttext`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `resptype`  tinyint(3) NULL DEFAULT 0 AFTER `endtext`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `resptext`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `resptype`;
ALTER TABLE `ims_ewei_shop_postera` MODIFY COLUMN `testflag`  tinyint(1) NULL DEFAULT 0 AFTER `resptext`;
ALTER TABLE `ims_ewei_shop_refund_address` MODIFY COLUMN `title`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `uniacid`;
ALTER TABLE `ims_ewei_shop_refund_address` MODIFY COLUMN `name`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `title`;
ALTER TABLE `ims_ewei_shop_refund_address` MODIFY COLUMN `tel`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `name`;
ALTER TABLE `ims_ewei_shop_refund_address` MODIFY COLUMN `mobile`  varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `tel`;
ALTER TABLE `ims_ewei_shop_refund_address` MODIFY COLUMN `province`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `mobile`;
ALTER TABLE `ims_ewei_shop_refund_address` MODIFY COLUMN `city`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `province`;
ALTER TABLE `ims_ewei_shop_refund_address` MODIFY COLUMN `area`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `city`;
ALTER TABLE `ims_ewei_shop_refund_address` MODIFY COLUMN `address`  varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `area`;
ALTER TABLE `ims_ewei_shop_refund_address` MODIFY COLUMN `isdefault`  tinyint(1) NULL DEFAULT 0 AFTER `address`;
ALTER TABLE `ims_ewei_shop_refund_address` MODIFY COLUMN `zipcode`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `isdefault`;
ALTER TABLE `ims_ewei_shop_refund_address` MODIFY COLUMN `content`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `zipcode`;
ALTER TABLE `ims_ewei_shop_refund_address` MODIFY COLUMN `deleted`  tinyint(1) NULL DEFAULT 0 AFTER `content`;
ALTER TABLE `ims_ewei_shop_store` MODIFY COLUMN `realname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `status`;
ALTER TABLE `ims_ewei_shop_store` MODIFY COLUMN `mobile`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `realname`;
ALTER TABLE `ims_ewei_shop_store` MODIFY COLUMN `fetchtime`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `mobile`;
CREATE TABLE `ims_ewei_shop_system_plugingrant_adv` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`advname`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`link`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`thumb`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`displayorder`  int(11) NULL DEFAULT 0 ,
`enabled`  int(11) NULL DEFAULT 0 ,
PRIMARY KEY (`id`),
INDEX `idx_enabled` (`enabled`) USING BTREE ,
INDEX `idx_displayorder` (`displayorder`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_system_plugingrant_log` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`logno`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`code`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`uniacid`  int(11) NOT NULL DEFAULT 0 ,
`pluginid`  int(11) NOT NULL DEFAULT 0 ,
`identity`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`type`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`month`  int(10) NOT NULL DEFAULT 0 ,
`permendtime`  int(10) NOT NULL DEFAULT 0 ,
`permlasttime`  int(10) NOT NULL DEFAULT 0 ,
`isperm`  tinyint(3) NOT NULL DEFAULT 0 ,
`createtime`  int(10) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_system_plugingrant_order` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`logno`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`code`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`uniacid`  int(11) NOT NULL DEFAULT 0 ,
`username`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`pluginid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`price`  decimal(10,2) NOT NULL DEFAULT 0.00 ,
`month`  int(11) NOT NULL DEFAULT 0 ,
`createtime`  int(10) NOT NULL DEFAULT 0 ,
`paystatus`  tinyint(3) NOT NULL DEFAULT 0 ,
`paytime`  int(10) NOT NULL DEFAULT 0 ,
`paytype`  tinyint(3) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_system_plugingrant_package` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`pluginid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`text`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`thumb`  varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`data`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`state`  tinyint(3) NOT NULL DEFAULT 0 ,
`rec`  tinyint(3) NOT NULL DEFAULT 0 ,
`desc`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`content`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`displayorder`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_system_plugingrant_plugin` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`pluginid`  int(11) NOT NULL DEFAULT 0 ,
`thumb`  varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`data`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`state`  tinyint(3) NOT NULL DEFAULT 0 ,
`content`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`sales`  int(11) NOT NULL DEFAULT 0 ,
`createtime`  int(10) NOT NULL DEFAULT 0 ,
`displayorder`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_system_plugingrant_setting` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`com`  varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`adv`  varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`plugin`  varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`customer`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' ,
`contact`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`servertime`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`weixin`  tinyint(3) NOT NULL DEFAULT 0 ,
`appid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`mchid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`apikey`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`alipay`  tinyint(3) NOT NULL ,
`account`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`partner`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`secret`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;


UPDATE  `ims_modules` SET  `version` =  '2.10.1',
`author` =  '微上宝科技',
`url` =  'https://shop140828924.taobao.com' WHERE  `name` ='ewei_shopv2';

SET FOREIGN_KEY_CHECKS=1;