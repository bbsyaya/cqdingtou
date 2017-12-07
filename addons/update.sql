SET FOREIGN_KEY_CHECKS=0;

ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `video`  varchar(521) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `newgoods`;


UPDATE  `ims_modules` SET  `version` =  '3.1.1',
`author` =  '微上宝科技',
`url` =  'https://shop140828924.taobao.com' WHERE  `name` ='ewei_shopv2';




SET FOREIGN_KEY_CHECKS=1;