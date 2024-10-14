-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2021 at 10:52 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `foodorder_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE IF NOT EXISTS `customer_info` (
`cus_id` int(10) unsigned NOT NULL,
  `FirstName` varchar(10) DEFAULT NULL,
  `LastName` varchar(10) NOT NULL,
  `tel` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`cus_id`, `FirstName`, `LastName`, `tel`) VALUES
(23, 'Reed', 'Richards', '2547774440'),
(24, 'James', 'Gilbert', '5647854410'),
(25, 'Johns', 'Slember', '9147516962'),
(26, 'Bruno', 'Denn', '9745458000'),
(53, 'Matt', 'Murdock', '6700000052'),
(54, 'Will', 'Williams', '1784445456'),
(55, 'Natie', 'Moore', '1754785550'),
(56, 'Susan', 'Connor', '8520001450'),
(57, 'Johny', 'Greenwodd', '1247775480'),
(58, 'Chris', 'Stuart', '9002457854'),
(59, 'Roberto', 'DelPuert', '1247778450'),
(60, 'Jonathan', 'Majors', '7412224580'),
(61, 'Anthonio', 'S', '2457777777'),
(62, 'Pedro', 'Fernandez', '1212120069'),
(63, 'Maria', 'Savendra', '5120001249'),
(64, 'Grace', 'Harper', '7001245786'),
(65, 'Aria', 'Doe', '9002145555'),
(66, 'Abigail', 'Hannah', '8520366969'),
(67, 'Eva', 'Morsn', '8521476940'),
(68, 'Florence', 'Lee', '3694789990'),
(69, 'Sam', 'Wilson', '2457776960');

-- --------------------------------------------------------

--
-- Table structure for table `food_catalogue`
--

CREATE TABLE IF NOT EXISTS `food_catalogue` (
`food_id` int(10) unsigned NOT NULL,
  `cata_name` varchar(50) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `catalog_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_catalogue`
--

INSERT INTO `food_catalogue` (`food_id`, `cata_name`, `Price`, `catalog_id`) VALUES
(1, 'Sandwiches', NULL, 1),
(2, 'Salads', NULL, 4),
(3, 'Eggs', NULL, 5),
(4, 'Breakfast', NULL, 6),
(5, 'Patisserie', NULL, 7),
(6, 'Coffee', NULL, 8),
(7, 'HotChocolate', NULL, 9),
(8, 'Tea', NULL, 10),
(9, 'Beverage', NULL, 11),
(10, 'Meals', NULL, 3),
(11, 'The Veggie Power', 10, 1),
(12, 'The Parisian', 4, 1),
(13, 'The Ultimate', 12, 1),
(14, 'Croque-Monsieur', 4, 1),
(15, 'Croque-Madame', 5, 1),
(16, 'Bikini Sandwich', 6, 1),
(17, 'Salade Nicoise', 6, 4),
(18, 'Salade Paysanne', 5, 4),
(19, 'Salmon Salad', 9, 4),
(20, 'Carrot Salad', 4, 4),
(21, 'Scrambled/Fried eggs', 7, 5),
(22, 'Red &Rouge Omelette', 10, 5),
(23, 'The Biggy Omelette', 10, 5),
(24, 'English Breakfast', 12, 6),
(25, '2 Pancakes', 10, 6),
(26, 'Bacon & Egg cupcake', 8, 6),
(27, 'Mini Croissant', 4, 7),
(28, 'Cookie', 1, 7),
(29, 'Homemade Cake', 4, 7),
(30, 'Americano', 3, 8),
(31, 'Espresso', 3, 8),
(32, 'Macchiato', 4, 8),
(33, 'Cappuccino', 4, 8),
(34, 'Latte', 3, 8),
(35, 'Mocha latte', 3, 8),
(36, 'Ciobar Hot Chocolate', 6, 9),
(37, 'Dark Chocolate', 5, 9),
(38, 'Milk Chocolate', 5, 9),
(39, 'Orange/cinnamon', 4, 10),
(40, 'Wild berry', 6, 10),
(41, 'Peppermint', 3, 10),
(42, 'Earl grey', 4, 10),
(43, 'Lady grey', 5, 10),
(44, 'Lavender', 5, 10),
(45, 'English breakfast', 7, 10),
(46, 'Harbin', 4, 11),
(47, 'Soft Drinks', 2, 11),
(49, 'Banana Milkshake', 2, 12),
(50, 'Discount', -1, 51),
(51, 'Discounts', NULL, 51),
(53, 'DIY', NULL, 2),
(54, 'Cheese', 5, 2),
(55, 'Milkshakes', NULL, 12),
(56, 'Baguette', 5, 2),
(57, 'White toast', 3, 2),
(58, 'Ham', 8, 2),
(59, 'Bacon', 3, 2),
(60, 'Tuna', 5, 2),
(61, 'Egg', 2, 2),
(62, 'Lettuce', 1, 2),
(63, 'Cucumber', 1, 2),
(64, 'Carrot', 1, 2),
(65, 'Bell Peper', 1, 2),
(66, 'Cooked Zuccini', 1, 2),
(67, 'Eggplant', 1, 2),
(68, 'Onion', 1, 2),
(69, 'Tomatoes', 1, 2),
(70, 'Black olives', 2, 2),
(71, 'Pickles', 2, 2),
(72, 'Butter', 2, 2),
(73, 'Mayonnaise', 2, 2),
(74, 'Ketchup', 1, 2),
(75, 'Mustard', 2, 2),
(76, 'Bechamel', 3, 2),
(77, 'Red Chicken Curry', 16, 3),
(78, 'Yellow beef curry', 19, 3),
(79, 'Fajita', 9, 3),
(80, 'Soup', 5, 3),
(81, 'One pot pasta', 16, 3),
(82, 'Dumplings', 25, 3),
(83, 'Pasta', NULL, 83),
(84, 'Pizza', NULL, 84),
(85, 'RavioliPortabello', 14, 83),
(90, 'PizzaPepperoni', 15, 84),
(91, 'Appetizers', NULL, 91),
(92, 'MozzarellaFritta', 5, 91);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`order_id` int(10) unsigned NOT NULL,
  `cus_id` varchar(6) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL,
  `payed` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `cus_id`, `Date`, `Time`, `payed`) VALUES
(1, '24', '2019-11-14', '05:00:00', 1),
(4, '55', '2020-03-09', '20:20:46', 1),
(8, '54', '2020-11-26', '20:24:54', 1),
(12, '59', '2020-11-26', '20:46:19', 1),
(17, '60', '2020-11-27', '12:14:51', 1),
(18, '55', '2020-11-27', '12:15:51', 1),
(19, '55', '2020-11-27', '18:30:53', 1),
(20, '61', '2020-11-27', '18:34:08', 1),
(22, '63', '2020-11-30', '12:14:38', 1),
(24, '67', '2020-12-03', '13:23:23', 1),
(25, '68', '2020-12-03', '13:47:21', 1),
(29, '25', '2020-12-21', '22:25:07', 1),
(31, '24', '2020-12-21', '22:50:14', 1),
(43, '53', '2020-12-27', '00:29:21', 1),
(44, '54', '2020-12-27', '00:30:41', 1),
(45, '62', '2020-12-27', '00:31:19', 1),
(46, '59', '2020-12-27', '01:42:50', 1),
(71, '56', '2021-02-28', '05:06:10', 1),
(73, '23', '2021-03-07', '05:44:35', 1),
(74, '23', '2016-03-07', '06:10:27', 1),
(79, '24', '2016-03-10', '13:03:05', 1),
(80, '25', '2016-03-13', '10:12:25', 1),
(81, '26', '2021-04-06', '15:24:34', 1),
(83, '53', '2021-04-06', '20:42:28', 0),
(85, '56', '2021-04-07', '14:25:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_food`
--

CREATE TABLE IF NOT EXISTS `order_food` (
`item_id` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned DEFAULT NULL,
  `food_id` int(10) unsigned DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_food`
--

INSERT INTO `order_food` (`item_id`, `order_id`, `food_id`, `Quantity`) VALUES
(1, 1, 11, 1),
(2, 1, 13, 4),
(3, 1, 18, 4),
(4, 1, 30, 3),
(7, 4, 11, 1),
(8, 4, 13, 1),
(9, 4, 48, 2),
(10, 4, 50, 1),
(19, 8, 12, 1),
(20, 8, 49, 2),
(25, 12, 12, 1),
(32, 17, 47, 1),
(33, 17, 49, 1),
(34, 18, 16, 1),
(35, 18, 26, 1),
(36, 19, 11, 1),
(37, 19, 27, 1),
(38, 20, 37, 1),
(39, 20, 38, 1),
(43, 22, 11, 1),
(45, 24, 12, 1),
(46, 25, 12, 4),
(52, 29, 29, 1),
(54, 31, 11, 1),
(69, 43, 12, 2),
(70, 43, 13, 2),
(71, 44, 11, 2),
(72, 44, 12, 3),
(73, 45, 11, 1),
(74, 46, 11, 2),
(75, 46, 12, 1),
(76, 46, 13, 1),
(134, 71, 11, 1),
(135, 71, 12, 1),
(136, 71, 13, 1),
(137, 71, 14, 1),
(138, 71, 15, 1),
(139, 71, 16, 1),
(140, 71, 17, 1),
(142, 73, 11, 1),
(143, 74, 12, 1),
(144, 74, 13, 1),
(149, 79, 11, 4),
(150, 80, 13, 2),
(151, 81, 12, 1),
(152, 81, 13, 1),
(153, 81, 54, 1),
(154, 81, 59, 1),
(155, 81, 67, 1),
(156, 81, 77, 1),
(157, 81, 17, 1),
(158, 81, 22, 1),
(159, 81, 31, 1),
(160, 81, 33, 1),
(161, 81, 43, 1),
(164, 83, 57, 1),
(165, 83, 59, 1),
(166, 83, 61, 2),
(167, 83, 62, 1),
(168, 83, 63, 1),
(169, 83, 65, 1),
(170, 83, 68, 1),
(171, 83, 69, 1),
(172, 83, 72, 1),
(173, 83, 73, 1),
(174, 83, 48, 1),
(187, 85, 14, 1),
(188, 85, 54, 1),
(189, 85, 59, 1),
(190, 85, 62, 1),
(191, 85, 63, 2),
(192, 85, 65, 1),
(193, 85, 70, 1),
(194, 85, 73, 1),
(195, 85, 79, 1),
(196, 85, 18, 1),
(197, 85, 30, 1),
(198, 85, 35, 1),
(199, 85, 85, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
 ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `food_catalogue`
--
ALTER TABLE `food_catalogue`
 ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`order_id`), ADD KEY `customer_id` (`cus_id`);

--
-- Indexes for table `order_food`
--
ALTER TABLE `order_food`
 ADD PRIMARY KEY (`item_id`), ADD KEY `food_id` (`food_id`), ADD KEY `order_id` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
MODIFY `cus_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `food_catalogue`
--
ALTER TABLE `food_catalogue`
MODIFY `food_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `order_food`
--
ALTER TABLE `order_food`
MODIFY `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=204;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_food`
--
ALTER TABLE `order_food`
ADD CONSTRAINT `order_food_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
