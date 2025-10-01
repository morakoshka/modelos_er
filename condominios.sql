-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2025 at 05:11 AM
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
-- Database: `condominios`
--

-- --------------------------------------------------------

--
-- Table structure for table `depto`
--

CREATE TABLE `depto` (
  `codigo` int(10) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `Director` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `depto`
--

INSERT INTO `depto` (`codigo`, `nombre`, `Director`) VALUES
(23890, 'Farfeith', 'Mark'),
(390359, 'Martinez', 'Gabriela'),
(543565, 'Albedo', 'Federico'),
(849309, 'Kennedy', 'Ken'),
(3525543, 'Diaz', 'Bruno');

-- --------------------------------------------------------

--
-- Table structure for table `empleados`
--

CREATE TABLE `empleados` (
  `Curp` int(10) NOT NULL,
  `NombreE` varchar(45) NOT NULL,
  `Cat` varchar(45) NOT NULL,
  `Ded` varchar(45) NOT NULL,
  `Codigo1` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `empleados`
--

INSERT INTO `empleados` (`Curp`, `NombreE`, `Cat`, `Ded`, `Codigo1`) VALUES
(485934, 'Marcela', 'Ayudante', 'General', 3525543),
(12142134, 'Maanuel', 'Operador', 'Planta baja', 849309),
(29835283, 'Jorge', 'Gerente', 'Servicio al cliente', 23890),
(35234525, 'Marlo', 'Mantenimiento', 'General', 390359),
(325326243, 'Marcos', 'Ingeniero', 'Indutstrial', 543565);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `depto`
--
ALTER TABLE `depto`
  ADD PRIMARY KEY (`codigo`);

--
-- Indexes for table `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`Curp`),
  ADD KEY `Codigo1` (`Codigo1`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`Codigo1`) REFERENCES `depto` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
