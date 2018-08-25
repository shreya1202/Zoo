-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 12, 2018 at 06:01 PM
-- Server version: 10.2.16-MariaDB
-- PHP Version: 7.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `1341511`
--
CREATE DATABASE IF NOT EXISTS `1341511` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `1341511`;

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

CREATE TABLE `animals` (
  `Number` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Date_of_Arrival` date DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `total_animals` int(11) DEFAULT NULL,
  `food_feed` int(11) NOT NULL,
  `food_time` time NOT NULL,
  `total_food_req` int(11) NOT NULL,
  `right_food_time` varchar(5) NOT NULL,
  `Health` varchar(20) NOT NULL,
  `food_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `animals`
--

INSERT INTO `animals` (`Number`, `Name`, `Date_of_Arrival`, `image`, `total_animals`, `food_feed`, `food_time`, `total_food_req`, `right_food_time`, `Health`, `food_type`) VALUES
(1, 'Bengal Tiger', '2015-06-14', 'http://1.bp.blogspot.com/-DNJDRM-H3ic/UPAgjG7FWZI/AAAAAAAAFLQ/t3ryW3GeENA/s1600/Bengal+Tiger+04.jpg', 1, 45, '05:00:00', 45, 'Yes', 'Non-critical', 'Flesh'),
(2, 'Asiatic Lion', '2016-02-02', 'https://c1.staticflickr.com/2/1644/24000062613_7e800d59e4_b.jpg', 1, 0, '05:10:00', 50, 'Yes', 'Non-Critical', 'Flesh'),
(3, 'Swamp Deer', '2012-08-20', 'http://www.gallery.indianaturetours.com/component/joomgallery/image.raw?view=image&type=orig&id=76', 5, 0, '05:20:00', 100, '', '', 'Grasses'),
(4, 'Giraffe', '2011-11-09', 'http://www.sciencemag.org/sites/default/files/styles/article_main_large/public/images/cc_Giraffes_16x9.jpg?itok=dKmuVKO6', 2, 0, '05:30:00', 50, '', '', 'Grasses'),
(5, 'Rhesus Monkey', '2014-02-15', 'https://media.npr.org/assets/img/2015/06/26/monkeyisland-1_custom-dd0c4024fd939344e135a5ff6cc995a7864af8e2-s900-c85.jpg', 2, 0, '05:40:00', 10, '', '', 'Fruits and leaves'),
(6, 'Chimpanzee', '2013-03-10', 'http://animals.sandiegozoo.org/sites/default/files/2016-10/animals_hero_chimpanzee.jpg', 2, 25, '05:50:00', 25, 'Yes', 'Non-critical', 'Fruits and leaves'),
(7, 'Indian Porcupine', '2016-06-29', 'http://animals.sandiegozoo.org/sites/default/files/2016-09/animals_hero_porcupine.jpg', 3, 0, '06:00:00', 7, '', '', 'Fruits and leaves'),
(8, 'Hill Myna', '2016-01-08', 'http://www.indianaturewatch.net/images/album/photo/17555671814ed46eace006a.jpg', 7, 0, '06:10:00', 70, '', '', 'Fruits and insects'),
(9, 'Write Stork', '2015-06-15', 'https://upload.wikimedia.org/wikipedia/commons/d/df/Mycteria_leucocephala_-_Pak_Thale.jpg', 10, 50, '06:20:00', 250, 'Yes', 'Critical', 'Insects, fishes and reptiles'),
(10, 'Large Indian Parakeet', '2018-06-15', 'https://s3.amazonaws.com/media.jungledragon.com/images/2167/31743_medium.jpg?AWSAccessKeyId=05GMT0V3GWVNE7GGM1R2&Expires=1531353610&Signature=yx%2FAGNesJclDgYBWKXC053%2FKzAk%3D', 5, 0, '06:30:00', 8, '', '', 'Fruits and leaves'),
(11, 'Indian Cobra', '2018-06-15', 'http://rahulalvares.com/wp-content/uploads/2014/10/6O4A0409.jpg', 1, 0, '06:40:00', 25, 'Yes', 'Non-Critical', 'Mammals, birds and lizards'),
(12, 'Viper', '2018-06-15', 'http://rahulalvares.com/wp-content/uploads/2013/02/IMG_3822-2.jpg', 1, 0, '06:50:00', 25, '', '', 'Mammals, birds and lizards'),
(13, 'Turtle', '2018-06-15', 'http://www.reptilegardens.com/assets/images/gallery/images/turtle-copy-c7bba1f234f8.jpg', 3, 0, '07:00:00', 10, '', '', 'Insects, fishes and reptiles'),
(14, 'Albino Tiger Shark', '2018-06-15', 'http://gaylordpets.com/wp-content/uploads/2016/10/Albino-tiger-Shark.jpg', 5, 0, '07:10:00', 10, 'Yes', 'Non-Critical', 'Flesh'),
(15, 'Calico Gold', '2018-06-15', 'https://absolutelyfish.com/wp-content/gallery/goldfish/calico-ryukin.jpg', 6, 0, '07:20:00', 12, '', '', 'Algae '),
(16, 'Parrot Fish', '2018-06-15', 'https://www.futurity.org/wp/wp-content/uploads/2017/09/steephead-parrotfish_1600.jpg', 4, 8, '07:30:00', 8, 'Yes', 'Non-Critical', 'Algae');

-- --------------------------------------------------------

--
-- Table structure for table `caretaker`
--

CREATE TABLE `caretaker` (
  `pwd` varchar(50) NOT NULL,
  `userid` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `caretaker`
--

INSERT INTO `caretaker` (`pwd`, `userid`) VALUES
('pass', '123'),
('password', '125');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feed` varchar(500) DEFAULT NULL,
  `rating` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `idstock` int(11) NOT NULL,
  `Stock_type` varchar(45) DEFAULT NULL,
  `current_stock` int(11) DEFAULT NULL,
  `req_stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`idstock`, `Stock_type`, `current_stock`, `req_stock`) VALUES
(1, 'Flesh', 200, 105),
(2, 'Grasses', 150, 150),
(3, 'Fruits and leaves', 100, 50),
(4, 'Fruits and insects', 70, 70),
(5, 'Insects, fishes and reptiles', 260, 260),
(6, 'Mammals, birds and lizards', 50, 50),
(7, 'Algae', 20, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`Number`),
  ADD UNIQUE KEY `Name_UNIQUE` (`Name`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`idstock`);
--
-- Database: `1341511db2`
--
CREATE DATABASE IF NOT EXISTS `1341511db2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `1341511db2`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
