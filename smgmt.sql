-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2018 at 09:25 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smgmt`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `student_details` (IN `id` INT, OUT `fullName` VARCHAR(20))  BEGIN
  select first_name into fullName from student_details where id =id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `student_name` (IN `id` INT, OUT `fullName` VARCHAR(20))  BEGIN
  select first_name into fullName from student_details where id =1;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `student_q` (IN `id` INT, OUT `fullName` VARCHAR(20))  BEGIN
  select student_details.first_name into fullName from student_details where student_details.id=1;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `academy_year`
--

CREATE TABLE `academy_year` (
  `id` int(11) NOT NULL,
  `year` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academy_year`
--

INSERT INTO `academy_year` (`id`, `year`, `status`) VALUES
(1, '2015-2016', 0),
(2, '2016-2017', 0),
(3, '2017-2018', 0);

-- --------------------------------------------------------

--
-- Table structure for table `access_control_master`
--

CREATE TABLE `access_control_master` (
  `id` int(11) NOT NULL,
  `user_roll_id` int(11) NOT NULL,
  `dashboard` int(11) DEFAULT NULL,
  `setting` int(11) DEFAULT NULL,
  `management` int(11) DEFAULT NULL,
  `admission` int(11) DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `attendance` int(11) DEFAULT NULL,
  `exam` int(11) DEFAULT NULL,
  `teacher` int(11) DEFAULT NULL,
  `register` int(11) DEFAULT NULL,
  `cashbook` int(11) DEFAULT NULL,
  `transport` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `library` int(11) DEFAULT NULL,
  `other` int(11) DEFAULT NULL,
  `e_msg` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_control_master`
--

INSERT INTO `access_control_master` (`id`, `user_roll_id`, `dashboard`, `setting`, `management`, `admission`, `fee`, `attendance`, `exam`, `teacher`, `register`, `cashbook`, `transport`, `salary`, `library`, `other`, `e_msg`, `status`) VALUES
(1, 3, 2, NULL, NULL, NULL, 1, NULL, NULL, 2, NULL, 1, NULL, NULL, NULL, 2, NULL, 0),
(2, 4, 2, 2, 2, 2, 2, NULL, NULL, NULL, 2, 2, 2, NULL, NULL, 2, 2, 0),
(3, 5, 2, NULL, NULL, NULL, NULL, 2, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, 6, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `assigned_subjects`
--

CREATE TABLE `assigned_subjects` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `assignroute_master`
--

CREATE TABLE `assignroute_master` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(20) DEFAULT NULL,
  `route_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank_master`
--

CREATE TABLE `bank_master` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(45) NOT NULL,
  `short_form` varchar(45) NOT NULL,
  `delete_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_master`
--

INSERT INTO `bank_master` (`id`, `bank_name`, `short_form`, `delete_status`) VALUES
(1, 'State Bank of India', 'SBI', 0),
(2, 'Bank of India', 'BOI', 0);

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `cat_id` int(11) NOT NULL,
  `cat_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`cat_id`, `cat_type`) VALUES
(3, 'Biography'),
(1, 'Educational'),
(2, 'Fictional'),
(4, 'Novel');

-- --------------------------------------------------------

--
-- Table structure for table `book_details_master`
--

CREATE TABLE `book_details_master` (
  `book_id` int(11) NOT NULL,
  `book_no` int(11) NOT NULL,
  `issue_status` int(11) NOT NULL DEFAULT '0',
  `remark` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_details_master`
--

INSERT INTO `book_details_master` (`book_id`, `book_no`, `issue_status`, `remark`) VALUES
(35, 9, 2, 'LOST'),
(36, 9, 2, 'DAMAGE'),
(37, 9, 1, ''),
(38, 9, 1, ''),
(39, 9, 0, ''),
(40, 9, 1, ''),
(41, 9, 1, ''),
(42, 10, 2, 'DAMAGE'),
(43, 10, 2, 'LOST'),
(44, 10, 1, ''),
(45, 10, 1, ''),
(46, 10, 1, ''),
(47, 10, 0, ''),
(48, 10, 0, ''),
(49, 10, 0, ''),
(50, 10, 0, ''),
(51, 11, 0, ''),
(52, 11, 0, ''),
(53, 11, 1, ''),
(54, 11, 0, ''),
(55, 11, 0, ''),
(56, 11, 0, ''),
(57, 11, 0, ''),
(58, 11, 0, ''),
(59, 12, 0, ''),
(60, 13, 1, ''),
(61, 14, 0, ''),
(62, 15, 0, ''),
(63, 15, 0, ''),
(64, 16, 0, ''),
(65, 16, 0, ''),
(66, 16, 0, ''),
(67, 17, 0, ''),
(68, 17, 0, ''),
(69, 17, 0, ''),
(70, 18, 0, ''),
(71, 19, 0, ''),
(72, 20, 1, ''),
(73, 20, 0, ''),
(74, 20, 0, ''),
(75, 20, 0, ''),
(76, 20, 0, ''),
(77, 21, 0, ''),
(78, 21, 0, ''),
(79, 21, 0, ''),
(80, 21, 0, ''),
(81, 21, 0, ''),
(82, 21, 0, ''),
(83, 22, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `book_info_master`
--

CREATE TABLE `book_info_master` (
  `book_no` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `book_name` varchar(50) NOT NULL,
  `author_name` varchar(80) NOT NULL,
  `publisher_name` varchar(80) NOT NULL,
  `edition` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `cupboard_no` varchar(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `language` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_info_master`
--

INSERT INTO `book_info_master` (`book_no`, `cat_id`, `date`, `book_name`, `author_name`, `publisher_name`, `edition`, `price`, `cupboard_no`, `quantity`, `language`) VALUES
(9, 1, '2016-12-29', 'SDHFGS', 'SANE', 'SDS', '4', 100, '2', 1, 'English'),
(10, 2, '2017-12-06', 'CHAVA', 'Shivaji Sawant', 'A Shinde', '1', 500, '2', 9, 'Marathi'),
(11, 2, '2017-12-22', 'Infereno', 'SMITA', 'hgfghf', '3', 550, '6', 9, 'Hindi'),
(12, 1, '2018-01-17', 'English', 'asd', 'asd', '2', 200, '4', 1, 'English'),
(13, 1, '2017-12-30', 'Marathi', 'aa', 'aaaa', '1', 200, '2', 1, 'Marathi'),
(14, 3, '2018-02-20', 'HINDI', 'DFGHN', 'FGH', 'THIRD5', 3231, '1', 1, 'Hindi'),
(15, 3, '2018-02-20', 'BHVH', 'EWW', 'ABBDSJ', '1ST', 200, '2', 2, 'English'),
(16, 1, '2018-01-24', 'Science', 'B.Sawant', 'SFS', '2ND', 200, '1', 3, 'English'),
(17, 1, '2011-07-30', 'MATHS', 'SDFS', 'HJ', '45K', 7657, '9', 2, 'English'),
(18, 2, '2017-12-01', 'WEDSQD', 'EWF', '', '', 2, '2', 1, 'Marathi'),
(19, 3, '2018-01-25', 'F', 'HVV', '', '', 54, '4', 1, 'Marathi'),
(20, 2, '2018-01-25', 'SDA', 'FY', '', '', 65465, '5', 5, 'Marathi'),
(21, 3, '2018-01-27', 'DSD', 'JHVJ', '', '', 6546, '6', 6, 'English'),
(22, 3, '2018-01-25', 'YYY', 'Y', '', '', 1, '4', 1, 'Marathi'),
(23, 1, '2018-01-10', 'Geography', 'DFD', 'FD', 'EF', 222, '2', 2, 'English');

-- --------------------------------------------------------

--
-- Table structure for table `caste`
--

CREATE TABLE `caste` (
  `id` int(11) NOT NULL,
  `religion_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `caste_name` varchar(45) NOT NULL,
  `delete_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caste`
--

INSERT INTO `caste` (`id`, `religion_id`, `category_id`, `caste_name`, `delete_status`) VALUES
(1, 2, 1, 'MARATHA', 0),
(2, 2, 2, 'SALI', 0),
(3, 2, 3, 'GHANCHI', 0),
(4, 2, 1, 'PATEL', 0);

-- --------------------------------------------------------

--
-- Table structure for table `caste_category`
--

CREATE TABLE `caste_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `delete_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caste_category`
--

INSERT INTO `caste_category` (`id`, `category_name`, `delete_status`) VALUES
(1, 'OPEN', 0),
(2, 'SBC', 0),
(3, 'OBC', 0);

-- --------------------------------------------------------

--
-- Table structure for table `classroom_master`
--

CREATE TABLE `classroom_master` (
  `id` int(11) NOT NULL,
  `fk_class_master_id` int(11) NOT NULL,
  `division` varchar(20) NOT NULL,
  `shift` varchar(25) NOT NULL,
  `delete_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classroom_master`
--

INSERT INTO `classroom_master` (`id`, `fk_class_master_id`, `division`, `shift`, `delete_status`) VALUES
(1, 1, 'A', 'MORNING', 0),
(2, 2, 'A', 'MORNING', 0),
(3, 3, 'A', 'MORNING', 0),
(4, 4, 'A', 'MORNING', 0),
(5, 5, 'A', 'MORNING', 0),
(6, 6, 'A', 'AFTERNOON', 0),
(7, 7, 'A', 'AFTERNOON', 0),
(8, 8, 'A', 'MORNING', 0),
(9, 9, 'A', 'MORNING', 0),
(10, 10, 'A', 'MORNING', 0),
(11, 11, 'A', 'MORNING', 0),
(12, 12, 'A', 'MORNING', 0),
(13, 13, 'A', 'AFTERNOON', 0),
(14, 14, 'A', 'AFTERNOON', 0),
(15, 8, 'B', 'AFTERNOON', 0),
(16, 1, 'B', 'MORNING', 0),
(17, 1, 'B', 'AFTERNOON', 0),
(18, 1, 'C', 'MORNING', 0),
(19, 9, 'C', 'MORNING', 0),
(20, 11, 'L', 'AFTERNOON', 0),
(21, 2, 'C', 'MORNING', 0);

-- --------------------------------------------------------

--
-- Table structure for table `class_allocation`
--

CREATE TABLE `class_allocation` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `classroom_master` int(11) DEFAULT NULL,
  `academic_year` varchar(15) DEFAULT NULL,
  `roll_no` varchar(45) DEFAULT NULL,
  `catalog_status` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_allocation`
--

INSERT INTO `class_allocation` (`id`, `student_id`, `classroom_master`, `academic_year`, `roll_no`, `catalog_status`, `status`) VALUES
(1, 1, 1, '2017-2018', NULL, 0, 0),
(2, 2, 7, '2017-2018', NULL, 0, 0),
(3, 3, 2, '2017-2018', NULL, 0, 0),
(4, 4, 6, '2017-2018', NULL, 0, 0),
(5, 5, 5, '2017-2018', NULL, 0, 0),
(6, 7, 1, '2017-2018', NULL, 0, 0),
(7, 8, 4, '2017-2018', NULL, 0, 0),
(8, 9, 2, '2017-2018', NULL, 0, 0),
(9, 10, 3, '2017-2018', NULL, 0, 0),
(10, 11, 7, '2017-2018', NULL, 0, 0),
(11, 12, 4, '2017-2018', NULL, 0, 0),
(12, 13, 2, '2017-2018', NULL, 0, 0),
(13, 14, 3, '2017-2018', NULL, 0, 0),
(14, 15, 7, '2017-2018', NULL, 0, 0),
(15, 16, 5, '2017-2018', NULL, 0, 0),
(16, 17, 4, '2017-2018', NULL, 0, 0),
(17, 18, 3, '2017-2018', NULL, 0, 0),
(18, 19, 6, '2017-2018', NULL, 0, 0),
(19, 20, 1, '2017-2018', NULL, 0, 0),
(20, 21, 6, '2017-2018', NULL, 0, 0),
(21, 22, 8, '2017-2018', NULL, 0, 0),
(22, 23, 9, '2017-2018', NULL, 0, 0),
(23, 24, 12, '2017-2018', NULL, 0, 0),
(24, 25, 9, '2017-2018', NULL, 0, 0),
(25, 26, 8, '2017-2018', NULL, 0, 0),
(26, 27, 10, '2017-2018', NULL, 0, 0),
(27, 28, 3, '2017-2018', NULL, 0, 0),
(28, 29, 12, '2017-2018', NULL, 0, 0),
(29, 30, 10, '2017-2018', NULL, 0, 0),
(30, 31, 8, '2017-2018', NULL, 0, 0),
(31, 32, 4, '2017-2018', NULL, 0, 0),
(32, 33, 9, '2017-2018', NULL, 0, 0),
(33, 34, 13, '2017-2018', NULL, 0, 0),
(34, 35, 10, '2017-2018', NULL, 0, 0),
(35, 36, 9, '2017-2018', NULL, 0, 0),
(36, 37, 9, '2017-2018', NULL, 0, 0),
(37, 38, 8, '2017-2018', NULL, 0, 0),
(38, 39, 11, '2017-2018', NULL, 0, 0),
(39, 40, 10, '2017-2018', NULL, 0, 0),
(40, 41, 11, '2017-2018', NULL, 0, 0),
(41, 42, 12, '2017-2018', NULL, 0, 0),
(42, 43, 9, '2017-2018', NULL, 0, 0),
(43, 44, 10, '2017-2018', NULL, 0, 0),
(44, 45, 21, '2017-2018', NULL, 0, 0),
(45, 46, 18, '2017-2018', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `conductor_master`
--

CREATE TABLE `conductor_master` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(15) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `temp_addrs` varchar(20) DEFAULT NULL,
  `perm_addrs` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department_master`
--

CREATE TABLE `department_master` (
  `id` int(11) NOT NULL,
  `department_name` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department_master`
--

INSERT INTO `department_master` (`id`, `department_name`, `status`) VALUES
(1, 'MATHS', 0),
(2, 'IT', 0),
(3, 'MA', 0),
(4, 'sa', 0),
(5, 'a', 0),
(6, 'co', 0),
(7, 'computer', 0),
(8, 'fdd', 0),
(9, 'aartii', 0),
(10, 'hjk', 0),
(11, 'yghj', 0),
(12, 'tfyghj', 0),
(13, 'ghj', 0),
(14, 'gh', 0),
(15, 'ghbn', 0),
(16, 'jhsn', 0),
(17, 'dgfgfdgh', 0),
(18, '55', 0);

-- --------------------------------------------------------

--
-- Table structure for table `destination_master`
--

CREATE TABLE `destination_master` (
  `id` int(11) NOT NULL,
  `route_id` int(20) DEFAULT NULL,
  `destination` varchar(20) DEFAULT NULL,
  `fee` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `driver_master`
--

CREATE TABLE `driver_master` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(15) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `temp_addrs` varchar(20) DEFAULT NULL,
  `perm_addrs` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `license_no` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fee_type`
--

CREATE TABLE `fee_type` (
  `id` int(11) NOT NULL,
  `fees_type` varchar(50) NOT NULL,
  `fees` int(11) NOT NULL DEFAULT '0',
  `term_1` int(11) NOT NULL DEFAULT '0',
  `term_2` int(11) NOT NULL DEFAULT '0',
  `caste` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fee_type`
--

INSERT INTO `fee_type` (`id`, `fees_type`, `fees`, `term_1`, `term_2`, `caste`, `status`) VALUES
(21, 'SADAS', 100, 1, 1, 1, 0),
(22, 'Exam', 2000, 1, 1, 0, 0),
(23, 'LAB', 900, 1, 1, 1, 0),
(25, 'TUTION', 1000, 1, 0, 1, 0),
(29, 'NEW', 333, 1, 0, 0, 0),
(32, 'Exam', 22, 1, 0, 0, 0),
(33, 'Exam', 2, 1, 0, 0, 0),
(34, 'SPORT', 1100, 0, 1, 0, 0),
(35, 'ASZX', 0, 1, 0, 1, 0),
(36, 'sport', 0, 1, 0, 1, 0),
(37, 'Tution', 0, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fine_master_details`
--

CREATE TABLE `fine_master_details` (
  `id` int(11) NOT NULL,
  `stud_id` int(11) NOT NULL,
  `issue_id` int(11) NOT NULL,
  `due_days` int(11) NOT NULL,
  `fine_amt` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `fine_paid_amt` int(11) NOT NULL,
  `remaining_fine_amt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine_master_details`
--

INSERT INTO `fine_master_details` (`id`, `stud_id`, `issue_id`, `due_days`, `fine_amt`, `discount`, `fine_paid_amt`, `remaining_fine_amt`) VALUES
(1, 2, 2, 4, 20, 0, 0, 20),
(2, 9, 1, 5, 25, 25, 0, 0),
(3, 2, 11, 1, 25, 0, 0, 25),
(4, 2, 12, 3, 40, 0, 0, 40),
(5, 17, 3, 6, 30, 0, 0, 30),
(6, 32, 13, 2, 10, 0, 0, 10),
(7, 32, 14, 1, 15, 0, 0, 15),
(8, 19, 15, 0, 0, 0, 0, 40),
(9, 12, 16, 0, 0, 0, 0, 0),
(10, 2, 12, 0, 40, 5, 35, 0),
(11, 17, 3, 0, 30, 4, 26, 0),
(12, 18, 22, 0, 0, 0, 0, 0),
(13, 16, 9, 27, 135, 15, 120, 0),
(14, 1, 17, 26, 130, 10, 120, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fk_class_master`
--

CREATE TABLE `fk_class_master` (
  `id` int(11) NOT NULL,
  `std_id` int(11) NOT NULL,
  `fk_school_sec_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fk_class_master`
--

INSERT INTO `fk_class_master` (`id`, `std_id`, `fk_school_sec_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 2),
(7, 7, 2),
(8, 9, 3),
(9, 10, 3),
(10, 11, 3),
(11, 12, 3),
(12, 13, 3),
(13, 14, 4),
(14, 15, 4);

-- --------------------------------------------------------

--
-- Table structure for table `fk_school_section_details`
--

CREATE TABLE `fk_school_section_details` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fk_school_section_details`
--

INSERT INTO `fk_school_section_details` (`id`, `school_id`, `section_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 3, 1),
(6, 3, 2),
(7, 4, 1),
(8, 4, 2),
(9, 5, 1),
(10, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `installment_and_mode`
--

CREATE TABLE `installment_and_mode` (
  `id` int(11) NOT NULL,
  `mode_name` varchar(50) NOT NULL,
  `installment` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `installment_and_mode`
--

INSERT INTO `installment_and_mode` (`id`, `mode_name`, `installment`, `date`, `status`) VALUES
(1, 'MONTHLY INSTALLMENT', 12, '2018-01-19', 0),
(2, 'FGH', 2, '2018-02-14', 0),
(3, 'ANNUAL', 1, '2018-02-01', 0),
(4, 'INSTALLMENT2', 2, '2018-02-07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inward_outward_document_master`
--

CREATE TABLE `inward_outward_document_master` (
  `id` int(11) NOT NULL,
  `document_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inward_register_master`
--

CREATE TABLE `inward_register_master` (
  `id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  `inward_no` int(11) NOT NULL,
  `date` date NOT NULL,
  `sender_name` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE `issue_book` (
  `id` int(11) NOT NULL,
  `bookdetails_id` int(11) NOT NULL,
  `stud_id` int(20) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `return_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_book`
--

INSERT INTO `issue_book` (`id`, `bookdetails_id`, `stud_id`, `staff_id`, `issue_date`, `due_date`, `return_date`) VALUES
(1, 51, 9, NULL, '2018-01-01', '2018-01-06', '2018-01-11'),
(2, 35, 2, NULL, '2018-01-02', '2018-01-07', '2018-01-11'),
(3, 52, 17, NULL, '2018-01-01', '2018-01-05', '2018-01-11'),
(4, 38, 32, NULL, '2018-01-11', '2018-01-18', NULL),
(5, 42, 8, NULL, '2018-01-11', '2018-01-19', NULL),
(6, 43, 18, NULL, '2018-01-03', '2018-01-10', NULL),
(7, 36, 19, NULL, '2018-01-19', '2018-01-26', NULL),
(8, 53, 15, NULL, '2018-01-03', '2018-01-10', NULL),
(9, 37, 16, NULL, '2018-01-19', '2018-01-24', '2018-02-20'),
(10, 45, 4, NULL, '2018-01-03', '2018-01-10', NULL),
(11, 54, 2, NULL, '2018-01-03', '2018-01-10', '2018-01-11'),
(12, 39, 2, NULL, '2018-01-01', '2018-01-08', '2018-01-11'),
(13, 35, 32, NULL, '2018-01-03', '2018-01-09', '2018-01-11'),
(14, 52, 32, NULL, '2018-01-04', '2018-01-10', '2018-01-11'),
(15, 44, 19, NULL, '2018-01-18', '2018-01-25', '2018-01-18'),
(16, 35, 12, NULL, '2018-01-18', '2018-01-25', '2018-01-18'),
(17, 59, 1, NULL, '2018-01-02', '2018-01-25', '2018-02-20'),
(18, 44, 7, NULL, '2017-12-16', '2017-12-30', NULL),
(19, 35, 21, NULL, '2017-12-08', '2018-01-27', NULL),
(20, 60, 9, NULL, '2018-01-04', '2018-01-24', NULL),
(21, 41, 19, NULL, '2018-01-31', '2018-02-07', NULL),
(22, 66, 18, NULL, '2018-01-31', '2018-02-07', '2018-01-31'),
(23, 38, 32, NULL, '2018-01-11', '2018-02-03', NULL),
(24, 72, 20, NULL, '2018-02-01', '2018-02-08', NULL),
(25, 46, 1, NULL, '2018-02-20', '2018-02-27', NULL),
(26, 37, 1, NULL, '2018-02-20', '2018-02-27', NULL),
(27, 40, 8, NULL, '2018-02-21', '2018-02-28', NULL),
(28, 44, 7, NULL, '2017-12-16', '2018-02-28', NULL),
(29, 72, 20, NULL, '2018-02-01', '2018-02-22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `outward_register_master`
--

CREATE TABLE `outward_register_master` (
  `id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  `outward_no` int(11) NOT NULL,
  `date` date NOT NULL,
  `receiver_name` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profession`
--

CREATE TABLE `profession` (
  `profession_id` int(11) NOT NULL,
  `profession` varchar(20) NOT NULL,
  `accesskey` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pta_member_details`
--

CREATE TABLE `pta_member_details` (
  `id` int(11) NOT NULL,
  `stud_id` int(11) NOT NULL,
  `acc_year` int(20) NOT NULL,
  `relation` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pta_member_details`
--

INSERT INTO `pta_member_details` (`id`, `stud_id`, `acc_year`, `relation`) VALUES
(2, 3, 2016, 'mother');

-- --------------------------------------------------------

--
-- Table structure for table `religion`
--

CREATE TABLE `religion` (
  `id` int(11) NOT NULL,
  `religion_name` varchar(50) NOT NULL,
  `delete_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `religion`
--

INSERT INTO `religion` (`id`, `religion_name`, `delete_status`) VALUES
(2, 'HINDU', 0),
(3, 'MUSLIM', 0),
(4, 'SIKH', 0),
(5, 'JAIN', 0);

-- --------------------------------------------------------

--
-- Table structure for table `route_master`
--

CREATE TABLE `route_master` (
  `id` int(11) NOT NULL,
  `route_code` varchar(30) DEFAULT NULL,
  `route_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `school_master`
--

CREATE TABLE `school_master` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `slogan` varchar(100) DEFAULT NULL,
  `index_no` varchar(50) DEFAULT NULL,
  `licence_no` varchar(50) DEFAULT NULL,
  `udise` varchar(50) DEFAULT NULL,
  `school_code` varchar(50) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `phone_no` varchar(50) DEFAULT NULL,
  `board` varchar(100) DEFAULT NULL,
  `punit_code` varchar(50) DEFAULT NULL,
  `center` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `jubilee_year` varchar(4) DEFAULT NULL,
  `establish_year` varchar(4) DEFAULT NULL,
  `medium` varchar(15) DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_master`
--

INSERT INTO `school_master` (`id`, `name`, `address`, `slogan`, `index_no`, `licence_no`, `udise`, `school_code`, `email_id`, `phone_no`, `board`, `punit_code`, `center`, `date`, `jubilee_year`, `establish_year`, `medium`, `delete_status`, `status`) VALUES
(1, 'Tilak Highschool', 'KARAD', 'SATYA BOLA ', '123', '2', '123', '02', 'sandeep123@gmail.com', '1234567890', 'HSC', '5', 'PUNE', '2017-12-30', '2014', '2000', 'marathi', 0, 0),
(2, 'Kanya Prashala', 'PUNE', 'ARE YOU READY', '123654', '2852963', '1', '123456', 'sandeep@gmail.com', '0242826242', 'SAS', '1', 'CHAPDGAON', '2017-12-23', '2018', '2009', 'english', 0, 0),
(3, 'Shivaji Highschool', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(4, 'Netaji Highschool', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(5, 'MIT School', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sections_master`
--

CREATE TABLE `sections_master` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `delete_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sections_master`
--

INSERT INTO `sections_master` (`id`, `name`, `delete_status`) VALUES
(1, 'PRIMARY', 0),
(2, 'SECONDARY', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sender_receiver_master`
--

CREATE TABLE `sender_receiver_master` (
  `id` int(11) NOT NULL,
  `sender_receiver_name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `set_library_fine`
--

CREATE TABLE `set_library_fine` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `fine_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `set_library_fine`
--

INSERT INTO `set_library_fine` (`id`, `date`, `fine_amount`) VALUES
(1, '2018-01-04', 5);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `profession_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `previous_school_id` int(11) DEFAULT NULL,
  `bank_acc_no` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `cno1` varchar(11) NOT NULL,
  `cno2` varchar(11) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `aadharcard_no` varchar(15) NOT NULL,
  `join_date` date NOT NULL,
  `resignation_date` date NOT NULL,
  `education` varchar(50) NOT NULL,
  `experience` varchar(175) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `delete_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `profession_id`, `school_id`, `bank_id`, `subject_id`, `previous_school_id`, `bank_acc_no`, `firstname`, `lastname`, `username`, `password`, `address`, `dob`, `cno1`, `cno2`, `emailid`, `aadharcard_no`, `join_date`, `resignation_date`, `education`, `experience`, `blood_group`, `status`, `delete_status`) VALUES
(1, 5, 1, 1, 3, NULL, '564656464', 'Vijay', 'Patil', 'vijaypatil@gmail.com', '123456', 'pune', '1990-02-01', '9585745421', '9585452352', 'gfcgyhh', '56654', '2015-02-08', '2015-03-22', 'ME', '3', 'o+', 0, 0),
(2, 4, 1, 2, 3, NULL, '564656464', 'Yogesh', 'Pawar', 'vijaypatil', '123456', 'pune', '1990-02-01', '9585745421', '9585452352', 'gfcgyhh', '56654', '2015-02-08', '2015-03-22', 'ME', '3', 'o+', 0, 0),
(3, 5, 1, 1, 3, NULL, '564656464', 'Ajay', 'Rane', 'AjayRane', '123456', 'pune', '1988-02-01', '9585745721', '9545452352', 'gfcgyhh', '56654', '2014-02-08', '2014-03-22', 'ME', '4', 'A+', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `staff_master`
--

CREATE TABLE `staff_master` (
  `id` int(11) NOT NULL,
  `joining_date` date NOT NULL,
  `joining_type` varchar(50) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `caste` varchar(20) NOT NULL,
  `previous_school` varchar(50) NOT NULL,
  `exp_year` int(11) NOT NULL,
  `exp_month` int(11) NOT NULL,
  `dob` date NOT NULL,
  `age` int(11) NOT NULL,
  `basicPay` double NOT NULL,
  `gradePay` double NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `grant_type` varchar(50) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `blood_grp` varchar(20) NOT NULL,
  `education` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `acc_no` int(11) NOT NULL,
  `uid_no` int(11) NOT NULL,
  `pf_no` int(11) NOT NULL,
  `pan_card_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_master`
--

INSERT INTO `staff_master` (`id`, `joining_date`, `joining_type`, `full_name`, `address`, `religion`, `caste`, `previous_school`, `exp_year`, `exp_month`, `dob`, `age`, `basicPay`, `gradePay`, `mobile_no`, `grant_type`, `gender`, `blood_grp`, `education`, `department`, `designation`, `bank_name`, `acc_no`, `uid_no`, `pf_no`, `pan_card_no`) VALUES
(1, '2018-02-13', 'O+', 'ug', 'hgj', '2', '2', 'fg', 3, 4, '1994-02-14', 34, 345, 0, '345674', 'A+', 'Male', 'B+', '', '', 'HR', '2', 741852, 52, 52, '52'),
(2, '2018-02-02', 'O+', 'gvhb', 'dxxcvb', '2', '1', 'FGH', 3, 4, '1994-02-14', 34, 234, 0, '234567', 'A+', 'Male', 'AB+', 'cfvgbh', 'gh', 'HR', '1', 8562, 41, 52, '410'),
(3, '2018-02-06', 'O+', 'Rahul Deshmukh', 'Pune', '2', '1', 'MIT School', 4, 1, '1989-12-31', 28, 741, 0, '9587957485', 'O+', 'Male', 'A+', 'D.ed', 'English', 'Teacher', '1', 741852, 7410, 78, '85');

-- --------------------------------------------------------

--
-- Table structure for table `std_master`
--

CREATE TABLE `std_master` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `delete_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `std_master`
--

INSERT INTO `std_master` (`id`, `name`, `delete_status`) VALUES
(1, 'I', 0),
(2, 'II', 0),
(3, 'III', 0),
(4, 'IV', 0),
(5, 'V', 0),
(6, 'VI', 0),
(7, 'VII', 0),
(9, '1', 0),
(10, '2', 0),
(11, '3', 0),
(12, '4', 0),
(13, '5', 0),
(14, '6', 0),
(15, '7', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stock_register_master`
--

CREATE TABLE `stock_register_master` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `number_of_items` int(50) NOT NULL,
  `item_amount` varchar(50) NOT NULL,
  `deduction_amount` varchar(50) NOT NULL,
  `percentage` varchar(50) NOT NULL,
  `total_amount` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `voucher_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `dob` date NOT NULL,
  `age` varchar(45) DEFAULT NULL,
  `birth_place` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `blood_group` varchar(5) DEFAULT NULL,
  `height` varchar(45) DEFAULT NULL,
  `weight` varchar(45) DEFAULT NULL,
  `aadhar_no` varchar(45) DEFAULT NULL,
  `mother_tongue` varchar(45) DEFAULT NULL,
  `religion_id` int(45) DEFAULT NULL,
  `caste_id` int(45) DEFAULT NULL,
  `category_id` int(45) DEFAULT NULL,
  `nationality` varchar(45) DEFAULT NULL,
  `minority` int(11) NOT NULL DEFAULT '0',
  `physical_handicap` int(11) NOT NULL DEFAULT '0',
  `physical_handicap_type` varchar(45) DEFAULT NULL,
  `pin_code` varchar(45) DEFAULT NULL,
  `taluka` varchar(45) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `bank_name` varchar(45) DEFAULT NULL,
  `ifsc_code` varchar(45) DEFAULT NULL,
  `account_no` varchar(45) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`id`, `first_name`, `middle_name`, `last_name`, `dob`, `age`, `birth_place`, `gender`, `blood_group`, `height`, `weight`, `aadhar_no`, `mother_tongue`, `religion_id`, `caste_id`, `category_id`, `nationality`, `minority`, `physical_handicap`, `physical_handicap_type`, `pin_code`, `taluka`, `district`, `state`, `address`, `bank_name`, `ifsc_code`, `account_no`, `status`) VALUES
(1, 'satish', 'd', 'mallav', '2000-06-06', '17', '', 'Male', NULL, '', '', '', NULL, 2, 1, 1, '', 0, 0, '', '411006', 'Haveli', 'Pune', 'MAHARASHTRA', 'RUKMINI NAGAR, MANGALWAR PETH', NULL, '', '', 0),
(2, 'sandeep', 'bhaskar', 'batule', '1995-02-28', '22', 'prabhuwadgaon', 'Male', 'O+', '5.8', '65', '1234567890', 'English', 2, 1, 1, 'indian', 0, 0, '', '414502', 'Shevgaon', 'Ahmed Nagar', 'MAHARASHTRA', '', NULL, '', '', 0),
(3, 'Omkar', 'Y', 'Shivadekar', '2000-12-30', '17', '', 'Male', NULL, '', '', '', NULL, 2, 1, 1, '', 0, 0, '', '415110', 'Karad', 'Satara', 'MAHARASHTRA', 'Karad', NULL, '', '', 0),
(4, 'Sarang', 's', 'Kamble', '1994-05-21', '23', 'pune', 'Male', 'A+', '', '', '', NULL, 2, 2, 2, 'indian', 0, 0, '', '411006', 'Haveli', 'Pune', 'MAHARASHTRA', 'yerwada', NULL, '', '', 0),
(5, 'himanshu', 'p', 'patel', '2011-12-30', '6', '', 'Male', NULL, '', '', '', NULL, 2, 3, 3, '', 0, 0, '', '411028', 'Pune', 'Pune', 'MAHARASHTRA', '', NULL, '', '', 0),
(7, 'syska', 'v', 'patil', '2012-12-07', '5', '', 'Male', NULL, '', '', '', NULL, 2, 1, 1, '', 0, 0, '', '415110', 'Karad', 'Satara', 'MAHARASHTRA', 'RUKMINI NAGAR, MANGALWAR PETH', NULL, '', '', 0),
(8, 'Smita', 'Dhananjay', 'Raut', '2007-12-05', '10', 'Phaltan', 'Male', NULL, '', '', '', NULL, 2, 1, 1, '', 0, 0, '', '413109', '', '', '', '', NULL, '', '', 0),
(9, 'Arman', 'A', 'Kachhi', '1999-12-21', '18', '', 'Male', NULL, '', '', '', NULL, 2, 2, 2, '', 0, 0, '', '411038', 'Pune City', 'Pune', 'MAHARASHTRA', 'pune', NULL, '', '', 0),
(10, 'Aarti', 'Vasant', 'Bawche', '2009-02-05', '8', 'Pune', 'Female', NULL, '', '', '', NULL, 2, 1, 1, '', 0, 0, '', '411028', '', '', '', '', NULL, '', '', 0),
(11, 'suraj', 'sandeep', 'singhaniya', '1995-02-27', '22', 'delhi', 'Male', 'O+', '6', '55', '1234567890', 'Hindi', 2, 4, 1, 'indian', 0, 0, '', '414502', 'Shevgaon', 'Ahmed Nagar', 'MAHARASHTRA', '', NULL, '', '', 0),
(12, 'Smita', 'Amol', 'Gore', '2008-10-13', '9', '', 'Male', NULL, '', '', '', NULL, 2, 1, 1, '', 0, 0, '', '411027', '', '', '', '', NULL, '', '', 0),
(13, 'Santosh', 'K', 'Chavare', '1994-12-30', '23', '', 'Male', NULL, '', '', '', NULL, 2, 1, 1, '', 0, 0, '', '411037', 'Pune City', 'Pune', 'MAHARASHTRA', 'kothrud', NULL, '', '', 0),
(14, 'Pratik', 'Pradip', 'Asarkar', '2009-02-15', '8', '', 'Male', NULL, '', '', '', NULL, 2, 1, 1, '', 0, 0, '', '411029', '', '', '', '', NULL, '', '', 0),
(15, 'deepika', 'sandeep', 'padukone', '1995-09-23', '22', 'pune', 'Male', 'O-', '6.5', '70', '234567890', 'English', 2, 1, 1, 'indian', 0, 0, '', '414502', 'Shevgaon', 'Ahmed Nagar', 'MAHARASHTRA', 'asdfghj', NULL, '', '', 0),
(16, 'mohit', 'm', 'kumbhani', '2011-12-30', '6', '', 'Male', NULL, '', '', '', NULL, 2, 1, 1, '', 0, 0, '', '362263', 'Junagadh', 'Junagadh', 'GUJARAT', '', NULL, '', '', 0),
(17, 'Ajay', 'Vijay', 'Yadav', '2008-01-06', '9', '', 'Male', NULL, '', '', '', NULL, 2, 4, 1, '', 0, 0, '', '411028', '', '', '', '', NULL, '', '', 0),
(18, 'Mayra', 'Nikhil', 'Bhosale', '2009-12-13', '8', '', 'Male', NULL, '', '', '', NULL, 2, 2, 2, '', 0, 0, '', '411002', '', '', '', '', NULL, '', '', 0),
(19, 'surajbhau', 'k', 'kulkarni', '2000-11-11', '17', 'latur', 'Male', NULL, '', '', '', NULL, 2, 1, 1, '', 0, 0, '', '411006', 'Haveli', 'Pune', 'MAHARASHTRA', 'gandhi nagar', NULL, '', '', 0),
(20, 'abhishek', 's', 'gangdhar', '2012-12-28', '5', '', 'Male', NULL, '', '', '', NULL, 2, 2, 2, '', 0, 0, '', '415110', 'Karad', 'Satara', 'MAHARASHTRA', 'RUKMINI NAGAR,', NULL, '', '', 0),
(21, 'sakashi', 'b', 'bhandari', '2000-11-20', '17', 'pune', 'Female', NULL, '', '', '', NULL, 2, 2, 2, '', 0, 0, '', '411028', 'Pune', 'Pune', 'MAHARASHTRA', 'dsdas', NULL, '', '', 0),
(22, 'suraj', 'm', 'kulkarni', '2012-12-28', '5', '', 'Male', NULL, '', '', '', NULL, 2, 2, 2, '', 0, 0, '', '415110', 'Karad', 'Satara', 'MAHARASHTRA', 'RUKMINI NAGAR', NULL, '', '', 0),
(23, 'AP', 'AP', 'PA', '1995-01-01', '22', '', 'Male', NULL, '', '', '', NULL, 2, 2, 2, '', 0, 0, '', '411028', 'Pune', 'Pune', 'MAHARASHTRA', '', NULL, '', '', 0),
(24, 'dhaval', 'nwq', 'savaliya', '2011-12-07', '6', '', 'Female', NULL, '', '', '', NULL, 2, 4, 1, '', 0, 0, '', '411028', 'Pune', 'Pune', 'MAHARASHTRA', '', NULL, '', '', 0),
(25, 'Chean', 's', 'Gore', '1998-12-22', '19', '', 'Male', NULL, '', '', '', NULL, 2, 3, 3, '', 0, 0, '', '400001', 'Mumbai', 'Mumbai', 'MAHARASHTRA', 'mumbai', NULL, '', '', 0),
(26, 'manish', 'n', 'mane', '2012-03-08', '5', '', 'Male', NULL, '', '', '', NULL, 2, 3, 3, '', 0, 0, '', '123445', '', '', '', '', NULL, '', '', 0),
(27, 'PA', 'pA', 'pA', '1994-03-13', '23', '', 'Male', NULL, '', '', '', NULL, 2, 1, 1, '', 0, 0, '', '411020', 'Pune City', 'Pune', 'MAHARASHTRA', '', NULL, '', '', 0),
(28, 'Abihijit', 'Vikas', 'Chavan', '2009-12-04', '8', '', 'Male', NULL, '', '', '', NULL, 2, 3, 3, '', 0, 0, '', '411038', '', '', '', '', NULL, '', '', 0),
(29, 'AJ', 'AJ', 'AJ', '1996-12-18', '21', '', 'Male', NULL, '', '', '', NULL, 2, 3, 3, '', 0, 0, '', '411020', 'Pune City', 'Pune', 'MAHARASHTRA', '', NULL, '', '', 0),
(30, 'chaitrali', 'ramesh', 'kokate', '2009-01-04', '8', '', 'Female', NULL, '', '', '', NULL, 2, 1, 1, '', 0, 0, '', '411026', 'Pune City', 'Pune', 'MAHARASHTRA', 'hadapsar', NULL, '', '', 0),
(31, 'samsung', 'n', 'nokia', '2013-12-12', '4', '', 'Male', NULL, '', '', '', NULL, 2, 4, 1, '', 0, 0, '', '876556', '', '', '', '', NULL, '', '', 0),
(32, 'Rinku', 'Rahul', 'Deshmukh', '2008-02-14', '9', '', 'Female', NULL, '', '', '', NULL, 2, 2, 2, '', 0, 0, '', '413107', '', '', '', '', NULL, '', '', 0),
(33, 'ps', 'ps', 'SP', '1992-12-20', '25', '', 'Male', NULL, '', '', '', NULL, 2, 3, 3, '', 0, 0, '', '411020', 'Pune City', 'Pune', 'MAHARASHTRA', '', NULL, '', '', 0),
(34, 'sarang', 'subhash', 'kamble', '1991-05-19', '26', 'pune', 'Male', NULL, '', '', '', NULL, 2, 4, 1, '', 0, 0, '', '411047', 'Pune City', 'Pune', 'MAHARASHTRA', 'lohagaon', NULL, '', '', 0),
(35, 'Aarohi', 'Abhishek', 'Bhosale', '2009-11-06', '8', '', 'Female', NULL, '', '', '', NULL, 2, 1, 1, '', 0, 0, '', '411023', '', '', '', '', NULL, '', '', 0),
(36, 'Amit', 'a', 'Patil', '1997-12-20', '20', '', 'Male', NULL, '', '', '', NULL, 2, 3, 3, '', 0, 0, '', '311011', 'Bhilwara', 'Bhilwara', 'RAJASTHAN', 'rk', NULL, '', '', 0),
(37, 'SS', 'SS', 'SS', '1997-12-14', '20', '', 'Male', NULL, '', '', '', NULL, 2, 3, 3, '', 0, 0, '', '411020', 'Pune City', 'Pune', 'MAHARASHTRA', '', NULL, '', '', 0),
(38, 'kancha', 'n', 'china', '2011-07-14', '6', '', 'Male', NULL, '', '', '', NULL, 2, 3, 3, '', 0, 0, '', '23456', '', '', '', '', NULL, '', '', 0),
(39, 'prasad', 'suryakant', 'gore', '2007-06-02', '10', '', 'Female', NULL, '', '', '', NULL, 2, 1, 1, '', 0, 0, '', '411027', 'Pune City', 'Pune', 'MAHARASHTRA', '', NULL, '', '', 0),
(40, 'Megha', 'vilas', 'Pawar', '2009-10-10', '8', '', 'Male', NULL, '', '', '', NULL, 2, 1, 1, '', 0, 0, '', '41125', '', '', '', '', NULL, '', '', 0),
(41, 'Diya', 'Samir', 'Mirja', '2008-05-11', '9', '', 'Female', NULL, '', '', '', NULL, 2, 4, 1, '', 0, 0, '', '413106', '', '', '', '', NULL, '', '', 0),
(42, 'priyanka', 'sagar', 'mhetre', '2010-06-04', '7', '', 'Female', NULL, '', '', '', NULL, 2, 3, 3, '', 0, 0, '', '411030', 'Pune City', 'Pune', 'MAHARASHTRA', '', NULL, '', '', 0),
(43, 'Radha', 'Sagar', 'Ingale', '1993-05-13', '24', '', 'Female', NULL, '', '', '', NULL, 2, 4, 1, '', 1, 1, 'Blind', '411455', '', '', '', '', NULL, '', '', 0),
(44, 'Sita', 'Ram', 'Nale', '2000-02-08', '17', '', 'Female', NULL, '', '', '', NULL, 2, 4, 1, '', 1, 1, 'Hearing Loss', '457896', '', '', '', '', NULL, '', '', 0),
(45, 'Neha', 'mina', 'Kale', '2000-02-01', '18', '', 'Female', NULL, '', '', '', NULL, 2, 4, 1, '', 0, 0, '', '411027', 'Pune City', 'Pune', 'MAHARASHTRA', '', NULL, '', '', 0),
(46, 'Riya', 'Raju', 'Rane', '2008-02-08', '9', '', 'Female', NULL, '', '', '', NULL, 2, 4, 1, '', 1, 1, 'Psychological Disorders', '413109', 'Malshiras', 'Solapur', 'MAHARASHTRA', '', NULL, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_official_details`
--

CREATE TABLE `student_official_details` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `classroom_master` int(9) DEFAULT NULL,
  `academic_year` varchar(45) DEFAULT NULL,
  `book_no` varchar(45) DEFAULT NULL,
  `gr_no` varchar(45) DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `previous_school_name` varchar(45) DEFAULT NULL,
  `medium` varchar(45) DEFAULT NULL,
  `lc_status` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_official_details`
--

INSERT INTO `student_official_details` (`id`, `student_id`, `classroom_master`, `academic_year`, `book_no`, `gr_no`, `admission_date`, `previous_school_name`, `medium`, `lc_status`, `status`) VALUES
(1, 1, 1, '2017-2018', '2345678', '3456', '2017-12-30', '', 'Marathi', 0, 0),
(2, 2, 7, '2017-2018', '123456890', '3457', '2017-12-30', 'Aisssms Coe Pune', 'Marathi', 0, 0),
(3, 3, 2, '2017-2018', '7899', '9899', '2017-12-30', '', 'Marathi', 0, 0),
(4, 4, 6, '2017-2018', '1', '3423', '2017-12-30', '', 'Marathi', 0, 0),
(5, 5, 5, '2017-2018', '98565', '655656', '2017-12-30', '', 'Marathi', 0, 0),
(6, 7, 1, '2017-2018', '1', '4567', '2017-12-30', '', 'Marathi', 0, 0),
(7, 8, 4, '2017-2018', '5', '346051', '2017-12-30', '', 'Marathi', 0, 0),
(8, 9, 2, '2017-2018', '7777', '9999', '2017-12-30', '', 'Marathi', 0, 0),
(9, 10, 3, '2017-2018', '1', '1515', '2017-12-30', '', 'Marathi', 0, 0),
(10, 11, 7, '2017-2018', '123456789', '12345678', '2017-12-30', '', 'Marathi', 0, 0),
(11, 12, 4, '2017-2018', '1', '349062', '2017-12-30', '', 'Marathi', 0, 0),
(12, 13, 2, '2017-2018', '789456', '8888', '2017-12-30', '', 'Marathi', 0, 0),
(13, 14, 3, '2017-2018', '2525', '4657', '2017-12-30', '', 'Marathi', 0, 0),
(14, 15, 7, '2017-2018', '12345689', '12346', '2017-12-30', 'asdfghjkl', 'Semi-English', 0, 0),
(15, 16, 5, '2017-2018', '456', '455', '2017-12-30', '', 'Marathi', 0, 0),
(16, 17, 4, '2017-2018', '5', '340925', '2017-12-30', '', 'Marathi', 0, 0),
(17, 18, 3, '2017-2018', '2', '1234', '2017-12-30', '', 'Marathi', 0, 0),
(18, 19, 6, '2017-2018', '2', '32424', '2017-12-30', '', 'Marathi', 0, 0),
(19, 20, 1, '2017-2018', '2', '2343', '2017-12-30', '', 'Marathi', 0, 0),
(20, 21, 6, '2017-2018', '2', '423343', '2017-12-30', '', 'Marathi', 0, 0),
(21, 22, 8, '2017-2018', '2', '3432', '2017-12-30', '', 'Marathi', 0, 0),
(22, 23, 9, '2017-2018', '116116', '116116', '2017-12-30', '', 'Marathi', 0, 0),
(23, 24, 12, '2017-2018', '12665', '56145', '2017-12-30', '', 'Marathi', 0, 0),
(24, 25, 9, '2017-2018', '22', '74899', '2017-12-30', '', 'Marathi', 0, 0),
(25, 26, 8, '2017-2018', '2', '234', '2017-12-30', '', 'Marathi', 0, 0),
(26, 27, 10, '2017-2018', '595959', '595959', '2017-12-30', '', 'Marathi', 0, 0),
(27, 28, 3, '2017-2018', '5', '3455', '2017-12-30', '', 'Marathi', 0, 0),
(28, 29, 12, '2017-2018', '3434343', '3434343', '2017-12-30', '', 'Marathi', 0, 0),
(29, 30, 10, '2017-2018', '11', '501', '2017-12-30', '', 'Marathi', 0, 0),
(30, 31, 8, '2017-2018', '345', '3245', '2017-12-30', '', 'Marathi', 0, 0),
(31, 32, 4, '2017-2018', '4', '346087', '2017-12-30', '', 'Marathi', 0, 0),
(32, 33, 9, '2017-2018', '51515', '1515151', '2017-12-30', '', 'Marathi', 0, 0),
(33, 34, 13, '2017-2018', '1', '323234', '2017-12-30', '', 'Marathi', 0, 0),
(34, 35, 10, '2017-2018', '8', '5674', '2017-12-30', '', 'Marathi', 0, 0),
(35, 36, 9, '2017-2018', '77', '8521', '2017-12-30', '', 'Marathi', 0, 0),
(36, 37, 9, '2017-2018', '11111', '11111', '2017-12-30', '', 'Marathi', 0, 0),
(37, 38, 8, '2017-2018', '456', '34ty', '2017-12-30', '', 'Marathi', 0, 0),
(38, 39, 11, '2017-2018', '12', '502', '2017-12-30', '', 'Marathi', 0, 0),
(39, 40, 10, '2017-2018', '8', '8765', '2017-12-30', '', 'Marathi', 0, 0),
(40, 41, 11, '2017-2018', '7', '346078', '2017-12-30', '', 'Marathi', 0, 0),
(41, 42, 12, '2017-2018', '13', '550', '2017-12-30', '', 'Marathi', 0, 0),
(42, 43, 9, '2017-2018', '14', '5272', '2018-02-06', '', 'Marathi', 0, 0),
(43, 44, 10, '2017-2018', '2', '2123', '2018-02-06', '', 'Marathi', 0, 0),
(44, 45, 21, '2017-2018', '123', '6541', '2018-02-07', '', 'Marathi', 0, 0),
(45, 46, 18, '2017-2018', '45', '4561', '2018-02-07', '', 'Marathi', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_parent_details`
--

CREATE TABLE `student_parent_details` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `father_name` varchar(45) DEFAULT NULL,
  `father_mobileno` varchar(45) DEFAULT NULL,
  `father_aadharno` varchar(45) DEFAULT NULL,
  `father_occupation` varchar(45) DEFAULT NULL,
  `father_income` varchar(45) DEFAULT NULL,
  `father_email` varchar(45) DEFAULT NULL,
  `mother_name` varchar(45) DEFAULT NULL,
  `mother_mobileno` varchar(45) DEFAULT NULL,
  `mother_aadharno` varchar(45) DEFAULT NULL,
  `mother_occupation` varchar(45) DEFAULT NULL,
  `mother_income` varchar(45) DEFAULT NULL,
  `mother_email` varchar(45) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_parent_details`
--

INSERT INTO `student_parent_details` (`id`, `student_id`, `father_name`, `father_mobileno`, `father_aadharno`, `father_occupation`, `father_income`, `father_email`, `mother_name`, `mother_mobileno`, `mother_aadharno`, `mother_occupation`, `mother_income`, `mother_email`, `status`) VALUES
(1, 1, '', '', '', '', '', '', 'OMKAR SHIVADEKAR', '8793536987', '', '', '', 'omkarshivadekar.os@gmail.com', 0),
(2, 2, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(3, 3, '', '', '', '', '', '', '', '7787878787', '', '', '', 'o@gmail.com', 0),
(4, 4, '', '', '', '', '', '', 's', '', '', 'g', '', '', 0),
(5, 5, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(7, 7, 'OMKAR SHIVADEKAR', '08793536987', '', '', '', 'omkarshivadekar.os@gmail.com', 'OMKAR SHIVADEKAR', '8793536987', '', '', '', 'omkarshivadekar.os@gmail.com', 0),
(8, 8, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(9, 9, '', '', '', '', '', '', '', '8989898989', '', '', '', 'a@gmail.com', 0),
(10, 10, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(11, 11, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(12, 12, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(13, 13, '', '', '', '', '', '', '', '8998989889', '', '', '', 's@gmail.com', 0),
(14, 14, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(15, 15, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(16, 16, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(17, 17, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(18, 18, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(19, 19, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(20, 20, '', '', '', '', '', '', 'OMKAR SHIVADEKAR', '8793536987', '', '', '', 'omkarshivadekar.os@gmail.com', 0),
(21, 21, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(22, 22, '', '', '', '', '', '', 'OMKAR SHIVADEKAR', '8793536987', '', '', '', 'omkarshivadekar.os@gmail.com', 0),
(23, 23, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(24, 24, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(25, 25, '', '', '', '', '', 'c@gmail.com', '', '8787788778', '', '', '', 'c@gmail.com', 0),
(26, 26, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(27, 27, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(28, 28, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(29, 29, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(30, 30, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(31, 31, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(32, 32, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(33, 33, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(34, 34, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(35, 35, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(36, 36, '', '', '', '', '', 'a@gmail.com', '', '8884844848', '', '', '', 'a@gmail.com', 0),
(37, 37, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(38, 38, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(39, 39, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(40, 40, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(41, 41, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(42, 42, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(43, 43, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(44, 44, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(45, 45, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(46, 46, '', '', '', '', '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stud_transpotation_fee`
--

CREATE TABLE `stud_transpotation_fee` (
  `id` int(11) NOT NULL,
  `stud_id` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `fee` double NOT NULL,
  `month_id` varchar(50) NOT NULL,
  `discount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject_assignment`
--

CREATE TABLE `subject_assignment` (
  `id` int(11) NOT NULL,
  `fk_class_master_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(15) NOT NULL,
  `optional_status` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject_master`
--

CREATE TABLE `subject_master` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(30) NOT NULL,
  `school_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_master`
--

INSERT INTO `subject_master` (`id`, `subject_name`, `school_id`, `status`) VALUES
(1, 'MARATHI', 1, 0),
(2, 'HINDI', 1, 0),
(3, 'ENGLISH', 1, 0),
(4, 'SOCIAL SCIENCE', 2, 0),
(5, 'SCIENCE', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `trustee_info`
--

CREATE TABLE `trustee_info` (
  `id` int(11) NOT NULL,
  `edu_society_name` varchar(45) NOT NULL,
  `no_of_schools` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trustee_info`
--

INSERT INTO `trustee_info` (`id`, `edu_society_name`, `no_of_schools`, `status`) VALUES
(1, 'Shikshan Mandal, Karad', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `user_roll_id` int(11) DEFAULT '0',
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`id`, `school_id`, `user_roll_id`, `username`, `password`, `status`) VALUES
(1, NULL, 1, 'admin', '44ed17b20577a5bc8af775dec17a3615d395bcd7', 0),
(14, 1, 3, 'admin1', 'e7af5315c6436c0c9296fac20c878b9eafd4fade', 0),
(15, 2, 3, 'admin2', 'e9f5882fd14508816964b3872b785996e5192f83', 0),
(16, NULL, 2, 'trust', 'ecc9e84b5a6a3f8a4c9e38006aeb902908b870fa', 0),
(17, 1, 4, 'clerk', '658c8e8394cbdc3401283497aa7c51bbfbf2ab39', 0),
(18, 1, 6, 'librarian', 'c120861fb67f4565d3057c87b0b602e78fa6e645', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_roll_master`
--

CREATE TABLE `user_roll_master` (
  `id` int(11) NOT NULL,
  `roll_name` varchar(30) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roll_master`
--

INSERT INTO `user_roll_master` (`id`, `roll_name`, `status`) VALUES
(1, 'Admin', 0),
(2, 'Trustee', 0),
(3, 'Principal', 0),
(4, 'Clerk', 0),
(5, 'Teacher', 0),
(6, 'Librarian', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_master`
--

CREATE TABLE `vehicle_master` (
  `id` int(11) NOT NULL,
  `vehicle_no` varchar(15) DEFAULT NULL,
  `no_seats` int(11) DEFAULT NULL,
  `max_seats` int(11) DEFAULT NULL,
  `veh_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_master`
--

INSERT INTO `vehicle_master` (`id`, `vehicle_no`, `no_seats`, `max_seats`, `veh_type`) VALUES
(1, 'DS-ue-FD-f44', 6, 10, 'D DD D'),
(2, 'MH-12-JR-4767', 1, 2, 'SSKD'),
(3, 'MH-12-JR-4767', 1, 2, 'SSKD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academy_year`
--
ALTER TABLE `academy_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `access_control_master`
--
ALTER TABLE `access_control_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_access_control_master_1_idx` (`user_roll_id`);

--
-- Indexes for table `assigned_subjects`
--
ALTER TABLE `assigned_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignroute_master`
--
ALTER TABLE `assignroute_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `route_id` (`route_id`);

--
-- Indexes for table `bank_master`
--
ALTER TABLE `bank_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_type` (`cat_type`);

--
-- Indexes for table `book_details_master`
--
ALTER TABLE `book_details_master`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `Foriegnkey` (`book_no`);

--
-- Indexes for table `book_info_master`
--
ALTER TABLE `book_info_master`
  ADD PRIMARY KEY (`book_no`),
  ADD KEY `Foriegnkey` (`cat_id`) USING BTREE;

--
-- Indexes for table `caste`
--
ALTER TABLE `caste`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_caste_1_idx` (`category_id`),
  ADD KEY `fk_caste_2_idx` (`religion_id`);

--
-- Indexes for table `caste_category`
--
ALTER TABLE `caste_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `classroom_master`
--
ALTER TABLE `classroom_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_class_master_id` (`fk_class_master_id`);

--
-- Indexes for table `class_allocation`
--
ALTER TABLE `class_allocation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_student_id2` (`student_id`),
  ADD KEY `fk_class_allocation_id_idx` (`classroom_master`),
  ADD KEY `fk_class_master` (`classroom_master`);

--
-- Indexes for table `department_master`
--
ALTER TABLE `department_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destination_master`
--
ALTER TABLE `destination_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_type`
--
ALTER TABLE `fee_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_master_details`
--
ALTER TABLE `fine_master_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `issue_id` (`issue_id`),
  ADD KEY `fine_master_details_ibfk_1` (`stud_id`);

--
-- Indexes for table `fk_class_master`
--
ALTER TABLE `fk_class_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `std_id` (`std_id`),
  ADD KEY `fk_sec_std_id` (`fk_school_sec_id`);

--
-- Indexes for table `fk_school_section_details`
--
ALTER TABLE `fk_school_section_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `installment_and_mode`
--
ALTER TABLE `installment_and_mode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inward_outward_document_master`
--
ALTER TABLE `inward_outward_document_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inward_register_master`
--
ALTER TABLE `inward_register_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_id` (`document_id`);

--
-- Indexes for table `issue_book`
--
ALTER TABLE `issue_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Foriegnkey` (`bookdetails_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `stud_id` (`stud_id`);

--
-- Indexes for table `outward_register_master`
--
ALTER TABLE `outward_register_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_id` (`document_id`);

--
-- Indexes for table `pta_member_details`
--
ALTER TABLE `pta_member_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stud_id` (`stud_id`);

--
-- Indexes for table `religion`
--
ALTER TABLE `religion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `religion_name` (`religion_name`);

--
-- Indexes for table `route_master`
--
ALTER TABLE `route_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_master`
--
ALTER TABLE `school_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections_master`
--
ALTER TABLE `sections_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sender_receiver_master`
--
ALTER TABLE `sender_receiver_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `set_library_fine`
--
ALTER TABLE `set_library_fine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `profession_id` (`profession_id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `bank_id` (`bank_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `staff_master`
--
ALTER TABLE `staff_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `std_master`
--
ALTER TABLE `std_master`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_name` (`name`);

--
-- Indexes for table `stock_register_master`
--
ALTER TABLE `stock_register_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_religion_id_idx` (`religion_id`),
  ADD KEY `fk_caste_id_idx` (`caste_id`),
  ADD KEY `fk_casteCategory_id_idx` (`category_id`),
  ADD KEY `caste_id` (`caste_id`);

--
-- Indexes for table `student_official_details`
--
ALTER TABLE `student_official_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_student_id1` (`student_id`),
  ADD KEY `fk_class_allocation_id_idx` (`classroom_master`);

--
-- Indexes for table `student_parent_details`
--
ALTER TABLE `student_parent_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_student_id` (`student_id`);

--
-- Indexes for table `stud_transpotation_fee`
--
ALTER TABLE `stud_transpotation_fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_assignment`
--
ALTER TABLE `subject_assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `std_id` (`fk_class_master_id`);

--
-- Indexes for table `subject_master`
--
ALTER TABLE `subject_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `trustee_info`
--
ALTER TABLE `trustee_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `fk_user_master_1_idx` (`user_roll_id`),
  ADD KEY `fk_user_master_2_idx` (`school_id`);

--
-- Indexes for table `user_roll_master`
--
ALTER TABLE `user_roll_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_master`
--
ALTER TABLE `vehicle_master`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academy_year`
--
ALTER TABLE `academy_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `access_control_master`
--
ALTER TABLE `access_control_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `assigned_subjects`
--
ALTER TABLE `assigned_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignroute_master`
--
ALTER TABLE `assignroute_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_master`
--
ALTER TABLE `bank_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book_category`
--
ALTER TABLE `book_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `book_details_master`
--
ALTER TABLE `book_details_master`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `book_info_master`
--
ALTER TABLE `book_info_master`
  MODIFY `book_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `caste`
--
ALTER TABLE `caste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `caste_category`
--
ALTER TABLE `caste_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `classroom_master`
--
ALTER TABLE `classroom_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `class_allocation`
--
ALTER TABLE `class_allocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `department_master`
--
ALTER TABLE `department_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `destination_master`
--
ALTER TABLE `destination_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_type`
--
ALTER TABLE `fee_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `fine_master_details`
--
ALTER TABLE `fine_master_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `fk_class_master`
--
ALTER TABLE `fk_class_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `fk_school_section_details`
--
ALTER TABLE `fk_school_section_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `installment_and_mode`
--
ALTER TABLE `installment_and_mode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inward_outward_document_master`
--
ALTER TABLE `inward_outward_document_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inward_register_master`
--
ALTER TABLE `inward_register_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issue_book`
--
ALTER TABLE `issue_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `outward_register_master`
--
ALTER TABLE `outward_register_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pta_member_details`
--
ALTER TABLE `pta_member_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `religion`
--
ALTER TABLE `religion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `route_master`
--
ALTER TABLE `route_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `school_master`
--
ALTER TABLE `school_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sections_master`
--
ALTER TABLE `sections_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sender_receiver_master`
--
ALTER TABLE `sender_receiver_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `set_library_fine`
--
ALTER TABLE `set_library_fine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff_master`
--
ALTER TABLE `staff_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `std_master`
--
ALTER TABLE `std_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `stock_register_master`
--
ALTER TABLE `stock_register_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `student_official_details`
--
ALTER TABLE `student_official_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `student_parent_details`
--
ALTER TABLE `student_parent_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `stud_transpotation_fee`
--
ALTER TABLE `stud_transpotation_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject_assignment`
--
ALTER TABLE `subject_assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject_master`
--
ALTER TABLE `subject_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `trustee_info`
--
ALTER TABLE `trustee_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_roll_master`
--
ALTER TABLE `user_roll_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicle_master`
--
ALTER TABLE `vehicle_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `access_control_master`
--
ALTER TABLE `access_control_master`
  ADD CONSTRAINT `fk_access_control_master_1` FOREIGN KEY (`user_roll_id`) REFERENCES `user_roll_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `book_details_master`
--
ALTER TABLE `book_details_master`
  ADD CONSTRAINT `book_details_master_ibfk_1` FOREIGN KEY (`book_no`) REFERENCES `book_info_master` (`book_no`);

--
-- Constraints for table `book_info_master`
--
ALTER TABLE `book_info_master`
  ADD CONSTRAINT `book_info_master_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `book_category` (`cat_id`);

--
-- Constraints for table `caste`
--
ALTER TABLE `caste`
  ADD CONSTRAINT `fk_caste_1` FOREIGN KEY (`category_id`) REFERENCES `caste_category` (`id`),
  ADD CONSTRAINT `fk_caste_2` FOREIGN KEY (`religion_id`) REFERENCES `religion` (`id`);

--
-- Constraints for table `classroom_master`
--
ALTER TABLE `classroom_master`
  ADD CONSTRAINT `classroom_master_ibfk_1` FOREIGN KEY (`fk_class_master_id`) REFERENCES `fk_class_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `class_allocation`
--
ALTER TABLE `class_allocation`
  ADD CONSTRAINT `fk_classroom_master2` FOREIGN KEY (`classroom_master`) REFERENCES `classroom_master` (`id`),
  ADD CONSTRAINT `fk_student_id2` FOREIGN KEY (`student_id`) REFERENCES `student_details` (`id`);

--
-- Constraints for table `fine_master_details`
--
ALTER TABLE `fine_master_details`
  ADD CONSTRAINT `fine_master_details_ibfk_1` FOREIGN KEY (`stud_id`) REFERENCES `student_details` (`id`),
  ADD CONSTRAINT `fine_master_details_ibfk_2` FOREIGN KEY (`issue_id`) REFERENCES `issue_book` (`id`);

--
-- Constraints for table `fk_class_master`
--
ALTER TABLE `fk_class_master`
  ADD CONSTRAINT `fk_class_master_ibfk_1` FOREIGN KEY (`std_id`) REFERENCES `std_master` (`id`),
  ADD CONSTRAINT `fk_class_master_ibfk_2` FOREIGN KEY (`fk_school_sec_id`) REFERENCES `fk_school_section_details` (`id`);

--
-- Constraints for table `fk_school_section_details`
--
ALTER TABLE `fk_school_section_details`
  ADD CONSTRAINT `fk_school_section_details_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `school_master` (`id`),
  ADD CONSTRAINT `fk_school_section_details_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `sections_master` (`id`);

--
-- Constraints for table `inward_register_master`
--
ALTER TABLE `inward_register_master`
  ADD CONSTRAINT `inward_register_master_ibfk_1` FOREIGN KEY (`document_id`) REFERENCES `inward_outward_document_master` (`id`);

--
-- Constraints for table `issue_book`
--
ALTER TABLE `issue_book`
  ADD CONSTRAINT `issue_book_ibfk_1` FOREIGN KEY (`bookdetails_id`) REFERENCES `book_details_master` (`book_id`),
  ADD CONSTRAINT `issue_book_ibfk_2` FOREIGN KEY (`stud_id`) REFERENCES `student_details` (`id`),
  ADD CONSTRAINT `issue_book_ibfk_3` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `pta_member_details`
--
ALTER TABLE `pta_member_details`
  ADD CONSTRAINT `pta_member_details_ibfk_1` FOREIGN KEY (`stud_id`) REFERENCES `student_details` (`id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`profession_id`) REFERENCES `user_roll_master` (`id`),
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`school_id`) REFERENCES `school_master` (`id`),
  ADD CONSTRAINT `staff_ibfk_3` FOREIGN KEY (`bank_id`) REFERENCES `bank_master` (`id`),
  ADD CONSTRAINT `staff_ibfk_4` FOREIGN KEY (`subject_id`) REFERENCES `subject_master` (`id`);

--
-- Constraints for table `student_details`
--
ALTER TABLE `student_details`
  ADD CONSTRAINT `fk_casteCategory_id` FOREIGN KEY (`category_id`) REFERENCES `caste_category` (`id`),
  ADD CONSTRAINT `fk_caste_id` FOREIGN KEY (`caste_id`) REFERENCES `caste` (`id`),
  ADD CONSTRAINT `fk_religion_id` FOREIGN KEY (`religion_id`) REFERENCES `religion` (`id`);

--
-- Constraints for table `student_official_details`
--
ALTER TABLE `student_official_details`
  ADD CONSTRAINT `fk_classroom_master` FOREIGN KEY (`classroom_master`) REFERENCES `classroom_master` (`id`),
  ADD CONSTRAINT `fk_student_master_id` FOREIGN KEY (`student_id`) REFERENCES `student_details` (`id`);

--
-- Constraints for table `student_parent_details`
--
ALTER TABLE `student_parent_details`
  ADD CONSTRAINT `fk_student_id` FOREIGN KEY (`student_id`) REFERENCES `student_details` (`id`);

--
-- Constraints for table `subject_assignment`
--
ALTER TABLE `subject_assignment`
  ADD CONSTRAINT `subject_assignment_ibfk_1` FOREIGN KEY (`fk_class_master_id`) REFERENCES `fk_class_master` (`id`),
  ADD CONSTRAINT `subject_assignment_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject_master` (`id`);

--
-- Constraints for table `subject_master`
--
ALTER TABLE `subject_master`
  ADD CONSTRAINT `subject_master_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `school_master` (`id`);

--
-- Constraints for table `user_master`
--
ALTER TABLE `user_master`
  ADD CONSTRAINT `fk2` FOREIGN KEY (`user_roll_id`) REFERENCES `user_roll_master` (`id`),
  ADD CONSTRAINT `user_master_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `school_master` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
