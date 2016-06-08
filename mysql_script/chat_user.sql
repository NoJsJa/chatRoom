
DROP DATABASE IF EXISTS databaseWeb;
CREATE DATABASE databaseWeb CHARACTER SET utf8;

USE databaseWeb;
set NAMES 'utf8';	/*控制台使用gbk编码*/
DROP TABLE IF EXISTS chat_user;
CREATE TABLE chat_user (
    name VARCHAR(45) COMMENT '姓名' not null,
	password VARCHAR(45) COMMENT '密码' not null,
    sex VARCHAR(16) COMMENT '性别',
    motto VARCHAR(500) COMMENT '座右铭',
    activity VARCHAR(16) COMMENT '活跃度',
    create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP() COMMENT '创建时间',
    PRIMARY KEY (name)
) ;

INSERT INTO chat_user
(name, password, sex, motto, activity) values
('System', 'root', '男', '生当为人杰，死亦为鬼雄', '0');

INSERT INTO chat_user
(name, password, sex, motto, activity) values
('Johnson', '123456', '男', '生当为人杰，死亦为鬼雄', '50');
