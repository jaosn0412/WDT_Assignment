-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 23, 2022 at 04:17 AM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ehc_appointment`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_username` varchar(50) NOT NULL,
  `admin_password` varchar(50) NOT NULL,
  PRIMARY KEY (`admin_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_username`, `admin_password`) VALUES
('andy', 'pass'),
('chua', '1234'),
('test', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `appointment_id` int NOT NULL AUTO_INCREMENT,
  `user_email` varchar(255) NOT NULL,
  `doc_schedule_id` int DEFAULT NULL,
  `appointment_time` time NOT NULL,
  `appointment_status` varchar(15) NOT NULL,
  `user_reason` varchar(255) NOT NULL,
  PRIMARY KEY (`appointment_id`),
  KEY `user_email` (`user_email`),
  KEY `doc_schedule_id` (`doc_schedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `user_email`, `doc_schedule_id`, `appointment_time`, `appointment_status`, `user_reason`) VALUES
(1, 'chai500750@gmail.com', 2, '05:00:00', 'booked', 'stomache'),
(2, 'test', 3, '01:00:00', 'booked', 'headache'),
(19, 'chai500750@gmail.com', 1, '05:00:00', 'booked', 'stomache'),
(20, 'chai500750@gmail.com', 2, '08:00:00', 'booked', 'gkjhgkhj'),
(63, 'chua@gmail.com', 16, '11:00:00', 'booked', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `doctor_id` int NOT NULL AUTO_INCREMENT,
  `doctor_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `doctor_specialist` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `doctor_edu_level` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `doctor_experience` int NOT NULL COMMENT 'doctor year of experience',
  `doctor_about` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `doctor_portrait` longblob NOT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `doctor_name`, `doctor_specialist`, `doctor_edu_level`, `doctor_experience`, `doctor_about`, `doctor_portrait`) VALUES
(1, 'Dr Navdeep Singh Pannu', 'Obstetrician & Gynaecologist, Fertility & Reproduc', 'M.B.B.S. (India), M.MED, O&G (Malaya), M.R.C.O.G. ', 22, 'Dr. Navdeep Singh Pannu is a Consultant Obstetrician, Gynaecologist, and Fertility specialist at TMC Fertility Centre. Previously worked at the General Hospitals in Klang, Seremban, and Sungai Buloh. He received his specialty training at the University of Malaya (Master\'s degree) and in the United Kingdom where he was awarded the Royal College of Obstetricians and Gynaecologists (MRCOG) membership. He trained in laparoscopic surgery in India and obtained a membership and Diploma in Minimal access surgery. He also attended The National University of Singapore Course for assisted reproductive techniques. He is a member of the American Society of Reproductive Medicine, European Society of Human Reproduction and Embryology, International College of Surgeons, the Asia Pacific Initiative on Reproduction and the World Association of Laparoscopic Surgeons and joined the Malaysian Academy of Medicine. Dr. Navdeep has several special interests ranging from minimally invasive endoscopic procedure', 0x7069632f646f63746f72312e6a7067),
(2, 'Dr Sandev Singh', 'Gastroenterologist, Internal Medicine (General Med', 'MBChB (Manchester), MRCP (UK), SCE Gastroenterolog', 16, ' Dr Sandev is a UK trained gastroenterologist, hepatologist and physician who graduated from University of Manchester in 2007. He is accredited by both the National Specialist Register Malaysia and General Medical Council (UK). He has vast experience in a', 0x7069632f646f63746f72322e6a7067),
(3, 'Dr Beh Wee Ren', 'Dental Surgeon, Dentist', 'BDS (UNPAD), FAPAID, M. Sc. in Oral Implantology', 13, 'Dr. Beh is currently the council member of Malaysian Oral Implantology Association (MOIA) and member of Malaysia Dental Association (MDA). He is also a member of the Malaysian Association of Aesthetic Dentistry (MAAD). His heart for the least fortunate ha', 0x7069632f646f63746f72332e6a7067),
(4, 'Dr Shirley Tan Leng Eng ', 'Respiratory Physician (Pulmonologist)', 'MD (Taiwan) , FCCP (USA) , AM (Mal)', 18, 'Dr Shirley Tan is currently practising as a Consultant Respiratory Medicine Physician in Thomson Hospital Kota Damansara. She graduated from National Taiwan University and further pursued her specialization in Respiratory Medicine in Taiwan Society Pulmon', 0x7069632f646f63746f72342e6a706567),
(5, 'Dr chua', 'Obstetrician & Gynaecologist, Fertility & Reproduc', 'M.B.B.S. (India), M.MED, O&G (Malaya), M.R.C.O.G. ', 22, ' He trained in laparoscopic surgery in India and obtained a membership and Diploma in Minimal access surgery. He also attended The National University of Singapore Course for assisted reproductive techniques. He is a member of the American Society of Repr', 0x7069632f646f63746f72312e6a7067),
(44, 'Dr chua', 'Obstetrician & Gynaecologist, Fertility & Reproduc', 'M.B.B.S. (India), M.MED, O&G (Malaya), M.R.C.O.G. ', 22, ' He trained in laparoscopic surgery in India and obtained a membership and Diploma in Minimal access surgery. He also attended The National University of Singapore Course for assisted reproductive techniques. He is a member of the American Society of Repr', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_language`
--

DROP TABLE IF EXISTS `doctor_language`;
CREATE TABLE IF NOT EXISTS `doctor_language` (
  `doctor_id` int NOT NULL,
  `doctor_language` varchar(50) NOT NULL,
  PRIMARY KEY (`doctor_id`,`doctor_language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `doctor_language`
--

INSERT INTO `doctor_language` (`doctor_id`, `doctor_language`) VALUES
(1, 'chinese'),
(1, 'english'),
(1, 'malay'),
(2, 'chinese'),
(2, 'english'),
(2, 'malay'),
(2, 'tamil'),
(3, 'chinese'),
(3, 'english'),
(3, 'malay'),
(4, 'chinese'),
(4, 'tamil');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_qualification`
--

DROP TABLE IF EXISTS `doctor_qualification`;
CREATE TABLE IF NOT EXISTS `doctor_qualification` (
  `doctor_id` int NOT NULL,
  `doctor_qualification` varchar(255) NOT NULL,
  PRIMARY KEY (`doctor_id`,`doctor_qualification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `doctor_qualification`
--

INSERT INTO `doctor_qualification` (`doctor_id`, `doctor_qualification`) VALUES
(1, 'Fellowship Interventional Endoscopy (Bangkok, Mumbai)'),
(1, 'MBChB (Manchester)'),
(1, 'MRCOG (UK)'),
(2, 'MRCP (UK)'),
(2, 'SCE Gastroenterology (UK)'),
(3, 'AM (Mal)'),
(3, 'CCST (General Medical Council, UK)'),
(3, 'SCE Gastroenterology (UK)'),
(4, 'MBBS (MALAYA)'),
(4, 'SCE Gastroenterology (UK)');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_schedule`
--

DROP TABLE IF EXISTS `doctor_schedule`;
CREATE TABLE IF NOT EXISTS `doctor_schedule` (
  `doc_schedule_id` int NOT NULL AUTO_INCREMENT,
  `doctor_id` int NOT NULL,
  `schedule_date` date NOT NULL,
  `sche_start_time` time NOT NULL,
  `sche_end_time` time NOT NULL,
  `average_time_slot` time NOT NULL COMMENT '(minute)',
  PRIMARY KEY (`doc_schedule_id`),
  KEY `doctor_id` (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `doctor_schedule`
--

INSERT INTO `doctor_schedule` (`doc_schedule_id`, `doctor_id`, `schedule_date`, `sche_start_time`, `sche_end_time`, `average_time_slot`) VALUES
(1, 1, '2022-04-07', '01:00:00', '09:30:00', '00:25:00'),
(2, 3, '2022-04-13', '05:00:00', '05:30:00', '00:30:00'),
(3, 2, '2022-04-15', '01:00:00', '06:30:00', '00:30:00'),
(4, 2, '2022-04-20', '03:00:00', '03:30:00', '00:30:00'),
(6, 1, '2022-04-04', '13:00:00', '19:00:00', '00:30:00'),
(7, 1, '2022-04-04', '07:00:00', '10:00:00', '00:30:00'),
(8, 1, '2022-04-11', '01:00:00', '05:30:00', '00:50:00'),
(14, 5, '2022-04-27', '19:30:00', '21:30:00', '00:30:00'),
(16, 1, '2022-04-25', '10:30:00', '22:00:00', '00:30:00'),
(17, 1, '2022-04-28', '10:00:00', '15:00:00', '00:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  `user_first_name` varchar(30) NOT NULL,
  `user_last_name` varchar(50) NOT NULL,
  `user_gender` varchar(6) NOT NULL,
  `user_dob` date NOT NULL,
  `user_ic_number` varchar(12) NOT NULL,
  `user_address_line1` varchar(50) NOT NULL,
  `user_address_line2` varchar(50) NOT NULL,
  `user_postal_code` varchar(5) NOT NULL,
  `user_city` varchar(30) NOT NULL,
  `user_state` varchar(30) NOT NULL,
  `user_pnumber` varchar(16) NOT NULL,
  PRIMARY KEY (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_email`, `user_password`, `user_first_name`, `user_last_name`, `user_gender`, `user_dob`, `user_ic_number`, `user_address_line1`, `user_address_line2`, `user_postal_code`, `user_city`, `user_state`, `user_pnumber`) VALUES
('123411@gmail.com', 'dfgh', 'haha', 'haha', 'male', '2010-11-28', '176857565', 'fghj', 'jklh', '54321', 'shining', 'leopard', '123452339'),
('asdfasf@gmail.com', '1234', 'srfthsz4rth', 'rthsrthszrth', 'female', '2022-04-29', '2147483647', 'ssdfsdfgsdfg', 'dsfgsdfgsdfgsd', '1234', 'dfsadfdfgs', 'dgdfgdthwr', '12341234'),
('chai500750@gmail.com', 'kato', 'chai', 'yang', 'male', '2002-11-28', '2147483647', 'asdf', 'asdf', '12340', 'gsdfg', 'ajasdf', '123456789'),
('chua@gmail.com', '1234', 'chua', 'chua', 'female', '0001-09-23', '123412341', 'lololol', 'lololol', '1234', 'lololol', 'lololol', '1234123412'),
('test', 'pass', 'wdt', 'yang', 'female', '0001-11-28', '2147483647', 'run', 'lion', '7685', 'shining', 'cat', '2147483647'),
('test@gmail.com', 'pass', 'chua chua chua chua chua chua ', ' chua chua chua chua chua chua chua chua chua chua', 'female', '0001-11-28', '2147483647', 'run', 'lion', '7685', 'shining', 'cat', '2147483647'),
('yang12@gmail.com', '1234', 'asdf', 'rthsrthszrth', 'male', '2022-04-19', '0012341234', 'asfas', 'fasdfasdf', '00123', 'drthsdetghszb', 'srftjnrtfyhjrt', '00123412'),
('yang@gmail.com', '1234', 'yang', 'yana', 'male', '2022-04-14', '1234567', 'asfasdf', 'asfasfda', '12134', 'drthsdetghszb', 'srftjnrtfyhjrt', '12341234');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`user_email`) REFERENCES `user` (`user_email`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `appointment_ibfk_3` FOREIGN KEY (`doc_schedule_id`) REFERENCES `doctor_schedule` (`doc_schedule_id`) ON UPDATE CASCADE;

--
-- Constraints for table `doctor_language`
--
ALTER TABLE `doctor_language`
  ADD CONSTRAINT `doctor_language_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `doctor_qualification`
--
ALTER TABLE `doctor_qualification`
  ADD CONSTRAINT `doctor_qualification_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
