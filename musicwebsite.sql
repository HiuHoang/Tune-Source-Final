-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2022 at 03:30 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musicwebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `ArtistID` int(11) NOT NULL,
  `ArtistName` varchar(50) DEFAULT NULL,
  `ArtistImage` varchar(200) DEFAULT NULL,
  `ArtistDescription` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`ArtistID`, `ArtistName`, `ArtistImage`, `ArtistDescription`) VALUES
(6, 'Dhruv', 'dhruv.jpg', 'Dhruv Visvanath is a Singer-Songwriter, producer and accomplished acoustic guitarist from New Delhi, India.'),
(7, 'Jawsh', 'Nude Brown Line Illustration Makeup Studio Logo.png', ''),
(8, 'Wham', 'wham.jpg', ''),
(9, 'Masew', 'exo.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `CartID` int(11) NOT NULL,
  `SongID` int(11) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`CartID`, `SongID`, `UserID`) VALUES
(33, 87, 132);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `GenreID` int(11) NOT NULL,
  `GenreName` varchar(30) NOT NULL,
  `GenreDescription` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`GenreID`, `GenreName`, `GenreDescription`) VALUES
(1, 'Pop', 'Pop is a genre of popular music that originated in its modern form during the mid-1950s in the United States and the United Kingdom. The terms popular music and pop music are often used interchangeably, although the former describes all music that is popular and includes many disparate styles.'),
(4, 'Jazz', 'Jazz is a music genre that originated in the African-American communities of New Orleans, Louisiana, United States, in the late 19th and early 20th centuries, with its roots in blues and ragtime. ... Jazz is characterized by swing and blue notes, complex chords, call and response vocals, polyrhythms and improvisation.'),
(5, 'Rap', 'Hip hop music or hip-hop music, also known as rap music, is a genre of popular music developed in the United States by inner-city African Americans'),
(7, 'K-pop', 'K-pop (RR: keipap), short for Korean popular music, is a genre of music originating in South Korea as part of South Korean culture. It is influenced by styles and genres from around the world, such as pop, experimental, rock, jazz, gospel, hip hop, R&B, reggae, electronic dance, folk, country, and classical on top of its traditional Korean music roots.');

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

CREATE TABLE `song` (
  `SongID` int(11) NOT NULL,
  `SongName` varchar(30) NOT NULL,
  `Price` int(11) NOT NULL,
  `SongImage` varchar(200) DEFAULT NULL,
  `SongAudio` varchar(200) DEFAULT NULL,
  `SongLyric` text DEFAULT NULL,
  `SongDescription` text DEFAULT NULL,
  `GenreID` int(11) NOT NULL,
  `ArtistID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`SongID`, `SongName`, `Price`, `SongImage`, `SongAudio`, `SongLyric`, `SongDescription`, `GenreID`, `ArtistID`) VALUES
(85, 'Double Take', 9, 'dhruv.jpg', 'double-take-dhruv.mp3', '', '', 1, 6),
(86, 'Savage Love', 19, 'download.png', 'Savage-Love-Laxed-Siren-Beat-BTS-Remix-Jawsh-685-Jason-Derulo-BTS.mp3', '', '', 1, 7),
(87, 'Last Christmas', 29, 'last-christmas-soundtrack-ost-cd_1e1fadd703964b359a401dbe46bd838d_master.jpg', 'Last-Christmas-Cascada.mp3', '', '', 1, 8),
(88, 'Infinity', 39, 'infinity.jpg', 'double-take-dhruv.mp3', '', '', 4, 6),
(89, 'Titile', 39, 'download.jpg', 'Last-Christmas-Cascada.mp3', '', '', 5, 6),
(90, 'Hello', 79, 'download (1).jpg', 'Last-Christmas-Cascada.mp3', '', '', 7, 6),
(91, 'Mood', 19, '1606121782753_500.jpg', 'Savage-Love-Laxed-Siren-Beat-BTS-Remix-Jawsh-685-Jason-Derulo-BTS.mp3', '', '', 4, 7),
(92, 'Happy', 79, 'images.jpg', 'Last-Christmas-Cascada.mp3', '', '', 5, 7),
(93, 'Ed sheeran', 79, 'MV5BNWU3N2ZkODAtMTQ0MS00ODA3LWE4MWQtOWJiNjllZWU1NzdhXkEyXkFqcGdeQXVyNDQ5MDYzMTk@._V1_.jpg', 'Last-Christmas-Cascada.mp3', '', '', 7, 7),
(94, 'root', 99, 'images.jpg', 'Last-Christmas-Cascada.mp3', '', '', 4, 8),
(95, 'My Love', 69, '1518078818653_640.jpg', 'Savage-Love-Laxed-Siren-Beat-BTS-Remix-Jawsh-685-Jason-Derulo-BTS.mp3', '', '', 5, 8),
(96, 'You are my love', 59, '159931206-146740083973418-311428377655465623-n-26b07c2e633db337975353b1b936ff2c-0ab6bbd4c9ec73c4b19fc7b17ad40e49-1637656857352962667529.jpeg', 'double-take-dhruv.mp3', '', '', 7, 8),
(97, 'XOXO', 49, 'download (2).jpg', 'Savage-Love-Laxed-Siren-Beat-BTS-Remix-Jawsh-685-Jason-Derulo-BTS.mp3', '', '', 1, 9),
(98, 'My Lady', 39, 'images (1).jpg', 'Last-Christmas-Cascada.mp3', '', '', 4, 9);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(30) NOT NULL,
  `UserPassword` int(11) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `UserImage` varchar(200) DEFAULT 'Colorful Simple Aesthetic Album Cover.png',
  `CardNumber` int(11) DEFAULT NULL,
  `PhoneNumber` int(11) NOT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `IDNumber` int(12) DEFAULT NULL,
  `Role` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `UserName`, `UserPassword`, `FullName`, `UserImage`, `CardNumber`, `PhoneNumber`, `Address`, `Email`, `IDNumber`, `Role`) VALUES
(130, 'root', 123, 'test', 'nguyenlamkhanh.jpg', 123, 0, 'HaNoi', 'test@gmail.com', 123, 'admin'),
(131, 'user1', 123, 'hieu hoang', 'Colorful Simple Aesthetic Album Cover.png', 2147483647, 2147483647, 'Ha Noi', 'hieuhdbhaf200117@fpt.edu.vn', 423, NULL),
(132, 'user2', 123, 'Hoang Dinh Hieu', 'nguyendongkien.jpg', 1223422, 280384, 'Ha Noi', 'hieuhoang2@gmail.com', 20020010, NULL),
(136, 'user3', 123, 'Kyn Hoang', NULL, NULL, 123, 'Ha Noi', 'hieuhdbhaf200117@fpt.edu.vn', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`ArtistID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`CartID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `SongID` (`SongID`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`GenreID`);

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`SongID`),
  ADD KEY `GenreID` (`GenreID`),
  ADD KEY `ArtistID` (`ArtistID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `UserName` (`UserName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `ArtistID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `CartID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `GenreID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `song`
--
ALTER TABLE `song`
  MODIFY `SongID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`SongID`) REFERENCES `song` (`SongID`);

--
-- Constraints for table `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `song_ibfk_1` FOREIGN KEY (`GenreID`) REFERENCES `genre` (`GenreID`),
  ADD CONSTRAINT `song_ibfk_2` FOREIGN KEY (`ArtistID`) REFERENCES `artist` (`ArtistID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
