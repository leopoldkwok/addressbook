-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: May 28, 2015 at 02:23 PM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `address_book`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
`id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `county` char(30) DEFAULT NULL,
  `postcode` varchar(7) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `master_id`, `date_added`, `date_modified`, `address`, `city`, `county`, `postcode`) VALUES
(1, 1, '2015-05-28 13:13:12', '2015-05-28 13:13:12', '100 Windows Road', 'London', 'Ealing', 'EA112ER'),
(2, 2, '2015-05-28 13:17:25', '2015-05-28 13:17:25', '300 Mountain View', 'London', 'Wandsworth', 'SW185JW');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
`id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `master_id`, `date_added`, `date_modified`, `email`) VALUES
(1, 1, '2015-05-28 13:13:12', '2015-05-28 13:13:12', 'Bill.Gates@outlook.com'),
(2, 2, '2015-05-28 13:17:25', '2015-05-28 13:17:25', 'Steve.Jobs@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `master_name`
--

CREATE TABLE `master_name` (
`id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `f_name` varchar(75) DEFAULT NULL,
  `l_name` varchar(75) DEFAULT NULL,
  `company` varchar(75) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_name`
--

INSERT INTO `master_name` (`id`, `date_added`, `date_modified`, `f_name`, `l_name`, `company`) VALUES
(1, '2015-05-28 13:13:12', '2015-05-28 13:13:12', 'Bill', 'Gates', 'Windows'),
(2, '2015-05-28 13:17:25', '2015-05-28 13:17:25', 'Steve', 'Jobs', 'Apple');

-- --------------------------------------------------------

--
-- Table structure for table `personal_notes`
--

CREATE TABLE `personal_notes` (
`id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `note` text
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_notes`
--

INSERT INTO `personal_notes` (`id`, `master_id`, `date_added`, `date_modified`, `note`) VALUES
(1, 1, '2015-05-28 13:13:12', '2015-05-28 13:13:12', 'Great person'),
(2, 2, '2015-05-28 13:17:25', '2015-05-28 13:17:25', 'Vegan diet');

-- --------------------------------------------------------

--
-- Table structure for table `telephone`
--

CREATE TABLE `telephone` (
`id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `tel_number` varchar(25) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `telephone`
--

INSERT INTO `telephone` (`id`, `master_id`, `date_added`, `date_modified`, `tel_number`) VALUES
(1, 1, '2015-05-28 13:13:12', '2015-05-28 13:13:12', '02087654545'),
(2, 2, '2015-05-28 13:17:25', '2015-05-28 13:17:25', '02078654534');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_name`
--
ALTER TABLE `master_name`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_notes`
--
ALTER TABLE `personal_notes`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `master_id` (`master_id`);

--
-- Indexes for table `telephone`
--
ALTER TABLE `telephone`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `master_name`
--
ALTER TABLE `master_name`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `personal_notes`
--
ALTER TABLE `personal_notes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `telephone`
--
ALTER TABLE `telephone`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;