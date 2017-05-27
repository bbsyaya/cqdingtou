SET FOREIGN_KEY_CHECKS=0;

ALTER TABLE `ims_ewei_shop_bargain_account` ADD COLUMN `sharestyle`  tinyint(1) NOT NULL DEFAULT 0 AFTER `follow_swi`;
ALTER TABLE `ims_ewei_shop_cashier_pay_log` ADD COLUMN `refunduser`  int(11) NULL DEFAULT 0 AFTER `refundsn`;

CREATE TABLE `ims_ewei_shop_member_mergelog` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL DEFAULT 0 ,
`mergetime`  int(11) NOT NULL DEFAULT 0 ,
`openid_a`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`openid_b`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`mid_a`  int(11) NOT NULL ,
`mid_b`  int(11) NOT NULL ,
`detail_a`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`detail_b`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`detail_c`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`id`),
INDEX `idx_uniacid` (`uniacid`) USING BTREE ,
INDEX `idx_mid_a` (`mid_a`) USING BTREE ,
INDEX `idx_mid_b` (`mid_b`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;

ALTER TABLE `ims_ewei_shop_order_peerpay_payinfo` ADD COLUMN `tid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `refundprice`;
ALTER TABLE `ims_ewei_shop_order_peerpay_payinfo` MODIFY COLUMN `openid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `tid`;

ALTER TABLE `ims_ewei_shop_task_join` MODIFY COLUMN `needcount`  int(11) NOT NULL DEFAULT 0 AFTER `task_type`;
ALTER TABLE `ims_ewei_shop_task_join` MODIFY COLUMN `completecount`  int(11) NOT NULL DEFAULT 0 AFTER `needcount`;


UPDATE  `ims_modules` SET  `version` =  '2.9.9',
`author` =  '微上宝科技',
`url` =  'https://shop140828924.taobao.com' WHERE  `name` ='ewei_shopv2';

SET FOREIGN_KEY_CHECKS=1;