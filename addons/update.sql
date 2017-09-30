SET FOREIGN_KEY_CHECKS=0;
ALTER TABLE `ims_ewei_shop_coupon_data` ADD COLUMN `shareident`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `nocount`;
ALTER TABLE `ims_ewei_shop_coupon_data` ADD COLUMN `textkey`  int(11) NULL DEFAULT NULL AFTER `shareident`;
ALTER TABLE `ims_ewei_shop_diyform_type` ADD COLUMN `savedata`  tinyint(1) NOT NULL DEFAULT 0 AFTER `status`;
ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `verifygoodslimittype`  tinyint(1) NULL DEFAULT 0 AFTER `verifygoodsdays`;
ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `verifygoodslimitdate`  int(11) NULL DEFAULT 0 AFTER `verifygoodslimittype`;
ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `minliveprice`  decimal(10,2) NOT NULL DEFAULT 0.00 AFTER `verifygoodslimitdate`;
ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `maxliveprice`  decimal(10,2) NOT NULL DEFAULT 0.00 AFTER `minliveprice`;
ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `dowpayment`  decimal(10,2) NOT NULL DEFAULT 0.00 AFTER `maxliveprice`;
ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `tempid`  int(11) NOT NULL DEFAULT 0 AFTER `dowpayment`;
ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `isstoreprice`  tinyint(11) NOT NULL DEFAULT 0 AFTER `tempid`;
ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `beforehours`  int(11) NOT NULL DEFAULT 0 AFTER `isstoreprice`;
ALTER TABLE `ims_ewei_shop_live` ADD COLUMN `nestable`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `iscoupon`;
ALTER TABLE `ims_ewei_shop_live` ADD COLUMN `tabs`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `nestable`;
ALTER TABLE `ims_ewei_shop_live` ADD COLUMN `invitation_id`  int(11) NOT NULL DEFAULT 0 AFTER `tabs`;
ALTER TABLE `ims_ewei_shop_live` ADD COLUMN `showlevels`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `invitation_id`;
ALTER TABLE `ims_ewei_shop_live` ADD COLUMN `showgroups`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `showlevels`;
ALTER TABLE `ims_ewei_shop_live` ADD COLUMN `showcommission`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `showgroups`;
ALTER TABLE `ims_ewei_shop_live` ADD COLUMN `jurisdiction_url`  varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `showcommission`;
ALTER TABLE `ims_ewei_shop_live` ADD COLUMN `jurisdictionurl_show`  tinyint(3) NOT NULL DEFAULT 0 AFTER `jurisdiction_url`;
ALTER TABLE `ims_ewei_shop_live` ADD COLUMN `notice`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `jurisdictionurl_show`;
ALTER TABLE `ims_ewei_shop_live` ADD COLUMN `notice_url`  varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `notice`;
ALTER TABLE `ims_ewei_shop_live` ADD COLUMN `followqrcode`  varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `notice_url`;
ALTER TABLE `ims_ewei_shop_live` ADD COLUMN `coupon_num`  int(11) NOT NULL AFTER `followqrcode`;
CREATE TABLE `ims_ewei_shop_live_goods` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL DEFAULT 0 ,
`goodsid`  int(11) NOT NULL DEFAULT 0 ,
`liveid`  int(11) NOT NULL DEFAULT 0 ,
`liveprice`  decimal(10,2) NOT NULL DEFAULT 0.00 ,
`minliveprice`  decimal(10,2) NOT NULL DEFAULT 0.00 ,
`maxliveprice`  decimal(10,2) NOT NULL DEFAULT 0.00 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_live_goods_option` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL DEFAULT 0 ,
`goodsid`  int(11) NOT NULL ,
`optionid`  int(11) NOT NULL DEFAULT 0 ,
`liveid`  int(11) NOT NULL DEFAULT 0 ,
`liveprice`  decimal(10,2) NOT NULL DEFAULT 0.00 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_live_status` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL DEFAULT 0 ,
`roomid`  int(11) NOT NULL DEFAULT 0 ,
`starttime`  int(11) NOT NULL DEFAULT 0 ,
`endtime`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
ALTER TABLE `ims_ewei_shop_member_message_template_type` ADD PRIMARY KEY (`id`);
ALTER TABLE `ims_ewei_shop_member_printer_template` ADD COLUMN `goodssn`  tinyint(1) NOT NULL DEFAULT 0 AFTER `merchid`;
ALTER TABLE `ims_ewei_shop_member_printer_template` ADD COLUMN `productsn`  tinyint(1) NOT NULL DEFAULT 0 AFTER `goodssn`;
CREATE TABLE `ims_ewei_shop_newstore_category` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`uniacid`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
ALTER TABLE `ims_ewei_shop_order` ADD COLUMN `dowpayment`  decimal(10,2) NOT NULL DEFAULT 0.00 AFTER `tradepaytime`;
ALTER TABLE `ims_ewei_shop_order` ADD COLUMN `betweenprice`  decimal(10,2) NOT NULL DEFAULT 0.00 AFTER `dowpayment`;
ALTER TABLE `ims_ewei_shop_order` ADD COLUMN `isshare`  int(11) NOT NULL DEFAULT 0 AFTER `betweenprice`;

ALTER TABLE `ims_ewei_shop_order_goods` ADD COLUMN `storeid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `prohibitrefund`;
ALTER TABLE `ims_ewei_shop_order_goods` ADD COLUMN `trade_time`  int(11) NOT NULL DEFAULT 0 AFTER `storeid`;
ALTER TABLE `ims_ewei_shop_order_goods` ADD COLUMN `optime`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `trade_time`;
ALTER TABLE `ims_ewei_shop_order_goods` ADD COLUMN `tdate_time`  int(11) NOT NULL DEFAULT 0 AFTER `optime`;
ALTER TABLE `ims_ewei_shop_order_goods` ADD COLUMN `dowpayment`  decimal(10,2) NOT NULL DEFAULT 0.00 AFTER `tdate_time`;
ALTER TABLE `ims_ewei_shop_order_goods` ADD COLUMN `peopleid`  int(11) NOT NULL DEFAULT 0 AFTER `dowpayment`;

ALTER TABLE `ims_ewei_shop_plugin` MODIFY COLUMN `category`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `identity`;
CREATE TABLE `ims_ewei_shop_sendticket` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL ,
`cpid`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`expiration`  int(11) NOT NULL DEFAULT 0 ,
`starttime`  int(11) NULL DEFAULT NULL ,
`endtime`  int(11) NULL DEFAULT NULL ,
`status`  int(11) NOT NULL DEFAULT 0 ,
`createtime`  int(11) NOT NULL ,
`title`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '新人礼包' ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_sendticket_draw` (
`id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL ,
`cpid`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`openid`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`createtime`  int(11) NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_sendticket_share` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL ,
`sharetitle`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`shareicon`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`sharedesc`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`expiration`  int(11) NOT NULL DEFAULT 0 ,
`starttime`  int(11) NULL DEFAULT NULL ,
`endtime`  int(11) NULL DEFAULT NULL ,
`paycpid1`  int(11) NULL DEFAULT NULL ,
`paycpid2`  int(11) NULL DEFAULT NULL ,
`paycpid3`  int(11) NULL DEFAULT NULL ,
`paycpnum1`  int(11) NULL DEFAULT NULL ,
`paycpnum2`  int(11) NULL DEFAULT NULL ,
`paycpnum3`  int(11) NULL DEFAULT NULL ,
`sharecpid1`  int(11) NULL DEFAULT NULL ,
`sharecpid2`  int(11) NULL DEFAULT NULL ,
`sharecpid3`  int(11) NULL DEFAULT NULL ,
`sharecpnum1`  int(11) NULL DEFAULT NULL ,
`sharecpnum2`  int(11) NULL DEFAULT NULL ,
`sharecpnum3`  int(11) NULL DEFAULT NULL ,
`status`  int(11) NOT NULL DEFAULT 0 ,
`createtime`  int(11) NOT NULL ,
`order`  int(11) NULL DEFAULT NULL ,
`enough`  decimal(10,2) NULL DEFAULT NULL ,
`issync`  int(11) NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
ALTER TABLE `ims_ewei_shop_store` ADD COLUMN `cates`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `storegroupid`;
ALTER TABLE `ims_ewei_shop_verifygoods` ADD COLUMN `limittype`  tinyint(1) NULL DEFAULT 0 AFTER `cardcode`;
ALTER TABLE `ims_ewei_shop_verifygoods` ADD COLUMN `limitdate`  int(11) NULL DEFAULT 0 AFTER `limittype`;




UPDATE  `ims_modules` SET  `version` =  '2.10.6',
`author` =  '微上宝科技',
`url` =  'https://shop140828924.taobao.com' WHERE  `name` ='ewei_shopv2';

SET FOREIGN_KEY_CHECKS=1;