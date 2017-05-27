SET FOREIGN_KEY_CHECKS=0;

ALTER TABLE `ims_ewei_shop_cashier_pay_log` ADD COLUMN `refundsn`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `present_credit1`;

CREATE TABLE `ims_ewei_shop_coupon_usesendtasks` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NULL DEFAULT NULL ,
`usecouponid`  int(11) NULL DEFAULT 0 ,
`couponid`  int(11) NULL DEFAULT 0 ,
`starttime`  int(11) NULL DEFAULT 0 ,
`endtime`  int(11) NULL DEFAULT 0 ,
`sendnum`  int(11) NULL DEFAULT 1 ,
`num`  int(11) NULL DEFAULT 0 ,
`status`  tinyint(1) NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Fixed
DELAY_KEY_WRITE=0
;

ALTER TABLE `ims_ewei_shop_express` ADD COLUMN `code`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `displayorder`;


ALTER TABLE `ims_ewei_shop_order_peerpay_payinfo` ADD COLUMN `refundstatus`  tinyint(1) NOT NULL DEFAULT 0 AFTER `headimg`;
ALTER TABLE `ims_ewei_shop_order_peerpay_payinfo` ADD COLUMN `refundprice`  decimal(10,2) NOT NULL DEFAULT 0.00 AFTER `refundstatus`;

CREATE TABLE `ims_ewei_shop_payment` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL DEFAULT 0 ,
`title`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`type`  tinyint(2) NOT NULL DEFAULT 0 ,
`appid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`mch_id`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`apikey`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`sub_appid`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`sub_appsecret`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`sub_mch_id`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`cert_file`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`key_file`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`root_file`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`is_raw`  tinyint(1) NULL DEFAULT 0 ,
`createtime`  int(10) UNSIGNED NULL DEFAULT 0 ,
PRIMARY KEY (`id`),
INDEX `idx_uniacid` (`uniacid`) USING BTREE ,
INDEX `idx_type` (`type`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;

CREATE TABLE `ims_ewei_shop_polyapi_key` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL DEFAULT 0 ,
`merchid`  int(11) NOT NULL DEFAULT 0 ,
`appkey`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`token`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`appsecret`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`createtime`  int(11) NOT NULL DEFAULT 0 ,
`updatetime`  int(11) NOT NULL DEFAULT 0 ,
`status`  tinyint(1) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`),
INDEX `idx_uniacid` (`uniacid`) USING BTREE ,
INDEX `idx_appkey` (`appkey`) USING BTREE ,
INDEX `idx_token` (`token`) USING BTREE ,
INDEX `idx_appsecret` (`appsecret`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;

CREATE TABLE `ims_ewei_shop_task` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL ,
`title`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`type`  int(11) NOT NULL ,
`starttime`  int(11) NOT NULL ,
`endtime`  int(11) NOT NULL ,
`dotime`  int(11) NOT NULL DEFAULT 0 ,
`donetime`  int(11) NOT NULL DEFAULT 0 ,
`timelimit`  float(11,1) NOT NULL ,
`keyword`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`status`  tinyint(1) NOT NULL DEFAULT 0 ,
`explain`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`require_data`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`reward_data`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`period`  int(11) NOT NULL DEFAULT 0 ,
`repeat`  int(11) NOT NULL DEFAULT 0 ,
`maxtimes`  int(11) NOT NULL DEFAULT 0 ,
`everyhours`  float(11,1) NOT NULL DEFAULT 0.0 ,
`logo`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_task_extension` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`taskname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`taskclass`  varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`status`  tinyint(1) NOT NULL DEFAULT 0 ,
`classify`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`classify_name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`verb`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`unit`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_task_extension_join` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL ,
`title`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`uid`  int(11) NOT NULL ,
`taskid`  int(11) NOT NULL ,
`openid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`require_data`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`progress_data`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`reward_data`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`completetime`  int(11) NOT NULL DEFAULT 0 ,
`pickuptime`  int(11) NOT NULL ,
`endtime`  int(11) NOT NULL ,
`dotime`  int(11) NOT NULL DEFAULT 0 ,
`rewarded`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`logo`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;

ALTER TABLE  `ims_ewei_shop_order_peerpay_payinfo` ADD  `openid` VARCHAR( 50 ) NOT NULL;

INSERT INTO `ims_ewei_shop_task_extension` (`id`, `taskname`, `taskclass`, `status`, `classify`, `classify_name`, `verb`, `unit`) VALUES
(1, '推荐人数', 'commission_member', 1, 'number', 'number', '推荐', '人'),
(2, '分销佣金', 'commission_money', 1, 'number', 'number', '达到', '元'),
(3, '分销订单', 'commission_order', 1, 'number', 'number', '达到', '笔'),
(4, '订单满额', 'cost_enough', 1, 'number', 'number', '满', '元'),
(5, '累计金额', 'cost_total', 1, 'number', 'number', '累计', '元'),
(6, '订单数量', 'cost_count', 1, 'number', 'number', '达到', '单'),
(7, '指定商品', 'cost_goods', 1, 'select', 'select', '购买指定商品', '件'),
(8, '商品评价', 'cost_comment', 1, 'number', 'number', '评价订单', '次'),
(9, '累计充值', 'cost_rechargetotal', 1, 'number', 'number', '达到', '元'),
(10, '充值满额', 'cost_rechargeenough', 1, 'number', 'number', '满', '元'),
(11, '完善信息', 'member_info', 1, 'boole', 'boole', '填写手机号', '');

UPDATE  `ims_modules` SET  `version` =  '2.9.8',
`author` =  '微上宝科技',
`url` =  'https://shop140828924.taobao.com' WHERE  `name` ='ewei_shopv2';

SET FOREIGN_KEY_CHECKS=1;