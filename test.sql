-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 05 月 25 日 12:32
-- 服务器版本: 5.5.53
-- PHP 版本: 5.4.45

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `test`
--

-- --------------------------------------------------------

--
-- 表的结构 `baoxiu`
--

CREATE TABLE IF NOT EXISTS `baoxiu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `des` text COLLATE utf8_bin NOT NULL,
  `roomid` text COLLATE utf8_bin NOT NULL,
  `point` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  UNIQUE KEY `id_2` (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `baoxiu`
--

INSERT INTO `baoxiu` (`id`, `des`, `roomid`, `point`, `status`) VALUES
(10, '水管坏了', '102', 3, 1);

-- --------------------------------------------------------

--
-- 表的结构 `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` text COLLATE utf8_bin NOT NULL,
  `password` text COLLATE utf8_bin NOT NULL,
  `author` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `register`
--

INSERT INTO `register` (`id`, `user`, `password`, `author`) VALUES
(3, 'root', 'root', 1);

-- --------------------------------------------------------

--
-- 表的结构 `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `id` varchar(255) NOT NULL,
  `point` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `repair` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `room`
--

INSERT INTO `room` (`id`, `point`, `comment`, `repair`) VALUES
('101', 5, '', ''),
('102', 8, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` varchar(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `student`
--

INSERT INTO `student` (`id`, `roomid`, `name`) VALUES
(1, '101', 'root');

-- --------------------------------------------------------

--
-- 表的结构 `tiaosu`
--

CREATE TABLE IF NOT EXISTS `tiaosu` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_bin NOT NULL,
  `sroomid` varchar(255) COLLATE utf8_bin NOT NULL,
  `proomid` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- 表的结构 `tuisu`
--

CREATE TABLE IF NOT EXISTS `tuisu` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_bin NOT NULL,
  `roomid` int(11) NOT NULL,
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `author` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='用户表' AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `roomid`, `user`, `password`, `author`) VALUES
(3, '', 'admin', 'root', 3),
(4, '', 'root3', 'root', 2),
(10, '102', 'root', 'root', 1);

-- --------------------------------------------------------

--
-- 表的结构 `weizhang`
--

CREATE TABLE IF NOT EXISTS `weizhang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` text COLLATE utf8_bin NOT NULL,
  `des` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `weizhang`
--

INSERT INTO `weizhang` (`id`, `roomid`, `des`) VALUES
(1, '102', '违章电器');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
