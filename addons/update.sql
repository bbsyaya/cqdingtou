SET FOREIGN_KEY_CHECKS=0;
ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `opencard`  tinyint(1) NULL DEFAULT 0 AFTER `liveprice`;
ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `cardid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `opencard`;
ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `verifygoodsnum`  int(11) NULL DEFAULT 1 AFTER `cardid`;
ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `verifygoodsdays`  int(11) NULL DEFAULT 1 AFTER `verifygoodsnum`;
CREATE TABLE `ims_ewei_shop_goods_cards` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NULL DEFAULT NULL ,
`card_id`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`card_title`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`card_brand_name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`card_totalquantity`  int(11) NULL DEFAULT NULL ,
`card_quantity`  int(11) NULL DEFAULT NULL ,
`card_logoimg`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`card_logowxurl`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`card_backgroundtype`  tinyint(1) NULL DEFAULT NULL ,
`color`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`card_backgroundimg`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`card_backgroundwxurl`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`prerogative`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`card_description`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`freewifi`  tinyint(1) NULL DEFAULT NULL ,
`withpet`  tinyint(1) NULL DEFAULT NULL ,
`freepark`  tinyint(1) NULL DEFAULT NULL ,
`deliver`  tinyint(1) NULL DEFAULT NULL ,
`custom_cell1`  tinyint(1) NULL DEFAULT NULL ,
`custom_cell1_name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`custom_cell1_tips`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`custom_cell1_url`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`color2`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
ALTER TABLE `ims_ewei_shop_live` ADD COLUMN `iscoupon`  tinyint(3) NOT NULL DEFAULT 0 AFTER `cover`;
ALTER TABLE `ims_ewei_shop_member_cart` ADD COLUMN `isnewstore`  tinyint(3) NOT NULL DEFAULT 0 AFTER `merchid`;
ALTER TABLE `ims_ewei_shop_poster_qr` MODIFY COLUMN `scenestr`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `qrimg`;
ALTER TABLE `ims_ewei_shop_saler` ADD COLUMN `username`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `salername`;
ALTER TABLE `ims_ewei_shop_saler` ADD COLUMN `pwd`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `username`;
ALTER TABLE `ims_ewei_shop_saler` ADD COLUMN `salt`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `pwd`;
ALTER TABLE `ims_ewei_shop_saler` ADD COLUMN `lastvisit`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `salt`;
ALTER TABLE `ims_ewei_shop_saler` ADD COLUMN `lastip`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `lastvisit`;
ALTER TABLE `ims_ewei_shop_saler` ADD COLUMN `isfounder`  tinyint(3) NULL DEFAULT 0 AFTER `lastip`;
ALTER TABLE `ims_ewei_shop_saler` ADD COLUMN `mobile`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `isfounder`;
ALTER TABLE `ims_ewei_shop_saler` ADD COLUMN `getmessage`  tinyint(1) NULL DEFAULT 0 AFTER `mobile`;
ALTER TABLE `ims_ewei_shop_saler` ADD COLUMN `getnotice`  tinyint(1) NULL DEFAULT 0 AFTER `getmessage`;
ALTER TABLE `ims_ewei_shop_saler` ADD COLUMN `roleid`  int(11) NULL DEFAULT 0 AFTER `getnotice`;
CREATE TABLE `ims_ewei_shop_verifygoods` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NULL DEFAULT NULL ,
`openid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`orderid`  int(11) NULL DEFAULT NULL ,
`ordergoodsid`  int(11) NULL DEFAULT NULL ,
`storeid`  int(11) NULL DEFAULT NULL ,
`starttime`  int(11) NULL DEFAULT NULL ,
`limitdays`  int(11) NULL DEFAULT NULL ,
`limitnum`  int(11) NULL DEFAULT NULL ,
`used`  tinyint(1) NULL DEFAULT 0 ,
`verifycode`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`codeinvalidtime`  int(11) NULL DEFAULT NULL ,
`invalid`  tinyint(1) NULL DEFAULT 0 ,
`getcard`  tinyint(1) NULL DEFAULT 0 ,
`activecard`  tinyint(1) NULL DEFAULT 0 ,
`cardcode`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
PRIMARY KEY (`id`),
UNIQUE INDEX `verifycode` (`verifycode`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_verifygoods_log` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NULL DEFAULT NULL ,
`verifygoodsid`  int(11) NULL DEFAULT NULL ,
`salerid`  int(11) NULL DEFAULT NULL ,
`storeid`  int(11) NULL DEFAULT NULL ,
`verifynum`  int(11) NULL DEFAULT NULL ,
`verifydate`  int(11) NULL DEFAULT NULL ,
`remarks`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;


UPDATE  `ims_modules` SET  `version` =  '2.10.4',
`author` =  '微上宝科技',
`url` =  'https://shop140828924.taobao.com' WHERE  `name` ='ewei_shopv2';

SET FOREIGN_KEY_CHECKS=1;