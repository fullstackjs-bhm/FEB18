-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2018 at 03:25 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fsbhmprod_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `id` int(8) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `skill1` varchar(255) NOT NULL,
  `skill2` varchar(255) NOT NULL,
  `social_url_1` varchar(255) NOT NULL,
  `social_url_2` varchar(255) NOT NULL,
  `social_url_3` varchar(255) NOT NULL,
  `referrer` int(1) NOT NULL,
  `profile_img_src` varchar(255) NOT NULL,
  `short_bio` text NOT NULL,
  `bio` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(2) NOT NULL,
  `completion_month` int(2) NOT NULL,
  `completion_year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`id`, `firstname`, `lastname`, `email`, `skill1`, `skill2`, `social_url_1`, `social_url_2`, `social_url_3`, `referrer`, `profile_img_src`, `short_bio`, `bio`, `city`, `state`, `completion_month`, `completion_year`) VALUES
(4, 'Chris', 'Smith', 'Csmithln21@gmail.com', 'HTML', 'CSS', 'https://codepen.io/codesmith13', 'https://github.com/codesmith13', 'www.linkedin.com/in/chris-smith-5050b09a', 0, '', '', '', 'Birmingham', 'AL', 8, 2017),
(6, 'Steven', 'Bustamento', 'Stbustamento@gmail.com', 'Front End Development', 'Design', 'https://codepen.io/dev-bustamento', 'https://github.com/stbustamento', 'https://linkedin.com/in/stbustamento/', 0, '', '', '', 'Helena', 'AL', 10, 2017),
(7, 'Jerome', 'Chatman', 'jchatma1@hotmail.com', 'HTML', 'CSS', 'https://codepen.io/jchat', 'https://github.com/jchatma57', 'https://linkedin.com/in/jeromechatman', 0, '', '', '', 'Hoover', 'AL', 10, 2017),
(8, 'Shawndrea', 'DeShazo', 'sdeshazo3298@gmail.com', 'Front-End Developer ', '', 'https://codepen.io/sdeshazo/', 'https://github.com/shawndrea08', 'https://www.linkedin.com/in/shawndrea-deshazo-39085b13b', 0, '', '', '', 'Calera', 'AL', 10, 2017),
(9, 'Brad', 'Bales', 'edward.b.bales@gmail.com', 'Javascript', 'PHP', 'https://codepen.io/brad4au57', 'https://github.com/brad4au57', 'https://www.linkedin.com/in/edwardbradleybales', 0, '', '', '', 'Birmingham', 'AL', 10, 2017);

-- --------------------------------------------------------

--
-- Table structure for table `fsevents`
--

CREATE TABLE `fsevents` (
  `id` int(11) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_description` text NOT NULL,
  `event_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `event_cost` int(4) DEFAULT '0',
  `event_public` int(1) NOT NULL DEFAULT '0',
  `event_online` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fsevents`
--

INSERT INTO `fsevents` (`id`, `event_name`, `event_description`, `event_date`, `event_cost`, `event_public`, `event_online`) VALUES
(1, 'Meet & Greet', 'This event is a simple meet and greet that allows alumni of the Full Stack Program to introduce themselves to the new incoming group. They are able to share their current successes or knowledge with those who are new to the program. As we continue to grow, we desire to strengthen the community of developer through this event', '2017-11-02 23:00:00', 0, 1, 0),
(3, 'Peer Program', 'Peer Programming also known as Pair Programming is the act of coding with a friend or colleague. During this process the roles are similar to a driver and a navigator. While one person codes, the other helps think through the necessary steps and assist in catching errors early. This event is held to aid Full Stack students in the experience of working socially, as they may in the workforce environment.', '2018-01-09 00:00:00', 0, 0, 0),
(4, 'Peer Program', 'Peer Programming also known as Pair Programming is the act of coding with a friend or colleague. During this process the roles are similar to a driver and a navigator. While one person codes, the other helps think through the necessary steps and assist in catching errors early. This event is held to aid Full Stack students in the experience of working socially, as they may in the workforce environment.', '2018-01-10 00:00:00', 0, 0, 0),
(5, 'Peer Program', 'Peer Programming also known as Pair Programming is the act of coding with a friend or colleague. During this process the roles are similar to a driver and a navigator. While one person codes, the other helps think through the necessary steps and assist in catching errors early. This event is held to aid Full Stack students in the experience of working socially, as they may in the workforce environment.', '2018-01-12 00:00:00', 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fsevents`
--
ALTER TABLE `fsevents`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `fsevents`
--
ALTER TABLE `fsevents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
