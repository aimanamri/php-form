-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2022 at 08:58 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `gender` enum('m','f','0') NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `number` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `firstName`, `lastName`, `gender`, `email`, `password`, `number`) VALUES
(1, 'Jackie', 'Zohir', 'm', 'foo@email.com', 'qwert001', 123456789),
(2, 'Azdan', 'Jaiya', 'f', 'goo@email.com', 'asdfg0010', 9876543210),
(4, 'Kaka', 'Donmai', 'm', 'xoo@gmail.com', 'mamamia', 164168481351),
(5, 'Mana', 'Goto', 'f', 'too@gmail.com', 'kikilala', 164168481351),
(6, 'Zakila', 'Gasti', 'f', 'qwe@email.com', 'ajkgiuyg82q63', 4245124681210),
(7, 'Cai', 'Kam', 'f', 'joo@emai.com', 'giuacgbkgiegvk1', 5112010002),
(8, 'Banke', 'Wuiel', 'f', 'asd@emai.com', '$2y$10$6t9N8pW487lTo', 531651045205),
(9, 'stgf34', 'swgrr', 'f', 'gsgsgs@ad.vc', '$2y$10$Mt2j4qFnE50IB', 634425762457),
(10, 'XAvier', 'ZAcki', 'f', 'admin@hawau.co.jp', '$2y$10$FSnUdws9Tv2PL', 32546245677),
(12, 'Valak', 'Molla', 'm', 'jameswi@nama.com', '$2y$10$5fAZ6koFNfYnK', 4642564),
(13, 'Bonnia', 'Adidas', '', 'yuuja@yahoo.com', '$2y$10$NsKFVxNFVztbD', 215402156210),
(14, 'Kucing', 'Mamau', 'm', 'mamau@jaja.com', '$2y$10$o7PKKHX.B1A8o', 52347658723458),
(15, 'Fada', 'Joki', 'f', 'gba@nintendo.co.jp', '$2y$10$oUd4MQCQ1INTd', 87584724),
(16, 'Yepi', 'Jojo', '', 'addfa@yahoo.co', '$2y$10$JmtAyUBQB7485', 6423564374356),
(17, 'Gasa', 'Hanko', 'f', 'agy@da.com', '$2y$10$YzOXmTBmtVHnb', 85513485345643),
(18, 'Bob', 'Chan', 'm', 'bob@tehbuilder.co.uk', '$2y$10$c1YHpnKNhzg0k', 8543875823745),
(19, 'Gokan', 'Miru', '', 'gol@han.com', '$2y$10$Kv.t2RRWcrOQk', 2573487562);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
