-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 10 maj 2016 kl 15:48
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
(1, 1, 1, 1, 1, 1, 1, 1, 1);

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
(1, 1, 1, 1, 1, 1);

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
(1, 1, 1, 1, 1, 1, 1);

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
(15, 'Geneve', 'Schweiz', 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 'Europa', 1, 1, 1, 1, 'schweiz_country.jpg', 'train.jpg', 'dagsutflykt.jpg', 'boat.jpg', 'tasting.jpg', 'Fint land', '', 'Switzerland.jpg', 'https://www.viatorcom.se/sv/7384/tours/Geneve/Dagsresa­till­Gruyeres­inklusive- Golden­Panoramic­Express­Train/d578­2510KT002', 'https://www.viatorcom.se/sv/7384/tours/Geneve/Chamonix­och­Mont­Blanc/d578­2510KT001', 'https://www.viatorcom.se/sv/7384/tours/Geneve/Geneva­City­Tour­and­Boat­Cruise/d5782510KTG207', 'https://www.viatorcom.se/sv/7384/tours/Geneve/Day­Trip­to­Gruyeres­with­Cheese­and- Chocolate­Tastings/d578­2510KTG352', 'Tågresa till Gruyères', 'Utflykt till Chamonix och Mont Blanc', 'Utflykt till Chamonix och Mont Blanc', 'Ost­ och chokladprovning', 'http://www.reseguiden.se/hotell/geneve/2660646', 'https://www.flygresor.se/schweiz/geneve', 'https://www.viatorcom.se/sv/7384/Geneve/d578­ttd'),
(16, 'Thessaloniki', 'Grekland', 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 'Europa', 1, 1, 1, 1, 'Thessaloniki.jpg', 'olympus.jpg', 'boat.jpg', 'walking.jpg', 'daytour.jpg', 'Grekland, officiella språket är grekiska och euro är valutan i landet. Grekland har ett typiskt medelhavsklimat, men med stora skillnader mellan norra och södra landet och mellan bergen och kusten samt inlandet. Snö och is är vanliga i det högre bergstrakterna men förekommer även i resten av Grekland.\r\nVid tillträde krävs inte ett visum från svenska medborgare men ett giltigt pass är viktigt.', '', 'Thessaloniki_background.jpg', 'https://www.viatorcom.se/sv/7384/tours/Thessaloniki/Mount-Olympus-Canyoning/d23853-11838P', 'https://www.viatorcom.se/sv/7384/tours/Thessaloniki/Sailboat-west-Sithonia-tour/d23853-11193P1', 'https://www.viatorcom.se/sv/7384/tours/Thessaloniki/Thessaloniki-Walking-Tour-and-Gastronomical-Experience/d23853-12485P1', 'https://www.viatorcom.se/sv/7384/tours/Thessaloniki/AMPHIPOLIS-PHILIPPI-KAVALA-ONE-DAY-TOUR/d23853-20715P1', 'Upplev Mount Olympus', 'Halkidiki båttrip', 'Halkidiki båttrip', 'Dagstur från Thessaloniki', 'http://www.reseguiden.se/hotell/thessaloniki/734077', 'https://www.flygresor.se/grekland/thessaloniki', 'https://www.viatorcom.se/sv/7384/Thessaloniki/d23853-ttd?activities=all'),
(18, 'Piraeus', 'Grekland', 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 'Europa', 1, 1, 1, 1, 'piraeus.jpg', 'bus_tour.jpg', 'full_day_tour.png', 'booze_cruise.jpg', 'seaside_tour.jpg', 'Grekland, officiella språket är grekiska och euro är valutan i landet. Grekland har ett typiskt medelhavsklimat, men med stora skillnader mellan norra och södra landet och mellan bergen och kusten samt inlandet. Snö och is är vanliga i det högre bergstrakterna men förekommer även i resten av Grekland.\r\nVid tillträde krävs inte ett visum från svenska medborgare men ett giltigt pass är viktigt.', '', 'piraeus_background.jpg', 'https://www.getyourguide.com/athens-l91/athens-and-piraeus-hop-on-hop-off-bus-tour-t49048/', 'https://www.getyourguide.com/athens-l91/full-day-tour-of-the-saronic-islands-from-athens-t5991/', 'https://www.getyourguide.com/athens-l91/athens-booze-cruise-t56070/', 'https://www.getyourguide.com/piraeus-l759/piraeus-seaside-tour-with-electric-bike-t52175/', 'Hop-on Hop-off', 'Heldags tur', 'Heldags tur', 'Rundtur vid havet', 'http://www.reseguiden.se/hotell/pireus/255274', 'http://www.ferries.gr/greek-islands-ferry/ferry_piraeus.htm', 'https://www.getyourguide.com/s/?q=piraeus&lc=l759'),
(20, 'Timbuktu', 'Mali', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 'Afrika', 0, 0, 0, 0, 'timbuktu.jpg', 'sankore.jpg', 'dyingerey.jpg', 'heinrich.jpg', 'yahiya.jpg', 'Mali, franska är det officiella språket i landet. Klimatet är hett och torrt i hela Mali. I Saharaöknen i norr regnar det mycket sällan, vissa år faller ingen nederbörd alls. I Sahelområdet längre söderut är klimatet mindre torrt och medeltemperaturen är något lägre. I den sydligaste delen av landet är det svalare och fuktigare. I Mali är valutan CFA-franc.\r\nAlla nationaliteter behöver visum för inresa till Mali. Ett visum är giltigt för en inresa i landet och gäller i en månad från inresedagen i Mali, men kan förlängas på Migrationsverket i Bamako eller på en malisk polisstation. Visum kan erhållas upp till tre månader innan resan och erhålls från närmaste maliska ambassad eller konsulat. Vaccination mot gula febern är obligatorisk.', '', 'timbuktu_background.jpg', 'https://www.lonelyplanet.com/mali/niger-river-route/timbuktu-tombouctou/sights/religious/sankore-mosque', 'https://www.lonelyplanet.com/mali/niger-river-route/timbuktu-tombouctou/sights/architecture/dyingerey-ber-mosque', 'https://www.lonelyplanet.com/mali/niger-river-route/timbuktu-tombouctou/sights/arts-culture-literary/heinrich-barth-s-house', 'https://www.lonelyplanet.com/mali/niger-river-route/timbuktu-tombouctou/sights/architecture/sidi-yahiya-mosque', 'Upplev Sankoré', 'Imponerande arkitektur', 'Imponerande arkitektur', 'Gammal moské', 'https://www.tripadvisor.se/Hotels-g304007-Timbuktu_Tombouctou_Region-Hotels.html ', 'http://www.allaflygbiljetter.se/flyg/timbuktu_tom', 'https://www.lonelyplanet.com/mali/niger-river-route/timbuktu-tombouctou/things-to-do'),
(21, 'Alexandria', 'Egypten', 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 'Afrika', 1, 0, 0, 1, 'Alexandria.jpg', 'overnight_trip.png', 'shore_excursion.png', 'alamain.png', 'private_trip.png', '', '', 'Alexandria_background.jpg', 'http://www.viator.com/tours/Alexandria/Overnight-Trip-to-Cairo-from-Alexandria-Port/d4376-18465P6', 'http://www.viator.com/tours/Alexandria/Shore-Excursion-Small-Group-Guided-Tour-in-Alexandria/d4376-19997P1', 'http://www.viator.com/tours/Alexandria/Day-Tour-to-Alamain-Museum-Visiting-the-Commonwealth-German-Cemetery/d4376-18465P2', 'http://www.viator.com/tours/Alexandria/Classic-Cairo-Private-Day-Trip-from-Alexandria/d4376-19426P6', 'Trip till Kairo', 'Guidad tur', 'Guidad tur', 'Klassisk privat dagstur', 'https://www.kayak.se/sem/hotels/destination/-c25321?lang=sv&gclid=CjwKEAjw9Zu5BRCS_OuVibujhQ0SJAD7t4KrdZ8zgKIeg2xQRPoAVPryXK2Hfysw1xETOEpXw0b7RxoCepnw_wcB', 'https://www.flygresor.se/egypten/alexandria', 'http://www.viator.com/Alexandria/d4376-ttd'),
(22, 'Giza', 'Egypten', 1, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 'Afrika', 1, 0, 0, 1, 'giza.jpg', 'nile_pharaoh.jpg', 'show_pyramids.jpg', 'sunset_ride.jpg', 'sailing.jpg', '', '', 'giza_background.jpg', 'https://www.viatorcom.se/sv/7384/tours/Giza/Nile-Pharaoh-Dinner-Cruise-from-Giza/d23032-10124P9', 'https://www.viatorcom.se/sv/7384/tours/Giza/Sound-and-Light-Show-at-The-Pyramids-of-Giza/d23032-10124P11', 'https://www.viatorcom.se/sv/7384/tours/Giza/Sunset-Camel-or-Horse-Ride-by-the-Giza-Pyramids/d23032-26535P1', 'https://www.viatorcom.se/sv/7384/tours/Giza/Felucca-Sailing-Ride-on-The-Nile-from-Giza/d23032-10124P13', 'Måltidskryssning', 'Ljusshow vid pyramiderna', 'Ljusshow vid pyramiderna', 'Segling på Nilen', 'http://www.reseguiden.se/hotell/giza/360995', 'https://www.expedia.se/Flyg-Till-Giza.d178624.Reseguide-Flyg', 'https://www.viatorcom.se/sv/7384/Giza/d23032-ttd'),
(23, 'Kairo', 'Egypten', 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 'Afrika', 1, 0, 0, 1, 'Kairo.jpg', 'flodkryssning_kairo.jpg', 'pyramider_kairo.jpg', 'food_kairo.jpg', 'safari_kairo.jpg', '', '', '', 'https://www.viatorcom.se/sv/7384/tours/Kairo/Flodkryssning-med-middag-pa-Nilen/d782-3124CAI16', 'https://www.viatorcom.se/sv/7384/tours/Kairo/Privat-rundtur-Pyramiderna-och-Sfinxen-i-Giza-Egyptiska-museet-Khan-el-Khalili-basaren/d782-3124CAI01', 'https://www.viatorcom.se/sv/7384/tours/Kairo/Local-Egyptian-Food-Tasting-and-Learning-From-Cairo/d782-11860P2', 'https://www.viatorcom.se/sv/7384/tours/Kairo/Safari-tour-on-a-horse-or-camel-for-sunset-at-Giza/d782-18966P43', 'Flodkryssning med mat', 'Rundtur i pyramiderna', 'Rundtur i pyramiderna', 'Safari på kamel/häst', 'http://www.reseguiden.se/hotell/kairo/360630', 'https://www.flygresor.se/egypten/kairo', 'https://www.viatorcom.se/sv/7384/Kairo/d782-ttd'),
(24, 'Aten', 'Grekland', 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 'Europa', 1, 1, 1, 1, 'aten.jpg', 'bar_hopping.jpg', 'hop_on_off.jpg', 'Akropolis.jpg', 'evening_tour.jpg', 'Grekland, officiella språket är grekiska och euro är valutan i landet. Grekland har ett typiskt medelhavsklimat, men med stora skillnader mellan norra och södra landet och mellan bergen och kusten samt inlandet. Snö och is är vanliga i det högre bergstrakterna men förekommer även i resten av Grekland.\r\nVid tillträde krävs inte ett visum från svenska medborgare men ett giltigt pass är viktigt.', '', 'aten_background.jpg', 'https://www.viatorcom.se/sv/7384/tours/Aten/Athens-Bar-Hopping-Tour/d496-6956BARHOP', 'https://www.viatorcom.se/sv/7384/tours/Aten/Sights-of-Athens-Hop-on-Hop-Off-Classic-tour/d496-8391P3', 'https://www.viatorcom.se/sv/7384/tours/Aten/Gangtur-pa-Akropolis-med-Syntagmatorget-och-stadens-historiska-centrum/d496-2906ATHACRO', 'https://www.viatorcom.se/sv/7384/tours/Aten/An-evening-stroll/d496-18204P1', 'Prova olika barer', 'Klassisk tur av Aten', 'Klassisk tur av Aten', 'kvällstur av Aten', 'http://www.reseguiden.se/hotell/aten/264371 ', 'https://www.flygresor.se/grekland/aten?&gclid=CjwKEAjw9Zu5BRCS_OuVibujhQ0SJAD7t4KrkRay92Wi5mQ2dPSDGx9LWoyWERtkc2F4eyqNXx4w0RoCaG3w_wcB', 'https://www.viatorcom.se/sv/7384/Aten/d496-ttd '),
(26, 'Barcelona', 'Spanien', 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2168, 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 'Europa', 1, 1, 1, 1, 'barcelona0.jpg', 'biljetter-till-rundtur.jpg', 'flamenco.jpg', 'parasailing.jpg', 'water-park.jpg', '', '', 'Barcelonabackground.jpg', 'https://www.viatorcom.se/sv/7384/tours/Barcelona/Biljetter-till-rundtur-och-museet-pa-FC-Barcelonas-fotbollsstadion/d562-2140FCBCN \r\n', 'https://www.viatorcom.se/sv/7384/tours/Barcelona/Flamencokvaell-pa-Tablao-Cordobes/d562-2140FLAMENCO \r\n', 'https://www.viatorcom.se/sv/7384/tours/Barcelona/Flamencokvaell-pa-Tablao-Cordobes/d562-2140FLAMENCO \r\n', 'https://www.viatorcom.se/sv/7384/tours/Barcelona/Illa-Fantasia-Water-and-Theme-Park-Tickets-with-Shuttle/d562-2140FANTASIA \r\n', 'Rundtur och museet på FC Barcelonas fotbollsstation', 'Flamencokväll på Tablao Cordobés', 'Fallskärmssegling ', 'Illa Fantasia water park ', 'http://www.reseguiden.se/s?destination_id=3128760&date_from=2016-05-03:2016-05-03&adults=1&date_to=2016-05-04:2016-05-04&product_type=hotel  ', 'http://www.momondo.se/flightsearch/?Search=true&TripType=2&SegNo=2&SO0=STO&SD0=BCN&SDP0=18-05-2016&SO1=BCN&SD1=STO&SDP1=23-05-2016&AD=1&TK=ECO&DO=false&NA=false#Search=true&TripType=2&SegNo=2&SO0=STO&SD0=BCN&SDP0=18-05-2016&SO1=BCN&SD1=STO&SDP1=23-05', 'https://www.viatorcom.se/sv/7384/Barcelona/d562-ttd?activities=all '),
(27, 'Madrid', 'Spanien', 0, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 'Europa', 1, 1, 1, 1, 'Madrid0.jpg', 'cooking.jpg', 'rundtur.jpg', 'gocar-tour.jpg', 'hot-air-balloon.jpg', '', '', 'madridbackground.jpg', 'https://www.viatorcom.se/sv/7384/tours/Madrid/Madrid-Cooking-Class-Learn-How-to-Make-Paella/d566-5830TSCCIM', 'https://www.viatorcom.se/sv/7384/tours/Madrid/Hoppa-pahoppa-av-rundtur-i-Madrid/d566-2140MADRIDHOPON ', 'https://www.viatorcom.se/sv/7384/tours/Madrid/Madrid-GPS-Guided-GoCar-Tour/d566-5893MADGOCAR ', 'https://www.viatorcom.se/sv/7384/tours/Madrid/Hot-Air-Balloon-Ride-over-Madrids-Guadarrama-Regional-Park/d566-5998BALLOON ', 'Madrid cooking class', 'Rundtur i Madrid med valfri matprovning', 'Rundtur i Madrid med valfri matprovning', 'Luftballongtur över Madrid', 'http://www.reseguiden.se/s?destination_id=3117735&date_from=2016-05-03:2016-05-03&adults=1&date_to=2016-05-04:2016-05-04&product_type=hotel ', 'http://www.momondo.se/flightsearch/?Search=true&TripType=2&SegNo=2&SO0=STO&SD0=BCN&SDP0=18-05-2016&SO1=BCN&SD1=STO&SDP1=23-05-2016&AD=1&TK=ECO&DO=false&NA=false#Search=true&TripType=2&SegNo=2&SO0=STO&SD0=MAD&SDP0=18-05-2016&SO1=MAD&SD1=STO&SDP1=23-05', 'https://www.viatorcom.se/sv/7384/Madrid/d566-ttd?activities=all '),
(41, 'Basel', 'Schweiz', 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 'Europa', 1, 1, 1, 1, 'basel.jpg', 'vattenpark.png', 'gokart.png', 'zoo.png', 'vattenfall.png', 'Schweiz, har tyska, franska och italienska som officiella språk. Klimatet där domineras av vindar i öst, väst, syd och mellaneuropeiskt lågtryck i norr. Temperaturen i sommaren ligger mellan 18-20 grader i dalarna och rund 10 grader på de högre höjderna. Det finns många höga bergstoppar (Alperna). Schweiz har Schweizisk franc som valuta. Visum krävs inte från svenska medborgare. Barn som inte haft eller tidigare vaccinerats mot påssjuka, mässling eller röda hund bör vaccineras innan avresa.', '', 'background_basel.jpg', 'http://www.viator.com/tours/Basel/Water-Park-included-Ticket-and-transfer-roundtrip/d5010-30201P13 ', 'http://www.viator.com/tours/Basel/Go-Kart-Racing-included-Hotel-pick-up-and-drop-off/d5010-30201P14', 'http://www.viator.com/tours/Basel/Basel-Zoo/d5010-30201P5', 'http://www.viator.com/tours/Basel/Rhein-Fall-half-day-trip-and-Boat-Ticket-with-Hotel-Pick-and-Drop-Off-Included/d5010-30201P6', 'Vattenparkhhhhhhhhhhh', 'Go-karthhhhhhhhhh', 'Zoohhhhhhhh', 'Tur till vattenfall', 'http://www.reseguiden.se/hotell/basel/2661604', 'http://www.skyscanner.se/flyg-till/bsl/billiga-flyg-till-basel-mulhouse-freiburg-flygplats.html', 'http://www.viator.com/Basel/d5010-ttd'),
(42, 'Zurich', 'Schweiz', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Europa', 0, 0, 0, 0, 'zurich.jpg', 'choklad.png', 'alptur.png', 'stadstur.png', 'glacier.png', 'Schweiz, har tyska, franska och italienska som officiella språk. Klimatet där domineras av vindar i öst, väst, syd och mellaneuropeiskt lågtryck i norr. Temperaturen i sommaren ligger mellan 18-20 grader i dalarna och rund 10 grader på de högre höjderna. Det finns många höga bergstoppar (Alperna). Schweiz har Schweizisk franc som valuta. Visum krävs inte från svenska medborgare. Barn som inte haft eller tidigare vaccinerats mot påssjuka, mässling eller röda hund bör vaccineras innan avresa.', '', 'zurich_background.jpg', 'http://www.viator.com/tours/Zurich/Small-Group-Chocolate-and-Sweets-Walking-Tour-of-Zurichs-Old-Town/d577-6143ZURICH', 'http://www.viator.com/tours/Zurich/2-Day-Alps-Tour-from-Zurich-Mt-Pilatus-and-Mt-Titlis/d577-3885SWSUM02', 'http://www.viator.com/tours/Zurich/The-Great-Tour-of-Zurich/d577-2460CITB', 'http://www.viator.com/tours/Zurich/Private-Guided-Glacier-Express-1-day-Tour-from-Zurich/d577-8283P7', 'Choklad-rundtur', '2-dagars alptur', '2-dagars alptur', 'Glaciär-express', 'http://www.reseguiden.se/hotell/zurich/2657896', 'https://www.flygresor.se/schweiz/zurich', 'http://www.viator.com/Zurich/d577-ttd'),
(43, 'Yokohama', 'Japan', 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 'Asien', 1, 0, 0, 0, 'yokohama.jpg', '', '', '', '', '', '', 'yokohama_background.jpg', 'http://www.viator.com/tours/Tokyo/Ninja-School-Ninja-for-a-Day/d334-6117TYO_JHTKNJ', 'http://www.viator.com/tours/Tokyo/Nikko-National-Park-Day-Trip-from-Tokyo/d334-2142TYO_F300_F308', 'http://www.viator.com/tours/Tokyo/Tokyo-Robot-Evening-Cabaret-Show/d334-2142TYODIN1G', 'http://www.viator.com/tours/Tokyo/Mt-Fuji-Day-Trip-including-Lake-Ashi-Sightseeing-Cruise-from-Tokyo/d334-2142TYO_F880_F830', 'Ninjaskola', 'Nikko nationalpark', 'Nikko nationalpark', 'Sightseeing Mt Fuji & Lake Ashi', 'http://www.reseguiden.se/hotell/yokohama/1848354', 'http://www.travellink.se/flyg/japan/yokohama', 'http://www.viator.com/Japan/d16-ttd'),
(44, 'Osaka', 'Japan', 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 'Asien', 1, 0, 0, 0, 'osaka.jpg', 'tempel.png', 'vandring.png', 'sushi.png', 'akvarium.png', '', '', 'osaka_background.jpg', 'http://www.viator.com/tours/Osaka/Kyoto-Morning-Tour-of-Kinkakuji-Temple-Nijo-Castle-and-Kyoto-Imperial-Palace-from-Osaka/d333-2142OSA_P840', 'http://www.viator.com/tours/Osaka/Osaka-Full-Day-Walking-Tour-with-Osaka-River-Cruise/d333-2142OSA_P740', 'http://www.viator.com/tours/Osaka/Sushi-Cooking-Class-in-Osaka/d333-6806OSASUSHI', 'http://www.viator.com/tours/Osaka/Osaka-Aquarium-Kaiyukan-Admission-with-Osaka-Bay-Cruise/d333-2142OSA_P601', 'Tempel- och palatstur', 'Vandring och båttur', 'Sushi-matlagningskurs', 'Akvariumbesök och kryssning', 'http://www.reseguiden.se/hotell/osaka/1853909 ', 'https://www.flygresor.se/japan/osaka', 'http://www.viator.com/Osaka/d333-ttd'),
(45, 'Tokyo', 'Japan', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 'Asien', 1, 1, 1, 1, 'tokyo.jpg', 'sumobrottning.png', 'tokyo_tower.png', 'sightseeing.png', 'mat.png', '', '', 'tokyo_background.jpg', 'https://www.viatorcom.se/sv/7384/tours/Tokyo/Sumobrottning-i-Tokyo/d334-2142TYO_F550', 'https://www.viatorcom.se/sv/7384/tours/Tokyo/Dagstur-med-Tokyo-Tower-teceremoni-och-kryssning-pa-Sumidafloden/d334-2142TYO_A100', 'https://www.viatorcom.se/sv/7384/tours/Tokyo/Morgontur-med-sightseeing-i-Tokyo/d334-2142TYO_A010', 'https://www.viatorcom.se/sv/7384/tours/Tokyo/Kvaellstur-i-Tokyo-japansk-matrundtur/d334-5263JPUC', 'Sumobrottning', 'Tokyo Tower + kryssning', 'Morgon-sightseeing', 'Matrundtur', 'http://www.reseguiden.se/hotell/tokyo/1850147', 'https://www.flygresor.se/japan/tokyo', 'https://www.viatorcom.se/sv/7384/Tokyo/d334-ttd'),
(46, 'Bamako', 'Mali', 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 'Afrika', 1, 0, 0, 0, 'bamako.jpg', 'marknad.png', 'katedral.png', 'museum.png', 'park.png', 'Mali, franska är det officiella språket i landet. Klimatet är hett och torrt i hela Mali. I Saharaöknen i norr regnar det mycket sällan, vissa år faller ingen nederbörd alls. I Sahelområdet längre söderut är klimatet mindre torrt och medeltemperaturen är något lägre. I den sydligaste delen av landet är det svalare och fuktigare. I Mali är valutan CFA-franc.\r\nAlla nationaliteter behöver visum för inresa till Mali. Ett visum är giltigt för en inresa i landet och gäller i en månad från inresedagen i Mali, men kan förlängas på Migrationsverket i Bamako eller på en malisk polisstation. Visum kan erhållas upp till tre månader innan resan och erhålls från närmaste maliska ambassad eller konsulat.', '', 'bamako_background.jpg', 'https://www.tripadvisor.com/Attraction_Review-g293813-d556540-Reviews-Bamako_city_centre_market-Bamako.html', 'https://www.tripadvisor.com/Attraction_Review-g293813-d8070025-Reviews-Cathedral_of_Bamako-Bamako.html', 'https://www.tripadvisor.com/Attraction_Review-g293813-d2081099-Reviews-Musee_National_de_Bamako-Bamako.html', 'https://www.tripadvisor.com/Attraction_Review-g293813-d2320585-Reviews-Parc_national_du_Mali_Bamako-Bamako.html', 'City-marknad', 'Katedralbesök', 'Nationalmuseum', 'Nationalpark', 'http://www.reseguiden.se/hotell/bamako/2460596', 'http://www.skyscanner.se/flyg-till/bko/billiga-flyg-till-bamako-flygplats.html ', 'https://www.tripadvisor.com/Attractions-g293813-Activities-Bamako.html'),
(56, 'Buenos Aires', 'Argentina', 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 'Sydamerika', 1, 0, 0, 0, 'BA-city.jpg', 'BA-coocking.jpg', 'BA-tango.jpg', 'BA-arkitektur.jpg', 'BA-pub.jpg', 'Argentina, det officiella språket är spanska, det talas också italienska och några indianspråk, till exempel guaraní talas också. Klimatet växlar från subtropiskt i norr till nästan arktiskt i söder. Större delen av landet har dock ett tempererat klimat. På Pampas är det milt, vintertid går temperaturen sällan under noll och sommartid ligger medeltemperaturen över 20 grader. Vid kusten är luftfuktigheten hög, men inåt landet är klimatet torrare och temperaturväxlingarna tydligare. Valutan är argentinsk peso.\r\nFör vistelser under tre månader krävs inte något turistvisum för resenärer från de flesta länder. Resenärer uppmanas dock att kontakta sin lokala ambassad innan avresa. ', '', 'Argentina-background.jpg', 'http://www.viator.com/tours/Buenos-Aires/Buenos-Aires-Cooking-Class/d901-5674P125', 'http://www.viator.com/tours/Buenos-Aires/Buenos-Aires-Dinner-and-Tango-Show/d901-5674TANGO', 'http://www.viator.com/tours/Buenos-Aires/Architectour/d901-26466P4', 'http://www.viator.com/tours/Buenos-Aires/Buenos-Aires-Pub-Crawl/d901-5674PUB', 'Matlagningskurs', 'Middag och tango show', 'Middag och tango show', 'Guidad pub-crawl', '', '', ''),
(57, 'Cordoba', 'Argentina', 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 'Sydamerika', 1, 0, 0, 0, 'cordoba-city.jpg', 'Cordoba-mountain.jpg', 'Cordoba-punilla.jpg', 'Cordoba-jesuit.jpg', 'Cordoba-traslasierra.jpg', 'Córdoba är Argentinas näst största stad med cirka 1,5 miljoner invånare (2003). Staden är huvudstad i provinsen Córdoba. Córdoba är en stad med mångsidig industri. Där finns textil- och transportindustri. Staden är också ett kommunikations-, handels- och kulturcentrum belägen cirka 700 kilometer nordväst om huvudstaden Buenos Aires. Staden grundades 1573 och var en av jesuiternas huvudorter i det spanska Amerika. Landets äldsta universitet grundades 1613 i Córdoba.', '', 'argentina-background.jpg', 'http://www.viator.com/tours/Cordoba/Sierras-Chicas-circuit-Half-Day-Tour-from-Cordoba/d22281-5674P145', 'http://www.viator.com/tours/Cordoba/Punilla-Valley-Full-Day-Tour-from-Cordoba/d22281-5674P147', 'http://www.viator.com/tours/Cordoba/Full-Day-Jesuit-Legacy-Tour-from-Cordoba/d22281-5674P140', 'http://www.viator.com/tours/Cordoba/Traslasierra-Valley-Full-Day-Tour-from-Cordoba/d22281-5674P148', 'Guidad tur bland bergen', 'Heldagstur i Punilla-dalen', 'Heldagstur i Punilla-dalen', 'Heldags guidad tur i Traslasierra dalen', '', '', ''),
(58, 'Caracas', 'Venezuela', 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 'Sydamerika', 1, 0, 0, 0, 'caracas-city.jpg', 'caracas-cablecar.jpg', 'caracas-avila.jpg', 'caracas-topotepuy.jpg', 'caracas-history.jpg', 'Venezuela, Venezuelas Bolivar Fuerte är valutan i Venezuela (VE, VEN). Det officiella språket är spanska och utöver det finns 30 olika indianspråk. Större delen av Venezuela ligger i den tropiska zonen men de stora höjdskillnaderna gör att klimatet varierar. Låglandet är varmt, medan bergsområdena är svalare.\r\nInget visum krävs men man behöver fylla i ett gratis turist kort (”tarjeta de ingresso”) också betecknat som ett DEX-2, för att få resa in i landet. Korten utfärdas normalt till inkommande flygpassagerare men hittas vid alla gränskontroller.', 'Caracas är huvudstaden i Venezuela, och huvudort för Venezuelas huvudstadsdistrikt. Staden är belägen i norra delen av landet i en dalgång mellan två bergskedjor, tio kilometer från Karibiska havet. Staden ligger cirka 1 000 meter över havet och har ett behagligt klimat.\r\nCaracas är Venezuela administrativa, ekonomiska och kulturella centrum och har, främst till följd av landets oljeboom, haft en snabb tillväxt efter andra världskriget. Stadsbilden är modern med breda motorvägar och höghus, men stora slumområden breder ut sig på sluttningarna runt stadskärnan. Industrin, bland annat bilfabriker, livsmedels- och kemisk produktion, ligger framförallt i förstäderna. Motorväg förbinder Caracas med hamnstaden La Guaira och den internationella flygplatsen vid kusten. Staden har flera universitet och högskolor, museer och bibliotek.', 'venezuela-bakgrund.jpg', 'http://www.viator.com/tours/Caracas/Caracas-Sightseeing-Tour-Including-Cable-Car-Ride-and-Lunch/d25981-18605P7', 'http://www.viator.com/tours/Caracas/Half-Day-Tour-Avila/d25981-18605P3', 'http://www.viator.com/tours/Caracas/Full-Day-Topotepuy-El-Hatillo-Tour/d25981-18605P4', 'http://www.viator.com/tours/Caracas/Half-Day-Historical-Tour-of-Caracas/d25981-18605P5', 'Guidad Sight-seeing tur och Cable car åk', 'Guidad Jeep tur i El Ávila National Parken', 'Guidad Jeep tur i El Ávila National Parken', 'Guidad tur i Caracas historiska delar', '', '', ''),
(59, 'Maracaibo', 'Venezuela', 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 'Sydamerika', 1, 0, 0, 0, 'maracaibo-background.jpg', 'maracaibo-climbing.jpg', 'maracaibo-spa.jpg', 'maracaibo-spa.jpg', 'maracaibo-museum.jpg', '', 'Maracaibo är en stad i västra Venezuela, och är den administrativa huvudorten för delstaten Zulia. Den är den näst största staden i landet och är belägen vid Maracaibosjön, som trots sitt namn är en havsvik. Maracaibo grundades 1529.', '', 'http://www.summitpost.org/piedras-blancas/691622', 'http://discoverwhattodo.com/caracas-venezuela/canoe-kayak-river-tours-rentals-caracas-venezuela.htm', 'http://www.spalatinomaracaibo.com/', 'http://www.world-guides.com/latin-america/venezuela/zulia/maracaibo/maracaibo_museums.html', 'Bergsklättring', 'Kanot- och kajakpaddling', 'Kanot- och kajakpaddling', 'Museum', '', '', ''),
(60, 'Valencia', 'Venezuela', 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 'Sydamerika', 1, 0, 0, 0, 'valencia-city.jpg', 'valencia-dykning.jpg', 'valencia-lake.jpg', 'Valencia-park.jpg', 'valencia-dunas.jpg', '', 'Valencia är en stad i norra Venezuela, och är den administrativa huvudorten för delstaten Carabobo. Den är belägen strax väster om Valenciasjön, landets näst största insjö. Valencia grundades av spanjorerna den 22 mars 1555 under namnet Nuestra Señora de la Asunción de Nueva Valencia del Rey.', '', 'http://www.travellosroques.com/paseos/los_roques/13.html', 'http://earthobservatory.nasa.gov/IOTD/view.php?id=5001', 'https://www.tripadvisor.com.au/Attraction_Review-g316069-d3366835-Reviews-Parque_Fernando_Penalver-Valencia_Central_Region.html', 'http://www.parquedunas.com.ve/#_=_', 'Dykning', 'Största sötvatten sjön i Venezuela, Lago de Valencia', 'Största sötvatten sjön i Venezuela, Lago de Valencia', 'Stort badhus/waterpark', '', '', ''),
(61, 'Djenne', 'Mali', 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 1, 0, 'Afrika', 1, 0, 0, 0, 'djenne-city.jpg', 'djenne-moské.jpg', 'djenne-oldtown.jpg', 'djenne-house.jpg', 'djenne-omnejd.jpg', 'Mali, franska är det officiella språket i landet. Klimatet är hett och torrt i hela Mali. I Saharaöknen i norr regnar det mycket sällan, vissa år faller ingen nederbörd alls. I Sahelområdet längre söderut är klimatet mindre torrt och medeltemperaturen är något lägre. I den sydligaste delen av landet är det svalare och fuktigare. I Mali är valutan CFA-franc.\r\nAlla nationaliteter behöver visum för inresa till Mali. Ett visum är giltigt för en inresa i landet och gäller i en månad från inresedagen i Mali, men kan förlängas på Migrationsverket i Bamako eller på en malisk polisstation. Visum kan erhållas upp till tre månader innan resan och erhålls från närmaste maliska ambassad eller konsulat.', '', 'mali-bakgrund.jpg', 'https://www.khanacademy.org/humanities/art-africa/west-africa/mali1/a/great-mosque-of-djenn', 'http://whc.unesco.org/en/list/116', 'http://www.djennetourism.com/places-of-interest/', 'http://www.djennetourism.com/surroundings/', 'Djennes stora moské', 'Djennes äldre stadsdelar', 'Djennes äldre stadsdelar', 'Djennes omnejder', '', '', '');

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
(1, 1, 1, 0, 1, 1, 1, 1, 1);

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
(1, 1, 0, 1, 1, 1, 1);

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
(1, 'Ingen preferens', '');

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
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Tabellstruktur `users`
--

CREATE TABLE `users` (
  `id` int(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `firstname`, `username`, `lastname`) VALUES
(1, 'Wintryrex@live.com', 'test', '', '', ''),
(3, 'm@hotmail.com', 'test', 'ja', '', 'he'),
(4, 'm@hotmail.com', 'test', 'ja', '', 'he'),
(6, 'awni@hotmail.com', 'test', 'Awni', '', 'test'),
(7, 'test@hotmail.com', 'test', 'test', '', 'test');

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
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT för tabell `users`
--
ALTER TABLE `users`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT för tabell `vacation`
--
ALTER TABLE `vacation`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
