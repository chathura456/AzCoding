-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2021 at 08:08 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `azcoding`
--
CREATE DATABASE IF NOT EXISTS `azcoding` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `azcoding`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Full_Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Email`, `Password`, `Full_Name`) VALUES
(1, 'elias@gmail.com', '1234', 'Elias'),
(2, 'john@gmail.com', '1234', 'John'),
(3, 'sam@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'sam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `comment-reply-system`
--
CREATE DATABASE IF NOT EXISTS `comment-reply-system` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `comment-reply-system`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2021-07-11 23:14:54', '2021-07-11 23:14:54'),
(2, 1, 1, 'dfghj dfghjkgf jhgfds', '2021-07-11 23:21:29', '2021-07-11 23:21:29'),
(3, 1, 1, 'sdfgh kjhgfds jhgfdfg', '2021-07-12 17:30:42', '2021-07-12 17:30:42'),
(4, 1, 1, 'sdfgh kjhgfd kjhgn jvcn bvcx', '2021-07-12 17:33:19', '2021-07-12 17:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Post Title', 'dfgh jhgfd', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2021-07-11 23:10:59', '2021-07-11 23:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `comment_id`, `body`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '2021-07-11 23:15:55', '2021-07-11 23:15:55'),
(3, 1, 2, 'dgh yhjnb sdfbvcx ert', '2021-07-11 23:21:48', '2021-07-11 23:21:48'),
(4, 1, 2, '', '2021-07-11 23:21:56', '2021-07-11 23:21:56'),
(5, 1, 4, 'fghjk kjhvc', '2021-07-12 17:33:29', '2021-07-12 17:33:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'sam', 'sam@abc.lk', '123456', '2021-07-11 23:12:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `comment_id` (`comment_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `replies_ibfk_2` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Database: `comment-reply-system2`
--
CREATE DATABASE IF NOT EXISTS `comment-reply-system2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `comment-reply-system2`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `body` text NOT NULL,
  `category` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `body`, `category`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 0, '2021-07-13 16:44:27', '2021-07-13 16:44:27'),
(2, 1, 1, 'dfghj dfghjkgf jhgfds', 0, '2021-07-13 16:44:31', '2021-07-13 16:44:31'),
(3, 1, 1, 'fghj dfghjhg', 0, '2021-07-13 16:44:35', '2021-07-13 16:44:35'),
(4, 1, 2, 'fghjkl lkjhgf jhgf', 0, '2021-07-13 16:44:38', '2021-07-13 16:44:38'),
(5, 1, 4, 'asdfgh gfds hgfd', 0, '2021-07-13 16:44:44', '2021-07-13 16:44:44'),
(6, 1, 4, 'sdfghj kjhgfds jhgfd', 0, '2021-07-13 16:45:26', '2021-07-13 16:45:26'),
(7, 1, 4, 'sdfgh jhgfds jhgfd ghgf', 0, '2021-07-13 16:44:56', '2021-07-13 16:44:56'),
(8, 1, 4, 'ghjk nbfd jvbn', 0, '2021-07-13 16:45:05', '2021-07-13 16:45:05'),
(9, 1, 4, 'sdfghj jhgfd jhgf', 0, '2021-07-13 16:45:02', '2021-07-13 16:45:02'),
(10, 1, 4, 'fghjkl', 0, '2021-07-13 16:45:08', '2021-07-13 16:45:08'),
(11, 1, 4, 'sdfgh hgfd hgf', 0, '2021-07-13 16:45:12', '2021-07-13 16:45:12'),
(12, 1, 4, 'sdfgh jhgfd jhgf', 0, '2021-07-13 16:45:15', '2021-07-13 16:45:15'),
(13, 1, 4, 'sdgh kjhgfd kjhgf', 3, '2021-07-13 16:45:18', '2021-07-13 16:45:18'),
(14, 1, 4, 'dfghj kjhgfd', 2, '2021-07-13 16:45:20', '2021-07-13 16:45:20'),
(15, 1, 4, 'sdfgh kjhgfds jhgfds', 1, '2021-07-13 16:45:22', '2021-07-13 16:45:22'),
(33, 1, 5, 'sdbn mnbvc', 0, '2021-07-13 19:57:30', '2021-07-13 19:57:30'),
(34, 1, 5, 'dfghj jhgfds', 0, '2021-07-13 19:58:22', '2021-07-13 19:58:22'),
(35, 1, 5, 'dfghj jhgfds', 0, '2021-07-13 20:00:32', '2021-07-13 20:00:32'),
(36, 1, 5, 'sdfg hgfds', 0, '2021-07-13 20:01:43', '2021-07-13 20:01:43'),
(37, 1, 5, 'dfgh hgfds', 0, '2021-07-13 20:03:07', '2021-07-13 20:03:07'),
(39, 1, 5, 'vbn jhgfd', 0, '2021-07-13 20:05:33', '2021-07-13 20:05:33'),
(41, 1, 5, 'cvbn hgfd', 0, '2021-07-13 20:05:55', '2021-07-13 20:05:55'),
(42, 1, 5, 'cvb ', 0, '2021-07-13 20:06:03', '2021-07-13 20:06:03'),
(43, 1, 5, 'dfghm jhgfd', 0, '2021-07-13 20:16:05', '2021-07-13 20:16:05'),
(44, 1, 5, 'sdfghj kjhgfds', 0, '2021-07-13 20:27:41', '2021-07-13 20:27:41'),
(45, 1, 5, 'dfghj jhgfd', 3, '2021-07-13 20:45:21', '2021-07-13 20:45:21'),
(46, 1, 5, 'dfn jhgfd', 0, '2021-07-13 20:53:33', '2021-07-13 20:53:33'),
(47, 1, 5, 'dfh jhgfd', 0, '2021-07-13 20:53:42', '2021-07-13 20:53:42'),
(48, 1, 5, 'dfghj', 0, '2021-07-13 21:04:59', '2021-07-13 21:04:59'),
(49, 1, 5, 'dfgh hgfds', 1, '2021-07-13 21:07:48', '2021-07-13 21:07:48'),
(50, 1, 5, 'fghj jhgfds', 2, '2021-07-13 21:08:15', '2021-07-13 21:08:15'),
(51, 1, 5, 'cvbnm fd', 3, '2021-07-13 21:09:02', '2021-07-13 21:09:02'),
(52, 1, 5, 'sdfghj jhgfdsa', 3, '2021-07-13 21:09:30', '2021-07-13 21:09:30'),
(53, 1, 5, 'dfghj kjhgfds', 2, '2021-07-13 21:13:13', '2021-07-13 21:13:13'),
(54, 1, 5, 'fghjk jhgf', 1, '2021-07-13 21:15:01', '2021-07-13 21:15:01'),
(55, 1, 5, 'asdf gfds', 3, '2021-07-14 12:48:46', '2021-07-14 12:48:46'),
(56, 1, 5, 'fghj jhgfds', 1, '2021-07-14 13:19:27', '2021-07-14 13:19:27'),
(57, 1, 5, 'sdfghjk jhgfd', 1, '2021-07-14 13:24:21', '2021-07-14 13:24:21'),
(58, 1, 5, 'dfgh hgfds', 0, '2021-07-14 13:51:44', '2021-07-14 13:51:44'),
(59, 1, 5, 'dfgh hgfd', 1, '2021-07-14 13:53:38', '2021-07-14 13:53:38'),
(60, 1, 5, 'sdfgh jhgfd', 1, '2021-07-14 15:14:06', '2021-07-14 15:14:06'),
(61, 1, 5, 'dfgh kjhgfd khf', 3, '2021-07-14 16:06:41', '2021-07-14 16:06:41'),
(62, 1, 5, 'dfhm,', 2, '2021-07-14 16:26:44', '2021-07-14 16:26:44'),
(63, 1, 5, 'sdfghj jhgfds', 2, '2021-07-14 16:29:26', '2021-07-14 16:29:26'),
(64, 1, 5, 'dfgh hgfds', 1, '2021-07-14 17:06:02', '2021-07-14 17:06:02'),
(65, 1, 4, 'sdfgh jhgfd', 0, '2021-07-14 17:22:43', '2021-07-14 17:22:43'),
(66, 1, 4, 'dfgh jhgfds', 3, '2021-07-14 17:34:39', '2021-07-14 17:34:39'),
(67, 1, 4, 'fhj kjhgfd', 1, '2021-07-14 17:36:25', '2021-07-14 17:36:25'),
(68, 1, 4, 'sdfgh jhg', 2, '2021-07-14 17:55:18', '2021-07-14 17:55:18'),
(69, 1, 4, 'dfghj hgfds', 1, '2021-07-14 19:01:15', '2021-07-14 19:01:15'),
(70, 1, 4, 'fghjk', 1, '2021-07-14 20:43:01', '2021-07-14 20:43:01'),
(71, 1, 4, 'ertgyu', 2, '2021-07-14 23:43:06', '2021-07-14 23:43:06'),
(72, 1, 4, 'ertjhgf', 3, '2021-07-14 23:43:20', '2021-07-14 23:43:20'),
(73, 1, 4, 'rtyuk tdsdfg', 3, '2021-07-14 23:50:00', '2021-07-14 23:50:00'),
(74, 1, 4, 'wftgh jhgfds', 3, '2021-07-15 12:32:57', '2021-07-15 12:32:57'),
(75, 1, 4, 'fghjk jhgx', 2, '2021-07-15 12:37:00', '2021-07-15 12:37:00'),
(76, 1, 4, 'dfghj jhgfd', 2, '2021-07-15 12:46:48', '2021-07-15 12:46:48'),
(77, 1, 4, 'dfnm kjhgfds', 4, '2021-07-15 13:09:09', '2021-07-15 13:09:09'),
(78, 1, 4, 'dfghj jhgfds', 3, '2021-07-15 13:09:38', '2021-07-15 13:09:38'),
(79, 1, 4, 'xcvbn jgfd', 1, '2021-07-15 13:14:01', '2021-07-15 13:14:01'),
(80, 1, 4, 'sdfgh jhgfds', 3, '2021-07-15 13:18:04', '2021-07-15 13:18:04'),
(81, 1, 4, 'dfghjk njhgfds', 3, '2021-07-15 13:23:35', '2021-07-15 13:23:35'),
(82, 1, 4, 'bnm lkjhg', 3, '2021-07-15 13:24:20', '2021-07-15 13:24:20'),
(83, 1, 4, 'sdfgh jhgfd', 2, '2021-07-15 13:32:23', '2021-07-15 13:32:23'),
(84, 1, 4, 'dfg hgfd', 3, '2021-07-15 13:33:01', '2021-07-15 13:33:01'),
(85, 1, 4, 'ghj jhgfd', 1, '2021-07-15 14:51:05', '2021-07-15 14:51:05'),
(86, 1, 4, 'wfghj jhgfd', 2, '2021-07-15 14:54:30', '2021-07-15 14:54:30'),
(87, 1, 4, 'fgh jhgf', 1, '2021-07-15 14:54:49', '2021-07-15 14:54:49'),
(88, 1, 4, 'dfn jgf', 3, '2021-07-15 14:54:57', '2021-07-15 14:54:57'),
(89, 1, 4, 'fgh jhgf', 2, '2021-07-15 14:55:24', '2021-07-15 14:55:24'),
(90, 1, 4, 'dfgh jhgfd', 2, '2021-07-15 14:56:27', '2021-07-15 14:56:27'),
(91, 1, 4, 'dfgh jhgf', 3, '2021-07-15 14:56:39', '2021-07-15 14:56:39'),
(92, 1, 4, 'dfgh jhgfd', 4, '2021-07-15 14:56:51', '2021-07-15 14:56:51'),
(93, 1, 4, 'dfg hgfd', 2, '2021-07-15 14:57:24', '2021-07-15 14:57:24'),
(94, 1, 4, 'fghj jhgf', 1, '2021-07-15 14:57:42', '2021-07-15 14:57:42'),
(95, 1, 4, 'fghj jhgf', 3, '2021-07-15 14:58:12', '2021-07-15 14:58:12'),
(96, 1, 4, 'gh jhg', 1, '2021-07-15 14:58:26', '2021-07-15 14:58:26'),
(97, 1, 4, 'fgh hgfd', 2, '2021-07-15 15:01:21', '2021-07-15 15:01:21'),
(98, 1, 4, 'fghj hgfd', 2, '2021-07-15 15:03:06', '2021-07-15 15:03:06'),
(99, 1, 4, 'sdfgh gfdsa', 4, '2021-07-15 15:03:29', '2021-07-15 15:03:29'),
(100, 1, 4, 'ghj jhgfd', 1, '2021-07-15 15:06:44', '2021-07-15 15:06:44'),
(101, 1, 4, 'nm ijhgcxfghjk', 2, '2021-07-15 15:08:11', '2021-07-15 15:08:11'),
(102, 1, 4, 'hi', 3, '2021-07-15 15:09:01', '2021-07-15 15:09:01'),
(103, 1, 4, 'dfghj jhgfd', 2, '2021-07-15 15:20:40', '2021-07-15 15:20:40'),
(104, 1, 4, 'sdfgh jhgfd', 1, '2021-07-15 15:27:35', '2021-07-15 15:27:35'),
(105, 1, 4, 'sdfgh jhgfd', 2, '2021-07-15 15:27:57', '2021-07-15 15:27:57'),
(106, 1, 4, 'gbhnm mnbvc', 3, '2021-07-15 15:28:32', '2021-07-15 15:28:32'),
(107, 1, 4, 'dfgh jhgfd', 1, '2021-07-15 15:31:25', '2021-07-15 15:31:25'),
(108, 1, 4, 'dfghj hgfds', 3, '2021-07-15 15:32:06', '2021-07-15 15:32:06'),
(109, 1, 4, 'sdfgh jhgfd', 2, '2021-07-15 15:32:44', '2021-07-15 15:32:44'),
(110, 1, 4, 'dfgh jhgfd', 3, '2021-07-15 15:34:15', '2021-07-15 15:34:15'),
(111, 1, 4, 'dfgh jhgfd', 3, '2021-07-15 15:40:52', '2021-07-15 15:40:52'),
(112, 1, 4, 'xcvbnm hgfd', 1, '2021-07-15 15:41:58', '2021-07-15 15:41:58'),
(113, 1, 4, 'fg jhgfds', 1, '2021-07-15 15:43:00', '2021-07-15 15:43:00'),
(114, 1, 4, 'dfghj,', 2, '2021-07-15 15:43:55', '2021-07-15 15:43:55'),
(115, 1, 4, 'fghjhgf jhgf', 2, '2021-07-15 15:56:42', '2021-07-15 15:56:42'),
(116, 1, 4, 'fgh jhgfd', 1, '2021-07-15 15:56:52', '2021-07-15 15:56:52'),
(117, 1, 4, 'fghj', 1, '2021-07-15 15:58:27', '2021-07-15 15:58:27'),
(118, 1, 4, 'fgn', 2, '2021-07-15 15:59:08', '2021-07-15 15:59:08'),
(119, 1, 4, 'ghnm', 2, '2021-07-15 15:59:54', '2021-07-15 15:59:54'),
(120, 1, 4, 'dfbn jhgf', 2, '2021-07-15 16:04:12', '2021-07-15 16:04:12'),
(121, 1, 4, 'sdfgh jhgfd', 2, '2021-07-15 16:05:20', '2021-07-15 16:05:20'),
(122, 1, 4, 'dfgh jhgfd', 0, '2021-07-15 16:06:13', '2021-07-15 16:06:13'),
(123, 1, 4, 'bn jhgfd', 2, '2021-07-15 16:13:27', '2021-07-15 16:13:27'),
(124, 1, 4, 'fgbnm jhgf', 2, '2021-07-15 16:14:25', '2021-07-15 16:14:25'),
(125, 1, 4, 'cvbn jhgf', 3, '2021-07-15 16:15:11', '2021-07-15 16:15:11'),
(126, 1, 4, 'cvbn jhgf', 2, '2021-07-15 16:15:37', '2021-07-15 16:15:37'),
(127, 1, 4, 'dfg hgfd', 2, '2021-07-15 16:15:58', '2021-07-15 16:15:58'),
(128, 1, 4, 'fgbn jhgfd', 1, '2021-07-15 17:00:55', '2021-07-15 17:00:55'),
(129, 1, 4, 'cvbn jhgfds', 2, '2021-07-15 21:38:29', '2021-07-15 21:38:29'),
(130, 1, 4, 'sdfgh jhgfd', 3, '2021-07-15 21:39:38', '2021-07-15 21:39:38'),
(131, 1, 4, 'cvbn jhg', 3, '2021-07-15 21:41:23', '2021-07-15 21:41:23'),
(132, 1, 4, 'sdfgh hgfd', 1, '2021-07-15 21:41:34', '2021-07-15 21:41:34'),
(133, 1, 4, 'cvb hgfd jhgfd', 3, '2021-07-15 21:43:38', '2021-07-15 21:43:38');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`) VALUES
(1, 'HTML', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
(2, 'Java', 'lorem ipmus'),
(3, 'CSS', 'dfghj'),
(4, 'C Programming', '');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `comment_id`, `body`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '2021-07-11 23:15:55', '2021-07-11 23:15:55'),
(3, 1, 2, 'dgh yhjnb sdfbvcx ert', '2021-07-11 23:21:48', '2021-07-11 23:21:48'),
(4, 1, 2, '', '2021-07-11 23:21:56', '2021-07-11 23:21:56'),
(5, 4, 6, 'sdfgfds dsdfgh sdfghjhgf', '2021-07-12 21:06:25', '2021-07-12 21:06:25'),
(7, 5, 36, 'sdfgh jhgfd', '2021-07-13 20:02:00', '2021-07-13 20:02:00'),
(8, 5, 61, 'asdfgh kjhgfd', '2021-07-14 16:06:57', '2021-07-14 16:06:57'),
(9, 4, 71, 'sdfghj jhgfd', '2021-07-14 23:54:32', '2021-07-14 23:54:32'),
(10, 4, 133, 'sdf jhgfdsa', '2021-07-15 22:15:00', '2021-07-15 22:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'sam walker', 'sam@abc.lk', '123456'),
(2, 'Arun', 'Arun@123.lk', '123456'),
(3, 'Usernew', 'cde@gmail.lk', '81dc9bdb52d04dc20036dbd8313ed055'),
(4, 'User1', 'user1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(5, 'user2', 'user2@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `comments_ibfk_2` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `comment_id` (`comment_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `replies_ibfk_2` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Database: `comment-reply-system3`
--
CREATE DATABASE IF NOT EXISTS `comment-reply-system3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `comment-reply-system3`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `category` int(11) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `category`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'What is the key difference between HTML Elements and Tags?', '2021-07-15 23:04:29', '2021-07-15 23:04:29'),
(3, 3, 1, 1, 'If you want to display some HTML data in a table in tabular format, which HTML tags will you use?', '2021-07-15 23:08:57', '2021-07-15 23:08:57'),
(4, 3, 1, 2, 'How to include CSS in the webpage?', '2021-07-15 23:10:48', '2021-07-15 23:10:48'),
(5, 3, 1, 2, 'What are the limitations of CSS?', '2021-07-15 23:11:37', '2021-07-15 23:11:37'),
(6, 4, 1, 3, 'What are wrapper classes in Java?', '2021-07-16 14:16:01', '2021-07-16 14:16:01'),
(7, 5, 1, 4, 'What is C Programming Language?', '2021-07-16 15:21:55', '2021-07-16 15:21:55'),
(8, 6, 1, 4, ' What is the difference between ++a and a++', '2021-07-16 15:26:35', '2021-07-16 15:26:35'),
(9, 6, 1, 1, 'How to create a hyperlink in HTML?', '2021-07-16 15:27:33', '2021-07-16 15:27:33'),
(10, 6, 1, 3, 'Explain JDK, JRE and JVM?', '2021-07-16 15:29:32', '2021-07-16 15:29:32'),
(11, 6, 1, 2, 'What are the advantages of using CSS?', '2021-07-16 15:31:06', '2021-07-16 15:31:06'),
(12, 7, 1, 3, 'Why Java is platform independent?', '2021-07-16 15:38:26', '2021-07-16 15:38:26'),
(13, 7, 1, 1, 'How many types of heading does an HTML contain?', '2021-07-16 15:41:24', '2021-07-16 15:41:24');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`) VALUES
(1, 'HTML'),
(2, 'CSS'),
(3, 'JAVA'),
(4, 'C Programming');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'Sam Walker', 'sam@abc.lk', '123456', '2021-07-15 22:59:39'),
(2, 'Shehan', 'user3@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2021-07-15 23:01:09'),
(3, 'Kavinda', 'user1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2021-07-15 23:07:52'),
(4, 'Madhushan', 'madu@123.lk', '81dc9bdb52d04dc20036dbd8313ed055', '2021-07-16 14:15:18'),
(5, 'Naveen', 'navven@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2021-07-16 15:20:57'),
(6, 'Chamath', 'chamath@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2021-07-16 15:24:51'),
(7, 'Yohan', 'yohan@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2021-07-16 15:37:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `comment_id` (`comment_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `replies_ibfk_2` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Database: `forum_database`
--
CREATE DATABASE IF NOT EXISTS `forum_database` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `forum_database`;

-- --------------------------------------------------------

--
-- Table structure for table `customerinfo`
--

CREATE TABLE `customerinfo` (
  `CustomerID` bigint(20) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Email_address` varchar(255) NOT NULL,
  `Contact_no` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Birthdate` varchar(255) NOT NULL,
  `Occupation` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL DEFAULT 'Active',
  `DateRegistered` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL DEFAULT 'New Customer'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerinfo`
--

INSERT INTO `customerinfo` (`CustomerID`, `Name`, `Gender`, `Email_address`, `Contact_no`, `Username`, `Password`, `Address`, `Birthdate`, `Occupation`, `Status`, `DateRegistered`, `Type`) VALUES
(21, 'Mascarenas, Matthew  Cruzado', 'Male', 'mjohnmatthews38@gmail.com', '09216912596', 'matteo', 'matteo', 'Roque St., N/A, N/A, Marinduque', '1995-09-21', 'N/A', 'Active', '2016-06-02', 'New Customer'),
(22, 'den, harry  abcd', 'Male', 'asdada@asd.com', '85455555550', 'harry', 'pass', 'esob, easds, sadasd, adasd', '1989-02-01', 'Engineer', 'Active', '2019-02-25', 'New Customer');

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
  `ForumID` bigint(20) NOT NULL,
  `Date_posted` date NOT NULL,
  `CustomerID` bigint(20) NOT NULL,
  `Contents` varchar(255) NOT NULL,
  `Files` varchar(255) NOT NULL DEFAULT 'No content'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`ForumID`, `Date_posted`, `CustomerID`, `Contents`, `Files`) VALUES
(1, '2016-06-02', 21, 'Sample Flash animation. I am not the owner of this animation.', 'Animated Background by OmZool.swf'),
(2, '2016-06-02', 21, 'Screenshots of the system', 'LINKS OF SOURCE CODE AND PROGRAM.pdf'),
(3, '2019-02-25', 22, 'demo message', 'No content');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customerinfo`
--
ALTER TABLE `customerinfo`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`ForumID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customerinfo`
--
ALTER TABLE `customerinfo`
  MODIFY `CustomerID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `ForumID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `loginregister`
--
CREATE DATABASE IF NOT EXISTS `loginregister` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `loginregister`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `email`) VALUES
(0, 'chathura', 'user', '$2y$10$8kMQtWI9KiP3Bb3CtmCxK.lkXcire8/JnsXR8804Evzgrrw9CLMfy', 'chathuracde@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"true\",\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'MyDB', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"comments\",\"posts\",\"replies\",\"users\"],\"table_structure[]\":[\"comments\",\"posts\",\"replies\",\"users\"],\"table_data[]\":[\"comments\",\"posts\",\"replies\",\"users\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'server', 'SQL Database', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"azcoding\",\"comment-reply-system\",\"comment-reply-system2\",\"comment-reply-system3\",\"forum_database\",\"loginregister\",\"phpmyadmin\",\"talkinspace\",\"tech_forum\",\"test\",\"test_db\",\"test_db1\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"comment-reply-system3\",\"table\":\"users\"},{\"db\":\"comment-reply-system3\",\"table\":\"comments\"},{\"db\":\"comment-reply-system3\",\"table\":\"posts\"},{\"db\":\"comment-reply-system3\",\"table\":\"replies\"},{\"db\":\"comment-reply-system2\",\"table\":\"comments\"},{\"db\":\"comment-reply-system2\",\"table\":\"users\"},{\"db\":\"comment-reply-system2\",\"table\":\"replies\"},{\"db\":\"comment-reply-system2\",\"table\":\"posts\"},{\"db\":\"azcoding\",\"table\":\"users\"},{\"db\":\"loginregister\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('comment-reply-system2', 'comments', 'body');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'azcoding', 'users', '{\"CREATE_TIME\":\"2021-06-17 20:25:04\",\"col_order\":[0,3,1,2],\"col_visib\":[1,1,1,1]}', '2021-06-17 15:31:23'),
('root', 'comment-reply-system2', 'comments', '[]', '2021-07-13 20:36:33');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-07-16 18:07:36', '{\"Console\\/Mode\":\"show\",\"Console\\/Height\":87.98639999999999}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `talkinspace`
--
CREATE DATABASE IF NOT EXISTS `talkinspace` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `talkinspace`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'HTML', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mauris est, tincidunt consectetur tincidunt sed, convallis ut neque. Pellentesque facilisis sollicitudin diam non placerat.'),
(2, 'CSS', 'Consectetur adipiscing elit. Praesent mauris est, tincidunt consectetur tincidunt sed, convallis ut neque. Pellentesque facilisis sollicitudin diam non placerat.'),
(3, 'C Programming', ''),
(4, 'Java', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `last_activity` datetime NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `category_id`, `user_id`, `title`, `body`, `last_activity`, `create_date`) VALUES
(4, 1, 5, 'hey this is jesus', '<p>this is justa trial</p>', '2021-02-27 21:44:43', '2021-02-27 20:44:43'),
(6, 2, 6, 'qwerty is best', '<p>qwerty</p>', '2021-02-27 22:03:09', '2021-02-27 21:03:09'),
(7, 2, 7, 'lorem ipsum', '<p>sfgjh kjhgfds hgfdsn&nbsp;</p>', '2021-06-30 22:13:27', '2021-06-30 20:13:27'),
(8, 3, 7, 'lorem ', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>&nbsp;</p>', '2021-07-01 00:03:03', '2021-06-30 22:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(64) NOT NULL,
  `about` text NOT NULL,
  `last_activity` datetime NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `username`, `password`, `about`, `last_activity`, `join_date`) VALUES
(5, 'ayan hazra', 'jesus722481@gmail.com', 'Serendipity-PC.jpg', 'jesus', '110d46fcd978c24f306cd7fa23464d73', 'hhhhh', '2021-02-27 21:43:55', '2021-02-27 20:43:55'),
(6, 'ayan hazra', 'jesus722481@gmail.com', '718Ge4y34-L._SX466_.jpg', 'qwerty', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'qwerty', '2021-02-27 22:02:13', '2021-02-27 21:02:13'),
(7, 'sam', 'sam@gmail.com', 'ht7.jpg', 'cdegodage', '827ccb0eea8a706c4c34a16891f84e7b', 'fjhjj jhgfd jgf', '2021-06-30 22:12:45', '2021-06-30 20:12:45'),
(8, 'sam', 'cde@gmail.com', '1_W5nLxQ62eWdiHnY48PvdJw.jpeg', 'arun', '81dc9bdb52d04dc20036dbd8313ed055', 'dfghj kjhgf', '2021-06-30 23:29:47', '2021-06-30 21:29:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `tech_forum`
--
CREATE DATABASE IF NOT EXISTS `tech_forum` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tech_forum`;

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL,
  `replied` int(11) NOT NULL,
  `question_id` varchar(50) NOT NULL,
  `answer_detail` varchar(2000) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `like` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `replied`, `question_id`, `answer_detail`, `datetime`, `user_id`, `like`) VALUES
(4, 0, '13', 'this is mehuls answer 1.... to the above asked question....', '2012-04-04 06:45:49', 0, 0),
(5, 0, '13', 'rgua ua nt BIRWGEA baWEQWEHkah', '2012-04-05 11:44:56', 0, 0),
(6, 0, '12', 'using the connectivity query', '2012-04-06 06:49:11', 8, 0),
(7, 0, '14', 'the various stages are \r\nNew,Ready,Running,Blocked,Terminate', '2012-04-07 07:33:43', 9, 2),
(8, 0, '16', 'In the star topology there is a centralized hub. The communication between various nodes through the hub.\r\nIn this type of network there is a bottleneck of the centralized hub.It is widely used in LAN connection.', '2012-04-08 06:14:09', 9, 0),
(9, 0, '16', 'In the star topology there is a centralized hub. The communication between various nodes through the hub.\r\nIn this type of network there is a bottleneck of the centralized hub.It is widely used in LAN connection.', '2012-04-09 13:45:22', 9, 0),
(11, 0, '17', 'You can do it withing Borland or VC++ IDE & Compiler.', '2012-04-11 01:15:51', 8, 0),
(12, 0, '17', 'this is reply 1. and this reply is not 2nd...', '2012-04-13 03:49:44', 8, 0),
(13, 0, '17', 'scheduling algorithm is carried out by various methods such as first come first schedule,round robin scheduling,etc;', '2012-04-11 13:33:46', 8, 0),
(15, 0, '17', 'It has many method to explain the sheduling ', '2012-04-12 20:18:28', 12, 0),
(16, 0, '21', 'swing is swing and applet is not swing.', '2012-04-13 12:20:50', 17, 0),
(17, 0, '17', 'scheduling is....', '2012-04-18 11:49:44', 8, 0),
(18, 0, '11', 'i got the answer', '2012-04-18 13:06:22', 9, 0),
(20, 0, '12', 'connectivity with use of execute query and non-execute query\r\n', '2012-04-19 02:27:14', 8, 0),
(21, 0, '17', '\r\n', '2012-04-21 12:30:38', 8, 0),
(22, 0, '29', 'the thread is sub process...', '2012-04-24 14:41:23', 30, 0),
(23, 0, '29', 'are vah', '2012-04-24 14:54:00', 8, 0),
(24, 0, '31', '>This problem is faced with several of people all you have to do is make it stop doing MIME sniffing. You can disable this MIME sniffing by selecting IE the go to tools then to internet options then click custom level after that select Miscellaneous section. After that scroll down in this section then check enable underâ€ open files based on content, not the file extensionâ€', '2012-04-25 13:48:39', 12, 0),
(25, 0, '32', 'The problem was with the theme. Actually it was customized video game theme that was causing the error. Now its working proper.', '2012-04-25 13:49:35', 12, 0),
(26, 0, '32', 'Can you post a screenshot of the problem ? Even I had never seen such problem that notifications turned black. If possible post the screenshot so that I can see what type of pop message in black color is coming in laptop. Till than you can try setting some another them and see if it works. Hope it will work.', '2012-04-25 13:50:25', 9, 0),
(27, 0, '33', 'As i have doubt if you could reset it from the safe mode. But you can surely do it with the help of an application called \"Windows Password Key\". Here is the step by step process for doing the same:\r\n\r\n\r\nâ€¢	Download Windows Password key from http://www.lostwindowspassword.com/downloads/Windows_Password_Key_Standard_Demo.exe.\r\nâ€¢	Install it on any other PC that you can access easily.\r\nâ€¢	Now you need to burn a bootable CD/DVD Or better create a USB Flash Drive.\r\nâ€¢	Connect this USB or insert bootable DVD to your Windows 8 system and recover the password.\r\nThats it. \r\n', '2012-04-25 13:50:59', 9, 0),
(28, 0, '34', 'C:WindowsSystem32shutdown.exe -s -t 0 -f', '2012-04-25 13:54:52', 9, 0),
(29, 0, '35', 'I have read your question and I would keen to tell you that you can use Mozilla Firefox 10 in Linux-32 bit but before you do that you have to visit official site of the Mozilla Firefox. After that you need to select system and language below download option and then choose Linux installed and download that in your machine. Now you have to install it in your machine. I guess this will bring an end to your problem.', '2012-04-25 14:07:16', 12, 0),
(30, 0, '36', 'Hi friends, as o know there are many users who are really in need of the Google chrome themes but are unable to install the same. So I have started this thread to give you people a fair idea regarding the same. So now to install the theme you just need to follow the below mentioned steps:\r\n\r\nStep 1: Start Google Chrome and go to this web address . Google runs its own themes, in fact online.\r\n\r\nStep 2: Navigate in the themes and click Apply Theme, once it is selected.\r\n\r\nStep 3: Downloading and installation are automatic, and your theme is applied instantly. However, you can cancel it by clicking the Cancel button in the upper right of the browser!', '2012-04-25 14:16:37', 9, 0),
(31, 0, '37', 'Happili.com is deeply infiltrated into victimsâ€™ system. To remove Happili.com, please follow below instruction:\r\n1.       reboot your system into safe mode with networking;\r\n2.       download Anvi Smart Defender and install it;\r\n3.       Fully scan your computer;\r\n4.       delete Happili.com Redirect Virus related file:\r\nQuote\r\n    * %AllUsersProfile%{random}\r\n    * %AllUsersProfile%{random}*.lnk\r\n    * HKEY_CURRENT_USERSoftwareMicrosoftWindowsCurrentVersionRunOnce [RANDOM]\r\n    * HKEY_CURRENT_USERSoftwareMicrosoftWindowsCurrentVersionRun [RANDOM]\r\n    * HKEY_LOCAL_MACHINESOFTWAREMicrosoftWindowsCurrentVersionRun [RANDOM].exe\r\n    * HKEY_CURRENT_USERSoftware[RANDOM]\r\n5.  restart your computer;\r\n', '2012-04-25 14:27:26', 15, 0),
(32, 0, '38', 'The Google Redirect Virus is a real and serious threat to PCs around the world.  The main symptom of this virus is that the search results of Google users will be diverted, and instead of being directed to legitimate sites will redirect to malicious websites distributing spyware to sell rogue security tools and distribution of viruses and infections.  The Google Redirect Virus is hidden in your PC, and once activated will make it nearly impossible for the user to use any search engine. What makes Google Redirect Virus hijackers even more dangerous than a normal search engine is the fact that you can use up to 100% of system resources, making the system almost impossible to operate.  Google Redirect Virus will also create a backdoor on the system that other types of malware that exploit the system for easy entry.\r\n\r\nAlthough it is popularly referred to by the title of the virus, the virus is more skillfully Google Redirect classified as a rootkit or Trojan.  This threat is caused by several types of TDSS rootkit, some of which goes by the name of: \r\nâ€¢	Alureon \r\nâ€¢	Tidserv \r\nâ€¢	Backdoor.Tidserv \r\nâ€¢	Trojan: WinNT / Alureon.D \r\nâ€¢	TrojanSpy: Win32/Chadem.A and many other\r\nGoogle Redirect Virus blocks ads and Google search pages show random ads that contain dubious and link spammers and malware sites.  In fact, Google search results are hijacked, making it impossible for the user to perform an online search.After the user is redirected to a website unrelated to their initial research, some websites you can use to generate false traffic to increase their payments to affiliate marketing, while others attempt to trick you to buy harmful rogue security tools. Another big problem with Google Redirect Virus is that you can hide from security tools installed.  It will not be picked up by many security tools, and then the user may find it difficult to detect and remove Google Redirect virus from the system.  It does this by injecting the same memory and processes to enabl', '2012-04-25 14:30:56', 15, 4),
(37, 0, '39', 'As for a listing on a wired network, it needs to be physically connected by Wi-Fi, anyone within range of the network can potentially connect to it.  And this is even more annoying than the intruder may not be visible: this can be a neighbor, passing in the street, in short, anyone.  Then he is free to browse the hard drive of your PC connected to the unprotected or using your Internet inappropriately, you yourself are responsible for the acts he might commit.  Fortunately, it is possible to prevent this. \r\n\r\nThe default settings for access points and wireless routers are not secure and allow anyone to connect to your network.  Thus, the majority of users switching to Wi-Fi, seeing that the wireless works straight start, do not go further and do not seek to secure it, which is extremely risky.  Here is how to properly configure your Wi-Fi to make it safer.\r\n\r\nIn our example, we used Orange Livebox. However, the features and options listed are present in most of the box, routers and access points Wi-Fi market.  Do not hesitate to refer to your hardware documentation for more information and find out how to access a specific feature.\r\n', '2012-04-25 14:45:57', 9, 0),
(40, 0, '40', 'If your broadband connection is slower than it should be, it may be due to the configuration of your network or computer.  If you tell your company that your Internet connection is slow, probably say that the problem is on your computer and will not be responsible.  This guide will show you what you can do to improve the speed of your connection. Before making any changes to your settings, turn off the router or access point to Internet and back on.  Sometimes the connection can be slow due to a failure point in the output device to the Internet. ', '2012-04-25 14:53:40', 15, 0),
(41, 0, '14', 'thre are 5 stages witch are ready,running,wait,block,release ', '2012-04-26 12:55:00', 15, 6),
(42, 0, '14', '1.ready\r\n2.running\r\n3.wait\r\n4.block\r\n5.release', '2012-04-26 12:56:15', 8, 9),
(43, 0, '7', 'jjjjjjj', '2012-04-27 04:44:09', 8, 0),
(44, 0, '41', 'THIS HAS FIVE STAPE', '2012-04-27 06:06:41', 8, 1),
(45, 0, '39', 'ddddddddd', '2015-10-25 07:11:16', 8, 0),
(46, 0, '39', 'dfdfdf', '2015-10-25 07:11:31', 8, 0),
(47, 0, '42', 'Rasmus Lerdorfffffffff', '2015-10-25 07:12:40', 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chatdetail_id` int(11) NOT NULL,
  `cdatetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `message` varchar(1000) NOT NULL,
  `user_id` int(11) NOT NULL,
  `chat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chatdetail_id`, `cdatetime`, `message`, `user_id`, `chat_id`) VALUES
(13, '2012-04-17 14:28:03', 'hi fabin im hardik', 8, 5),
(14, '2012-04-17 14:28:22', 'ka vikla', 8, 6),
(15, '2012-04-17 14:41:26', 'hi', 9, 5),
(16, '2012-04-17 14:42:12', 'how r u', 9, 5),
(17, '2012-04-17 14:42:55', 'hello', 9, 5),
(18, '2012-04-17 14:43:32', 'hi', 9, 5),
(19, '2012-04-17 14:43:52', 'kaise ho ?', 9, 5),
(20, '2012-04-17 14:43:58', 'm fine', 9, 5),
(21, '2012-04-17 14:44:36', 'this is hardik', 9, 5),
(22, '2012-04-17 14:46:39', 'now its fine', 9, 5),
(23, '2012-04-17 14:46:49', 'hardik here', 8, 5),
(24, '2012-04-18 09:37:31', 'shu karo 6o', 5, 7),
(25, '2012-04-18 09:41:37', 'are hardik hu hato ato', 12, 8),
(26, '2012-04-18 09:46:28', 'are shu photo mast mukyo 6e', 8, 9),
(27, '2012-04-19 12:12:32', 'are dipak avyo 6e ', 12, 8),
(28, '2012-04-21 11:53:43', 'hi\r\n', 8, 10),
(32, '2012-04-24 08:12:28', 'aaaaaaa', 5, 13),
(35, '2012-04-24 14:52:42', 'shu bhai', 30, 16),
(36, '2012-04-26 13:08:05', 'what is message passing system in the distributed application?', 9, 17),
(37, '2012-04-26 13:09:39', 'why synchronization require in the distributed system? ', 9, 18),
(38, '2012-04-27 04:46:00', 'how is your work going on?\r\n', 8, 19),
(39, '2015-10-25 07:08:31', 'ddddddddd', 5, 20);

-- --------------------------------------------------------

--
-- Table structure for table `chatmaster`
--

CREATE TABLE `chatmaster` (
  `chat_id` int(11) NOT NULL,
  `user_id_from` int(11) NOT NULL,
  `user_id_to` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatmaster`
--

INSERT INTO `chatmaster` (`chat_id`, `user_id_from`, `user_id_to`) VALUES
(5, 8, 9),
(6, 8, 12),
(7, 5, 8),
(8, 12, 8),
(9, 8, 5),
(10, 8, 9),
(11, 8, 5),
(12, 8, 5),
(13, 5, 8),
(14, 5, 8),
(15, 29, 8),
(16, 30, 5),
(17, 9, 15),
(18, 9, 12),
(19, 8, 15),
(20, 5, 8);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `question_id` int(11) NOT NULL,
  `heading` varchar(50) NOT NULL,
  `question_detail` varchar(2000) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `subtopic_id` int(11) NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`question_id`, `heading`, `question_detail`, `datetime`, `user_id`, `subtopic_id`, `views`) VALUES
(7, 'table connectivity', 'query of the connecting table with form?', '2012-04-11 09:42:44', 8, 7, 9),
(8, 'Window Xp', 'how to debbuge the ble screen error?', '2012-04-11 00:25:00', 8, 5, 1),
(9, 'Window vista', 'hot to change the administrator password from cmd?', '2012-04-03 17:51:44', 8, 5, 0),
(10, 'Window 7', 'how to make uninstall set up? ', '2012-04-05 02:24:42', 8, 5, 3),
(11, 'linux', 'how to use the live source of l\r\n', '2012-04-07 00:51:42', 9, 5, 6),
(12, 'connectivity', 'how to connect form with database?', '2012-04-09 09:01:36', 8, 2, 5),
(14, 'Thread life cycle', 'What are the different stages of thread life cycle?\r\n', '2012-04-09 23:04:43', 9, 12, 189),
(15, 'applet controls ', 'how to create simple applet program? ', '2012-04-12 12:02:44', 9, 13, 6),
(16, 'STAR topology', 'how connection established in the star topology?\r\n', '2012-04-26 22:14:01', 9, 17, 1),
(17, 'Scheduling', 'Hello,\r\n\r\nI want to create a program that supports multi-threading with scheduling. The program must', '2012-04-17 15:41:54', 8, 12, 79),
(18, 'Sheduling algorithm', 'Explain the various scheduling algorithm?\r\n', '2012-04-11 13:13:25', 8, 0, 0),
(19, 'Sheduling algorithm', 'Explain the various scheduling algorithm?\r\n', '2012-04-11 13:13:54', 8, 0, 1),
(20, 'scheduling algorithm', 'Explain various scheduling algorithm used in the cpu scheduling?', '2012-04-11 13:18:47', 8, 12, 9),
(21, 'Swing Applet', 'I want to know the difference between normal Applet and Swing Applet.....\r\n\r\nAnd I also want to know', '2012-04-13 12:13:35', 16, 13, 12),
(22, 'Applet Class', 'What is applet class ?', '2012-04-13 13:13:37', 26, 13, 2),
(23, 'what is applet ?', 'what is applet ?\r\n\r\nIs it as class or package ?', '2012-04-13 13:18:45', 27, 13, 4),
(24, 'a', '', '2012-04-21 12:53:31', 8, 12, 0),
(25, 'thread ', 'explain the  various stages of thread', '2012-04-22 05:39:06', 8, 12, 6),
(26, '', '', '2012-04-24 04:15:11', 8, 12, 0),
(27, 'a', '', '2012-04-24 04:15:33', 8, 12, 0),
(28, 'a', '', '2012-04-24 04:17:32', 8, 12, 0),
(29, 'what', 'what is what', '2012-04-24 14:18:15', 28, 12, 7),
(30, 'What is thread ?', 'What is thread ?', '2012-04-24 14:38:03', 29, 12, 1),
(31, 'window 7', 'Windows 7, how can I open .jnlp extension in Internet Explorer 9?', '2012-04-25 13:25:05', 8, 12, 5),
(32, 'window vista', 'Unable to see taskbar notifications in Windows Vista SP2?', '2012-04-25 13:26:24', 8, 12, 5),
(33, 'window 8', 'How can i recover lost windows 8 Administrator password?', '2012-04-25 13:27:06', 8, 12, 4),
(34, 'windows 8', ' How to easily Shutdown Windows 8 Consumer preview?', '2012-04-25 13:52:35', 8, 12, 4),
(35, 'Mozila Browser', 'Operate Mozilla Firefox 10 in linux-32 Bit?', '2012-04-25 14:05:47', 9, 18, 11),
(36, 'Google Chrome Browser', 'How to install Google chrome themes?', '2012-04-25 14:14:33', 12, 18, 7),
(37, 'Happili ', 'How to remove Happili redirecting virus?', '2012-04-25 14:24:11', 9, 19, 22),
(38, 'Google Redirect Virus', 'How to remove Google redirect virus from Web browser?', '2012-04-25 14:29:52', 9, 19, 15),
(39, 'Secure Wi-Fi', 'Tips to create secure Wi-Fi', '2012-04-25 14:45:07', 15, 20, 8),
(40, 'Connection speed', 'How to increase the speed of your broadband connection?', '2012-04-25 14:53:08', 9, 20, 2),
(41, 'THREADING', 'WHAT IS THREADING?', '2012-04-27 06:05:09', 32, 12, 12),
(42, 'Who is the father of php', 'Any one tell me who is the father of php ???????', '2015-10-25 07:12:11', 8, 12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `subtopic`
--

CREATE TABLE `subtopic` (
  `subtopic_id` int(11) NOT NULL,
  `subtopic_name` varchar(50) NOT NULL,
  `subtopic_description` varchar(500) NOT NULL,
  `s_status` varchar(20) NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subtopic`
--

INSERT INTO `subtopic` (`subtopic_id`, `subtopic_name`, `subtopic_description`, `s_status`, `topic_id`) VALUES
(2, 'php', 'web', 'tr', 10),
(3, 'connectivity', 'data table', 'ss', 11),
(4, 'html', 'web page design', 'ss', 13),
(6, 'Threading', 'Info about Thread & Runnable', 'tr', 7),
(7, 'file management', 'exception handling', 'tr', 8),
(8, 'i/o management', 'data string handler', 'tr', 8),
(11, 'Move', 'how to move file from one location to another', 'tr', 13),
(12, 'Threading', 'About Thread Life Cycle', 'true', 17),
(13, 'applet controls', 'discussion of the controls of applet', 'true', 18),
(14, 'ExecutingQuery in sql', 'types of sql queries', 'true', 19),
(15, 'Non Executing Query', 'Select Query', 'tr', 19),
(16, '8085 processor', 'block diagram discription', 'tr', 21),
(17, 'network types', 'types of topologies', 'tr', 22),
(18, 'Application Related', 'Any querys Related Apps', 'tr', 23),
(19, 'Virus Solution', 'How we solve virus problems', 'tr', 24),
(20, 'Network Related', 'Network Related Querys', 'tr', 25);

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `topic_id` int(11) NOT NULL,
  `topic_name` varchar(50) NOT NULL,
  `topic_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`topic_id`, `topic_name`, `topic_type`) VALUES
(17, 'Operating System', 'Threading'),
(18, 'Applet', 'JAVA'),
(19, 'Php Database connectivity', 'PHP'),
(21, 'Microprocessor', 'Processor'),
(23, 'Applications', 'Os Applications'),
(24, 'Virus', 'Virus solution'),
(25, 'Networks', 'Networks Related Querys');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `user_acc_active` tinyint(1) DEFAULT NULL,
  `dob` date NOT NULL,
  `e_mail` varchar(100) DEFAULT NULL,
  `gender` varchar(20) NOT NULL,
  `uimg` varchar(255) NOT NULL,
  `isuser` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `country`, `state`, `address`, `user_type`, `username`, `fullname`, `password`, `user_acc_active`, `dob`, `e_mail`, `gender`, `uimg`, `isuser`) VALUES
(5, 'U.S.A', 'ahmedabad', '-', 'admin', 'admin', 'administrator', 'admin', NULL, '2012-04-17', 'admin@gmail.com', '1', 'ups/admin.jpg', 1),
(8, '-', '-', '-', 'user', 'hardik', 'hardik patel', '123', NULL, '0000-00-00', 'abcd@gmail.com', '1', 'ups/hardik.jpg', 0),
(9, 'India', 'Gujarat', 'mahesana', 'user', 'fabin', 'Christian Fabin Mathew', 'fabinlj', NULL, '0000-00-00', 'fabin.christian@gmail.com', '1', 'ups/124.jpg', 0),
(12, 'India', 'Gujarat', 'sant lilashah soc,bhargav soc,Ahmedabad', 'user', 'Vikas ', 'Vikas Patel', 'vikas', NULL, '1990-04-03', 'vikas.patel@gmail.com', '1', 'ups/1.jpg', 1),
(15, 'India', 'Gujarat', 'porbandar', 'user', 'mahesh', 'mahesh narvani', 'm', NULL, '1990-04-27', 'mahesh.narvani@gmail.com', '1', 'ups/Pink Rose For You-504352.jpeg', 0),
(27, 'India', 'Gujarat', '13-yamuna tenament,near bhargav soc.,kuber nagar ,bunglow area  ', 'user', 'Jasmin', 'Jasmin Patel', 'jasmin', NULL, '1986-11-25', 'jasmin.patel@gmail.com', '1', 'ups/7.jpg', 0),
(28, 'India', 'Gujarat', 'gdhjsbb', 'user', 'rushabh', 'rushabh joshi', 'rest', NULL, '0000-00-00', 'rushabh.joshi@gmail.com', '1', 'ups/', 0),
(30, 'j', 'j', 'j', 'user', 'Mehul', 'Mehul Varia', '123', NULL, '1986-11-25', 'ms.mainframe@gmail.com', '1', 'ups/1.jpg', 0),
(31, 'India', 'Gujarat', 'jamnagar', 'user', 'satish', 'Satish Babariya', 'satish', NULL, '0000-00-00', 'satish.babariya@gmail.com', '1', 'ups/Red Roses Love-262228.jpeg', 0),
(32, '-', '-', '-', 'user', 'abc', 'a', '123', NULL, '1986-11-25', 'ab@gmail.com', '1', 'ups/Colorized Heart-733225.jpeg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chatdetail_id`);

--
-- Indexes for table `chatmaster`
--
ALTER TABLE `chatmaster`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `subtopic`
--
ALTER TABLE `subtopic`
  ADD PRIMARY KEY (`subtopic_id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`topic_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chatdetail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `chatmaster`
--
ALTER TABLE `chatmaster`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `subtopic`
--
ALTER TABLE `subtopic`
  MODIFY `subtopic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `test_db`
--
CREATE DATABASE IF NOT EXISTS `test_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test_db`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password`) VALUES
(3, 'user2', 'user2@gmail.com', '$2y$10$8.FdNpciL8QMvm96szPGmefw2n.orbDR.WwLyv2eO9UJCh87OmK2e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `test_db1`
--
CREATE DATABASE IF NOT EXISTS `test_db1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test_db1`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`, `name`) VALUES
(1, 'elias', '123', 'Elias'),
(2, 'john', 'abc', 'John'),
(3, 'user1', '81dc9bdb52d04dc20036dbd8313ed055', 'chathura dilshan'),
(4, 'user2', '81dc9bdb52d04dc20036dbd8313ed055', 'arun'),
(5, 'user3', '827ccb0eea8a706c4c34a16891f84e7b', 'monster island'),
(6, 'user4', '827ccb0eea8a706c4c34a16891f84e7b', 'arun'),
(7, 'user5@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user5'),
(8, 'user6@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'usernew'),
(9, 'user@abc.lk', '827ccb0eea8a706c4c34a16891f84e7b', 'User'),
(10, 'user1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'User'),
(11, 'user2@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'User'),
(12, 'user3@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
