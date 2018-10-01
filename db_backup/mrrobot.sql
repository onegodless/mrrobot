-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 02, 2018 at 01:45 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mrrobot`
--

-- --------------------------------------------------------

--
-- Table structure for table `ps4_games`
--

CREATE TABLE `ps4_games` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_db` text NOT NULL,
  `name` varchar(400) NOT NULL,
  `release_date` date NOT NULL,
  `genre` varchar(100) NOT NULL,
  `cover_img_link` varchar(350) NOT NULL,
  `price` decimal(10,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ps4_games`
--

INSERT INTO `ps4_games` (`id`, `name_db`, `name`, `release_date`, `genre`, `cover_img_link`, `price`) VALUES
(1, 'god_of_war', 'God of War', '2018-05-14', 'action-adventure ', '/mrrobot/img/ps4/game_cover/god_of_war_ps4_cover.jpg', '54.45'),
(2, 'horizon_zero_dawn', 'Horizon Zero Dawn', '2018-01-10', 'action role-playing', '/mrrobot/img/ps4/game_cover/horizon_zero_dawn_ps4_cover.jpg', '48.98'),
(3, 'batman_arkham_knight', 'Batman: Arkham Knight', '2015-11-23', 'action adventure', '/mrrobot/img/ps4/game_cover/batman_arkham_knight_ps4_cover.jpg', '32.47'),
(4, 'batman_return_to_arkham', 'Batman: Return to Arkham', '2016-10-18', 'action adventure', '/mrrobot/img/ps4/game_cover/batman_return_arkham_ps4_cover.jpeg', '29.58'),
(5, 'batman_3', 'Batman 3', '2018-09-19', 'third-person action', '/mrrobot/img/ps4/game_cover/batman_arkham_knight_ps4_cover.jpg', '60.24'),
(6, 'batman_4', 'Batman 4', '2018-09-07', 'third-person action', '/mrrobot/img/ps4/game_cover/batman_arkham_knight_ps4_cover.jpg', '60.24'),
(7, 'batman_5', 'Batman 5', '2018-09-30', 'third-person action', '/mrrobot/img/ps4/game_cover/batman_arkham_knight_ps4_cover.jpg', '60.24'),
(8, 'batman_6', 'Batman 6', '2018-09-01', 'third-person action', '/mrrobot/img/ps4/game_cover/batman_arkham_knight_ps4_cover.jpg', '60.24'),
(9, 'batman_7', 'Batman 7', '2018-09-13', 'third-person action', '/mrrobot/img/ps4/game_cover/batman_arkham_knight_ps4_cover.jpg', '60.24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`) VALUES
(1, 'jesus', '1234'),
(2, 'jose', '1234'),
(3, 'daniela', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ps4_games`
--
ALTER TABLE `ps4_games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ps4_games`
--
ALTER TABLE `ps4_games`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
