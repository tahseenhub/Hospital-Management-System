-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2017 at 06:14 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hmds`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

CREATE TABLE `accountant` (
  `ID` varchar(20) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `AccountantName` varchar(30) NOT NULL,
  `AccountantPhone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountant`
--

INSERT INTO `accountant` (`ID`, `Username`, `AccountantName`, `AccountantPhone`) VALUES
('17006', 'habib', 'Habibur Rahman', '019658664353'),
('170007', 'rahman', 'Rahman', '015360000');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` varchar(20) NOT NULL,
  `AdminAddress` varchar(50) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `AdminPhone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `AdminAddress`, `Username`, `AdminPhone`) VALUES
('170001', 'Nikhunja 2, Khelket, Dhaka', 'admin', '01745871019');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DepartmentName` varchar(30) NOT NULL,
  `DepartmentDescription` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DepartmentName`, `DepartmentDescription`) VALUES
('Cardiologyy', 'Cardiology is a branch of medicine dealing with disorders of the heart '),
('Medicine', 'Optional');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `ID` varchar(20) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `DoctorName` varchar(30) NOT NULL,
  `DoctorAddress` varchar(50) NOT NULL,
  `DoctorEmail` varchar(20) NOT NULL,
  `DoctorPhone` varchar(15) NOT NULL,
  `DoctorDepartmentName` varchar(30) NOT NULL,
  `DoctorGender` varchar(6) NOT NULL,
  `DoctorAge` varchar(2) NOT NULL,
  `Salary` int(50) NOT NULL,
  `Fee` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`ID`, `Username`, `DoctorName`, `DoctorAddress`, `DoctorEmail`, `DoctorPhone`, `DoctorDepartmentName`, `DoctorGender`, `DoctorAge`, `Salary`, `Fee`) VALUES
('170092', 'abdullah', 'Dr. Abdullah', 'Bashundhara Res. Area, Dhaka', 'abdullah@gmail.com', '01521311736', 'Cardiology', 'Male', '40', 50000, 1000),
('17003', 'jami', 'Dr. Jami', 'Nikunja, Dhaka', 'dr.jami@gmail.com', '01779611966', 'Medicine', 'Male', '30', 6800, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `loginsystem`
--

CREATE TABLE `loginsystem` (
  `Username` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Type` varchar(30) NOT NULL,
  `ID` varchar(20) DEFAULT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginsystem`
--

INSERT INTO `loginsystem` (`Username`, `Password`, `Type`, `ID`, `email`) VALUES
('abdullah', 'doctor', 'doctor', '170092', 'abdullah@gmail.com'),
('admin', '123456', 'admin', '170001', 'waliurrahmansabit@gmail.com'),
('asef', 'asefasef', 'patient', '180073', 'asef@gmail.com'),
('asif', '123123', 'patient', '170002', 'asifhabib767@gmail.com'),
('habib', 'habib', 'accountant', '17006', 'habib@outlook.com'),
('jami', 'jami', 'doctor', '17003', 'jami@gmail.com'),
('rahman', '12345', 'accountant', '17007', 'rahman@yahoo.com'),
('rifath', '1234577', 'receptionist', '160093', 'wr.rifath@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `MedicineName` varchar(50) NOT NULL,
  `Medicine Pharmacy` varchar(50) NOT NULL,
  `Medicine Price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`MedicineName`, `Medicine Pharmacy`, `Medicine Price`) VALUES
('Azithromycen 250mg', 'Incepta Pharma', 300),
('Civit DS ', 'Square Pharma', 30),
('Deslor 10', 'Opsonin Pharma', 35),
('Indever 10mg', 'Square Pharma', 20),
('Napa 500mg', 'Square Pharma', 30),
('Oracin K DS', 'Orion Pharma', 45),
('Osartil 50 plus', 'Sandos Pharma', 160),
('Vitamin B complex', 'Beximco Pharma', 350),
('Zemax 500mg', 'SKF Pharma', 500),
('Zox 500mg', 'Square Pharma', 100);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `ID` varchar(20) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `PatientName` varchar(30) NOT NULL,
  `PatientAddress` varchar(50) NOT NULL,
  `PatientPhone` varchar(15) NOT NULL,
  `PatientGender` varchar(6) NOT NULL,
  `PatientAge` varchar(2) NOT NULL,
  `PatientBloodGroup` varchar(5) NOT NULL,
  `PatientRoomNo` varchar(5) NOT NULL,
  `PatientDateOfBirth` varchar(10) NOT NULL,
  `PatientDateOfAdmission` varchar(10) NOT NULL,
  `PatientDoctorName` varchar(30) NOT NULL,
  `Balance` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`ID`, `Username`, `PatientName`, `PatientAddress`, `PatientPhone`, `PatientGender`, `PatientAge`, `PatientBloodGroup`, `PatientRoomNo`, `PatientDateOfBirth`, `PatientDateOfAdmission`, `PatientDoctorName`, `Balance`) VALUES
('180093', 'asef', 'Asef Rahman', 'Khilgaon, Dhaka', '01726154050', 'Male', '60', 'O+', '1201', '30-08-65', '17/12/2017', 'Dr. Abdullah', 20000),
('170002', 'asif', 'Asif', 'Malibug, Dhaka', '01997177171', 'Male', '20', 'B+', 'N/A', '20/12/1997', 'N/A', 'Dr. Jami', 30580);

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `ID` varchar(20) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `ReceptionistName` varchar(30) NOT NULL,
  `ReceptionistPhone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`ID`, `Username`, `ReceptionistName`, `ReceptionistPhone`) VALUES
('201821', 'asfirah', 'Asfi Rahman', '010101010'),
('160093', 'rifath', 'Rifath', '0162222002');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Room Number` varchar(10) NOT NULL,
  `Room Type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Room Number`, `Room Type`) VALUES
('210', 'ICU'),
('211', 'IMAGINIG'),
('212', 'NICU'),
('220', 'OT'),
('230', 'MedSurg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountant`
--
ALTER TABLE `accountant`
  ADD PRIMARY KEY (`Username`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Username`),
  ADD UNIQUE KEY `AdminID` (`ID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DepartmentName`),
  ADD UNIQUE KEY `DepartmentName` (`DepartmentName`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Username`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `loginsystem`
--
ALTER TABLE `loginsystem`
  ADD PRIMARY KEY (`Username`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Password` (`Password`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`MedicineName`),
  ADD UNIQUE KEY `Medicine Name` (`MedicineName`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Username`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`Username`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Room Number`),
  ADD UNIQUE KEY `Room Number` (`Room Number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
