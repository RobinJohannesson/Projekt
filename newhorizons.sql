-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 21 apr 2016 kl 11:37
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

-- --------------------------------------------------------

--
-- Tabellstruktur `aventyr`
--

CREATE TABLE `aventyr` (
  `id` int(4) NOT NULL,
  `vandring` tinyint(1) NOT NULL,
  `kanot` tinyint(1) NOT NULL,
  `backpacking` tinyint(1) NOT NULL,
  `safari` tinyint(1) NOT NULL,
  `skidor` tinyint(1) NOT NULL,
  `surfing` tinyint(1) NOT NULL,
  `dykning` tinyint(1) NOT NULL,
  `bergsklattring` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `aventyr`
--

INSERT INTO `aventyr` (`id`, `vandring`, `kanot`, `backpacking`, `safari`, `skidor`, `surfing`, `dykning`, `bergsklattring`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Tabellstruktur `avslappning`
--

CREATE TABLE `avslappning` (
  `id` int(4) NOT NULL,
  `spa` tinyint(1) NOT NULL,
  `naturupplevelser` tinyint(1) NOT NULL,
  `solsemester` tinyint(1) NOT NULL,
  `yoga` tinyint(1) NOT NULL,
  `meditation` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `avslappning`
--

INSERT INTO `avslappning` (`id`, `spa`, `naturupplevelser`, `solsemester`, `yoga`, `meditation`) VALUES
(1, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Tabellstruktur `boende`
--

CREATE TABLE `boende` (
  `id` int(4) NOT NULL,
  `hotell` tinyint(1) NOT NULL,
  `motell` tinyint(1) NOT NULL,
  `vandrarhem` tinyint(1) NOT NULL,
  `camping` tinyint(1) NOT NULL,
  `bedAndBreakfast` tinyint(1) NOT NULL,
  `bungalow` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `boende`
--

INSERT INTO `boende` (`id`, `hotell`, `motell`, `vandrarhem`, `camping`, `bedAndBreakfast`, `bungalow`) VALUES
(1, 1, 1, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Tabellstruktur `budget`
--

CREATE TABLE `budget` (
  `id` int(4) NOT NULL,
  `kostnadTransport` float NOT NULL,
  `kostnadBoende` float NOT NULL,
  `levnadsKostnad` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `budget`
--

INSERT INTO `budget` (`id`, `kostnadTransport`, `kostnadBoende`, `levnadsKostnad`) VALUES
(1, 0, 0, 0);

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
(1, 'Paris', 'Frankrike', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1262, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 'Europa', 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Tabellstruktur `karta`
--

CREATE TABLE `karta` (
  `id` int(11) NOT NULL,
  `distans` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `karta`
--

INSERT INTO `karta` (`id`, `distans`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Tabellstruktur `klimat`
--

CREATE TABLE `klimat` (
  `id` int(11) NOT NULL,
  `solTemp` tinyint(1) NOT NULL,
  `svalTemp` tinyint(1) NOT NULL,
  `kalltTemp` tinyint(1) NOT NULL,
  `bergigt` tinyint(1) NOT NULL,
  `plant` tinyint(1) NOT NULL,
  `oken` tinyint(1) NOT NULL,
  `skog` tinyint(1) NOT NULL,
  `narhetTillVatten` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `klimat`
--

INSERT INTO `klimat` (`id`, `solTemp`, `svalTemp`, `kalltTemp`, `bergigt`, `plant`, `oken`, `skog`, `narhetTillVatten`) VALUES
(1, 1, 1, 0, 0, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Tabellstruktur `kultur`
--

CREATE TABLE `kultur` (
  `id` int(4) NOT NULL,
  `sightseeing` tinyint(1) NOT NULL,
  `storstad` tinyint(1) NOT NULL,
  `historia` tinyint(1) NOT NULL,
  `religion` tinyint(1) NOT NULL,
  `utbildningssyfte` tinyint(1) NOT NULL,
  `matresa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `kultur`
--

INSERT INTO `kultur` (`id`, `sightseeing`, `storstad`, `historia`, `religion`, `utbildningssyfte`, `matresa`) VALUES
(1, 1, 0, 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Tabellstruktur `onskning`
--

CREATE TABLE `onskning` (
  `id` int(4) NOT NULL,
  `kontinent` varchar(240) NOT NULL,
  `land` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `onskning`
--

INSERT INTO `onskning` (`id`, `kontinent`, `land`) VALUES
(1, 'Ingen preferens', 'Ingen preferens'),
(1, 'Ingen preferens', 'Ingen preferens'),
(1, 'Ingen preferens', 'Ingen preferens'),
(1, '', ''),
(1, '', ''),
(1, 'Ingen preferens', 'Ingen preferens'),
(1, 'Ingen preferens', 'Ingen preferens');

-- --------------------------------------------------------

--
-- Tabellstruktur `transportsmedel`
--

CREATE TABLE `transportsmedel` (
  `id` int(11) NOT NULL,
  `flygplan` tinyint(1) NOT NULL,
  `tag` tinyint(1) NOT NULL,
  `buss` tinyint(1) NOT NULL,
  `annat` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `transportsmedel`
--

INSERT INTO `transportsmedel` (`id`, `flygplan`, `tag`, `buss`, `annat`) VALUES
(1, 1, 1, 1, 0);

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
(1, 'Sverige', 'Skåne', '', '', '', '', '', 0, 0, 0, 0, '', '');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `aventyr`
--
ALTER TABLE `aventyr`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `avslappning`
--
ALTER TABLE `avslappning`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `boende`
--
ALTER TABLE `boende`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `karta`
--
ALTER TABLE `karta`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `klimat`
--
ALTER TABLE `klimat`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `kultur`
--
ALTER TABLE `kultur`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `transportsmedel`
--
ALTER TABLE `transportsmedel`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT för tabell `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT för tabell `users`
--
ALTER TABLE `users`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT för tabell `vacation`
--
ALTER TABLE `vacation`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
