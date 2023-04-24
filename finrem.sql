-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2023 at 02:12 PM
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
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`bank_id`, `cust_id`, `loan_acctno`, `acct_opening`, `savings_acctno`, `loan_type`, `loan_scheme`, `sanction_amt`, `sanction_date`, `tenure`, `last_review`, `next_review`, `trigPriority`) VALUES
('BARB0RAJAKI', '623', '234324324', '2023-04-14', '23423', 'Two Wheeler', 'dsfasf', 2343.000, '2023-04-19', 5, '2023-04-23', '2023-05-07', 0),
('BARB0RAJAKI', '62616112', '5161611365', '2023-04-03', '1651615662626265', 'Two Wheeler', 'afdsf wfdasv', 15.000, '2023-04-04', 15, '2023-04-07', '2023-05-05', 1),
('BARB0RAJAKI', '626161124', '51616616', '2023-03-27', '1651615662626343', 'two_wheeler', 'gsdv', 5135.000, '2023-04-01', 15, '2023-04-03', '2023-04-15', 0),
('BARB0RAJAKI', '62616112', '516166465455', '2023-03-31', '1651615662626265', 'car', 'afdsf wfdasv', 6262.000, '2023-04-12', 5, '2023-04-24', '2023-05-07', 0),
('BARB0RAJAKI', '62616118', '5161664654551515', '2023-04-07', '1651615662626343', 'two_wheeler', 'afdsf wfdasv', 5161.000, '2023-04-27', 2, '2023-04-07', '2023-04-29', 0),
('BARB0RAJAKI', '62616112', '5161664654551518', '2023-04-06', '1651615662626265', 'Personal', 'afdsf wfdasv', 42.000, '2023-04-28', 5, '2023-04-14', '2023-04-23', 0),
('BARB0RAJAKI', '62616112', '5161664654551519', '2023-04-04', '1651615662626265', 'Two Wheeler', 'afdsf wfdasv', 326.000, '2023-04-05', 4, '2023-04-23', '2023-04-28', 0),
('BARB0RAJAKI', '62616184', '5161664654899', '2023-03-27', '165161566262626812', 'Business', 'jjhbj hkh', 5000.000, '2023-03-31', 15, '2023-04-07', '2023-04-27', 0);

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
DELIMITER $$
CREATE TRIGGER `acctToTaskUp` AFTER UPDATE ON `accounts` FOR EACH ROW BEGIN
set @loanacct=(select loan_acctno from accounts where trigPriority=1);
set @taskdate=(select next_review from accounts where trigPriority=1);
UPDATE tasks set task_date=@taskdate where loan_acctno=@loanacct;
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
('BARB0RAJAKI', '123456789', 'tempc', '9789933635', '2023-03-30', '516516516519', '6516516516', '210701235@rajalakshmi.edu.in', 'Flat f6 blk 14 15 sumeru puthur city', 'asdsa', 'tamb', 'CHENNAI', 'af', 'afa', 'Tamil Nadu', '600126'),
('BARB0RAJAKI', '156541516', 'Satya', '9789933635', '2003-11-05', '123441233214', '1236547890', 'satya05112003@gmail.com', 'flat f6 block 14/15 sumeru puthur city', 'mappedu alapakkam road', 'tambaram', 'chennai', 'chengalpattu', 'chengalpattu', 'tamil nadu', '600126'),
('BARB0RAJAKI', '26262626', 'dummy', '5161656161', '2023-04-07', '651651656522', '8468446516', 'asdasdas@gsed', 'afdsafas efef', 'aefasgrgasrg wrgarsgarg', 'esefwef', 'eefed', 'sddvsdv', 'sfsf', 'sff', '600073'),
('BARB0RAJAKI', '26262627', 'dfadf', '7896321452', '2023-04-07', '651651656529', '8467684665', 'dcdc5@rajalakshmi.edu.in', 'xvdzsvzfv segsadv', 'sadassav asrgasv', 'asgasrrvr grfas', 'sadvsavsadv asdfa', 'fsafasas', 'vasvsdvsv awsfas', 'Tamil Nadudvvsasvsav', '600126'),
('BARB0RAJAKI', '566115206', 'vhvhjb', '1651564351', '2023-04-15', '646516161651', '1651616511', 'pcanil@gmail.com', 'bjhbj bjhun', 'hbhjgujnkj hk', 'bjbinli hkn', 'kbkjkn', 'gjgiuhkj', 'gbjhbjhb', 'jygyjbjhbk', '600000'),
('BARB0RAJAKI', '62616112', 'Durga', '6383292831', '2005-04-29', '516516516519', '6516516516', '210701235@rajalakshmi.edu.in', 'Flat f6 blk 14 15 sumeru puthur city', 'mappedu', 'tamb', 'chennai', 'chen', 'chen', 'tn', '600126'),
('BARB0RAJAKI', '626161124', 'sdas', '1651564351', '2023-04-14', '516516516519', '6516516516', 'pcanil@gmail.com', 'bjhbj bjhun', 'asdsa', 'as', 'asa', 'af', 'afa', 'afda', '600789'),
('BARB0RAJAKI', '626161129', 'narayana', '2233445566', '2003-11-05', '123456', '12345678', 'naru@gmail.com', '12', 'sana', 'chennai', 'CHENNAI', 'dikki', 'dokku', 'Tamil Nadu', '600126'),
('BARB0RAJAKI', '626161177', 'dsaf', 'sdf', '2023-03-27', '6846151', '64551', 'sdf@ds', 'dvds fasd', 'sdvds sdsd', 'sdds ', 'sdfds', 'sdds', 'sdsdv', 'sdvsd', '600000'),
('BARB0RAJAKI', '62616184', 'asf', '6383292831', '2023-04-15', '516516516519', '6516516516', 'satya05112003@gmail.com', 'Flat f6 blk 14 15 sumeru puthur city', 'mappedu', 'tamb', 'CHENNAI', 'gjgiuhkj', 'gbjhbjhb', 'Tamil Nadu', '600126'),
('BARB0VJCHEP', '62616189', 'Durga', '9789933635', '2023-04-13', '516516516519', '6516516516', 'pcanilkumar29@gmail.com', 'Flat f6 blk 14 15 sumeru puthur city', 'mappedu', 'tamb', 'CHENNAI', 'chen', 'chen', 'Tamil Nadu', '600126'),
('BARB0RAJAKI', '7516162', 'Santhosh', '6262626262', '2023-03-27', '51651646153', '5451355113', 'kjanfkadnjf@santhosh', 'aefdf efd', ' sdsdvsads', 'avsdv', 'chennai', 'thri', 'thir', 'tn', '600000'),
('BARB0RAJAKI', '9799278', 'temp', '9789933635', '2023-03-31', '516516516519', '6516516516', 'satya05112003@gmail.com', 'Flat f6 blk 14 15 sumeru puthur city', 'asdsa', 'tamb', 'CHENNAI', 'chen', 'gbjhbjhb', 'Tamil Nadu', '600126');

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
-- Dumping data for table `documentation`
--

INSERT INTO `documentation` (`bank_id`, `cust_id`, `loan_acctno`, `insurance_comp`, `insurance_type`, `insurance_from`, `insurance_to`, `premium`, `processing_charges`, `mortgage_charges`, `stamp_charges`, `inspection_charges`, `vetting_charges`, `post_sanction_inspection`, `trigPriority`) VALUES
('BARB0RAJAKI', '623', '234324324', 'Star', 'Property', '2023-04-05', '2023-05-07', 234324.00, 23432.00, 23432.00, 23432.00, 23432.00, 234.00, 0, 0),
('BARB0RAJAKI', '62616112', '5161611365', 'Niva Bupa', 'Fire', '2023-04-06', '2023-04-09', 5006.00, 61.00, 616.00, 616.00, 616.00, 6626.00, 0, 1),
('BARB0RAJAKI', '626161124', '51616616', 'Tata AIG', 'Stock', '2023-04-23', '2023-05-07', 626.00, 64.00, 68186.00, 946.00, 6216.00, 616.00, 0, 0),
('BARB0RAJAKI', '62616112', '516166465455', 'Niva Bupa', 'Vehicle', '2023-04-23', '2023-04-30', 2626.00, 6265.00, 626.00, 62.00, 516.00, 51.00, 0, 0),
('BARB0RAJAKI', '62616118', '5161664654551515', 'Star', 'Property', '2023-04-23', '2023-05-07', 623.00, 1111.00, 15.00, 5151.00, 2162.00, 12626.00, 0, 0),
('BARB0RAJAKI', '62616112', '5161664654551518', 'Tata AIG', 'Property', '2023-05-05', '2023-05-07', 453.00, 54.00, 53.00, 453.00, 53.00, 54.00, 0, 0),
('BARB0RAJAKI', '62616112', '5161664654551519', 'India First', 'Burglary', '2023-04-19', '2023-05-06', 15616.00, 26.00, 33332.00, 23.00, 23.00, 23.00, 0, 0),
('BARB0RAJAKI', '62616184', '5161664654899', 'Star', 'Vehicle', '2023-04-04', '2023-05-07', 600.00, 30.00, 56.00, 51.00, 515.00, 516.00, 0, 0);

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
DELIMITER $$
CREATE TRIGGER `documentationToTaskUp` AFTER UPDATE ON `documentation` FOR EACH ROW BEGIN 
set @loanacct3=(select loan_acctno from documentation where trigPriority=1); 
set @taskdate3=(select insurance_to from documentation where trigPriority=1); 
update tasks set task_date=@taskdate3 where loan_acctno=@loanacct3; 
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
('durga', 'saddsd@ga', 1, 1, 1, 1),
('latha', '', 1, 1, 0, 0),
('satya', 'saddsd@ga', 1, 0, 1, 0);

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
('BARB0RAJAKI', '62616112', '516166465455', 'review', '2023-05-07'),
('BARB0RAJAKI', '62616112', '516166465455', 'insurance', '2023-05-07'),
('BARB0VJCHEP', '62616189', '5161664654551519', 'review', '2023-04-28'),
('BARB0VJCHEP', '62616189', '5161664654551519', 'insurance', '2023-04-28'),
('BARB0RAJAKI', '62616118', '5161664654551515', 'review', '2023-05-07'),
('BARB0RAJAKI', '62616118', '5161664654551515', 'insurance', '2023-05-07'),
('BARB0RAJAKI', '626161124', '51616616', 'review', '2023-05-07'),
('BARB0RAJAKI', '626161124', '51616616', 'insurance', '2023-05-07'),
('BARB0RAJAKI', '623', '234324324', 'review', '2023-05-07'),
('BARB0RAJAKI', '623', '234324324', 'insurance', '2023-05-07'),
('BARB0RAJAKI', '62616112', '5161664654551519', 'review', '2023-04-28'),
('BARB0RAJAKI', '62616112', '5161664654551519', 'insurance', '2023-04-28'),
('BARB0RAJAKI', '62616112', '5161664654551518', 'review', '2023-04-23'),
('BARB0RAJAKI', '62616112', '5161664654551518', 'insurance', '2023-05-07'),
('BARB0RAJAKI', '62616184', '5161664654899', 'review', '2023-04-27'),
('BARB0RAJAKI', '62616184', '5161664654899', 'insurance', '2023-05-07'),
('BARB0RAJAKI', '62616112', '5161611365', 'review', '2023-05-05'),
('BARB0RAJAKI', '62616112', '5161611365', 'insurance', '2023-04-09');

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
('durga', 'BARB0RAJAKI', 'Durga', '$2y$10$7F.0XUF7w0GpZF2qufxHTu/OGo8CDR1/RdbqoWYVr.9tJqBbksr9i', 'bhavna.a04200529@gmail.com'),
('latha', 'BARB0AARANI', 'Latha A', '$2y$10$hrqYhX7DODiFC7cf5yQ6RedAyNvyf62cd2xDWnx8VUoGSrkMb2o.O', 'lathaa271974@gmail.com'),
('satya', 'BARB0RAJAKI', 'Satyanarayana', '$2y$10$NmDORLAdAnl.iKbUaS1zqeqkWBryqJEZ0ass9rO28T2NwwVqnnQRu', 'satya05112003@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`loan_acctno`);

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
-- Indexes for table `reminder`
--
ALTER TABLE `reminder`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
