-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307p
-- Generation Time: May 25, 2025 at 10:42 PM
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
-- Database: `laundry_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `service` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `full_name`, `phone`, `email`, `service`, `date`, `time`) VALUES
(1, 'John Doe', 1234567890, 'johndoe@example.com', 'Wash & Fold', '2025-03-20', '10:00:00'),
(2, 'dawdawdaw', 9270758142, 'tophervaliente3@gmail.com', 'wash-fold', '2025-03-17', '12:05:00'),
(3, 'Daniel Valiente', 9166116233, 'tophervaliente3@gmail.com', 'dry-cleaning', '2025-03-17', '12:09:00'),
(4, 'dave', 93412983, 'dave@gmail.com', 'wash-fold', '2025-03-17', '12:11:00'),
(5, 'dadajlwbndhjawb', 312312312, 'daniel@jvmjkn.com', 'wash-fold', '2025-03-17', '14:26:00'),
(6, 'dannirl', 989898989, 'daniel09@gmai.com', 'wash-fold', '2025-03-17', '13:33:00'),
(7, 'dawdawd', 9166116233, 'tophervaldaw@yahoo.com', 'wash-fold', '2025-05-26', '04:10:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_phone` (`phone`),
  ADD KEY `idx_service` (`service`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
