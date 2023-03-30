-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2022 at 04:16 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elaajonclickdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(10) NOT NULL,
  `adminname` varchar(25) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL,
  `usertype` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `adminname`, `loginid`, `password`, `status`, `usertype`) VALUES
(1, 'Atif Ali', 'atif1234', 'atif1234', 'Active', ''),
(2, 'Arsalan Ahmad', 'arsal1234', 'arsal1234', 'Active', ''),
(3, 'M. Irfan khan', 'irfan123', 'irfan123', 'Active', '');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointmentid` int(10) NOT NULL,
  `appointmenttype` varchar(25) NOT NULL,
  `patientid` int(10) NOT NULL,
  `departmentid` int(10) NOT NULL,
  `appointmentdate` date NOT NULL,
  `appointmenttime` time NOT NULL,
  `doctorid` int(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `app_reason` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointmentid`, `appointmenttype`, `patientid`, `departmentid`, `appointmentdate`, `appointmenttime`, `doctorid`, `status`, `app_reason`) VALUES
(1, '', 1, 1, '2019-06-17', '03:00:00', 1, 'Approved', 'Fever'),
(2, '', 3, 2, '2021-06-25', '09:22:00', 2, 'Approved', 'this is a demo test'),
(4, '', 5, 4, '2021-06-24', '14:28:00', 5, 'Approved', 'demo demo demo'),
(5, '', 6, 7, '2021-06-24', '11:18:00', 7, 'Approved', 'Demo Test, Demo Reason!!'),
(7, '', 8, 2, '2022-10-25', '13:39:00', 2, 'Approved', 'Severe heart pain.'),
(8, '', 9, 2, '2022-10-29', '13:17:00', 9, 'Approved', 'heart issue'),
(9, '', 10, 7, '2022-11-11', '09:30:00', 7, 'Approved', 'abc'),
(10, '', 11, 7, '2022-11-04', '15:15:00', 9, 'Approved', 'Illness'),
(11, '', 12, 1, '2022-11-17', '15:00:00', 1, 'Approved', ''),
(12, 'ONLINE', 14, 6, '2022-11-27', '11:38:00', 10, 'Pending', 'kidney Issue'),
(13, 'ONLINE', 15, 2, '2022-11-30', '15:00:00', 14, 'Pending', 'Illness'),
(14, 'ONLINE', 16, 2, '2022-11-30', '15:00:00', 14, 'Pending', 'Illness');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `departmentid` int(10) NOT NULL,
  `departmentname` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`departmentid`, `departmentname`, `description`, `status`) VALUES
(1, 'Medicine', 'Medicine', 'Active'),
(2, 'Cardiology', 'Provides medical care to patients who have problems with their heart or circulation.', 'Active'),
(3, 'Gynecology', 'Investigates and treats problems relating to the female urinary tract and reproductive organs, such as Endometriosis, infertility and incontinence', 'Active'),
(4, 'Haematology', 'These hospital services work with the laboratory. In addition doctors treat blood diseases and malignancies related to the blood', 'Active'),
(5, 'Maternity', 'Maternity wards provide antenatal care, delivery of babies and care during childbirth, and postnatal support', 'Active'),
(6, 'Nephrology', 'Monitors and assesses patients with various kidney (renal) problems and conditions', 'Active'),
(7, 'Oncology', 'A branch of medicine that deals with cancer and tumors. A medical professional who practices oncology is an oncologist. The Oncology department provides treatments, including radiotherapy and chemotherapy, for cancerous tumors and blood disorders', 'Active'),
(8, 'Orthopaedics', 'Treats conditions related to the musculoskeletal system, including joints, ligaments, bones, muscles, tendons and nerves', 'Active'),
(9, 'Radiology', 'Deals with the study and application of imaging technology like XRay', 'Active'),
(10, 'Dentistry', 'tooth kingdom', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctorid` int(10) NOT NULL,
  `doctorname` varchar(50) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `departmentid` int(10) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL,
  `education` varchar(25) NOT NULL,
  `experience` float(11,1) NOT NULL,
  `consultancy_charge` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctorid`, `doctorname`, `mobileno`, `departmentid`, `loginid`, `password`, `status`, `education`, `experience`, `consultancy_charge`) VALUES
(1, 'Mazhar Khan (HMC)', '03425657910', 1, 'mazhar123', 'mazhar123', 'Active', 'MBBS', 7.0, 1000.00),
(2, 'Abid Jameel (HMC)', '03109023482', 1, 'abid123', 'abid123', 'Active', 'MBBS', 4.0, 1500.00),
(3, 'Shamshad Begum (KTH)', '03459013531', 2, 'shamshad123', 'shamshad123', 'Active', 'MBBS', 7.0, 1200.00),
(4, 'Sheraz Jamal Khan (LRH)', '03449012314', 2, 'sheraz123', 'sheraz123', 'Active', 'BDS', 4.0, 800.00),
(5, 'Khalid Usman (LRH)', '03429012425', 3, 'khalid123', 'khalid123', 'Active', 'MBBS', 5.0, 1000.00),
(6, 'Muhammad Hussain (HMC)', '03403193034', 3, 'hussain123', 'hussain123', 'Active', 'BDS', 8.0, 3000.00),
(7, 'Amir Khan (KTH)', '03008932149', 4, 'amir123', 'amir123', 'Active', 'MBBS', 5.0, 1500.00),
(8, 'Mah Muneer Khan (KTH)', '03118973891', 4, 'muneer123', 'muneer123', 'Active', 'MBBS', 3.0, 1200.00),
(9, 'Sumaira Khan (LRH)', '03067125780', 5, 'sumaira123', 'sumaira123', 'Active', 'MBBS', 7.0, 2000.00),
(10, 'Arsalan Ahmad (HMC)', '03115173030', 6, 'arsal123', 'arsal123', 'active', 'MBBS', 5.0, 2000.00),
(11, 'Maryam Khan (HMC)', '03007125780', 10, 'maryam123', 'maryam123', 'Active', 'BDS', 4.0, 1500.00),
(13, 'Hamad Azhar', '03007125780', 6, 'hamad123', 'hamad123', 'Active', 'MBBs', 3.0, 2500.00),
(14, 'Saif (KTH)', '03142421453', 2, 'saif123', 'saif12345', 'Active', 'MBBS', 3.0, 3000.00),
(15, 'Zeeshan ', '03338902930', 1, 'zeeshan123', 'zeeshan123', 'Active', 'MBBS', 3.0, 2400.00),
(16, 'Zeeshan ', '03338902930', 1, 'zeeshan123', 'zeeshan123', 'Active', 'MBBS', 3.0, 2400.00),
(17, 'Noman', '03459302950', 2, 'noman123', 'noman123', 'Active', 'MBBS', 4.0, 3000.00),
(18, 'Faizan', '03245050934', 6, 'faizan123', 'faizan123', 'Active', 'MBBS', 5.0, 3000.00),
(19, 'Afzal Khan', '03459358203', 10, 'afzal123', 'afzal123', 'Active', 'BDS', 4.0, 4000.00);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_timings`
--

CREATE TABLE `doctor_timings` (
  `doctor_timings_id` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `available_day` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor_timings`
--

INSERT INTO `doctor_timings` (`doctor_timings_id`, `doctorid`, `start_time`, `end_time`, `available_day`, `status`) VALUES
(17, 35, '09:30:00', '13:00:00', '', 'Active'),
(18, 36, '13:30:00', '17:00:00', '', 'Active'),
(19, 37, '14:00:00', '18:00:00', '', 'Active'),
(20, 38, '17:00:00', '21:00:00', '', 'Active'),
(21, 39, '13:00:00', '19:00:00', '', 'Active'),
(22, 40, '07:00:00', '11:00:00', '', 'Active'),
(23, 41, '13:30:00', '16:30:00', '', 'Active'),
(24, 42, '11:30:00', '14:30:00', '', 'Active'),
(25, 43, '12:30:00', '16:30:00', '', 'Active'),
(26, 44, '21:30:00', '12:30:00', '', 'Active'),
(27, 36, '01:03:00', '13:03:00', '', 'Active'),
(28, 61, '11:11:00', '19:07:00', '', 'Active'),
(29, 35, '11:11:00', '16:44:00', '', 'Active'),
(30, 35, '01:10:00', '16:11:00', '', 'Active'),
(31, 35, '01:02:00', '15:04:00', '', 'Active'),
(32, 35, '16:25:00', '01:00:00', '', 'Active'),
(33, 1, '18:00:00', '00:02:00', '', 'Active'),
(34, 2, '07:36:00', '15:37:00', '', 'Active'),
(35, 7, '09:24:00', '16:24:00', '', 'Active'),
(36, 10, '15:58:00', '16:04:00', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `medicineid` int(10) NOT NULL,
  `medicinename` varchar(25) NOT NULL,
  `medicinecost` float(10,2) NOT NULL,
  `description` mediumtext NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`medicineid`, `medicinename`, `medicinecost`, `description`, `status`) VALUES
(1, 'Paracetamol', 3.00, 'For fever per day 1 pc', 'Active'),
(2, 'Clotrimazole', 14.00, 'Clotrimazole is an antifungal, prescribed for local fungal infections', 'Active'),
(3, 'Miconazole', 26.00, 'Prescribed for various skin infections such as jockitch and also for vaginal yeast infections', 'Active'),
(4, 'Nystatin', 6.00, 'Antifungal drug, prescribed for fungal infections of the skin mouth vagina and intestinal tract', 'Active'),
(5, 'Lotensin', 3.00, 'prevent your body from forming angiotensin', 'Active'),
(6, 'Cozaan', 5.00, 'ARBs block the effects of angiotensin on your heart.', 'Active'),
(7, 'Lovenox', 59.00, 'may prescribe an anticoagulant to prevent heart attack, stroke, or other serious health problems', 'Active'),
(8, 'Abemaciclib', 278.00, 'drug for the treatment of advanced or metastatic breast cancers.', 'Active'),
(9, 'Cyclophosphamide', 231.00, ' to treat lymphoma, multiple myeloma, leukemia, ovarian cancer, breast cancer, small cell lung cancer', 'Active'),
(10, 'Captopril', 92.00, 'used alone or in combination with other medications to treat high blood pressure and heart failure.', 'Active'),
(11, 'Enalapril', 18.00, 'to treat high blood pressure, diabetic kidney disease, and heart failure', 'Active'),
(12, 'Ramipril', 31.00, 'to treat high blood pressure, diabetic kidney disease', 'Active'),
(13, 'Hydroxyurea', 55.00, 'used in sickle-cell disease, essential thrombocythemia, chronic myelogenous leukemia and cervical cancer', 'Active'),
(14, 'Phenprocoumon', 258.00, 'Used for prevention of thrombosis', 'Active'),
(15, 'Panadol', 50.00, ' For fever, headache', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientid` int(10) NOT NULL,
  `patientname` varchar(50) NOT NULL,
  `admissiondate` date NOT NULL,
  `admissiontime` time NOT NULL,
  `address` varchar(250) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `city` varchar(25) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `loginid` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `bloodgroup` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientid`, `patientname`, `admissiondate`, `admissiontime`, `address`, `mobileno`, `city`, `pincode`, `loginid`, `password`, `bloodgroup`, `gender`, `dob`, `status`) VALUES
(1, 'Anas', '2022-06-15', '18:47:22', 'Tehkal, Peshawar', '03409172350', 'Peshawar', '25000', 'anas123', 'anas123', 'O+', 'MALE', '1998-01-01', 'Active'),
(3, 'Muhammad Irfan', '2022-07-24', '14:38:04', 'Malakand', '03449164411', 'Malakand', '23010', 'irfan123', 'irfan123', 'A-', 'Male', '1997-02-12', 'Active'),
(7, 'Atif Ali', '2022-06-28', '19:37:46', 'Warsak road,Peshawar', '03067125780', 'Peshawar', '25000', 'atif123', '12345678', 'B+', 'Male', '2000-02-12', 'Active'),
(8, 'Ahmad khan', '2022-10-24', '19:40:03', 'Warsak road, Peshawarr', '03067125780', 'Peshawar', '25000', 'ahmad123', 'ahmad123', 'B-', 'MALE', '2000-12-12', ''),
(10, 'Arsalan Ahmad', '2022-10-29', '16:30:56', 'Saddar, Peshawar', '03115173030', 'Peshawar', '25000', 'arsal123', 'arsal123', 'B+', 'Male', '2000-01-13', 'Active'),
(11, 'Arsalan Ahmad', '2022-11-01', '11:13:27', 'Peshawar', '03115173030', 'Peshawar', '', 'arsal123', 'arsal123', '', 'Male', '2000-01-13', 'Active'),
(12, 'Murtaza', '2022-11-02', '08:01:34', 'Peshawar', '03093892093', 'Peshawar', '', 'murtaza123', 'murtaza123', '', 'Male', '2000-06-13', 'Active'),
(13, 'Arif Kamal', '2022-11-26', '12:04:16', 'Peshawar12', '03067125780', 'Peshawar', '25000', 'Arif123', 'arif1234', 'A-', 'MALE', '1999-11-26', 'Active'),
(14, 'Arif Kamal', '2022-11-26', '14:34:04', 'Peshawar12', '03067125780', 'Peshawar', '', 'Arif123', 'arif1234', '', 'Male', '1999-11-26', 'Active'),
(15, 'Arsalan Ahmad', '2022-11-29', '14:03:56', 'Peshawar', '03115173030', 'Peshawar', '', 'arsal123', 'arsal123', '', 'Male', '2000-01-13', 'Active'),
(16, 'Arsalan Ahmad', '2022-11-29', '14:07:56', 'Peshawar', '03115173030', 'Peshawar', '', 'arsal123', 'arsal123', '', 'Male', '2000-01-13', 'Active'),
(17, 'Faizan', '2022-11-29', '14:33:46', 'Peshawar', '03142421458', 'Peshawar', '25000', 'faizan123', 'faizan123', 'B+', 'MALE', '1999-01-31', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `prescriptionid` int(10) NOT NULL,
  `treatment_records_id` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `delivery_type` varchar(10) NOT NULL COMMENT 'Delivered through appointment or online order',
  `delivery_id` int(10) NOT NULL COMMENT 'appointmentid or orderid',
  `prescriptiondate` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `appointmentid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`prescriptionid`, `treatment_records_id`, `doctorid`, `patientid`, `delivery_type`, `delivery_id`, `prescriptiondate`, `status`, `appointmentid`) VALUES
(1, 0, 1, 1, '', 0, '2019-06-17', 'Active', 1),
(2, 0, 5, 5, '', 0, '2021-06-25', 'Active', 4),
(3, 0, 7, 6, '', 0, '2021-06-25', 'Active', 5),
(4, 0, 9, 9, '', 0, '2022-10-25', 'Active', 8),
(5, 0, 1, 12, '', 0, '2022-11-03', 'Active', 11);

-- --------------------------------------------------------

--
-- Table structure for table `prescription_records`
--

CREATE TABLE `prescription_records` (
  `prescription_record_id` int(10) NOT NULL,
  `prescription_id` int(10) NOT NULL,
  `medicine_name` varchar(25) NOT NULL,
  `cost` float(10,2) NOT NULL,
  `unit` int(10) NOT NULL,
  `dosage` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescription_records`
--

INSERT INTO `prescription_records` (`prescription_record_id`, `prescription_id`, `medicine_name`, `cost`, `unit`, `dosage`, `status`) VALUES
(1, 1, '1', 3.00, 15, '1-1-1', 'Active'),
(2, 2, '13', 55.00, 1, '0-1-1', 'Active'),
(3, 3, '9', 231.00, 1, '1-0-1', 'Active'),
(4, 4, '7', 59.00, 1, '1-0-1', 'Active'),
(5, 5, '3', 26.00, 1, '1-1-1', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `service_type`
--

CREATE TABLE `service_type` (
  `service_type_id` int(10) NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `servicecharge` float(10,2) NOT NULL,
  `description` mediumtext NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_type`
--

INSERT INTO `service_type` (`service_type_id`, `service_type`, `servicecharge`, `description`, `status`) VALUES
(10, 'X-ray', 250.00, 'To take fractured photo copy', 'Active'),
(11, 'Scanning', 450.00, 'To scan body from injury', 'Active'),
(12, 'MRI', 300.00, 'Regarding body scan', 'Active'),
(13, 'Blood Testing', 150.00, 'To detect the type of disease', 'Active'),
(14, 'Diagnosis', 210.00, 'To analyse the diagnosis', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `treatmentid` int(10) NOT NULL,
  `treatmenttype` varchar(25) NOT NULL,
  `treatment_cost` decimal(10,2) NOT NULL,
  `note` mediumtext NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`treatmentid`, `treatmenttype`, `treatment_cost`, `note`, `status`) VALUES
(20, 'Blood Test', '179.00', 'test checks for levels of 10 different components of every major cell in your blood', 'Active'),
(21, 'Electrocardiogram', '70.00', 'Records the electrical activity of the heart', 'Active'),
(22, 'Echocardiogram', '1750.00', 'Provides an ultrasound picture that shows the structure of the heart chambers and surrounding areas, and it can show how well the heart is working.', 'Active'),
(23, 'Nuclear cardiology', '530.00', 'Nuclear imaging techniques use radioactive materials to study cardiovascular disorders and diseases in a noninvasive way.', 'Active'),
(24, 'Colposcopy', '318.00', 'procedure to visually examine the cervix as well as the vagina and vulva using a colposcope.', 'Active'),
(25, 'Colporrhaphy', '5518.00', 'surgical procedure in humans that repairs a defect in the wall of the vagina.', 'Active'),
(26, 'Spine Surgery', '97560.00', 'This entails opening the operative site with a long incision so the surgeon can view and access the spinal anatomy', 'Active'),
(27, 'Trauma surgery', '25448.00', 'surgical specialty that utilizes both operative and non-operative management to treat traumatic injuries, typically in an acute setting', 'Active'),
(28, 'Diagnostic Tests', '989.00', 'may include MRI, CT, Bone Scan, Ultra sound, blood tests', 'Active'),
(29, 'Chest XRay', '258.00', ' projection radiograph of the chest used to diagnose conditions affecting the chest, its contents, and nearby structures', 'Active'),
(30, 'Ultrasound of the Abdomen', '560.00', 'noninvasive procedure used to assess the organs and structures within the abdomen', 'Active'),
(31, 'Exercise Stress Test', '198.00', 'This test is good for evaluating chest pain to see if your heart is the cause.', 'Active'),
(32, 'Ultrasound of the Pelvis', '520.00', 'noninvasive diagnostic exam that produces images that are used to assess organs and structures within the female pelvis', 'Active'),
(33, 'Chemotherapy and Radiatio', '4850.00', 'Most common types of cancer treatment. They work by destroying these fast-growing cells.', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `treatment_records`
--

CREATE TABLE `treatment_records` (
  `treatment_records_id` int(10) NOT NULL,
  `treatmentid` int(10) NOT NULL,
  `appointmentid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `treatment_description` mediumtext NOT NULL,
  `uploads` varchar(100) NOT NULL,
  `treatment_date` date NOT NULL,
  `treatment_time` time NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatment_records`
--

INSERT INTO `treatment_records` (`treatment_records_id`, `treatmentid`, `appointmentid`, `patientid`, `doctorid`, `treatment_description`, `uploads`, `treatment_date`, `treatment_time`, `status`) VALUES
(1, 20, 1, 1, 1, 'Fever \r\ntake paracitamol', '1746614148', '2019-06-15', '17:00:00', 'Active'),
(2, 20, 2, 3, 2, 'Demo Treatment Description...', '20245sample_image.jpg', '2021-06-24', '18:24:00', 'Active'),
(3, 20, 4, 5, 5, 'to study the morphology of blood and blood-forming tissues', '853sample_image.jpg', '2021-06-24', '16:40:00', 'Active'),
(4, 33, 5, 6, 7, 'based on small cell lung cancer', '25208sample_image.jpg', '2021-06-24', '15:22:00', 'Active'),
(9, 20, 8, 9, 9, 'ACE inhibitors like ramipril.', '19063', '2022-10-24', '13:34:00', 'Active'),
(10, 31, 10, 11, 9, 'Drip', '1998', '2022-10-30', '20:00:00', 'Active'),
(11, 20, 11, 12, 1, 'Drip', '16892', '2022-11-02', '14:15:00', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointmentid`),
  ADD KEY `FKdep` (`departmentid`),
  ADD KEY `Fkdoc` (`doctorid`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`departmentid`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctorid`),
  ADD KEY `depFK` (`departmentid`);

--
-- Indexes for table `doctor_timings`
--
ALTER TABLE `doctor_timings`
  ADD PRIMARY KEY (`doctor_timings_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`medicineid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientid`),
  ADD KEY `loginid` (`loginid`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`prescriptionid`),
  ADD KEY `docFK` (`doctorid`),
  ADD KEY `appFK` (`appointmentid`);

--
-- Indexes for table `prescription_records`
--
ALTER TABLE `prescription_records`
  ADD PRIMARY KEY (`prescription_record_id`),
  ADD KEY `presFK` (`prescription_id`);

--
-- Indexes for table `service_type`
--
ALTER TABLE `service_type`
  ADD PRIMARY KEY (`service_type_id`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`treatmentid`);

--
-- Indexes for table `treatment_records`
--
ALTER TABLE `treatment_records`
  ADD PRIMARY KEY (`treatment_records_id`),
  ADD KEY `treatFK` (`treatmentid`),
  ADD KEY `appoFK` (`appointmentid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointmentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `departmentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctorid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `doctor_timings`
--
ALTER TABLE `doctor_timings`
  MODIFY `doctor_timings_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `medicineid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patientid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `prescriptionid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prescription_records`
--
ALTER TABLE `prescription_records`
  MODIFY `prescription_record_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `service_type`
--
ALTER TABLE `service_type`
  MODIFY `service_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
  MODIFY `treatmentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `treatment_records`
--
ALTER TABLE `treatment_records`
  MODIFY `treatment_records_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `FKdep` FOREIGN KEY (`departmentid`) REFERENCES `department` (`departmentid`),
  ADD CONSTRAINT `Fkdoc` FOREIGN KEY (`doctorid`) REFERENCES `doctor` (`doctorid`);

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `depFK` FOREIGN KEY (`departmentid`) REFERENCES `department` (`departmentid`);

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `appFK` FOREIGN KEY (`appointmentid`) REFERENCES `appointment` (`appointmentid`),
  ADD CONSTRAINT `docFK` FOREIGN KEY (`doctorid`) REFERENCES `doctor` (`doctorid`);

--
-- Constraints for table `prescription_records`
--
ALTER TABLE `prescription_records`
  ADD CONSTRAINT `presFK` FOREIGN KEY (`prescription_id`) REFERENCES `prescription` (`prescriptionid`);

--
-- Constraints for table `treatment_records`
--
ALTER TABLE `treatment_records`
  ADD CONSTRAINT `appoFK` FOREIGN KEY (`appointmentid`) REFERENCES `appointment` (`appointmentid`),
  ADD CONSTRAINT `treatFK` FOREIGN KEY (`treatmentid`) REFERENCES `treatment` (`treatmentid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
