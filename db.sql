-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 24, 2019 at 04:15 AM
-- Server version: 5.7.23
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `Car Rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `lic_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `password`, `phone`, `dob`, `lic_no`) VALUES
(17, 'admin', 'admin@gmail.com', 'cd99021cbff663ee362145f12fa507c0130f793f5e271ce8ca08fe12ce0a46c0', '9876543210', '1994-03-01', '98765432'),
(18, 'user1', 'user1@gmail.com', '54b16d5c1f7e0f2fb0ad69beb231e7f1e222049df357b96132c61cf1987784bb', '1234567890', '1984-04-03', '12323421');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`,`lic_no`,`phone`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
