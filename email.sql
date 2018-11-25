-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2018 at 10:56 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `email`
--

-- --------------------------------------------------------

--
-- Table structure for table `draft`
--

CREATE TABLE `draft` (
  `draft_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `sub` varchar(50) NOT NULL,
  `attach` varchar(200) NOT NULL,
  `msg` text NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trash`
--

CREATE TABLE `trash` (
  `trash_id` int(11) NOT NULL,
  `rec_id` varchar(50) NOT NULL,
  `sen_id` varchar(50) NOT NULL,
  `sub` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trash`
--

INSERT INTO `trash` (`trash_id`, `rec_id`, `sen_id`, `sub`, `msg`, `date`) VALUES
(1, 'abc@gmail.com', 'tiwarichandan@gmail.com', 'qq', 'hello', '2018-11-25');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `user_jd` int(11) NOT NULL,
  `user_name` char(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`user_jd`, `user_name`, `password`) VALUES
(1, 'tiwarichandan@gmail.com', 'chandan'),
(2, 'abc@gmail.com', 'abc'),
(3, 'ww@gmail.com', 'ww');

-- --------------------------------------------------------

--
-- Table structure for table `usermail`
--

CREATE TABLE `usermail` (
  `mail_id` int(11) NOT NULL,
  `rec_id` varchar(30) NOT NULL,
  `sen_id` varchar(30) NOT NULL,
  `sub` char(30) NOT NULL,
  `msg` text NOT NULL,
  `attachement` text NOT NULL,
  `recDT` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usermail`
--

INSERT INTO `usermail` (`mail_id`, `rec_id`, `sen_id`, `sub`, `msg`, `attachement`, `recDT`) VALUES
(3, 'ww@gmail.com', 'tiwarichandan@gmail.com', 'hello', 'hey how are you', '', '2018-11-25'),
(4, 'tiwarichandan@gmail.com', 'abc@gmail.com', 'gg', 'yyyyy', '', '2018-11-25'),
(5, 'tiwarichandan@gmail.com', 'abc@gmail.com', 'gg', 'yyyyy', '', '2018-11-25'),
(6, 'abc@gmail.com', 'abc@gmail.com', 'gg--msg failed', 'gggg', '', '2018-11-25'),
(7, 'abc@gmail.com', 'abc@gmail.com', 'ffff--msg failed', 'ffffff', '', '2018-11-25'),
(8, 'abc@gmail.com', 'tiwarichandan@gmail.com', 'gfgfg', 'fgfgg', '', '2018-11-25'),
(9, 'abc@gmail.com', 'tiwarichandan@gmail.com', 'rrrr', 'rrrrrrr', '', '2018-11-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `draft`
--
ALTER TABLE `draft`
  ADD PRIMARY KEY (`draft_id`);

--
-- Indexes for table `trash`
--
ALTER TABLE `trash`
  ADD PRIMARY KEY (`trash_id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`user_jd`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `usermail`
--
ALTER TABLE `usermail`
  ADD PRIMARY KEY (`mail_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `draft`
--
ALTER TABLE `draft`
  MODIFY `draft_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trash`
--
ALTER TABLE `trash`
  MODIFY `trash_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `user_jd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `usermail`
--
ALTER TABLE `usermail`
  MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
