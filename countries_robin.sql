-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 03 maj 2016 kl 16:35
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
(16, 'Thessaloniki', 'Grekland', 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, '', 1, 1, 1, 1, 'Thessaloniki.jpg', 'olympus.jpg', 'boat.jpg', 'walking.jpg', 'daytour.jpg', 'Grekland, officiella språket är grekiska och euro är valutan i landet. Grekland har ett typiskt medelhavsklimat, men med stora skillnader mellan norra och södra landet och mellan bergen och kusten samt inlandet. Snö och is är vanliga i det högre bergstrakterna men förekommer även i resten av Grekland.\r\nVid tillträde krävs inte ett visum från svenska medborgare men ett giltigt pass är viktigt.', '', 'Thessaloniki_background.jpg', 'https://www.viatorcom.se/sv/7384/tours/Thessaloniki/Mount-Olympus-Canyoning/d23853-11838P', 'https://www.viatorcom.se/sv/7384/tours/Thessaloniki/Sailboat-west-Sithonia-tour/d23853-11193P1', 'https://www.viatorcom.se/sv/7384/tours/Thessaloniki/Thessaloniki-Walking-Tour-and-Gastronomical-Experience/d23853-12485P1', 'https://www.viatorcom.se/sv/7384/tours/Thessaloniki/AMPHIPOLIS-PHILIPPI-KAVALA-ONE-DAY-TOUR/d23853-20715P1', 'Upplev Mount Olympus', 'Halkidiki båttrip', 'Halkidiki båttrip', 'Dagstur från Thessaloniki', 'http://www.reseguiden.se/hotell/thessaloniki/734077', 'https://www.flygresor.se/grekland/thessaloniki', 'https://www.viatorcom.se/sv/7384/Thessaloniki/d23853-ttd?activities=all'),
(18, 'Piraeus', 'Grekland', 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, '', 1, 1, 1, 1, 'piraeus.jpg', 'bus_tour.jpg', 'full_day_tour.png', 'booze_cruise.jpg', 'seaside_tour.jpg', 'Grekland, officiella språket är grekiska och euro är valutan i landet. Grekland har ett typiskt medelhavsklimat, men med stora skillnader mellan norra och södra landet och mellan bergen och kusten samt inlandet. Snö och is är vanliga i det högre bergstrakterna men förekommer även i resten av Grekland.\r\nVid tillträde krävs inte ett visum från svenska medborgare men ett giltigt pass är viktigt.', '', 'piraeus_background.jpg', 'https://www.getyourguide.com/athens-l91/athens-and-piraeus-hop-on-hop-off-bus-tour-t49048/', 'https://www.getyourguide.com/athens-l91/full-day-tour-of-the-saronic-islands-from-athens-t5991/', 'https://www.getyourguide.com/athens-l91/athens-booze-cruise-t56070/', 'https://www.getyourguide.com/piraeus-l759/piraeus-seaside-tour-with-electric-bike-t52175/', 'Hop-on Hop-off', 'Heldags tur', 'Heldags tur', 'Rundtur vid havet', 'http://www.reseguiden.se/hotell/pireus/255274', 'http://www.ferries.gr/greek-islands-ferry/ferry_piraeus.htm', 'https://www.getyourguide.com/s/?q=piraeus&lc=l759'),
(20, 'Timbuktu', 'Mali', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 'Afrika', 0, 0, 0, 0, 'timbuktu.jpg', 'sankore.jpg', 'dyingerey.jpg', 'heinrich.jpg', 'yahiya.jpg', 'Mali, franska är det officiella språket i landet. Klimatet är hett och torrt i hela Mali. I Saharaöknen i norr regnar det mycket sällan, vissa år faller ingen nederbörd alls. I Sahelområdet längre söderut är klimatet mindre torrt och medeltemperaturen är något lägre. I den sydligaste delen av landet är det svalare och fuktigare. I Mali är valutan CFA-franc.\r\nAlla nationaliteter behöver visum för inresa till Mali. Ett visum är giltigt för en inresa i landet och gäller i en månad från inresedagen i Mali, men kan förlängas på Migrationsverket i Bamako eller på en malisk polisstation. Visum kan erhållas upp till tre månader innan resan och erhålls från närmaste maliska ambassad eller konsulat. Vaccination mot gula febern är obligatorisk.', '', 'timbuktu_background.jpg', 'https://www.lonelyplanet.com/mali/niger-river-route/timbuktu-tombouctou/sights/religious/sankore-mosque', 'https://www.lonelyplanet.com/mali/niger-river-route/timbuktu-tombouctou/sights/architecture/dyingerey-ber-mosque', 'https://www.lonelyplanet.com/mali/niger-river-route/timbuktu-tombouctou/sights/arts-culture-literary/heinrich-barth-s-house', 'https://www.lonelyplanet.com/mali/niger-river-route/timbuktu-tombouctou/sights/architecture/sidi-yahiya-mosque', 'Upplev Sankoré', 'Imponerande arkitektur', 'Imponerande arkitektur', 'Gammal moské', 'https://www.tripadvisor.se/Hotels-g304007-Timbuktu_Tombouctou_Region-Hotels.html ', 'http://www.allaflygbiljetter.se/flyg/timbuktu_tom', 'https://www.lonelyplanet.com/mali/niger-river-route/timbuktu-tombouctou/things-to-do'),
(21, 'Alexandria', 'Egypten', 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, '', 1, 0, 0, 1, 'Alexandria.jpg', 'overnight_trip.png', 'shore_excursion.png', 'alamain.png', 'private_trip.png', '', '', 'Alexandria_background.jpg', 'http://www.viator.com/tours/Alexandria/Overnight-Trip-to-Cairo-from-Alexandria-Port/d4376-18465P6', 'http://www.viator.com/tours/Alexandria/Shore-Excursion-Small-Group-Guided-Tour-in-Alexandria/d4376-19997P1', 'http://www.viator.com/tours/Alexandria/Day-Tour-to-Alamain-Museum-Visiting-the-Commonwealth-German-Cemetery/d4376-18465P2', 'http://www.viator.com/tours/Alexandria/Classic-Cairo-Private-Day-Trip-from-Alexandria/d4376-19426P6', 'Trip till Kairo', 'Guidad tur', 'Guidad tur', 'Klassisk privat dagstur', 'https://www.kayak.se/sem/hotels/destination/-c25321?lang=sv&gclid=CjwKEAjw9Zu5BRCS_OuVibujhQ0SJAD7t4KrdZ8zgKIeg2xQRPoAVPryXK2Hfysw1xETOEpXw0b7RxoCepnw_wcB', 'https://www.flygresor.se/egypten/alexandria', 'http://www.viator.com/Alexandria/d4376-ttd'),
(22, 'Giza', 'Egypten', 1, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, '', 1, 0, 0, 1, 'giza.jpg', 'nile_pharaoh.jpg', 'show_pyramids.jpg', 'sunset_ride.jpg', 'sailing.jpg', '', '', 'giza_background.jpg', 'https://www.viatorcom.se/sv/7384/tours/Giza/Nile-Pharaoh-Dinner-Cruise-from-Giza/d23032-10124P9', 'https://www.viatorcom.se/sv/7384/tours/Giza/Sound-and-Light-Show-at-The-Pyramids-of-Giza/d23032-10124P11', 'https://www.viatorcom.se/sv/7384/tours/Giza/Sunset-Camel-or-Horse-Ride-by-the-Giza-Pyramids/d23032-26535P1', 'https://www.viatorcom.se/sv/7384/tours/Giza/Felucca-Sailing-Ride-on-The-Nile-from-Giza/d23032-10124P13', 'Måltidskryssning', 'Ljusshow vid pyramiderna', 'Ljusshow vid pyramiderna', 'Segling på Nilen', 'http://www.reseguiden.se/hotell/giza/360995', 'https://www.expedia.se/Flyg-Till-Giza.d178624.Reseguide-Flyg', 'https://www.viatorcom.se/sv/7384/Giza/d23032-ttd'),
(23, 'Kairo', 'Egypten', 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, '', 1, 0, 0, 1, 'Kairo.jpg', 'flodkryssning_kairo.jpg', 'pyramider_kairo.jpg', 'food_kairo.jpg', 'safari_kairo.jpg', '', '', '', 'https://www.viatorcom.se/sv/7384/tours/Kairo/Flodkryssning-med-middag-pa-Nilen/d782-3124CAI16', 'https://www.viatorcom.se/sv/7384/tours/Kairo/Privat-rundtur-Pyramiderna-och-Sfinxen-i-Giza-Egyptiska-museet-Khan-el-Khalili-basaren/d782-3124CAI01', 'https://www.viatorcom.se/sv/7384/tours/Kairo/Local-Egyptian-Food-Tasting-and-Learning-From-Cairo/d782-11860P2', 'https://www.viatorcom.se/sv/7384/tours/Kairo/Safari-tour-on-a-horse-or-camel-for-sunset-at-Giza/d782-18966P43', 'Flodkryssning med mat', 'Rundtur i pyramiderna', 'Rundtur i pyramiderna', 'Safari på kamel/häst', 'http://www.reseguiden.se/hotell/kairo/360630', 'https://www.flygresor.se/egypten/kairo', 'https://www.viatorcom.se/sv/7384/Kairo/d782-ttd'),
(24, 'Aten', 'Grekland', 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, '', 1, 1, 1, 1, 'aten.jpg', 'bar_hopping.jpg', 'hop_on_off.jpg', 'Akropolis.jpg', 'evening_tour.jpg', 'Grekland, officiella språket är grekiska och euro är valutan i landet. Grekland har ett typiskt medelhavsklimat, men med stora skillnader mellan norra och södra landet och mellan bergen och kusten samt inlandet. Snö och is är vanliga i det högre bergstrakterna men förekommer även i resten av Grekland.\r\nVid tillträde krävs inte ett visum från svenska medborgare men ett giltigt pass är viktigt.', '', 'aten_background.jpg', 'https://www.viatorcom.se/sv/7384/tours/Aten/Athens-Bar-Hopping-Tour/d496-6956BARHOP', 'https://www.viatorcom.se/sv/7384/tours/Aten/Sights-of-Athens-Hop-on-Hop-Off-Classic-tour/d496-8391P3', 'https://www.viatorcom.se/sv/7384/tours/Aten/Gangtur-pa-Akropolis-med-Syntagmatorget-och-stadens-historiska-centrum/d496-2906ATHACRO', 'https://www.viatorcom.se/sv/7384/tours/Aten/An-evening-stroll/d496-18204P1', 'Prova olika barer', 'Klassisk tur av Aten', 'Klassisk tur av Aten', 'kvällstur av Aten', 'http://www.reseguiden.se/hotell/aten/264371 ', 'https://www.flygresor.se/grekland/aten?&gclid=CjwKEAjw9Zu5BRCS_OuVibujhQ0SJAD7t4KrkRay92Wi5mQ2dPSDGx9LWoyWERtkc2F4eyqNXx4w0RoCaG3w_wcB', 'https://www.viatorcom.se/sv/7384/Aten/d496-ttd ');

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
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
