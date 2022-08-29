-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2022 at 09:38 PM
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
-- Database: `eat24`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(11) NOT NULL,
  `password` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'soma', '123');

-- --------------------------------------------------------

--
-- Table structure for table `brand1`
--

CREATE TABLE `brand1` (
  `brandid` int(10) NOT NULL,
  `brandname` varchar(20) NOT NULL,
  `fssaino` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `logo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand1`
--

INSERT INTO `brand1` (`brandid`, `brandname`, `fssaino`, `address`, `logo`) VALUES
(1, 'wow momo', 'Fcgh', 'kolkata', 'wow.webp'),
(2, 'KFC', 'Fcgh', 'kolkata', 'kfc.webp'),
(3, 'Domino\'s', 'ghjk', 'kolkata', 'domino.webp');

-- --------------------------------------------------------

--
-- Table structure for table `orderr`
--

CREATE TABLE `orderr` (
  `oid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `ammount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderr`
--

INSERT INTO `orderr` (`oid`, `pid`, `uid`, `quantity`, `ammount`) VALUES
(1, 4, 1, 2, 500),
(2, 2, 1, 1, 400);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(10) NOT NULL,
  `brandid` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(200) NOT NULL,
  `quantity` int(10) NOT NULL,
  `type` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `brandid`, `name`, `price`, `quantity`, `type`, `img`) VALUES
(1, 3, 'Pizza', 250, 4, 'VEG', 'pizza.webp'),
(2, 2, 'Burger', 350, 4, 'NONVEG', 'burger.png'),
(3, 1, 'Momos', 250, 4, 'VEG', 'momos.webp'),
(4, 2, 'Chicken', 250, 4, 'NONVEG', 'chicken.webp'),
(5, 1, 'Chaap', 350, 4, 'NONVEG', 'chap.jfif'),
(6, 2, 'Noodle', 250, 4, 'VEG', 'noodle.png'),
(7, 3, 'Biryani', 250, 4, 'NONVEG', 'briyani.webp'),
(8, 1, 'Panner', 250, 4, 'VEG', 'paneer.jfif'),
(9, 1, 'Steamed Momo', 250, 2, 'VEG', 'momo3.jpg'),
(10, 1, 'Soup Momo', 250, 2, 'NONVEG', 'soup-momos.jpg'),
(11, 1, 'Chicken Momo', 250, 2, 'NONVEG', 'chicken-momos.jpg'),
(12, 1, 'Panner Momo', 350, 2, 'VEG', 'cheese-momos.jpg'),
(13, 3, 'Chicken Dominator', 350, 2, 'NONVEG', 'chicken pizza.jpg'),
(14, 3, 'Cheese & Tomato', 250, 2, 'VEG', 'cheese_and_tomato.png'),
(15, 3, 'Veggie Pizza', 250, 2, 'VEG', 'vegpizza.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `mobile`, `address`, `password`) VALUES
(1, 'Soma', 'xyz@hmail.com', '6788967676', 'gh', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand1`
--
ALTER TABLE `brand1`
  ADD PRIMARY KEY (`brandid`);

--
-- Indexes for table `orderr`
--
ALTER TABLE `orderr`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brand1`
--
ALTER TABLE `brand1`
  MODIFY `brandid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orderr`
--
ALTER TABLE `orderr`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
