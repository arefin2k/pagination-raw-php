-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2021 at 03:36 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pagination_raw_php`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_content` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_title`, `blog_content`) VALUES
(1, 'Blog Title 1', 'Blog title 1 content here. Blog title 1 content here. Blog title 1 content here. Blog title 1 content here. Blog title 1 content here. '),
(2, 'Blog Title 2', 'Blog title 2 content here. Blog title 2 content here. Blog title 2 content here. Blog title 2 content here. Blog title 2 content here. '),
(3, 'Blog Title 3', 'Blog title 3 content here. Blog title 3 content here. Blog title 3 content here. Blog title 3 content here. Blog title 3 content here. '),
(4, 'Blog Title 4', 'Blog title 4 content here. Blog title 4 content here. Blog title 4 content here. Blog title 4 content here. Blog title 4 content here. '),
(5, 'Blog Title 5', 'Blog title 5 content here. Blog title 5 content here. Blog title 5 content here. Blog title 5 content here. Blog title 5 content here. '),
(6, 'Blog Title 6', 'Blog title 6 content here. Blog title 6 content here. Blog title 6 content here. Blog title 6 content here. Blog title 6 content here. '),
(7, 'Blog Title 7', 'Blog title 7 content here. Blog title 7 content here. Blog title 7 content here. Blog title 7 content here. Blog title 7 content here. ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
