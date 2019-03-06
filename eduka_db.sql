-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2019 at 11:53 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eduka_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `products` varchar(255) NOT NULL,
  `quantities` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `mode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user`, `products`, `quantities`, `status`, `mode`) VALUES
(1, 'inRXBQCTjXQS', 'nzEkTan1Jict', '0000000;0000003', '5;3', 'pending confirmation', ''),
(2, 'X1E9g9dH37Oo', 'nzEkTan1Jict', '0000000;0000003', '5;3', 'pending confirmation', ''),
(3, 'RrR305RPaLo4', 'nzEkTan1Jict', '0000002', '1', 'pending confirmation', ''),
(4, 'lyNh6GyxH13k', 'nzEkTan1Jict', '0000002', '1', 'pending confirmation', ''),
(5, '9dXSHpjltGEN', 'buhT1f1c58vM', '0000000;0000004', '1;1', 'pending confirmation', ''),
(6, 'bpncf6OrL9tu', 'buhT1f1c58vM', '0000002;0000000;0000001', '3;2;4', 'pending confirmation', ''),
(7, 'Bp8Q9BKa98EB', 'jpUGbgHBuxKU', '0000000;0000003;0000002', '3;5;2', 'pending confirmation', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `old_price` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `saletype` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `token`, `brand`, `name`, `description`, `old_price`, `price`, `saletype`, `category`, `tags`, `status`) VALUES
(1, '0000000', 'Lenovo', 'Ideapad 120S', 'The ultimate students\' laptop. Take it with you wherever.', '32000', '29000', 'featured;new;popular;flash', 'computing;laptops', '', 'available'),
(2, '0000001', 'Logitech', 'Flexiboard', 'Roll up this keyboard and take it anywhere you go.', '5000', '3500', 'featured;popular;monthly;flash', 'accessories', '', 'available'),
(3, '0000002', 'Hisense', '22\" HD Monitor', 'View everything in stunning HD with this new addition.', '27000', '22000', 'featured;new;popular;monthly;flash', '', '', 'available'),
(4, '0000003', 'Logitech', 'Flexiboard', 'Roll up this keyboard and take anywhere you go.', '5000', '3500', 'new;monthly;flash', '', '', 'available'),
(5, '0000004', 'Hisense', '22\" HD Monitor', 'View everything in stunning HD with this new addition.', '27000', '22000', 'new;popular;monthly', '', '', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `token`, `name`, `email`, `password`, `status`) VALUES
(2, 'j5Cms440NCpB', 'Peet', 'petey@mail.com', '15472cd29f632e34f039403f2e635f66', 'active'),
(4, 'ylLXPt7PbX8L', 'Daizy', 'daisy@mail.com', '15472cd29f632e34f039403f2e635f66', 'active'),
(5, 'jpUGbgHBuxKU', 'Paul', 'paul@mail.com', '15472cd29f632e34f039403f2e635f66', 'active'),
(6, 'buhT1f1c58vM', 'Hezron', 'hezron@mail.com', '15472cd29f632e34f039403f2e635f66', 'active'),
(8, 'FMhmNb2WBomM', 'Sam', 'sam@mail.com', '15472cd29f632e34f039403f2e635f66', 'active'),
(9, 'GxJ753FcspYl', 'Arjun', 'arjun@mail.com', '15472cd29f632e34f039403f2e635f66', 'active'),
(10, 'nzEkTan1Jict', 'Denzo', 'denzo@mail.com', '15472cd29f632e34f039403f2e635f66', 'active'),
(11, 'mEySc2TOaE1S', 'Mike', 'mike@mail.com', '15472cd29f632e34f039403f2e635f66', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user`, `product`) VALUES
(19, 'nzEkTan1Jict', '0000003'),
(20, 'nzEkTan1Jict', '0000000'),
(22, 'buhT1f1c58vM', '0000002'),
(24, 'jpUGbgHBuxKU', '0000000'),
(26, 'jpUGbgHBuxKU', '0000002');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
