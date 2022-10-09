-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2022 at 06:33 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bk-store`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `bookId` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `author` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `image` text NOT NULL,
  `bookstoreName` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookId`, `title`, `author`, `description`, `category`, `price`, `image`, `bookstoreName`) VALUES
(24, 'Mathematics', 'Douglas James', 'Maths', '7', 500, 'images.jpeg', 'bookstore'),
(25, 'Computer Science', 'Henry Rotich', 'C++ Programming', '9', 200, 'download.jpeg', 'bookstore'),
(30, 'Nature', 'Douglas James', 'Nature', '11', 3000, 'download (2).jpeg', 'admin'),
(31, 'Bible studies', 'Callin Jonathan', 'New testament', '11', 1000, 'download (1).jpeg', 'bookstore');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `categoryId` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryId`, `name`, `description`) VALUES
(7, 'mathematics ', 'Maths'),
(8, 'Business', 'Business'),
(9, 'Computer science', 'computer science'),
(10, 'History', 'history of the world'),
(11, 'Geography', 'Geography');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
  `friendsId` int(11) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `contact` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`friendsId`, `fullname`, `contact`, `address`, `email`, `username`) VALUES
(1, '', 713653456, 'Nyemmal17', 'jackmynesa@gmail.com', ''),
(2, '', 713653456, 'Nyemmal17', 'jackmynesa@gmail.com', ''),
(4, 'Hansel Binette', 713653456, '12345', 'nyemmal17@gmail.com', 'joy'),
(7, 'James', 12345, '977', 'jamo@gmail.com', 'customer'),
(9, 'Mercy Joy', 87889564, '123KTL', 'mercyjoyline@gmail.com', 'bookstore');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `orderId` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  `bookstoreName` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `username`, `price`, `quantity`, `bookId`, `bookstoreName`) VALUES
(31, 'customer', 500, 1, 24, 'bookstore');

-- --------------------------------------------------------

--
-- Table structure for table `paidorders`
--

CREATE TABLE IF NOT EXISTS `paidorders` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `bookId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `changeprice` int(11) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paidorders`
--

INSERT INTO `paidorders` (`id`, `username`, `bookId`, `quantity`, `date`, `price`, `changeprice`, `status`) VALUES
(20, 'customer', 24, 1, '2022-09-27 01:04:12pm', 500, 450, 'accepted'),
(21, 'customer', 25, 1, '2022-09-27 01:04:12pm', 200, 250, 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userId` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `contact` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `user_type` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `name`, `username`, `contact`, `email`, `user_type`, `address`, `password`, `status`) VALUES
(17, 'admin', 'admin', 12345, 'admin@mail.com', 'admin', '977', '827ccb0eea8a706c4c34a16891f84e7b', 'ban'),
(19, 'customer', 'customer', 87462545, 'customer@gmail.com', 'customer', '978', '827ccb0eea8a706c4c34a16891f84e7b', 'active'),
(20, 'bookstore', 'bookstore', 87462545, 'bookstore@gmail.com', 'bookstore', '947', '827ccb0eea8a706c4c34a16891f84e7b', 'active'),
(21, 'mercy', 'mercy', 7234565, 'mercy@mail.com', 'customer', 'hey', '827ccb0eea8a706c4c34a16891f84e7b', 'ban');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`friendsId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `paidorders`
--
ALTER TABLE `paidorders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `friendsId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `paidorders`
--
ALTER TABLE `paidorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
