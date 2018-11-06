-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2018 at 12:22 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
create database loan_app;
use loan_app;
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `AccountNumber` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `AccountType` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `applyloan`
--

CREATE TABLE `applyloan` (
  `LoanId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `AccountNumber` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `loan_amount` int(5) NOT NULL,
  `loan_limit` int(5) NOT NULL,
  `payment_date` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `max` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `applyloan`
--

INSERT INTO `applyloan` (`LoanId`, `AccountNumber`, `loan_amount`, `loan_limit`, `payment_date`, `max`) VALUES
('707593552', '', 4000, 0, '20', 0),
('720395117', '', 4000, 0, '20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `chatroom`
--

CREATE TABLE `chatroom` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sms_status` int(1) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `garant` int(12) NOT NULL,
  `applicat` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chatroom`
--

INSERT INTO `chatroom` (`id`, `name`, `message`, `sms_status`, `time`, `garant`, `applicat`) VALUES
(35, 'Dan', 'hello\r\n', 0, '2018-10-19 15:02:03', 3453, 1017856),
(36, 'Dan', 'How are you\r\n', 0, '2018-10-19 15:05:51', 3453, 1017856),
(37, 'Dan', 'Mr. John, i amShisha', 0, '2018-10-19 15:06:28', 12345, 1017856),
(38, 'Dan', 'Jo', 0, '2018-10-19 15:07:22', 12345, 1017856),
(39, 'Dan', 'Now', 0, '2018-10-19 15:10:48', 12345, 1017856),
(40, 'Dan', 'hello', 0, '2018-10-19 15:14:07', 12345, 1017856),
(41, 'Dan', 'ok', 0, '2018-10-19 15:14:33', 3453, 1017856),
(42, 'Dan', 'Never', 0, '2018-10-19 15:15:23', 12345, 1017856),
(43, 'Dan', '', 0, '2018-10-19 15:17:50', 3453, 1017856),
(44, 'Dan', 'h', 0, '2018-10-19 15:21:43', 3453, 1017856),
(45, 'Dan', 'hey', 0, '2018-10-19 15:26:49', 3453, 1017856),
(46, 'Dan', 'hey', 0, '2018-10-19 15:27:19', 3453, 1017856),
(47, 'Dan', 'hey', 0, '2018-10-19 15:28:54', 3453, 1017856),
(48, 'Dan', 'yx', 0, '2018-10-19 15:34:21', 3453, 1017856),
(49, 'Dan', 'yeh', 0, '2018-10-19 15:35:44', 3453, 1017856),
(50, 'Dan', 'okay\r\n', 0, '2018-10-19 15:36:11', 3453, 1017856),
(51, 'Dan', 'What', 0, '2018-10-19 15:36:17', 3453, 1017856),
(52, 'Dan', 'Peter', 0, '2018-10-19 15:36:35', 12345, 1017856),
(53, 'Danny', 'hello', 0, '2018-10-20 20:14:21', 0, 3269123),
(54, 'Danny', 'kjbjd', 0, '2018-10-20 20:15:05', 0, 3269123),
(55, 'Dan', '', 0, '2018-10-22 09:28:09', 3453, 1017856),
(56, 'Dan', 'lkjsdlfk', 0, '2018-10-22 09:29:37', 3453, 1017856),
(57, 'Dan', 'kndsf', 0, '2018-10-22 10:03:24', 3453, 1017856),
(58, 'Dan', 'ldhslfk', 0, '2018-10-22 10:05:16', 3453, 1017856),
(59, 'Dan', 'ldjns', 0, '2018-10-22 10:05:37', 3453, 1017856),
(60, 'Dan', 'lkanlkcn', 0, '2018-10-22 10:05:43', 3453, 1017856),
(61, 'Dan', '', 0, '2018-10-22 10:05:45', 3453, 1017856),
(62, 'Dan', 'MNZCM,LNkl\"NBQLKwnbclkWNSCK;IPWQKLC', 0, '2018-10-22 10:05:55', 3453, 1017856);

-- --------------------------------------------------------

--
-- Table structure for table `chatters`
--

CREATE TABLE `chatters` (
  `chatlinkingId` int(12) NOT NULL,
  `user1_Id` int(15) NOT NULL,
  `user2_Id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chatters`
--

INSERT INTO `chatters` (`chatlinkingId`, `user1_Id`, `user2_Id`) VALUES
(1, 1017856, 3453),
(11, 1017856, 12345),
(13, 1017856, 1017856),
(14, 1017856, 0),
(15, 1017856, 47309),
(16, 1017856, 3269123),
(17, 3269123, 0);

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `AccountNumber` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `balance` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guarantor`
--

CREATE TABLE `guarantor` (
  `GuarantorId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GuarantorName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `LoanId` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Commision` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `Nationalid` int(8) NOT NULL,
  `First` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Last` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `YOB` date NOT NULL,
  `Email` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(10) NOT NULL,
  `pass1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`Nationalid`, `First`, `Last`, `YOB`, `Email`, `phone`, `pass1`, `type`) VALUES
(12, 'a', 'aq', '2018-10-10', 'ksalxknz', 123, '81dc9bdb52d04dc20036dbd8313ed055', 1),
(888, '94837', '8924', '2018-10-14', 'jgkdg', 7097094, 'f1c1592588411002af340cbaedd6fc33', 1),
(3453, 'Dan', 'd', '2018-10-10', 'daniel.simiyu@strathmore.', 2147483647, '202cb962ac59075b964b07152d234b70', 0),
(8453, 'gagas', 'manscm', '2018-10-10', 'xzncljkdshjakhcoi', 4875837, '81dc9bdb52d04dc20036dbd8313ed055', 1),
(12345, 'John', 'Wanyonyi', '2018-10-16', '', 722000000, 'e10adc3949ba59abbe56e057f20f883e', 0),
(47309, 'Penny', 'Accapella', '2018-10-16', 'kldhlkjfgv', 814375089, 'e807f1fcf82d132f9bb018ca6738a19f', 0),
(89665, '12', '456', '2018-10-15', 'daniel.simiyu@strathmore.', 722000054, 'b1fa0218c1040b082e2374a941707c35', 1),
(254554, '1', '65365', '2018-10-16', '', 722000000, '310dcbbf4cce62f762a2aaa148d556bd', 1),
(344556, 'j', 's', '2018-10-09', 'lkmdflkv', 798275390, 'e807f1fcf82d132f9bb018ca6738a19f', 1),
(456789, 'kelly', 'ineza', '1997-02-28', 'ikellybertile@gmail.com', 705218742, 'f49c2af8d476dc5ebf746ed0dbf16287', 1),
(1017856, 'Dan', 'Oyugis', '2018-10-10', 'dan@gmail.com', 709988765, '202cb962ac59075b964b07152d234b70', 1),
(1234567, 'sindayikengera', 'Lily', '1998-01-29', 'lilysindayikengera@strath', 707593552, 'c6d1592b6f0712579e888f09cb2cfbdb', 1),
(3269123, 'Danny', 'Dan', '1890-03-25', 'dan@gmail.com', 708965432, 'e807f1fcf82d132f9bb018ca6738a19f', 0),
(9887654, '123', '123', '2018-10-14', 'da@gmail.com', 788234567, 'e807f1fcf82d132f9bb018ca6738a19f', 1),
(35608223, 'Daniel', 'Simiyu', '0000-00-00', 'daniel.simiyu@strathmore.', 2147483647, '1234', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`AccountNumber`);

--
-- Indexes for table `applyloan`
--
ALTER TABLE `applyloan`
  ADD PRIMARY KEY (`LoanId`);

--
-- Indexes for table `chatroom`
--
ALTER TABLE `chatroom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatters`
--
ALTER TABLE `chatters`
  ADD PRIMARY KEY (`chatlinkingId`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`AccountNumber`);

--
-- Indexes for table `guarantor`
--
ALTER TABLE `guarantor`
  ADD PRIMARY KEY (`GuarantorId`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`Nationalid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chatroom`
--
ALTER TABLE `chatroom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `chatters`
--
ALTER TABLE `chatters`
  MODIFY `chatlinkingId` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
