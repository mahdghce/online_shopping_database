-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2018 at 10:24 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_shopping`
--
CREATE DATABASE IF NOT EXISTS `online_shopping` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `online_shopping`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `ID` int(20) NOT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `Password` varchar(25) DEFAULT NULL,
  `FirstName` varchar(25) DEFAULT NULL,
  `LastName` varchar(25) DEFAULT NULL,
  `Sex` enum('Male','Female') DEFAULT NULL,
  `Credit` int(20) DEFAULT NULL,
  `Cellphone` int(20) DEFAULT NULL,
  `Address` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ID`, `Email`, `Password`, `FirstName`, `LastName`, `Sex`, `Credit`, `Cellphone`, `Address`) VALUES
(1, 'mgh1', '0001', 'ali1', 'dalir1', 'Male', 100, 936001, 'sadeghieh1'),
(2, 'mgh2', '0002', 'ali2', 'dalir2', 'Female', 200, 936002, 'sadeghieh2'),
(3, 'mgh3', '0003', 'ali3', 'dalir3', 'Female', 300, 936003, 'sadeghieh3'),
(4, 'mgh4', '0004', 'ali4', 'dalir4', 'Female', 400, 936004, 'sadeghieh4');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `ID` int(25) NOT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `Password` varchar(25) DEFAULT NULL,
  `FirstName` varchar(25) DEFAULT NULL,
  `LastName` varchar(25) DEFAULT NULL,
  `Sex` enum('Male','Female') DEFAULT NULL,
  `Cellphone` int(25) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`ID`, `Email`, `Password`, `FirstName`, `LastName`, `Sex`, `Cellphone`, `Address`) VALUES
(1, 'sh1', '1001', 'sara1', 'raghimi1', 'Male', 912001, 'bagherieh1'),
(2, 'sh2', '1002', 'sara2', 'raghimi2', 'Female', 912002, 'bagherieh2'),
(3, 'sh3', '1003', 'sara3', 'raghimi3', 'Female', 912003, 'bagherieh3'),
(4, 'sh4', '1004', 'sara4', 'raghimi4', 'Female', 912004, 'bagherieh4');

-- --------------------------------------------------------

--
-- Table structure for table `orderproduct`
--

DROP TABLE IF EXISTS `orderproduct`;
CREATE TABLE `orderproduct` (
  `OrderID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderproduct`
--

INSERT INTO `orderproduct` (`OrderID`, `ProductID`, `Amount`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 2, 1),
(4, 2, 1),
(5, 3, 1),
(6, 3, 1),
(7, 3, 1),
(8, 4, 1),
(9, 4, 1),
(10, 4, 1),
(11, 1, 2),
(12, 1, 4),
(13, 1, 1),
(14, 1, 1),
(15, 5, 1),
(16, 5, 3),
(17, 6, 5),
(18, 7, 5),
(19, 7, 1),
(20, 8, 1),
(21, 1, 2),
(22, 1, 1),
(23, 2, 2),
(24, 3, 2),
(25, 3, 1),
(26, 3, 1),
(27, 3, 1),
(28, 4, 2),
(29, 4, 4),
(30, 5, 3),
(31, 1, 1),
(32, 1, 1),
(40, 2, 1),
(33, 3, 1),
(34, 4, 2),
(35, 5, 1),
(36, 6, 1),
(37, 6, 1),
(38, 7, 2),
(39, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `ID` int(25) NOT NULL,
  `VendorID` int(25) DEFAULT NULL,
  `CustomerID` int(25) DEFAULT NULL,
  `Status` enum('Submitted','OnTheWay','Delivered','') DEFAULT NULL,
  `PaymentType` enum('Credit','BankPortal','','') DEFAULT NULL,
  `CreatedAt` date DEFAULT NULL,
  `DeliveryAddress` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ID`, `VendorID`, `CustomerID`, `Status`, `PaymentType`, `CreatedAt`, `DeliveryAddress`) VALUES
(1, 1, 1, 'Submitted', 'Credit', '2018-11-01', 'sadeghieh1'),
(2, 1, 1, 'Submitted', 'BankPortal', '2018-11-02', 'sadeghieh1'),
(3, 1, 1, 'Submitted', 'BankPortal', '2018-11-03', 'sadeghieh1'),
(4, 1, 1, 'Submitted', 'BankPortal', '2018-11-04', 'sadeghieh1'),
(5, 1, 1, 'Submitted', 'BankPortal', '2018-11-05', 'sadeghieh1'),
(6, 1, 1, 'Submitted', 'BankPortal', '2018-11-06', 'sadeghieh1'),
(7, 2, 1, 'Submitted', 'BankPortal', '2018-11-07', 'sadeghieh1'),
(8, 2, 1, 'Submitted', 'BankPortal', '2018-11-08', 'sadeghieh1'),
(9, 3, 1, 'Submitted', 'BankPortal', '2018-11-09', 'sadeghieh1'),
(10, 4, 1, 'Submitted', 'BankPortal', '2018-11-10', 'sadeghieh1'),
(11, 1, 2, 'Submitted', 'BankPortal', '2018-11-11', 'unknown1'),
(12, 1, 2, 'Submitted', 'BankPortal', '2018-11-12', 'unknown1'),
(13, 1, 2, 'Submitted', 'BankPortal', '2018-11-13', 'unknown1'),
(14, 1, 2, 'Submitted', 'BankPortal', '2018-11-14', 'unknown1'),
(15, 2, 2, 'Submitted', 'BankPortal', '2018-11-15', 'unknown1'),
(16, 2, 2, 'Submitted', 'BankPortal', '2018-11-16', 'unknown1'),
(17, 2, 2, 'Submitted', 'BankPortal', '2018-11-17', 'unknown1'),
(18, 2, 2, 'Submitted', 'BankPortal', '2018-11-18', 'unknown1'),
(19, 3, 2, 'Submitted', 'BankPortal', '2018-11-19', 'unknown1'),
(20, 4, 2, 'Submitted', 'BankPortal', '2018-09-20', 'unknown1'),
(21, 1, 3, 'Submitted', 'Credit', '2018-10-21', 'unknown2'),
(22, 1, 3, 'Submitted', 'Credit', '2018-10-22', 'unknown2'),
(23, 2, 3, 'Submitted', 'Credit', '2018-10-23', 'unknown2'),
(24, 2, 3, 'Submitted', 'Credit', '2018-10-24', 'unknown2'),
(25, 2, 3, 'Submitted', 'Credit', '2018-10-25', 'unknown2'),
(26, 2, 3, 'Submitted', 'Credit', '2018-10-26', 'unknown2'),
(27, 2, 3, 'Submitted', 'BankPortal', '2018-10-27', 'unknown2'),
(28, 2, 3, 'Submitted', 'Credit', '2018-10-28', 'unknown2'),
(29, 3, 3, 'Submitted', 'Credit', '2018-10-29', 'unknown2'),
(30, 4, 3, 'Submitted', 'BankPortal', '2018-10-30', 'unknown2'),
(31, 1, 4, 'Submitted', 'BankPortal', '2018-09-01', 'sadeghieh4'),
(32, 1, 4, 'Submitted', 'BankPortal', '2018-09-02', 'sadeghieh4'),
(33, 1, 4, 'Submitted', 'BankPortal', '2018-09-03', 'sadeghieh4'),
(34, 1, 4, 'Submitted', 'BankPortal', '2018-09-04', 'sadeghieh4'),
(35, 2, 4, 'Submitted', 'BankPortal', '2018-09-05', 'sadeghieh4'),
(36, 2, 4, 'Submitted', 'BankPortal', '2018-09-06', 'sadeghieh4'),
(37, 3, 4, 'Submitted', 'BankPortal', '2018-09-07', 'sadeghieh4'),
(38, 3, 4, 'Submitted', 'BankPortal', '2018-09-08', 'sadeghieh4'),
(39, 4, 4, 'Submitted', 'BankPortal', '2018-09-09', 'sadeghieh4'),
(40, 4, 4, 'Submitted', 'BankPortal', '2018-09-10', 'sadeghieh4');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `ID` int(25) NOT NULL,
  `Tite` varchar(25) DEFAULT NULL,
  `Price` int(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `Tite`, `Price`) VALUES
(1, 'panir', 5),
(2, 'kareh', 15),
(3, 'shir', 25),
(4, 'mast', 35),
(5, 'khameh', 45),
(6, 'asal', 55),
(7, 'moraba', 65),
(8, 'nan', 105);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
CREATE TABLE `vendor` (
  `ID` int(25) NOT NULL,
  `Title` varchar(25) DEFAULT NULL,
  `City` varchar(25) DEFAULT NULL,
  `ManagerID` int(25) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Phone` int(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`ID`, `Title`, `City`, `ManagerID`, `Address`, `Phone`) VALUES
(1, 'pasdaran', 'tehran', 1, 'jafarieh2', 915001),
(2, 'saadatabad', 'tehran', 2, 'jafarieh1', 915002),
(3, 'proma', 'mashhad', 3, 'jafarieh3', 915003),
(4, 'almas', 'mashhad', 4, 'jafarieh4', 915004);

-- --------------------------------------------------------

--
-- Table structure for table `vendorproduct`
--

DROP TABLE IF EXISTS `vendorproduct`;
CREATE TABLE `vendorproduct` (
  `VendorID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendorproduct`
--

INSERT INTO `vendorproduct` (`VendorID`, `ProductID`, `Amount`) VALUES
(1, 1, 100),
(1, 2, 100),
(1, 3, 100),
(1, 4, 100),
(1, 5, 100),
(1, 6, 100),
(1, 7, 100),
(1, 8, 100),
(2, 1, 50),
(2, 2, 50),
(2, 3, 50),
(2, 4, 50),
(2, 5, 50),
(2, 6, 50),
(2, 7, 50),
(2, 8, 50),
(3, 1, 30),
(3, 2, 30),
(3, 3, 30),
(3, 4, 30),
(3, 5, 30),
(3, 6, 30),
(3, 7, 30),
(3, 8, 30),
(4, 1, 20),
(4, 2, 20),
(4, 3, 20),
(4, 4, 20),
(4, 6, 20),
(4, 7, 20),
(4, 8, 20),
(4, 5, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `orderproduct`
--
ALTER TABLE `orderproduct`
  ADD UNIQUE KEY `OrderID_2` (`OrderID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `VendorID` (`VendorID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `vendorproduct`
--
ALTER TABLE `vendorproduct`
  ADD UNIQUE KEY `VendorID_ProductID` (`VendorID`,`ProductID`) USING BTREE,
  ADD KEY `VendorID` (`VendorID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `ID` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ID` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `ID` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderproduct`
--
ALTER TABLE `orderproduct`
  ADD CONSTRAINT `orderproduct_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`ID`),
  ADD CONSTRAINT `orderproduct_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`VendorID`) REFERENCES `vendor` (`ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`id`);

--
-- Constraints for table `vendorproduct`
--
ALTER TABLE `vendorproduct`
  ADD CONSTRAINT `vendorproduct_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ID`),
  ADD CONSTRAINT `vendorproduct_ibfk_2` FOREIGN KEY (`VendorID`) REFERENCES `vendor` (`ID`);


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for table customer
--

--
-- Metadata for table manager
--

--
-- Metadata for table orderproduct
--

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'online_shopping', 'orderproduct', '{\"sorted_col\":\"`OrderID` ASC\"}', '2018-11-22 14:25:16');

--
-- Metadata for table orders
--

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'online_shopping', 'orders', '{\"sorted_col\":\"`ID` ASC\"}', '2018-11-23 12:36:04');

--
-- Metadata for table product
--

--
-- Metadata for table vendor
--

--
-- Metadata for table vendorproduct
--

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'online_shopping', 'vendorproduct', '{\"sorted_col\":\"`VendorID` ASC\"}', '2018-11-22 08:07:52');

--
-- Metadata for database online_shopping
--

--
-- Dumping data for table `pma__bookmark`
--

INSERT INTO `pma__bookmark` (`dbase`, `user`, `label`, `query`) VALUES
('online_shopping', '', 'query7', 'select orderproduct.ProductID , count(distinct orders.CustomerID) as counttt\r\nfrom orderproduct , orders\r\nwhere orderproduct.OrderID= orders.ID\r\ngroup by orderproduct.ProductID\r\nhaving counttt > 10'),
('online_shopping', '', 'query8', 'SELECT DISTINCT o1.CustomerID\r\nFROM orders as o1 , orders as o2 \r\nWHERE o1.CustomerID = o2.CustomerID AND o1.ID != o2.ID AND o1.VendorID != o2.VendorID\r\nAND o1.CreatedAt >= DATE_ADD(current_date, INTERVAL -1 MONTH)\r\nAND o2.CreatedAt >= DATE_ADD(current_date, INTERVAL -1 MONTH)'),
('online_shopping', '', 'query9', 'select orders.VendorID , sum(orderproduct.Amount * product.Price) as avgg \r\nfrom orders , product , orderproduct\r\nwhere orders.id = orderproduct.OrderID and product.ID = orderproduct.ProductID\r\ngroup by orders.VendorID\r\nhaving avgg > 100;'),
('online_shopping', '', 'query10', 'select orderproduct.ProductID , COUNT(orderproduct.productid) AS countt \r\nfrom orders , orderproduct , vendor\r\nwhere orders.ID = orderproduct.OrderID AND vendor.id = orders.VendorID\r\nand vendor.Title = \"saadatabad\"\r\ngroup BY orderproduct.ProductID\r\nORDER BY countt DESC\r\nLIMIT 1 OFFSET 2;'),
('online_shopping', '', 'query11', 'SELECT DISTINCT orders.CustomerID \r\nFROM orders\r\nWHERE orders.CustomerID NOT IN (SELECT DISTINCT o1.CustomerID \r\n                                FROM orders as o1 \r\n                                WHERE o1.CreatedAt >= DATE_ADD(current_date , INTERVAL -1 MONTH))');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
