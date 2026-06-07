-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 29, 2023 at 08:32 AM
-- Server version: 5.7.41
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thrivin2_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `firstname`, `middlename`, `lastname`) VALUES
(2, 'admin', 'admin', 'Main Doc', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `birthing`
--

CREATE TABLE `birthing` (
  `birth_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(10) NOT NULL,
  `chief_complaint` varchar(100) NOT NULL,
  `history` varchar(100) NOT NULL,
  `lmp` varchar(15) NOT NULL,
  `edc` varchar(15) NOT NULL,
  `aog` varchar(15) NOT NULL,
  `G` varchar(15) NOT NULL,
  `P` varchar(15) NOT NULL,
  `1` varchar(15) NOT NULL,
  `2` varchar(15) NOT NULL,
  `3` varchar(15) NOT NULL,
  `4` varchar(15) NOT NULL,
  `bp1` varchar(15) NOT NULL,
  `bp2` varchar(15) NOT NULL,
  `pr` varchar(15) NOT NULL,
  `rr` varchar(15) NOT NULL,
  `T` varchar(15) NOT NULL,
  `head_neck` varchar(15) NOT NULL,
  `chest` varchar(15) NOT NULL,
  `heart` varchar(15) NOT NULL,
  `abdomen` varchar(15) NOT NULL,
  `fhb` varchar(15) NOT NULL,
  `loc` varchar(15) NOT NULL,
  `extremities` varchar(15) NOT NULL,
  `vulva` varchar(15) NOT NULL,
  `vagina` varchar(15) NOT NULL,
  `cervix` varchar(15) NOT NULL,
  `uterus` varchar(15) NOT NULL,
  `bow` varchar(15) NOT NULL,
  `presentation` varchar(15) NOT NULL,
  `vaginal_discharge` varchar(15) NOT NULL,
  `staff` varchar(30) NOT NULL,
  `itr_no` varchar(4) NOT NULL,
  `user_id` varchar(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `com_id` int(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `complaints` text,
  `remark` text,
  `itr_no` varchar(50) NOT NULL,
  `section` varchar(20) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`com_id`, `date`, `complaints`, `remark`, `itr_no`, `section`, `status`) VALUES
(10, '2021-05-20 13:07:02', 'Head ache', 'painkiler', '0706959755', 'General', 'Pending'),
(11, '2021-05-21 07:23:00', 'pain on  leg', 'apply kaluma', '0706958674', 'General', 'Pending'),
(12, '2021-05-21 07:45:43', 'swollen leg and pain in the chest', 'hjakfjkajsfjshhfjasdkfhkjuoier', '0737999048', 'General', 'Pending'),
(13, '2021-05-21 07:46:42', 'head ache', 'take painkillers', '0737999048', 'General', 'Pending'),
(14, '2021-06-28 12:16:17', '', '', '0798643045', 'General', 'Pending'),
(15, '2021-07-04 18:32:46', '', '', '23456', 'General', 'Pending'),
(16, '2021-07-09 18:57:59', 'sadas', 'sadsad', '23456', 'Dental', 'Pending'),
(17, '2021-07-09 18:58:14', 'wqdwqd', 'wqdwqd', '23456', 'Fecalysis', 'Pending'),
(18, '2021-07-09 18:58:32', 'wdqwd', 'qwdwqdwq', '23456', 'Dental', 'Pending'),
(19, '2021-07-29 19:37:53', '', '', '23456', 'Hematology', 'Pending'),
(20, '2021-08-11 05:23:40', '', '', '0790867455', 'Sputum', 'Pending'),
(21, '2021-08-23 10:00:30', 'OKIYAAL', 'ABDI', '48867', 'Urinalysis', 'Pending'),
(22, '2021-08-24 12:17:58', 'gdyhdhj', 'tfhtghjh', '9072100835', 'General', 'Pending'),
(23, '2021-08-24 12:18:39', 'gdrydryyt', 'tfutfutfuuu', '9072100835', 'General', 'Pending'),
(24, '2021-08-29 14:40:46', 'I want to have this source code', 'Can you please give me?', '098765432', 'Xray', 'Pending'),
(25, '2021-09-26 15:35:50', '', '', '23456', 'General', 'Pending'),
(26, '2021-11-07 11:05:39', 'agg', 'dasdfs', '48867', 'General', 'Pending'),
(27, '2021-11-15 12:33:28', 'Headhache', 'Biogesic', '23456', 'General', 'Pending'),
(28, '2021-12-29 15:30:19', 'sakit sa ulo', 'dd', '8700', 'Dental', 'Pending'),
(29, '2022-01-10 06:35:25', 'fh', 'fgh', '8700', 'Dental', 'Pending'),
(30, '2022-01-10 06:35:48', 'gggggggggggggg', 'ggggggggggggggggggggggggggg', '8700', 'General', 'Pending'),
(31, '2022-01-21 09:44:41', 'jhjhjkhuyuiyh', 'uuugyfhfyfyfy', '23456', 'Fecalysis', 'Pending'),
(32, '2022-01-24 07:54:47', 'getet', 'etete', '8700', 'Xray', 'Pending'),
(33, '2022-03-10 09:25:12', 'dry cough', 'TB', '09656569863', 'General', 'Pending'),
(34, '2022-03-23 06:00:23', '', '', '0706959755', 'General', 'Pending'),
(35, '2022-06-06 16:22:09', 'jjjj', 'jjik', '48867', 'Dental', 'Pending'),
(36, '2022-07-20 09:58:42', 'bxbxb 500mg', '', '076865744', 'Dental', 'Pending'),
(37, '2022-08-06 05:29:09', 'Vomiting ', '', '0706959755', 'Fecalysis', 'Pending'),
(38, '2022-08-06 05:38:02', 'Masakit ang kuko', 'Painkiller', '0926395326', 'General', 'Pending'),
(39, '2022-08-06 06:32:54', '', '', '076865744', 'Hematology', 'Pending'),
(40, '2022-08-22 04:56:02', 'Complaints', 'Remarks:', '', 'General', 'Pending'),
(41, '2022-10-05 03:15:21', 'Pain', 'Medicine', '121222263', 'Rehabilitation', 'Pending'),
(42, '2022-10-05 03:16:16', 'Love', 'Fuck', '121222263', 'Maternity', 'Pending'),
(43, '2022-10-05 13:28:40', 'PAST ONE YEAR HAND PAIN RH WITH RIST FRACTURE ', 'FRACTURE \r\nPAIN JP/AUTHORITIS/LUNG INFECTION /COSTRIPATION ', '9944040565', 'General', 'Pending'),
(44, '2022-10-13 08:31:56', 'jdgkelkhlgi', 'cghfj', '8700', 'Dental', 'Pending'),
(45, '2022-10-18 09:53:23', 'uuuuuu', 'tttttt', '8700', 'Dental', 'Pending'),
(46, '2022-12-03 18:51:09', 'sdfsdf', 'adsada', '8700', 'Maternity', 'Pending'),
(47, '2022-12-04 16:55:21', 'asdadsads', 'asdasd', '', 'Urinalysis', 'Pending'),
(48, '2022-12-29 04:54:15', 'Mahal', '', '5477454', 'Xray', 'Pending'),
(49, '2023-10-22 10:08:31', 'coldness', 'guy should be deported', '', 'General', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `dental`
--

CREATE TABLE `dental` (
  `dental_no` int(11) NOT NULL,
  `date` date NOT NULL,
  `dentist` varchar(30) NOT NULL,
  `tooth` int(3) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fecalisys`
--

CREATE TABLE `fecalisys` (
  `fecalisys_id` int(11) NOT NULL,
  `date_of_request` date NOT NULL,
  `requested_by` varchar(30) NOT NULL,
  `color` varchar(15) NOT NULL,
  `consistency` varchar(15) NOT NULL,
  `pus_cells` varchar(15) NOT NULL,
  `RBC` varchar(15) NOT NULL,
  `fat_globules` varchar(15) NOT NULL,
  `occult_blood` varchar(15) NOT NULL,
  `others_chem` varchar(15) NOT NULL,
  `ova` varchar(15) NOT NULL,
  `larva` varchar(15) NOT NULL,
  `adult_forms` varchar(15) NOT NULL,
  `cyst` varchar(15) NOT NULL,
  `trophozoites` varchar(15) NOT NULL,
  `others_pro` varchar(15) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `date_reported` date NOT NULL,
  `pathologist` varchar(30) NOT NULL,
  `medical_technologist` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hematology`
--

CREATE TABLE `hematology` (
  `hem_id` int(11) NOT NULL,
  `date_requested` date NOT NULL,
  `requested_by` varchar(30) NOT NULL,
  `hemoglobin` varchar(15) NOT NULL,
  `hematocrit` varchar(15) NOT NULL,
  `RBC_count` varchar(15) NOT NULL,
  `WBC_count` varchar(15) NOT NULL,
  `platelet` varchar(15) NOT NULL,
  `bleeding_time` varchar(15) NOT NULL,
  `clotting_time` varchar(15) NOT NULL,
  `neutrophil` varchar(15) NOT NULL,
  `segmenters` varchar(15) NOT NULL,
  `stabs` varchar(15) NOT NULL,
  `lymphocytes` varchar(15) NOT NULL,
  `monocyte` varchar(15) NOT NULL,
  `eosinophil` varchar(15) NOT NULL,
  `basophil` varchar(15) NOT NULL,
  `total` varchar(15) NOT NULL,
  `ABO_group` varchar(15) NOT NULL,
  `Rh_group` varchar(15) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `pathologist` varchar(30) NOT NULL,
  `medical_technologist` varchar(30) NOT NULL,
  `itr_no` varchar(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itr`
--

CREATE TABLE `itr` (
  `itr_no` varchar(255) NOT NULL,
  `family_no` varchar(255) DEFAULT NULL,
  `phil_health_no` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `middlename` varchar(20) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `birthdate` varchar(255) DEFAULT NULL,
  `age` int(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `civil_status` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `BP` varchar(255) DEFAULT NULL,
  `TEMP` varchar(255) DEFAULT NULL,
  `PR` varchar(255) DEFAULT NULL,
  `RR` varchar(255) DEFAULT NULL,
  `WT` varchar(255) DEFAULT NULL,
  `HT` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itr`
--

INSERT INTO `itr` (`itr_no`, `family_no`, `phil_health_no`, `firstname`, `middlename`, `lastname`, `birthdate`, `age`, `address`, `civil_status`, `gender`, `BP`, `TEMP`, `PR`, `RR`, `WT`, `HT`) VALUES
('', '567', 'abc@gmail.com', 'RONALD', 'DIN', 'CRUZ', '01/08/1989', 29, 'QUEZON CITY', 'Single', 'Male', '110/80', '36Â°C', '89', '18', '45kg', '5\'4'),
('01092100453', '9392718181', 'sbahab', 'mahmoud', 'sayed', 'mohamed', '01/03/2020', 25, 'shshsy', 'Single', 'Male', '333', '555&deg;C', '333', '333', '555kg', '333'),
('0706958674', '0099999', 'abdimohed@gmail.com', 'abdi', 'mohed', 'yousuf', '11/02/1999', 22, 'hargeisa', 'Single', 'Male', '89', '56Â°C', '76', '34', '34kg', '57'),
('0706959755', '90000', '788878', 'martin', 'p', 'patton', '01/14/1970', 34, 'nairobi', 'Single', 'Male', '90', '90', '90', '90', '90', '90'),
('0708957895', '', '', 'json', 'jz', 'bigman', '01/19/1970', 31, 'thika', 'Married', 'Male', '89', '89Â°C', '90', '89', '89kg', '89'),
('0708963044', '0708963044', '6788', 'king', 'mosem', 'jay', '02/19/2003', 54, 'Machakos', 'Married', 'Male', '78', '78Â°C', '78', '78', '78kg', '78'),
('0708964045', '', 'zvickatua@gmail.com', 'Barrack', 'Moses', 'Obama', '08/31/1988', 47, 'thika', 'Single', 'Male', '89', '89Â°C', '89', '89', '89kg', '89'),
('0737999048', '0737999048', 'elon@musk.com', 'Elon', 'M.', 'Musk', '04/03/1970', 51, 'nairobi', 'Married', 'Male', '86', '56Â°C', '56', '56', '76kg', '67'),
('076865744', '', '', 'sorry', 'sorry', 'khoza', '03/01/2019', 4, 'likazi', 'Single', 'Female', '33', '8Â°C', '33', '33', '4kg', '33'),
('0790867455', '079086745', '', 'Donald', 'G', 'Trump', '01/03/2002', 13, 'nairobi', 'Single', 'Female', '34', '34Â°C', '34', '34', '34kg', '34'),
('0798643045', '079864304', '', 'Nzioka', 'vic', 'Vic', '01/02/1990', 30, 'nairobi', 'Single', 'Male', '89', '85Â°C', '67', '56', '56kg', '67'),
('08064529820', '', '', 'hp', 'pa', 'og', '02/02/1962', 1, 'mpjkhhguhguhuh', 'Single', 'Female', '100', '35&deg;C', '415', '636', '62kg', '52'),
('0926395326', '', 'mjmjmj123@gmail.com', 'Mj', '', 'Baua', '09/16/2002', 19, 'taga jan lang', 'Single', 'Male', '180/100', '40&deg;C', '120', '50', '60kg', '180cm'),
('09286450450', '', '', 'Jasw', '', 'Lizardo', '10/05/2000', 21, 'Tokyo, Japan', 'Single', 'Female', '110/60', '36&deg;C', '89', '16', '51kg', '5\"3\''),
('09388416599', '', 'fortinjomar07@gmail.com', 'Jomar', '', 'Fortin', '02/01/1998', 23, 'IBA ZAMBALES', 'Single', 'Male', '51', '35&deg;C', '23', '52', '33kg', '32'),
('09656569863', '', '', 'Daniel ', 'D', 'Lopez', '07/14/1991', 30, 'sorsogon city', 'Single', 'Male', '120/60', '36&deg;C', '62', '50', '62kg', '60'),
('098765432', '', 'nana@gmail.com', 'Nana', 'nan', 'nanana', '01/01/2000', 30, 'PhnomPenh', 'Married', 'Female', 'r', '34&deg;C', 'w', 'ee', '45kg', 'ww'),
('121222263', '', 'fgvnbn', 'bhk', '', '54', '01/02/2022', 20, 'https://imaster.co.ke/projects/hospital/admin/patient.php', 'Single', 'Male', '11', '42&deg;C', '52', '12', '45kg', '45'),
('125677', '', 'wde@gmail.com', 'edrfg', 'jedf', 'werfd', '05/15/2006', 23, 'qwadgn hhyhyy ', 'Married', 'Male', '14', '14&deg;C', '56', '345', '09kg', '34'),
('23456', '', '', 'Akshay ', 'Vijay', 'Vijay', '02/05/2005', 20, '6505 th avenue', 'Married', 'Male', 'AAZ', '5Â°C', 'AAA', 'AAA', '6kg', 'AAAA'),
('4546454646', '', '', 'GGGG', '', 'FFFF', '04/04/2019', 34, 'GRFGFG', 'Married', 'Female', '44', '44&deg;C', '44', '44', '44kg', '44'),
('48867', '', 'hawadiiriy34@gmail.com', 'hawa', 'diriye', 'bile', '02/18/2017', 71, 'hargeisa', 'Married', 'Female', '12', '34Â°C', '11', '45', '78kg', '50'),
('5477454', '', '', 'Ja', '', 'Go', '10/12/1997', 25, 'Mars', 'Single', 'Female', '120/80', '38&deg;C', '25', '54', '60kg', '120'),
('5554554', '', '', 'rer', '', 'eeee', '02/02/2018', 23, 'ddffb', 'Single', 'Male', '44', '44&deg;C', '44', '44', '44kg', '44'),
('56575765', '', 'dejenekasa1@gmail.com', '5675', '5675', '567', '02/09/2021', 54, 'Addis Ababa, Bole', 'Married', 'Male', '45', '45&deg;C', '45', '45', '45kg', '45'),
('7887768667', '876879879', 'nhgfjhjfthghf@gmail.com', 'Lavnaya', 'tgrygrygtry', 'bhfghh', '04/02/2018', 56, '3/213,sdfdsfdsfgsg', 'Single', 'Male', '110', '67Â°C', '90', '67', '70kg', '140'),
('8700', '', 'dasd', 'sadad', 'sdd', 'dddd', '02/01/2021', 12, 'dasd', 'Single', 'Male', '12', '43Â°C', '12', '12', '12kg', '12'),
('9072100835', '', '', 'Shambu', '', 'prabhakar', '03/14/1994', 33, 'revathy kadappakada kollam', 'Single', 'Male', '110', '0&deg;C', '200', '210', '0kg', '122'),
('9658451', '', 'fdao9nkfd@gmail.com', 'tewstig', '', 'js', '03/03/2005', 56, 'testing address', 'Single', 'Male', '120', '96&deg;C', '343', '43', '89kg', '5.7'),
('9944040565', '', 'abc1@gmail.com', 'VIJAY', '', 'V', '09/18/1988', 34, 'CHENNAI', 'Married', 'Male', '110/20', '97&deg;C', '100', '11', '70kg', '165');

-- --------------------------------------------------------

--
-- Table structure for table `maternity_patient`
--

CREATE TABLE `maternity_patient` (
  `patient_id` int(50) NOT NULL,
  `case_no` varchar(20) NOT NULL,
  `nhts` varchar(30) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `philhealth` varchar(30) NOT NULL,
  `pat_firstname` varchar(30) NOT NULL,
  `pat_middlename` varchar(30) NOT NULL,
  `pat_lastname` varchar(30) NOT NULL,
  `age` int(10) NOT NULL,
  `religion` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `date_of_birth` varchar(20) NOT NULL,
  `date_of_admission` varchar(20) NOT NULL,
  `time_of_admission` varchar(20) NOT NULL,
  `spouse_firstname` varchar(30) NOT NULL,
  `spouse_middlename` varchar(30) NOT NULL,
  `spouse_lastname` varchar(30) NOT NULL,
  `spouse_age` int(10) NOT NULL,
  `spouse_religion` varchar(30) NOT NULL,
  `spouse_occupation` varchar(30) NOT NULL,
  `G` varchar(20) NOT NULL,
  `T` varchar(20) NOT NULL,
  `A` varchar(20) NOT NULL,
  `L` varchar(20) NOT NULL,
  `lmp` varchar(20) NOT NULL,
  `edc` varchar(20) NOT NULL,
  `aog` varchar(20) NOT NULL,
  `fetal_position` varchar(20) NOT NULL,
  `fh` varchar(20) NOT NULL,
  `fhb` varchar(20) NOT NULL,
  `loc` varchar(20) NOT NULL,
  `admitting_diagnose` varchar(100) NOT NULL,
  `midwife` varchar(50) NOT NULL,
  `date_of_delivery` varchar(20) NOT NULL,
  `time` varchar(10) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `wt` varchar(10) NOT NULL,
  `baby_firstname` varchar(30) NOT NULL,
  `baby_middlename` varchar(30) NOT NULL,
  `baby_lastname` varchar(30) NOT NULL,
  `hepa` varchar(30) NOT NULL,
  `bcg` varchar(30) NOT NULL,
  `nbs` varchar(30) NOT NULL,
  `date_of_discharge` varchar(30) NOT NULL,
  `time_of_discharge` varchar(30) NOT NULL,
  `final_diagnosis` varchar(100) NOT NULL,
  `disposition_on_charge` varchar(50) NOT NULL,
  `itr_no` varchar(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prenatal`
--

CREATE TABLE `prenatal` (
  `prenatal_no` int(11) NOT NULL,
  `date` date NOT NULL,
  `chief_complaint` varchar(100) NOT NULL,
  `attending_physician` varchar(30) NOT NULL,
  `lmp` varchar(20) NOT NULL,
  `ga_by_lmp` varchar(20) NOT NULL,
  `edc_by_lmp` varchar(20) NOT NULL,
  `fhr` varchar(20) NOT NULL,
  `ga_by_sonar` varchar(20) NOT NULL,
  `edc_by_utz` varchar(20) NOT NULL,
  `pregnancy_age` varchar(20) NOT NULL,
  `biparietal_diameter` varchar(20) NOT NULL,
  `biparietal_eq` varchar(20) NOT NULL,
  `head_circumference` varchar(20) NOT NULL,
  `head_circumference_eq` varchar(20) NOT NULL,
  `abdominal_circumference` varchar(20) NOT NULL,
  `abdominal_circumference_eq` varchar(20) NOT NULL,
  `femoral_length` varchar(20) NOT NULL,
  `femoral_length_eq` varchar(20) NOT NULL,
  `crown_rump_length` varchar(20) NOT NULL,
  `crown_rump_length_eq` varchar(20) NOT NULL,
  `mean_gest_sac_diameter` varchar(20) NOT NULL,
  `mean_gest_sac_diameter_eq` varchar(20) NOT NULL,
  `average_fetal_weight` varchar(20) NOT NULL,
  `gestation` varchar(20) NOT NULL,
  `presentation_lie` varchar(20) NOT NULL,
  `amniotic_fluid` varchar(20) NOT NULL,
  `placenta_location` varchar(20) NOT NULL,
  `previa` varchar(20) NOT NULL,
  `placenta_grade` varchar(20) NOT NULL,
  `fetal_activity` varchar(20) NOT NULL,
  `comments` varchar(100) NOT NULL,
  `radiologist` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radiological`
--

CREATE TABLE `radiological` (
  `rad_id` int(11) NOT NULL,
  `case_no` varchar(12) NOT NULL,
  `referred_by` varchar(30) NOT NULL,
  `clinical_impression` varchar(100) NOT NULL,
  `room_bed_no` varchar(11) NOT NULL,
  `type_of_examination` varchar(30) NOT NULL,
  `date_taken` date NOT NULL,
  `radiologist` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rehabilitation`
--

CREATE TABLE `rehabilitation` (
  `rehab_id` int(11) NOT NULL,
  `diagnosis` varchar(50) NOT NULL,
  `type_of_disability` varchar(50) NOT NULL,
  `subjective` varchar(100) NOT NULL,
  `objective` varchar(100) NOT NULL,
  `assessment` varchar(100) NOT NULL,
  `plan` varchar(100) NOT NULL,
  `date` varchar(10) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sputum`
--

CREATE TABLE `sputum` (
  `sputum_id` int(11) NOT NULL,
  `name_of_collection_unit` varchar(30) NOT NULL,
  `date_of_submission` date NOT NULL,
  `disease_classification` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `reason_for_examination` varchar(30) NOT NULL,
  `case_no` varchar(30) NOT NULL,
  `specimen1` varchar(30) NOT NULL,
  `specimen2` varchar(30) NOT NULL,
  `specimen3` varchar(30) NOT NULL,
  `date_of_collection1` date NOT NULL,
  `date_of_collection2` date NOT NULL,
  `date_of_collection3` date NOT NULL,
  `specimen_collector` varchar(30) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `lab_serial_no1` varchar(20) NOT NULL,
  `lab_serial_no2` varchar(20) NOT NULL,
  `lab_serial_no3` varchar(20) NOT NULL,
  `specimen_1` varchar(20) NOT NULL,
  `specimen_2` varchar(20) NOT NULL,
  `specimen_3` varchar(20) NOT NULL,
  `visual_appearance1` varchar(20) NOT NULL,
  `visual_appearance2` varchar(20) NOT NULL,
  `visual_appearance3` varchar(20) NOT NULL,
  `reading` varchar(20) NOT NULL,
  `date_of_examination` date NOT NULL,
  `examined_by` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `urinalysis`
--

CREATE TABLE `urinalysis` (
  `urinalysis_id` int(11) NOT NULL,
  `date_of_request` varchar(20) NOT NULL,
  `color` varchar(15) NOT NULL,
  `transparency` varchar(15) NOT NULL,
  `specific_gravity` varchar(15) NOT NULL,
  `ph` varchar(15) NOT NULL,
  `sugar` varchar(15) NOT NULL,
  `protein` varchar(15) NOT NULL,
  `pregnancy_test` varchar(15) NOT NULL,
  `pus_cells` varchar(15) NOT NULL,
  `rbc` varchar(15) NOT NULL,
  `cast` varchar(15) NOT NULL,
  `urates` varchar(15) NOT NULL,
  `uric_acid` varchar(15) NOT NULL,
  `cal_ox` varchar(15) NOT NULL,
  `epith_cells` varchar(15) NOT NULL,
  `mucus_threads` varchar(15) NOT NULL,
  `others` varchar(15) NOT NULL,
  `pathologist` varchar(30) NOT NULL,
  `medical_technologist` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `section` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `birthing`
--
ALTER TABLE `birthing`
  ADD PRIMARY KEY (`birth_id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `dental`
--
ALTER TABLE `dental`
  ADD PRIMARY KEY (`dental_no`);

--
-- Indexes for table `fecalisys`
--
ALTER TABLE `fecalisys`
  ADD PRIMARY KEY (`fecalisys_id`);

--
-- Indexes for table `hematology`
--
ALTER TABLE `hematology`
  ADD PRIMARY KEY (`hem_id`);

--
-- Indexes for table `itr`
--
ALTER TABLE `itr`
  ADD PRIMARY KEY (`itr_no`),
  ADD UNIQUE KEY `itr_no` (`itr_no`);

--
-- Indexes for table `maternity_patient`
--
ALTER TABLE `maternity_patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `prenatal`
--
ALTER TABLE `prenatal`
  ADD PRIMARY KEY (`prenatal_no`);

--
-- Indexes for table `radiological`
--
ALTER TABLE `radiological`
  ADD PRIMARY KEY (`rad_id`);

--
-- Indexes for table `rehabilitation`
--
ALTER TABLE `rehabilitation`
  ADD PRIMARY KEY (`rehab_id`);

--
-- Indexes for table `sputum`
--
ALTER TABLE `sputum`
  ADD PRIMARY KEY (`sputum_id`);

--
-- Indexes for table `urinalysis`
--
ALTER TABLE `urinalysis`
  ADD PRIMARY KEY (`urinalysis_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `birthing`
--
ALTER TABLE `birthing`
  MODIFY `birth_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `com_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `dental`
--
ALTER TABLE `dental`
  MODIFY `dental_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fecalisys`
--
ALTER TABLE `fecalisys`
  MODIFY `fecalisys_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hematology`
--
ALTER TABLE `hematology`
  MODIFY `hem_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maternity_patient`
--
ALTER TABLE `maternity_patient`
  MODIFY `patient_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prenatal`
--
ALTER TABLE `prenatal`
  MODIFY `prenatal_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `radiological`
--
ALTER TABLE `radiological`
  MODIFY `rad_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rehabilitation`
--
ALTER TABLE `rehabilitation`
  MODIFY `rehab_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sputum`
--
ALTER TABLE `sputum`
  MODIFY `sputum_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `urinalysis`
--
ALTER TABLE `urinalysis`
  MODIFY `urinalysis_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
