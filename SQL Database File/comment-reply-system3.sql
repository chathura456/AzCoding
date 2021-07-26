-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2021 at 06:26 PM
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
-- Database: `comment-reply-system3`
--

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
(13, 7, 1, 1, 'How many types of heading does an HTML contain?', '2021-07-16 15:41:24', '2021-07-16 15:41:24'),
(14, 9, 1, 1, 'What is HTML5?', '2021-07-16 20:11:53', '2021-07-16 20:11:53'),
(15, 10, 1, 4, 'What are the basic Datatypes supported in C Programming Language?', '2021-07-16 21:39:08', '2021-07-16 21:39:08'),
(16, 3, 1, 0, 'What is VH/VW (viewport height/ viewport width) in CSS?', '2021-07-16 21:43:54', '2021-07-16 21:43:54'),
(17, 3, 1, 2, 'what is CSS?', '2021-07-16 21:53:15', '2021-07-16 21:53:15'),
(19, 3, 1, 1, 'Which HTML tag is used to display the data in the tabular form?', '2021-07-16 21:55:38', '2021-07-16 21:55:38'),
(20, 11, 1, 1, 'How to create a nested webpage in HTML?', '2021-07-16 22:04:52', '2021-07-16 22:04:52');

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

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `comment_id`, `body`, `created_at`, `updated_at`) VALUES
(6, 9, 7, 'C is a powerful general-purpose programming language. It can be used to develop software like operating systems, databases, compilers, and so on. C programming is an excellent language to learn to program for beginners.', '2021-07-16 20:12:31', '2021-07-16 20:12:31'),
(16, 11, 17, 'CSS stands for Cascading Style Sheet. Itâ€™s a style sheet language that determines how the elements/contents in the page are looked/shown. CSS is used to develop a consistent look and feel for all the pages.', '2021-07-16 22:05:23', '2021-07-16 22:05:23');

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
(7, 'Yohan', 'yohan@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2021-07-16 15:37:18'),
(8, 'User', 'user1@gmail.lk', '81dc9bdb52d04dc20036dbd8313ed055', '2021-07-16 18:49:58'),
(9, 'Chathura Dilshan', 'user@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2021-07-16 20:04:53'),
(10, 'Arun Peeris', 'user4@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2021-07-16 21:37:42'),
(11, 'Nuwan', 'user5@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2021-07-16 22:03:38'),
(12, 'Amith', 'amith@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2021-07-26 15:22:34');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
