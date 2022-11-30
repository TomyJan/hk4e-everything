DROP DATABASE IF EXISTS `db_hk4e_user_os_beta01`;

CREATE DATABASE IF NOT EXISTS `db_hk4e_user_os_beta01` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

USE `db_hk4e_user_os_beta01`;

CREATE TABLE `t_block_data_0` (
    `uid` int(10) NOT NULL DEFAULT '0',
    `block_id` int(10) NOT NULL DEFAULT '0',
    `data_version` int(10) NOT NULL,
    `bin_data` mediumblob NOT NULL,
    `last_save_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    primary key (`uid`, `block_id`)
) COMMENT = '场景block存档' ENGINE = InnoDB;

CREATE TABLE `t_block_data_1` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_2` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_3` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_4` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_5` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_6` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_7` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_8` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_9` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_10` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_11` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_12` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_13` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_14` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_15` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_16` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_17` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_18` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_19` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_20` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_21` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_22` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_23` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_24` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_25` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_26` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_27` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_28` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_29` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_30` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_31` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_32` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_33` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_34` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_35` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_36` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_37` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_38` LIKE `t_block_data_0`;

CREATE TABLE `t_block_data_39` LIKE `t_block_data_0`;

CREATE TABLE `t_home_data_0` (
    `uid` INT(10) NOT NULL DEFAULT '0',
    `bin_data` MEDIUMBLOB NOT NULL,
    `data_version` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `block_end_time` DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '封禁结束时间',
    `last_save_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `is_delete` BOOLEAN NOT NULL DEFAULT FALSE COMMENT '是否为polardb扩容后废弃数据',
    `reserved_1` INT(10) unsigned NOT NULL DEFAULT '0' COMMENT '预留字段1',
    `reserved_2` INT(10) unsigned NOT NULL DEFAULT '0' COMMENT '预留字段2',
    PRIMARY KEY (`uid`) USING BTREE
) COMMENT = '家园存档' ENGINE = InnoDB;

CREATE TABLE `t_home_data_1` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_2` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_3` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_4` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_5` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_6` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_7` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_8` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_9` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_10` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_11` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_12` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_13` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_14` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_15` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_16` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_17` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_18` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_19` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_20` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_21` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_22` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_23` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_24` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_25` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_26` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_27` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_28` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_29` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_30` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_31` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_32` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_33` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_34` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_35` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_36` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_37` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_38` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_39` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_40` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_41` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_42` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_43` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_44` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_45` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_46` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_47` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_48` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_49` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_50` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_51` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_52` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_53` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_54` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_55` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_56` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_57` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_58` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_59` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_60` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_61` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_62` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_63` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_64` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_65` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_66` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_67` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_68` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_69` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_70` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_71` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_72` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_73` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_74` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_75` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_76` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_77` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_78` LIKE `t_home_data_0`;

CREATE TABLE `t_home_data_79` LIKE `t_home_data_0`;

CREATE TABLE `t_player_data_0` (
    `uid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `nickname` VARCHAR(128) NOT NULL DEFAULT '0',
    `level` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `exp` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `vip_point` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `json_data` VARCHAR(512) NOT NULL DEFAULT '',
    `bin_data` MEDIUMBLOB NOT NULL,
    `extra_bin_data` BLOB NULL COMMENT 'login前用的数据',
    `data_version` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `tag_list` VARCHAR(128) NOT NULL DEFAULT '',
    `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `last_save_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `is_delete` BOOLEAN NOT NULL DEFAULT FALSE COMMENT '是否为polardb扩容后废弃数据',
    `reserved_1` INT(10) unsigned NOT NULL DEFAULT '0' COMMENT '预留字段1',
    `reserved_2` INT(10) unsigned NOT NULL DEFAULT '0' COMMENT '预留字段2',
    `before_login_bin_data` BLOB NULL COMMENT 'login前用的数据（对比extra_bin_data没有多写的问题）',
    PRIMARY KEY (`uid`) USING BTREE
) COMMENT = '玩家核心数据包' ENGINE = InnoDB;

CREATE TABLE `t_player_data_1` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_2` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_3` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_4` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_5` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_6` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_7` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_8` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_9` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_10` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_11` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_12` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_13` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_14` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_15` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_16` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_17` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_18` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_19` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_20` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_21` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_22` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_23` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_24` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_25` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_26` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_27` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_28` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_29` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_30` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_31` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_32` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_33` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_34` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_35` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_36` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_37` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_38` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_39` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_40` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_41` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_42` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_43` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_44` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_45` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_46` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_47` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_48` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_49` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_50` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_51` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_52` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_53` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_54` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_55` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_56` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_57` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_58` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_59` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_60` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_61` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_62` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_63` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_64` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_65` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_66` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_67` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_68` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_69` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_70` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_71` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_72` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_73` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_74` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_75` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_76` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_77` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_78` LIKE `t_player_data_0`;

CREATE TABLE `t_player_data_79` LIKE `t_player_data_0`;

CREATE TABLE `t_player_online_id_data` (
    `online_id` VARCHAR(64) NOT NULL,
    `uid` INT(10) UNSIGNED NOT NULL,
    PRIMARY KEY (`online_id`) USING BTREE,
    UNIQUE INDEX `uid` (`uid`)
) COMMENT = 'PS玩家online与uid映射' ENGINE = InnoDB;

CREATE TABLE `t_player_psn_online_id_data` (
    `psn_id` VARCHAR(64) NOT NULL,
    `online_id` VARCHAR(64) NOT NULL,
    `uid` INT(10) UNSIGNED NOT NULL,
    PRIMARY KEY (`psn_id`),
    UNIQUE INDEX `uid` (`uid`),
    INDEX `online_id` (`online_id`)
) COMMENT = 'ps用户psn_id到online_id/uid映射' ENGINE = InnoDB;

CREATE TABLE `t_player_uid` (
    `uid` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `account_type` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '账号类型',
    `account_uid` VARCHAR(128) NOT NULL DEFAULT '' COMMENT '绑定的账号UID',
    `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `ext` VARCHAR(512) NOT NULL DEFAULT '' COMMENT '自定义信息，Json格式',
    `tag` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'TAG，由MUIP设置',
    PRIMARY KEY (`uid`) USING BTREE,
    UNIQUE INDEX `account_type_account_uid` (`account_type`, `account_uid`)
) COMMENT = '玩家身份信息表' ENGINE = InnoDB AUTO_INCREMENT = 10000;

INSERT INTO
    `t_player_uid` (
        `uid`,
        `account_type`,
        `account_uid`,
        `create_time`,
        `ext`,
        `tag`
    )
VALUES
    (
        1,
        1,
        '1',
        '2022-01-01 00:00:00',
        '{"reg_platform":3}',
        0
    );