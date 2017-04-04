-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2017 at 05:14 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `Complete_Name` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `Nickname` text NOT NULL,
  `Email_Address` text NOT NULL,
  `Home_Address` varchar(128) DEFAULT NULL,
  `Gender` char(1) NOT NULL,
  `Cellphone_Number` varchar(20) NOT NULL,
  `Comments` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `Complete_Name`, `slug`, `Nickname`, `Email_Address`, `Home_Address`, `Gender`, `Cellphone_Number`, `Comments`) VALUES
(1245, 'Anthony Howard Stark', 'anthony-howard-stark', 'Tony', 'iamironman@gmail.com', 'Avengers Tower. New York', 'M', 'Confidential', 'I am Iron Man!'),
(1246, 'Steve Rogers', 'steve-rogers', 'Captain America', 'captainsinceww2@gmail.com', 'Avengers Tower. New York', 'M', 'No CP since WW2', 'Proud to serve America!'),
(1247, 'Bruce Banner', 'bruce-banner', 'Hulk', 'hulksmash@gmail.com', 'Avengers Tower. New York', 'M', 'I smashed my phone!', 'Hulk Smaaaaash!'),
(1248, 'Clint Barton', 'clint-barton', 'Hawkeye', 'nomiss@gmail.com', 'Avengers Tower. New York', 'M', 'Confidential', 'I can shoot at any range!'),
(1249, 'Natasha Romanova', 'natasha-romanova', 'Black Widow', 'agentblackwidow@gmail.com', 'Avengers Tower. New York', 'F', 'Confidential', ''),
(1250, 'Thor Odinson', 'thhor-odinson', 'Thor', 'nointernetinasgard@gmail.com', 'Asgard', 'M', 'No signal in Asgard', 'God of Thunder!');

-- --------------------------------------------------------

--
-- Table structure for table `trivia`
--

CREATE TABLE `trivia` (
  `id` int(11) NOT NULL,
  `question` varchar(128) NOT NULL,
  `answer` varchar(128) NOT NULL,
  `profile_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trivia`
--

INSERT INTO `trivia` (`id`, `question`, `answer`, `profile_id`) VALUES
(1, 'Who''s my first love', 'Peggy Carter', 1246);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `trivia`
--
ALTER TABLE `trivia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_id` (`profile_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1251;
--
-- AUTO_INCREMENT for table `trivia`
--
ALTER TABLE `trivia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `trivia`
--
ALTER TABLE `trivia`
  ADD CONSTRAINT `trivia_ibfk_1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
