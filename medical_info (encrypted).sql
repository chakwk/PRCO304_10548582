-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2020 at 09:59 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medical_info`
--

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE `diagnosis` (
  `id` int(255) NOT NULL,
  `sensordataid` int(255) NOT NULL,
  `result` text NOT NULL,
  `doctor` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`id`, `sensordataid`, `result`, `doctor`) VALUES
(3, 2, '~$“ÞD%tÉ‚ORª5d\r)¶Ñ,=82pÞÑ', ' ï¶5Ä1šy3ö—¦è)½g–kµB§=áŠAAU');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(255) NOT NULL,
  `givenname` varchar(65) NOT NULL,
  `surname` varchar(65) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `birthday` date NOT NULL,
  `streetaddress` text NOT NULL,
  `zipcode` int(255) NOT NULL,
  `city` varchar(65) NOT NULL,
  `country` varchar(65) NOT NULL,
  `bloodtype` varchar(10) NOT NULL,
  `nationalid` varchar(20) NOT NULL,
  `weight` int(255) NOT NULL,
  `height` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `givenname`, `surname`, `gender`, `birthday`, `streetaddress`, `zipcode`, `city`, `country`, `bloodtype`, `nationalid`, `weight`, `height`) VALUES
(4, 'Ë\'kgtøl)ÿ?Ž\0Btk', '‚”fïà‹Ù}Vä]BYèc', 'Í¥å3™&×òîÁq', '1998-12-03', 'ogrjz–ÿ_^z¸£ÁËš:˜(I>(ÔÂ’Q7ð’', 3456, '{µôò_„³Kî8ÄèÐé', 'ïªÐP$ƒÉÈô¬«\'â', '‘ü?\0;ñøj–', 'Ÿ)µâ¢Ô·èÁc’ÒòöR', 65, 7);

-- --------------------------------------------------------

--
-- Table structure for table `sensordata`
--

CREATE TABLE `sensordata` (
  `id` int(255) NOT NULL,
  `patientid` int(255) NOT NULL,
  `file` text NOT NULL,
  `doctor` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sensordata`
--

INSERT INTO `sensordata` (`id`, `patientid`, `file`, `doctor`) VALUES
(3, 1, '®î±ÉU\\È%fânÍNhû)½g–kµB§=áŠAAU', ' ï¶5Ä1šy3ö—¦è)½g–kµB§=áŠAAU'),
(4, 2, 'i¬^€3Ý’±Î0ÏyÛ\0', '&­ÃfÙ†:Áñ«¤{+');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sensordata`
--
ALTER TABLE `sensordata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diagnosis`
--
ALTER TABLE `diagnosis`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sensordata`
--
ALTER TABLE `sensordata`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
