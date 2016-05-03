-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2016 at 05:25 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newhorizons`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
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
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `stad`, `land`, `vandring`, `kanot`, `backpacking`, `safari`, `skidor`, `surfing`, `dykning`, `bergsklattring`, `spa`, `naturupplevelser`, `solsemester`, `yoga`, `meditation`, `hotell`, `motell`, `vandrarhem`, `camping`, `bedAndBreakfast`, `kostnadTransport`, `kostnadBoende`, `levnadsKostnad`, `distans`, `solTemp`, `svalTemp`, `kalltTemp`, `bergigt`, `plant`, `oken`, `skog`, `narhetTillVatten`, `sightseeing`, `storstad`, `historia`, `religion`, `utbildningssyfte`, `matresa`, `kontinent`, `flygplan`, `tag`, `buss`, `annat`, `img1`, `img2`, `img3`, `img4`, `img5`, `countryInfo`, `cityInfo`, `background`, `imgLink1`, `imgLink2`, `imgLink3`, `imgLink4`, `imgText1`, `imgText2`, `imgText3`, `imgText4`, `hotellText`, `flygText`, `aktivitetText`) VALUES
(15, 'Geneve', 'Schweiz', 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, '', 1, 1, 1, 1, 'schweiz_country.jpg', 'train.jpg', 'dagsutflykt.jpg', 'boat.jpg', 'tasting.jpg', 'Schweiz, har tyska, franska och italienska som officiella språk. Klimatet där domineras av vindar i öst, väst, syd och mellaneuropeiskt lågtryck i norr. Temperaturen i sommaren ligger mellan 18-20 grader i dalarna och rund 10 grader på de högre höjderna. Det finns många höga bergstoppar (Alperna). Schweiz har Schweizisk franc som valuta. Visum krävs inte från svenska medborgare. Barn som inte haft eller tidigare vaccinerats mot påssjuka, mässling eller röda hund bör vaccineras innan avresa.', '', 'Switzerland.jpg', 'https://www.viatorcom.se/sv/7384/tours/Geneve/Dagsresa­till­Gruyeres­inklusive- Golden­Panoramic­Express­Train/d578­2510KT002', 'https://www.viatorcom.se/sv/7384/tours/Geneve/Chamonix­och­Mont­Blanc/d578­2510KT001', 'https://www.viatorcom.se/sv/7384/tours/Geneve/Geneva­City­Tour­and­Boat­Cruise/d5782510KTG207', 'https://www.viatorcom.se/sv/7384/tours/Geneve/Day­Trip­to­Gruyeres­with­Cheese­and- Chocolate­Tastings/d578­2510KTG352', 'Tågresa till Gruyères', 'Utflykt till Chamonix och Mont Blanc', 'Utflykt till Chamonix och Mont Blanc', 'Ost­ och chokladprovning', 'http://www.reseguiden.se/hotell/geneve/2660646', 'https://www.flygresor.se/schweiz/geneve', 'https://www.viatorcom.se/sv/7384/Geneve/d578­ttd'),
(16, 'Basel', 'Schweiz', 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, '', 1, 1, 1, 1, 'basel.jpg', 'vattenpark.png', 'gokart.png', 'zoo.png', 'vattenfall.png', 'Schweiz, har tyska, franska och italienska som officiella språk. Klimatet där domineras av vindar i öst, väst, syd och mellaneuropeiskt lågtryck i norr. Temperaturen i sommaren ligger mellan 18-20 grader i dalarna och rund 10 grader på de högre höjderna. Det finns många höga bergstoppar (Alperna). Schweiz har Schweizisk franc som valuta. Visum krävs inte från svenska medborgare. Barn som inte haft eller tidigare vaccinerats mot påssjuka, mässling eller röda hund bör vaccineras innan avresa.', '', 'background_basel.jpg', 'http://www.viator.com/tours/Basel/Water-Park-included-Ticket-and-transfer-roundtrip/d5010-30201P13 ', 'http://www.viator.com/tours/Basel/Go-Kart-Racing-included-Hotel-pick-up-and-drop-off/d5010-30201P14', 'http://www.viator.com/tours/Basel/Basel-Zoo/d5010-30201P5', 'http://www.viator.com/tours/Basel/Rhein-Fall-half-day-trip-and-Boat-Ticket-with-Hotel-Pick-and-Drop-Off-Included/d5010-30201P6', 'Vattenparkhhhhhhhhhhh', 'Go-karthhhhhhhhhh', 'Zoohhhhhhhh', 'Tur till vattenfall', 'http://www.reseguiden.se/hotell/basel/2661604', 'http://www.skyscanner.se/flyg-till/bsl/billiga-flyg-till-basel-mulhouse-freiburg-flygplats.html', 'http://www.viator.com/Basel/d5010-ttd'),
(17, 'Zurich', 'Schweiz', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 'zurich.jpg', 'choklad.png', 'alptur.png', 'stadstur.png', 'glacier.png', 'Schweiz, har tyska, franska och italienska som officiella språk. Klimatet där domineras av vindar i öst, väst, syd och mellaneuropeiskt lågtryck i norr. Temperaturen i sommaren ligger mellan 18-20 grader i dalarna och rund 10 grader på de högre höjderna. Det finns många höga bergstoppar (Alperna). Schweiz har Schweizisk franc som valuta. Visum krävs inte från svenska medborgare. Barn som inte haft eller tidigare vaccinerats mot påssjuka, mässling eller röda hund bör vaccineras innan avresa.', '', 'zurich_background.jpg', 'http://www.viator.com/tours/Zurich/Small-Group-Chocolate-and-Sweets-Walking-Tour-of-Zurichs-Old-Town/d577-6143ZURICH', 'http://www.viator.com/tours/Zurich/2-Day-Alps-Tour-from-Zurich-Mt-Pilatus-and-Mt-Titlis/d577-3885SWSUM02', 'http://www.viator.com/tours/Zurich/The-Great-Tour-of-Zurich/d577-2460CITB', 'http://www.viator.com/tours/Zurich/Private-Guided-Glacier-Express-1-day-Tour-from-Zurich/d577-8283P7', 'Choklad-rundtur', '2-dagars alptur', '2-dagars alptur', 'Glaciär-express', 'http://www.reseguiden.se/hotell/zurich/2657896', 'https://www.flygresor.se/schweiz/zurich', 'http://www.viator.com/Zurich/d577-ttd'),
(19, 'Yokohama', 'Japan', 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, '', 1, 0, 0, 0, 'yokohama.jpg', '', '', '', '', '', '', 'yokohama_background.jpg', 'http://www.viator.com/tours/Tokyo/Ninja-School-Ninja-for-a-Day/d334-6117TYO_JHTKNJ', 'http://www.viator.com/tours/Tokyo/Nikko-National-Park-Day-Trip-from-Tokyo/d334-2142TYO_F300_F308', 'http://www.viator.com/tours/Tokyo/Tokyo-Robot-Evening-Cabaret-Show/d334-2142TYODIN1G', 'http://www.viator.com/tours/Tokyo/Mt-Fuji-Day-Trip-including-Lake-Ashi-Sightseeing-Cruise-from-Tokyo/d334-2142TYO_F880_F830', 'Ninjaskola', 'Nikko nationalpark', 'Nikko nationalpark', 'Sightseeing Mt Fuji & Lake Ashi', 'http://www.reseguiden.se/hotell/yokohama/1848354', 'http://www.travellink.se/flyg/japan/yokohama', 'http://www.viator.com/Japan/d16-ttd'),
(20, 'Osaka', 'Japan', 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, '', 1, 0, 0, 0, 'osaka.jpg', 'tempel.png', 'vandring.png', 'sushi.png', 'akvarium.png', '', '', 'osaka_background.jpg', 'http://www.viator.com/tours/Osaka/Kyoto-Morning-Tour-of-Kinkakuji-Temple-Nijo-Castle-and-Kyoto-Imperial-Palace-from-Osaka/d333-2142OSA_P840', 'http://www.viator.com/tours/Osaka/Osaka-Full-Day-Walking-Tour-with-Osaka-River-Cruise/d333-2142OSA_P740', 'http://www.viator.com/tours/Osaka/Sushi-Cooking-Class-in-Osaka/d333-6806OSASUSHI', 'http://www.viator.com/tours/Osaka/Osaka-Aquarium-Kaiyukan-Admission-with-Osaka-Bay-Cruise/d333-2142OSA_P601', 'Tempel- och palatstur', 'Vandring och båttur', 'Sushi-matlagningskurs', 'Akvariumbesök och kryssning', 'http://www.reseguiden.se/hotell/osaka/1853909 ', 'https://www.flygresor.se/japan/osaka', 'http://www.viator.com/Osaka/d333-ttd'),
(21, 'Tokyo', 'Japan', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, '', 1, 1, 1, 1, 'tokyo.jpg', 'sumobrottning.png', 'tokyo_tower.png', 'sightseeing.png', 'mat.png', '', '', 'tokyo_background.jpg', 'https://www.viatorcom.se/sv/7384/tours/Tokyo/Sumobrottning-i-Tokyo/d334-2142TYO_F550', 'https://www.viatorcom.se/sv/7384/tours/Tokyo/Dagstur-med-Tokyo-Tower-teceremoni-och-kryssning-pa-Sumidafloden/d334-2142TYO_A100', 'https://www.viatorcom.se/sv/7384/tours/Tokyo/Morgontur-med-sightseeing-i-Tokyo/d334-2142TYO_A010', 'https://www.viatorcom.se/sv/7384/tours/Tokyo/Kvaellstur-i-Tokyo-japansk-matrundtur/d334-5263JPUC', 'Sumobrottning', 'Tokyo Tower + kryssning', 'Morgon-sightseeing', 'Matrundtur', 'http://www.reseguiden.se/hotell/tokyo/1850147', 'https://www.flygresor.se/japan/tokyo', 'https://www.viatorcom.se/sv/7384/Tokyo/d334-ttd'),
(22, 'Bamako', 'Mali', 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, '', 1, 0, 0, 0, 'bamako.jpg', 'marknad.png', 'katedral.png', 'museum.png', 'park.png', 'Mali, franska är det officiella språket i landet. Klimatet är hett och torrt i hela Mali. I Saharaöknen i norr regnar det mycket sällan, vissa år faller ingen nederbörd alls. I Sahelområdet längre söderut är klimatet mindre torrt och medeltemperaturen är något lägre. I den sydligaste delen av landet är det svalare och fuktigare. I Mali är valutan CFA-franc.\r\nAlla nationaliteter behöver visum för inresa till Mali. Ett visum är giltigt för en inresa i landet och gäller i en månad från inresedagen i Mali, men kan förlängas på Migrationsverket i Bamako eller på en malisk polisstation. Visum kan erhållas upp till tre månader innan resan och erhålls från närmaste maliska ambassad eller konsulat.', '', 'bamako_background.jpg', 'https://www.tripadvisor.com/Attraction_Review-g293813-d556540-Reviews-Bamako_city_centre_market-Bamako.html', 'https://www.tripadvisor.com/Attraction_Review-g293813-d8070025-Reviews-Cathedral_of_Bamako-Bamako.html', 'https://www.tripadvisor.com/Attraction_Review-g293813-d2081099-Reviews-Musee_National_de_Bamako-Bamako.html', 'https://www.tripadvisor.com/Attraction_Review-g293813-d2320585-Reviews-Parc_national_du_Mali_Bamako-Bamako.html', 'City-marknad', 'Katedralbesök', 'Nationalmuseum', 'Nationalpark', 'http://www.reseguiden.se/hotell/bamako/2460596', 'http://www.skyscanner.se/flyg-till/bko/billiga-flyg-till-bamako-flygplats.html ', 'https://www.tripadvisor.com/Attractions-g293813-Activities-Bamako.html');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
