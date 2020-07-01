GRANT ALL PRIVILEGES ON *.* TO 'sa'@'%' WITH GRANT OPTION;
ALTER USER 'sa'@'%' IDENTIFIED WITH mysql_native_password BY '123123';
FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS test DEFAULT CHARSET utf8 COLLATE utf8_general_ci;
USE test;

DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES ('1', 'aaa');
INSERT INTO `person` VALUES ('2', 'bbb');
INSERT INTO `person` VALUES ('3', 'ccc');
INSERT INTO `person` VALUES ('4', 'ddd');