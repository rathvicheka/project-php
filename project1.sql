-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2024 at 10:49 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about_us`
--

CREATE TABLE `tbl_about_us` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`id`, `username`, `email`, `telephone`, `address`, `message`, `created_at`) VALUES
(1, 'ka', 'ka@gmail.com', '098765434', 'pp', 'good job bro', '0000-00-00'),
(3, 'kaka', 'boy@gmail.com', '123456789', 'SR', 'good job ', '0000-00-00'),
(4, 'vicheka', 'e@gmail.com', '092288356', 'KPS', 'very good job', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_follow`
--

CREATE TABLE `tbl_follow` (
  `id` int(11) NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `label` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logo`
--

CREATE TABLE `tbl_logo` (
  `id` int(11) NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_logo`
--

INSERT INTO `tbl_logo` (`id`, `thumbnail`, `status`, `created_at`) VALUES
(4, '49834_download.jpg', 'Footer', '0000-00-00'),
(6, '90873_OIP.jfif', 'Footer', '0000-00-00'),
(7, '3461_OIP (2).jpg', 'Header', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id` int(11) NOT NULL,
  `news_type` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `viewer` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`id`, `news_type`, `category`, `banner`, `thumbnail`, `description`, `viewer`, `title`, `user_id`, `created_at`) VALUES
(1, 'Social', 'International', '64632-OIP.jpg', '6650-OIP.jpg', 'Your Guide to Rihanna’s Best Hairstyles', 3, 'Top 10 Worst Hollywood Celebrities Hated By Millions ', 6, '0000-00-00'),
(3, 'Entertainment', 'International', '36204-OIP.jpg', '76506-OIP.jpg', 'zeii sart ', 2, 'kaka', 1, '0000-00-00'),
(5, 'Sport', 'International', '86868-R (1).jpg', '63751-R (1).jpg', 'Sports Psychology Jobs: Help Athletes Break Through | Udemy Blog\r\n', 0, 'sports', 1, '0000-00-00'),
(6, 'Social', 'National', '35309-1337279.jpeg', '80438-87318.jpg', 'IT', 9, 'girl', 1, '0000-00-00'),
(7, 'Social', 'International', '22223-OIP (2).jpg', '84379-OIP (2).jpg', 'alot of people use', 4, 'facebook', 1, '0000-00-00'),
(8, 'Sport', 'National', '80828-download (1).jpg', '45437-download (1).jpg', 'Football Wallpapers HD - Wallpaper Cave', 0, 'football', 1, '0000-00-00'),
(9, 'Social', 'National', '71809-exercise-sprint-run-man-track.jpg', '39422-exercise-sprint-run-man-track.jpg', 'Benefits of Anaerobic Exercise - HealthStatus', 1, 'sport', 1, '0000-00-00'),
(10, 'Social', 'International', '27000-download (2).jpg', '75622-download (2).jpg', 'Places of Worship – Angkor Wat | Review of Religions', 0, 'Angkor wat', 1, '0000-00-00'),
(12, 'Entertainment', 'National', '26542-download (3).jpg', '89827-download (3).jpg', 'Are you looking to get an idea of where the cryptocurrency Oggy Inu (OGGY) might be headed in terms of its price over the next 10 to 15 years? With cryptocurrency markets growing increasingly volatile, predicting OGGY’s future price is no easy task.', 0, 'oggy', 1, '0000-00-00'),
(13, 'Entertainment', 'International', '72047-OIP (3).jpg', '84531-OIP (3).jpg', '5 Extremely Affordable 2019 International Music Festivals You Need ', 0, 'music', 1, '0000-00-00'),
(14, 'Entertainment', 'National', '79028-download (4).jpg', '30126-download (4).jpg', 'Newshive Sports – Sports Demo for Newshive', 0, 'sport', 1, '0000-00-00'),
(15, 'Sport', 'International', '28064-field-sports.jpg', '33822-field-sports.jpg', 'Sports Performance Services - HSS Sports Medicine', 0, 'sport', 1, '0000-00-00'),
(16, 'Entertainment', 'International', '18222-food.jpg', '99385-R.jpg', 'chnhanh hhh', 0, 'food', 1, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `thumbnail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `email`, `password`, `thumbnail`) VALUES
(1, 'kaka', 'ka@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '160524-093242_download.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_about_us`
--
ALTER TABLE `tbl_about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_follow`
--
ALTER TABLE `tbl_follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_about_us`
--
ALTER TABLE `tbl_about_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_follow`
--
ALTER TABLE `tbl_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
