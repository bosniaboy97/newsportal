-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 20. Nov 2019. u 18:00
-- Verzija servera: 8.0.18
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal`
--

-- --------------------------------------------------------

--
-- Struktura tabele `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `Categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(225) NOT NULL,
  PRIMARY KEY (`Categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Prikaz podataka tabele `category`
--

INSERT INTO `category` (`Categoryid`, `CategoryName`) VALUES
(1, 'Sport'),
(2, 'Politic'),
(3, 'Science'),
(4, 'Lifestyle'),
(5, 'Health');

-- --------------------------------------------------------

--
-- Struktura tabele `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postid` int(11) DEFAULT NULL,
  `username` varchar(225) DEFAULT NULL,
  `comment` mediumtext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Prikaz podataka tabele `comments`
--

INSERT INTO `comments` (`id`, `postid`, `username`, `comment`, `status`) VALUES
(1, 5, 'test', 'test123', 1),
(4, 6, 'test2', 'TRUP IS BEST', 1);

-- --------------------------------------------------------

--
-- Struktura tabele `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `postid` int(11) NOT NULL AUTO_INCREMENT,
  `PostTitle` longtext,
  `Categoryid` int(11) DEFAULT NULL,
  `PostDetails` longtext,
  `PostingDate` timestamp NULL DEFAULT NULL,
  `is_Active` int(1) DEFAULT NULL,
  `PostImage` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`postid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Prikaz podataka tabele `posts`
--

INSERT INTO `posts` (`postid`, `PostTitle`, `Categoryid`, `PostDetails`, `PostingDate`, `is_Active`, `PostImage`) VALUES
(2, 'Lopus ', 1, 'aksdjas', '2019-11-15 18:00:00', 0, 'download.jpg'),
(4, 'Liverpool another win!!', 1, '<p>Liverpool win against Manchester City</p>', NULL, 1, 'b9fb9d37bdf15a699bc071ce49baea53.jpg'),
(5, 'Trump new president', 2, '<p>asdas</p>', NULL, 0, 'eb15ec645d1f373abe784a3eb1fb03e7.jpg'),
(6, 'Trump new president', 2, '<p>Trump is new/old president of USA</p>', NULL, 1, 'eb15ec645d1f373abe784a3eb1fb03e7.jpg');

-- --------------------------------------------------------

--
-- Struktura tabele `replay`
--

DROP TABLE IF EXISTS `replay`;
CREATE TABLE IF NOT EXISTS `replay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `replayUserId` mediumtext NOT NULL,
  `commentID` longtext NOT NULL,
  `replaydata` longtext NOT NULL,
  `replaytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Prikaz podataka tabele `replay`
--

INSERT INTO `replay` (`id`, `replayUserId`, `commentID`, `replaydata`) VALUES
(11, 'usr_id', '12', 'dfdfd'),
(12, 'usr_id', '12', '#include&lt;stdio.h&gt;'),
(13, 'usr_id', '12', '&lt;pre&gt;\n#include&lt;stdio.h&gt;\n&lt;/pre&gt;'),
(14, 'usr_id', '12', 'dsvgfhvm\ngvbngvng'),
(15, 'usr_id', '12', 'vcbcv'),
(16, 'usr_id', '1', 'ccccccccccccccdcdc d'),
(17, 'usr_id', '15', 'vvvvvvvvv'),
(18, 'usr_id', '15', 'bbb'),
(19, 'usr_id', '16', 'vvvv'),
(20, 'usr_id', '1', 'fgfgg'),
(21, 'usr_id', '19', 'sdvvcv\nfcbgb'),
(22, 'usr_id', '20', 'cc'),
(23, 'usr_id', '21', 'tttt'),
(24, 'usr_id', '21', 'ffffffffff'),
(25, 'usr_id', '21', 'fdds'),
(26, 'usr_id', '21', 'ffsfsdfc'),
(27, 'usr_id', '23', 'www'),
(28, 'usr_id', '25', 'aa'),
(29, 'usr_id', '27', 'xx'),
(30, 'usr_id', '27', 'sxcdcdsxdc'),
(31, 'usr_id', '28', 'rtygf');

-- --------------------------------------------------------

--
-- Struktura tabele `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `user_type` varchar(225) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `useruniq` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Prikaz podataka tabele `user`
--

INSERT INTO `user` (`userid`, `username`, `email`, `password`, `user_type`) VALUES
(4, 'test', 'test@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(5, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(6, 'test2', 'test1@gmail.com', '202cb962ac59075b964b07152d234b70', 'user');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
