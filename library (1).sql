-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 25, 2016 at 10:28 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `bookName` varchar(255) NOT NULL,
  `authorName` varchar(255) NOT NULL,
  `quantity` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `bookName`, `authorName`, `quantity`) VALUES
(1, 'A Smarter way to learn javascript', 'M Myers', 7),
(4, 'The Art of Electronics 2nd Edition', 'Winfield Hill', 5),
(10, 'Practical Electronics for Inventors', 'Simon Monk', 6),
(11, 'Learning Through Discovery', 'Charles Platt', 13),
(13, 'New Features and Good Practices', 'Josh Lockhart', 2),
(15, 'Engineering Mathematics', 'Christopher C. Tisdell', 8),
(16, 'Essential Engineering Mathematics', 'Michael Batty', 11),
(17, 'Automation and Robotics', 'Dr. Miltiadis A. Boboulos', 4),
(18, 'Control Engineering Problems with Solutions', 'Derek P. Atherton', 5),
(19, 'Electrical Power', 'W. J. R. H. Pooler', 12);

-- --------------------------------------------------------

--
-- Table structure for table `issuedbooks`
--

CREATE TABLE IF NOT EXISTS `issuedbooks` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `studentName` varchar(200) NOT NULL,
  `bookName` varchar(200) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `returnDate` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `issuedbooks`
--

INSERT INTO `issuedbooks` (`id`, `studentName`, `bookName`, `contact`, `returnDate`) VALUES
(41, 'mohsin', 'Electronics: Learning Through Discovery', '03432195645', '10-sep'),
(43, 'Afzal Khan', 'Learning Through Discovery', '03258546523', '10-dec-2016'),
(44, 'Kamran', 'Learning Through Discovery', '03458452214', '21-jan-2017'),
(45, 'Afzal Khan', 'My New Book', '03258546523', '02-dec-16'),
(46, 'abdullah', 'My New Book', '03432195645', '10-sep'),
(47, 'abdullah', 'Practical Electronics for Inventors', '03432195645', '10-sep'),
(48, 'abdullah', 'New Features and Good Practices', '03432195645', '18-nov'),
(49, 'Afzal Khan', 'New Features and Good Practices', '03258546523', '18-nov'),
(50, 'Kamran', 'New Features and Good Practices', '03258546523', '20-jan-2017');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `password` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `password`) VALUES
(1, 'abdullah', '123'),
(2, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `stuName` varchar(255) NOT NULL,
  `stuEmail` varchar(30) NOT NULL,
  `stuPass` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `stuName`, `stuEmail`, `stuPass`) VALUES
(1, 'Mohsin', 'mohsinghani.777@gmail.com', 'mohsin123'),
(3, 'afzal', 'afzal@gmail.com', 'asad'),
(4, 'Kamran', 'kamran@gmail.com', 'kamran123'),
(7, 'Shahnawaz', 'shanawaz@hortnaill.com', 'karachi123'),
(9, 'Arbaz Khan', 'afzal@gmail.com', '789');
