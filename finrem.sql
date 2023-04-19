-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2023 at 05:36 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finrem`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `bank_id` varchar(20) NOT NULL,
  `cust_id` varchar(20) NOT NULL,
  `loan_acctno` varchar(20) NOT NULL,
  `acct_opening` date NOT NULL,
  `savings_acctno` varchar(20) NOT NULL,
  `loan_type` varchar(50) NOT NULL,
  `loan_scheme` varchar(50) NOT NULL,
  `sanction_amt` double(10,3) DEFAULT NULL,
  `sanction_date` date NOT NULL,
  `tenure` int(10) NOT NULL,
  `last_review` date NOT NULL,
  `next_review` date NOT NULL,
  `trigPriority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Triggers `accounts`
--
DELIMITER $$
CREATE TRIGGER `acctToTask` AFTER INSERT ON `accounts` FOR EACH ROW BEGIN
set @bankid=(select bank_id from accounts where trigPriority=1);
set @custid=(select cust_id from accounts where trigPriority=1);
set @loanacct=(select loan_acctno from accounts where trigPriority=1);
set @taskdate=(select next_review from accounts where trigPriority=1);
insert into tasks values(@bankid,@custid,@loanacct,'review',@taskDate);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `bank_id` varchar(20) NOT NULL,
  `cust_id` varchar(20) NOT NULL,
  `cust_name` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `dob` date NOT NULL,
  `aadhar` varchar(12) NOT NULL,
  `pan` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `house_number` varchar(100) NOT NULL,
  `st_name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `city` varchar(30) NOT NULL,
  `taluk` varchar(60) NOT NULL,
  `district` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `pincode` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`bank_id`, `cust_id`, `cust_name`, `phone`, `dob`, `aadhar`, `pan`, `email`, `house_number`, `st_name`, `location`, `city`, `taluk`, `district`, `state`, `pincode`) VALUES
('BARB0RAJAKI', '156541516', 'Satya', '9789933635', '2003-11-05', '123441233214', '1236547890', 'satya05112003@gmail.com', 'flat f6 block 14/15 sumeru puthur city', 'mappedu alapakkam road', 'tambaram', 'chennai', 'chengalpattu', 'chengalpattu', 'tamil nadu', '600126'),
('BARB0RAJAKI', '26262626', 'dummy', '5161656161', '2023-04-07', '651651656522', '8468446516', 'asdasdas@gsed', 'afdsafas efef', 'aefasgrgasrg wrgarsgarg', 'esefwef', 'eefed', 'sddvsdv', 'sfsf', 'sff', '600073'),
('BARB0RAJAKI', '26262627', 'dfadf', '7896321452', '2023-04-07', '651651656529', '8467684665', 'dcdc5@rajalakshmi.edu.in', 'xvdzsvzfv segsadv', 'sadassav asrgasv', 'asgasrrvr grfas', 'sadvsavsadv asdfa', 'fsafasas', 'vasvsdvsv awsfas', 'Tamil Nadudvvsasvsav', '600126'),
('BARB0RAJAKI', '566115206', 'vhvhjb', '1651564351', '2023-04-15', '646516161651', '1651616511', 'pcanil@gmail.com', 'bjhbj bjhun', 'hbhjgujnkj hk', 'bjbinli hkn', 'kbkjkn', 'gjgiuhkj', 'gbjhbjhb', 'jygyjbjhbk', '600000'),
('BARB0RAJAKI', '62616112', 'Durga', '6383292831', '2005-04-29', '516516516519', '6516516516', '210701235@rajalakshmi.edu.in', 'Flat f6 blk 14 15 sumeru puthur city', 'mappedu', 'tamb', 'chennai', 'chen', 'chen', 'tn', '600126');

-- --------------------------------------------------------

--
-- Table structure for table `documentation`
--

CREATE TABLE `documentation` (
  `bank_id` varchar(20) NOT NULL,
  `cust_id` varchar(20) NOT NULL,
  `loan_acctno` varchar(20) NOT NULL,
  `insurance_comp` varchar(50) NOT NULL,
  `insurance_type` varchar(50) NOT NULL,
  `insurance_from` date NOT NULL,
  `insurance_to` date NOT NULL,
  `premium` double(10,2) NOT NULL,
  `processing_charges` double(10,2) NOT NULL,
  `mortgage_charges` double(10,2) NOT NULL,
  `stamp_charges` double(10,2) NOT NULL,
  `inspection_charges` double(10,2) NOT NULL,
  `vetting_charges` double(10,2) NOT NULL,
  `post_sanction_inspection` tinyint(1) NOT NULL,
  `trigPriority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Triggers `documentation`
--
DELIMITER $$
CREATE TRIGGER `documentationToTask` AFTER INSERT ON `documentation` FOR EACH ROW BEGIN
set @custid2=(select cust_id from documentation where trigPriority=1);
set @bankid2=(select bank_id from documentation where trigPriority=1);
set @loanacct2=(select loan_acctno from documentation where trigPriority=1);
set @taskdate2=(select insurance_to from documentation where trigPriority=1);
insert into tasks values(@bankid2,@custid2,@loanacct2,'insurance',@taskDate2);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `userid` varchar(20) NOT NULL,
  `rating` int(2) NOT NULL,
  `comments` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminder`
--

CREATE TABLE `reminder` (
  `userid` varchar(30) NOT NULL,
  `remEmail` text NOT NULL,
  `recurring` tinyint(1) NOT NULL,
  `day` int(11) NOT NULL,
  `week` int(11) NOT NULL,
  `month` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reminder`
--

INSERT INTO `reminder` (`userid`, `remEmail`, `recurring`, `day`, `week`, `month`) VALUES
('anil', 'pcanilkumar29@gmail.com', 1, 1, 0, 0),
('satya', 'saddsd@ga', 1, 0, 1, 0),
('latha', '', 1, 1, 0, 0),
('durga', '', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `bank_id` varchar(20) NOT NULL,
  `cust_id` varchar(20) NOT NULL,
  `loan_acctno` varchar(20) NOT NULL,
  `task_type` varchar(20) NOT NULL,
  `task_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`bank_id`, `cust_id`, `loan_acctno`, `task_type`, `task_date`) VALUES
('BARB0RAJAKI', '62616112', '51616', 'review', '2023-04-30'),
('BARB0RAJAKI', '62616112', '5161664654', 'review', '2023-04-22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` varchar(20) NOT NULL,
  `branchid` varchar(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `branchid`, `name`, `password`, `email`) VALUES
('anil', 'BARB0VJCHEP', 'Anil Kumar', '$2y$10$Knqt6bDSh.8Q2qQdR2hjR.EBdvqmGIA9SpRWrWjvQ/v3HiewPS2De', 'pcanilkumar29@gmail.com'),
('durga', 'BARB0RAJAKI', 'Durga', '$2y$10$4OkqnXgAFx6OkFpUwrRlz.lkNwU3CgZWpeUlCtbrh8ljtqJP4Pb4u', 'bhavna.a04200529@gmail.com'),
('latha', 'BARB0AARANI', 'Latha A', '$2y$10$hrqYhX7DODiFC7cf5yQ6RedAyNvyf62cd2xDWnx8VUoGSrkMb2o.O', 'lathaa271974@gmail.com'),
('satya', 'BARB0RAJAKI', 'Satyanarayana', '$2y$10$ceFCRV1YgMJutwaqgbMFZuhXQjb42aLRSBkazGDnqhlFCPfpY3urq', 'satya05112003@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `documentation`
--
ALTER TABLE `documentation`
  ADD PRIMARY KEY (`loan_acctno`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`loan_acctno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
