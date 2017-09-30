SET FOREIGN_KEY_CHECKS=0;

ALTER TABLE `ims_ewei_shop_order` ADD COLUMN `ordersn_trade`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `liveid`;
ALTER TABLE `ims_ewei_shop_order` ADD COLUMN `tradestatus`  tinyint(1) NULL DEFAULT 0 AFTER `ordersn_trade`;
ALTER TABLE `ims_ewei_shop_order` ADD COLUMN `tradepaytype`  tinyint(1) NULL DEFAULT NULL AFTER `tradestatus`;
ALTER TABLE `ims_ewei_shop_order` ADD COLUMN `tradepaytime`  int(11) NULL DEFAULT 0 AFTER `tradepaytype`;
ALTER TABLE `ims_ewei_shop_order_goods` ADD COLUMN `prohibitrefund`  tinyint(3) NOT NULL DEFAULT 0 AFTER `remarksend`;
ALTER TABLE `ims_ewei_shop_sms_set` ADD COLUMN `aliyun`  tinyint(3) NOT NULL DEFAULT 0 AFTER `emay_warn_time`;
ALTER TABLE `ims_ewei_shop_sms_set` ADD COLUMN `aliyun_appcode`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `aliyun`;
ALTER TABLE `ims_ewei_shop_store` ADD COLUMN `banner`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `ordertype`;
ALTER TABLE `ims_ewei_shop_store` ADD COLUMN `label`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `banner`;
ALTER TABLE `ims_ewei_shop_store` ADD COLUMN `tag`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `label`;
ALTER TABLE `ims_ewei_shop_store` ADD COLUMN `classify`  tinyint(1) NULL DEFAULT NULL AFTER `tag`;
ALTER TABLE `ims_ewei_shop_store` ADD COLUMN `perms`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `classify`;
ALTER TABLE `ims_ewei_shop_store` ADD COLUMN `citycode`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' AFTER `perms`;
ALTER TABLE `ims_ewei_shop_store` ADD COLUMN `opensend`  tinyint(3) NOT NULL DEFAULT 0 AFTER `citycode`;
ALTER TABLE `ims_ewei_shop_store` ADD COLUMN `province`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `opensend`;
ALTER TABLE `ims_ewei_shop_store` ADD COLUMN `city`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `province`;
ALTER TABLE `ims_ewei_shop_store` ADD COLUMN `area`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `city`;
ALTER TABLE `ims_ewei_shop_store` ADD COLUMN `provincecode`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `area`;
ALTER TABLE `ims_ewei_shop_store` ADD COLUMN `areacode`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `provincecode`;
ALTER TABLE `ims_ewei_shop_store` ADD COLUMN `diypage`  int(11) NOT NULL DEFAULT 0 AFTER `areacode`;
ALTER TABLE `ims_ewei_shop_store` ADD COLUMN `diypage_ispage`  tinyint(3) NOT NULL DEFAULT 0 AFTER `diypage`;
ALTER TABLE `ims_ewei_shop_store` ADD COLUMN `diypage_list`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `diypage_ispage`;
ALTER TABLE `ims_ewei_shop_store` ADD COLUMN `storegroupid`  int(11) NULL DEFAULT NULL AFTER `diypage_list`;

DROP TABLE IF EXISTS `ims_ewei_shop_member_message_template_type`;

CREATE TABLE `ims_ewei_shop_member_message_template_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `typecode` varchar(255) DEFAULT NULL,
  `templatecode` varchar(255) DEFAULT NULL,
  `templateid` varchar(255) DEFAULT NULL,
  `templatename` varchar(255) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `typegroup` varchar(255) DEFAULT '',
  `groupname` varchar(255) DEFAULT '',
  `showtotaladd` tinyint(1) DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (1,'订单付款通知','saler_pay','OPENTM405584202','','订单付款通知','{{first.DATA}}订单编号：{{keyword1.DATA}}商品名称：{{keyword2.DATA}}商品数量：{{keyword3.DATA}}支付金额：{{keyword4.DATA}}{{remark.DATA}}','sys','系统消息通知',0),(2,'自提订单提交成功通知','carrier','OPENTM201594720','','订单付款通知','{{first.DATA}}自提码：{{keyword1.DATA}}商品详情：{{keyword2.DATA}}提货地址：{{keyword3.DATA}}提货时间：{{keyword4.DATA}}{{remark.DATA}}','sys','系统消息通知',0),(3,'订单取消通知','cancel','OPENTM201764653','','订单关闭提醒','{{first.DATA}}订单商品：{{keyword1.DATA}}订单编号：{{keyword2.DATA}}下单时间：{{keyword3.DATA}}订单金额：{{keyword4.DATA}}关闭时间：{{keyword5.DATA}}{{remark.DATA}}','sys','系统消息通知',0),(4,'订单即将取消通知','willcancel','OPENTM201764653','','订单关闭提醒','{{first.DATA}}订单商品：{{keyword1.DATA}}订单编号：{{keyword2.DATA}}下单时间：{{keyword3.DATA}}订单金额：{{keyword4.DATA}}关闭时间：{{keyword5.DATA}}{{remark.DATA}}','sys','系统消息通知',0),(5,'订单支付成功通知','pay','OPENTM405584202','','订单支付通知','{{first.DATA}}订单编号：{{keyword1.DATA}}商品名称：{{keyword2.DATA}}商品数量：{{keyword3.DATA}}支付金额：{{keyword4.DATA}}{{remark.DATA}}','sys','系统消息通知',0),(6,'订单发货通知','send','OPENTM401874827','','订单发货通知','{{first.DATA}}订单编号：{{keyword1.DATA}}快递公司：{{keyword2.DATA}}快递单号：{{keyword3.DATA}}{{remark.DATA}}','sys','系统消息通知',0),(7,'自动发货通知(虚拟物品及卡密)','virtualsend','OPENTM207793687','','自动发货通知','{{first.DATA}}商品名称：{{keyword1.DATA}}订单号：{{keyword2.DATA}}订单金额：{{keyword3.DATA}}卡密信息：{{keyword4.DATA}}{{remark.DATA}}','sys','系统消息通知',0),(8,'订单状态更新(修改收货地址)(修改价格)','orderstatus','TM00017','','订单付款通知','{{first.DATA}}订单编号: {{OrderSn.DATA}}订单状态: {{OrderStatus.DATA}}{{remark.DATA}}','sys','系统消息通知',0),(9,'退款成功通知','refund1','TM00430','','退款成功通知','{{first.DATA}}退款金额：{{orderProductPrice.DATA}}商品详情：{{orderProductName.DATA}}订单编号：{{orderName.DATA}}{{remark.DATA}}','sys','系统消息通知',0),(10,'换货成功通知','refund3','OPENTM200605630','','任务处理通知','{{first.DATA}}任务名称：{{keyword1.DATA}}通知类型：{{keyword2.DATA}}{{remark.DATA}}','sys','系统消息通知',0),(11,'退款申请驳回通知','refund2','OPENTM200605630','','任务处理通知','{{first.DATA}}任务名称：{{keyword1.DATA}}通知类型：{{keyword2.DATA}}{{remark.DATA}}','sys','系统消息通知',0),(12,'充值成功通知','recharge_ok','OPENTM207727673','','充值成功提醒','{{first.DATA}}充值金额：{{keyword1.DATA}}充值时间：{{keyword2.DATA}}账户余额：{{keyword3.DATA}}{{remark.DATA}}','sys','系统消息通知',0),(13,'提现成功通知','withdraw_ok','OPENTM207422808','','提现通知','{{first.DATA}}申请提现金额：{{keyword1.DATA}}取提现手续费：{{keyword2.DATA}}实际到账金额：{{keyword3.DATA}}提现渠道：{{keyword4.DATA}}{{remark.DATA}}','sys','系统消息通知',0),(14,'会员升级通知(任务处理通知)','upgrade','OPENTM200605630','','任务处理通知','{{first.DATA}}任务名称：{{keyword1.DATA}}通知类型：{{keyword2.DATA}}{{remark.DATA}}','sys','系统消息通知',0),(15,'充值成功通知（后台管理员手动）','backrecharge_ok','OPENTM207727673','','充值成功提醒','{{first.DATA}}充值金额：{{keyword1.DATA}}充值时间：{{keyword2.DATA}}账户余额：{{keyword3.DATA}}{{remark.DATA}}','sys','系统消息通知',0),(16,'积分变动提醒','backpoint_ok','OPENTM207509450','','积分变动提醒','{{first.DATA}}获得时间：{{keyword1.DATA}}获得积分：{{keyword2.DATA}}获得原因：{{keyword3.DATA}}当前积分：{{keyword4.DATA}}{{remark.DATA}}','sys','系统消息通知',0),(17,'换货发货通知','refund4','OPENTM401874827','','订单发货通知','{{first.DATA}}订单编号：{{keyword1.DATA}}快递公司：{{keyword2.DATA}}快递单号：{{keyword3.DATA}}{{remark.DATA}}','sys','系统消息通知',0),(18,'砍价活动通知','bargain_message','OPENTM200605630',NULL,'任务处理通知','{{first.DATA}}任务名称：{{keyword1.DATA}}通知类型：{{keyword2.DATA}}{{remark.DATA}}','bargain','砍价消息通知',0),(19,'拼团活动通知','groups',NULL,NULL,NULL,NULL,'groups','拼团消息通知',0),(20,'人人分销通知','commission',NULL,NULL,NULL,NULL,'commission','分销消息通知',0),(21,'商品付款通知','saler_goodpay','OPENTM200605630','','任务处理通知','{{first.DATA}}任务名称：{{keyword1.DATA}}通知类型：{{keyword2.DATA}}{{remark.DATA}}','sys','系统消息通知',0),(22,'砍到底价通知','bargain_fprice','OPENTM200605630','','任务处理通知','{{first.DATA}}任务名称：{{keyword1.DATA}}通知类型：{{keyword2.DATA}}{{remark.DATA}}','bargain','砍价消息通知',0),(23,'订单收货通知(卖家)','saler_finish','OPENTM200605630','','任务处理通知','{{first.DATA}}任务名称：{{keyword1.DATA}}通知类型：{{keyword2.DATA}}{{remark.DATA}}','sys','系统消息通知',0),(24,'余额兑换成功通知','exchange_balance','OPENTM207727673','','充值成功提醒','{{first.DATA}}充值金额：{{keyword1.DATA}}充值时间：{{keyword2.DATA}}账户余额：{{keyword3.DATA}}{{remark.DATA}}','exchange','兑换中心消息通知',0),(25,'积分兑换成功通知','exchange_score','OPENTM207509450','','积分变动提醒','{{first.DATA}}获得时间：{{keyword1.DATA}}获得积分：{{keyword2.DATA}}获得原因：{{keyword3.DATA}}当前积分：{{keyword4.DATA}}{{remark.DATA}}','exchange','兑换中心消息通知',0),(26,'兑换中心余额充值通知','exchange_recharge','OPENTM207727673','','充值成功提醒','{{first.DATA}}充值金额：{{keyword1.DATA}}充值时间：{{keyword2.DATA}}账户余额：{{keyword3.DATA}}{{remark.DATA}}','exchange','兑换中心消息通知',0),(27,'游戏中心通知','lottery_get','OPENTM200605630','','任务处理通知','{{first.DATA}}任务名称：{{keyword1.DATA}}通知类型：{{keyword2.DATA}}{{remark.DATA}}','lottery','抽奖消息通知',0),(35,'库存预警通知','saler_stockwarn','OPENTM200605630','','任务处理通知','{{first.DATA}}任务名称：{{keyword1.DATA}}通知类型：{{keyword2.DATA}}{{remark.DATA}}','sys','系统消息通知',0),(36,'卖家核销商品核销通知','o2o_sverify','OPENTM409521536','','核销成功提醒','{{first.DATA}}核销项目：{{keyword1.DATA}}核销时间：{{keyword2.DATA}}核销门店：{{keyword3.DATA}}{{remark.DATA}}','o2o','O2O消息通知',0),(37,'核销商品核销通知','o2o_bverify','OPENTM409521536','','核销成功提醒','{{first.DATA}}核销项目：{{keyword1.DATA}}核销时间：{{keyword2.DATA}}核销门店：{{keyword3.DATA}}{{remark.DATA}}','o2o','O2O消息通知',0),(38,'卖家商品预约通知','o2o_snorder','OPENTM202447657','','预约成功提醒','{{first.DATA}}预约项目：{{keyword1.DATA}}预约时间：{{keyword2.DATA}}{{remark.DATA}}','o2o','O2O消息通知',0),(39,'商品预约成功通知','o2o_bnorder','OPENTM202447657','','预约成功提醒','{{first.DATA}}预约项目：{{keyword1.DATA}}预约时间：{{keyword2.DATA}}{{remark.DATA}}','o2o','O2O消息通知',0);


UPDATE  `ims_modules` SET  `version` =  '2.10.5',
`author` =  '微上宝科技',
`url` =  'https://shop140828924.taobao.com' WHERE  `name` ='ewei_shopv2';

SET FOREIGN_KEY_CHECKS=1;