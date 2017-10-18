SET FOREIGN_KEY_CHECKS=0;

ALTER TABLE `ims_ewei_shop_cashier_user` ADD COLUMN `notice_openids`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `management`;
ALTER TABLE `ims_ewei_shop_exchange_setting` ADD COLUMN `no_qrimg`  tinyint(3) NOT NULL DEFAULT 1 AFTER `alllimit`;
ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `newgoods`  tinyint(3) NOT NULL DEFAULT 0 AFTER `minpriceupdated`;
ALTER TABLE `ims_ewei_shop_order` ADD COLUMN `officcode`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `isshare`;
ALTER TABLE `ims_ewei_shop_order` ADD COLUMN `wxapp_prepay_id`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `officcode`;
ALTER TABLE `ims_ewei_shop_virtual_data` ADD COLUMN `createtime`  int(11) NOT NULL AFTER `merchid`;
ALTER TABLE `ims_ewei_shop_virtual_type` ADD COLUMN `recycled`  int(11) NOT NULL DEFAULT 0 AFTER `linkurl`;
CREATE TABLE `ims_ewei_shop_wxapp_tmessage` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`templateid`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`datas`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`emphasis_keyword`  int(11) NOT NULL DEFAULT 0 ,
`status`  tinyint(3) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`),
INDEX `idx_uniacid` (`uniacid`) USING BTREE ,
INDEX `idx_status` (`status`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;

UPDATE  `ims_modules` SET  `version` =  '3.0.2',
`author` =  '微上宝科技',
`url` =  'https://shop140828924.taobao.com' WHERE  `name` ='ewei_shopv2';




SET FOREIGN_KEY_CHECKS=1;