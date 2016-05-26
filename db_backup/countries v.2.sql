-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 01 maj 2016 kl 21:04
-- Serverversion: 10.1.10-MariaDB
-- PHP-version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `newhorizons`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `countries`
--

CREATE TABLE `countries` (
  `id` int(4) NOT NULL,
  `stad` varchar(255) NOT NULL,
  `land` varchar(255) NOT NULL,
  `vandring` tinyint(1) NOT NULL,
  `kanot` tinyint(1) NOT NULL,
  `backpacking` tinyint(1) NOT NULL,
  `safari` tinyint(1) NOT NULL,
  `skidor` tinyint(1) NOT NULL,
  `surfing` tinyint(1) NOT NULL,
  `dykning` tinyint(1) NOT NULL,
  `bergsklattring` tinyint(1) NOT NULL,
  `spa` tinyint(1) NOT NULL,
  `naturupplevelser` tinyint(1) NOT NULL,
  `solsemester` tinyint(1) NOT NULL,
  `yoga` tinyint(1) NOT NULL,
  `meditation` tinyint(1) NOT NULL,
  `hotell` tinyint(1) NOT NULL,
  `motell` tinyint(1) NOT NULL,
  `vandrarhem` tinyint(1) NOT NULL,
  `camping` tinyint(1) NOT NULL,
  `bedAndBreakfast` tinyint(1) NOT NULL,
  `kostnadTransport` float NOT NULL,
  `kostnadBoende` float NOT NULL,
  `levnadsKostnad` float NOT NULL,
  `distans` int(5) NOT NULL,
  `solTemp` tinyint(1) NOT NULL,
  `svalTemp` tinyint(1) NOT NULL,
  `kalltTemp` tinyint(1) NOT NULL,
  `bergigt` tinyint(1) NOT NULL,
  `plant` tinyint(1) NOT NULL,
  `oken` tinyint(1) NOT NULL,
  `skog` tinyint(1) NOT NULL,
  `narhetTillVatten` tinyint(1) NOT NULL,
  `sightseeing` tinyint(1) NOT NULL,
  `storstad` tinyint(1) NOT NULL,
  `historia` tinyint(1) NOT NULL,
  `religion` tinyint(1) NOT NULL,
  `utbildningssyfte` tinyint(1) NOT NULL,
  `matresa` tinyint(1) NOT NULL,
  `kontinent` varchar(240) NOT NULL,
  `flygplan` tinyint(1) NOT NULL,
  `tag` tinyint(1) NOT NULL,
  `buss` tinyint(1) NOT NULL,
  `annat` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `countries`
--

INSERT INTO `countries` (`id`, `stad`, `land`, `vandring`, `kanot`, `backpacking`, `safari`, `skidor`, `surfing`, `dykning`, `bergsklattring`, `spa`, `naturupplevelser`, `solsemester`, `yoga`, `meditation`, `hotell`, `motell`, `vandrarhem`, `camping`, `bedAndBreakfast`, `kostnadTransport`, `kostnadBoende`, `levnadsKostnad`, `distans`, `solTemp`, `svalTemp`, `kalltTemp`, `bergigt`, `plant`, `oken`, `skog`, `narhetTillVatten`, `sightseeing`, `storstad`, `historia`, `religion`, `utbildningssyfte`, `matresa`, `kontinent`, `flygplan`, `tag`, `buss`, `annat`) VALUES
(1, 'Paris', 'Frankrike', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1262, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 'Europa', 1, 1, 1, 1),
(3, 'Barcelona', 'Spanien', 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2168, 0, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 'Europa', 1, 1, 1, 1),
(4, 'Aten', 'Grekland', 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2809, 0, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 'Europa', 1, 1, 1, 1),
(5, 'Zürich ', 'Schweiz', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1259, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 'Europa', 1, 1, 1, 1),
(6, 'Tokyo', 'Japan', 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 8694, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 'Asien', 1, 0, 0, 1),
(7, 'Kairo', 'Egypten', 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6061, 1, 0, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 'Afrika', 1, 0, 0, 1),
(8, 'Caracas ', 'Venezuela', 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8412, 0, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 'Sydamerika', 1, 0, 0, 1),
(9, 'Bamako ', 'Mali', 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7345, 0, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 'Afrika', 1, 0, 0, 1),
(10, 'Timbuktu ', 'Mali', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6457, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 'Afrika', 1, 0, 0, 1),
(11, 'Djenné', 'Mali', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6525, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 'Afrika', 0, 0, 0, 1),
(12, 'Lyon ', 'Frankrike', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1938, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0, 'Europa', 1, 1, 1, 1),
(13, 'Marseille ', 'Frankrike', 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2247, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 'Europa', 1, 1, 1, 1),
(14, 'Maracaibo ', 'Venezuela', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 8709, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 'Sydamerika', 1, 0, 0, 1),
(15, 'Genève', 'Schweiz', 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1415, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 'Europa', 1, 1, 1, 1),
(16, 'Basel', 'Schweiz', 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1167, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 'Europa', 1, 1, 1, 1),
(17, 'Yokohama', 'Japan', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 8702, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 'Asien', 1, 0, 0, 1),
(18, 'Osaka', 'Japan', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 8593, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 'Asien', 1, 0, 0, 1),
(19, 'Thessaloniki', 'Grekland', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2346, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 'Europa', 1, 1, 1, 1),
(20, 'Pireus ', 'Grekland', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2814, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 'Europa', 1, 1, 1, 1),
(21, 'Valencia', 'Venezuela', 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 8515, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 'Sydamerika', 1, 0, 0, 0),
(22, 'Alexandria', 'Egypten', 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 5836, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 'Afrika', 1, 0, 0, 1),
(23, 'Giza', 'Egypten', 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 5990, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 'Afrika', 1, 0, 0, 1),
(24, 'Buenos Aires', 'Argentina', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 12087, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 'Sydamerika', 1, 0, 0, 0),
(25, 'Córdoba', 'Argentina', 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 12106, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 'Sydamerika', 1, 0, 0, 0),
(26, 'Rosario ', 'Argentina', 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 12056, 0, 1, 0, 0, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 'Sydamerika', 1, 0, 0, 1),
(27, 'Madrid', 'Spanien', 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2602, 0, 1, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 'Europa', 1, 1, 1, 1),
(28, 'Valencia', 'Spanien', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2585, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 'Europa', 1, 1, 1, 1);

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
