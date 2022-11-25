-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2022 at 11:04 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studio_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bookingId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `seatNo` varchar(5) NOT NULL,
  `bookingStatus` tinyint(1) NOT NULL COMMENT '1-Active,2-Deactive',
  `createdAt` datetime NOT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bookingId`, `userId`, `seatNo`, `bookingStatus`, `createdAt`, `updatedAt`) VALUES
(1, 2, 'S1', 1, '2022-11-25 09:06:07', '2022-11-25 08:51:21'),
(2, 2, 'S2', 1, '2022-11-25 09:06:15', '2022-11-25 08:06:15'),
(3, 3, 'S12', 1, '2022-11-25 09:15:59', '2022-11-25 08:15:59'),
(4, 3, 'S9', 1, '2022-11-25 10:25:31', '2022-11-25 09:25:31'),
(5, 1, 'S19', 2, '2022-11-25 10:40:32', '2022-11-25 09:40:32'),
(6, 2, 'S23', 1, '2022-11-25 10:43:13', '2022-11-25 09:43:13'),
(7, 1, 'S6', 2, '2022-11-25 10:43:45', '2022-11-25 09:43:45');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `userEmail` varchar(100) NOT NULL,
  `userPhone` bigint(15) NOT NULL,
  `userPassword` varchar(255) NOT NULL,
  `userType` tinyint(1) NOT NULL COMMENT '1-Admin,2-User',
  `userStatus` varchar(1) NOT NULL COMMENT '0-Inactive,1-Active,2-Delete',
  `createdAt` datetime NOT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `userName`, `userEmail`, `userPhone`, `userPassword`, `userType`, `userStatus`, `createdAt`, `updatedAt`) VALUES
(1, 'Admin', 'admin@gmail.com', 9876543210, '0e7517141fb53f21ee439b355b5a1d0a', 1, '1', '2022-11-24 17:10:00', '2022-11-24 11:41:50'),
(2, 'Arun', 'arun@gmail.com', 9977553311, 'e10adc3949ba59abbe56e057f20f883e', 2, '1', '2022-11-24 17:10:00', '2022-11-25 05:15:36'),
(3, 'Raja', 'raja@gmail.com', 8866442200, 'e10adc3949ba59abbe56e057f20f883e', 2, '1', '2022-11-24 17:10:00', '2022-11-25 05:15:28'),
(4, 'User One', 'userone@gmail.com', 1234567891, 'e10adc3949ba59abbe56e057f20f883e', 2, '1', '2022-11-24 21:25:07', '2022-11-25 05:14:09'),
(5, 'User Two', 'usertwo@gmail.com', 1234567892, 'e10adc3949ba59abbe56e057f20f883e', 2, '1', '2022-11-24 21:31:09', '2022-11-25 05:14:18'),
(6, 'User Three', 'userthree@gmail.com', 1234567893, 'e10adc3949ba59abbe56e057f20f883e', 2, '1', '2022-11-24 21:32:08', '2022-11-25 05:14:26'),
(10, 'UserFour', 'userfour@gmail.com', 123456789, '25d55ad283aa400af464c76d713c07ad', 2, '1', '2022-11-25 01:10:52', '2022-11-25 05:14:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bookingId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `userEmail_2` (`userEmail`),
  ADD UNIQUE KEY `userPhone_2` (`userPhone`),
  ADD KEY `userEmail` (`userEmail`),
  ADD KEY `userPhone` (`userPhone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
