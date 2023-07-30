-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2023 at 11:27 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `premiere`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `satisfaction` varchar(50) NOT NULL,
  `userrange` int(150) NOT NULL,
  `comments` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `mail`, `satisfaction`, `userrange`, `comments`) VALUES
('Pooja', 'pooja@gmail.com', 'Excellent', 100, 'I liked the Movie!');

-- --------------------------------------------------------

--
-- Table structure for table `moviedatabase`
--

CREATE TABLE `moviedatabase` (
  `id` int(11) NOT NULL,
  `title` varchar(80) DEFAULT NULL,
  `genere` varchar(20) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `director` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `moviedatabase`
--

INSERT INTO `moviedatabase` (`id`, `title`, `genere`, `duration`, `director`) VALUES
(15, 'Evil Dead', 'Horror', 250, 'Fede Alvarez'),
(16, 'A Whisker Away', 'Romance', 210, 'Junichi Sato'),
(17, 'Charlotte', 'Sci-Fi, Romance', 180, 'Joe Hisaishi'),
(18, 'Space Sweepers', 'Sci-Fi', 260, 'Jo Sung-hee'),
(19, 'Drifting Home', 'Sci-Fi, Fantasy', 230, 'Hiroyasu Ishida'),
(20, 'Spirited Away', 'Family Features', 250, 'Hayao Miyazaki'),
(21, 'Kimi no Na Wa', 'Romance', 235, 'Makoto Shinkai'),
(22, 'The Pursuit of Happyness', 'Drama', 215, 'Gabriele Muccino'),
(23, 'Avengers - End Game', 'Sci-Fi, Drama', 235, 'Joss Whedon'),
(24, 'Iron Man', 'Sci-Fi', 210, 'Joss Whedon'),
(25, 'Jujutsu Kaisen - Zero', 'Drama, Fantasy', 190, ' Seong-Hu Park'),
(26, 'Frozen', 'Fantasy', 195, 'Jennifer Lee');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pid` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `cname` varchar(50) NOT NULL,
  `cnumber` varchar(20) NOT NULL,
  `cmonth` varchar(20) NOT NULL,
  `ccvv` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pid`, `uid`, `cname`, `cnumber`, `cmonth`, `ccvv`) VALUES
(2, NULL, 'Pooja', '9852649465165165', '2023-12', 'R45'),
(3, NULL, 'Pooju', '6451642862645254', '2023-05', 'A43'),
(4, NULL, 'adarsh', '1234598798563213', '2023-09', 'a23'),
(5, NULL, 'Adi', '5518485952841952', '2023-05', 'k89');

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `id` int(11) NOT NULL,
  `MId` int(11) DEFAULT NULL,
  `screen` int(11) DEFAULT NULL,
  `slot` int(11) DEFAULT NULL,
  `booked` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`id`, `MId`, `screen`, `slot`, `booked`) VALUES
(12, 15, 2, 3, 9),
(13, 16, 1, 1, 0),
(14, 17, 2, 3, 5),
(15, 18, 1, 2, 0),
(16, 19, 3, 2, 2),
(17, 20, 1, 3, 2),
(18, 21, 2, 3, 1),
(19, 22, 3, 1, 3),
(20, 23, 1, 2, 0),
(21, 24, 2, 2, 0),
(22, 25, 3, 3, 0),
(23, 26, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `name`, `dob`, `email`, `password`) VALUES
(1, 'pooja', '2023-07-10', 'pooja@gmail.com', '1234'),
(2, 'naruto', '1994-10-10', 'naruto@gmail.com', '1234'),
(3, 'Adi', '2023-07-11', 'adi@gmail.com', '1234'),
(4, 'poojabk', '2000-01-15', 'pooja123@gmail.com', 'pooja');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `moviedatabase`
--
ALTER TABLE `moviedatabase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `pooja1` (`uid`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MId` (`MId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `moviedatabase`
--
ALTER TABLE `moviedatabase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `pooja1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shows`
--
ALTER TABLE `shows`
  ADD CONSTRAINT `shows_ibfk_1` FOREIGN KEY (`MId`) REFERENCES `moviedatabase` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
