-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 20, 2017 at 03:49 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_fbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL DEFAULT '',
  `user` varchar(45) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(45) NOT NULL DEFAULT '',
  `phone` varchar(45) NOT NULL DEFAULT '',
  `Bank` varchar(45) NOT NULL DEFAULT '',
  `bankAccount` varchar(45) NOT NULL DEFAULT '',
  `AccName` varchar(45) NOT NULL DEFAULT '',
  `addr` varchar(45) NOT NULL DEFAULT '',
  `city` varchar(45) NOT NULL DEFAULT '',
  `postal` varchar(45) NOT NULL DEFAULT '',
  `state` varchar(45) NOT NULL DEFAULT '',
  `country` varchar(45) NOT NULL DEFAULT '',
  `saldo` int(11) NOT NULL,
  `role` varchar(45) NOT NULL DEFAULT '',
  `remember_token` varchar(100) NOT NULL DEFAULT '',
  `status` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `token_id` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `name`, `user`, `password`, `email`, `phone`, `Bank`, `bankAccount`, `AccName`, `addr`, `city`, `postal`, `state`, `country`, `saldo`, `role`, `remember_token`, `status`, `token_id`) VALUES
(1, 'fbs-nusantara', '', '', 'mailer@fbs-nusantara.com', '', '', '', '', '', '', '', '', '', 0, '', '', 0, ''),
(2, 'Mailer Request', '', '', 'request@fbs-nusantara.com', '', '', '', '', '', '', '', '', '', 0, '', '', 0, ''),
(78, 'Galih Santosa', 'arul99', '$2y$10$P93I.SWwOR3e6oDcFf/Y3eAPqyv/0dW0T3esKWyCAiOBad/Wnb.fu', 'galih.arul234@gmail.com', '083893140960', 'UHUY', '9088000023300', 'arul jeyek', 'jl.h riwan no C76B', 'tangerang', '15144', 'Banten', 'Indonesia', 12523988, 'user', 'WzA61cfptfp1mCZhEcyFd7O9p4Qmi8yJUfYUjouimRCVnJOjrUWdObskpzyG', 1, 'UvUHrMbxUzhI2APLKnZLQHj2kXYP9N'),
(79, 'Galih Santoso', 'arulnich', '$2y$10$MrOgHHdFcGesALp46SP13.qE674ZuCK5v5hsk2b0Ks.L0.ZSZ15a6', 'fbsexchanger@gmail.com', '083879995573', '', '', '', '', '', '', '', '', 0, 'admin', 'nXtkqBdEijd3bfeuIYdjE2U9OCTiEo3PXTv1AwsVr8XiLud7BCR5V17toDqV', 1, 'UFdLcfg7n0yvlxyc9LqAsqTzyD3uxH'),
(95, 'Suka Suka', 'najfx99', '$2y$10$XV8A62iJTRCTAosc33p5Y.Vh/cIjieDvSRmkf1v8J9LUSYJmnJjTG', 'sukamusik5@gmail.com', '082240206318', '', '', '', 'jl.mangga besar', 'tangerang', '15144', 'Banten', 'Indonesia', 0, 'user', 'TCy2IhaFtphNYwjIs3uOJYGV3mYxsWs1YJcTwhoiZFUjEt7YEUBcLHSojhrX', 1, '44mbUpaKbPQDsnIxQ0ZsrxJ4H2RBNB'),
(100, 'Candice', 'weee3', '$2y$10$LU1ETwLj6S9KNuaOJF7iAuK1vswNu50mxDoKnjLHdKiw/8q.jKpwW', '4us@gmail.com', '', '', '', '', '', '', '', '', '', 0, 'user', '', 0, 'JyuG6blKrHl2Y371Gulr5WbhCBcsiK'),
(101, 'jojo', 'jojon', '$2y$10$BID/.x8XheNHp5mLFbF9bOBR8a/sDE/JS6TCsE3KoZLtrO5kKOfim', 'jojo@gmail.com', '', '', '', '', '', '', '', '', '', 0, 'user', '', 0, 'bopMgRsWsKL9Uu9KgVDfdLhSJyiBqA'),
(102, 'try add', 'najfx99w', '$2y$10$ZoBddourhBSZx3tdMOJOB.Lj67uEbyVOESFcpcBjhcXtUnxbsF6yy', '323@gmail.com', '', '', '', '', '', '', '', '', '', 0, 'user', '', 0, 'xey5KtzE5sxxhOW7R2gGTEFlm4JMjS'),
(109, 'Galih Santoso', 'arulnich1', '$2y$10$IdCX7w/giFJ/yXX8FG1Xq.QFiiLzq99TqiUJ5THHOvrAn7QhMFoWy', 'galih.arul2345@gmail.com', '', '', '', '', '', '', '', '', '', 0, 'user', '', 1, 'P822QzO3d5m34aLdpjpcLaOO6QtsOo'),
(117, 'admin', 'admin', '$2y$10$46BmpiqxdgT0JeMyQbRX5uiSPN9MGoYo0x7SSUQIaf9pU6tHaDB5.', 'saderfa.4us@gmail.com', '', '', '', '', '', '', '', '', '', 0, 'user', '', 1, 'jeDZ2Osy4XccuVufmADmWvd3BeP7YF');

-- --------------------------------------------------------

--
-- Table structure for table `bank_user`
--

CREATE TABLE `bank_user` (
  `idbank_user` int(11) NOT NULL,
  `id_user` varchar(45) DEFAULT NULL,
  `bank` varchar(45) DEFAULT NULL,
  `bank_name` varchar(45) DEFAULT NULL,
  `bank_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `idcurrency` int(11) NOT NULL,
  `currency_name` varchar(45) DEFAULT NULL,
  `currency_sell` double DEFAULT NULL,
  `currency_buy` double DEFAULT NULL,
  `currency_stock` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`idcurrency`, `currency_name`, `currency_sell`, `currency_buy`, `currency_stock`) VALUES
(1, 'FBS', 13500, 13000, 'unlimited'),
(2, 'Fasapay', 13250, 13800, 'unlimited');

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id_deposit` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `acc` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `accname` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `noTrade` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `nametrade` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `kurs` int(11) NOT NULL,
  `jumlah` double NOT NULL,
  `transfer` int(11) NOT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `code` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`id_deposit`, `id_user`, `name`, `email`, `phone`, `acc`, `accname`, `noTrade`, `nametrade`, `kurs`, `jumlah`, `transfer`, `status`, `created_at`, `updated_at`, `code`) VALUES
(67, 94, 'Candice Smith', 'saderfa.4us@gmail.com', '7802328157', 'Candice', 'Aditya dasdsadsd', 'F40006744', 'aditya dwi putra', 13500, 34, 459000, 'verified', '2017-01-11 07:21:09', '2017-01-11 07:21:09', 'OR940002'),
(68, 94, 'aditya dwi putra', 'saderfa.4us@gmail.com', '82240206318', '45902333', 'Aditya BNI', 'FBS23332', 'aditya FBS', 13500, 76, 1026000, 'verified', '2017-01-11 15:58:41', '2017-01-11 15:58:41', 'OR940003'),
(69, 94, 'aditya dwi putra', 'saderfa.4us@gmail.com', '82240206318', 'F83943', 'ade', 'F40006744', 'Candice Smith', 13500, 9, 116100, 'verified', '2017-01-14 18:55:07', '2017-01-14 18:55:07', 'OR940004'),
(70, 94, 'Candice Smith', 'saderfa.4us@gmail.com', '7802328157', '590344', 'Aditya dasdsadsd', 'F40006744', 'Candice Smith', 13500, 3.1, 41850, 'verified', '2017-01-14 18:57:44', '2017-01-14 18:57:44', 'OR940005'),
(71, 95, 'Suka Musik', 'sukamusik5@gmail.com', '82240206318', '45902333', 'ADBCA', 'F34344', 'aditya dwi putra', 13500, 34, 459000, 'verified', '2017-01-15 17:35:39', '2017-01-15 17:35:39', 'OR950001'),
(72, 94, '082240206318', 'saderfa.4us@gmail.com', '82240206318', 'F83943', 'Aditya ', 'FBS23332', 'aditya dwi putra', 13500, 34, 459000, 'verified', '2017-01-23 06:11:48', '2017-01-23 06:15:14', 'OR940006'),
(73, 78, 'Galih Santosa', 'galih.arul2345@gmail.com', '83879995573', '1234567', 'Galih Santosa', 'fp000922', 'Galih Santoso', 13500, 12, 162000, 'pending', '2017-02-14 02:53:36', '2017-02-14 02:53:36', 'OR780001'),
(74, 78, 'Galih Santosa', 'galih.arul2345@gmail.com', '83879995573', '1234567', 'Galih Santosa', 'fp000922', 'Galih Santoso', 13500, 12, 162000, 'pending', '2017-02-14 02:54:04', '2017-02-14 02:54:04', 'OR780002'),
(75, 78, 'Galih Santosa', 'galih.arul2345@gmail.com', '83879995573', '1234567', 'Galih Santosa', 'fp000922', 'Galih Santoso', 13500, 11, 148500, 'pending', '2017-02-14 03:19:44', '2017-02-14 03:19:44', 'OR780003'),
(76, 78, 'Galih Santosa', 'galih.arul2345@gmail.com', '83879995573', '1234567', 'Galih Santosa', 'fp000922', 'Galih Santoso', 13500, 11, 148500, 'pending', '2017-02-14 03:20:09', '2017-02-14 03:20:09', 'OR780004'),
(77, 108, '17802328157', 'saderfa.4us@gmail.com', '7802328157', '3454444', 'tamvan', 'FBTamvan', 'Candice Smith', 13500, 50, 675000, 'pending', '2017-02-14 03:29:37', '2017-02-14 03:29:37', 'OR1080001'),
(78, 108, '17802328157', 'saderfa.4us@gmail.com', '7802328157', '3454444', 'tamvan', 'FBTamvan', 'Candice Smith', 13500, 50, 675000, 'pending', '2017-02-14 03:40:07', '2017-02-14 03:40:07', 'OR1080002'),
(79, 108, '17802328157', 'saderfa.4us@gmail.com', '7802328157', '3454444', 'tamvan', 'FBTamvan', 'Candice Smith', 13500, 50, 675000, 'pending', '2017-02-14 03:41:24', '2017-02-14 03:41:24', 'OR1080003'),
(80, 78, 'Galih Santosa', 'galih.arul2345@gmail.com', '83879995573', '1234567', 'Galih Santosa', 'fp000922', 'Galih Santoso', 13500, 10, 135000, 'pending', '2017-02-14 03:55:14', '2017-02-14 03:55:14', 'OR780005'),
(81, 78, 'Galih Santosa', 'galih.arul2345@gmail.com', '83879995573', '111', 'Galih Santosa', 'fp000922', 'Galih Santoso', 13500, 10, 135000, 'pending', '2017-02-14 04:07:34', '2017-02-14 04:07:34', 'OR780006'),
(82, 78, 'Galih Santosa', 'galih.arul234@gmail.com', '83879995573', '1234567', 'Galih Santosa', 'fp000922', 'Galih Santoso', 13500, 11, 148500, 'pending', '2017-02-14 04:08:47', '2017-02-14 04:08:47', 'OR780007'),
(83, 108, '+6282240206318', 'saderfa.4us@gmail.com', '82240206318', '3454444', 'ad', '34', 'mr.aditya putra', 13500, 123, 1660500, 'pending', '2017-02-14 04:18:37', '2017-02-14 04:18:37', 'OR1080004'),
(84, 108, '17802328157', 'saderfa.4us@gmail.com', '7802328157', '3454444', 'ad', '23', 'Candice Smith', 13500, 23, 310500, 'pending', '2017-02-14 19:28:08', '2017-02-14 19:28:08', 'OR1080005'),
(85, 108, '17802328157', 'saderfa.4us@gmail.com', '7802328157', '3454444', 'ad', '23', 'Candice Smith', 13500, 23, 310500, 'pending', '2017-02-14 19:28:45', '2017-02-14 19:28:45', 'OR1080006'),
(86, 108, '17802328157', 'saderfa.4us@gmail.com', '7802328157', '3454444', 'we', 'FBTamvan', 'Candice Smith', 13500, 34, 459000, 'pending', '2017-02-14 19:33:10', '2017-02-14 19:33:10', 'OR1080007'),
(87, 108, '17802328157', 'saderfa.4us@gmail.com', '7802328157', '3454444', 'we', 'FBTamvan', 'Candice Smith', 13500, 34, 459000, 'pending', '2017-02-14 19:34:53', '2017-02-14 19:34:53', 'OR1080008'),
(88, 108, '17802328157', 'saderfa.4us@gmail.com', '7802328157', 'tyty', 'tyty', '65', 'Candice Smith', 13500, 56, 756000, 'pending', '2017-02-14 20:29:46', '2017-02-14 20:29:46', 'OR1080009'),
(89, 108, '17802328157', 'saderfa.4us@gmail.com', '7802328157', 'tyty', 'tyty', '65', 'Candice Smith', 13500, 56, 756000, 'pending', '2017-02-14 20:31:06', '2017-02-14 20:31:06', 'OR1080010'),
(90, 108, '17802328157', 'saderfa.4us@gmail.com', '7802328157', '1', '1', '1', 'Candice Smith', 13500, 2, 27000, 'pending', '2017-02-14 21:23:46', '2017-02-14 21:23:46', 'OR1080011'),
(91, 108, '17802328157', 'saderfa.4us@gmail.com', '7802328157', '1', '1', '1', 'Candice Smith', 13500, 2, 27000, 'pending', '2017-02-14 21:24:37', '2017-02-14 21:24:37', 'OR1080012'),
(92, 108, '17802328157', 'saderfa.4us@gmail.com', '7802328157', '1', '1', '1', 'Candice Smith', 13500, 2, 27000, 'pending', '2017-02-14 21:26:50', '2017-02-14 21:26:50', 'OR1080013'),
(93, 108, '17802328157', 'saderfa.4us@gmail.com', '7802328157', '1', '1', '1', 'Candice Smith', 13500, 2, 27000, 'pending', '2017-02-14 21:27:32', '2017-02-14 21:27:32', 'OR1080014'),
(94, 108, '17802328157', 'saderfa.4us@gmail.com', '7802328157', '3454444', 'asd', '34', 'Candice Smith', 13500, 2, 27000, 'pending', '2017-02-14 21:27:59', '2017-02-14 21:27:59', 'OR1080015'),
(95, 108, '17802328157', 'saderfa.4us@gmail.com', '7802328157', '3454444', 'asd', '34', 'Candice Smith', 13500, 2, 27000, 'pending', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'OR1080016'),
(96, 108, '17802328157', 'saderfa.4us@gmail.com', '7802328157', '3454444', 'asd', '34', 'Candice Smith', 13500, 2, 27000, 'pending', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'OR1080017'),
(97, 108, '17802328157', 'saderfa.4us@gmail.com', '7802328157', '3454444', 'asd', '34', 'Candice Smith', 13500, 2, 27000, 'pending', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'OR1080018'),
(98, 108, '17802328157', 'saderfa.4us@gmail.com', '7802328157', '45', 'ert', '54', 'Candice Smith', 13500, 45, 607500, 'pending', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'OR1080019'),
(99, 108, '17802328157', 'saderfa.4us@gmail.com', '7802328157', '45', 'ert', '54', 'Candice Smith', 13500, 45, 607500, 'pending', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'OR1080020'),
(100, 108, '17802328157', 'saderfa.4us@gmail.com', '7802328157', '45', 'ert', '54', 'Candice Smith', 13500, 45, 607500, 'pending', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'OR1080021'),
(101, 108, '17802328157', 'saderfa.4us@gmail.com', '7802328157', '45', 'ert', '54', 'Candice Smith', 13500, 45, 607500, 'pending', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'OR1080022'),
(102, 108, '17802328157', 'saderfa.4us@gmail.com', '7802328157', '45', 'ert', '54', 'Candice Smith', 13500, 45, 607500, 'pending', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'OR1080023'),
(103, 108, '+6282240206318', 'saderfa.4us@gmail.com', '82240206318', '34', 'we', '23', 'mr.aditya putra', 13500, 45, 607500, 'pending', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'OR1080024');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` varchar(256) NOT NULL,
  `acc` varchar(256) NOT NULL,
  `accname` varchar(256) NOT NULL,
  `total` int(11) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `user_id`, `date`, `acc`, `accname`, `total`, `type`) VALUES
(1, 17, '1481439534', '1212121111', 'arbiyanto wijaya', 26000, 'Withdrawl'),
(2, 17, '1481440448', '1312312', 'arbiyanto wijaya', 156000, 'Withdrawl'),
(3, 17, '1481440579', '13123122', 'arbiyanto wijaya', 26000, 'Withdrawl'),
(4, 17, '1481441354', '1231231241213', 'arbiyanto wijaya', 6750000, 'Deposit'),
(5, 11, '1481442238', '5467458885', 'Aditya dwi putra', 27000, 'Deposit'),
(6, 19, '1481999370', 'aditya', 'JOko', 459000, 'Deposit'),
(7, 19, '1481999427', 'aditya', 'JOko', 459000, 'Deposit'),
(8, 19, '1481999548', '590344', 'Aditya dwi putra', 607500, 'Deposit'),
(9, 19, '1482000751', '45902333', 'aditya dwi putra', 36000, 'Withdrawl'),
(10, 19, '1482000843', '45902333', 'aditya dwi putra', 36000, 'Withdrawl'),
(11, 19, '1482000864', '45902333', 'aditya dwi putra', 36000, 'Withdrawl'),
(12, 19, '1482000880', '45902333', 'aditya dwi putra', 36000, 'Withdrawl'),
(13, 19, '1482000922', '45902333', 'aditya dwi putra', 36000, 'Withdrawl'),
(14, 19, '1482000945', '45902333', 'aditya dwi putra', 36000, 'Withdrawl'),
(15, 19, '1482000993', '45902333', 'aditya dwi putra', 36000, 'Withdrawl'),
(16, 19, '1482001015', '45902333', 'aditya dwi putra', 36000, 'Withdrawl'),
(17, 20, '1482120226', '8023332', 'Jhone Tyr', 675000, 'Deposit'),
(18, 20, '1482120991', '8934434', 'Jhone Suprice', 810000, 'Deposit'),
(19, 20, '1482121453', 'FB3940', 'Jhony tye', 607500, 'Deposit'),
(20, 20, '1482121548', '45902333', 'Jhony Tyr', 26000, 'Withdrawl'),
(21, 20, '1482125483', '593734800292', 'Candice Smith', 39000, 'Withdrawl'),
(22, 20, '1482125618', '593734800292', 'Candice Smith', 39000, 'Withdrawl'),
(23, 20, '1482125915', '593734800292', 'Candice Smith', 39000, 'Withdrawl'),
(24, 78, '1483414132', '1234567', 'Galih Santosa', 1350000, 'Deposit'),
(25, 78, '1483414271', '1234567', 'Galih Santosa', 143000, 'Withdrawl'),
(26, 78, '1483609087', '1234567', 'Galih Santosa', 324000, 'Deposit'),
(27, 85, '1483633583', '9920382988', 'Aditya ', 459000, 'Deposit'),
(28, 85, '1483633658', '9920382988', 'Aditya ', 459000, 'Deposit'),
(29, 85, '1483633783', 'F83943', 'Aditya ', 52000, 'Withdrawl'),
(30, 94, '1484155927', '45902333', 'Aditya BNI', 1026000, 'Deposit'),
(31, 94, '1484419817', '', '', 40500, 'Withdrawl'),
(32, 94, '1484420127', 'F83943', 'ade', 116100, 'Deposit'),
(33, 94, '1484420310', '590344', 'Aditya dasdsadsd', 41850, 'Deposit'),
(34, 94, '1484500784', '45902333', 'Aditya BNI', 1026000, 'Deposit'),
(35, 94, '1484500803', '45902333', 'Aditya BNI', 1026000, 'Deposit'),
(36, 94, '1484500805', '45902333', 'Aditya BNI', 1026000, 'Deposit'),
(37, 94, '1484500815', '45902333', 'Aditya BNI', 1026000, 'Deposit'),
(38, 94, '1484500898', '45902333', 'Aditya BNI', 1026000, 'Deposit'),
(39, 95, '1484501802', '45902333', 'ADBCA', 459000, 'Deposit'),
(40, 94, '1484503389', 'F83943', 'terww', 40500, 'Withdrawl'),
(41, 94, '1484503475', 'F83943', 'terww', 40500, 'Withdrawl'),
(42, 95, '1484503482', '9920382988', '221', 13500, 'Withdrawl'),
(43, 94, '1484503562', '', '', 40500, 'Withdrawl'),
(44, 95, '1484503601', 'Candice', 'DEfre', 27000, 'Withdrawl'),
(45, 94, '1484885504', '9088000023300', 'Aditya Dwi Putra', 50000, 'Topup'),
(46, 94, '1484885863', '9088000023300', 'Aditya Dwi Putra', 50000, 'Topup'),
(47, 94, '1484885883', '9088000023300', 'Aditya Dwi Putra', 20000, 'Redeem'),
(48, 95, '1485103266', '9920382988', '221', 13500, 'Withdrawl'),
(49, 94, '1485103280', '590344', 'Aditya dasdsadsd', 41850, 'Deposit'),
(50, 94, '1485103967', 'F83943', 'ade', 116100, 'Deposit'),
(51, 78, '1485105158', '', '', 9, 'Redeem'),
(52, 94, '1485105286', 'F83943', 'Aditya ', 459000, 'Deposit'),
(53, 94, '1485105314', 'F83943', 'Aditya ', 459000, 'Deposit'),
(54, 78, '1485105745', '', '', 1200000, 'Topup'),
(55, 94, '1485105955', '9088000023300', 'Aditya Dwi Putra', 50000, 'Topup'),
(56, 78, '1485106157', '9088000023300', 'arul jeyek', 1200000, 'Topup'),
(57, 78, '1485106469', '', '', 1200001, 'Topup'),
(58, 78, '1485106773', '9088000023300', 'arul jeyek', 1200000, 'Topup'),
(59, 78, '1485106879', '9088000023300', 'arul jeyek', 12000000, 'Topup'),
(60, 78, '1485107151', '9088000023300', 'arul jeyek', 1000000, 'Redeem'),
(61, 78, '1485107228', '9088000023300', 'arul jeyek', 12, 'Redeem');

-- --------------------------------------------------------

--
-- Table structure for table `kurs`
--

CREATE TABLE `kurs` (
  `id_kurs` int(10) UNSIGNED NOT NULL,
  `jual` double NOT NULL,
  `beli` double NOT NULL,
  `stock` double NOT NULL,
  `kurs` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kurs`
--

INSERT INTO `kurs` (`id_kurs`, `jual`, `beli`, `stock`, `kurs`) VALUES
(1, 13294, 13274, 0, 'usd'),
(2, 2975, 2975, 0, 'myr');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_100000_create_password_resets_table', 1),
('2016_10_28_053920_create_deposits_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `redeem`
--

CREATE TABLE `redeem` (
  `id_redeem` int(10) UNSIGNED NOT NULL,
  `id_user` varchar(45) NOT NULL,
  `bank` varchar(45) NOT NULL,
  `bank_no` varchar(45) NOT NULL,
  `bank_name` varchar(45) NOT NULL,
  `kurs` varchar(45) NOT NULL,
  `amount` varchar(45) NOT NULL,
  `status_redeem` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `redeem`
--

INSERT INTO `redeem` (`id_redeem`, `id_user`, `bank`, `bank_no`, `bank_name`, `kurs`, `amount`, `status_redeem`, `created_at`, `updated_at`) VALUES
(2, '94', '', '', '', '1', '20000', '', '2017-01-20 03:40:16', '0000-00-00 00:00:00'),
(4, '94', 'Mandiri', '9088000023300', 'Aditya Dwi Putra', '== Kurs ==', '3', '', '2017-01-20 03:54:04', '0000-00-00 00:00:00'),
(5, '94', 'Mandiri', '9088000023300', 'Aditya Dwi Putra', '1', '3000', '', '2017-01-20 03:55:20', '0000-00-00 00:00:00'),
(6, '94', 'Mandiri', '9088000023300', 'Aditya Dwi Putra', '1', '2', 'verified', '2017-01-20 03:58:35', '2017-01-20 03:58:35'),
(7, '94', 'Mandiri', '9088000023300', 'Aditya Dwi Putra', '1', '20000', 'verified', '2017-01-20 04:18:03', '2017-01-20 04:18:03'),
(8, '78', '', '', '', '2', '9', 'verified', '2017-01-22 17:12:38', '2017-01-23 06:12:38'),
(9, '94', 'Mandiri', '9088000023300', 'Aditya Dwi Putra', '1', '50000', '', '2017-01-22 17:21:16', '0000-00-00 00:00:00'),
(10, '94', 'Mandiri', '9088000023300', 'Aditya Dwi Putra', '2', '80900', '', '2017-01-22 17:22:05', '0000-00-00 00:00:00'),
(11, '94', 'Mandiri', '9088000023300', 'Aditya Dwi Putra', '2', '50000', '', '2017-01-22 17:26:32', '0000-00-00 00:00:00'),
(12, '78', 'UHUY', '9088000023300', 'arul jeyek', '1', '1000000', 'verified', '2017-01-22 17:45:51', '2017-01-23 06:45:51'),
(13, '78', 'UHUY', '9088000023300', 'arul jeyek', '1', '12', 'verified', '2017-01-22 17:47:08', '2017-01-23 06:47:08');

-- --------------------------------------------------------

--
-- Table structure for table `topup`
--

CREATE TABLE `topup` (
  `id_topup` int(10) UNSIGNED NOT NULL,
  `id_user` varchar(45) NOT NULL,
  `bank` varchar(45) NOT NULL,
  `bank_no` varchar(45) NOT NULL,
  `bank_name` varchar(45) NOT NULL,
  `kurs` varchar(45) NOT NULL,
  `amount` double NOT NULL,
  `status_topup` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topup`
--

INSERT INTO `topup` (`id_topup`, `id_user`, `bank`, `bank_no`, `bank_name`, `kurs`, `amount`, `status_topup`, `created_at`, `updated_at`) VALUES
(24, '94', 'Mandiri', '9088000023300', 'Aditya Dwi Putra', '1', 50000, 'verified', '2017-01-20 03:15:25', '2017-01-20 03:15:25'),
(25, '94', 'Mandiri', '9088000023300', 'Aditya Dwi Putra', '1', 50000, 'verified', '2017-01-19 19:09:13', '0000-00-00 00:00:00'),
(26, '94', 'Mandiri', '9088000023300', 'Aditya Dwi Putra', '== Kurs ==', 0, '', '2017-01-19 17:28:41', '0000-00-00 00:00:00'),
(27, '94', 'Mandiri', '9088000023300', 'Aditya Dwi Putra', '1', 20000, '', '2017-01-19 17:30:41', '0000-00-00 00:00:00'),
(28, '94', 'Mandiri', '9088000023300', 'Aditya Dwi Putra', '2', 3000, '', '2017-01-19 18:27:52', '0000-00-00 00:00:00'),
(29, '94', 'Mandiri', '9088000023300', 'Aditya Dwi Putra', '1', 3000, 'verified', '2017-01-20 03:25:58', '2017-01-20 03:25:58'),
(31, '94', 'Mandiri', '9088000023300', 'Aditya Dwi Putra', '1', 50000, '', '2017-01-19 18:31:48', '0000-00-00 00:00:00'),
(33, '94', 'Mandiri', '9088000023300', 'Aditya Dwi Putra', '1', 50000, '', '2017-01-19 18:33:44', '0000-00-00 00:00:00'),
(34, '94', 'Mandiri', '9088000023300', 'Aditya Dwi Putra', '1', 50000, 'verified', '2017-01-20 04:17:43', '2017-01-20 04:17:43'),
(35, '94', 'Mandiri', '9088000023300', 'Aditya Dwi Putra', '1', 50000, '', '2017-01-19 18:34:59', '0000-00-00 00:00:00'),
(36, '94', 'Mandiri', '9088000023300', 'Aditya Dwi Putra', '1', 3000, '', '2017-01-19 18:35:37', '0000-00-00 00:00:00'),
(37, '94', 'Mandiri', '9088000023300', 'Aditya Dwi Putra', '1', 50000, 'verified', '2017-01-22 17:25:55', '2017-01-23 06:25:55'),
(38, '94', 'Mandiri', '9088000023300', 'Aditya Dwi Putra', '1', 50000, 'verified', '2017-01-20 04:11:44', '2017-01-20 04:11:44'),
(39, '78', '', '', '', '1', 1200001, 'verified', '2017-01-22 17:34:29', '2017-01-23 06:34:29'),
(40, '78', 'UHUY', '9088000023300', 'arul jeyek', '1', 1200000, 'verified', '2017-01-22 17:39:33', '2017-01-23 06:39:33'),
(41, '78', 'UHUY', '9088000023300', 'arul jeyek', '1', 12000000, 'verified', '2017-01-22 17:41:19', '2017-01-23 06:41:19');

-- --------------------------------------------------------

--
-- Table structure for table `uniqcode`
--

CREATE TABLE `uniqcode` (
  `id_code` int(10) UNSIGNED NOT NULL,
  `kode` varchar(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uniqcode`
--

INSERT INTO `uniqcode` (`id_code`, `kode`) VALUES
(1, '34'),
(2, '64'),
(3, '87'),
(4, '66'),
(5, '77'),
(6, '34'),
(7, '56'),
(8, '44');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawl`
--

CREATE TABLE `withdrawl` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `acc` varchar(256) NOT NULL,
  `accname` varchar(256) NOT NULL,
  `kurs` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdrawl`
--

INSERT INTO `withdrawl` (`id`, `id_user`, `acc`, `accname`, `kurs`, `jumlah`, `total`, `status`, `created_at`, `updated_at`) VALUES
(18, 94, 'F83943', '<b>Jhone</b>', 13000, 2, 27000, 'pending', '2017-01-11 17:00:00', '0000-00-00 00:00:00'),
(19, 94, 'F83943', 'terww', 13000, 3, 40500, 'verified', '2017-01-12 04:28:36', '0000-00-00 00:00:00'),
(21, 94, '', '', 13000, 3, 40500, 'verified', '2017-01-14 18:50:04', '2017-01-14 18:50:17'),
(22, 95, '9920382988', '221', 13000, 1, 13500, 'verified', '2017-01-15 17:47:31', '0000-00-00 00:00:00'),
(23, 95, 'Candice', 'DEfre', 13000, 2, 27000, 'verified', '2017-01-15 17:48:09', '0000-00-00 00:00:00'),
(24, 78, '1234567', 'Galih Santosa', 13000, 12, 162000, 'pending', '2017-02-14 02:54:36', '0000-00-00 00:00:00'),
(25, 78, '1234567', 'Galih Santosa', 13000, 11, 148500, 'pending', '2017-02-14 03:20:30', '0000-00-00 00:00:00'),
(26, 108, '1', 'tamvan', 13000, 2, 27000, 'pending', '2017-02-14 03:41:59', '0000-00-00 00:00:00'),
(27, 108, '1', 'tamvan', 13000, 2, 27000, 'pending', '2017-02-14 03:43:30', '0000-00-00 00:00:00'),
(28, 108, '1', 'tamvan', 13000, 2, 27000, 'pending', '2017-02-14 03:52:59', '0000-00-00 00:00:00'),
(29, 108, '1', 'tamvan', 13000, 2, 27000, 'pending', '2017-02-14 03:58:06', '0000-00-00 00:00:00'),
(30, 78, '1234567', 'Galih Santosa', 13000, 12, 162000, 'pending', '2017-02-14 04:06:16', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_user`
--
ALTER TABLE `bank_user`
  ADD PRIMARY KEY (`idbank_user`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`idcurrency`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id_deposit`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kurs`
--
ALTER TABLE `kurs`
  ADD PRIMARY KEY (`id_kurs`) USING BTREE;

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `redeem`
--
ALTER TABLE `redeem`
  ADD PRIMARY KEY (`id_redeem`);

--
-- Indexes for table `topup`
--
ALTER TABLE `topup`
  ADD PRIMARY KEY (`id_topup`);

--
-- Indexes for table `uniqcode`
--
ALTER TABLE `uniqcode`
  ADD PRIMARY KEY (`id_code`);

--
-- Indexes for table `withdrawl`
--
ALTER TABLE `withdrawl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `idcurrency` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id_deposit` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `kurs`
--
ALTER TABLE `kurs`
  MODIFY `id_kurs` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `redeem`
--
ALTER TABLE `redeem`
  MODIFY `id_redeem` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `topup`
--
ALTER TABLE `topup`
  MODIFY `id_topup` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `uniqcode`
--
ALTER TABLE `uniqcode`
  MODIFY `id_code` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `withdrawl`
--
ALTER TABLE `withdrawl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
