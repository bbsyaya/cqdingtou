
SET FOREIGN_KEY_CHECKS=0;

CREATE TABLE `ims_ewei_shop_invitation` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL DEFAULT 0 ,
`type`  tinyint(3) NOT NULL DEFAULT 0 ,
`title`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`data`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`scan`  int(11) NOT NULL DEFAULT 0 ,
`follow`  int(11) NOT NULL DEFAULT 0 ,
`qrcode`  tinyint(3) NOT NULL DEFAULT 0 ,
`status`  tinyint(3) NOT NULL ,
`createtime`  int(11) NOT NULL DEFAULT 0 ,
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
CREATE TABLE `ims_ewei_shop_invitation_log` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uniacid`  int(11) NOT NULL DEFAULT 0 ,
`invitation_id`  int(11) NOT NULL DEFAULT 0 ,
`openid`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`invitation_openid`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`scan_time`  int(10) NOT NULL DEFAULT 0 ,
`follow`  tinyint(3) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`),
INDEX `idx_uniacid` (`uniacid`) USING BTREE ,
INDEX `idx_posterid` (`invitation_id`) USING BTREE ,
INDEX `idx_scantime` (`scan_time`) USING BTREE ,
INDEX `idx_openid` (`openid`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;
CREATE TABLE `ims_ewei_shop_invitation_qr` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`acid`  int(11) NOT NULL DEFAULT 0 ,
`openid`  varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`invitationid`  int(11) NOT NULL ,
`roomid`  int(11) NOT NULL DEFAULT 0 ,
`sceneid`  int(11) NOT NULL ,
`ticket`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`createtime`  int(11) NOT NULL ,
`expire`  int(11) NOT NULL DEFAULT 0 ,
`qrimg`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;

UPDATE  `ims_modules` SET  `version` =  '2.10.7',
`author` =  '微上宝科技',
`url` =  'https://shop140828924.taobao.com' WHERE  `name` ='ewei_shopv2';

SET FOREIGN_KEY_CHECKS=1;