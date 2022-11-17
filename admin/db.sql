-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 27, 2022 at 04:54 PM
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
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
-- Table structure for table `customerLikes`
--

CREATE TABLE `customerLikes` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customersComment`
--

CREATE TABLE `customersComment` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `mobile` varchar(250) NOT NULL,
  `message` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `property_id` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customersComment`
--

INSERT INTO `customersComment` (`id`, `name`, `subject`, `email`, `mobile`, `message`, `date`, `property_id`) VALUES
(1, 'Suleiman Ibrahim Inuwa', 'isuleimanibrahim@gmail.com', 'isuleimanibrahim@gmail.com', '8144832703', 'nice product ', '2022-09-02', '8'),
(2, 'Ibrahim', 'hello', 'isuleimanibrahim@gmail.com', '08144832703', 'nice product ', '2022-09-02', '52');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
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
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
CREATE TABLE IF NOT EXISTS `property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `bedroom` int(50) NOT NULL,
  `hall` int(11) NOT NULL,
  `kitchen` int(11) NOT NULL,
  `bathroom` int(50) NOT NULL,
  `balcony` int(11) NOT NULL,
  `price` int(50) NOT NULL,
  `sqr_price` varchar(11) NOT NULL,
  `address` text NOT NULL,
  `video` varchar(300) NOT NULL,
  `image1` varchar(300) NOT NULL,
  `description` longtext NOT NULL,
  `location` varchar(300) NOT NULL,
  `property_owner` varchar(20) NOT NULL,
  `property_type` varchar(50) NOT NULL,
  `lot_size` varchar(20) NOT NULL,
  `status` varchar(200) NOT NULL,
  `land_area` varchar(200) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `image3` varchar(300) NOT NULL,
  `image2` varchar(300) NOT NULL,
  `image4` varchar(300) NOT NULL,
  `user_id` bigint(255) NOT NULL,
  `role` varchar(250) NOT NULL,
  `uid` int(50) NOT NULL,
  `feature` longtext NOT NULL,
  `ptype` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `mapimage` varchar(300) NOT NULL,
  `topmapimage` varchar(300) NOT NULL,
  `groundmapimage` varchar(300) NOT NULL,
  `totalfloor` varchar(50) NOT NULL,
  `isFeatured` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`,`title`,`bedroom`,`hall`,`kitchen`,`bathroom`,`balcony`,`price`,`sqr_price`,`address`,`video`,`image1`,`description`,`location`,`property_owner`,`property_type`,`lot_size`,`status`,`land_area`,`date`,`image3`,`image2`,`image4`,`user_id`,`role`,`uid`,`feature`,`ptype`,`city`,`state`,`mapimage`,`topmapimage`,`groundmapimage`,`totalfloor`,`isFeatured`) VALUES
(147, 'Land for sale', 0, 0, 0, 0, 0, '15000000', '', 'Katampe Extensio, Diplomatic Zone Abuja ', '', 'IMG-20220929-WA0003.jpg', 'â€¼ï¸PROMO on FCDA approved Estate plots @ Katampe Extension Diplomatic Zone Abuja\r\nâ˜Žï¸Call /WhatsApp \r\n 08064327140    09073741175â€¼ï¸\r\nðŸŽ†CURRENT PRICE: Promo \r\n300SQM  @ 9Million\r\n500SQM @15Million\r\n800SQM @35Million', '', 'Private ', 'Land ', '', 'No', '', '2022-10-01 19:56:10', 'IMG-20220929-WA0006.jpg', 'IMG-20220929-WA0004.jpg', 'IMG-20220929-WA0005.jpg', 2, 'User', '', '', '', '', '', '', '', '', '',''),
(148, 'newj', 2, 3, 3, 2, 1, '6970000', '2', 'Extensio, Diplomatic Zone Abuja', '', 'img2.jpg', '', '', 'hector', 'land', 'alot', 'No', '', '2022-10-02 08:28:03', 'img3.jpg', 'img1.jpg', 'img2.jpg', 1, 'SuperAdmin','','','','','','','','','',''),
(149, 'Oak Haven Asaba', 0, 0, 0, 0, 0, '750000', '', 'Opposite Admiralty university, Ibusa', 'https://youtu.be/QoE6SA5w1Yo', 'IMG-20221004-WA0046.jpg', 'Serviced estate. Located behind 63 brigade army barracks, Ibusa. 100% dry table land. 1 plot = 464 square meters. Buy 5 plots and get 1 free.', '', 'PWAN Haven', 'Landed property', '', 'No', '', '2022-10-04 06:48:10', 'IMG-20220921-WA0122.jpg', 'IMG-20220930-WA0214.jpg', 'IMG-20220322-WA0166.jpg', 23, 'User', '', '', '', '', '', '', '', '', '',''),
(150, 'SALES ', 0, 0, 0, 0, 0, '11000000000', '60000', 'VGV, Ajah', 'https://wa.me/message/PXHA4AH6DAEXI1', 'VID-20220916-WA0058.mp4', 'property=  100 plots for sale in VGC..60,000SQM \r\nPRICE =11B\r\nTITLE =C OF O', 'https://wa.me/message/PXHA4AH6DAEXI1 ', 'Client', 'Land', '100 plots ', 'No', '100 plots ', '2022-10-04 06:56:41', 'VID-20220916-WA0058.mp4', 'VID-20220916-WA0058.mp4', 'VID-20220916-WA0058.mp4', 15, 'User', '', '', '', '', '', '', '', '', '',''),
(151, 'C of O', 0, 0, 0, 0, 0, '6000000', '', 'At the back of new RCCG auditorium Shimawa', '', 'IMG-20220515-WA0007.jpg', 'Plots of land in beautiful secured estate with social amenities like mini stadium, children play ground, shopping mall, restaurant and many more.', '', 'Adron Homes ', 'Land', '540sqm', 'No', 'Shimawa', '2022-10-04 07:45:15', 'IMG-20220604-WA0008.jpg', 'IMG-20220515-WA0009.jpg', 'IMG-20220907-WA0027.jpg', 3, 'User', '', '', '', '', '', '', '', '', '',''),
(152, 'C of O ', 0, 0, 0, 0, 0, '3', '', 'Salvation estate ', '', 'IMG-20221005-WA0024.jpg', '', '', 'Conquerors home ', 'Duplex ', '', 'yes', '', '2022-10-05 16:25:36', 'IMG-20221005-WA0024.jpg', 'IMG-20221005-WA0024.jpg', 'IMG-20221005-WA0024.jpg', 13, 'User', '', '', '', '', '', '', '', '', '',''),
(153, 'C of O ', 3, 2, 2, 3, 1, '48000000', '', 'Ikota, lekki Lagos ', '', 'IMG-20221005-WA0018.jpg', '', 'https://drive.google.com/drive/folders/10SLuUjLMF6zyARMRboyitO-rXjOg_UG9', 'Primeparkland ', '3 bedroom terrace duplex ', '', 'yes', '', '2022-10-05 16:37:17', 'IMG-20221005-WA0018.jpg', 'IMG-20221005-WA0018.jpg', 'IMG-20221005-WA0018.jpg', 13, 'User', '', '', '', '', '', '', '', '', '',''),
(154, 'North Avalon', 0, 0, 0, 0, 0, '2500000', '500', 'Igbonla Epe, Lagos state ', '', 'IMG-20221003-WA0012.jpg', '', '', 'Luminous hills ', 'Land', '', 'yes', 'Epe', '2022-10-07 17:56:08', 'IMG-20221003-WA0019.jpg', 'IMG-20221003-WA0016.jpg', 'IMG-20221003-WA0015.jpg', 42, 'User', '', '', '', '', '', '', '', '', '',''),
(155, 'Zion city Benin', 0, 0, 0, 0, 0, '1350000', '', 'Along Benin-Abraka road, Aviakagba town, Benin City.', 'https://youtu.be/QoE6SA5w1Yo', 'IMG_6738.jpeg', 'Title: CofO.\r\n100% dry table land. Located in a built up enviroment. Plot size: 464 square meters', '', 'Pwan pro', 'Estate Land', '', 'No', '', '2022-10-07 20:50:59', 'IMG_6742.jpeg', 'IMG-20221002-WA0081.jpg', '20220911_132859.jpg', 23, 'User', '', '', '', '', '', '', '', '', '',''),
(156, 'Zylus Court Phase Tw', 0, 0, 0, 0, 0, '18000000', '', 'Bogije, adjacent Beachwood estate', '', 'IMG-20220905-WA0009.jpg', 'Zylus Court is inside Richland gardens', '', 'Zylus Homes', 'Land for sale', '', 'No', '', '2022-10-08 18:55:01', 'IMG-20220813-WA0049.jpg', 'IMG-20220905-WA0010.jpg', 'IMG-20220813-WA0047.jpg', 40, 'User', '', '', '', '', '', '', '', '', '',''),
(157, 'HOUSE FOR SALE', 0, 0, 0, 0, 0, '40000000', '', 'Golf, Ibeju Lekki', '', 'IMG_20220909_124018.jpg', 'Four units of four bedrooms terrace duplex', '', 'Owned by an individu', 'Terrace Duplex', '', 'No', '', '2022-10-08 19:00:25', 'IMG_20220909_124142.jpg', 'IMG_20220909_124259.jpg', 'IMG_20220909_124434.jpg', 40, 'User', '', '', '', '', '', '', '', '', '',''),
(158, 'North Avalon', 0, 0, 0, 0, 0, '2500000', '', 'Igbonla, Epe, Lagos', '', 'IMG-20220905-WA0014.jpg', 'North Avalon estate is located at Igbonla Epe, Lagos', '', 'Luminous Hils', 'Land for sale', '', 'No', '', '2022-10-08 19:59:53', 'IMG-20220905-WA0017.jpg', 'IMG-20220905-WA0016.jpg', 'IMG-20220905-WA0020.jpg', 40, 'User', '', '', '', '', '', '', '', '', '',''),
(159, 'Lekki Pride Phase 3', 0, 0, 0, 0, 0, '65000000', '', 'Ogombo road, Abraham Adesanya', '', 'IMG-20220910-WA0016.jpg', 'Ogombo road, Abraham Adesanya', '', 'Zylus Homes', 'Land for sale', '', 'No', '', '2022-10-08 20:06:34', 'IMG-20220708-WA0005.jpg', 'IMG-20220708-WA0009.jpg', 'IMG-20220708-WA0008.jpg', 40, 'User', '', '', '', '', '', '', '', '', '',''),
(160, 'Western Hilltop', 0, 0, 0, 0, 0, '10000000', '', 'Ikola road, Alagbado, Lagos', '', 'IMG-20221002-WA0024.jpg', 'Ikola road Alagbado, Lagos Mainland', '', 'Zylus Homes', 'Land for sale', '', 'No', '', '2022-10-08 20:12:45', 'IMG-20221002-WA0026.jpg', 'IMG-20221002-WA0028.jpg', 'IMG-20221002-WA0028.jpg', 40, 'User', '', '', '', '', '', '', '', '', '',''),
(161, 'Real Estate Investme', 0, 0, 0, 0, 0, '500000', '', '168 Awolowo road, Ikoyi, Lagos', '', 'IMG-20221003-WA0023.jpg', 'This is a trading product, which allows investors, invest into real estate', '', 'Zylus Investment LTD', 'Real Estate CashBack', '', 'No', '', '2022-10-08 20:20:00', 'IMG-20221003-WA0025.jpg', 'IMG-20221003-WA0024.jpg', 'IMG-20221003-WA0054.jpg', 40, 'User', '', '', '', '', '', '', '', '', '',''),
(162, 'Plots of Land for Sa', 0, 0, 0, 0, 0, '1000000', '', 'Behind Estate 15, New auditorium, Redemption camp', '', 'IMG-20221008-WA0001.jpg', '', 'Rain Oil Mega Station Ibafo PCH8+G96, 121101, Pakuro https://maps.app.goo.gl/RDq6XDwjTW1gfcYW6', 'Good Success Estate ', 'Land', '600 SQM', 'yes', 'Simawa', '2022-10-09 01:49:38', '0f9dfa9c553340439a0ebe26e9f4c568.jpg', 'GS1.jpg', '84be614a07ec43b4a352170b98f8f431.jpg', 45, 'User', '', '', '', '', '', '', '', '', '',''),
(163, 'Land for sale', 0, 0, 0, 0, 0, '8', '', 'Avu Owerri ', '', 'VID-20220927-WA0018.mp4', '', 'Avu-owerri ', 'Gasvine properties l', 'Land', '', 'No', '', '2022-10-09 09:48:25', 'FINALREDESIGN.pdf', 'VID-20220905-WA0007.mp4', 'VID-20221008-WA0014.mp4', 50, 'User', '', '', '', '', '', '', '', '', '',''),
(164, 'Land for slae', 0, 0, 0, 0, 0, '5', '', 'Mowe Ofada Ogun state phase 1 and 2', '', 'IMG-20220929-WA0001.jpg', 'Land for sale at Mowe Ofada Ogun state ', 'Mowe Ofada Ogun state,phase 1 &2', 'Gasvine properties l', 'Land', '', 'No', '', '2022-10-09 10:15:32', 'FB_IMG_1660137434083.jpg', 'FB_IMG_1660137455117.jpg', 'FB_IMG_1660137393029.jpg', 50, 'User', '', '', '', '', '', '', '', '', '',''),
(165, 'Land for sale ', 0, 0, 0, 0, 0, '4', '', 'Isele-Azagba Asaba', '', 'IMG-20221004-WA0006.jpg', 'Land for sale at Isele-Azagba Asaba', 'Isele-Azagba Asaba', 'Gasvine properties l', 'Land', '', 'No', '', '2022-10-09 10:25:37', 'IMG-20221004-WA0018.jpg', 'IMG-20221004-WA0005.jpg', 'IMG-20221004-WA0015.jpg', 50, 'User', '', '', '', '', '', '', '', '', '',''),
(166, 'Land for sale', 0, 0, 0, 0, 0, '5', '', 'Mowe Ofada Ogun state phase 1 ', '', 'VID-20220927-WA0017.mp4', 'Land for sale at Mowe Ofada behind popular yotomi Estate', 'Mowe Ofada Ogun state,phase 1 ', 'Gasvine properties l', 'Land', '', 'No', '', '2022-10-09 10:38:39', 'IMG-20220929-WA0001.jpg', 'VID-20220927-WA0016.mp4', 'IMG-20220929-WA0001.jpg', 50, 'User', '', '', '', '', '', '', '', '', '',''),
(167, 'Epe express way, Ele', 0, 0, 0, 0, 0, '7000000', '500', ' Epe express way, Eleju Epe Lagos.', '', 'IMG-20221007-WA0077.jpg', '3-12months payment plan\r\n1m initial deposit\r\nWhatapp/call for more enquries: 09023292707', 'https://maps.google.com/?q=6.655371,3.795477&entry=gps', 'Merdorf Exr Solution', 'Land ', '500 sqr meter', 'No', 'Epe, Lagos ', '2022-10-09 18:08:06', 'IMG-20221007-WA0019.jpg', 'IMG-20221007-WA0024.jpg', 'IMG-20221009-WA0047.jpg', 54, 'User', '', '', '', '', '', '', '', '', '',''),
(168, 'Land for sale ', 0, 0, 0, 0, 0, '25', '', 'Royal court estate @ibeju lekki  before  the dangote refinery ', '', 'VID-20221009-WA0003.mp4', 'Land for sale royal court estate at IBEJU lekki before dangote refinery lagos ', 'Royal court estate IBEJU lekki ', 'Gasvine properties l', 'Land', '', 'No', '', '2022-10-10 03:05:48', 'IMG-20220928-WA0023.jpg', 'IMG-20221009-WA0001.jpg', 'VID-20221009-WA0003.mp4', 50, 'User', '', '', '', '', '', '', '', '', '',''),
(169, 'Legend city Nnewi', 0, 0, 0, 0, 0, '6000000', '', 'Behind Nnamdi Azikiwe teaching hospital, Akamili-Nnewi', 'https://youtu.be/D4HOTCbtc5w', 'IMG-20220919-WA0149.jpg', '100% dry table land. 464 square meters for a plot. ', '', 'PWAN Legend', 'Estate Land', '', 'No', '', '2022-10-10 07:26:19', 'IMG-20220322-WA0166.jpg', 'IMG-20220928-WA0120.jpg', 'IMG-20220721-WA0047.jpg', 23, 'User', '', '', '', '', '', '', '', '', '',''),
(170, 'C of O', 0, 0, 0, 0, 0, '25000000', '', 'Orofun Town, Free Trade Zone, beju.Lekki, Lagos', '', 'IMG-20221010-WA0028.jpg', '*THE WEALTHY PLACE*ðŸ™\r\n\r\nWHY SHOULD YOU BUY THE WEALTHY PLACE?ðŸ¤·â€â™€ï¸\r\n\r\nItâ€™s the perfect location for your business!\r\n\r\nItâ€™s in proximity to:\r\n\r\nðŸ’¹Lekki Free Trade Zone\r\nðŸ›³ï¸Lekki Deep Seaport\r\nðŸ™ï¸Dangote Refinery\r\nðŸ¢Lekki Worldwide Investment\r\nðŸ–ï¸Eleko Beach\r\nðŸ¥Akodo G', '', 'Formidable Corporate', 'Commerical Service Plots', '500sqm', 'No', '50 by 100', '2022-10-10 08:17:35', 'IMG-20221010-WA0026.jpg', 'IMG-20221010-WA0027.jpg', 'IMG-20221010-WA0026.jpg', 55, 'User', '', '', '', '', '', '', '', '', '',''),
(171, 'new', 5, 6, 6, 9, 0, '5604999', '555', '', 'https://fyndah.com/properties.php', 'properties-6.jpg', 'fjjgjjg gigjjgjjgjgjjgjg jgjgjgjgjjgjgjgj gjjgjgjgjjgjgjjgiujkhjjhjkkjjhjhjkjkjkjkjkjkjnnjknijnijnjjnnjnjnjjnjnnjnjjnnjjj', 'https://fyndah.com/properties.php', 'test', 'bungalow', '3400', 'yes', '12square', '2022-10-10 08:32:41', 'properties-4.jpg', 'properties-16.jpg', 'properties-18.jpg', 57, 'User', '', '', '', '', '', '', '', '', '',''),
(172, 'C of O', 0, 0, 0, 0, 0, '9000000', '', 'Aiyetoro Town Ibeju Lekki', '', 'IMG-20221010-WA0031.jpg', '*INTRODUCING FAIRMONT GREEN & SMART ESTATE* \r\n\r\nHow does it feel to live in a fully- optimized estate with everything done at the touch of a button?\r\n\r\nFairmont Green & Smart Estate boasts of a 100% wholly clean energy and sustainable environment in a friendly neighborhood \r\n\r\nDo you often wonder ho', '', 'Formidable Corporate', 'Commerical Service Plots', '500sqm', 'No', '300', '2022-10-10 08:41:37', 'IMG-20221010-WA0029.jpg', 'IMG-20221010-WA0030.jpg', '20220825_145757.jpg', 55, 'User', '', '', '', '', '', '', '', '', '',''),
(173, 'Government Gazette ', 0, 0, 0, 0, 0, '15.000000', '', 'OGD Estate Asero Abeokuta ', '', 'received_471836988157759.jpeg', 'Fenced 3 Bedroom Bungalow for Sale ! ', '', 'Private ', '3 Bedroom Bungalow ', '', 'yes', '', '2022-10-10 10:41:23', 'IMG-20220906-WA0000.jpg', 'IMG-20220906-WA0000.jpg', 'IMG-20220906-WA0002.jpg', 49, 'User', '', '', '', '', '', '', '', '', '',''),
(174, 'Queen Garden 2', 0, 0, 0, 0, 0, '2000000', '', 'Mowe-ofada ', '', 'IMG-20221003-WA0006.jpg', 'Shimawa mowe-ofada Ogun state ', '', 'Landmark', 'Land', '', 'yes', '600 sqm', '2022-10-10 11:45:05', 'IMG-20221003-WA0006.jpg', 'IMG-20221003-WA0007.jpg', 'IMG-20221003-WA0006.jpg', 42, 'User', '', '', '', '', '', '', '', '', '',''),
(175, 'FCDA approved, Right', 0, 0, 0, 0, 0, '3', '', 'TradeMoore, Lugbe, Abuja', '', 'IMG-20220920-WA0013.jpg', '', '', 'Greener Estate Devel', 'Penthouse, Terrace, Duplex ', '', 'No', '', '2022-10-10 15:30:18', 'IMG-20220920-WA0015.jpg', 'IMG-20220921-WA0000.jpg', 'IMG-20220920-WA0019.jpg', 61, 'User', '', '', '', '', '', '', '', '', '',''),
(176, 'AMAC Approved ', 0, 0, 0, 0, 0, '3000000', '', 'TradeMoore, Lugbe, Abuja', 'None', 'IMG-20221007-WA0000.jpg', 'Greener Estate Developer offers  buildable, solid and impressive lands for sale with AMAC approval; no need for \"Ominile\" wahala. Schedule a tour with us today.', 'Abuja', 'Greener Estate Devel', 'Penthouse, Terrace, Duplex ', '70000000000', 'No', 'Unlmited ', '2022-10-10 16:28:17', 'IMG-20220920-WA0013.jpg', 'Screenshot_20220924-120439_WhatsApp.jpg', 'IMG-20220920-WA0014.jpg', 61, 'User', '', '', '', '', '', '', '', '', '',''),
(177, 'Distress Sale ', 0, 0, 0, 0, 0, '120000000', '', 'Alpha beach road, Atlantic view estate, Lekki ', '', 'IMG-20221010-WA0003.jpg', 'Distress Sales!!!Luxury 1 unit of 3 bedroom duplex with BQ ,1 unit 3bedrooms Apartment with BQ and 1 unit of 2 bedroom Apartments on a block .\r\n@ Fantastic Location\r\nAlpha Beach Road \"Atlantic View Estates\" Chevron Environment.\r\n\r\nFACILITIES;-\r\n\r\n1. All rooms Ensuite.\r\n2.Large Kitchen with modern ca', '', 'Private ', 'House ', '', 'No', '', '2022-10-10 19:22:12', 'IMG-20221010-WA0001.jpg', 'IMG-20221010-WA0002.jpg', 'IMG-20221010-WA0002.jpg', 1, 'SuperAdmin','','','','','','','','','',''),
(178, 'Land for sale ', 0, 0, 0, 0, 0, '750000', '', 'Epe, Lagos state ', '', 'IMG-20221008-WA0017.jpg', 'WHY YOU SHOULD BE A LAND OWNER IN EPE\r\n\r\nðŸ“ŒEPE (THE NEW LAGOS)\r\nEpe is one of the major local areas in Lagos state. It is located close to the northern part of #Lekki.\r\n\r\nEpe promises to be the residential capital of one of the largest emerging economic centers in West Africa (Ibeju-lekki).\r\n\r\nEpe', '', 'Private ', 'Land', '', 'No', '', '2022-10-10 19:29:38', 'IMG-20221008-WA0017.jpg', 'IMG-20221008-WA0017.jpg', 'IMG-20221008-WA0017.jpg', 1, 'SuperAdmin','','','','','','','','','',''),
(179, 'Land for sale ', 0, 0, 0, 0, 0, '1000000', '', 'Covenant university axis, Ogun state ', '', 'IMG-20221011-WA0000.jpg', 'Buy the Future while is Cheap!\r\n\r\nWe are proud to introduce Peace Gardens site @  ATAN VIP.\r\n\r\nIt an Amazing and Serene environment just 15 minutes drive from the Prestigious Covenant University.\r\n \r\nPeace Gardens ATAN VIP has many amazing features and  developmental projects that are guaranteed\r\nto', '', 'Private ', 'Land ', '', 'yes', '', '2022-10-10 19:32:33', 'IMG-20221011-WA0000.jpg', 'IMG-20221011-WA0000.jpg', 'IMG-20221011-WA0000.jpg', 1, 'SuperAdmin','','','','','','','','','',''),
(180, 'Prime City Estate ', 0, 0, 0, 0, 0, '2500000', '4300', 'Prime city estate ilara Epe ', '', 'E749655A-DCD6-4A33-90BA-A88A6BDB38A8.jpeg', 'Prime city estate ilara epe 3 mint away from st Augustineâ€™s universityâ€¦ 100% dry land, good road network, steady power supply(solar) etc ', '', 'Ace Real Estate ', 'Prime City Estate(properties)', '600sqm ', 'No', '600', '2022-10-11 04:12:11', 'IMG_4311.MOV', 'IMG_4921.MOV', 'IMG_4893.MOV', 51, 'User', '', '', '', '', '', '', '', '', '',''),
(181, 'WEST BRIDGE   ESTATE', 4, 0, 1, 5, 0, '65000000', '6499998', ' LAFIAJI STREET  ORCHID ROAD ', '', '1.jpeg', '', '', 'D &D Realtor', ' 4 BEDROOMS SEMI DETACHED', '270SQM', 'yes', '300SQM', '2022-10-11 10:05:48', '7.jpeg', '2.jpeg', '6.jpeg', 57, 'User', '', '', '', '', '', '', '', '', '',''),
(182, 'WEST BRIDGE   ESTATE', 5, 0, 1, 3, 1, '75000000', '75000000', ' Luxury  detailed Location  - Orchid  road  opposite Enyo Station  by the roundabou', ' Luxury  detailed Location  - Orchid  road  opposite Enyo Station  by the roundabou', '3.jpeg', 'Our Offer- 8 months  payment plan. 30% down  payment. \r\n(1) 5 bedrooms  fully detached  with BQ= 95m\r\n(2) 4 bedrooms  fully  detached  With BQ =90m\r\n(3) 4 Bedrooms  semi detached with  BQ = 75m \r\n\r\nFACILITIES \r\nFully  Serviced Estate \r\n(1) Smart  Home \r\n(2))24 HrsTap water/Treatment plant \r\n(3))24 H', 'LEKKI', 'D &D Realtor', ' 5 BEDROOMS FULLY  DETACHED', '270SQM', 'yes', '300SQM', '2022-10-11 10:50:30', '16.jpeg', '3.jpeg', '10.jpeg', 57, 'User', '', '', '', '', '', '', '', '', '',''),
(183, 'WEST BRIDGE   ESTATE', 5, 0, 1, 5, 1, '100000000', '', 'Conservation park  by Chevron Toll gate  LEKKI ', '', '6.jpeg', '', '', 'D &D Realtor', ' 5 BEDROOMS FULLY  DETACHED', '270SQM', 'yes', '300SQM', '2022-10-11 11:09:45', '4.jpeg', '5.jpeg', '6.jpeg', 57, 'User', '', '', '', '', '', '', '', '', '',''),
(184, 'Estate Land ', 0, 0, 0, 0, 0, '20000000', '', 'Mowe/Ofada', '', 'IMG-20220923-WA0024.jpg', 'QUEENS HOMES, MOWE/OFADA\r\n\r\nQueens Homes Mowe offers you one- of-a kind land space in which exquisite apartments that carry the gorgeous signature of readiness, designed exclusively to suit your taste.\r\n\r\nThe apartments are tucked in a beautiful and serene environment off the Lagos/ Ibadan Exprressw', '', 'Private ', 'Land', '', 'No', '', '2022-10-12 05:26:07', 'IMG-20220923-WA0022.jpg', 'IMG-20220923-WA0023.jpg', 'IMG-20220923-WA0023.jpg', 65, 'User', '', '', '', '', '', '', '', '', '',''),
(185, 'Distress Sales!!!Lux', 12, 0, 3, 13, 3, '120000000', '120000000', 'Atlantic view  Estate  ( Alpha beach road) LEKKI', ' Luxury  detailed Location  - Orchid  road  opposite Enyo Station  by the roundabou', '4.jpeg', 'Distress Sales!!!Luxury 1 unit of 3 bedroom duplex with BQ ,1 unit 3bedrooms Apartment with BQ and 1 unit of 2 bedroom Apartments on a block .\r\n@ Fantastic Location\r\nAlpha Beach Road \"Atlantic View Estates\" Chevron Environment.\r\n\r\nFACILITIES;-\r\n\r\n1. All rooms Ensuite.\r\n2.Large Kitchen with modern ca', 'LEKKI', 'D &D Realtor', 'Luxury 1 unit of 3 bedroom duplex with BQ ,1 unit ', '623sqmsqm', 'yes', '764SQM', '2022-10-12 08:06:12', '8.jpeg', '6.jpeg', '5.jpeg', 57, 'User', '', '', '', '', '', '', '', '', '',''),
(186, 'CofO', 5, 0, 1, 6, 2, '160000000', '', 'Off dbs road, asaba', '', 'IMG-20220825-WA0004.jpg', 'A duplex of wonder and class, ', 'Asaba GRA', 'Nil', 'Duplex', '50 by 100', 'No', '50 by 100', '2022-10-12 09:29:24', 'IMG-20220825-WA0010.jpg', 'IMG-20220825-WA0011.jpg', 'IMG-20220825-WA0006.jpg', 65, 'User', '', '', '', '', '', '', '', '', '',''),
(187, 'Prime City Estate ', 0, 0, 0, 0, 0, '2500000', '4300', 'Prime City Estate ilara Epe ', '', 'D989C664-B41E-4653-9415-0CEFE9EBE82F.png', 'Prime city estate ilara epe currently selling for 2.5m at a discounted price and will be selling for 3.5m by the end of the month ', '', 'Ace Real Estate ', 'Prime City Estate ', '600sqm ', 'No', '600sqm ', '2022-10-12 11:06:47', 'IMG_4921.MOV', 'D04D519B-E54D-431B-8AFF-8D281A2895B4.jpeg', 'IMG_4925.MOV', 51, 'User', '', '', '', '', '', '', '', '', '',''),
(188, 'CONCRETE STAMPS FLOO', 0, 0, 0, 0, 0, '6500', '6500', 'Pure water along badagry expressway Lagos', 'Nill', 'Screenshot_20221003-073458_1.jpg', 'SHP construction company. These are our work sample call us let give u the best at affordable price...our prices are unbeatable..calls or WhatsApp 09067969473..08155956650.', 'Nill', 'SOLARHOUSEPLAN CONST', 'STAMPS FLOOR', 'Square meters', 'yes', '', '2022-10-13 00:25:29', 'FB_IMG_1660144434587_1.jpg', 'img_1663105297955_1.jpg', 'InShot_20220618_161324916_transcpr.jpg', 72, 'User', '', '', '', '', '', '', '', '', '',''),
(189, 'C OfO', 4, 0, 1, 5, 0, '22000000', '', 'Wire and cable, Apata, Ibadan', '', 'Screenshot_20220828-095847.png', '4bedroom bungalow with extra made room and extra half plot at the back', '', 'R. E. E', 'Bungalow', '', 'No', '600sqm', '2022-10-13 00:41:10', 'Screenshot_20220828-095900.png', 'Screenshot_20220828-095837.png', 'Screenshot_20220827-232505.png', 69, 'User', '', '', '', '', '', '', '', '', '',''),
(190, 'C Of O', 3, 2, 1, 0, 0, '13000000', '', 'Wire and cable, Apata, Ibadan', '', 'Screenshot_20220612-152327.png', '', '', 'R. E. E', '2 flats Bungalow', '', 'yes', '', '2022-10-13 01:36:37', 'Screenshot_20220612-152311.png', 'Screenshot_20220806-123323.png', 'Screenshot_20220806-123313.png', 69, 'User', '', '', '', '', '', '', '', '', '',''),
(191, 'C Of O', 0, 0, 0, 0, 0, '4000000', '', 'Cocacola plant,Asejire Ibadan', '', 'Screenshot_20221012-171134~2.png', '', '', 'R. E. E', 'Plots of land', '', 'yes', '', '2022-10-13 01:43:27', 'Screenshot_20221012-171134~2.png', 'Screenshot_20221012-171134~2.png', 'Screenshot_20221012-171134~2.png', 69, 'User', '', '', '', '', '', '', '', '', '',''),
(192, 'C Of O', 0, 0, 0, 0, 0, '42000000', '', 'Elebu estate, Akala Express', '', 'Screenshot_20220807-211238~3.png', '', '', 'R. E. E', 'Ensuite 4 bedroom bungalow', '', 'yes', '', '2022-10-13 01:52:43', 'Screenshot_20220807-211213~2.png', 'Screenshot_20220807-211221~2.png', 'Screenshot_20220807-211257~2.png', 69, 'User', '', '', '', '', '', '', '', '', '',''),
(193, 'Adron homes and prop', 0, 0, 0, 0, 0, '3000000', '', 'West park and garden, Tipa garage,Oluyole Ibadan', '', 'aad2b7d5950548b9a3386bd9b039f714.mp4', '', '', 'R. E. E', 'Lands for sale', '', 'yes', '', '2022-10-13 02:04:48', 'Screenshot_20221012-170950~2.png', 'Screenshot_20221012-170950~2.png', 'Screenshot_20221012-171134~2.png', 69, 'User', '', '', '', '', '', '', '', '', '',''),
(194, 'For sale', 8, 0, 3, 11, 3, '22000000', '50', 'Sapele Road benin city', '', 'Screenshot_20221013_095134.jpg', '3bedroom flats into 2parts, and 2bedroom flats', '', 'Agent authorized', 'Bungalow', '50 by 100', 'No', '50 by 100', '2022-10-13 05:12:21', 'Screenshot_20221013_095306.jpg', 'Screenshot_20221013_095338.jpg', 'Screenshot_20221013_095139.jpg', 65, 'User', '', '', '', '', '', '', '', '', '',''),
(195, 'C Of O', 0, 0, 0, 0, 0, '25000000', '', 'New garage, challenge, Ibadan', '', 'Screenshot_20221013-101408~2.png', '', '', 'R. E. E', '3bedroom bungalow', '', 'yes', '', '2022-10-13 05:32:53', 'Screenshot_20221013-101720~2.png', 'Screenshot_20221013-101637~2.png', 'Screenshot_20221013-101038.png', 69, 'User', '', '', '', '', '', '', '', '', '',''),
(196, 'Full Excision  and G', 0, 0, 0, 0, 0, '8000000', '', 'Idado Town, Eleko Ibeju Lekki Lagos', '', 'IMG-20221013-WA0020.jpg', 'GEMSTONE ESTATE 11 ELEKO\r\n\r\nIn fact, we can safely say that Lagos is undeniably the official headquarters of world commerce in Nigeria.\r\nAnd as such, it is the hottest hub for business and InvestmentðŸ’¯ðŸ’¯\r\n\r\nThe Ibeju Lekki axis is a fast developing area on the Lagos island, with an annual price ', '', 'Formidable Corporate', 'Service Plots of Land', '500sqm', 'No', '', '2022-10-13 10:30:11', 'IMG-20221013-WA0019.jpg', 'IMG-20221013-WA0021.jpg', 'IMG-20220930-WA0007.jpg', 55, 'User', '', '', '', '', '', '', '', '', '',''),
(197, 'C of O', 0, 0, 0, 0, 0, '150000000', '', 'Chevron Lekki', '', 'FB_IMG_1664265004411.jpg', '', '', 'Formidable Corporate', '5 Bedroom.Fully Detached Duplex', '', 'No', '', '2022-10-13 13:05:11', 'IMG_20220921_084352_968.jpg', 'IMG_20220927_085617_889.jpg', 'IMG-20220921-WA0014.jpg', 55, 'User', '', '', '', '', '', '', '', '', '',''),
(198, 'Eko City', 0, 0, 0, 0, 0, '15000000', '15000000', 'Eko City,lekki Epe express way,Lekki free trade zone , international airport,via Dangote refinery', '', 'IMG-20221007-WA0062.jpg', 'Eko City is located along Lekki-Epe Expressway, Epe, Lagos. The estate is adjacent to the future Lagos international airport and close to the regionâ€™s largest deep sea port and major Nigerian and international companies. Investors and owners of properties in this estate will definitely enjoy the p', '', 'Ibukun staff of Adro', 'Land', '500sqm ,60-100sqm', 'yes', '500 sqm,60-100sqm', '2022-10-13 22:33:23', 'IMG-20221007-WA0065.jpg', 'IMG-20221007-WA0063.jpg', 'IMG-20221007-WA0064.jpg', 76, 'User', '', '', '', '', '', '', '', '', '',''),
(199, 'West park and garden', 0, 0, 0, 0, 0, '3000000', '3000000', 'West park and garden Ayegun oleyo,off Akala express ,Ibadan', '', 'IMG-20220602-WA0029.jpg', 'West Parks and Garden, Aiyegun-Oleyo, Ibadan our flagship estate in the biggest city in Sub-saharan Africa, launched as double estates in the choicest, serene and fastest developing area of the biggest Nigerian City. West Parks and Gardens Estate Ibadan, our flagship estate in the biggest city in Su', '', 'Staff of Adron homes', 'Land', '540sqm', 'yes', '60-100sqm', '2022-10-13 23:12:57', 'IMG-20220719-WA0065.jpg', 'IMG-20220805-WA0067.jpg', 'IMG-20220719-WA0063.jpg', 76, 'User', '', '', '', '', '', '', '', '', '',''),
(200, '5 bedroom duplex ', 0, 0, 0, 0, 0, '100000000', '', 'Peter Odili Port Harcourt ', '', 'IMG-20221012-WA0001.jpg', '5 Bedroom Duplex for Sale!\r\nLocation: Peter Odili\r\nâ€¢Price: N100M\r\nâ€¢Land Size: 1 & a half Plot of Land\r\n\r\nâ€¢Features:\r\n-2 Living Rooms\r\n-All rooms en-suite\r\n-Family Lounge \r\n-Library with inbuilt reading tables\r\n-Balconies \r\n-Ante Room for 6 card \r\n- water Treatment plant \r\n- Ample parking \r\n- P', '', 'Private ', 'House ', '', 'yes', '', '2022-10-14 04:28:41', 'IMG-20221012-WA0003.jpg', 'IMG-20221012-WA0002.jpg', 'IMG-20221012-WA0004.jpg', 1, 'SuperAdmin','','','','','','','','','',''),
(201, 'Sale', 0, 0, 0, 0, 0, '1600000', '1400000', 'Ori okura ogijo', '', '20221013_175712.jpg', 'Adegbiye road', '', 'Xyconnects ', 'Land', 'Half plot', 'No', '30 x60', '2022-10-14 04:59:46', '20221013_175654.jpg', '20221013_175639.jpg', '20221013_175703.jpg', 70, 'User', '', '', '', '', '', '', '', '', '',''),
(202, 'Land for sale', 0, 0, 0, 0, 0, '3000000', '', 'Lugbe, Airport road Abuja', '', 'IMG-20220919-WA0021.jpg', '', '', 'Besitz Group ltd', 'Land', '300sqm - 500 sqm', 'No', '', '2022-10-14 07:01:22', 'IMG-20220919-WA0010.jpg', 'IMG-20220919-WA0006.jpg', 'IMG-20220923-WA0001.jpg', 79, 'User', '', '', '', '', '', '', '', '', '',''),
(203, '2 bedroom ', 2, 0, 1, 3, 0, '35000000', '', 'Ajah ', '', 'IMG-20221010-WA0130.jpg', '*âšœï¸DECENTLY BUILT TO DETAIL 2 BED APARTMENTâšœï¸*\r\n\r\n- Fully Serviced\r\n- 24 Hours Power\r\n- 24 Hours Security \r\n- Fully Equipped Kitchen\r\n- Spacious Living Room\r\n- Gorgeous Lightings \r\n- Beautiful Fitted Wardrobes\r\n- Modern Sanitary Wares\r\n- Detailed Finishing \r\n- Great Neighbourhood \r\n\r\n *LOCAT', '', 'Diamond ', 'House ', '', 'yes', '', '2022-10-14 07:05:30', 'IMG-20221010-WA0135.jpg', 'IMG-20221010-WA0136.jpg', 'IMG-20221010-WA0136.jpg', 46, 'User', '', '', '', '', '', '', '', '', '',''),
(204, 'Land for sale', 0, 0, 0, 0, 0, '1200000', '', '', '', 'IMG-20220919-WA0017.jpg', '', '', 'Besitz Group ltd', 'Land', '300sqm - 500 sqm', 'No', '', '2022-10-14 18:28:11', 'IMG-20221014-WA0008.jpg', 'IMG-20221013-WA0002.jpg', 'IMG-20221014-WA0008.jpg', 79, 'User', '', '', '', '', '', '', '', '', '',''),
(205, 'Family receipt and a', 0, 0, 0, 0, 0, '17000000', '', 'Vespa bus sango ifo ogun state Nigeria ', '', 'IMG-20210310-WA0002.jpg', 'Vespa bus ojusango ifo ogun state Nigeria ', '', 'Self', '4 unit of mini flat', 'Half plot', 'No', 'Ifo ogun state', '2022-10-14 23:11:48', 'IMG-20210310-WA0000.jpg', 'IMG-20210310-WA0003.jpg', 'IMG-20210310-WA0001.jpg', 86, 'User', '', '', '', '', '', '', '', '', '',''),
(206, 'Excision', 0, 0, 0, 0, 0, '4000000', '600', 'Ikota Villa besides mega chicken eti-osa lekki epe express way', 'https://vm.tiktok.com/ZMF678Npk/', 'Screenshot_20221015-064955.jpg', '100% dry land', 'Okunubi town elerangbe', 'Ur real estate shopp', 'Estate properties', '300/600sqm and more', 'yes', 'Okunubi town elerang', '2022-10-15 01:56:59', 'Screenshot_20221015-065001.jpg', 'Screenshot_20221015-064943.jpg', 'Screenshot_20221015-065007~2.jpg', 88, 'User', '', '', '', '', '', '', '', '', '',''),
(207, 'All documents intact', 0, 0, 0, 0, 0, '90000000', '', 'Asokoro district Abuja ', '', 'IMG-20220812-WA0018.jpg', '', '', 'Individual ', '3 bedroom duplex ', '', 'No', '', '2022-10-15 04:42:48', 'IMG-20220708-WA0014.jpg', 'IMG-20220708-WA0015.jpg', 'IMG-20220708-WA0013.jpg', 85, 'User', '', '', '', '', '', '', '', '', '',''),
(208, 'Shortlet', 1, 0, 1, 1, 0, '40000', '', 'Lekki phase one ', '', '4DA69656-C8B8-4AE6-9455-E33973A1529D.jpeg', 'Refundable caution:30k\r\nNo smoking allowed at all ', '', 'H.o.b shortlets', 'Studio apartment ', '', 'No', 'Lekki ', '2022-10-15 05:58:02', '607A1CED-2732-4ED6-977C-58878DFFB9A3.jpeg', '106C0053-7EBD-4ED5-8854-1A771DEA93AB.jpeg', 'B96CCA27-8139-4EFB-8266-5801CF00DD29.jpeg', 92, 'User', '', '', '', '', '', '', '', '', '',''),
(209, 'House for sale ', 4, 0, 1, 0, 0, '9000000', '', 'Eleworo junction,mowe Ogun state ', '', 'FB408980-EE43-45E4-B410-E875C263E36A.jpeg', '4 bedroom bungalow with already fixed bathroom tiles,and other plumbing and electrical works already done ', '', 'H.o.b shortlets ', '4 bedroom bungalow', '1plot', 'No', 'Obafemi owode', '2022-10-15 06:05:57', 'F88DC6B8-4A3F-4F97-B2A5-40B76D164BD7.jpeg', 'E0A6D14F-9C8A-4F44-923F-0F079F14E99C.jpeg', '3D75CE89-675F-4510-92C0-47C61422682C.jpeg', 92, 'User', '', '', '', '', '', '', '', '', '',''),
(210, 'C Of O', 0, 0, 0, 0, 0, '1500000', '', 'Ologun eru, eleyele. Ibadan', '', 'VID-20220119-WA0038.mp4', '', '', 'R. E. E', 'Lands for sale', '3000000sqft', 'yes', '', '2022-10-15 17:13:06', 'cf33f5eb5b934f58917317720afffeed.mp4', '933708350338493d93857b5443632b54.mp4', '0bd0c7859640468397447a909398a966.jpg', 69, 'User', '', '', '', '', '', '', '', '', '',''),
(211, 'Adron homes and prop', 0, 0, 0, 0, 0, '000000', '', 'Ibeju lekki, epe, shimawa, Suleja, Ibadan, Ogun, Nig. ', '', 'Screenshot_20221015-222439~2.png', '', '', 'R. E. E', 'Lands for sale', '3000000sqft', 'yes', '', '2022-10-15 17:30:12', '59917a09ce41423591d6fceb7560f6cf.jpg', 'Screenshot_20221015-222727~2.png', '59917a09ce41423591d6fceb7560f6cf.jpg', 69, 'User', '', '', '', '', '', '', '', '', '',''),
(212, 'C Of O', 0, 0, 0, 0, 0, '23000000', '', 'Olorunda aba,Akobo, oju irin Ibadan', '', 'Screenshot_20221015-224050~2.png', '', '', 'R. E. E', '3bedroom ', '1000sqm', 'yes', '', '2022-10-15 17:48:53', 'Screenshot_20221015-224050~2.png', 'Screenshot_20221015-224417~2.png', 'Screenshot_20221015-224417~2.png', 69, 'User', '', '', '', '', '', '', '', '', '',''),
(213, 'Lands in Simawa, Ogu', 0, 0, 0, 0, 0, '950000', '16000', 'Rain oil shopping complex, Opposite MFM Prayer city, Ibafo, Ogun State', '', 'GS1.jpg', '', '', 'Good Success Estate ', 'Land', '600 SQM', 'yes', 'Simawa', '2022-10-15 21:13:36', 'IMG-20221008-WA0004.jpg', '84be614a07ec43b4a352170b98f8f431.jpg', 'GS.jpg', 45, 'User', '', '', '', '', '', '', '', '', '',''),
(214, 'Land for sale ', 0, 0, 0, 0, 0, '1800000', '', 'Elele/Isiokpo Federal expressway, Port Harcourt ', '', 'IMG-20221015-WA0013.jpg', 'The 16 plots of land is located in Elele/Isiokpo federal Express road, few minutes drive from the Portharcourt intl airports omagwa, Portharcourt Rivers State. Isiokpo is the head quarters of Ikwerre LGA and has many govt agencies including the proposed Wigwe University owned by Harbert Wigwe. The b', '', 'Private ', 'Land ', '', 'No', '', '2022-10-16 04:43:13', 'IMG-20221015-WA0023.jpg', 'IMG-20221015-WA0021.jpg', 'IMG-20221015-WA0016.jpg', 1, 'SuperAdmin','','','','','','','','','',''),
(215, 'Government Allocatio', 0, 0, 0, 0, 0, '10500000', '', 'EYIN-OSA COMMUNITY,LEKKI-EPE EXPRESSWAY,BY ALARO CITY,LAGOS STATE', '', 'IMG_20220525_142219_922.JPG', '', '', 'PWAN GROUP OF COMPAN', 'LAND', '', 'No', 'LAGOS STATE', '2022-10-16 17:27:29', 'IMG_20220525_142219_922.JPG', 'IMG_20220525_142219_922.JPG', 'IMG_20220525_142219_922.JPG', 98, 'User', '', '', '', '', '', '', '', '', '',''),
(216, 'Land Fo Sale With C ', 0, 0, 0, 0, 0, '7000000', '648', 'Suite A10 Ikota Shopping Complex VGC Lekki-Ajah Lagos 08050947408 ', 'None', 'IMG-20220818-WA0002.jpg', '480 Plot Available For Sale At Ilamija IBEJULEKKI Lagos', 'Ilamija IBEJULEKKI Lagos ', 'Olusegun Bamisaye ', 'Land', '648sqm Size Standard', 'yes', 'Over 80 Acres Availa', '2022-10-17 03:47:21', 'IMG-20220909-WA0107.jpg', 'IMG-20220909-WA0107.jpg', 'IMG-20220818-WA0017.jpg', 99, 'User', '', '', '', '', '', '', '', '', '',''),
(217, 'C of O', 0, 0, 0, 0, 0, '250000000.0', '', 'Cowrie Creek Estate Lekki', '', 'IMG-20220912-WA0005.jpg', '*AMENITIES*:\r\n-----------------------\r\nðŸ¥‚ 370sqm land size\r\nðŸ¥‚ Governor Consent and Building Approval\r\nðŸ¥‚ 24hrs Central Power\r\nðŸ¥‚ Central treated water\r\nðŸ¥‚ Concrete Stamped premise\r\nðŸ¥‚ Large parking space\r\nðŸ¥‚ Family size swimming pool \r\nðŸ¥‚ Fitted kitchen with cabinet, gas cooker and ', '', 'Olusegun Bamisaye ', ' *DIRECT BRIEF :    Cowrie Creek Estate crib* FOR ', '370sqm', 'No', '370sqm', '2022-10-17 04:26:36', 'IMG-20220912-WA0008.jpg', 'IMG-20220912-WA0004.jpg', 'IMG-20220705-WA0018.jpg', 99, 'User', '', '', '', '', '', '', '', '', '',''),
(218, 'Land for sale ', 0, 0, 0, 0, 0, '1000000', '', 'Ibusa, opposite Admiralty University, Delta', '', 'IMG-20221016-WA0002.jpg', 'Estate Land for sale. \r\nSerious buyers  please kindly visit our Head office @ No1 Nma Okafor close, opp. Bridge FM radio station, off anwai Rd, Asaba Delta State.\r\nTel: 08161381837 for more enquiries', '', 'Private ', 'Land', '', 'No', '', '2022-10-17 04:41:04', 'IMG-20221016-WA0002.jpg', 'IMG-20221016-WA0002.jpg', 'IMG-20221016-WA0002.jpg', 74, 'User', '', '', '', '', '', '', '', '', '',''),
(219, 'C of O ', 4, 0, 2, 4, 0, '80000000', '', 'Ajah, Lagos island', '', 'IMG-20221006-WA0003.jpg', '', '', 'Primeparkland ', 'Terrace duplex ', '', 'yes', '', '2022-10-17 04:42:28', 'IMG-20221006-WA0003.jpg', 'IMG-20221006-WA0003.jpg', 'IMG-20221006-WA0003.jpg', 13, 'User', '', '', '', '', '', '', '', '', '',''),
(220, 'C of O ', 3, 0, 2, 3, 0, '70000000', '', 'Ikota, lekki Lagos ', '', 'IMG-20221005-WA0019.jpg', '', '', 'Primeparkland', 'Detached apartment ', '', 'yes', '', '2022-10-17 04:46:42', 'IMG-20221005-WA0019.jpg', 'IMG-20221005-WA0019.jpg', 'IMG-20221005-WA0019.jpg', 13, 'User', '', '', '', '', '', '', '', '', '',''),
(221, 'Apartment for sale ', 0, 0, 0, 0, 0, '47000000', '', 'Ikota, Lekki (VGC)', '', 'IMG_20221017_120129_285.jpg', 'Serviced 2 & 3 Bed Apartmentâ¤ï¸\r\n\r\nLocation: Ikota, Lekki (by VGC) ðŸ‡³ðŸ‡¬\r\n\r\nPrice: 42m (2 Bed); 47m (3 Bed)\r\n\r\nFeatures:\r\n\r\nðŸ“Newly built\r\nðŸ“CCTV\r\nðŸ“Microwave & oven\r\nðŸ“Walk-in Closet\r\nðŸ“All Rooms En-suite\r\nðŸ“1 Living Room\r\nðŸ“Interlocked Floor\r\nðŸ“POP Ceiling \r\nðŸ“Water Heater;', '', 'Private ', 'Apartment ', '', 'No', '', '2022-10-17 07:20:11', 'IMG_20221017_120129_442.jpg', 'IMG_20221017_120129_386.jpg', 'IMG_20221017_120129_496.jpg', 1, 'SuperAdmin','','','','','','','','','',''),
(222, 'Deed of assignment ', 0, 0, 0, 0, 0, '73000000', '', 'Orchid lekki Lagos ', '', 'IMG-20221016-WA0012.jpg', '4BEDROOM TERRACE DUPLEX FOR SALE . \r\n \r\nLocation: ORCHID LEKKI \r\n\r\nPrice: 72M \r\n \r\nFeatures:\r\n- sef compound \r\n- Brand New\r\n- All Rooms Ensuite\r\n- Pop Ceilings \r\n- Fully Fitted Kitchen\r\n- CCTV \r\n- Water Heater \r\n- Walk-In Shower \r\n- Bath cubicle', 'Lekki', 'Blue planet real est', 'House property', '600sqm', 'yes', 'Orchid lekki', '2022-10-18 04:45:56', 'IMG-20221016-WA0032.jpg', 'IMG-20221016-WA0027.jpg', 'IMG-20221016-WA0033.jpg', 101, 'User', '', '', '', '', '', '', '', '', '',''),
(223, 'FCDA ROFO COFO IN PR', 5, 5, 1, 4, 0, '10000000', '2000', 'Gbagalape phase2 Nyanya Abuja FCT', 'Abuja', 'IMG-20221007-WA0043.jpg', 'The Estate is located at APO  Hilltop, Abuja', 'Close to shopprite,', 'GREENPASTURE HOMES A', 'PLOT OF LAND', '500SQM', 'yes', 'Federal Capital Terr', '2022-10-18 05:31:36', 'IMG_20221006_155155.jpg', 'IMG-20221008-WA0007.jpg', 'IMG_20220913_175441.jpg', 103, 'User', '', '', '', '', '', '', '', '', '',''),
(224, 'C OF O', 0, 0, 0, 0, 0, '8000000', '', 'OSHOROKO COMMUNITY,IBEJU LEKKI LOCAL GOVERNMENT AREA OF LAGOS STATE', '', 'IMG-20221016-WA0003.jpg', '', '', 'PWAN GROUP OF COMPAN', 'LAND', '', 'No', 'LAGOS STATE', '2022-10-18 08:44:24', 'IMG_20221018_134245_736.jpg', 'IMG_20221018_134245_736.jpg', 'IMG_20221018_134245_736.jpg', 98, 'User', '', '', '', '', '', '', '', '', '',''),
(225, 'C of O', 0, 0, 0, 0, 0, '420000000', '4821', 'Katsina Rd Kano', '', 'KATSINA ROAD PROPERTY OPPOSITE NITEL DBI.pdf', 'Sir,\r\nThis is to inform you of twoÂ  empty land for sales located along Katsina Road after Ammasco Petro Station from Airforce Base roundabout through Katsina road in between Airforce Base road roundabout and Airport road roundabout. \r\n\r\nThe two plots of empty land are accessible from Katsina road, ', 'Kano', 'Greg Sam', 'Landed Property ', '2 plots', 'yes', 'Nitel training schoo', '2022-10-18 11:36:09', 'KATSINA ROAD PROPERTY OPPOSITE NITEL DBI.pdf', 'KATSINA ROAD PROPERTY OPPOSITE NITEL DBI.pdf', 'KATSINA ROAD PROPERTY OPPOSITE NITEL DBI.pdf', 105, 'User', '', '', '', '', '', '', '', '', '',''),
(226, 'C of O', 0, 0, 0, 0, 0, '450000000', '', 'Ibrahim Taiwo Rd Kano ', '', 'IMG-20220703-WA0014.jpg', '', '', 'Greg Sam', 'Buildings', '', 'No', 'Ibrahim Taiwo rd', '2022-10-18 11:44:09', 'IMG-20220703-WA0020.jpg', 'IMG-20220703-WA0020.jpg', 'IMG-20220703-WA0015.jpg', 105, 'User', '', '', '', '', '', '', '', '', '',''),
(227, 'C of O', 0, 0, 0, 0, 0, '71000000', '', 'Woodblod estate llaje Lagos lsland', '', 'VID-20221018-WA0057.mp4', '', '', 'Woodblod estate ', 'House property', '', 'No', '', '2022-10-18 14:30:58', 'IMG-20221018-WA0050.jpg', 'IMG-20221018-WA0051.jpg', 'IMG-20221018-WA0052.jpg', 101, 'User', '', '', '', '', '', '', '', '', '',''),
(228, 'General CofO ', 5, 0, 0, 0, 0, '130000000', '', 'Ajah lagos', '', 'IMG-20221016-WA0039.jpg', '5BEDROOM FULLY DETACHED DUPLEX FOR SALE \r\nAmenities: \r\n- [ ] 5BEDROOM \r\n- [ ] Fitted Kitchen with accessories \r\n- [ ] Modern Day POP Ceiling \r\n- [ ] Detailed finishing \r\n- [ ] Wardrobes \r\n- [ ] Bq \r\n- [ ] CCTV \r\n- [ ] Water heater\r\n- [ ] Heat extractor \r\n- [ ] swimming pool \r\n\r\nLocation: AJAH LAGOS\r', '', 'Mona homes', 'House property ', '', 'No', '', '2022-10-18 14:43:27', 'IMG-20221016-WA0047.jpg', 'IMG-20221016-WA0042.jpg', 'IMG-20221016-WA0040.jpg', 101, 'User', '', '', '', '', '', '', '', '', '',''),
(229, 'CofO', 0, 0, 0, 0, 0, '20000000', '', '', '', 'IMG-20221019-WA0021.jpg', '', '', 'Brg', 'Dry land', '150-1000sqm', 'yes', 'Epe', '2022-10-19 05:09:56', 'IMG-20221019-WA0024.jpg', 'IMG-20221019-WA0023.jpg', 'IMG-20221019-WA0025.jpg', 88, 'User', '', '', '', '', '', '', '', '', '',''),
(230, 'WHYTE HEAVEN ESTATE', 0, 0, 0, 0, 0, '800000', '', 'IPO ABARA PHC', '', 'IMG-20221012-WA0023.jpg', '', '', 'MOSAIC HOMES', 'BUY AND BUILD', '450SQM', 'No', '', '2022-10-19 05:55:27', 'IMG-20221012-WA0023.jpg', 'IMG-20221012-WA0023.jpg', 'IMG-20221012-WA0023.jpg', 39, 'User', '', '', '', '', '', '', '', '', '',''),
(231, 'TABLE LAND', 0, 0, 0, 0, 0, '6000000', '', 'ADJACENT SALVATION MINISTRY HEADQUARTERS PHC', '', 'IMG-20221004-WA0004.jpg', 'THIS PROPERTY IS LOCATED AT A VERY STRATEGIC LOCATION', '', 'OGECHI', 'BUY AND BUILD', '460SQM', 'No', '', '2022-10-19 06:01:46', 'IMG-20221004-WA0002.jpg', 'IMG-20221004-WA0003.jpg', 'IMG-20221004-WA0001.jpg', 39, 'User', '', '', '', '', '', '', '', '', '',''),
(232, '4 Bedrooms Twin Dupl', 0, 0, 0, 0, 0, '65000000', '', 'Carlton Gate Estate, Akobo', '', 'IMG20221017151636.jpg', '', '', 'Fatomide Adesina ', 'Twin Duplex ', '175mÂ²', 'No', '250mÂ²', '2022-10-19 08:41:06', 'IMG20220930160742.jpg', 'IMG20220930164651.jpg', 'IMG20220930165038.jpg', 30, 'User', '', '', '', '', '', '', '', '', '',''),
(233, 'Brand new 5 bedroom ', 0, 0, 0, 0, 0, '45000000', '0', 'Eneka, Port Harcourt ', '0', 'IMG-20221019-WA0024.jpg', 'Brand new 5 bedroom duplex in Eneka, Port Harcourt for sale for N45m.\r\nTitle:deed\r\nLand size:580sqm\r\nCall Emeka on 08036672086 for more enquiries ', '0', 'Private ', 'House', '0', 'no', '0', '2022-10-19 09:06:19', 'IMG-20221019-WA0020.jpg', 'IMG-20221019-WA0012.jpg', 'IMG-20221019-WA0012.jpg', 1, 'User', '', '', '', '', '', '', '', '', '',''),
(234, 'Crystal park', 0, 0, 0, 0, 0, '8000000', '', 'Elerangbe, Epe', '', 'WhatsApp Image 2022-10-19 at 2.29.04 PM.jpeg', 'Crystal park is a beautiful estate located in the heart of Epe with dry land topology and aslo close to prominent landmarks', '', 'squardetechlimited', 'Land', '600 square metre', 'No', 'Epe', '2022-10-19 09:42:22', 'WhatsApp Image 2022-10-19 at 2.29.04 PM (1).jpeg', 'WhatsApp Image 2022-10-19 at 2.29.05 PM (3).jpeg', 'WhatsApp Image 2022-10-19 at 2.29.05 PM (2).jpeg', 74, 'User', '', '', '', '', '', '', '', '', '',''),
(235, 'Hilton Estate ', 0, 0, 0, 0, 0, '4500000', '', 'Mamukolu Village, Elerangbe, Ibeju - Lekki ', '', 'WhatsApp Image 2022-10-19 at 2.29.05 PM (3).jpeg', '', '', 'Squaredtech limited', 'Land', '600 square metre', 'No', 'Ibeju-Lekki', '2022-10-19 09:51:24', 'WhatsApp Image 2022-10-19 at 2.29.05 PM (1).jpeg', 'WhatsApp Image 2022-10-19 at 2.29.05 PM.jpeg', 'WhatsApp Image 2022-10-19 at 2.29.05 PM (2).jpeg', 74, 'User', '', '', '', '', '', '', '', '', '',''),
(236, 'DEED OF ASSIGNMENT', 0, 0, 0, 0, 0, '500000', '', 'ODE-OMI,IBEJU LEKKI', '', 'IMG_20221020_155840_611.jpg', '', '', 'PWAN GROUP OF COMPAN', 'LAND', '600SQM', 'No', 'LAGOS STATE', '2022-10-20 11:03:58', 'IMG_20221020_155840_611.jpg', 'IMG_20221020_155840_611.jpg', 'IMG_20221020_155840_611.jpg', 98, 'User', '', '', '', '', '', '', '', '', '',''),
(237, 'Government c of o', 0, 0, 0, 0, 0, '75000000', '75000000', '18a, onireke GRA Ibadan', 'www.elsalemhomes.com', '1666277207355.jpg', '5bedroom semi-detached ensuite duplex', 'www.elsalemhomes.com', 'Bitek Constructions ', 'Duplex houses', '450sqm', 'No', '9,000sqm', '2022-10-20 22:04:15', '+234 913 405 0294 20220822_161347.jpg', '1665480558686.jpg', 'png_20220916_044244_0000.png', 205, 'User', '', '', '', '', '', '', '', '', '',''),
(238, 'Survey Approved Plan', 0, 0, 0, 0, 0, '160000000', '', 'Osseo, Akute Ajuwon, Suburb Lagos State', '', 'IMG_20220921_133019.jpg', 'A functioning multipurpose hall that can be used for, School, Church, Mosque, Hall, Bank, Eatery, Restaurant, Shopping Mall, Supermarket and so on.', '', 'Ã€YÃŒNLÃ HOMES AND ', 'A Multipurpose Hall', '', 'No', '2 plots', '2022-10-21 04:57:43', 'IMG_20220921_130422.jpg', 'IMG_20220921_130508.jpg', 'IMG_20220921_130342.jpg', 202, 'User', '', '', '', '', '', '', '', '', '',''),
(239, 'Power of Attorney ', 7, 0, 1, 7, 3, '80000000', '0', 'Green Health Estate Ohi Orlu Road,Imo State.   ', 'Property ', 'VID-20221017-WA0024.mp4', 'Urgent sales alert!!!! \r\n\r\nA Mini Estate Of 2 plots of lands measuring 100 by 100 meters containing: \r\n\r\n4 buildings:\r\n\r\n*First building contain 1 bedroom flat of 4 flats*\r\n\r\n*Second building contain 2 bedroom flats of 2 flats*\r\n\r\n*Third building contain 1 selfcon upstairs and two stores underneath*', 'IMO ', 'Samchukwu properties', 'Residential and commercial ', '1600sqms', 'no', '2000sqms', '2022-10-22 01:57:12', 'IMG-20221015-WA0007.jpg', 'VID-20221017-WA0022.mp4', 'IMG-20221015-WA0008.jpg', 206, 'User', '', '', '', '', '', '', '', '', '',''),
(240, 'House for rent ', 0, 0, 0, 0, 0, '6000000', '', 'Ologolo, Lekki', '', 'IMG-20221024-WA0001.jpg', '4 BEDROOM SEMI-DETACHED DUPLEX WITH BQ\r\n\r\nðŸ“OLOGOLO, LEKKI\r\n\r\nRENT: ðŸ’°â‚¦6M\r\nAgency: 10%\r\nLegal: 5%\r\nCAUTION: ðŸ’°â‚¦500,000K\r\n\r\n__________________________________\r\n\r\nâ–«ï¸Features â–«ï¸\r\nâ€¢ New â€¼ï¸\r\nâ€¢ Self Serviced\r\nâ€¢ En-suite Bedrooms\r\nâ€¢ Two Living Rooms\r\nâ€¢ Solar Inverter \r\nâ€¢ F', '', 'Private ', 'House ', '', 'No', '', '2022-10-23 19:48:24', 'IMG-20221024-WA0002.jpg', 'IMG-20221024-WA0004.jpg', 'IMG-20221024-WA0005.jpg', 1, 'SuperAdmin','','','','','','','','','',''),
(241, 'House for rent ', 0, 0, 0, 0, 0, '4500000', '', 'Victoria Crest 3, Orchid road Lekki', '', 'IMG-20221024-WA0025.jpg', 'Lovely neat serviced 4bedroom Semi detached duplex with bq, nice kitchenette, private compound and all modern estate facilities at Victoria Crest 3 Orchid, Lekki\r\n\r\nRent: 4.5M(Slightly Negotiable) \r\nSC: 45/50K Monthly \r\nPower: Pay as you use', '', 'Private ', 'House ', '', 'No', '', '2022-10-23 19:50:58', 'IMG-20221024-WA0027.jpg', 'IMG-20221024-WA0028.jpg', 'IMG-20221024-WA0030.jpg', 1, 'SuperAdmin','','','','','','','','','',''),
(242, 'Survey and family ag', 0, 0, 0, 0, 0, '12000000', '', 'QUICK SALE PRICE: 12M LOCATION: OLOMORE, ABEOKUTA. If interested, kindly contact us LAKWAN GLOBAL PROPERTIES & CO. on 09074066700 / 08035566273. #propertiesinabeokuta #propertiesinogunstate #realestateinabeokuta #realestateinolomore #realestateinogunstate #landinabeokuta', '', 'FB_IMG_1666516989316.jpg', 'QUICK SALE\r\nPRICE: 12M\r\nLOCATION: OLOMORE, ABEOKUTA.\r\nIf interested, kindly contact us LAKWAN GLOBAL PROPERTIES & CO. on 09074066700 / 08035566273. #propertiesinabeokuta\r\n#propertiesinogunstate\r\n#realestateinabeokuta\r\n#realestateinolomore\r\n#realestateinogunstate\r\n#landinabeokuta', '', 'Owner', '3 Bedroom Flat ', '', 'No', '156', '2022-10-24 04:50:41', 'FB_IMG_1666516989316.jpg', 'FB_IMG_1666517003151.jpg', 'FB_IMG_1666517012343.jpg', 209, 'User', '', '', '', '', '', '', '', '', '',''),
(243, 'A Storey Building', 0, 0, 0, 0, 0, '50000000', '', 'Idimu', '', 'Screenshot_20221024-230717.png', 'A Storey building with Shops and Flats', '', 'Kamfaz Global Networ', 'Land', '', 'No', 'Idimu Road Ikotun', '2022-10-24 18:22:13', 'Screenshot_20221024-230717.png', 'Screenshot_20221024-230717.png', 'Screenshot_20221024-230717.png', 213, 'User', '', '', '', '', '', '', '', '', '',''),
(244, 'Bungalow for sale ', 0, 0, 0, 0, 0, '15000000', '', '', '', 'IMG_20220719_105817_7.jpg', '2 bedrooms flat, 1 bedroom flat and 2 units Self-contained apartments for sale at Aka road, Uyo. ', '', 'Nill', 'Bungalow ', '688', 'No', '688', '2022-10-24 18:40:39', 'IMG_20220719_105531_7.jpg', 'IMG_20220719_105543_7.jpg', 'IMG_20220719_110214_4.jpg', 210, 'User', '', '', '', '', '', '', '', '', '',''),
(245, '4 Bedroom Flats', 0, 0, 0, 0, 0, '50000000', '', 'Bakare Estate', '', 'Screenshot_20221025-000923.png', '4 bedrooms on half plot land.  Location at Bakare estate. Diamond estate side. Iasu Isheri  exp-way. Isheri olofin. lagos. Vacant position.  Title : receipt and survey.  Price #50m. Net.', '', 'Kamfaz Global Networ', 'Residential', '', 'No', 'Lasu Isheri', '2022-10-24 19:17:17', 'Screenshot_20221025-000923.png', 'Screenshot_20221025-000923.png', 'Screenshot_20221025-000923.png', 213, 'User', '', '', '', '', '', '', '', '', '',''),
(246, 'Closeable & Develop ', 0, 0, 0, 0, 0, '50000000', '', 'Henjinwa Street, Ajara Agamathew, Badagry.', '', 'Screenshot_20221025-002040_1666653724765.png', '\r\nCloseable and Developable 1 story building with 4 units of 3 Bedroom flat at Badagry Area.\r\nDocument: Registered survey and family receipt.\r\nPrice: 50m Asking', '', 'Kamfaz Global Networ', '1 Storey Building', '1 Plot', 'No', '', '2022-10-24 19:30:05', 'Screenshot_20221025-002007.png', 'Screenshot_20221025-002124.png', 'Screenshot_20221025-002124.png', 213, 'User', '', '', '', '', '', '', '', '', '',''),
(247, 'Duplex', 0, 0, 0, 0, 0, '100000000', '', 'Itolo street, surulere', '', 'Screenshot_20221025-003543.png', '5 Bedroom Duplex', 'www.kamfazglobalnetwork.com', 'Kamfaz Global Networ', 'Duplex', '', 'No', 'Surulere', '2022-10-24 19:44:58', 'Screenshot_20221025-003543.png', 'Screenshot_20221025-003543.png', 'Screenshot_20221025-003543.png', 213, 'User', '', '', '', '', '', '', '', '', '',''),
(248, 'Deeds of assignment', 5, 1, 1, 6, 1, '75000000', '75000000', '18a, onireke GRA Ibadan', 'www.elsalemhomes.com', 'png_20220916_044244_0000.png', '5 bedroom semi-detached ensuite duplex', 'www.elsalemhomes.com', 'Bitek Constructions ', 'Duplex houses', '450sqm', 'No', '9,000sqm', '2022-10-24 23:53:07', 'FB_IMG_1658919813532.jpg', '+234 913 405 0294 20220822_161347.jpg', 'IMG_20221006_145028.jpg', 205, 'User', '', '', '', '', '', '', '', '', '',''),
(249, '4 Bedroom Duplex', 0, 0, 0, 0, 0, '45000000', '', 'Isheri Olofin/ Idimu, Aro Baba Busstop Lagos', '', 'Screenshot_20221025-092631.png', '4 bedroom duplex and 2 no of flats of 3bedroom all rooms built on 700Sqm ensuit . Registered Survey, Receipt and approved building plan.', '', 'Kamfaz Global Networ', 'Duplex', '', 'No', 'Isheri Idimu', '2022-10-25 04:33:48', 'Screenshot_20221025-092631.png', 'Screenshot_20221025-092631.png', 'Screenshot_20221025-092631.png', 213, 'User', '', '', '', '', '', '', '', '', '',''),
(250, 'Rebirth Island', 0, 0, 0, 0, 0, '2500000', '', 'Rebirth Island, Arapagi, Bogije Ibeju-Lekki, Lagos', '', 'IMG-20221012-WA0022.jpg', 'Rebirth Island is on a 100% Dryland, having Government Allocated Excision as its title, meaning it is free from any government acquisition. This estate has a dual entryway, by sea using canoe, speed Engine Boat, through the popular Bogije market and by road through Elerangbe by Foltar filling statio', '', 'Advanced Homes & Pro', 'Land', '450 SQM Per plot', 'No', 'Arapagi, Ibeju-Lekki', '2022-10-25 06:02:48', 'IMG-20221014-WA0007.jpg', 'IMG-20221012-WA0038.jpg', 'IMG-20221012-WA0021.jpg', 211, 'User', '', '', '', '', '', '', '', '', '',''),
(251, 'Bank Estate', 0, 0, 0, 0, 0, '7500000', '', 'Bank Estate, Along Bolanle Ambode Expressway, Poka, Epe, Lagos', '', 'IMG-20211104-WA0007.jpg', 'Bank Estate commercial is basically for the industrial development of all kinds such as schools, hotels, clinics, restaurants, children playing grounds, shopping complexes, Malls, Banks, offices etc', '', 'Aso Real Estate Limi', 'Commercial Land', '450 SQM Per plot', 'No', 'Poka, Epe,', '2022-10-25 06:19:55', 'azoo estate 9.jpg', 'FB_IMG_1665053765873.jpg', 'IMG-20221018-WA0014.jpg', 211, 'User', '', '', '', '', '', '', '', '', '',''),
(252, 'C of O ', 0, 0, 0, 0, 0, '35000000', '', 'Ijegun ikotun road Lagos ', '', 'IMG-20221025-WA0011.jpg', '3 bedroom flat bungalow on a full plot of land close to the main road with modern facilities in good location. ', '', 'Mr Johnson ', 'Three bedroom bungalow ', 'Full plot of land ', 'yes', '', '2022-10-25 06:46:54', 'IMG-20221025-WA0005.jpg', 'IMG-20221025-WA0010.jpg', 'IMG-20221025-WA0004.jpg', 217, 'User', '', '', '', '', '', '', '', '', '',''),
(253, '2 bedroom flat to le', 2, 0, 1, 3, 2, '1000000', '', 'Isheri Opic GRA Ojodu Berger channels TV Road Lagos ', '', 'IMG_20221022_144803_479.jpg', '', '', 'Mr Femi ', 'Blocks of 2 Bedroom flat ', '1200', 'No', '', '2022-10-25 17:53:23', 'IMG_20221022_143945_310.jpg', 'IMG_20221022_144610_137.jpg', 'IMG_20221022_143655_204.jpg', 222, 'User', '', '', '', '', '', '', '', '', '',''),
(254, 'R of O', 0, 0, 0, 0, 0, '800000000', '', 'Secretariat Rd., Gwagwalada, Abuja', 'Non', 'IMG_20221021_110410_348.jpg', 'Land Size: 2,600Sqm\r\nComprising of Three Open Floors measuring 735 Sqm on Each Floors with a Two Bedroom Pent House on the Third (3) Floor\r\n \r\n', '', 'Mr Clement', 'Three Storey Building ', '735 Sqm', 'yes', '2600 Sqm', '2022-10-25 21:32:57', 'IMG_20221021_111601_593.jpg', 'IMG_20221021_110322_887.jpg', 'IMG_20221021_111556_166.jpg', 219, 'User', '', '', '', '', '', '', '', '', '',''),
(255, 'R of O', 0, 0, 0, 0, 0, '800000000', '', 'Secretariat Rd., Gwagwalada, Abuja', 'Non', 'IMG_20221021_110410_348.jpg', 'Land Size: 2,600Sqm\r\nComprising of Three Open Floors measuring 735 Sqm on Each Floors with a Two Bedroom Pent House on the Third (3) Floor\r\n \r\n', '', 'Mr Clement', 'Three Storey Building ', '735 Sqm', 'yes', '2600 Sqm', '2022-10-25 21:32:58', 'IMG_20221021_111601_593.jpg', 'IMG_20221021_110322_887.jpg', 'IMG_20221021_111556_166.jpg', 219, 'User', '', '', '', '', '', '', '', '', '',''),
(256, 'Rvof O', 0, 0, 0, 0, 0, '12000000', '', 'Back of Fort Royal Estate, Airport Road, after Acco Rstate', '', 'Screenshot_20221005-085645.jpg', 'Land at the back of Fort Royal Estate, Airport Road, Abuja. Price: #12 Million Naira ', '', 'Xxx', 'Land', '2007.13 Sqm', 'No', 'Kyami District ', '2022-10-25 21:46:24', 'Screenshot_20221005-085645.jpg', 'Screenshot_20221005-085645.jpg', 'Screenshot_20221005-085645.jpg', 219, 'User', '', '', '', '', '', '', '', '', '',''),
(257, 'Rvof O', 0, 0, 0, 0, 0, '12000000', '', 'Back of Fort Royal Estate, Airport Road, after Acco Rstate', '', 'Screenshot_20221005-085645.jpg', 'Land at the back of Fort Royal Estate, Airport Road, Abuja. Price: #12 Million Naira ', '', 'Xxx', 'Land', '2007.13 Sqm', 'No', 'Kyami District ', '2022-10-25 21:46:27', 'Screenshot_20221005-085645.jpg', 'Screenshot_20221005-085645.jpg', 'Screenshot_20221005-085645.jpg', 219, 'User', '', '', '', '', '', '', '', '', '',''),
(258, 'Deed of conveyance ', 0, 0, 0, 0, 0, '189000000', '7000000', 'Shell coporative, G.U.Ake road, Eliozu, Portharcourt, Rivers. Nigeria ', '', 'Screenshot_20221026-093114.png', '', '', 'My client ', 'Land', '27plots', 'No', '12,555 Sq.m', '2022-10-26 04:37:52', 'Screenshot_20221026-093119.png', 'Screenshot_20221026-093052.png', 'Screenshot_20221026-093109.png', 221, 'User', '', '', '', '', '', '', '', '', '',''),
(259, 'Deed of assignment,e', 0, 0, 0, 0, 0, '6000000', '648', 'Off oriba road,Eleranigbe', '', 'IMG-20221024-WA0029.jpg', '*Genuine Solid Dry Plots on Bethel Gardens* \r\n\r\nAmazing opportunity to own your own acre of land\r\n *Buy one Plot of Solid Dry Land with only N600,000.00!!!!* \r\n\r\n\r\nMassive opportunity to own plots & acres in a fast rising/developing area.\r\n\r\nWork Has Started! Eleranigbe is rapidly developing! Houses', '', 'Agent', 'Land', '648', 'yes', 'Ibeju Lekki', '2022-10-26 09:48:36', 'IMG-20221026-WA0053.jpg', 'IMG-20221026-WA0054.jpg', 'IMG-20221024-WA0030.jpg', 215, 'User', '', '', '', '', '', '', '', '', '',''),
(260, '3 blocks of 3 bedroo', 0, 0, 0, 0, 0, '120000000', '', 'Dopemu Iyana Ipaja Lagos', '', 'IMG_20221004_103602_641.jpg', 'Accessible to Lagos Island ', '', 'Mr Femi ', 'Blocks of 3 bedroom flat ', '450', 'yes', '850', '2022-10-26 14:56:13', 'IMG_20221019_121231_072.jpg', 'IMG_20221022_144708_176.jpg', 'IMG_20221019_121256_704.jpg', 222, 'User','','','','','','','','','',''),
INSERT INTO `property` (`id`,`title`,`bedroom`,`hall`,`kitchen`,`bathroom`,`balcony`,`price`,`sqr_price`,`address`,`video`,`image1`,`description`,`location`,`property_owner`,`property_type`,`lot_size`,`status`,`land_area`,`date`,`image3`,`image2`,`image4`,`user_id`,`role`,`uid`,`feature`,`ptype`,`city`,`state`,`mapimage`,`topmapimage`,`groundmapimage`,`totalfloor`,`isFeatured`) VALUES
(261, 'DISTRESS ðŸ‘·ðŸ¾â€', 0, 0, 0, 0, 0, '165', '', 'Lekki County Home Ikota. ', '', 'IMG-20221026-WA0113.jpg', 'DISTRESS ðŸ‘·ðŸ¾â€â™‚ï¸\r\n\r\nLUXURY 5BEDROOM  FULLY DETACHED DUPLEX FOR SALE \r\nAmenities: \r\n- [ ] 5BEDROOM \r\n- [ ] Fitted Kitchen with accessories \r\n- [ ] Modern Day POP Ceiling \r\n- [ ] Detailed finishing \r\n- [ ] Wardrobes \r\n- [ ] Bq \r\n- [ ] Jacuzzi\r\n- [ ] CCTV \r\n- [ ] Automated Light\r\n- [ ] Water ', '', 'QLB Luxury Home ', 'House ', '600Sqm ', 'No', '600Sqm ', '2022-10-26 16:50:14', 'IMG-20221026-WA0106.jpg', 'IMG-20221026-WA0110.jpg', 'IMG-20221026-WA0108.jpg', 63, 'User', '', '', '', '', '', '', '', '', '',''),
(262, 'drug manufacturing f', 0, 0, 0, 0, 0, '2000000000', '', 'Industrial layout Owerri ', '', '20220819_170345.jpg', 'Over 4 hectares industrial layout in Owerri. the land C/O with a drug manufacturing factory in the land . Price 2 billion. \r\nIs a very good location', '', 'David laboratory ', 'drug manufacturing factory', '4 hectares ', 'No', '', '2022-10-27 03:14:21', '20220819_170924.jpg', '20220819_170917.jpg', '20220819_170959.jpg', 224, 'User', '', '', '', '', '', '', '', '', '',''),
(263, 'Deed of Conveyance', 0, 0, 0, 0, 0, '850000000', '', 'Refinary Road Eleme ', '', '20220819_170345.jpg', '7.3 Hectares Dry Land at Eleme, Port Harcourt very close to the Porthacourt Refinary and Gas Turbine Station.\r\n', '', 'Christaben Group Ltd', 'Land ', '7.3 hectares ', 'No', '', '2022-10-27 03:21:34', '20220819_170924.jpg', '20220819_170917.jpg', '20220819_170959.jpg', 224, 'User', '', '', '', '', '', '', '', '', '',''),
(264, 'Receipt and Survey p', 0, 0, 0, 0, 0, '45000000', '648', 'Ikotun - Igando road off college bus-stop Ikotun Lagos ', '3bsaetujokgd', 'VID-20221024-WA0011.mp4', 'Six 2bedroom flat and one 3 bedroom flat, fence round with gate, Aluminum roof, on full plot of land ', '0gh7dstgkok', 'Mr kunle', 'Block of 7 flat ', '60 by 120', 'No', 'A plot of land ', '2022-10-27 03:39:43', 'IMG-20221024-WA0010.jpg', 'IMG-20221024-WA0010.jpg', 'IMG-20221024-WA0007.jpg', 217, 'User', '', '', '', '', '', '', '', '', '',''),
(265, 'Estate Lands for sal', 0, 0, 0, 0, 0, '6000000', '', 'Shimawa, Ogun State ', '', 'IMG-20221027-WA0000.jpg', 'Become a landlord and say goodbye to tenant Wahala. Secure a plot of land in any of our Estates in the following locations (1) Behind High Impact, Magboro, (2) Behind Estate 15, Redemption Camp, (3) Shimawa Ogun State. Office Address: Good Success property @ Rainoil Complex opposite MFM camp, along ', '', 'Good Success Propert', 'Land ', '', 'No', '', '2022-10-27 09:10:42', 'IMG-20221027-WA0002.jpg', 'IMG-20221027-WA0001.jpg', 'IMG-20221027-WA0003.jpg', 1, 'SuperAdmin','','','','','','','','','',''),
(266, 'Deed of Conveyance', 0, 0, 0, 0, 0, '40000000', '', 'Trans amandi', '', 'Screenshot_20221027-082621_WhatsApp.jpg', '350 plots at Mkpogu opposite LNG (40m per plot)(with DofC)', '', 'Private', 'Lane ', '113 plots', 'No', '', '2022-10-27 09:15:16', 'Screenshot_20221027-082550_WhatsApp.jpg', 'Screenshot_20221027-082628_WhatsApp.jpg', 'Screenshot_20221027-082544_WhatsApp.jpg', 224, 'User', '', '', '', '', '', '', '', '', '',''),
(267, 'Certificate of occup', 0, 0, 0, 0, 0, '40000000', '', 'Trans amandi', '', 'Screenshot_20221027-082620_WhatsApp.jpg', '113 plots at Mkpogu opposite LNG (40m per plot) (with CofO)', '', 'General purpose ', 'Land', '113 plots ', 'No', '', '2022-10-27 09:26:11', 'Screenshot_20221027-082530_WhatsApp.jpg', 'Screenshot_20221027-082629_WhatsApp.jpg', 'Screenshot_20221027-082628_WhatsApp.jpg', 224, 'User', '', '', '', '', '', '', '', '', '',''),
(268, 'C of O ', 0, 0, 0, 0, 0, '25000000', '', 'Trans amandi', '', 'Screenshot_20221027-082527_WhatsApp.jpg', '46 plots at Woji, shares boundary with Rumibekwe, (25m per plot) (with CofO) contact 08073519561', '', 'General purpose ', 'Land ', '46 plots', 'No', '', '2022-10-27 10:26:32', 'Screenshot_20221027-082647_WhatsApp.jpg', 'Screenshot_20221027-082525_WhatsApp.jpg', 'Screenshot_20221027-082623_WhatsApp.jpg', 224, 'User', '', '', '', '', '', '', '', '', '',''),
(269, 'C of O', 0, 0, 0, 0, 0, '35000000', '', 'Trans amandi', '', 'Screenshot_20221027-082620_WhatsApp.jpg', '24 plots @ Trans-Amadi close to DHL (35m per plot) (with CofO) contact 08073519561', '', 'General purpose ', 'Land ', '24 plots', 'No', '', '2022-10-27 10:29:24', 'Screenshot_20221027-082601_WhatsApp.jpg', 'Screenshot_20221027-082537_WhatsApp.jpg', 'Screenshot_20221027-082629_WhatsApp.jpg', 224, 'User', '', '', '', '', '', '', '', '', '',''),
(270, 'C of O ', 0, 0, 0, 0, 0, '55000000', '', 'Trans amandi', '', 'Screenshot_20221027-082601_WhatsApp.jpg', '15 plots along Trans-Amadi (55m per plot) (with CofO)contact 08073519561', '', 'General purpose ', 'Land ', '15 plots', 'No', '', '2022-10-27 10:35:33', 'Screenshot_20221027-082530_WhatsApp.jpg', 'Screenshot_20221027-082629_WhatsApp.jpg', 'Screenshot_20221027-082533_WhatsApp.jpg', 224, 'User','','','','','','','','','','');


-- --------------------------------------------------------

--
-- Table structure for table `rating_info`
--

CREATE TABLE `rating_info` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating_action` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_admins`
--

CREATE TABLE `sub_admins` (
  `id` bigint(255) NOT NULL,
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
(2, 'Marshall', ' Properties', '12d Wole Ariyo Lekki phase 1', '08068621706', 'User', 'fyndahltd@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-09-13', 'PAID', 'ACTIVE'),
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
(38, 'OGUNGBEMI VICTOR ', 'OPEYEMI ', '188 RAILWAY LINE OFF SHYLLON STREET ILUPEJU LAGOS NIGERIA.', '08026667392', 'User', 'ogungbemi_victor@yahoo.com', 'de13b475d8c6f5f2bbd5c2ffb9f11e9a', '2022-10-01', 'PAID', 'ACTIVE'),
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
(105, 'Sam ', 'Ewaoche', 'No. 17 Hadejia Rd Kano, Opp Fara Fara filling Station', '08030442561', 'User', 'gregsneez@gmail.com', 'a5abdeed0e2bd0dc176766718cd0bd9e', '2022-10-17', 'PAID', 'ACTIVE'),
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
(225, 'Julius ', 'B. U', 'Port Harcourt.', '07038738103', 'User', 'sojarume@gmail.com', 'bcfebbbfc0abfb1ed3096c58ae93e743', '2022-10-26', 'PAID', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(100) NOT NULL,
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
(37, 'Michael', 'dommichelxproperties@gmail.com', '1662459308', '2022-09-06T10:15:47.000Z', 707499414, 'successful', '2535'),
(38, 'AYOMIKUN', 'ayoyinka2011@gmail.com', '1662582242', '2022-09-07T20:26:26.000Z', 708809558, 'successful', '2535'),
(39, 'hectorh', 'hectorgoodman1@gmail.com', '1664749039', '2022-10-02T22:22:51.000Z', 3784422, 'successful', '250'),
(40, 'wonderful ', 'theresident152@gmail.com', '633da5ea2dd3a633da5ea2dd41', '2022-10-05T15:43:15.000Z', 3791328, 'successful', '399'),
(41, 'wonderful ', 'theresident152@gmail.com', '633da66e97453633da66e9745c', '2022-10-05T15:45:13.000Z', 3791331, 'successful', '399'),
(42, 'olaedo ', 'Olaji38@gmail.com', '633da76095235633da7609523d', '2022-10-05T15:49:41.000Z', 3791338, 'successful', '399'),
(43, 'newman ', 'hector@gmail.com', '633dd71ecf088633dd71ecf08f', '2022-10-05T19:14:41.000Z', 3791669, 'successful', '399'),
(44, 'chukwukere ', 'theresident152@gmail.com', '633de79150ce0633de79150cf1', '2022-10-05T20:24:44.000Z', 3791746, 'successful', '399'),
(45, 'redrock ', 'redrocktechiamnew@gmail.com', '633e024108c48633e024108c85', '2022-10-05T22:17:40.000Z', 3791837, 'successful', '399');

-- --------------------------------------------------------

--
-- Table structure for table `usersNotification`
--

CREATE TABLE `usersNotification` (
  `id` int(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `admin_name` varchar(250) NOT NULL,
  `message` varchar(250) NOT NULL,
  `user_id` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usersNotification`
--

INSERT INTO `usersNotification` (`id`, `title`, `admin_name`, `message`, `user_id`) VALUES
(6, 'hello', 'marshall', 'hello', '46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `customerLikes`
--
ALTER TABLE `customerLikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customersComment`
--
ALTER TABLE `customersComment`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rating_info`
--
ALTER TABLE `rating_info`
  ADD UNIQUE KEY `post_id` (`post_id`,`user_id`);

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
-- Indexes for table `usersNotification`
--
ALTER TABLE `usersNotification`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customerLikes`
--
ALTER TABLE `customerLikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customersComment`
--
ALTER TABLE `customersComment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `sub_admins`
--
ALTER TABLE `sub_admins`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `usersNotification`
--
ALTER TABLE `usersNotification`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `property_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `sub_admins` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
