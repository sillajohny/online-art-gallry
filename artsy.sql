-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2017 at 07:32 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `artsy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(3, 'admin', '87290e0e13b6901772b349cac2cca631', '2017-09-11 07:39:50');

-- --------------------------------------------------------

--
-- Table structure for table `aregistration`
--

CREATE TABLE `aregistration` (
  `areg` int(11) NOT NULL,
  `us_id` int(11) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `dob` date NOT NULL,
  `mbno` int(12) NOT NULL,
  `address` varchar(150) NOT NULL,
  `country` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `img` varchar(300) NOT NULL,
  `status` int(5) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aregistration`
--

INSERT INTO `aregistration` (`areg`, `us_id`, `fname`, `lname`, `gender`, `dob`, `mbno`, `address`, `country`, `state`, `city`, `img`, `status`, `email`) VALUES
(47, 72, 'aaa', 'khkh', 'Female', '2017-09-06', 780780, 'khkghkg', 'khghkgkh', 'hghgkhg', 'hghkghk', 'photo/1506273858WIN_20170405_083019.JPG', 0, 's@s.s'),
(50, 75, 'mbhk', 'khkhk', 'Male', '2017-09-06', 7607678, 'jhghgj', 'gjgjk', 'jgjgj', 'jhgjhghj', 'photo/1506273988WIN_20170405_083029.JPG', 0, 'sr@gh.jhj'),
(51, 81, 'athira   ', 'gopinath   ', 'female         ', '1995-07-11', 1234567890, 'pranavam   ', 'hgjhjjj', 'hjhjhjh', 'Alappuzha', 'photo/1506356800ch.jpg', 0, 'sunny@gmail.com'),
(52, 82, '765746uygug', '878uhughh2', 'Male', '2017-09-12', 0, 'dfdsfd', 'frgtrfg', 'fgfg', 'gfgf', 'photo/1506568816ab5.jpg', 0, 'jhgjh7867@hjchj'),
(53, 83, '76877888', '6786786786jhhghgh', 'Male', '2017-09-07', 2147483647, 'jrgfrhhjhjrh', 'thytytuyu', '5y6y67u6u7', 'jhjkjjkjkjk', 'photo/1506568935ch2 - Copy.jpg', 0, 'jghghgh@jhtj'),
(54, 84, '677888', '7899', 'Male', '2017-09-20', 5677777, 'vbcvsbvcbvbc', 'ndchdvh', 'hjgh', 'huiouiouy', 'photo/1506569177a.png', 0, 'jhhjhjh@ghg'),
(55, 85, 'ghghfghgf', '67677', '', '0000-00-00', 0, '', '', '', '', 'photo/1506570186', 0, '767858@bvcb'),
(56, 86, 'gfhgh', 'hghjghg', 'Male', '2017-09-13', 2147483647, '', '', '', '', 'photo/1506571195', 0, 'athiragopinath@mca.ajce.i'),
(57, 87, 'dgfhd', 'hghjgh', 'Male', '2017-09-05', 2147483647, '', '', '', '', 'photo/1506571341', 0, 'theresa@gmail.com'),
(58, 88, 'abcd', 'ef', 'Male', '2017-09-08', 2147483647, 'dsfdsf', '1', '1', 'aaaa', 'photo/1506594762ab3 - Copy.jpg', 0, 'abcd@gmail.com'),
(59, 89, 'xYz', 'GYG', 'Male', '2017-09-09', 2147483647, '5jn', '1', '3', 'hygy', 'photo/1506594977ch5.jpeg', 0, 'XYZ@gmail.com'),
(60, 103, 'Silpa', 'Johny', 'Female', '1997-05-03', 2147483647, 'chavarapuzha house', '1', '1', 'Idukki', 'photo/150669604520140216_105150-1.jpg', 0, 'silpajohn@gmail.com'),
(61, 105, 'sruthi ', 'Dev', 'Female ', '1995-03-18', 908765432, 'Thottathil(H)AnakkaraKumily ', '2', '8', 'kumily ', 'photo/1507471655IMG_4926.JPG', 0, 'sruthithomas@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `art`
--

CREATE TABLE `art` (
  `art_id` int(11) NOT NULL,
  `artname` varchar(30) NOT NULL,
  `artdetails` varchar(200) NOT NULL,
  `artimg` varchar(300) NOT NULL,
  `size` varchar(40) NOT NULL,
  `price` varchar(30) NOT NULL,
  `artcat_id` int(11) NOT NULL,
  `status` int(5) NOT NULL,
  `ureg` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `art`
--

INSERT INTO `art` (`art_id`, `artname`, `artdetails`, `artimg`, `size`, `price`, `artcat_id`, `status`, `ureg`) VALUES
(1, 'yfjf', 'dbgfd', 'artimg/1506528333WIN_20170405_083039.JPG', 'hfbd', 'fb', 0, 0, 0),
(2, 'GHJXHJ', 'XCXCX', 'artimg/1506528811WIN_20170405_083041.JPG', 'CXV', 'D', 0, 0, 0),
(3, 'gfgg', 'hgerhgfuhgrhug', 'artimg/1506568179ab2 - Copy - Copy.jpg', 'hjf', 'ghg', 0, 0, 0),
(4, 'jhjkfhkg', 'ghghghghh', 'artimg/1506568364ch.jpg', 'hgjh', 'hgjhthj', 0, 0, 0),
(5, 'budha', 'vdghgfjhgjhfhdfh', 'artimg/1506617124con3 - Copy - Copy.jpg', '45', '5678', 0, 0, 0),
(6, 'budha', 'hhdghsghd', 'artimg/1506660999con5 - Copy.jpg', '45*32pxls', '4500', 0, 0, 0),
(7, 'uk', 'art kukuku', 'artimg/1506662971con6 - Copy.jpg', '34*65', '4500', 0, 0, 0),
(8, 'sithaswayamvaram', 'sitha', 'artimg/1506664588con7 - Copy.jpg', '34*65', '6000', 0, 0, 0),
(9, 'pravu', 'eeeee', 'artimg/1506677209con4.jpg', '56*78', '5678', 0, 1, 10),
(10, 'siva', 'siva swayamvaam', 'artimg/1506679450im.jpg', '34*23', '3456', 3, 1, 10),
(11, 'Navaraksha', 'fgfhgshgdhgdhg', 'artimg/1506694745ch5 - Copy.jpeg', '45*32pxls', '4569', 3, 1, 10),
(12, 'Parvathy', 'parvathy with son', 'artimg/1506929510g3.jpg', '45*87pxls', '6789', 3, 1, 10),
(13, 'THR', 'JJGHJGHF', 'artimg/1507014656us.png', '43*65PXL', '45667567', 2, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `artcategory`
--

CREATE TABLE `artcategory` (
  `artcat_id` int(11) NOT NULL,
  `category` varchar(30) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artcategory`
--

INSERT INTO `artcategory` (`artcat_id`, `category`, `status`) VALUES
(1, 'aaaa', 1),
(2, 'bbb', 1),
(3, 'ccc', 1),
(4, 'ddd', 1),
(5, 'Oil Art', 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `con_id` int(15) NOT NULL,
  `con_name` varchar(40) NOT NULL,
  `status` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`con_id`, `con_name`, `status`) VALUES
(1, 'India', 1),
(2, 'England', 1),
(4, 'Australia', 1),
(5, 'Australia', 1),
(6, 'Russia', 1),
(7, 'China', 1),
(8, 'Korea', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `us_id` int(11) NOT NULL,
  `email` varchar(25) NOT NULL,
  `pass` varchar(25) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`us_id`, `email`, `pass`, `role_id`, `status`) VALUES
(72, 's@s.s', 's', 2, 1),
(75, 'sr@gh.jhj', 'gjgj', 2, 1),
(76, 'siva@gmail.com', '123', 3, 1),
(81, 'sunny@gmail.com', '333', 2, 1),
(82, 'jhgjh7867@hjchj', 'hghjhgh', 2, 1),
(83, 'jghghgh@jhtj', 'yytyty', 2, 1),
(84, 'jhhjhjh@ghg', 'hjhj', 2, 1),
(85, '767858@bvcb', '', 2, 1),
(86, 'athiragopinath@mca.ajce.i', '456', 2, 1),
(87, 'theresa@gmail.com', 'hghgh', 2, 1),
(88, 'abcd@gmail.com', '123', 2, 1),
(89, 'XYZ@gmail.com', '123', 2, 1),
(90, 'bbb@nncn', 'bvbb', 3, 1),
(91, 'bcjb@vbvn', 'jcjfdfhd', 3, 1),
(92, '', '', 3, 1),
(95, 'ausha@gmail.com', '', 3, 1),
(96, 'may@gmail.com', '123', 3, 1),
(98, 'siya@gmail.com', '', 3, 1),
(99, 'fdgf@gjfh', '', 3, 1),
(100, 'nushi@gmail.com', '123', 3, 1),
(101, 'bainul@gmail.com', '123', 3, 1),
(102, 'asna@gmail.com', '123', 3, 1),
(103, 'silpajohn@gmail.com', '123', 2, 1),
(104, 'admin@gmail.com', 'admin', 1, 1),
(105, 'sruthithomas@gmail.com', '1234', 2, 1),
(106, 'sdg@gh.com', 'rtyu', 3, 1),
(107, 'rinnikurian@gmail.com', '12345', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mycart`
--

CREATE TABLE `mycart` (
  `cart_id` int(11) NOT NULL,
  `ureg` int(11) NOT NULL,
  `art_id` int(11) NOT NULL,
  `areg` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mycart`
--

INSERT INTO `mycart` (`cart_id`, `ureg`, `art_id`, `areg`, `status`) VALUES
(5, 10, 12, 51, 0),
(10, 10, 11, 51, 0),
(12, 10, 10, 51, 0),
(13, 10, 13, 51, 0),
(14, 10, 9, 51, 0),
(15, 0, 8, 51, 0),
(16, 0, 8, 51, 0),
(17, 0, 8, 51, 0),
(18, 0, 8, 51, 0),
(19, 0, 8, 51, 0),
(20, 0, 8, 51, 0),
(21, 0, 8, 51, 0),
(22, 0, 8, 51, 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(10) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`, `status`) VALUES
(1, 'admin', 1),
(2, 'user', 1),
(3, 'artist', 1);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(40) NOT NULL,
  `status` int(5) NOT NULL,
  `con_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`, `status`, `con_id`) VALUES
(1, 'Kerala', 1, 1),
(2, 'Goa', 1, 1),
(3, 'Tamilnadu', 1, 1),
(4, 'delhi', 1, 0),
(5, 'delhi', 1, 0),
(6, 'eeee', 1, 0),
(7, 'vgfbfgg', 1, 1),
(8, 'sru', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `uregistration`
--

CREATE TABLE `uregistration` (
  `ureg` int(11) NOT NULL,
  `us_id` int(11) NOT NULL,
  `fnam` varchar(25) NOT NULL,
  `lnam` varchar(25) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `mbno` varchar(12) NOT NULL,
  `address` varchar(150) NOT NULL,
  `edu` varchar(200) NOT NULL,
  `country` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `img` varchar(300) NOT NULL,
  `status` int(11) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uregistration`
--

INSERT INTO `uregistration` (`ureg`, `us_id`, `fnam`, `lnam`, `gender`, `dob`, `mbno`, `address`, `edu`, `country`, `state`, `city`, `img`, `status`, `email`) VALUES
(1, 76, 'siva', 'raj', 'Male', '2015-04-08', '2147483647', 'fgjhjffhjghjfhg\r\nbjfbngfbnbfmnb', 'mca', 'ghghjjh', 'ghgh', 'hjkhhjhjh', 'photo1/1506356058con2.jpg', 0, 'siva@gmail.com'),
(2, 90, '455', '677', '', '2017-09-12', '0', 'shkjhckjhx', 'c', 'c', 'c', 'fvgfg', 'photo1/1506611316aa.jpg', 0, 'bbb@nncn'),
(3, 91, '34', '76786', 'Male', '2017-09-14', '2147483647', 'hhjdfjh', 'jgfdhfjhdj', 'ccd', 'dfdf', 'dfdg', 'photo1/1506611379WIN_20170405_083041.JPG', 0, 'bcjb@vbvn'),
(4, 92, '676767', '', '', '0000-00-00', '0', '', '', '', '', '', 'photo1/1506611582', 0, ''),
(5, 95, '56567567', '', '', '0000-00-00', '0', '', '', '', '', '', 'photo1/1506612025', 0, 'ausha@gmail.com'),
(6, 96, 'may', 'thomas', 'Female', '2017-09-14', '787886566', 'anakkara', 'mmb', 'hgfjhd', 'hfgdghfh', 'KUMILY', 'photo1/1506612130WIN_20170405_083029.JPG', 0, 'may@gmail.com'),
(7, 98, '657867587867', '', 'Male', '0000-00-00', '0', '', '', '', '', '', 'photo1/1506612270', 0, 'siya@gmail.com'),
(8, 99, 'hgfhdgfhgdhfg', '67647', 'Male', '2017-09-14', '0', 'hjfhghjghjfhj', 'hhthhthtjh22', 'ff', 'fgg', 'fhghfjf3', 'photo1/1506613471WIN_20170405_083019.JPG', 0, 'fdgf@gjfh'),
(9, 100, 'gdhsgh', 'gdhsghd', 'Male', '2017-09-14', '2147483647', 'fdkjfhjkhj', 'ertrytrytu', '', '', 'hdgfhdfh', 'photo1/1506614520', 0, 'nushi@gmail.com'),
(10, 101, 'bainul  ', 'nushi    ', 'female    ', '1995-07-23', '2147483647  ', 'thekkadyjjj ', 'Mca  ', '1', '1', 'Idukki  ', 'photo1/15066159442017-03-17-11-34-16-400.jpg', 0, 'bainul@gmail.com'),
(11, 102, 'anni', 'thomas', 'Female', '1995-12-31', '2147483647', 'fhfhfhjhfvnnmcnvm', 'dfhdjh', '1', '3', 'ghdghg', 'photo1/1506616862IMG_20170317_114829.jpg', 0, 'asna@gmail.com'),
(12, 106, 'hfjkrh', 'fgfgt', 'Male', '1948-11-04', '2147483647', 'dsfdf', 'dfd', '2', '8', 'ygghghgh', 'photo1/1507544815', 0, 'sdg@gh.com'),
(13, 107, 'Rini  ', 'Kurian  ', 'Female  ', '1995-02-08', '9847298907 ', 'Thaivelikkakom  ', 'Bca,Mca  ', '1', '1', 'Alappuzha  ', 'photo1/1507569763IMG_20170317_120818.jpg', 0, 'rinikurian@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `user_id` int(11) NOT NULL,
  `us_id` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `mobno` int(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `country` varchar(20) NOT NULL,
  `state` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aregistration`
--
ALTER TABLE `aregistration`
  ADD PRIMARY KEY (`areg`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `art`
--
ALTER TABLE `art`
  ADD PRIMARY KEY (`art_id`);

--
-- Indexes for table `artcategory`
--
ALTER TABLE `artcategory`
  ADD PRIMARY KEY (`artcat_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`us_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `mycart`
--
ALTER TABLE `mycart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `uregistration`
--
ALTER TABLE `uregistration`
  ADD PRIMARY KEY (`ureg`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `aregistration`
--
ALTER TABLE `aregistration`
  MODIFY `areg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `art`
--
ALTER TABLE `art`
  MODIFY `art_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `artcategory`
--
ALTER TABLE `artcategory`
  MODIFY `artcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `con_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `us_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `mycart`
--
ALTER TABLE `mycart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `uregistration`
--
ALTER TABLE `uregistration`
  MODIFY `ureg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
