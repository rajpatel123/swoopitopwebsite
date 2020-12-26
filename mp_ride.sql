-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 11, 2020 at 10:03 PM
-- Server version: 5.6.49-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mp_ride`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking_type`
--

CREATE TABLE `tbl_booking_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `item` int(11) NOT NULL,
  `base_price` decimal(6,2) NOT NULL,
  `mile` int(11) NOT NULL,
  `per_mile_price` decimal(6,2) NOT NULL,
  `after_mile_sub` decimal(6,2) NOT NULL,
  `after_mile_notsub` decimal(6,2) NOT NULL,
  `extra_price` decimal(6,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_booking_type`
--

INSERT INTO `tbl_booking_type` (`id`, `name`, `item`, `base_price`, `mile`, `per_mile_price`, `after_mile_sub`, `after_mile_notsub`, `extra_price`, `status`, `created_at`) VALUES
(1, 'Standard', 2, 1.99, 5, 0.55, 0.80, 0.85, 0.99, 1, '2020-11-01 13:13:33'),
(2, 'Express', 4, 4.99, 5, 0.55, 0.80, 0.85, 0.99, 1, '2020-11-01 13:13:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cms`
--

CREATE TABLE `tbl_cms` (
  `id` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cms`
--

INSERT INTO `tbl_cms` (`id`, `title`, `description`, `created_at`) VALUES
(1, 'About us', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).44', '2020-08-18 11:55:02'),
(2, 'Help', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).2', '2020-08-18 11:55:02'),
(3, 'Privacy', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2020-08-18 11:56:08'),
(4, 'Term', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2020-08-18 11:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `roleId` int(11) NOT NULL DEFAULT '3',
  `mobile` varchar(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `otp` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `wallet` float NOT NULL DEFAULT '0',
  `fcm_token` varchar(255) NOT NULL,
  `is_subscribe` int(11) NOT NULL DEFAULT '0',
  `subscription_id` int(11) NOT NULL,
  `subscribe_item` int(11) NOT NULL DEFAULT '0',
  `subscribe_at` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `dob`, `email`, `city`, `roleId`, `mobile`, `status`, `otp`, `photo`, `wallet`, `fcm_token`, `is_subscribe`, `subscription_id`, `subscribe_item`, `subscribe_at`, `created_at`, `updated_at`) VALUES
(1, 'saurabh mishra', '0000-00-00', 'saurabh.21aug@gmail.com', '', 3, '8010791289', 1, 1111, '', 1181.7, 'eWkEjobBQFWUCdcGyCaSWw:APA91bEYz7cEeTTVnHO9SQ7EkAWE44EdINTzEL0Rd0YE2yEg2J7QpH_28VSd84CWXm2TZwCIZYunjmjolCOY2ayP9xTbBerIu-rEy2b7DrSRATNJN2KFKkDles5HPp3OAd2guP-czR_x', 1, 1, 3000, '2021-01-08', '2020-08-13 12:57:50', '2020-12-08 06:50:28'),
(2, 'Raj Patel', '0000-00-00', 'raj@gmail.com', '', 3, '8010791278', 1, 5419, '', 0, '', 1, 1, 900, '2020-12-03', '2020-08-18 15:52:32', '2020-11-03 19:17:57'),
(4, 'Raj Patel', '0000-00-00', 'rsvg@gmail.com', '', 3, '9838960698', 1, 1111, '', 0, '', 0, 0, 0, '0000-00-00', '2020-08-19 15:07:59', '2020-08-19 15:09:01'),
(5, '', '0000-00-00', '', '', 3, '9818962737', 1, 1111, '', 0, '', 0, 0, 0, '0000-00-00', '2020-08-19 15:15:06', '2020-08-19 15:15:06'),
(6, 'Saurabh Mishra', '0000-00-00', 'saurabh.21aug@gmail.com', '', 3, '8299613423', 1, 1111, '', 0, '', 0, 0, 0, '0000-00-00', '2020-08-28 02:58:24', '2020-08-28 02:59:06'),
(7, 'Saurabh Mishra', '0000-00-00', 'saurabh.21aug@gmail.com', '', 3, '8285886155', 1, 1111, '', 599, 'dtPs__UbSa2ce-P-6eWPQt:APA91bEJ5MGh5rG5xQyteRU2CJzv2ulnj_Rl_dj5S2EkAEsg_CkX8Iu3vF8piT1l_CwT6KlDEHRNGIiWPpgqc0Df4ZS4ipjF8omhEdOg9RjqMe9ScOSWkM49pyLV5T6DiVrFOizfIvgS', 1, 1, 350, '2020-12-05', '2020-08-29 04:50:45', '2020-11-28 08:43:28'),
(8, 'Saurabh Mishra', '0000-00-00', 'saurabh.21aug@gmail.com', '', 3, '8810234055', 1, 1111, '', 0, '', 0, 0, 0, '0000-00-00', '2020-09-03 11:22:14', '2020-09-03 11:22:43'),
(9, 'Raj  Patel', '0000-00-00', 'raj952888@gmail.com', '', 3, '8447087821', 1, 1111, '', 2297, 'd29j6nJSQ9SrmjgEEJn8a4:APA91bHtt-ZnJJPKCc9V23-GpvEI4WQD2OsnAIlxc4t0kelEZmM0WOHV-AeYDTx-p6WYPVhvS0Cj_Sel6L5LAKi_SoPCj3CrX4WLWSfL8vELd59ymrXzjd29A2dsfiXtTEt84_RTVRfe', 1, 1, 150, '2020-12-27', '2020-09-26 09:24:57', '2020-11-27 12:54:25'),
(10, '', '0000-00-00', '', '', 3, '8010', 1, 1111, '', 0, '', 0, 0, 0, '0000-00-00', '2020-09-26 10:05:11', '2020-09-26 10:05:11'),
(11, 'Atul  Tyagi', '0000-00-00', 'atultyagi.its@gmail.com', '', 3, '9953634970', 1, 1111, '', 0, '', 0, 0, 0, '0000-00-00', '2020-09-29 15:42:38', '2020-09-29 15:43:32'),
(12, 'Shailesh Bhadoria', '0000-00-00', 'shaileshbhadoria0106@gmail.com', '', 3, '9131636765', 1, 1111, '', 0, '', 1, 1, 1400, '2020-12-26', '2020-09-30 10:01:26', '2020-11-26 09:25:41'),
(13, 'Deepesh Sonaniya', '1994-08-02', 'abc@gmail.com', 'delhi', 3, '9716116787', 1, 1111, '', 0, '', 0, 0, 0, '0000-00-00', '2020-10-01 15:30:18', '2020-11-17 08:30:51'),
(14, 'Deepesh Sonaniya', '1994-08-02', 'deepesh@eightinfotech.com', 'delhi', 3, '8223861669', 1, 1111, '', 0, '', 1, 1, 500, '2020-12-17', '2020-11-04 04:48:04', '2020-11-17 10:47:05'),
(15, '', '0000-00-00', '', '', 3, '111', 1, 1111, '', 0, '', 0, 0, 0, '0000-00-00', '2020-11-06 18:30:26', '2020-11-06 18:30:26'),
(16, 'David  azevedo ', '1994-08-02', 'daveazzy55@yahoo.com', 'delhi', 3, '7078891859', 1, 1111, '', 0, '', 0, 0, 0, '0000-00-00', '2020-11-06 20:42:20', '2020-11-06 20:43:05'),
(17, 'Omar Mendoza', '1994-08-02', 'omarmendoza707@yahoo.com', 'delhi', 3, '7078002961', 1, 1111, '', 0, '', 0, 0, 0, '0000-00-00', '2020-11-22 04:14:54', '2020-11-22 04:15:27'),
(18, 'shalu bhadoria', '1994-08-02', 'abc@gmail.com', 'delhi', 3, '8982261876', 1, 1111, '', 0, '', 1, 1, 150, '2020-12-27', '2020-11-23 10:32:55', '2020-11-27 13:56:00'),
(19, 'Jared Spaulding', '1994-08-02', 'jspaulding6180@gmail.com', 'delhi', 3, '7077081434', 1, 1111, '', 0, '', 0, 0, 0, '0000-00-00', '2020-12-03 21:27:01', '2020-12-03 21:27:40'),
(20, '', '0000-00-00', '', '', 3, '708891859', 1, 1111, '', 0, '', 0, 0, 0, '0000-00-00', '2020-12-05 21:42:26', '2020-12-05 21:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_new_booking`
--

CREATE TABLE `tbl_customer_new_booking` (
  `id` int(11) NOT NULL,
  `ride_id` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `pickup_address` text NOT NULL,
  `pickup_lat` varchar(255) DEFAULT NULL,
  `pickup_long` varchar(255) DEFAULT NULL,
  `pickup_time` varchar(255) DEFAULT NULL,
  `pickup_contact_name` varchar(255) DEFAULT NULL,
  `pickup_contact_mobile` varchar(255) DEFAULT NULL,
  `droop_address` text NOT NULL,
  `droop_lat` varchar(255) DEFAULT NULL,
  `droop_lang` varchar(255) DEFAULT NULL,
  `delivery_contact_name` varchar(255) DEFAULT NULL,
  `delivery_mobile` varchar(255) DEFAULT NULL,
  `booking_type` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer_new_booking`
--

INSERT INTO `tbl_customer_new_booking` (`id`, `ride_id`, `customer_id`, `pickup_address`, `pickup_lat`, `pickup_long`, `pickup_time`, `pickup_contact_name`, `pickup_contact_mobile`, `droop_address`, `droop_lat`, `droop_lang`, `delivery_contact_name`, `delivery_mobile`, `booking_type`, `status`, `created_on`) VALUES
(1, 'MP3967', '3', ' noida', '28.7', '77.7', '10:00', 'vikrant', '6397579656', 'Delhi', '27.7', '76.7', 'Vats', '7060155085', 'current', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_requests`
--

CREATE TABLE `tbl_customer_requests` (
  `id` int(11) NOT NULL,
  `booking_id` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `status` enum('SEARCHING','CANCELLED','ACCEPTED','STARTED','ARRIVED','PICKEDUP','DROPPED','COMPLETED','SCHEDULED') NOT NULL,
  `invoice_email` varchar(255) DEFAULT NULL,
  `out_leave` timestamp NULL DEFAULT NULL,
  `cancelled_by` enum('NONE','USER','PROVIDER') NOT NULL,
  `cancel_reason` varchar(255) NOT NULL,
  `payment_mode` enum('CASH','ONLINE','WALLET') NOT NULL,
  `paid` float NOT NULL,
  `total_amount` float NOT NULL,
  `distance` double NOT NULL,
  `travel_time` varchar(255) NOT NULL,
  `s_address` varchar(255) NOT NULL,
  `s_latitude` double NOT NULL,
  `s_longitude` double NOT NULL,
  `d_address` varchar(255) NOT NULL,
  `d_latitude` double NOT NULL,
  `d_longitude` double NOT NULL,
  `pickup_name` varchar(255) NOT NULL,
  `pick_number` varchar(20) NOT NULL,
  `dropup_name` varchar(160) NOT NULL,
  `drop_number` varchar(20) NOT NULL,
  `package_size` enum('S','M','L','XL') NOT NULL,
  `quantity` int(11) NOT NULL,
  `breakable` int(11) NOT NULL COMMENT '0,1',
  `assigned_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `started_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `finished_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_rated` tinyint(4) NOT NULL,
  `provider_rated` tinyint(4) NOT NULL,
  `rejected_by_provider` varchar(255) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `route_key` varchar(255) DEFAULT NULL,
  `otp` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer_requests`
--

INSERT INTO `tbl_customer_requests` (`id`, `booking_id`, `customer_id`, `provider_id`, `service_id`, `status`, `invoice_email`, `out_leave`, `cancelled_by`, `cancel_reason`, `payment_mode`, `paid`, `total_amount`, `distance`, `travel_time`, `s_address`, `s_latitude`, `s_longitude`, `d_address`, `d_latitude`, `d_longitude`, `pickup_name`, `pick_number`, `dropup_name`, `drop_number`, `package_size`, `quantity`, `breakable`, `assigned_at`, `started_at`, `finished_at`, `user_rated`, `provider_rated`, `rejected_by_provider`, `barcode`, `route_key`, `otp`, `created_at`) VALUES
(1, 'MP-1281120055552', 1, 34, 1, 'COMPLETED', 'saurabh.21aug@gmail.com', '2020-11-28 18:25:50', 'NONE', '', 'WALLET', 0, 2.09, 0, '0', 'Noida, Uttar Pradesh, India', 28.5355161, 77.3910265, 'Noida Sector 18, Noida, Uttar Pradesh 201301, India', 28.570751, 77.326188, 'saurabh mishra', '8010791289', 'saurabh mishra', '8010791289', 'M', 1, 1, '2020-11-28 12:57:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', 'Qrcode-store1606542952.png', '', 1334, '2020-11-28 05:55:52'),
(2, 'MP-1281120082843', 1, 0, 1, 'SCHEDULED', 'saurabh.21aug@gmail.com', '2020-11-28 20:58:26', 'NONE', '', 'WALLET', 0, 2.09, 0, '0', 'Noida, Uttar Pradesh, India', 28.5355161, 77.3910265, 'Noida Sector 18, Noida, Uttar Pradesh 201301, India', 28.570751, 77.326188, 'saurabh mishra', '8010791289', 'saurabh mishra', '8010791289', 'M', 1, 0, '2020-11-28 15:31:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '44', 'Qrcode-store1606552124.png', '', 9168, '2020-11-28 08:28:43'),
(3, 'MP-1281120084934', 1, 44, 1, 'COMPLETED', 'saurabh.21aug@gmail.com', '2020-11-28 21:19:14', 'NONE', '', 'WALLET', 0, 2.09, 0, '0', 'Gurugram, Haryana, India', 28.4594965, 77.0266383, 'Unnamed Road, Adarsh Nagar, Sector 12, Gurugram, Haryana 122022, India', 28.4649909, 77.0318711, 'saurabh mishra', '8010791289', 'saurabh mishra', '8010791289', 'M', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', 'Qrcode-store1606553375.png', '', 8759, '2020-11-28 08:49:34'),
(4, 'MP-1281120115810', 1, 0, 1, 'SCHEDULED', 'saurabh.21aug@gmail.com', '2020-11-29 00:27:51', 'NONE', '', 'WALLET', 0, 2.09, 0, '0', 'Noida, Uttar Pradesh, India', 28.5355161, 77.3910265, 'Noida Sector 18, Noida, Uttar Pradesh 201301, India', 28.570751, 77.326188, 'saurabh mishra', '8010791289', 'saurabh mishra', '8010791289', 'M', 1, 0, '2020-11-28 19:01:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '44', 'Qrcode-store1606564690.png', '', 2207, '2020-11-28 11:58:10'),
(5, 'MP-1281120120657', 1, 0, 1, 'CANCELLED', 'saurabh.21aug@gmail.com', '2020-11-29 00:36:39', 'USER', '', 'WALLET', 0, 2.09, 0, '0', 'Noida, Uttar Pradesh, India', 28.5355161, 77.3910265, 'Noida Sector 18, Noida, Uttar Pradesh 201301, India', 28.570751, 77.326188, 'saurabh mishra', '8010791289', 'saurabh mishra', '8010791289', 'M', 1, 0, '2020-11-28 19:08:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', 'Qrcode-store1606565218.png', '', 2525, '2020-11-28 12:06:57'),
(6, 'MP-1281120121323', 1, 44, 1, 'CANCELLED', 'saurabh.21aug@gmail.com', '2020-11-29 00:43:04', 'PROVIDER', '', 'WALLET', 0, 2.09, 0, '0', 'Noida, Uttar Pradesh, India', 28.5355161, 77.3910265, 'Noida Sector 18, Noida, Uttar Pradesh 201301, India', 28.570751, 77.326188, 'saurabh mishra', '8010791289', 'saurabh mishra', '8010791289', 'M', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', 'Qrcode-store1606565603.png', '', 3397, '2020-11-28 12:13:23'),
(7, 'MP-50011220132435', 50, 0, 26, 'SEARCHING', NULL, '2020-12-01 08:24:35', 'NONE', '', 'CASH', 0, 2.09, 0, 'nil', 'Gwalior, Madhya Pradesh, India', 26.2182871, 78.18283079999999, 'Maharajpura, Gwalior, Madhya Pradesh 474020, India', 78.18283079999999, 78.2171403, 'shalu bhadoria', '1234456789', 'shalu bhadoria', '1234456789', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', 'Qrcode-store1606829075.png', '', 6125, '2020-12-01 13:24:35'),
(8, 'MP-50011220144818', 50, 0, 26, 'SEARCHING', NULL, '2020-12-01 09:48:18', 'NONE', '', 'CASH', 0, 2.09, 0, 'nil', 'Gwalior, Madhya Pradesh, India', 26.2182871, 78.18283079999999, 'Maharajpura, Gwalior, Madhya Pradesh 474020, India', 78.18283079999999, 78.2171403, 'shalu bhadoria', '1234456789', 'shalu bhadoria', '1234456789', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', 'Qrcode-store1606834099.png', '', 3545, '2020-12-01 14:48:18'),
(9, 'MP-12031220074416', 12, 0, 1, 'SCHEDULED', 'shaileshbhadoria0106@gmail.com', '2020-12-05 10:20:00', 'NONE', '', 'WALLET', 0, 0, 0, 'null', 'Gwalior, Madhya Pradesh, India', 26.218287099999998, 78.18283079999999, 'Railway Station, LNUPE Campus, Kampoo, Gwalior, Madhya Pradesh 474002, India', 26.2160405, 78.1824372, 'null', '9131636765', 'null', '9131636765', 'M', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, '', 'Qrcode-store1606981456.png', '', 7631, '2020-12-03 07:44:16'),
(10, 'MP-12031220083032', 12, 0, 26, 'SCHEDULED', NULL, '2020-12-07 15:30:00', 'NONE', '', 'CASH', 0, 2.09, 0, 'nil', 'Gwalior, Madhya Pradesh, India', 26.2182871, 78.18283079999999, 'Railway Station, LNUPE Campus, Kampoo, Gwalior, Madhya Pradesh 474002, India', 78.18283079999999, 78.1824372, 'Shailesh Bhadoria', '9131636765', 'Shailesh Bhadoria', '9131636765', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', 'Qrcode-store1606984232.png', '', 7920, '2020-12-03 08:30:32'),
(11, 'MP-12031220083743', 12, 0, 26, 'SCHEDULED', NULL, '2020-12-02 15:37:00', 'NONE', '', 'CASH', 0, 2.09, 0, 'nil', 'Gwalior, Madhya Pradesh, India', 26.2182871, 78.18283079999999, 'Railway Station, LNUPE Campus, Kampoo, Gwalior, Madhya Pradesh 474002, India', 78.18283079999999, 78.1824372, 'Shailesh Bhadoria', '9131636765', 'Shailesh Bhadoria', '9131636765', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', 'Qrcode-store1606984663.png', '', 6364, '2020-12-03 08:37:43'),
(12, 'MP-12031220131416', 12, 0, 26, 'SCHEDULED', NULL, '2020-12-07 08:14:00', 'NONE', '', 'CASH', 0, 2.09, 0, 'nil', 'Indore, Madhya Pradesh, India', 22.7195687, 75.8577258, 'Gwalior, Madhya Pradesh, India', 75.8577258, 78.18283079999999, 'Shailesh Bhadoria', '9131636765', 'Shailesh Bhadoria', '9131636765', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', 'Qrcode-store1607001257.png', '', 8875, '2020-12-03 13:14:16'),
(13, 'MP-12031220134603', 12, 0, 23, 'SCHEDULED', NULL, '2020-12-02 08:45:00', 'NONE', '', 'CASH', 0, 2.09, 0, 'nil', 'Gwalior, Madhya Pradesh, India', 26.2182871, 78.18283079999999, 'Indore, Madhya Pradesh, India', 78.18283079999999, 75.8577258, 'Shailesh Bhadoria', '9131636765', 'Shailesh Bhadoria', '9131636765', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', 'Qrcode-store1607003163.png', '', 2126, '2020-12-03 13:46:03'),
(14, 'MP-12031220135219', 12, 0, 23, 'SCHEDULED', NULL, '2020-12-02 08:51:00', 'NONE', '', 'CASH', 0, 2.09, 0, 'nil', 'Gwalior, Madhya Pradesh, India', 26.2182871, 78.18283079999999, 'Indore, Madhya Pradesh, India', 78.18283079999999, 75.8577258, 'Shailesh Bhadoria', '9131636765', 'Shailesh Bhadoria', '9131636765', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', 'Qrcode-store1607003539.png', '', 6965, '2020-12-03 13:52:19'),
(15, 'MP-12081220142236', 12, 0, 26, 'SCHEDULED', NULL, '2020-12-14 19:22:00', 'NONE', '', 'CASH', 0, 2.09, 0, 'nil', 'Gwalior, Madhya Pradesh 474008, India', 26.2313245, 78.1694957, 'Maharajpura, Gwalior, Madhya Pradesh 474020, India', 78.1694957, 78.2171403, 'Shailesh Bhadoria', '9131636765', 'Shailesh Bhadoria', '9131636765', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', 'Qrcode-store1607437357.png', '', 6524, '2020-12-08 14:22:36'),
(16, 'MP-12101220075025', 12, 0, 1, 'SCHEDULED', 'shaileshbhadoria0106@gmail.com', '2020-12-13 10:19:00', 'NONE', '', 'WALLET', 0, 0, 0, 'null', 'Gwalior, Madhya Pradesh, India', 26.218287099999998, 78.18283079999999, 'Gwalior Rd, Agra Cantt, Idgah Colony, Agra, Uttar Pradesh, India', 27.153125499999998, 78.0113143, 'null', '0987654321', 'null', '1234567890', 'M', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', 'Qrcode-store1607586625.png', '', 7634, '2020-12-10 07:50:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log`
--

CREATE TABLE `tbl_log` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `userName` varchar(128) NOT NULL,
  `process` varchar(1024) NOT NULL,
  `processFunction` varchar(1024) NOT NULL,
  `userRoleId` bigint(20) NOT NULL,
  `userRoleText` varchar(128) NOT NULL,
  `userIp` varchar(1024) NOT NULL,
  `userAgent` varchar(128) NOT NULL,
  `agentString` varchar(1024) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `createdDtm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_log`
--

INSERT INTO `tbl_log` (`id`, `userId`, `userName`, `process`, `processFunction`, `userRoleId`, `userRoleText`, `userIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(1, 1, 'Süleyman Aydın', 'Giriş', 'Login/loginMe', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-26 20:27:24'),
(2, 1, 'Süleyman Aydın', 'Tüm görevler', 'Manager/tasks', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-26 20:30:26'),
(3, 1, 'Süleyman Aydın', 'Kullanıcı Listeleme', 'Admin/userListing', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-26 20:30:40'),
(4, 1, 'Süleyman Aydın', 'Log Görüntüleme', 'Admin/logHistory', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-26 20:32:31'),
(5, 1, 'Süleyman Aydın', 'Yedek Log Yükleme', 'Admin/logHistoryUpload', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-26 20:32:35'),
(6, 1, 'Süleyman Aydın', 'Yedek Log Görüntüleme', 'Admin/logHistoryBackup', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-26 20:32:38'),
(7, 1, 'Süleyman Aydın', 'Yedek Log Yükleme', 'Admin/logHistoryUpload', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-26 21:46:53'),
(8, 1, 'Süleyman Aydın', 'Tüm görevler', 'Manager/tasks', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-26 23:31:46'),
(9, 1, 'Süleyman Aydın', 'Kullanıcı Listeleme', 'Admin/userListing', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-26 23:32:10'),
(10, 1, 'Süleyman Aydın', 'Tüm görevler', 'Manager/tasks', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-26 23:33:38'),
(11, 1, 'Süleyman Aydın', 'Kullanıcı Listeleme', 'Admin/userListing', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-26 23:33:49'),
(12, 1, 'Süleyman Aydın', 'Tüm görevler', 'Manager/tasks', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-26 23:37:17'),
(13, 1, 'Süleyman Aydın', 'Tüm görevler', 'Manager/tasks', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-26 23:37:23'),
(14, 1, 'Süleyman Aydın', 'Kullanıcı Listeleme', 'Admin/userListing', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-26 23:40:19'),
(15, 1, 'Süleyman Aydın', 'Kullanıcı Listeleme', 'Admin/userListing', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-26 23:41:06'),
(16, 1, 'Süleyman Aydın', 'Kullanıcı Listeleme', 'Admin/userListing', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-26 23:42:22'),
(17, 1, 'Süleyman Aydın', 'Kullanıcı Listeleme', 'Admin/userListing', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-26 23:43:39'),
(18, 1, 'Süleyman Aydın', 'Kullanıcı Listeleme', 'Admin/userListing', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-26 23:47:20'),
(19, 1, 'Süleyman Aydın', 'Kullanıcı Listeleme', 'Admin/userListing', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-26 23:49:00'),
(20, 1, 'Süleyman Aydın', 'Kullanıcı Listeleme', 'Admin/userListing', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-26 23:49:44'),
(21, 1, 'Süleyman Aydın', 'Kullanıcı Listeleme', 'Admin/userListing', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-26 23:55:21'),
(22, 1, 'Süleyman Aydın', 'Kullanıcı Listeleme', 'Admin/userListing', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-26 23:56:57'),
(23, 1, 'Süleyman Aydın', 'Log Görüntüleme', 'Admin/logHistory', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-27 00:01:08'),
(24, 1, 'Süleyman Aydın', 'Log Görüntüleme', 'Admin/logHistory', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-27 00:11:25'),
(25, 1, 'Süleyman Aydın', 'Kullanıcı Listeleme', 'Admin/userListing', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-27 00:12:10'),
(26, 1, 'Süleyman Aydın', 'Kullanıcı Listeleme', 'Admin/userListing', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-27 00:19:30'),
(27, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '::1', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows 10', '2020-07-27 10:15:16'),
(28, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '103.70.81.150', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Mobile Safari/537.36', 'Android', '2020-08-06 07:04:08'),
(29, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '45.251.51.130', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Linux', '2020-08-06 07:05:27'),
(30, 1, 'admin', 'Kullanıcı Listeleme', 'Admin/userListing', 1, 'Admin', '45.251.51.130', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Linux', '2020-08-06 07:05:55'),
(31, 1, 'admin', 'Kullanıcı Listeleme', 'Admin/userListing', 1, 'Admin', '45.251.51.130', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Linux', '2020-08-06 07:06:43'),
(32, 1, 'admin', 'Kullanıcı Silme', 'Admin/deleteUser', 1, 'Admin', '45.251.51.130', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Linux', '2020-08-06 07:06:48'),
(33, 1, 'admin', 'Kullanıcı Silme', 'Admin/deleteUser', 1, 'Admin', '45.251.51.130', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Linux', '2020-08-06 07:06:56'),
(34, 1, 'admin', 'Log Görüntüleme', 'Admin/logHistory', 1, 'Admin', '45.251.51.130', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Linux', '2020-08-06 07:07:13'),
(35, 1, 'admin', 'Kullanıcı Listeleme', 'Admin/userListing', 1, 'Admin', '45.251.51.130', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Linux', '2020-08-06 07:07:20'),
(36, 1, 'admin', 'Kullanıcı Listeleme', 'Admin/userListing', 1, 'Admin', '45.251.51.130', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Linux', '2020-08-06 07:07:23'),
(37, 1, 'admin', 'Kullanıcı Listeleme', 'Admin/userListing', 1, 'Admin', '45.251.51.130', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Linux', '2020-08-06 07:11:01'),
(38, 1, 'admin', 'Kullanıcı Listeleme', 'Admin/userListing', 1, 'Admin', '45.251.51.130', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Linux', '2020-08-06 07:12:06'),
(39, 1, 'admin', 'Kullanıcı Listeleme', 'Admin/userListing', 1, 'Admin', '45.251.51.130', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Linux', '2020-08-06 07:12:11'),
(40, 1, 'admin', 'Yedek Log Yükleme', 'Admin/logHistoryUpload', 1, 'Admin', '45.251.51.130', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Linux', '2020-08-06 07:12:14'),
(41, 1, 'admin', 'Log Görüntüleme', 'Admin/logHistory', 1, 'Admin', '45.251.51.130', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Linux', '2020-08-06 07:12:38'),
(42, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '103.219.228.50', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Linux', '2020-08-07 11:34:29'),
(43, 1, 'admin', 'Kullanıcı Listeleme', 'Admin/userListing', 1, 'Admin', '103.219.228.50', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Linux', '2020-08-07 11:34:39'),
(44, 1, 'admin', 'Kullanıcı Silme', 'Admin/deleteUser', 1, 'Admin', '103.219.228.50', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Linux', '2020-08-07 11:34:48'),
(45, 1, 'admin', 'Kullanıcı Silme', 'Admin/deleteUser', 1, 'Admin', '103.219.228.50', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Linux', '2020-08-07 11:54:40'),
(46, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '103.70.81.150', 'Chrome 84.0.4147.105', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 'Windows 10', '2020-08-08 02:52:47'),
(47, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '157.37.212.179', 'Chrome 84.0.4147.105', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 'Windows 10', '2020-08-08 02:54:42'),
(48, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '113.193.78.148', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Linux', '2020-08-08 02:55:55'),
(49, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '113.193.78.148', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Linux', '2020-08-08 02:56:31'),
(50, 1, 'admin', 'Kullanıcı Listeleme', 'Admin/userListing', 1, 'Admin', '113.193.78.148', 'Chrome 84.0.4147.89', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Linux', '2020-08-08 02:56:48'),
(51, 1, 'admin', 'Çıkış', 'BaseController/logout', 1, 'Admin', '157.37.212.179', 'Chrome 84.0.4147.105', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 'Windows 10', '2020-08-08 02:58:29'),
(52, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '164.52.197.130', 'Chrome 80.0.3987.163', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'Windows 10', '2020-08-08 03:32:52'),
(53, 1, 'admin', 'Kullanıcı Listeleme', 'Admin/userListing', 1, 'Admin', '164.52.197.130', 'Chrome 80.0.3987.163', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'Windows 10', '2020-08-08 03:33:03'),
(54, 1, 'admin', 'Hata', 'Login/error', 1, 'Admin', '164.52.197.130', 'Chrome 80.0.3987.163', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'Windows 10', '2020-08-08 05:44:18'),
(55, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '103.70.81.150', 'Chrome 84.0.4147.105', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 'Windows 10', '2020-08-11 00:37:19'),
(56, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '103.70.81.150', 'Chrome 84.0.4147.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Windows 10', '2020-08-17 22:32:01'),
(57, 1, 'admin', 'Kullanıcı Listeleme', 'Admin/userListing', 1, 'Admin', '103.70.81.150', 'Chrome 84.0.4147.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Windows 10', '2020-08-17 22:32:12'),
(58, 1, 'admin', 'Log Görüntüleme', 'Admin/logHistory', 1, 'Admin', '103.70.81.150', 'Chrome 84.0.4147.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Windows 10', '2020-08-17 22:32:19'),
(59, 1, 'admin', 'Yedek Log Yükleme', 'Admin/logHistoryUpload', 1, 'Admin', '103.70.81.150', 'Chrome 84.0.4147.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Windows 10', '2020-08-17 22:32:22'),
(60, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '103.70.81.150', 'Chrome 84.0.4147.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Windows 10', '2020-08-18 07:05:15'),
(61, 1, 'admin', 'User Listing', 'Admin/userListing', 1, 'Admin', '103.70.81.150', 'Chrome 84.0.4147.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Windows 10', '2020-08-18 07:05:25'),
(62, 1, 'admin', 'User Listing', 'Provider/userListing', 1, 'Admin', '103.70.81.150', 'Chrome 84.0.4147.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Windows 10', '2020-08-18 07:05:32'),
(63, 1, 'admin', 'User Listing', 'Admin/userListing', 1, 'Admin', '103.70.81.150', 'Chrome 84.0.4147.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Windows 10', '2020-08-18 07:06:56'),
(64, 1, 'admin', 'User Listing', 'Admin/userListing', 1, 'Admin', '103.70.81.150', 'Chrome 84.0.4147.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Windows 10', '2020-08-18 07:07:45'),
(65, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '103.70.81.150', 'Chrome 84.0.4147.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Windows 10', '2020-08-18 09:14:10'),
(66, 1, 'admin', 'Çıkış', 'BaseController/logout', 1, 'Admin', '103.70.81.150', 'Chrome 84.0.4147.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Windows 10', '2020-08-18 09:14:27'),
(67, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '103.70.81.150', 'Chrome 84.0.4147.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Windows 10', '2020-08-19 05:41:49'),
(68, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '103.69.26.201', 'Chrome 85.0.4183.83', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', 'Windows 10', '2020-09-08 23:41:43'),
(69, 1, 'admin', 'User Listing', 'Admin/userListing', 1, 'Admin', '103.69.26.201', 'Chrome 85.0.4183.83', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', 'Windows 10', '2020-09-08 23:42:00'),
(70, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '45.251.49.40', 'Firefox 80.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:80.0) Gecko/20100101 Firefox/80.0', 'Linux', '2020-09-12 19:03:58'),
(71, 1, 'admin', 'Log Viewing', 'Admin/logHistory', 1, 'Admin', '45.251.49.40', 'Firefox 80.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:80.0) Gecko/20100101 Firefox/80.0', 'Linux', '2020-09-12 19:04:06'),
(72, 1, 'admin', 'Log Viewing', 'Admin/logHistory', 1, 'Admin', '45.251.49.40', 'Firefox 80.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:80.0) Gecko/20100101 Firefox/80.0', 'Linux', '2020-09-12 19:04:40'),
(73, 1, 'admin', 'User Listing', 'Admin/userListing', 1, 'Admin', '45.251.49.40', 'Firefox 80.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:80.0) Gecko/20100101 Firefox/80.0', 'Linux', '2020-09-12 19:04:44'),
(74, 1, 'admin', 'User Listing', 'Provider/userListing', 1, 'Admin', '45.251.49.40', 'Firefox 80.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:80.0) Gecko/20100101 Firefox/80.0', 'Linux', '2020-09-12 19:04:49'),
(75, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '103.219.229.53', 'Firefox 80.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:80.0) Gecko/20100101 Firefox/80.0', 'Linux', '2020-09-13 04:40:40'),
(76, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '103.70.81.209', 'Chrome 86.0.4240.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'Windows 10', '2020-10-10 00:31:12'),
(77, 1, 'admin', 'User Listing', 'Admin/userListing', 1, 'Admin', '103.70.81.209', 'Chrome 86.0.4240.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'Windows 10', '2020-10-10 00:31:21'),
(78, 1, 'admin', 'User Listing', 'Provider/userListing', 1, 'Admin', '103.70.81.209', 'Chrome 86.0.4240.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'Windows 10', '2020-10-10 00:31:49'),
(79, 1, 'admin', 'Çıkış', 'BaseController/logout', 1, 'Admin', '103.70.81.209', 'Chrome 86.0.4240.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'Windows 10', '2020-10-10 00:32:33'),
(80, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '103.70.81.209', 'Chrome 86.0.4240.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'Windows 10', '2020-10-14 03:46:30'),
(81, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '103.219.229.147', 'Chrome 85.0.4183.83', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', 'Linux', '2020-10-15 22:25:52'),
(82, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '103.70.81.209', 'Chrome 86.0.4240.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'Windows 10', '2020-10-19 06:38:52'),
(83, 1, 'admin', 'User Listing', 'Admin/userListing', 1, 'Admin', '103.70.81.209', 'Chrome 86.0.4240.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'Windows 10', '2020-10-19 06:39:04'),
(84, 1, 'admin', 'User Listing', 'Provider/userListing', 1, 'Admin', '103.70.81.209', 'Chrome 86.0.4240.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'Windows 10', '2020-10-19 06:39:08'),
(85, 1, 'admin', 'Hata', 'Login/error', 1, 'Admin', '103.70.81.209', 'Chrome 86.0.4240.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'Windows 10', '2020-10-19 06:39:14'),
(86, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '103.70.81.209', 'Chrome 86.0.4240.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'Windows 10', '2020-10-22 08:29:28'),
(87, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '43.230.64.183', 'Chrome 85.0.4183.83', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', 'Linux', '2020-10-23 04:58:08'),
(88, 1, 'admin', 'User Listing', 'Admin/userListing', 1, 'Admin', '43.230.64.183', 'Chrome 85.0.4183.83', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', 'Linux', '2020-10-23 04:58:20'),
(89, 1, 'admin', 'User Listing', 'Provider/userListing', 1, 'Admin', '43.230.64.183', 'Chrome 85.0.4183.83', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', 'Linux', '2020-10-23 05:00:16'),
(90, 1, 'admin', 'User Listing', 'Admin/userListing', 1, 'Admin', '43.230.64.183', 'Chrome 85.0.4183.83', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', 'Linux', '2020-10-23 05:00:53'),
(91, 1, 'admin', 'User Listing', 'Admin/userListing', 1, 'Admin', '43.230.64.183', 'Chrome 85.0.4183.83', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', 'Linux', '2020-10-23 05:01:21'),
(92, 1, 'admin', 'User Listing', 'Admin/userListing', 1, 'Admin', '43.230.64.183', 'Chrome 85.0.4183.83', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', 'Linux', '2020-10-23 05:01:37'),
(93, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '103.70.81.209', 'Chrome 86.0.4240.111', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 'Windows 10', '2020-10-24 00:23:02'),
(94, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '103.70.81.209', 'Chrome 86.0.4240.111', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 'Windows 10', '2020-10-24 07:50:29'),
(95, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '43.230.65.23', 'Chrome 85.0.4183.83', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', 'Linux', '2020-10-24 07:51:42'),
(96, 1, 'admin', 'User Listing', 'Admin/userListing', 1, 'Admin', '43.230.65.23', 'Chrome 85.0.4183.83', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', 'Linux', '2020-10-24 07:51:52'),
(97, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '103.69.26.109', 'Chrome 86.0.4240.111', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 'Windows 10', '2020-11-02 23:20:08'),
(98, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '103.69.26.109', 'Chrome 87.0.4280.66', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', 'Windows 10', '2020-11-19 07:02:21'),
(99, 1, 'admin', 'Çıkış', 'BaseController/logout', 1, 'Admin', '103.69.26.109', 'Chrome 87.0.4280.66', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', 'Windows 10', '2020-11-19 07:02:31'),
(100, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '157.34.151.54', 'Chrome 86.0.4240.198', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'Mac OS X', '2020-11-19 09:05:08'),
(101, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '103.69.26.109', 'Chrome 87.0.4280.66', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', 'Windows 10', '2020-11-27 00:34:43'),
(102, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '103.77.1.186', 'Chrome 86.0.4240.198', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'Linux', '2020-12-01 09:36:50'),
(103, 1, 'admin', 'User Listing', 'Admin/userListing', 1, 'Admin', '103.77.1.186', 'Chrome 86.0.4240.198', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'Linux', '2020-12-01 09:38:05'),
(104, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '156.146.48.147', 'Chrome 86.0.4240.198', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'Mac OS X', '2020-12-03 03:37:53'),
(105, 1, 'admin', 'User Listing', 'Admin/userListing', 1, 'Admin', '156.146.48.147', 'Chrome 86.0.4240.198', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'Mac OS X', '2020-12-03 03:38:24'),
(106, 1, 'admin', 'User Listing', 'Provider/userListing', 1, 'Admin', '156.146.48.147', 'Chrome 86.0.4240.198', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'Mac OS X', '2020-12-03 03:38:54'),
(107, 1, 'admin', 'Çıkış', 'BaseController/logout', 1, 'Admin', '156.146.48.147', 'Chrome 86.0.4240.198', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'Mac OS X', '2020-12-03 03:40:01'),
(108, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '103.69.26.109', 'Chrome 87.0.4280.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'Windows 10', '2020-12-05 04:36:19'),
(109, 1, 'admin', 'User Listing', 'Provider/userListing', 1, 'Admin', '103.69.26.109', 'Chrome 87.0.4280.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'Windows 10', '2020-12-05 05:25:01'),
(110, 1, 'admin', 'User Listing', 'Provider/userListing', 1, 'Admin', '103.69.26.109', 'Chrome 87.0.4280.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'Windows 10', '2020-12-05 05:25:16'),
(111, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '103.77.1.186', 'Chrome 86.0.4240.198', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'Linux', '2020-12-05 21:52:58'),
(112, 1, 'admin', 'User Listing', 'Admin/userListing', 1, 'Admin', '103.77.1.186', 'Chrome 86.0.4240.198', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'Linux', '2020-12-05 21:53:07'),
(113, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '103.77.1.149', 'Chrome 86.0.4240.198', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'Linux', '2020-12-06 23:27:31'),
(114, 1, 'admin', 'User Listing', 'Admin/userListing', 1, 'Admin', '103.77.1.149', 'Chrome 86.0.4240.198', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'Linux', '2020-12-06 23:28:35'),
(115, 1, 'admin', 'User Listing', 'Provider/userListing', 1, 'Admin', '103.77.1.149', 'Chrome 86.0.4240.198', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'Linux', '2020-12-06 23:29:01'),
(116, 1, 'admin', 'User Listing', 'Admin/userListing', 1, 'Admin', '103.77.1.149', 'Chrome 86.0.4240.198', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'Linux', '2020-12-06 23:32:43'),
(117, 1, 'admin', 'Giriş', 'Login/loginMe', 1, 'Admin', '103.69.26.109', 'Chrome 87.0.4280.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'Windows 10', '2020-12-06 23:39:58'),
(118, 1, 'admin', 'User Listing', 'Admin/userListing', 1, 'Admin', '103.69.26.109', 'Chrome 87.0.4280.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'Windows 10', '2020-12-07 01:04:38'),
(119, 1, 'admin', 'User Listing', 'Provider/userListing', 1, 'Admin', '103.69.26.109', 'Chrome 87.0.4280.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'Windows 10', '2020-12-07 01:04:42'),
(120, 1, 'admin', 'Hata', 'Login/error', 1, 'Admin', '103.69.26.109', 'Chrome 87.0.4280.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'Windows 10', '2020-12-07 01:23:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log_backup`
--

CREATE TABLE `tbl_log_backup` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `userName` varchar(128) NOT NULL,
  `process` varchar(1024) NOT NULL,
  `processFunction` varchar(1024) NOT NULL,
  `userRoleId` bigint(20) NOT NULL,
  `userRoleText` varchar(128) NOT NULL,
  `userIp` varchar(1024) NOT NULL,
  `userAgent` varchar(128) NOT NULL,
  `agentString` varchar(1024) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `createdDtm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_past_trip`
--

CREATE TABLE `tbl_past_trip` (
  `id` int(11) NOT NULL,
  `ride_id` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `payment` varchar(255) DEFAULT NULL,
  `payment_mode` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_provider`
--

CREATE TABLE `tbl_provider` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `mobile` varchar(20) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `city` varchar(20) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `otp` int(11) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `document` varchar(225) NOT NULL,
  `vehicle` varchar(225) NOT NULL,
  `signature` varchar(255) NOT NULL,
  `service_type` int(11) NOT NULL DEFAULT '1' COMMENT '1=bike,2=car',
  `vehicle_no` varchar(255) NOT NULL DEFAULT 'DL CJ 8956',
  `rating` int(11) NOT NULL DEFAULT '3',
  `lat` varchar(255) NOT NULL,
  `lng` varchar(255) NOT NULL,
  `fcm_token` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_provider`
--

INSERT INTO `tbl_provider` (`id`, `email`, `name`, `mobile`, `roleId`, `city`, `dob`, `otp`, `photo`, `document`, `vehicle`, `signature`, `service_type`, `vehicle_no`, `rating`, `lat`, `lng`, `fcm_token`, `status`, `created_at`) VALUES
(1, 'chandan@gmail.com', 'Chandan Singh', '9716116787', 2, 'New delhi', '1994-08-02', 1111, 'photo-1-menu2.png', 'photo-1-menu3.png', 'photo-1-menu4.png', '', 1, 'DL CJ 8956', 3, '28.4752385', '28.4752385', '', 1, '2020-08-11 08:05:02'),
(2, 'deepeshsonaniya@gmail.com', 'Deepesh Sonaniya', '8223861669', 2, 'delhi', '1994-08-02', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '28.61934530', '77.42090920', '', 0, '2020-08-12 13:43:27'),
(32, 'daveazzy55@yahoo.com', 'david azevedo ', '7078891859', 2, 'delhi', '1994-08-02', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '28.61934530', '77.42090920', '', 1, '2020-08-19 13:53:11'),
(29, 'sauraddbh.21aug@gmail.com', 'Saurabhfff Mishra', '808810791289', 2, 'Delhi', '2100-01-21', 3526, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-08-18 19:14:30'),
(31, 'saurabh.21aug@gmail.com', 'Saurabh Mishra', '8010791289', 2, 'Delhi', '1998-08-21', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '28.4752398', '28.4752398', '', 1, '2020-08-19 08:15:10'),
(30, 'ab@gmail.com', 'test fsdfasgsg', '8299613423', 2, 'noida', '1992-08-07', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '28.61934530', '77.42090920', '', 1, '2020-08-19 02:13:32'),
(33, 'shaileshbhadoria0106@gmail.com', 'Shailesh Bhadoria', '8982261876', 2, 'delhi', '1994-08-02', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-08-24 07:03:28'),
(34, 'sahhxbh.21aug@gmail.com', 'Raj Patel', '8447087821', 2, 'Delhi', '1999-08-21', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '28.619361', '28.619361', '', 1, '2020-08-26 03:16:19'),
(35, 'saurabh.21aug@gmail.com', 'Saurabh Mishra', '810791289', 2, 'Delhi', '1998-08-21', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-08-26 03:22:13'),
(36, 'ashishnirankarics@gmail.com', 'ashish nira', '7042825498', 2, '', '10/01/1994', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-08-26 06:15:58'),
(37, 'ashishNirankariCS@gmail.com', 'Ash Nira', '8810234055', 2, 'Delhi', '1994-12-12', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '28.61934530', '77.42090920', '', 1, '2020-08-26 08:13:30'),
(38, 'abc@gmail.com', 'test2 teee', '8130670372', 2, 'noida', '09-07-2020', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '28.61934530', '77.42090920', '', 0, '2020-08-26 17:02:29'),
(39, 'test@gmail.com', 'wqeqw qeqwe', '1234567890', 2, 'fewrewrwe', 'qwewqq', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '28.61934530', '77.42090920', '', 1, '2020-08-27 11:37:18'),
(40, 'abc@gmail.com', 'shaky bhadoria', '9131636765', 2, 'delhi', '1994-08-02', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '22.6821828', '22.6821828', '', 1, '2020-08-27 13:42:19'),
(41, 'srvesh@gmail.com', 'sharvesh ds', '9711439082', 2, 'delhi', '12121996', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '28.61934530', '77.42090920', '', 1, '2020-08-27 14:31:55'),
(42, 'abc@gmail.com', 'Sang Jadon', '7045303558', 2, 'delhi', '1994-08-02', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-09-05 07:44:13'),
(43, '', '', '00000', 2, '', '', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-09-30 02:52:29'),
(45, '', '', '1234567889', 2, '', '', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-11-28 07:56:14'),
(44, 'raj952888@gmail.com', 'RAJ Patel', '8285886155', 2, 'Assam', '1988-02-10', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '28.61934530', '77.42090920', '', 1, '2020-10-23 13:40:01'),
(46, 'xyz@gmail.com', 'shalu bhadoria', '1223456789', 2, 'indore', '01-06-1991', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-11-28 07:59:44'),
(47, '', '', '12234567890', 2, '', '', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-11-28 08:01:55'),
(48, '', '', '8117087821', 2, '', '', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-11-28 08:25:46'),
(49, '', '', '1233456789', 2, '', '', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-11-28 10:23:54'),
(50, 'def@gmail.com', 'shalu bhadoria', '1234456789', 2, 'indore', '01-06-1991', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-11-28 11:08:22'),
(51, '', '', '1234445678', 2, '', '', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-11-28 11:15:37'),
(52, '', '', '12345567890', 2, '', '', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-11-28 11:19:06'),
(53, '', '', '1111111111', 2, '', '', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-11-28 11:45:45'),
(54, '', '', '707889159', 2, '', '', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-12-05 21:47:19'),
(55, '', '', '122334567', 2, '', '', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-12-07 07:19:11'),
(56, '', '', '122345678', 2, '', '', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-12-07 07:27:24'),
(57, '', '', '0988765432', 2, '', '', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-12-07 07:58:23'),
(58, '', '', '9887766554', 2, '', '', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-12-07 08:02:02'),
(59, '', '', '0988776654', 2, '', '', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-12-07 08:08:39'),
(60, '', '', '1234556789', 2, '', '', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-12-07 11:49:40'),
(61, '', '', '9876655433', 2, '', '', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-12-07 11:56:38'),
(62, '', '', '987665432', 2, '', '', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-12-07 12:00:52'),
(63, 'def@gmail.com', 'sdgf zfb', '9876554321', 2, 'Indore', '01-06-1991', 1111, '', '', '', '', 0, 'DL CJ 8956', 3, '', '', '', 1, '2020-12-07 12:13:04'),
(64, '', '', '9876543322', 2, '', '', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-12-07 12:34:16'),
(65, '', '', '9876544332', 2, '', '', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-12-07 12:37:54'),
(66, '', '', '1111222257', 2, '', '', 1111, '', '', '', '', 1, 'DL CJ 8956', 3, '', '', '', 1, '2020-12-09 14:42:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_provider_notifies`
--

CREATE TABLE `tbl_provider_notifies` (
  `id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `lock` enum('0','1','2','3') NOT NULL COMMENT '0 = Free, 1 = Lock, 2 = Process,3 = Done',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_provider_notifies`
--

INSERT INTO `tbl_provider_notifies` (`id`, `request_id`, `provider_id`, `lock`, `created_at`, `updated_at`) VALUES
(1, 62, 2, '3', '2020-11-05 18:36:32', '2020-11-05 11:37:31'),
(2, 62, 32, '3', '2020-11-05 18:36:32', '2020-11-05 11:38:01'),
(3, 62, 30, '3', '2020-11-05 18:36:32', '2020-11-05 11:38:31'),
(4, 62, 37, '3', '2020-11-05 18:36:32', '2020-11-05 11:39:01'),
(5, 62, 39, '3', '2020-11-05 18:36:32', '2020-11-05 11:39:31'),
(6, 62, 41, '3', '2020-11-05 18:36:32', '2020-11-05 11:40:01'),
(7, 63, 2, '3', '2020-11-06 16:11:21', '2020-11-06 09:12:31'),
(8, 63, 32, '3', '2020-11-06 16:11:21', '2020-11-06 09:13:01'),
(9, 63, 30, '3', '2020-11-06 16:11:21', '2020-11-06 09:13:31'),
(10, 63, 37, '3', '2020-11-06 16:11:21', '2020-11-06 09:14:01'),
(11, 63, 39, '3', '2020-11-06 16:11:21', '2020-11-06 09:14:31'),
(12, 63, 41, '3', '2020-11-06 16:11:21', '2020-11-06 09:15:01'),
(13, 67, 32, '3', '2020-11-27 19:56:56', '2020-11-27 12:57:31'),
(14, 67, 30, '3', '2020-11-27 19:56:56', '2020-11-27 12:58:01'),
(15, 67, 37, '3', '2020-11-27 19:56:56', '2020-11-27 12:58:31'),
(16, 67, 39, '3', '2020-11-27 19:56:56', '2020-11-27 12:59:01'),
(17, 67, 41, '3', '2020-11-27 19:56:56', '2020-11-27 12:59:31'),
(18, 1, 32, '3', '2020-11-28 12:55:52', '2020-11-28 05:56:31'),
(19, 1, 30, '3', '2020-11-28 12:55:52', '2020-11-28 05:57:01'),
(20, 1, 37, '3', '2020-11-28 12:55:52', '2020-11-28 05:57:31'),
(21, 1, 39, '3', '2020-11-28 12:55:52', '2020-11-28 05:57:31'),
(22, 1, 41, '3', '2020-11-28 12:55:52', '2020-11-28 05:57:31'),
(23, 2, 32, '3', '2020-11-28 15:28:43', '2020-11-28 08:29:31'),
(24, 2, 30, '3', '2020-11-28 15:28:43', '2020-11-28 08:30:01'),
(25, 2, 37, '3', '2020-11-28 15:28:43', '2020-11-28 08:30:31'),
(26, 2, 39, '3', '2020-11-28 15:28:43', '2020-11-28 08:31:01'),
(27, 2, 41, '3', '2020-11-28 15:28:43', '2020-11-28 08:31:31'),
(28, 3, 32, '3', '2020-11-28 15:49:34', '2020-11-28 08:50:01'),
(29, 3, 30, '3', '2020-11-28 15:49:34', '2020-11-28 08:50:01'),
(30, 3, 37, '3', '2020-11-28 15:49:34', '2020-11-28 08:50:01'),
(31, 3, 39, '3', '2020-11-28 15:49:34', '2020-11-28 08:50:01'),
(32, 3, 41, '3', '2020-11-28 15:49:34', '2020-11-28 08:50:01'),
(33, 4, 32, '3', '2020-11-28 18:58:10', '2020-11-28 11:59:31'),
(34, 4, 30, '3', '2020-11-28 18:58:10', '2020-11-28 12:00:01'),
(35, 4, 37, '3', '2020-11-28 18:58:10', '2020-11-28 12:00:31'),
(36, 4, 39, '3', '2020-11-28 18:58:10', '2020-11-28 12:01:01'),
(37, 4, 41, '3', '2020-11-28 18:58:10', '2020-11-28 12:01:31'),
(38, 5, 32, '3', '2020-11-28 19:06:57', '2020-11-28 12:07:31'),
(39, 5, 30, '3', '2020-11-28 19:06:57', '2020-11-28 12:08:01'),
(40, 5, 37, '3', '2020-11-28 19:06:57', '2020-11-28 12:08:31'),
(41, 5, 39, '3', '2020-11-28 19:06:57', '2020-11-28 12:08:31'),
(42, 5, 41, '3', '2020-11-28 19:06:57', '2020-11-28 12:08:31'),
(43, 6, 32, '3', '2020-11-28 19:13:23', '2020-11-28 12:14:01'),
(44, 6, 30, '3', '2020-11-28 19:13:23', '2020-11-28 12:14:01'),
(45, 6, 37, '3', '2020-11-28 19:13:23', '2020-11-28 12:14:01'),
(46, 6, 39, '3', '2020-11-28 19:13:23', '2020-11-28 12:14:01'),
(47, 6, 41, '3', '2020-11-28 19:13:23', '2020-11-28 12:14:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rate`
--

CREATE TABLE `tbl_rate` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `rate_by_id` int(11) NOT NULL,
  `rate_by` enum('PROVIDER','CUSTOMER') NOT NULL,
  `comment` text NOT NULL,
  `rate` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rate`
--

INSERT INTO `tbl_rate` (`id`, `booking_id`, `rate_by_id`, `rate_by`, `comment`, `rate`, `created_at`) VALUES
(4, 9, 1, 'CUSTOMER', 'nice', 3, '2020-09-26 14:00:28'),
(3, 9, 1, 'CUSTOMER', 'nice', 3, '2020-09-26 13:56:57'),
(5, 9, 1, 'CUSTOMER', 'nice', 3, '2020-11-03 12:21:06'),
(6, 9, 1, 'CUSTOMER', 'nice', 3, '2020-11-03 12:24:16'),
(7, 9, 1, 'CUSTOMER', 'nice', 3, '2020-11-03 12:31:42'),
(8, 9, 1, 'CUSTOMER', 'nice', 3, '2020-12-08 06:50:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_request_filters`
--

CREATE TABLE `tbl_request_filters` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_request_filters`
--

INSERT INTO `tbl_request_filters` (`id`, `request_id`, `provider_id`, `created_at`) VALUES
(8, 1, 37, '2020-11-28 05:57:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reset_password`
--

CREATE TABLE `tbl_reset_password` (
  `id` bigint(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` bigint(20) NOT NULL DEFAULT '1',
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) NOT NULL COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`roleId`, `role`) VALUES
(1, 'Admin'),
(2, 'Yönetici'),
(3, 'Çalışan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service_type`
--

CREATE TABLE `tbl_service_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `base_price` decimal(8,2) NOT NULL,
  `km_price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `per_min` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_service_type`
--

INSERT INTO `tbl_service_type` (`id`, `name`, `image`, `capacity`, `base_price`, `km_price`, `per_min`, `created_at`) VALUES
(1, 'Car', '', 200, 5.00, 1.00, 0.20, '2020-10-14 13:09:43'),
(2, 'Bike', '', 100, 12.00, 2.00, 0.50, '2020-10-16 10:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscription`
--

CREATE TABLE `tbl_subscription` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `rate` int(11) NOT NULL,
  `price` float NOT NULL,
  `item` int(11) NOT NULL,
  `description` text NOT NULL,
  `type` enum('month','year') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subscription`
--

INSERT INTO `tbl_subscription` (`id`, `title`, `rate`, `price`, `item`, `description`, `type`, `created_at`) VALUES
(1, 'Plan A', 15, 5, 150, '&#8226; After two packages per order will be charged .99 cents each<br/>&#8226; 55 cents per mile<br> &#8226; Cancelation fee $10.00', 'month', '2020-11-01 13:48:20'),
(2, 'Plan B', 10, 10, 200, '&#8226; After two packages per order will be charged .99 cents each<br/> &#8226; 55 cents per mile<br> &#8226; Cancelation fee $10.00', 'month', '2020-11-01 13:48:20'),
(3, 'Plan C', 20, 20, 250, '&#8226; After two packages per order will be charged .99 cents each<br/> &#8226; 55 cents per mile<br> &#8226; Cancelation fee $10.00', 'month', '2020-11-01 13:48:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscription_history`
--

CREATE TABLE `tbl_subscription_history` (
  `id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subscription_at` date NOT NULL,
  `subscription_till` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subscription_history`
--

INSERT INTO `tbl_subscription_history` (`id`, `sub_id`, `user_id`, `subscription_at`, `subscription_till`, `created_at`) VALUES
(1, 1, 1, '2020-11-03', '2020-12-03', '2020-11-03 10:03:05'),
(2, 1, 1, '2020-11-03', '2020-12-03', '2020-11-03 12:21:09'),
(3, 1, 1, '2020-11-03', '2020-12-03', '2020-11-03 12:24:18'),
(4, 1, 1, '2020-11-03', '2020-12-03', '2020-11-03 12:31:46'),
(5, 1, 1, '2020-11-03', '2020-12-03', '2020-11-03 12:35:39'),
(6, 1, 1, '2020-11-03', '2020-12-03', '2020-11-03 12:47:28'),
(7, 1, 1, '2020-11-03', '2020-12-03', '2020-11-03 12:50:47'),
(8, 1, 1, '2020-11-03', '2020-12-03', '2020-11-03 12:53:06'),
(9, 1, 1, '2020-11-03', '2020-12-03', '2020-11-03 13:56:30'),
(10, 1, 2, '2020-11-03', '2020-12-03', '2020-11-03 15:52:01'),
(11, 1, 2, '2020-11-03', '2020-12-03', '2020-11-03 16:01:24'),
(12, 1, 2, '2020-11-03', '2020-12-03', '2020-11-03 19:11:35'),
(13, 1, 2, '2020-11-03', '2020-12-03', '2020-11-03 19:11:51'),
(14, 1, 2, '2020-11-03', '2020-12-03', '2020-11-03 19:14:47'),
(15, 1, 2, '2020-11-03', '2020-12-03', '2020-11-03 19:17:57'),
(16, 1, 14, '2020-11-04', '2020-12-04', '2020-11-04 05:19:47'),
(17, 1, 1, '2020-11-04', '2020-12-04', '2020-11-04 14:19:40'),
(18, 1, 1, '2020-11-04', '2020-12-04', '2020-11-04 14:21:49'),
(19, 1, 1, '2020-11-04', '2020-12-04', '2020-11-04 14:22:05'),
(20, 1, 1, '2020-11-04', '2020-12-04', '2020-11-04 15:50:08'),
(21, 2, 7, '2020-11-05', '2020-12-05', '2020-11-05 10:53:21'),
(22, 1, 7, '2020-11-05', '2020-12-05', '2020-11-05 10:59:21'),
(23, 1, 12, '2020-11-07', '2020-12-07', '2020-11-07 07:32:16'),
(24, 1, 1, '2020-11-17', '2020-12-17', '2020-11-17 10:05:01'),
(25, 2, 14, '2020-11-17', '2020-12-17', '2020-11-17 10:08:10'),
(26, 1, 14, '2020-11-17', '2020-12-17', '2020-11-17 10:47:05'),
(27, 1, 12, '2020-11-18', '2020-12-18', '2020-11-18 12:48:24'),
(28, 1, 12, '2020-11-18', '2020-12-18', '2020-11-18 12:51:20'),
(29, 1, 12, '2020-11-18', '2020-12-18', '2020-11-18 15:14:54'),
(30, 1, 1, '2020-11-19', '2020-12-19', '2020-11-19 11:04:45'),
(31, 1, 12, '2020-11-23', '2020-12-23', '2020-11-23 11:11:24'),
(32, 1, 12, '2020-11-23', '2020-12-23', '2020-11-23 11:27:19'),
(33, 1, 12, '2020-11-24', '2020-12-24', '2020-11-24 12:05:56'),
(34, 2, 12, '2020-11-24', '2020-12-24', '2020-11-24 12:16:04'),
(35, 1, 12, '2020-11-26', '2020-12-26', '2020-11-26 09:25:41'),
(36, 1, 9, '2020-11-27', '2020-12-27', '2020-11-27 12:54:25'),
(37, 1, 1, '2020-11-27', '2020-12-27', '2020-11-27 13:07:47'),
(38, 1, 18, '2020-11-27', '2020-12-27', '2020-11-27 13:56:00'),
(39, 1, 1, '2020-12-08', '2021-01-08', '2020-12-08 06:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_task`
--

CREATE TABLE `tbl_task` (
  `id` bigint(20) NOT NULL,
  `title` varchar(1024) NOT NULL,
  `comment` varchar(2048) NOT NULL,
  `statusId` int(11) NOT NULL,
  `priorityId` int(11) NOT NULL,
  `permalink` varchar(1024) NOT NULL,
  `createdBy` bigint(20) NOT NULL,
  `endDtm` datetime DEFAULT NULL,
  `createdDtm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tasks_prioritys`
--

CREATE TABLE `tbl_tasks_prioritys` (
  `priorityId` bigint(20) NOT NULL,
  `priority` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tasks_prioritys`
--

INSERT INTO `tbl_tasks_prioritys` (`priorityId`, `priority`) VALUES
(1, 'Acil'),
(2, 'Orta'),
(3, 'Normal');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tasks_situations`
--

CREATE TABLE `tbl_tasks_situations` (
  `statusId` bigint(20) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tasks_situations`
--

INSERT INTO `tbl_tasks_situations` (`statusId`, `status`) VALUES
(1, 'Açık'),
(2, 'Tamamlandı');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `mobile` varchar(20) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `city` varchar(20) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `otp` int(11) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `document` varchar(225) NOT NULL,
  `vehicle` varchar(225) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `email`, `password`, `name`, `mobile`, `roleId`, `city`, `dob`, `otp`, `photo`, `document`, `vehicle`, `isDeleted`, `status`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'admin@admin.com', '$2y$10$HHJtVG1GOf.C1FLLAQuP3OBef.6/4qDdM/6BZsXnTCPtxWau94WIW', 'admin', '9890098900', 1, '', '', 0, '0', '0', '0', 0, 0, 0, '2015-07-01 18:56:49', 1, '2018-01-05 05:56:34'),
(2, 'ddd@gmail.com', '$2y$10$HHJtVG1GOf.C1FLLAQuP3OBef.6/4qDdM/6BZsXnTCPtxWau94WIW', 'dddd eeee', '8130948471', 2, 'delhi', '1994-08-02', 1052, '0', '0', '0', 0, 0, 1, '2016-12-09 17:49:56', 1, '2018-01-12 07:22:11'),
(3, 'calisan@ornek.com', '$2y$10$HHJtVG1GOf.C1FLLAQuP3OBef.6/4qDdM/6BZsXnTCPtxWau94WIW', 'Cumhur Oltay', '9890098900', 3, '', '', 0, '0', '0', '0', 0, 0, 1, '2016-12-09 17:50:22', 3, '2018-01-04 07:58:28'),
(47, 'saurabh.21aug@gmail.com', '', 'Saurabh Mishra', '8010791289', 2, 'Delhi', '1998-08-21', 3296, 'photo-47-IMG-20200807-WA0002.jpg', 'photo-47-IMG-20200807-WA00021.jpg', 'photo-47-IMG-20200807-WA00022.jpg', 0, 0, 0, '0000-00-00 00:00:00', NULL, NULL),
(52, '', '', '', '9131413729', 2, '', '', 4986, '', '', '', 0, 0, 0, '0000-00-00 00:00:00', NULL, NULL),
(49, 'safhjurabh.21aug@gmail.com', '', 'RAJ  Patel', '8010791289', 3, '', '', 3906, '', '', '', 1, 0, 0, '0000-00-00 00:00:00', 1, '2020-08-07 18:34:48'),
(50, 'saurabh.21aug@gmail.com', '', 'Saurabh Mishra', '8010791289', 3, '', '', 4097, '', '', '', 0, 0, 0, '0000-00-00 00:00:00', NULL, NULL),
(42, 'ssfsf@gmail.com', '', 'hjhjkh jhkjh', '8810234055', 2, 'delhi', '1994-08-02', 9505, '', '', '', 0, 0, 0, '0000-00-00 00:00:00', NULL, NULL),
(51, 'saurabh.21aug@gmail.com', '', 'Saurabh Mishra', '8010791289', 3, '', '', 7992, '', '', '', 0, 0, 0, '0000-00-00 00:00:00', NULL, NULL),
(48, 'chandan@gmail.com', '', 'Saurabh Mishra', '8010791289', 0, 'New delhi', '1994-08-02', 7451, 'photo-48-WhatsApp_Image_2020-08-07_at_8.31.44_PM.jpeg', 'photo-48-WhatsApp_Image_2020-08-07_at_8.31.44_PM1.jpeg', 'photo-48-WhatsApp_Image_2020-08-07_at_8.31.44_PM2.jpeg', 0, 0, 0, '0000-00-00 00:00:00', NULL, NULL),
(40, 'ashnirankatics@gmail.com', '', 'Ashish Nirankari', '+918810234055', 3, '', '', 1579, '', '', '', 0, 0, 0, '0000-00-00 00:00:00', NULL, NULL),
(53, 'saurabh.hhh21aug@gmail.com', '', 'Saurabhhxhxh Mishra', '80109791289', 2, 'Delhi', '1998-08-21', 6628, '', '', '', 1, 0, 0, '0000-00-00 00:00:00', 1, '2020-08-07 18:54:40'),
(54, 'sahurabh.21aug@gmail.com', '', 'Raj Mishra', '8010791289', 2, 'Delhi', '1998-08-21', 6807, '', '', '', 0, 0, 0, '0000-00-00 00:00:00', NULL, NULL),
(55, 'sauradghdubh.21aug@gmail.com', '', 'Raj Patel', '6397579656', 3, '', '', 5286, '', '', '', 0, 0, 0, '0000-00-00 00:00:00', NULL, NULL),
(56, '', '', '', '8130948471', 2, '', '', 8844, '', '', '', 0, 0, 0, '0000-00-00 00:00:00', NULL, NULL),
(57, '', '', '', '8287173635', 2, '', '', 2022, '', '', '', 0, 0, 0, '0000-00-00 00:00:00', NULL, NULL),
(58, '', '', '', '8223861669', 2, '', '', 7166, '', '', '', 0, 0, 0, '0000-00-00 00:00:00', NULL, NULL),
(59, '', '', '', '9716116787', 2, '', '', 3010, '', '', '', 0, 0, 0, '0000-00-00 00:00:00', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_booking_type`
--
ALTER TABLE `tbl_booking_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cms`
--
ALTER TABLE `tbl_cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer_new_booking`
--
ALTER TABLE `tbl_customer_new_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer_requests`
--
ALTER TABLE `tbl_customer_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_log`
--
ALTER TABLE `tbl_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_log_backup`
--
ALTER TABLE `tbl_log_backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_past_trip`
--
ALTER TABLE `tbl_past_trip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_provider`
--
ALTER TABLE `tbl_provider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_provider_notifies`
--
ALTER TABLE `tbl_provider_notifies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rate`
--
ALTER TABLE `tbl_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_request_filters`
--
ALTER TABLE `tbl_request_filters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `tbl_service_type`
--
ALTER TABLE `tbl_service_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subscription`
--
ALTER TABLE `tbl_subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subscription_history`
--
ALTER TABLE `tbl_subscription_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_task`
--
ALTER TABLE `tbl_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tasks_prioritys`
--
ALTER TABLE `tbl_tasks_prioritys`
  ADD PRIMARY KEY (`priorityId`);

--
-- Indexes for table `tbl_tasks_situations`
--
ALTER TABLE `tbl_tasks_situations`
  ADD PRIMARY KEY (`statusId`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_booking_type`
--
ALTER TABLE `tbl_booking_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_cms`
--
ALTER TABLE `tbl_cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_customer_new_booking`
--
ALTER TABLE `tbl_customer_new_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_customer_requests`
--
ALTER TABLE `tbl_customer_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_log`
--
ALTER TABLE `tbl_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `tbl_log_backup`
--
ALTER TABLE `tbl_log_backup`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_past_trip`
--
ALTER TABLE `tbl_past_trip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_provider`
--
ALTER TABLE `tbl_provider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `tbl_provider_notifies`
--
ALTER TABLE `tbl_provider_notifies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_rate`
--
ALTER TABLE `tbl_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_request_filters`
--
ALTER TABLE `tbl_request_filters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_service_type`
--
ALTER TABLE `tbl_service_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_subscription`
--
ALTER TABLE `tbl_subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_subscription_history`
--
ALTER TABLE `tbl_subscription_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl_task`
--
ALTER TABLE `tbl_task`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tasks_prioritys`
--
ALTER TABLE `tbl_tasks_prioritys`
  MODIFY `priorityId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_tasks_situations`
--
ALTER TABLE `tbl_tasks_situations`
  MODIFY `statusId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
