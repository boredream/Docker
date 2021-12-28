-- 导出 spring_boot_demo 的数据库结构
DROP DATABASE IF EXISTS `spring_boot_demo`;
CREATE DATABASE IF NOT EXISTS `spring_boot_demo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `spring_boot_demo`;

--
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user`
(
    id       int auto_increment
        primary key,
    username varchar(50) null comment '用户名',
    password varchar(100) null comment '密码',
    role     varchar(50) null comment '角色',
    open_id  varchar(50) null comment '第三方id',
    create_time timestamp  default current_timestamp() not null,
    update_time timestamp  default current_timestamp() not null on update current_timestamp()
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci COMMENT ='用户';

--
DROP TABLE IF EXISTS `todo`;
CREATE TABLE IF NOT EXISTS `todo`
(
    id          int unsigned auto_increment comment '主键id'
        primary key,
    user_id     int                                    not null comment '所属用户id',
    done        tinyint(1) default 0                   not null comment '已完成',
    name        varchar(50)                            not null comment '名称',
    type        varchar(50)                            null comment '类型',
    done_date   varchar(50)                            null comment '完成日期',
    detail      varchar(200)                           null comment '详情',
    images      varchar(3000)                          null comment '图片',
    create_time timestamp  default current_timestamp() not null,
    update_time timestamp  default current_timestamp() not null on update current_timestamp()
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci COMMENT ='清单';

--
DROP TABLE IF EXISTS `the_day`;
CREATE TABLE IF NOT EXISTS `the_day`
(
    id           int unsigned auto_increment comment '主键id'
        primary key,
    user_id     int                                    not null comment '所属用户id',
    name         varchar(50)                           not null comment '名称',
    the_day_date varchar(50)                           null comment '纪念日期',
    notify_date  varchar(50)                           null comment '提醒日期',
    detail       varchar(200)                          null comment '详情',
    images       varchar(3000)                         null comment '图片',
    create_time  timestamp default current_timestamp() not null,
    update_time  timestamp default current_timestamp() not null on update current_timestamp()
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci COMMENT ='纪念日';
