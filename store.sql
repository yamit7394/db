-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql-server
-- Generation Time: Mar 17, 2022 at 07:33 AM
-- Server version: 8.0.19
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'pending',
  `shipping_address` varchar(200) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `shipping_pincode` varchar(10) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `first_name`, `last_name`, `email`, `status`, `shipping_address`, `country`, `state`, `shipping_pincode`, `order_date`, `delivery_date`) VALUES
(11831389, 52569, 'ankit', 'agni222', 'ankit@gmail.com', 'delivered', 'asasasas, asas', 'India', 'Uttar Pradesh', '123213213', NULL, NULL),
(49274437, 52569, 'amit', 'yadav', 'amit@gmail.com', 'delivered', 'lko, lucknow', 'India', 'Uttar Pradesh', '222222', NULL, '2022-03-09'),
(52289483, 52569, 'demo', 'demo', 'demo@gmail.com', 'approved', 'asdfghhh`, klklkj', 'India', 'Uttar Pradesh', '200211', '2022-03-09', NULL),
(52432007, 52569, 'amit', 'yadav', 'amit@gmail.com', 'approved', 'asdfk, jkjjjj', 'India', 'Uttar Pradesh', '123456', '2022-03-09', NULL),
(54601926, 52569, 'yash', 'vish', 'yash@gmail.com', 'delivered', 'lko, ', 'India', 'Uttar Pradesh', '111111', '2022-03-14', '2022-03-14'),
(63582941, 52569, 'ak', 'ak', 'ak@gmail.com', 'pending', 'akl, lllll', 'India', 'Uttar Pradesh', '11111', NULL, NULL),
(65944480, 52569, 'aaaaaaaaaa', 'mmmm', '', 'approved', 'qqqqqqqqqqqqqqq, ', 'India', 'Uttar Pradesh', '222222', '2022-03-09', NULL),
(75172012, 52569, 'ankit', 'qqww', 'ankit@gmail.com', 'pending', '121, lko', 'India', 'Uttar Pradesh', '11111', NULL, NULL),
(81210870, 85529, 'yash', 'vish', 'yash@gmail.com', 'delivered', 'vns, ', 'India', 'Uttar Pradesh', '222222', '2022-03-14', '2022-03-14'),
(86108452, 52569, 'ankit', 'qqww', 'ankit@gmail.com', 'pending', '121, lko', 'India', 'Uttar Pradesh', '11111', NULL, NULL),
(93961478, 52569, 'amit', 'yadav5', 'amit3@gmail.com', 'pending', 'aaaaaaaaaaaa, ddddddd', 'India', 'Uttar Pradesh', '999999', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_id`, `product_id`, `discount`, `quantity`) VALUES
(49274437, 22790, NULL, 1),
(75172012, 5651008, NULL, 1),
(86108452, 5651008, NULL, 1),
(52432007, 23833, NULL, 1),
(65944480, 23833, NULL, 1),
(52289483, 5651008, NULL, 1),
(54601926, 5651008, NULL, 1),
(93961478, 22790, NULL, 1),
(93961478, 23833, NULL, 1),
(93961478, 28030, NULL, 1),
(93961478, 34249, NULL, 1),
(63582941, 22790, NULL, 3),
(63582941, 23833, NULL, 2),
(11831389, 5651008, NULL, 1),
(11831389, 23833, NULL, 2),
(11831389, 34249, NULL, 2),
(81210870, 34249, NULL, 2),
(81210870, 22790, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `subcategory` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `list_price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_image`, `product_name`, `category`, `subcategory`, `price`, `list_price`) VALUES
(22790, 'soccer.png', 'Soccer', 'sports', 'football', 150, 200),
(23833, 'table-tennis.png', 'Table tennis', 'sports', 'indoor games', 500, 420),
(28030, 'tennis.png', 'Tennis', 'sports', 'outdoor', 420, 500),
(34249, 'tennis.png', 'Tennis', 'sports', 'outdoor', 420, 500),
(37201, 'tennis.png', 'Tennis', 'sports', 'outdoor', 420, 500),
(39101, 'tennis.png', 'Tennis', 'sports', 'outdoor', 420, 500),
(40867, 'tennis.png', 'Tennis', 'sports', 'outdoor', 420, 500),
(43982, 'soccer.png', 'Soccer', 'sports', 'football', 30, 50),
(44971, 'tennis.png', 'Tennis', 'sports', 'outdoor', 420, 500),
(57564, 'football.png', 'football', 'sports', 'football', 450, 500),
(61076, 'basketball.png', 'basketball', 'sports', 'basketball', 950, 1000),
(74450, 'soccer.png', 'abc', 'asdf', 'sdsd', 200, 200),
(79566, 'tennis.png', 'Tennis', 'sports', 'outdoor', 420, 500),
(83307, 'tennis.png', 'Tennis', 'sports', 'outdoor', 420, 500),
(85785, 'tennis.png', 'Tennis', 'sports', 'outdoor', 420, 500),
(95772, 'tennis.png', 'Tennis', 'sports', 'outdoor', 420, 500),
(99308, 'laptop1.png', 'lenovo laptop', 'electronics', 'laptops', 2200, 2400),
(5651001, 'product-1.jpg', 'demo1', 'electronics', 'computer', 1000, 1200),
(5651002, 'product-2.jpg', 'demo2', 'books', 'story', 250, 500),
(5651003, 'product-3.jpg', 'demo3', 'home appliances', 'curtains', 2000, 2200),
(5651004, 'product-4.jpg', 'demo4', 'furniture', 'chairs', 3000, 3500),
(5651005, 'product-5.jpg', 'demo5', 'jwelary', 'ring', 1500, 2000),
(5651008, 'product-6.jpg', 'demo5', 'jwelary', 'ring', 15000, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'user',
  `permission` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'blocked'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`, `permission`) VALUES
(5555, 'admin', 'admin@gmail.com', 'admin', 'admin', 'approved'),
(52569, 'amit yadav1', 'amit@gmail.com', 'amit1', 'user', 'approved'),
(64372, 'amit1', 'amit1@gmail.com', 'amit1', 'user', 'blockeelsed'),
(64385, 'amit3', 'amit3@gmail.com', 'amit3', 'user', 'approved'),
(85529, 'yash', 'yash@gmail.com', 'yash', 'user', 'approved');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
