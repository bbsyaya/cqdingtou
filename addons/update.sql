SET FOREIGN_KEY_CHECKS=0;

ALTER TABLE `ims_ewei_shop_adv` ADD COLUMN `iswxapp`  tinyint(1) NOT NULL DEFAULT 0 AFTER `shopid`;
ALTER TABLE `ims_ewei_shop_banner` ADD COLUMN `iswxapp`  tinyint(1) NOT NULL DEFAULT 0 AFTER `shopid`;

ALTER TABLE `ims_ewei_shop_creditshop_adv` ADD COLUMN `merchid`  int(11) NOT NULL DEFAULT 0 AFTER `enabled`;
ALTER TABLE `ims_ewei_shop_creditshop_comment` ADD COLUMN `merchid`  int(11) NOT NULL DEFAULT 0 AFTER `deleted`;
ALTER TABLE `ims_ewei_shop_creditshop_log` ADD COLUMN `merchid`  int(11) NOT NULL DEFAULT 0 AFTER `verifytime`;
ALTER TABLE `ims_ewei_shop_creditshop_verify` ADD COLUMN `merchid`  int(11) NOT NULL DEFAULT 0 AFTER `verifytime`;

ALTER TABLE `ims_ewei_shop_dispatch` ADD COLUMN `nodispatchareas_code`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `nodispatchareas`;
ALTER TABLE `ims_ewei_shop_dispatch` ADD COLUMN `isdispatcharea`  tinyint(3) NOT NULL DEFAULT 0 AFTER `nodispatchareas_code`;


ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `edareas_code`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `presellsendtime`;
ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `unite_total`  tinyint(3) NOT NULL DEFAULT 0 AFTER `edareas_code`;

ALTER TABLE `ims_ewei_shop_member` ADD COLUMN `datavalue`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `maxcredit`;

ALTER TABLE `ims_ewei_shop_member_address` ADD COLUMN `street`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `deleted`;
ALTER TABLE `ims_ewei_shop_member_address` ADD COLUMN `datavalue`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `street`;
ALTER TABLE `ims_ewei_shop_member_address` ADD COLUMN `streetdatavalue`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `datavalue`;

CREATE TABLE `ims_ewei_shop_member_message_template_default` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`typecode`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`uniacid`  int(11) NULL DEFAULT NULL ,
`templateid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;

ALTER TABLE `ims_ewei_shop_nav` ADD COLUMN `iswxapp`  tinyint(1) NOT NULL DEFAULT 0 AFTER `status`;
ALTER TABLE `ims_ewei_shop_notice` ADD COLUMN `iswxapp`  tinyint(3) NOT NULL DEFAULT 0 AFTER `shopid`;

ALTER TABLE `ims_ewei_shop_order` ADD COLUMN `lotterydiscountprice`  decimal(10,2) NOT NULL DEFAULT 0.00 AFTER `sendtype`;

ALTER TABLE `ims_ewei_shop_order_goods` ADD COLUMN `is_make`  tinyint(1) NULL DEFAULT 0 AFTER `seckill_timeid`;


truncate table ims_ewei_shop_member_message_template_type;
INSERT INTO `ims_ewei_shop_member_message_template_type` (`id`, `name`, `typecode`, `templatecode`, `templateid`, `templatename`, `content`, `showtotaladd`, `typegroup`, `groupname`) VALUES
(1, '订单付款通知', 'saler_pay', 'OPENTM405584202', 'xldHFTObiLLm7AK544PzW4bFJGgbS0o8Po4cXOgYEis', '订单付款通知', '{{first.DATA}}订单编号：{{keyword1.DATA}}商品名称：{{keyword2.DATA}}商品数量：{{keyword3.DATA}}支付金额：{{keyword4.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知'),
(2, '自提订单提交成功通知', 'carrier', 'OPENTM201594720', 'W6-XbT9l2Wb9FUUISss9yVZdPU8iEmEes9IZfvNZnbc', '订单付款通知', '{{first.DATA}}自提码：{{keyword1.DATA}}商品详情：{{keyword2.DATA}}提货地址：{{keyword3.DATA}}提货时间：{{keyword4.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知'),
(3, '订单取消通知', 'cancel', 'OPENTM201764653', 'EA6fL2052fvAs7F9w0Dx_UGbVuXmDFqLcrdT4IukWEY', '订单关闭提醒', '{{first.DATA}}订单商品：{{keyword1.DATA}}订单编号：{{keyword2.DATA}}下单时间：{{keyword3.DATA}}订单金额：{{keyword4.DATA}}关闭时间：{{keyword5.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知'),
(4, '订单即将取消通知', 'willcancel', 'OPENTM201764653', 'EA6fL2052fvAs7F9w0Dx_UGbVuXmDFqLcrdT4IukWEY', '订单关闭提醒', '{{first.DATA}}订单商品：{{keyword1.DATA}}订单编号：{{keyword2.DATA}}下单时间：{{keyword3.DATA}}订单金额：{{keyword4.DATA}}关闭时间：{{keyword5.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知'),
(5, '订单支付成功通知', 'pay', 'OPENTM405584202', 'xldHFTObiLLm7AK544PzW4bFJGgbS0o8Po4cXOgYEis', '订单支付通知', '{{first.DATA}}订单编号：{{keyword1.DATA}}商品名称：{{keyword2.DATA}}商品数量：{{keyword3.DATA}}支付金额：{{keyword4.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知'),
(6, '订单发货通知', 'send', 'OPENTM401874827', 'c0Db6XJBYJ0PcdDyDR5YsoGKy6zfvnQrNM97Ml2hBt4', '订单发货通知', '{{first.DATA}}订单编号：{{keyword1.DATA}}快递公司：{{keyword2.DATA}}快递单号：{{keyword3.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知'),
(7, '自动发货通知(虚拟物品及卡密)', 'virtualsend', 'OPENTM207793687', 'c2kQ5Pf7QkBUXhAVQRGpRusO1BS2uu_IBjPlIZ7IbYo', '自动发货通知', '{{first.DATA}}商品名称：{{keyword1.DATA}}订单号：{{keyword2.DATA}}订单金额：{{keyword3.DATA}}卡密信息：{{keyword4.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知'),
(8, '订单状态更新(修改收货地址)(修改价格)', 'orderstatus', 'TM00017', 'v6w5z7I8FMki08ndnGnfHSyx46eyYq9m_cIZUcvwCgU', '订单付款通知', '{{first.DATA}}订单编号: {{OrderSn.DATA}}订单状态: {{OrderStatus.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知'),
(9, '退款成功通知', 'refund1', 'TM00430', 'ez-VqnyVFEX6msJfoegrwMK2qZ6Va02sbOWvaHIMFNw', '退款成功通知', '{{first.DATA}}退款金额：{{orderProductPrice.DATA}}商品详情：{{orderProductName.DATA}}订单编号：{{orderName.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知'),
(10, '换货成功通知', 'refund3', 'OPENTM200605630', 'uS1mhnM85BtUum0s5xmlfEhnDGupvYqUkjK0A5o0sb8', '任务处理通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}通知类型：{{keyword2.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知'),
(11, '退款申请驳回通知', 'refund2', 'OPENTM200605630', 'uS1mhnM85BtUum0s5xmlfEhnDGupvYqUkjK0A5o0sb8', '任务处理通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}通知类型：{{keyword2.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知'),
(12, '充值成功通知', 'recharge_ok', 'OPENTM207727673', 'PWycmpCcbBEOuB99kZK6Lb_S_Ve6rZoigooR8lHtRHk', '充值成功提醒', '{{first.DATA}}充值金额：{{keyword1.DATA}}充值时间：{{keyword2.DATA}}账户余额：{{keyword3.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知'),
(13, '提现成功通知', 'withdraw_ok', 'OPENTM207422808', 'dpgcRnw1OrF_Beo7kgkK_0ThxcEY3nxpGHUPZ9Q4Yt0', '提现通知', '{{first.DATA}}申请提现金额：{{keyword1.DATA}}取提现手续费：{{keyword2.DATA}}实际到账金额：{{keyword3.DATA}}提现渠道：{{keyword4.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知'),
(14, '会员升级通知(任务处理通知)', 'upgrade', 'OPENTM200605630', 'UhLLmFRFoJB21zWe8Ue6s2Wbs6-hwAIcywjXFPEgAfk', '任务处理通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}通知类型：{{keyword2.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知'),
(15, '充值成功通知（后台管理员手动）', 'backrecharge_ok', 'OPENTM207727673', '8cH0W4PS46ttwb0NKaOsWlZXzp68pFkvhmz8Cx1TFYI', '充值成功提醒', '{{first.DATA}}充值金额：{{keyword1.DATA}}充值时间：{{keyword2.DATA}}账户余额：{{keyword3.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知'),
(16, '积分变动提醒', 'backpoint_ok', 'OPENTM207509450', 't4X8tcZsZRfiLaxvlZSd9QTgmQTZRpy110DgoJeu4DU', '积分变动提醒', '{{first.DATA}}获得时间：{{keyword1.DATA}}获得积分：{{keyword2.DATA}}获得原因：{{keyword3.DATA}}当前积分：{{keyword4.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知'),
(17, '换货发货通知', 'refund4', 'OPENTM401874827', 'c0Db6XJBYJ0PcdDyDR5YsoGKy6zfvnQrNM97Ml2hBt4', '订单发货通知', '{{first.DATA}}订单编号：{{keyword1.DATA}}快递公司：{{keyword2.DATA}}快递单号：{{keyword3.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知'),
(18, '砍价活动通知', 'bargain_message', 'OPENTM200605630', NULL, '任务处理通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}通知类型：{{keyword2.DATA}}{{remark.DATA}}', 0, 'bargain', '砍价消息通知'),
(19, '拼团活动通知', 'groups', NULL, NULL, NULL, NULL, 0, 'groups', '拼团消息通知'),
(20, '人人分销通知', 'commission', NULL, NULL, NULL, NULL, 0, 'commission', '分销消息通知'),
(21, '商品付款通知', 'saler_goodpay', 'OPENTM200605630', '', '任务处理通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}通知类型：{{keyword2.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知'),
(22, '砍到底价通知', 'bargain_fprice', 'OPENTM200605630', '', '任务处理通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}通知类型：{{keyword2.DATA}}{{remark.DATA}}', 0, 'bargain', '砍价消息通知'),
(23, '订单收货通知(卖家)', 'saler_finish', 'OPENTM200605630', '', '任务处理通知', '{{first.DATA}}任务名称：{{keyword1.DATA}}通知类型：{{keyword2.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知'),
(24, '余额兑换成功通知', 'exchange_balance', 'OPENTM207727673', '', '充值成功提醒', '{{first.DATA}}充值金额：{{keyword1.DATA}}充值时间：{{keyword2.DATA}}账户余额：{{keyword3.DATA}}{{remark.DATA}}', 0, 'exchange', '兑换中心消息通知'),
(25, '积分兑换成功通知', 'exchange_score', 'OPENTM207509450', '', '积分变动提醒', '{{first.DATA}}获得时间：{{keyword1.DATA}}获得积分：{{keyword2.DATA}}获得原因：{{keyword3.DATA}}当前积分：{{keyword4.DATA}}{{remark.DATA}}', 0, 'exchange', '兑换中心消息通知'),
(26, '兑换中心余额充值通知', 'exchange_recharge', 'OPENTM207727673', '', '充值成功提醒', '{{first.DATA}}充值金额：{{keyword1.DATA}}充值时间：{{keyword2.DATA}}账户余额：{{keyword3.DATA}}{{remark.DATA}}', 0, 'exchange', '兑换中心消息通知');


UPDATE  `ims_modules` SET  `version` =  '2.9.1',
`author` =  '微上宝科技',
`url` =  'https://shop140828924.taobao.com' WHERE  `name` ='ewei_shopv2';

SET FOREIGN_KEY_CHECKS=1;