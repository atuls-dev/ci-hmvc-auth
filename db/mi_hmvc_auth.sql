-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 09, 2021 at 02:08 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mi_hmvc_auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) COLLATE utf8_bin NOT NULL,
  `login` varchar(50) COLLATE utf8_bin NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(1, '127.0.0.1', 'atul@gmail.com', '2021-08-09 14:02:22'),
(2, '127.0.0.1', 'dev', '2021-08-09 14:02:28'),
(3, '127.0.0.1', 'dev', '2021-08-09 14:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '1',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `avatar_pic` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ban_reason` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `new_password_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `new_password_requested` datetime DEFAULT NULL,
  `new_email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `new_email_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `activated`, `banned`, `avatar_pic`, `ban_reason`, `new_password_key`, `new_password_requested`, `new_email`, `new_email_key`, `last_ip`, `last_login`, `created`, `modified`) VALUES
(1, 'dev1', '$2a$08$rDfNw9VX/DyMr3ZTMfikEOEXfpMZSWyKqZxd6nCJNzXaA2lj4AbbC', 'dev1@mail.com', 1, 0, '', NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '2021-08-09 14:05:03', '2021-07-09 16:12:19', '2021-08-09 14:05:03'),
(2, 'dev12', '$2a$08$jWEu5QcJPV6ClLip7Ngwb.YGL./2hBJEqNk.TkWuyUFak8SwJJnEu', 'dev12@mail.com', 1, 0, '', NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '2021-07-09 21:44:41', '2021-07-09 16:14:41', '2021-07-09 16:14:41'),
(3, 'dev2', '$2a$08$I2Ja.VZ2eXplpGWD5W8hqOxLD7LG12rXmCpjV3chTDd4k/w5394GK', 'dev2@mail.com', 1, 0, 'IMG_20210303_212609.jpg', NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '2021-07-09 21:46:31', '2021-07-09 16:16:31', '2021-07-09 16:16:31'),
(4, 'dev4', '$2a$08$2djLJB2yvtnHMArZveoYRe4SVv3e5K93S/awwX6ZFj9e2qhabP4t.', 'dev4@mail.com', 1, 0, 'IMG_20210303_2126091.jpg', NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '2021-07-09 16:19:41', '2021-07-09 16:17:51', '2021-07-09 16:19:41'),
(5, 'test', '$2a$08$CcdhBB2lbQQVJYV8644vyutp7AAN7Et1cz6pKzQYw3xTH9ZqbgoY6', 'tester@mail.com', 1, 0, NULL, NULL, NULL, NULL, NULL, 'a95a0738d063d2ef4c8c4a3aefee7c43', '127.0.0.1', '2021-07-10 06:53:32', '2021-07-10 06:49:55', '2021-07-10 06:53:32'),
(6, 'test1', '$2a$08$iBa7FCSZJw0Omn9k56YtuuACE47lI5A5cj1FpwXlWNoWUksD6oU26', 'test1@mail.com', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '2021-07-10 06:55:15', '2021-07-10 06:55:02', '2021-07-10 06:55:15'),
(7, 'test3', '$2a$08$BBcbT4X33UEAxgcS0jijQ.tOScMzceopKshcpglKbPA/t8/MzisYm', 'test3@mail.com', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '2021-07-10 07:05:00', '2021-07-10 07:04:53', '2021-07-10 07:05:00'),
(8, 'test6', '$2a$08$/.sEQqkm1plV8Aa5Th/o9uwiR7nxkI.gOOQ0ay2vCDJqjStnl1dCq', 'test6@mail.com', 1, 0, '', NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '2021-07-10 12:49:25', '2021-07-10 07:19:25', '2021-07-10 07:19:25'),
(9, 'test67', '$2a$08$63OBVDbDTwm.Bc15AoHwJ.lZzXXl8jCZRIa9P6xZkTJD8dKMv9Yju', 'test67@mail.com', 1, 0, '', NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '2021-07-10 12:50:29', '2021-07-10 07:20:29', '2021-07-10 07:20:29'),
(10, 'test7', '$2a$08$O9vsOP88V3VBuTNdjdPyLukoBXsZ3C4BAo60qtSUNamI3WMqHhH0.', 'test7@mail.com', 1, 0, 'IMG_20210303_212609.jpg', NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '2021-07-10 12:51:39', '2021-07-10 07:21:39', '2021-07-10 07:21:39');

-- --------------------------------------------------------

--
-- Table structure for table `user_autologin`
--

DROP TABLE IF EXISTS `user_autologin`;
CREATE TABLE IF NOT EXISTS `user_autologin` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`key_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

DROP TABLE IF EXISTS `user_profiles`;
CREATE TABLE IF NOT EXISTS `user_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `country` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_id`, `country`, `website`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(3, 3, NULL, NULL),
(4, 4, NULL, NULL),
(5, 6, NULL, NULL),
(6, 7, NULL, NULL),
(7, 8, NULL, NULL),
(8, 9, NULL, NULL),
(9, 10, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
