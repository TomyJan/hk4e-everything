DROP DATABASE IF EXISTS `db_hk4e_order_os_beta01`;

CREATE DATABASE IF NOT EXISTS `db_hk4e_order_os_beta01` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

USE `db_hk4e_order_os_beta01`;

CREATE TABLE IF NOT EXISTS `t_order_data` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
    `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '玩家UID',
    `product_id` varchar(128) NOT NULL DEFAULT '' COMMENT '透传的商品id',
    `product_name` varchar(256) NOT NULL DEFAULT '' COMMENT '商品名称',
    `product_num` int(10) NOT NULL DEFAULT '0' COMMENT '商品数量',
    `coin_num` int(10) NOT NULL DEFAULT '0' COMMENT '自定义充值水晶',
    `total_fee` varchar(64) NOT NULL DEFAULT '0' COMMENT '订单金额',
    `currency` varchar(16) NOT NULL DEFAULT '' COMMENT '币种',
    `price_tier` varchar(64) NOT NULL DEFAULT '' COMMENT '价格档位',
    `trade_no` varchar(128) NOT NULL DEFAULT '' COMMENT '流水号全局唯一',
    `trade_time` int(10) NOT NULL DEFAULT '0' COMMENT '交易时间-SDK传来的时间戳',
    `channel_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '渠道id',
    `channel_order_no` varchar(128) NOT NULL DEFAULT '' COMMENT '外部订单号，渠道+订单号唯一确定一个订单',
    `pay_plat` varchar(64) NOT NULL DEFAULT '' COMMENT '支付渠道',
    `extend` varchar(256) NOT NULL DEFAULT '' COMMENT '其它信息',
    `env` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'sandbox - 沙箱环境, prod - 生产环境, prod-os - 海外生产环境（其他值请忽略）',
    `is_sandbox` INT(4) NOT NULL DEFAULT '0' COMMENT '1-沙箱支付，非真钱； 0-真实支付',
    `region` varchar(32) NOT NULL DEFAULT '' COMMENT '区服名',
    `bonus` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '额外赠送代币名',
    `bonus_num` INT(4) NOT NULL DEFAULT '0' COMMENT '额外赠送代币数量',
    `vip_point_num` INT(4) NOT NULL DEFAULT '0' COMMENT '额外赠送的vip点数',
    `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'oaserver生成订单的时间',
    `finish_time` int(10) DEFAULT '0' COMMENT 'gameserver结算订单的时间',
    `pay_type` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '支付方式，仅用于数据平台分析',
    `pay_vendor` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '支付发卡机构，仅用于数据平台分析',
    `client_type` VARCHAR(256) NOT NULL DEFAULT '' COMMENT '充值时使用的设备类，仅用于数据平台分析',
    `device` VARCHAR(256) NOT NULL DEFAULT '' COMMENT '充值时使用的设备，仅用于数据平台分析',
    `client_ip` VARCHAR(46) NOT NULL DEFAULT '' COMMENT '客户端IP地址',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `trade_no` (`trade_no`),
    INDEX `uid_create_finish_time` (`uid`, `create_time`, `finish_time`)
) ENGINE = InnoDB COMMENT = '订单数据';