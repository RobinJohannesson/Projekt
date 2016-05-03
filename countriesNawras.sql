-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 03 maj 2016 kl 16:48
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
  `annat` tinyint(1) NOT NULL,
  `img1` varchar(250) NOT NULL,
  `img2` varchar(250) NOT NULL,
  `img3` varchar(250) NOT NULL,
  `img4` varchar(250) NOT NULL,
  `img5` varchar(250) NOT NULL,
  `countryInfo` longtext NOT NULL,
  `cityInfo` longtext NOT NULL,
  `background` varchar(250) NOT NULL,
  `imgLink1` longtext NOT NULL,
  `imgLink2` longtext NOT NULL,
  `imgLink3` longtext NOT NULL,
  `imgLink4` longtext NOT NULL,
  `imgText1` varchar(250) NOT NULL,
  `imgText2` varchar(250) NOT NULL,
  `imgText3` varchar(250) NOT NULL,
  `imgText4` varchar(250) NOT NULL,
  `hotellText` varchar(250) NOT NULL,
  `flygText` varchar(250) NOT NULL,
  `aktivitetText` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `countries`
--

INSERT INTO `countries` (`id`, `stad`, `land`, `vandring`, `kanot`, `backpacking`, `safari`, `skidor`, `surfing`, `dykning`, `bergsklattring`, `spa`, `naturupplevelser`, `solsemester`, `yoga`, `meditation`, `hotell`, `motell`, `vandrarhem`, `camping`, `bedAndBreakfast`, `kostnadTransport`, `kostnadBoende`, `levnadsKostnad`, `distans`, `solTemp`, `svalTemp`, `kalltTemp`, `bergigt`, `plant`, `oken`, `skog`, `narhetTillVatten`, `sightseeing`, `storstad`, `historia`, `religion`, `utbildningssyfte`, `matresa`, `kontinent`, `flygplan`, `tag`, `buss`, `annat`, `img1`, `img2`, `img3`, `img4`, `img5`, `countryInfo`, `cityInfo`, `background`, `imgLink1`, `imgLink2`, `imgLink3`, `imgLink4`, `imgText1`, `imgText2`, `imgText3`, `imgText4`, `hotellText`, `flygText`, `aktivitetText`) VALUES
(15, 'Geneve', 'Schweiz', 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, '', 1, 1, 1, 1, 'schweiz_country.jpg', 'train.jpg', 'dagsutflykt.jpg', 'boat.jpg', 'tasting.jpg', 'Fint land', '', 'Switzerland.jpg', 'https://www.viatorcom.se/sv/7384/tours/Geneve/Dagsresa­till­Gruyeres­inklusive- Golden­Panoramic­Express­Train/d578­2510KT002', 'https://www.viatorcom.se/sv/7384/tours/Geneve/Chamonix­och­Mont­Blanc/d578­2510KT001', 'https://www.viatorcom.se/sv/7384/tours/Geneve/Geneva­City­Tour­and­Boat­Cruise/d5782510KTG207', 'https://www.viatorcom.se/sv/7384/tours/Geneve/Day­Trip­to­Gruyeres­with­Cheese­and- Chocolate­Tastings/d578­2510KTG352', 'Tågresa till Gruyères', 'Utflykt till Chamonix och Mont Blanc', 'Utflykt till Chamonix och Mont Blanc', 'Ost­ och chokladprovning', 'http://www.reseguiden.se/hotell/geneve/2660646', 'https://www.flygresor.se/schweiz/geneve', 'https://www.viatorcom.se/sv/7384/Geneve/d578­ttd'),
(17, 'Barcelona', 'Spanien', 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2168, 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 'Europa', 1, 1, 1, 1, 'barcelona0.jpg', 'biljetter-till-rundtur.jpg', 'flamenco.jpg', 'parasailing.jpg', 'water-park.jpg', '', '', 'Barcelonabackground.jpg', 'https://www.viatorcom.se/sv/7384/tours/Barcelona/Biljetter-till-rundtur-och-museet-pa-FC-Barcelonas-fotbollsstadion/d562-2140FCBCN \r\n', 'https://www.viatorcom.se/sv/7384/tours/Barcelona/Flamencokvaell-pa-Tablao-Cordobes/d562-2140FLAMENCO \r\n', 'https://www.viatorcom.se/sv/7384/tours/Barcelona/Flamencokvaell-pa-Tablao-Cordobes/d562-2140FLAMENCO \r\n', 'https://www.viatorcom.se/sv/7384/tours/Barcelona/Illa-Fantasia-Water-and-Theme-Park-Tickets-with-Shuttle/d562-2140FANTASIA \r\n', 'Rundtur och museet på FC Barcelonas fotbollsstation', 'Flamencokväll på Tablao Cordobés', 'Fallskärmssegling ', 'Illa Fantasia water park ', 'http://www.reseguiden.se/s?destination_id=3128760&date_from=2016-05-03:2016-05-03&adults=1&date_to=2016-05-04:2016-05-04&product_type=hotel  ', 'http://www.momondo.se/flightsearch/?Search=true&TripType=2&SegNo=2&SO0=STO&SD0=BCN&SDP0=18-05-2016&SO1=BCN&SD1=STO&SDP1=23-05-2016&AD=1&TK=ECO&DO=false&NA=false#Search=true&TripType=2&SegNo=2&SO0=STO&SD0=BCN&SDP0=18-05-2016&SO1=BCN&SD1=STO&SDP1=23-05', 'https://www.viatorcom.se/sv/7384/Barcelona/d562-ttd?activities=all '),
(18, 'Madrid', 'Spanien', 0, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, '', 1, 1, 1, 1, 'Madrid0.jpg', 'cooking.jpg', 'rundtur.jpg', 'gocar-tour.jpg', 'hot-air-balloon.jpg', '', '', 'madridbackground.jpg', 'https://www.viatorcom.se/sv/7384/tours/Madrid/Madrid-Cooking-Class-Learn-How-to-Make-Paella/d566-5830TSCCIM', 'https://www.viatorcom.se/sv/7384/tours/Madrid/Hoppa-pahoppa-av-rundtur-i-Madrid/d566-2140MADRIDHOPON ', 'https://www.viatorcom.se/sv/7384/tours/Madrid/Madrid-GPS-Guided-GoCar-Tour/d566-5893MADGOCAR ', 'https://www.viatorcom.se/sv/7384/tours/Madrid/Hot-Air-Balloon-Ride-over-Madrids-Guadarrama-Regional-Park/d566-5998BALLOON ', 'Madrid cooking class', 'Rundtur i Madrid med valfri matprovning', 'Rundtur i Madrid med valfri matprovning', 'Luftballongtur över Madrid', 'http://www.reseguiden.se/s?destination_id=3117735&date_from=2016-05-03:2016-05-03&adults=1&date_to=2016-05-04:2016-05-04&product_type=hotel ', 'http://www.momondo.se/flightsearch/?Search=true&TripType=2&SegNo=2&SO0=STO&SD0=BCN&SDP0=18-05-2016&SO1=BCN&SD1=STO&SDP1=23-05-2016&AD=1&TK=ECO&DO=false&NA=false#Search=true&TripType=2&SegNo=2&SO0=STO&SD0=MAD&SDP0=18-05-2016&SO1=MAD&SD1=STO&SDP1=23-05', 'https://www.viatorcom.se/sv/7384/Madrid/d566-ttd?activities=all '),
(19, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 'valencia0.jpg', 'bird-watching-tour.jpg', 'sailing-day.jpg', 'intensive-spanish-course.jpg', 'history-walking-tour.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

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
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
