-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2024 at 03:27 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hcpms`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `firstname`, `middlename`, `lastname`) VALUES
(2, 'admin', 'admin', 'Administrator', '', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `birthing`
--

INSERT INTO `birthing` (`birth_id`, `date`, `time`, `chief_complaint`, `history`, `lmp`, `edc`, `aog`, `G`, `P`, `1`, `2`, `3`, `4`, `bp1`, `bp2`, `pr`, `rr`, `T`, `head_neck`, `chest`, `heart`, `abdomen`, `fhb`, `loc`, `extremities`, `vulva`, `vagina`, `cervix`, `uterus`, `bow`, `presentation`, `vaginal_discharge`, `staff`, `itr_no`, `user_id`, `month`, `year`) VALUES
(12, '2024-04-17', '12.00', 'demo text', 'no demo history', 'na', 'ed', 'na', 'abc', 'cac', 'abc', 'avb', 'abc', 'acv', 'acv', '24', 'ff', 'fs', 'fs', 'fs', '12', '22', '12', '21', 'na', 'na', 'na', 'na', 'na', 'naa', 'na', 'na', 'na', 'na', '21', '1', '12', '2023');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `com_id` int(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  `complaints` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `itr_no` varchar(50) NOT NULL,
  `section` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`com_id`, `date`, `complaints`, `remark`, `itr_no`, `section`, `status`) VALUES
(1, '04/17/2024', '', '', '12', 'Dental', 'Done'),
(2, '04/17/2024', 'detauk', 'dfdf', '123', 'Dental', 'Done'),
(3, '04/17/2024', 'dassadsdsad', 'dsa', '123', 'Xray', 'Done'),
(4, '04/18/2024', '', '', '12', 'Urinalysis', 'Pending'),
(5, '04/18/2024', 'tooth replace', 'dte', '123', 'Dental', 'Done'),
(6, '04/18/2024', '', '', '123', 'Sputum', 'Done'),
(7, '04/18/2024', 'blood test', 'braodkas', '12', 'Sputum', 'Done'),
(8, '04/23/2024', 'chest xray', 'cancer', '123', 'Xray', 'Done');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dental`
--

INSERT INTO `dental` (`dental_no`, `date`, `dentist`, `tooth`, `itr_no`, `user_id`, `month`, `year`) VALUES
(1, '2024-04-18', 'Dr. Machete Lazada', 6, '12', 1, 'Apr', '2024'),
(2, '2024-04-18', 'Dr. Machete Lazada', 32, '123', 1, 'Apr', '2024'),
(3, '2024-04-18', 'Dr. Machete Lazada', 33, '123', 1, 'Apr', '2024');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `itr`
--

CREATE TABLE `itr` (
  `itr_no` varchar(4) NOT NULL,
  `family_no` varchar(6) NOT NULL,
  `phil_health_no` varchar(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `birthdate` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `address` varchar(30) NOT NULL,
  `civil_status` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `BP` varchar(10) NOT NULL,
  `TEMP` varchar(10) NOT NULL,
  `PR` varchar(10) NOT NULL,
  `RR` varchar(10) NOT NULL,
  `WT` varchar(10) NOT NULL,
  `HT` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `itr`
--

INSERT INTO `itr` (`itr_no`, `family_no`, `phil_health_no`, `firstname`, `middlename`, `lastname`, `birthdate`, `age`, `address`, `civil_status`, `gender`, `BP`, `TEMP`, `PR`, `RR`, `WT`, `HT`) VALUES
('12', '', '', 'abc', '', 'abc', '01/02/1969', 48, 'pune', 'Married', 'Male', '00', '00&deg;C', '00', '00', '00kg', '00'),
('123', '', '', 'gourav', '', 'gov', '02/05/1965', 32, 'dffsfds', 'Single', 'Male', '32223', '3&deg;C', '3232', '32', '33kg', '333');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `radiological`
--

INSERT INTO `radiological` (`rad_id`, `case_no`, `referred_by`, `clinical_impression`, `room_bed_no`, `type_of_examination`, `date_taken`, `radiologist`, `itr_no`, `user_id`, `month`, `year`) VALUES
(1, '3', 'dr.shinde', 'good', '2', 'regular', '2024-04-09', 'na', '222', 32, '2', '2022'),
(2, '34', 'dr.shinde', 'good', '2', 'regular', '2024-04-09', 'na', '222', 32, '4', '2022'),
(3, '12', '12', 'Chest-PA and Lateral', '2', 'xray', '2024-04-23', '123', '123', 3, 'Apr', '2024'),
(4, '44', '223', 'Skull-AP and Lateral', '233', 'regular', '2024-04-23', '2233', '123', 3, 'Apr', '2024');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sputum`
--

INSERT INTO `sputum` (`sputum_id`, `name_of_collection_unit`, `date_of_submission`, `disease_classification`, `site`, `reason_for_examination`, `case_no`, `specimen1`, `specimen2`, `specimen3`, `date_of_collection1`, `date_of_collection2`, `date_of_collection3`, `specimen_collector`, `remarks`, `lab_serial_no1`, `lab_serial_no2`, `lab_serial_no3`, `specimen_1`, `specimen_2`, `specimen_3`, `visual_appearance1`, `visual_appearance2`, `visual_appearance3`, `reading`, `date_of_examination`, `examined_by`, `itr_no`, `user_id`, `month`, `year`) VALUES
(1, 'gourav', '2024-04-18', 'Extra Pulmonary', 'na', 'Follow-up', '23', 'na', 'na', 'na', '2024-04-01', '2024-04-08', '2024-04-16', 'na', 'na', '1', '2', '2', 'na', '', '', 'na', 'na', 'na', 'na', '2024-04-16', 'na', '12', 2, 'Apr', '2024'),
(2, 'gourav', '2024-04-18', 'Extra Pulmonary', 'na', 'Follow-up', '23', 'na', 'na', 'na', '2024-04-01', '2024-04-08', '2024-04-16', 'na', 'na', '1', '2', '2', 'na', '', '', 'na', 'na', 'na', 'na', '2024-04-16', 'na', '12', 2, 'Apr', '2024'),
(3, 'gourav', '2024-04-18', 'Pulmonary', 'clear', 'Diagnosis', '222', 'white', 'white', 'white', '2024-04-01', '2024-04-10', '2024-04-13', 'raju', 'clear', '1', '2', '2', '1', '2', '3', 'na', 'na', 'na', '23', '2024-04-17', 'raju', '123', 2, 'Apr', '2024');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `urinalysis`
--

INSERT INTO `urinalysis` (`urinalysis_id`, `date_of_request`, `color`, `transparency`, `specific_gravity`, `ph`, `sugar`, `protein`, `pregnancy_test`, `pus_cells`, `rbc`, `cast`, `urates`, `uric_acid`, `cal_ox`, `epith_cells`, `mucus_threads`, `others`, `pathologist`, `medical_technologist`, `itr_no`, `user_id`, `month`, `year`) VALUES
(1, '11-04-2020', 'red', '30%', 'abc', '23', '34', '33', 'positive', 'normal', '233', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 23, '3', '2024'),
(2, '11-04-2020', 'red', '30%', 'abc', '23', '34', '33', 'positive', 'normal', '233', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 23, '3', '2024');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `firstname`, `middlename`, `lastname`, `section`) VALUES
(1, 'yash', 'yash', 'yash', '', 'yash', 'Dental'),
(2, 'user', 'user', 'user', 'sputum', 'user', 'Sputum'),
(3, 'xray', 'xray', 'dr.shinde', '', 'shinde', 'Xray'),
(4, 'facialysis', '12345', 'dr. ', '', 'sownawane', 'Fecalysis');

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
  MODIFY `birth_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `com_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dental`
--
ALTER TABLE `dental`
  MODIFY `dental_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `rad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rehabilitation`
--
ALTER TABLE `rehabilitation`
  MODIFY `rehab_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sputum`
--
ALTER TABLE `sputum`
  MODIFY `sputum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `urinalysis`
--
ALTER TABLE `urinalysis`
  MODIFY `urinalysis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
