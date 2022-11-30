DROP DATABASE IF EXISTS `db_hk4e_config_os_beta01`;

CREATE DATABASE IF NOT EXISTS `db_hk4e_config_os_beta01` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

USE `db_hk4e_config_os_beta01`;

CREATE TABLE `t_login_black_uid_config` (
    `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `uid` INT(10) UNSIGNED NOT NULL,
    `begin_time` DATETIME NOT NULL,
    `end_time` DATETIME NOT NULL,
    `msg` VARCHAR(50) NULL DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `uid` (`uid`)
) COMMENT = '登入黑名单配置' ENGINE = InnoDB;

CREATE TABLE `t_mail_block_tag_config` (
    `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `tag` VARCHAR(200) NULL DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE
) COMMENT = '邮件屏蔽标签配置' ENGINE = InnoDB;

CREATE TABLE `t_chat_block_config` (
    `uid` INT(10) UNSIGNED NOT NULL,
    `end_time` DATETIME NOT NULL,
    PRIMARY KEY (`uid`) USING BTREE
) COMMENT = '玩家禁言配置' ENGINE = InnoDB;

CREATE TABLE `t_login_reward_config` (
    `config_id` INT(11) NOT NULL AUTO_INCREMENT,
    `config_type` TINYINT(4) NOT NULL DEFAULT '0',
    `reward_rules` VARCHAR(1024) NOT NULL,
    `email_valid_days` INT(11) NOT NULL,
    `email_title` VARCHAR(200) NOT NULL,
    `email_sender` VARCHAR(200) NOT NULL,
    `email_content` text NOT NULL,
    `item_list` VARCHAR(1024) NOT NULL COMMENT '奖励列表，proto3的json格式',
    `effective_account_type_list` VARCHAR(100) NOT NULL,
    `begin_time` DATETIME NOT NULL,
    `end_time` DATETIME NOT NULL,
    `enabled` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '0不生效，1生效',
    `tag` VARCHAR(200) NOT NULL DEFAULT '' COMMENT '标签',
    `importance` INT(11) NOT NULL DEFAULT '0',
    `is_collectible` TINYINT(4) NOT NULL DEFAULT '0' COMMENT '0不可收藏，1可收藏',
    PRIMARY KEY (`config_id`) USING BTREE
) COMMENT = '每日登入奖励配置' ENGINE = InnoDB;

CREATE TABLE `t_textmap_config` (
    `text_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'textmap的key',
    `delete_time` DATETIME NOT NULL COMMENT '失效时间，时间一到就会删除这条记录',
    `en` TEXT NOT NULL COMMENT '英文',
    `sc` TEXT NOT NULL COMMENT '简体中文',
    `tc` TEXT NOT NULL COMMENT '繁体中文',
    `fr` TEXT NOT NULL COMMENT '法语',
    `de` TEXT NOT NULL COMMENT '德语',
    `es` TEXT NOT NULL COMMENT '西班牙语',
    `pt` TEXT NOT NULL COMMENT '葡萄牙语',
    `ru` TEXT NOT NULL COMMENT '俄语',
    `jp` TEXT NOT NULL COMMENT '日语',
    `kr` TEXT NOT NULL COMMENT '韩语',
    `th` TEXT NOT NULL COMMENT '泰文',
    `vn` TEXT NOT NULL COMMENT '越南语',
    `id` TEXT NOT NULL COMMENT '印尼语',
    `tr` TEXT NOT NULL COMMENT '土耳其语',
    `it` TEXT NOT NULL COMMENT '意大利语',
    PRIMARY KEY (`text_id`) USING BTREE
) COMMENT = '服务端的textmap一般用于邮件，需要控制条目，因为全部加载到内存中' ENGINE = InnoDB;

CREATE TABLE `t_gacha_schedule_config` (
    `schedule_id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '活动ID',
    `gacha_type` INT(11) NOT NULL DEFAULT '0' COMMENT '扭蛋类型',
    `begin_time` DATETIME NOT NULL COMMENT '开始时间',
    `end_time` DATETIME NOT NULL COMMENT '结束时间',
    `cost_item_id` INT(11) UNSIGNED NOT NULL COMMENT '消耗材料ID',
    `cost_item_num` INT(11) UNSIGNED NOT NULL COMMENT '消耗材料数量',
    `gacha_pool_id` INT(11) UNSIGNED NOT NULL COMMENT 'Gacha根ID',
    `gacha_prob_rule_id` INT(11) UNSIGNED NOT NULL COMMENT 'Gacha概率配置ID',
    `gacha_up_config` VARCHAR(512) NOT NULL DEFAULT '' COMMENT 'UP配置',
    `gacha_rule_config` VARCHAR(512) NOT NULL DEFAULT '' COMMENT '保底规则配置',
    `gacha_prefab_path` VARCHAR(512) NOT NULL DEFAULT '' COMMENT '扭蛋Prefab路径',
    `gacha_preview_prefab_path` VARCHAR(512) NOT NULL DEFAULT '' COMMENT '扭蛋预览Prefab路径',
    `gacha_prob_url` VARCHAR(512) NOT NULL DEFAULT '' COMMENT '扭蛋概率展示url',
    `gacha_record_url` VARCHAR(512) NOT NULL DEFAULT '' COMMENT '扭蛋记录url',
    `gacha_prob_url_oversea` VARCHAR(512) NOT NULL DEFAULT '' COMMENT '海外扭蛋概率展示url',
    `gacha_record_url_oversea` VARCHAR(512) NOT NULL DEFAULT '' COMMENT '海外扭蛋记录url',
    `gacha_sort_id` INT(11) UNSIGNED NOT NULL COMMENT '扭蛋排序权重',
    `enabled` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '0不生效，1生效',
    `title_textmap` VARCHAR(256) NOT NULL DEFAULT '' COMMENT 'Gacha显示多语言文本',
    `display_up4_item_list` VARCHAR(512) NOT NULL DEFAULT '' COMMENT '显示up4星物品',
    PRIMARY KEY (`schedule_id`) USING BTREE
) COMMENT = '扭蛋活动配置' ENGINE = InnoDB;

CREATE TABLE `t_luashell_config` (
    `luashell_config_id` INT(11) UNSIGNED NOT NULL,
    `lua_shell` MEDIUMBLOB NOT NULL COMMENT 'lua脚本',
    `uid_list` VARCHAR(4096) NOT NULL DEFAULT '' COMMENT '白名单多个,隔开，空表示不开启白名单',
    `platform_type_list` VARCHAR(4096) NOT NULL DEFAULT '' COMMENT '(如安卓 ios) 多个,隔开，空表示对平台不做要求',
    `percent` TINYINT(3) NOT NULL DEFAULT '0' COMMENT '灰度百分比',
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
    `protocol_type` INT(2) UNSIGNED NOT NULL DEFAULT 0 COMMENT '协议类型',
    `use_type` INT(11) UNSIGNED NOT NULL DEFAULT '1' COMMENT '用于标识luashell的用途：1.普通luashell；2.安全库lua',
    `is_check_client_report` TINYINT(1) NOT NULL DEFAULT '0' COMMENT '是否检查客户端回复上报',
    `is_kick` TINYINT(1) NOT NULL DEFAULT '0' COMMENT '检查客户端回复失败后是否踢下线',
    `check_json_key` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '检查客户端回复的key的字符串',
    `channel` INT(11) NOT NULL DEFAULT '0' COMMENT '下发通道',
    PRIMARY KEY (`luashell_config_id`) USING BTREE
) COMMENT = 'luashell 配置表' ENGINE = InnoDB;

CREATE TABLE `t_mtp_blacklist_config` (
    `ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '默认主键',
    `type` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '对抗类型',
    PRIMARY KEY (`ID`) USING BTREE
) COMMENT = 'MTP要踢下线的黑名单ID' ENGINE = InnoDB;

CREATE TABLE `t_announce_config` (
    `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `begin_time` DATETIME NOT NULL COMMENT '开始时间',
    `end_time` DATETIME NOT NULL COMMENT '结束时间',
    `center_system_text` VARCHAR(200) NOT NULL DEFAULT '' COMMENT '中央系统提示文本',
    `count_down_text` VARCHAR(200) NOT NULL DEFAULT '' COMMENT '倒计时提示文本',
    `dungeon_confirm_text` VARCHAR(200) NOT NULL DEFAULT '' COMMENT '地下城确认框文本',
    `center_system_frequency` INT(11) NOT NULL COMMENT '跑马灯频率',
    `count_down_frequency` INT(11) NOT NULL COMMENT '倒计时频率',
    `channel_config_str` VARCHAR(50) NOT NULL COMMENT '渠道配置',
    `is_center_system_last_5_every_minutes` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '跑马灯最后5分钟每分钟通知',
    `channel_id_list` VARCHAR(50) NOT NULL COMMENT '渠道ID列表',
    `platform_type_list` VARCHAR(50) NOT NULL COMMENT '客户端平台类型',
    `enable` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '是否有效',
    `server_version` VARCHAR(64) NOT NULL,
    PRIMARY KEY (`id`) USING BTREE
) COMMENT = '预告功能配置表' ENGINE = InnoDB AUTO_INCREMENT = 48;

CREATE TABLE `t_sign_in_schedule_config` (
    `schedule_id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '排期ID',
    `config_id` INT(11) NOT NULL DEFAULT '0' COMMENT '签到配置ID',
    `begin_time` DATETIME NOT NULL COMMENT '开始时间',
    `end_time` DATETIME NOT NULL COMMENT '结束时间',
    PRIMARY KEY (`schedule_id`) USING BTREE
) COMMENT = '签到活动配置' ENGINE = InnoDB;

CREATE TABLE `t_activity_schedule_config` (
    `schedule_id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '排期ID',
    `begin_time` DATETIME NOT NULL COMMENT '开始时间',
    `end_time` DATETIME NOT NULL COMMENT '结束时间',
    PRIMARY KEY (`schedule_id`) USING BTREE
) COMMENT = '活动排期表' ENGINE = InnoDB;

CREATE TABLE `t_cmd_frequency_config` (
    `cmd_id` INT(7) UNSIGNED NOT NULL,
    `frequency_limit` FLOAT NOT NULL COMMENT '单位时间内最大收包量',
    `discard_packet_freq_limit` FLOAT NOT NULL COMMENT '超过此频率时丢弃本次协议包',
    `disconnect_freq_limit` FLOAT NOT NULL COMMENT '超过此频率时踢玩家下线'
) COMMENT = '协议频率限制配置' ENGINE = InnoDB;

CREATE TABLE `t_cmd_str_frequency_config` (
    `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `cmd_str` VARCHAR(200) NOT NULL COMMENT '通信包名',
    `frequency_limit` FLOAT NOT NULL COMMENT '单位时间内最大收包量',
    `discard_packet_freq_limit` FLOAT NOT NULL COMMENT '超过此频率时丢弃本次协议包',
    `disconnect_freq_limit` FLOAT NOT NULL COMMENT '超过此频率时踢玩家下线',
    PRIMARY KEY (`id`) USING BTREE
) COMMENT = '协议频率限制配置' ENGINE = InnoDB;

CREATE TABLE `t_feature_switch_off_config` (
    `id` INT(11) UNSIGNED NOT NULL,
    `type` INT(11) UNSIGNED NOT NULL,
    `msg` VARCHAR(1000) NOT NULL DEFAULT '',
    PRIMARY KEY (`id`) USING BTREE
) COMMENT = '关闭系统开关表' ENGINE = InnoDB;

CREATE TABLE `t_register_black_ip_config` (
    `ip` VARCHAR(64) NOT NULL,
    `ip_desc` VARCHAR(256) NOT NULL DEFAULT '' COMMENT 'IP地址备注信息',
    PRIMARY KEY (`ip`) USING BTREE
) COMMENT = '注册ip黑名单' ENGINE = InnoDB;

CREATE TABLE `t_activity_data` (
    `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `activity_id` INT(4) UNSIGNED NOT NULL,
    `schedule_id` INT(4) UNSIGNED NOT NULL,
    `activity_type` INT(4) UNSIGNED NOT NULL COMMENT '活动类型，避免策划activity_id做新的活动',
    `bin_data` BLOB NOT NULL COMMENT '使用protobuf序列化后的二进制字段',
    `update_time` DATETIME NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `activity_schedule_id` (`activity_id`, `schedule_id`)
) COMMENT = '全服活动存档数据' ENGINE = InnoDB;

CREATE TABLE `t_rebate_config` (
    `account_type` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '账号类型',
    `account_uid` VARCHAR(128) NOT NULL DEFAULT '' COMMENT '绑定的账号UID',
    `item_list` VARCHAR(128) NOT NULL DEFAULT '' COMMENT '充值返利道具列表，先逗号再冒号分隔',
    PRIMARY KEY (`account_type`, `account_uid`) USING BTREE
) COMMENT = '充值返利名单' ENGINE = InnoDB;

CREATE TABLE `t_inject_fix_config` (
    `config_id` INT(11) UNSIGNED NOT NULL,
    `inject_fix` BLOB NOT NULL COMMENT 'inject_fix',
    `uid_list` VARCHAR(4096) NOT NULL DEFAULT '' COMMENT '白名单多个,隔开，空表示不开启白名单',
    `platform_type_list` VARCHAR(4096) NOT NULL DEFAULT '' COMMENT '(如安卓 ios) 多个,隔开，空表示对平台不做要求',
    `percent` TINYINT(3) NOT NULL DEFAULT '0' COMMENT '灰度百分比',
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (`config_id`) USING BTREE
) COMMENT = 'inject_fix 配置表' ENGINE = InnoDB;

CREATE TABLE `t_battle_pass_schedule_config` (
    `schedule_id` INT(11) NOT NULL COMMENT '排期ID, 与Excel中配置一致',
    `begin_date` DATE NOT NULL COMMENT '开始日期',
    `end_date` DATE NOT NULL COMMENT '结束日期',
    PRIMARY KEY (`schedule_id`) USING BTREE
) COMMENT = '战令(BattlePass)排期配置表' ENGINE = InnoDB;

CREATE TABLE `t_anti_offline_whitelist` (
    `uid` INT(10) UNSIGNED NOT NULL,
    PRIMARY KEY (`uid`) USING BTREE
) COMMENT = '反脱机挂强对抗白名单' ENGINE = InnoDB;

CREATE TABLE `t_login_black_ip_config` (
    `ip` INT(10) UNSIGNED NOT NULL,
    `ip_str` VARCHAR(64) NOT NULL COMMENT '对应的字符串',
    PRIMARY KEY (`ip`) USING BTREE
) COMMENT = '注册&登录ip黑名单' ENGINE = InnoDB;

CREATE TABLE `t_feature_block_config` (
    `uid` INT(10) UNSIGNED NOT NULL,
    `type` INT(11) UNSIGNED NOT NULL,
    `end_time` DATETIME NOT NULL,
    `begin_time` DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00',
    PRIMARY KEY (`uid`, `type`) USING BTREE,
    INDEX `uid` (`uid`)
) COMMENT = '玩家玩法封禁配置' ENGINE = InnoDB;

CREATE TABLE `t_op_activity_schedule_config` (
    `schedule_id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '排期ID',
    `config_id` INT(11) NOT NULL DEFAULT '0' COMMENT '活动配置ID',
    `begin_time` DATETIME NOT NULL COMMENT '开始时间',
    `end_time` DATETIME NOT NULL COMMENT '结束时间',
    PRIMARY KEY (`schedule_id`) USING BTREE
) COMMENT = '运营活动配置' ENGINE = InnoDB;

CREATE TABLE `t_mtp_whitelist_config` (
    `id` INT(11) NOT NULL COMMENT 'mtp上报id',
    `reason` VARCHAR(512) NOT NULL COMMENT 'mtp上报id对应的reason',
    `match_type` INT(11) NOT NULL COMMENT '匹配类型：1、2、3分别表示包含、开头、单一'
) COMMENT = 'MTP白名单' ENGINE = InnoDB;

CREATE TABLE `t_h5_activity_schedule_config` (
    `schedule_id` INT(11) NOT NULL COMMENT '排期ID',
    `activity_id` INT(11) NOT NULL COMMENT '活动ID',
    `begin_time` DATETIME NOT NULL COMMENT '开始时间',
    `end_time` DATETIME NOT NULL COMMENT '结束时间',
    `content_close_time` DATETIME NOT NULL COMMENT '玩法结束时间',
    `prefab_path` VARCHAR(512) NOT NULL DEFAULT '' COMMENT '活动底图文件',
    `url_cn` VARCHAR(512) NOT NULL DEFAULT '' COMMENT '活动链接（国内）',
    `url_os` VARCHAR(512) NOT NULL DEFAULT '' COMMENT '活动链接（海外）',
    `is_entrance_open` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '入口开关：0关闭，1开放',
    PRIMARY KEY (`schedule_id`) USING BTREE
) COMMENT = 'H5活动排期配置' ENGINE = InnoDB;

CREATE TABLE `t_account_cancellation_config` (
    `uid` INT(11) UNSIGNED NOT NULL COMMENT '游戏uid',
    `account_uid` BIGINT(20) UNSIGNED NOT NULL COMMENT '通行证aid',
    `cancellation_time` VARCHAR(50) NOT NULL COMMENT '账号注销时间',
    `create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    PRIMARY KEY (`uid`) USING BTREE
) COMMENT = '米哈游通行证注销名单' ENGINE = InnoDB;

CREATE TABLE `t_live_schedule_config` (
    `live_id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '直播ID',
    `begin_time` DATETIME NOT NULL COMMENT '开始时间',
    `end_time` DATETIME NOT NULL COMMENT '结束时间',
    `live_url` VARCHAR(512) NOT NULL DEFAULT '' COMMENT '直播地址',
    `spare_live_url` VARCHAR(512) NOT NULL DEFAULT '' COMMENT '备用直播地址',
    PRIMARY KEY (`live_id`) USING BTREE
) COMMENT = '直播排期表' ENGINE = InnoDB;

CREATE TABLE `t_stop_server_login_white_ip_config` (
    `ip` VARCHAR(32) NOT NULL,
    `desc` VARCHAR(32) NOT NULL,
    PRIMARY KEY (`ip`)
) COMMENT = '停服时二级dispatch登录白名单' ENGINE = InnoDB;

CREATE TABLE `t_red_point_config` (
    `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '条目ID',
    `content_id` INT(11) UNSIGNED NOT NULL COMMENT '活动ID或调查问卷ID等二级ID',
    `trigger_time` DATETIME NOT NULL COMMENT '触发时间',
    `expire_time` DATETIME NOT NULL COMMENT '失效时间',
    `red_point_type` INT(11) UNSIGNED NOT NULL COMMENT '红点类型（红点ID/红点位key）',
    `is_daily_refresh` INT(11) UNSIGNED NOT NULL COMMENT '是否进行每日刷新',
    `daily_refresh_second` INT(11) UNSIGNED NOT NULL COMMENT '每天0点开始的第几秒进行每日刷新',
    `player_level` INT(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最小玩家等级',
    PRIMARY KEY (`id`)
) COMMENT = '全服红点配置' ENGINE = InnoDB;

CREATE TABLE `t_security_library_config` (
    `platform_type_str` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '平台类型，定义在define.proto的PlatformType',
    `version_str` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '版本号',
    `md5_list` TEXT NOT NULL COMMENT 'md5校验值，逗号分隔',
    `is_forbid_login` TINYINT(1) NOT NULL DEFAULT '0' COMMENT 'MD5不一致时是否禁止登录',
    `enabled` TINYINT(1) NOT NULL DEFAULT '1' COMMENT '0不生效，1生效',
    PRIMARY KEY (`platform_type_str`, `version_str`)
) COMMENT = '安全库配置' ENGINE = InnoDB;

CREATE TABLE `t_gameplay_recommendation_config` (
    `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '条目ID',
    `begin_time` DATETIME NOT NULL COMMENT '生效时间',
    `json_str` MEDIUMTEXT NOT NULL COMMENT '定义为proto::GameplayRecommendationConfig',
    `enabled` TINYINT(1) NOT NULL DEFAULT '1' COMMENT '0不生效，1生效',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `begin_time` (`begin_time`)
) COMMENT = '养成推荐数据' ENGINE = InnoDB;

CREATE TABLE `t_questionnaire_mail_config` (
    `config_id` INT(11) NOT NULL AUTO_INCREMENT,
    `email_valid_days` INT(11) NOT NULL,
    `email_title` VARCHAR(200) NOT NULL,
    `email_sender` VARCHAR(200) NOT NULL,
    `email_content` text NOT NULL,
    `item_list` VARCHAR(1024) NOT NULL COMMENT '奖励列表，proto3的json格式',
    `begin_time` DATETIME NOT NULL,
    `end_time` DATETIME NOT NULL,
    `enabled` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '0不生效，1生效',
    `tag` VARCHAR(200) NOT NULL DEFAULT '' COMMENT '标签',
    PRIMARY KEY (`config_id`)
) COMMENT = '邮件配置' ENGINE = InnoDB;

CREATE TABLE `t_client_watchdog_uid_list_config` (
    `uid` INT(10) UNSIGNED NOT NULL,
    PRIMARY KEY (`uid`) USING BTREE
) COMMENT = 'watchdog开启名单' ENGINE = InnoDB;

CREATE TABLE `t_gacha_newbie_url_config` (
    `priority` INT(11) UNSIGNED NOT NULL COMMENT '优先级',
    `gacha_prob_url` VARCHAR(512) NOT NULL DEFAULT '' COMMENT '扭蛋概率展示url',
    `gacha_record_url` VARCHAR(512) NOT NULL DEFAULT '' COMMENT '扭蛋记录url',
    PRIMARY KEY (`priority`)
) COMMENT = '新手扭蛋url配置' ENGINE = InnoDB;

INSERT INTO
    `t_gacha_schedule_config` (
        `schedule_id`,
        `gacha_type`,
        `begin_time`,
        `end_time`,
        `cost_item_id`,
        `cost_item_num`,
        `gacha_pool_id`,
        `gacha_prob_rule_id`,
        `gacha_up_config`,
        `gacha_rule_config`,
        `gacha_prefab_path`,
        `gacha_preview_prefab_path`,
        `gacha_prob_url`,
        `gacha_record_url`,
        `gacha_prob_url_oversea`,
        `gacha_record_url_oversea`,
        `gacha_sort_id`,
        `enabled`,
        `title_textmap`,
        `display_up4_item_list`
    )
VALUES
    (
        1333,
        301,
        '2022-11-02 07:00:00',
        '2022-11-18 17:59:00',
        223,
        1,
        201,
        1,
        '{\"gacha_up_list\":[{\"item_parent_type\":1,\"prob\":60,\"item_list\":[1073]},{\"item_parent_type\":2,\"prob\":255,\"item_list\":[1020,1032,1034]}]}',
        '{}',
        'GachaShowPanel_A103',
        'UI_Tab_GachaShowPanel_A103',
        'https://example.com/',
        'https://example.com/',
        'https://example.com/',
        'https://example.com/',
        9998,
        1,
        'UI_GACHA_SHOW_PANEL_A0103_TITLE',
        ''
    ),
    (
        1343,
        400,
        '2022-11-02 07:00:00',
        '2022-11-18 17:59:00',
        223,
        1,
        201,
        1,
        '{\"gacha_up_list\":[{\"item_parent_type\":1,\"prob\":60,\"item_list\":[1049]},{\"item_parent_type\":2,\"prob\":255,\"item_list\":[1020,1032,1034]}]}',
        '{}',
        'GachaShowPanel_A104',
        'UI_Tab_GachaShowPanel_A104',
        'https://example.com/',
        'https://example.com/',
        'https://example.com/',
        'https://example.com/',
        9998,
        1,
        'UI_GACHA_SHOW_PANEL_A049_TITLE',
        ''
    ),
    (
        1353,
        302,
        '2022-11-02 07:00:00',
        '2022-11-18 17:59:00',
        223,
        1,
        201,
        2,
        '{\"gacha_up_list\":[{\"item_parent_type\":1,\"prob\":70,\"item_list\":[14511,15509]},{\"item_parent_type\":2,\"prob\":300,\"item_list\":[11402,12403,13407,14402,15405]}]}',
        '{}',
        'GachaShowPanel_A105',
        'UI_Tab_GachaShowPanel_A105',
        'https://example.com/',
        'https://example.com/',
        'https://example.com/',
        'https://example.com/',
        9996,
        1,
        'UI_GACHA_SHOW_PANEL_A021_TITLE',
        '15405'
    ),
    (
        1393,
        200,
        '2022-11-02 07:00:00',
        '2023-11-06 15:59:59',
        224,
        1,
        101,
        3,
        '{}',
        '{}',
        'GachaShowPanel_A022',
        'UI_Tab_GachaShowPanel_A022',
        'https://example.com/',
        'https://example.com/',
        'https://example.com/',
        'https://example.com/',
        1000,
        1,
        'UI_GACHA_SHOW_PANEL_A022_TITLE',
        ''
    );