-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 26, 2019 at 09:13 AM
-- Server version: 5.7.27-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mypython`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcat`
--

CREATE TABLE `addcat` (
  `catid` int(11) NOT NULL,
  `catnm` varchar(100) NOT NULL,
  `caticonnm` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addcat`
--

INSERT INTO `addcat` (`catid`, `catnm`, `caticonnm`) VALUES
(1, 'Vehicles', 'v.png'),
(2, 'Electronics', 'e.png'),
(3, 'Furniture', 'f.jpeg'),
(4, 'Pets', 'p.png');

-- --------------------------------------------------------

--
-- Table structure for table `addsubcat`
--

CREATE TABLE `addsubcat` (
  `subcatid` int(11) NOT NULL,
  `catnm` varchar(100) NOT NULL,
  `subcatnm` varchar(100) NOT NULL,
  `subcaticon` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addsubcat`
--

INSERT INTO `addsubcat` (`subcatid`, `catnm`, `subcatnm`, `subcaticon`) VALUES
(1, 'Vehicles', 'Bike', 'bike.png'),
(2, 'Vehicles', 'Cars', 'car.png'),
(3, 'Pets', 'Dogs', 'dog.png'),
(4, 'Pets', 'Cats', 'cat.png');

-- --------------------------------------------------------

--
-- Table structure for table `bidding`
--

CREATE TABLE `bidding` (
  `bid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `bid_uid` varchar(100) NOT NULL,
  `bprice` int(11) NOT NULL,
  `dt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidding`
--

INSERT INTO `bidding` (`bid`, `pid`, `bid_uid`, `bprice`, `dt`) VALUES
(1, 3, 'adawadkarvilekh@gmail.com', 600, 'Thu Jul 18 07:29:48 2019'),
(2, 3, 'adawadkarvilekh@gmail.com', 650, 'Thu Jul 18 07:30:33 2019');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `rno` int(11) NOT NULL,
  `nm` varchar(100) NOT NULL,
  `phy` int(11) NOT NULL,
  `che` int(11) NOT NULL,
  `mat` int(11) NOT NULL,
  `totalmks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`rno`, `nm`, `phy`, `che`, `mat`, `totalmks`) VALUES
(1, 'chiku', 77, 66, 55, 0),
(2, 'piku', 66, 55, 44, 0),
(3, 'miku', 66, 55, 44, 0),
(1000, 'myname', 77, 66, 77, 0),
(1003, 'myname', 77, 66, 77, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `txnid` int(11) NOT NULL,
  `uid` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `ptime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`txnid`, `uid`, `pid`, `price`, `ptime`) VALUES
(1, 'adawadkarvilekh@gmail.com', 1, 1000, '16/07/2019,07:30:28,Tuesday');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `cnm` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `picon` varchar(100) NOT NULL,
  `uid` varchar(100) NOT NULL,
  `bstatus` int(11) NOT NULL,
  `ptime` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `title`, `cnm`, `price`, `description`, `mobile`, `picon`, `uid`, `bstatus`, `ptime`, `status`) VALUES
(1, 'want to sell dog', 'Dogs', 1000, 'good breed dog', '111111111', 'p_ydEJJip.png', 'adawadkarvilekh@gmail.com', 0, '', 0),
(3, 'want to sell cat', 'Cats', 500, 'sell a cat', '111111111', 'cat_y3SGE1Z.png', 'phpbatch34@gmail.com', 1, '1563348961.0952044', 0);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `regid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `city` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `role` varchar(10) NOT NULL,
  `status` int(11) NOT NULL,
  `dt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`regid`, `name`, `email`, `password`, `address`, `mobile`, `city`, `gender`, `role`, `status`, `dt`) VALUES
(1, 'vilekh', 'adawadkarvilekh@gmail.com', '123', 'indore mp', '1111111111', 'Indore', 'male', 'user', 1, 'Wed Jul 10 06:53:14 2019'),
(3, 'admin', 'admin@gmail.com', '123', 'indore', '111111', 'indore', 'male', 'admin', 1, ''),
(4, 'check', 'phpbatch34@gmail.com', '123', 'ujjain', '111111111', 'Ujjain', 'male', 'user', 1, 'Wed Jul 17 06:32:05 2019'),
(5, 'Ishir', 'jainishir@gmail.com', '123', 'indore mp', '111111111', 'Ujjain', 'male', 'user', 0, 'Wed Jul 17 06:40:15 2019');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcat`
--
ALTER TABLE `addcat`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `catnm` (`catnm`);

--
-- Indexes for table `addsubcat`
--
ALTER TABLE `addsubcat`
  ADD PRIMARY KEY (`subcatid`),
  ADD UNIQUE KEY `subcatnm` (`subcatnm`);

--
-- Indexes for table `bidding`
--
ALTER TABLE `bidding`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`txnid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`regid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcat`
--
ALTER TABLE `addcat`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `addsubcat`
--
ALTER TABLE `addsubcat`
  MODIFY `subcatid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `bidding`
--
ALTER TABLE `bidding`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `rno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1004;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `txnid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `regid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
