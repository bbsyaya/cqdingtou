SET FOREIGN_KEY_CHECKS=0;

ALTER TABLE `ims_ewei_shop_abonus_bill` ADD COLUMN `ceshi`  int(11) NULL DEFAULT NULL AFTER `confirmtime`;

ALTER TABLE `ims_ewei_shop_perm_user` ADD COLUMN `openid_wa`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `openid`;
ALTER TABLE `ims_ewei_shop_perm_user` ADD COLUMN `member_nick`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `openid_wa`;

UPDATE  `ims_modules` SET  `version` =  '3.1.2',
`author` =  '微上宝科技',
`url` =  'https://shop140828924.taobao.com' WHERE  `name` ='ewei_shopv2';




SET FOREIGN_KEY_CHECKS=1;