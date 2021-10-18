-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2021 at 04:22 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(11) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `balance` float NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `time` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `date`, `time`) VALUES
(1, 'Nishant', 'Durvesh', 10000, '2021-10-18', '19:39:13'),
(2, 'FireEmperor', 'Nishant', 15000, '2021-10-18', '19:39:28'),
(3, 'Bhushan', 'Vizzz', 5000, '2021-10-18', '19:39:40'),
(4, 'Vizzz', 'Bhushan', 10000, '2021-10-18', '19:39:59'),
(5, 'Durvesh', 'Bhushan', 5000, '2021-10-18', '19:40:15'),
(6, 'Nishant', 'Durvesh', 1000, '2021-10-18', '19:43:50'),
(7, 'Bhushan', 'Nishant', 10000, '2021-10-18', '19:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Balance` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Name`, `Email`, `Balance`) VALUES
(1, 'Nishant', 'nish@gmail.com', 62800),
(2, 'Bhushan', 'bhubhu@gmail.com', 58990),
(3, 'Vizzz', 'Vizz@gmail.com', 80000),
(4, 'Durvesh', 'durvesh@gmail.com', 76000),
(5, 'FireEmperor', 'fire9@gmail.com', 75000),
(6, 'Cherry', 'cherry9@gmail.com', 95000),
(7, 'Eren', 'eren1@yahoo.com', 25000),
(8, 'Naruto', 'naruto@konoha.com', 40000),
(9, 'Rengoku', 'rengoku@yahoo.com', 55000),
(10, 'Itachi', 'itachi@konoha.com', 63000),
(11, 'hi', 'h1@gmail.com', 1220);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
