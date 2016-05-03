-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 14 apr 2016 kl 11:43
-- Serverversion: 10.1.10-MariaDB
-- PHP-version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `newhorizons`
--
CREATE DATABASE IF NOT EXISTS `newhorizons` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `newhorizons`;

-- --------------------------------------------------------

--
-- Tabellstruktur `users`
--

CREATE TABLE `users` (
  `id` int(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `users`
--

INSERT INTO `users` (`id`, `name`, `password`) VALUES
(1, 'Wintryrex@live.com', 'test');

-- --------------------------------------------------------

--
-- Tabellstruktur `vacation`
--

CREATE TABLE `vacation` (
  `id` int(4) NOT NULL,
  `land` varchar(255) NOT NULL,
  `kontinent` varchar(255) NOT NULL,
  `aventyr` varchar(200) NOT NULL,
  `avslappning` varchar(200) NOT NULL,
  `kultur` varchar(200) NOT NULL,
  `vader` varchar(200) NOT NULL,
  `terrang` varchar(200) NOT NULL,
  `avstand` float NOT NULL,
  `resaPris` int(4) NOT NULL,
  `boendePris` int(4) NOT NULL,
  `levnadsPris` int(4) NOT NULL,
  `boende` varchar(255) NOT NULL,
  `transportsmedel` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `vacation`
--

INSERT INTO `vacation` (`id`, `land`, `kontinent`, `aventyr`, `avslappning`, `kultur`, `vader`, `terrang`, `avstand`, `resaPris`, `boendePris`, `levnadsPris`, `boende`, `transportsmedel`) VALUES
(1, 'Sverige', 'Skandinavien', '', '', '', '', '', 0, 0, 0, 0, '', '');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`);

--
-- Index för tabell `vacation`
--
ALTER TABLE `vacation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `users`
--
ALTER TABLE `users`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT för tabell `vacation`
--
ALTER TABLE `vacation`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
