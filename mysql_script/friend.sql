USE databaseWeb;
set NAMES 'utf8';	/*控制台使用gbk编码*/
DROP TABLE IF EXISTS friend;
CREATE TABLE friend (
	id INTEGER AUTO_INCREMENT COMMENT 'id',
    name VARCHAR(45) COMMENT '姓名' not null,
	friend VARCHAR(45) COMMENT '朋友' not null,
    status VARCHAR(16) COMMENT '状态',
    create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP() COMMENT '创建时间',
    PRIMARY KEY (id)
) ;

INSERT INTO friend
(name, friend,status) values
('System', 'Johnson','offline');

INSERT INTO friend
(name, friend,status) values
('Johnson', 'System','offline');
