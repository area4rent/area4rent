-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 30, 2022 at 12:13 AM
-- Server version: 5.7.38-cll-lve
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ravicera_realestate`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(30) NOT NULL,
  `amen_name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `amen_name`, `icon`) VALUES
(1, 'Unmatched Resident Experience', 'https://raviceramics.com/real_api/public/img_amen/cod.png'),
(2, '24-Hour Call Center', 'https://raviceramics.com/real_api/public/img_amen/fat_del.png'),
(3, 'Professional Maintenance Servi', 'https://raviceramics.com/real_api/public/img_amen/order.png'),
(7, 'Security 24 / 7', 'https://raviceramics.com/real_api/public/img_amen/U-1651438676.png'),
(8, 'Call for any medication', 'https://raviceramics.com/real_api/public/img_amen/U-1651438937.png'),
(9, 'Unmatched Resident Experience', 'https://raviceramics.com/real_api/public/img_amen/U-1651438957.png'),
(10, 'Lawn care', 'https://raviceramics.com/real_api/public/img_amen/U-1651438957.png'),
(11, 'home appliances ', 'https://raviceramics.com/real_api/public/img_amen/U-1651438957.png'),
(12, 'Private Parking', 'http://raviceramics.com/real_api/public/img_amen/U-1653521767.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(100) NOT NULL,
  `blog_title` varchar(255) DEFAULT NULL,
  `blog_date` varchar(255) DEFAULT NULL,
  `blog_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blog_img` varchar(255) DEFAULT NULL,
  `blog_banner_img` varchar(255) DEFAULT NULL,
  `is_active` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(30) NOT NULL,
  `feature_name` varchar(50) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `feature_name`, `icon`) VALUES
(14, 'Air Conditiong', 'https://raviceramics.com/real_api/public/img_fet/air.png'),
(15, 'Ceiling fan', 'https://raviceramics.com/real_api/public/img_fet/fan.png'),
(16, 'Disposal', 'https://raviceramics.com/real_api/public/img_fet/garb.png'),
(17, 'Carpeting', 'https://raviceramics.com/real_api/public/img_fet/car.png'),
(18, 'Dishwasher', 'https://raviceramics.com/real_api/public/img_fet/dish.png'),
(19, 'Large Closets', 'https://raviceramics.com/real_api/public/img_fet/cab.png'),
(25, 'air conditioning ', 'http://raviceramics.com/real_api/public/img_fet/U-1653522832.jpeg'),
(26, 'Refrigerator ', 'http://raviceramics.com/real_api/public/img_fet/U-1653522894.jpeg'),
(27, 'Oven', 'http://raviceramics.com/real_api/public/img_fet/U-1653522911.jpeg'),
(28, 'Washer & Dryer', 'http://raviceramics.com/real_api/public/img_fet/U-1653522940.jpeg'),
(29, 'Microwave ', 'http://raviceramics.com/real_api/public/img_fet/U-1653522957.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` int(100) NOT NULL,
  `user_id` int(5) NOT NULL,
  `property_name` varchar(255) NOT NULL,
  `property_address` varchar(255) NOT NULL,
  `property_desc` longtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `rooms` varchar(30) NOT NULL,
  `space_size` varchar(30) NOT NULL,
  `bath_rooms` varchar(30) NOT NULL,
  `monthly_rent` varchar(30) NOT NULL,
  `ready_option` varchar(100) DEFAULT NULL,
  `move_in_date` varchar(255) DEFAULT NULL,
  `location` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `user_id`, `property_name`, `property_address`, `property_desc`, `img`, `rooms`, `space_size`, `bath_rooms`, `monthly_rent`, `ready_option`, `move_in_date`, `location`) VALUES
(72, 10, '425 Richards', '425 Richards Street NW Atlanta, GA 30318', 'LARGE 3 Bedroom 2 Bathroom house in Home Park!!\r\n**Interior video available upon request**\r\n\r\nHardwood Floors throughout the house. Updated kitchen with all appliances and washer and dryer included!\r\n\r\nThis house is located in the west district of Midtown convenient to Atlantic Station, Midtown restaurants, bars, and GA TECH campus, and minutes from public transit.\r\n\r\nPlenty of space in backyard!\r\n\r\nPets allowed for an additional fee and security deposit based on size. Lawn Care included in the rental rate.\r\nAvailable for Fall of 2022! Perfect for GA Tech Students!!\r\n\r\n', 'https://raviceramics.com/real_api/public/img_prop/U-1652547593.jpg', '3', '1500', '2', '2790', 'Coming Soon', 'Move In By May 14th, 2021', 'https://maps.google.com/maps?width=245&amp;height=240&amp;hl=en&amp;q=University of Oxford&amp;t=&amp;z=5&amp;ie=UTF8&amp;iwloc=B&amp;output=embed'),
(76, 10, '1014 Hemphill Ave', '1014 Hemphill Ave NW Atlanta, GA  30318 United States', '\r\nPerfect student housing located in the heart of West Midtown at Georgia Tech University!! \r\n* Prices and availability subject to change without notice.\r\n2 bedroom 2 bathroom upstairs, and 3 bedroom 2 bathroom downstairs in the Duplex. \r\n\r\nMost appliances are included, plenty of parking, walking distance to campus and conveniently located near public transit. Brand new police station being built one block away increasing security for the area!\r\n\r\nFully renovated and modern living in the heart of the city.\r\n\r\nOff-Campus housing located steps from Campus of GA TECH!\r\nThe entire house can be rented to one group (plus utilities.)\r\n\r\n$2,180 for 2bedroom/2bath upstairs! Can be rented by the full house $4,980', 'https://raviceramics.com/real_api/public/img_prop/U-1652896253.jpg', '5', '00', '4', '4980', 'Available Soon', 'Entire House', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3316.1575137751556!2d-84.40719318418381!3d33.78243038068021!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88f504f2c452a197%3A0x5cb0df5a3d1dd037!2s1014%20Hemphill%20Ave%20NW%2C%20Atlanta%2C%20GA%2030318!5e0!3m2!1sen!2sus!4v1652617458424!5m2!1sen!2sus'),
(77, 0, '2868 Burden Street ', '2868 Burden Street NW Atlanta, GA 30318', 'Description\r\nAvailable: AUGUST 2022\r\n\r\nSuper Cozy Home in Whittier Mill area of 30318..West Midtown. 1900 House full renovated with original flooring. New systems with plenty of space for family or roommates. Conveniently located in West Midtown just a few miles from downtown, midtown, Buckhead, and the airport. Located in a quiet neighborhood of Historic Whittier Mill. This 1900’s Bungalow is quiet cozy and warm. Just a few miles from GA TECH and GA STATE universities. Located near interstate 75 and 285.\r\n\r\nUnit features\r\n\r\nMicrowave\r\nHardwood floors\r\nAir conditioning\r\nRefrigerator\r\nDishwasher\r\nBalcony, deck, patio\r\nLaundry room / hookups\r\nOven / range\r\nHeat – electric\r\nHeat – gas\r\nProperty details\r\n\r\nNew HVAC, Plumbing, and Electrical Home located in a neighborhood with a Park, Whittier Mill Park Great for Dog Lovers and Friendly neighbors…', 'https://raviceramics.com/real_api/public/img_prop/U-1652896304.jpg', '4', '3000', '5', '4300', 'Available Soon', 'Fall 2022', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3315.0874994973256!2d-84.48340098418335!3d33.8100549806726!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88f51a559d945a0b%3A0x8ebc62265b0e96a8!2s2868%20Burden%20St%20NW%2C%20Atlanta%2C%20GA%2030318!5e0!3m2!1sen!2sus!4v1652896015829!5m2!1sen!2sus'),
(80, 0, '569 10th St NW', '569 10th St NW, Atlanta, GA 30318', 'Duplex Bungalow on the Corner of 10th and Northside in the heart of West Midtown.\r\n\r\n* Prices and availability subject to change without notice.\r\n\r\nVery close to public transit, shopping, dinning, and the University of Georgia Tech!\r\n\r\nJust minutes from Midtown and Piedmont Park.\r\n\r\nOccupy the space with a group of roommates, can take the full house.\r\n\r\nLarge space includes 2 separate apartments styles units. A side has 3 bedrooms/2bath, B side has 4 bedrooms/3bath\r\n\r\nPrivate parking and Lawn care included in the base rent. All appliances included.\r\n(Video of interior available)', 'http://raviceramics.com/real_api/public/img_prop/U-1653522301.jpg', '4', '00', '5', '4975', 'Available Soon', 'Available fall 2022', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3316.1846524859384!2d-84.40819278428044!3d33.78172948068063!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88f504f2b2551f41%3A0xa04b0bfd444ad618!2s569%2010th%20St%20NW%2C%20Atlanta%2C%20GA%2030318!5e0!3m2!1sen!2sus!4v1653521909995!5m2!1sen!2sus'),
(81, 0, '565 10th St NW', '565 10th St NW, Atlanta, GA 30318', 'In the heart of Home Park on the Westside. Near Georgia Tech University and all of the awesome Westside Provisions. Roommate style. Near transit MARTA. Close to restaurants.\r\n\r\nSpacious rooms with new window units!\r\n\r\nPerfect home for undergrad or graduate STUDENTS AT GEORGIA TECH!\r\n\r\nApplication and background check required.\r\nPerfect for university students!', 'http://raviceramics.com/real_api/public/img_prop/U-1653523145.jpg', '3', '00', '1.5', '2098', 'Available Soon', 'Available Fall 2022', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3316.1836419079523!2d-84.40798518428045!3d33.78175558068041!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88f504f2b386f339%3A0xc6e396ced7b02772!2s565%2010th%20St%20NW%2C%20Atlanta%2C%20GA%2030318!5e0!3m2!1sen!2sus!4v1653523062003!5m2!1sen!2sus'),
(82, 0, '459 Ethel St NW', '459 Ethel St NW, Atlanta, GA 30318', 'Cottage Style 2 bedroom 1 bathroom bungalow with a fenced in front/back yard.\r\n\r\nPerfect location for GA Tech Students!\r\n\r\nPet friendly with additional fee and deposit.\r\n\r\nThis unit has gas stove, washer/dryer in unit, and BRAND NEW central heating and air system. \r\n\r\nLocated in the heart of HomePark within walking/biking distances to GT campus.\r\n\r\n EARLY BIRD SPECIAL!\r\n(Ask for more details)\r\n\r\nApplication required: Rent history, credit, criminal, court records, employment, and income are some of the considerations in our tenant screening. Not authorized for Housing Vouchers.', 'http://raviceramics.com/real_api/public/img_prop/U-1653523822.jpg', '2', '00', '1', '1760', 'Available Soon', 'Available Fall 2022', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3316.0677980622036!2d-84.40431188429613!3d33.784747339225476!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88f504f38525e373%3A0xc55f77be044924af!2s459%20Ethel%20St%20NW%2C%20Atlanta%2C%20GA%2030318!5e0!3m2!1sen!2sus!4v1653523594700!5m2!1sen!2sus'),
(83, 0, '303 Wynnmeade Parkway', '303 Wynnmeade Parkway, Peachtree City, GA', 'This is a single-family home. Located close to Peachtree city shopping and dining\r\n2 Bathroom in a 3 Bedroom house.\r\nAll appliance included.\r\n\r\nWasher and Dryer\r\nLarge kitchen with large common area\r\nAir conditioning\r\nMicrowave\r\nOven / range\r\nRefrigerator\r\n\r\nSafety first so background check and application fee required!\r\n\r\nApplication required: Rent history, credit, criminal, court records, employment, and income are some of the considerations in our tenant screening. Not authorized for Housing Vouchers.\r\n\r\nApply online at www.falconviewhomes.com', 'http://raviceramics.com/real_api/public/img_prop/U-1653524181.jpg', '3', '1281', '2', '00', 'Available Soon', 'Available June 2022', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3330.5509485872185!2d-84.61643358430224!3d33.408877758804614!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88f4c1f853f271e7%3A0x34ba98d17c1234ab!2s303%20Wynnmeade%20Pkwy%2C%20Peachtree%20City%2C%20GA%2030269!5e0!3m2!1sen!2sus!4v1653524110611!5m2!1sen!2sus'),
(84, 0, '997 Curran St – A', '997 Curran St – A Atlanta, GA 30318', 'Spacious 1Bedroom!\r\nMIDTOWN: HOME PARK: ACROSS THE STREET FROM GEORGIA TECH Spacious 1 bedroom unit Duplex in the Heart of Midtown and Minutes from GA TECH. Convenient to restaurants, campus, Atlantic Station, and Public Transit. Unit has 2 “possible” bedroom, one bathroom, and living room and large closets. Can be used as a roommate floorplan. Fantastic Front Porch to relax on and Unit has its own driveway for off street parking. Perfect for students or a couple. Fresh New Paint! One or Two year lease option.\r\n\r\nTHIS PROPERTY DOES NOT HAVE A WASHER DRYER CONNECTION!', 'http://raviceramics.com/real_api/public/img_prop/U-1653524540.jpg', '1', '900', '1', '1050', 'Available Soon', 'Available Fall 2022', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3316.174614098066!2d-84.40810328429626!3d33.78198873937005!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88f504f2b17428cf%3A0x63082984d82e268f!2s997%20Curran%20St%20NW%2C%20Atlanta%2C%20GA%2030318!5e0!3m2!1sen!2sus!4v1653524455467!5m2!1sen!2sus');

-- --------------------------------------------------------

--
-- Table structure for table `prop_gallery`
--

CREATE TABLE `prop_gallery` (
  `id` int(100) NOT NULL,
  `prop_id` varchar(100) NOT NULL,
  `prop_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prop_gallery`
--

INSERT INTO `prop_gallery` (`id`, `prop_id`, `prop_img`) VALUES
(1, '45', 'https://raviceramics.com/real_api/public/img_prop/property_img.png'),
(2, '45', 'https://raviceramics.com/real_api/public/img_prop/property_img.png'),
(4, '47', 'https://raviceramics.com/real_api/public/img_prop/U-1651432182.png'),
(5, '47', 'https://raviceramics.com/real_api/public/img_prop/U-1651432182.png'),
(17, '51', 'https://raviceramics.com/real_api/public/img_prop/U-1652104944.png'),
(18, '52', 'https://raviceramics.com/real_api/public/img_prop/U-1652105732.png'),
(19, '52', 'https://raviceramics.com/real_api/public/img_prop/U-1652105732.png'),
(20, '52', 'https://raviceramics.com/real_api/public/img_prop/U-1652105732.png'),
(21, '53', 'https://raviceramics.com/real_api/public/img_prop/U-1652303572.png'),
(22, '53', 'https://raviceramics.com/real_api/public/img_prop/U-1652303572.png'),
(23, '53', 'https://raviceramics.com/real_api/public/img_prop/U-1652303572.png'),
(24, '53', 'https://raviceramics.com/real_api/public/img_prop/U-1652303572.png'),
(25, '54', 'https://raviceramics.com/real_api/public/img_prop/U-1652303597.png'),
(26, '54', 'https://raviceramics.com/real_api/public/img_prop/U-1652303597.png'),
(27, '54', 'https://raviceramics.com/real_api/public/img_prop/U-1652303597.png'),
(28, '54', 'https://raviceramics.com/real_api/public/img_prop/U-1652303597.png'),
(29, '55', 'https://raviceramics.com/real_api/public/img_prop/U-1652303775.png'),
(30, '55', 'https://raviceramics.com/real_api/public/img_prop/U-1652303775.png'),
(31, '55', 'https://raviceramics.com/real_api/public/img_prop/U-1652303775.png'),
(32, '55', 'https://raviceramics.com/real_api/public/img_prop/U-1652303775.png'),
(37, '60', 'https://raviceramics.com/real_api/public/img_prop/U-1652358066.png'),
(38, '61', 'https://raviceramics.com/real_api/public/img_prop/U-1652358155.png'),
(39, '62', 'https://raviceramics.com/real_api/public/img_prop/U-1652358902.jpeg'),
(40, '63', 'https://raviceramics.com/real_api/public/img_prop/U-1652362065.jpeg'),
(41, '64', 'https://raviceramics.com/real_api/public/img_prop/U-1652364678.png'),
(42, '64', 'https://raviceramics.com/real_api/public/img_prop/U-1652364678.png'),
(43, '64', 'https://raviceramics.com/real_api/public/img_prop/U-1652364678.png'),
(44, '64', 'https://raviceramics.com/real_api/public/img_prop/U-1652364678.png'),
(45, '64', 'https://raviceramics.com/real_api/public/img_prop/U-1652364678.png'),
(46, '65', 'https://raviceramics.com/real_api/public/img_prop/U-1652365276.jpeg'),
(47, '66', 'https://raviceramics.com/real_api/public/img_prop/U-1652365469.jpeg'),
(48, '66', 'https://raviceramics.com/real_api/public/img_prop/U-1652365469.png'),
(49, '66', 'https://raviceramics.com/real_api/public/img_prop/U-1652365469.png'),
(50, '66', 'https://raviceramics.com/real_api/public/img_prop/U-1652365469.png'),
(51, '66', 'https://raviceramics.com/real_api/public/img_prop/U-1652365469.png'),
(52, '66', 'https://raviceramics.com/real_api/public/img_prop/U-1652365469.png'),
(53, '66', 'https://raviceramics.com/real_api/public/img_prop/U-1652365469.png'),
(54, '66', 'https://raviceramics.com/real_api/public/img_prop/U-1652365469.png'),
(55, '66', 'https://raviceramics.com/real_api/public/img_prop/U-1652365469.png'),
(56, '66', 'https://raviceramics.com/real_api/public/img_prop/U-1652365469.png'),
(57, '66', 'https://raviceramics.com/real_api/public/img_prop/U-1652365469.png'),
(58, '67', 'https://raviceramics.com/real_api/public/img_prop/U-1652365898.jpeg'),
(59, '67', 'https://raviceramics.com/real_api/public/img_prop/U-1652365898.png'),
(60, '67', 'https://raviceramics.com/real_api/public/img_prop/U-1652365898.png'),
(61, '67', 'https://raviceramics.com/real_api/public/img_prop/U-1652365898.png'),
(62, '67', 'https://raviceramics.com/real_api/public/img_prop/U-1652365898.png'),
(76, '72', 'https://raviceramics.com/real_api/public/img_prop/1652536091VACATIONAL HOME - Copy.jpeg'),
(77, '72', 'https://raviceramics.com/real_api/public/img_prop/1652536091VACATIONAL HOME.jpeg'),
(87, '76', 'https://raviceramics.com/real_api/public/img_prop/1652617573IMG_4733.jpg'),
(88, '76', 'https://raviceramics.com/real_api/public/img_prop/1652617573IMG_7400.JPEG'),
(89, '76', 'https://raviceramics.com/real_api/public/img_prop/1652617573IMG_7401.HEIC'),
(90, '77', 'https://raviceramics.com/real_api/public/img_prop/1652896304J31A8350.jpg'),
(91, '77', 'https://raviceramics.com/real_api/public/img_prop/1652896304J31A8346.jpg'),
(92, '77', 'https://raviceramics.com/real_api/public/img_prop/1652896304J31A8342.jpg'),
(93, '77', 'https://raviceramics.com/real_api/public/img_prop/1652896304J31A8338.jpg'),
(94, '77', 'https://raviceramics.com/real_api/public/img_prop/1652896304J31A8170.jpg'),
(95, '77', 'https://raviceramics.com/real_api/public/img_prop/1652896304J31A8174.jpg'),
(99, '80', 'http://raviceramics.com/real_api/public/img_prop/1653522302Kitchen1.jpg'),
(100, '80', 'http://raviceramics.com/real_api/public/img_prop/1653522302Bathroom.jpg'),
(101, '80', 'http://raviceramics.com/real_api/public/img_prop/1653522302Room5.jpg'),
(102, '81', 'http://raviceramics.com/real_api/public/img_prop/1653523145Kitchen .jpg'),
(103, '81', 'http://raviceramics.com/real_api/public/img_prop/1653523145Exterior .jpg'),
(104, '81', 'http://raviceramics.com/real_api/public/img_prop/1653523145Bathroom1.jpg'),
(105, '82', 'http://raviceramics.com/real_api/public/img_prop/1653523823Kitchen.jpg'),
(106, '82', 'http://raviceramics.com/real_api/public/img_prop/1653523823Bathroom.jpg'),
(107, '83', 'http://raviceramics.com/real_api/public/img_prop/1653524182thumbnail_IMG_0311.jpg'),
(108, '83', 'http://raviceramics.com/real_api/public/img_prop/1653524182thumbnail_IMG_0315.jpg'),
(109, '84', 'http://raviceramics.com/real_api/public/img_prop/1653524540LR.jpg'),
(110, '84', 'http://raviceramics.com/real_api/public/img_prop/1653524540Room1.jpg'),
(111, '84', 'http://raviceramics.com/real_api/public/img_prop/1653524540Room.jpg'),
(112, '85', 'http://raviceramics.com/real_api/public/img_prop/1653772443WhatsApp Image 2022-05-28 at 9.41.09 AM.jpeg'),
(113, '85', 'http://raviceramics.com/real_api/public/img_prop/1653772443WhatsApp Image 2022-05-27 at 1.36.49 PM.jpeg'),
(114, '85', 'http://raviceramics.com/real_api/public/img_prop/1653772443WhatsApp Image 2022-05-27 at 9.22.17 AM.jpeg'),
(115, '85', 'http://raviceramics.com/real_api/public/img_prop/1653829816WhatsApp Image 2022-05-28 at 4.15.35 PM.jpeg'),
(116, '86', 'http://raviceramics.com/real_api/public/img_prop/1653848670WhatsApp Image 2022-05-28 at 9.41.09 AM.jpeg'),
(117, '87', 'http://raviceramics.com/real_api/public/img_prop/1653848816WhatsApp Image 2022-05-28 at 9.41.09 AM.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `pro_amen_feat_sur`
--

CREATE TABLE `pro_amen_feat_sur` (
  `id` int(30) NOT NULL,
  `pro_id` int(30) DEFAULT NULL,
  `amen_id` int(30) DEFAULT NULL,
  `feat_id` int(30) DEFAULT NULL,
  `sur_id` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pro_amen_feat_sur`
--

INSERT INTO `pro_amen_feat_sur` (`id`, `pro_id`, `amen_id`, `feat_id`, `sur_id`) VALUES
(43, 33, NULL, 27, NULL),
(44, 33, NULL, 26, NULL),
(45, 33, NULL, 25, NULL),
(46, 33, 2, NULL, NULL),
(47, 33, 1, NULL, NULL),
(48, 33, NULL, NULL, 5),
(49, 33, NULL, NULL, 4),
(50, 34, NULL, 28, NULL),
(51, 34, NULL, 27, NULL),
(52, 34, 6, NULL, NULL),
(53, 34, 5, NULL, NULL),
(54, 34, NULL, NULL, 5),
(55, 34, NULL, NULL, 4),
(56, 35, NULL, 28, NULL),
(57, 35, NULL, 27, NULL),
(58, 35, NULL, 26, NULL),
(59, 35, 6, NULL, NULL),
(60, 35, 4, NULL, NULL),
(61, 35, 3, NULL, NULL),
(62, 35, NULL, NULL, 5),
(63, 35, NULL, NULL, 4),
(64, 35, NULL, NULL, 3),
(65, 36, NULL, 27, NULL),
(66, 36, NULL, 25, NULL),
(67, 36, 5, NULL, NULL),
(68, 36, 4, NULL, NULL),
(69, 36, NULL, NULL, 4),
(70, 37, NULL, 27, NULL),
(71, 37, NULL, 25, NULL),
(72, 37, 5, NULL, NULL),
(73, 37, 4, NULL, NULL),
(74, 37, NULL, NULL, 4),
(75, 38, NULL, 28, NULL),
(76, 38, NULL, 27, NULL),
(77, 38, 3, NULL, NULL),
(78, 38, 2, NULL, NULL),
(79, 38, NULL, NULL, 3),
(80, 38, NULL, NULL, 2),
(81, 39, NULL, 27, NULL),
(82, 39, NULL, 26, NULL),
(83, 39, 5, NULL, NULL),
(84, 39, 4, NULL, NULL),
(85, 39, NULL, NULL, 4),
(86, 39, NULL, NULL, 3),
(87, 40, NULL, 27, NULL),
(88, 40, NULL, 26, NULL),
(89, 40, 3, NULL, NULL),
(90, 40, 2, NULL, NULL),
(91, 40, NULL, NULL, 3),
(92, 40, NULL, NULL, 2),
(93, 41, NULL, 27, NULL),
(94, 41, NULL, 26, NULL),
(95, 41, 3, NULL, NULL),
(96, 41, 2, NULL, NULL),
(97, 41, NULL, NULL, 3),
(98, 41, NULL, NULL, 2),
(99, 42, NULL, 28, NULL),
(100, 42, NULL, 26, NULL),
(101, 42, 5, NULL, NULL),
(102, 42, 3, NULL, NULL),
(103, 42, NULL, NULL, 3),
(104, 43, NULL, 28, NULL),
(105, 43, NULL, 26, NULL),
(106, 43, 5, NULL, NULL),
(107, 43, 3, NULL, NULL),
(108, 43, NULL, NULL, 3),
(109, 44, NULL, 28, NULL),
(110, 44, NULL, 26, NULL),
(111, 44, 5, NULL, NULL),
(112, 44, 3, NULL, NULL),
(113, 44, NULL, NULL, 3),
(114, 45, NULL, 28, NULL),
(115, 45, NULL, 27, NULL),
(116, 45, 4, NULL, NULL),
(117, 45, NULL, NULL, 4),
(118, 45, NULL, NULL, 3),
(119, 46, NULL, 27, NULL),
(120, 46, NULL, 26, NULL),
(121, 46, NULL, 25, NULL),
(122, 46, 5, NULL, NULL),
(123, 46, 4, NULL, NULL),
(124, 46, NULL, NULL, 5),
(125, 46, NULL, NULL, 4),
(126, 46, NULL, NULL, 3),
(127, 47, NULL, 27, NULL),
(128, 47, NULL, 26, NULL),
(129, 47, NULL, 25, NULL),
(130, 47, 5, NULL, NULL),
(131, 47, 3, NULL, NULL),
(132, 47, NULL, NULL, 4),
(133, 47, NULL, NULL, 2),
(175, 51, NULL, 19, NULL),
(176, 51, NULL, 18, NULL),
(177, 51, NULL, 17, NULL),
(178, 51, 7, NULL, NULL),
(179, 51, 3, NULL, NULL),
(180, 51, NULL, NULL, 4),
(181, 51, NULL, NULL, 3),
(182, 51, NULL, NULL, 2),
(183, 52, NULL, 19, NULL),
(184, 52, NULL, 18, NULL),
(185, 52, 8, NULL, NULL),
(186, 52, 3, NULL, NULL),
(187, 52, NULL, NULL, 3),
(188, 53, NULL, 23, NULL),
(189, 53, NULL, 19, NULL),
(190, 53, NULL, 18, NULL),
(191, 53, NULL, 17, NULL),
(192, 53, NULL, 16, NULL),
(193, 53, 9, NULL, NULL),
(194, 53, 8, NULL, NULL),
(195, 53, 7, NULL, NULL),
(196, 53, 3, NULL, NULL),
(197, 53, NULL, NULL, 5),
(198, 53, NULL, NULL, 3),
(199, 53, NULL, NULL, 2),
(200, 53, NULL, NULL, 3),
(201, 54, NULL, 23, NULL),
(202, 54, NULL, 19, NULL),
(203, 54, NULL, 18, NULL),
(204, 54, NULL, 17, NULL),
(205, 54, NULL, 16, NULL),
(206, 54, 9, NULL, NULL),
(207, 54, 8, NULL, NULL),
(208, 54, 7, NULL, NULL),
(209, 54, 3, NULL, NULL),
(210, 54, NULL, NULL, 5),
(211, 54, NULL, NULL, 3),
(212, 54, NULL, NULL, 2),
(213, 54, NULL, NULL, 3),
(214, 55, NULL, 23, NULL),
(215, 55, NULL, 19, NULL),
(216, 55, NULL, 16, NULL),
(217, 55, NULL, 15, NULL),
(218, 55, NULL, 14, NULL),
(219, 55, 9, NULL, NULL),
(220, 55, 8, NULL, NULL),
(221, 55, 3, NULL, NULL),
(222, 55, NULL, NULL, 5),
(223, 55, NULL, NULL, 4),
(224, 55, NULL, NULL, 2),
(225, 55, NULL, NULL, 3),
(282, 60, NULL, 19, NULL),
(283, 60, NULL, 18, NULL),
(284, 60, NULL, 17, NULL),
(285, 60, 9, NULL, NULL),
(286, 60, 8, NULL, NULL),
(287, 60, NULL, NULL, 4),
(288, 60, NULL, NULL, 4),
(289, 61, NULL, 23, NULL),
(290, 61, NULL, 17, NULL),
(291, 61, NULL, 18, NULL),
(292, 61, NULL, 19, NULL),
(293, 61, 9, NULL, NULL),
(294, 61, 8, NULL, NULL),
(295, 61, 7, NULL, NULL),
(296, 61, 3, NULL, NULL),
(297, 61, NULL, NULL, 5),
(298, 61, NULL, NULL, 3),
(299, 62, NULL, 19, NULL),
(300, 62, NULL, 17, NULL),
(301, 62, NULL, 15, NULL),
(302, 62, 7, NULL, NULL),
(303, 62, 2, NULL, NULL),
(304, 62, 1, NULL, NULL),
(305, 62, NULL, NULL, 4),
(306, 62, NULL, NULL, 2),
(307, 62, NULL, NULL, 1),
(308, 63, NULL, 23, NULL),
(309, 63, NULL, 19, NULL),
(310, 63, NULL, 18, NULL),
(311, 63, NULL, 17, NULL),
(312, 63, 9, NULL, NULL),
(313, 63, 8, NULL, NULL),
(314, 63, 7, NULL, NULL),
(315, 63, 3, NULL, NULL),
(316, 63, NULL, NULL, 5),
(317, 63, NULL, NULL, 4),
(318, 63, NULL, NULL, 3),
(319, 63, NULL, NULL, 2),
(320, 64, NULL, 23, NULL),
(321, 64, NULL, 19, NULL),
(322, 64, 8, NULL, NULL),
(323, 64, 7, NULL, NULL),
(324, 64, 2, NULL, NULL),
(325, 64, NULL, NULL, 4),
(326, 64, NULL, NULL, 3),
(327, 65, NULL, 19, NULL),
(328, 65, NULL, 18, NULL),
(329, 65, NULL, 16, NULL),
(330, 65, 7, NULL, NULL),
(331, 65, 8, NULL, NULL),
(332, 65, 9, NULL, NULL),
(333, 65, NULL, NULL, 5),
(334, 65, NULL, NULL, 4),
(335, 66, NULL, 23, NULL),
(336, 66, NULL, 18, NULL),
(337, 66, NULL, 19, NULL),
(338, 66, NULL, 17, NULL),
(339, 66, NULL, 16, NULL),
(340, 66, NULL, 16, NULL),
(341, 66, 8, NULL, NULL),
(342, 66, 7, NULL, NULL),
(343, 66, 7, NULL, NULL),
(344, 66, 3, NULL, NULL),
(345, 66, 3, NULL, NULL),
(346, 66, 3, NULL, NULL),
(347, 66, NULL, NULL, 5),
(348, 66, NULL, NULL, 4),
(349, 66, NULL, NULL, 4),
(350, 66, NULL, NULL, 3),
(351, 66, NULL, NULL, 4),
(352, 66, NULL, NULL, 4),
(353, 66, NULL, NULL, 4),
(354, 66, NULL, NULL, 4),
(355, 66, NULL, NULL, 4),
(356, 67, NULL, 19, NULL),
(357, 67, NULL, 18, NULL),
(358, 67, 8, NULL, NULL),
(359, 67, 7, NULL, NULL),
(487, 72, NULL, 19, NULL),
(488, 72, NULL, 18, NULL),
(489, 72, NULL, 15, NULL),
(490, 72, NULL, 14, NULL),
(491, 72, NULL, 24, NULL),
(492, 72, 10, NULL, NULL),
(493, 72, NULL, NULL, 6),
(567, 76, NULL, 24, NULL),
(568, 76, NULL, 19, NULL),
(569, 76, NULL, 17, NULL),
(570, 76, NULL, 18, NULL),
(571, 76, NULL, 16, NULL),
(572, 76, 11, NULL, NULL),
(573, 76, 10, NULL, NULL),
(583, 77, NULL, 24, NULL),
(584, 77, NULL, 23, NULL),
(585, 77, NULL, 14, NULL),
(586, 77, NULL, 16, NULL),
(587, 77, NULL, 17, NULL),
(588, 77, 11, NULL, NULL),
(589, 77, 10, NULL, NULL),
(590, 77, 7, NULL, NULL),
(591, 77, NULL, NULL, 6),
(600, 80, NULL, 24, NULL),
(601, 80, 10, NULL, NULL),
(602, 80, 11, NULL, NULL),
(603, 80, NULL, NULL, 6),
(604, 81, NULL, 29, NULL),
(605, 81, NULL, 28, NULL),
(606, 81, NULL, 27, NULL),
(607, 81, NULL, 26, NULL),
(608, 81, NULL, 25, NULL),
(609, 81, 12, NULL, NULL),
(610, 81, 11, NULL, NULL),
(611, 81, 10, NULL, NULL),
(612, 82, NULL, 29, NULL),
(613, 82, NULL, 28, NULL),
(614, 82, NULL, 27, NULL),
(615, 82, NULL, 26, NULL),
(616, 82, NULL, 25, NULL),
(617, 82, 12, NULL, NULL),
(618, 82, 10, NULL, NULL),
(619, 82, NULL, NULL, 6),
(620, 83, NULL, 28, NULL),
(621, 83, NULL, 27, NULL),
(622, 83, NULL, 26, NULL),
(623, 83, NULL, 29, NULL),
(624, 83, NULL, 25, NULL),
(625, 83, 12, NULL, NULL),
(626, 83, 10, NULL, NULL),
(627, 83, NULL, NULL, 6),
(628, 84, NULL, 29, NULL),
(629, 84, NULL, 28, NULL),
(630, 84, NULL, 27, NULL),
(631, 84, NULL, 26, NULL),
(632, 84, NULL, 25, NULL),
(633, 84, 12, NULL, NULL),
(634, 84, 10, NULL, NULL),
(635, 84, NULL, NULL, 6),
(636, 85, NULL, 29, NULL),
(637, 85, 11, NULL, NULL),
(638, 85, NULL, NULL, 6),
(639, 85, NULL, 29, NULL),
(640, 85, 12, NULL, NULL),
(641, 85, NULL, NULL, 6),
(642, 86, NULL, 29, NULL),
(643, 86, NULL, 28, NULL),
(644, 86, 11, NULL, NULL),
(645, 86, NULL, NULL, 7),
(646, 87, NULL, 29, NULL),
(647, 87, 12, NULL, NULL),
(648, 87, NULL, NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `surrondings`
--

CREATE TABLE `surrondings` (
  `id` int(30) NOT NULL,
  `sur_name` varchar(255) NOT NULL,
  `sur_address` varchar(255) DEFAULT NULL,
  `sur_class` varchar(255) DEFAULT NULL,
  `sur_distance` varchar(255) DEFAULT NULL,
  `sur_contact` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surrondings`
--

INSERT INTO `surrondings` (`id`, `sur_name`, `sur_address`, `sur_class`, `sur_distance`, `sur_contact`) VALUES
(1, 'Cane Aay Elementary School', '1247 Cane Bay Boulevard', 'PK,KG,1,2,3,4', '0.47 miles', '(843) 899-5100'),
(2, 'Cane Cay Elementary School', '1247 Cane Bay Boulevard', 'PK,KG,1,2,3,4', '0.47 miles', '(843) 899-5100'),
(3, 'Cane Day Elementary School', '1247 Cane Bay Boulevard', 'PK,KG,1,2,3,4', '0.47 miles', '(843) 899-5100'),
(4, 'Cane Bay Elementary School', '1247 Cane Bay Boulevard', 'PK,KG,1,2,3,4', '0.47 miles', '(843) 899-5100'),
(5, 'Cane Bay Elementary School', '1247 Cane Bay Boulevard', 'PK,KG,1,2,3,4', '0.47 miles', '(843) 899-5100'),
(6, 'SOON', 'N/A', 'N/A', 'N/A', 'N/A'),
(7, 'test', 'test', 'test', 'test', '0778877');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `password` varchar(150) NOT NULL,
  `role` varchar(20) NOT NULL,
  `tokken` text NOT NULL,
  `is_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_email`, `password`, `role`, `tokken`, `is_active`) VALUES
(1, 'admin', '12345', 'admin', '6291fe82e7cjk', 1),
(10, 'umair', '12345', 'seller', '62926c43a0402', 1),
(11, 'umair2@gmail.com', '12345', 'seller', '6293b878a5d78', 1),
(12, 'umair22@gmail.com', '12345', 'seller', '6293b8f208414', 1),
(13, 'admin2@gmail.com', '123456', 'seller', '6293b9c7a0b77', 1),
(14, 'yasir@gmail.com', '123456', 'customer', '6293bb78577a0', 1),
(15, 'chaudharyumair27@gmail.com', '12345', 'seller', '6293c0f1cc096', 1),
(16, 'chaudhary_umair27@yahoo.com', '12345', 'customer', '6293c1555472e', 1);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(100) NOT NULL,
  `video_title` varchar(255) DEFAULT NULL,
  `video_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video_title`, `video_link`) VALUES
(1, 'test', 'https://www.youtube.com/embed/d__M3k4eL3E?start=12&autoplay=1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prop_gallery`
--
ALTER TABLE `prop_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_amen_feat_sur`
--
ALTER TABLE `pro_amen_feat_sur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surrondings`
--
ALTER TABLE `surrondings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `prop_gallery`
--
ALTER TABLE `prop_gallery`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `pro_amen_feat_sur`
--
ALTER TABLE `pro_amen_feat_sur`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=649;

--
-- AUTO_INCREMENT for table `surrondings`
--
ALTER TABLE `surrondings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
