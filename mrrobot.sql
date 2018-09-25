-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 25, 2018 at 03:00 PM
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
  `name` varchar(400) NOT NULL,
  `release_date` date NOT NULL,
  `genre` varchar(100) NOT NULL,
  `cover_img_link` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ps4_games`
--

INSERT INTO `ps4_games` (`id`, `name`, `release_date`, `genre`, `cover_img_link`) VALUES
(1, 'God of War', '2018-05-14', 'action-adventure ', '/mrrobot/img/ps4/game_cover/god_of_war_ps4_cover.jpg'),
(2, 'Horizon Zero Dawn', '2018-01-10', 'action role-playing', '/mrrobot/img/ps4/game_cover/horizon_zero_dawn_ps4_cover.jpg'),
(3, 'Batman: Arkham Knight', '2015-11-23', 'action adventure', '/mrrobot/img/ps4/game_cover/batman_arkham_knight_ps4_cover.jpg'),
(4, 'Batman: Return to Arkham', '2016-10-18', 'action adventure', '/mrrobot/img/ps4/game_cover/batman_return_arkham_ps4_cover.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ps4_games`
--
ALTER TABLE `ps4_games`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ps4_games`
--
ALTER TABLE `ps4_games`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
