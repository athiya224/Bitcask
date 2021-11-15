-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2021 at 04:15 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bitcask`
--

-- --------------------------------------------------------

--
-- Table structure for table `asset`
--

CREATE TABLE `asset` (
  `Asset_id` int(11) NOT NULL,
  `Asset_url` text NOT NULL,
  `mime` varchar(20) NOT NULL,
  `Product_Id` int(11) DEFAULT NULL,
  `Brand_id` int(11) DEFAULT NULL,
  `User_Id` int(11) DEFAULT NULL,
  `Asset_Type` int(11) NOT NULL,
  `Creation_Time` date NOT NULL,
  `Modified_Time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `asset`
--

INSERT INTO `asset` (`Asset_id`, `Asset_url`, `mime`, `Product_Id`, `Brand_id`, `User_Id`, `Asset_Type`, `Creation_Time`, `Modified_Time`) VALUES
(15, 'https://d1zqeec6286qe9.cloudfront.net/Bitcask-s3+Console+Url/distillery_banner1.jpg', 'image/jpg', 102, NULL, NULL, 1, '2021-07-30', '2021-07-30'),
(16, 'https://d1zqeec6286qe9.cloudfront.net/Bitcask-s3+Console+Url/distillery_banner2.jpg', 'image/jpg', 102, NULL, NULL, 1, '2021-07-30', '2021-07-30'),
(19, 'https://d1zqeec6286qe9.cloudfront.net/Bitcask-s3+Console+Url/distillery_logo1.jpg', 'image/jpg', 102, 102, NULL, 4, '2021-07-30', '2021-07-30'),
(20, 'https://d1zqeec6286qe9.cloudfront.net/Bitcask-s3+Console+Url/distillery_banner6.jpg', 'image/jpg', 103, 103, NULL, 4, '2021-07-30', '2021-07-30'),
(22, 'https://d1zqeec6286qe9.cloudfront.net/Bitcask-s3+Console+Url/distillery_banner6.jpg', 'image/jpg', 100, NULL, NULL, 1, '0000-00-00', '0000-00-00'),
(23, 'https://bitcask-be.s3.ap-south-1.amazonaws.com/dummy/distillery_banner6.jpg', 'image/jpg', 103, NULL, NULL, 1, '0000-00-00', '0000-00-00'),
(24, 'https://d1zqeec6286qe9.cloudfront.net/Bitcask-s3+Console+Url/distillery_banner6.jpg', 'image/jpg', 100, 100, NULL, 4, '0000-00-00', '0000-00-00'),
(25, 'https://bitcask-be.s3.ap-south-1.amazonaws.com/dummy/distillery_logo2.jpeg', 'image/jpg', 101, 101, NULL, 4, '0000-00-00', '0000-00-00'),
(26, 'https://bitcask-be.s3.ap-south-1.amazonaws.com/dummy/distillery_logo2.jpeg', 'image/jpg', 101, NULL, NULL, 1, '0000-00-00', '0000-00-00'),
(29, 'https://d1zqeec6286qe9.cloudfront.net/Bitcask-s3+Console+Url/T%26C\'s+Cask+Ownership+(1).pdf', 'application/pdf', 100, NULL, NULL, 3, '0000-00-00', '0000-00-00'),
(30, 'https://d1zqeec6286qe9.cloudfront.net/Bitcask-s3+Console+Url/T%26C\'s+Cask+Ownership+(1).pdf', 'application/pdf', 101, NULL, NULL, 3, '0000-00-00', '0000-00-00'),
(31, 'https://d1zqeec6286qe9.cloudfront.net/Bitcask-s3+Console+Url/T%26C\'s+Cask+Ownership+(1).pdf', 'application/pdf', 102, NULL, NULL, 3, '0000-00-00', '0000-00-00'),
(32, 'https://d1zqeec6286qe9.cloudfront.net/Bitcask-s3+Console+Url/T%26C\'s+Cask+Ownership+(1).pdf', 'application/pdf', 103, NULL, NULL, 3, '0000-00-00', '0000-00-00'),
(34, 'https://d1zqeec6286qe9.cloudfront.net/Bitcask-s3+Console+Url/IMG-0905.jpg', 'application/pdf', 100, NULL, NULL, 2, '0000-00-00', '0000-00-00'),
(36, 'https://d1zqeec6286qe9.cloudfront.net/Bitcask-s3+Console+Url/IMG-0905.jpg', 'application/pdf', 102, NULL, NULL, 2, '0000-00-00', '0000-00-00'),
(37, 'https://d1zqeec6286qe9.cloudfront.net/Bitcask-s3+Console+Url/IMG-0905.jpg', 'application/pdf', 103, NULL, NULL, 2, '0000-00-00', '0000-00-00'),
(38, 'https://d1zqeec6286qe9.cloudfront.net/Bitcask-s3+Console+Url/IMG-0905.jpg', 'application/pdf', 101, NULL, NULL, 2, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `assettype`
--

CREATE TABLE `assettype` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `typeOfAsset` varchar(20) NOT NULL,
  `creationTime` date NOT NULL,
  `modifiedTime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assettype`
--

INSERT INTO `assettype` (`id`, `name`, `typeOfAsset`, `creationTime`, `modifiedTime`) VALUES
(1, 'Banners', 'BANNER', '2021-07-29', '2021-07-29'),
(2, 'Certificat', 'CERTIFICATE', '2021-07-29', '2021-07-29'),
(3, 'Terms And ', 'CONDITION', '2021-07-29', '2021-07-29'),
(4, 'Logo ', 'LOGO', '2021-07-30', '2021-07-30'),
(5, 'Profile Pi', 'PROFILE', '2021-07-30', '2021-07-30'),
(6, 'ID_Prooof', 'PROOF', '2021-07-30', '2021-07-30'),
(7, 'Utility_Bi', 'BILL', '2021-07-30', '2021-07-30');

-- --------------------------------------------------------

--
-- Table structure for table `attribute`
--

CREATE TABLE `attribute` (
  `Attribute_id` int(11) NOT NULL,
  `AttributeDecription` int(11) NOT NULL,
  `Product_Id` int(11) NOT NULL,
  `Creation_Time` date NOT NULL,
  `Modified_Time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attribute`
--

INSERT INTO `attribute` (`Attribute_id`, `AttributeDecription`, `Product_Id`, `Creation_Time`, `Modified_Time`) VALUES
(5, 1, 100, '2021-07-30', '2021-07-30'),
(6, 2, 100, '2021-07-30', '2021-07-30'),
(7, 3, 100, '2021-07-30', '2021-07-30'),
(8, 4, 100, '2021-07-30', '2021-07-30'),
(9, 1, 101, '2021-07-30', '2021-07-30'),
(10, 1, 102, '2021-07-30', '2021-07-30'),
(11, 1, 103, '2021-07-30', '2021-07-30'),
(12, 2, 101, '2021-07-30', '2021-07-30'),
(13, 2, 102, '2021-07-30', '2021-07-30'),
(14, 2, 103, '2021-07-30', '2021-07-30'),
(15, 3, 101, '2021-07-30', '2021-07-30'),
(16, 3, 102, '2021-07-30', '2021-07-30'),
(17, 3, 103, '2021-07-30', '2021-07-30'),
(18, 4, 101, '2021-07-30', '2021-07-30'),
(19, 4, 102, '2021-07-30', '2021-07-30'),
(20, 4, 103, '2021-07-30', '2021-07-30'),
(21, 5, 100, '2021-08-26', '2021-08-26'),
(22, 5, 101, '2021-08-26', '2021-08-26'),
(23, 5, 102, '2021-08-26', '2021-08-26'),
(24, 5, 103, '2021-08-26', '2021-08-26'),
(25, 6, 100, '2021-08-26', '2021-08-26'),
(26, 6, 101, '2021-08-26', '2021-08-26'),
(27, 6, 102, '2021-08-26', '2021-08-26'),
(28, 6, 103, '2021-08-26', '2021-08-26'),
(29, 7, 100, '2021-08-26', '2021-08-26'),
(30, 7, 101, '2021-08-26', '2021-08-26'),
(31, 7, 102, '2021-08-26', '2021-08-26'),
(32, 7, 103, '2021-08-26', '2021-08-26'),
(33, 8, 100, '2021-08-26', '2021-08-26'),
(34, 8, 101, '2021-08-26', '2021-08-26'),
(35, 8, 102, '2021-08-26', '2021-08-26'),
(36, 8, 103, '2021-08-26', '2021-08-26'),
(37, 9, 100, '2021-08-26', '2021-08-26'),
(38, 9, 101, '2021-08-26', '2021-08-26'),
(39, 9, 102, '2021-08-26', '2021-08-26'),
(40, 9, 103, '2021-08-26', '2021-08-26'),
(41, 10, 100, '2021-08-27', '2021-08-27'),
(42, 10, 101, '2021-08-27', '2021-08-27'),
(43, 10, 102, '2021-08-27', '2021-08-27'),
(44, 10, 103, '2021-08-27', '2021-08-27');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_definition`
--

CREATE TABLE `attribute_definition` (
  `Att_Defi_id` int(11) NOT NULL,
  `Att_Defi_Name` varchar(50) NOT NULL,
  `Att_Defi_Description` text NOT NULL,
  `Att_Defi_Creation_Time` date NOT NULL,
  `Att_Defi_Modified_Time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attribute_definition`
--

INSERT INTO `attribute_definition` (`Att_Defi_id`, `Att_Defi_Name`, `Att_Defi_Description`, `Att_Defi_Creation_Time`, `Att_Defi_Modified_Time`) VALUES
(1, 'Year', 'Year it was prepared', '2021-07-29', '2021-07-29'),
(2, 'Cask Size', 'Maximum Size of the Cask', '2021-07-29', '2021-07-29'),
(3, 'Storage', 'Max Storage year', '2021-07-29', '2021-07-29'),
(4, 'CaskType', 'Type of Cask', '2021-07-29', '2021-07-29'),
(5, 'Cask', 'Cask', '0000-00-00', '0000-00-00'),
(6, 'Style', 'Style', '2021-08-26', '2021-08-26'),
(7, 'ABV', 'ABV', '2021-08-26', '2021-08-26'),
(8, 'Region', 'Region', '0000-00-00', '0000-00-00'),
(9, 'Website', 'Website', '0000-00-00', '0000-00-00'),
(10, 'CaskDetai', 'Cask Detai', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value`
--

CREATE TABLE `attribute_value` (
  `Att_Va_id` int(11) NOT NULL,
  `Att_Va_value` text NOT NULL,
  `Att_Va_Creation_Time` date NOT NULL,
  `Att_Va_Modified_Time` date NOT NULL,
  `attributeId` int(11) DEFAULT NULL,
  `attributedefinitionID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attribute_value`
--

INSERT INTO `attribute_value` (`Att_Va_id`, `Att_Va_value`, `Att_Va_Creation_Time`, `Att_Va_Modified_Time`, `attributeId`, `attributedefinitionID`) VALUES
(1, '2021', '2021-07-30', '2021-07-30', 5, 1),
(2, '200', '2021-07-30', '2021-07-30', 6, 2),
(3, '10 Years', '2021-07-30', '2021-07-30', 7, 3),
(4, 'Ex-Bourboun', '2021-07-30', '2021-07-30', 8, 4),
(9, '2021', '2021-07-30', '2021-07-30', 9, 1),
(10, '2021', '2021-07-30', '2021-07-30', 10, 1),
(11, '2021', '2021-07-30', '2021-07-30', 11, 1),
(12, '200', '2021-07-30', '2021-07-30', 12, 2),
(13, '200', '2021-07-30', '2021-07-30', 13, 2),
(14, '200', '2021-07-30', '2021-07-30', 14, 2),
(15, '10 Years', '2021-07-30', '2021-07-30', 15, 3),
(16, '10 Years', '2021-07-30', '2021-07-30', 16, 3),
(17, '10 Years', '2021-07-30', '2021-07-30', 17, 3),
(18, 'Ex-Bourboun', '2021-07-30', '2021-07-30', 18, 4),
(19, 'Ex-Bourboun', '2021-07-30', '2021-07-30', 19, 4),
(20, 'Ex-Bourboun', '2021-07-30', '2021-07-30', 20, 4),
(21, 'Lorem Ip 250', '0000-00-00', '0000-00-00', 21, 5),
(22, 'Lorem Ip 250', '0000-00-00', '0000-00-00', 22, 5),
(23, 'Lorem Ip 250', '0000-00-00', '0000-00-00', 23, 5),
(24, 'Lorem Ip 250', '0000-00-00', '0000-00-00', 24, 5),
(25, 'Single Malt', '2021-08-26', '2021-08-26', 25, 6),
(26, 'Single Malt', '2021-08-26', '2021-08-26', 26, 6),
(27, 'Single Malt', '2021-08-26', '2021-08-26', 27, 6),
(28, 'Single Malt', '2021-08-26', '2021-08-26', 28, 6),
(29, '50', '2021-08-26', '2021-08-26', 29, 7),
(30, '50', '2021-08-26', '2021-08-26', 30, 7),
(31, '50', '2021-08-26', '2021-08-26', 31, 7),
(32, '50', '2021-08-26', '2021-08-26', 32, 7),
(33, 'Highlands', '2021-08-26', '2021-08-26', 33, 8),
(34, 'Highlands', '2021-08-26', '2021-08-26', 34, 8),
(35, 'Highlands', '2021-08-26', '2021-08-26', 35, 8),
(36, 'Highlands', '2021-08-26', '2021-08-26', 36, 8),
(37, 'https://www.google.com/', '2021-08-26', '2021-08-26', 37, 9),
(38, 'https://www.google.com/', '2021-08-26', '2021-08-26', 38, 9),
(39, 'https://www.google.com/', '2021-08-26', '2021-08-26', 39, 9),
(40, 'https://www.google.com/', '2021-08-26', '2021-08-26', 40, 9),
(41, 'established by husband and wife, bernade and rossmarry walsh', '2021-08-27', '2021-08-27', 41, 10),
(42, 'established by husband and wife, bernade and rossmarry walsh', '2021-08-27', '2021-08-27', 42, 10),
(43, 'established by husband and wife, bernade and rossmarry walsh', '2021-08-27', '2021-08-27', 43, 10),
(44, 'established by husband and wife, bernade and rossmarry walsh', '2021-08-27', '2021-08-27', 44, 10);

-- --------------------------------------------------------

--
-- Table structure for table `brand_data`
--

CREATE TABLE `brand_data` (
  `Brand_id` int(11) NOT NULL,
  `B_Name` varchar(100) NOT NULL,
  `B_Description` text NOT NULL,
  `Creation_Date` date NOT NULL,
  `Modified_Date` date NOT NULL,
  `DisplayOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand_data`
--

INSERT INTO `brand_data` (`Brand_id`, `B_Name`, `B_Description`, `Creation_Date`, `Modified_Date`, `DisplayOrder`) VALUES
(100, 'BLACKHAT DISTILLERY', 'BLACKHAT DISTILLERY', '2021-07-29', '2021-07-29', 2),
(101, 'WALSH DISTILLERY', 'WALSH DISTILLERY', '2021-08-04', '2021-08-04', 1),
(102, 'STERLING DISTILLERY', 'STERLING DISTILLERY', '2021-08-04', '2021-08-04', 3),
(103, 'SONS OF SCOTLAND', 'SONS OF SCOTLAND', '2021-08-04', '2021-08-04', 4);

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `complaint_type_id` int(11) NOT NULL,
  `file` varchar(150) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `description`, `user_id`, `complaint_type_id`, `file`, `updated_at`, `created_at`) VALUES
(1, 'this is a complaint description', 1, 2, '', '2021-11-14 15:05:23', '0000-00-00 00:00:00'),
(2, 'this is a complaint description', 1, 2, '', '2021-11-14 15:05:23', '0000-00-00 00:00:00'),
(3, 'this is a complaint description', 1, 2, '', '2021-11-14 15:05:23', '0000-00-00 00:00:00'),
(4, 'this is a complaint description', 1, 2, '', '2021-11-14 15:05:23', '0000-00-00 00:00:00'),
(5, 'this is a complaint description', 1, 2, 'C:\\Laravel\\bitcask\\storage/jrHevxDw7P.png', '2021-11-14 15:05:23', '0000-00-00 00:00:00'),
(6, 'this is a complaint description', 1, 2, 'C:\\Laravel\\bitcask\\storage/outZY4Cs1j.png', '2021-11-14 09:35:28', '2021-11-14 09:35:28'),
(7, 'this is a complaint description', 1, 2, 'C:\\Laravel\\bitcask\\storage/yRtrIWCyme.png', '2021-11-14 09:35:53', '2021-11-14 09:35:53');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_types`
--

CREATE TABLE `complaint_types` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaint_types`
--

INSERT INTO `complaint_types` (`id`, `name`) VALUES
(1, 'Product'),
(2, 'Time ');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `isocode` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `creationTime` date NOT NULL,
  `modifiedTime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`isocode`, `name`, `creationTime`, `modifiedTime`) VALUES
('uk', 'UK', '2021-07-31', '2021-07-31');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `isocode` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `symbol` text NOT NULL,
  `creationTime` date NOT NULL,
  `modifiedTime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`isocode`, `name`, `active`, `symbol`, `creationTime`, `modifiedTime`) VALUES
(1, 'Dollar', 1, 'USD', '2021-07-30', '2021-07-30');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `F_Name` varchar(50) NOT NULL,
  `L_Name` varchar(50) NOT NULL,
  `Un_id` varchar(50) NOT NULL,
  `Email_id` varchar(50) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Password` text DEFAULT NULL,
  `activeUser` tinyint(1) NOT NULL,
  `CreationTime` date DEFAULT NULL,
  `ModifiedTime` date DEFAULT NULL,
  `stripeCustomerid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `F_Name`, `L_Name`, `Un_id`, `Email_id`, `Phone`, `Password`, `activeUser`, `CreationTime`, `ModifiedTime`, `stripeCustomerid`) VALUES
(1, 'BitCask', 'User', '762c9031-12d1-4e9f-a5db-18f02d7e49ee', 'sr.visakh11@gmail.com', '', '87044023af129c4bbbb186751da5bcf5', 1, '2021-09-08', '2021-09-08', NULL),
(2, 'Nathan', 'Benitez', '1024e02c-6e34-400e-927d-f47f83dc7694', 'admin@bit-cask.com', '', '2c103f2c4ed1e59c0b4e2e01821770fa', 1, '2021-09-08', '2021-09-08', NULL),
(3, 'Rejinsha', 'Shahudeen', 'fd19fcd2-064f-45e1-af2b-238f554ac1fe', 'rejinshalb@gmail.com', '', '', 1, '2021-09-08', '2021-09-08', 'cus_KBovNYz4RHkzHW'),
(4, 'gg', '  v', '0a010cfd-2025-4ed3-875a-37f7567f4ac6', 'aiswaryapchandran3@gmail.com', '', '5936611e6c18ca623aa55831be5ae056', 1, '2021-09-08', '2021-09-10', NULL),
(5, 'Ais', 'Warya', 'a9d15db7-7b78-4193-b76c-f1a2ffb43303', 'aiswaryapchandran5@gmail.com', '8547900611', 'cea4cc375ffc5e3e488de17b078110ac', 1, '2021-09-09', '2021-09-09', NULL),
(6, 'Test', 'test', 'yrhtrd', 'abc@gmail.com', '1234567890', NULL, 0, NULL, NULL, NULL),
(7, 'Test', 'test', '0c8dfefafee87fbceedeaed6002a098a', 'abc@gmail.com', '1234567890', '900150983cd24fb0d6963f7d28e17f72', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customerdetail`
--

CREATE TABLE `customerdetail` (
  `customer_d_id` int(11) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `profilepic` text DEFAULT NULL,
  `proffesion` varchar(20) NOT NULL,
  `disposableIncome` varchar(50) DEFAULT NULL,
  `gender` varchar(50) NOT NULL,
  `kycStatus` varchar(200) DEFAULT NULL,
  `investorType` varchar(50) DEFAULT NULL,
  `idProof` text DEFAULT NULL,
  `utility_bill` text DEFAULT NULL,
  `regularInvestor` varchar(200) DEFAULT NULL,
  `address` int(11) DEFAULT NULL,
  `customerid` varchar(50) DEFAULT NULL,
  `kycVerificationCompleted` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerdetail`
--

INSERT INTO `customerdetail` (`customer_d_id`, `dob`, `profilepic`, `proffesion`, `disposableIncome`, `gender`, `kycStatus`, `investorType`, `idProof`, `utility_bill`, `regularInvestor`, `address`, `customerid`, `kycVerificationCompleted`) VALUES
(1, '13-09-2003', 'https://bitcask-be.s3.ap-south-1.amazonaws.com/1631101146018.jpg', '', 'Â£15,000.00', 'Male', '1', 'Pvt Company', 'https://bitcask-be.s3.ap-south-1.amazonaws.com/3262202320959.jpg', 'https://bitcask-be.s3.ap-south-1.amazonaws.com/1631101160479.jpg', 'For last 2 years', 1, '762c9031-12d1-4e9f-a5db-18f02d7e49ee', '2021-09-17'),
(3, '01-08-1993', 'https://bitcask-be.s3.ap-south-1.amazonaws.com/1631107652334.jpg', '', 'Â£9,000.00', 'Male', '1', 'Individual', 'https://bitcask-be.s3.ap-south-1.amazonaws.com/3262215320221.jpg', 'https://bitcask-be.s3.ap-south-1.amazonaws.com/1631107660110.jpg', 'No', 3, '1024e02c-6e34-400e-927d-f47f83dc7694', '2021-09-08'),
(4, '13/09/2003', 'https://bitcask-be.s3.ap-south-1.amazonaws.com/1631109368249.jpg', '', 'Â£15,000.00', 'Male', '1', 'Pvt Company', 'https://bitcask-be.s3.ap-south-1.amazonaws.com/3262218763901.jpg', 'https://bitcask-be.s3.ap-south-1.amazonaws.com/1631109381951.jpg', 'For last 2 years', 4, 'fd19fcd2-064f-45e1-af2b-238f554ac1fe', '2021-09-08'),
(5, '15-09-2003', 'https://bitcask-be.s3.ap-south-1.amazonaws.com/1631267859521.jpg', '', 'Â£20,000.00', 'Female', '1', 'Individual', 'https://bitcask-be.s3.ap-south-1.amazonaws.com/3262535732108.jpg', 'https://bitcask-be.s3.ap-south-1.amazonaws.com/1631267866054.jpg', 'For last 5 years', 42, '0a010cfd-2025-4ed3-875a-37f7567f4ac6', '2021-09-09');

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `id` int(11) NOT NULL,
  `platformfee` varchar(50) NOT NULL DEFAULT '',
  `transactionfee` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`id`, `platformfee`, `transactionfee`) VALUES
(1, '2.5', '2');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Oder_id` int(11) NOT NULL,
  `dateOfPurchase` date NOT NULL,
  `totalCost` double NOT NULL,
  `tax` int(11) NOT NULL,
  `billingAddress` int(11) NOT NULL,
  `paymentMode` int(11) NOT NULL,
  `paymentInfo` varchar(50) NOT NULL,
  `currency` int(11) NOT NULL,
  `RE_Status` varchar(50) DEFAULT 'Live',
  `customer` varchar(50) NOT NULL,
  `creationTime` date NOT NULL,
  `modifiedTime` date NOT NULL,
  `Status` int(11) NOT NULL,
  `Brand_id` int(11) NOT NULL,
  `Product_Id` int(11) NOT NULL,
  `no_Share` int(11) NOT NULL,
  `transactionId` text NOT NULL,
  `invoice` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Oder_id`, `dateOfPurchase`, `totalCost`, `tax`, `billingAddress`, `paymentMode`, `paymentInfo`, `currency`, `RE_Status`, `customer`, `creationTime`, `modifiedTime`, `Status`, `Brand_id`, `Product_Id`, `no_Share`, `transactionId`, `invoice`) VALUES
(1, '0000-00-00', 416.67, 0, 1, 1, '', 1, 'Live', '762c9031-12d1-4e9f-a5db-18f02d7e49ee', '2021-09-08', '2021-09-08', 3, 100, 100, 2, '', ''),
(2, '0000-00-00', 521.22, 0, 3, 1, '', 1, 'Live', '1024e02c-6e34-400e-927d-f47f83dc7694', '2021-09-08', '2021-09-08', 3, 102, 102, 2, '', ''),
(3, '2021-09-08', 209.1, 0, 4, 1, '', 1, 'Live', 'fd19fcd2-064f-45e1-af2b-238f554ac1fe', '2021-09-08', '2021-09-08', 1, 100, 100, 1, 'pi_3JXRHIBAHU6NfFto0JiIEuZQ_secret_tjhqmZO7JEDYaHE0af2R64sig', 'https://bitcask-be.s3.ap-south-1.amazonaws.com/1631109475899.pdf'),
(4, '2021-09-08', 521.22, 0, 4, 1, '', 1, 'Live', 'fd19fcd2-064f-45e1-af2b-238f554ac1fe', '2021-09-08', '2021-09-08', 1, 102, 102, 2, 'pi_3JXRPhBAHU6NfFto0Lb9OxDA_secret_8WkETaPyy1ul8fY2j8Baqgrz1', 'https://bitcask-be.s3.ap-south-1.amazonaws.com/1631109979610.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `orderstatus`
--

CREATE TABLE `orderstatus` (
  `OdS_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `creationTime` date NOT NULL,
  `modifiedTime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderstatus`
--

INSERT INTO `orderstatus` (`OdS_id`, `name`, `creationTime`, `modifiedTime`) VALUES
(1, 'Success', '2021-07-26', '2021-07-26'),
(2, 'Fail', '2021-07-26', '2021-07-26'),
(3, 'Pending', '2021-07-31', '2021-07-31'),
(4, 'Refund Request', '2021-08-31', '2021-08-31');

-- --------------------------------------------------------

--
-- Table structure for table `paymentmode`
--

CREATE TABLE `paymentmode` (
  `PayM_id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `creationTime` date NOT NULL,
  `modifiedTime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paymentmode`
--

INSERT INTO `paymentmode` (`PayM_id`, `Name`, `active`, `creationTime`, `modifiedTime`) VALUES
(1, 'Card', 1, '2021-07-26', '2021-07-26');

-- --------------------------------------------------------

--
-- Table structure for table `paymet_server`
--

CREATE TABLE `paymet_server` (
  `id` int(11) DEFAULT NULL,
  `publickey` varchar(50) NOT NULL,
  `privatekey` varchar(50) NOT NULL,
  `keytype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paymet_server`
--

INSERT INTO `paymet_server` (`id`, `publickey`, `privatekey`, `keytype`) VALUES
(1, 'pk_test_51JITYzQYwltnIWSPbJl2mtJoDDUmdanDDHIFeSVru', 'sk_test_51J3FOwBAHU6NfFtobMwDYqd0eVJxnRgWki0oJ22sm', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `product_data`
--

CREATE TABLE `product_data` (
  `Product_Id` int(11) NOT NULL,
  `P_Name` varchar(50) NOT NULL,
  `P_Description` text NOT NULL,
  `Brand_id` int(11) NOT NULL,
  `Creation_Date` date NOT NULL,
  `Modified_Date` date NOT NULL,
  `Online_From` date NOT NULL,
  `Online_To` date DEFAULT NULL,
  `No_Shares` int(11) NOT NULL,
  `Priceper_Share` double NOT NULL,
  `Cask_Price` double NOT NULL,
  `Current` tinyint(1) NOT NULL,
  `Upcoming` tinyint(1) NOT NULL,
  `Active` tinyint(1) NOT NULL,
  `Display_Order` int(11) NOT NULL,
  `SharesLeft` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_data`
--

INSERT INTO `product_data` (`Product_Id`, `P_Name`, `P_Description`, `Brand_id`, `Creation_Date`, `Modified_Date`, `Online_From`, `Online_To`, `No_Shares`, `Priceper_Share`, `Cask_Price`, `Current`, `Upcoming`, `Active`, `Display_Order`, `SharesLeft`) VALUES
(100, 'BLACKHAT DISTILLERY', 'Whether you are at home or our tasting room, Blackhat spirits makes the best caft cocktails', 100, '2021-07-29', '2021-07-29', '2021-07-29', '0000-00-00', 150, 200, 400, 1, 0, 1, 1, 54),
(101, 'SONS OF SCOTLAND', 'single malt salt whiskey', 103, '2021-07-29', '2021-07-29', '2021-12-29', NULL, 150, 150, 3000, 1, 0, 1, 2, 102),
(102, 'STIRLING DISTILLERY', 'Stirling Distillery is a family run business founded by Cameron and June McCann.', 102, '2021-07-29', '2021-07-29', '2021-07-29', NULL, 150, 250, 5000, 1, 0, 1, 3, 64),
(103, 'WALSH DISTILLERY', 'established by husband and wife, bernade and rossmarry walsh', 101, '2021-07-29', '2021-07-29', '2021-10-29', NULL, 150, 150, 3000, 1, 0, 1, 2, 62);

-- --------------------------------------------------------

--
-- Table structure for table `share`
--

CREATE TABLE `share` (
  `Share_id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `Brand_Id` int(11) NOT NULL,
  `Product_id` int(11) NOT NULL,
  `entryNumber` int(11) NOT NULL,
  `C_Unid` varchar(50) NOT NULL,
  `basePrice` double NOT NULL,
  `calaculatedPrice` double NOT NULL,
  `certificate` text DEFAULT NULL,
  `creationTime` date NOT NULL,
  `modifiedTime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `share`
--

INSERT INTO `share` (`Share_id`, `orderid`, `Brand_Id`, `Product_id`, `entryNumber`, `C_Unid`, `basePrice`, `calaculatedPrice`, `certificate`, `creationTime`, `modifiedTime`) VALUES
(1, 3, 100, 100, 1, 'fd19fcd2-064f-45e1-af2b-238f554ac1fe', 200, 200, 'https://bitcask-be.s3.ap-south-1.amazonaws.com/1631109475997.pdf', '2021-09-08', '2021-09-08'),
(2, 4, 102, 102, 1, 'fd19fcd2-064f-45e1-af2b-238f554ac1fe', 250, 250, 'https://bitcask-be.s3.ap-south-1.amazonaws.com/1631109979715.pdf', '2021-09-08', '2021-09-08'),
(3, 4, 102, 102, 2, 'fd19fcd2-064f-45e1-af2b-238f554ac1fe', 250, 250, 'https://bitcask-be.s3.ap-south-1.amazonaws.com/1631109980986.pdf', '2021-09-08', '2021-09-08');

-- --------------------------------------------------------

--
-- Table structure for table `stripecustomerid`
--

CREATE TABLE `stripecustomerid` (
  `CustomerId` varchar(255) NOT NULL,
  `StripeId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `Tax_id` int(11) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL,
  `creationTime` date NOT NULL,
  `modifiedTime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`Tax_id`, `currency`, `value`, `creationTime`, `modifiedTime`) VALUES
(1, 'USD', '6', '2021-07-31', '2021-07-31');

-- --------------------------------------------------------

--
-- Table structure for table `useraddress`
--

CREATE TABLE `useraddress` (
  `Address_id` int(11) NOT NULL,
  `streetname` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `zipcode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `useraddress`
--

INSERT INTO `useraddress` (`Address_id`, `streetname`, `country`, `City`, `zipcode`) VALUES
(1, 'Test address', 'United Kingdom (GB)', 'London', ''),
(2, 'bjj', 'Armenia (AM)', 'asd', ''),
(3, 'London', 'United Kingdom (GB)', 'London', ''),
(4, 'test', 'Afghanistan (AF)', 'test', ''),
(5, 'dfgg', 'Austria (AT)', 'zxcc', ''),
(6, 'dd', 'Ascension Island (AC)', 'ddd', ''),
(7, 'sss', 'Aruba (AW)', 'dff', ''),
(8, 'aaa', 'Argentina (AR)', 'aaa', ''),
(9, 'ddd', 'Anguilla (AI)', 'tt', ''),
(10, 'ff', 'Ascension Island (AC)', 'rrr', ''),
(11, 'fgg', 'Aruba (AW)', 'asdgh', ''),
(12, 'aaa', 'Aruba (AW)', 'aa', ''),
(13, 'ff', 'Armenia (AM)', 'xx', ''),
(14, 'gg', 'Aruba (AW)', 'ggg', ''),
(15, 'ff', 'Armenia (AM)', 'cc', ''),
(16, 'ff', 'Argentina (AR)', 'dd', ''),
(17, 'vv', 'Australia (AU)', 'tt', ''),
(18, 'cfff', 'Ascension Island (AC)', 'sss', ''),
(19, 'gg', 'Antigua and Barbuda (AG)', 'tt', ''),
(20, 'fff', 'Australia (AU)', 'vvv', ''),
(21, 'gg', 'Anguilla (AI)', 'ccc', ''),
(22, 'hh', 'Aruba (AW)', 'ccv', ''),
(23, 'ggg', 'Argentina (AR)', 'ffg', ''),
(24, 'ggg', 'Armenia (AM)', 'ffg', ''),
(25, 'fff', 'Australia (AU)', 'vv', ''),
(26, 'ggg', 'Anguilla (AI)', 'bvv', ''),
(27, 'cc', 'Anguilla (AI)', 'cccc', ''),
(28, 'sd', 'Armenia (AM)', 'dsd', ''),
(29, 'fff', 'Austria (AT)', 'vvn', ''),
(30, 'vvv', 'Aruba (AW)', 'cvb', ''),
(31, 'fff', 'Antigua and Barbuda (AG)', 'gbn', ''),
(32, 'gg', 'Ascension Island (AC)', 'gh', ''),
(33, 'ffg', 'Aruba (AW)', 'yy', ''),
(34, 'ggg', 'Andorra (AD)', 'rrr', ''),
(35, 'gg', 'Armenia (AM)', 'rr', ''),
(36, 'ff', 'Australia (AU)', 'ff', ''),
(37, 'ff', 'Angola (AO)', 'dgh', ''),
(38, 'ff', 'Aruba (AW)', 'ddf', ''),
(39, 'aaa', 'Aruba (AW)', 'aa', ''),
(40, 'ss', 'Aruba (AW)', 'ss', ''),
(41, 'ddd', 'Armenia (AM)', 'ss', ''),
(42, 'fff', 'Anguilla (AI)', 'vvb', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`Asset_id`),
  ADD KEY `Product_Id` (`Product_Id`),
  ADD KEY `Brand_id` (`Brand_id`),
  ADD KEY `User_Id` (`User_Id`),
  ADD KEY `Asset_Type` (`Asset_Type`);

--
-- Indexes for table `assettype`
--
ALTER TABLE `assettype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`Attribute_id`),
  ADD KEY `Product_Id` (`Product_Id`),
  ADD KEY `AttributeDecription` (`AttributeDecription`);

--
-- Indexes for table `attribute_definition`
--
ALTER TABLE `attribute_definition`
  ADD PRIMARY KEY (`Att_Defi_id`);

--
-- Indexes for table `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`Att_Va_id`),
  ADD KEY `attributeId` (`attributeId`),
  ADD KEY `attributedefinitionID` (`attributedefinitionID`);

--
-- Indexes for table `brand_data`
--
ALTER TABLE `brand_data`
  ADD PRIMARY KEY (`Brand_id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint_types`
--
ALTER TABLE `complaint_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD UNIQUE KEY `isocode` (`isocode`),
  ADD KEY `isocode_2` (`isocode`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`isocode`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `Un_id_2` (`Un_id`),
  ADD KEY `Un_id` (`Un_id`);

--
-- Indexes for table `customerdetail`
--
ALTER TABLE `customerdetail`
  ADD PRIMARY KEY (`customer_d_id`),
  ADD UNIQUE KEY `customerid` (`customerid`),
  ADD KEY `address` (`address`);

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Oder_id`),
  ADD KEY `customer` (`customer`),
  ADD KEY `paymentMode` (`paymentMode`),
  ADD KEY `Brand_id` (`Brand_id`),
  ADD KEY `Product_Id` (`Product_Id`),
  ADD KEY `tax` (`tax`),
  ADD KEY `billingAddress` (`billingAddress`),
  ADD KEY `currency` (`currency`),
  ADD KEY `Status` (`Status`);

--
-- Indexes for table `orderstatus`
--
ALTER TABLE `orderstatus`
  ADD PRIMARY KEY (`OdS_id`);

--
-- Indexes for table `paymentmode`
--
ALTER TABLE `paymentmode`
  ADD PRIMARY KEY (`PayM_id`);

--
-- Indexes for table `product_data`
--
ALTER TABLE `product_data`
  ADD PRIMARY KEY (`Product_Id`),
  ADD KEY `Brand_id` (`Brand_id`);

--
-- Indexes for table `share`
--
ALTER TABLE `share`
  ADD PRIMARY KEY (`Share_id`),
  ADD KEY `Product_id` (`Product_id`,`Brand_Id`,`orderid`),
  ADD KEY `Brand_Id` (`Brand_Id`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `C_Unid` (`C_Unid`);

--
-- Indexes for table `stripecustomerid`
--
ALTER TABLE `stripecustomerid`
  ADD KEY `CustomerId` (`CustomerId`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`Tax_id`);

--
-- Indexes for table `useraddress`
--
ALTER TABLE `useraddress`
  ADD PRIMARY KEY (`Address_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asset`
--
ALTER TABLE `asset`
  MODIFY `Asset_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `assettype`
--
ALTER TABLE `assettype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `attribute`
--
ALTER TABLE `attribute`
  MODIFY `Attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `attribute_definition`
--
ALTER TABLE `attribute_definition`
  MODIFY `Att_Defi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `Att_Va_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `brand_data`
--
ALTER TABLE `brand_data`
  MODIFY `Brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `complaint_types`
--
ALTER TABLE `complaint_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `isocode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customerdetail`
--
ALTER TABLE `customerdetail`
  MODIFY `customer_d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fee`
--
ALTER TABLE `fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Oder_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orderstatus`
--
ALTER TABLE `orderstatus`
  MODIFY `OdS_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `paymentmode`
--
ALTER TABLE `paymentmode`
  MODIFY `PayM_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_data`
--
ALTER TABLE `product_data`
  MODIFY `Product_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `share`
--
ALTER TABLE `share`
  MODIFY `Share_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tax`
--
ALTER TABLE `tax`
  MODIFY `Tax_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `useraddress`
--
ALTER TABLE `useraddress`
  MODIFY `Address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `asset`
--
ALTER TABLE `asset`
  ADD CONSTRAINT `asset_ibfk_3` FOREIGN KEY (`Asset_Type`) REFERENCES `assettype` (`id`),
  ADD CONSTRAINT `asset_ibfk_4` FOREIGN KEY (`Product_Id`) REFERENCES `product_data` (`Product_Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `asset_ibfk_5` FOREIGN KEY (`Brand_id`) REFERENCES `brand_data` (`Brand_id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute`
--
ALTER TABLE `attribute`
  ADD CONSTRAINT `attribute_ibfk_1` FOREIGN KEY (`Product_Id`) REFERENCES `product_data` (`Product_Id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD CONSTRAINT `attribute_value_ibfk_3` FOREIGN KEY (`attributeId`) REFERENCES `attribute` (`Attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_value_ibfk_4` FOREIGN KEY (`attributedefinitionID`) REFERENCES `attribute_definition` (`Att_Defi_id`) ON DELETE CASCADE;

--
-- Constraints for table `customerdetail`
--
ALTER TABLE `customerdetail`
  ADD CONSTRAINT `customerdetail_ibfk_2` FOREIGN KEY (`address`) REFERENCES `useraddress` (`Address_id`),
  ADD CONSTRAINT `customerdetail_ibfk_3` FOREIGN KEY (`customerid`) REFERENCES `customer` (`Un_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Brand_id`) REFERENCES `brand_data` (`Brand_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`Product_Id`) REFERENCES `product_data` (`Product_Id`),
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`currency`) REFERENCES `currency` (`isocode`),
  ADD CONSTRAINT `orders_ibfk_5` FOREIGN KEY (`billingAddress`) REFERENCES `useraddress` (`Address_id`),
  ADD CONSTRAINT `orders_ibfk_6` FOREIGN KEY (`Status`) REFERENCES `orderstatus` (`OdS_id`),
  ADD CONSTRAINT `orders_ibfk_7` FOREIGN KEY (`customer`) REFERENCES `customer` (`Un_id`);

--
-- Constraints for table `product_data`
--
ALTER TABLE `product_data`
  ADD CONSTRAINT `product_data_ibfk_1` FOREIGN KEY (`Brand_id`) REFERENCES `brand_data` (`Brand_id`) ON DELETE CASCADE;

--
-- Constraints for table `stripecustomerid`
--
ALTER TABLE `stripecustomerid`
  ADD CONSTRAINT `stripecustomerid_ibfk_1` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`Un_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
