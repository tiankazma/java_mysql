CREATE TABLE `app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL DEFAULT '' COMMENT 'APP名称',
  `url` varchar(255) NOT NULL DEFAULT '',
  `alexa` int(11) NOT NULL DEFAULT '0' COMMENT 'Alexa 排名',
  `country` char(10) NOT NULL DEFAULT '' COMMENT '国家',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO `app` VALUES 
('1', 'Battle.net', 'https://www.battle.net/', '1', 'USA'), 
('2', 'TextEdit', 'https://www.TextEdit.com/', '2', 'USA'), 
('3', 'QQ', 'http://www.QQ.com', '3', 'CN'), 
('4', 'WeChat', 'http://wechat.com/', '4', 'CN');

SELECT country, name FROM Websites
WHERE country='CN'
UNION ALL
SELECT country, name FROM app
WHERE country='CN'
ORDER BY country;