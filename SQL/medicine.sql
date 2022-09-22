-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 22, 2022 at 12:52 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medicine`
--

-- --------------------------------------------------------

--
-- Table structure for table `Enquiry`
--

CREATE TABLE `Enquiry` (
  `name` varchar(50) COLLATE utf16_bin NOT NULL,
  `email` varchar(500) COLLATE utf16_bin NOT NULL,
  `date` date NOT NULL,
  `phone` varchar(13) COLLATE utf16_bin NOT NULL,
  `requestType` varchar(100) COLLATE utf16_bin NOT NULL,
  `message` varchar(800) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `Enquiry`
--

INSERT INTO `Enquiry` (`name`, `email`, `date`, `phone`, `requestType`, `message`) VALUES
('Abhijan', 'aghosh@gmail.com', '2022-09-01', '123456', 'Medicine Enquiry', 'jhjkhlhklhkllhkllk'),
('Abhijan', 'aghosh@gmail.com', '2022-09-08', '123556', 'Home Delivery', '	outline: none;\r\n							cursor: pointer;\r\n							font-size: 17px;\r\n							line-height: 1;\r\n							border-radius: 500px;\r\n							transition-property: background-color,border-color,color,box-shadow,filter;\r\n							transition-duration: .3s;\r\n							border: 1px solid transparent;\r\n							letter-spacing: 0px;\r\n							min-width: 20px;\r\n							white-space: normal;\r\n							font-weight: 1000;\r\n							text-align: center;\r\n							padding: 16px 14px 18px;\r\n							color: #ffffff;\r\n							background-color: #a5c422;\r\n							height: 48px;');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `total_cost` int(10) NOT NULL,
  `orderedBy` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `product_id`, `quantity`, `total_cost`, `orderedBy`, `email`, `phone`, `orderDate`) VALUES
(2, 2, 3, 900, 'test', 'test@outlook.com', '1521332872', '2019-03-20 11:43:26'),
(4, 2, 1, 300, 'ASd', 'saasd@gmail.com', '123456', '2019-03-20 11:53:39'),
(5, 2, 3, 900, 'asd', 'afdf@outlook.com', '123123', '2019-03-20 11:54:39'),
(6, 2, 3, 900, 'asd', 'afdf@outlook.com', '123123', '2019-03-20 11:54:55'),
(7, 4, 4, 800, 'Sick Leave', 'test@outlook.com', '1521332872', '2019-03-20 11:55:23'),
(9, 2, 3, 900, 'ShakaLaka', 'cool@outlook.com', '1521332872', '2019-03-20 11:59:03'),
(10, 3, 6, 1200, 'Abhijan', 'sdfsdsfss', '12312321', '2022-09-17 04:39:45');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(30) NOT NULL,
  `image` varchar(255) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `type` varchar(30) NOT NULL,
  `availability` varchar(3) NOT NULL DEFAULT 'YES'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `category`, `image`, `vendor`, `type`, `availability`) VALUES
(2, 'Amoxasilin', 300, 'Good medicine', 'Aspirine', 'dist/img/medicine.png', 'Biopharma', 'Solid', 'Yes'),
(3, 'Paracetamol', 200, '', 'Paracetamol', 'dist/img/medicine.png', 'Cipla', 'Solid', 'Yes'),
(4, 'Napa', 200, 'Headache', 'Paracetamol', 'dist/img/medicine.png', 'Square', 'Solid', 'Yes'),
(5, 'Napa', 200, 'asd', 'Cold', 'dist/img/medicine.png', 'ads', 'Solid', 'Yes'),
(7, 'Napa Extra', 200, 'Good for migrane', 'Aspirine', 'dist/img/medicine.png', 'Alco', 'Solid', 'Yes'),
(10, 'Gelusil', 45, 'jhat', 'Aspirine', 'dist/img/medicine.png', 'dtrdtdtdtdtd', 'Liquid', 'Yes'),
(11, 'Acyloc', 25, 'sdgjasgdksdkas', 'Aspirine', 'dist/img/medicine.png', 'gahjsgdsjagdajsdg', 'Liquid', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `type`) VALUES
(1, 'Subir Roy', 'Subir', 'subir@gmail.com', '123456', 'ADMIN'),
(2, 'Abhijan Ghosh', 'abhijan', 'saif@gmail.com', '123456', 'ADMIN'),
(3, 'Sneha Banerjee', 'Sneha', 'test@outlook.com', '12345', 'CUSTOMER'),
(4, 'ShakaLaka', 'saifthe', 'asd@outlook.com', '01191355619', 'CUSTOMER'),
(5, 'cassy', 'cassy', 'casy@outlook.com', '123456', 'ADMIN'),
(6, 'Abhijan', 'medicineHub', 'medaid.solns@gmail.com', 'Abhijan#123', 'CUSTOMER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Enquiry`
--
ALTER TABLE `Enquiry`
  ADD PRIMARY KEY (`phone`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
