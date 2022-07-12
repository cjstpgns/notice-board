GRANT ALL PRIVILEGES ON *.* TO 'testman'@'%' IDENTIFIED BY '1111' REQUIRE NONE WITH GRANT OPTION;

CREATE DATABASE testdb;

CREATE TABLE `board` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(45) DEFAULT NULL,
  `subject` varchar(245) DEFAULT NULL,
  `content` text ,
  `regdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `modifydate` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `members` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(145) DEFAULT NULL,
  `email` varchar(245) DEFAULT NULL,
  `username` varchar(145) DEFAULT NULL, 
  `passwd` varchar(200) DEFAULT NULL,
  `regdate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into board (userid, subject, content) values ('gang', '안녕하세요', '인사드립니다.');
insert into board (userid, subject, content) values ('nyang', '고양이라고합니다', '반갑습니다');