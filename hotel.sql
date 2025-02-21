-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2022 at 03:41 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `phoneno` int(10) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  `approval` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `fullname`, `phoneno`, `email`, `cdate`, `approval`) VALUES
(7, 'Bhavin Vagh', 2147483647, 'bhavin@gmail.com', '2022-09-15', 'Allowed'),
(12, 'Harsh Panchotiya', 2147483647, 'harsh@gmail.com', '2022-09-15', 'Allowed'),
(13, 'Axit Vasani', 2147483647, 'axit@gmail.com', '2022-09-15', 'Allowed'),
(14, 'Amit Vadodariya', 2147483647, 'amit@gmail.com', '2022-09-15', 'Allowed'),
(15, 'Abhi Niranjani', 2147483647, 'abhi@gmail.com', '2022-09-15', 'Allowed'),
(16, 'Bhavin k Vagh', 2147483647, 'bhavin@gmail.com', '2022-09-30', 'Not Allowed');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(10) UNSIGNED NOT NULL,
  `usname` varchar(30) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `usname`, `pass`) VALUES
(1, 'Admin', '1234'),
(2, 'Prasath', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `newsletterlog`
--

CREATE TABLE `newsletterlog` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(52) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `news` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletterlog`
--

INSERT INTO `newsletterlog` (`id`, `title`, `subject`, `news`) VALUES
(1, 'Welcome our hotel', 'Booking of rom', 'Your room is confirm'),
(2, 'Welcome our hotel', 'Booking of rom', 'We are offering 40% discount for this festival');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) DEFAULT NULL,
  `title` varchar(5) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `troom` varchar(30) DEFAULT NULL,
  `tbed` varchar(30) DEFAULT NULL,
  `nroom` int(11) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `ttot` double(8,2) DEFAULT NULL,
  `fintot` double(8,2) DEFAULT NULL,
  `mepr` double(8,2) DEFAULT NULL,
  `meal` varchar(30) DEFAULT NULL,
  `btot` double(8,2) DEFAULT NULL,
  `noofdays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `title`, `fname`, `lname`, `troom`, `tbed`, `nroom`, `cin`, `cout`, `ttot`, `fintot`, `mepr`, `meal`, `btot`, `noofdays`) VALUES
(2, 'Mr.', 'ABHI', 'NIRANJANI', 'Superior Room', 'Double', 1, '2022-09-09', '2022-09-15', 1920.00, 2112.00, 153.60, 'Full Board', 38.40, 6),
(3, 'Mr.', 'yash', 'chavda', 'Single Room', 'Single', 1, '2022-10-01', '2022-10-10', 1350.00, 1404.00, 40.50, 'Half Board', 13.50, 9),
(4, 'Mr.', 'Bhavin', 'Vagh', 'Superior Room', 'Single', 1, '2022-09-15', '2022-09-19', 1280.00, 1344.00, 51.20, 'Full Board', 12.80, 4),
(5, 'Mr.', 'Harsh', 'Panchotiya', 'Superior Room', 'Single', 1, '2022-09-19', '2022-09-25', 1920.00, 2016.00, 76.80, 'Full Board', 19.20, 6),
(6, 'Mr.', 'Axit', 'Vasani', 'Single Room', 'Single', 1, '2022-09-17', '2022-09-19', 300.00, 312.00, 9.00, 'Half Board', 3.00, 2);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(15) DEFAULT NULL,
  `bedding` varchar(10) DEFAULT NULL,
  `place` varchar(10) DEFAULT NULL,
  `cusid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `type`, `bedding`, `place`, `cusid`) VALUES
(1, 'Superior Room', 'Single', 'NotFree', 5),
(2, 'Superior Room', 'Double', 'NotFree', 2),
(3, 'Superior Room', 'Triple', 'Free', NULL),
(4, 'Single Room', 'Quad', 'Free', NULL),
(5, 'Superior Room', 'Quad', 'Free', NULL),
(6, 'Deluxe Room', 'Single', 'Free', NULL),
(7, 'Deluxe Room', 'Double', 'Free', NULL),
(8, 'Deluxe Room', 'Triple', 'Free', NULL),
(9, 'Deluxe Room', 'Quad', 'Free', NULL),
(10, 'Guest House', 'Single', 'Free', NULL),
(11, 'Guest House', 'Double', 'Free', NULL),
(12, 'Guest House', 'Quad', 'Free', NULL),
(13, 'Single Room', 'Single', 'NotFree', 6),
(14, 'Single Room', 'Double', 'Free', NULL),
(15, 'Single Room', 'Triple', 'Free', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roombook`
--

CREATE TABLE `roombook` (
  `id` int(10) UNSIGNED NOT NULL,
  `Title` varchar(5) DEFAULT NULL,
  `FName` text DEFAULT NULL,
  `LName` text DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `National` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `Phone` text DEFAULT NULL,
  `TRoom` varchar(20) DEFAULT NULL,
  `Bed` varchar(10) DEFAULT NULL,
  `NRoom` varchar(2) DEFAULT NULL,
  `Meal` varchar(15) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `stat` varchar(15) DEFAULT NULL,
  `nodays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roombook`
--

INSERT INTO `roombook` (`id`, `Title`, `FName`, `LName`, `Email`, `National`, `Country`, `Phone`, `TRoom`, `Bed`, `NRoom`, `Meal`, `cin`, `cout`, `stat`, `nodays`) VALUES
(2, 'Mr.', 'ABHI', 'NIRANJANI', 'ABHI@GMAIL.COM', 'Sri Lankan', 'India', '3216540321', 'Superior Room', 'Double', '1', 'Full Board', '2022-09-09', '2022-09-15', 'Conform', 6),
(3, 'Mr.', 'yash', 'chavda', 'yash@gmail.com', 'Sri Lankan', 'India', '9874563580', 'Single Room', 'Single', '1', 'Half Board', '2022-10-01', '2022-10-10', 'Conform', 9),
(5, 'Mr.', 'Harsh', 'Panchotiya', 'harsh@gmail.com', 'Sri Lankan', 'India', '7990997136', 'Superior Room', 'Single', '1', 'Full Board', '2022-09-19', '2022-09-25', 'Conform', 6),
(6, 'Mr.', 'Axit', 'Vasani', 'axit@gmail.com', 'Sri Lankan', 'India', '9510768881', 'Single Room', 'Single', '1', 'Half Board', '2022-09-17', '2022-09-19', 'Conform', 2),
(7, 'Mr.', 'Amit', 'Vadodariya', 'amit@gmail.com', 'Sri Lankan', 'India', '9876517459', 'Guest House', 'Single', '1', 'Room only', '2022-09-19', '2022-09-20', 'Not Conform', 1),
(8, 'Mr.', 'Bhavin', 'Vagh', 'bhavin@gmail.com', 'Sri Lankan', 'India', '+919924400954', 'Superior Room', 'Single', '1', 'Full Board', '2022-10-01', '2022-10-05', 'Not Conform', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletterlog`
--
ALTER TABLE `newsletterlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roombook`
--
ALTER TABLE `roombook`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `newsletterlog`
--
ALTER TABLE `newsletterlog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `roombook`
--
ALTER TABLE `roombook`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
