-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26.03.2021 klo 12:13
-- Palvelimen versio: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donitsikauppa`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `asiakas`
--

CREATE TABLE `asiakas` (
  `asiakasID` smallint(6) NOT NULL,
  `snimi` char(30) NOT NULL,
  `enimi` char(30) NOT NULL,
  `postinro` char(5) DEFAULT NULL,
  `postitmp` char(10) DEFAULT NULL,
  `puhnro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Rakenne taululle `setti`
--

CREATE TABLE `setti` (
  `setin_nimi` char(30) NOT NULL,
  `tuotenro` int(11) NOT NULL,
  `tuote1` int(11) NOT NULL,
  `tuote2` int(11) NOT NULL,
  `tuote3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vedos taulusta `setti`
--

INSERT INTO `setti` (`setin_nimi`, `tuotenro`, `tuote1`, `tuote2`, `tuote3`) VALUES
('perinteinen setti', 64, 10, 21, 46),
('erikoinen setti', 65, 18, 26, 62),
('makuöveri setti', 66, 17, 27, 35);

-- --------------------------------------------------------

--
-- Rakenne taululle `tilaus`
--

CREATE TABLE `tilaus` (
  `tilausnro` int(11) NOT NULL,
  `asiakasID` smallint(6) NOT NULL,
  `tilauspvm` timestamp NOT NULL DEFAULT current_timestamp(),
  `tila` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Rakenne taululle `tilausrivi`
--

CREATE TABLE `tilausrivi` (
  `tilausnro` int(11) NOT NULL,
  `rivinro` smallint(6) NOT NULL,
  `tuotenro` int(11) DEFAULT NULL,
  `kpl` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Rakenne taululle `tuote`
--

CREATE TABLE `tuote` (
  `tuotenro` int(11) NOT NULL,
  `tuotenimi` char(30) NOT NULL,
  `hinta` decimal(5,2) DEFAULT NULL,
  `kustannus` decimal(5,2) DEFAULT NULL,
  `trnro` smallint(6) NOT NULL,
  `maku` char(20) DEFAULT NULL,
  `taytemaku` char(20) DEFAULT NULL,
  `kuva` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vedos taulusta `tuote`
--

INSERT INTO `tuote` (`tuotenro`, `tuotenimi`, `hinta`, `kustannus`, `trnro`, `maku`, `taytemaku`, `kuva`) VALUES
(1, 'kahvi', '4.90', '2.90', 1, 'vaalea', NULL, NULL),
(2, 'kahvi', '4.90', '2.90', 1, 'tumma', NULL, NULL),
(3, 'tee', '4.90', '2.90', 1, NULL, NULL, NULL),
(4, 'limppari', '5.90', '2.90', 1, 'pepsi', NULL, NULL),
(5, 'limppari', '5.90', '2.90', 1, 'jaffa', NULL, NULL),
(6, 'vesi', '2.90', '1.00', 1, NULL, NULL, NULL),
(7, 'mehu', '3.90', '1.90', 1, 'mansikka', NULL, NULL),
(8, 'mehu', '3.90', '1.90', 1, 'päärynä', NULL, NULL),
(9, 'kinuski_pikkudonitsi', '2.50', '1.00', 2, 'kinuski', NULL, NULL),
(10, 'suklaa_pikkudonitsi', '2.50', '1.00', 2, 'suklaa', NULL, NULL),
(11, 'mansikka_pikkudonitsi', '2.50', '1.00', 2, 'mansikka', NULL, NULL),
(12, 'tummaSuklaa_pikkudonitsi', '2.50', '1.00', 2, 'tumma suklaa', NULL, NULL),
(13, 'valkosuklaa_pikkudonitsi', '2.50', '1.00', 2, 'valkosuklaa', NULL, NULL),
(14, 'lakritsi_pikkudonitsi', '2.50', '1.00', 2, 'kinuski', NULL, NULL),
(15, 'hasselpähkinä_pikkudonitsi', '2.50', '1.00', 2, 'hasselpähkinä', NULL, NULL),
(16, 'salmiakki_pikkudonitsi', '2.50', '1.00', 2, 'salmiakki', NULL, NULL),
(17, 'vanilja_pikkudonitsi', '2.50', '1.00', 2, 'vanilja', NULL, NULL),
(18, 'vihreäKuula_pikkudonitsi', '2.50', '1.00', 2, 'vihreä kuula', NULL, NULL),
(19, 'kahvi_pikkudonitsi', '2.50', '1.00', 2, 'kahvi', NULL, NULL),
(20, 'kinuskidonitsi', '3.50', '1.50', 3, 'kinuski', NULL, NULL),
(21, 'suklaadonitsi', '3.50', '1.50', 3, 'suklaa', NULL, NULL),
(22, 'mansikkadonitsi', '3.50', '1.50', 3, 'mansikka', NULL, NULL),
(23, 'tummaSuklaadonitsi', '3.50', '1.50', 3, 'tumma suklaa', NULL, NULL),
(24, 'valkosuklaadonitsi', '3.50', '1.50', 3, 'valkosuklaa', NULL, NULL),
(25, 'lakritsidonitsi', '3.50', '1.50', 3, 'kinuski', NULL, NULL),
(26, 'hasselpähkinädonitsi', '3.50', '1.50', 3, 'hasselpähkinä', NULL, NULL),
(27, 'salmiakkidonitsi', '3.50', '1.50', 3, 'salmiakki', NULL, NULL),
(28, 'vaniljadonitsi', '3.50', '1.50', 3, 'vanilja', NULL, NULL),
(29, 'vihreäKuuladonitsi', '3.50', '1.50', 3, 'vihreä kuula', NULL, NULL),
(30, 'kahvidonitsi', '3.50', '1.50', 3, 'kahvi', NULL, NULL),
(31, 'kinuskidonitsi', '4.50', '2.50', 5, 'kinuski', 'vaniljakreemi', NULL),
(32, 'suklaadonitsi', '4.50', '2.50', 5, 'suklaa', 'vaniljakreemi', NULL),
(33, 'mansikkadonitsi', '4.50', '2.50', 5, 'mansikka', 'vaniljakreemi', NULL),
(34, 'tummaSuklaadonitsi', '4.50', '2.50', 5, 'tumma suklaa', 'vaniljakreemi', NULL),
(35, 'valkosuklaadonitsi', '4.50', '2.50', 5, 'valkosuklaa', 'vaniljakreemi', NULL),
(36, 'lakritsidonitsi', '4.50', '2.50', 5, 'kinuski', 'vaniljakreemi', NULL),
(37, 'hasselpähkinädonitsi', '4.50', '2.50', 5, 'hasselpähkinä', 'vaniljakreemi', NULL),
(38, 'salmiakkidonitsi', '4.50', '2.50', 5, 'salmiakki', 'vaniljakreemi', NULL),
(39, 'vaniljadonitsi', '4.50', '2.50', 5, 'vanilja', 'vaniljakreemi', NULL),
(40, 'vihreäKuuladonitsi', '4.50', '2.50', 5, 'vihreä kuula', 'vaniljakreemi', NULL),
(41, 'kahvidonitsi', '4.50', '2.50', 5, 'kahvi', 'vaniljakreemi', NULL),
(42, 'kinuskidonitsi', '4.50', '2.50', 5, 'kinuski', 'vadelmahillo', NULL),
(43, 'suklaadonitsi', '4.50', '2.50', 5, 'suklaa', 'vadelmahillo', NULL),
(44, 'mansikkadonitsi', '4.50', '2.50', 5, 'mansikka', 'vadelmahillo', NULL),
(45, 'tummaSuklaadonitsi', '4.50', '2.50', 5, 'tumma suklaa', 'vadelmahillo', NULL),
(46, 'valkosuklaadonitsi', '4.50', '2.50', 5, 'valkosuklaa', 'vadelmahillo', NULL),
(47, 'lakritsidonitsi', '4.50', '2.50', 5, 'kinuski', 'vadelmahillo', NULL),
(48, 'hasselpähkinädonitsi', '4.50', '2.50', 5, 'hasselpähkinä', 'vadelmahillo', NULL),
(49, 'salmiakkidonitsi', '4.50', '2.50', 5, 'salmiakki', 'vadelmahillo', NULL),
(50, 'vaniljadonitsi', '4.50', '2.50', 5, 'vanilja', 'vadelmahillo', NULL),
(51, 'vihreäKuuladonitsi', '4.50', '2.50', 5, 'vihreä kuula', 'vadelmahillo', NULL),
(52, 'kahvidonitsi', '4.50', '2.50', 5, 'kahvi', 'vadelmahillo', NULL),
(53, 'kinuskidonitsi', '4.50', '2.50', 5, 'kinuski', 'vihreä kuula', NULL),
(54, 'suklaadonitsi', '4.50', '2.50', 5, 'suklaa', 'vihreä kuula', NULL),
(55, 'mansikkadonitsi', '4.50', '2.50', 5, 'mansikka', 'vihreä kuula', NULL),
(56, 'tummaSuklaadonitsi', '4.50', '2.50', 5, 'tumma suklaa', 'vihreä kuula', NULL),
(57, 'valkosuklaadonitsi', '4.50', '2.50', 5, 'valkosuklaa', 'vihreä kuula', NULL),
(58, 'lakritsidonitsi', '4.50', '2.50', 5, 'kinuski', 'vihreä kuula', NULL),
(59, 'hasselpähkinädonitsi', '4.50', '2.50', 5, 'hasselpähkinä', 'vihreä kuula', NULL),
(60, 'salmiakkidonitsi', '4.50', '2.50', 5, 'salmiakki', 'vihreä kuula', NULL),
(61, 'vaniljadonitsi', '4.50', '2.50', 5, 'vanilja', 'vihreä kuula', NULL),
(62, 'vihreäKuuladonitsi', '4.50', '2.50', 5, 'vihreä kuula', 'vihreä kuula', NULL),
(63, 'kahvidonitsi', '4.50', '2.50', 5, 'kahvi', 'vihreä kuula', NULL),
(64, 'perinteinen setti', '12.50', '5.00', 4, NULL, NULL, NULL),
(65, 'erikoinen setti', '12.50', '5.00', 4, NULL, NULL, NULL),
(66, 'makuöveri setti', '12.50', '5.00', 4, NULL, NULL, NULL),
(67, 'munkki', '3.00', '1.00', 6, NULL, NULL, NULL),
(68, 'suklaakeksi', '2.00', '0.50', 6, 'suklaa', NULL, NULL),
(69, 'hasselpähkinäkeksi', '2.00', '0.50', 6, 'hasselpähkinä', NULL, NULL),
(70, 'kahvikeksi', '2.00', '0.50', 6, 'kahvi', NULL, NULL),
(71, 'rinkeli', '2.50', '1.00', 6, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Rakenne taululle `tuoteryhma`
--

CREATE TABLE `tuoteryhma` (
  `trnro` smallint(6) NOT NULL,
  `trnimi` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vedos taulusta `tuoteryhma`
--

INSERT INTO `tuoteryhma` (`trnro`, `trnimi`) VALUES
(1, 'Virvokkeet'),
(2, 'Pikkudonitsit'),
(3, 'Donitsit'),
(4, 'Donitsisetit'),
(5, 'Täytetyt donitsit'),
(6, 'Muut leivonnaiset');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asiakas`
--
ALTER TABLE `asiakas`
  ADD PRIMARY KEY (`asiakasID`);

--
-- Indexes for table `setti`
--
ALTER TABLE `setti`
  ADD KEY `tuotenro` (`tuotenro`),
  ADD KEY `tuote1` (`tuote1`),
  ADD KEY `tuote2` (`tuote2`),
  ADD KEY `tuote3` (`tuote3`);

--
-- Indexes for table `tilaus`
--
ALTER TABLE `tilaus`
  ADD PRIMARY KEY (`tilausnro`),
  ADD KEY `tilaus_asiakas_fk` (`asiakasID`);

--
-- Indexes for table `tilausrivi`
--
ALTER TABLE `tilausrivi`
  ADD PRIMARY KEY (`tilausnro`,`rivinro`),
  ADD KEY `tilausrivi_tuote_fk` (`tuotenro`);

--
-- Indexes for table `tuote`
--
ALTER TABLE `tuote`
  ADD PRIMARY KEY (`tuotenro`),
  ADD KEY `tuote_ryhma_fk` (`trnro`);

--
-- Indexes for table `tuoteryhma`
--
ALTER TABLE `tuoteryhma`
  ADD PRIMARY KEY (`trnro`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asiakas`
--
ALTER TABLE `asiakas`
  MODIFY `asiakasID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- Rajoitteet vedostauluille
--

--
-- Rajoitteet taululle `setti`
--
ALTER TABLE `setti`
  ADD CONSTRAINT `setti_ibfk_1` FOREIGN KEY (`tuotenro`) REFERENCES `tuote` (`tuotenro`),
  ADD CONSTRAINT `setti_ibfk_2` FOREIGN KEY (`tuote1`) REFERENCES `tuote` (`tuotenro`),
  ADD CONSTRAINT `setti_ibfk_3` FOREIGN KEY (`tuote2`) REFERENCES `tuote` (`tuotenro`),
  ADD CONSTRAINT `setti_ibfk_4` FOREIGN KEY (`tuote3`) REFERENCES `tuote` (`tuotenro`);

--
-- Rajoitteet taululle `tilaus`
--
ALTER TABLE `tilaus`
  ADD CONSTRAINT `tilaus_asiakas_fk` FOREIGN KEY (`asiakasID`) REFERENCES `asiakas` (`asiakasID`);

--
-- Rajoitteet taululle `tilausrivi`
--
ALTER TABLE `tilausrivi`
  ADD CONSTRAINT `tilausrivi_tuote_fk` FOREIGN KEY (`tuotenro`) REFERENCES `tuote` (`tuotenro`);

--
-- Rajoitteet taululle `tuote`
--
ALTER TABLE `tuote`
  ADD CONSTRAINT `tuote_ryhma_fk` FOREIGN KEY (`trnro`) REFERENCES `tuoteryhma` (`trnro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
