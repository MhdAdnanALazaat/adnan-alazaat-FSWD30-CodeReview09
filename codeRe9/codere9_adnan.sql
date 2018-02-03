-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 03. Feb 2018 um 15:04
-- Server-Version: 10.1.30-MariaDB
-- PHP-Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `codere9_adnan`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `applications`
--

CREATE TABLE `applications` (
  `Applications_id` int(11) NOT NULL,
  `Driving_Certificate` varchar(55) DEFAULT NULL,
  `passport` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `applications`
--

INSERT INTO `applications` (`Applications_id`, `Driving_Certificate`, `passport`) VALUES
(1, 'yes', 'yes'),
(2, 'yes', 'yes'),
(3, 'yes', 'yes'),
(4, 'yes', 'yes'),
(5, 'yes', 'yes');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cars`
--

CREATE TABLE `cars` (
  `cars_id` int(11) NOT NULL,
  `Type` varchar(55) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `Production_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `cars`
--

INSERT INTO `cars` (`cars_id`, `Type`, `price`, `Production_Date`) VALUES
(1, 'bmw', 100, '2010-05-12'),
(2, 'mazdda', 120, '2011-06-13'),
(3, 'marseds', 140, '2012-07-14'),
(4, 'oppel', 150, '2013-05-12'),
(5, 'nessan', 160, '2014-05-12');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `fk_Register_id` int(11) DEFAULT NULL,
  `fk_Applications_id` int(11) DEFAULT NULL,
  `fk_Insurance_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `company`
--

INSERT INTO `company` (`company_id`, `fk_Register_id`, `fk_Applications_id`, `fk_Insurance_id`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `company_online`
--

CREATE TABLE `company_online` (
  `company_online_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fk_Customer_id` int(11) DEFAULT NULL,
  `fk_Services_id` int(11) DEFAULT NULL,
  `fk_prices_id` int(11) DEFAULT NULL,
  `fk_Connection_id` int(11) DEFAULT NULL,
  `fk_Location_id` int(11) DEFAULT NULL,
  `fk_cars_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `company_online`
--

INSERT INTO `company_online` (`company_online_id`, `name`, `fk_Customer_id`, `fk_Services_id`, `fk_prices_id`, `fk_Connection_id`, `fk_Location_id`, `fk_cars_id`) VALUES
(1, 'wiencar', 1, 1, 1, 1, 1, 1),
(2, 'uscar', 2, 2, 2, 2, 2, 2),
(3, 'amstrdamcar', 3, 3, 3, 3, 3, 3),
(4, 'adnancar', 4, 4, 4, 4, 4, 4),
(5, 'hellocar', 5, 5, 5, 5, 5, 5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `connectionz`
--

CREATE TABLE `connectionz` (
  `Connection_id` int(11) NOT NULL,
  `tel` int(11) NOT NULL,
  `fax` int(11) NOT NULL,
  `masnnger` varchar(55) DEFAULT NULL,
  `facebook` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `connectionz`
--

INSERT INTO `connectionz` (`Connection_id`, `tel`, `fax`, `masnnger`, `facebook`) VALUES
(1, 2147483647, 111, 'taxiwien', 'taxiwien'),
(2, 231323232, 222, 'taxiwien', 'taxiwien'),
(3, 2147483647, 333, 'caramstrdam', 'caramstrdam'),
(4, 2147483647, 444, 'carberiln', 'carberiln'),
(5, 556564224, 55, 'carstcohoolm', 'carstchoolm');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `fk_name_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `customer`
--

INSERT INTO `customer` (`customer_id`, `age`, `Address`, `fk_name_id`) VALUES
(1, 23, 'wien 1223', 1),
(2, 26, 'amstrdam', 2),
(3, 21, 'berlin', 3),
(4, 22, 'uk', 4),
(5, 21, 'stochoolm', 5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `insurance`
--

CREATE TABLE `insurance` (
  `Insurance_id` int(11) NOT NULL,
  `Fuel` varchar(55) DEFAULT NULL,
  `Wheels` varchar(55) DEFAULT NULL,
  `structure` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `insurance`
--

INSERT INTO `insurance` (`Insurance_id`, `Fuel`, `Wheels`, `structure`) VALUES
(1, 'full', 'yes', 'yes'),
(2, 'full', 'yes', 'yes'),
(3, 'Empty', 'NO', 'yes'),
(4, 'Empty', 'NO', 'NO'),
(5, 'full', 'yes', 'no');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `location`
--

CREATE TABLE `location` (
  `Location_id` int(11) NOT NULL,
  `wien` varchar(55) DEFAULT NULL,
  `amstrdam` varchar(55) DEFAULT NULL,
  `berlin` varchar(55) DEFAULT NULL,
  `uk` varchar(55) DEFAULT NULL,
  `stochoolm` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `location`
--

INSERT INTO `location` (`Location_id`, `wien`, `amstrdam`, `berlin`, `uk`, `stochoolm`) VALUES
(1, 'karlsplatz', 'amstrdamcentrum', 'haubtbanhof', 'staet', 'centealr'),
(2, 'karlsplatz', 'amstrdamcentrum', 'haubtbanhof', 'staet', 'centealr'),
(3, 'karlsplatz', 'amstrdamcentrum', 'haubtbanhof', 'staet', 'centealr'),
(4, 'karlsplatz', 'amstrdamcentrum', 'haubtbanhof', 'staet', 'centealr'),
(5, 'karlsplatz', 'amstrdamcentrum', 'haubtbanhof', 'staet', 'centealr');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `name`
--

CREATE TABLE `name` (
  `name_id` int(11) NOT NULL,
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `name`
--

INSERT INTO `name` (`name_id`, `first_name`, `last_name`) VALUES
(1, 'adnan', 'alazaat'),
(2, 'ghath', 'sreii'),
(3, 'fisal', 'ibraheme'),
(4, 'sapri', 'so'),
(5, 'ahmed', 'arkkan');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `prices`
--

CREATE TABLE `prices` (
  `prices_id` int(11) NOT NULL,
  `euro` int(11) DEFAULT NULL,
  `Dollars` int(11) DEFAULT NULL,
  `Swedish_Krone` int(11) DEFAULT NULL,
  `pound` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `prices`
--

INSERT INTO `prices` (`prices_id`, `euro`, `Dollars`, `Swedish_Krone`, `pound`) VALUES
(1, 100, 110, 1100, 90),
(2, 200, 220, 2200, 180),
(3, 300, 330, 3300, 280),
(4, 400, 440, 4400, 380),
(5, 500, 550, 5500, 480),
(6, 600, 660, 6600, 580);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `receipt`
--

CREATE TABLE `receipt` (
  `receipt_id` int(11) NOT NULL,
  `fk_company_id` int(11) DEFAULT NULL,
  `Start_delivery` date DEFAULT NULL,
  `End_of_delivery` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `receipt`
--

INSERT INTO `receipt` (`receipt_id`, `fk_company_id`, `Start_delivery`, `End_of_delivery`) VALUES
(1, 1, '2018-01-01', '2018-01-02'),
(2, 2, '2018-02-01', '2018-01-03'),
(3, 3, '2018-02-02', '2018-01-04'),
(4, 4, '2018-02-03', '2018-01-05'),
(5, 5, '2018-02-04', '2018-01-06');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `register`
--

CREATE TABLE `register` (
  `Register_id` int(11) NOT NULL,
  `fk_company_online_id` int(11) DEFAULT NULL,
  `fk_Applications_id` int(11) DEFAULT NULL,
  `fk_sign_up_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `register`
--

INSERT INTO `register` (`Register_id`, `fk_company_online_id`, `fk_Applications_id`, `fk_sign_up_id`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `services`
--

CREATE TABLE `services` (
  `Services_id` int(11) NOT NULL,
  `Cleaning` varchar(55) DEFAULT NULL,
  `repair` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `services`
--

INSERT INTO `services` (`Services_id`, `Cleaning`, `repair`) VALUES
(1, 'comprehensive', 'partial'),
(2, 'comprehensive', 'comprehensive'),
(3, 'partial', 'partial'),
(4, 'comprehensive', 'comprehensive'),
(5, 'comprehensive', 'partial');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sign_up`
--

CREATE TABLE `sign_up` (
  `sign_up_id` int(11) NOT NULL,
  `email` varchar(55) DEFAULT NULL,
  `password` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `sign_up`
--

INSERT INTO `sign_up` (`sign_up_id`, `email`, `password`) VALUES
(1, 'adad@gmail.com', 1233414),
(2, 'sdsd@gmail.com', 11111),
(3, 'wewe@gmail.com', 22222),
(4, 'rtrt@gmail.com', 33333),
(5, 'qwqw@gmail.com', 44444);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`Applications_id`);

--
-- Indizes für die Tabelle `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`cars_id`);

--
-- Indizes für die Tabelle `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`),
  ADD KEY `fk_Applications_id` (`fk_Applications_id`),
  ADD KEY `fk_Insurance_id` (`fk_Insurance_id`),
  ADD KEY `fk_Register_id` (`fk_Register_id`);

--
-- Indizes für die Tabelle `company_online`
--
ALTER TABLE `company_online`
  ADD PRIMARY KEY (`company_online_id`),
  ADD KEY `fk_Customer_id` (`fk_Customer_id`),
  ADD KEY `fk_Services_id` (`fk_Services_id`),
  ADD KEY `fk_prices_id` (`fk_prices_id`),
  ADD KEY `fk_Connection_id` (`fk_Connection_id`),
  ADD KEY `fk_Location_id` (`fk_Location_id`),
  ADD KEY `fk_cars_id` (`fk_cars_id`);

--
-- Indizes für die Tabelle `connectionz`
--
ALTER TABLE `connectionz`
  ADD PRIMARY KEY (`Connection_id`);

--
-- Indizes für die Tabelle `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `fk_name_id` (`fk_name_id`);

--
-- Indizes für die Tabelle `insurance`
--
ALTER TABLE `insurance`
  ADD PRIMARY KEY (`Insurance_id`);

--
-- Indizes für die Tabelle `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`Location_id`);

--
-- Indizes für die Tabelle `name`
--
ALTER TABLE `name`
  ADD PRIMARY KEY (`name_id`);

--
-- Indizes für die Tabelle `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`prices_id`);

--
-- Indizes für die Tabelle `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`receipt_id`),
  ADD KEY `fk_company_id` (`fk_company_id`);

--
-- Indizes für die Tabelle `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`Register_id`),
  ADD KEY `fk_company_online_id` (`fk_company_online_id`),
  ADD KEY `fk_Applications_id` (`fk_Applications_id`),
  ADD KEY `fk_sign_up_id` (`fk_sign_up_id`);

--
-- Indizes für die Tabelle `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`Services_id`);

--
-- Indizes für die Tabelle `sign_up`
--
ALTER TABLE `sign_up`
  ADD PRIMARY KEY (`sign_up_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `applications`
--
ALTER TABLE `applications`
  MODIFY `Applications_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `cars`
--
ALTER TABLE `cars`
  MODIFY `cars_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `company_online`
--
ALTER TABLE `company_online`
  MODIFY `company_online_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `connectionz`
--
ALTER TABLE `connectionz`
  MODIFY `Connection_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `insurance`
--
ALTER TABLE `insurance`
  MODIFY `Insurance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `location`
--
ALTER TABLE `location`
  MODIFY `Location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `name`
--
ALTER TABLE `name`
  MODIFY `name_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `prices`
--
ALTER TABLE `prices`
  MODIFY `prices_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `receipt`
--
ALTER TABLE `receipt`
  MODIFY `receipt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `register`
--
ALTER TABLE `register`
  MODIFY `Register_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `services`
--
ALTER TABLE `services`
  MODIFY `Services_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `sign_up`
--
ALTER TABLE `sign_up`
  MODIFY `sign_up_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_ibfk_1` FOREIGN KEY (`fk_Applications_id`) REFERENCES `applications` (`Applications_id`),
  ADD CONSTRAINT `company_ibfk_2` FOREIGN KEY (`fk_Insurance_id`) REFERENCES `insurance` (`Insurance_id`),
  ADD CONSTRAINT `company_ibfk_3` FOREIGN KEY (`fk_Register_id`) REFERENCES `company` (`company_id`);

--
-- Constraints der Tabelle `company_online`
--
ALTER TABLE `company_online`
  ADD CONSTRAINT `company_online_ibfk_1` FOREIGN KEY (`fk_Customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `company_online_ibfk_2` FOREIGN KEY (`fk_Services_id`) REFERENCES `services` (`Services_id`),
  ADD CONSTRAINT `company_online_ibfk_3` FOREIGN KEY (`fk_prices_id`) REFERENCES `prices` (`prices_id`),
  ADD CONSTRAINT `company_online_ibfk_4` FOREIGN KEY (`fk_Connection_id`) REFERENCES `connectionz` (`Connection_id`),
  ADD CONSTRAINT `company_online_ibfk_5` FOREIGN KEY (`fk_Location_id`) REFERENCES `location` (`Location_id`),
  ADD CONSTRAINT `company_online_ibfk_6` FOREIGN KEY (`fk_cars_id`) REFERENCES `cars` (`cars_id`);

--
-- Constraints der Tabelle `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`fk_name_id`) REFERENCES `name` (`name_id`);

--
-- Constraints der Tabelle `receipt`
--
ALTER TABLE `receipt`
  ADD CONSTRAINT `receipt_ibfk_1` FOREIGN KEY (`fk_company_id`) REFERENCES `company` (`company_id`);

--
-- Constraints der Tabelle `register`
--
ALTER TABLE `register`
  ADD CONSTRAINT `register_ibfk_1` FOREIGN KEY (`fk_company_online_id`) REFERENCES `company_online` (`company_online_id`),
  ADD CONSTRAINT `register_ibfk_2` FOREIGN KEY (`fk_Applications_id`) REFERENCES `applications` (`Applications_id`),
  ADD CONSTRAINT `register_ibfk_3` FOREIGN KEY (`fk_sign_up_id`) REFERENCES `sign_up` (`sign_up_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
