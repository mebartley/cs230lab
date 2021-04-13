-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 12, 2021 at 08:00 PM
-- Server version: 5.7.33-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `pid` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `descript` text NOT NULL,
  `picpath` varchar(80) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`pid`, `title`, `descript`, `picpath`, `upload_date`, `rating`) VALUES
(1, 'Elvis Presley', 'Elvis Presley is an American popular singer widely known as the â€œKing of Rock and Rollâ€ and one of rock music\'s dominant performers.', '../gallery/6074c6ab8ec0b1.12453506.jpg', '2021-04-12 18:16:11', NULL),
(2, 'Taylor Swift', 'Taylor Swift is a Grammy Award-winning American singer-songwriter who made a splash in the country music and has gone on to become one of the top acts in popular music.', '../gallery/6074c7189a7c24.61800613.jpg', '2021-04-12 18:18:00', NULL),
(3, 'I Prevail', 'I Prevail is an American metal core band formed in New Baltimore, Michigan. They  rose to popularity from releasing a metal cover of Taylor Swift\'s \"Blank Space\".', '../gallery/6074c910b50ec5.65835244.jpeg', '2021-04-12 18:26:24', NULL),
(4, 'Elton John', 'Elton John is a British singer, pianist and composer. He has found success on Broadway along with selling more than 300 million records. ', '../gallery/6074c974131f16.17528447.jpeg', '2021-04-12 18:28:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `pid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `profpic` varchar(50) NOT NULL DEFAULT '../images/default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`pid`, `fname`, `uname`, `profpic`) VALUES
(4, 'Morgan', 'mebartley', '../profiles/6074a1eb8449a3.18950379.jpg'),
(5, 'Harry', 'hstyles', '../profiles/6074a3495bf465.57803250.jpg'),
(7, 'Louis', 'ltomlinson', '../profiles/6074d8615f1562.43164107.jpg'),
(8, 'Liam', 'lpayne', '../profiles/6074db723e2df6.31523386.jpeg'),
(9, 'Zayn', 'zmalik', '../profiles/6074dbf5a6a1e0.49315899.jpg'),
(11, 'Niall', 'nihoran', '../profiles/6074db0196f922.05160701.png');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `revid` int(11) NOT NULL COMMENT 'id for each review',
  `itemid` int(11) NOT NULL COMMENT 'item being reviewed',
  `uname` varchar(80) NOT NULL COMMENT 'user reviewing item',
  `title` varchar(60) NOT NULL,
  `reviewtext` text NOT NULL,
  `revdate` datetime NOT NULL,
  `ratingnum` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'Is there at least 1 review'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`revid`, `itemid`, `uname`, `title`, `reviewtext`, `revdate`, `ratingnum`, `status`) VALUES
(2, 4, 'hstyles', 'Goodbye Yellow Brick Road - Album', 'Elton John is way better than I could explain. ', '2021-04-12 23:24:51', 5, 1),
(5, 1, 'hstyles', 'Back in Memphis - Album', 'A legend!', '2021-04-12 23:31:12', 5, 1),
(8, 1, 'ltomlinson', 'Back in Memphis - Album', 'Inspirational dude.', '2021-04-12 23:35:26', 4, 1),
(9, 3, 'ltomlinson', 'Trauma - Album', '\"Bow Down\" is so good!', '2021-04-12 23:37:07', 4, 1),
(10, 4, 'ltomlinson', 'Wonderful Crazy Night - Album', 'His early albums are better than his newer ones. ', '2021-04-12 23:39:36', 3, 1),
(11, 3, 'nihoran', 'Trauma - Album', 'They have a wide variety of sounds on this album. ', '2021-04-12 23:43:57', 5, 1),
(12, 2, 'nihoran', 'Evermore - Album', 'A lot was expected with this album and she delivered. \r\n', '2021-04-12 23:44:28', 5, 1),
(13, 1, 'lpayne', 'Blue Hawaii', 'Great vibes but not my style. ', '2021-04-12 23:45:41', 3, 1),
(14, 2, 'lpayne', 'Evermore - Album', 'She has worked hard and you can tell with this album. ', '2021-04-12 23:46:41', 4, 1),
(15, 3, 'zmalik', 'Trauma - Album', 'Not my favorite. ', '2021-04-12 23:47:43', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COMMENT='user database for signup and sign in ';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fname`, `lname`, `uname`, `password`, `email`) VALUES
(4, 'Morgan', 'Bartley', 'mebartley', '$2y$10$qTfonpKzfOUI.OjdLLWKw.UCYZ8r3eFl35dIqhawUX0ugtwt/Uw5C', 'mebartley@mix.wvu.edu'),
(5, 'Harry', 'Styles', 'hstyles', '$2y$10$ursETuVvNBb15TfZe4Xnt.lNY/CmGhByGl2htr2fRaVBEnLTGtnfq', 'hstyles@gmail.com'),
(6, 'Niall', 'Horan', 'nhoran', '$2y$10$WLYmAHcV.8sTco83nc8SbufTCS5YqHMhporBmaia0ZbZSNujkJm1O', 'nhoran@gmail.com'),
(7, 'Louis', 'Tomlinson', 'ltomlinson', '$2y$10$/dzAdhdbafg9k4NYykCC0OEP9mu6xR2EEB1IpssNCzAy6arMLI0li', 'ltomlinson@gmail.com'),
(8, 'Liam', 'Payne', 'lpayne', '$2y$10$EI2diZ3ubPYZuOXRKTUiPe9d3mxNyp2DOKONRe/UERFfv.msFFY16', 'lpayne@gmail.com'),
(9, 'Zayn', 'Malik', 'zmalik', '$2y$10$PqLJTP9eQeu3PZ3wdObyTurpQ1EZiViPstUIU0wRVuL05TTTYvkam', 'zmalik@gmail.com'),
(10, 'fefh', 'sdghk', 'skedfghbvk', '$2y$10$KbE0q8PqsRER6W/spcTbiOx45B48r5TGAG/nhjIWLUrPJ/UU2s4uq', 'SJDRUHVGK@SJEDKL.COM'),
(11, 'Niall', 'Horan', 'nihoran', '$2y$10$yETfyAubKAzwbw1di/UEx.rZnXQP/zTNMFCHfPQz1CnOS0snYLafK', 'nihoran@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`revid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `revid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id for each review', AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
