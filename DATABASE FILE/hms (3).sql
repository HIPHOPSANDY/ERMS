-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2022 at 03:12 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'user', '123456', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'Demo test', 7, 6, 600, '2019-06-29', '9:15 AM', '2019-06-23 18:31:28', 1, 0, '0000-00-00 00:00:00'),
(4, 'Ayurveda', 5, 5, 8050, '2019-11-08', '1:00 PM', '2019-11-05 10:28:54', 1, 1, '0000-00-00 00:00:00'),
(5, 'Dermatologist', 9, 7, 500, '2019-11-30', '5:30 PM', '2019-11-10 18:41:34', 1, 0, '2019-11-10 18:48:30'),
(6, 'Dentist', 1, 2, 500, '2022-03-27', '12:45 PM', '2022-03-19 07:05:06', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'Anuj', 'New Delhi', '500', 8285703354, 'anuj.lpu1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:25:37', '2019-06-30 12:11:05'),
(2, 'Homeopath', 'Sarita Pandey', 'Varanasi', '600', 2147483647, 'sarita@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:51:51', '0000-00-00 00:00:00'),
(3, 'General Physician', 'Nitesh Kumar', 'Ghaziabad', '1200', 8523699999, 'nitesh@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:43:35', '0000-00-00 00:00:00'),
(4, 'Homeopath', 'Vijay Verma', 'New Delhi', '700', 25668888, 'vijay@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:45:09', '0000-00-00 00:00:00'),
(5, 'Ayurveda', 'Sanjeev', 'Gurugram', '8050', 442166644646, 'sanjeev@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:47:07', '0000-00-00 00:00:00'),
(6, 'General Physician', 'Amrita', 'New Delhi India', '2500', 45497964, 'amrita@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:52:50', '0000-00-00 00:00:00'),
(7, 'Demo test', 'ADMIN', 'New Delhi India', '200', 852888888, 'admin@admin.com', 'e10adc3949ba59abbe56e057f20f883e', '2017-01-07 08:08:58', '0000-00-00 00:00:00'),
(8, 'Ayurveda', 'Test Doctor', 'Xyz Abc New Delhi', '600', 1234567890, 'test@test.com', '202cb962ac59075b964b07152d234b70', '2019-06-23 17:57:43', '2019-06-23 18:06:06'),
(9, 'Dermatologist', 'Anuj kumar', 'New Delhi India 110001', '500', 1234567890, 'anujk@test.com', 'f925916e2754e5e03f75dd58a5733251', '2019-11-10 18:37:47', '2019-11-10 18:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-03-17 15:05:27', '17-03-2022 08:35:50 PM', 1),
(21, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-03-17 15:06:54', '17-03-2022 08:47:12 PM', 1),
(22, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2022-03-19 05:27:03', NULL, 0),
(23, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2022-03-19 05:27:18', NULL, 0),
(24, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-03-19 07:05:47', '19-03-2022 12:36:28 PM', 1),
(25, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-03-19 07:08:12', '19-03-2022 12:40:14 PM', 1),
(26, NULL, 'Anuj', 0x3a3a3100000000000000000000000000, '2022-03-19 07:12:25', NULL, 0),
(27, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-03-19 07:13:37', '19-03-2022 12:54:05 PM', 1),
(28, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-03-23 16:46:47', '23-03-2022 10:21:55 PM', 1),
(29, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-23 16:56:31', NULL, 0),
(30, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-27 15:42:18', NULL, 0),
(31, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-03-27 16:22:43', '27-03-2022 10:45:24 PM', 1),
(32, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-03-27 17:26:25', NULL, 1),
(33, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-03-27 17:39:51', NULL, 0),
(34, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-27 17:40:19', NULL, 0),
(35, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-03-28 16:36:50', NULL, 1),
(36, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-03-29 16:09:08', '29-03-2022 09:44:46 PM', 1),
(37, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-04-02 13:25:25', '02-04-2022 06:57:17 PM', 1),
(38, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-04-02 13:44:04', NULL, 1),
(39, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-04-30 11:19:17', NULL, 0),
(40, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-04-30 11:19:35', '30-04-2022 05:03:07 PM', 1),
(41, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-04-30 11:33:53', '30-04-2022 05:05:51 PM', 1),
(42, 7, 'admin@admin.com', 0x3a3a3100000000000000000000000000, '2022-04-30 11:54:07', '30-04-2022 05:25:28 PM', 1),
(43, 7, 'admin@admin.com', 0x3a3a3100000000000000000000000000, '2022-04-30 12:09:59', '30-04-2022 05:40:36 PM', 1),
(44, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2022-05-15 06:33:43', NULL, 0),
(45, 7, 'admin@admin.com', 0x3a3a3100000000000000000000000000, '2022-05-15 06:34:12', '15-05-2022 12:31:04 PM', 1),
(46, 7, 'admin@admin.com', 0x3a3a3100000000000000000000000000, '2022-05-15 07:11:18', '15-05-2022 08:19:10 PM', 1),
(47, 7, 'admin@admin.com', 0x3a3a3100000000000000000000000000, '2022-05-15 14:49:58', '15-05-2022 08:26:10 PM', 1),
(48, 7, 'admin@admin.com', 0x3a3a3100000000000000000000000000, '2022-05-25 15:44:45', '25-05-2022 09:23:11 PM', 1),
(49, 7, 'admin@admin.com', 0x3a3a3100000000000000000000000000, '2022-05-25 15:54:38', NULL, 1),
(50, 7, 'admin@admin.com', 0x3a3a3100000000000000000000000000, '2022-05-27 14:30:34', '27-05-2022 08:18:57 PM', 1),
(51, 7, 'admin@admin.com', 0x3a3a3100000000000000000000000000, '2022-05-27 15:23:56', NULL, 1),
(52, 7, 'admin@admin.com', 0x3a3a3100000000000000000000000000, '2022-05-28 18:23:12', '29-05-2022 12:32:32 AM', 1),
(53, 7, 'admin@admin.com', 0x3a3a3100000000000000000000000000, '2022-05-28 19:03:54', '29-05-2022 12:34:39 AM', 1),
(54, NULL, 'admin@admin.com', 0x3a3a3100000000000000000000000000, '2022-05-29 02:57:18', NULL, 0),
(55, 7, 'admin@admin.com', 0x3a3a3100000000000000000000000000, '2022-05-29 02:57:35', NULL, 1),
(56, 7, 'admin@admin.com', 0x3a3a3100000000000000000000000000, '2022-05-29 09:30:43', NULL, 1),
(57, 7, 'admin@admin.com', 0x3a3a3100000000000000000000000000, '2022-05-29 13:06:42', '29-05-2022 06:37:46 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 06:37:25', '0000-00-00 00:00:00'),
(2, 'General Physician', '2016-12-28 06:38:12', '0000-00-00 00:00:00'),
(3, 'Dermatologist', '2016-12-28 06:38:48', '0000-00-00 00:00:00'),
(4, 'Homeopath', '2016-12-28 06:39:26', '0000-00-00 00:00:00'),
(5, 'Ayurveda', '2016-12-28 06:39:51', '0000-00-00 00:00:00'),
(6, 'Dentist', '2016-12-28 06:40:08', '0000-00-00 00:00:00'),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', '0000-00-00 00:00:00'),
(9, 'Demo test', '2016-12-28 07:37:39', '0000-00-00 00:00:00'),
(10, 'Bones Specialist demo', '2017-01-07 08:07:53', '0000-00-00 00:00:00'),
(11, 'Test', '2019-06-23 17:51:06', '2019-06-23 17:55:06'),
(12, 'Dermatologist', '2019-11-10 18:36:36', '2019-11-10 18:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'test user', 'test@gmail.com', 2523523522523523, ' This is sample text for the test.', '2019-06-29 19:03:08', 'Test Admin Remark', '2019-06-30 12:55:23', 1),
(2, 'Anuj kumar', 'phpgurukulofficial@gmail.com', 1111111111111111, ' This is sample text for testing.  This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing.', '2019-06-30 13:06:50', NULL, NULL, NULL),
(3, 'fdsfsdf', 'fsdfsd@ghashhgs.com', 3264826346, 'sample text   sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  ', '2019-11-10 18:53:48', 'vfdsfgfd', '2019-11-10 18:54:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `NextVisitDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`, `NextVisitDate`) VALUES
(2, 3, '120/185', '80/120', '5', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '2022-05-15 08:26:38', '2022-05-15 08:26:38'),
(3, 2, '90/120', '92/190', '5', '99 deg', '#Sugar High\r\n1.Petz 30', '2022-05-15 08:26:38', '2022-05-15 08:26:38'),
(4, 1, '125/200', '86/120', '5', '98 deg', '# blood pressure is high\r\n1.koil cipla', '2022-05-15 08:26:38', '2022-05-15 08:26:38'),
(5, 1, '96/120', '98/120', '5', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', '2022-05-15 08:26:38', '2022-05-15 08:26:38'),
(6, 4, '90/120', '120', '5', '98 F', '#blood sugar high\r\n#Asthma problem', '2022-05-15 08:26:38', '2022-05-15 08:26:38'),
(7, 5, '80/120', '120', '5', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup', '2022-05-15 08:26:38', '2022-05-15 08:26:38'),
(8, 3, '122', 'a', '5', '19@', 'asdfas', '2022-05-15 08:26:38', '2022-05-15 08:26:38'),
(9, 4, 'test', 'ddd', '5', 'asdf', 'asdf', '2022-05-15 08:26:38', '2022-05-15 08:26:38'),
(10, 6, 'ASDF', 'ASDF', '5', 'ASDF', 'ASDF', '2022-05-15 08:26:38', '2022-05-15 08:26:38'),
(11, 6, 'asdf', 'adsf', '5', '19@', 'test blood sample', '2022-05-15 07:51:49', '2022-05-15 07:51:49'),
(12, 6, '122', '45 c', '9', 'HIV', 'SOON', '2022-05-15 14:28:35', '2022-05-15 14:28:35'),
(13, 3, '123', 'adsf', '10', 'asdf', 'hiv positive ', '2022-05-28 18:28:11', '2022-05-28 18:28:11'),
(14, 3, 'asdf', 'asdf', '10', 'adsf', 'asdfasdf', '2022-05-28 18:37:22', '2022-05-28 18:37:22'),
(15, 3, 'asdfasd', 'sss', '10', 'ddd', 'okok', '2022-05-28 18:38:28', '2022-05-28 18:38:28'),
(16, 3, 'adf1', 'adsf', '10', 'ddd', 'asdfasdfsd', '2022-05-28 18:45:34', '2022-05-28 18:45:34'),
(17, 3, 'kjh', 'poi', '30', 'kh', 'ok', '2022-05-28 19:01:47', '2022-05-28 19:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `doctersession` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`, `doctersession`) VALUES
(1, 1, 'Manisha Jha', 4558968789, 'test@gmail.com', 'Female', '\"\"J&K Block J-127, Laxmi Nagar New Delhi', 26, 'She is diabetic patient', '2019-11-04 21:38:06', '2022-03-28 17:17:40', '01'),
(2, 5, 'Raghu Yadav', 9797977979, 'raghu@gmail.com', 'Male', 'ABC Apartment Mayur Vihar Ph-1 New Delhi', 39, 'No', '2019-11-05 10:40:13', '2022-03-28 17:17:40', '01'),
(3, 7, 'santhosh', 9878978798, 'jk@gmail.com', 'Male', '\"fdghyj', 0, 'No', '2019-11-05 10:49:41', '2022-03-28 17:18:49', '26'),
(4, 7, 'Manav Sharma', 9888988989, 'sharma@gmail.com', 'Male', 'L-56,Ashok Nagar New Delhi-110096', 45, 'He is long suffered by asthma', '2019-11-06 14:33:54', '2022-03-28 17:17:40', '01'),
(5, 9, 'John', 1234567890, 'john@test.com', 'male', 'Test ', 25, 'THis is sample text for testing.', '2019-11-10 18:49:24', '2022-03-28 17:17:40', '01'),
(6, 7, 'santhosh', 1232342342, 'santhoshkumar24cs@gmail.com', 'male', '42/1,VINAYAGAR KOVIL STREET, , CUDDA', 0, 'add', '2022-03-19 07:09:00', '2022-03-28 17:17:40', '01'),
(7, 1, 'kumar', 8190085191, 'kumar@gmail.com', 'male', 'ddd', 24, 'covid', '2022-05-15 07:08:13', '2022-05-15 07:08:13', '21'),
(8, 7, 'ajith', 2394820394, 'ajith@gamil.com', 'female', 'laskdjflkasdj', 54, 'fever', '2022-05-29 09:35:27', '2022-05-29 09:35:27', '2');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-17 14:58:03', '17-03-2022 08:34:54 PM', 1),
(25, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-19 07:04:44', '19-03-2022 12:35:26 PM', 1),
(26, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-23 16:57:00', NULL, 1),
(27, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-23 17:30:55', '23-03-2022 11:05:03 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(2, 'Sarita pandey', 'New Delhi India', 'Delhi', 'female', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-30 05:34:39', '0000-00-00 00:00:00'),
(3, 'Amit', 'New Delhi', 'New delhi', 'male', 'amit@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 06:36:53', '0000-00-00 00:00:00'),
(4, 'Rahul Singh', 'New Delhi', 'New delhi', 'male', 'rahul@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:41:14', '0000-00-00 00:00:00'),
(5, 'Amit kumar', 'New Delhi India', 'Delhi', 'male', 'amit12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:00:26', '0000-00-00 00:00:00'),
(6, 'Test user', 'New Delhi', 'Delhi', 'male', 'tetuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-06-23 18:24:53', '2019-06-23 18:36:09'),
(7, 'John', 'USA', 'Newyork', 'male', 'john@test.com', 'f925916e2754e5e03f75dd58a5733251', '2019-11-10 18:40:21', '2019-11-10 18:40:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
