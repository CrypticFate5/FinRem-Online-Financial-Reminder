-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2023 at 05:08 PM
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
('BARB0AARANI', '020265459', '10450400000205', '2004-03-09', '', 'PROPERTY PRIDE', 'OD006', 2000000.000, '2022-08-04', 12, '2022-06-18', '2022-12-31', 0),
('BARB0AARANI', 'F8B066735', '10450400000285', '2022-02-01', '', 'PMMY', 'OD020', 300000.000, '2023-01-15', 12, '2022-05-16', '2022-12-04', 0),
('BARB0RAJAKI', '20274169', '10450400000286', '2022-03-31', '', 'MORTGAGE OD', 'OD016', 9999999.999, '2022-10-09', 12, '2022-10-21', '2022-12-22', 0),
('BARB0RAJAKI', 'F8B065037', '10450400000287', '2022-04-18', '', 'PMMY', 'OD020', 800000.000, '2022-06-13', 12, '2023-04-24', '2023-05-03', 0),
('BARB0AARANI', 'F8B067256', '10450400000290', '2022-08-24', '', 'PROPERTY PRIDE', 'OD006', 9500000.000, '2022-12-17', 12, '2022-09-30', '2022-12-07', 0),
('BARB0RAJAKI', 'F8B067394', '10450400000292', '2022-11-01', '10450200000555', 'PMMY OD', 'OD020', 900000.000, '2022-06-19', 12, '2022-10-13', '2022-12-29', 0),
('BARB0RAJAKI', 'F8B066871', '10450400000293', '2022-11-10', '', 'PMMY OD', 'OD021', 650000.000, '2022-09-25', 12, '2022-11-22', '2022-12-01', 0),
('BARB0AARANI', '267680096', '10450400000294', '2023-01-12', '10450100008142', 'PMMY', 'OD020', 200000.000, '2022-09-23', 12, '2022-09-27', '2022-12-12', 0),
('BARB0RAJAKI', 'F8B067800', '10450400000295', '2023-02-03', '10450100020159', 'ODSME', 'OD006', 4000000.000, '2022-04-26', 12, '2022-10-31', '2022-12-10', 0),
('BARB0AARANI', 'FI7V04481', '10450400000296', '2023-03-15', '69580200000002', 'PMMY', 'OD020', 550000.000, '2022-12-17', 12, '2022-08-22', '2022-12-25', 0),
('BARB0RAJAKI', 'F8B066364', '10450500005605', '2022-03-16', '', 'CC GENERAL', 'CC001', 2000000.000, '2022-06-12', 12, '2022-11-05', '2022-12-09', 0),
('BARB0RAJAKI', 'F8B063665', '10450500005611', '2022-04-11', '', 'PROPERTY BASED', 'CC001', 2600000.000, '2022-09-01', 12, '2023-04-24', '2023-05-05', 0),
('BARB0VJCHEP', 'F8B063760', '10450500005870', '2023-01-27', '10450200000420', 'OD SME', 'CC001', 1100000.000, '2022-05-06', 12, '2022-07-19', '2022-12-28', 0),
('BARB0RAJAKI', 'F8B066610', '10450500005940', '2023-02-22', '10450200000533', 'CGTMSE', 'CC001', 1200000.000, '2022-04-24', 12, '2022-05-16', '2022-12-30', 0),
('BARB0VJCHEP', 'F8B066915', '10450600012908', '2022-03-04', '10450100019452', 'HL NON CAPITAL', 'LA110', 1065499.000, '2023-02-03', 360, '2022-11-02', '2022-12-12', 0),
('BARB0RAJAKI', '77288159', '10450600012933', '2022-03-07', '10450100011136', 'TAKE OVER HSG LN', 'LA203', 1498942.000, '2022-05-05', 180, '2023-04-24', '2023-04-29', 0),
('BARB0RAJAKI', 'F8B066911', '10450600012964', '2022-03-11', '10450100019480', 'HL ADV ACCT', 'LA183', 3600000.000, '2023-01-30', 300, '2023-04-24', '2023-05-07', 0),
('BARB0AARANI', '070491005', '10450600013321', '2022-04-25', '10450100010603', 'HL NON CAPITAL', 'LA110', 3000000.000, '2022-05-29', 214, '2022-09-02', '2022-12-17', 0),
('BARB0VJCHEP', '66660961', '10450600013552', '2022-05-18', '', 'STF HL AFTER PRIN', 'LA611', 7230000.000, '2023-04-22', 360, '2022-11-07', '2022-12-29', 0),
('BARB0AARANI', 'F8B067099', '10450600013587', '2022-05-24', '10450100019603', 'MORTGAGE LOAN', 'LA201', 3695000.000, '2022-05-12', 156, '2022-06-03', '2022-12-19', 0),
('BARB0AARANI', 'F8B065161', '10450600013713', '2022-06-07', '10450200000470', 'PROPERTY PRIDE', 'LA001', 2235000.000, '2022-08-26', 120, '2022-04-26', '2022-12-31', 0),
('BARB0AARANI', 'F8B067138', '10450600013737', '2022-05-27', '10450200000545', 'PMEGP', 'LA520', 300000.000, '2022-04-30', 36, '2022-09-16', '2022-12-24', 0),
('BARB0VJCHEP', '020264547', '10450600013758', '2022-06-09', '10450100005072', 'PMMY TL', 'LA520', 150000.000, '2022-12-06', 0, '2022-09-19', '2022-12-28', 0),
('BARB0RAJAKI', 'FI7063498', '10450600013772', '2022-06-10', '69580100006315', 'PMMY TL', 'LA520', 100000.000, '2022-12-18', 0, '2022-06-14', '2022-12-21', 0),
('BARB0RAJAKI', 'FI7V02333', '10450600013773', '2022-06-10', '69580100002841', 'PMMY TL', 'LA520', 50000.000, '2022-12-29', 0, '2022-09-07', '2022-12-12', 0),
('BARB0RAJAKI', 'F8B067158', '10450600013783', '2022-06-13', '10450100019638', 'HL NON CAPITAL', 'LA110', 4000000.000, '2022-09-28', 240, '2023-04-24', '2023-05-01', 0),
('BARB0VJCHEP', 'F8B065362', '10450600013942', '2022-06-23', '10450100018098', 'PMMY TL', 'LA520', 150000.000, '2022-07-22', 0, '2022-06-05', '2022-12-06', 0),
('BARB0RAJAKI', '020265504', '10450600013943', '2022-06-23', '10450100005640', 'PMMY TL', 'LA520', 100000.000, '2022-08-21', 0, '2022-10-01', '2022-12-19', 0),
('BARB0RAJAKI', 'F8B067048', '10450600013968', '2022-06-27', '10450100019574', 'HL NON CAPITAL', 'LA110', 1125000.000, '2022-04-27', 300, '2022-07-23', '2022-12-05', 0),
('BARB0RAJAKI', 'F8B064242', '10450600014060', '2022-07-04', '10450200000433', 'PMMY TL', 'LA520', 100000.000, '2022-07-26', 0, '2022-09-11', '2022-12-20', 0),
('BARB0RAJAKI', 'FI7V00365', '10450600014116', '2022-07-08', '69580100000139', 'PMMY TL', 'LA520', 100000.000, '2023-01-04', 0, '2022-06-23', '2022-12-21', 0),
('BARB0VJCHEP', 'BOE004838', '10450600014192', '2022-07-15', '10450100015461', 'PMMY TL', 'LA520', 200000.000, '2022-06-13', 0, '2022-05-17', '2022-12-20', 0),
('BARB0VJCHEP', 'F8B067214', '10450600014250', '2022-07-20', '10450200000549', 'PMMY TL', 'LA520', 980000.000, '2022-09-01', 0, '2022-09-14', '2022-12-02', 0),
('BARB0AARANI', '073648434', '10450600014414', '2022-08-01', '10450100010907', 'PMMY TL', 'LA520', 300000.000, '2022-09-03', 48, '2022-11-25', '2022-12-31', 0),
('BARB0RAJAKI', 'BOE003758', '10450600014652', '2022-08-22', '10450100014484', 'PMMY TL', 'LA520', 200000.000, '2022-10-23', 0, '2023-04-24', '2023-05-30', 0),
('BARB0AARANI', 'F8B065188', '10450600014655', '2022-08-22', '10450100017935', 'PMMY TL', 'LA520', 300000.000, '2022-05-23', 0, '2022-09-05', '2022-12-19', 0),
('BARB0AARANI', 'F8B067387', '10450600014710', '2022-08-25', '10450100019820', 'CRE HL', 'LA117', 4000000.000, '2022-11-09', 204, '2022-07-13', '2022-12-21', 0),
('BARB0AARANI', '020268872', '10450600014914', '2022-09-12', '10450100005854', 'HOME LOAN', 'LA110', 8000000.000, '2022-07-20', 128, '2022-10-14', '2022-12-09', 0),
('BARB0AARANI', 'F8B067223', '10450600014916', '2022-09-12', '10450100019692', 'TAKE OVER HSG LN', 'LA203', 1120000.000, '2023-02-26', 178, '2022-09-07', '2022-11-30', 0),
('BARB0RAJAKI', '63522118', '10450600014983', '2022-09-16', '10450100010062', 'TAHDCO CGTMSE', 'LA520', 550000.000, '2022-05-08', 60, '2022-08-16', '2022-12-17', 0),
('BARB0VJCHEP', 'F8B066559', '10450600015125', '2022-09-29', '10450100019136', 'EDUCATION LOAN', 'LA152', 160000.000, '2022-10-24', 0, '2022-06-05', '2022-12-20', 0),
('BARB0RAJAKI', 'F8B067315', '10450600015157', '2022-10-01', '10450100019772', 'EDUCATION LOAN', 'LA133', 140000.000, '2023-01-11', 93, '2022-06-12', '2022-12-06', 0),
('BARB0RAJAKI', 'F8B067823', '10450600015278', '2022-10-14', '10450100020168', 'AUTO LOAN', 'LA101', 1919200.000, '2022-09-21', 0, '2023-04-24', '2023-06-25', 1),
('BARB0VJCHEP', '020267232', '10450600015353', '2022-10-20', '10450100000994', 'PERSONAL LOAN', 'LA141', 700000.000, '2023-03-20', 0, '2022-10-28', '2022-12-06', 0),
('BARB0RAJAKI', 'BOE002451', '10450600015481', '2022-11-03', '10450100013317', 'PMMY TL', 'LA520', 950000.000, '2023-02-01', 60, '2022-05-08', '2022-12-12', 0),
('BARB0RAJAKI', 'F8B067512', '10450600015550', '2022-11-09', '10450100019916', 'PMMY TL', 'LA520', 75000.000, '2022-06-18', 36, '2022-11-14', '2022-12-28', 0),
('BARB0RAJAKI', 'F8B067292', '10450600015595', '2022-11-15', '10450100019754', 'HL NON CAPITAL', 'LA110', 700000.000, '2023-03-09', 300, '2022-09-07', '2022-12-25', 0),
('BARB0AARANI', 'FI7V04194', '10450600015780', '2022-11-30', '69580500000017', 'CGTMSE', 'LA001', 3300000.000, '2022-11-03', 120, '2022-06-24', '2022-12-04', 0),
('BARB0VJCHEP', 'F8B067567', '10450600015782', '2022-12-01', '10450200000560', 'PMMY TL', 'LA520', 950000.000, '2022-10-18', 60, '2022-06-13', '2022-12-13', 0),
('BARB0VJCHEP', 'BOE005266', '10450600015881', '2022-12-12', '10450100015831', 'SCHOLAR LOAN', 'LA135', 1517257.000, '2022-12-04', 180, '2022-09-25', '2022-12-12', 0),
('BARB0VJCHEP', '266895838', '10450600015909', '2022-12-14', '10450100007740', 'PMMY TL AUTO', 'LA520', 295000.000, '2023-01-03', 36, '2022-05-21', '2022-12-04', 0),
('BARB0RAJAKI', 'BOE003116', '10450600015978', '2022-12-19', '10450100013947', 'SCHOLAR', 'LA134', 4949551.000, '2023-04-17', 0, '2022-07-26', '2022-12-24', 0),
('BARB0VJCHEP', 'F8B067669', '10450600016041', '2022-12-21', '10450100020047', 'HOME LOAN', 'LA110', 2600000.000, '2023-01-08', 240, '2022-11-24', '2022-12-31', 0),
('BARB0VJCHEP', '61450907', '10450600016056', '2022-12-26', '10450200000555', 'AUTO LOAN', 'LA101', 630000.000, '2023-03-13', 84, '2022-07-20', '2022-12-10', 0),
('BARB0VJCHEP', 'F8B067599', '10450600016100', '2022-12-30', '10450200000562', 'CGTMSE', 'LA001', 1900000.000, '2022-09-05', 60, '2022-10-10', '2022-12-17', 0),
('BARB0AARANI', '57484925', '10450600016182', '2023-01-09', '10450100009074', 'PMMY TL AUTO', 'LA520', 295000.000, '2023-02-07', 36, '2022-11-15', '2022-12-30', 0),
('BARB0AARANI', 'F8B067755', '10450600016240', '2023-01-13', '10450100020110', 'HOME LOAN', 'LA110', 2425000.000, '2022-05-27', 336, '2022-06-19', '2022-12-03', 0),
('BARB0RAJAKI', 'F8B065776', '10450600016257', '2023-01-18', '10450100018429', 'PMMY', 'LA520', 325000.000, '2022-08-22', 60, '2022-09-24', '2022-12-09', 0),
('BARB0VJCHEP', 'BOE004865', '10450600016464', '2023-02-06', '10450100015481', 'PMMY TL', 'LA520', 950000.000, '2023-02-15', 60, '2022-09-12', '2022-12-16', 0),
('BARB0RAJAKI', 'BOE000293', '10450600016703', '2023-02-24', '10450100011554', 'PMMY', 'LA520', 25000.000, '2023-04-11', 20, '2022-06-09', '2022-12-12', 0),
('BARB0RAJAKI', 'F8B067875', '10450600017090', '2023-03-31', '10450200000567', 'AGRO FOOD PROCESSING', 'LA429', 8000000.000, '2022-05-08', 84, '2022-06-09', '2022-12-22', 0),
('BARB0RAJAKI', '077258739', '10450600017132', '2023-04-06', '10450400000282', 'COMMERCIAL VEHICLE', 'LA015', 4100000.000, '2022-08-06', 60, '2023-04-24', '2023-06-08', 0),
('BARB0VJCHEP', 'F8B067945', '10450600017227', '0000-00-00', '10450100019603', 'EDUCATION LOAN', 'LA135', 5000000.000, '2023-01-15', 180, '2022-07-17', '2022-12-01', 0),
('BARB0AARANI', 'FI7V04749', '69580400000255', '2020-09-30', '69580200000040', 'PROPERTY PRIDE', 'OD001', 2000000.000, '2023-01-24', 0, '2022-05-19', '2022-12-30', 0),
('BARB0VJCHEP', 'FI7V02920', '69580400000256', '2022-02-28', '', 'PMMY OD', 'OD020', 800000.000, '2022-12-27', 0, '2022-06-23', '2022-12-09', 0),
('BARB0RAJAKI', 'FI7063299', '69580600003060', '2021-09-21', '69580100006130', 'HL', 'LA110', 1981000.000, '2022-09-06', 0, '2022-06-28', '2022-12-09', 0),
('BARB0RAJAKI', 'FI7V03898', '69580600003223', '2021-10-30', '69580100002613', 'HL NON CAPITAL', 'LA110', 1000000.000, '2022-11-14', 212, '2023-04-24', '2023-05-10', 0),
('BARB0RAJAKI', 'FI7V03731', '69580600003453', '2021-12-21', '69580100002348', 'PMMY TL', 'LA520', 100000.000, '2023-02-07', 36, '2022-05-03', '2022-12-30', 0),
('BARB0RAJAKI', 'FI7063574', '69580600003535', '2022-01-10', '69580100006390', 'HL NON CAPITAL', 'LA110', 3586560.000, '2022-11-14', 276, '2023-04-24', '2023-05-09', 0),
('BARB0VJCHEP', 'FI7V01354', '69580600003553', '2022-01-13', '69580100002269', 'SCHOLAR', 'LA134', 1364000.000, '2023-04-23', 132, '2022-07-21', '2022-12-05', 0),
('BARB0AARANI', 'FI7063585', '69580600003711', '2022-02-21', '69580100006400', 'SCHOLAR', 'LA134', 3018054.000, '2022-08-12', 120, '2022-07-24', '2022-12-08', 0),
('BARB0VJCHEP', 'FI7063482', '69580600003743', '2022-02-28', '69580200001098', 'PMMY', 'LA520', 700000.000, '2022-12-30', 60, '2022-07-30', '2022-12-10', 0),
('BARB0AARANI', 'FI7063622', '69580600003805', '2022-03-11', '69580400000257', 'PMMY', 'LA520', 500000.000, '2022-10-18', 60, '2022-05-14', '2022-12-05', 0);

--
-- Triggers `accounts`
--
DELIMITER $$
CREATE TRIGGER `acctToTask` AFTER INSERT ON `accounts` FOR EACH ROW BEGIN
set @bankid=(select bank_id from accounts where trigPriority=1);
set @custid=(select cust_id from accounts where trigPriority=1);
set @loanacct=(select loan_acctno from accounts where trigPriority=1);
set @taskdate=(select next_review from accounts where trigPriority=1);
insert into tasks values(@bankid,@custid,@loanacct,'Review',@taskDate);
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
('BARB0VJCHEP', '020264547', 'JAYASREE', '4779280751', '1973-08-25', '159312779359', '8101787828', 'skreutzerq@meetup.com', '5', 'Mayer', 'Point', 'Ginatilan', '\"Integer non velit. Donec diam neque, vestibulum eget, vulpu', 'Nulla justo.', '', '614186'),
('BARB0AARANI', '020265459', 'PAPPIAH MEDICALS', '5864368623', '1982-01-28', '873150827483', '85131202', 'jrendbaek0@cafepress.com', '98300', 'Fairview', 'Place', 'Dumalneg', 'Aliquam sit amet diam in magna bibendum imperdiet.', 'In eleifend quam a odio.', '', '486275'),
('BARB0RAJAKI', '020265504', 'KALA S', '2815827440', '1955-01-05', '898365129633', '9797512894', 'lhemphreyv@reuters.com', '8423', 'Heffernan', 'Street', 'Kraslice', 'Suspendisse potenti. Nullam porttitor lacus at turpis.', 'Nullam porttitor lacus at turp', '', '599868'),
('BARB0VJCHEP', '020267232', 'MUTHU C', '6946516262', '1968-02-18', '429415182360', '2113230607', 'rterren1d@noaa.gov', '580', 'Claremont', 'Street', 'Macau', 'Nunc rhoncus dui vel sem. Sed sagittis.', 'Aliquam quis turpis eget elit ', '', '745620'),
('BARB0AARANI', '020268872', 'SAMPATH C', '2824132750', '1990-01-17', '668745835280', '3342859903', 'hperell16@goodreads.com', '82075', 'Bobwhite', 'Circle', 'Jishui', '\"Vestibulum quam sapien, varius ut, blandit non, interdum in', '\"Morbi odio odio, elementum eu', '', '515227'),
('BARB0RAJAKI', '020274169', 'KUMARAVEL', '3974290991', '1995-12-03', '743145158873', '7845942561', 'ldancyi@biglobe.ne.jp', '494', 'Bluejay', 'Street', 'Vichuga', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia e', 'Duis bibendum.', '', '926843'),
('BARB0AARANI', '057484925', 'PANDURANGAN T', '8391317943', '1957-03-07', '843411447520', '4656702137', 'bdurand1s@cnet.com', '1031', 'Bluestem', 'Street', 'Smolenskoye', '\"Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus i', 'Nunc purus.', '', '231958'),
('BARB0VJCHEP', '061450907', 'HARIKARAN S', '1877432953', '1954-05-24', '267505582470', '5990798032', 'fklammt1q@macromedia.com', '188', 'Dakota', 'Trail', 'Dofa', 'Maecenas pulvinar lobortis est. Phasellus sit amet erat.', '\"Nulla ac enim. In tempor, tur', '', '600718'),
('BARB0RAJAKI', '063522118', 'PS SURESH', '9963765797', '1952-11-11', '703352212859', '8650013597', 'fvardy18@simplemachines.org', '6', 'Lake View', 'Alley', 'DuyÃªn Háº£i', 'Etiam faucibus cursus urna.', '\"Mauris ullamcorper purus sit ', '', '608369'),
('BARB0VJCHEP', '066660961', 'KANNAN P (STAFF)', '5775717788', '1996-08-21', '908168775157', '4257029129', 'fmaclucaism@sfgate.com', '74213', 'Dryden', 'Road', 'Kalapagenep', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultr', 'Etiam faucibus cursus urna.', '', '402835'),
('BARB0AARANI', '070491005', 'MAHENDRAN K', '5869309848', '1977-08-26', '911946037951', '5765984975', 'nrimmingtonl@marriott.com', '88', 'Grim', 'Trail', 'Nancy', '\"Vestibulum ac est lacinia nisi venenatis tristique. Fusce c', 'Curabitur at ipsum ac tellus s', 'Lorraine', '825491'),
('BARB0AARANI', '073648434', 'BABUJI P', '9154994339', '1969-02-23', '886918010563', '2378210132', 'cisaksen11@tinyurl.com', '44029', 'Chinook', 'Point', 'Fifi', 'Nulla mollis molestie lorem. Quisque ut erat.', 'Mauris ullamcorper purus sit a', '', '908353'),
('BARB0RAJAKI', '077258739', 'SRI LAKSHMI BEVERAGE', '3809778352', '1992-12-05', '791185766374', '7220076274', 'jsmedley26@huffingtonpost.com', '17482', 'Cottonwood', 'Place', 'Bhalil', 'Aliquam quis turpis eget elit sodales scelerisque.', '\"Nam congue, risus semper port', '', '843363'),
('BARB0RAJAKI', '077288159', 'KOMALA C', '9418557993', '1976-01-18', '351503832880', '3646367377', 'rtissimand@sciencedaily.com', '50', 'Hoepker', 'Park', 'Yuanqian', 'Praesent blandit lacinia erat. Vestibulum sed magna at nunc ', 'Etiam faucibus cursus urna. Ut', '', '779131'),
('BARB0VJCHEP', '266895838', 'RAVIDOSS MATHEW', '1823693861', '1964-10-30', '563641745526', '9081166093', 'iatthowe1m@umn.edu', '61', 'Thackeray', 'Road', 'Doushan', 'Etiam justo. Etiam pretium iaculis justo.', '\"Vivamus metus arcu, adipiscin', '', '677839'),
('BARB0AARANI', '267680096', 'DHANASEKARAN', '2699618050', '1962-10-28', '165247554395', '1240633645', 'sbroadley1t@eventbrite.com', '71058', 'Harbort', 'Avenue', 'RizÃ³milos', 'Donec dapibus.', 'Nam dui.', '', '922896'),
('BARB0RAJAKI', 'BOE000293', 'RATHINAVEL', '5301777870', '2005-01-27', '788548713095', '5194084994', 'cbeldan20@nasa.gov', '107', 'Hoepker', 'Crossing', 'Kyra', 'Nullam molestie nibh in lectus. Pellentesque at nulla.', '\"Integer non velit. Donec diam', '', '970796'),
('BARB0RAJAKI', 'BOE002451', 'MULLAIVANAN J', '4444275995', '2002-09-11', '459437508563', '7126086180', 'nhartford1f@delicious.com', '1746', '5th', 'Crossing', 'Nowosielce', 'Phasellus in felis.', 'Duis mattis egestas metus.', '', '355558'),
('BARB0RAJAKI', 'BOE003116', 'PRAVEEN KUMAR A', '5245237675', '1985-08-24', '519557569788', '5406617273', 'ejoost1n@berkeley.edu', '322', 'Bowman', 'Point', 'Lapas', 'Proin at turpis a pede posuere nonummy. Integer non velit.', 'Nulla mollis molestie lorem.', 'SantarÃ©m', '507349'),
('BARB0RAJAKI', 'BOE003758', 'DEVARAJAN KA', '2696796658', '2002-01-27', '654916932811', '2781700215', 'ogiacobillo12@auda.org.au', '62110', 'Hooker', 'Crossing', 'Killam', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere ', 'Sed sagittis.', 'Alberta', '595850'),
('BARB0VJCHEP', 'BOE004838', 'JANAKIRAMAN', '6248957695', '1986-12-16', '647859593090', '6258612636', 'msorrellz@joomla.org', '4278', 'Swallow', 'Avenue', 'Smara', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', 'Nulla justo. Aliquam quis turp', '', '481817'),
('BARB0VJCHEP', 'BOE004865', 'TAMILARASI V', '1349098396', '1960-07-03', '493087646893', '6179558329', 'dvicioso1y@domainmarket.com', '419', 'Starling', 'Street', 'Cijeungjing Kaler', 'Aliquam non mauris.', 'Etiam justo. Etiam pretium iac', '', '196086'),
('BARB0VJCHEP', 'BOE005266', 'JAGAN AND SARASWATHY', '1807430701', '1960-03-04', '282237159064', '1726005887', 'lbalazs1l@netvibes.com', '78', 'Hauk', 'Crossing', 'Balingueo', 'Curabitur convallis.', 'Integer tincidunt ante vel ips', '', '807539'),
('BARB0RAJAKI', 'F8B063665', 'SRI RAMAKRISHNA TRAD', '3285028211', '1974-09-04', '178991089261', '7551706860', 'adoustj@google.com.br', '54', 'Onsgard', 'Point', 'Sidayu', '\"Donec ut mauris eget massa tempor convallis. Nulla neque li', 'In quis justo.', '', '671710'),
('BARB0VJCHEP', 'F8B063760', '01 STOP MULTIPLE SOL', '1058064543', '1993-05-07', '292044135589', '4806957305', 'spretorius1w@ustream.tv', '0', 'Bonner', 'Place', 'Zoetermeer', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidun', '\"Integer non velit. Donec diam', 'Provincie Zuid-Holland', '950346'),
('BARB0RAJAKI', 'F8B064242', 'SRINIVASAN GANESAN T', '8476769554', '1965-12-10', '297364584849', '6893318685', 'akonmannx@stumbleupon.com', '183', 'Carpenter', 'Park', 'Dongqu', 'Aenean sit amet justo.', '\"Vestibulum ante ipsum primis ', '', '752433'),
('BARB0RAJAKI', 'F8B065037', 'RANI S', '3931534041', '1952-07-11', '925051757402', '8236213501', 'scapstickk@reuters.com', '47724', 'Texas', 'Place', 'NorrkÃ¶ping', 'Integer a nibh.', 'Integer a nibh.', 'Ã–stergÃ¶tland', '791797'),
('BARB0AARANI', 'F8B065161', 'ARVIND INDUSTRIES', '6835490357', '1968-04-05', '230851412907', '5453625015', 'dphilpaultp@noaa.gov', '54', 'Coolidge', 'Way', 'Bobrov', '\"Nam congue, risus semper porta volutpat, quam pede lobortis', 'Nunc nisl.', '', '288532'),
('BARB0AARANI', 'F8B065188', 'PALANI LOGANATHAN', '8514524220', '1977-03-14', '633379949691', '381076008', 'aschult13@techcrunch.com', '168', 'Golf View', 'Parkway', 'Cibungur', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultr', 'Vestibulum ante ipsum primis i', '', '916383'),
('BARB0VJCHEP', 'F8B065362', 'SUTHAKAR', '2087715582', '1957-02-11', '537672255755', '2603581414', 'elanegranu@dedecms.com', '564', 'Loeprich', 'Point', 'Vyshneve', '\"Aliquam augue quam, sollicitudin vitae, consectetuer eget, ', '\"Donec diam neque, vestibulum ', '', '163412'),
('BARB0RAJAKI', 'F8B065776', 'ELUMALAI S', '8757323226', '1978-12-08', '518184446261', '8847101964', 'mmaevela1v@webeden.co.uk', '1235', 'Fordem', 'Avenue', 'GoascorÃ¡n', '\"Donec odio justo, sollicitudin ut, suscipit a, feugiat et, ', 'Nullam molestie nibh in lectus', '', '341552'),
('BARB0RAJAKI', 'F8B066364', 'SRI GANAPATHI STORES', '3934885022', '1984-02-09', '549296815376', '3154682503', 'hgoveg@gov.uk', '49710', 'Northland', 'Lane', 'á¸¨abÄbah', 'Aliquam quis turpis eget elit sodales scelerisque.', '\"Cras mi pede, malesuada in, i', '', '544157'),
('BARB0VJCHEP', 'F8B066559', 'KISHORE & MURUGAN', '7059509525', '1992-09-13', '603059304097', '7478914152', 'ndinsdale19@sina.com.cn', '53', '4th', 'Alley', 'Gorzyce', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris si', 'Etiam justo.', '', '267424'),
('BARB0RAJAKI', 'F8B066610', 'DUKE SALES CORPORATI', '1808268698', '1987-12-26', '534310539632', '2172808032', 'ltheaker1z@statcounter.com', '2694', 'Menomonie', 'Avenue', 'Sipe Sipe', 'Vestibulum sed magna at nunc commodo placerat.', '\"Lorem ipsum dolor sit amet, c', '', '914468'),
('BARB0AARANI', 'F8B066735', 'VARUN ENTERPRISES', '8842610012', '1993-06-07', '517050547794', '4012915401', 'ebalasin8@theglobeandmail.com', '6727', 'Grayhawk', 'Drive', 'Kalugmanan', '\"In est risus, auctor sed, tristique in, tempus sit amet, se', 'Proin risus. Praesent lectus.', '', '673502'),
('BARB0RAJAKI', 'F8B066871', 'SOFT CARE APPLICATIO', '3353597792', '1990-10-16', '600705944145', '6574255279', 'pleek1h@odnoklassniki.ru', '22210', 'Arizona', 'Hill', 'Zhicheng', '\"Integer pede justo, lacinia eget, tincidunt eget, tempus ve', 'Proin at turpis a pede posuere', '', '571496'),
('BARB0RAJAKI', 'F8B066911', 'PRABHU L', '7115771877', '1952-10-13', '426883855886', '7624034913', 'bhassekle@google.nl', '833', 'Derek', 'Circle', 'Moriya', 'Ut at dolor quis odio consequat varius.', 'Nam nulla.', '', '175252'),
('BARB0VJCHEP', 'F8B066915', 'PRIYADHARSHINI V', '7143377904', '1956-01-10', '368963660818', '385798644', 'mbougourdc@ucoz.com', '81', 'Bartillon', 'Plaza', 'Fullerton', 'Morbi non quam nec dui luctus rutrum. Nulla tellus.', '\"Cras pellentesque volutpat du', 'California', '759461'),
('BARB0RAJAKI', 'F8B067048', 'S PRADEEP KUMAR', '5597295204', '1960-10-15', '960742817618', '7041564673', 'jlinchw@taobao.com', '0', 'Chinook', 'Parkway', 'Huanggang', '\"Fusce congue, diam id ornare imperdiet, sapien urna pretium', '\"Fusce congue, diam id ornare ', '', '672055'),
('BARB0AARANI', 'F8B067099', 'PADMAVATHI P', '2652187468', '2004-01-06', '161014595038', '5988810268', 'dmuneelyn@spiegel.de', '25', 'Upham', 'Center', 'Krajan', 'Phasellus sit amet erat.', '\"Morbi vestibulum, velit id pr', '', '640587'),
('BARB0AARANI', 'F8B067138', 'M G BRIYANI CENTRE', '3265334144', '1972-09-13', '817659206514', '2428628313', 'ctetlao@ask.com', '58004', 'Autumn Leaf', 'Center', 'Sundsvall', 'Maecenas ut massa quis augue luctus tincidunt.', 'Nullam porttitor lacus at turp', 'VÃ¤sternorrland', '423445'),
('BARB0RAJAKI', 'F8B067158', 'AMIT AND ASHA', '1906022788', '1996-06-30', '774572991385', '5562403544', 'hjonket@ca.gov', '60', 'Northwestern', 'Junction', 'La Joya', 'Duis bibendum.', '\"Donec ut mauris eget massa te', 'Guanajuato', '824056'),
('BARB0VJCHEP', 'F8B067214', 'BEST BLOCK WORKS', '5011554574', '1967-01-22', '568576619254', '5249753264', 'nsandwich10@edublogs.org', '95', 'Forest Run', 'Terrace', 'WoÅ‚omin', 'Curabitur gravida nisi at nibh.', 'Donec dapibus.', '', '349190'),
('BARB0AARANI', 'F8B067223', 'A KOTHANDARAMAN', '1868283774', '1978-04-18', '684570695855', '4326774959', 'nvaen17@google.ca', '9613', 'Bunting', 'Avenue', 'Strzelin', 'Pellentesque eget nunc. Donec quis orci eget orci vehicula c', 'Donec quis orci eget orci vehi', '', '665251'),
('BARB0AARANI', 'F8B067256', 'JAYA RICE MANDY', '7617874931', '1999-09-12', '371589569019', '40942260', 'vwickerson14@posterous.com', '69', 'Waubesa', 'Road', 'Zhuangxing', 'In hac habitasse platea dictumst.', '\"Fusce lacus purus, aliquet at', '', '723579'),
('BARB0RAJAKI', 'F8B067292', 'SUGUNA K', '2343388653', '1967-07-09', '476548936895', '1994475501', 'ntutt1i@independent.co.uk', '25', 'Anthes', 'Hill', 'Teminabuan', 'Curabitur in libero ut massa volutpat convallis.', 'Proin risus.', '', '742087'),
('BARB0RAJAKI', 'F8B067315', 'MOHANAVANNAN', '6083067411', '1998-10-31', '393102101461', '8160861842', 'ksnartt1a@patch.com', '2', 'Acker', 'Street', 'Batakte', 'Morbi non lectus.', 'Sed vel enim sit amet nunc viv', '', '257181'),
('BARB0AARANI', 'F8B067387', 'DANIEL CHINNADURAI', '4066278700', '1950-01-18', '530396049417', '4769702833', 'pbemment15@flickr.com', '72', 'Rigney', 'Trail', 'Seria', 'Praesent blandit lacinia erat. Vestibulum sed magna at nunc ', 'Mauris sit amet eros. Suspendi', '', '694749'),
('BARB0RAJAKI', 'F8B067394', 'MK ENTERPRISES', '8187405123', '1970-11-15', '156488068393', '7214382636', 'mmcenteggart1e@house.gov', '1', 'Hintze', 'Court', 'Huayuan', 'Cras non velit nec nisi vulputate nonummy.', 'Duis mattis egestas metus.', '', '837965'),
('BARB0RAJAKI', 'F8B067512', 'NOOR MOHAMMED', '6825036160', '1967-02-06', '658982223156', '8069981679', 'rbiggs1g@fotki.com', '6', 'Mayer', 'Junction', 'Fort Worth', 'Nullam molestie nibh in lectus.', 'Vivamus vestibulum sagittis sa', 'Texas', '245936'),
('BARB0VJCHEP', 'F8B067567', 'BAYA FOAM AND PACKAG', '8911612369', '1985-04-21', '487774753901', '6972606292', 'bgaliero1k@dedecms.com', '1088', 'Rowland', 'Alley', 'Liuzu', 'Proin interdum mauris non ligula pellentesque ultrices.', 'Praesent id massa id nisl vene', '', '905758'),
('BARB0VJCHEP', 'F8B067599', 'MR CHETTINAD RESTAUR', '5687763299', '2000-11-22', '140918482533', '1803734531', 'tblamphin1r@mayoclinic.com', '65', 'Butternut', 'Park', 'Gaogongdao', '\"Vestibulum ante ipsum primis in faucibus orci luctus et ult', 'Nulla mollis molestie lorem. Q', '', '882502'),
('BARB0VJCHEP', 'F8B067669', 'ILANGOVAN T', '9392443777', '1992-08-01', '340617112305', '2504320922', 'mforge1o@craigslist.org', '806', 'Buhler', 'Junction', 'Kadugadung', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultr', '\"Mauris ullamcorper purus sit ', '', '599009'),
('BARB0AARANI', 'F8B067755', 'UMA I', '9588772096', '1967-10-05', '424433958090', '1082261815', 'vbecom1u@facebook.com', '7616', 'Stang', 'Parkway', 'Undurkhaan', 'Aenean fermentum. Donec ut mauris eget massa tempor convalli', '\"Cras mi pede, malesuada in, i', '', '439045'),
('BARB0RAJAKI', 'F8B067800', 'RADHA CYCLE WORLD', '6995551017', '1953-03-12', '395295444499', '9745325309', 'scoulthart1x@columbia.edu', '33', 'Heath', 'Crossing', 'Shuitian', 'Suspendisse potenti.', '\"Vestibulum ante ipsum primis ', '', '798448'),
('BARB0RAJAKI', 'F8B067823', 'YOGANATHAN V', '5262032127', '2001-11-08', '401929275024', '5064482000', 'cdurston1c@artisteer.com', '56', 'Anzinger', 'Lane', 'Champigny-sur-Marne', 'Vestibulum rutrum rutrum neque.', 'Sed sagittis.', 'ÃŽle-de-France', '914157'),
('BARB0RAJAKI', 'F8B067875', 'JB MODERN RICE MILL', '5888680725', '1993-07-18', '121182556103', '6104918344', 'abrunel23@amazon.de', '76', 'Heffernan', 'Plaza', 'Agudos', 'Proin eu mi. Nulla ac enim.', 'Vivamus vel nulla eget eros el', '', '457359'),
('BARB0VJCHEP', 'F8B067945', 'HARIRAAM KISHAN', '4378535237', '1952-08-17', '817470015015', '392587297', 'dhellin27@mozilla.com', '85051', 'Porter', 'Parkway', 'Tullinge', '\"Fusce lacus purus, aliquet at, feugiat non, pretium quis, l', 'Vestibulum ac est lacinia nisi', 'Stockholm', '172700'),
('BARB0RAJAKI', 'FI7063299', 'ARUNAGIRI M', '4293716029', '1978-06-23', '138707161086', '2942663758', 'oefford2@dot.gov', '7', 'Coolidge', 'Park', 'Sokalâ€™', 'Praesent lectus.', '\"Vivamus vestibulum sagittis s', '', '558991'),
('BARB0VJCHEP', 'FI7063482', 'MMM AGENCY', '2732410011', '1965-02-02', '109326104536', '677547390', 'smatthiasb@princeton.edu', '291', 'Burrows', 'Point', 'Lekaj', '\"Donec odio justo, sollicitudin ut, suscipit a, feugiat et, ', 'In hac habitasse platea dictum', '', '131482'),
('BARB0RAJAKI', 'FI7063498', 'SUGANYA R', '2647982963', '1978-06-10', '113596369443', '8638134363', 'klandonr@buzzfeed.com', '0', 'Valley Edge', 'Street', 'Shifan', 'In hac habitasse platea dictumst. Maecenas ut massa quis aug', 'In hac habitasse platea dictum', '', '165431'),
('BARB0RAJAKI', 'FI7063574', 'ARUNACHALAM E', '1386826219', '1962-09-21', '294632125935', '2939265933', 'pborton6@phoca.cz', '3', 'Spohn', 'Court', 'Valladolid', 'Nullam sit amet turpis elementum ligula vehicula consequat. ', '\"Donec odio justo, sollicitudi', 'Castilla - Leon', '272155'),
('BARB0AARANI', 'FI7063585', 'CHARUKESH P', '1275977850', '1958-01-03', '293388115272', '6783553507', 'theam9@shinystat.com', '452', 'Spohn', 'Parkway', 'Kafachan', 'Duis at velit eu est congue elementum. In hac habitasse plat', 'Sed accumsan felis.', '', '200644'),
('BARB0AARANI', 'FI7063622', 'BANU FASHION', '4154582023', '1952-06-29', '899550540037', '4086199491', 'kludlomf@bloglovin.com', '8', 'Caliangt', 'Junction', 'Milaor', 'Aliquam erat volutpat.', 'Mauris ullamcorper purus sit a', '', '108837'),
('BARB0RAJAKI', 'FI7V00365', 'DEENADAYALAN', '4468591308', '1994-02-05', '480389051776', '3585364721', 'cmitfordy@google.com.hk', '66', 'Northwestern', 'Circle', 'Tawangsari', '\"Vivamus metus arcu, adipiscing molestie, hendrerit at, vulp', '\"Morbi vestibulum, velit id pr', '', '153303'),
('BARB0VJCHEP', 'FI7V01354', 'UMESH S', '3934070362', '1997-06-17', '326860101338', '9268193604', 'mconnerly7@mapy.cz', '362', 'Mosinee', 'Court', 'Krutaya Gorka', 'Maecenas pulvinar lobortis est.', 'Donec quis orci eget orci vehi', '', '837079'),
('BARB0RAJAKI', 'FI7V02333', 'VINOTH KUMAR', '3775896883', '1999-11-26', '648464777166', '2932467670', 'fpeticans@census.gov', '493', 'Canary', 'Circle', 'Zavet', 'Aenean auctor gravida sem.', '\"Fusce posuere felis sed lacus', '', '960209'),
('BARB0VJCHEP', 'FI7V02920', 'OM SHRI BAGAVATHI OI', '1055443671', '1983-05-15', '764170279879', '5521670114', 'igamwella@tmall.com', '7227', 'Russell', 'Road', 'Santyoku', 'Mauris ullamcorper purus sit amet nulla.', 'Suspendisse potenti.', '', '101954'),
('BARB0RAJAKI', 'FI7V03731', 'MURUGAN E', '2003722920', '1964-08-27', '998010386375', '337621403', 'dlarvor4@mysql.com', '7', 'Veith', 'Pass', 'Uzlovaya', 'Nullam porttitor lacus at turpis.', 'Vivamus vestibulum sagittis sa', '', '621980'),
('BARB0RAJAKI', 'FI7V03898', 'PREMANANDRAJA G', '2383256024', '1967-02-23', '227349832368', '5997065103', 'atreen3@newyorker.com', '3174', 'Lighthouse Bay', 'Lane', 'Hengdaohezi', 'Duis mattis egestas metus. Aenean fermentum.', 'Aliquam erat volutpat.', '', '588646'),
('BARB0AARANI', 'FI7V04194', 'KANCHI DABHA', '7612944555', '1977-06-17', '557339574798', '7069544553', 'lculkin1j@csmonitor.com', '9', 'Boyd', 'Crossing', 'Rio Grande da Serra', 'Morbi a ipsum.', '\"Morbi ut odio. Cras mi pede, ', '', '927507'),
('BARB0AARANI', 'FI7V04481', 'KPV TRAVELS', '6694550514', '1978-02-05', '285194049820', '2522735950', 'kdreinan22@xinhuanet.com', '5', 'Sundown', 'Alley', 'Korenovsk', 'In hac habitasse platea dictumst.', 'Nulla mollis molestie lorem. Q', '', '272002'),
('BARB0AARANI', 'FI7V04749', 'MANI AGENCY', '7899524720', '1985-06-07', '918778208780', '2817514432', 'nantoniutti1@dailymotion.com', '3', 'Lakewood', 'Crossing', 'Puyung', '\"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\"', 'Duis mattis egestas metus. Aen', '', '163512');

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
('BARB0AARANI', '020265459', '10450400000205', '', 'PROPERTY', '2022-11-05', '2023-07-07', 0.00, 307.00, 222.00, 112.00, 2077.00, 2764.00, 1, 0),
('BARB0AARANI', 'F8B066735', '10450400000285', '', 'STOCK', '2022-11-05', '2023-07-07', 0.00, 160.00, 450.00, 247.00, 2001.00, 2527.00, 0, 0),
('BARB0RAJAKI', '20274169', '10450400000286', '', 'BURGALARY', '2022-11-05', '2023-07-07', 0.00, 441.00, 289.00, 316.00, 1383.00, 2236.00, 0, 0),
('BARB0RAJAKI', 'F8B065037', '10450400000287', '', 'ASSET', '2022-11-05', '2023-07-07', 0.00, 366.00, 207.00, 435.00, 1591.00, 2170.00, 1, 0),
('BARB0AARANI', 'F8B067256', '10450400000290', 'CHOLA MS', 'STOCK', '2023-03-14', '2024-03-13', 13877.00, 461.00, 310.00, 316.00, 1532.00, 2352.00, 0, 0),
('BARB0RAJAKI', 'F8B067394', '10450400000292', 'CHOLA MS', 'FIRE', '2022-11-10', '2023-11-09', 658.00, 130.00, 151.00, 379.00, 2400.00, 2913.00, 1, 0),
('BARB0RAJAKI', 'F8B066871', '10450400000293', 'CHOLA', 'ASSET', '2023-02-21', '2024-02-20', 295.00, 104.00, 238.00, 205.00, 2554.00, 2188.00, 1, 0),
('BARB0AARANI', '267680096', '10450400000294', 'CHOLA', 'PROPERTY', '2023-02-21', '2024-02-20', 295.00, 440.00, 235.00, 267.00, 1918.00, 2418.00, 0, 0),
('BARB0RAJAKI', 'F8B067800', '10450400000295', 'CHOLA', 'BURGALARY', '2023-02-21', '2024-02-20', 7438.00, 490.00, 329.00, 498.00, 2052.00, 2254.00, 0, 0),
('BARB0AARANI', 'FI7V04481', '10450400000296', '', 'ASSET', '2022-11-05', '2023-07-07', 0.00, 288.00, 400.00, 476.00, 1230.00, 2719.00, 0, 0),
('BARB0RAJAKI', 'F8B066364', '10450500005605', '', 'VEHICLE', '2022-11-05', '2023-07-07', 0.00, 431.00, 114.00, 390.00, 2377.00, 2772.00, 1, 0),
('BARB0RAJAKI', 'F8B063665', '10450500005611', '', 'ASSET', '2022-11-05', '2023-07-07', 0.00, 409.00, 296.00, 484.00, 1692.00, 2994.00, 1, 0),
('BARB0VJCHEP', 'F8B063760', '10450500005870', 'CHOLA', 'PROPERTY', '2023-02-07', '2024-02-06', 572.00, 430.00, 107.00, 210.00, 1852.00, 2752.00, 1, 0),
('BARB0RAJAKI', 'F8B066610', '10450500005940', 'CHOLA', 'BURGALARY', '2022-11-05', '2023-07-07', 4649.00, 118.00, 449.00, 275.00, 1762.00, 2025.00, 1, 0),
('BARB0VJCHEP', 'F8B066915', '10450600012908', '', 'ASSET', '2022-11-05', '2023-07-07', 0.00, 221.00, 155.00, 204.00, 1762.00, 2949.00, 0, 0),
('BARB0RAJAKI', '77288159', '10450600012933', '', 'PROPERTY', '2022-11-05', '2023-07-07', 0.00, 286.00, 446.00, 253.00, 2371.00, 2567.00, 0, 0),
('BARB0RAJAKI', 'F8B066911', '10450600012964', '', 'VEHICLE', '2022-11-05', '2023-07-07', 0.00, 477.00, 346.00, 228.00, 1640.00, 2228.00, 1, 0),
('BARB0AARANI', '070491005', '10450600013321', '', 'STOCK', '2022-11-05', '2023-07-07', 0.00, 207.00, 204.00, 445.00, 2437.00, 2773.00, 1, 0),
('BARB0VJCHEP', '66660961', '10450600013552', '', 'FIRE', '2022-11-05', '2023-07-07', 0.00, 240.00, 193.00, 213.00, 2074.00, 2637.00, 1, 0),
('BARB0AARANI', 'F8B067099', '10450600013587', 'CHOLA', 'PROPERTY', '2022-10-17', '2027-10-16', 7918.00, 489.00, 433.00, 126.00, 1737.00, 2941.00, 0, 0),
('BARB0AARANI', 'F8B065161', '10450600013713', '', 'FIRE', '2022-11-05', '2023-07-07', 0.00, 236.00, 126.00, 489.00, 1868.00, 2617.00, 1, 0),
('BARB0AARANI', 'F8B067138', '10450600013737', 'TATA', 'PROPERTY', '2022-11-05', '2023-07-07', 734.00, 340.00, 188.00, 271.00, 1126.00, 2292.00, 0, 0),
('BARB0VJCHEP', '020264547', '10450600013758', 'TATA', 'BURGALARY', '2022-08-20', '2027-08-19', 0.00, 139.00, 302.00, 468.00, 1209.00, 2531.00, 1, 0),
('BARB0RAJAKI', 'FI7063498', '10450600013772', 'TATA', 'STOCK', '2022-07-14', '2027-07-13', 1522.00, 210.00, 275.00, 208.00, 2287.00, 2827.00, 0, 0),
('BARB0RAJAKI', 'FI7V02333', '10450600013773', 'TATA', 'STOCK', '2022-07-14', '2027-07-13', 0.00, 169.00, 113.00, 337.00, 1546.00, 2483.00, 1, 0),
('BARB0RAJAKI', 'F8B067158', '10450600013783', 'CHOLA MS', 'BURGALARY', '2022-11-05', '2023-07-07', 19540.00, 426.00, 117.00, 143.00, 1423.00, 2125.00, 0, 0),
('BARB0VJCHEP', 'F8B065362', '10450600013942', 'TATA', 'ASSET', '2022-07-14', '2023-07-13', 2478.00, 357.00, 426.00, 477.00, 2956.00, 2856.00, 1, 0),
('BARB0RAJAKI', '020265504', '10450600013943', 'CHOLA MS', 'STOCK', '2022-10-28', '2023-10-27', 319.00, 244.00, 423.00, 306.00, 1270.00, 2094.00, 0, 0),
('BARB0RAJAKI', 'F8B067048', '10450600013968', 'TATA', 'FIRE', '2022-07-15', '2032-07-14', 3030.00, 363.00, 273.00, 172.00, 1801.00, 2591.00, 1, 0),
('BARB0RAJAKI', 'F8B064242', '10450600014060', 'CHOLA MS', 'VEHICLE', '2022-10-28', '2023-10-27', 378.00, 134.00, 154.00, 130.00, 2290.00, 2092.00, 0, 0),
('BARB0RAJAKI', 'FI7V00365', '10450600014116', 'CHOLA MS', 'FIRE', '2022-10-28', '2023-10-27', 295.00, 452.00, 114.00, 353.00, 2216.00, 2788.00, 1, 0),
('BARB0VJCHEP', 'BOE004838', '10450600014192', 'CHOLA', 'BURGALARY', '2022-10-28', '2023-10-27', 295.00, 331.00, 217.00, 181.00, 2675.00, 2323.00, 0, 0),
('BARB0VJCHEP', 'F8B067214', '10450600014250', 'CHOLA', 'ASSET', '2023-03-14', '2024-03-13', 1672.00, 113.00, 133.00, 119.00, 2808.00, 2171.00, 1, 0),
('BARB0AARANI', '073648434', '10450600014414', 'CHOLA MS', 'STOCK', '2022-10-27', '2023-10-26', 953.00, 218.00, 228.00, 175.00, 2287.00, 2552.00, 1, 0),
('BARB0RAJAKI', 'BOE003758', '10450600014652', 'CHOLA MS', 'FIRE', '2022-11-05', '2023-07-07', 572.00, 156.00, 430.00, 493.00, 2464.00, 2068.00, 0, 0),
('BARB0AARANI', 'F8B065188', '10450600014655', 'CHOLA MS', 'BURGALARY', '2022-11-05', '2023-07-07', 762.00, 438.00, 170.00, 472.00, 1151.00, 2630.00, 0, 0),
('BARB0AARANI', 'F8B067387', '10450600014710', 'CHOLA', 'BURGALARY', '2022-10-27', '2023-10-26', 4510.00, 281.00, 149.00, 417.00, 1854.00, 2888.00, 1, 0),
('BARB0AARANI', '020268872', '10450600014914', '', 'STOCK', '2022-11-05', '2023-07-07', 0.00, 187.00, 287.00, 308.00, 2407.00, 2752.00, 1, 0),
('BARB0AARANI', 'F8B067223', '10450600014916', '', 'VEHICLE', '2022-11-05', '2023-07-07', 0.00, 261.00, 466.00, 246.00, 1717.00, 2506.00, 1, 0),
('BARB0RAJAKI', '63522118', '10450600014983', 'ICICI LOMBARD GI', 'FIRE', '2022-09-21', '2023-09-20', 25084.00, 355.00, 194.00, 440.00, 1729.00, 2515.00, 1, 0),
('BARB0VJCHEP', 'F8B066559', '10450600015125', '', 'BURGALARY', '2022-11-05', '2023-07-07', 0.00, 255.00, 280.00, 405.00, 1350.00, 2522.00, 1, 0),
('BARB0RAJAKI', 'F8B067315', '10450600015157', '', 'STOCK', '2022-11-05', '2023-07-07', 0.00, 340.00, 286.00, 327.00, 1074.00, 2592.00, 1, 0),
('BARB0RAJAKI', 'F8B067823', '10450600015278', '', 'ASSET', '2022-11-05', '2023-07-07', 0.00, 121.00, 185.00, 304.00, 2009.00, 2095.00, 0, 0),
('BARB0VJCHEP', '020267232', '10450600015353', '', 'FIRE', '2022-11-05', '2023-07-07', 0.00, 476.00, 306.00, 495.00, 2769.00, 2892.00, 0, 0),
('BARB0RAJAKI', 'BOE002451', '10450600015481', 'CHOLA MS', 'FIRE', '2023-03-14', '2024-03-13', 2353.00, 324.00, 178.00, 421.00, 2127.00, 2167.00, 0, 0),
('BARB0RAJAKI', 'F8B067512', '10450600015550', 'CHOLA', 'PROPERTY', '2022-11-05', '2023-07-07', 0.00, 253.00, 329.00, 422.00, 1169.00, 2230.00, 0, 0),
('BARB0RAJAKI', 'F8B067292', '10450600015595', '', 'BURGALARY', '2022-11-05', '2023-07-07', 0.00, 355.00, 232.00, 329.00, 2692.00, 2023.00, 1, 0),
('BARB0AARANI', 'FI7V04194', '10450600015780', 'CHOLA', 'STOCK', '2023-01-23', '2024-01-22', 4239.00, 392.00, 208.00, 193.00, 1758.00, 2387.00, 1, 0),
('BARB0VJCHEP', 'F8B067567', '10450600015782', '', 'STOCK', '2022-11-05', '2023-07-07', 0.00, 498.00, 458.00, 172.00, 1811.00, 2785.00, 0, 0),
('BARB0VJCHEP', 'BOE005266', '10450600015881', '', 'BURGALARY', '2022-11-05', '2023-07-07', 0.00, 368.00, 470.00, 238.00, 1690.00, 2962.00, 1, 0),
('BARB0VJCHEP', '266895838', '10450600015909', 'SHRIRAM GI', 'ASSET', '2022-12-22', '2023-12-21', 9116.00, 319.00, 419.00, 314.00, 2246.00, 2499.00, 0, 0),
('BARB0RAJAKI', 'BOE003116', '10450600015978', 'CHOLA MS', 'BURGALARY', '2023-03-14', '2024-03-13', 4071.00, 122.00, 127.00, 350.00, 2514.00, 2039.00, 1, 0),
('BARB0VJCHEP', 'F8B067669', '10450600016041', 'CHOLA MS', 'FIRE', '2022-11-05', '2023-07-07', 0.00, 271.00, 406.00, 269.00, 1386.00, 2258.00, 1, 0),
('BARB0VJCHEP', '61450907', '10450600016056', '', 'VEHICLE', '2022-11-05', '2023-07-07', 0.00, 102.00, 300.00, 293.00, 1904.00, 2513.00, 1, 0),
('BARB0VJCHEP', 'F8B067599', '10450600016100', 'CHOLA', 'BURGALARY', '2022-11-05', '2023-07-07', 0.00, 453.00, 156.00, 179.00, 2858.00, 2663.00, 1, 0),
('BARB0AARANI', '57484925', '10450600016182', 'SRIRAM GIC', 'PROPERTY', '2023-01-14', '2024-01-13', 15722.00, 133.00, 475.00, 255.00, 2519.00, 2925.00, 1, 0),
('BARB0AARANI', 'F8B067755', '10450600016240', '', 'ASSET', '2022-11-05', '2023-07-07', 0.00, 263.00, 185.00, 276.00, 2105.00, 2448.00, 1, 0),
('BARB0RAJAKI', 'F8B065776', '10450600016257', 'CHOLA', 'BURGALARY', '2023-02-21', '2024-02-20', 1176.00, 490.00, 447.00, 442.00, 2098.00, 2974.00, 0, 0),
('BARB0VJCHEP', 'BOE004865', '10450600016464', 'CHOLA', 'BURGALARY', '2022-11-05', '2023-07-07', 2353.00, 413.00, 444.00, 359.00, 1939.00, 2319.00, 0, 0),
('BARB0RAJAKI', 'BOE000293', '10450600016703', '', 'VEHICLE', '2022-11-05', '2023-07-07', 0.00, 231.00, 458.00, 482.00, 1405.00, 2930.00, 1, 0),
('BARB0RAJAKI', 'F8B067875', '10450600017090', 'BUILDING INS', 'PROPERTY', '2022-11-05', '2023-07-07', 0.00, 249.00, 282.00, 367.00, 1036.00, 2492.00, 1, 0),
('BARB0RAJAKI', '077258739', '10450600017132', '', 'BURGALARY', '2022-11-05', '2023-07-07', 0.00, 489.00, 111.00, 163.00, 1016.00, 2257.00, 1, 0),
('BARB0VJCHEP', 'F8B067945', '10450600017227', 'CHOLA', 'BURGALARY', '2022-11-05', '2023-07-07', 9770.00, 357.00, 132.00, 474.00, 1010.00, 2066.00, 1, 1),
('BARB0AARANI', 'FI7V04749', '69580400000255', '', 'ASSET', '2022-11-05', '2023-07-07', 0.00, 250.00, 476.00, 161.00, 2063.00, 2096.00, 0, 0),
('BARB0VJCHEP', 'FI7V02920', '69580400000256', 'CHOLA MS', 'PROPERTY', '2022-01-24', '2023-01-23', 6004.00, 219.00, 288.00, 298.00, 2517.00, 2900.00, 0, 0),
('BARB0RAJAKI', 'FI7063299', '69580600003060', 'CHOLA MS', 'ASSET', '2022-11-05', '2023-07-07', 8142.00, 265.00, 416.00, 464.00, 2866.00, 2150.00, 0, 0),
('BARB0RAJAKI', 'FI7V03898', '69580600003223', '', 'PROPERTY', '2022-11-05', '2023-07-07', 0.00, 274.00, 326.00, 247.00, 2199.00, 2146.00, 0, 0),
('BARB0RAJAKI', 'FI7V03731', '69580600003453', 'CHOLA MS', 'PROPERTY', '2022-01-24', '2023-01-23', 0.00, 211.00, 476.00, 362.00, 2959.00, 2024.00, 0, 0),
('BARB0RAJAKI', 'FI7063574', '69580600003535', 'CHOLA MS', 'STOCK', '2022-11-05', '2023-07-07', 0.00, 340.00, 369.00, 197.00, 1543.00, 2643.00, 0, 0),
('BARB0VJCHEP', 'FI7V01354', '69580600003553', '', 'PROPERTY', '2022-11-05', '2023-07-07', 0.00, 373.00, 334.00, 499.00, 1252.00, 2306.00, 1, 0),
('BARB0AARANI', 'FI7063585', '69580600003711', '', 'VEHICLE', '2022-11-05', '2023-07-07', 0.00, 213.00, 179.00, 387.00, 1670.00, 2263.00, 0, 0),
('BARB0VJCHEP', 'FI7063482', '69580600003743', 'CHOLA', 'BURGALARY', '2022-10-12', '2023-10-11', 2290.00, 337.00, 321.00, 489.00, 2787.00, 2661.00, 1, 0),
('BARB0AARANI', 'FI7063622', '69580600003805', 'CHOLA', 'VEHICLE', '2022-10-17', '2022-10-16', 539.00, 393.00, 372.00, 470.00, 2425.00, 2111.00, 0, 0);

--
-- Triggers `documentation`
--
DELIMITER $$
CREATE TRIGGER `documentationToTask` AFTER INSERT ON `documentation` FOR EACH ROW BEGIN
set @custid2=(select cust_id from documentation where trigPriority=1);
set @bankid2=(select bank_id from documentation where trigPriority=1);
set @loanacct2=(select loan_acctno from documentation where trigPriority=1);
set @taskdate2=(select insurance_to from documentation where trigPriority=1);
insert into tasks values(@bankid2,@custid2,@loanacct2,'Insurance',@taskDate2);
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

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`userid`, `rating`, `comments`) VALUES
('durga', 3, 'Great app, need update features too'),
('anil', 5, 'Great app, delivers all required features\r\n'),
('latha', 4, 'Satisfied with the app, UX can be a bit faster');

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
('durga', 'durga@gmail.com', 0, 0, 1, 0),
('latha', 'latha@gmail.com', 0, 0, 1, 1),
('satya', 'satya@gmail.com', 1, 0, 1, 0);

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
('BARB0AARANI', '020265459', '10450400000205', 'Review', '2022-12-31'),
('BARB0AARANI', 'FI7V04749', '69580400000255', 'Review', '2022-12-30'),
('BARB0RAJAKI', 'FI7063299', '69580600003060', 'Review', '2022-12-09'),
('BARB0RAJAKI', 'FI7V03898', '69580600003223', 'Review', '2023-05-10'),
('BARB0RAJAKI', 'FI7V03731', '69580600003453', 'Review', '2022-12-30'),
('BARB0RAJAKI', 'FI7063574', '69580600003535', 'Review', '2023-05-09'),
('BARB0VJCHEP', 'FI7V01354', '69580600003553', 'Review', '2022-12-05'),
('BARB0AARANI', 'F8B066735', '10450400000285', 'Review', '2022-12-04'),
('BARB0AARANI', 'FI7063585', '69580600003711', 'Review', '2022-12-08'),
('BARB0VJCHEP', 'FI7V02920', '69580400000256', 'Review', '2022-12-09'),
('BARB0VJCHEP', 'FI7063482', '69580600003743', 'Review', '2022-12-10'),
('BARB0VJCHEP', 'F8B066915', '10450600012908', 'Review', '2022-12-12'),
('BARB0RAJAKI', '77288159', '10450600012933', 'Review', '2023-04-29'),
('BARB0RAJAKI', 'F8B066911', '10450600012964', 'Review', '2023-05-07'),
('BARB0AARANI', 'FI7063622', '69580600003805', 'Review', '2022-12-05'),
('BARB0RAJAKI', 'F8B066364', '10450500005605', 'Review', '2022-12-09'),
('BARB0RAJAKI', '20274169', '10450400000286', 'Review', '2022-12-22'),
('BARB0RAJAKI', 'F8B063665', '10450500005611', 'Review', '2023-05-05'),
('BARB0RAJAKI', 'F8B065037', '10450400000287', 'Review', '2023-05-03'),
('BARB0AARANI', '070491005', '10450600013321', 'Review', '2022-12-17'),
('BARB0VJCHEP', '66660961', '10450600013552', 'Review', '2022-12-29'),
('BARB0AARANI', 'F8B067099', '10450600013587', 'Review', '2022-12-19'),
('BARB0AARANI', 'F8B067138', '10450600013737', 'Review', '2022-12-24'),
('BARB0AARANI', 'F8B065161', '10450600013713', 'Review', '2022-12-31'),
('BARB0VJCHEP', '020264547', '10450600013758', 'Review', '2022-12-28'),
('BARB0RAJAKI', 'FI7063498', '10450600013772', 'Review', '2022-12-21'),
('BARB0RAJAKI', 'FI7V02333', '10450600013773', 'Review', '2022-12-12'),
('BARB0RAJAKI', 'F8B067158', '10450600013783', 'Review', '2023-05-01'),
('BARB0VJCHEP', 'F8B065362', '10450600013942', 'Review', '2022-12-06'),
('BARB0RAJAKI', '020265504', '10450600013943', 'Review', '2022-12-19'),
('BARB0RAJAKI', 'F8B067048', '10450600013968', 'Review', '2022-12-05'),
('BARB0RAJAKI', 'F8B064242', '10450600014060', 'Review', '2022-12-20'),
('BARB0RAJAKI', 'FI7V00365', '10450600014116', 'Review', '2022-12-21'),
('BARB0VJCHEP', 'BOE004838', '10450600014192', 'Review', '2022-12-20'),
('BARB0VJCHEP', 'F8B067214', '10450600014250', 'Review', '2022-12-02'),
('BARB0AARANI', '073648434', '10450600014414', 'Review', '2022-12-31'),
('BARB0RAJAKI', 'BOE003758', '10450600014652', 'Review', '2023-05-30'),
('BARB0AARANI', 'F8B065188', '10450600014655', 'Review', '2022-12-19'),
('BARB0AARANI', 'F8B067256', '10450400000290', 'Review', '2022-12-07'),
('BARB0AARANI', 'F8B067387', '10450600014710', 'Review', '2022-12-21'),
('BARB0AARANI', '020268872', '10450600014914', 'Review', '2022-12-09'),
('BARB0AARANI', 'F8B067223', '10450600014916', 'Review', '2022-11-30'),
('BARB0RAJAKI', '63522118', '10450600014983', 'Review', '2022-12-17'),
('BARB0VJCHEP', 'F8B066559', '10450600015125', 'Review', '2022-12-20'),
('BARB0RAJAKI', 'F8B067315', '10450600015157', 'Review', '2022-12-06'),
('BARB0RAJAKI', 'F8B067823', '10450600015278', 'Review', '2023-06-25'),
('BARB0VJCHEP', '020267232', '10450600015353', 'Review', '2022-12-06'),
('BARB0RAJAKI', 'F8B067394', '10450400000292', 'Review', '2022-12-29'),
('BARB0RAJAKI', 'BOE002451', '10450600015481', 'Review', '2022-12-12'),
('BARB0RAJAKI', 'F8B067512', '10450600015550', 'Review', '2022-12-28'),
('BARB0RAJAKI', 'F8B066871', '10450400000293', 'Review', '2022-12-01'),
('BARB0RAJAKI', 'F8B067292', '10450600015595', 'Review', '2022-12-25'),
('BARB0AARANI', 'FI7V04194', '10450600015780', 'Review', '2022-12-04'),
('BARB0VJCHEP', 'F8B067567', '10450600015782', 'Review', '2022-12-13'),
('BARB0VJCHEP', 'BOE005266', '10450600015881', 'Review', '2022-12-12'),
('BARB0VJCHEP', '266895838', '10450600015909', 'Review', '2022-12-04'),
('BARB0RAJAKI', 'BOE003116', '10450600015978', 'Review', '2022-12-24'),
('BARB0VJCHEP', 'F8B067669', '10450600016041', 'Review', '2022-12-31'),
('BARB0VJCHEP', '61450907', '10450600016056', 'Review', '2022-12-10'),
('BARB0VJCHEP', 'F8B067599', '10450600016100', 'Review', '2022-12-17'),
('BARB0AARANI', '57484925', '10450600016182', 'Review', '2022-12-30'),
('BARB0AARANI', '267680096', '10450400000294', 'Review', '2022-12-12'),
('BARB0AARANI', 'F8B067755', '10450600016240', 'Review', '2022-12-03'),
('BARB0RAJAKI', 'F8B065776', '10450600016257', 'Review', '2022-12-09'),
('BARB0VJCHEP', 'F8B063760', '10450500005870', 'Review', '2022-12-28'),
('BARB0RAJAKI', 'F8B067800', '10450400000295', 'Review', '2022-12-10'),
('BARB0VJCHEP', 'BOE004865', '10450600016464', 'Review', '2022-12-16'),
('BARB0RAJAKI', 'F8B066610', '10450500005940', 'Review', '2022-12-30'),
('BARB0RAJAKI', 'BOE000293', '10450600016703', 'Review', '2022-12-12'),
('BARB0AARANI', 'FI7V04481', '10450400000296', 'Review', '2022-12-25'),
('BARB0RAJAKI', 'F8B067875', '10450600017090', 'Review', '2022-12-22'),
('BARB0RAJAKI', '077258739', '10450600017132', 'Review', '2023-06-08'),
('BARB0VJCHEP', 'F8B067945', '10450600017227', 'Review', '2023-07-07'),
('BARB0AARANI', '020265459', '10450400000205', 'Insurance', '2023-07-07'),
('BARB0AARANI', 'FI7V04749', '69580400000255', 'Insurance', '2023-07-07'),
('BARB0RAJAKI', 'FI7063299', '69580600003060', 'Insurance', '2023-07-07'),
('BARB0RAJAKI', 'FI7V03898', '69580600003223', 'Insurance', '2023-05-10'),
('BARB0RAJAKI', 'FI7V03731', '69580600003453', 'Insurance', '2023-01-23'),
('BARB0RAJAKI', 'FI7063574', '69580600003535', 'Insurance', '2023-05-09'),
('BARB0VJCHEP', 'FI7V01354', '69580600003553', 'Insurance', '2023-07-07'),
('BARB0AARANI', 'F8B066735', '10450400000285', 'Insurance', '2023-07-07'),
('BARB0AARANI', 'FI7063585', '69580600003711', 'Insurance', '2023-07-07'),
('BARB0VJCHEP', 'FI7V02920', '69580400000256', 'Insurance', '2023-01-23'),
('BARB0VJCHEP', 'FI7063482', '69580600003743', 'Insurance', '2023-10-11'),
('BARB0VJCHEP', 'F8B066915', '10450600012908', 'Insurance', '2023-07-07'),
('BARB0RAJAKI', '77288159', '10450600012933', 'Insurance', '2023-04-29'),
('BARB0RAJAKI', 'F8B066911', '10450600012964', 'Insurance', '2023-05-07'),
('BARB0AARANI', 'FI7063622', '69580600003805', 'Insurance', '2022-10-16'),
('BARB0RAJAKI', 'F8B066364', '10450500005605', 'Insurance', '2023-07-07'),
('BARB0RAJAKI', '20274169', '10450400000286', 'Insurance', '2023-07-07'),
('BARB0RAJAKI', 'F8B063665', '10450500005611', 'Insurance', '2023-05-05'),
('BARB0RAJAKI', 'F8B065037', '10450400000287', 'Insurance', '2023-05-03'),
('BARB0AARANI', '070491005', '10450600013321', 'Insurance', '2023-07-07'),
('BARB0VJCHEP', '66660961', '10450600013552', 'Insurance', '2023-07-07'),
('BARB0AARANI', 'F8B067099', '10450600013587', 'Insurance', '2027-10-16'),
('BARB0AARANI', 'F8B067138', '10450600013737', 'Insurance', '2023-07-07'),
('BARB0AARANI', 'F8B065161', '10450600013713', 'Insurance', '2023-07-07'),
('BARB0VJCHEP', '020264547', '10450600013758', 'Insurance', '2027-08-19'),
('BARB0RAJAKI', 'FI7063498', '10450600013772', 'Insurance', '2027-07-13'),
('BARB0RAJAKI', 'FI7V02333', '10450600013773', 'Insurance', '2027-07-13'),
('BARB0RAJAKI', 'F8B067158', '10450600013783', 'Insurance', '2023-05-01'),
('BARB0VJCHEP', 'F8B065362', '10450600013942', 'Insurance', '2023-07-13'),
('BARB0RAJAKI', '020265504', '10450600013943', 'Insurance', '2023-10-27'),
('BARB0RAJAKI', 'F8B067048', '10450600013968', 'Insurance', '2032-07-14'),
('BARB0RAJAKI', 'F8B064242', '10450600014060', 'Insurance', '2023-10-27'),
('BARB0RAJAKI', 'FI7V00365', '10450600014116', 'Insurance', '2023-10-27'),
('BARB0VJCHEP', 'BOE004838', '10450600014192', 'Insurance', '2023-10-27'),
('BARB0VJCHEP', 'F8B067214', '10450600014250', 'Insurance', '2024-03-13'),
('BARB0AARANI', '073648434', '10450600014414', 'Insurance', '2023-10-26'),
('BARB0RAJAKI', 'BOE003758', '10450600014652', 'Insurance', '2023-05-30'),
('BARB0AARANI', 'F8B065188', '10450600014655', 'Insurance', '2023-07-07'),
('BARB0AARANI', 'F8B067256', '10450400000290', 'Insurance', '2024-03-13'),
('BARB0AARANI', 'F8B067387', '10450600014710', 'Insurance', '2023-10-26'),
('BARB0AARANI', '020268872', '10450600014914', 'Insurance', '2023-07-07'),
('BARB0AARANI', 'F8B067223', '10450600014916', 'Insurance', '2023-07-07'),
('BARB0RAJAKI', '63522118', '10450600014983', 'Insurance', '2023-09-20'),
('BARB0VJCHEP', 'F8B066559', '10450600015125', 'Insurance', '2023-07-07'),
('BARB0RAJAKI', 'F8B067315', '10450600015157', 'Insurance', '2023-07-07'),
('BARB0RAJAKI', 'F8B067823', '10450600015278', 'Insurance', '2023-06-25'),
('BARB0VJCHEP', '020267232', '10450600015353', 'Insurance', '2023-07-07'),
('BARB0RAJAKI', 'F8B067394', '10450400000292', 'Insurance', '2023-11-09'),
('BARB0RAJAKI', 'BOE002451', '10450600015481', 'Insurance', '2024-03-13'),
('BARB0RAJAKI', 'F8B067512', '10450600015550', 'Insurance', '2023-07-07'),
('BARB0RAJAKI', 'F8B066871', '10450400000293', 'Insurance', '2024-02-20'),
('BARB0RAJAKI', 'F8B067292', '10450600015595', 'Insurance', '2023-07-07'),
('BARB0AARANI', 'FI7V04194', '10450600015780', 'Insurance', '2024-01-22'),
('BARB0VJCHEP', 'F8B067567', '10450600015782', 'Insurance', '2023-07-07'),
('BARB0VJCHEP', 'BOE005266', '10450600015881', 'Insurance', '2023-07-07'),
('BARB0VJCHEP', '266895838', '10450600015909', 'Insurance', '2023-12-21'),
('BARB0RAJAKI', 'BOE003116', '10450600015978', 'Insurance', '2024-03-13'),
('BARB0VJCHEP', 'F8B067669', '10450600016041', 'Insurance', '2023-07-07'),
('BARB0VJCHEP', '61450907', '10450600016056', 'Insurance', '2023-07-07'),
('BARB0VJCHEP', 'F8B067599', '10450600016100', 'Insurance', '2023-07-07'),
('BARB0AARANI', '57484925', '10450600016182', 'Insurance', '2024-01-13'),
('BARB0AARANI', '267680096', '10450400000294', 'Insurance', '2024-02-20'),
('BARB0AARANI', 'F8B067755', '10450600016240', 'Insurance', '2023-07-07'),
('BARB0RAJAKI', 'F8B065776', '10450600016257', 'Insurance', '2024-02-20'),
('BARB0VJCHEP', 'F8B063760', '10450500005870', 'Insurance', '2024-02-06'),
('BARB0RAJAKI', 'F8B067800', '10450400000295', 'Insurance', '2024-02-20'),
('BARB0VJCHEP', 'BOE004865', '10450600016464', 'Insurance', '2023-07-07'),
('BARB0RAJAKI', 'F8B066610', '10450500005940', 'Insurance', '2023-07-07'),
('BARB0RAJAKI', 'BOE000293', '10450600016703', 'Insurance', '2023-07-07'),
('BARB0AARANI', 'FI7V04481', '10450400000296', 'Insurance', '2023-07-07'),
('BARB0RAJAKI', 'F8B067875', '10450600017090', 'Insurance', '2023-07-07'),
('BARB0RAJAKI', '077258739', '10450600017132', 'Insurance', '2023-06-08'),
('BARB0VJCHEP', 'F8B067945', '10450600017227', 'Insurance', '2023-07-07');

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
