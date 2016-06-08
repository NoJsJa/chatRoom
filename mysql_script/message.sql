USE databaseWeb;
set NAMES 'utf8';	/*控制台使用gbk编码*/
DROP TABLE IF EXISTS message;
CREATE TABLE message (
	id INTEGER AUTO_INCREMENT COMMENT 'id',
	name_sendTo VARCHAR(45) COMMENT '接收者' not null,
    name_sender VARCHAR(45) COMMENT '发送者' not null,
	msg VARCHAR(500) COMMENT '朋友',
    imgIndex VARCHAR(16) COMMENT '图片',
    create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP() COMMENT '创建时间',
    PRIMARY KEY (id)
) ;

INSERT INTO message
(name_sendTo, name_sender, msg) values
('System', 'Johnson', 'hello System!');

INSERT INTO message
(name_sendTo, name_sender, msg) values
('Johnson', 'System', 'hello Johnson!');
