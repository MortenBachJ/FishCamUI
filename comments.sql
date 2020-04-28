-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2020 at 01:45 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `video`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `reply_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `reply_id`, `user_id`, `video_id`, `body`, `created_at`) VALUES
(20, 0, 1, 0, 'it is a very nice fish\r\n', '2020-04-27 09:26:13'),
(21, 0, 3, 0, 'I love fish! Trout is my fav <3', '2020-04-27 09:26:19'),
(22, 0, 1, 0, 'I think it might be an alian', '2020-04-27 09:26:32'),
(23, 20, 3, 0, 'I think so as well!', '2020-04-27 09:26:39'),
(24, 22, 2, 0, 'you are stupid', '2020-04-27 09:26:47'),
(25, 22, 3, 0, 'alien*', '2020-04-27 09:27:02'),
(26, 0, 2, 0, 'this is super cool', '2020-04-27 09:27:08'),
(27, 25, 1, 0, 'you know nothing', '2020-04-27 09:27:31'),
(28, 21, 2, 0, 'same <3', '2020-04-27 09:27:53'),
(29, 26, 13, 0, 'I have an unlucky user id', '2020-04-27 09:29:50'),
(30, 29, 2, 0, 'k', '2020-04-27 09:30:23'),
(31, 23, 4, 0, 'it mighrt be a ccrap', '2020-04-27 10:40:58'),
(32, 0, 4, 0, 'crap fun', '2020-04-27 10:41:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;