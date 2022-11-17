-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 15, 2022 at 04:13 PM
-- Server version: 10.3.36-MariaDB-log-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fyndmbhn_real_estate`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `content`, `image`) VALUES
(10, 'About Us', '<div id=\"pgc-w5d0dcc3394ac1-0-0\" class=\"panel-grid-cell\">\r\n<div id=\"panel-w5d0dcc3394ac1-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\">\r\n<div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\r\n<div class=\"siteorigin-widget-tinymce textwidget\">\r\n<p class=\"text_all_p_tag_css\">\r\n Fyndah.com is a real estate platform connecting property owners,\r\n                agents, buyers, investors and tenants. Since 2017 we have created an\r\n                effective and easier way to buy, sell, or lease properties. We aim to\r\n                become Africa’s largest real estate platform connecting both local and\r\n                international investors and buyers with access to verified and\r\n                legitimate properties.\r\n</p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'condos-pool.png');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(50) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'marshall', 'marshalonyekachi@ymail.com', 'admin'),
(2, 'marshall', 'Swadonline@gmail.com', 'marshall');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `cid` int(50) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `sid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`cid`, `cname`, `sid`) VALUES
(9, 'Olisphis', 3),
(10, 'Alegas', 2),
(11, 'Floson', 2),
(12, 'Ulmore', 7),
(13, 'Awrerton', 15);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(250) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(7, 'codeastro', 'asda@asd.com', '8888885454', 'codeastro.com', 'asdasdasd');

-- --------------------------------------------------------

--
-- Table structure for table `customerlikes`
--

CREATE TABLE `customerlikes` (
  `id` int(50) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customerscomment`
--

CREATE TABLE `customerscomment` (
  `id` int(50) NOT NULL,
  `name` varchar(250) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `mobile` varchar(250) NOT NULL,
  `message` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `property_id` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerscomment`
--

INSERT INTO `customerscomment` (`id`, `name`, `subject`, `email`, `mobile`, `message`, `date`, `property_id`) VALUES
(1, 'Suleiman Ibrahim Inuwa', 'isuleimanibrahim@gmail.com', 'isuleimanibrahim@gmail.com', '8144832703', 'nice product ', '2022-09-02', '8'),
(2, 'Ibrahim', 'hello', 'isuleimanibrahim@gmail.com', '08144832703', 'nice product ', '2022-09-02', '52');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fid` int(50) NOT NULL,
  `uid` int(50) NOT NULL,
  `fdescription` varchar(300) NOT NULL,
  `status` int(1) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `uid`, `fdescription`, `status`, `date`) VALUES
(7, 28, 'This is a demo feedback in order to use set it as Testimonial for the site. Just a simply dummy text rather than using lorem ipsum text lines.', 1, '2022-07-23 16:07:08'),
(8, 33, 'This is great. This is just great. Hmmm, just a dummy text for users feedback.', 1, '2022-07-23 21:51:09');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(50) NOT NULL,
  `image1` text NOT NULL,
  `image2` text NOT NULL,
  `image3` text NOT NULL,
  `image4` text NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image1`, `image2`, `image3`, `image4`, `property_id`) VALUES
(4, 'IMG-20220829-WA0006.jpg', 'IMG-20220829-WA0007.jpg', 'IMG-20220829-WA0001.jpg', 'IMG-20220829-WA0005.jpg', 0),
(5, 'IMG-20220418-WA0002.jpg', 'IMG_20220822_114100_363.jpg', 'IMG-20220519-WA0009.jpg', 'IMG-20220418-WA0000.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `id` int(50) NOT NULL,
  `name` varchar(20) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `marketer`
--

CREATE TABLE `marketer` (
  `mid` int(50) NOT NULL,
  `muser` varchar(50) NOT NULL,
  `memail` varchar(50) NOT NULL,
  `mpass` varchar(50) NOT NULL,
  `mdob` date NOT NULL,
  `mphone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketer`
--

INSERT INTO `marketer` (`mid`, `muser`, `memail`, `mpass`, `mdob`, `mphone`) VALUES
(1, 'madmin', 'madmin@gmail.com', 'ed775fc7100d30f0ff6c1dbff1a6fb11f349a17a', '1994-12-06', '1470002569'),
(2, 'madmin', 'madmin@gmail.com', 'ed775fc7100d30f0ff6c1dbff1a6fb11f349a17a', '1994-12-06', '1470002569'),
(3, 'madmin', 'madmin@gmail.com', 'ed775fc7100d30f0ff6c1dbff1a6fb11f349a17a', '1994-12-06', '1470002569'),
(4, 'madmin', 'madmin@gmail.com', 'ed775fc7100d30f0ff6c1dbff1a6fb11f349a17a', '1994-12-06', '1470002569');

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE `phone` (
  `id` int(6) UNSIGNED NOT NULL,
  `phone_app_click` varchar(30) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`id`, `phone_app_click`, `user_id`, `reg_date`) VALUES
(40, ' ', '123', '2022-11-13 11:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `postviewcount`
--

CREATE TABLE `postviewcount` (
  `id` int(6) UNSIGNED NOT NULL,
  `post_view_count` varchar(30) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postviewcount`
--

INSERT INTO `postviewcount` (`id`, `post_view_count`, `user_id`, `reg_date`) VALUES
(1, ' ', '123', '2022-11-12 02:12:40'),
(2, ' ', '123', '2022-11-12 02:13:41'),
(3, ' ', '123', '2022-11-12 02:13:47'),
(4, ' ', '123', '2022-11-12 02:16:46'),
(5, ' ', '123', '2022-11-12 02:16:55'),
(6, ' ', '123', '2022-11-12 02:16:58'),
(7, ' ', '123', '2022-11-12 02:17:03'),
(8, ' ', '123', '2022-11-12 02:20:38'),
(9, ' ', '123', '2022-11-12 02:20:42'),
(10, ' ', '123', '2022-11-12 02:20:50'),
(11, ' ', '123', '2022-11-12 02:20:53'),
(12, ' ', '123', '2022-11-12 03:03:22'),
(16, ' ', '123', '2022-11-12 03:05:51'),
(15, ' ', '123', '2022-11-12 03:05:20'),
(17, ' ', '123', '2022-11-12 03:07:16'),
(18, ' ', '123', '2022-11-12 03:07:30'),
(19, ' ', '123', '2022-11-12 03:10:25'),
(20, ' ', '123', '2022-11-12 03:10:30'),
(21, ' ', '123', '2022-11-12 03:11:05'),
(22, ' ', '123', '2022-11-12 03:11:09'),
(23, ' ', '123', '2022-11-12 03:12:11'),
(24, ' ', '123', '2022-11-12 03:12:15'),
(25, ' ', '123', '2022-11-12 03:12:19'),
(26, ' ', '123', '2022-11-12 03:13:16'),
(27, ' ', '123', '2022-11-12 03:13:32'),
(28, ' ', '123', '2022-11-12 03:21:13'),
(29, ' ', '123', '2022-11-12 03:21:41'),
(30, ' ', '123', '2022-11-12 03:22:44'),
(31, ' ', '123', '2022-11-12 03:23:24'),
(32, ' ', '123', '2022-11-12 05:26:04'),
(33, ' ', '123', '2022-11-12 09:09:14'),
(34, ' ', '123', '2022-11-12 11:26:51'),
(35, ' ', '123', '2022-11-12 11:38:42'),
(36, ' ', '123', '2022-11-12 11:40:46'),
(37, ' ', '123', '2022-11-12 11:40:48'),
(38, ' ', '123', '2022-11-12 11:40:49'),
(39, ' ', '123', '2022-11-12 11:41:21'),
(40, ' ', '123', '2022-11-12 11:41:50'),
(41, ' ', '123', '2022-11-12 12:07:21'),
(42, ' ', '123', '2022-11-12 12:08:36'),
(43, ' ', '123', '2022-11-12 17:16:39'),
(44, ' ', '123', '2022-11-12 18:03:43'),
(45, ' ', '123', '2022-11-12 18:44:25'),
(46, ' ', '123', '2022-11-12 18:54:44'),
(47, ' ', '123', '2022-11-12 20:08:22'),
(48, ' ', '123', '2022-11-13 02:31:21'),
(49, ' ', '123', '2022-11-13 02:32:17'),
(50, ' ', '123', '2022-11-13 06:32:57'),
(51, ' ', '123', '2022-11-13 08:51:12'),
(52, ' ', '123', '2022-11-13 08:51:13'),
(53, ' ', '123', '2022-11-13 09:43:47'),
(54, ' ', '123', '2022-11-13 09:43:58'),
(55, ' ', '123', '2022-11-13 09:45:17'),
(56, ' ', '123', '2022-11-13 09:46:46'),
(57, ' ', '123', '2022-11-13 09:57:10'),
(58, ' ', '123', '2022-11-13 09:57:24'),
(59, ' ', '123', '2022-11-13 09:57:36'),
(60, ' ', '123', '2022-11-13 09:57:41'),
(61, ' ', '123', '2022-11-13 09:57:53'),
(62, ' ', '123', '2022-11-13 10:05:09'),
(63, ' ', '123', '2022-11-13 10:05:24'),
(64, ' ', '123', '2022-11-13 10:05:36'),
(65, ' ', '123', '2022-11-13 11:41:00'),
(66, ' ', '123', '2022-11-13 11:49:39'),
(67, ' ', '123', '2022-11-13 11:50:25'),
(68, ' ', '123', '2022-11-13 13:24:09'),
(69, ' ', '123', '2022-11-13 13:24:41'),
(70, ' ', '123', '2022-11-13 13:27:03'),
(71, ' ', '123', '2022-11-13 13:27:06'),
(72, ' ', '123', '2022-11-13 13:52:05'),
(73, ' ', '123', '2022-11-13 13:52:11'),
(74, ' ', '123', '2022-11-13 15:45:20'),
(75, ' ', '123', '2022-11-13 18:47:37'),
(76, ' ', '123', '2022-11-13 18:53:57'),
(77, ' ', '123', '2022-11-13 19:07:59'),
(78, ' ', '123', '2022-11-13 19:08:44'),
(79, ' ', '123', '2022-11-13 23:13:12'),
(80, ' ', '123', '2022-11-13 23:51:53'),
(81, ' ', '123', '2022-11-14 00:08:53'),
(82, ' ', '123', '2022-11-14 02:18:38'),
(83, ' ', '123', '2022-11-14 11:12:20'),
(84, ' ', '123', '2022-11-14 13:39:13'),
(85, ' ', '123', '2022-11-14 13:39:35'),
(86, ' ', '123', '2022-11-14 13:56:31'),
(87, ' ', '123', '2022-11-14 14:46:57'),
(88, ' ', '123', '2022-11-14 14:48:09'),
(89, ' ', '123', '2022-11-14 14:49:24'),
(90, ' ', '123', '2022-11-14 15:32:23'),
(91, ' ', '123', '2022-11-14 15:37:14'),
(92, ' ', '123', '2022-11-14 15:56:50'),
(93, ' ', '123', '2022-11-14 16:15:10'),
(94, ' ', '123', '2022-11-14 16:15:23'),
(95, ' ', '123', '2022-11-14 16:32:57'),
(96, ' ', '123', '2022-11-14 16:46:20'),
(97, ' ', '123', '2022-11-14 16:46:37'),
(98, ' ', '123', '2022-11-14 16:47:32'),
(99, ' ', '123', '2022-11-14 16:55:33'),
(100, ' ', '123', '2022-11-14 16:59:59'),
(101, ' ', '123', '2022-11-14 17:00:10'),
(102, ' ', '123', '2022-11-14 18:22:39'),
(103, ' ', '123', '2022-11-14 19:17:34'),
(104, ' ', '123', '2022-11-14 19:17:40'),
(105, ' ', '123', '2022-11-14 19:17:44'),
(106, ' ', '123', '2022-11-14 19:45:41'),
(107, ' ', '123', '2022-11-14 19:59:24'),
(108, ' ', '123', '2022-11-14 20:11:04');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `bedroom` varchar(250) NOT NULL,
  `hall` varchar(250) NOT NULL,
  `kitchen` varchar(250) NOT NULL,
  `bathroom` varchar(250) NOT NULL,
  `balcony` varchar(250) NOT NULL,
  `price` varchar(250) NOT NULL,
  `sqr_price` varchar(250) NOT NULL,
  `address` text NOT NULL,
  `video` varchar(300) NOT NULL,
  `image1` varchar(300) NOT NULL,
  `description` longtext NOT NULL,
  `location` varchar(300) NOT NULL,
  `property_owner` varchar(200) NOT NULL,
  `property_type` varchar(250) NOT NULL,
  `lot_size` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `land_area` varchar(200) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `image3` varchar(300) NOT NULL,
  `image2` varchar(300) NOT NULL,
  `image4` varchar(300) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `role` varchar(250) NOT NULL,
  `uid` varchar(250) NOT NULL,
  `feature` longtext NOT NULL,
  `ptype` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `mapimage` varchar(300) NOT NULL,
  `topmapimage` varchar(300) NOT NULL,
  `groundmapimage` varchar(300) NOT NULL,
  `totalfloor` varchar(50) NOT NULL,
  `isFeatured` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `title`, `bedroom`, `hall`, `kitchen`, `bathroom`, `balcony`, `price`, `sqr_price`, `address`, `video`, `image1`, `description`, `location`, `property_owner`, `property_type`, `lot_size`, `status`, `land_area`, `date`, `image3`, `image2`, `image4`, `user_id`, `role`, `uid`, `feature`, `ptype`, `city`, `state`, `mapimage`, `topmapimage`, `groundmapimage`, `totalfloor`, `isFeatured`) VALUES
(147, 'Land for sale', '0', '0', '0', '0', '0', '15000000', '', 'Katampe Extensio, Diplomatic Zone Abuja ', '', 'IMG-20220929-WA0003.jpg', 'â€¼ï¸PROMO on FCDA approved Estate plots @ Katampe Extension Diplomatic Zone Abuja\r\nâ˜Žï¸Call /WhatsApp \r\n 08064327140    09073741175â€¼ï¸\r\nðŸŽ†CURRENT PRICE: Promo \r\n300SQM  @ 9Million\r\n500SQM @15Million\r\n800SQM @35Million', '', 'Private ', 'Land ', '', 'No', '', '2022-10-01 19:56:10', 'IMG-20220929-WA0006.jpg', 'IMG-20220929-WA0004.jpg', 'IMG-20220929-WA0005.jpg', '2', 'User', '0', '', 'sell', '', '', '', '', '', '', 'Yes'),
(149, 'Oak Haven Asaba', '0', '0', '0', '0', '0', '750000', '', 'Opposite Admiralty university, Ibusa', 'https://youtu.be/QoE6SA5w1Yo', 'IMG-20221004-WA0046.jpg', 'Serviced estate. Located behind 63 brigade army barracks, Ibusa. 100% dry table land. 1 plot = 464 square meters. Buy 5 plots and get 1 free.', '', 'PWAN Haven', 'Landed property', '', 'No', '', '2022-10-04 06:48:10', 'IMG-20220921-WA0122.jpg', 'IMG-20220930-WA0214.jpg', 'IMG-20220322-WA0166.jpg', '23', 'User', '0', '', 'sell', '', '', '', '', '', '', '1'),
(150, 'SALES ', '0', '0', '0', '0', '0', '2147483647', '60000', 'VGV, Ajah', 'https://wa.me/message/PXHA4AH6DAEXI1', 'VID-20220916-WA0058.mp4', 'property=  100 plots for sale in VGC..60,000SQM \r\nPRICE =11B\r\nTITLE =C OF O', 'https://wa.me/message/PXHA4AH6DAEXI1 ', 'Client', 'Land', '100 plots ', 'No', '100 plots ', '2022-10-04 06:56:41', 'VID-20220916-WA0058.mp4', 'VID-20220916-WA0058.mp4', 'VID-20220916-WA0058.mp4', '15', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(151, 'C of O', '0', '0', '0', '0', '0', '6000000', '', 'At the back of new RCCG auditorium Shimawa', '', 'IMG-20220515-WA0007.jpg', 'Plots of land in beautiful secured estate with social amenities like mini stadium, children play ground, shopping mall, restaurant and many more.', '', 'Adron Homes ', 'Land', '540sqm', 'No', 'Shimawa', '2022-10-04 07:45:15', 'IMG-20220604-WA0008.jpg', 'IMG-20220515-WA0009.jpg', 'IMG-20220907-WA0027.jpg', '3', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(152, 'C of O ', '0', '0', '0', '0', '0', '3', '', 'Salvation estate ', '', 'IMG-20221005-WA0024.jpg', '', '', 'Conquerors home ', 'Duplex ', '', 'yes', '', '2022-10-05 16:25:36', 'IMG-20221005-WA0024.jpg', 'IMG-20221005-WA0024.jpg', 'IMG-20221005-WA0024.jpg', '13', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(153, 'C of O ', '3', '2', '2', '3', '1', '48000000', '', 'Ikota, lekki Lagos ', '', 'IMG-20221005-WA0018.jpg', '', 'https://drive.google.com/drive/folders/10SLuUjLMF6zyARMRboyitO-rXjOg_UG9', 'Primeparkland ', '3 bedroom terrace duplex ', '', 'yes', '', '2022-10-05 16:37:17', 'IMG-20221005-WA0018.jpg', 'IMG-20221005-WA0018.jpg', 'IMG-20221005-WA0018.jpg', '13', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(154, 'North Avalon', '0', '0', '0', '0', '0', '2500000', '500', 'Igbonla Epe, Lagos state ', '', 'IMG-20221003-WA0012.jpg', '', '', 'Luminous hills ', 'Land', '', 'yes', 'Epe', '2022-10-07 17:56:08', 'IMG-20221003-WA0019.jpg', 'IMG-20221003-WA0016.jpg', 'IMG-20221003-WA0015.jpg', '42', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(155, 'Zion city Benin', '0', '0', '0', '0', '0', '1350000', '', 'Along Benin-Abraka road, Aviakagba town, Benin City.', 'https://youtu.be/QoE6SA5w1Yo', 'IMG_6738.jpeg', 'Title: CofO.\r\n100% dry table land. Located in a built up enviroment. Plot size: 464 square meters', '', 'Pwan pro', 'Estate Land', '', 'No', '', '2022-10-07 20:50:59', 'IMG_6742.jpeg', 'IMG-20221002-WA0081.jpg', '20220911_132859.jpg', '23', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(156, 'Zylus Court Phase Tw', '0', '0', '0', '0', '0', '18000000', '', 'Bogije, adjacent Beachwood estate', '', 'IMG-20220905-WA0009.jpg', 'Zylus Court is inside Richland gardens', '', 'Zylus Homes', 'Land for sale', '', 'No', '', '2022-10-08 18:55:01', 'IMG-20220813-WA0049.jpg', 'IMG-20220905-WA0010.jpg', 'IMG-20220813-WA0047.jpg', '40', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(157, 'HOUSE FOR SALE', '0', '0', '0', '0', '0', '40000000', '', 'Golf, Ibeju Lekki', '', 'IMG_20220909_124018.jpg', 'Four units of four bedrooms terrace duplex', '', 'Owned by an individu', 'Terrace Duplex', '', 'No', '', '2022-10-08 19:00:25', 'IMG_20220909_124142.jpg', 'IMG_20220909_124259.jpg', 'IMG_20220909_124434.jpg', '40', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(158, 'North Avalon', '0', '0', '0', '0', '0', '2500000', '', 'Igbonla, Epe, Lagos', '', 'IMG-20220905-WA0014.jpg', 'North Avalon estate is located at Igbonla Epe, Lagos', '', 'Luminous Hils', 'Land for sale', '', 'No', '', '2022-10-08 19:59:53', 'IMG-20220905-WA0017.jpg', 'IMG-20220905-WA0016.jpg', 'IMG-20220905-WA0020.jpg', '40', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(159, 'Lekki Pride Phase 3', '0', '0', '0', '0', '0', '65000000', '', 'Ogombo road, Abraham Adesanya', '', 'IMG-20220910-WA0016.jpg', 'Ogombo road, Abraham Adesanya', '', 'Zylus Homes', 'Land for sale', '', 'No', '', '2022-10-08 20:06:34', 'IMG-20220708-WA0005.jpg', 'IMG-20220708-WA0009.jpg', 'IMG-20220708-WA0008.jpg', '40', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(160, 'Western Hilltop', '0', '0', '0', '0', '0', '10000000', '', 'Ikola road, Alagbado, Lagos', '', 'IMG-20221002-WA0024.jpg', 'Ikola road Alagbado, Lagos Mainland', '', 'Zylus Homes', 'Land for sale', '', 'No', '', '2022-10-08 20:12:45', 'IMG-20221002-WA0026.jpg', 'IMG-20221002-WA0028.jpg', 'IMG-20221002-WA0028.jpg', '40', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(161, 'Real Estate Investme', '0', '0', '0', '0', '0', '500000', '', '168 Awolowo road, Ikoyi, Lagos', '', 'IMG-20221003-WA0023.jpg', 'This is a trading product, which allows investors, invest into real estate', '', 'Zylus Investment LTD', 'Real Estate CashBack', '', 'No', '', '2022-10-08 20:20:00', 'IMG-20221003-WA0025.jpg', 'IMG-20221003-WA0024.jpg', 'IMG-20221003-WA0054.jpg', '40', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(162, 'Plots of Land for Sa', '0', '0', '0', '0', '0', '1000000', '', 'Behind Estate 15, New auditorium, Redemption camp', '', 'IMG-20221008-WA0001.jpg', '', 'Rain Oil Mega Station Ibafo PCH8+G96, 121101, Pakuro https://maps.app.goo.gl/RDq6XDwjTW1gfcYW6', 'Good Success Estate ', 'Land', '600 SQM', 'yes', 'Simawa', '2022-10-09 01:49:38', '0f9dfa9c553340439a0ebe26e9f4c568.jpg', 'GS1.jpg', '84be614a07ec43b4a352170b98f8f431.jpg', '45', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(163, 'Land for sale', '0', '0', '0', '0', '0', '8', '', 'Avu Owerri ', '', 'VID-20220927-WA0018.mp4', '', 'Avu-owerri ', 'Gasvine properties l', 'Land', '', 'No', '', '2022-10-09 09:48:25', 'FINALREDESIGN.pdf', 'VID-20220905-WA0007.mp4', 'VID-20221008-WA0014.mp4', '50', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(164, 'Land for slae', '0', '0', '0', '0', '0', '5', '', 'Mowe Ofada Ogun state phase 1 and 2', '', 'IMG-20220929-WA0001.jpg', 'Land for sale at Mowe Ofada Ogun state ', 'Mowe Ofada Ogun state,phase 1 &2', 'Gasvine properties l', 'Land', '', 'No', '', '2022-10-09 10:15:32', 'FB_IMG_1660137434083.jpg', 'FB_IMG_1660137455117.jpg', 'FB_IMG_1660137393029.jpg', '50', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(165, 'Land for sale ', '0', '0', '0', '0', '0', '4', '', 'Isele-Azagba Asaba', '', 'IMG-20221004-WA0006.jpg', 'Land for sale at Isele-Azagba Asaba', 'Isele-Azagba Asaba', 'Gasvine properties l', 'Land', '', 'No', '', '2022-10-09 10:25:37', 'IMG-20221004-WA0018.jpg', 'IMG-20221004-WA0005.jpg', 'IMG-20221004-WA0015.jpg', '50', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(166, 'Land for sale', '0', '0', '0', '0', '0', '5', '', 'Mowe Ofada Ogun state phase 1 ', '', 'VID-20220927-WA0017.mp4', 'Land for sale at Mowe Ofada behind popular yotomi Estate', 'Mowe Ofada Ogun state,phase 1 ', 'Gasvine properties l', 'Land', '', 'No', '', '2022-10-09 10:38:39', 'IMG-20220929-WA0001.jpg', 'VID-20220927-WA0016.mp4', 'IMG-20220929-WA0001.jpg', '50', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(167, 'Epe express way, Ele', '0', '0', '0', '0', '0', '7000000', '500', ' Epe express way, Eleju Epe Lagos.', '', 'IMG-20221007-WA0077.jpg', '3-12months payment plan\r\n1m initial deposit\r\nWhatapp/call for more enquries: 09023292707', 'https://maps.google.com/?q=6.655371,3.795477&entry=gps', 'Merdorf Exr Solution', 'Land ', '500 sqr meter', 'No', 'Epe, Lagos ', '2022-10-09 18:08:06', 'IMG-20221007-WA0019.jpg', 'IMG-20221007-WA0024.jpg', 'IMG-20221009-WA0047.jpg', '54', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(168, 'Land for sale ', '0', '0', '0', '0', '0', '25', '', 'Royal court estate @ibeju lekki  before  the dangote refinery ', '', 'VID-20221009-WA0003.mp4', 'Land for sale royal court estate at IBEJU lekki before dangote refinery lagos ', 'Royal court estate IBEJU lekki ', 'Gasvine properties l', 'Land', '', 'No', '', '2022-10-10 03:05:48', 'IMG-20220928-WA0023.jpg', 'IMG-20221009-WA0001.jpg', 'VID-20221009-WA0003.mp4', '50', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(169, 'Legend city Nnewi', '0', '0', '0', '0', '0', '6000000', '', 'Behind Nnamdi Azikiwe teaching hospital, Akamili-Nnewi', 'https://youtu.be/D4HOTCbtc5w', 'IMG-20220919-WA0149.jpg', '100% dry table land. 464 square meters for a plot. ', '', 'PWAN Legend', 'Estate Land', '', 'No', '', '2022-10-10 07:26:19', 'IMG-20220322-WA0166.jpg', 'IMG-20220928-WA0120.jpg', 'IMG-20220721-WA0047.jpg', '23', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(170, 'C of O', '0', '0', '0', '0', '0', '25000000', '', 'Orofun Town, Free Trade Zone, beju.Lekki, Lagos', '', 'IMG-20221010-WA0028.jpg', '*THE WEALTHY PLACE*ðŸ™\r\n\r\nWHY SHOULD YOU BUY THE WEALTHY PLACE?ðŸ¤·â€â™€ï¸\r\n\r\nItâ€™s the perfect location for your business!\r\n\r\nItâ€™s in proximity to:\r\n\r\nðŸ’¹Lekki Free Trade Zone\r\nðŸ›³ï¸Lekki Deep Seaport\r\nðŸ™ï¸Dangote Refinery\r\nðŸ¢Lekki Worldwide Investment\r\nðŸ–ï¸Eleko Beach\r\nðŸ¥Akodo G', '', 'Formidable Corporate', 'Commerical Service Plots', '500sqm', 'No', '50 by 100', '2022-10-10 08:17:35', 'IMG-20221010-WA0026.jpg', 'IMG-20221010-WA0027.jpg', 'IMG-20221010-WA0026.jpg', '55', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(172, 'C of O', '0', '0', '0', '0', '0', '9000000', '', 'Aiyetoro Town Ibeju Lekki', '', 'IMG-20221010-WA0031.jpg', '*INTRODUCING FAIRMONT GREEN & SMART ESTATE* \r\n\r\nHow does it feel to live in a fully- optimized estate with everything done at the touch of a button?\r\n\r\nFairmont Green & Smart Estate boasts of a 100% wholly clean energy and sustainable environment in a friendly neighborhood \r\n\r\nDo you often wonder ho', '', 'Formidable Corporate', 'Commerical Service Plots', '500sqm', 'No', '300', '2022-10-10 08:41:37', 'IMG-20221010-WA0029.jpg', 'IMG-20221010-WA0030.jpg', '20220825_145757.jpg', '55', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(173, 'Government Gazette ', '0', '0', '0', '0', '0', '15', '', 'OGD Estate Asero Abeokuta ', '', 'received_471836988157759.jpeg', 'Fenced 3 Bedroom Bungalow for Sale ! ', '', 'Private ', '3 Bedroom Bungalow ', '', 'yes', '', '2022-10-10 10:41:23', 'IMG-20220906-WA0000.jpg', 'IMG-20220906-WA0000.jpg', 'IMG-20220906-WA0002.jpg', '49', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(174, 'Queen Garden 2', '0', '0', '0', '0', '0', '2000000', '', 'Mowe-ofada ', '', 'IMG-20221003-WA0006.jpg', 'Shimawa mowe-ofada Ogun state ', '', 'Landmark', 'Land', '', 'yes', '600 sqm', '2022-10-10 11:45:05', 'IMG-20221003-WA0006.jpg', 'IMG-20221003-WA0007.jpg', 'IMG-20221003-WA0006.jpg', '42', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(175, 'FCDA approved, Right', '0', '0', '0', '0', '0', '3', '', 'TradeMoore, Lugbe, Abuja', '', 'IMG-20220920-WA0013.jpg', '', '', 'Greener Estate Devel', 'Penthouse, Terrace, Duplex ', '', 'No', '', '2022-10-10 15:30:18', 'IMG-20220920-WA0015.jpg', 'IMG-20220921-WA0000.jpg', 'IMG-20220920-WA0019.jpg', '61', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(176, 'AMAC Approved ', '0', '0', '0', '0', '0', '3000000', '', 'TradeMoore, Lugbe, Abuja', 'None', 'IMG-20221007-WA0000.jpg', 'Greener Estate Developer offers  buildable, solid and impressive lands for sale with AMAC approval; no need for \"Ominile\" wahala. Schedule a tour with us today.', 'Abuja', 'Greener Estate Devel', 'Penthouse, Terrace, Duplex ', '70000000000', 'No', 'Unlmited ', '2022-10-10 16:28:17', 'IMG-20220920-WA0013.jpg', 'Screenshot_20220924-120439_WhatsApp.jpg', 'IMG-20220920-WA0014.jpg', '61', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(177, 'Distress Sale ', '0', '0', '0', '0', '0', '120000000', '', 'Alpha beach road, Atlantic view estate, Lekki ', '', 'IMG-20221010-WA0003.jpg', 'Distress Sales!!!Luxury 1 unit of 3 bedroom duplex with BQ ,1 unit 3bedrooms Apartment with BQ and 1 unit of 2 bedroom Apartments on a block .\r\n@ Fantastic Location\r\nAlpha Beach Road \"Atlantic View Estates\" Chevron Environment.\r\n\r\nFACILITIES;-\r\n\r\n1. All rooms Ensuite.\r\n2.Large Kitchen with modern ca', '', 'Private ', 'House ', '', 'No', '', '2022-10-10 19:22:12', 'IMG-20221010-WA0001.jpg', 'IMG-20221010-WA0002.jpg', 'IMG-20221010-WA0002.jpg', '1', 'SuperAdmin', '0', '', '', '', '', '', '', '', '', '0'),
(178, 'Land for sale ', '0', '0', '0', '0', '0', '750000', '', 'Epe, Lagos state ', '', 'IMG-20221008-WA0017.jpg', 'WHY YOU SHOULD BE A LAND OWNER IN EPE\r\n\r\nðŸ“ŒEPE (THE NEW LAGOS)\r\nEpe is one of the major local areas in Lagos state. It is located close to the northern part of #Lekki.\r\n\r\nEpe promises to be the residential capital of one of the largest emerging economic centers in West Africa (Ibeju-lekki).\r\n\r\nEpe', '', 'Private ', 'Land', '', 'No', '', '2022-10-10 19:29:38', 'IMG-20221008-WA0017.jpg', 'IMG-20221008-WA0017.jpg', 'IMG-20221008-WA0017.jpg', '1', 'SuperAdmin', '0', '', '', '', '', '', '', '', '', '0'),
(179, 'Land for sale ', '0', '0', '0', '0', '0', '1000000', '', 'Covenant university axis, Ogun state ', '', 'IMG-20221011-WA0000.jpg', 'Buy the Future while is Cheap!\r\n\r\nWe are proud to introduce Peace Gardens site @  ATAN VIP.\r\n\r\nIt an Amazing and Serene environment just 15 minutes drive from the Prestigious Covenant University.\r\n \r\nPeace Gardens ATAN VIP has many amazing features and  developmental projects that are guaranteed\r\nto', '', 'Private ', 'Land ', '', 'yes', '', '2022-10-10 19:32:33', 'IMG-20221011-WA0000.jpg', 'IMG-20221011-WA0000.jpg', 'IMG-20221011-WA0000.jpg', '1', 'SuperAdmin', '0', '', '', '', '', '', '', '', '', '0'),
(180, 'Prime City Estate ', '0', '0', '0', '0', '0', '2500000', '4300', 'Prime city estate ilara Epe ', '', 'E749655A-DCD6-4A33-90BA-A88A6BDB38A8.jpeg', 'Prime city estate ilara epe 3 mint away from st Augustineâ€™s universityâ€¦ 100% dry land, good road network, steady power supply(solar) etc ', '', 'Ace Real Estate ', 'Prime City Estate(properties)', '600sqm ', 'No', '600', '2022-10-11 04:12:11', 'IMG_4311.MOV', 'IMG_4921.MOV', 'IMG_4893.MOV', '51', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(181, 'WEST BRIDGE   ESTATE', '4', '0', '1', '5', '0', '65000000', '6499998', ' LAFIAJI STREET  ORCHID ROAD ', '', '1.jpeg', '', '', 'D &D Realtor', ' 4 BEDROOMS SEMI DETACHED', '270SQM', 'yes', '300SQM', '2022-10-11 10:05:48', '7.jpeg', '2.jpeg', '6.jpeg', '57', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(182, 'WEST BRIDGE   ESTATE', '5', '0', '1', '3', '1', '75000000', '75000000', ' Luxury  detailed Location  - Orchid  road  opposite Enyo Station  by the roundabou', ' Luxury  detailed Location  - Orchid  road  opposite Enyo Station  by the roundabou', '3.jpeg', 'Our Offer- 8 months  payment plan. 30% down  payment. \r\n(1) 5 bedrooms  fully detached  with BQ= 95m\r\n(2) 4 bedrooms  fully  detached  With BQ =90m\r\n(3) 4 Bedrooms  semi detached with  BQ = 75m \r\n\r\nFACILITIES \r\nFully  Serviced Estate \r\n(1) Smart  Home \r\n(2))24 HrsTap water/Treatment plant \r\n(3))24 H', 'LEKKI', 'D &D Realtor', ' 5 BEDROOMS FULLY  DETACHED', '270SQM', 'yes', '300SQM', '2022-10-11 10:50:30', '16.jpeg', '3.jpeg', '10.jpeg', '57', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(183, 'WEST BRIDGE   ESTATE', '5', '0', '1', '5', '1', '100000000', '', 'Conservation park  by Chevron Toll gate  LEKKI ', '', '6.jpeg', '', '', 'D &D Realtor', ' 5 BEDROOMS FULLY  DETACHED', '270SQM', 'yes', '300SQM', '2022-10-11 11:09:45', '4.jpeg', '5.jpeg', '6.jpeg', '57', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(184, 'Estate Land ', '0', '0', '0', '0', '0', '20000000', '', 'Mowe/Ofada', '', 'IMG-20220923-WA0024.jpg', 'QUEENS HOMES, MOWE/OFADA\r\n\r\nQueens Homes Mowe offers you one- of-a kind land space in which exquisite apartments that carry the gorgeous signature of readiness, designed exclusively to suit your taste.\r\n\r\nThe apartments are tucked in a beautiful and serene environment off the Lagos/ Ibadan Exprressw', '', 'Private ', 'Land', '', 'No', '', '2022-10-12 05:26:07', 'IMG-20220923-WA0022.jpg', 'IMG-20220923-WA0023.jpg', 'IMG-20220923-WA0023.jpg', '65', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(185, 'Distress Sales!!!Lux', '12', '0', '3', '13', '3', '120000000', '120000000', 'Atlantic view  Estate  ( Alpha beach road) LEKKI', ' Luxury  detailed Location  - Orchid  road  opposite Enyo Station  by the roundabou', '4.jpeg', 'Distress Sales!!!Luxury 1 unit of 3 bedroom duplex with BQ ,1 unit 3bedrooms Apartment with BQ and 1 unit of 2 bedroom Apartments on a block .\r\n@ Fantastic Location\r\nAlpha Beach Road \"Atlantic View Estates\" Chevron Environment.\r\n\r\nFACILITIES;-\r\n\r\n1. All rooms Ensuite.\r\n2.Large Kitchen with modern ca', 'LEKKI', 'D &D Realtor', 'Luxury 1 unit of 3 bedroom duplex with BQ ,1 unit ', '623sqmsqm', 'yes', '764SQM', '2022-10-12 08:06:12', '8.jpeg', '6.jpeg', '5.jpeg', '57', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(186, 'CofO', '5', '0', '1', '6', '2', '160000000', '', 'Off dbs road, asaba', '', 'IMG-20220825-WA0004.jpg', 'A duplex of wonder and class, ', 'Asaba GRA', 'Nil', 'Duplex', '50 by 100', 'No', '50 by 100', '2022-10-12 09:29:24', 'IMG-20220825-WA0010.jpg', 'IMG-20220825-WA0011.jpg', 'IMG-20220825-WA0006.jpg', '65', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(187, 'Prime City Estate ', '0', '0', '0', '0', '0', '2500000', '4300', 'Prime City Estate ilara Epe ', '', 'D989C664-B41E-4653-9415-0CEFE9EBE82F.png', 'Prime city estate ilara epe currently selling for 2.5m at a discounted price and will be selling for 3.5m by the end of the month ', '', 'Ace Real Estate ', 'Prime City Estate ', '600sqm ', 'No', '600sqm ', '2022-10-12 11:06:47', 'IMG_4921.MOV', 'D04D519B-E54D-431B-8AFF-8D281A2895B4.jpeg', 'IMG_4925.MOV', '51', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(188, 'CONCRETE STAMPS FLOO', '0', '0', '0', '0', '0', '6500', '6500', 'Pure water along badagry expressway Lagos', 'Nill', 'Screenshot_20221003-073458_1.jpg', 'SHP construction company. These are our work sample call us let give u the best at affordable price...our prices are unbeatable..calls or WhatsApp 09067969473..08155956650.', 'Nill', 'SOLARHOUSEPLAN CONST', 'STAMPS FLOOR', 'Square meters', 'yes', '', '2022-10-13 00:25:29', 'FB_IMG_1660144434587_1.jpg', 'img_1663105297955_1.jpg', 'InShot_20220618_161324916_transcpr.jpg', '72', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(189, 'C OfO', '4', '0', '1', '5', '0', '22000000', '', 'Wire and cable, Apata, Ibadan', '', 'Screenshot_20220828-095847.png', '4bedroom bungalow with extra made room and extra half plot at the back', '', 'R. E. E', 'Bungalow', '', 'No', '600sqm', '2022-10-13 00:41:10', 'Screenshot_20220828-095900.png', 'Screenshot_20220828-095837.png', 'Screenshot_20220827-232505.png', '69', 'User', '0', '', '', '', '', '', '', '', '', 'No'),
(190, 'C Of O', '3', '2', '1', '0', '0', '13000000', '', 'Wire and cable, Apata, Ibadan', '', 'Screenshot_20220612-152327.png', '', '', 'R. E. E', '2 flats Bungalow', '', 'yes', '', '2022-10-13 01:36:37', 'Screenshot_20220612-152311.png', 'Screenshot_20220806-123323.png', 'Screenshot_20220806-123313.png', '69', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(191, 'C Of O', '0', '0', '0', '0', '0', '4000000', '', 'Cocacola plant,Asejire Ibadan', '', 'Screenshot_20221012-171134~2.png', '', '', 'R. E. E', 'Plots of land', '', 'yes', '', '2022-10-13 01:43:27', 'Screenshot_20221012-171134~2.png', 'Screenshot_20221012-171134~2.png', 'Screenshot_20221012-171134~2.png', '69', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(192, 'C Of O', '0', '0', '0', '0', '0', '42000000', '', 'Elebu estate, Akala Express', '', 'Screenshot_20220807-211238~3.png', '', '', 'R. E. E', 'Ensuite 4 bedroom bungalow', '', 'yes', '', '2022-10-13 01:52:43', 'Screenshot_20220807-211213~2.png', 'Screenshot_20220807-211221~2.png', 'Screenshot_20220807-211257~2.png', '69', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(193, 'Adron homes and prop', '0', '0', '0', '0', '0', '3000000', '', 'West park and garden, Tipa garage,Oluyole Ibadan', '', 'aad2b7d5950548b9a3386bd9b039f714.mp4', '', '', 'R. E. E', 'Lands for sale', '', 'yes', '', '2022-10-13 02:04:48', 'Screenshot_20221012-170950~2.png', 'Screenshot_20221012-170950~2.png', 'Screenshot_20221012-171134~2.png', '69', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(194, 'For sale', '8', '0', '3', '11', '3', '22000000', '50', 'Sapele Road benin city', '', 'Screenshot_20221013_095134.jpg', '3bedroom flats into 2parts, and 2bedroom flats', '', 'Agent authorized', 'Bungalow', '50 by 100', 'No', '50 by 100', '2022-10-13 05:12:21', 'Screenshot_20221013_095306.jpg', 'Screenshot_20221013_095338.jpg', 'Screenshot_20221013_095139.jpg', '65', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(195, 'C Of O', '0', '0', '0', '0', '0', '25000000', '', 'New garage, challenge, Ibadan', '', 'Screenshot_20221013-101408~2.png', '', '', 'R. E. E', '3bedroom bungalow', '', 'yes', '', '2022-10-13 05:32:53', 'Screenshot_20221013-101720~2.png', 'Screenshot_20221013-101637~2.png', 'Screenshot_20221013-101038.png', '69', 'User', '0', '', '', '', '', '', '', '', '', 'Yes'),
(196, 'Full Excision  and G', '0', '0', '0', '0', '0', '8000000', '', 'Idado Town, Eleko Ibeju Lekki Lagos', '', 'IMG-20221013-WA0020.jpg', 'GEMSTONE ESTATE 11 ELEKO\r\n\r\nIn fact, we can safely say that Lagos is undeniably the official headquarters of world commerce in Nigeria.\r\nAnd as such, it is the hottest hub for business and InvestmentðŸ’¯ðŸ’¯\r\n\r\nThe Ibeju Lekki axis is a fast developing area on the Lagos island, with an annual price ', '', 'Formidable Corporate', 'Service Plots of Land', '500sqm', 'No', '', '2022-10-13 10:30:11', 'IMG-20221013-WA0019.jpg', 'IMG-20221013-WA0021.jpg', 'IMG-20220930-WA0007.jpg', '55', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(197, 'C of O', '0', '0', '0', '0', '0', '150000000', '', 'Chevron Lekki', '', 'FB_IMG_1664265004411.jpg', '', '', 'Formidable Corporate', '5 Bedroom.Fully Detached Duplex', '', 'No', '', '2022-10-13 13:05:11', 'IMG_20220921_084352_968.jpg', 'IMG_20220927_085617_889.jpg', 'IMG-20220921-WA0014.jpg', '55', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(198, 'Eko City', '0', '0', '0', '0', '0', '15000000', '15000000', 'Eko City,lekki Epe express way,Lekki free trade zone , international airport,via Dangote refinery', '', 'IMG-20221007-WA0062.jpg', 'Eko City is located along Lekki-Epe Expressway, Epe, Lagos. The estate is adjacent to the future Lagos international airport and close to the regionâ€™s largest deep sea port and major Nigerian and international companies. Investors and owners of properties in this estate will definitely enjoy the p', '', 'Ibukun staff of Adro', 'Land', '500sqm ,60-100sqm', 'yes', '500 sqm,60-100sqm', '2022-10-13 22:33:23', 'IMG-20221007-WA0065.jpg', 'IMG-20221007-WA0063.jpg', 'IMG-20221007-WA0064.jpg', '76', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(199, 'West park and garden', '0', '0', '0', '0', '0', '3000000', '3000000', 'West park and garden Ayegun oleyo,off Akala express ,Ibadan', '', 'IMG-20220602-WA0029.jpg', 'West Parks and Garden, Aiyegun-Oleyo, Ibadan our flagship estate in the biggest city in Sub-saharan Africa, launched as double estates in the choicest, serene and fastest developing area of the biggest Nigerian City. West Parks and Gardens Estate Ibadan, our flagship estate in the biggest city in Su', '', 'Staff of Adron homes', 'Land', '540sqm', 'yes', '60-100sqm', '2022-10-13 23:12:57', 'IMG-20220719-WA0065.jpg', 'IMG-20220805-WA0067.jpg', 'IMG-20220719-WA0063.jpg', '76', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(200, '5 bedroom duplex ', '0', '0', '0', '0', '0', '100000000', '', 'Peter Odili Port Harcourt ', '', 'IMG-20221012-WA0001.jpg', '5 Bedroom Duplex for Sale!\r\nLocation: Peter Odili\r\nâ€¢Price: N100M\r\nâ€¢Land Size: 1 & a half Plot of Land\r\n\r\nâ€¢Features:\r\n-2 Living Rooms\r\n-All rooms en-suite\r\n-Family Lounge \r\n-Library with inbuilt reading tables\r\n-Balconies \r\n-Ante Room for 6 card \r\n- water Treatment plant \r\n- Ample parking \r\n- P', '', 'Private ', 'House ', '', 'yes', '', '2022-10-14 04:28:41', 'IMG-20221012-WA0003.jpg', 'IMG-20221012-WA0002.jpg', 'IMG-20221012-WA0004.jpg', '1', 'SuperAdmin', '0', '', '', '', '', '', '', '', '', '0'),
(201, 'Sale', '0', '0', '0', '0', '0', '1600000', '1400000', 'Ori okura ogijo', '', '20221013_175712.jpg', 'Adegbiye road', '', 'Xyconnects ', 'Land', 'Half plot', 'No', '30 x60', '2022-10-14 04:59:46', '20221013_175654.jpg', '20221013_175639.jpg', '20221013_175703.jpg', '70', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(202, 'Land for sale', '0', '0', '0', '0', '0', '3000000', '', 'Lugbe, Airport road Abuja', '', 'IMG-20220919-WA0021.jpg', '', '', 'Besitz Group ltd', 'Land', '300sqm - 500 sqm', 'No', '', '2022-10-14 07:01:22', 'IMG-20220919-WA0010.jpg', 'IMG-20220919-WA0006.jpg', 'IMG-20220923-WA0001.jpg', '79', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(203, '2 bedroom ', '2', '0', '1', '3', '0', '35000000', '', 'Ajah ', '', 'IMG-20221010-WA0130.jpg', '*âšœï¸DECENTLY BUILT TO DETAIL 2 BED APARTMENTâšœï¸*\r\n\r\n- Fully Serviced\r\n- 24 Hours Power\r\n- 24 Hours Security \r\n- Fully Equipped Kitchen\r\n- Spacious Living Room\r\n- Gorgeous Lightings \r\n- Beautiful Fitted Wardrobes\r\n- Modern Sanitary Wares\r\n- Detailed Finishing \r\n- Great Neighbourhood \r\n\r\n *LOCAT', '', 'Diamond ', 'House ', '', 'yes', '', '2022-10-14 07:05:30', 'IMG-20221010-WA0135.jpg', 'IMG-20221010-WA0136.jpg', 'IMG-20221010-WA0136.jpg', '46', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(204, 'Land for sale', '0', '0', '0', '0', '0', '1200000', '', '', '', 'IMG-20220919-WA0017.jpg', '', '', 'Besitz Group ltd', 'Land', '300sqm - 500 sqm', 'No', '', '2022-10-14 18:28:11', 'IMG-20221014-WA0008.jpg', 'IMG-20221013-WA0002.jpg', 'IMG-20221014-WA0008.jpg', '79', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(205, 'Family receipt and a', '0', '0', '0', '0', '0', '17000000', '', 'Vespa bus sango ifo ogun state Nigeria ', '', 'IMG-20210310-WA0002.jpg', 'Vespa bus ojusango ifo ogun state Nigeria ', '', 'Self', '4 unit of mini flat', 'Half plot', 'No', 'Ifo ogun state', '2022-10-14 23:11:48', 'IMG-20210310-WA0000.jpg', 'IMG-20210310-WA0003.jpg', 'IMG-20210310-WA0001.jpg', '86', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(206, 'Excision', '0', '0', '0', '0', '0', '4000000', '600', 'Ikota Villa besides mega chicken eti-osa lekki epe express way', 'https://vm.tiktok.com/ZMF678Npk/', 'Screenshot_20221015-064955.jpg', '100% dry land', 'Okunubi town elerangbe', 'Ur real estate shopp', 'Estate properties', '300/600sqm and more', 'yes', 'Okunubi town elerang', '2022-10-15 01:56:59', 'Screenshot_20221015-065001.jpg', 'Screenshot_20221015-064943.jpg', 'Screenshot_20221015-065007~2.jpg', '88', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(207, 'All documents intact', '0', '0', '0', '0', '0', '90000000', '', 'Asokoro district Abuja ', '', 'IMG-20220812-WA0018.jpg', '', '', 'Individual ', '3 bedroom duplex ', '', 'No', '', '2022-10-15 04:42:48', 'IMG-20220708-WA0014.jpg', 'IMG-20220708-WA0015.jpg', 'IMG-20220708-WA0013.jpg', '85', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(208, 'Shortlet', '1', '0', '1', '1', '0', '40000', '', 'Lekki phase one ', '', '4DA69656-C8B8-4AE6-9455-E33973A1529D.jpeg', 'Refundable caution:30k\r\nNo smoking allowed at all ', '', 'H.o.b shortlets', 'Studio apartment ', '', 'No', 'Lekki ', '2022-10-15 05:58:02', '607A1CED-2732-4ED6-977C-58878DFFB9A3.jpeg', '106C0053-7EBD-4ED5-8854-1A771DEA93AB.jpeg', 'B96CCA27-8139-4EFB-8266-5801CF00DD29.jpeg', '92', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(209, 'House for sale ', '4', '0', '1', '0', '0', '9000000', '', 'Eleworo junction,mowe Ogun state ', '', 'FB408980-EE43-45E4-B410-E875C263E36A.jpeg', '4 bedroom bungalow with already fixed bathroom tiles,and other plumbing and electrical works already done ', '', 'H.o.b shortlets ', '4 bedroom bungalow', '1plot', 'No', 'Obafemi owode', '2022-10-15 06:05:57', 'F88DC6B8-4A3F-4F97-B2A5-40B76D164BD7.jpeg', 'E0A6D14F-9C8A-4F44-923F-0F079F14E99C.jpeg', '3D75CE89-675F-4510-92C0-47C61422682C.jpeg', '92', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(210, 'C Of O', '0', '0', '0', '0', '0', '1500000', '', 'Ologun eru, eleyele. Ibadan', '', 'VID-20220119-WA0038.mp4', '', '', 'R. E. E', 'Lands for sale', '3000000sqft', 'yes', '', '2022-10-15 17:13:06', 'cf33f5eb5b934f58917317720afffeed.mp4', '933708350338493d93857b5443632b54.mp4', '0bd0c7859640468397447a909398a966.jpg', '69', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(211, 'Adron homes and prop', '0', '0', '0', '0', '0', '0', '', 'Ibeju lekki, epe, shimawa, Suleja, Ibadan, Ogun, Nig. ', '', 'Screenshot_20221015-222439~2.png', '', '', 'R. E. E', 'Lands for sale', '3000000sqft', 'yes', '', '2022-10-15 17:30:12', '59917a09ce41423591d6fceb7560f6cf.jpg', 'Screenshot_20221015-222727~2.png', '59917a09ce41423591d6fceb7560f6cf.jpg', '69', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(212, 'C Of O', '0', '0', '0', '0', '0', '23000000', '', 'Olorunda aba,Akobo, oju irin Ibadan', '', 'Screenshot_20221015-224050~2.png', '', '', 'R. E. E', '3bedroom ', '1000sqm', 'yes', '', '2022-10-15 17:48:53', 'Screenshot_20221015-224050~2.png', 'Screenshot_20221015-224417~2.png', 'Screenshot_20221015-224417~2.png', '69', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(213, 'Lands in Simawa, Ogu', '0', '0', '0', '0', '0', '950000', '16000', 'Rain oil shopping complex, Opposite MFM Prayer city, Ibafo, Ogun State', '', 'GS1.jpg', '', '', 'Good Success Estate ', 'Land', '600 SQM', 'yes', 'Simawa', '2022-10-15 21:13:36', 'IMG-20221008-WA0004.jpg', '84be614a07ec43b4a352170b98f8f431.jpg', 'GS.jpg', '45', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(214, 'Land for sale ', '0', '0', '0', '0', '0', '1800000', '', 'Elele/Isiokpo Federal expressway, Port Harcourt ', '', 'IMG-20221015-WA0013.jpg', 'The 16 plots of land is located in Elele/Isiokpo federal Express road, few minutes drive from the Portharcourt intl airports omagwa, Portharcourt Rivers State. Isiokpo is the head quarters of Ikwerre LGA and has many govt agencies including the proposed Wigwe University owned by Harbert Wigwe. The b', '', 'Private ', 'Land ', '', 'No', '', '2022-10-16 04:43:13', 'IMG-20221015-WA0023.jpg', 'IMG-20221015-WA0021.jpg', 'IMG-20221015-WA0016.jpg', '1', 'SuperAdmin', '0', '', '', '', '', '', '', '', '', '0'),
(215, 'Government Allocatio', '0', '0', '0', '0', '0', '10500000', '', 'EYIN-OSA COMMUNITY,LEKKI-EPE EXPRESSWAY,BY ALARO CITY,LAGOS STATE', '', 'IMG_20220525_142219_922.JPG', '', '', 'PWAN GROUP OF COMPAN', 'LAND', '', 'No', 'LAGOS STATE', '2022-10-16 17:27:29', 'IMG_20220525_142219_922.JPG', 'IMG_20220525_142219_922.JPG', 'IMG_20220525_142219_922.JPG', '98', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(216, 'Land Fo Sale With C ', '0', '0', '0', '0', '0', '7000000', '648', 'Suite A10 Ikota Shopping Complex VGC Lekki-Ajah Lagos 08050947408 ', 'None', 'IMG-20220818-WA0002.jpg', '480 Plot Available For Sale At Ilamija IBEJULEKKI Lagos', 'Ilamija IBEJULEKKI Lagos ', 'Olusegun Bamisaye ', 'Land', '648sqm Size Standard', 'yes', 'Over 80 Acres Availa', '2022-10-17 03:47:21', 'IMG-20220909-WA0107.jpg', 'IMG-20220909-WA0107.jpg', 'IMG-20220818-WA0017.jpg', '99', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(217, 'C of O', '0', '0', '0', '0', '0', '250000000', '', 'Cowrie Creek Estate Lekki', '', 'IMG-20220912-WA0005.jpg', '*AMENITIES*:\r\n-----------------------\r\nðŸ¥‚ 370sqm land size\r\nðŸ¥‚ Governor Consent and Building Approval\r\nðŸ¥‚ 24hrs Central Power\r\nðŸ¥‚ Central treated water\r\nðŸ¥‚ Concrete Stamped premise\r\nðŸ¥‚ Large parking space\r\nðŸ¥‚ Family size swimming pool \r\nðŸ¥‚ Fitted kitchen with cabinet, gas cooker and ', '', 'Olusegun Bamisaye ', ' *DIRECT BRIEF :    Cowrie Creek Estate crib* FOR ', '370sqm', 'No', '370sqm', '2022-10-17 04:26:36', 'IMG-20220912-WA0008.jpg', 'IMG-20220912-WA0004.jpg', 'IMG-20220705-WA0018.jpg', '99', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(218, 'Land for sale ', '0', '0', '0', '0', '0', '1000000', '', 'Ibusa, opposite Admiralty University, Delta', '', 'IMG-20221016-WA0002.jpg', 'Estate Land for sale. \r\nSerious buyers  please kindly visit our Head office @ No1 Nma Okafor close, opp. Bridge FM radio station, off anwai Rd, Asaba Delta State.\r\nTel: 08161381837 for more enquiries', '', 'Private ', 'Land', '', 'No', '', '2022-10-17 04:41:04', 'IMG-20221016-WA0002.jpg', 'IMG-20221016-WA0002.jpg', 'IMG-20221016-WA0002.jpg', '74', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(219, 'C of O ', '4', '0', '2', '4', '0', '80000000', '', 'Ajah, Lagos island', '', 'IMG-20221006-WA0003.jpg', '', '', 'Primeparkland ', 'Terrace duplex ', '', 'yes', '', '2022-10-17 04:42:28', 'IMG-20221006-WA0003.jpg', 'IMG-20221006-WA0003.jpg', 'IMG-20221006-WA0003.jpg', '13', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(220, 'C of O ', '3', '0', '2', '3', '0', '70000000', '', 'Ikota, lekki Lagos ', '', 'IMG-20221005-WA0019.jpg', '', '', 'Primeparkland', 'Detached apartment ', '', 'yes', '', '2022-10-17 04:46:42', 'IMG-20221005-WA0019.jpg', 'IMG-20221005-WA0019.jpg', 'IMG-20221005-WA0019.jpg', '13', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(221, 'Apartment for sale ', '0', '0', '0', '0', '0', '47000000', '', 'Ikota, Lekki (VGC)', '', 'IMG_20221017_120129_285.jpg', 'Serviced 2 & 3 Bed Apartmentâ¤ï¸\r\n\r\nLocation: Ikota, Lekki (by VGC) ðŸ‡³ðŸ‡¬\r\n\r\nPrice: 42m (2 Bed); 47m (3 Bed)\r\n\r\nFeatures:\r\n\r\nðŸ“Newly built\r\nðŸ“CCTV\r\nðŸ“Microwave & oven\r\nðŸ“Walk-in Closet\r\nðŸ“All Rooms En-suite\r\nðŸ“1 Living Room\r\nðŸ“Interlocked Floor\r\nðŸ“POP Ceiling \r\nðŸ“Water Heater;', '', 'Private ', 'Apartment ', '', 'No', '', '2022-10-17 07:20:11', 'IMG_20221017_120129_442.jpg', 'IMG_20221017_120129_386.jpg', 'IMG_20221017_120129_496.jpg', '1', 'SuperAdmin', '0', '', 'sell', '', '', '', '', '', '', '1'),
(222, 'Deed of assignment ', '0', '0', '0', '0', '0', '73000000', '', 'Orchid lekki Lagos ', '', 'IMG-20221016-WA0012.jpg', '4BEDROOM TERRACE DUPLEX FOR SALE . \r\n \r\nLocation: ORCHID LEKKI \r\n\r\nPrice: 72M \r\n \r\nFeatures:\r\n- sef compound \r\n- Brand New\r\n- All Rooms Ensuite\r\n- Pop Ceilings \r\n- Fully Fitted Kitchen\r\n- CCTV \r\n- Water Heater \r\n- Walk-In Shower \r\n- Bath cubicle', 'Lekki', 'Blue planet real est', 'House property', '600sqm', 'yes', 'Orchid lekki', '2022-10-18 04:45:56', 'IMG-20221016-WA0032.jpg', 'IMG-20221016-WA0027.jpg', 'IMG-20221016-WA0033.jpg', '101', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(223, 'FCDA ROFO COFO IN PR', '5', '5', '1', '4', '0', '10000000', '2000', 'Gbagalape phase2 Nyanya Abuja FCT', 'Abuja', 'IMG-20221007-WA0043.jpg', 'The Estate is located at APO  Hilltop, Abuja', 'Close to shopprite,', 'GREENPASTURE HOMES A', 'PLOT OF LAND', '500SQM', 'yes', 'Federal Capital Terr', '2022-10-18 05:31:36', 'IMG_20221006_155155.jpg', 'IMG-20221008-WA0007.jpg', 'IMG_20220913_175441.jpg', '103', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(224, 'C OF O', '0', '0', '0', '0', '0', '8000000', '', 'OSHOROKO COMMUNITY,IBEJU LEKKI LOCAL GOVERNMENT AREA OF LAGOS STATE', '', 'IMG-20221016-WA0003.jpg', '', '', 'PWAN GROUP OF COMPAN', 'LAND', '', 'No', 'LAGOS STATE', '2022-10-18 08:44:24', 'IMG_20221018_134245_736.jpg', 'IMG_20221018_134245_736.jpg', 'IMG_20221018_134245_736.jpg', '98', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(225, 'C of O', '0', '0', '0', '0', '0', '420000000', '4821', 'Katsina Rd Kano', '', 'KATSINA ROAD PROPERTY OPPOSITE NITEL DBI.pdf', 'Sir,\r\nThis is to inform you of twoÂ  empty land for sales located along Katsina Road after Ammasco Petro Station from Airforce Base roundabout through Katsina road in between Airforce Base road roundabout and Airport road roundabout. \r\n\r\nThe two plots of empty land are accessible from Katsina road, ', 'Kano', 'Greg Sam', 'Landed Property ', '2 plots', 'yes', 'Nitel training schoo', '2022-10-18 11:36:09', 'KATSINA ROAD PROPERTY OPPOSITE NITEL DBI.pdf', 'KATSINA ROAD PROPERTY OPPOSITE NITEL DBI.pdf', 'KATSINA ROAD PROPERTY OPPOSITE NITEL DBI.pdf', '105', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(226, 'C of O', '0', '0', '0', '0', '0', '450000000', '', 'Ibrahim Taiwo Rd Kano ', '', 'IMG-20220703-WA0014.jpg', '', '', 'Greg Sam', 'Buildings', '', 'No', 'Ibrahim Taiwo rd', '2022-10-18 11:44:09', 'IMG-20220703-WA0020.jpg', 'IMG-20220703-WA0020.jpg', 'IMG-20220703-WA0015.jpg', '105', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(227, 'C of O', '0', '0', '0', '0', '0', '71000000', '', 'Woodblod estate llaje Lagos lsland', '', 'VID-20221018-WA0057.mp4', '', '', 'Woodblod estate ', 'House property', '', 'No', '', '2022-10-18 14:30:58', 'IMG-20221018-WA0050.jpg', 'IMG-20221018-WA0051.jpg', 'IMG-20221018-WA0052.jpg', '101', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(228, 'General CofO ', '5', '0', '0', '0', '0', '130000000', '', 'Ajah lagos', '', 'IMG-20221016-WA0039.jpg', '5BEDROOM FULLY DETACHED DUPLEX FOR SALE \r\nAmenities: \r\n- [ ] 5BEDROOM \r\n- [ ] Fitted Kitchen with accessories \r\n- [ ] Modern Day POP Ceiling \r\n- [ ] Detailed finishing \r\n- [ ] Wardrobes \r\n- [ ] Bq \r\n- [ ] CCTV \r\n- [ ] Water heater\r\n- [ ] Heat extractor \r\n- [ ] swimming pool \r\n\r\nLocation: AJAH LAGOS\r', '', 'Mona homes', 'House property ', '', 'No', '', '2022-10-18 14:43:27', 'IMG-20221016-WA0047.jpg', 'IMG-20221016-WA0042.jpg', 'IMG-20221016-WA0040.jpg', '101', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(229, 'CofO', '0', '0', '0', '0', '0', '20000000', '', '', '', 'IMG-20221019-WA0021.jpg', '', '', 'Brg', 'Dry land', '150-1000sqm', 'yes', 'Epe', '2022-10-19 05:09:56', 'IMG-20221019-WA0024.jpg', 'IMG-20221019-WA0023.jpg', 'IMG-20221019-WA0025.jpg', '88', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(230, 'WHYTE HEAVEN ESTATE', '0', '0', '0', '0', '0', '800000', '', 'IPO ABARA PHC', '', 'IMG-20221012-WA0023.jpg', '', '', 'MOSAIC HOMES', 'BUY AND BUILD', '450SQM', 'No', '', '2022-10-19 05:55:27', 'IMG-20221012-WA0023.jpg', 'IMG-20221012-WA0023.jpg', 'IMG-20221012-WA0023.jpg', '39', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(231, 'TABLE LAND', '0', '0', '0', '0', '0', '6000000', '', 'ADJACENT SALVATION MINISTRY HEADQUARTERS PHC', '', 'IMG-20221004-WA0004.jpg', 'THIS PROPERTY IS LOCATED AT A VERY STRATEGIC LOCATION', '', 'OGECHI', 'BUY AND BUILD', '460SQM', 'No', '', '2022-10-19 06:01:46', 'IMG-20221004-WA0002.jpg', 'IMG-20221004-WA0003.jpg', 'IMG-20221004-WA0001.jpg', '39', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(232, '4 Bedrooms Twin Dupl', '0', '0', '0', '0', '0', '65000000', '', 'Carlton Gate Estate, Akobo', '', 'IMG20221017151636.jpg', '', '', 'Fatomide Adesina ', 'Twin Duplex ', '175mÂ²', 'No', '250mÂ²', '2022-10-19 08:41:06', 'IMG20220930160742.jpg', 'IMG20220930164651.jpg', 'IMG20220930165038.jpg', '30', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(233, 'Brand new 5 bedroom ', '0', '0', '0', '0', '0', '45000000', '0', 'Eneka, Port Harcourt ', '0', 'IMG-20221019-WA0024.jpg', 'Brand new 5 bedroom duplex in Eneka, Port Harcourt for sale for N45m.\r\nTitle:deed\r\nLand size:580sqm\r\nCall Emeka on 08036672086 for more enquiries ', '0', 'Private ', 'House', '0', 'no', '0', '2022-10-19 09:06:19', 'IMG-20221019-WA0020.jpg', 'IMG-20221019-WA0012.jpg', 'IMG-20221019-WA0012.jpg', '1', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(234, 'Crystal park', '0', '0', '0', '0', '0', '8000000', '', 'Elerangbe, Epe', '', 'WhatsApp Image 2022-10-19 at 2.29.04 PM.jpeg', 'Crystal park is a beautiful estate located in the heart of Epe with dry land topology and aslo close to prominent landmarks', '', 'squardetechlimited', 'Land', '600 square metre', 'No', 'Epe', '2022-10-19 09:42:22', 'WhatsApp Image 2022-10-19 at 2.29.04 PM (1).jpeg', 'WhatsApp Image 2022-10-19 at 2.29.05 PM (3).jpeg', 'WhatsApp Image 2022-10-19 at 2.29.05 PM (2).jpeg', '74', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(235, 'Hilton Estate ', '0', '0', '0', '0', '0', '4500000', '', 'Mamukolu Village, Elerangbe, Ibeju - Lekki ', '', 'WhatsApp Image 2022-10-19 at 2.29.05 PM (3).jpeg', '', '', 'Squaredtech limited', 'Land', '600 square metre', 'No', 'Ibeju-Lekki', '2022-10-19 09:51:24', 'WhatsApp Image 2022-10-19 at 2.29.05 PM (1).jpeg', 'WhatsApp Image 2022-10-19 at 2.29.05 PM.jpeg', 'WhatsApp Image 2022-10-19 at 2.29.05 PM (2).jpeg', '74', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(236, 'DEED OF ASSIGNMENT', '0', '0', '0', '0', '0', '500000', '', 'ODE-OMI,IBEJU LEKKI', '', 'IMG_20221020_155840_611.jpg', '', '', 'PWAN GROUP OF COMPAN', 'LAND', '600SQM', 'No', 'LAGOS STATE', '2022-10-20 11:03:58', 'IMG_20221020_155840_611.jpg', 'IMG_20221020_155840_611.jpg', 'IMG_20221020_155840_611.jpg', '98', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(237, 'Government c of o', '0', '0', '0', '0', '0', '75000000', '75000000', '18a, onireke GRA Ibadan', 'www.elsalemhomes.com', '1666277207355.jpg', '5bedroom semi-detached ensuite duplex', 'www.elsalemhomes.com', 'Bitek Constructions ', 'Duplex houses', '450sqm', 'No', '9,000sqm', '2022-10-20 22:04:15', '+234 913 405 0294 20220822_161347.jpg', '1665480558686.jpg', 'png_20220916_044244_0000.png', '205', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(238, 'Survey Approved Plan', '0', '0', '0', '0', '0', '160000000', '', 'Osseo, Akute Ajuwon, Suburb Lagos State', '', 'IMG_20220921_133019.jpg', 'A functioning multipurpose hall that can be used for, School, Church, Mosque, Hall, Bank, Eatery, Restaurant, Shopping Mall, Supermarket and so on.', '', 'Ã€YÃŒNLÃ HOMES AND ', 'A Multipurpose Hall', '', 'No', '2 plots', '2022-10-21 04:57:43', 'IMG_20220921_130422.jpg', 'IMG_20220921_130508.jpg', 'IMG_20220921_130342.jpg', '202', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(239, 'Power of Attorney ', '7', '0', '1', '7', '3', '80000000', '0', 'Green Health Estate Ohi Orlu Road,Imo State.   ', 'Property ', 'VID-20221017-WA0024.mp4', 'Urgent sales alert!!!! \r\n\r\nA Mini Estate Of 2 plots of lands measuring 100 by 100 meters containing: \r\n\r\n4 buildings:\r\n\r\n*First building contain 1 bedroom flat of 4 flats*\r\n\r\n*Second building contain 2 bedroom flats of 2 flats*\r\n\r\n*Third building contain 1 selfcon upstairs and two stores underneath*', 'IMO ', 'Samchukwu properties', 'Residential and commercial ', '1600sqms', 'no', '2000sqms', '2022-10-22 01:57:12', 'IMG-20221015-WA0007.jpg', 'VID-20221017-WA0022.mp4', 'IMG-20221015-WA0008.jpg', '206', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(240, 'House for rent ', '0', '0', '0', '0', '0', '6000000', '', 'Ologolo, Lekki', '', 'IMG-20221024-WA0001.jpg', '4 BEDROOM SEMI-DETACHED DUPLEX WITH BQ\r\n\r\nðŸ“OLOGOLO, LEKKI\r\n\r\nRENT: ðŸ’°â‚¦6M\r\nAgency: 10%\r\nLegal: 5%\r\nCAUTION: ðŸ’°â‚¦500,000K\r\n\r\n__________________________________\r\n\r\nâ–«ï¸Features â–«ï¸\r\nâ€¢ New â€¼ï¸\r\nâ€¢ Self Serviced\r\nâ€¢ En-suite Bedrooms\r\nâ€¢ Two Living Rooms\r\nâ€¢ Solar Inverter \r\nâ€¢ F', '', 'Private ', 'House ', '', 'No', '', '2022-10-23 19:48:24', 'IMG-20221024-WA0002.jpg', 'IMG-20221024-WA0004.jpg', 'IMG-20221024-WA0005.jpg', '1', 'SuperAdmin', '0', '', '', '', '', '', '', '', '', '0'),
(241, 'House for rent ', '0', '0', '0', '0', '0', '4500000', '', 'Victoria Crest 3, Orchid road Lekki', '', 'IMG-20221024-WA0025.jpg', 'Lovely neat serviced 4bedroom Semi detached duplex with bq, nice kitchenette, private compound and all modern estate facilities at Victoria Crest 3 Orchid, Lekki\r\n\r\nRent: 4.5M(Slightly Negotiable) \r\nSC: 45/50K Monthly \r\nPower: Pay as you use', '', 'Private ', 'House ', '', 'No', '', '2022-10-23 19:50:58', 'IMG-20221024-WA0027.jpg', 'IMG-20221024-WA0028.jpg', 'IMG-20221024-WA0030.jpg', '1', 'SuperAdmin', '0', '', '', '', '', '', '', '', '', '0'),
(242, 'Survey and family ag', '0', '0', '0', '0', '0', '12000000', '', 'QUICK SALE PRICE: 12M LOCATION: OLOMORE, ABEOKUTA. If interested, kindly contact us LAKWAN GLOBAL PROPERTIES & CO. on 09074066700 / 08035566273. #propertiesinabeokuta #propertiesinogunstate #realestateinabeokuta #realestateinolomore #realestateinogunstate #landinabeokuta', '', 'FB_IMG_1666516989316.jpg', 'QUICK SALE\r\nPRICE: 12M\r\nLOCATION: OLOMORE, ABEOKUTA.\r\nIf interested, kindly contact us LAKWAN GLOBAL PROPERTIES & CO. on 09074066700 / 08035566273. #propertiesinabeokuta\r\n#propertiesinogunstate\r\n#realestateinabeokuta\r\n#realestateinolomore\r\n#realestateinogunstate\r\n#landinabeokuta', '', 'Owner', '3 Bedroom Flat ', '', 'No', '156', '2022-10-24 04:50:41', 'FB_IMG_1666516989316.jpg', 'FB_IMG_1666517003151.jpg', 'FB_IMG_1666517012343.jpg', '209', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(243, 'A Storey Building', '0', '0', '0', '0', '0', '50000000', '', 'Idimu', '', 'Screenshot_20221024-230717.png', 'A Storey building with Shops and Flats', '', 'Kamfaz Global Networ', 'Land', '', 'No', 'Idimu Road Ikotun', '2022-10-24 18:22:13', 'Screenshot_20221024-230717.png', 'Screenshot_20221024-230717.png', 'Screenshot_20221024-230717.png', '213', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(244, 'Bungalow for sale ', '0', '0', '0', '0', '0', '15000000', '', '', '', 'IMG_20220719_105817_7.jpg', '2 bedrooms flat, 1 bedroom flat and 2 units Self-contained apartments for sale at Aka road, Uyo. ', '', 'Nill', 'Bungalow ', '688', 'No', '688', '2022-10-24 18:40:39', 'IMG_20220719_105531_7.jpg', 'IMG_20220719_105543_7.jpg', 'IMG_20220719_110214_4.jpg', '210', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(245, '4 Bedroom Flats', '0', '0', '0', '0', '0', '50000000', '', 'Bakare Estate', '', 'Screenshot_20221025-000923.png', '4 bedrooms on half plot land.  Location at Bakare estate. Diamond estate side. Iasu Isheri  exp-way. Isheri olofin. lagos. Vacant position.  Title : receipt and survey.  Price #50m. Net.', '', 'Kamfaz Global Networ', 'Residential', '', 'No', 'Lasu Isheri', '2022-10-24 19:17:17', 'Screenshot_20221025-000923.png', 'Screenshot_20221025-000923.png', 'Screenshot_20221025-000923.png', '213', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(246, 'Closeable & Develop ', '0', '0', '0', '0', '0', '50000000', '', 'Henjinwa Street, Ajara Agamathew, Badagry.', '', 'Screenshot_20221025-002040_1666653724765.png', '\r\nCloseable and Developable 1 story building with 4 units of 3 Bedroom flat at Badagry Area.\r\nDocument: Registered survey and family receipt.\r\nPrice: 50m Asking', '', 'Kamfaz Global Networ', '1 Storey Building', '1 Plot', 'No', '', '2022-10-24 19:30:05', 'Screenshot_20221025-002007.png', 'Screenshot_20221025-002124.png', 'Screenshot_20221025-002124.png', '213', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(247, 'Duplex', '0', '0', '0', '0', '0', '100000000', '', 'Itolo street, surulere', '', 'Screenshot_20221025-003543.png', '5 Bedroom Duplex', 'www.kamfazglobalnetwork.com', 'Kamfaz Global Networ', 'Duplex', '', 'No', 'Surulere', '2022-10-24 19:44:58', 'Screenshot_20221025-003543.png', 'Screenshot_20221025-003543.png', 'Screenshot_20221025-003543.png', '213', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(248, 'Deeds of assignment', '5', '1', '1', '6', '1', '75000000', '75000000', '18a, onireke GRA Ibadan', 'www.elsalemhomes.com', 'png_20220916_044244_0000.png', '5 bedroom semi-detached ensuite duplex', 'www.elsalemhomes.com', 'Bitek Constructions ', 'Duplex houses', '450sqm', 'No', '9,000sqm', '2022-10-24 23:53:07', 'FB_IMG_1658919813532.jpg', '+234 913 405 0294 20220822_161347.jpg', 'IMG_20221006_145028.jpg', '205', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(249, '4 Bedroom Duplex', '0', '0', '0', '0', '0', '45000000', '', 'Isheri Olofin/ Idimu, Aro Baba Busstop Lagos', '', 'Screenshot_20221025-092631.png', '4 bedroom duplex and 2 no of flats of 3bedroom all rooms built on 700Sqm ensuit . Registered Survey, Receipt and approved building plan.', '', 'Kamfaz Global Networ', 'Duplex', '', 'No', 'Isheri Idimu', '2022-10-25 04:33:48', 'Screenshot_20221025-092631.png', 'Screenshot_20221025-092631.png', 'Screenshot_20221025-092631.png', '213', 'User', '0', '', '', '', '', '', '', '', '', '0');
INSERT INTO `property` (`id`, `title`, `bedroom`, `hall`, `kitchen`, `bathroom`, `balcony`, `price`, `sqr_price`, `address`, `video`, `image1`, `description`, `location`, `property_owner`, `property_type`, `lot_size`, `status`, `land_area`, `date`, `image3`, `image2`, `image4`, `user_id`, `role`, `uid`, `feature`, `ptype`, `city`, `state`, `mapimage`, `topmapimage`, `groundmapimage`, `totalfloor`, `isFeatured`) VALUES
(250, 'Rebirth Island', '0', '0', '0', '0', '0', '2500000', '', 'Rebirth Island, Arapagi, Bogije Ibeju-Lekki, Lagos', '', 'IMG-20221012-WA0022.jpg', 'Rebirth Island is on a 100% Dryland, having Government Allocated Excision as its title, meaning it is free from any government acquisition. This estate has a dual entryway, by sea using canoe, speed Engine Boat, through the popular Bogije market and by road through Elerangbe by Foltar filling statio', '', 'Advanced Homes & Pro', 'Land', '450 SQM Per plot', 'No', 'Arapagi, Ibeju-Lekki', '2022-10-25 06:02:48', 'IMG-20221014-WA0007.jpg', 'IMG-20221012-WA0038.jpg', 'IMG-20221012-WA0021.jpg', '211', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(251, 'Bank Estate', '0', '0', '0', '0', '0', '7500000', '', 'Bank Estate, Along Bolanle Ambode Expressway, Poka, Epe, Lagos', '', 'IMG-20211104-WA0007.jpg', 'Bank Estate commercial is basically for the industrial development of all kinds such as schools, hotels, clinics, restaurants, children playing grounds, shopping complexes, Malls, Banks, offices etc', '', 'Aso Real Estate Limi', 'Commercial Land', '450 SQM Per plot', 'No', 'Poka, Epe,', '2022-10-25 06:19:55', 'azoo estate 9.jpg', 'FB_IMG_1665053765873.jpg', 'IMG-20221018-WA0014.jpg', '211', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(252, 'C of O ', '0', '0', '0', '0', '0', '35000000', '', 'Ijegun ikotun road Lagos ', '', 'IMG-20221025-WA0011.jpg', '3 bedroom flat bungalow on a full plot of land close to the main road with modern facilities in good location. ', '', 'Mr Johnson ', 'Three bedroom bungalow ', 'Full plot of land ', 'yes', '', '2022-10-25 06:46:54', 'IMG-20221025-WA0005.jpg', 'IMG-20221025-WA0010.jpg', 'IMG-20221025-WA0004.jpg', '217', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(253, '2 bedroom flat to le', '2', '0', '1', '3', '2', '1000000', '', 'Isheri Opic GRA Ojodu Berger channels TV Road Lagos ', '', 'IMG_20221022_144803_479.jpg', '', '', 'Mr Femi ', 'Blocks of 2 Bedroom flat ', '1200', 'No', '', '2022-10-25 17:53:23', 'IMG_20221022_143945_310.jpg', 'IMG_20221022_144610_137.jpg', 'IMG_20221022_143655_204.jpg', '222', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(254, 'R of O', '0', '0', '0', '0', '0', '800000000', '', 'Secretariat Rd., Gwagwalada, Abuja', 'Non', 'IMG_20221021_110410_348.jpg', 'Land Size: 2,600Sqm\r\nComprising of Three Open Floors measuring 735 Sqm on Each Floors with a Two Bedroom Pent House on the Third (3) Floor\r\n \r\n', '', 'Mr Clement', 'Three Storey Building ', '735 Sqm', 'yes', '2600 Sqm', '2022-10-25 21:32:57', 'IMG_20221021_111601_593.jpg', 'IMG_20221021_110322_887.jpg', 'IMG_20221021_111556_166.jpg', '219', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(255, 'R of O', '0', '0', '0', '0', '0', '800000000', '', 'Secretariat Rd., Gwagwalada, Abuja', 'Non', 'IMG_20221021_110410_348.jpg', 'Land Size: 2,600Sqm\r\nComprising of Three Open Floors measuring 735 Sqm on Each Floors with a Two Bedroom Pent House on the Third (3) Floor\r\n \r\n', '', 'Mr Clement', 'Three Storey Building ', '735 Sqm', 'yes', '2600 Sqm', '2022-10-25 21:32:58', 'IMG_20221021_111601_593.jpg', 'IMG_20221021_110322_887.jpg', 'IMG_20221021_111556_166.jpg', '219', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(256, 'Rvof O', '0', '0', '0', '0', '0', '12000000', '', 'Back of Fort Royal Estate, Airport Road, after Acco Rstate', '', 'Screenshot_20221005-085645.jpg', 'Land at the back of Fort Royal Estate, Airport Road, Abuja. Price: #12 Million Naira ', '', 'Xxx', 'Land', '2007.13 Sqm', 'No', 'Kyami District ', '2022-10-25 21:46:24', 'Screenshot_20221005-085645.jpg', 'Screenshot_20221005-085645.jpg', 'Screenshot_20221005-085645.jpg', '219', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(257, 'Rvof O', '0', '0', '0', '0', '0', '12000000', '', 'Back of Fort Royal Estate, Airport Road, after Acco Rstate', '', 'Screenshot_20221005-085645.jpg', 'Land at the back of Fort Royal Estate, Airport Road, Abuja. Price: #12 Million Naira ', '', 'Xxx', 'Land', '2007.13 Sqm', 'No', 'Kyami District ', '2022-10-25 21:46:27', 'Screenshot_20221005-085645.jpg', 'Screenshot_20221005-085645.jpg', 'Screenshot_20221005-085645.jpg', '219', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(258, 'Deed of conveyance ', '0', '0', '0', '0', '0', '189000000', '7000000', 'Shell coporative, G.U.Ake road, Eliozu, Portharcourt, Rivers. Nigeria ', '', 'Screenshot_20221026-093114.png', '', '', 'My client ', 'Land', '27plots', 'No', '12,555 Sq.m', '2022-10-26 04:37:52', 'Screenshot_20221026-093119.png', 'Screenshot_20221026-093052.png', 'Screenshot_20221026-093109.png', '221', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(259, 'Deed of assignment,e', '0', '0', '0', '0', '0', '6000000', '648', 'Off oriba road,Eleranigbe', '', 'IMG-20221024-WA0029.jpg', '*Genuine Solid Dry Plots on Bethel Gardens* \r\n\r\nAmazing opportunity to own your own acre of land\r\n *Buy one Plot of Solid Dry Land with only N600,000.00!!!!* \r\n\r\n\r\nMassive opportunity to own plots & acres in a fast rising/developing area.\r\n\r\nWork Has Started! Eleranigbe is rapidly developing! Houses', '', 'Agent', 'Land', '648', 'yes', 'Ibeju Lekki', '2022-10-26 09:48:36', 'IMG-20221026-WA0053.jpg', 'IMG-20221026-WA0054.jpg', 'IMG-20221024-WA0030.jpg', '215', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(260, '3 blocks of 3 bedroo', '0', '0', '0', '0', '0', '120000000', '', 'Dopemu Iyana Ipaja Lagos', '', 'IMG_20221004_103602_641.jpg', 'Accessible to Lagos Island ', '', 'Mr Femi ', 'Blocks of 3 bedroom flat ', '450', 'yes', '850', '2022-10-26 14:56:13', 'IMG_20221019_121231_072.jpg', 'IMG_20221022_144708_176.jpg', 'IMG_20221019_121256_704.jpg', '222', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(261, 'DISTRESS ðŸ‘·ðŸ¾â€', '0', '0', '0', '0', '0', '165', '', 'Lekki County Home Ikota. ', '', 'IMG-20221026-WA0113.jpg', 'DISTRESS ðŸ‘·ðŸ¾â€â™‚ï¸\r\n\r\nLUXURY 5BEDROOM  FULLY DETACHED DUPLEX FOR SALE \r\nAmenities: \r\n- [ ] 5BEDROOM \r\n- [ ] Fitted Kitchen with accessories \r\n- [ ] Modern Day POP Ceiling \r\n- [ ] Detailed finishing \r\n- [ ] Wardrobes \r\n- [ ] Bq \r\n- [ ] Jacuzzi\r\n- [ ] CCTV \r\n- [ ] Automated Light\r\n- [ ] Water ', '', 'QLB Luxury Home ', 'House ', '600Sqm ', 'No', '600Sqm ', '2022-10-26 16:50:14', 'IMG-20221026-WA0106.jpg', 'IMG-20221026-WA0110.jpg', 'IMG-20221026-WA0108.jpg', '63', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(262, 'drug manufacturing f', '0', '0', '0', '0', '0', '2000000000', '', 'Industrial layout Owerri ', '', '20220819_170345.jpg', 'Over 4 hectares industrial layout in Owerri. the land C/O with a drug manufacturing factory in the land . Price 2 billion. \r\nIs a very good location', '', 'David laboratory ', 'drug manufacturing factory', '4 hectares ', 'No', '', '2022-10-27 03:14:21', '20220819_170924.jpg', '20220819_170917.jpg', '20220819_170959.jpg', '224', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(263, 'Deed of Conveyance', '0', '0', '0', '0', '0', '850000000', '', 'Refinary Road Eleme ', '', '20220819_170345.jpg', '7.3 Hectares Dry Land at Eleme, Port Harcourt very close to the Porthacourt Refinary and Gas Turbine Station.\r\n', '', 'Christaben Group Ltd', 'Land ', '7.3 hectares ', 'No', '', '2022-10-27 03:21:34', '20220819_170924.jpg', '20220819_170917.jpg', '20220819_170959.jpg', '224', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(264, 'Receipt and Survey p', '0', '0', '0', '0', '0', '45000000', '648', 'Ikotun - Igando road off college bus-stop Ikotun Lagos ', '3bsaetujokgd', 'VID-20221024-WA0011.mp4', 'Six 2bedroom flat and one 3 bedroom flat, fence round with gate, Aluminum roof, on full plot of land ', '0gh7dstgkok', 'Mr kunle', 'Block of 7 flat ', '60 by 120', 'No', 'A plot of land ', '2022-10-27 03:39:43', 'IMG-20221024-WA0010.jpg', 'IMG-20221024-WA0010.jpg', 'IMG-20221024-WA0007.jpg', '217', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(265, 'Estate Lands for sal', '0', '0', '0', '0', '0', '6000000', '', 'Shimawa, Ogun State ', '', 'IMG-20221027-WA0000.jpg', 'Become a landlord and say goodbye to tenant Wahala. Secure a plot of land in any of our Estates in the following locations (1) Behind High Impact, Magboro, (2) Behind Estate 15, Redemption Camp, (3) Shimawa Ogun State. Office Address: Good Success property @ Rainoil Complex opposite MFM camp, along ', '', 'Good Success Propert', 'Land ', '', 'No', '', '2022-10-27 09:10:42', 'IMG-20221027-WA0002.jpg', 'IMG-20221027-WA0001.jpg', 'IMG-20221027-WA0003.jpg', '1', 'SuperAdmin', '0', '', '', '', '', '', '', '', '', '0'),
(266, 'Deed of Conveyance', '0', '0', '0', '0', '0', '40000000', '', 'Trans amandi', '', 'Screenshot_20221027-082621_WhatsApp.jpg', '350 plots at Mkpogu opposite LNG (40m per plot)(with DofC)', '', 'Private', 'Lane ', '113 plots', 'No', '', '2022-10-27 09:15:16', 'Screenshot_20221027-082550_WhatsApp.jpg', 'Screenshot_20221027-082628_WhatsApp.jpg', 'Screenshot_20221027-082544_WhatsApp.jpg', '224', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(267, 'Certificate of occup', '0', '0', '0', '0', '0', '40000000', '', 'Trans amandi', '', 'Screenshot_20221027-082620_WhatsApp.jpg', '113 plots at Mkpogu opposite LNG (40m per plot) (with CofO)', '', 'General purpose ', 'Land', '113 plots ', 'No', '', '2022-10-27 09:26:11', 'Screenshot_20221027-082530_WhatsApp.jpg', 'Screenshot_20221027-082629_WhatsApp.jpg', 'Screenshot_20221027-082628_WhatsApp.jpg', '224', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(268, 'C of O ', '0', '0', '0', '0', '0', '25000000', '', 'Trans amandi', '', 'Screenshot_20221027-082527_WhatsApp.jpg', '46 plots at Woji, shares boundary with Rumibekwe, (25m per plot) (with CofO) contact 08073519561', '', 'General purpose ', 'Land ', '46 plots', 'No', '', '2022-10-27 10:26:32', 'Screenshot_20221027-082647_WhatsApp.jpg', 'Screenshot_20221027-082525_WhatsApp.jpg', 'Screenshot_20221027-082623_WhatsApp.jpg', '224', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(269, 'C of O', '0', '0', '0', '0', '0', '35000000', '', 'Trans amandi', '', 'Screenshot_20221027-082620_WhatsApp.jpg', '24 plots @ Trans-Amadi close to DHL (35m per plot) (with CofO) contact 08073519561', '', 'General purpose ', 'Land ', '24 plots', 'No', '', '2022-10-27 10:29:24', 'Screenshot_20221027-082601_WhatsApp.jpg', 'Screenshot_20221027-082537_WhatsApp.jpg', 'Screenshot_20221027-082629_WhatsApp.jpg', '224', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(270, 'C of O ', '0', '0', '0', '0', '0', '55000000', '', 'Trans amandi', '', 'Screenshot_20221027-082601_WhatsApp.jpg', '15 plots along Trans-Amadi (55m per plot) (with CofO)contact 08073519561', '', 'General purpose ', 'Land ', '15 plots', 'No', '', '2022-10-27 10:35:33', 'Screenshot_20221027-082530_WhatsApp.jpg', 'Screenshot_20221027-082629_WhatsApp.jpg', 'Screenshot_20221027-082533_WhatsApp.jpg', '224', 'User', '0', '', '', '', '', '', '', '', '', '0'),
(273, 'Become a landlord ', '0', '0', '0', '0', '0', '1', '23000', 'Good Success property @ Rainoil Complex opposite MFM camp, along Lagos Ibadan express way. Magboro, Ogun state', '', '63e9d1def4ce4dc4b2fb76f110ad495f.jpg', '', '', 'Good Success Estate and Project Limited', 'land', '600 SQM', 'available', 'Redemption camp', '2022-11-05 03:01:15', '555551f033a24973b2fe59def1607a19.jpg', 'e6b55c75abdc4ab4b6c722c6103e1771.jpg', '1d38657f6df4429e89bee103fcaa5db8.jpg', '0', 'User', '3', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : No</span></li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : No</span></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : Land</span></li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : 0</span></li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'sale', 'Simawa', 'Ogun', '', '', '', '1 Floor', '0'),
(274, 'C of O', '0', '0', '0', '0', '0', '450', '', 'King perekule street GRA', '', 'IMG-20221103-WA0051.jpg', '<p>For Sale</p>\r\n<p>&nbsp;</p>\r\n<p>5 Bedrooms Duplex With 2 Bedrooms Bungalow &amp; 4 rooms Boysquarters Located In A Great Location In New Gra Phase 2 Portharcourt.</p>\r\n<p>&nbsp;</p>\r\n<p>Perfect For Residential &amp; Office Use</p>\r\n<p>&nbsp;</p>\r\n<p>POPULAR LANDMARKS INCLUDE</p>\r\n<p>&gt; Polo Club</p>\r\n<p>&gt; Market Square&nbsp;</p>\r\n<p>&gt; Genesis Deluxe Cinema</p>\r\n<p>PROPERTY ADDRESS</p>\r\n<p>&nbsp;</p>\r\n<p>Price - N450 million Negotiable</p>\r\n<p>Land Size - Almost 3 Plots</p>\r\n<p>Title Document - C Of O</p>\r\n<p>&nbsp;</p>\r\n<p>FOR SERIOUS CLIENTS ONLY</p>\r\n<p>To Inspect &amp; Buy This Property</p>\r\n<p>&nbsp;</p>\r\n<p>+2348121578931</p>', '', 'My client ', 'building', '3plots', 'available', 'Polo club, Genesis delux cinema, market square ', '2022-11-05 03:09:36', 'IMG-20221103-WA0052.jpg', 'IMG-20221103-WA0048.jpg', 'IMG-20221103-WA0050.jpg', '2147483647', 'User', '3', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : above 10years</span></li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : No</span></li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : buildings</span></li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : More than&nbsp;</span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : No</span></li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : No</span></li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>&nbsp;Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'sale', 'Portharcourt ', 'Rivers', '', '', '', '1 Floor', '0'),
(275, 'C of O', '3', '1', '1', '3', '1', '35', '35million ', '8 Valentino drive, prime estate opposite games village ', '', 'b56fa46fd1a0494ea9b445a73077e24e.mp4', '<p>3 units of 3 bedroom terraces seated on a 250sqm located at lugbe Airport road. Just opposite trademore sevond gate.</p>', '', 'Green Atlas ', 'house', '250sqm', 'available', 'Voice of Nigeria', '2022-11-05 03:46:21', '46e4a225fec84b9ca8aad792afbd4faa.jpg', 'd78c697a28a444eab3cb1c1bbfc348a0.mp4', '3c1667967d57497ea46918e8d907528c.jpg', '0', 'User', '3', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'sale', 'Abuja', '', '461b2e9ba85c42e9bfb85244c77c2f18.jpg', 'acde60fc4206431d94bc722af31304aa.mp4', '', '1 Floor', '0'),
(276, 'C Of O', '3', '1', '1', '3', '1', '5', '4.5million', '8 Valentino drive, prime estate opposite games village ', '', 'c7f69caa10ac4c7a9b24816f614aacb4.jpg', '<p>Estate plot land at different sizes located at lugbe Airport road.</p>', '', 'Green Atlas ', 'land', '450sqm', 'available', 'Voice of Nigeria', '2022-11-05 03:53:13', 'IMG-20220219-WA0002.jpg', '9c36dc4431a84683bbd586f3535d7cf4.mp4', '', '0', 'User', '3', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'sale', 'Abuja', '', '', '', '', '1 Floor', '0'),
(277, 'Newly built 1 & 2 bedroom apartments ', '2', '0', '1', '2', '0', '40000000', '', 'Orchid, Lekki Lagos ', '', 'IMG_20221104_120953_093.jpg', '<p>Apartment for Sale</p>\r\n<p>&mdash;</p>\r\n<p>(Suitable for Short-let&rsquo;s and Rentals)</p>\r\n<p>ðŸ¡ 1 Bed, 1 Bath - 35M</p>\r\n<p>ðŸ¡ 2 Bed, 2 Bath - 40M</p>\r\n<p>&nbsp;</p>\r\n<p>ðŸ“ Orchid, Lekki, Lagos&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&mdash;</p>\r\n<p>Features:</p>\r\n<p>All rooms En-suite | POP Ceiling | Large Living Area | Fitted Kitchen | Water heater | High Ceiling | Large Master&rsquo;s Room | Walk-In Shower | Gated Estate</p>', '', '', 'apartment', '', 'available', '', '2022-11-05 04:09:39', 'IMG_20221104_120953_222.jpg', 'IMG_20221104_120953_136.jpg', 'IMG_20221104_120953_449.jpg', '0', 'User', '3', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : Brand new</span></li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : no</span></li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : no</span></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : 6 people</span></li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'sale', 'Lekki', 'Lagos', '', '', '', '', '0'),
(278, 'Bungalow for sale ', '5', '0', '4', '5', '2', '14000000', '', 'Aka road ', '', 'IMG_20220719_105543_7.jpg', '<p>Bungalow consisting of 2 flats and 2 selfcon at Aka road by Ring road 3 going for 15m&nbsp;</p>', '', 'Jerome ', 'building', '680', 'available', 'Ring road 3', '2022-11-05 04:46:07', '', 'IMG_20220719_105815_9.jpg', 'IMG_20220719_105531_7.jpg', '0', 'User', '3', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : 5</span>&nbsp;Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : No</span></li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : No</span></li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'sale', 'Uyo', 'Akwa Ibom', '', '', '', '1 Floor', '0'),
(279, 'A BUILDING FOR SALES', '1', '1', '1', '3', '1', '35000000', '', 'ADRON ESTATE SHIMAWA PHASE 1', '', 'EB27B159-CE56-4E2C-BE26-46913E061ECF.jpeg', '<p>A BUILDING FOR SALES AT ADRON ESTATE SHIMAWA PHASE 1</p>', '', 'Thomas Adebisi ogunnupe ', 'building', '648', 'available', 'Redeem camp', '2022-11-05 06:59:25', 'B949C987-9646-40B5-A52F-E4223D4D7B21.jpeg', 'FAF8C0B8-427C-459B-B415-3CA4B22E5CBF.jpeg', '', '0', 'User', '3', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'sale', 'Nigeria', 'Ogun', '', '', '', '1 Floor', '0'),
(280, '5 OF PLOTS OF LANDS FOR SALES ALONG LEKKI EPE EXPRESS WAY', '0', '0', '0', '0', '0', '350000000', '70000000', 'Elemoro Ibeju lekki', '', '97710CE8-B12F-4B04-A458-CC1416838F78.jpeg', '<p>5 plots of land facing the express at Elemoro in Ibeju-Lekki Lagos. Each plot costs seventy million naira, and the whole thing is worth 350 million naira excluding 5% agent commission ,you can contact me on this line 07059252338</p>', '', 'Clogoil system limited', 'land', '3178', 'available', 'Ajah', '2022-11-05 07:12:24', '6272C831-8260-4483-8D99-9FD32A4B6C29.jpeg', '470B3F7A-4CED-4C59-823E-9F4C6DF0C8D9.jpeg', '1D78C445-63DE-49AD-B91A-C83A70AAFF43.jpeg', '0', 'User', '3', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'sale', 'Lagos', 'Lagos', '', '', '', '', '0'),
(281, 'House ', '0', '0', '0', '0', '0', '111000000', '', '', '', '', '<p>For sale</p>', '', '', 'villa', '', 'available', '', '2022-11-05 07:21:32', '', '', '', '0', 'User', '3', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'sale', 'Owerri ', 'Imo', '', '', '', '', '0'),
(282, '3 bedroom', '0', '0', '0', '0', '0', '1', '', 'owerri', '', '', '<p>hi hi dksjfkdsfkjdsdsbfsdkflfkfj</p>', '', '', 'land', '', 'available', 'Nigeria', '2022-11-05 09:00:36', '', '', '', '0', 'User', '3', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'sale', 'owerri', 'Imo', '', '', '', '', '0'),
(283, 'A GORGEOUS YET AFFEDABLE 4 BEDROOMS COUNTRY HOME DUPLEX FOR SALE', '4', '0', '1', '4', '0', '55000000', '', '9  ADOGA STREET, IJAYE  OJOKORO', '', 'ADEGA PROP 1.mp4', '<p>You will love this delightful 4 bedroom country home duplex also including 2 bedroom boys quarter.<br />All rooms ensued.<br /><br />Master bedroom comes with Jacques bath and modern toilet system.</p>\r\n<p>&nbsp;</p>\r\n<p>The interior is comes with modern architecture.</p>\r\n<p>Facilities: Active Borehole is in place, Security Fence, all convenience are functioning perfectly.<br />A whooping 10% to 20% discount available for early caller.</p>\r\n<p><br />Tile: Registered survey and Federal Government offer Letter of Allotment.</p>', '', 'G-ESSENCE REALTOR', 'house', '', 'available', 'IJAYE OJOKORO / MEIRAN LAGOS.', '2022-11-05 09:04:19', 'ADOGA IMG 1.jpg', 'ADOGA PROP 2.mp4', 'ADOGA IMG 2.jpg', '0', 'User', '3', '<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'sale', 'LAGOS', 'Lagos', 'ADOGA IMG 6.jpg', 'ADOGA IMG 7.jpg', 'ADOGA IMG 12.jpg', '', '0'),
(285, 'A GORGEOUS  YET AFFORDALE 4 BEDROOMS COUNTRY HOME DUPLEX FOR SALE', '4', '0', '1', '0', '1', '55000000', '', '9 ADOGA STREET IJAYE OJOKORO LAGOS', '', 'ADOGA IMG 1.jpg', '<p>You will love this delightful 4 bedroom country home duplex also including 2 bedroom boys quarter.<br />All rooms ensued.<br /><br />Master bedroom comes with Jacques bath and modern toilet system. The interior comes with modern architecture.</p>\r\n<p><br />Facilities: Active Borehole is in place, Security Fence, all convenience are functioning perfectly.<br />A whooping 10% to 20% discount available for early caller.</p>\r\n<p><br />Tile: Registered survey and Federal Government offer Letter of Allotment.</p>', '', 'G-ESSENSE REALTOR', 'house', '', 'available', 'IJAIYE OJOKORO/ MERAN  LAGOS', '2022-11-05 09:54:04', 'ADOGA IMG 2.jpg', 'ADOGA PROP 2.mp4', 'ADOGA IMG 12.jpg', '0', 'User', '3', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'sale', 'LAGOS', 'Lagos', 'ADOGA IMG 5.jpg', 'ADOGA IMG 3.jpg', 'ADOGA IMG 10.jpg', '1 Floor', '0'),
(286, 'AN OLD 6 UNITS OF 2BEDROOM DUPLEX  FOR SALE', '6', '0', '4', '6', '2', '50000000', '', '13  Awopeju Street, Iju Ishaga Lagos.', '', '20220627_131504.jpg', '<p>Address:No 13 Awopeju street, Iju Ishaga Lagos.</p>\r\n<p>-Title: C of O.</p>\r\n<p>Topography: 100% dry.</p>\r\n<p>Environment:Serene and peaceful.</p>\r\n<p><br />Early Bird get a 10% discount. This if for a limited time.</p>\r\n<p><br />Why are you still waiting call now and enjoy the 10% discount before it fall into someone else.</p>', '', '', 'house', '', 'available', 'Iju Ishaga Roud About.', '2022-11-05 10:27:22', '20220627_131429.jpg', '20220627_131152.jpg', '20220627_131300.jpg', '0', 'User', '3', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'sale', 'Lagos ', 'Lagos', '20220627_131237.jpg', '', '', '1 Floor', '0'),
(287, 'AN EXOTIC DUPLEX AND BUNGALOW  FOR SALE ', '4', '0', '1', '4', '0', '55000000', '', '9 ADEGA STREET IJAYE OJOKORO LAGOS.', '', '20220801_114815.jpg', '<p>PROPERTY SITUATED AT 13 ADOGA STREET SIWOKU VILLIAGE IN IJAYE OJOKORO LAGOS.</p>\r\n<p><br />IT IS ON 663.101 SQR METER ON WHICH A 4BEDROON DUPLEX IS BUILT AND A DUPLEX. A SMALL GARDEN. IT SITUATED IN A CORNER PIECE.</p>\r\n<p><br />TITLE: LAND UNDER DEED OF LEASE FEDERAL GOVERNMENT OFFER LETTER AND REGISTERD SURVEY .</p>\r\n<p><br />NEIGHBORHOOD:<br />-Lagos Abeokuta Express Way<br />- Businesses<br />-Meran community<br />-Nigerian Army cantonment<br />-A serene environment with more<br />than 3 access road.</p>\r\n<p><br />This house come with a discount of 10% available only to the first buyer who acts NOW.</p>', '', 'G- ESSECE REALTOR', 'house', '', 'available', '', '2022-11-05 10:41:45', '20220801_114900.jpg', '20220801_114900.jpg', '', '0', 'User', '3', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'sale', 'LAGOS', 'Lagos', '20220801_115047.jpg', '20220801_114843.jpg', '', '1 Floor', '0'),
(288, 'Adron homes and properties', '3', '2', '1', '4', '3', '0', '', 'Elebu estate, Akala express Ibadan.', '', 'VID-20221022-WA0014(2).mp4', '', '', 'R. E. E Divine ', 'house', '400sqm', 'available', '', '2022-11-05 18:50:35', '', '', '', '0', 'User', '3', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'sale', 'Ibadan', 'Oyo', '', '', '', '1 Floor', '0'),
(289, 'Fully furnished 2 bedroom Apartment in Ikate Lekki', '2', '0', '1', '2', '0', '65000', '', '5 Gbangbala Street, Elegushi', '', 'IMG-20220726-WA0152.jpg', '', '', '', 'apartment', '', 'available', 'Ican Unisex Saloon and Spa', '2022-11-05 18:54:26', 'IMG-20220726-WA0184.jpg', 'IMG-20220726-WA0155.jpg', 'IMG-20220726-WA0172.jpg', '0', 'User', '3', '<!---feature area start--->\r\n<div class=\"col-md-4\">&nbsp;</div>\r\n<p>24hrs electricity</p>\r\n<p>Free parking</p>\r\n<p>Wifi</p>\r\n<p>DStv&nbsp;</p>\r\n<p>Netflix</p>', 'rent', 'Lekki, Ikate ', 'Lagos', 'IMG-20220726-WA0187.jpg', 'IMG-20220726-WA0208.jpg', 'IMG-20220726-WA0195.jpg', '', '0'),
(290, 'Furnished 3 bedroom Shortlet in Ikate Lekki', '3', '0', '1', '3', '0', '75000', '', '5 Gbangbala Street, Elegushi', '', 'IMG-20220507-WA0010.jpg', '<p>This nicely furnished 3 bedroom apartment is available for booking in Lekki-ikate, Lagos. This property is located in a serene estate environment with Uniform security.</p>', '', 'Peters Clinton', 'apartment', '', 'available', 'Nigeria', '2022-11-05 19:01:50', 'IMG-20220726-WA0190.jpg', 'IMG-20220726-WA0196.jpg', 'IMG-20220726-WA0214.jpg', '0', 'User', '3', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : Shortlet</span></li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : 8</span>&nbsp;People</li>\r\n<li><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\">Netflix: Yes</li>\r\n<li class=\"mb-3\">DStv: Yes</li>\r\n<li class=\"mb-3\">Wifi: Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">&nbsp;</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'rent', 'Lekki, Ikate ', 'Lagos', 'IMG-20220726-WA0200.jpg', 'IMG-20220726-WA0205.jpg', '', '2 Floor', '0'),
(291, 'Studio Apartment', '1', '0', '1', '1', '0', '45000', '', '5 Gbangbala Street, Elegushi', '', 'IMG-20220507-WA0001.jpg', '<p>Colorfully furnished Studio apartment</p>', '', '', 'apartment', '', 'available', 'Nigeria', '2022-11-05 19:07:42', 'IMG-20220507-WA0003.jpg', 'IMG-20220507-WA0002.jpg', 'IMG-20220507-WA0005.jpg', '0', 'User', '3', '<p>Free parking</p>\r\n<p>Wifi</p>\r\n<p>DStv</p>\r\n<p>Netflix</p>\r\n<p>24hrs power</p>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'rent', 'Lekki, Ikate ', 'Lagos', 'IMG-20220507-WA0020.jpg', '', '', '', '0'),
(300, '5 bedroom mansion ', '5', '0', '1', '7', '0', '800000000', '', 'Ikoyi ', '', 'IMG-20221102-WA0010.jpg', '<p>*DISTRESS SALE*&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>*PRICE SLASH*&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>*FOR SALE* âœ…âœ…</p>\r\n<p>&nbsp;</p>\r\n<p>*MAGNIFICENTLY SPACED MOST AFFORDABLE 5 BED FULLY DETACHED MANSION WITH SWIMMING POOL, ELEVATOR, CINEMA.*</p>\r\n<p>*</p>\r\n<p>&nbsp;</p>\r\n<p>**LOCATION**:*ðŸ“IKOYI, LAGOS</p>\r\n<p>&nbsp;</p>\r\n<p>*OLD PRICE:* 800M Naira&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>*DISTRESS PRICE*; 650M Naira net</p>\r\n<p>&nbsp;</p>\r\n<p>- Exquisite Detailed Finishing</p>\r\n<p>- Spacious Compound</p>\r\n<p>- Swimming Pool</p>\r\n<p>- Private Elevator</p>\r\n<p>- Control Room&nbsp;</p>\r\n<p>- Cinema</p>\r\n<p>- Indoor Bar</p>\r\n<p>- Spacious Fully Fitted Kitchen</p>\r\n<p>- 1 kitchenette</p>\r\n<p>- Stamp Concrete Floor</p>\r\n<p>- Gate House</p>\r\n<p>- Kitchenette&nbsp;</p>\r\n<p>- Walk-in Closets</p>\r\n<p>- Family Lounge</p>\r\n<p>- Integrated Audio System</p>\r\n<p>- Beautiful Lightings</p>\r\n<p>- Open Terrace</p>\r\n<p>- Affluential Neighbourhood&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>*</p>', '', 'Private ', 'house', '', 'available', '', '2022-11-06 18:08:06', '', 'IMG-20221106-WA0004.jpg', '', '233', 'User', '3', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'sale', 'Ikoyi ', 'Lagos', '', '', '', '', '0'),
(307, '5 bedroom mansion for sale ', '5', '0', '1', '6', '0', '650000000', '', 'Ikoyi ', '', 'IMG-20221106-WA0005.jpg', '<p>*DISTRESS SALE*&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>*PRICE SLASH*&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>*FOR SALE* âœ…âœ…</p>\r\n<p>&nbsp;</p>\r\n<p>*MAGNIFICENTLY SPACED MOST AFFORDABLE 5 BED FULLY DETACHED MANSION WITH SWIMMING POOL, ELEVATOR, CINEMA.*</p>\r\n<p>*</p>\r\n<p>&nbsp;</p>\r\n<p>**LOCATION**:*ðŸ“IKOYI, LAGOS</p>\r\n<p>&nbsp;</p>\r\n<p>*OLD PRICE:* 800M Naira&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>*DISTRESS PRICE*; 650M Naira net</p>\r\n<p>&nbsp;</p>\r\n<p>- Exquisite Detailed Finishing</p>\r\n<p>- Spacious Compound</p>\r\n<p>- Swimming Pool</p>\r\n<p>- Private Elevator</p>\r\n<p>- Control Room&nbsp;</p>\r\n<p>- Cinema</p>\r\n<p>- Indoor Bar</p>\r\n<p>- Spacious Fully Fitted Kitchen</p>\r\n<p>- 1 kitchenette</p>\r\n<p>- Stamp Concrete Floor</p>\r\n<p>- Gate House</p>\r\n<p>- Kitchenette&nbsp;</p>\r\n<p>- Walk-in Closets</p>\r\n<p>- Family Lounge</p>\r\n<p>- Integrated Audio System</p>\r\n<p>- Beautiful Lightings</p>\r\n<p>- Open Terrace</p>\r\n<p>- Affluential Neighbourhood&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>*</p>', '', 'Private ', 'house', '', 'available', '', '2022-11-06 20:31:53', 'IMG-20221106-WA0011.jpg', 'IMG-20221106-WA0010.jpg', 'IMG-20221106-WA0006.jpg', '233', 'User', '3', 'none avaliable', 'sale', 'Ikoyi ', 'Lagos', '', '', '', '', '0');
INSERT INTO `property` (`id`, `title`, `bedroom`, `hall`, `kitchen`, `bathroom`, `balcony`, `price`, `sqr_price`, `address`, `video`, `image1`, `description`, `location`, `property_owner`, `property_type`, `lot_size`, `status`, `land_area`, `date`, `image3`, `image2`, `image4`, `user_id`, `role`, `uid`, `feature`, `ptype`, `city`, `state`, `mapimage`, `topmapimage`, `groundmapimage`, `totalfloor`, `isFeatured`) VALUES
(308, '4 bedroom duplex for sale', '4', '0', '1', '5', '0', '54000000', '', 'Ikota, Lekki ', '', 'IMG-20221106-WA0009.jpg', '<p>Distress sales!!</p>\r\n<p>4BEDROOM SEMI DETACHED DUPLEX FOR SALE&nbsp;</p>\r\n<p>Amenities:&nbsp;</p>\r\n<p>- [ ] 4BEDROOM&nbsp;</p>\r\n<p>- [ ] Fitted Kitchen with accessories&nbsp;</p>\r\n<p>- [ ] Modern Day POP Ceiling&nbsp;</p>\r\n<p>- [ ] Detailed finishing&nbsp;</p>\r\n<p>- [ ] Wardrobes&nbsp;</p>\r\n<p>- [ ] Jacuzzi</p>\r\n<p>- [ ] CCTV&nbsp;</p>\r\n<p>- [ ] Water heater</p>\r\n<p>- [ ] Heat extractor&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Location: IKOTA LEKKI&nbsp;</p>\r\n<p>ðŸ“ŒPrice: 54million</p>', '', 'Private ', 'house', '', 'available', '', '2022-11-06 20:45:11', 'IMG-20221106-WA0007.jpg', 'IMG-20221106-WA0000.jpg', '', '233', 'User', '3', 'none avaliable', 'sale', 'Ikota, Lekki ', 'Lagos', '', '', '', '', '0'),
(309, '5 bedroom smart home for sale ', '5', '0', '1', '6', '0', '430000000', '', 'Victory Park Estate, Osapa London, Lekki phase 1 ', '', 'IMG-20221106-WA0020.jpg', '<p>Luxurious and very spacious 5 bedroom smart home penthouse in a secured and habitable Estate with great ambience.</p>\r\n<p>&nbsp;</p>\r\n<p>Location: Victory park Estate, Osapa London, Lekki, Lagos.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Price 430m âœ… .&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Equipped with modern day Amenities like:&nbsp;</p>\r\n<p>âœ… New</p>\r\n<p>âœ… 5 bedroom</p>\r\n<p>âœ… Penthouse</p>\r\n<p>âœ… Fully fitted kitchen&nbsp;</p>\r\n<p>âœ… Modern day Pop ceiling</p>\r\n<p>âœ… Detailed finishing&nbsp;</p>\r\n<p>âœ… Wardrobes&nbsp;</p>\r\n<p>âœ… Closet</p>\r\n<p>âœ… Facelock and fingerprint&nbsp;</p>\r\n<p>âœ… Interlocked street&nbsp;</p>\r\n<p>âœ… CCTV&nbsp;</p>\r\n<p>âœ… 24 hours security&nbsp;</p>\r\n<p>âœ… All rooms en suite&nbsp;</p>\r\n<p>âœ… Water heater&nbsp;</p>\r\n<p>âœ… Sound proof Cinema&nbsp;</p>\r\n<p>âœ… Private balcony&nbsp;</p>\r\n<p>âœ… Executive living area&nbsp;</p>\r\n<p>âœ… Designated parking lot</p>\r\n<p>âœ… Thrilling lighting system and chandeliers&nbsp;</p>\r\n<p>âœ… Excellent rental and resale value&nbsp;</p>\r\n<p>âœ… Walk in shower</p>\r\n<p>âœ… Inbuilt refrigerator and washing machine</p>\r\n<p>âœ… Great neighborhood.</p>', '', 'Private ', 'house', '', 'available', '', '2022-11-06 20:50:24', 'IMG-20221106-WA0023.jpg', 'IMG-20221106-WA0022.jpg', 'IMG-20221106-WA0017.jpg', '237', 'User', '3', 'none avaliable', 'sale', 'Lekki, ', 'Lagos', '', '', '', '', '0'),
(310, 'Commercial Land', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', 'land', '6000Sqr meter ', 'available', 'Nitel training school', '2022-11-07 04:48:58', '', '', '', '105', 'User', '3', 'none avaliable', 'sale', 'Kano', 'Kano', '', '', '', '', '0'),
(313, '6 flats of 2bedroom apartment at Majek first gate Aja Lagos state,', '2', '0', '0', '0', '0', '120000000', '', 'biokemwebs@gmail.com', '', 'ajah1.jpg', '<p>6 flats of 2bedroom apartment at Majek first gate Aja Lagos state,<br />With good title <br />Price 120m<br />Documents are<br />Deed of assignments &amp;<br />Registered</p>', 'Majek first gate Aja Lagos state,', '', 'house', '', 'available', '', '2022-11-07 07:00:11', 'ajah3.jpg', 'ajah2.jpg', 'ajah4.jpg', '228', 'User', '3', 'none avaliable', 'sale', 'ajah', 'Lagos', '', '', '', '2 Floor', '0'),
(314, 'R of O', '0', '0', '0', '0', '0', '7', '', 'Beside JEDO estate along airport road', '', 'IMG-20221103-WA0001.jpg', '', '', 'Adeiza shuaib', 'land', '1000 sqm', 'available', '', '2022-11-07 07:30:44', 'IMG-20221103-WA0003.jpg', 'IMG-20221103-WA0002.jpg', 'IMG-20221103-WA0004.jpg', '227', 'User', '3', 'none avaliable', 'sale', 'Airport road', 'Abuja', '', '', '', '', '0'),
(316, '5 bedroom smart home for sale', '5', '0', '1', '6', '0', '430000000', '', 'Victory Park Estate, Osapa London, Lekki, Lagos', '', 'IMG-20221106-WA0021.jpg', '<p>Luxurious and very spacious 5 bedroom smart home penthouse in a secured and habitable Estate with great ambience.</p>\r\n<p>&nbsp;</p>\r\n<p>Location: Victory park Estate, Osapa London, Lekki, Lagos.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Price 430m âœ… .&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Equipped with modern day Amenities like:&nbsp;</p>\r\n<p>âœ… New</p>\r\n<p>âœ… 5 bedroom</p>\r\n<p>âœ… Penthouse</p>\r\n<p>âœ… Fully fitted kitchen&nbsp;</p>\r\n<p>âœ… Modern day Pop ceiling</p>\r\n<p>âœ… Detailed finishing&nbsp;</p>\r\n<p>âœ… Wardrobes&nbsp;</p>\r\n<p>âœ… Closet</p>\r\n<p>âœ… Facelock and fingerprint&nbsp;</p>\r\n<p>âœ… Interlocked street&nbsp;</p>\r\n<p>âœ… CCTV&nbsp;</p>\r\n<p>âœ… 24 hours security&nbsp;</p>\r\n<p>âœ… All rooms en suite&nbsp;</p>\r\n<p>âœ… Water heater&nbsp;</p>\r\n<p>âœ… Sound proof Cinema&nbsp;</p>\r\n<p>âœ… Private balcony&nbsp;</p>\r\n<p>âœ… Executive living area&nbsp;</p>\r\n<p>âœ… Designated parking lot</p>\r\n<p>âœ… Thrilling lighting system and chandeliers&nbsp;</p>\r\n<p>âœ… Excellent rental and resale value&nbsp;</p>\r\n<p>âœ… Walk in shower</p>\r\n<p>âœ… Inbuilt refrigerator and washing machine</p>\r\n<p>âœ… Great neighborhood.</p>', '', 'Private ', 'apartment', '', 'available', '', '2022-11-07 10:09:09', 'IMG-20221106-WA0023.jpg', 'IMG-20221106-WA0022.jpg', 'IMG-20221106-WA0017.jpg', '0', '', '3', 'none avaliable', 'sale', 'Lekki ', 'Lagos', '', '', '', '', '0'),
(317, 'HOT SALES ', '0', '0', '1', '5', '0', '75', '750,000,000', 'Location  - Orchid  road  opposite Enyo Station  by the roundabout ', '', '1.jpeg', '<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>1st Homes WEST BRIDGE&nbsp;&nbsp; ESTATE&nbsp; 4&nbsp; SMART&nbsp; Homes&nbsp; ~ Luxury&nbsp; detailed</p>\r\n<p>Location&nbsp; - Orchid&nbsp; road&nbsp; opposite Enyo Station&nbsp; by the roundabout</p>\r\n<p>&nbsp;</p>\r\n<p>Our Offer- 12 months&nbsp; payment plan. 20% down&nbsp; payment.</p>\r\n<p>&nbsp;</p>\r\n<p>(1) 5 bedrooms&nbsp; fully detached&nbsp; with BQ= 95m</p>\r\n<p>(2) 4 bedrooms&nbsp; fully&nbsp; detached&nbsp; With BQ =90m</p>\r\n<p>(3) 4 Bedrooms&nbsp; semi detached with&nbsp; BQ = 75m</p>\r\n<p>&nbsp;</p>\r\n<p>FACILITIES</p>\r\n<p>Fully&nbsp; Serviced Estate</p>\r\n<p>(1)24 HrsTap water/Treatment plant</p>\r\n<p>(2)24 Hrs Electricity</p>\r\n<p>(3)CCTV&nbsp; SURVEILLANCE</p>\r\n<p>(4)High&nbsp; network&nbsp; security</p>\r\n<p>(5)GYM (Fitness Centre)</p>\r\n<p>(6)Fitted&nbsp; kitchen</p>\r\n<p>(7)Management Office</p>\r\n<p>(8)Ample Parking space</p>\r\n<p>(9) Central sewage system</p>\r\n<p>(10)Good Drainage</p>\r\n<p>(11) Swimming pool</p>\r\n<p>(12)Electric Fence</p>\r\n<p>&nbsp;</p>\r\n<p>NEIGHBOURHOOD&nbsp;</p>\r\n<p>Chevron&nbsp; Headquarters, Conservation&nbsp; park, Orchid Hotel&nbsp; etc</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>FOR INSPECTION&nbsp; DM OR CALL MR OLAKUNLE 08034250420&nbsp; /&nbsp; 08175351259</strong></p>', 'LEKKI', 'D &D Realtor   ', 'house', '270SQM', 'available', '300SQM', '2022-11-07 10:20:17', '5.jpeg', '3.jpeg', '4.jpeg', '57', 'User', '3', 'none avaliable', 'sale', 'LEKKI', 'Nasarawa', '10.jpeg', '12.jpeg', '16.jpeg', '2 Floor', '0'),
(318, 'C of O', '2', '1', '1', '3', '2', '43', '', ' *LOCATION:* Ajiwe, Abraham Adesanya Ajah ', 'https://www.instagram.com/p/CkqeyspNer_/?igshid=YmMyMTA2M2Y=', 'Screenshot_20221107-120155.png', '', 'https://www.instagram.com/p/CkqeyspNer_/?igshid=YmMyMTA2M2Y=', '', 'building', '', 'available', 'NEIGHBOURHOOD:  - Abraham Adesanya Estate - Mother & Child Healthcare Center - Lekki Pride 1  - Royal Garden, Ajah  - Ajiwe Police Station  - Lagos Business School   ', '2022-11-07 14:07:24', 'Screenshot_20221107-120414.png', 'Screenshot_20221107-120341.png', 'Screenshot_20221107-120253.png', '231', 'User', '3', 'none avaliable', 'sale', 'Ajiwe, Abraham Adasanya, LEKKI', 'Lagos', 'Screenshot_20221107-120331.png', 'Screenshot_20221107-120236.png', 'Screenshot_20221107-120210.png', '1 Floor', '0'),
(319, 'C of o,freehold,deed of assignment ', '0', '0', '0', '0', '0', '3', '5000', 'Abraham adesanya ', '', 'trim.CF783380-AA82-4687-86DC-FF72C9C9D0E3.MOV', '', '', 'Arston real estate Ltd ', 'land', '1000', 'available', 'Lekki international airport,st Augustine university,isima Lagos,Epe resorts and spa,Lagos state food central and security ', '2022-11-07 14:39:28', 'D587307E-3895-43F2-AE9E-77B9042F4C5E.jpeg', 'CA08B9EB-DAA9-4ADA-902E-23E3A74E385B.jpeg', '3399A45F-2EEF-4532-AA85-E715F0170801.jpeg', '233', 'User', '3', 'none avaliable', 'sale', 'Ketu Epe, ilara Epe,okun imosan Ibeju lekki,alaro city Epe ', 'Lagos', '', '', '', '', '0'),
(320, 'C of O,  freehold, deed of nice ', '0', '0', '0', '0', '0', '3', '', 'Peacemakervivian207@gmail.com', '', 'trim.DAE8DF72-9564-4369-8B79-02536BB3DF1B.MOV', '', '', 'Vivian Peacemaker', 'land', '5000', 'available', 'Lekki international airport,st Augustine university,isima Lagos,Lagos state food central and security,Epe resorts and spa,onatrio shopping..', '2022-11-07 14:55:21', '0252A898-4C07-4B7F-9B7D-E855295B1305.jpeg', 'BC403F99-5234-4162-8F7D-D9DAEF6CD901.jpeg', '060E3DCF-AE50-4CA6-A924-ADB9B4E514DA.jpeg', '233', 'User', '3', 'none avaliable', 'sale', ' Ketu Epe, ilara Epe, Alaro city Epe,Okun imosan Ibeju lekki.', 'Lagos', '', '', '', '', '0'),
(321, 'A GORGEOUS AND WELL FURNISHED  4 BEDROOMS COUNTRY HOME DUPLEX FOR SALE', '6', '0', '1', '4', '1', '55000000', '0', '3 ADOGA STREET SIWOKU VILLAGE, IJAYE OJOKORO FEDRAL HOUSING AUTHORITY.', '', 'ADOGA PROP B.mp4', '<p style=\"text-align: left;\">You will love this delightful 4 bedroom country home duplex.</p>\r\n<p style=\"text-align: left;\">also including 2 bedroom boys quarter.&nbsp; All rooms ensuite.</p>\r\n<p style=\"text-align: left;\">Master bedroom comes with Jacques bath and modern toilet system. The interior is comes with modern architecture.</p>\r\n<p style=\"text-align: left;\"><br />Facilities: Active Borehole is in place, Security Fence, all convenience are functioning perfectly.</p>\r\n<p style=\"text-align: left;\"><br />A whooping 10% to 20% discount available for early caller.</p>\r\n<p style=\"text-align: left;\">The Price is Negotiable.</p>\r\n<p style=\"text-align: left;\">Tile: Registered survey and Federal Government offer Letter of Allotment.</p>\r\n<p style=\"text-align: left;\">&nbsp;</p>', '', '', 'house', '663.101', 'available', 'MERAN / IJAYE OJOKORO  COMMUNITIES.', '2022-11-07 15:33:43', 'ADEGA PROP 1.mp4', 'ADOGA PROP 2.mp4', 'ADOGA IMG 2.jpg', '0', '', '3', 'none avaliable', 'sale', 'IJAIYE/ OJOKORO', 'Lagos', 'ADOGA IMG 9.jpg', 'ADOGA IMG 12.jpg', 'ADOGA IMG 3.jpg', '1 Floor', '0'),
(322, 'C of o, freehold, deed of assignment,Registered survey ', '0', '0', '0', '0', '0', '3', '3million above ', 'Peacemakervivian207@gmail.com', '', 'D3841105-FCFF-4811-A597-9B1F97DAB3A7.jpeg', '<p>&nbsp;Welcome to Arston real estate Ltd ðŸ¥°We create value for your money ðŸ’° .<br />When it comes to investing,Real estate is the best place for you to invest your money for your future and the future of your children.<br />And when you invest with a company like Arston real estate Ltd;you are guaranteed quick return on investment as we are best known for three major things ðŸ”¥ðŸ”¥ðŸ”¥</p>\r\n<p>-Accountability&nbsp;</p>\r\n<p>-Reliability and&nbsp;</p>\r\n<p>-efficiency .</p>\r\n<p>Look at to where people are going and secure a plot of land or more before they get there.Smart eagle eyes investors we are waiting for you ðŸ¥°ðŸ¥°ðŸ¥°ðŸ¥°ðŸ”¥ðŸ”¥ðŸ”¥.For more information and for site inspection call/WhatsApp 09133740257.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '', 'Arston real estate Ltd (Vivian peacemaker)', 'land', '5000', 'available', 'Lekki international airport, st Augustine university, isima Lagos,Ontario shopping, Lagos state food central and-security,Epe resorts and spa. ', '2022-11-07 15:48:18', 'trim.F07151A4-08A5-48D3-A2DE-AFC81035F581.MOV', 'trim.FFFDE2C5-BCDF-4F1A-A023-83D6AB1A9CE5.MOV', 'trim.9D3B6B14-2383-4916-B765-ABB6D26549FB.MOV', '0', '', '3', 'none avaliable', 'sale', 'Ketu Epe, ilara Epe,Alaro city Epe, Okun imosan Ibeju lekki ,sangotedo, ', 'Lagos', '', '', '', '', '0'),
(323, 'EXOTIC DUPLEX AND BUNGALOW  FOR SALE', '4', '0', '2', '4', '1', '55000000', '0', '3 ADOGA SIWOKU VILLAGE IJAYE OJOKORO LAGOS', '', '20220801_114815.jpg', '<p>PROPERTY SITUATED AT 13 ADOGA STREET SIWOKU VILLIAGE IN IJAYE OJOKORO LAGOS.</p>\r\n<p><br />IT IS ON 663.101 SQR METER ON WHICH A 4BEDROON DUPLEX IS BUILT AND A DUPLEX. A SMALL GARDEN.</p>\r\n<p>IT SITUATED IN A CORNER PIECE.</p>\r\n<p><br />TITLE: LAND UNDER DEED OF LEASE FEDERAL GOVERNMENT OFFER LETTER AND REGISTERD SURVEY .</p>\r\n<p><br />NEIGHBORHOOD:<br />-Lagos Abeokuta Express Way<br />- Businesses<br />-Meran community<br />-Nigerian Army cantonment<br />-A serene environment with more<br />than 3 access road.</p>\r\n<p><br />This house come with a discount of 10% available only to the first buyer who acts NOW.</p>', '', 'G- ESSENCE REALTOR', 'house', '631.101', 'available', 'IJAYE OJOKORO/ ABULE EGBA SANGO EXPRESSWAY', '2022-11-07 17:12:26', '20220819_114835.jpg', '20220801_114900.jpg', '20220819_114717.jpg', '0', '', '3', 'none avaliable', 'sale', 'MERAN/ IJAYE OJOKORO', 'Lagos', '20220819_104612.jpg', '20220819_114826.jpg', '', '1 Floor', '0'),
(324, 'Governorâ€™s Consent', '2', '1', '1', '2', '1', '55', '', 'Abraham Adesanya by Ogombo road', '', 'E492549C-D230-4CA4-AAF1-5E9C4E5D0869.jpeg', '<p>*LEKKI PRIDE ESTATE II*</p>\r\n<p>*_Latest Development in Ogombo Road Abraham Adesanya_* ðŸ”¥ðŸ”¥ðŸ”¥ðŸ”¥</p>\r\n<p>Lekki Pride Phase II offers apartments tailored to meet your highest standards, with excellently designed luxury homes, that brings comfort, luxury and appreciation overtime.</p>\r\n<p>It is an estate that gives you the feeling of safety with a unique blend of comfort, affordability, and luxury. <br />Feel the pride of living at Lekki Pride, and experience luxury in an admirable estate designed just for you.</p>\r\n<p>All rooms are fully en-suite with high quality tiles, large dining and living area with security smart lock doors. Lekki Pride II offers a blend of luxury and serene ambiance.</p>\r\n<p>It is a unique and exquisite estate strategically built to solve the needs of Nigerians while meeting world-class standards.</p>\r\n<p>*ESTATE FEATURES*ðŸ”¥ðŸ”¥<br />- DayCare Centre<br />- Gym and Game Centre<br />- Solar Street light<br />- Drainage system<br />- Security/Surveillance Camera<br />- Facility management Building</p>\r\n<p>*NEAREST LANDMARKS*</p>\r\n<p>LEKKI PRIDE ESTATE II shares proximity with;<br />&bull; Ajiwe Police Station, <br />&bull; Agofure Motor Park, <br />&bull; Abraham Adesanya Roundabout<br />&bull; Eti Osa Maternal Centre</p>\r\n<p>*TITLE* Governors Consent</p>\r\n<p>*LOCATION* Ogombo Road by Abraham Adesanya Roundabout, Lekki-Epe Expressway.</p>\r\n<p>*PROMO PRICE*</p>\r\n<p>2 Bedroom Terrace Duplex + BQ - *N55,000,000*</p>\r\n<p>3 Bedroom Semi Detached Duplex + BQ - *N75,000,000*</p>\r\n<p>3 Bedroom Terrace Duplex + BQ - *N60,000,000*</p>\r\n<p>4 Bedroom Semi Detached Duplex + BQ - *N80,000,000*</p>\r\n<p><br />*Initial Deposit-*<br />*N5,000,000ðŸ”¥ðŸ”¥ðŸ”¥*</p>\r\n<p>*PAYMENT PLAN* Available on all building type upto 12months.</p>\r\n<p>*ESTATE FEATURES*<br />&bull; Electric Fencing<br />&bull; Security Gatehouse<br />&bull; Management Office Building <br />&bull; Cinema House<br />&bull; Recreational Centre <br />&bull; Solar Powered Streetlights<br />&bull; CCTV Surveillance Cameras<br />&bull; Estate Gym<br />&bull; Smart Home Features and so much more!<br /><br />*LEKKI PRIDE ESTATE, feel The Pride In Comfort&hellip;...*</p>\r\n<p>For inquiries and inspection bookings, please call 09054681804</p>', '', 'Zylus homes and Properties ', 'building', '300', 'available', 'Abraham Adesanya ', '2022-11-07 20:44:18', '83920B9B-1812-44C4-BD1F-658D6E568293.jpeg', 'A36E867C-0A87-4991-8FCF-0BE0C9E6B6C1.jpeg', 'CB1804E6-3BCD-4A8D-90A9-01BF5DA05E1E.jpeg', '238', 'User', '3', 'none avaliable', 'sale', 'Lagos', 'Lagos', '', '', '', '2 Floor', '0'),
(325, 'Governorâ€™s Consent', '2', '1', '1', '2', '1', '55', '', 'Abraham Adesanya by Ogombo road', '', 'E492549C-D230-4CA4-AAF1-5E9C4E5D0869.jpeg', '<p>*LEKKI PRIDE ESTATE II*</p>\r\n<p>*_Latest Development in Ogombo Road Abraham Adesanya_* ðŸ”¥ðŸ”¥ðŸ”¥ðŸ”¥</p>\r\n<p>Lekki Pride Phase II offers apartments tailored to meet your highest standards, with excellently designed luxury homes, that brings comfort, luxury and appreciation overtime.</p>\r\n<p>It is an estate that gives you the feeling of safety with a unique blend of comfort, affordability, and luxury. <br />Feel the pride of living at Lekki Pride, and experience luxury in an admirable estate designed just for you.</p>\r\n<p>All rooms are fully en-suite with high quality tiles, large dining and living area with security smart lock doors. Lekki Pride II offers a blend of luxury and serene ambiance.</p>\r\n<p>It is a unique and exquisite estate strategically built to solve the needs of Nigerians while meeting world-class standards.</p>\r\n<p>*ESTATE FEATURES*ðŸ”¥ðŸ”¥<br />- DayCare Centre<br />- Gym and Game Centre<br />- Solar Street light<br />- Drainage system<br />- Security/Surveillance Camera<br />- Facility management Building</p>\r\n<p>*NEAREST LANDMARKS*</p>\r\n<p>LEKKI PRIDE ESTATE II shares proximity with;<br />&bull; Ajiwe Police Station, <br />&bull; Agofure Motor Park, <br />&bull; Abraham Adesanya Roundabout<br />&bull; Eti Osa Maternal Centre</p>\r\n<p>*TITLE* Governors Consent</p>\r\n<p>*LOCATION* Ogombo Road by Abraham Adesanya Roundabout, Lekki-Epe Expressway.</p>\r\n<p>*PROMO PRICE*</p>\r\n<p>2 Bedroom Terrace Duplex + BQ - *N55,000,000*</p>\r\n<p>3 Bedroom Semi Detached Duplex + BQ - *N75,000,000*</p>\r\n<p>3 Bedroom Terrace Duplex + BQ - *N60,000,000*</p>\r\n<p>4 Bedroom Semi Detached Duplex + BQ - *N80,000,000*</p>\r\n<p><br />*Initial Deposit-*<br />*N5,000,000ðŸ”¥ðŸ”¥ðŸ”¥*</p>\r\n<p>*PAYMENT PLAN* Available on all building type upto 12months.</p>\r\n<p>*ESTATE FEATURES*<br />&bull; Electric Fencing<br />&bull; Security Gatehouse<br />&bull; Management Office Building <br />&bull; Cinema House<br />&bull; Recreational Centre <br />&bull; Solar Powered Streetlights<br />&bull; CCTV Surveillance Cameras<br />&bull; Estate Gym<br />&bull; Smart Home Features and so much more!<br /><br />*LEKKI PRIDE ESTATE, feel The Pride In Comfort&hellip;...*</p>\r\n<p>For inquiries and inspection bookings, please call 09054681804</p>', '', 'Zylus homes and Properties ', 'building', '300', 'available', 'Abraham Adesanya ', '2022-11-07 20:52:35', '83920B9B-1812-44C4-BD1F-658D6E568293.jpeg', 'A36E867C-0A87-4991-8FCF-0BE0C9E6B6C1.jpeg', 'CB1804E6-3BCD-4A8D-90A9-01BF5DA05E1E.jpeg', '238', 'User', '3', 'none avaliable', 'sale', 'Lagos', 'Lagos', '', '', '', '2 Floor', '0'),
(326, 'Governorâ€™s Consent', '2', '1', '1', '2', '1', '55', '', 'Abraham Adesanya by Ogombo road', '', 'E492549C-D230-4CA4-AAF1-5E9C4E5D0869.jpeg', '<p>*LEKKI PRIDE ESTATE II*</p>\r\n<p>*_Latest Development in Ogombo Road Abraham Adesanya_* ðŸ”¥ðŸ”¥ðŸ”¥ðŸ”¥</p>\r\n<p>Lekki Pride Phase II offers apartments tailored to meet your highest standards, with excellently designed luxury homes, that brings comfort, luxury and appreciation overtime.</p>\r\n<p>It is an estate that gives you the feeling of safety with a unique blend of comfort, affordability, and luxury. <br />Feel the pride of living at Lekki Pride, and experience luxury in an admirable estate designed just for you.</p>\r\n<p>All rooms are fully en-suite with high quality tiles, large dining and living area with security smart lock doors. Lekki Pride II offers a blend of luxury and serene ambiance.</p>\r\n<p>It is a unique and exquisite estate strategically built to solve the needs of Nigerians while meeting world-class standards.</p>\r\n<p>*ESTATE FEATURES*ðŸ”¥ðŸ”¥<br />- DayCare Centre<br />- Gym and Game Centre<br />- Solar Street light<br />- Drainage system<br />- Security/Surveillance Camera<br />- Facility management Building</p>\r\n<p>*NEAREST LANDMARKS*</p>\r\n<p>LEKKI PRIDE ESTATE II shares proximity with;<br />&bull; Ajiwe Police Station, <br />&bull; Agofure Motor Park, <br />&bull; Abraham Adesanya Roundabout<br />&bull; Eti Osa Maternal Centre</p>\r\n<p>*TITLE* Governors Consent</p>\r\n<p>*LOCATION* Ogombo Road by Abraham Adesanya Roundabout, Lekki-Epe Expressway.</p>\r\n<p>*PROMO PRICE*</p>\r\n<p>2 Bedroom Terrace Duplex + BQ - *N55,000,000*</p>\r\n<p>3 Bedroom Semi Detached Duplex + BQ - *N75,000,000*</p>\r\n<p>3 Bedroom Terrace Duplex + BQ - *N60,000,000*</p>\r\n<p>4 Bedroom Semi Detached Duplex + BQ - *N80,000,000*</p>\r\n<p><br />*Initial Deposit-*<br />*N5,000,000ðŸ”¥ðŸ”¥ðŸ”¥*</p>\r\n<p>*PAYMENT PLAN* Available on all building type upto 12months.</p>\r\n<p>*ESTATE FEATURES*<br />&bull; Electric Fencing<br />&bull; Security Gatehouse<br />&bull; Management Office Building <br />&bull; Cinema House<br />&bull; Recreational Centre <br />&bull; Solar Powered Streetlights<br />&bull; CCTV Surveillance Cameras<br />&bull; Estate Gym<br />&bull; Smart Home Features and so much more!<br /><br />*LEKKI PRIDE ESTATE, feel The Pride In Comfort&hellip;...*</p>\r\n<p>For inquiries and inspection bookings, please call 09054681804</p>', '', 'Zylus homes and Properties ', 'building', '300', 'available', 'Abraham Adesanya ', '2022-11-07 20:53:01', '83920B9B-1812-44C4-BD1F-658D6E568293.jpeg', 'A36E867C-0A87-4991-8FCF-0BE0C9E6B6C1.jpeg', 'CB1804E6-3BCD-4A8D-90A9-01BF5DA05E1E.jpeg', '238', 'User', '3', 'none avaliable', 'sale', 'Lagos', 'Lagos', '', '', '', '2 Floor', '0'),
(327, 'Governorâ€™s Consent', '2', '1', '1', '2', '1', '55', '', 'Abraham Adesanya by Ogombo road', '', 'E492549C-D230-4CA4-AAF1-5E9C4E5D0869.jpeg', '<p>*LEKKI PRIDE ESTATE II*</p>\r\n<p>*_Latest Development in Ogombo Road Abraham Adesanya_* ðŸ”¥ðŸ”¥ðŸ”¥ðŸ”¥</p>\r\n<p>Lekki Pride Phase II offers apartments tailored to meet your highest standards, with excellently designed luxury homes, that brings comfort, luxury and appreciation overtime.</p>\r\n<p>It is an estate that gives you the feeling of safety with a unique blend of comfort, affordability, and luxury. <br />Feel the pride of living at Lekki Pride, and experience luxury in an admirable estate designed just for you.</p>\r\n<p>All rooms are fully en-suite with high quality tiles, large dining and living area with security smart lock doors. Lekki Pride II offers a blend of luxury and serene ambiance.</p>\r\n<p>It is a unique and exquisite estate strategically built to solve the needs of Nigerians while meeting world-class standards.</p>\r\n<p>*ESTATE FEATURES*ðŸ”¥ðŸ”¥<br />- DayCare Centre<br />- Gym and Game Centre<br />- Solar Street light<br />- Drainage system<br />- Security/Surveillance Camera<br />- Facility management Building</p>\r\n<p>*NEAREST LANDMARKS*</p>\r\n<p>LEKKI PRIDE ESTATE II shares proximity with;<br />&bull; Ajiwe Police Station, <br />&bull; Agofure Motor Park, <br />&bull; Abraham Adesanya Roundabout<br />&bull; Eti Osa Maternal Centre</p>\r\n<p>*TITLE* Governors Consent</p>\r\n<p>*LOCATION* Ogombo Road by Abraham Adesanya Roundabout, Lekki-Epe Expressway.</p>\r\n<p>*PROMO PRICE*</p>\r\n<p>2 Bedroom Terrace Duplex + BQ - *N55,000,000*</p>\r\n<p>3 Bedroom Semi Detached Duplex + BQ - *N75,000,000*</p>\r\n<p>3 Bedroom Terrace Duplex + BQ - *N60,000,000*</p>\r\n<p>4 Bedroom Semi Detached Duplex + BQ - *N80,000,000*</p>\r\n<p><br />*Initial Deposit-*<br />*N5,000,000ðŸ”¥ðŸ”¥ðŸ”¥*</p>\r\n<p>*PAYMENT PLAN* Available on all building type upto 12months.</p>\r\n<p>*ESTATE FEATURES*<br />&bull; Electric Fencing<br />&bull; Security Gatehouse<br />&bull; Management Office Building <br />&bull; Cinema House<br />&bull; Recreational Centre <br />&bull; Solar Powered Streetlights<br />&bull; CCTV Surveillance Cameras<br />&bull; Estate Gym<br />&bull; Smart Home Features and so much more!<br /><br />*LEKKI PRIDE ESTATE, feel The Pride In Comfort&hellip;...*</p>\r\n<p>For inquiries and inspection bookings, please call 09054681804</p>', '', 'Zylus homes and Properties ', 'building', '300', 'available', 'Abraham Adesanya ', '2022-11-07 20:54:33', '83920B9B-1812-44C4-BD1F-658D6E568293.jpeg', 'A36E867C-0A87-4991-8FCF-0BE0C9E6B6C1.jpeg', 'CB1804E6-3BCD-4A8D-90A9-01BF5DA05E1E.jpeg', '238', 'User', '3', 'none avaliable', 'sale', 'Lagos', 'Lagos', '', '', '', '2 Floor', '0'),
(328, 'Governorâ€™s Consent', '2', '1', '1', '2', '1', '55', '', 'Abraham Adesanya by Ogombo road', '', 'E492549C-D230-4CA4-AAF1-5E9C4E5D0869.jpeg', '<p>*LEKKI PRIDE ESTATE II*</p>\r\n<p>*_Latest Development in Ogombo Road Abraham Adesanya_* ðŸ”¥ðŸ”¥ðŸ”¥ðŸ”¥</p>\r\n<p>Lekki Pride Phase II offers apartments tailored to meet your highest standards, with excellently designed luxury homes, that brings comfort, luxury and appreciation overtime.</p>\r\n<p>It is an estate that gives you the feeling of safety with a unique blend of comfort, affordability, and luxury. <br />Feel the pride of living at Lekki Pride, and experience luxury in an admirable estate designed just for you.</p>\r\n<p>All rooms are fully en-suite with high quality tiles, large dining and living area with security smart lock doors. Lekki Pride II offers a blend of luxury and serene ambiance.</p>\r\n<p>It is a unique and exquisite estate strategically built to solve the needs of Nigerians while meeting world-class standards.</p>\r\n<p>*ESTATE FEATURES*ðŸ”¥ðŸ”¥<br />- DayCare Centre<br />- Gym and Game Centre<br />- Solar Street light<br />- Drainage system<br />- Security/Surveillance Camera<br />- Facility management Building</p>\r\n<p>*NEAREST LANDMARKS*</p>\r\n<p>LEKKI PRIDE ESTATE II shares proximity with;<br />&bull; Ajiwe Police Station, <br />&bull; Agofure Motor Park, <br />&bull; Abraham Adesanya Roundabout<br />&bull; Eti Osa Maternal Centre</p>\r\n<p>*TITLE* Governors Consent</p>\r\n<p>*LOCATION* Ogombo Road by Abraham Adesanya Roundabout, Lekki-Epe Expressway.</p>\r\n<p>*PROMO PRICE*</p>\r\n<p>2 Bedroom Terrace Duplex + BQ - *N55,000,000*</p>\r\n<p>3 Bedroom Semi Detached Duplex + BQ - *N75,000,000*</p>\r\n<p>3 Bedroom Terrace Duplex + BQ - *N60,000,000*</p>\r\n<p>4 Bedroom Semi Detached Duplex + BQ - *N80,000,000*</p>\r\n<p><br />*Initial Deposit-*<br />*N5,000,000ðŸ”¥ðŸ”¥ðŸ”¥*</p>\r\n<p>*PAYMENT PLAN* Available on all building type upto 12months.</p>\r\n<p>*ESTATE FEATURES*<br />&bull; Electric Fencing<br />&bull; Security Gatehouse<br />&bull; Management Office Building <br />&bull; Cinema House<br />&bull; Recreational Centre <br />&bull; Solar Powered Streetlights<br />&bull; CCTV Surveillance Cameras<br />&bull; Estate Gym<br />&bull; Smart Home Features and so much more!<br /><br />*LEKKI PRIDE ESTATE, feel The Pride In Comfort&hellip;...*</p>\r\n<p>For inquiries and inspection bookings, please call 09054681804</p>', '', 'Zylus homes and Properties ', 'building', '300', 'available', 'Abraham Adesanya ', '2022-11-07 20:55:04', '83920B9B-1812-44C4-BD1F-658D6E568293.jpeg', 'A36E867C-0A87-4991-8FCF-0BE0C9E6B6C1.jpeg', 'CB1804E6-3BCD-4A8D-90A9-01BF5DA05E1E.jpeg', '238', 'User', '3', 'none avaliable', 'sale', 'Lagos', 'Lagos', '', '', '', '2 Floor', '0'),
(329, 'Rebirth Island Estate', '0', '0', '0', '0', '0', '2', '', 'Arapagi Elerangbe Village, Bogije', '', 'IMG-20221107-WA0025.jpg', '<p><strong>Rebirth Island Estate</strong> is situated at <strong>Arapagi, Elerangbe Village Bogije, Ibeju-Lekki</strong>. It has a dual entryway which is by Sea and Road. By sea, you can take canoe, or speed Engine Boat through the popular Bogije Marke. Whereas by road you will go through Elerangbe by Foltar filling station both in the heart of Ibeju-Lekki, Lagos.</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\">Title: Government Allocated Excision (Gazette)</p>\r\n<p style=\"text-align: center;\">Land Size: 450SQM but other sizes like 300SQM and 600SQM are available on demand.</p>', '', 'Advanced Homes & Properties Limited', 'land', '450 SQM Per plot', 'available', 'Bogije Market, Lekki Deep Seaport, Alarocity, Omu Resort, Lekki Free Trade Zone, Lakowe Golf Club ', '2022-11-08 05:30:15', 'IMG-20221013-WA0007.jpg', 'IMG-20221107-WA0024.jpg', 'IMG-20221012-WA0021.jpg', '211', 'User', '3', 'none avaliable', 'sale', 'Ibeju-Lekki', 'Lagos', '', '', '', '', '0'),
(330, 'Rebirth Island Estate', '0', '0', '0', '0', '0', '2', '', 'Arapagi Elerangbe Village, Bogije', '', 'IMG-20221107-WA0025.jpg', '<p><strong>Rebirth Island Estate</strong> is situated at <strong>Arapagi, Elerangbe Village Bogije, Ibeju-Lekki</strong>. It has a dual entryway which is by Sea and Road. By sea, you can take canoe, or speed Engine Boat through the popular Bogije Marke. Whereas by road you will go through Elerangbe by Foltar filling station both in the heart of Ibeju-Lekki, Lagos.</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\">Title: Government Allocated Excision (Gazette)</p>\r\n<p style=\"text-align: center;\">Land Size: 450SQM but other sizes like 300SQM and 600SQM are available on demand.</p>', '', 'Advanced Homes & Properties Limited', 'land', '450 SQM Per plot', 'available', 'Bogije Market, Lekki Deep Seaport, Alarocity, Omu Resort, Lekki Free Trade Zone, Lakowe Golf Club ', '2022-11-08 05:33:53', 'IMG-20221013-WA0007.jpg', 'IMG-20221107-WA0024.jpg', 'IMG-20221012-WA0021.jpg', '211', 'User', '3', 'none avaliable', 'sale', 'Ibeju-Lekki', 'Lagos', '', '', '', '', '0'),
(331, 'Advanced Premium Scheme 1', '0', '0', '0', '0', '0', '950', '', 'Odo-Egiri, Eredo, Epe, Lagos', '', 'IMG-20211013-WA0003_1.jpg', '<p style=\"text-align: justify;\"><strong>Advanced Premium Scheme 1</strong> is situated at Odo-Egiri, Eredo Local Council Development Area in Epe Local Government Area of Lagos State, in the Southwest of Nigeria. The land is dry, flat, and sandy also one of the best lands for the profitable development of building structures.</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\"><strong>Land Title</strong>:</p>\r\n<p style=\"text-align: justify;\">Free hold, Purchase Receipt, Registered Survey, and Deed of Assignment.</p>', '', 'Advanced Homes & Properties Limited', 'land', '450 SQM Per plot', 'available', 'Epe T-Junction, Epe Resort & Spa, Michael Otedola College of Primary Education', '2022-11-08 05:51:19', 'IMG-20220813-WA0037.jpg', 'IMG-20211013-WA0006.jpg', '', '211', 'User', '3', 'none avaliable', 'sale', 'Epe', 'Lagos', '', '', '', '', '0'),
(332, 'C of o  registered survey and freehold ', '0', '0', '0', '0', '0', '1000000', '5000', 'Peacemakervivian207@gmail.com', '', '859B51D5-1BA3-461F-BD42-D09B44E2311A.jpeg', '<p>When it comes to investing in real estate,Arston real estate stand out for accountability, reliability and efficiency.</p>\r\n<p>our land our affordable with 100% topography.Smart eagle eyes investors we are waiting for you at Arston real estate Ltd ðŸ¥°</p>\r\n<p>&nbsp;</p>', '', 'Arston real estate ltd(Vivian peacemaker)', 'land', '5000', 'available', '*NEAREST LANDMARKS*: -Lekki International Airport  -Alaro City -Augustine University  -Lagos state central food security and logistic system  -Isimi Lagos -Epe Resort and Spa -Ontario Shopping Call/Wh', '2022-11-08 06:06:22', '6D5CC529-AB60-4E50-B0C0-D42BC7D1C025.jpeg', '453E7692-AB4B-46B6-B900-2DB7C89CE7CA.jpeg', '', '233', 'User', '3', 'none avaliable', 'sale', 'Ketu Epe  alaro city Epe ilara Epe and Okun imosan Ibeju lekki. ', 'Lagos', '', '', '', '', '0'),
(333, 'C of O', '0', '0', '0', '0', '0', '21', '', 'Sangotedo Lekki Lagos', 'https://www.instagram.com/p/CksnGXNtYtx/?igshid=YmMyMTA2M2Y=', 'Screenshot_20221108-113159.png', '', 'https://www.instagram.com/p/CksnGXNtYtx/?igshid=YmMyMTA2M2Y=', 'Tribitat Real Estate', 'land', '300', 'available', ' *Landmarks & Neighborhood*   - Crown Estate  - Emperor Estate  - Novare ShopRite Mall - Lagos Business School  - Thesaurus Bay Jetty  - Omu Creek - Pelican Resort  ', '2022-11-08 07:45:33', 'Screenshot_20221108-113205.png', 'Screenshot_20221108-113215.png', 'Screenshot_20221108-113159.png', '231', 'User', '3', 'none avaliable', 'sale', 'Sangotedo, Lekki', 'Lagos', 'Screenshot_20221108-113152.png', 'Screenshot_20221108-113219.png', 'Screenshot_20221108-113202.png', '', '0'),
(334, 'C of O', '0', '0', '0', '0', '0', '2147483647', '10000000000000', 'Peacemakervivian207@gmail.com', '', '0F89F218-2E2C-4E30-B6D0-9041800FCD96.jpeg', '', '', 'Vivian Peacemaker', 'land', '5000', 'available', 'Lekki International Airport  -Alaro City -Augustine University  -Lagos state central food security and logistic system  -Isimi Lagos -Epe Resort and Spa -Ontario Shopping Call/WhatsApp 09133740257', '2022-11-08 12:02:07', '', '', '', '233', 'User', '3', 'none avaliable', 'sale', 'Ketu Epe ', 'Lagos', '', '', '', '', '0'),
(337, 'Luxurious 5-Bedroom Duplex + BQ', '6', '2', '2', '6', '2', '250', '', 'Citiscape Garden City Estate, Apo Lokogoma, Abuja', '', 'IMG-20220211-WA0033.jpg', 'A luxurious 5-Bedroom duplex with BQ tastefully built with the touch of modern/traditional architecture in a serene environment with all round 24/7 private security with 18hrs uninterrupted power supply in a well secured estate.\r\nThe Large living Room is well furnished with tastefully selected contemporary exquisite Furniture and palatial banquet dinner room, with spacious Bedrooms with Kingâ€™s and Queenâ€™s sizeable beds with cushion Chairs for soft relaxation. All rooms are ensuite with modern bathroom details and facilities.\r\nSpacious fitted kitchen with balcony, Laundry and Spacious balcony and Sit Out for relaxation. CCTV in and out of this Edifice, Swimming pool to cool off.\r\nGenerator/Inverter All furniture and fittings inclusive. This property is D smart Enabled.\r\n\r\nDoc: Estate C/O\r\n\r\nPrice: #250 Million\r\n\r\nProfessional fee: 7%\r\n\r\nâ˜Žï¸/ Kelval Global Konsults Ltd on : 08164949552 for Enquiry and Inspection.', '', 'Kelval Global Konsults Ltd', 'house', '70ftby100ft', 'available', '749.503Msq', '2022-11-09 11:56:48', 'IMG-20220211-WA0034.jpg', 'IMG-20220211-WA0029.jpg', 'IMG-20220211-WA0029.jpg', '6', 'User', '3', 'none avaliable', 'sale', 'Lokogoma', 'Abuja', '', 'IMG-20220211-WA0030.jpg', 'IMG-20220211-WA0045.jpg', '2 Floor', '0'),
(338, 'LONDON PARK AND GARDENS AKUFO IBADAN ', '0', '0', '0', '0', '0', '1', '', '', '', 'IMG_20220825_232909_724.jpg', 'London Park and Gardens Ologun-Eru, Ibadan, another sister estate to the existing West Parks and Gardens Estate Ibadan, our flagship estate in the biggest city in Sub-Saharan Africa. London park was born out of the many requests of our numerous clients who wants to safely invest in the already developing axis of the Mega city. Just as our other estates, giving our knack for excellent offerings, London Parks and Gardens Ologun- Eru, Ibadan is built to meet the 21st century housing style, offer an assured wholesome family living experience, whilst providing amazing infrastructural facilities to tend to the needs of residents and investors alike.', '', 'ADRON HOMES & PROPERTIES ', 'land', '540', 'available', 'Proposed France International Trade Market in Oyo State, New Ibadan Railway, Ido Local Government Secretariat ', '2022-11-09 16:38:58', 'IMG_20220825_232859_821.jpg', 'IMG_20220825_232909_713.jpg', 'IMG_20220825_232859_874.jpg', '248', 'User', '3', 'none avaliable', 'sale', 'Ibadan', 'Oyo', '', '', '', '', 'No'),
(339, 'GRANDVIEW PARK AND GARDENS ESTATE', '0', '0', '0', '0', '0', '2', '540', '', '', 'Z.jpg', 'Our GrandView Park and Gardens Estate is located at Sokoto road, Atan, Ota, Ogun State which is 15 minutesâ€™ drive from Winners Chapel, Canaan Land, Ota. GrandView Park and Gardens offers an opportunity to own a quality home in a family friendly serene environment designed to embody a vision of peace, harmony, health and happiness. The Estate embraces the symmetrical component of a 21st century estate, Landscape, CCTV, security surveillance, parks, shopping malls are just a few of amenities that will be available in the estate.', '', '', 'land', '', 'available', 'Sokoto Road, Canaan Land Ota', '2022-11-09 16:55:20', 'Z(1).jpg', '2Q==.jpg', '2Q==(1).jpg', '248', 'User', '3', 'none avaliable', 'sale', 'Atan Ota ', 'Ogun', 'images(1).jpg', '', '', '', '0'),
(340, 'C of o', '3', '0', '2', '3', '3', '2147483647', '1000000000', 'Peacemakervivian207@gmail.com', '', '1F2F9CD8-096E-4874-A936-036D33A94EAC.jpeg', '', '', 'Vivian Peacemaker', 'house', '100000', 'available', 'Ikoyi ', '2022-11-09 17:00:33', 'FE370688-A734-4B97-8407-31EB8E8866EA.jpeg', 'B599FC26-90D4-494E-BCAC-20B57BC50B24.jpeg', '', '233', 'User', '3', 'none avaliable', 'sale', 'Ikoyi ', 'Lagos', '', '', '', '3 Floor', '0'),
(341, 'Certificate Of Occupancy ', '4', '1', '1', '4', '1', '160000', '', 'Medina Estate Gbagada ', '', 'IMG-20221109-WA0139.jpg', 'A newly built 4 bedroom duplex. At Medina estate Gbagada Lagos ', 'Medina ', 'Sanjose ', 'apartment', '2500', 'available', 'General hospital Gbagada ', '2022-11-09 17:16:32', 'IMG-20221109-WA0136.jpg', 'IMG-20221109-WA0138.jpg', '', '247', 'User', '3', 'none avaliable', 'sale', 'Lagos State ', 'Lagos', '', '', '', '2 Floor', '0'),
(342, 'CAMPUS GARDEN ESTATE', '0', '0', '0', '0', '0', '1', '', '', '', 'IMG-20221107-WA0005_1.jpg', 'LOCATION: Shares boundary with the newly commissioned Rivers State University extension Abara\r\nPRICE: 1,000,000\r\nTITLE\r\nFree Site Inspection\r\nFree Deed of Conveyance\r\nFree Survey plan\r\n', '', 'IM PROPERTIES', 'land', '', 'available', '', '2022-11-10 03:03:34', '', 'IMG-20221107-WA0005_1.jpg', '', '39', 'User', '3', 'none avaliable', 'sale', 'Portharcourt', 'Rivers', '', '', '', '', '0'),
(343, 'MONTANA ESTATE', '0', '0', '0', '0', '0', '550', '', '', '', 'IMG-20221109-WA0035_1.jpg', 'LOCATION: Close to International airport IPO\r\nPRICE: 550,000\r\nTITLE\r\nFree Site Inspection\r\nFree Deed of Conveyance\r\nFree Survey plan', '', 'IM PROPERTIES', 'land', '', 'available', '', '2022-11-10 03:07:49', '', 'IMG-20221109-WA0035_1.jpg', '', '39', 'User', '3', 'none avaliable', 'sale', 'Portharcourt', 'Rivers', '', '', '', '', '0'),
(344, 'Wonder Court Estate ', '3', '0', '1', '3', '0', '32000000', '', 'Oribanwa Awoyaya, Ibeju lekki ', '', 'IMG-20221003-WA0017.jpg', 'Wonder Court Estate is a fantastically built, which is situated within already developed environment, livable as we speak. \r\n\r\nIts structurally plan to withstand the test of time. \r\n\r\nExperience a sustainable lifestyle, Environment, Investment,  and Security. \r\n\r\nTitle: Gazette ', '', 'As Wonder Homes and Properties ', 'building', '300', 'available', 'Novare Mall', '2022-11-10 05:20:47', 'IMG-20221003-WA0018.jpg', 'IMG-20221003-WA0013.jpg', '', '244', 'User', '3', 'none avaliable', 'sale', 'Oribanwa Awoyaya, Ibeju lekki ', 'Lagos', '', '', '', '', '0'),
(345, 'Wonder Court Estate ', '3', '0', '1', '3', '0', '27000000', '', 'Oribanwa Awoyaya, Ibeju lekki ', '', 'IMG-20221102-WA0003.jpg', 'Wonder Court Estate Type 2, is built to suit every life style. \r\n\r\nThis Estate is beautifully built having an employee quarters. Its fully finished and fully detached bungalow. \r\n\r\nHas capacity to accommodate 3 cars\r\n\r\nTitle: Gazette ', '', 'As Wonder Homes and Properties ', 'building', '', 'available', 'Jubilee Bridge Ajah, Novare Mall', '2022-11-10 05:41:55', '', 'IMG-20221017-WA0156.jpg', '', '244', 'User', '3', 'none avaliable', 'sale', 'Oribanwa Awoyaya, Ibeju lekki ', 'Lagos', '', '', '', '', '0'),
(346, '4 Bedroom duplex with CofO ', '4', '0', '1', '4', '2', '80000000', '', 'Channel TV Road Lagos Nigeria ', '', 'VID-20221011-WA0034.mp4', 'Did you know there is a place in Lagos mainland that has the features of the Island,This location is suitated at Isheri North Opic Ojodu Lagos Nigeria.\r\n*It is an environment for both commercial and residential purpose \r\n*It has a unique well defined layout\r\nSerene ambiance and superior amenities to make real difference in your quality of living.\r\n*Clean and reticulated artesian well natural water servicing the entire estate \r\n*6 Mins drive to Ikeja \r\n*Accessible road network\r\n*Good security surveillance', '', 'Adedayo Oluwaseun ', 'apartment', '400', 'available', 'Opic Ojodu Berger ', '2022-11-10 06:43:01', '', 'VID-20221011-WA0034.mp4', '', '222', 'User', '3', 'none avaliable', 'sale', 'Isheri Opic Channels TV road Lagos ', 'Lagos', '', '', '', '', '0'),
(347, ' Tastefully furnished 4 bedroom semi detached duplex ', '4', '0', '1', '4', '0', '90', '', 'Orchid, Lekki Lagos ', '', 'png_20221106_224925_0000.png', 'ðŸ¡ 4 Bed, 4 Baths (Semi-Detached)  \r\nðŸ“ Orchid, Lekki, Lagos \r\nðŸ’° â‚¦90M\r\n\r\nâ€”\r\nFeatures:\r\nAll rooms En-suite | POP Ceiling | Large Living Area | Dinning Area | Fitted Kitchen | Car port | Heat Extractor | Water heater | High Ceiling | Family Lounge | Large Masterâ€™s Room | Walk-In Closet | Walk-In Shower  | Jacuzzi | BQ | Gated estate', '', 'Theadeolurealty ', 'house', '', 'available', '', '2022-11-10 08:18:04', '8_20221106_225135_0002.png', '4_20221106_225038_0001.png', '5_20221106_225038_0002.png', '237', 'User', '3', 'none avaliable', 'sale', 'Orchid, Lekki', 'Lagos', '7_20221106_225135_0001.png', '', '', '', '0'),
(348, '3bedroom flat to let', '0', '0', '1', '4', '1', '400000', '', 'Elebu estate, oluyole extension, ibadan', '', 'F1120E1E-BBBB-4727-B30F-2A9122BEEEA7.jpeg', 'Tasteful 3bedroom fla to let with all modern facilities e.g POPand all other facilities available.\r\nLoc:- Elebu estate, Oluyole extension, ibadan, oo sateâ€¦', '', '', 'apartment', '', 'available', '', '2022-11-11 19:56:37', '50795C2A-D7CB-4779-9505-30C3552A0E1F.jpeg', 'C74BB48B-1067-4333-B277-CB746EB29E85.jpeg', '', '252', 'User', '3', 'none avaliable', 'rent', 'Ibadan ', 'Oyo', '', '', '', '1 Floor', '0'),
(349, 'For sale!!!!', '3', '0', '1', '3', '1', '4', '', 'Ido town, ido local government, ibadan Oyo state ', '', '23369CC0-D0ED-4875-A4A5-1D2F146CA573.jpeg', 'Uncompleted 3bedroom flat on a plot of land for sale at ido town, ido lg.Ibadan Oyo state..\r\nPrice:-4.5m\r\n', '', '', 'house', '', 'available', 'Police station', '2022-11-11 20:05:25', '80BA56FA-B222-4E22-A4CA-290984DC3C95.jpeg', '3B3B164D-3BE4-466C-A02B-D1A42FAE38A2.jpeg', '', '252', 'User', '3', 'none avaliable', 'sale', 'Ibadan', 'Oyo', '', '', '', '', '0'),
(350, '2bedroom flat to let', '2', '0', '1', '3', '1', '250000', '', 'Wire&cable ', '', 'F689B873-6768-42A1-B519-7CA6DFCA34BB.jpeg', 'A Newly built 2bedroom to let at abule owo, wire&cable area apata ibadan Oyo stateâ€¦.\r\nRent:-250k', '', '', 'apartment', '', 'available', 'School', '2022-11-11 20:10:13', '5EFEF2AB-3C11-40EE-9209-243043B02A74.jpeg', '6733ADD4-A3CC-4DEC-84F6-B7288D34FB62.jpeg', '', '252', 'User', '3', 'none avaliable', 'rent', 'Ibadan', 'Oyo', '', '', '', '1 Floor', '0'),
(351, 'Deed of Assignment and Registered survey ', '0', '0', '0', '0', '0', '1', '', 'HERITAGE GARDENS OWERRI, PHASE 2 LOCATED JUST ONE POLE FROM THE OWERRI/PORTHERCOURT EXPRESS ROAD, AND JUST A FEW MINUTES DRIVE AFTER THE UNIVERSITY OF AGRICULTURE AND ENVIRONMENTAL SCIENCE, UMUAGWO.. ', '', 'IMG-20221112-WA0004.jpg', 'BUY AND BUILD\r\nHERITAGE GARDENS OWERRI, PHASE 2\r\nLOCATED JUST ONE POLE FROM THE OWERRI/PORTHERCOURT EXPRESS ROAD, AND JUST A FEW MINUTES DRIVE AFTER THE UNIVERSITY OF AGRICULTURE AND ENVIRONMENTAL SCIENCE, UMUAGWO..\r\n\r\nIT IS A VERY DRY TABLE LAND WITH OVER TWO HUNDRED PLOT OF LAND WITH A REGISTER SURVEY AND DEED OF ASSIGNMENTS AS ITS LAND TITLE\r\n\r\nIT IS DESIGN TO ACCOMMODATE BOTH RESIDENTIAL PURPOSE AND COMMERCIAL PURPOSE AS WE INTEND TO EXPRESS THE FULL MEANING OF HERITAGE TO YOU OUR ESTEEM CLIENTS\r\nWE ARE OPEN FOR INSPECTION FROM MONDAY TO SUNDAY...\r\nTHE PROMO PRICE IS 1.5ML\r\n\r\nACTUAL PRICE IS 2 MILLION\r\n\r\n50 BY 100FT\r\n\r\n464SQM...\r\n\r\nMAJOR LANDMARKS\r\n\r\nOBINZE ARMY BARRACKS\r\nFUTO(FEDERAL UNIVERSITY OF TECHNOLOGY)\r\nUNIVERSITY OF AGRICULTURE AND ENVIRONMENTAL SCIENCE\r\nNDDC, HOUSING SCHEME, UMUAGWO\r\nPALM KERNEL REFINARY\r\n\r\nWITH PWAN HERITAGE\r\nYOUR HERITAGE IS ASSURED..', '', 'PWAN HERITAGE ', 'land', '464sqm', 'available', 'Obinze Army Barracks ', '2022-11-11 23:56:11', '', 'IMG-20221112-WA0004.jpg', '', '245', 'User', '3', 'none avaliable', 'sale', 'Owerri ', 'Imo', '', '', '', '', '0'),
(352, 'Deed of Assignment and survey', '0', '0', '0', '0', '0', '0', '', '', '', 'IMG-20221112-WA0001.jpg', 'Plots of land for sale at Epe 5mins away from St Augustine University\r\n\r\nPrice: 1.5million per plot\r\nTitle: Survey and Deed of Assignment\r\n\r\nâœ… Perimeter Fencing\r\nâœ… Gated estate\r\nâœ… Documentation within 48hrs\r\nâœ… In close proximity with St Augustine University, Isimi Lagos, Yabatech University and the International airport site', '', 'LANDBRICK PROPERTY AND INVESTMENT LTD', 'land', '', 'available', 'ST AUGUSTINE UNIVERSITY', '2022-11-12 05:06:53', 'IMG-20221031-WA0003.jpg', 'IMG-20221102-WA0010.jpg', 'IMG-20221031-WA0002.jpg', '98', 'User', '3', 'none avaliable', 'sale', 'Lagos', 'Lagos', '', '', '', '', '0'),
(353, 'Fully furnished 4 bedroom semi detached duplex ', '4', '0', '1', '4', '0', '100', '', 'Second toll gate, Lekki', '', 'IMG-20221112-WA0007.jpg', 'â€”\r\nðŸ¡ 4 Bed, 4 Baths (Semi-Detached)  \r\nðŸ“ Second Toll Gate, Lekki, Lagos \r\nðŸ’° â‚¦100M   \r\n\r\nâ€”\r\nFeatures:\r\nAll rooms En-suite | POP Ceiling | Large Living Area | Dinning Area | Fitted Kitchen | Car port | Heat Extractor | Water heater | High Ceiling | Family Lounge | CCTV | Large Masterâ€™s Room | Walk-In Closet | Walk-In Shower | Bathtub | BQ | Gated estate', '', 'Theadeolurealty ', 'house', '', 'available', '', '2022-11-12 16:59:11', 'IMG-20221112-WA0004.jpg', 'IMG-20221112-WA0005.jpg', 'IMG-20221112-WA0002.jpg', '237', 'User', '3', 'none avaliable', 'sale', 'Lekki', 'Lagos', 'IMG-20221112-WA0006.jpg', '', '', '1 Floor', '0'),
(357, 'LAND FOR SALE', '0', '0', '0', '0', '0', '10', '', '', '', 'WhatsApp Image 2022-11-13 at 2.52.59 PM (1).jpeg', 'ðŸ‘‰location otokutu, town In delta state.\r\nðŸ‘‰dry table land\r\nðŸ‘‰size is, 100by100\r\nðŸ‘‰Purpose,, hotel, resident, commercial apartment\r\nðŸ‘‰access,, very very accessible, with two road  linking\r\nðŸ‘‰Price, 10m negotiable', '', 'nikeb properties', 'land', '', 'available', '', '2022-11-13 18:11:55', 'WhatsApp Image 2022-11-13 at 2.52.59 PM (3).jpeg', 'WhatsApp Image 2022-11-13 at 2.52.59 PM (2).jpeg', 'WhatsApp Image 2022-11-13 at 2.52.59 PM.jpeg', '254', 'User', '3', 'none avaliable', 'sale', 'otokutu', 'Delta', '', '', '', '', 'Yes'),
(358, '4bedroom bungalow', '0', '0', '0', '0', '0', '70', '', '', '', 'WhatsApp Image 2022-11-13 at 2.53.45 PM.jpeg', 'ðŸ‘‰the house is a 4bedroom bungalow, And  a self contain bq\r\nðŸ‘‰each room is master ensuit\r\nðŸ‘‰modern kitchen, with good finishing\r\nðŸ‘‰apple parking space\r\nðŸ‘‰massive parlour with modern finishings', '', ' Nikeb Properties', 'building', '', 'available', '', '2022-11-13 18:21:58', 'WhatsApp Image 2022-11-13 at 2.53.46 PM (2).jpeg', 'WhatsApp Image 2022-11-13 at 2.53.46 PM (1).jpeg', 'WhatsApp Image 2022-11-13 at 2.53.46 PM (3).jpeg', '254', '', '3', 'none avaliable', 'sale', 'plantation estate warri', 'Delta', '', '', '', '', 'Yes'),
(359, 'Certificate of Occupancy', '0', '0', '0', '0', '0', '7', '', 'Abijo GRA, Along ibeju-Lekki expressway', '', 'WhatsApp Image 2022-11-13 at 2.54.42 PM.jpeg', 'Have you Been Looking For A Buy and Build Estate?\r\n\r\nThen Haven Court Estate is the place for you. \r\n\r\n5 Solid Reasons You Should Subscribe into Haven Court Estate\r\n\r\nâ—¼ï¸Haven Court Estate is located in a fast developing Area, with notable landmarks like: Haven Residence, Corona School, Caleb International school and Chalcedony School. \r\nâ—¼ï¸Secured and Gated Environment: With the provisions of a Secured gate house and 24hours security.\r\n\r\nâ—¼ï¸ Profitable ROI\r\n\r\nâ—¼ï¸Buy And Build\r\n\r\nâ—¼ï¸ Instant Allocation', '', '', 'land', '', 'available', '', '2022-11-13 18:31:58', '', 'WhatsApp Image 2022-11-13 at 2.54.42 PM.jpeg', '', '255', 'User', '3', 'none avaliable', 'sale', 'beju Lekki', 'Lagos', '', '', '', '', 'Yes'),
(360, 'Two plot of land', '0', '0', '0', '0', '0', '6', '', 'igbolomo agric ikorodu', '', 'WhatsApp Image 2022-11-13 at 2.57.47 PM.jpeg', 'Documents survey and receipt of purchase', '', '', 'land', '', 'available', '', '2022-11-13 18:40:28', '', 'WhatsApp Image 2022-11-13 at 2.57.47 PM.jpeg', '', '256', 'User', '3', 'none avaliable', 'sale', 'igbolomo agric ikorodu', 'Lagos', '', '', '', '', 'Yes'),
(361, 'Land For Sale', '0', '0', '0', '0', '0', '15', '', 'adjacent salvation ministry headquarter Port Harcourt Rivers State', '', 'WhatsApp Image 2022-11-13 at 2.59.32 PM (2).jpeg', '1. Land size by SQM : 1218 mÂ²\r\n\r\n2. Asking price: N15M\r\n\r\n3.Available documents: Deed of Convenyance, Survey Plan', '', 'ogejossy concept ', 'land', '', 'available', '', '2022-11-13 18:51:09', 'WhatsApp Image 2022-11-13 at 2.59.32 PM.jpeg', 'WhatsApp Image 2022-11-13 at 2.59.32 PM (1).jpeg', 'WhatsApp Image 2022-11-13 at 2.59.31 PM.jpeg', '253', 'User', '3', 'none avaliable', 'sale', 'adjacent salvation ministry headquarter Port Harcourt  ', 'Rivers', '', '', '', '', 'Yes'),
(362, 'Land For Sale', '0', '0', '0', '0', '0', '3', '', 'Good Success property @ Rainoil Complex opposite MFM camp, along Lagos Ibadan expressway, Magboro, Ogun state', '', 'WhatsApp Image 2022-11-13 at 3.00.52 PM (1).jpeg', 'Good Success property @ Rainoil Complex opposite MFM camp, along Lagos Ibadan expressway, Magboro, Ogun state', '', 'Good Success property', 'land', '', 'available', '', '2022-11-13 19:06:50', 'WhatsApp Image 2022-11-13 at 3.00.51 PM (1).jpeg', 'WhatsApp Image 2022-11-13 at 3.00.52 PM.jpeg', 'WhatsApp Image 2022-11-13 at 3.00.51 PM.jpeg', '257', 'User', '3', 'none avaliable', 'sale', 'Lagos Ibadan expressway, Magboro', 'Ogun', '', '', '', '', 'Yes');
INSERT INTO `property` (`id`, `title`, `bedroom`, `hall`, `kitchen`, `bathroom`, `balcony`, `price`, `sqr_price`, `address`, `video`, `image1`, `description`, `location`, `property_owner`, `property_type`, `lot_size`, `status`, `land_area`, `date`, `image3`, `image2`, `image4`, `user_id`, `role`, `uid`, `feature`, `ptype`, `city`, `state`, `mapimage`, `topmapimage`, `groundmapimage`, `totalfloor`, `isFeatured`) VALUES
(363, 'C of o', '0', '1', '1', '3', '1', '35', '35million ', '8 Valentino drive, prime estate opposite games village ', '', '71b12b6457d84235bc1fb78920f7b738.jpg', '3 bedroom terrace duplex. Airport road.', '', 'Green Atlas ', 'house', '250sqm', 'available', '', '2022-11-14 04:05:57', '', '3c1667967d57497ea46918e8d907528c.jpg', '', '236', 'User', '3', 'none avaliable', 'sale', 'Abuja', 'Abuja', '', '', '', '1 Floor', 'None'),
(364, 'Land For Sale', '0', '0', '0', '0', '0', '3', '', 'Good Success property @ Rainoil Complex opposite MFM camp, along Lagos Ibadan expressway, Magboro, Ogun state', '', 'WhatsApp Image 2022-11-13 at 3.00.52 PM (1).jpeg', 'Good Success property @ Rainoil Complex opposite MFM camp, along Lagos Ibadan expressway, Magboro, Ogun state', '', 'Good Success property', 'land', '', 'available', '', '2022-11-14 06:54:19', 'WhatsApp Image 2022-11-13 at 3.00.51 PM (1).jpeg', 'WhatsApp Image 2022-11-13 at 3.00.52 PM.jpeg', 'WhatsApp Image 2022-11-13 at 3.00.51 PM.jpeg', '0', '', '3', 'none avaliable', 'sale', 'Lagos Ibadan expressway, Magboro', 'Ogun', '', '', '', '', 'None'),
(367, 'Duplex ', '4', '', '1', '4', '1', '2500000', '', '', '', 'IMG-20221114-WA0079.jpg', 'A 4 bedroom duplex at Ojodu berger Lagos ', '', '', 'apartment', '', 'available', '', '2022-11-14 10:11:33', 'IMG-20221114-WA0075.jpg', 'IMG-20221114-WA0076.jpg', 'IMG-20221114-WA0077.jpg', '247', 'User', '3', 'none avaliable', 'rent', 'Ojodu berger Lagos ', 'Lagos', '', '', '', '', 'None'),
(372, 'estate Land for sale ', '', '', '', '', '', '3500000', '', '', '', 'IMG-20221107-WA0014.jpg', 'Estate Land for sale! \r\n\r\nSecure the future and invest in Elite Gold Value, Asaba.\r\n\r\nLands are selling for as low as N3,500,000 inclusive of development and documentation levy.\r\nDocuments: CofO\r\nLocation: Anwai Road, Asaba behind Faith Academy Asaba.\r\n\r\nCall 08148304843 for more information and inspection', '', '', 'land', '', 'available', '', '2022-11-14 11:37:18', '', 'IMG-20221107-WA0014.jpg', '', '14', 'User', '3', 'none avaliable', 'sale', 'Asaba ', 'Delta', '', '', '', '', 'None'),
(374, 'Estate Land for sale ', '', '', '', '', '', '11500000', '', '', '', 'IMG-20221107-WA0015.jpg', 'Estate Land for sale! \r\n\r\nSecure the future and invest in Elite Pocket Layout, Trans Ekulu, Enugu.\r\n\r\nLands are selling for as low as N11,500,000 inclusive of development and documentation levy.\r\nDocuments: Registered Survey and Deed of Assignment.\r\nLocation: New GRA, Trans Ekulu, Enugu State \r\n\r\nCall 08148304843 for more information and inspection', '', '', 'land', '', 'available', '', '2022-11-14 11:50:05', '', 'IMG-20221107-WA0015.jpg', '', '14', 'User', '3', 'none avaliable', 'sale', 'Trans Ekulu, Enugu', 'Enugu', '', '', '', '', 'None'),
(375, 'Estate Land for sale ', '', '', '', '', '', '6500000', '', '', '', 'IMG-20221107-WA0016.jpg', 'Estate Land for sale! \r\n\r\nSecure the future and invest in Elite Palms Gardens.\r\n\r\nLands are selling for as low as N6,500,000 inclusive of development and documentation levy.\r\nDocuments: Registered Survey and Deed of Assignment.\r\nLocation: Back of Federal Polytechnic Nekede, behind Assumpta Minor Seminary Nekede, Owerri, Imo State.\r\n\r\nCall 08148304843 for more information and inspection', '', '', 'land', '', 'available', '', '2022-11-14 11:52:12', '', 'IMG-20221107-WA0016.jpg', '', '14', 'User', '3', 'none avaliable', 'sale', 'Nekede, Owerri ', 'Imo', '', '', '', '', 'None'),
(376, 'Estate Land for sale ', '', '', '', '', '', '1000000', '', '', '', 'IMG-20221107-WA0008.jpg', 'Estate Land for sale! \r\n\r\nSecure the future and invest in Zenith Court, Imota.\r\n\r\nLands are selling for as low as N1million inclusive of development and documentation levy.\r\nDocuments: Survey and Deed \r\nLocation: Imota, Ikorodu..\r\n\r\nCall 08148304843 for more information and inspection', '', '', 'land', '', 'available', '', '2022-11-14 11:54:18', '', 'IMG-20221107-WA0008.jpg', '', '14', 'User', '3', 'none avaliable', 'sale', 'Imota, Ikorodu ', 'Lagos', '', '', '', '', 'None'),
(377, 'Estate Land for sale ', '', '', '', '', '', '25000000', '', '', '', 'IMG-20221107-WA0009.jpg', 'Estate Land for sale! \r\n\r\nSecure the future and invest in the new Lagos.\r\n\r\nLands are selling for as low as N25million\r\nLocation: Ibeju Lekki..\r\n\r\nCall 08148304843 for more information and inspection', '', '', 'land', '', 'available', '', '2022-11-14 11:56:15', '', 'IMG-20221107-WA0009.jpg', '', '14', 'User', '3', 'none avaliable', 'sale', 'Ibeju Lekki ', 'Lagos', '', '', '', '', 'None'),
(378, '5 OF PLOTS OF LANDS FOR SALES ALONG LEKKI EPE EXPRESS WAY', '', '', '', '', '', '350000000', '70000000', 'Elemoro Ibeju lekki', '', '97710CE8-B12F-4B04-A458-CC1416838F78.jpeg', '<p>5 plots of land facing the express at Elemoro in Ibeju-Lekki Lagos. Each plot costs seventy million naira, and the whole thing is worth 350 million naira excluding 5% agent commission ,you can contact me on this line 07059252338</p>', '', 'Clogoil system limited', 'land', '3178', 'available', 'Ajah', '2022-11-14 14:11:40', '6272C831-8260-4483-8D99-9FD32A4B6C29.jpeg', '470B3F7A-4CED-4C59-823E-9F4C6DF0C8D9.jpeg', '1D78C445-63DE-49AD-B91A-C83A70AAFF43.jpeg', '', '', '3', 'none avaliable', 'sale', 'Lagos', 'Lagos', '', '', '', '', 'yes'),
(379, 'test2', '8', '', '11', '3', '3', '1,000,000,000', '454454', 'owerri', 'https://fyndah.com/ ', 'WhatsApp Image 2022-11-13 at 2.59.32 PM (2).jpeg', 'test by fyndah', '', 'fyndah', 'building', '5000', 'available', 'Nigeria', '2022-11-14 14:47:16', '', 'WhatsApp Image 2022-11-13 at 2.59.31 PM.jpeg', '', '', '', '3', 'none avaliable', 'rent', 'owerri', 'Imo', '', '', '', '2 Floor', 'None'),
(380, 'C Of O', '', '', '', '', '', '28000000', '', 'Elebu estate, Akala express Ibadan.', '', 'VID-20221022-WA0014(2).mp4', '3bedroom bungalow', '', 'R. E. E Divine ', 'building', '', 'available', '', '2022-11-14 18:44:26', 'Screenshot_20221029-103237.png', 'Screenshot_20221029-103344.png', '', '69', 'User', '3', 'none avaliable', 'sale', 'Ibadan', 'Oyo', '', '', '', '1 Floor', 'None'),
(381, 'C of O', '5', '3', '1', '7', '4', '450,000,000', '', 'New GRA phase 2 Portharcourt ', '', 'IMG-20221103-WA0051.jpg', 'For Sale\r\n\r\n5 Bedrooms Duplex With 2 Bedrooms Bungalow & 4 rooms Boysquarters Located In A Great Location In New Gra Phase 2 Portharcourt.\r\n\r\nPerfect For Residential & Office Use\r\n\r\nPOPULAR LANDMARKS INCLUDE\r\n> Polo Club\r\n> Market Square \r\n> Genesis Deluxe Cinema\r\n\r\n\r\nPrice - N450 million Negotiable\r\nLand Size - Almost 3 Plots\r\nTitle Document - C Of O\r\n\r\nFOR SERIOUS CLIENTS ONLY\r\nTo Inspect & Buy This Property\r\n\r\n+2348121578931', '', 'My client ', 'house', '3plots', 'available', 'Polo club, market square, Genesis Cinema', '2022-11-15 00:36:11', 'IMG-20221103-WA0048.jpg', 'IMG-20221103-WA0052.jpg', 'IMG-20221103-WA0055.jpg', '221', 'User', '3', 'none avaliable', 'sale', 'PORTHARCOURT', 'Rivers', '', '', '', '1 Floor', 'None'),
(382, 'Governor Consent', '', '', '', '', '', '60,000,000 NGN', '', 'Chevron Drive, Lekki', '', 'Screenshot_20221110-084355.png', 'CHEVY CASTLE APARTMENT, CHEVRON LEKKI\r\n\r\nTITLE: GOVERNOR CONSENT\r\n\r\nLOCATION: Chevron Drive, Chevron Lekki\r\n\r\n2 BEDROOM APARTMENT \r\ncurrently selling for NGN50MILLION (With Flexible payment plan)\r\n\r\n3 BEDROOM APARTMENT currently selling for NGN60MILLION (With Flexible payment plan)\r\n\r\nOther available apartment includes; 1 bedroom apartment, 3 bedroom penthouse + BQ and 4 bedroom maisonette + BQ (sold out)\r\n\r\nLocation Link: https://goo.gl/maps/jKmSntwwLvs8M6oe7\r\n\r\nFor purchase, site inspection and enquires please call or Whatsapp +234 907 517 7183\r\n\r\n\r\n\r\n', 'https://goo.gl/maps/jKmSntwwLvs8M6oe7', 'Evermark', 'building', '', 'available', 'Chevron Drive', '2022-11-15 05:02:10', '', 'Screenshot_20221110-084342.png', '', '', '', '3', 'none avaliable', 'sale', 'Chevron Drive, Lekki', 'Lagos', '', '', '', '', 'None'),
(383, 'Elysium Estate', '', '', '', '', '', '16000000', '', 'Off Bishop Okojie Road, Behind Shoprite, Sangotedo, Ibeju-Lekki, Lagos', '', 'IMG-20221107-WA0014.jpg', 'Elysium Estate is located off Bishop Okijie Road, Behind Shoprite, Sangotedo, Ibeju-Lekki, Lagos. \r\n\r\nLand Title: Survey plan, Deed of Assignment and Purchase Receipt.\r\n\r\nLand Size: 450SQM or 50ft by 100ft', '', 'Advanced Homes & Properties Limited', 'land', '450 SQM Per plot', 'available', 'Shoprite, Emperor Estate, Monastery Road', '2022-11-15 06:13:43', 'IMG-20221107-WA0018.jpg', 'IMG-20221107-WA0017.jpg', '', '211', 'User', '3', 'none avaliable', 'sale', 'Sangotedo', 'Lagos', '', '', '', '', 'None'),
(384, 'Exceptional Court Estate', '', '', '', '', '', '3500000', '', 'GOG Road, off Bolanle Ambode Expressway, former Atlantic Hall School Road, Poka, Epe', '', 'IMG-20220228-WA0003.jpg', 'Exceptional Court Estate is situated on GOG Road, off Bolanle Ambode Expressway former Atlantic Hall School Road, Poka Epe, Lagos State. \r\n\r\nThe land is dry, flat, and suitable for immediate development in a serene environment.\r\n\r\nLand Size: 450 SQM or 50ft by 100ft\r\n\r\nTitle/Document: Registered Survey Plan, Deed of Assignment, and Purchase Receipt ', '', 'Aso Real Estate Limited', 'land', '450 SQM Per plot', 'available', 'New Lagos Fire Station, Atlantic Hall School, Bank Estate', '2022-11-15 06:47:49', 'IMG-20220216-WA0005.jpg', 'IMG-20220228-WA0002_1.jpg', 'IMG-20220216-WA0006.jpg', '211', 'User', '3', 'none avaliable', 'sale', 'Poka,  Epe', 'Lagos', '', '', '', '', 'None'),
(385, '5 PLOT OF LAND FACING EXPRESS AT ELEMORO', '', '', '', '', '', '325,000,000', '65,000,000', '', '', 'IMG-20221025-WA0008.jpg', '5 PLOTS OF LAND FACING THE EXPRESS AT ELEMORO IN IBEJU-LEKKI LAGOS,ALONG LEKKI -AJAH EXPRESSWAY .\r\nEACH PLOT COST #65,000,000 ,SIXTY FIVE MILLION NAIRA EACH,TOTAL #325,000,000, THREE HUNDRED AND TWENTY FIVE MILLION NAIRA ONLY .WITH GOVERNOR CONSENT.THE DOCUMENT MADE AVAILABLE FOR INSPECTION.', '', 'CLOGOIL SYSTEMS LIMITED', 'land', '', 'available', '', '2022-11-15 09:04:46', 'IMG-20221105-WA0017.jpg', 'IMG-20221105-WA0016.jpg', 'IMG-20221105-WA0018.jpg', '235', 'User', '3', 'none avaliable', 'sale', 'LAGOS', 'Lagos', 'IMG-20221105-WA0020.jpg', 'IMG-20221105-WA0021.jpg', '', '', 'None'),
(386, 'A BUILDING FOR SALES AT ADRON ESTATE SHIMAWA PHASE 1', '', '', '', '', '', '35,000,000', '', '', '', 'IMG-20221105-WA0004.jpg', 'A BUILDING FOR SALES AT ADROND ESTATE SHIMAWA PHASE 1 AT AFFORDABLE PRICE WITH ALL THE NECESSARY DOCUMENTS AVAILABLE ,\r\nTHE COST PRICE IS #35,0000,000, THIRTH FIVE MILLION NAIRA EXCLUDING AGENT COMMISSION 5%\r\nCALL THIS NUMBER FOR MORE INFO:08146177465', '', 'THOMAS ADEBISI OGUNNUPE', 'house', '', 'available', '', '2022-11-15 09:14:48', 'IMG-20221105-WA0004.jpg', 'IMG-20221105-WA0003.jpg', '', '235', 'User', '3', 'none avaliable', 'sale', 'REDEEM CAMP', 'Lagos', '', '', '', '', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `sid` int(50) NOT NULL,
  `sname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`sid`, `sname`) VALUES
(2, 'Colotana'),
(3, 'Floaii'),
(4, 'Virconsin'),
(7, 'West Misstana\n\n'),
(9, 'New Pennrk\n\n'),
(10, 'Louiswa\n\n'),
(15, 'Wisginia\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `sub_admins`
--

CREATE TABLE `sub_admins` (
  `id` int(250) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `role` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `payment_status` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_admins`
--

INSERT INTO `sub_admins` (`id`, `firstname`, `lastname`, `address`, `phone`, `role`, `email`, `password`, `date`, `payment_status`, `status`) VALUES
(1, 'Emeka', ' Ebere', 'Official address:plot 104 haruk road, rumuigbo port Harcourt', '08054482453', 'User', 'mekcharl007@gmail.com', '7849ac10045a6f45573a7e56ae3738cc', '2022-09-22', 'PAID', 'ACTIVE'),
(2, 'Marshall', ' Properties', '12d Wole Ariyo Lekki phase 1', '08068621706', 'User', 'fyndahltd@gmail.com', 'aab973c638be085703a3224bca25542e', '2022-09-13', 'PAID', 'ACTIVE'),
(3, 'Adesanya ', 'Olubunmi', 'No 138, Broadstreet Lagos Island', '08067189694', 'User', 'adesanyaolubunmi594@gmail.com', 'c44e29f8e1a5000b39080f298005d6ad', '2022-07-05', 'PAID', 'ACTIVE'),
(5, 'taiwo ', 'idowu', 'Suit 18 mobolaji complex ikota school Ajah Lagos Nigeria', '08077653683', 'User', 'tentowerproperty@gmail.com', '3d1c23e49a8e9cba8954a4d4bda3661c', '2022-09-21', 'PAID', 'ACTIVE'),
(6, 'Kelvin ', 'Abel Jr', 'Prince Alexander Close off Sapele Road Benin City. \r\nCountry Home Junction by By Ugbor Village Road Junction, Benin City.', '08164949553', 'User', 'oracleofjesu@gmail.com', 'a14c3c55e069fa8691b654464c4e2d85', '2022-09-22', 'PAID', 'ACTIVE'),
(7, 'Greenwich', ' Properties', '10 Incarnate Road, Umoubullu2 Etche LGA Rivers state.', ' 08064686516', 'User', 'Greenwichproperties.xzy@gmail.com', '43891348757ace48c83ad3c06ba2ccad', '2022-09-13', 'PAID', 'ACTIVE'),
(8, 'johnson', 'okeke', 'EUNIBROWN HOUSE(4TH FLOOR)\r\n195 IKORODU ROAD PALMGROVE LAGOS', '08124507370', 'User', 'johnsonokeke777@gmail.com', '650e9b95df7042e8b5cd9ffc0bb1518f', '2022-08-12', 'PAID', 'ACTIVE'),
(9, ' Engr. Victor T ', 'Effiong', 'Office address: GLD 16BA Dubai-Abuja International Trade centre, Kaura District, Behind Games Village Estate FCT-Abuja', '09073741175', 'User', 'Victoreffiong24@gmail.com ', '2a1986247af7c7066ade2d216f1d33e7', '2022-08-12', 'PAID', 'ACTIVE'),
(10, 'Olabode ', 'Anuoluwapo', '111, Obafemi Awolowo way Ikeja, lagos', '08021481020', 'User', 'realtytunsmor@gmail.com', '1a56f928152b522d88190fb8dd075d8d', '2022-07-05', 'PAID', 'ACTIVE'),
(11, ' Aneba ', 'Inyang', 'empty', '08272554212', 'User', 'munkaolazarafi@gmail.com', '62aaacaa609d730d09e4d6f883b4ac30', '2022-08-09', 'PAID', 'ACTIVE'),
(12, 'Osatech ', 'Electromech ', 'empty', '08028441916', 'User', 'osatechelectromech2014@gmail.com', 'e532e35f62198288b49b4ff7619fd05e', '2022-07-12', 'PAID', 'ACTIVE'),
(13, 'Francis ', 'Edu ', '23 oladosun street, off toying ikeja Lagos', '09039073309', 'User', 'frankinc577@gmail.com', '00f6f9c7d28a37792e6c038b9c158413', '2022-09-21', 'PAID', 'ACTIVE'),
(14, 'Anthonian', ' Nwanya', 'empty', '07069071751', 'User', 'bbcompany246@gmail.com', '8cc50d49759575998f74d6fe5842d016', '2022-08-16', 'PAID', 'ACTIVE'),
(15, 'S R. Properties ', 'Services Ltd ', 'Ńo 4, Iwo Street off Odozie Road Ojodu, Berger Lagos', '08060558694', 'User', 'Sr.propertieservicesltd@gmail.com', '02ec81735c242a6a5dfd05c51b29b040', '2022-08-10', 'PAID', 'ACTIVE'),
(16, 'Adedams', ' properties', 'empty', '09050660236', 'User', 'adedamsproperty1@yahoo.com', '403393af5b5ae5b8ce115f185bad11d4', '2022-08-24', 'PAID', 'ACTIVE'),
(17, 'REALTOR', ' GIFT', 'No 65 Allen Avenue  ikeja', '08036928086', 'User', 'chianyaks21@gmail.com', 'c7f44a40061e6a3891a13cf5b03bb877', '2022-07-05', 'PAID', 'ACTIVE'),
(18, 'Okulaja Taiwo ', 'Olaibo', '\r\nOdofa Bus stop, opposite \r\nAgbara Industrial estate, Morogbo Badagry and Shop 8 Royal Plaza Opposite Odofa Bus stop Morogbo Agbara Area.', '08069391505', 'User', 'taiwotechnicals@gmail.com', '994c71f7415700f6f56d3419a19003b3', '2022-09-30', 'PAID', 'ACTIVE'),
(19, 'Assured prudence ', 'investment limited', 'empty', '09036636227', 'User', 'asuuredprudencein@gmail.com ', 'daf5fb9229e337d542639500287246f4', '2022-08-24', 'PAID', 'ACTIVE'),
(20, 'IDOH ', 'FAVOUR ', 'A12C I LOVE JESUS PLAZA ALABA INTERNATIONAL', '09132743858', 'User', 'Esomgod007@gmail.com ', 'c641bc53968bde5a571412dd2e6c3530', '2022-07-12', 'PAID', 'ACTIVE'),
(21, 'Adeyinka ', 'adebayo', '37 osuolale Ogunseye Street afobaje estate ota at back of obasanjo farm', '08060789444', 'User', 'Adeyinkaadebayotaiwo@yahoo.com', 'eb06d350b8a0556c8dc518665cbce4be', '2022-08-10', 'PAID', 'ACTIVE'),
(22, 'Osuji', ' Donald', 'Empty', '08066953232', 'User', 'osajidonaldafam@gmail.com', '92ef35c53594965378370745dc9fe2c3', '2022-09-07', 'PAID', 'ACTIVE'),
(23, 'Joy ', 'Emeka', 'Road 10 udoka housing estate, Awka, Anambra state', '08103706434', 'User', 'realtorjoy634@gmail.com', '04dc96663c540a56ab091bc13b8ea38b', '2022-10-01', 'PAID', 'ACTIVE'),
(24, 'Onuweri ', 'Raphael ', 'Real Estate investment for you \r\nAddress: 44 Gideon street Ijeododo,via Ijegun, Lagos', '08023254445', 'User', 'onuweri2014@gmail.com', '047116db9067a4256b148afaea1e034e', '2022-06-14', 'PAID', 'ACTIVE'),
(25, 'David omoniyi', ' Akinbami ', 'Team Focus Office\r\n  F1, 409 HFP Shopping Complex\r\n  Abraham Adesanya Roundabout \r\n  Ajah', '08058475585', 'User', 'Omoniyidavid007@gmail.com', 'bc90e2789b18e02bd8146924d4253eeb', '2022-08-16', 'PAID', 'ACTIVE'),
(26, 'Olayemi ', 'Oladoyin', '1-3, Moses Ebitu, \r\nSPG Road,\r\nLekki', '08036267361', 'User', 'olayemi_oladoyin@yahoo.com', '352107fd8d85c47bd7b4fce2c76cb209', '2022-04-12', 'PAID', 'ACTIVE'),
(27, 'ALAMUTU AFEEZ ', 'ADENIYI', 'No 1, Stands close, Iju ishaga, ifako ijaiye, agege, Lagos state', ' 09090489650', 'User', 'alamsonsolution2015@yahoo.com', 'ff1999c892db8f960184d1a29c4590d9', '2022-05-16', 'PAID', 'ACTIVE'),
(28, 'Gift ', 'Noah', 'no 16 Emmanuel Adeola close eputu, ibeju lekki Lagos, Nigeria', '08127300021', 'User', 'giftnoah47@yahoo.com', '3afae8126c41ebb027e9b71a5fa11c4c', '2021-11-02', 'PAID', 'ACTIVE'),
(29, 'Olajide Olabisi', ' Adelani', '7 Anslem Street, Ilado, Fawole B/Stop, Bayeku Road, Ikorodu, Lagos, Nigeria', '08066248439 ', 'User', 'Olajideadelani38@gmail.com', '83cf075731562a2efdda8fa7dd332ecc', '2022-09-30', 'PAID', 'ACTIVE'),
(30, 'Tobiloba ', 'Odeyinka', 'No. 3B, Rd., 3 , Carlton Gate Estate, Akobo, Ibadan', '08168778622', 'User', 'atohomesandproperties@gmail.com', '0fb7c0126af0ca35dd6a84fafac7f9ad', '2022-03-15', 'PAID', 'ACTIVE'),
(31, 'Veeki ', 'Estate', 'Chief Ben Nwankwo street Mgbakwu, Awka north Anambra state', '09042745614', 'User', 'veekiproperty@gmail.com', '2a0c03fdbaaddde0d3138f919ab6800c', '2022-10-01', 'PAID', 'ACTIVE'),
(32, 'Omolayo Abosede ', 'Shokunbi', '6, Oyeniyi Crescent,  Oladapo bus stop, Isuti road, Egan-Igando, Lagos', '08055962895', 'User', 'layoelizabeth@gmail.com', 'c202cbf97069bcbeb0cac914ce1da529', '2022-10-02', 'PAID', 'ACTIVE'),
(33, ' Ifebanjo Ayomikun  ', 'Gabriel', '77,Abeokuta Street,Ebute metta,Lagos', '08027166986', 'User', 'ayoyinka2011@gmail.com ', 'ca26149a61e7fbd8fbd7146fe9dae54c', '2022-10-07', 'PAID', 'ACTIVE'),
(34, 'cole ', 'adebimpe ', '11 shogbamu new garage gbagada lagos', '08138659581', 'User', 'adebimpeoluseun88@gmail.com ', '224a25211c38443b2b58d91678419f73', '2022-10-04', 'PAID', 'ACTIVE'),
(35, 'Confidence ', 'Igbiya', 'Olayiwola Bankole Eputu Lagos.', '08173767256', 'User', 'bintegrateds@gmail.com', 'dbe4fb89560547d19198074fb856b5c6', '2022-08-31', 'PAID', 'ACTIVE'),
(36, 'Dommichelx ', 'Properties', 'Ọba Oke road, Aregbe, Obantoko, Abeokuta', '08156642889', 'User', 'Mddommichel@gmail.com', 'ed23853a77517a48076f1f1a13f0d913', '2022-10-01', 'PAID', 'ACTIVE'),
(37, 'Samuel ', 'Ibiama', 'No 1 Street 1 Radio Estate Ozuoba Port Harcourt Rivers State', '09121583397', 'User', 'toruibiama@yahoo.com', 'b8292be5154f213b38193db707bb683e', '2022-09-30', 'PAID', 'ACTIVE'),
(38, 'OGUNGBEMI VICTOR ', 'OPEYEMI ', '188 RAILWAY LINE OFF SHYLLON STREET ILUPEJU LAGOS NIGERIA.', '08026667392', 'User', 'ogungbemi_victor@yahoo.com', '5791e3220e92bfed523dfc9508a4fda5', '2022-10-01', 'PAID', 'ACTIVE'),
(39, 'Ogechi Josephine ', 'Uneke-Okenwa', 'Opp Assemblies of God Church Okemini road by Rumuagholu Sars road Port Harcourt Rivers State', '09099008600', 'User', 'ogejossyconcept@gmail.com', '5a3771eb62afb302abfe54aa4d9b13ed', '2022-09-01', 'PAID', 'ACTIVE'),
(40, 'Emmanuel ', 'Daniel', '31 Theophilus Oji street, Lekki Phase One', '08120501575', 'User', 'danielemmanuel726@gmail.com', '4ed6f750ff6898cd4d01ffd6ac62c87b', '2022-10-04', 'PAID', 'ACTIVE'),
(41, 'Lukman ', 'Rahman', '19 Oshitelu street.. Computer Village Ikeja Lagos', '08037051174 ', 'User', 'kerrygold@consultant.com', 'a231c682cfe23c650ad97634705c2b50', '2022-10-05', 'PAID', 'ACTIVE'),
(42, 'Fatoki okiki  ', 'Elijah', 'No 18 Gold Crest plaza ikota Lagos state.', '090602559952', 'User', 'Fatokielijah3@gmail.com ', 'c01d7448cc1ca3b41808e74968ed6262', '2022-10-03', 'PAID', 'ACTIVE'),
(43, 'M D Atorsco', ' global', 'None', '07031947419', 'User', 'atorscoglobalcompany@gmail.com', 'dcf689e88431ac929b6784007aa817f2', '2022-09-14', 'PAID', 'ACTIVE'),
(44, 'REALTOR ', 'GIFT', 'No 65 Allen Avenue  ikeja', '08036928086', 'User', 'chianyaks21@gmail.com', 'c7f44a40061e6a3891a13cf5b03bb877', '2022-10-04', 'PAID', 'ACTIVE'),
(45, 'Temitayo ', 'Ajibade', ' Good Success Property @ Rainoil Complex opposite MFM camp, along Lagos Ibadan express way. Magboro, Ogun state', '07054106871', 'User', 'tinukeajibade@gmail.com', '5577aedf4361e6ec4f6d64c0bbafe919', '2022-10-04', 'PAID', 'ACTIVE'),
(46, 'Atubu Elijah ', 'Diamond', 'Ochid road, by Eliganza second tour gate Lekki phase 2', '00000000000', 'User', 'atubuelijah@gmail.com', '1c270b8059030b78fda265a23b33f86a', '2022-10-02', 'PAID', 'ACTIVE'),
(47, 'Apagun Babatunde ', 'osinowo', '10 Kalak building abiolaway Abeokuta Ogun State,\r\nCompany Name Tundebuilders Goal Enterprise', '08073496805, 08066739979', 'User', 'tundebuilders77@gmail.com', 'f4d714232bb55c131a75e9edaf0ce8de', '2022-09-29', 'PAID', 'ACTIVE'),
(48, 'Samtrix Homes  ', 'Properties Limited', 'Samtrix Office, Lister House, Ring Road, Ibadan.', '08030742533', 'User', 'samuelakintonde@gmail.com', 'cdaf68f4fffb1d4299f67bfa0c9de99b', '2022-09-30', 'PAID', 'ACTIVE'),
(49, 'Lukman ', 'Rahman', '19 Oshitelu street.. Computer Village Ikeja Lagos', '08037051174', 'User', 'kerrygold@consultant.com', 'a231c682cfe23c650ad97634705c2b50', '2022-09-30', 'PAID', 'ACTIVE'),
(50, ' Mrs Ngozi stacybela ', 'Okorie', 'no 1Mcc road by Wetheral Owerri Imo State', '09069475527', 'User', 'ibeakuchi@gmail.com', 'ef9c01dcec5a9f92f700d173cd302c8e', '2022-10-07', 'PAID', 'ACTIVE'),
(51, 'Henry', ' igbokwe', 'Plot 15, Block 75, Ichie Mike Ejezie Street, off Fola Osibo Street, Lekki 1', '08130845932', 'User', 'Henryigbokwe3@gmail.com ', '216ec9d4be04cc173c7e78f2a6f3e4dd', '2022-10-06', 'PAID', 'ACTIVE'),
(52, 'Philip', 'Philip', '17 Nurudeen Fagbenro street, Ire-Akari Estate, Ikorodu, Lagos.', '2348064577716', 'User', 'phillipsolamipo@gmail.com', '51077b6023222a49088a1d6435fdfb96', '2022-10-05', 'PAID', 'ACTIVE'),
(53, 'Chibuike Samson ', 'onwumelu', '115 Old ABA road rumuobiakani portharcourt', '09156018940', 'User', 'onwumeluchibuike11@gmail.com', 'f2ebe9b18f872e8a45a8543dba025c4f', '2022-10-04', 'PAID', 'ACTIVE'),
(54, 'Royal path ', 'properties', 'Lagos', '09023292707', 'User', 'oriongroupofcompanies.1@gmail.com', 'd8d659b93094ed96a3775a1b6ef4f7d6', '2022-10-07', 'PAID', 'ACTIVE'),
(55, 'Daniel AMAZING ', 'Grace', 'Satellite  Town, Lagos State.', '08064399613', 'User', 'hmointernational2k13@gmail.com', '853fe1a07a1b20cbd69639bab2c94722', '2022-10-03', 'PAID', 'ACTIVE'),
(56, 'Alhaja ', 'Taye', '2 Akoto elebu oluyole extension ibadan', ' 08033779984', 'User', 'Owoadesak@gmail.com', '4109890b2c7e9f73e7bd8bf75d2fcea0', '2022-10-05', 'PAID', 'ACTIVE'),
(57, 'Odeyemi Olakunle', ' Olakunle', '97 Muritala Eletu street Osapa London Lekki Lagos', ' 08034250420, 08175351259', 'User', 'odeyemimuyiwa7@gmail.com', 'cca8ab75ca8c454eb44a135481e123cb', '2022-10-03', 'PAID', 'ACTIVE'),
(58, 'Oisasumhe Alegbe', 'Alegbe', '38 Dubai Crescent,  Suncity Estate, Abuja FCT', '07030058498', 'User', 'alegbe@xed.aucegypt.edu ', 'f82782b020b1ac8c4ce8e7257f9178e8', '2022-10-05', 'PAID', 'ACTIVE'),
(59, 'grace', 'Funmi', 'Kemsan building monatan, ibadan', '07037014406', 'User', 'funmigrace18@gmail.com', '047aa1b8795995b48d0da1118d973668', '2022-10-05', 'PAID', 'ACTIVE'),
(60, 'C.I. ', 'Nwankpa', 'Block II Honeywell plaza along Rochas spilbat Road Owerri imo State.', '09034261057', 'User', 'nwankpachibueze@gmail.com', '51f1ad27a791c5d8de78a30162f21e07', '2022-10-04', 'PAID', 'ACTIVE'),
(61, 'Oisasumhe \r\nO', 'Alegbe ', '38 Dubai Crescent,  Suncity Estate, Abuja FCT', '07030058498', 'User', 'O.alegbe@xed.aucegypt.edu', 'f82782b020b1ac8c4ce8e7257f9178e8', '2022-10-04', 'PAID', 'ACTIVE'),
(62, 'IWUMUNE IKENNA ', 'NOBLE', 'No 7 anchor point road, Asaba delta State', '08122959178', 'User', 'noblegold77@gmail.com', '98cb226567bc9f411c447e59973aee6e', '2022-10-04', 'PAID', 'ACTIVE'),
(63, 'Sarah Igweike ', 'Chukwufumnaya', '34,Zion Avenue Isasi Akute Off Ojodu Berger.', '08031315362', 'User', 'primeassetr612@gmail.com', 'bf76ae9f74fc3223f9e2cb8128f775c0', '2022-10-04', 'PAID', 'ACTIVE'),
(64, 'Adeyinka ', 'adebayo', 'none.', '08060789444', 'User', 'Adeyinkaadebayotaiwo@yahoo.com', 'eb06d350b8a0556c8dc518665cbce4be', '2022-10-04', 'PAID', 'ACTIVE'),
(65, 'IWUMUNE IKENNA ', 'NOBLE', 'No 7 anchor point road, Asaba delta State', '08122959178\r\n', 'User', 'noblegold77@gmail.com', '98cb226567bc9f411c447e59973aee6e', '2022-10-04', 'PAID', 'ACTIVE'),
(66, 'Musa ', 'Mohammed', 'No2. Engr Iyke Ezakwem Street Dakwa, Abuja', '08065324248', 'User', 'musa18284@gmail.com', 'a447874e8b087e372ca4d26be138bfbc', '2022-10-04', 'PAID', 'ACTIVE'),
(67, 'Adeyinka ', 'adebayo', 'none', '08060789444', 'User', 'Adeyinkaadebayotaiwo@yahoo.com', 'eb06d350b8a0556c8dc518665cbce4be', '2022-10-14', 'PAID', 'ACTIVE'),
(68, 'Kelly ', 'Omorefe', 'No 21 akpagha lane ugboroke effurun Delta state Nigeria', '09134026499', 'User', 'kingkelly1987@gmail.com', 'fd5f11b2773cd0275daa31de66c5eb6f', '2022-10-04', 'PAID', 'ACTIVE'),
(69, 'azeezat', 'baloty', 'Real estate expertise, town planning Ibadan.', '08169656375', 'User', 'azeezatbaloty@gmail.com', '96eef99782594313586841cb550075be', '2022-10-04', 'PAID', 'ACTIVE'),
(70, 'Xyconnects global ', 'investment Ltd ', '162 Adegbiye Road ori okuta ogijo ikorodu sagamu Road ogijo', '09058219054', 'User', 'Xyconnects@gmail.com', '2729a92b50084db640fe47ae43b09691', '2022-10-04', 'PAID', 'ACTIVE'),
(72, 'solarhouseplan ', 'construction limited', 'Pure water along badagry express way Lagos.', '08155956650,09067969473', 'User', 'solarhouseplan@gmail.com', 'ec686fd5122e754cf2b779f01928400f', '2022-10-04', 'PAID', 'ACTIVE'),
(73, 'ITA UDOH ', 'NELSON', 'ORON ROAD BY NEW RING ROAD 3 UYO AFTER TIMBER JUNCTION UYO.', '07037989945', 'User', 'nelsonita28@gmail.com', 'fee4e6e5640b5b92945b42f98b728c12', '2022-10-04', 'PAID', 'ACTIVE'),
(74, 'Squared ', 'Tech ltd', 'ORON ROAD BY NEW RING ROAD 3 UYO AFTER TIMBER JUNCTION UYO.', '+234 802 772 3838, +2348076194584', 'User', 'Dsquaretechltd@gmail.com', 'ed4ad62f5e69f1df846d82a6ce798d4c', '2022-10-04', 'PAID', 'ACTIVE'),
(75, 'confidence', 'umeh', 'No1 Nma Okafor close opposite bridge FM radio station off anwai Rd Asaba Delta State.', '08161381837', 'User', 'confidenceumeh3@gmail.com', '824781942d03ffc9652ba117c71daf8d', '2022-10-04', 'PAID', 'ACTIVE'),
(76, 'Ibukun ', 'Alawode', 'floor 16 cocao house ,Dugbe Ibadan', '08106757515', 'User', 'alawodeibukun1@gmail.com', '4ef0dcba48d9ef69b985ba315adc59be', '2022-10-14', 'PAID', 'ACTIVE'),
(77, 'Chiopia Home and Properties Ltd', 'Properties Ltd', 'My business name is Chiopia Home and Properties Ltd', '08186185500', 'User', 'okoyeopiadorischinwe@gmail.com', '77443f3d9921b10c356f3fa73ab852ae', '2022-10-04', 'PAID', 'ACTIVE'),
(78, 'Sarah ', 'isokariari', '2, eke street, rumuomwuta, portharcourt', '08032951556', 'User', 'Temitopeferguson46@gmail.com', '8435ac5b197b54fc3cbddb2fb1e48666', '2022-10-04', 'PAID', 'ACTIVE'),
(79, 'olaniyi', 'emmanuel', 'Suite 19, vicbalkon towers, utako, Abuja', '08126039485', 'User', 'olaniyiemmanuel14@gmail.com', '9b320ae2b85f6491d9b8fd2e500359ca', '2022-10-04', 'PAID', 'ACTIVE'),
(80, 'AMBER DAWN', ' PROPERTIES', 'Suite 15 Aleshinloye Shopping Complex Beside Macbite Restaurant Hope Junction Old Ife road Alakia Ibadan, Oyo Ataye.', '08074809061', 'User', 'amberdawnmart@gmail.com', '2d97719f8322d6768bd0ba988d959056', '2022-10-04', 'PAID', 'ACTIVE'),
(81, 'Abidoye ', 'Oluwafemi', 'Airtel building, opp St Anne\'s Catholic church, Omida, Abeokuta', '09076358009', 'User', 'fitasticks12@gmail.com', '959a82a39328d2aadab3ce91fba61d55', '2022-10-04', 'PAID', 'ACTIVE'),
(82, 'CountryHill Affordable ', 'Luxury Homes', '1 Emina crescent off Toyin Street Ikeja', '09165040204', '', 'c.oluleye@countryhillltd.com', 'ee163a0e9d489b99b95c7e5030edd06e', '2022-10-04', 'PAID', 'ACTIVE'),
(83, 'GREJAHMIC HOMES ', 'LIMITED', 'J\'s innovation plaza km 5 refinary road opposite St Peter Anglican Church, Ekpan warri delta state', '09160559521', 'User', 'info@grejahmichimes.com', '57a83b1c614c642ceeb895d286208d3a', '2022-10-04', 'PAID', 'ACTIVE'),
(84, ' Anthony', ' omoruyi', 'UBTH, Pharmacy Dept.', ' 08023511230', 'User', 'tonyruyi13@gmail.com', '16e45e6fa4699f348ff806424d973809', '2022-10-04', 'PAID', 'ACTIVE'),
(85, 'Okoh Emmanuel ', 'Isioma', 'Isuaniocha, Awka North, Anambra', '08069394890', 'User', 'emmanuelisioma27@gmail.com', '0e9c1a0b95acc6be2f55224ded20ef1c', '2022-10-04', 'PAID', 'ACTIVE'),
(86, 'Lumi ', 'Tafawabalewa', 'Vespa bus stop oju sango ifo', '08023332768', 'User', 'danjumalumi@gmail.com ', '5dee450e3528ec2831be322b953afccf', '2022-10-04', 'PAID', 'ACTIVE'),
(87, ' Felicita ', 'Akpan ', 'Lagos, Nigeria', '07068198777', 'User', 'felilucullus@gmail.com', 'd1d908d3ca4c39f400770a8acdffad23', '2022-10-14', 'PAID', 'ACTIVE'),
(88, 'Odeniyi Abimbola ', 'Mary', ' Ikota Villa, besides mega chicken, eti-osa lekki', '+2348103827713,+2347086638300', 'User', 'abimbolaodeniyi8@gmail.com', '253a59fbc98e83010e0d0cdf86260d39', '2022-10-14', 'PAID', 'ACTIVE'),
(89, 'sam', 'tech', 'No8 Taiwo street sojuolu ifo Ogun state', '08060514696', 'User', 'samtec1992@gmail.com', '6bbc329e31f29a667f3ab80e98bd10a0', '0000-00-00', 'PAID', 'ACTIVE'),
(90, 'Abraham Sunday ', 'Olakitan', 'No1, omoruyi close, along IDO/Eleyele rd, Opposite board of education Ido Ibadan', '08032634829', 'User', 'abrahamolaitansunday@gmail.com', '98515140b9cc44fa66654974e1b76851', '2022-10-14', 'PAID', 'ACTIVE'),
(91, 'Ashiru Rasheed ', 'Abiola', '1, western avenue Orofun ibeju lekki Lagos State', '07055345113', 'User', 'abiolar805@gmail.com', 'e63bf60d55017771e0aedb79b9902404', '2022-10-14', 'PAID', 'ACTIVE'),
(92, 'ogunsusi ', 'Yemisi', '3,afolabi sole street okota isolo', '08174602692', 'User', 'oluwayemi92@gmail.com', '296b54bb30f7932e42aa114b5eb1b157', '2022-10-14', 'PAID', 'ACTIVE'),
(93, 'Lawal Fatai ', 'Olatunbosun', '68, Itire road , Mushin Lagos State', '08027152396', 'User', 'ftlawi@gmail.com', '109ad3a0b0dbdcc52a1849d12aa4950c', '2022-10-14', 'PAID', 'ACTIVE'),
(94, 'michael', 'Harrison ', 'Alex Nwachukwu Jr. Close, Opposite Bridge FM Radio Station, Off Anwai Rd. Asaba Delta State.', ' 07067946389', 'User', 'michaelmosco5@yahoo.com', '1770e8d08540a11cf9a5111d0242605b', '2022-10-15', 'PAID', 'ACTIVE'),
(95, 'Okiemute ', 'Ovuorie', '145 Alhaji Amoo, Ogudu, Ojota, Lagos, Nigeria', '08105914679', 'User', 'Indomitable65@yahoo.com', '15918a9183e02826bee22195053fa3c6', '2022-10-15', 'PAID', 'ACTIVE'),
(96, 'Wocrwean properties ', 'development company', 'Km 24 lekki epe expressway ajah . By opeyemi bus stop .', '08063862900, 08098707731', 'User', 'fredanwan1@gmail.com', '8a29ac8a9fa4c97e62f42abdc1d3b4cb', '2022-10-15', 'PAID', 'ACTIVE'),
(97, 'Anyichim ', 'constant ', 'No1, Olawale iwajomo close ijagba round about, ota ogun state', '08100233344', 'User', 'Anyichimconstantrealestate@gmail.com', '8bcf3a6f52146e05ea71df64446ac115', '2022-10-15', 'PAID', 'ACTIVE'),
(98, 'OLANREWAJU ', 'ADEMOLAKE', 'LAGOS NIGERIA', '09074204508', 'User', 'drapeswag@gmail.com', '512f2381a22d69486b421d22728529bd', '2022-10-15', 'PAID', 'ACTIVE'),
(99, 'Olusegun ', 'Bamisaye', 'Suite A10 Ikota Shopping Complex', '08050947408', 'User', 'Sniffexair@gmail.com', 'b37783a0656996d4222684120afe104a', '2022-10-15', 'PAID', 'ACTIVE'),
(100, 'Koletowo', ' memud ', '12 church street shomolu', '09078996578', 'User', 'Desmondaremuthaobal@gmail.com', '8c2d524162067e2f387596d2ff5c7944', '2022-10-16', 'PAID', 'ACTIVE'),
(101, 'Monalisa ', 'Patrick', 'Lagos ikeja', '08164730099', 'User', 'aghidiblessing96@gmail.com', '72e6b134f1d615df081ca0bb7998d42e', '2022-10-16', 'PAID', 'ACTIVE'),
(102, ' Peters ', 'Clinton', '5 Gbangbala street Elegushi Lekki Ikate, Lagos', '08130097937', 'User', 'petersclinton27@gmail.com', '6435cc3ae9b1813c466f7ed9b0bf60ac', '2022-10-16', 'PAID', 'ACTIVE'),
(103, 'Atile ', 'Msughter', 'Eket close No7, Garki Area 8 Abuja', '07069086156', 'User', 'atilemsughter2015@gmail.com', '9916da167cdd2d1467f99eac3217f49a', '2022-10-16', 'PAID', 'ACTIVE'),
(105, 'Sam ', 'Ewaoche', 'No. 17 Hadejia Rd Kano, Opp Fara Fara filling Station', '08030442561', 'User', 'gregsneez@gmail.com', 'd00f5d5217896fb7fd601412cb890830', '2022-10-17', 'PAID', 'ACTIVE'),
(106, 'Favour ', 'Pendo', 'number 16 chuka osemeka crescent , kubwa ,abuja', '07033785730', 'User', 'favourpendo231@gmail.com', '19265f85bf9d0e98e6cea7db9e5958fc', '2022-10-17', 'PAID', 'ACTIVE'),
(195, 'hectorh', 'worker', 'federal housing estate', '2349038684656', 'Premium', 'hectorgoodman1@gmail.com', 'f7c695b6f85f33c8b48b9a39e7b9419e', '2022-10-02', 'PAID', 'ACTIVE'),
(196, 'chukwukere', 'ezinwoke', 'federal housinioig estate owerri imo state nigeria', '09038684656', 'Premium', 'theresident152@gmail.com', '91b3cf35d376c979297f0977547350e1', '2022-10-05', 'PAID', 'ACTIVE'),
(197, 'chukwukere', 'ezinwoke', 'federal housinioig estate owerri imo state nigeria', '09038684656', 'Premium', 'theresident152@gmail.com', '91b3cf35d376c979297f0977547350e1', '2022-10-05', 'PAID', 'ACTIVE'),
(198, 'chukwukere', 'ezinwoke', 'federal housinioig estate owerri imo state nigeria', '09038684656', 'Premium', 'Olaji38@gmail.com', '91b3cf35d376c979297f0977547350e1', '2022-10-05', 'PENDING', 'INACTIVE'),
(199, '', '', '', '', '', 'hector@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', '2022-10-05', 'PENDING', 'INACTIVE'),
(200, 'chukwukere', 'goodman', 'federal housinioig estate owerri imo state nigeriaioio1', '09038684656', 'Premium', 'theresident152@gmail.com', '52fe1038ef3e3e60312631aad790d0d7', '2022-10-05', 'PAID', 'ACTIVE'),
(201, 'redrock', 'technologies', 'federal housinioig estate owerri imo state nigeria', '08068621706', 'Premium', 'redrocktechiamnew@gmail.com', '52fe1038ef3e3e60312631aad790d0d7', '2022-10-05', 'PAID', 'ACTIVE'),
(202, 'Timothy ', 'Babalola', '157, Iju Road, Fagba Lagos', '08101684398', 'User', 'Timsbabs31@gmail.com', 'd40d5ef31dc48b830c120b0508b4c16f', '2022-10-19', 'PAID', 'ACTIVE'),
(203, 'Gatse ', 'Constructions Ltd ', 'No1, Olawale iwajomo close ijagba round about, ota ogun state', '08027264362 ', 'User', 'Gatse.construction@gmail.com', '696b7941caf7a506ed2e28a2aa672fca', '2022-10-19', 'PAID', 'ACTIVE'),
(204, 'Ishola ', 'Temitope', 'Lagos', '08141552646', 'User', 'isholagrace885@gmail.com', '1637a54adcd263f2d3e6ba2d1d571876', '2022-10-19', 'PAID', 'ACTIVE'),
(205, 'Adetona ', 'olufunmilayo ADERONKE', '18a quarter, onireke GRA Ibadan.', '07036138138/09134050294', 'User', 'holabinriholuwafunmilayo@gmail.com', '525298ae012f7f738f3aa52fa4c091cc', '2022-10-19', 'PAID', 'ACTIVE'),
(206, 'Agbom Solomon ', 'Chukwunonso', 'A\r\nNo. 8 obinna Annene street, Off Club road Awka. Anambra State', '07035214886', 'User', 'agbomsolomon2020@gmail.com', '4d606dae7c7928e422c7aaec3b6ff79b', '2022-10-20', 'PAID', 'ACTIVE'),
(207, 'Kudirat ', 'Abdullahi ', ' PWAN legend opposite hope mark fueling station, Nnebisi road, Asaba, Delta state', '09011464348', 'User', 'kudirat99@gmail.com', 'be263e69b1b5c7e47d7f6b0451925eed', '2022-10-20', 'PAID', 'ACTIVE'),
(208, 'Subol Properties', ' Development company Limited', '19, Adefioye Oyemade Street Idimu Lagos.', '08038253457', 'User', 'suyipeters@yahoo.com', 'db3773021f2dcc1015c101dae21881ba', '2022-10-22', 'PAID', 'ACTIVE'),
(209, 'Osanyintola ', 'Olafimihan', 'ABEOKUTA ogun state', ' 08035566273, 09074066700', 'User', 'elderolafimihanjoseph@gmail.com', '04d89b1cd2e6b86d4d723a4b546c7b2b', '2022-10-22', 'PAID', 'ACTIVE'),
(210, 'Abraham ', 'Ubit', 'Abak road by cultural center', '08136485941', 'User', 'ubitabraham@gmail.com', 'f2af2aca334f534871960c16b61b66ba', '2022-10-22', 'PAID', 'ACTIVE'),
(211, 'Advanced Homes And ', 'Properties Limited', 'Km 49 Epe-Lekki Expressway, Suite C3, Chi-Town Shopping Complex, Ibeju-Lekki, Lagos State.', '08186287444', 'User', 'advancedhomesandpropertiesltd@gmail.com', 'd89bba9ddab84a5f9f38ba5caee9ad56', '2022-10-24', 'PAID', 'ACTIVE'),
(212, 'Nkomek ', 'Enterprise', 'Shop A1 Amachai wood market, Amachai Quarters Okpanam Delta State', '0811 067 2877', 'User', 'nkomekenterprise@gmail.com', '420b12d9b5f71328340f4cea073b0654', '2022-10-24', 'PAID', 'ACTIVE'),
(213, 'Oladimeji Saheed ', 'Saibu', '14 Itanlaye street ikotun Lagos.', '08023505438', 'User', 'kamfazgn@yahoo.com', '78ff395a9e589f54d8b06f578de3f89b', '2022-10-24', 'PAID', 'ACTIVE'),
(214, 'Oriseh ', 'Euodia', 'no 8 mukaila lawal street, off alishiba sango ota Ogun state', '08146654109/ 08087066222', 'User', 'oriseheuodia@gmail.com', '72765df63b5716da304afe13fe0b5295', '2022-10-24', 'PAID', 'ACTIVE'),
(215, ' Lydia Onadokun ', 'Inioluwa', '10, Agboola Gomez street, majek, Basorun Town\r\nAjah, Lagos.', '07089173331', 'User', 'Inioluwalydia@gmail.com', '07b996f9112a38d4acd3d453b7a57f92', '2022-10-24', 'PAID', 'ACTIVE'),
(216, 'Laura', ' Eden', ' 7 Church street,Vulcanizer Akowonjo,Egbeda,Lagos state', '08138869886', 'User', 'laudlaugem@gmail.com ', 'a433e1204d45110b9e102a94b6d9e8f9', '2022-10-24', 'PAID', 'ACTIVE'),
(217, 'Oba Adeshola ', 'Alao', 'Lagos', '07010218846', 'User', 'adesholaalao@yahoo.com', '1b022c58e3e9048da07019245d924dfa', '2022-10-24', 'PAID', 'ACTIVE'),
(218, 'Prince Emmanüel ', 'Johnson', ' 5, Bankole street, Magodo phase 1. Lagos.', '08085000600', 'User', 'citybrandsinfo@gmail.com', '066e675cf0c6ac8f56e8d9836deae77f', '2022-10-24', 'PAID', 'ACTIVE'),
(219, '4ward Synergy', 'Resources Ltd', 'CBN Quarters FHA Lugbe, Abuja.', '08037125454', 'User', 'adejarebb@yahoo.com', '00984c8856270c8e6b689e0ee43ee195', '2022-10-25', 'PAID', 'ACTIVE'),
(220, 'Rahmoods ', 'Realty Limited', 'Shop 2, Elewuro Road, Yakoyo Busstop, Akobo, Ibadan', '07017989543 & 09158988805', 'User', 'rahmoodsrealtylimited@gmail.com', '1b4a01fb97d9d4c8970b0934c7616dea', '2022-10-25', 'PAID', 'ACTIVE'),
(221, 'Amadi ', 'Gift Onyinyechi', '31 Airport road Rukpokwu, PH , Rivers state', '08121578931', 'User', 'giftamadio@gmail.com', '3e366fe735a4769fc1cbdb4241abf750', '2022-10-25', 'PAID', 'ACTIVE'),
(222, 'Treasure ', 'Project Management', 'Ultimate plaza channels TV Road Isheri North GRA Ojodu Lagos', '08130473226, 08031102647 ', 'User', 'treasureprojectmanagementcom@gmail.com', '2c8dccb303c0f974d740e2447c920638', '2022-10-25', 'PAID', 'ACTIVE'),
(223, '€rraπderz   ', '〽️ulti-c⭕ncept   🅿️roperties', 'Suit 46 second floor Government Mall Adjacent Zenith bank isale igbehin Abeokuta Ogun State', '08066702367\r\n07015774498', 'User', 'zamyard@gmail.com', '99d944bc4da732d33ddc08272e84a709', '2022-10-26', 'PAID', 'ACTIVE'),
(224, ' Dicax ', 'Properties', '50, Nile Street, Maitama Abuja', '08073519561, 09138266311', 'User', 'Ehichioyaomomogbe@gmail.com', '26704b7b7930f7f6f781ed6d51feddfa', '2022-10-26', 'PAID', 'ACTIVE'),
(225, 'Julius ', 'B. U', 'Port Harcourt.', '07038738103', 'User', 'sojarume@gmail.com', 'bcfebbbfc0abfb1ed3096c58ae93e743', '2022-10-26', 'PAID', 'ACTIVE'),
(226, ' MARKKENNETH ', 'TERNGU ADANYI', 'No10 Faith Hill church road Aso Mararaba.', ' 09034843060', 'User', 'ADANYIMARK@GMAIL.COM', '21f1be6a3b3e23b129bf92897819f0da', '2022-10-31', 'PAID', 'ACTIVE'),
(227, 'Josephine ', 'Ede', 'Abuja/kubwa', '08130739138', 'User', 'josephineede@yahoo.com', '3953fc2ec61f865f1e1c5027311858e6', '2022-10-31', 'PAID', 'ACTIVE'),
(228, 'Bamigboye ', 'Abiodun Olutayo', ' 13/15 oyewole road Papa ashafa agege Lagos', '08060862606', 'User', 'biokemwebs@gmail.com', '6ef5ad52401bad1aa780b7dc21de5e39', '2022-10-31', 'PAID', 'ACTIVE'),
(229, 'Chioma ', 'Irokanulo', 'lagos', '0706292916', 'User', 'cgiroka@gmail.com', '9720101ffe77892c724183dd785210dd', '2022-10-31', 'PAID', 'ACTIVE'),
(230, 'Adebanjo ', 'Yemisi', 'Office address 36 Orelope Egbeda', '08188284255', 'User', 'adebanjotinuke1@gmail.com', '483189f2c0b49084f15a4fd2ce6e9cf4', '2022-10-31', 'PAID', 'ACTIVE'),
(231, 'Abam ', 'Oluchi Eugenia', 'KM 41 REGINA CEALI JUNCTION ALONG ENUGU-ONITSHA EXPRESS WAY AWKA, ANAMBRA STATE', '09075177183', 'User', 'eugenia0014u@gmail.com', '6b073cd5e9397256625ff4950e5299b9', '2022-11-01', 'PAID', 'ACTIVE'),
(232, 'Ajibola ', 'Olufisayo', 'Lagos', ' 08088316692, 07032548225', 'User', 'ajibolafisayo86@gmail.com ', 'c0ac4e18e6d909bdaaae993ce0faa661', '2022-11-01', 'PAID', 'ACTIVE'),
(233, 'Vivian ', 'peacemaker', 'Abraham adesanya off Jeffery plaze', '09133740257', 'User', 'peacemakervivian207@gmail.com', '7c12b89c8379a5ce501b2c489272931c', '2022-11-01', 'PAID', 'ACTIVE'),
(234, 'Joseph ', 'Wilson Gbenga ', 'No 306 Abaranje road by Wazobia bus stop off Ikotun. Lagos state.Nigeria', '08062342035,07089695312,09084235813', 'User', 'gbengajoe4real@gmail.com', 'b04c79ec7c5f7e82d27993dda009ac05', '2022-11-03', 'PAID', 'ACTIVE'),
(235, 'Wahab ', 'Taiwo azeez', '115 Allen avenue Ikeja lagos', '07059252338', 'User', 'wahabtboy247@gmail.com', '392d2b7809e068aea9cd5348cb9574ab', '2022-11-05', 'PAID', 'ACTIVE'),
(236, 'Tarimin ', 'caleb Gidado ', 'No 8 Valentino okorie drive, Prime estate opposite games village  Abuja.', '08160073256', 'User', 'Tarimingidado@gmail.com', '47f7c0336588a9d038c49090872c19b2', '2022-11-05', 'PAID', 'ACTIVE'),
(237, 'Theadeo', 'lurealty', 'Lekki Ajah', '08158245220', 'User', 'theadeolumedia@gmail.com', 'cd628b8edfe20e690e47b391067dd1db', '2022-11-05', 'PAID', 'ACTIVE'),
(238, 'Chikanma', ' Ugochukwu', '51/52 ogba ijaiye opposite UBA bank\r\nZylus Group International', '09054681804', 'User', 'unma1990@gmail.com', '29ff0523edeb26c2bb872bbac367f5fb', '2022-11-07', 'PAID', 'ACTIVE'),
(239, 'Adeyinka ', 'adebayo', 'None Given', '08060789444', 'User', 'Adeyinkaadebayotaiwo@yahoo.com', 'eb06d350b8a0556c8dc518665cbce4be', '2022-11-07', 'PAID', 'ACTIVE'),
(240, 'Chinwe', 'augwu', 'no28 oluwadabire street egan5  igundo lagos', ' 09016942509', 'User', 'nwabigaugwu@gmail.com', '44a727e5f1793e631b31dd49d3a9c61c', '2022-11-07', 'PAID', 'ACTIVE'),
(241, 'Chioma ', 'Ndudi', '28 Langbansa Road, Ado-Ajah.', '08032258008', 'User', 'chiommybenevolence@gmail.com', 'bf34f25eaa252d29fcbc540de691d1e4', '2022-11-07', 'PAID', 'ACTIVE'),
(243, 'Bosede Olufunmilayo Akinsoun\r\n', 'Helpfromabove Homes & Properties', '22 Olatunbosun Street, Shonibare Estate, Maryland, Lagos', '08033081669', 'User', 'aduke2007@gmail.com', 'c7c1fb8a39e053d39a1d49e183d252cc', '2022-11-07', 'PAID', 'ACTIVE'),
(244, 'Lawfat ', 'Properties', '931A Lagos-abeokuta expressway beside Mobil filling station Alakuko bus stop', '08022297236', 'User', 'Lawfatproperties@gmail.com', '95afc2ad9a92066bd7ee15748938838d', '2022-11-09', 'PAID', 'ACTIVE'),
(245, 'Chyke ', 'Osuji', 'suit A55 and A56 First Edition plaza opposite saint Patrick\'s Collage school gate Nnebisi road Asaba.', '07038394437', 'User', 'chykeosuji@gmail.com', '2b392a4998b4cc2e709b28157904b89d', '2022-11-09', 'PAID', 'ACTIVE'),
(246, 'Olakanla ', 'Adeola', 'No 4, Abatakan,Ojoo , Ibadan.', '08162725797', 'User', 'marydee568@gmail.com', '91da7d1ef7decdf8f058e0c92688f27a', '2022-11-09', 'PAID', 'ACTIVE'),
(247, 'Sanjose ', 'properties', 'Gbagaga lagos', '08038237252', 'User', 'zannujoseph@gmail.com', 'cdcf781a08da3e2412cd60399f01b9cd', '2022-11-09', 'PAID', 'ACTIVE'),
(248, 'Joseph ', 'Ayodele Abiola', 'Ibadan', '07049691372', 'User', 'joseph.abiola@adronhomesproperties.com', '1b91fbed612acaed950135081432e5b8', '2022-11-09', 'PAID', 'ACTIVE'),
(249, 'Omosigho ', 'Grace', ' Imota, Ikorodu', '08064487624', 'User', 'graceomosigho@gmail.com', 'f8748b19e54a08c72a1c272c9ad87a0d', '2022-11-11', 'PAID', 'ACTIVE'),
(250, 'Benjamin ', 'onos monday', '125, ugwrughelli, agbarho delta state.', '08106060492', 'User', 'nikiplus1982@gmail.com', '3c9a3090ab4dc44e1e8574a9ed01667b', '2022-11-11', 'PAID', 'ACTIVE'),
(251, 'Umunnakwe ', 'Chioma Priscillia', 'Km 47 Lekki Epe Expressway, Ogidan Bus-stop,Sangotedo,Lagos state.', '09030751428', 'User', 'chiomapriscy8@gmail.com', '77ac66879716576669d2c0285c8964c0', '2022-11-11', 'PAID', 'ACTIVE'),
(252, ' Michael', 'Olugbaro', 'Lagos', '07069395929', 'User', 'olugbaromichael@gmail.com', 'f251e5ffd1420048e782699ae512f8f5', '2022-11-11', 'PAID', 'ACTIVE'),
(253, 'Ogechi ', 'Josephine Uneke-Okenwa', 'Opp Assemblies of God Church Okemini road by Rumuagholu Sars road Port Harcourt Rivers State', '09099008600', 'User', 'ogejossyconcept@gmail.com', '5a3771eb62afb302abfe54aa4d9b13ed', '2022-11-13', 'PAID', 'ACTIVE'),
(254, 'Benjamin onos', 'Monday', '125, ugwrughelli, agbarho delta state.', '08106060492', 'User', 'nikiplus1982@gmail.com', '3c9a3090ab4dc44e1e8574a9ed01667b', '2022-11-13', 'PAID', 'ACTIVE'),
(255, 'OLANREWAJU ', 'ADEMOLAKE', 'Lagos', '09074204508', 'User', 'drapeswag@gmail.com', '512f2381a22d69486b421d22728529bd', '2022-11-13', 'PAID', 'ACTIVE'),
(256, 'oyedokun', 'jumoke', 'None', '08084724192', 'User', 'oyedokunjumoke21@gmail.com', 'ae3b258ff1882180b02e0204720f6aa8', '2022-11-13', 'PAID', 'ACTIVE'),
(257, 'Temitayo ', 'Ajibade', ' Good Success Property @ Rainoil Complex opposite MFM camp, along Lagos Ibadan express way. Magboro, Ogun state', '07054106871', 'User', 'tinukeajibade@gmail.com', '5577aedf4361e6ec4f6d64c0bbafe919', '2022-11-13', 'PAID', 'ACTIVE'),
(400, 'Colmeg ', 'royal home', ' suite a20d Platinum mega plaza behind next cash and carry super market, jahi Abuja', '08061791120, 08141320599', 'User', 'Colmegroyalhomes@gmail.com', '985a3ead21e6ff5e2dcc7132b3a5abcf', '2022-11-15', 'PAID', 'ACTIVE'),
(404, 'newman', 'goodman', 'owerri', '9038684656', 'SuperAdmin', 'thetechguy152@gmail.com', '09038684656', '0000-00-00', 'PAID', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(50) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `txt_ref` varchar(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `tx_id` int(100) NOT NULL,
  `status` varchar(250) NOT NULL,
  `amount` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `name`, `email`, `txt_ref`, `date`, `tx_id`, `status`, `amount`) VALUES
(1, 'Michael', 'dommichelxproperties@gmail.com', '1662459308', '2022-09-06T10:15:47.000Z', 707499414, 'successful', '2535'),
(2, 'AYOMIKUN', 'ayoyinka2011@gmail.com', '1662582242', '2022-09-07T20:26:26.000Z', 708809558, 'successful', '2535'),
(3, 'hectorh', 'hectorgoodman1@gmail.com', '1664749039', '2022-10-02T22:22:51.000Z', 3784422, 'successful', '250'),
(4, 'wonderful ', 'theresident152@gmail.com', '633da5ea2dd3a633da5ea2dd41', '2022-10-05T15:43:15.000Z', 3791328, 'successful', '399'),
(5, 'wonderful ', 'theresident152@gmail.com', '633da66e97453633da66e9745c', '2022-10-05T15:45:13.000Z', 3791331, 'successful', '399'),
(6, 'olaedo ', 'Olaji38@gmail.com', '633da76095235633da7609523d', '2022-10-05T15:49:41.000Z', 3791338, 'successful', '399'),
(7, 'newman ', 'hector@gmail.com', '633dd71ecf088633dd71ecf08f', '2022-10-05T19:14:41.000Z', 3791669, 'successful', '399'),
(8, 'chukwukere ', 'theresident152@gmail.com', '633de79150ce0633de79150cf1', '2022-10-05T20:24:44.000Z', 3791746, 'successful', '399'),
(9, 'redrock ', 'redrocktechiamnew@gmail.com', '633e024108c48633e024108c85', '2022-10-05T22:17:40.000Z', 3791837, 'successful', '399');

-- --------------------------------------------------------

--
-- Table structure for table `usersnotification`
--

CREATE TABLE `usersnotification` (
  `id` int(50) NOT NULL,
  `title` varchar(250) NOT NULL,
  `admin_name` varchar(250) NOT NULL,
  `message` varchar(250) NOT NULL,
  `user_id` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usersnotification`
--

INSERT INTO `usersnotification` (`id`, `title`, `admin_name`, `message`, `user_id`) VALUES
(6, 'hello', 'marshall', 'hello', '46');

-- --------------------------------------------------------

--
-- Table structure for table `whatsapp`
--

CREATE TABLE `whatsapp` (
  `id` int(6) UNSIGNED NOT NULL,
  `whats_app_click` varchar(30) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `whatsapp`
--

INSERT INTO `whatsapp` (`id`, `whats_app_click`, `user_id`, `reg_date`) VALUES
(27, ' ', '123', '2022-11-12 18:44:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customerlikes`
--
ALTER TABLE `customerlikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customerscomment`
--
ALTER TABLE `customerscomment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketer`
--
ALTER TABLE `marketer`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postviewcount`
--
ALTER TABLE `postviewcount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `sub_admins`
--
ALTER TABLE `sub_admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usersnotification`
--
ALTER TABLE `usersnotification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whatsapp`
--
ALTER TABLE `whatsapp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customerlikes`
--
ALTER TABLE `customerlikes`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customerscomment`
--
ALTER TABLE `customerscomment`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketer`
--
ALTER TABLE `marketer`
  MODIFY `mid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `phone`
--
ALTER TABLE `phone`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `postviewcount`
--
ALTER TABLE `postviewcount`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `sid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sub_admins`
--
ALTER TABLE `sub_admins`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=405;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `usersnotification`
--
ALTER TABLE `usersnotification`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `whatsapp`
--
ALTER TABLE `whatsapp`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
