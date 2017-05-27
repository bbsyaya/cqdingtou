SET FOREIGN_KEY_CHECKS=0;
ALTER TABLE `ims_ewei_message_mass_task` ADD COLUMN `pagecount`  int(11) NULL DEFAULT 0 AFTER `resdesc2`;
ALTER TABLE `ims_ewei_message_mass_task` ADD COLUMN `successnum`  int(11) NULL DEFAULT 0 AFTER `pagecount`;
ALTER TABLE `ims_ewei_message_mass_task` ADD COLUMN `failnum`  int(11) NULL DEFAULT 0 AFTER `successnum`;

ALTER TABLE `ims_ewei_shop_bargain_account` ADD COLUMN `follow_swi`  tinyint(1) NOT NULL DEFAULT 0 AFTER `end_message`;
ALTER TABLE `ims_ewei_shop_cashier_pay_log` MODIFY COLUMN `present_credit1`  int(11) NULL DEFAULT 0 AFTER `usecouponprice`;
ALTER TABLE `ims_ewei_shop_diypage` ADD COLUMN `diyadv`  int(11) NOT NULL DEFAULT 0 AFTER `merch`;
CREATE TABLE `ims_ewei_shop_diypage_plu` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL DEFAULT 0 ,
`type`  int(11) NOT NULL DEFAULT 0 ,
`status`  tinyint(3) NOT NULL DEFAULT 0 ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`data`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`createtime`  int(11) NOT NULL DEFAULT 0 ,
`lastedittime`  int(11) NOT NULL DEFAULT 0 ,
`merch`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`),
INDEX `idx_uniacid` (`uniacid`) USING BTREE ,
INDEX `idx_createtime` (`createtime`) USING BTREE ,
INDEX `idx_lastedittime` (`lastedittime`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `intervalfloor`  tinyint(1) NULL DEFAULT 0 AFTER `threen`;
ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `intervalprice`  varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `intervalfloor`;
ALTER TABLE `ims_ewei_shop_goods_group` ADD COLUMN `merchid`  int(11) NOT NULL DEFAULT 0 AFTER `enabled`;
ALTER TABLE `ims_ewei_shop_member` ADD COLUMN `nickname_wechat`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `openid_wa`;
ALTER TABLE `ims_ewei_shop_member` ADD COLUMN `avatar_wechat`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `nickname_wechat`;
ALTER TABLE `ims_ewei_shop_member_level` ADD COLUMN `buygoods`  tinyint(1) NOT NULL DEFAULT 0 AFTER `enabledadd`;
ALTER TABLE `ims_ewei_shop_member_level` ADD COLUMN `goodsids`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `buygoods`;



UPDATE  `ims_modules` SET  `version` =  '2.9.4',
`author` =  '微上宝科技',
`url` =  'https://shop140828924.taobao.com' WHERE  `name` ='ewei_shopv2';

SET FOREIGN_KEY_CHECKS=1;