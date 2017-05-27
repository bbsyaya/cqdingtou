SET FOREIGN_KEY_CHECKS=0;



ALTER TABLE `ims_ewei_shop_fullback_goods` ADD COLUMN `startday`  int(11) NOT NULL DEFAULT 0 AFTER `optionid`;
ALTER TABLE `ims_ewei_shop_fullback_goods` ADD COLUMN `refund`  tinyint(3) NOT NULL DEFAULT 0 AFTER `startday`;
ALTER TABLE `ims_ewei_shop_fullback_log` ADD COLUMN `goodsid`  int(11) NOT NULL DEFAULT 0 AFTER `isfullback`;
ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `isstatustime`  tinyint(3) NOT NULL DEFAULT 0 AFTER `isfullback`;
ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `statustimestart`  int(10) NOT NULL DEFAULT 0 AFTER `isstatustime`;
ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `statustimeend`  int(10) NOT NULL DEFAULT 0 AFTER `statustimestart`;

UPDATE  `ims_modules` SET  `version` =  '2.9.6',
`author` =  '微上宝科技',
`url` =  'https://shop140828924.taobao.com' WHERE  `name` ='ewei_shopv2';

SET FOREIGN_KEY_CHECKS=1;