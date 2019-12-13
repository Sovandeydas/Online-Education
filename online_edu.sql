-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2017 at 12:54 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_edu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(20) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(10) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `squestion` varchar(40) NOT NULL,
  `ans` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `fname`, `mname`, `lname`, `email`, `pwd`, `dob`, `gender`, `squestion`, `ans`) VALUES
(2, 'Sanjay ', 'Kumar ', 'Jana', 'admin@gmail.com', '12345', '25/06/1989', 'Male', 'what is your pets name', 'pluto');

-- --------------------------------------------------------

--
-- Table structure for table `approve`
--

CREATE TABLE `approve` (
  `appid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `status` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `approve`
--

INSERT INTO `approve` (`appid`, `did`, `status`) VALUES
(1, 8, 'Y'),
(2, 12, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `did` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `durl` varchar(200) NOT NULL,
  `uid` int(11) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `filename` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`did`, `tid`, `durl`, `uid`, `keyword`, `pass`, `filename`) VALUES
(8, 24, 'documents/935655mycv.pdf', 8, 'PHP', '', 'mycv.pdf'),
(11, 24, 'documents/739420935655mycv.pdf', 9, 'Data Structure', '', '935655mycv.pdf'),
(12, 23, 'documents/744737935655mycv.pdf', 9, 'ddd', '', '935655mycv.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `down_id` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `nofd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`down_id`, `did`, `nofd`) VALUES
(1, 8, 7);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `tid` int(11) NOT NULL,
  `tname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`tid`, `tname`) VALUES
(22, 'CSE'),
(23, 'MCA'),
(24, 'MSC Computer Science');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `fname` varchar(15) NOT NULL,
  `mname` varchar(10) NOT NULL,
  `lname` varchar(15) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pwd` varchar(15) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `squestion` varchar(100) NOT NULL,
  `ans` varchar(20) NOT NULL,
  `ph` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `fname`, `mname`, `lname`, `email`, `pwd`, `dob`, `gender`, `squestion`, `ans`, `ph`) VALUES
(5, 'Saumitra', '', 'Das', 'sau@gmail.com', '654321', '06/08/2014', 'Male', 'WhatÂ´s your pets name', 'dd', '9876543210'),
(6, 'Suman', '', 'Mondal', 'suman@gmail.com', '654321', '05/01/1995', 'Male', 'WhatÂ´s your favourite book', 'kkk', '9876543210'),
(7, 'Deepak', '', 'Khanna', 'deepan@gmail.com', '654321', '04/14/1992', 'Male', 'WhatÂ´s your favourite book', 'PHP', '9876543210'),
(8, 'Saumitra', '', 'Das', 'sau@gmail.com', '123456', '07/09/1996', 'Male', 'WhatÂ´s your favourite book', 'cook', '9876543210'),
(9, 'sanjay', 'kumar', 'jana', 'skj@gmail.com', 'sanjay', '08/15/2017', '', 'WhatÂ´s your favourite food', 'appale', '8945933667');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `approve`
--
ALTER TABLE `approve`
  ADD PRIMARY KEY (`appid`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`down_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `approve`
--
ALTER TABLE `approve`
  MODIFY `appid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `down_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
