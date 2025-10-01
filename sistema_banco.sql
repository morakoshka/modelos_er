-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2025 at 06:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistema_banco`
--

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `DocidCli` int(10) NOT NULL,
  `NumCli` int(15) NOT NULL,
  `ApeCli` varchar(50) NOT NULL,
  `CiudCli` varchar(50) NOT NULL,
  `CeluCli` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`DocidCli`, `NumCli`, `ApeCli`, `CiudCli`, `CeluCli`) VALUES
(12, 1, 'Santiago Vasquez', 'Veracruz', 6547474),
(13, 2, 'Sanjuan Martinez', 'Tijuana', 354752597),
(14, 3, 'Lopez Lita', 'Aguascalientes', 9834654),
(15, 4, 'Lopez Reyes', 'Huajuapan', 1231512);

-- --------------------------------------------------------

--
-- Table structure for table `cuentas`
--

CREATE TABLE `cuentas` (
  `NumCta` int(10) NOT NULL,
  `SaldoCta` int(15) NOT NULL,
  `DocidCli01` int(15) NOT NULL,
  `DirCli` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `cuentas`
--

INSERT INTO `cuentas` (`NumCta`, `SaldoCta`, `DocidCli01`, `DirCli`) VALUES
(4630, 194345, 12, 'Nayarid 452'),
(12342, 1243, 14, 'Juarez 3048'),
(12435, 231, 15, 'Melchor 3910'),
(76534, 1000, 13, 'Saturno 7592');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`DocidCli`);

--
-- Indexes for table `cuentas`
--
ALTER TABLE `cuentas`
  ADD PRIMARY KEY (`NumCta`),
  ADD KEY `DocidCli01` (`DocidCli01`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cuentas`
--
ALTER TABLE `cuentas`
  ADD CONSTRAINT `cuentas_ibfk_1` FOREIGN KEY (`DocidCli01`) REFERENCES `clientes` (`DocidCli`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
