-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 08, 2026 at 03:27 AM
-- Server version: 10.11.5-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onliner1_dating_app`
--
CREATE DATABASE IF NOT EXISTS `onliner1_dating_app` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `onliner1_dating_app`;

-- --------------------------------------------------------

--
-- Table structure for table `connection_requests`
--

CREATE TABLE `connection_requests` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `connection_requests`
--

INSERT INTO `connection_requests` (`id`, `sender_id`, `receiver_id`, `status`, `created_at`, `updated_at`) VALUES
(62, 2, 7, 'pending', '2026-02-07 20:07:54', '2026-02-07 20:07:54'),
(63, 2, 1, 'accepted', '2026-02-07 20:07:56', '2026-02-08 08:04:22'),
(64, 1, 4, 'accepted', '2026-02-08 04:25:34', '2026-02-08 08:39:17'),
(65, 1, 8, 'pending', '2026-02-08 04:25:36', '2026-02-08 04:25:36'),
(66, 1, 3, 'accepted', '2026-02-08 04:25:38', '2026-02-08 08:59:45'),
(67, 1, 6, 'pending', '2026-02-08 04:25:41', '2026-02-08 04:25:41'),
(68, 1, 9, 'accepted', '2026-02-08 04:25:43', '2026-02-08 04:26:40'),
(69, 1, 5, 'accepted', '2026-02-08 04:25:45', '2026-02-08 08:56:11'),
(70, 1, 10, 'accepted', '2026-02-08 04:25:49', '2026-02-08 04:26:08'),
(71, 9, 2, 'pending', '2026-02-08 04:27:58', '2026-02-08 04:27:58'),
(72, 10, 3, 'pending', '2026-02-08 08:04:05', '2026-02-08 08:04:05'),
(73, 10, 8, 'pending', '2026-02-08 08:04:06', '2026-02-08 08:04:06'),
(74, 10, 6, 'pending', '2026-02-08 08:04:07', '2026-02-08 08:04:07'),
(75, 10, 4, 'accepted', '2026-02-08 08:04:08', '2026-02-08 08:39:13'),
(76, 10, 9, 'pending', '2026-02-08 08:04:09', '2026-02-08 08:04:09'),
(77, 10, 5, 'pending', '2026-02-08 08:04:10', '2026-02-08 08:04:10'),
(78, 4, 2, 'pending', '2026-02-08 08:44:34', '2026-02-08 08:44:34'),
(79, 4, 1, 'accepted', '2026-02-08 08:44:35', '2026-02-08 08:45:00'),
(80, 4, 7, 'pending', '2026-02-08 08:44:37', '2026-02-08 08:44:37'),
(81, 5, 2, 'pending', '2026-02-08 14:26:37', '2026-02-08 14:26:37'),
(82, 5, 7, 'pending', '2026-02-08 14:26:39', '2026-02-08 14:26:39'),
(83, 3, 2, 'pending', '2026-02-08 14:30:11', '2026-02-08 14:30:11'),
(84, 3, 7, 'pending', '2026-02-08 14:30:12', '2026-02-08 14:30:12');

-- --------------------------------------------------------

--
-- Table structure for table `contact_requests`
--

CREATE TABLE `contact_requests` (
  `id` int(11) NOT NULL,
  `requester_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_requests`
--

INSERT INTO `contact_requests` (`id`, `requester_id`, `target_id`, `status`, `created_at`, `updated_at`) VALUES
(9, 9, 1, 'approved', '2026-02-08 04:26:50', '2026-02-08 04:27:02'),
(10, 1, 5, 'declined', '2026-02-08 08:57:06', '2026-02-08 08:57:16'),
(13, 5, 1, 'approved', '2026-02-08 08:57:29', '2026-02-08 08:57:36');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `liked_user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `liked_user_id`, `created_at`) VALUES
(63, 2, 7, '2026-02-07 20:07:54'),
(64, 2, 1, '2026-02-07 20:07:56'),
(65, 1, 4, '2026-02-08 04:25:34'),
(66, 1, 8, '2026-02-08 04:25:36'),
(67, 1, 3, '2026-02-08 04:25:38'),
(68, 1, 6, '2026-02-08 04:25:41'),
(69, 1, 9, '2026-02-08 04:25:43'),
(70, 1, 5, '2026-02-08 04:25:45'),
(71, 1, 10, '2026-02-08 04:25:49'),
(72, 9, 2, '2026-02-08 04:27:58'),
(73, 10, 3, '2026-02-08 08:04:05'),
(74, 10, 8, '2026-02-08 08:04:06'),
(75, 10, 6, '2026-02-08 08:04:07'),
(76, 10, 4, '2026-02-08 08:04:08'),
(77, 10, 9, '2026-02-08 08:04:09'),
(78, 10, 5, '2026-02-08 08:04:10'),
(79, 4, 2, '2026-02-08 08:44:34'),
(80, 4, 1, '2026-02-08 08:44:35'),
(81, 4, 7, '2026-02-08 08:44:37'),
(82, 5, 2, '2026-02-08 08:56:37'),
(83, 5, 7, '2026-02-08 08:56:39'),
(84, 3, 2, '2026-02-08 09:00:11'),
(85, 3, 7, '2026-02-08 09:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` int(11) NOT NULL,
  `user_id1` int(11) NOT NULL,
  `user_id2` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `body`, `is_read`, `created_at`) VALUES
(63, 9, 1, '12', 1, '2026-02-07 18:58:13'),
(64, 9, 1, 'ljlkjwde', 1, '2026-02-07 19:40:32'),
(65, 9, 1, 'wdwdwdw', 1, '2026-02-07 19:40:38'),
(66, 9, 1, 'dwdwdwd', 1, '2026-02-07 19:40:43'),
(67, 9, 1, 'ww', 1, '2026-02-07 19:40:45'),
(68, 9, 1, 'dwdwdw', 1, '2026-02-07 19:40:50'),
(69, 9, 1, 'dwdwd', 1, '2026-02-07 19:40:53'),
(70, 1, 9, 'Nncnx', 1, '2026-02-07 19:41:51'),
(71, 9, 1, 'ddsdsd', 1, '2026-02-07 19:56:13'),
(72, 9, 1, 'hi', 1, '2026-02-08 04:31:06'),
(73, 9, 1, 'hello', 1, '2026-02-08 04:31:16'),
(74, 1, 9, 'Hello', 1, '2026-02-08 10:06:19'),
(75, 1, 9, 'Ji', 1, '2026-02-08 10:09:19'),
(76, 1, 9, 'Jhza', 1, '2026-02-08 10:09:23'),
(77, 1, 9, 'Nnznz', 1, '2026-02-08 10:09:32'),
(78, 1, 9, 'Vhb', 1, '2026-02-08 10:11:05'),
(79, 1, 9, 'Nnsx', 1, '2026-02-08 10:45:10'),
(80, 1, 9, 'Aaj', 1, '2026-02-08 10:45:17'),
(81, 1, 9, 'Kks', 1, '2026-02-08 10:56:09'),
(82, 1, 9, 'Hhs', 1, '2026-02-08 11:00:42'),
(83, 1, 9, 'Hh', 1, '2026-02-08 11:05:48'),
(84, 1, 9, 'Jhja', 1, '2026-02-08 11:05:54'),
(85, 1, 9, 'Hhdj', 1, '2026-02-08 11:11:38'),
(86, 1, 9, 'Nnndd', 1, '2026-02-08 11:11:41'),
(87, 1, 9, 'sdsdsd', 1, '2026-02-08 11:15:35'),
(88, 1, 5, 'hi', 0, '2026-02-08 14:41:56');

-- --------------------------------------------------------

--
-- Table structure for table `otp_verification`
--

CREATE TABLE `otp_verification` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp_hash` varchar(255) DEFAULT NULL,
  `otp_expiry` int(11) DEFAULT NULL,
  `verified` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token_hash` varchar(64) NOT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `user_id`, `token_hash`, `expires_at`, `created_at`) VALUES
(1, 1, '9e9f9807139bfef8a1d4851d6f3d03a8e09977b45ced71ba0a92c1383a699a0f', '2026-02-06 22:27:29', '2026-02-06 15:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `duration_days` int(11) NOT NULL,
  `features` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `price`, `duration_days`, `features`, `created_at`) VALUES
(1, 'Classic', 19.00, 30, 'Unlimited requests, Shortlist highlights, Verified badge', '2026-02-05 21:06:18'),
(2, 'Premium', 39.00, 90, 'Priority listing, Advanced filters, 2x profile visibility', '2026-02-05 21:06:18'),
(3, 'Elite', 59.00, 180, 'Personalized matchmaking, Featured profile, Direct messaging', '2026-02-05 21:06:18');

-- --------------------------------------------------------

--
-- Table structure for table `remember_tokens`
--

CREATE TABLE `remember_tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `selector` varchar(24) NOT NULL,
  `token_hash` varchar(64) NOT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shortlists`
--

CREATE TABLE `shortlists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shortlisted_user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT 'active',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `plan_id`, `status`, `start_date`, `end_date`, `created_at`) VALUES
(1, 1, 1, 'active', '2026-02-06', '2026-03-08', '2026-02-05 21:06:20'),
(2, 1, 1, 'active', '2026-02-06', '2026-03-08', '2026-02-05 21:06:22'),
(3, 1, 2, 'active', '2026-02-06', '2026-05-07', '2026-02-05 21:06:25'),
(4, 1, 2, 'active', '2026-02-06', '2026-05-07', '2026-02-06 03:31:54');

-- --------------------------------------------------------

--
-- Table structure for table `swipe_ignored`
--

CREATE TABLE `swipe_ignored` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ignored_user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(30) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `interested_in` varchar(50) DEFAULT NULL,
  `height` varchar(50) DEFAULT NULL,
  `body_type` varchar(50) DEFAULT NULL,
  `education` varchar(100) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `relationship_status` varchar(50) DEFAULT NULL,
  `looking_for` varchar(350) DEFAULT NULL,
  `interests` varchar(500) DEFAULT NULL,
  `hobbies` varchar(500) DEFAULT NULL,
  `verified` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `phone_number`, `password`, `first_name`, `last_name`, `age`, `gender`, `bio`, `location`, `profile_photo`, `interested_in`, `height`, `body_type`, `education`, `occupation`, `relationship_status`, `looking_for`, `interests`, `hobbies`, `verified`, `created_at`, `updated_at`) VALUES
(8, 'samsac@hotmail.in', NULL, '$2y$10$Srf7SXwPkiQR3s25CjKnlueKAyJI6pl2q5akZanHzSVMmzrXI51Sy', 'Sanya', 'Roy', 25, 'Female', 'I need a handsome guy who understands me and supports me in every phase of life. Love from future wife', 'Mumbai', 'uploads/8/1770393459_69860f73ea354.jpeg', 'Male', '5’7', 'Curvy', 'Bachelor\'s', 'Engineering', NULL, 'well settled man', NULL, NULL, 1, '2026-02-06 15:52:05', '2026-02-06 16:01:14'),
(9, 'dipti@c.d', NULL, '$2y$10$6tfh0R..6VpZgiiExm/IT.AqKq71pVNQb8/OA5KtES27s7uKEEGU2', 'Dipti', 'Rai', 30, 'Female', 'Hey', 'Delhi', 'uploads/9/1770539756_69884aec53929.jpg', 'Male', '5\'6\'\'', 'Slim', 'Bachelor\'s', 'Job', NULL, 'hi', NULL, NULL, 1, '2026-02-07 18:18:08', '2026-02-08 08:35:56'),
(10, 'p@c.d', NULL, '$2y$10$PIh38CVFrsR9nMTnFOLxb.svTtkZ0.cirqF.SssyEW6D3LuZugupK', 'Peeto', 'T', 22, 'Female', 'Hello', 'delhi', NULL, 'Female', '5\'6\'\'', 'Slim', 'Bachelor\'s', 'JOB', NULL, NULL, NULL, NULL, 1, '2026-02-08 04:24:33', '2026-02-08 04:25:06');

-- --------------------------------------------------------

--
-- Table structure for table `user_photos`
--

CREATE TABLE `user_photos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT 0,
  `uploaded_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_photos`
--

INSERT INTO `user_photos` (`id`, `user_id`, `photo_path`, `is_primary`, `uploaded_at`) VALUES
(1, 1, 'uploads/1/1769926585_697eefb9a72d4.png', 1, '2026-02-01 06:16:25'),
(2, 8, 'uploads/8/1770393459_69860f73ea354.jpeg', 1, '2026-02-06 15:57:39'),
(3, 9, 'uploads/9/1770539756_69884aec53929.jpg', 1, '2026-02-08 08:35:56'),
(4, 4, 'uploads/4/1770540218_69884cbac47d3.png', 1, '2026-02-08 08:43:38');

-- --------------------------------------------------------

--
-- Table structure for table `user_preferences`
--

CREATE TABLE `user_preferences` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `min_age` int(11) DEFAULT NULL,
  `max_age` int(11) DEFAULT NULL,
  `distance_km` int(11) DEFAULT NULL,
  `preferred_body_types` varchar(500) DEFAULT NULL,
  `preferred_education` varchar(500) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `connection_requests`
--
ALTER TABLE `connection_requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_request` (`sender_id`,`receiver_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `contact_requests`
--
ALTER TABLE `contact_requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_contact_request` (`requester_id`,`target_id`),
  ADD KEY `target_id` (`target_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_like` (`user_id`,`liked_user_id`),
  ADD KEY `liked_user_id` (`liked_user_id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_match` (`user_id1`,`user_id2`),
  ADD KEY `user_id2` (`user_id2`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `otp_verification`
--
ALTER TABLE `otp_verification`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_token` (`token_hash`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `remember_tokens`
--
ALTER TABLE `remember_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_selector` (`selector`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `shortlists`
--
ALTER TABLE `shortlists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_shortlist` (`user_id`,`shortlisted_user_id`),
  ADD KEY `shortlisted_user_id` (`shortlisted_user_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `plan_id` (`plan_id`);

--
-- Indexes for table `swipe_ignored`
--
ALTER TABLE `swipe_ignored`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_ignore` (`user_id`,`ignored_user_id`),
  ADD KEY `ignored_user_id` (`ignored_user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_photos`
--
ALTER TABLE `user_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `connection_requests`
--
ALTER TABLE `connection_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `contact_requests`
--
ALTER TABLE `contact_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `otp_verification`
--
ALTER TABLE `otp_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `remember_tokens`
--
ALTER TABLE `remember_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `shortlists`
--
ALTER TABLE `shortlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `swipe_ignored`
--
ALTER TABLE `swipe_ignored`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_photos`
--
ALTER TABLE `user_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_preferences`
--
ALTER TABLE `user_preferences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `connection_requests`
--
ALTER TABLE `connection_requests`
  ADD CONSTRAINT `connection_requests_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `connection_requests_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contact_requests`
--
ALTER TABLE `contact_requests`
  ADD CONSTRAINT `contact_requests_ibfk_1` FOREIGN KEY (`requester_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contact_requests_ibfk_2` FOREIGN KEY (`target_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`liked_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `matches`
--
ALTER TABLE `matches`
  ADD CONSTRAINT `matches_ibfk_1` FOREIGN KEY (`user_id1`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matches_ibfk_2` FOREIGN KEY (`user_id2`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `password_resets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `remember_tokens`
--
ALTER TABLE `remember_tokens`
  ADD CONSTRAINT `remember_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shortlists`
--
ALTER TABLE `shortlists`
  ADD CONSTRAINT `shortlists_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shortlists_ibfk_2` FOREIGN KEY (`shortlisted_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscriptions_ibfk_2` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `swipe_ignored`
--
ALTER TABLE `swipe_ignored`
  ADD CONSTRAINT `swipe_ignored_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `swipe_ignored_ibfk_2` FOREIGN KEY (`ignored_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_photos`
--
ALTER TABLE `user_photos`
  ADD CONSTRAINT `user_photos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD CONSTRAINT `user_preferences_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `onliner1_db_rishta`
--
CREATE DATABASE IF NOT EXISTS `onliner1_db_rishta` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `onliner1_db_rishta`;

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `chat_message_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` text NOT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `to_user_id`, `from_user_id`, `chat_message`, `timestamp`, `status`) VALUES
(85, 0, 140, 'Hello', NULL, 2),
(98, 0, 140, 'Heyy', NULL, 2),
(99, 375, 140, '?', '2021-09-28 12:26:33', 2),
(100, 375, 140, '?', '2021-09-28 12:26:49', 2),
(101, 1207, 140, 'hi', '2021-11-13 00:16:07', 1),
(102, 370, 1222, 'hiii', '2021-11-30 15:03:07', 2),
(103, 375, 1231, 'hi', '2021-12-05 17:37:39', 1),
(117, 1943, 140, 'hi', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_subject` varchar(250) NOT NULL,
  `comment_text` text NOT NULL,
  `comment_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_subject`, `comment_text`, `comment_status`) VALUES
(1, 'Message From ADMIN', 'Hi... Now You Will Get All Request Message Here', 0);

-- --------------------------------------------------------

--
-- Table structure for table `community`
--

CREATE TABLE `community` (
  `id` int(11) NOT NULL,
  `cast` varchar(30) DEFAULT NULL,
  `subcast` varchar(30) DEFAULT NULL,
  `gotra` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `community`
--

INSERT INTO `community` (`id`, `cast`, `subcast`, `gotra`) VALUES
(1, 'Brahmin', 'Pathak', NULL),
(2, 'Brahmin', 'Dubey', NULL),
(3, 'Vaishya', 'Gupta', NULL),
(4, 'Vaishya', 'Sahu', NULL),
(5, 'Brahmin', 'Tripathi', NULL),
(8, 'Brahmin', 'PATHAK', NULL),
(9, 'Brahmin', 'Shukla', NULL),
(10, 'Brahmin', 'Pandey', NULL),
(11, 'Brahmin', 'Upadhyay', NULL),
(12, 'Brahmin', 'Shastri', NULL),
(13, 'Brahmin', 'Garg', NULL),
(15, 'Brahmin', 'Bhargava', NULL),
(17, 'Brahmin', 'Bhardwaj', NULL),
(19, 'Brahmin', 'Deshmukh', NULL),
(20, 'Brahmin', 'Mishra', NULL),
(22, 'Brahmin', 'Srinivas', NULL),
(23, 'Brahmin', 'Jha', NULL),
(24, 'Brahmin', 'Bhatt', NULL),
(25, 'Brahmin', 'Sharma', NULL),
(26, 'Brahmin', 'Mukherjee', NULL),
(27, 'Brahmin', 'Banerjee', NULL),
(28, 'Brahmin', 'Agnihotri', NULL),
(29, 'Brahmin', 'Chaubey', NULL),
(30, 'Kshatriya', 'Singh', NULL),
(31, 'Kshatriya', 'Rajput', NULL),
(32, 'Kshatriya', 'Paliwal', NULL),
(33, 'Kshatriya', 'Katiyar', NULL),
(34, 'Kshatriya', 'Sisodia', NULL),
(35, 'Kshatriya', 'Somvanshi', NULL),
(36, 'Kshatriya', 'Suryavanshi', NULL),
(37, 'Kshatriya', 'Yaduvanshi', NULL),
(38, 'Kshatriya', 'Bundela', NULL),
(39, 'Kshatriya', 'Dixit', NULL),
(40, 'Kshatriya', 'Sanger', NULL),
(41, 'Kshatriya', 'Parmar', NULL),
(42, 'Kshatriya', 'Solanki', NULL),
(43, 'Kshatriya', 'Chandel', NULL),
(44, 'Kshatriya', 'Tomar', NULL),
(45, 'Kshatriya', 'Bhati', NULL),
(46, 'Kshatriya', 'Gehlot', NULL),
(47, 'Kshatriya', 'chauhan', NULL),
(48, 'Kshatriya', 'kachwaha', NULL),
(49, 'Kshatriya', 'Bhadoria', NULL),
(50, 'Kshatriya', 'Parihar', NULL),
(51, 'Brahmin', 'other', NULL),
(52, 'Kshatriya', 'other', NULL),
(53, 'Vaishy', 'GANDHI', NULL),
(54, 'Vaishy', 'SAHU', NULL),
(55, 'Vaishy', 'SHAHU TELI', NULL),
(56, 'Vaishy', 'SAHU TELI', NULL),
(57, 'Vaishy', 'SAH TELI', NULL),
(58, 'Vaishy', 'SHAH TELI', NULL),
(59, 'Vaishy', 'SAH TELI', NULL),
(60, 'Vaishy', 'TELI', NULL),
(61, 'Vaishy', 'SHAHU', NULL),
(62, 'Vaishy', 'GUPTA', NULL),
(63, 'Vaishy', 'SAH', NULL),
(64, 'Vaishy', 'SHAH', NULL),
(65, 'Vaishy', 'AGARWAL', NULL),
(66, 'Vaishy', 'AZAD', NULL),
(67, 'Vaishy', 'ATIBUDHI', NULL),
(68, 'Vaishy', 'AYODHYA TELI KULA', NULL),
(69, 'Vaishy', 'BEHERA', NULL),
(70, 'Vaishy', 'BHAGAT', NULL),
(71, 'Vaishy', 'BIHAUT', NULL),
(72, 'Vaishy', 'BHATI', NULL),
(73, 'Vaishy', 'GAHLOT', NULL),
(74, 'Vaishy', 'GHANCHI', NULL),
(75, 'Vaishy', 'CHETTY', NULL),
(76, 'Vaishy', 'CHETTY', NULL),
(77, 'Vaishy', 'CHETTIAR', NULL),
(78, 'Vaishy', 'DAS', NULL),
(79, 'Vaishy', 'GAMI', NULL),
(80, 'Vaishy', 'GANGBHOJ', NULL),
(81, 'Vaishy', 'GANJU', NULL),
(82, 'Vaishy', 'GUPT', NULL),
(83, 'Vaishy', 'GAHLOT', NULL),
(84, 'Vaishy', 'JAISWAL', NULL),
(85, 'Vaishy', 'JAISWAR', NULL),
(86, 'Vaishy', 'JAUNPURI', NULL),
(87, 'Vaishy', 'JETHI', NULL),
(88, 'Vaishy', 'KANNAUJIA', NULL),
(89, 'Vaishy', 'KUMAR', NULL),
(90, 'Vaishy', 'LINGAYAT GAUDLA', NULL),
(91, 'Vaishy', 'LAL', NULL),
(92, 'Vaishy', 'MATHUR', NULL),
(93, 'Vaishy', 'MAHAPATRA', NULL),
(94, 'Vaishy', 'MAHASETH', NULL),
(95, 'Vaishy', 'MAHATO', NULL),
(96, 'Vaishy', 'MAHTO', NULL),
(97, 'Vaishy', 'MANDAL', NULL),
(98, 'Vaishy', 'MATI', NULL),
(99, 'Vaishy', 'MODH VANIK', NULL),
(100, 'Vaishy', 'NAYAK', NULL),
(101, 'Vaishy', 'OMAR', NULL),
(102, 'Vaishy', 'PANJIYAR', NULL),
(103, 'Vaishy', 'PARDESHI', NULL),
(104, 'Vaishy', 'PARIHAR', NULL),
(105, 'Vaishy', 'PRANAMI', NULL),
(106, 'Vaishy', 'PRASAD', NULL),
(107, 'Vaishy', 'PAWAR', NULL),
(108, 'Vaishy', 'RATHOR', NULL),
(109, 'Vaishy', 'RAUT', NULL),
(110, 'Vaishy', 'RAM', NULL),
(111, 'Vaishy', 'SAHA', NULL),
(112, 'Vaishy', 'SA', NULL),
(113, 'Vaishy', 'SAHOO', NULL),
(114, 'Vaishy', 'SHELAR', NULL),
(115, 'Vaishy', 'SHREEWAS', NULL),
(116, 'Vaishy', 'SAV', NULL),
(117, 'Vaishy', 'SHAHI', NULL),
(118, 'Vaishy', 'SHINDE', NULL),
(119, 'Vaishy', 'SINHA', NULL),
(120, 'Vaishy', 'SNEHI', NULL),
(121, 'Vaishy', 'SOLANKI', NULL),
(122, 'Vaishy', 'TELANGA TELI KULA', NULL),
(123, 'Vaishy', 'VANIYAR', NULL),
(124, 'Vaishy', 'WAGLE', NULL),
(125, 'Vaishy', 'CHAURIWAR', NULL),
(126, 'Vaishy', 'KOLHEY', NULL),
(127, 'Vaishy', 'KOLHEY', NULL),
(128, 'Vaishy', 'BATHRI SAHU', NULL),
(129, 'Vaishy', 'SAJJAN GAUDLA', NULL),
(130, 'Vaishy', 'MATHURIA', NULL),
(131, 'Vaishy', 'MATHO', NULL),
(132, 'Vaishy', 'MODI', NULL),
(133, 'Vaishy', 'SUBUDHI', NULL),
(134, 'Vaishy', 'BHARTIYA', NULL),
(135, 'Vaishy', 'AGARWAL', NULL),
(136, 'Inter Religion', 'Inter Religion', NULL),
(137, 'Buddhist', 'Swetambara', NULL),
(138, 'Buddhist', 'Digambar', NULL),
(139, 'Buddhist', 'Other', NULL),
(140, 'Sikh', 'Sikh', NULL),
(141, 'Muslim', 'Sunni', NULL),
(142, 'Muslim', 'Shia', NULL),
(143, 'Muslim', 'Other', NULL),
(144, 'Buddhist', 'Mahaayaan', NULL),
(145, 'Buddhist', 'Heenyaan', NULL),
(146, 'Scheduled Caste', 'Chamar', NULL),
(147, 'Scheduled Caste', 'Muchi', NULL),
(148, 'Scheduled Caste', 'Dandashi', NULL),
(149, 'Scheduled Caste', 'Ghasi', NULL),
(150, 'Scheduled Caste', 'Gour', NULL),
(151, 'Scheduled Caste', 'Gur', NULL),
(152, 'Scheduled Caste', 'Kahar', NULL),
(153, 'Scheduled Caste', 'Kaor', NULL),
(154, 'Scheduled Caste', 'Kel', NULL),
(155, 'Scheduled Caste', 'Mahishyadas', NULL),
(156, 'Scheduled Caste', 'Mali', NULL),
(157, 'Scheduled Caste', 'Methar', NULL),
(158, 'Scheduled Caste', 'Mushahar', NULL),
(159, 'Scheduled Caste', 'Sabar', NULL),
(160, 'Scheduled Caste', 'Nat', NULL),
(161, 'Scheduled Caste', 'Natta', NULL),
(162, 'Scheduled Caste', 'Dhuli', NULL),
(163, 'Scheduled Caste', 'Kharia', NULL),
(164, 'Scheduled Caste', 'Dhupi', NULL),
(165, 'Scheduled Caste', 'Keot', NULL),
(166, 'Brahmin', 'Sahu', NULL),
(167, 'Brahmin', 'Sahu', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `time` varchar(60) DEFAULT NULL,
  `ip` varchar(80) DEFAULT NULL,
  `lookfor` varchar(30) DEFAULT NULL,
  `messsage` varchar(300) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `address`, `mobile`, `date`, `time`, `ip`, `lookfor`, `messsage`) VALUES
(136, 'SHIVAKANT', 'LUCKNOW', '9451728780', '14/10/2020', '10:18:pm', 'Lucknow-India-47.8.41.138', 'Life Partner', NULL),
(70, 'Reena kushwaha', 'Padrauna Kushinagar', '9648889223', '13/04/2020', '01:11:pm', 'Lucknow-India-157.43.116.202', 'MYSELF', NULL),
(64, 'Abhishek Kumar Gupta', 'Walidpur   Mau', '9793559515', '12/04/2020', '01:21:pm', 'Lucknow-India-47.8.114.180', 'MYSELF', NULL),
(132, 'ROHIT GUPTA', 'MAU', '7905718151', '04/09/2020', '12:07:am', 'Lucknow-India-157.43.43.19', 'Life Partner', NULL),
(137, 'Girraj kishor sharma', 'Agra', '9837090754', '17/11/2020', '03:59:pm', 'Meerut-India-49.14.129.142', 'Something Else', NULL),
(183, NULL, NULL, '8965814781', NULL, '2020-12-10 20:36:13', 'Bhopal India 47.247.92.79', NULL, NULL),
(127, 'Alok Kumar', 'Khalilabad', '9140266041', '24/06/2020', '06:58:pm', 'Lucknow-India-47.8.145.27', 'Matrimonial Service', NULL),
(116, 'Rubina Kumari', 'Agra', '9149260239', '17/05/2020', '05:39:pm', 'Meerut-India-132.154.70.199', 'Myself', NULL),
(115, 'à¤­à¤°à¤¤ à¤•à¥Œà¤¶à¤² ', 'à¤ˆà¤¨à¤¦à¥Œà¤° ', '9039090845', '14/05/2020', '01:36:am', 'Bhopal-India-27.57.207.78', 'Myself', NULL),
(138, 'Abhishek', 'Patna', '9304893653', '06/12/2020', '10:04:pm', 'Patna-India-223.230.154.161', 'Life Partner', NULL),
(139, 'Vikas kumar agrawal', 'Chatisgarh ', '9399591027', '07/12/2020', '12:44:pm', 'Bilaspur-India-47.247.136.184', '', NULL),
(72, 'Manish sahu', 'Jaipur', '+1919694521362', '13/04/2020', '03:11:pm', 'Jaipur-India-157.37.73.61', 'MYSELF', NULL),
(85, 'suneana', 'azamghar', '887906599', '16/04/2020', '09:54:am', 'Lucknow-India-157.43.67.178', 'DAUGHTER', NULL),
(135, 'SHIVAKANT', 'RAEBARELI', '9451728780', '14/10/2020', '10:18:pm', 'Lucknow-India-47.8.41.138', 'Life Partner', NULL),
(68, 'Sharad Kumar gupta ', 'Mughalsarai', '9919584459', '12/04/2020', '08:29:pm', 'Lucknow-India-47.9.80.190', 'SON', NULL),
(133, '', '', '9598902274', '14/10/2020', '02:44:pm', 'Kanpur-India-47.8.6.250', '', NULL),
(182, NULL, NULL, '7534890453', NULL, '2020-12-10 06:47:55', 'Dehradun India 132.154.111.246', NULL, NULL),
(67, 'HEMANT KUMARI SAHU', 'BALODA BAZAR', '7354118072', '12/04/2020', '03:31:pm', 'Jabalpur-India-106.66.19.174', 'MYSELF', NULL),
(78, 'Rahul kumar gupta', 'Sikanderpur distic ballia', '8948419643', '14/04/2020', '11:42:pm', '-United States-168.235.198.108', 'MYSELF', NULL),
(124, 'Alok Gaurav', 'Azamgarh', '8299517322', '08/06/2020', '11:06:am', 'Lucknow-India-47.8.146.117', 'Digital Marketing', NULL),
(125, 'Amit', 'Indore', '8269288093', '10/06/2020', '02:36:pm', 'Bhopal-India-27.57.199.167', 'Life Partner', NULL),
(62, 'aalok kumar gupta', 'walidpur', '6307181914', '12/04/2020', '09:02:am', 'Lucknow-India-47.8.74.230', 'SON', NULL),
(63, 'DHANENDRA SAHU', 'Bhimbhouri', '7693880810', '12/04/2020', '11:05:am', '-India-157.34.79.65', 'MYSELF', NULL),
(181, 'Shobhit Agarwal', 'Najibabad, Distt Bijnore', '8126576740', '10/12/2020', '02:13:pm', 'Noida-India-103.83.70.12', 'Life Partner', NULL),
(180, NULL, NULL, '8519003303', NULL, '2020-12-09 12:57:49', 'Raipur India 106.207.220.185', NULL, NULL),
(179, NULL, NULL, '7602656161', NULL, '2020-12-09 12:01:25', 'Kolkata India 117.226.137.255', NULL, NULL),
(178, NULL, NULL, '8092053115', NULL, '2020-12-09 09:02:08', ' India 103.149.53.95', NULL, NULL),
(176, NULL, NULL, '9818201482', NULL, '2020-12-09 08:56:00', 'Dehradun India 106.210.113.64', NULL, NULL),
(175, 'Pankaj ', NULL, '8718071885', NULL, '2020-12-09 04:08:33', '  27.97.151.204', NULL, 'A'),
(174, NULL, NULL, '8294929092', NULL, '2020-12-09 01:37:59', 'Patna India 157.42.126.126', NULL, NULL),
(191, 'Rajesh sahu', NULL, '7440624551', NULL, '2020-12-13 11:39:53', 'Bhopal India 47.247.181.187', NULL, 'Jai maa karma devi'),
(172, 'sachin', NULL, '999999999999', NULL, '2020-12-09 01:17:04', 'Lucknow India 47.9.128.86', NULL, 'klkl'),
(173, NULL, NULL, '8395034341', NULL, '2020-12-09 01:35:17', 'Araghar India 106.223.179.207', NULL, NULL),
(190, NULL, NULL, '7440624551', NULL, '2020-12-13 11:03:39', 'Bhopal India 47.247.181.187', NULL, NULL),
(185, 'Sandeep arya', NULL, '8709870487', NULL, '2020-12-11 01:33:36', 'Patna India 157.35.224.13', NULL, 'Cant be open this site'),
(186, NULL, NULL, '8756494201', NULL, '2020-12-12 23:23:22', 'Bhagwanpur India 106.219.130.199', NULL, NULL),
(187, NULL, NULL, '8085811379', NULL, '2020-12-13 09:54:52', 'Indore India 27.56.201.196', NULL, NULL),
(192, NULL, NULL, '9302503010', NULL, '2020-12-13 12:59:46', 'Bhopal India 157.34.65.253', NULL, NULL),
(193, NULL, NULL, '9589760009', NULL, '2020-12-13 14:56:29', 'Bhopal India 106.207.232.23', NULL, NULL),
(194, 'Manoj', NULL, '9589760009', NULL, '2020-12-13 14:59:54', 'Bhopal India 106.207.232.23', NULL, 'Hello '),
(195, 'Manoj', NULL, '9589760009', NULL, '2020-12-13 15:00:03', 'Bhopal India 106.207.232.23', NULL, 'Hello '),
(196, NULL, NULL, '9695288705', NULL, '2020-12-13 20:34:18', 'Lucknow India 47.9.126.70', NULL, NULL),
(231, NULL, NULL, '09999999999', NULL, '18-12-2020 01:59:03pm', 'Lucknow India 47.9.130.109', NULL, NULL),
(232, 'Sachin', NULL, '8989898989', NULL, '20-12-2020 08:31:01pm', 'Lucknow India 47.8.143.31', NULL, 'Gupta'),
(199, NULL, NULL, '7879652047', NULL, '2020-12-14 01:16:24', ' India 157.34.48.250', NULL, NULL),
(200, 'Deepak sahu', NULL, '7879652047', NULL, '2020-12-14 01:17:18', ' India 157.34.48.250', NULL, 'Rishta'),
(255, NULL, NULL, '9832806865', NULL, '10-01-2021 12:47:48pm', 'Tarapith India 157.43.153.178', NULL, NULL),
(233, NULL, NULL, '917798638890', NULL, '22-12-2020 09:11:32pm', 'Pune India 106.220.139.10', NULL, NULL),
(234, NULL, NULL, '8899888899', NULL, '22-12-2020 09:36:39pm', 'Ayodhya India 47.8.63.54', NULL, NULL),
(206, 'Mohansahu', NULL, '6264656950', NULL, '2020-12-14 06:56:03', ' India 157.34.15.200', NULL, 'Mohansahu vilege mundla fouji '),
(235, NULL, NULL, '7440624551', NULL, '25-12-2020 09:17:56pm', 'Chhindwara India 157.34.144.206', NULL, NULL),
(236, NULL, NULL, '09999999999', NULL, '26-12-2020 10:22:11pm', ' India 47.31.42.65', NULL, NULL),
(237, NULL, NULL, '09999999999', NULL, '26-12-2020 10:29:21pm', 'New Delhi India 47.31.6.168', NULL, NULL),
(238, NULL, NULL, '09999999999', NULL, '26-12-2020 10:40:12pm', ' India 47.31.42.65', NULL, NULL),
(239, NULL, NULL, '917798638890', NULL, '26-12-2020 10:59:05pm', ' India 47.31.42.65', NULL, NULL),
(240, NULL, NULL, '9004815175', NULL, '26-12-2020 11:17:00pm', 'Pune India 106.193.85.166', NULL, NULL),
(241, NULL, NULL, '09999999999', NULL, '26-12-2020 11:41:53pm', 'New Delhi India 47.31.6.168', NULL, NULL),
(242, NULL, NULL, '9090909090', NULL, '29-12-2020 02:52:40pm', 'Delhi India 49.36.135.85', NULL, NULL),
(243, NULL, NULL, '923095198278', NULL, '04-01-2021 12:11:32am', 'Lahore Pakistan 103.104.213.118', NULL, NULL),
(244, NULL, NULL, '9653393603', NULL, '06-01-2021 02:13:59pm', 'Lucknow India 47.8.251.60', NULL, NULL),
(245, 'Mukesh Gupta ', NULL, '9653393603', NULL, '06-01-2021 02:30:08pm', 'Lucknow India 47.8.251.60', NULL, 'Sanskari achhi '),
(246, NULL, NULL, '7355790545', NULL, '06-01-2021 03:12:04pm', 'Kanpur India 47.8.38.141', NULL, NULL),
(247, NULL, NULL, '7355790545', NULL, '06-01-2021 03:44:07pm', 'Kanpur India 47.8.38.141', NULL, NULL),
(248, NULL, NULL, '9762723660', NULL, '07-01-2021 09:47:24pm', 'Pune India 42.108.237.75', NULL, NULL),
(249, NULL, NULL, '9044545378', NULL, '07-01-2021 10:06:57pm', 'Lucknow India 47.9.134.1', NULL, NULL),
(250, 'Shivam omar', 'Unnow', '9044545378', '07/01/2021', '10:16:pm', 'Lucknow-India-47.9.134.1', 'Life Partner', NULL),
(251, 'Nitin Gupta', NULL, '9897366748', NULL, '09-01-2021 09:21:29pm', 'New Delhi India 27.63.149.46', NULL, 'Nitin GuptaPersonal Detail'),
(252, NULL, NULL, '9897366748', NULL, '09-01-2021 09:23:51pm', 'New Delhi India 27.63.149.46', NULL, NULL),
(253, NULL, NULL, '9453451828', NULL, '09-01-2021 09:37:47pm', 'Lucknow India 47.9.104.155', NULL, NULL),
(254, NULL, NULL, '9453451828', NULL, '09-01-2021 09:40:33pm', 'Lucknow India 47.9.104.155', NULL, NULL),
(256, NULL, NULL, '9064504158', NULL, '10-01-2021 12:48:28pm', 'Kolkata India 157.43.215.67', NULL, NULL),
(257, NULL, NULL, '9451099919', NULL, '11-01-2021 03:48:09am', 'Lucknow India 117.96.187.105', NULL, NULL),
(258, NULL, NULL, '8862847800', NULL, '11-01-2021 11:32:16pm', 'Dhanbad India 103.76.211.127', NULL, NULL),
(259, 'Deepak gupta', 'Ballia', '9837016236', '13/01/2021', '01:30:pm', 'Mathura-India-103.207.64.252', 'Life Partner', NULL),
(260, NULL, NULL, '8085303611', NULL, '14-01-2021 05:44:36am', 'Bhopal India 27.56.232.200', NULL, NULL),
(261, NULL, NULL, '08789825466', NULL, '17-01-2021 08:04:46am', 'Patna India 157.35.236.136', NULL, NULL),
(262, NULL, NULL, '08789825466', NULL, '17-01-2021 12:54:32pm', 'Patna India 157.42.104.175', NULL, NULL),
(263, NULL, NULL, '9508770604', NULL, '17-01-2021 12:57:47pm', 'Patna India 157.42.104.175', NULL, NULL),
(264, NULL, NULL, '9928368321', NULL, '18-01-2021 05:11:58pm', ' India 115.243.32.210', NULL, NULL),
(265, NULL, NULL, '8448048424', NULL, '19-01-2021 07:10:00pm', 'Delhi India 47.31.203.38', NULL, NULL),
(266, NULL, NULL, '9982282272', NULL, '20-01-2021 12:10:18pm', 'Jaipur India 27.63.72.109', NULL, NULL),
(267, NULL, NULL, '8114053076', NULL, '25-01-2021 01:55:09pm', 'Lucknow India 27.97.13.14', NULL, NULL),
(268, NULL, NULL, '9653035008', NULL, '26-01-2021 10:09:08pm', 'Pune India 152.57.116.245', NULL, NULL),
(269, NULL, NULL, '7905656694', NULL, '28-01-2021 12:32:36am', 'Sangrur India 117.234.94.176', NULL, NULL),
(270, 'Ved Parkash Gupta', NULL, '9990161922', NULL, '28-01-2021 12:05:06pm', 'New Delhi India 42.111.9.26', NULL, 'Marriage second marriage k liy'),
(271, NULL, NULL, '7905007511', NULL, '28-01-2021 08:30:22pm', 'Lucknow India 47.9.133.189', NULL, NULL),
(272, NULL, NULL, '8521657134', NULL, '29-01-2021 09:15:52pm', 'Pauri India 106.215.242.24', NULL, NULL),
(273, NULL, NULL, '9807617785', NULL, '30-01-2021 08:19:38pm', 'Lucknow India 27.60.32.123', NULL, NULL),
(274, NULL, NULL, '8851727890', NULL, '01-02-2021 10:43:11pm', 'Delhi India 47.31.169.102', NULL, NULL),
(275, NULL, NULL, '8358958500', NULL, '02-02-2021 07:36:50pm', 'Kolkata India 47.15.243.231', NULL, NULL),
(276, NULL, NULL, '7905249401', NULL, '08-02-2021 07:42:56am', 'Kolkata India 47.15.235.124', NULL, NULL),
(277, NULL, NULL, '9350910347', NULL, '10-02-2021 09:49:59am', 'Delhi India 1.38.188.89', NULL, NULL),
(278, NULL, NULL, '6394439650', NULL, '10-02-2021 01:11:34pm', 'Lucknow India 47.9.178.168', NULL, NULL),
(279, '9044545378', 'Safipur', '9044545378', '11/02/2021', '10:10:pm', 'Kolkata-India-47.15.198.213', 'Life Partner', NULL),
(280, NULL, NULL, '9044545378', NULL, '11-02-2021 10:13:56pm', 'Kolkata India 47.15.198.213', NULL, NULL),
(281, NULL, NULL, '9415706847', NULL, '13-02-2021 09:57:32am', 'Kolkata India 47.15.163.28', NULL, NULL),
(282, NULL, NULL, '6200210401', NULL, '15-02-2021 06:06:35pm', 'Patna India 171.51.171.252', NULL, NULL),
(283, NULL, NULL, '8543978404', NULL, '15-02-2021 07:28:14pm', 'Lucknow India 47.9.182.119', NULL, NULL),
(284, NULL, NULL, '9560941162', NULL, '15-02-2021 07:42:33pm', 'Lucknow India 47.9.182.119', NULL, NULL),
(285, NULL, NULL, '9450732847', NULL, '15-02-2021 07:52:09pm', 'Lucknow India 47.9.182.119', NULL, NULL),
(286, NULL, NULL, '9956000107', NULL, '15-02-2021 08:04:00pm', 'Lucknow India 47.9.182.119', NULL, NULL),
(287, NULL, NULL, '8840126538', NULL, '15-02-2021 08:40:40pm', 'Lucknow India 47.9.182.119', NULL, NULL),
(288, NULL, NULL, '9717063512', NULL, '15-02-2021 09:48:13pm', 'Jaipur India 157.47.236.134', NULL, NULL),
(289, NULL, NULL, '78878878787', NULL, '15-02-2021 09:57:03pm', 'Jaipur India 157.47.236.134', NULL, NULL),
(290, NULL, NULL, '91989992323', NULL, '15-02-2021 10:09:53pm', 'Jaipur India 157.47.236.134', NULL, NULL),
(292, NULL, NULL, '09999999999', NULL, '15-02-2021 10:56:33pm', 'Jaipur India 157.47.236.134', NULL, NULL),
(293, NULL, NULL, '7004509986', NULL, '20-02-2021 06:58:34pm', 'Kolkata India 42.110.148.80', NULL, NULL),
(294, 'Ayush Gupta', 'Ayodhya', '9120768613', '23/02/2021', '09:48:pm', 'Lucknow-India-47.9.177.11', 'Life Partner', NULL),
(295, 'Ayush Gupta', 'Ayodhya', '9120768613', '23/02/2021', '09:48:pm', 'Lucknow-India-47.9.177.11', 'Life Partner', NULL),
(296, 'Ayush Gupta', 'Ayodhya', '9120768613', '23/02/2021', '09:48:pm', 'Lucknow-India-47.9.177.11', 'Life Partner', NULL),
(297, NULL, NULL, '9120768613', NULL, '23-02-2021 09:50:40pm', 'Lucknow India 47.9.177.11', NULL, NULL),
(298, NULL, NULL, '9024294926', NULL, '24-02-2021 03:27:01pm', 'Alwar India 106.76.71.73', NULL, NULL),
(299, NULL, NULL, '9024294926', NULL, '24-02-2021 03:28:14pm', 'Alwar India 106.76.71.73', NULL, NULL),
(300, 'Anand Verma ', 'Barabanki', '912440484', '28/02/2021', '01:53:pm', 'Lucknow-India-117.96.186.80', 'Life Partner', NULL),
(301, 'Anand Verma ', 'Barabanki', '912440484', '28/02/2021', '01:53:pm', 'Lucknow-India-117.96.186.80', 'Life Partner', NULL),
(302, 'Anand Verma ', 'Barabanki', '912440484', '28/02/2021', '01:53:pm', 'Lucknow-India-117.96.186.80', 'Life Partner', NULL),
(303, 'Lalchand', NULL, '8114450136', NULL, '01-03-2021 11:37:54pm', 'Jaipur India 157.38.10.143', NULL, 'Hello sir'),
(304, NULL, NULL, '9415842710', NULL, '09-03-2021 06:19:11pm', 'Lucknow India 47.9.175.245', NULL, NULL),
(305, NULL, NULL, '9415842710', NULL, '09-03-2021 06:29:16pm', 'Lucknow India 47.9.175.245', NULL, NULL),
(306, NULL, NULL, '9415842710', NULL, '09-03-2021 06:29:40pm', 'Lucknow India 47.9.175.245', NULL, NULL),
(307, NULL, NULL, '8303604233', NULL, '09-03-2021 06:30:59pm', 'Lucknow India 47.9.175.245', NULL, NULL),
(308, NULL, NULL, '6352309586', NULL, '14-03-2021 09:47:25pm', 'Lucknow India 47.9.94.216', NULL, NULL),
(309, NULL, NULL, '9414731897', NULL, '14-03-2021 10:23:51pm', 'Jaipur India 157.47.210.172', NULL, NULL),
(310, ' sandeep kumar', NULL, '9414731897', NULL, '14-03-2021 10:31:10pm', 'Jaipur India 157.47.210.172', NULL, 'free fell contact us'),
(311, NULL, NULL, '8115457402', NULL, '15-03-2021 12:08:26pm', 'Kolkata India 47.15.252.91', NULL, NULL),
(312, NULL, NULL, '9068368704', NULL, '15-03-2021 01:34:11pm', 'New Delhi India 45.117.182.36', NULL, NULL),
(313, NULL, NULL, '7081917272', NULL, '15-03-2021 09:45:07pm', 'Lucknow India 47.8.148.56', NULL, NULL),
(314, NULL, NULL, '7021124317', NULL, '15-03-2021 09:49:00pm', 'Pune India 157.33.50.227', NULL, NULL),
(315, 'Vidhu Shekhar ', NULL, '7068038944', NULL, '16-03-2021 09:32:33am', 'Lucknow India 47.9.150.181', NULL, 'Ok'),
(316, NULL, NULL, '7068038944', NULL, '16-03-2021 09:36:42am', 'Lucknow India 47.9.150.181', NULL, NULL),
(317, NULL, NULL, '9415938764', NULL, '16-03-2021 09:38:48pm', 'Jhansi India 117.96.176.130', NULL, NULL),
(318, NULL, NULL, '9415320400', NULL, '16-03-2021 10:58:18pm', 'Lucknow India 47.8.13.59', NULL, NULL),
(319, NULL, NULL, '9335402922', NULL, '16-03-2021 11:19:11pm', 'Prayagraj India 113.193.132.136', NULL, NULL),
(320, NULL, NULL, '9580478464', NULL, '16-03-2021 11:57:30pm', 'Varanasi India 117.223.235.220', NULL, NULL),
(321, NULL, NULL, '8709974412', NULL, '17-03-2021 11:19:38am', 'Patna India 157.42.60.86', NULL, NULL),
(322, NULL, NULL, '8795054252', NULL, '17-03-2021 11:58:13am', 'Lucknow India 47.9.174.193', NULL, NULL),
(323, 'Raju yadav ', 'Azamgarh', '8115457402', '17/03/2021', '12:38:pm', 'Kolkata-India-47.15.253.96', 'Life Partner', NULL),
(324, NULL, NULL, '7979908202', NULL, '17-03-2021 12:56:28pm', 'Ranchi India 27.61.81.212', NULL, NULL),
(325, NULL, NULL, '7385045314', NULL, '17-03-2021 01:07:59pm', ' India 106.195.11.138', NULL, NULL),
(326, NULL, NULL, '7355036014', NULL, '17-03-2021 04:18:37pm', 'Lucknow India 47.8.61.49', NULL, NULL),
(327, NULL, NULL, '07355036014', NULL, '17-03-2021 04:25:03pm', 'Lucknow India 47.8.61.49', NULL, NULL),
(328, NULL, NULL, '07355036014', NULL, '17-03-2021 04:28:56pm', 'Lucknow India 47.8.61.49', NULL, NULL),
(329, NULL, NULL, '7005790091', NULL, '17-03-2021 04:47:51pm', 'Aizawl India 1.38.132.98', NULL, NULL),
(330, NULL, NULL, '9415006248', NULL, '17-03-2021 07:36:29pm', 'Lucknow India 223.180.176.34', NULL, NULL),
(331, 'Sachin ', NULL, '6395454495', NULL, '17-03-2021 07:44:29pm', 'New Delhi India 132.154.72.189', NULL, 'Hii'),
(332, NULL, NULL, '7209338399', NULL, '17-03-2021 08:05:03pm', 'Patna India 157.42.99.18', NULL, NULL),
(333, NULL, NULL, '7078527297', NULL, '17-03-2021 09:28:55pm', '  82.145.208.176', NULL, NULL),
(334, NULL, NULL, '7002321633', NULL, '17-03-2021 09:36:03pm', 'Guwahati India 47.29.92.134', NULL, NULL),
(335, NULL, NULL, '9123163252', NULL, '18-03-2021 12:14:18am', 'Patna India 157.42.117.58', NULL, NULL),
(336, NULL, NULL, '7525911357', NULL, '18-03-2021 03:15:56am', 'Jammu India 205.253.131.91', NULL, NULL),
(337, NULL, NULL, '9347380764', NULL, '18-03-2021 07:12:18am', 'Hyderabad India 157.48.245.98', NULL, NULL),
(338, NULL, NULL, '9347380764', NULL, '18-03-2021 08:39:12am', 'Hyderabad India 157.48.251.68', NULL, NULL),
(339, NULL, NULL, '9347380764', NULL, '18-03-2021 09:26:43am', 'Hyderabad India 157.48.237.210', NULL, NULL),
(340, NULL, NULL, '8858238545', NULL, '18-03-2021 10:26:12am', 'Lucknow India 47.9.189.169', NULL, NULL),
(341, NULL, NULL, '8080783852', NULL, '18-03-2021 10:37:29am', 'Lucknow India 47.9.189.169', NULL, NULL),
(342, NULL, NULL, '8080783852', NULL, '18-03-2021 10:38:25am', 'Lucknow India 47.9.189.169', NULL, NULL),
(343, NULL, NULL, '7068038944', NULL, '18-03-2021 10:40:32am', 'Kolkata India 47.15.237.227', NULL, NULL),
(344, NULL, NULL, '8080783852', NULL, '18-03-2021 10:41:40am', 'Lucknow India 47.9.189.169', NULL, NULL),
(345, NULL, NULL, '7068038944', NULL, '18-03-2021 10:42:46am', 'Kolkata India 47.15.237.227', NULL, NULL),
(346, NULL, NULL, '9172597453', NULL, '18-03-2021 10:49:51am', 'Lucknow India 47.9.189.169', NULL, NULL),
(347, NULL, NULL, '7497925117', NULL, '18-03-2021 10:57:52am', 'Lucknow India 47.9.189.169', NULL, NULL),
(348, NULL, NULL, '9905500191', NULL, '18-03-2021 11:05:17am', 'Lucknow India 47.9.189.169', NULL, NULL),
(349, NULL, NULL, '7000087304', NULL, '18-03-2021 11:09:31am', 'Bhopal India 47.247.204.104', NULL, NULL),
(350, 'Siva', NULL, '7909975074', NULL, '18-03-2021 12:54:08pm', 'Raipur India 27.62.145.15', NULL, 'Sadi Karna ha I'),
(351, NULL, NULL, '7007338525', NULL, '18-03-2021 05:41:31pm', 'Kolkata India 47.15.159.91', NULL, NULL),
(352, 'Sikandar Paswan', NULL, '7007338525', NULL, '18-03-2021 06:41:43pm', 'Kolkata India 47.15.158.111', NULL, 'Hi'),
(353, NULL, NULL, '7756041091', NULL, '18-03-2021 08:05:39pm', 'Pune India 106.220.189.150', NULL, NULL),
(354, 'Nikesh kumar', NULL, '7058680313', NULL, '18-03-2021 08:06:38pm', 'Lucknow India 27.63.60.184', NULL, 'Job vali se bind smaj se ho'),
(355, NULL, NULL, '7058680313', NULL, '18-03-2021 08:08:53pm', 'Lucknow India 27.63.60.184', NULL, NULL),
(356, NULL, NULL, '9204589216', NULL, '18-03-2021 08:27:14pm', 'Patna India 157.35.236.12', NULL, NULL),
(357, 'Sanjeevtevaree', NULL, '9598902274', NULL, '18-03-2021 09:14:32pm', 'Lucknow India 27.97.3.118', NULL, 'LADKE'),
(358, NULL, NULL, '8369214997', NULL, '18-03-2021 10:31:33pm', 'Mumbai India 49.33.231.61', NULL, NULL),
(359, NULL, NULL, '9685727776', NULL, '18-03-2021 11:31:04pm', 'Bhopal India 27.62.247.164', NULL, NULL),
(360, NULL, NULL, '7080479749', NULL, '18-03-2021 11:57:07pm', 'Bengaluru India 157.45.166.248', NULL, NULL),
(361, NULL, NULL, '8828153831', NULL, '19-03-2021 07:16:39am', 'Lucknow India 117.96.187.202', NULL, NULL),
(362, NULL, NULL, '9450079544', NULL, '19-03-2021 07:27:17am', 'Lucknow India 117.96.187.202', NULL, NULL),
(363, NULL, NULL, '8269412097', NULL, '19-03-2021 07:34:15am', 'Bhopal India 47.247.192.138', NULL, NULL),
(364, NULL, NULL, '9198858101', NULL, '19-03-2021 08:51:05am', 'Jaunpur India 223.225.247.119', NULL, NULL),
(365, NULL, NULL, '6205227066', NULL, '19-03-2021 08:54:34am', 'Ludhiana India 157.39.76.220', NULL, NULL),
(366, NULL, NULL, '9453282861', NULL, '19-03-2021 09:07:56am', 'Varanasi India 106.76.154.108', NULL, NULL),
(367, NULL, NULL, '7068038944', NULL, '19-03-2021 09:53:53am', 'Lucknow India 47.9.137.201', NULL, NULL),
(368, 'Video shekhar', NULL, '7068038944', NULL, '19-03-2021 09:58:35am', 'Lucknow India 47.9.137.201', NULL, 'No open'),
(369, NULL, NULL, '7068038944', NULL, '19-03-2021 11:18:10am', 'Lucknow India 47.9.137.187', NULL, NULL),
(370, NULL, NULL, '7068038944', NULL, '19-03-2021 11:50:39am', 'Lucknow India 47.9.137.187', NULL, NULL),
(371, NULL, NULL, '7277647339', NULL, '19-03-2021 02:22:49pm', 'Patna India 157.42.67.147', NULL, NULL),
(372, NULL, NULL, '8368054586', NULL, '19-03-2021 04:47:11pm', 'Delhi India 103.224.146.35', NULL, NULL),
(373, NULL, NULL, '9161241499', NULL, '20-03-2021 02:31:44am', 'Mumbai India 106.209.186.222', NULL, NULL),
(374, NULL, NULL, '9161241487', NULL, '20-03-2021 02:32:37am', 'Mumbai India 106.209.186.222', NULL, NULL),
(375, NULL, NULL, '07039999698', NULL, '20-03-2021 07:40:47pm', 'Mumbai India 223.229.226.188', NULL, NULL),
(376, 'Deepak Sahu', 'Mumbai', '07039999698', '20/03/2021', '07:47:pm', 'Mumbai-India-223.229.226.188', 'Life Partner', NULL),
(377, NULL, NULL, '7436050583', NULL, '20-03-2021 11:16:52pm', 'Rajkot India 1.38.69.76', NULL, NULL),
(378, NULL, NULL, '8924001857', NULL, '21-03-2021 11:46:29am', 'Lucknow India 171.76.254.212', NULL, NULL),
(379, 'Arvind mishra', NULL, '8924001857', NULL, '21-03-2021 04:56:25pm', 'Lucknow India 171.76.250.228', NULL, 'Hamko life partner chahiye'),
(380, NULL, NULL, '7860816321', NULL, '21-03-2021 07:16:11pm', 'Lucknow India 47.9.157.139', NULL, NULL),
(381, NULL, NULL, '7860816321', NULL, '21-03-2021 07:16:12pm', 'Lucknow India 47.9.157.139', NULL, NULL),
(382, NULL, NULL, '9935435108', NULL, '21-03-2021 07:46:21pm', 'Lucknow India 47.9.157.139', NULL, NULL),
(383, NULL, NULL, '7580814643', NULL, '21-03-2021 10:23:42pm', 'Raipur India 157.34.46.91', NULL, NULL),
(384, NULL, NULL, '9045585842', NULL, '22-03-2021 01:55:53pm', 'Saharanpur India 117.211.14.130', NULL, NULL),
(385, NULL, NULL, '9868784291', NULL, '22-03-2021 03:53:17pm', 'Gurgaon India 111.93.193.50', NULL, NULL),
(386, NULL, NULL, '7768096107', NULL, '23-03-2021 12:06:44am', 'Pune India 106.210.216.189', NULL, NULL),
(387, NULL, NULL, '7580814643', NULL, '23-03-2021 10:52:52am', 'Lucknow India 47.9.146.122', NULL, NULL),
(388, 'Sheetal sahu', 'Jabalpur', '7580814643', '23/03/2021', '01:23:pm', 'Bhopal-India-157.34.60.160', 'Life Partner', NULL),
(389, NULL, NULL, '9576221020', NULL, '04-04-2021 01:15:31pm', 'Gaya India 223.228.249.226', NULL, NULL),
(390, NULL, NULL, '7355124591', NULL, '06-04-2021 08:36:38pm', 'Lucknow India 122.163.150.229', NULL, NULL),
(391, NULL, NULL, '8318095742', NULL, '12-04-2021 07:44:09pm', 'Lucknow India 47.9.104.216', NULL, NULL),
(392, NULL, NULL, '08210584859', NULL, '15-04-2021 08:52:58pm', 'Patna India 157.35.254.251', NULL, NULL),
(393, NULL, NULL, '8240517329', NULL, '18-04-2021 02:31:32pm', 'Kolkata India 157.40.82.12', NULL, NULL),
(394, NULL, NULL, '7800782062', NULL, '24-04-2021 08:02:35pm', ' India 223.189.201.166', NULL, NULL),
(395, NULL, NULL, '7410987581', NULL, '25-04-2021 07:29:14am', 'Jaipur India 42.105.57.119', NULL, NULL),
(396, NULL, NULL, '917355325987', NULL, '30-04-2021 05:24:45pm', 'Lucknow India 47.8.40.89', NULL, NULL),
(397, NULL, NULL, '7985204258', NULL, '30-04-2021 05:27:08pm', 'Jaipur India 157.37.188.13', NULL, NULL),
(398, NULL, NULL, '8707693432', NULL, '30-04-2021 05:34:29pm', 'Lucknow India 47.9.65.0', NULL, NULL),
(399, NULL, NULL, '7675808983', NULL, '30-04-2021 09:03:35pm', 'Guwahati India 223.238.107.80', NULL, NULL),
(400, NULL, NULL, '7675808983', NULL, '30-04-2021 09:08:21pm', 'Guwahati India 223.238.107.80', NULL, NULL),
(401, NULL, NULL, '7675808983', NULL, '30-04-2021 09:08:22pm', 'Guwahati India 223.238.107.80', NULL, NULL),
(402, 'Ram Chandra sir', NULL, '7675808903', NULL, '30-04-2021 09:28:10pm', 'Guwahati India 223.238.107.80', NULL, 'sir invalid id showing kar rha'),
(403, NULL, NULL, '8240517329', NULL, '01-05-2021 03:20:50pm', 'Kolkata India 157.40.101.37', NULL, NULL),
(404, 'Bina shaw', 'Calcutta', '8240517329', '01/05/2021', '03:23:pm', 'Kolkata-India-157.40.101.37', 'Life Partner', NULL),
(405, NULL, NULL, '9919274568', NULL, '04-05-2021 09:26:39am', 'Lucknow India 47.9.70.151', NULL, NULL),
(406, NULL, NULL, '09621949452', NULL, '04-05-2021 09:42:08am', 'Kanpur India 171.76.231.121', NULL, NULL),
(407, NULL, NULL, '6393310026', NULL, '04-05-2021 10:30:50am', 'Lucknow India 47.9.180.63', NULL, NULL),
(408, 'Jyoti Gupta', NULL, '6393310026', NULL, '04-05-2021 10:36:28am', 'Lucknow India 47.9.180.63', NULL, 'Hlo call me'),
(409, 'Jyoti Gupta', NULL, '6393310026', NULL, '04-05-2021 10:37:03am', 'Lucknow India 47.9.180.63', NULL, 'Whatsapp'),
(410, NULL, NULL, '7080213252', NULL, '04-05-2021 12:09:08pm', 'Jaunpur India 223.225.247.183', NULL, NULL),
(411, NULL, NULL, '9806427355', NULL, '04-05-2021 12:22:45pm', 'Bhopal India 157.34.119.225', NULL, NULL),
(412, NULL, NULL, '8240517329', NULL, '04-05-2021 01:11:38pm', 'Kolkata India 157.40.108.92', NULL, NULL),
(413, NULL, NULL, '9084390048', NULL, '06-05-2021 11:11:53am', ' India 49.36.220.86', NULL, NULL),
(414, NULL, NULL, '9997035555', NULL, '08-05-2021 02:48:29am', 'Delhi India 27.63.190.126', NULL, NULL),
(415, NULL, NULL, '8095382716', NULL, '08-05-2021 08:34:54pm', 'Mumbai India 111.125.217.83', NULL, NULL),
(416, NULL, NULL, '9464674633', NULL, '10-05-2021 11:37:10am', 'Ludhiana India 106.204.196.115', NULL, NULL),
(417, NULL, NULL, '8896769000', NULL, '10-05-2021 01:00:58pm', 'Kanpur India 171.76.227.176', NULL, NULL),
(418, 'Sachin', NULL, '8989898989', NULL, '11-05-2021 08:47:41pm', 'Prayagraj India 47.8.75.82', NULL, 'Gggg'),
(419, NULL, NULL, '9919155776', NULL, '13-05-2021 09:46:29am', 'Lucknow India 117.96.172.113', NULL, NULL),
(420, NULL, NULL, '9616642508', NULL, '13-05-2021 09:51:43am', 'Lucknow India 47.9.84.94', NULL, NULL),
(421, NULL, NULL, '7017548838', NULL, '13-05-2021 09:58:24am', ' India 106.211.16.24', NULL, NULL),
(422, NULL, NULL, '8081358843', NULL, '13-05-2021 10:02:28am', 'Kolkata India 47.15.236.59', NULL, NULL),
(423, NULL, NULL, '9616183709', NULL, '13-05-2021 10:02:56am', 'Arail India 47.8.85.142', NULL, NULL),
(424, NULL, NULL, '9005107920', NULL, '13-05-2021 10:19:04am', 'Lucknow India 223.180.180.88', NULL, NULL),
(425, NULL, NULL, '7318379880', NULL, '13-05-2021 10:20:05am', 'Lucknow India 27.60.33.239', NULL, NULL),
(426, NULL, NULL, '7985228105', NULL, '13-05-2021 10:47:42am', 'Kolkata India 47.15.213.179', NULL, NULL),
(427, NULL, NULL, '7266866344', NULL, '13-05-2021 11:25:28am', 'Lucknow India 27.60.68.143', NULL, NULL),
(428, NULL, NULL, '7906077160', NULL, '13-05-2021 01:09:18pm', 'Lucknow India 47.9.78.72', NULL, NULL),
(429, NULL, NULL, '6395132840', NULL, '13-05-2021 01:24:54pm', 'New Delhi India 132.154.85.208', NULL, NULL),
(430, NULL, NULL, '7905676332', NULL, '13-05-2021 01:51:49pm', 'Kolkata India 47.15.244.20', NULL, NULL),
(431, NULL, NULL, '7007053436', NULL, '13-05-2021 01:58:20pm', 'Lucknow India 47.9.70.200', NULL, NULL),
(432, NULL, NULL, '8445929281', NULL, '13-05-2021 02:04:17pm', 'Singapore Singapore 172.104.170.183', NULL, NULL),
(433, 'Shekhar Rajora', NULL, '8445929281', NULL, '13-05-2021 02:05:48pm', 'Singapore Singapore 172.104.170.183', NULL, 'Please contact me '),
(434, NULL, NULL, '8824719704', NULL, '13-05-2021 02:17:46pm', 'Jaipur India 171.79.152.33', NULL, NULL),
(435, 'Bharat mina', 'Alwar ( Rajasthan)', '8824719704', '13/05/2021', '02:23:pm', 'Jaipur-India-171.79.152.33', 'Life Partner', NULL),
(436, NULL, NULL, '9306390985', NULL, '13-05-2021 02:33:40pm', 'Rohtak India 157.36.85.161', NULL, NULL),
(437, NULL, NULL, '9306390985', NULL, '13-05-2021 02:35:35pm', 'Rohtak India 157.36.85.161', NULL, NULL),
(438, NULL, NULL, '8077558346', NULL, '13-05-2021 02:53:02pm', 'Delhi India 223.227.92.142', NULL, NULL),
(439, NULL, NULL, '9039688936', NULL, '13-05-2021 02:55:25pm', 'Kanpur India 171.76.231.252', NULL, NULL),
(440, NULL, NULL, '7508438085', NULL, '13-05-2021 02:57:03pm', 'Ludhiana India 157.39.13.72', NULL, NULL),
(441, NULL, NULL, '8692981453', NULL, '13-05-2021 03:00:32pm', 'Mumbai India 42.106.200.240', NULL, NULL),
(442, 'Rishi', NULL, '9039688936', NULL, '13-05-2021 03:01:12pm', 'Kanpur India 171.76.231.252', NULL, 'Only jatav community'),
(443, NULL, NULL, '8638302828', NULL, '13-05-2021 04:46:52pm', 'Guwahati India 47.29.235.98', NULL, NULL),
(444, NULL, NULL, '8115557603', NULL, '13-05-2021 08:27:13pm', 'Lucknow India 112.79.129.88', NULL, NULL),
(445, NULL, NULL, '8685036196', NULL, '14-05-2021 09:34:38am', 'Karnal India 42.109.206.54', NULL, NULL),
(446, NULL, NULL, '9889185363', NULL, '14-05-2021 05:03:53pm', 'Prayagraj India 27.97.246.102', NULL, NULL),
(447, NULL, NULL, '9807719509', NULL, '14-05-2021 08:17:14pm', 'Kolkata India 47.15.205.88', NULL, NULL),
(448, NULL, NULL, '9993027666', NULL, '14-05-2021 09:55:48pm', 'Indore India 110.224.188.232', NULL, NULL),
(449, NULL, NULL, '08077880142', NULL, '15-05-2021 10:40:29am', 'New Delhi India 139.167.203.153', NULL, NULL),
(450, NULL, NULL, '8652405932', NULL, '15-05-2021 10:59:53pm', 'Lucknow India 112.79.163.183', NULL, NULL),
(451, NULL, NULL, '9897197765', NULL, '15-05-2021 11:16:11pm', 'Gorakhpur India 103.61.113.140', NULL, NULL),
(452, NULL, NULL, '9511044477', NULL, '16-05-2021 09:01:22am', 'Kanpur India 106.205.18.160', NULL, NULL),
(453, NULL, NULL, '7096913919', NULL, '17-05-2021 07:47:28am', 'Ahmedabad India 27.61.208.98', NULL, NULL),
(454, NULL, NULL, '7078809872', NULL, '19-05-2021 05:08:32pm', 'New Delhi India 132.154.21.117', NULL, NULL),
(455, NULL, NULL, '9813823288', NULL, '19-05-2021 05:25:15pm', ' Nepal 36.252.181.145', NULL, NULL),
(456, NULL, NULL, '8709157575', NULL, '19-05-2021 06:14:47pm', 'Patna India 157.42.221.248', NULL, NULL),
(457, NULL, NULL, '9903131149', NULL, '19-05-2021 08:38:10pm', 'Shillong India 157.40.150.218', NULL, NULL),
(458, NULL, NULL, '7895377600', NULL, '20-05-2021 03:28:38pm', 'Patna India 47.9.229.56', NULL, NULL),
(459, NULL, NULL, '7985556537', NULL, '22-05-2021 05:00:38pm', 'Lucknow India 47.9.171.52', NULL, NULL),
(460, NULL, NULL, '9935082701', NULL, '24-05-2021 01:23:27pm', 'Lucknow India 223.225.124.91', NULL, NULL),
(461, NULL, NULL, '7292887210', NULL, '26-05-2021 02:42:11pm', ' India 106.206.206.27', NULL, NULL),
(462, NULL, NULL, '09455825525', NULL, '27-05-2021 10:53:56am', 'Gorakhpur India 114.31.130.131', NULL, NULL),
(463, NULL, NULL, '9102064550', NULL, '27-05-2021 10:11:31pm', 'Jamshedpur India 27.61.91.229', NULL, NULL),
(464, NULL, NULL, '8260757894', NULL, '28-05-2021 08:21:33pm', 'Bhubaneswar India 106.207.87.195', NULL, NULL),
(465, NULL, NULL, '8260757894', NULL, '28-05-2021 08:21:34pm', 'Bhubaneswar India 106.207.87.195', NULL, NULL),
(466, NULL, NULL, '8260757894', NULL, '28-05-2021 08:21:35pm', 'Bhubaneswar India 106.207.87.195', NULL, NULL),
(467, NULL, NULL, '8260757894', NULL, '28-05-2021 08:21:36pm', 'Bhubaneswar India 106.207.87.195', NULL, NULL),
(468, NULL, NULL, '9329219308', NULL, '29-05-2021 02:41:37pm', 'Jabalpur India 106.66.19.70', NULL, NULL),
(469, NULL, NULL, '9627636495', NULL, '31-05-2021 11:53:33am', 'New Delhi India 139.167.168.83', NULL, NULL),
(470, NULL, NULL, '8736863469', NULL, '02-06-2021 06:24:28pm', 'Lucknow India 47.9.183.227', NULL, NULL),
(471, NULL, NULL, '9565888234', NULL, '03-06-2021 11:29:32am', 'New Delhi India 139.167.217.219', NULL, NULL),
(472, NULL, NULL, '7509246566', NULL, '03-06-2021 06:06:08pm', ' India 157.34.215.181', NULL, NULL),
(473, NULL, NULL, '7509246566', NULL, '03-06-2021 06:06:08pm', ' India 157.34.215.181', NULL, NULL),
(474, NULL, NULL, '6393071482', NULL, '04-06-2021 02:16:31pm', 'Lucknow India 47.9.148.118', NULL, NULL),
(475, 'Dattaram', NULL, '8805201482', NULL, '04-06-2021 05:02:43pm', 'Pune India 157.33.117.14', NULL, 'I want second marrige profile'),
(476, NULL, NULL, '09011331750', NULL, '04-06-2021 05:26:16pm', 'Pune India 152.57.35.179', NULL, NULL),
(477, NULL, NULL, '09011331750', NULL, '04-06-2021 05:26:17pm', 'Pune India 152.57.35.179', NULL, NULL),
(478, NULL, NULL, '9869021429', NULL, '04-06-2021 07:01:43pm', 'Mumbai India 45.127.45.79', NULL, NULL),
(479, NULL, NULL, '7905676885', NULL, '05-06-2021 01:28:04am', 'Lucknow India 47.9.89.41', NULL, NULL),
(480, NULL, NULL, '8805201482', NULL, '05-06-2021 10:06:26pm', 'Pune India 157.33.28.135', NULL, NULL),
(481, 'Dattaram patil', 'Goa margao', '8805201482', '05/06/2021', '10:13:pm', 'Pune-India-157.33.28.135', 'Life Partner', NULL),
(482, 'Dattaram', 'Goa marago', '8805201482', '05/06/2021', '10:16:pm', 'Pune-India-157.33.28.135', 'Life Partner', NULL),
(483, NULL, NULL, '9827798660', NULL, '05-06-2021 11:27:23pm', 'Indore India 157.34.100.70', NULL, NULL),
(484, 'Jai', NULL, '9827798660', NULL, '05-06-2021 11:31:52pm', 'Indore India 157.34.100.70', NULL, 'Mujhe aage kya krna he'),
(485, NULL, NULL, '9634423291', NULL, '06-06-2021 07:58:01am', 'Ramnagar India 49.15.231.180', NULL, NULL),
(486, NULL, NULL, '8887537876', NULL, '06-06-2021 01:43:42pm', 'Lucknow India 27.60.107.227', NULL, NULL),
(487, NULL, NULL, '7979754049', NULL, '06-06-2021 10:34:49pm', 'Patna India 157.42.109.107', NULL, NULL),
(488, NULL, NULL, '8115457402', NULL, '07-06-2021 05:12:11pm', 'Lucknow India 47.9.80.223', NULL, NULL),
(489, NULL, NULL, '9451939915', NULL, '07-06-2021 05:19:00pm', 'Lucknow India 47.9.80.223', NULL, NULL),
(490, NULL, NULL, '8808618925', NULL, '07-06-2021 05:39:28pm', 'Lucknow India 47.9.80.223', NULL, NULL),
(491, NULL, NULL, '9960658665', NULL, '07-06-2021 05:55:09pm', 'Lucknow India 47.9.80.223', NULL, NULL),
(492, NULL, NULL, '9820293826', NULL, '07-06-2021 06:02:42pm', 'Lucknow India 47.9.80.223', NULL, NULL),
(493, NULL, NULL, '9889929954', NULL, '07-06-2021 06:09:34pm', 'Lucknow India 47.9.80.223', NULL, NULL),
(494, NULL, NULL, '9762731915', NULL, '07-06-2021 06:21:57pm', 'Lucknow India 47.9.80.223', NULL, NULL),
(495, NULL, NULL, '8115457402', NULL, '07-06-2021 07:15:35pm', 'Lucknow India 47.9.80.223', NULL, NULL),
(496, NULL, NULL, '9452404337', NULL, '10-06-2021 11:00:48pm', 'Lucknow India 47.9.153.209', NULL, NULL),
(497, NULL, NULL, '7080213252', NULL, '13-06-2021 07:22:45pm', 'Lucknow India 223.225.123.164', NULL, NULL),
(498, NULL, NULL, '9716574663', NULL, '17-06-2021 08:08:40pm', 'New Delhi India 103.79.169.122', NULL, NULL),
(499, NULL, NULL, '9129932678', NULL, '24-06-2021 09:30:13am', 'Lucknow India 171.76.253.20', NULL, NULL),
(500, NULL, NULL, '9999999999', NULL, '07-07-2021 11:21:10pm', '103.248.174.95', NULL, NULL),
(501, 'Hello', NULL, '6666666666', NULL, '07-07-2021 11:38:43pm', '157.37.158.214', NULL, 'Bbxnnxx'),
(502, 'Sachin', NULL, '66469494949', NULL, '07-07-2021 11:41:17pm', '157.37.158.214', NULL, 'Bbxbbxbxd'),
(503, 'Shshshs', NULL, '361616464', NULL, '07-07-2021 11:43:07pm', '157.37.158.214', NULL, 'Bbxbdbdbbd'),
(504, 'Jjuuuubb', NULL, '994994944699', NULL, '07-07-2021 11:44:09pm', '157.37.158.214', NULL, 'Cnnnnnfncnc'),
(505, 'Tttt', NULL, '6676646676', NULL, '07-07-2021 11:48:30pm', '157.37.158.214', NULL, 'Bxxbbxbbd'),
(506, 'rajnish', NULL, '9807719509', NULL, '12-07-2021 04:47:19pm', '47.15.7.133', NULL, 'call mi'),
(507, NULL, NULL, '8299172953', NULL, '14-07-2021 11:57:44am', '47.9.97.55', NULL, NULL),
(508, NULL, NULL, '8171557186', NULL, '14-07-2021 11:59:21am', '47.9.97.55', NULL, NULL),
(509, NULL, NULL, '9807952789', NULL, '16-07-2021 08:20:00pm', '27.60.78.241', NULL, NULL),
(510, NULL, NULL, '9956764315', NULL, '17-07-2021 11:01:16pm', '47.15.17.43', NULL, NULL),
(511, NULL, NULL, '9807952789', NULL, '17-07-2021 11:12:49pm', '47.15.17.43', NULL, NULL),
(512, NULL, NULL, '9807952789', NULL, '18-07-2021 11:19:24pm', '47.9.79.238', NULL, NULL),
(513, NULL, NULL, '8989898989', NULL, '18-07-2021 11:22:59pm', '103.248.174.55', NULL, NULL),
(514, NULL, NULL, '83673193517', NULL, '24-07-2021 12:43:56pm', '83.139.135.179', NULL, NULL),
(515, 'Harish singh', NULL, '9956767356', NULL, '30-07-2021 08:29:30pm', '223.189.245.139', NULL, 'Main sadi ke liye aaplayi'),
(516, NULL, NULL, '8285801202', NULL, '15-08-2021 06:59:35pm', '49.15.69.199', NULL, NULL),
(517, NULL, NULL, '9140732547', NULL, '23-08-2021 12:21:13pm', '112.79.124.142', NULL, NULL),
(518, NULL, NULL, '7979898989', NULL, '23-08-2021 12:25:51pm', '60.254.79.140', NULL, NULL),
(519, NULL, NULL, '8887963994', NULL, '28-08-2021 09:32:03am', '47.15.23.112', NULL, NULL),
(520, NULL, NULL, '8527055994', NULL, '02-09-2021 12:42:24pm', '106.210.11.78', NULL, NULL),
(521, NULL, NULL, '9350563931', NULL, '02-09-2021 11:41:20pm', '47.31.193.173', NULL, NULL),
(522, NULL, NULL, '9350563931', NULL, '02-09-2021 11:43:55pm', '47.31.193.173', NULL, NULL),
(523, NULL, NULL, '9791187282', NULL, '06-09-2021 06:15:23pm', '103.89.56.5', NULL, NULL),
(524, NULL, NULL, '9651869063', NULL, '06-09-2021 11:40:44pm', '47.15.22.238', NULL, NULL),
(525, NULL, NULL, '7905248230', NULL, '12-09-2021 11:42:06pm', '47.9.170.114', NULL, NULL),
(526, NULL, NULL, '88538927209', NULL, '14-09-2021 01:01:15am', '171.76.142.115', NULL, NULL),
(527, NULL, NULL, '8303433059', NULL, '11-10-2021 02:11:55pm', '47.9.84.130', NULL, NULL),
(528, NULL, NULL, '8887965036', NULL, '14-10-2021 08:18:35pm', '103.107.93.49', NULL, NULL),
(529, NULL, NULL, '9996296467', NULL, '14-10-2021 09:44:40pm', '106.196.36.121', NULL, NULL),
(530, 'Parveen kumar', NULL, '9996296467', NULL, '14-10-2021 09:49:20pm', '106.196.36.121', NULL, 'Marriage '),
(531, NULL, NULL, '8423246723', NULL, '19-10-2021 12:12:35pm', '47.15.18.197', NULL, NULL),
(532, NULL, NULL, '9726888065', NULL, '23-10-2021 11:37:46pm', '106.205.233.91', NULL, NULL),
(533, NULL, NULL, '8700861995', NULL, '30-10-2021 01:17:18am', '106.215.85.51', NULL, NULL),
(534, NULL, NULL, '7860606062', NULL, '16-11-2021 12:36:50am', '47.15.6.221', NULL, NULL),
(566, 'kljkjlkj', NULL, '798989898', NULL, '08-12-2021 09:23:07am', '157.37.177.155', NULL, 'mnnmnmm'),
(565, 'kljklklkl', NULL, '0839403', NULL, '08-12-2021 09:21:51am', '157.37.177.155', NULL, 'lkjlskjlkdjlfsdf'),
(551, NULL, NULL, '08417975555', NULL, '01-12-2021 12:22:39am', '47.9.70.108', NULL, NULL),
(550, NULL, NULL, '9455597051', NULL, '30-11-2021 10:48:03pm', '157.35.71.38', NULL, NULL),
(549, 'VENKAPPA Gowda Bangalore ', NULL, '9742468657', NULL, '30-11-2021 09:02:34pm', '1.39.135.85', NULL, 'GHAR jamai PE SHADI KELIYE KOI'),
(548, NULL, NULL, '8849065603', NULL, '30-11-2021 09:56:46am', '157.32.114.131', NULL, NULL),
(552, NULL, NULL, '9414501026', NULL, '01-12-2021 09:25:42am', '157.38.36.248', NULL, NULL),
(553, NULL, NULL, '9936541354', NULL, '02-12-2021 02:35:10pm', '47.9.90.42', NULL, NULL),
(554, NULL, NULL, '9106038665', NULL, '02-12-2021 11:41:03pm', '157.32.94.218', NULL, NULL),
(555, NULL, NULL, '9670971524', NULL, '03-12-2021 02:33:29pm', '47.15.133.204', NULL, NULL),
(556, 'Sunil jaat', NULL, '9549741177', NULL, '03-12-2021 08:59:36pm', '157.38.65.86', NULL, 'Rupye kitne legenge'),
(576, 'klkj', 'Jaipur-India', '2323232', NULL, '09-12-2021 12:19:32am', '157.37.181.102', NULL, 'ljkljlklk'),
(558, NULL, NULL, '7982869607', NULL, '03-12-2021 09:51:04pm', '47.31.210.166', NULL, NULL),
(559, NULL, NULL, '7071728559', NULL, '05-12-2021 12:35:28pm', '106.205.32.72', NULL, NULL),
(560, NULL, NULL, '7007700940', NULL, '05-12-2021 05:17:35pm', '47.15.19.8', NULL, NULL),
(561, NULL, NULL, '7052227662', NULL, '05-12-2021 05:48:54pm', '47.15.13.206', NULL, NULL),
(579, NULL, 'Lucknow-India', '8081277215', NULL, '23-12-2021 12:02:34pm', '47.9.87.123', NULL, NULL),
(580, NULL, 'Lahore-Pakistan', '03099639742', NULL, '19-01-2022 06:12:37pm', '119.160.98.15', NULL, NULL),
(581, NULL, 'Mumbai-India', '7021744770', NULL, '23-01-2022 07:07:55am', '49.32.198.69', NULL, NULL),
(582, NULL, 'Delhi-India', '9717270371', NULL, '15-02-2022 05:26:35am', '42.108.164.130', NULL, NULL),
(583, NULL, 'Kanpur-India', '9090909090', NULL, '17-02-2022 10:03:54am', '110.235.239.248', NULL, NULL),
(584, NULL, 'Kolkata-India', '6394956527', NULL, '18-02-2022 12:06:17pm', '47.15.183.228', NULL, NULL),
(577, 'jjjllkjl', 'Jaipur-India', '2222222', NULL, '09-12-2021 12:20:39am', '157.37.181.102', NULL, 'jkjljkjk'),
(578, NULL, 'Jajpur-India', '7488642327', NULL, '13-12-2021 10:50:52am', '157.35.93.4', NULL, NULL),
(585, 'Kailash Gupta', 'Delhi-India', '9717270371', NULL, '18-02-2022 12:21:30pm', '42.108.164.130', NULL, 'Hi'),
(586, NULL, '-India', '9717270371', NULL, '20-02-2022 01:18:48pm', '42.105.87.39', NULL, NULL),
(587, NULL, 'Lucknow-India', '9470522851', NULL, '28-02-2022 07:58:27am', '47.9.70.3', NULL, NULL),
(588, NULL, 'Lucknow-India', '6387981434', NULL, '28-02-2022 08:08:23am', '47.9.70.3', NULL, NULL),
(589, NULL, 'Lucknow-India', '9831038238', NULL, '28-02-2022 08:15:56am', '47.9.70.3', NULL, NULL),
(590, NULL, 'Kolkata-India', '9658590570', NULL, '28-02-2022 08:19:17pm', '47.15.14.202', NULL, NULL),
(591, NULL, 'Kolkata-India', '7759816384', NULL, '28-02-2022 08:27:19pm', '47.15.14.202', NULL, NULL),
(592, NULL, 'Kolkata-India', '7666916261', NULL, '28-02-2022 08:38:53pm', '47.15.14.202', NULL, NULL),
(593, NULL, 'Kolkata-India', '7588310347', NULL, '28-02-2022 08:49:19pm', '47.15.14.202', NULL, NULL),
(594, 'Sachin D', 'Delhi-India', '7979898989', NULL, '01-03-2022 08:32:34am', '47.31.96.217', NULL, 'Ggg'),
(595, NULL, 'Lucknow-India', '8127287574', NULL, '03-03-2022 02:57:00pm', '47.9.92.194', NULL, NULL),
(596, NULL, 'Lucknow-India', '9839420521', NULL, '03-03-2022 03:04:56pm', '47.9.92.194', NULL, NULL),
(597, NULL, 'Lucknow-India', '6206277914', NULL, '03-03-2022 03:10:52pm', '47.9.92.194', NULL, NULL),
(598, NULL, 'Lucknow-India', '9955691511', NULL, '03-03-2022 03:17:28pm', '47.9.92.194', NULL, NULL),
(599, NULL, 'Lucknow-India', '6266431788', NULL, '03-03-2022 03:29:19pm', '47.9.92.194', NULL, NULL),
(600, NULL, 'Lucknow-India', '7050106316', NULL, '03-03-2022 03:48:16pm', '47.9.92.194', NULL, NULL),
(601, NULL, 'Lucknow-India', '9438095627', NULL, '03-03-2022 03:54:39pm', '47.9.92.194', NULL, NULL),
(602, NULL, 'Lucknow-India', '9835985492', NULL, '03-03-2022 04:30:59pm', '47.9.92.194', NULL, NULL),
(603, NULL, 'Lucknow-India', '7738681225', NULL, '03-03-2022 04:58:55pm', '47.9.92.194', NULL, NULL),
(604, NULL, 'Lucknow-India', '7738681225', NULL, '03-03-2022 05:10:59pm', '47.9.92.194', NULL, NULL),
(605, NULL, 'Lucknow-India', '9109075635', NULL, '03-03-2022 06:22:17pm', '47.9.92.194', NULL, NULL),
(606, NULL, '-India', '8789375860', NULL, '06-03-2022 02:34:59pm', '47.15.96.205', NULL, NULL),
(607, 'sachin', 'Delhi-India', '7982824595', NULL, '07-05-2022 09:14:03am', '47.31.212.154', NULL, ' what is this '),
(608, 'sachin', 'Delhi-India', '84908509480', NULL, '07-05-2022 09:20:14am', '47.31.212.154', NULL, 'jlsjkjdlksjldkjsld'),
(609, 'lkjljdflkjl', 'Delhi-India', '0980980988', NULL, '07-05-2022 09:21:40am', '47.31.212.154', NULL, 'jjljljljljl'),
(610, NULL, 'Patna-India', '7979898989', NULL, '07-05-2022 03:57:29pm', '1.187.243.251', NULL, NULL),
(611, NULL, 'Patna-India', '7979898989', NULL, '07-05-2022 04:04:10pm', '1.187.247.7', NULL, NULL),
(612, NULL, 'Patna-India', '8098980809', NULL, '07-05-2022 04:09:38pm', '106.67.80.194', NULL, NULL),
(613, NULL, 'Delhi-India', '9090909090', NULL, '07-05-2022 04:20:52pm', '47.31.206.116', NULL, NULL),
(614, NULL, 'Kolkata-India', '9696596081', NULL, '07-05-2022 05:39:16pm', '47.15.157.42', NULL, NULL),
(615, NULL, '-', '9798993296', NULL, '07-05-2022 06:00:32pm', '47.15.157.42', NULL, NULL),
(616, NULL, '-', '9984029776', NULL, '07-05-2022 06:11:17pm', '47.15.157.42', NULL, NULL),
(617, NULL, '-', '8882323968', NULL, '07-05-2022 06:17:06pm', '47.15.157.42', NULL, NULL),
(618, NULL, 'Kolkata-India', '9621001801', NULL, '08-05-2022 10:13:17am', '47.15.141.76', NULL, NULL),
(619, NULL, 'Kolkata-India', '7068340917', NULL, '08-05-2022 01:49:38pm', '47.15.141.76', NULL, NULL),
(620, NULL, 'Kolkata-India', '7068340917', NULL, '08-05-2022 01:55:09pm', '47.15.141.76', NULL, NULL),
(621, NULL, 'Kolkata-India', '7068340917', NULL, '08-05-2022 01:57:17pm', '47.15.141.76', NULL, NULL),
(622, NULL, 'Kolkata-India', '8470909651', NULL, '08-05-2022 02:13:23pm', '47.15.141.76', NULL, NULL),
(623, NULL, 'Kolkata-India', '8382865907', NULL, '08-05-2022 02:24:23pm', '47.15.141.76', NULL, NULL),
(624, NULL, 'Kolkata-India', '8953503333', NULL, '08-05-2022 02:34:22pm', '47.15.141.76', NULL, NULL),
(625, NULL, 'Kolkata-India', '9415809064', NULL, '08-05-2022 02:55:39pm', '47.15.141.76', NULL, NULL),
(626, NULL, 'Kolkata-India', '9871778134', NULL, '08-05-2022 03:05:43pm', '47.15.141.76', NULL, NULL),
(627, NULL, 'Kolkata-India', '7488587182', NULL, '08-05-2022 03:21:43pm', '47.15.141.76', NULL, NULL),
(628, NULL, 'Kolkata-India', '9450485939', NULL, '09-05-2022 11:10:12am', '47.15.139.1', NULL, NULL),
(629, NULL, 'Lucknow-India', '9907970318', NULL, '09-05-2022 02:38:05pm', '47.8.28.8', NULL, NULL),
(630, NULL, 'Lucknow-India', '7905098017', NULL, '09-05-2022 02:44:39pm', '47.8.28.8', NULL, NULL),
(631, NULL, 'Lucknow-India', '9425678486', NULL, '09-05-2022 04:12:37pm', '47.8.28.8', NULL, NULL),
(632, NULL, 'Lucknow-India', '9161901930', NULL, '11-05-2022 06:39:16am', '47.8.22.237', NULL, NULL),
(633, NULL, 'Lucknow-India', '9956823938', NULL, '11-05-2022 06:49:14am', '47.8.22.237', NULL, NULL),
(634, NULL, 'Gorakhpur-India', '7061872447', NULL, '11-05-2022 11:14:21am', '27.60.80.193', NULL, NULL),
(635, NULL, 'Lucknow-India', '6299005297', NULL, '11-05-2022 11:24:57am', '47.8.5.175', NULL, NULL),
(636, NULL, 'Lucknow-India', '8620919121', NULL, '11-05-2022 11:31:56am', '47.8.5.175', NULL, NULL),
(637, NULL, 'Lucknow-India', '9939446643', NULL, '11-05-2022 11:44:34am', '47.8.5.175', NULL, NULL),
(638, NULL, 'Lucknow-India', '9792534093', NULL, '11-05-2022 11:52:16am', '47.8.5.175', NULL, NULL),
(639, NULL, 'Lucknow-India', '9029192789', NULL, '11-05-2022 11:55:08am', '47.8.5.175', NULL, NULL),
(640, NULL, 'Lucknow-India', '9702259436', NULL, '11-05-2022 03:50:01pm', '47.8.5.175', NULL, NULL),
(641, 'Ritvik', 'Delhi', '7982824595', '16/05/2022', '12:05:am', 'India Jaipur 157.37.166.13', 'Website Design & Developement', NULL),
(642, 'Reven', 'Jaipur-India', '7982824595', NULL, '16-05-2022 12:07:17am', '157.37.166.13', NULL, 'hi.'),
(643, NULL, 'Lucknow-India', '9984908967', NULL, '16-05-2022 10:49:32am', '47.8.6.155', NULL, NULL),
(644, NULL, '-India', '6268812304', NULL, '20-05-2022 08:23:26am', '157.34.72.45', NULL, NULL),
(645, 'Phoolchand Mohane ', 'Nagpur-India', '9421947196', NULL, '20-05-2022 10:00:20pm', '42.106.109.59', NULL, 'My  Re marriage'),
(646, NULL, 'Lucknow-India', '9278031777', NULL, '23-05-2022 03:16:53pm', '47.9.86.176', NULL, NULL),
(647, NULL, 'Lucknow-India', '9031023098', NULL, '23-05-2022 03:30:13pm', '47.9.86.176', NULL, NULL),
(648, NULL, 'Lucknow-India', '8459804609', NULL, '23-05-2022 03:35:09pm', '47.9.86.176', NULL, NULL),
(649, NULL, 'Lucknow-India', '7905090598', NULL, '23-05-2022 03:39:12pm', '47.9.86.176', NULL, NULL),
(650, NULL, 'Lucknow-India', '9877183709', NULL, '23-05-2022 03:46:00pm', '47.9.86.176', NULL, NULL),
(651, NULL, 'Lucknow-India', '9450714238', NULL, '23-05-2022 03:54:32pm', '47.9.86.176', NULL, NULL),
(652, NULL, 'Lucknow-India', '9781714466', NULL, '23-05-2022 04:04:25pm', '47.9.86.176', NULL, NULL),
(653, NULL, 'Lucknow-India', '9838651725', NULL, '23-05-2022 04:12:51pm', '47.9.86.176', NULL, NULL),
(654, NULL, 'Lucknow-India', '7992355513', NULL, '24-05-2022 07:11:58am', '47.9.64.155', NULL, NULL),
(655, NULL, 'Lucknow-India', '9450469752', NULL, '24-05-2022 07:20:30am', '47.9.64.155', NULL, NULL),
(656, NULL, 'Lucknow-India', '9278031777', NULL, '24-05-2022 07:32:10am', '47.9.64.155', NULL, NULL),
(657, NULL, 'Lucknow-India', '7508819798', NULL, '24-05-2022 07:35:26am', '47.9.64.155', NULL, NULL),
(658, NULL, 'Lucknow-India', '8070300004', NULL, '24-05-2022 07:39:55am', '47.9.64.155', NULL, NULL),
(659, NULL, 'Lucknow-India', '6393318409', NULL, '24-05-2022 07:45:53am', '47.9.64.155', NULL, NULL),
(660, NULL, 'Lucknow-India', '7701912037', NULL, '24-05-2022 07:51:00am', '47.9.64.155', NULL, NULL),
(661, NULL, 'Lucknow-India', '9161566444', NULL, '24-05-2022 07:56:50am', '47.9.64.155', NULL, NULL),
(662, NULL, 'Surat-India', '9594475879', NULL, '24-05-2022 01:32:38pm', '223.184.230.194', NULL, NULL),
(663, NULL, 'Lucknow-India', '9773504520', NULL, '24-05-2022 08:25:28pm', '47.9.64.155', NULL, NULL),
(664, NULL, 'Lucknow-India', '9336338582', NULL, '24-05-2022 08:32:57pm', '47.9.64.155', NULL, NULL),
(665, NULL, 'Lucknow-India', '9278031777', NULL, '24-05-2022 08:40:26pm', '47.9.64.155', NULL, NULL),
(666, NULL, 'Lucknow-India', '09278031777', NULL, '24-05-2022 08:42:50pm', '47.9.64.155', NULL, NULL),
(667, NULL, 'Lucknow-India', '8169421416', NULL, '24-05-2022 08:49:37pm', '47.9.64.155', NULL, NULL),
(668, NULL, 'Kolkata-India', '8707575412', NULL, '24-05-2022 10:35:41pm', '47.15.240.186', NULL, NULL),
(669, NULL, 'Bhubaneswar-India', '8002015872', NULL, '25-05-2022 10:28:41pm', '157.35.87.208', NULL, NULL),
(670, 'Sonu sah', 'Saharsa bihar ', '8002015872', '25/05/2022', '10:31:pm', 'India Bhubaneswar 157.35.87.208', 'Life Partner', NULL),
(671, NULL, 'Lucknow-India', '9082178092', NULL, '26-05-2022 03:18:19pm', '47.8.14.70', NULL, NULL),
(672, NULL, 'Lucknow-India', '7903644310', NULL, '26-05-2022 03:26:26pm', '47.8.14.70', NULL, NULL),
(673, NULL, 'Lucknow-India', '7355362826', NULL, '26-05-2022 03:34:22pm', '47.8.14.70', NULL, NULL),
(674, NULL, 'Lucknow-India', '7052252249', NULL, '26-05-2022 03:40:10pm', '47.8.14.70', NULL, NULL),
(675, NULL, 'Lucknow-India', '9834077488', NULL, '26-05-2022 03:44:32pm', '47.8.14.70', NULL, NULL),
(676, NULL, 'Lucknow-India', '8707858513', NULL, '26-05-2022 08:57:42pm', '47.9.80.228', NULL, NULL),
(677, NULL, 'Lucknow-India', '8369227895', NULL, '26-05-2022 09:05:25pm', '47.9.80.228', NULL, NULL),
(678, NULL, 'Lucknow-India', '8318782852', NULL, '26-05-2022 09:10:46pm', '47.9.80.228', NULL, NULL),
(679, NULL, 'Lucknow-India', '6393896114', NULL, '26-05-2022 09:16:18pm', '47.9.80.228', NULL, NULL),
(680, NULL, 'Lucknow-India', '9833072604', NULL, '26-05-2022 09:19:32pm', '47.9.80.228', NULL, NULL),
(681, NULL, 'Lucknow-India', '9450112701', NULL, '26-05-2022 09:31:44pm', '47.9.80.228', NULL, NULL),
(682, NULL, 'Lucknow-India', '9415854175', NULL, '26-05-2022 09:36:32pm', '47.9.80.228', NULL, NULL),
(683, NULL, 'Lucknow-India', '9891150115', NULL, '26-05-2022 09:40:09pm', '47.9.80.228', NULL, NULL),
(684, NULL, 'Lucknow-India', '8637814656', NULL, '26-05-2022 09:46:59pm', '47.9.80.228', NULL, NULL),
(685, NULL, 'Lucknow-India', '7903658253', NULL, '27-05-2022 11:01:00am', '47.9.75.149', NULL, NULL);
INSERT INTO `contact` (`id`, `name`, `address`, `mobile`, `date`, `time`, `ip`, `lookfor`, `messsage`) VALUES
(686, NULL, 'Lucknow-India', '9619024098', NULL, '27-05-2022 12:14:24pm', '47.9.75.149', NULL, NULL),
(687, NULL, 'Lucknow-India', '7236868052', NULL, '27-05-2022 12:20:52pm', '47.9.152.250', NULL, NULL),
(688, NULL, 'Lucknow-India', '9987646868', NULL, '27-05-2022 12:26:06pm', '47.9.152.250', NULL, NULL),
(689, NULL, 'Lucknow-India', '9936929073', NULL, '27-05-2022 12:31:27pm', '47.9.152.250', NULL, NULL),
(690, NULL, 'Lucknow-India', '9867841309', NULL, '27-05-2022 12:38:30pm', '47.9.152.250', NULL, NULL),
(691, NULL, 'Lucknow-India', '9967612609', NULL, '27-05-2022 12:43:46pm', '47.9.152.250', NULL, NULL),
(692, NULL, 'Lucknow-India', '9969444336', NULL, '27-05-2022 12:49:57pm', '47.9.152.250', NULL, NULL),
(693, NULL, 'Lucknow-India', '8268324965', NULL, '27-05-2022 12:57:15pm', '47.9.152.250', NULL, NULL),
(694, NULL, 'Lucknow-India', '7351311695', NULL, '27-05-2022 01:03:18pm', '47.9.152.250', NULL, NULL),
(695, NULL, 'Lucknow-India', '8208695737', NULL, '27-05-2022 01:08:41pm', '47.9.152.250', NULL, NULL),
(696, NULL, 'Lucknow-India', '8858000300', NULL, '27-05-2022 01:14:29pm', '47.9.152.250', NULL, NULL),
(697, NULL, 'Lucknow-India', '8858000300', NULL, '27-05-2022 01:21:07pm', '47.9.152.250', NULL, NULL),
(698, NULL, 'Lucknow-India', '9834077488', NULL, '27-05-2022 01:23:57pm', '47.9.152.250', NULL, NULL),
(699, NULL, 'Lucknow-India', '8910523947', NULL, '27-05-2022 01:26:19pm', '47.9.152.250', NULL, NULL),
(700, NULL, 'Lucknow-India', '9807719509', NULL, '27-05-2022 01:32:58pm', '47.9.75.149', NULL, NULL),
(701, NULL, 'Lucknow-India', '9058070315', NULL, '27-05-2022 02:06:58pm', '47.9.163.149', NULL, NULL),
(702, NULL, 'Delhi-India', '9027757473', NULL, '27-05-2022 02:10:33pm', '112.196.163.20', NULL, NULL),
(703, NULL, 'Gorakhpur-India', '8127172754', NULL, '27-05-2022 04:51:24pm', '27.60.83.180', NULL, NULL),
(704, NULL, 'Agra-India', '8057575854', NULL, '27-05-2022 08:59:27pm', '49.14.129.170', NULL, NULL),
(705, NULL, '-India', '9691560050', NULL, '28-05-2022 07:27:42am', '110.227.58.203', NULL, NULL),
(706, NULL, 'Lucknow-India', '8073187716', NULL, '28-05-2022 11:36:31am', '47.8.60.151', NULL, NULL),
(707, NULL, 'Lucknow-India', '9973070665', NULL, '28-05-2022 11:43:20am', '47.8.60.151', NULL, NULL),
(708, NULL, '-India', '8966877044', NULL, '28-05-2022 11:59:37am', '157.34.212.64', NULL, NULL),
(709, NULL, 'Amravati-India', '6266568004', NULL, '28-05-2022 02:02:05pm', '49.35.251.136', NULL, NULL),
(710, 'Devendra', 'Amravati-India', '464770', NULL, '28-05-2022 02:02:47pm', '49.35.251.136', NULL, 'Hi'),
(711, NULL, '-India', '9627246066', NULL, '28-05-2022 10:16:28pm', '110.227.44.12', NULL, NULL),
(712, NULL, 'Lucknow-India', '9473665868', NULL, '28-05-2022 10:43:01pm', '47.9.117.222', NULL, NULL),
(713, NULL, 'Lucknow-India', '9839250458', NULL, '29-05-2022 09:18:43am', '47.9.156.210', NULL, NULL),
(714, NULL, '-India', '7068017525', NULL, '29-05-2022 01:01:09pm', '47.15.125.201', NULL, NULL),
(715, NULL, '-India', '9795133283', NULL, '29-05-2022 01:05:34pm', '47.15.125.201', NULL, NULL),
(716, NULL, '-India', '8826670360', NULL, '29-05-2022 01:11:51pm', '47.15.125.201', NULL, NULL),
(717, NULL, '-India', '8299194792', NULL, '29-05-2022 01:17:17pm', '47.15.125.201', NULL, NULL),
(718, NULL, '-India', '9431728860', NULL, '29-05-2022 01:20:55pm', '47.15.125.201', NULL, NULL),
(719, NULL, '-India', '9453940371', NULL, '29-05-2022 01:25:41pm', '47.15.125.201', NULL, NULL),
(720, NULL, '-India', '9455011370', NULL, '29-05-2022 01:40:42pm', '47.15.125.201', NULL, NULL),
(721, NULL, '-India', '8108754480', NULL, '29-05-2022 01:45:17pm', '47.15.125.201', NULL, NULL),
(722, NULL, '-India', '7785868354', NULL, '29-05-2022 01:49:52pm', '47.15.125.201', NULL, NULL),
(723, NULL, '-India', '8910522700', NULL, '29-05-2022 01:54:23pm', '47.15.125.201', NULL, NULL),
(724, NULL, '-India', '9324173725', NULL, '29-05-2022 01:58:55pm', '47.15.125.201', NULL, NULL),
(725, NULL, '-India', '9987788153', NULL, '29-05-2022 02:04:35pm', '47.15.125.201', NULL, NULL),
(726, NULL, '-India', '9555043453', NULL, '29-05-2022 02:05:44pm', '202.133.75.230', NULL, NULL),
(727, NULL, '-India', '6394146549', NULL, '29-05-2022 02:11:29pm', '47.15.125.201', NULL, NULL),
(728, NULL, '-India', '9410260887', NULL, '29-05-2022 02:17:47pm', '47.15.125.201', NULL, NULL),
(729, NULL, '-India', '9410260887', NULL, '29-05-2022 02:17:47pm', '47.15.125.201', NULL, NULL),
(730, NULL, '-India', '8840740938', NULL, '29-05-2022 02:20:38pm', '47.15.125.201', NULL, NULL),
(731, NULL, '-India', '8840740938', NULL, '29-05-2022 02:26:11pm', '47.15.125.201', NULL, NULL),
(732, NULL, '-India', '08840740938', NULL, '29-05-2022 02:27:50pm', '47.15.125.201', NULL, NULL),
(733, NULL, '-India', '8369377292', NULL, '29-05-2022 02:31:56pm', '47.15.125.201', NULL, NULL),
(734, NULL, '-India', '8795755102', NULL, '29-05-2022 02:37:36pm', '47.15.125.201', NULL, NULL),
(735, NULL, '-India', '9833225815', NULL, '29-05-2022 02:42:04pm', '47.15.125.201', NULL, NULL),
(736, NULL, '-India', '9670876649', NULL, '29-05-2022 02:46:14pm', '47.15.125.201', NULL, NULL),
(737, NULL, 'Prayagraj-India', '9264999294', NULL, '29-05-2022 11:54:54pm', '47.9.0.174', NULL, NULL),
(738, NULL, 'Lucknow-India', '7600364500', NULL, '30-05-2022 09:03:02am', '47.9.87.114', NULL, NULL),
(739, NULL, 'Lucknow-India', '7398429988', NULL, '30-05-2022 09:13:19am', '47.9.87.114', NULL, NULL),
(740, NULL, 'Lucknow-India', '9004785753', NULL, '30-05-2022 09:19:01am', '47.9.87.114', NULL, NULL),
(741, NULL, 'Lucknow-India', '09004785753', NULL, '30-05-2022 09:24:45am', '47.9.87.114', NULL, NULL),
(742, NULL, 'Lucknow-India', '9450737648', NULL, '30-05-2022 09:30:31am', '47.9.87.114', NULL, NULL),
(743, NULL, 'Lucknow-India', '8884333872', NULL, '30-05-2022 09:36:55am', '47.9.87.114', NULL, NULL),
(744, NULL, 'Lucknow-India', '9568012947', NULL, '30-05-2022 09:41:00am', '47.9.87.114', NULL, NULL),
(745, NULL, 'Lucknow-India', '9810494088', NULL, '30-05-2022 09:44:59am', '47.9.87.114', NULL, NULL),
(746, NULL, 'Lucknow-India', '9810494088', NULL, '30-05-2022 09:46:11am', '47.9.87.114', NULL, NULL),
(747, NULL, 'Lucknow-India', '7488827675', NULL, '30-05-2022 02:30:37pm', '47.9.87.114', NULL, NULL),
(748, NULL, 'Lucknow-India', '7379127166', NULL, '30-05-2022 02:40:19pm', '47.9.87.114', NULL, NULL),
(749, NULL, 'Lucknow-India', '9300476062', NULL, '30-05-2022 02:44:53pm', '47.9.87.114', NULL, NULL),
(750, NULL, 'Lucknow-India', '7477042902', NULL, '30-05-2022 02:50:17pm', '47.9.87.114', NULL, NULL),
(751, NULL, 'Lucknow-India', '9795891140', NULL, '30-05-2022 09:41:33pm', '47.9.79.115', NULL, NULL),
(752, NULL, 'Lucknow-India', '9399235076', NULL, '30-05-2022 09:47:56pm', '47.9.79.115', NULL, NULL),
(753, NULL, 'Lucknow-India', '7985583134', NULL, '30-05-2022 09:56:18pm', '47.9.79.115', NULL, NULL),
(754, NULL, 'Lucknow-India', '7068205106', NULL, '30-05-2022 10:02:17pm', '47.9.79.115', NULL, NULL),
(755, NULL, 'Lucknow-India', '7666666991', NULL, '30-05-2022 10:07:18pm', '47.9.79.115', NULL, NULL),
(756, NULL, 'Lucknow-India', '7709528235', NULL, '30-05-2022 10:12:45pm', '47.9.79.115', NULL, NULL),
(757, NULL, 'Lucknow-India', '9022843941', NULL, '30-05-2022 10:22:52pm', '47.9.79.115', NULL, NULL),
(758, NULL, 'Jaipur-India', '9468626084', NULL, '31-05-2022 07:01:50am', '157.38.93.64', NULL, NULL),
(759, NULL, '-India', '9619621183', NULL, '31-05-2022 07:16:36am', '47.15.108.151', NULL, NULL),
(760, NULL, '-India', '8459225354', NULL, '31-05-2022 07:23:34am', '47.15.108.151', NULL, NULL),
(761, NULL, '-India', '9452125500', NULL, '31-05-2022 07:30:00am', '47.15.108.151', NULL, NULL),
(762, NULL, '-India', '9198495206', NULL, '31-05-2022 07:34:33am', '47.15.108.151', NULL, NULL),
(763, NULL, '-India', '9452125500', NULL, '31-05-2022 07:40:31am', '47.15.108.151', NULL, NULL),
(764, NULL, '-India', '9869918362', NULL, '31-05-2022 07:54:51am', '47.15.108.151', NULL, NULL),
(765, NULL, '-India', '9839449294', NULL, '31-05-2022 08:00:25am', '47.15.108.151', NULL, NULL),
(766, NULL, '-India', '9307564242', NULL, '31-05-2022 08:04:51am', '47.15.108.151', NULL, NULL),
(767, NULL, '-India', '9450755235', NULL, '31-05-2022 08:09:26am', '47.15.108.151', NULL, NULL),
(768, NULL, '-India', '9719563301', NULL, '31-05-2022 08:13:13am', '47.15.108.151', NULL, NULL),
(769, NULL, '-India', '7985666636', NULL, '31-05-2022 08:18:12am', '47.15.108.151', NULL, NULL),
(770, NULL, 'Kolkata-India', '9131467049', NULL, '31-05-2022 10:53:51am', '157.40.72.26', NULL, NULL),
(771, NULL, 'Lucknow-India', '9369600329', NULL, '31-05-2022 03:05:04pm', '47.9.76.149', NULL, NULL),
(772, NULL, 'Lucknow-India', '9161618141', NULL, '31-05-2022 03:11:12pm', '47.9.76.149', NULL, NULL),
(773, 'Raju Kumar', '-India', '8169897077', NULL, '31-05-2022 03:17:40pm', '117.98.38.89', NULL, 'Qwertyui'),
(774, NULL, 'Lucknow-India', '9454750009', NULL, '31-05-2022 03:37:05pm', '47.9.76.149', NULL, NULL),
(775, NULL, 'Lucknow-India', '7600364500', NULL, '31-05-2022 03:43:46pm', '47.9.76.149', NULL, NULL),
(776, NULL, 'Lucknow-India', '9892107088', NULL, '31-05-2022 03:47:33pm', '47.9.76.149', NULL, NULL),
(777, NULL, 'Kolkata-India', '9264903065', NULL, '31-05-2022 08:32:42pm', '47.15.1.32', NULL, NULL),
(778, NULL, 'Kolkata-India', '9307828838', NULL, '31-05-2022 08:38:50pm', '47.15.1.32', NULL, NULL),
(779, NULL, 'Kolkata-India', '9892703591', NULL, '31-05-2022 08:44:40pm', '47.15.1.32', NULL, NULL),
(780, NULL, 'Kolkata-India', '9336288728', NULL, '31-05-2022 08:52:48pm', '47.15.1.32', NULL, NULL),
(781, NULL, 'Kolkata-India', '9506401320', NULL, '31-05-2022 08:58:41pm', '47.15.1.32', NULL, NULL),
(782, NULL, 'Kolkata-India', '7045474726', NULL, '31-05-2022 09:02:35pm', '47.15.1.32', NULL, NULL),
(783, NULL, 'Kolkata-India', '09506401320', NULL, '31-05-2022 09:07:34pm', '47.15.1.32', NULL, NULL),
(784, NULL, 'Kolkata-India', '9839662611', NULL, '31-05-2022 09:14:17pm', '47.15.1.32', NULL, NULL),
(785, NULL, 'Kolkata-India', '9839588684', NULL, '31-05-2022 09:18:51pm', '47.15.1.32', NULL, NULL),
(786, NULL, 'Kolkata-India', '9721085264', NULL, '31-05-2022 09:23:23pm', '47.15.1.32', NULL, NULL),
(787, NULL, 'Lucknow-India', '7843825033', NULL, '01-06-2022 08:34:04am', '47.9.88.228', NULL, NULL),
(788, NULL, 'Lucknow-India', '9661828720', NULL, '01-06-2022 08:40:00am', '47.9.88.228', NULL, NULL),
(789, NULL, 'Lucknow-India', '9661828720', NULL, '01-06-2022 08:46:42am', '47.9.88.228', NULL, NULL),
(790, NULL, 'Lucknow-India', '7895998286', NULL, '01-06-2022 08:52:22am', '47.9.88.228', NULL, NULL),
(791, NULL, 'Lucknow-India', '9621917009', NULL, '01-06-2022 08:59:19am', '47.9.88.228', NULL, NULL),
(792, NULL, 'Lucknow-India', '9009988511', NULL, '01-06-2022 09:24:52am', '47.9.88.228', NULL, NULL),
(793, NULL, 'Lucknow-India', '8080998787', NULL, '01-06-2022 09:31:42am', '47.9.88.228', NULL, NULL),
(794, NULL, 'Lucknow-India', '9650958411', NULL, '01-06-2022 09:41:36am', '47.9.88.228', NULL, NULL),
(795, NULL, 'Lucknow-India', '9819857591', NULL, '01-06-2022 12:28:37pm', '47.9.88.228', NULL, NULL),
(796, NULL, 'Lucknow-India', '9717464805', NULL, '01-06-2022 12:31:39pm', '47.9.88.228', NULL, NULL),
(797, NULL, 'Lucknow-India', '7549757585', NULL, '01-06-2022 12:36:53pm', '47.9.88.228', NULL, NULL),
(798, NULL, 'Lucknow-India', '8877676745', NULL, '01-06-2022 12:41:56pm', '47.9.88.228', NULL, NULL),
(799, NULL, 'Lucknow-India', '9234385071', NULL, '01-06-2022 12:46:52pm', '47.9.88.228', NULL, NULL),
(800, NULL, 'Lucknow-India', '9835703112', NULL, '01-06-2022 12:51:50pm', '47.9.88.228', NULL, NULL),
(801, NULL, 'Lucknow-India', '8102323666', NULL, '01-06-2022 12:55:48pm', '47.9.88.228', NULL, NULL),
(802, NULL, 'Lucknow-India', '9934875724', NULL, '01-06-2022 01:00:03pm', '47.9.88.228', NULL, NULL),
(803, NULL, 'Lucknow-India', '9334941010', NULL, '01-06-2022 01:04:38pm', '47.9.88.228', NULL, NULL),
(804, NULL, 'Lucknow-India', '09819857591', NULL, '01-06-2022 01:07:57pm', '47.9.88.228', NULL, NULL),
(805, NULL, 'Lucknow-India', '9821042825', NULL, '01-06-2022 03:34:32pm', '47.9.88.228', NULL, NULL),
(806, NULL, 'Lucknow-India', '7683077935', NULL, '01-06-2022 03:40:01pm', '47.9.88.228', NULL, NULL),
(807, NULL, 'Lucknow-India', '9321335630', NULL, '01-06-2022 03:46:54pm', '47.9.88.228', NULL, NULL),
(808, NULL, 'Lucknow-India', '9889638084', NULL, '01-06-2022 03:52:08pm', '47.9.88.228', NULL, NULL),
(809, NULL, 'Lucknow-India', '9450233092', NULL, '01-06-2022 03:57:05pm', '47.9.88.228', NULL, NULL),
(810, NULL, 'Lucknow-India', '9634322779', NULL, '01-06-2022 04:03:22pm', '47.9.88.228', NULL, NULL),
(811, NULL, 'Lucknow-India', '8948382138', NULL, '01-06-2022 04:14:15pm', '47.9.88.228', NULL, NULL),
(812, NULL, 'Lucknow-India', '8726798219', NULL, '01-06-2022 04:25:36pm', '47.9.88.228', NULL, NULL),
(813, NULL, 'Lucknow-India', '9161618141', NULL, '01-06-2022 04:30:25pm', '47.9.88.228', NULL, NULL),
(814, NULL, 'Lucknow-India', '9435257433', NULL, '01-06-2022 04:33:58pm', '47.9.88.228', NULL, NULL),
(815, NULL, 'Lucknow-India', '9415260686', NULL, '01-06-2022 04:38:26pm', '47.9.88.228', NULL, NULL),
(816, NULL, 'Lucknow-India', '9140744482', NULL, '01-06-2022 04:43:29pm', '47.9.88.228', NULL, NULL),
(817, NULL, 'Lucknow-India', '9935479697', NULL, '01-06-2022 04:47:31pm', '47.9.88.228', NULL, NULL),
(818, NULL, 'Lucknow-India', '9415890220', NULL, '01-06-2022 04:50:20pm', '47.9.88.228', NULL, NULL),
(819, NULL, 'Lucknow-India', '9977830495', NULL, '01-06-2022 04:54:14pm', '47.9.88.228', NULL, NULL),
(820, NULL, 'New Delhi-India', '9235583683', NULL, '01-06-2022 08:10:18pm', '132.154.228.167', NULL, NULL),
(821, NULL, 'Gangolihat-India', '9761007418', NULL, '01-06-2022 08:16:30pm', '49.14.113.214', NULL, NULL),
(822, NULL, 'Lucknow-India', '9453611297', NULL, '01-06-2022 08:31:53pm', '106.205.40.181', NULL, NULL),
(823, 'Ramesh gupta ', 'Mumbai-India', '8080134272', NULL, '01-06-2022 08:37:59pm', '1.38.144.51', NULL, 'Divorcee'),
(824, NULL, 'New Delhi-India', '7017755648', NULL, '01-06-2022 09:39:39pm', '132.154.103.183', NULL, NULL),
(825, NULL, 'New Delhi-India', '9457606285', NULL, '02-06-2022 05:44:29am', '132.154.77.105', NULL, NULL),
(826, NULL, 'Lucknow-India', '9450664252', NULL, '02-06-2022 10:13:14am', '223.225.121.234', NULL, NULL),
(827, NULL, 'Lucknow-India', '8178789729', NULL, '02-06-2022 10:25:53am', '47.9.71.37', NULL, NULL),
(828, NULL, 'New Delhi-India', '9431827152', NULL, '03-06-2022 06:48:24am', '223.185.246.237', NULL, NULL),
(829, NULL, 'New Delhi-India', '8470909651', NULL, '03-06-2022 06:54:16am', '223.185.246.237', NULL, NULL),
(830, NULL, 'New Delhi-India', '8533898906', NULL, '03-06-2022 06:59:22am', '223.185.246.237', NULL, NULL),
(831, NULL, 'New Delhi-India', '8789782251', NULL, '03-06-2022 07:06:28am', '223.185.246.237', NULL, NULL),
(832, NULL, 'New Delhi-India', '8299453827', NULL, '03-06-2022 07:12:57am', '223.185.246.237', NULL, NULL),
(833, NULL, 'New Delhi-India', '9450010064', NULL, '03-06-2022 07:18:08am', '223.185.246.237', NULL, NULL),
(834, NULL, 'New Delhi-India', '9717582818', NULL, '03-06-2022 07:25:31am', '223.185.246.237', NULL, NULL),
(835, NULL, 'New Delhi-India', '9760048006', NULL, '03-06-2022 07:30:32am', '223.185.246.237', NULL, NULL),
(836, NULL, 'New Delhi-India', '9868885807', NULL, '03-06-2022 07:35:02am', '223.185.246.237', NULL, NULL),
(837, NULL, 'New Delhi-India', '7905090598', NULL, '03-06-2022 07:43:19am', '223.185.246.237', NULL, NULL),
(838, NULL, 'New Delhi-India', '7705933221', NULL, '03-06-2022 07:45:24am', '223.185.246.237', NULL, NULL),
(839, NULL, 'Lucknow-India', '8299618112', NULL, '03-06-2022 08:12:08am', '47.9.71.103', NULL, NULL),
(840, NULL, 'Lucknow-India', '9454150259', NULL, '03-06-2022 11:13:20am', '47.9.81.24', NULL, NULL),
(841, NULL, 'Lucknow-India', '7488818015', NULL, '03-06-2022 02:05:21pm', '47.9.70.213', NULL, NULL),
(842, NULL, 'New Delhi-India', '9235611658', NULL, '03-06-2022 02:36:11pm', '223.185.246.237', NULL, NULL),
(843, NULL, 'Lucknow-India', '9833141306', NULL, '03-06-2022 02:44:17pm', '117.96.49.69', NULL, NULL),
(844, NULL, 'Lucknow-India', '9819141353', NULL, '03-06-2022 02:57:37pm', '47.9.70.213', NULL, NULL),
(845, NULL, 'Lucknow-India', '8422042569', NULL, '03-06-2022 03:02:56pm', '47.9.70.213', NULL, NULL),
(846, NULL, 'Lucknow-India', '9838741316', NULL, '03-06-2022 03:06:33pm', '47.9.70.213', NULL, NULL),
(847, NULL, 'Lucknow-India', '8896021678', NULL, '03-06-2022 03:10:16pm', '47.9.70.213', NULL, NULL),
(848, NULL, 'Lucknow-India', '9451913691', NULL, '03-06-2022 03:14:00pm', '47.9.70.213', NULL, NULL),
(849, NULL, 'Lucknow-India', '9869363915', NULL, '03-06-2022 03:18:53pm', '47.9.70.213', NULL, NULL),
(850, NULL, 'Lucknow-India', '7860673740', NULL, '03-06-2022 03:23:37pm', '47.9.70.213', NULL, NULL),
(851, NULL, 'Lucknow-India', '8879505471', NULL, '03-06-2022 03:28:21pm', '47.9.70.213', NULL, NULL),
(852, 'Omnarain Gupta', '-India', '8887861256', NULL, '03-06-2022 08:35:33pm', '117.98.48.31', NULL, 'Rishta Beti Mbbs ho'),
(853, NULL, 'Lucknow-India', '8577884037', NULL, '03-06-2022 08:51:14pm', '47.9.69.60', NULL, NULL),
(854, NULL, 'Lucknow-India', '9082239512', NULL, '03-06-2022 08:57:01pm', '47.9.69.60', NULL, NULL),
(855, NULL, 'Lucknow-India', '9169671222', NULL, '03-06-2022 09:04:05pm', '47.9.69.60', NULL, NULL),
(856, NULL, 'Lucknow-India', '6205329061', NULL, '03-06-2022 09:09:21pm', '47.9.69.60', NULL, NULL),
(857, NULL, 'Lucknow-India', '9919612000', NULL, '03-06-2022 09:24:58pm', '47.9.69.60', NULL, NULL),
(858, NULL, 'Lucknow-India', '9370587395', NULL, '03-06-2022 09:30:37pm', '47.9.69.60', NULL, NULL),
(859, NULL, 'Bhopal-India', '7000314540', NULL, '04-06-2022 11:36:13am', '157.34.49.30', NULL, NULL),
(860, NULL, 'Kolkata-India', '8085047697', NULL, '04-06-2022 02:06:09pm', '47.15.15.203', NULL, NULL),
(861, NULL, 'Lucknow-India', '9867882104', NULL, '04-06-2022 02:14:40pm', '47.9.89.90', NULL, NULL),
(862, NULL, 'Lucknow-India', '9819390243', NULL, '04-06-2022 02:20:33pm', '47.9.89.90', NULL, NULL),
(863, NULL, 'Lucknow-India', '9034340047', NULL, '04-06-2022 02:25:38pm', '47.9.89.90', NULL, NULL),
(864, NULL, 'Lucknow-India', '7985101903', NULL, '04-06-2022 02:37:20pm', '47.9.89.90', NULL, NULL),
(865, NULL, 'Lucknow-India', '9425463396', NULL, '04-06-2022 02:41:44pm', '47.9.89.90', NULL, NULL),
(866, NULL, 'Lucknow-India', '9826626644', NULL, '04-06-2022 02:49:02pm', '47.9.89.90', NULL, NULL),
(867, NULL, 'Lucknow-India', '9369177935', NULL, '04-06-2022 02:53:59pm', '47.9.89.90', NULL, NULL),
(868, NULL, 'Lucknow-India', '9415857878', NULL, '04-06-2022 02:59:24pm', '47.9.89.90', NULL, NULL),
(869, NULL, 'Lucknow-India', '9781714466', NULL, '04-06-2022 03:08:39pm', '47.9.89.90', NULL, NULL),
(870, NULL, 'Lucknow-India', '9454810765', NULL, '04-06-2022 03:15:08pm', '47.9.89.90', NULL, NULL),
(871, NULL, 'Lucknow-India', '9756005437', NULL, '04-06-2022 03:19:55pm', '47.9.89.90', NULL, NULL),
(872, NULL, 'Lucknow-India', '9756005437', NULL, '04-06-2022 03:26:36pm', '47.9.89.90', NULL, NULL),
(873, NULL, 'Bilaspur-India', '7582050072', NULL, '05-06-2022 08:39:03pm', '106.66.22.46', NULL, NULL),
(874, 'Mukesh sahu', 'Bhopal-India', '6264160261', NULL, '06-06-2022 03:57:12pm', '157.34.60.179', NULL, 'Hii'),
(875, NULL, '-India', '8092520100', NULL, '06-06-2022 09:14:50pm', '157.35.21.197', NULL, NULL),
(876, NULL, 'Lucknow-India', '9336331174', NULL, '07-06-2022 06:52:12am', '47.8.26.102', NULL, NULL),
(877, NULL, 'Lucknow-India', '9450439371', NULL, '07-06-2022 07:03:20am', '47.8.26.102', NULL, NULL),
(878, NULL, 'Lucknow-India', '7905521714', NULL, '07-06-2022 07:08:02am', '47.8.26.102', NULL, NULL),
(879, NULL, 'Lucknow-India', '9123978062', NULL, '07-06-2022 07:13:17am', '47.8.26.102', NULL, NULL),
(880, NULL, 'Lucknow-India', '8103260733', NULL, '07-06-2022 07:19:37am', '47.8.26.102', NULL, NULL),
(881, NULL, 'Lucknow-India', '9452090188', NULL, '07-06-2022 07:26:48am', '47.8.26.102', NULL, NULL),
(882, NULL, 'Lucknow-India', '9810290496', NULL, '07-06-2022 07:31:16am', '47.8.26.102', NULL, NULL),
(883, NULL, 'Lucknow-India', '9450438354', NULL, '07-06-2022 07:38:38am', '47.8.26.102', NULL, NULL),
(884, NULL, 'Lucknow-India', '9868721357', NULL, '07-06-2022 07:43:22am', '47.8.26.102', NULL, NULL),
(885, NULL, 'Lucknow-India', '9971807195', NULL, '07-06-2022 07:47:54am', '47.8.26.102', NULL, NULL),
(886, NULL, 'Lucknow-India', '9876543210', NULL, '07-06-2022 07:55:02am', '47.8.26.102', NULL, NULL),
(887, NULL, 'Lucknow-India', '7307308656', NULL, '07-06-2022 08:03:21am', '47.8.26.102', NULL, NULL),
(888, NULL, 'Lucknow-India', '8303658268', NULL, '07-06-2022 08:10:42am', '47.8.26.102', NULL, NULL),
(889, NULL, 'Lucknow-India', '8851463478', NULL, '07-06-2022 08:15:18am', '47.8.26.102', NULL, NULL),
(890, NULL, 'Lucknow-India', '9450485939', NULL, '07-06-2022 08:19:42am', '47.8.26.102', NULL, NULL),
(891, NULL, 'Lucknow-India', '9868328425', NULL, '07-06-2022 08:21:37am', '47.8.26.102', NULL, NULL),
(892, 'Rajnish Prakash Gupta', 'Lucknow-India', '9807719509', NULL, '07-06-2022 11:44:02am', '47.9.94.104', NULL, 'Gogo'),
(893, NULL, 'Lucknow-India', '9140502007', NULL, '07-06-2022 01:35:01pm', '47.9.90.62', NULL, NULL),
(894, NULL, 'Lucknow-India', '9307402983', NULL, '07-06-2022 01:41:47pm', '47.9.90.62', NULL, NULL),
(895, NULL, 'Lucknow-India', '9136279446', NULL, '07-06-2022 01:46:41pm', '47.9.90.62', NULL, NULL),
(896, NULL, 'Lucknow-India', '9717728428', NULL, '07-06-2022 01:51:43pm', '47.9.90.62', NULL, NULL),
(897, NULL, 'Lucknow-India', '9828442612', NULL, '07-06-2022 01:56:42pm', '47.9.90.62', NULL, NULL),
(898, NULL, 'Lucknow-India', '8543992590', NULL, '07-06-2022 02:03:09pm', '47.9.90.62', NULL, NULL),
(899, NULL, 'Prayagraj-India', '9450278902', NULL, '07-06-2022 02:43:16pm', '47.9.0.110', NULL, NULL),
(900, NULL, 'Prayagraj-India', '9805760117', NULL, '07-06-2022 02:51:21pm', '47.9.0.110', NULL, NULL),
(901, NULL, 'Prayagraj-India', '9335348563', NULL, '07-06-2022 02:56:28pm', '47.9.0.110', NULL, NULL),
(902, NULL, 'Prayagraj-India', '7905502178', NULL, '07-06-2022 03:00:27pm', '47.9.0.110', NULL, NULL),
(903, NULL, 'Prayagraj-India', '9918103531', NULL, '07-06-2022 03:06:02pm', '47.9.0.110', NULL, NULL),
(904, NULL, 'Prayagraj-India', '8090844996', NULL, '07-06-2022 03:08:52pm', '47.9.0.110', NULL, NULL),
(905, NULL, 'Prayagraj-India', '8285846862', NULL, '07-06-2022 03:12:10pm', '47.9.0.110', NULL, NULL),
(906, NULL, 'Prayagraj-India', '9098282244', NULL, '07-06-2022 03:16:47pm', '47.9.0.110', NULL, NULL),
(907, NULL, 'Prayagraj-India', '7999797883', NULL, '07-06-2022 03:21:14pm', '47.9.0.110', NULL, NULL),
(908, 'Rajnish Prakash', 'Prayagraj-India', '8808618925', NULL, '07-06-2022 07:45:37pm', '47.9.0.110', NULL, 'No'),
(909, 'prakash ', 'Prayagraj-India', '6393071482', NULL, '07-06-2022 07:54:00pm', '47.9.0.110', NULL, 'Nononoo'),
(910, NULL, 'Prayagraj-India', '980767680000', NULL, '07-06-2022 07:57:03pm', '47.9.0.110', NULL, NULL),
(911, 'rajnish prakash gupta', 'MAU', '7905090598', '07/06/2022', '08:57:pm', 'India Prayagraj 47.9.0.110', 'Life Partner', NULL),
(912, 'Devendra sahu', '-India', '9111258489', NULL, '07-06-2022 10:05:55pm', '157.34.66.19', NULL, 'Devendra sahu '),
(913, NULL, 'Lucknow-India', '8928855094', NULL, '08-06-2022 08:17:46am', '117.96.185.142', NULL, NULL),
(914, NULL, 'Lucknow-India', '8356060984', NULL, '08-06-2022 08:30:16am', '117.96.185.142', NULL, NULL),
(915, NULL, 'Lucknow-India', '8960919436', NULL, '08-06-2022 08:35:17am', '117.96.185.142', NULL, NULL),
(916, NULL, 'Lucknow-India', '9621054337', NULL, '08-06-2022 08:38:37am', '117.96.185.142', NULL, NULL),
(917, NULL, 'Lucknow-India', '9307299215', NULL, '08-06-2022 08:42:28am', '117.96.185.142', NULL, NULL),
(918, NULL, 'Lucknow-India', '8830970098', NULL, '08-06-2022 08:50:59am', '117.96.185.142', NULL, NULL),
(919, 'Ravi verma', 'Shajapur.m.p.', '9617131302', '08/06/2022', '10:05:am', 'India Bhopal 157.34.137.74', 'Life Partner', NULL),
(920, NULL, '-India', '8719859993', NULL, '08-06-2022 10:19:20am', '110.224.179.79', NULL, NULL),
(921, NULL, 'Prayagraj-India', '07905090598', NULL, '08-06-2022 03:17:42pm', '47.9.0.127', NULL, NULL),
(922, NULL, '-India', '7471184213', NULL, '08-06-2022 08:24:55pm', '157.34.210.204', NULL, NULL),
(923, NULL, 'Prayagraj-India', '9935212423', NULL, '09-06-2022 11:14:48am', '47.9.0.127', NULL, NULL),
(924, NULL, 'Ranchi-India', '9570138371', NULL, '10-06-2022 09:46:00am', '27.61.95.51', NULL, NULL),
(925, '', 'Ranchi-India', '9570138371', NULL, '10-06-2022 12:12:12pm', '27.61.95.51', NULL, 'I want to talk u'),
(926, '', 'Ranchi-India', '9570138371', NULL, '10-06-2022 12:14:29pm', '27.61.95.51', NULL, 'I want to talk u'),
(927, NULL, 'Kolkata-India', '8090844996', NULL, '10-06-2022 09:11:51pm', '47.15.191.50', NULL, NULL),
(928, NULL, '-', '9920338926', NULL, '11-06-2022 03:34:30pm', '103.169.246.109', NULL, NULL),
(929, NULL, 'Lucknow-India', '8318241660', NULL, '11-06-2022 06:41:09pm', '171.76.240.40', NULL, NULL),
(930, NULL, 'Lucknow-India', '8318241660', NULL, '11-06-2022 06:41:10pm', '171.76.240.40', NULL, NULL),
(931, NULL, '-India', '7987507228', NULL, '12-06-2022 02:34:53pm', '49.35.186.239', NULL, NULL),
(932, NULL, 'Kolkata-India', '9839736250', NULL, '12-06-2022 03:36:02pm', '47.15.148.124', NULL, NULL),
(933, NULL, 'Kolkata-India', '8552995941', NULL, '12-06-2022 03:46:02pm', '47.15.148.124', NULL, NULL),
(934, NULL, 'Kolkata-India', '9768536489', NULL, '12-06-2022 04:02:55pm', '47.15.148.124', NULL, NULL),
(935, NULL, 'Kolkata-India', '9768536489', NULL, '12-06-2022 04:08:56pm', '47.15.148.124', NULL, NULL),
(936, NULL, 'Kolkata-India', '8090844996', NULL, '12-06-2022 04:13:34pm', '47.15.148.124', NULL, NULL),
(937, NULL, 'Kolkata-India', '9140235740', NULL, '12-06-2022 04:20:10pm', '47.15.4.109', NULL, NULL),
(938, NULL, 'Kolkata-India', '9369690937', NULL, '12-06-2022 04:29:23pm', '47.15.4.109', NULL, NULL),
(939, NULL, 'Kolkata-India', '9990510737', NULL, '12-06-2022 04:39:56pm', '47.15.4.109', NULL, NULL),
(940, NULL, 'New Delhi-India', '8989898989', NULL, '12-06-2022 04:57:03pm', '27.7.218.191', NULL, NULL),
(941, NULL, 'Pune-India', '9552489080', NULL, '12-06-2022 07:45:19pm', '152.57.115.16', NULL, NULL),
(942, NULL, 'Kolkata-India', '9516238470', NULL, '13-06-2022 03:41:34pm', '47.15.6.186', NULL, NULL),
(943, NULL, 'Kolkata-India', '6388325775', NULL, '14-06-2022 10:12:23am', '47.15.19.85', NULL, NULL),
(944, NULL, '-India', '9754866457', NULL, '15-06-2022 01:04:46pm', '106.194.143.118', NULL, NULL),
(945, 'mahendra sahu', '-India', '9754866457', NULL, '15-06-2022 01:06:06pm', '106.194.143.118', NULL, 'hy'),
(946, NULL, 'Kolkata-India', '7654101316', NULL, '20-06-2022 09:06:17pm', '47.15.42.142', NULL, NULL),
(947, NULL, 'Kolkata-India', '8840269389', NULL, '21-06-2022 10:51:45am', '47.15.204.227', NULL, NULL),
(948, NULL, 'Delhi-India', '9675938153', NULL, '21-06-2022 03:42:07pm', '42.111.17.204', NULL, NULL),
(949, NULL, 'Chennai-India', '9807030805', NULL, '22-06-2022 03:52:20pm', '106.208.146.80', NULL, NULL),
(950, NULL, 'Chennai-India', '7499687458', NULL, '22-06-2022 04:04:49pm', '106.208.146.80', NULL, NULL),
(951, NULL, 'Chennai-India', '8077728933', NULL, '22-06-2022 04:13:27pm', '106.208.146.80', NULL, NULL),
(952, NULL, 'Chennai-India', '9198830205', NULL, '22-06-2022 04:20:31pm', '106.208.146.80', NULL, NULL),
(953, NULL, 'Chennai-India', '7697267093', NULL, '22-06-2022 04:28:01pm', '106.208.146.80', NULL, NULL),
(954, NULL, 'Chennai-India', '8169557930', NULL, '22-06-2022 04:34:28pm', '106.208.146.80', NULL, NULL),
(955, NULL, 'Pune-India', '7489162573', NULL, '23-06-2022 04:23:10pm', '49.35.248.225', NULL, NULL),
(956, NULL, '-India', '9630495273', NULL, '24-06-2022 03:20:37pm', '110.227.51.70', NULL, NULL),
(957, NULL, '-', '8928339966', NULL, '28-06-2022 09:48:45am', '47.9.1.88', NULL, NULL),
(958, NULL, '-', '8928339966', NULL, '28-06-2022 12:36:54pm', '47.9.1.233', NULL, NULL),
(959, NULL, '-', '9174081749', NULL, '28-06-2022 02:55:52pm', '157.34.141.66', NULL, NULL),
(960, 'Ashish Sahu ', '-', '8928339966', NULL, '28-06-2022 03:24:57pm', '47.9.1.143', NULL, 'Profile completed nahi ho Rahi'),
(961, NULL, '-', '9975482475', NULL, '28-06-2022 05:26:50pm', '117.96.169.3', NULL, NULL),
(962, NULL, '-', '9012008824', NULL, '29-06-2022 01:36:16pm', '47.15.137.148', NULL, NULL),
(963, NULL, '-', '08800541270', NULL, '01-07-2022 02:11:41am', '47.31.238.216', NULL, NULL),
(964, NULL, '-', '9431760914', NULL, '03-07-2022 10:00:46am', '47.15.159.34', NULL, NULL),
(965, NULL, '-', '7524931394', NULL, '03-07-2022 10:09:28am', '47.15.159.34', NULL, NULL),
(966, NULL, '-', '8422096002', NULL, '03-07-2022 10:20:00am', '47.15.159.34', NULL, NULL),
(967, NULL, '-', '7895998286', NULL, '03-07-2022 10:26:48am', '47.15.159.34', NULL, NULL),
(968, NULL, '-', '9675938153', NULL, '03-07-2022 11:00:04pm', '42.111.18.135', NULL, NULL),
(969, NULL, '-', '7979797979', NULL, '12-07-2022 12:31:43am', '157.37.167.4', NULL, NULL),
(970, NULL, '-', '23232323', NULL, '12-07-2022 01:04:36am', '157.37.167.4', NULL, NULL),
(971, NULL, '-', '7898457895', NULL, '12-07-2022 09:58:15pm', '47.247.192.149', NULL, NULL),
(972, NULL, '-', '9451333180', NULL, '15-07-2022 10:39:44pm', '47.15.210.255', NULL, NULL),
(973, NULL, '-', '9179999004', NULL, '16-07-2022 02:14:10pm', '157.34.186.176', NULL, NULL),
(974, NULL, '-', '9334617407', NULL, '17-07-2022 12:27:14pm', '157.35.10.134', NULL, NULL),
(975, NULL, '-', '6260631013', NULL, '17-07-2022 08:26:33pm', '157.34.24.210', NULL, NULL),
(976, NULL, '-', '8052584899', NULL, '21-07-2022 06:50:50pm', '47.15.230.33', NULL, NULL),
(977, 'Subodh Kumar', '-', '7210902490', NULL, '22-07-2022 09:26:29pm', '223.225.87.191', NULL, 'Need married for girls'),
(978, 'Chandan Sah ', '-', '9472060726', NULL, '24-07-2022 12:42:44am', '157.42.213.193', NULL, '  Whatsapp       '),
(979, NULL, '-', '9506207765', NULL, '24-07-2022 07:16:06am', '47.9.181.233', NULL, NULL),
(980, NULL, '-', '8733881605', NULL, '24-07-2022 08:17:19am', '106.205.212.181', NULL, NULL),
(981, NULL, '-', '9990882965', NULL, '24-07-2022 04:45:35pm', '47.15.249.65', NULL, NULL),
(982, NULL, '-', '9451980760', NULL, '24-07-2022 05:07:56pm', '47.15.249.65', NULL, NULL),
(983, NULL, '-', '6260631013', NULL, '24-07-2022 07:58:14pm', '49.35.244.250', NULL, NULL),
(984, NULL, '-', '8234088488', NULL, '24-07-2022 11:26:37pm', '157.34.92.8', NULL, NULL),
(985, NULL, '-', '9415488020', NULL, '25-07-2022 04:26:11pm', '47.15.193.10', NULL, NULL),
(986, NULL, '-', '9451154853', NULL, '26-07-2022 06:03:29am', '47.15.252.125', NULL, NULL),
(987, NULL, '-', '8866383837', NULL, '26-07-2022 06:12:41am', '47.15.39.192', NULL, NULL),
(988, NULL, '-', '9755748722', NULL, '26-07-2022 06:20:51am', '47.15.39.192', NULL, NULL),
(989, NULL, '-', '7544876275', NULL, '26-07-2022 12:34:31pm', '27.61.77.193', NULL, NULL),
(990, NULL, '-', '9919626820', NULL, '27-07-2022 11:28:28am', '47.15.39.169', NULL, NULL),
(991, NULL, '-', '7488175857', NULL, '27-07-2022 11:39:29am', '47.15.39.169', NULL, NULL),
(992, NULL, '-', '9453791077', NULL, '27-07-2022 11:55:09am', '47.15.39.169', NULL, NULL),
(993, NULL, '-', '9691671000', NULL, '28-07-2022 08:12:29am', '117.233.126.134', NULL, NULL),
(994, NULL, '-', '9981167449', NULL, '28-07-2022 10:46:02am', '106.194.157.127', NULL, NULL),
(995, NULL, '-', '8218064045', NULL, '28-07-2022 08:05:00pm', '106.208.156.86', NULL, NULL),
(996, NULL, '-', '08218064045', NULL, '28-07-2022 08:11:18pm', '106.208.156.86', NULL, NULL),
(997, NULL, '-', '9990040272', NULL, '28-07-2022 08:17:57pm', '106.208.156.86', NULL, NULL),
(998, NULL, '-', '8828271953', NULL, '28-07-2022 08:29:28pm', '106.208.156.86', NULL, NULL),
(999, NULL, '-', '9415249184', NULL, '28-07-2022 08:41:06pm', '106.208.156.86', NULL, NULL),
(1000, NULL, '-', '8604898108', NULL, '29-07-2022 11:45:23am', '47.15.219.126', NULL, NULL),
(1001, NULL, '-', '8959028027', NULL, '29-07-2022 01:12:12pm', '106.66.19.83', NULL, NULL),
(1002, NULL, '-', '7700823510', NULL, '29-07-2022 02:04:07pm', '117.99.226.55', NULL, NULL),
(1003, NULL, '-', '9838637311', NULL, '31-07-2022 11:03:27am', '223.225.246.237', NULL, NULL),
(1004, NULL, '-', '7524931394', NULL, '31-07-2022 06:39:42pm', '171.76.248.175', NULL, NULL),
(1005, NULL, '-', '6393139372', NULL, '07-08-2022 09:59:11am', '47.15.127.167', NULL, NULL),
(1006, NULL, '-', '06393139372', NULL, '07-08-2022 10:05:21am', '47.15.127.167', NULL, NULL),
(1007, NULL, '-', '7506160127', NULL, '07-08-2022 10:12:40am', '47.15.127.167', NULL, NULL),
(1008, NULL, '-', '9987646868', NULL, '07-08-2022 10:19:22am', '47.15.127.167', NULL, NULL),
(1009, NULL, '-', '09793199236', NULL, '13-08-2022 04:35:30pm', '171.76.254.106', NULL, NULL),
(1010, NULL, '-', '9713331115', NULL, '17-08-2022 01:26:50am', '106.207.245.117', NULL, NULL),
(1011, NULL, '-', 'diacrissu1991@m', NULL, '24-08-2022 09:48:21am', '185.108.106.147', NULL, NULL),
(1012, 'Akesh Gupta ', '-', '9415361715', NULL, '27-08-2022 04:07:28pm', '223.225.121.240', NULL, 'Shadi help '),
(1013, NULL, '-', '8981669805', NULL, '01-09-2022 06:38:09pm', '157.40.254.114', NULL, NULL),
(1014, NULL, '-', '9307331847', NULL, '03-09-2022 01:42:52pm', '47.15.225.245', NULL, NULL),
(1015, NULL, '-', '9450730745', NULL, '09-09-2022 06:37:13am', '47.15.129.142', NULL, NULL),
(1016, NULL, '-', '8085047697', NULL, '17-09-2022 06:08:21pm', '47.15.175.77', NULL, NULL),
(1017, NULL, '-', '9760337465', NULL, '17-09-2022 06:11:24pm', '47.15.175.77', NULL, NULL),
(1018, NULL, '-', '9670957718', NULL, '17-09-2022 06:24:06pm', '47.15.175.77', NULL, NULL),
(1019, NULL, '-', '9838512593', NULL, '17-09-2022 06:30:13pm', '47.15.175.77', NULL, NULL),
(1020, NULL, '-', '7905860933', NULL, '17-09-2022 06:39:49pm', '47.15.175.77', NULL, NULL),
(1021, NULL, '-', '9918645968', NULL, '17-09-2022 06:46:19pm', '47.15.175.77', NULL, NULL),
(1022, NULL, '-', '9920550559', NULL, '17-09-2022 06:55:05pm', '47.15.175.77', NULL, NULL),
(1023, NULL, '-', '7700956786', NULL, '17-09-2022 07:00:56pm', '47.15.175.77', NULL, NULL),
(1024, NULL, '-', '6306574845', NULL, '18-09-2022 09:27:15am', '27.60.103.31', NULL, NULL),
(1025, NULL, '-', '8076925424', NULL, '18-09-2022 10:41:12am', '47.15.182.216', NULL, NULL),
(1026, NULL, '-', '9236556321', NULL, '18-09-2022 10:51:38am', '47.15.182.216', NULL, NULL),
(1027, NULL, '-', '9334163624', NULL, '18-09-2022 10:58:10am', '47.15.182.216', NULL, NULL),
(1028, NULL, '-', '9457255752', NULL, '18-09-2022 11:05:23am', '47.15.182.216', NULL, NULL),
(1029, NULL, '-', '9058405768', NULL, '18-09-2022 11:10:25am', '47.15.182.216', NULL, NULL),
(1030, NULL, '-', '9335144095', NULL, '18-09-2022 11:27:46am', '47.15.182.216', NULL, NULL),
(1031, NULL, '-', '9004846148', NULL, '18-09-2022 11:34:27am', '47.15.182.216', NULL, NULL),
(1032, NULL, '-', '9910109209', NULL, '18-09-2022 11:39:57am', '47.15.182.216', NULL, NULL),
(1033, NULL, '-', '8894686462', NULL, '18-09-2022 12:09:13pm', '47.15.182.216', NULL, NULL),
(1034, NULL, '-', '9936454510', NULL, '18-09-2022 12:15:56pm', '47.15.182.216', NULL, NULL),
(1035, NULL, '-', '9876775555', NULL, '18-09-2022 12:21:21pm', '47.15.182.216', NULL, NULL),
(1036, NULL, '-', '7985946342', NULL, '18-09-2022 12:28:34pm', '47.15.182.216', NULL, NULL),
(1037, NULL, 'Kolkata-India', '9096010111', NULL, '18-09-2022 02:56:33pm', '47.15.182.216', NULL, NULL),
(1038, NULL, 'Kolkata-India', '9870771166', NULL, '18-09-2022 03:03:41pm', '47.15.182.216', NULL, NULL),
(1039, NULL, 'Kolkata-India', '9451862708', NULL, '18-09-2022 03:14:19pm', '47.15.182.216', NULL, NULL),
(1040, NULL, 'Kolkata-India', '8828153831', NULL, '18-09-2022 03:18:44pm', '47.15.182.216', NULL, NULL),
(1041, NULL, 'Kolkata-India', '8828153831', NULL, '18-09-2022 03:20:26pm', '47.15.182.216', NULL, NULL),
(1042, NULL, 'Kolkata-India', '9768357507', NULL, '18-09-2022 03:21:41pm', '47.15.182.216', NULL, NULL),
(1043, NULL, 'Kolkata-India', '9546527259', NULL, '18-09-2022 03:28:52pm', '47.15.182.216', NULL, NULL),
(1044, NULL, 'Surat-India', '7067007078', NULL, '18-09-2022 10:36:27pm', '1.38.165.64', NULL, NULL),
(1045, NULL, 'Lucknow-India', '7459843620', NULL, '19-09-2022 07:57:25am', '27.60.98.16', NULL, NULL),
(1046, NULL, 'Kolkata-India', '7503816416', NULL, '19-09-2022 08:08:34am', '47.15.23.17', NULL, NULL),
(1047, NULL, '-India', '7860385001', NULL, '04-10-2022 08:12:54pm', '49.36.208.60', NULL, NULL),
(1048, NULL, 'Noida-India', '9212066102', NULL, '07-10-2022 10:29:09pm', '223.233.79.85', NULL, NULL),
(1049, 'AL sah', '-India', '9931472897', NULL, '07-10-2022 10:30:30pm', '202.168.85.96', NULL, 'eng boy ke liy'),
(1050, NULL, 'Kolkata-India', '9431261406', NULL, '08-10-2022 01:53:15pm', '47.15.14.207', NULL, NULL),
(1051, NULL, 'Kolkata-India', '9717464805', NULL, '08-10-2022 02:01:17pm', '47.15.14.207', NULL, NULL),
(1052, NULL, 'Kolkata-India', '09717464805', NULL, '08-10-2022 02:03:40pm', '47.15.14.207', NULL, NULL),
(1053, NULL, 'Kolkata-India', '8447657837', NULL, '08-10-2022 02:09:36pm', '47.15.14.207', NULL, NULL),
(1054, NULL, 'Kolkata-India', '9903193577', NULL, '08-10-2022 02:16:23pm', '47.15.14.207', NULL, NULL),
(1055, NULL, 'Kolkata-India', '8000118621', NULL, '08-10-2022 02:22:13pm', '47.15.14.207', NULL, NULL),
(1056, NULL, 'Bhopal-India', '8770607155', NULL, '08-10-2022 11:26:34pm', '49.36.42.220', NULL, NULL),
(1057, NULL, '-India', '7905530014', NULL, '09-10-2022 02:30:15am', '47.15.96.79', NULL, NULL),
(1058, 'BalliaUp', 'Ballia up', '9795545141', '19/10/2022', '06:10:pm', 'India Lucknow 47.9.68.118', 'Life Partner', NULL),
(1059, NULL, 'Lucknow-India', '9451140870', NULL, '26-10-2022 03:16:58pm', '27.60.101.136', NULL, NULL),
(1060, NULL, 'Lucknow-India', '7398065668', NULL, '26-10-2022 03:25:32pm', '27.60.101.136', NULL, NULL),
(1061, NULL, 'Lucknow-India', '9450439371', NULL, '26-10-2022 03:32:10pm', '27.60.101.136', NULL, NULL),
(1062, NULL, 'Lucknow-India', '9685929234', NULL, '26-10-2022 03:35:53pm', '27.60.101.136', NULL, NULL),
(1063, NULL, 'Lucknow-India', '8115307011', NULL, '26-10-2022 03:41:53pm', '27.60.101.136', NULL, NULL),
(1064, NULL, 'Lucknow-India', '8317005132', NULL, '26-10-2022 03:47:28pm', '27.60.101.136', NULL, NULL),
(1065, NULL, 'Lucknow-India', '9410300644', NULL, '26-10-2022 03:53:45pm', '27.60.101.136', NULL, NULL),
(1066, NULL, 'Lucknow-India', '8070300004', NULL, '26-10-2022 04:00:35pm', '27.60.101.136', NULL, NULL),
(1067, NULL, 'Lucknow-India', '9549889644', NULL, '26-10-2022 04:09:15pm', '27.60.101.136', NULL, NULL),
(1068, NULL, 'Lucknow-India', '9926948994', NULL, '26-10-2022 04:20:01pm', '27.60.101.136', NULL, NULL),
(1069, NULL, 'Lucknow-India', '9893872122', NULL, '26-10-2022 04:28:51pm', '27.60.101.136', NULL, NULL),
(1070, NULL, 'Lucknow-India', '6264247782', NULL, '26-10-2022 04:34:33pm', '27.60.101.136', NULL, NULL),
(1071, NULL, 'Lucknow-India', '9893250216', NULL, '26-10-2022 04:42:35pm', '27.60.101.136', NULL, NULL),
(1072, 'Sachin D', 'Jaipur-India', '7982824595', NULL, '26-10-2022 05:10:28pm', '157.37.142.80', NULL, 'Gh'),
(1073, NULL, 'Indirapuram-India', '999999999', NULL, '01-11-2022 09:01:43pm', '27.7.218.93', NULL, NULL),
(1074, NULL, '-Germany', '9999999999', NULL, '04-11-2022 06:34:42pm', '193.29.61.11', NULL, NULL),
(1075, NULL, '-Germany', '8888888888', NULL, '04-11-2022 06:40:02pm', '193.29.61.11', NULL, NULL),
(1076, NULL, '-Germany', '8898998989', NULL, '04-11-2022 06:41:02pm', '193.29.61.11', NULL, NULL),
(1077, NULL, 'Lucknow-India', '8076243554', NULL, '08-11-2022 04:15:03pm', '47.9.136.164', NULL, NULL),
(1078, NULL, 'Lucknow-India', '7700956786', NULL, '08-11-2022 04:25:18pm', '47.9.136.164', NULL, NULL),
(1079, NULL, 'Kolkata-India', '09004846148', NULL, '08-11-2022 04:32:09pm', '47.15.14.109', NULL, NULL),
(1080, NULL, 'Kolkata-India', '9920550559', NULL, '08-11-2022 04:42:31pm', '47.15.14.109', NULL, NULL),
(1081, NULL, 'Jaipur-India', '9828032103', NULL, '13-12-2022 06:31:43am', '171.79.176.21', NULL, NULL),
(1082, 'Sandeep Agrawal ', 'Jaipur-India', '9828032103', NULL, '13-12-2022 06:34:24am', '171.79.176.21', NULL, 'Unable to login '),
(1083, 'Sandeep Agrawal ', 'Jaipur-India', '9828032103', NULL, '13-12-2022 06:44:02am', '171.79.176.21', NULL, 'OTP not received on email id '),
(1084, 'Rohit Kumar Sanu', 'Bhopal-India', '8815717123', NULL, '16-12-2022 07:37:47am', '157.34.56.199', NULL, 'Kareli Badi'),
(1085, NULL, '-India', '8896769000', NULL, '27-12-2022 08:14:04pm', '49.36.209.193', NULL, NULL),
(1086, NULL, '-India', '9755472019', NULL, '27-12-2022 09:37:28pm', '110.227.49.40', NULL, NULL),
(1087, NULL, 'Kota-India', '8000462411', NULL, '21-01-2023 09:44:38pm', '157.38.70.242', NULL, NULL),
(1088, NULL, 'Lucknow-India', '8400190065', NULL, '22-01-2023 08:22:25am', '47.9.164.160', NULL, NULL),
(1089, NULL, 'Lucknow-India', '7985390764', NULL, '22-01-2023 08:32:38am', '47.9.164.160', NULL, NULL),
(1090, 'achelal sah', 'Imphal-India', '9931472897', NULL, '01-02-2023 10:22:44pm', '202.168.84.108', NULL, 'boy ke liy'),
(1091, 'Arjun Gupta', 'Mau', '+917459843620', '04/02/2023', '09:42:am', 'India Lucknow 171.76.252.15', 'Life Partner', NULL),
(1092, NULL, 'Lucknow-India', '9005200109', NULL, '19-02-2023 09:16:11am', '171.76.251.87', NULL, NULL),
(1093, NULL, 'Lucknow-India', '8755999578', NULL, '19-02-2023 09:26:12am', '171.76.251.87', NULL, NULL),
(1094, NULL, 'Lucknow-India', '9891902926', NULL, '19-02-2023 09:36:57am', '171.76.251.87', NULL, NULL),
(1095, NULL, 'Lucknow-India', '8795252530', NULL, '19-02-2023 09:42:01am', '171.76.251.87', NULL, NULL),
(1096, NULL, 'Bhopal-India', '8370040894', NULL, '21-02-2023 01:56:21pm', '110.227.60.130', NULL, NULL),
(1097, NULL, '-India', '9522382641', NULL, '13-03-2023 11:41:53am', '157.34.249.87', NULL, NULL),
(1098, NULL, 'Patna-India', '8960528220', NULL, '12-04-2023 05:47:39pm', '106.221.62.125', NULL, NULL),
(1099, NULL, 'Patna-India', '9990339746', NULL, '12-04-2023 05:58:32pm', '106.221.62.125', NULL, NULL),
(1100, NULL, 'Saharanpur-India', '9120068470', NULL, '15-04-2023 10:32:44am', '103.15.255.211', NULL, NULL),
(1101, 'Hi', 'Delhi-India', '9990339746', NULL, '16-04-2023 07:36:46pm', '152.58.92.103', NULL, 'Hhshz'),
(1102, 'Idfdyfy', 'Igguggu', '9990339746', '16/04/2023', '07:37:pm', 'India Delhi 152.58.92.103', 'Life Partner', NULL),
(1103, 'dcd', 'Delhi-India', '09335994716', NULL, '16-04-2023 08:03:40pm', '152.58.92.8', NULL, 'eeee'),
(1104, 'ss', 's', 's', '16/04/2023', '08:03:pm', 'India Delhi 152.58.92.8', 'Life Partner', NULL),
(1105, 'd', 'd', 'd', '16/04/2023', '08:05:pm', 'India Delhi 152.58.92.8', 'Digital Marketing', NULL),
(1106, 'd', 'd', 'd', '16/04/2023', '08:05:pm', 'India Delhi 152.58.92.8', 'Matrimonial Service', NULL),
(1107, 'd', 'd', 'd', '16/04/2023', '08:05:pm', 'India Delhi 152.58.92.8', 'Website Design & Developement', NULL),
(1108, NULL, 'Alipur Duar-India', '9748844976', NULL, '17-04-2023 02:27:37pm', '106.212.8.73', NULL, NULL),
(1109, NULL, 'New Delhi-India', '898989898', NULL, '19-04-2023 12:29:32pm', '103.157.139.2', NULL, NULL),
(1110, NULL, 'Lucknow-India', '9399517465', NULL, '19-04-2023 06:27:10pm', '47.15.41.1', NULL, NULL),
(1111, NULL, 'Lucknow-India', '9889871094', NULL, '19-04-2023 06:37:50pm', '47.15.41.1', NULL, NULL),
(1112, NULL, 'Lucknow-India', '9165863889', NULL, '19-04-2023 06:45:57pm', '47.15.39.47', NULL, NULL),
(1113, NULL, 'Lucknow-India', '9415934915', NULL, '19-04-2023 07:08:25pm', '47.15.32.53', NULL, NULL),
(1114, NULL, 'Lucknow-India', '9811933839', NULL, '19-04-2023 07:17:27pm', '47.15.32.53', NULL, NULL),
(1115, NULL, 'Lucknow-India', '9931662435', NULL, '24-04-2023 05:42:15pm', '47.9.152.58', NULL, NULL),
(1116, NULL, 'Lucknow-India', '9399517465', NULL, '25-04-2023 04:35:12pm', '117.98.56.28', NULL, NULL),
(1117, NULL, 'Lucknow-India', '9826315155', NULL, '25-04-2023 04:37:30pm', '117.98.56.28', NULL, NULL),
(1118, NULL, 'Lucknow-India', '9373765697', NULL, '25-04-2023 04:48:31pm', '117.98.56.28', NULL, NULL),
(1119, NULL, 'Lucknow-India', '8839778891', NULL, '25-04-2023 04:58:32pm', '117.98.56.28', NULL, NULL),
(1120, NULL, 'Lucknow-India', '8709815565', NULL, '25-04-2023 05:04:05pm', '117.98.56.28', NULL, NULL),
(1121, NULL, 'Lucknow-India', '8792750204', NULL, '25-04-2023 05:10:59pm', '117.98.56.28', NULL, NULL),
(1122, NULL, 'Lucknow-India', '9905670325', NULL, '25-04-2023 05:16:49pm', '117.98.56.28', NULL, NULL),
(1123, NULL, 'Lucknow-India', '9142887603', NULL, '25-04-2023 05:22:42pm', '117.98.56.28', NULL, NULL),
(1124, NULL, 'Lucknow-India', '8553489416', NULL, '25-04-2023 05:32:56pm', '47.9.170.148', NULL, NULL),
(1125, NULL, 'Lucknow-India', '8200257114', NULL, '25-04-2023 05:40:21pm', '47.9.126.44', NULL, NULL),
(1126, NULL, 'Lucknow-India', '9920031867', NULL, '26-04-2023 05:04:00pm', '47.9.78.26', NULL, NULL),
(1127, NULL, 'Kanpur-India', '9051026301', NULL, '26-04-2023 05:09:58pm', '47.9.129.107', NULL, NULL),
(1128, NULL, 'Lucknow-India', '8600341749', NULL, '26-04-2023 05:19:36pm', '47.9.102.69', NULL, NULL),
(1129, NULL, 'Lucknow-India', '8637814656', NULL, '26-04-2023 05:30:36pm', '47.9.102.69', NULL, NULL),
(1130, NULL, 'Lucknow-India', '9140273479', NULL, '26-04-2023 05:33:52pm', '47.9.158.177', NULL, NULL),
(1131, NULL, 'Lucknow-India', '9278031777', NULL, '26-04-2023 05:40:05pm', '47.9.158.177', NULL, NULL),
(1132, NULL, 'Lucknow-India', '9266729808', NULL, '26-04-2023 05:42:52pm', '47.9.106.38', NULL, NULL),
(1133, NULL, 'Lucknow-India', '9307299215', NULL, '26-04-2023 05:46:59pm', '47.9.106.38', NULL, NULL),
(1134, NULL, 'Lucknow-India', '8114221965', NULL, '26-04-2023 05:49:19pm', '47.9.106.38', NULL, NULL),
(1135, NULL, 'Lucknow-India', '9811181262', NULL, '26-04-2023 06:00:33pm', '117.98.66.40', NULL, NULL),
(1136, NULL, 'Lucknow-India', '9411890092', NULL, '26-04-2023 06:06:31pm', '117.98.66.40', NULL, NULL),
(1137, NULL, 'Lucknow-India', '6306914502', NULL, '26-04-2023 06:11:40pm', '117.98.66.40', NULL, NULL),
(1138, NULL, 'Lucknow-India', '8860095044', NULL, '26-04-2023 06:16:26pm', '117.98.66.40', NULL, NULL),
(1139, NULL, 'Lucknow-India', '8860095044', NULL, '26-04-2023 06:20:17pm', '117.98.66.40', NULL, NULL),
(1140, NULL, 'Lucknow-India', '9450124582', NULL, '26-04-2023 06:24:23pm', '47.9.144.210', NULL, NULL),
(1141, NULL, 'Lucknow-India', '9580246612', NULL, '26-04-2023 06:32:40pm', '47.9.144.210', NULL, NULL),
(1142, NULL, 'Lucknow-India', '8115307011', NULL, '26-04-2023 06:37:09pm', '47.9.144.210', NULL, NULL),
(1143, NULL, 'Lucknow-India', '9211997104', NULL, '27-04-2023 04:35:49pm', '223.189.254.127', NULL, NULL),
(1144, NULL, 'Lucknow-India', '9576327287', NULL, '27-04-2023 04:45:35pm', '223.189.254.127', NULL, NULL),
(1145, NULL, 'Lucknow-India', '6299364042', NULL, '27-04-2023 04:53:08pm', '223.189.254.127', NULL, NULL),
(1146, NULL, 'Lucknow-India', '9934519560', NULL, '27-04-2023 05:06:25pm', '223.189.254.127', NULL, NULL),
(1147, NULL, 'Lucknow-India', '6204362701', NULL, '27-04-2023 05:17:51pm', '223.189.254.127', NULL, NULL),
(1148, NULL, 'Lucknow-India', '8604784046', NULL, '27-04-2023 05:22:48pm', '223.189.254.127', NULL, NULL),
(1149, NULL, 'Lucknow-India', '9473095448', NULL, '27-04-2023 05:29:10pm', '223.189.254.127', NULL, NULL),
(1150, NULL, 'Lucknow-India', '9334770511', NULL, '28-04-2023 03:50:33pm', '223.180.185.25', NULL, NULL),
(1151, NULL, 'Lucknow-India', '9987993671', NULL, '28-04-2023 04:06:42pm', '223.180.185.25', NULL, NULL),
(1152, NULL, '-', '7984140680', NULL, '28-04-2023 04:14:30pm', '223.180.185.25', NULL, NULL),
(1153, NULL, '-', '9334434300', NULL, '28-04-2023 04:27:19pm', '223.180.185.25', NULL, NULL),
(1154, NULL, '-', '9007733058', NULL, '28-04-2023 04:42:54pm', '223.180.185.25', NULL, NULL),
(1155, NULL, 'Delhi-India', '6264750364', NULL, '04-05-2023 08:56:12pm', '122.162.145.165', NULL, NULL),
(1156, NULL, 'Lucknow-India', '9616502659', NULL, '04-05-2023 10:34:40pm', '117.96.184.165', NULL, NULL),
(1157, NULL, 'Mirzapur-India', '91811550551', NULL, '04-05-2023 11:27:16pm', '42.105.129.215', NULL, NULL),
(1158, NULL, 'Mumbai-India', '9931662435', NULL, '05-05-2023 12:45:17pm', '117.98.40.170', NULL, NULL),
(1159, NULL, 'Mumbai-India', '9415238836', NULL, '05-05-2023 12:50:27pm', '117.98.40.170', NULL, NULL),
(1160, NULL, 'Mumbai-India', '9451056359', NULL, '05-05-2023 01:03:21pm', '117.98.40.170', NULL, NULL),
(1161, NULL, 'Mumbai-India', '9631500958', NULL, '05-05-2023 01:09:49pm', '117.98.40.170', NULL, NULL),
(1162, NULL, 'Mumbai-India', '9407941153', NULL, '05-05-2023 01:20:38pm', '117.98.40.170', NULL, NULL),
(1163, NULL, 'Mumbai-India', '7654863103', NULL, '05-05-2023 01:30:05pm', '117.98.40.170', NULL, NULL),
(1164, NULL, 'Mumbai-India', '9401532200', NULL, '05-05-2023 01:41:17pm', '117.98.40.170', NULL, NULL),
(1165, NULL, 'Mumbai-India', '9330975324', NULL, '05-05-2023 01:52:41pm', '117.98.40.170', NULL, NULL),
(1166, NULL, 'Mumbai-India', '8825375937', NULL, '05-05-2023 02:01:45pm', '117.98.40.170', NULL, NULL),
(1167, NULL, 'Mumbai-India', '9507193591', NULL, '05-05-2023 02:08:20pm', '117.98.40.170', NULL, NULL),
(1168, NULL, 'Mumbai-India', '9934062266', NULL, '05-05-2023 02:16:03pm', '117.98.40.170', NULL, NULL),
(1169, NULL, 'Indore-India', '9179432213', NULL, '05-05-2023 03:29:06pm', '49.36.24.38', NULL, NULL),
(1170, 'Vipin kumar sahu ', 'Indore-India', '6267170758', NULL, '05-05-2023 06:28:24pm', '157.34.42.133', NULL, 'Marriage'),
(1171, NULL, 'Lucknow-India', '9576115379', NULL, '06-05-2023 12:15:41pm', '47.15.39.144', NULL, NULL),
(1172, NULL, 'Patna-India', '7488303331', NULL, '06-05-2023 11:02:38pm', '106.206.207.165', NULL, NULL),
(1173, NULL, '-', '9452379616', NULL, '07-05-2023 12:02:10pm', '223.189.206.117', NULL, NULL),
(1174, NULL, '-', '9329239768', NULL, '07-05-2023 12:13:12pm', '223.189.206.117', NULL, NULL),
(1175, NULL, '-', '9981771444', NULL, '07-05-2023 12:32:48pm', '223.189.206.117', NULL, NULL),
(1176, NULL, '-', '9934363003', NULL, '07-05-2023 12:41:22pm', '223.189.206.117', NULL, NULL),
(1177, NULL, 'Delhi-India', '7549156463', NULL, '07-05-2023 03:05:08pm', '223.189.206.117', NULL, NULL),
(1178, NULL, 'Lucknow-India', '9140502007', NULL, '09-05-2023 11:41:04am', '47.9.76.44', NULL, NULL),
(1179, NULL, 'Lucknow-India', '8827732348', NULL, '09-05-2023 11:47:31am', '47.9.76.44', NULL, NULL),
(1180, NULL, 'Lucknow-India', '9260973108', NULL, '09-05-2023 11:58:08am', '47.9.76.44', NULL, NULL),
(1181, NULL, 'Mumbai-India', '7208277707', NULL, '11-05-2023 08:28:19pm', '42.107.132.230', NULL, NULL),
(1182, 'Pappu kumar gupta', 'Lucknow-India', '6306574845', NULL, '22-07-2023 08:59:20am', '47.15.6.33', NULL, 'Educated girl '),
(1183, NULL, 'Sahapur-India', '9377316118', NULL, '12-08-2023 09:29:25pm', '152.58.128.112', NULL, NULL),
(1184, NULL, 'Lucknow-India', '9795018874', NULL, '22-08-2023 11:35:58am', '47.15.2.235', NULL, NULL);
INSERT INTO `contact` (`id`, `name`, `address`, `mobile`, `date`, `time`, `ip`, `lookfor`, `messsage`) VALUES
(1185, NULL, '-United States', '457445875', NULL, '24-08-2023 10:34:20am', '185.220.103.116', NULL, NULL),
(1186, NULL, '-India', '08539803103', NULL, '15-09-2023 10:36:45pm', '49.37.26.99', NULL, NULL),
(1187, NULL, 'Ahmedabad-India', '9340904694', NULL, '11-10-2023 11:16:04pm', '152.58.58.27', NULL, NULL),
(1188, NULL, 'Lucknow-India', '8340686297', NULL, '21-10-2023 09:35:06pm', '47.9.114.242', NULL, NULL),
(1189, NULL, 'Varanasi-India', '6307575456', NULL, '22-10-2023 01:59:24pm', '1.22.78.219', NULL, NULL),
(1190, NULL, 'Lucknow-India', '9771170900', NULL, '22-10-2023 02:49:24pm', '223.189.238.125', NULL, NULL),
(1191, NULL, 'Lucknow-India', '8340449001', NULL, '22-10-2023 03:07:09pm', '223.189.238.125', NULL, NULL),
(1192, NULL, 'Lucknow-India', '9334422976', NULL, '22-10-2023 03:14:55pm', '223.189.238.125', NULL, NULL),
(1193, NULL, 'Lucknow-India', '9794470724', NULL, '22-10-2023 03:59:20pm', '223.189.238.125', NULL, NULL),
(1194, NULL, 'Lucknow-India', '7488827675', NULL, '22-10-2023 04:14:21pm', '223.189.238.125', NULL, NULL),
(1195, NULL, 'Lucknow-India', '9284393438', NULL, '22-10-2023 04:18:08pm', '223.189.238.125', NULL, NULL),
(1196, NULL, 'Lucknow-India', '7705933221', NULL, '22-10-2023 04:32:16pm', '223.189.238.125', NULL, NULL),
(1197, NULL, 'Lucknow-India', '8889273211', NULL, '22-10-2023 04:39:29pm', '223.189.238.125', NULL, NULL),
(1198, NULL, '-', '8797240137', NULL, '22-10-2023 04:47:34pm', '223.189.238.125', NULL, NULL),
(1199, NULL, 'Shamli-India', '8630933481', NULL, '25-10-2023 05:53:31am', '106.195.121.11', NULL, NULL),
(1200, NULL, 'Lucknow-India', '9792269121', NULL, '29-10-2023 09:48:47pm', '152.58.156.202', NULL, NULL),
(1201, NULL, 'Delhi-India', '9090909090', NULL, '25-11-2023 12:16:18pm', '146.196.34.179', NULL, NULL),
(1202, NULL, 'Delhi-India', '6767676767', NULL, '25-11-2023 12:52:36pm', '146.196.34.179', NULL, NULL),
(1203, NULL, 'Delhi-India', '7878787878', NULL, '25-11-2023 01:04:03pm', '146.196.34.179', NULL, NULL),
(1204, NULL, 'Delhi-India', '78787878', NULL, '25-11-2023 01:06:28pm', '146.196.34.179', NULL, NULL),
(1205, 'Joy', 'Delhi', '7878787878', '25/11/2023', '01:37:pm', 'India Delhi 146.196.34.179', 'Website Developement', NULL),
(1206, NULL, 'Kanpur-India', '7217789957', NULL, '14-12-2023 08:57:39pm', '47.9.132.145', NULL, NULL),
(1207, NULL, 'Ghaziabad-India', '7905676885', NULL, '16-12-2023 04:53:44pm', '60.254.99.199', NULL, NULL),
(1208, NULL, 'Patna-India', '9608299387', NULL, '18-12-2023 07:23:22pm', '152.59.133.95', NULL, NULL),
(1209, ' ', 'Lucknow-India', '9807719509', NULL, '22-12-2023 04:32:59pm', '47.15.188.150', NULL, 'Kaha ho sachin'),
(1210, NULL, 'Kanpur-India', '8115902134', NULL, '24-12-2023 09:30:40am', '47.15.158.195', NULL, NULL),
(1211, 'cgAhLGLz', 'cgAhLG', 'cgAhLG', '08/01/2024', '01:02:am', 'Germany Frankfurt am Main 194.126.177.80', 'Registration', NULL),
(1212, 'cgAhLGLz', 'cgAhLG', 'cgAhLG', '08/01/2024', '01:02:am', 'Germany Frankfurt am Main 194.126.177.80', 'Matrimonial Membership', NULL),
(1213, 'cgAhLGLz', 'cgAhLG', 'cgAhLG', '08/01/2024', '01:02:am', 'Germany Frankfurt am Main 194.126.177.80', 'Website Developement', NULL),
(1214, 'cgAhLGLz', 'cgAhLG', 'cgAhLG', '08/01/2024', '01:03:am', 'Germany Frankfurt am Main 194.126.177.80', 'Feedback', NULL),
(1215, 'cgAhLGLz', 'cgAhLG', 'cgAhLG', '08/01/2024', '01:12:am', 'Germany Frankfurt am Main 194.126.177.80', 'Feedback', NULL),
(1216, 'cgAhLGLz', 'cgAhLG', 'cgAhLG', '08/01/2024', '02:23:am', 'Germany Frankfurt am Main 194.126.177.80', 'Website Developement', NULL),
(1217, 'Smith', '3', '3', '09/01/2024', '09:13:pm', 'India Mumbai 146.70.142.92', 'Registration', NULL),
(1218, '', '', '', '09/01/2024', '09:13:pm', 'India Mumbai 146.70.142.92', 'Website Developement', NULL),
(1219, '', '', '', '09/01/2024', '09:13:pm', 'India Mumbai 146.70.142.92', 'Matrimonial Membership', NULL),
(1220, '', '', '', '09/01/2024', '09:13:pm', 'India Mumbai 146.70.142.92', 'Feedback', NULL),
(1221, '', '', '', '09/01/2024', '09:13:pm', 'India Mumbai 146.70.142.92', 'Registration', NULL),
(1222, 'Smith', '3', '3', '09/01/2024', '09:13:pm', 'India Mumbai 146.70.142.92', 'Website Developement', NULL),
(1223, 'Smith', '3', '3', '09/01/2024', '09:13:pm', 'India Mumbai 146.70.142.92', 'Feedback', NULL),
(1224, 'Smith', '3', '3', '09/01/2024', '09:13:pm', 'India Mumbai 146.70.142.92', 'Matrimonial Membership', NULL),
(1225, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:13:46pm', '146.70.142.92', NULL, NULL),
(1226, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:13:47pm', '146.70.142.92', NULL, NULL),
(1227, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:13:48pm', '146.70.142.92', NULL, NULL),
(1228, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:13:49pm', '146.70.142.92', NULL, NULL),
(1229, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:13:49pm', '146.70.142.92', NULL, NULL),
(1230, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:13:50pm', '146.70.142.92', NULL, NULL),
(1231, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:13:50pm', '146.70.142.92', NULL, NULL),
(1232, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:13:51pm', '146.70.142.92', NULL, NULL),
(1233, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:13:52pm', '146.70.142.92', NULL, NULL),
(1234, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:13:53pm', '146.70.142.92', NULL, NULL),
(1235, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:13:54pm', '146.70.142.92', NULL, NULL),
(1236, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:13:55pm', '146.70.142.92', NULL, NULL),
(1237, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:13:56pm', '146.70.142.92', NULL, NULL),
(1238, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:13:57pm', '146.70.142.92', NULL, NULL),
(1239, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:13:57pm', '146.70.142.92', NULL, NULL),
(1240, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:13:59pm', '146.70.142.92', NULL, NULL),
(1241, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:13:59pm', '146.70.142.92', NULL, NULL),
(1242, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:14:00pm', '146.70.142.92', NULL, NULL),
(1243, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:14:01pm', '146.70.142.92', NULL, NULL),
(1244, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:14:02pm', '146.70.142.92', NULL, NULL),
(1245, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:14:03pm', '146.70.142.92', NULL, NULL),
(1246, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:14:04pm', '146.70.142.92', NULL, NULL),
(1247, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:14:05pm', '146.70.142.92', NULL, NULL),
(1248, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:14:07pm', '146.70.142.92', NULL, NULL),
(1249, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:14:07pm', '146.70.142.92', NULL, NULL),
(1250, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:14:09pm', '146.70.142.92', NULL, NULL),
(1251, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:14:11pm', '146.70.142.92', NULL, NULL),
(1252, 'Smith', '3', '3', '09/01/2024', '09:16:pm', 'India Mumbai 146.70.142.92', 'Registration', NULL),
(1253, 'Smith', '3', '3', '09/01/2024', '09:16:pm', 'India Mumbai 146.70.142.92', 'Registration', NULL),
(1254, 'Smith', '3', '3', '09/01/2024', '09:16:pm', 'India Mumbai 146.70.142.92', 'Registration', NULL),
(1255, 'Smith', '3', '3', '09/01/2024', '09:16:pm', 'India Mumbai 146.70.142.92', 'Registration', NULL),
(1256, 'Smith', '3', '3', '09/01/2024', '09:16:pm', 'India Mumbai 146.70.142.92', 'Registration', NULL),
(1257, '', '', '', '09/01/2024', '09:16:pm', 'India Mumbai 146.70.142.92', 'Website Developement', NULL),
(1258, '', '', '', '09/01/2024', '09:16:pm', 'India Mumbai 146.70.142.92', 'Matrimonial Membership', NULL),
(1259, '', '', '', '09/01/2024', '09:16:pm', 'India Mumbai 146.70.142.92', 'Feedback', NULL),
(1260, '', '', '', '09/01/2024', '09:17:pm', 'India Mumbai 146.70.142.92', 'Registration', NULL),
(1261, 'Smith', '3', '3', '09/01/2024', '09:17:pm', 'India Mumbai 146.70.142.92', 'Website Developement', NULL),
(1262, '', '', '', '09/01/2024', '09:17:pm', 'India Mumbai 146.70.142.92', 'Registration', NULL),
(1263, 'Smith', '3', '3', '09/01/2024', '09:17:pm', 'India Mumbai 146.70.142.92', 'Website Developement', NULL),
(1264, 'Smith', '3', '3', '09/01/2024', '09:17:pm', 'India Mumbai 146.70.142.92', 'Website Developement', NULL),
(1265, 'Smith', '3', '3', '09/01/2024', '09:17:pm', 'India Mumbai 146.70.142.92', 'Feedback', NULL),
(1266, 'Smith', '3', '3', '09/01/2024', '09:17:pm', 'India Mumbai 146.70.142.92', 'Website Developement', NULL),
(1267, 'Smith', '3', '3', '09/01/2024', '09:17:pm', 'India Mumbai 146.70.142.92', 'Feedback', NULL),
(1268, 'Smith', '3', '3', '09/01/2024', '09:17:pm', 'India Mumbai 146.70.142.92', 'Feedback', NULL),
(1269, 'Smith', '3', '3', '09/01/2024', '09:17:pm', 'India Mumbai 146.70.142.92', 'Feedback', NULL),
(1270, 'Smith', '3', '3', '09/01/2024', '09:17:pm', 'India Mumbai 146.70.142.92', 'Matrimonial Membership', NULL),
(1271, 'Smith', '3', '3', '09/01/2024', '09:17:pm', 'India Mumbai 146.70.142.92', 'Matrimonial Membership', NULL),
(1272, 'Smith', '3', '3', '09/01/2024', '09:17:pm', 'India Mumbai 146.70.142.92', 'Matrimonial Membership', NULL),
(1273, 'Smith', '3', '3', '09/01/2024', '09:17:pm', 'India Mumbai 146.70.142.92', 'Matrimonial Membership', NULL),
(1274, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:17:39pm', '146.70.142.92', NULL, NULL),
(1275, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:17:40pm', '146.70.142.92', NULL, NULL),
(1276, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:17:42pm', '146.70.142.92', NULL, NULL),
(1277, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:17:44pm', '146.70.142.92', NULL, NULL),
(1278, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:17:45pm', '146.70.142.92', NULL, NULL),
(1279, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:17:46pm', '146.70.142.92', NULL, NULL),
(1280, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:17:47pm', '146.70.142.92', NULL, NULL),
(1281, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:17:48pm', '146.70.142.92', NULL, NULL),
(1282, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:17:49pm', '146.70.142.92', NULL, NULL),
(1283, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:17:50pm', '146.70.142.92', NULL, NULL),
(1284, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:17:51pm', '146.70.142.92', NULL, NULL),
(1285, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:17:51pm', '146.70.142.92', NULL, NULL),
(1286, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:17:52pm', '146.70.142.92', NULL, NULL),
(1287, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:17:53pm', '146.70.142.92', NULL, NULL),
(1288, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:17:54pm', '146.70.142.92', NULL, NULL),
(1289, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:17:55pm', '146.70.142.92', NULL, NULL),
(1290, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:17:56pm', '146.70.142.92', NULL, NULL),
(1291, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:17:57pm', '146.70.142.92', NULL, NULL),
(1292, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:18:02pm', '146.70.142.92', NULL, NULL),
(1293, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:18:04pm', '146.70.142.92', NULL, NULL),
(1294, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:18:05pm', '146.70.142.92', NULL, NULL),
(1295, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:18:07pm', '146.70.142.92', NULL, NULL),
(1296, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:18:08pm', '146.70.142.92', NULL, NULL),
(1297, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:18:09pm', '146.70.142.92', NULL, NULL),
(1298, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:18:10pm', '146.70.142.92', NULL, NULL),
(1299, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:18:11pm', '146.70.142.92', NULL, NULL),
(1300, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:18:12pm', '146.70.142.92', NULL, NULL),
(1301, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:18:13pm', '146.70.142.92', NULL, NULL),
(1302, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:18:14pm', '146.70.142.92', NULL, NULL),
(1303, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:18:15pm', '146.70.142.92', NULL, NULL),
(1304, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:18:16pm', '146.70.142.92', NULL, NULL),
(1305, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:18:18pm', '146.70.142.92', NULL, NULL),
(1306, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:18:19pm', '146.70.142.92', NULL, NULL),
(1307, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:18:21pm', '146.70.142.92', NULL, NULL),
(1308, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:18:24pm', '146.70.142.92', NULL, NULL),
(1309, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:18:26pm', '146.70.142.92', NULL, NULL),
(1310, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:18:28pm', '146.70.142.92', NULL, NULL),
(1311, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:18:29pm', '146.70.142.92', NULL, NULL),
(1312, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:18:31pm', '146.70.142.92', NULL, NULL),
(1313, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:18:33pm', '146.70.142.92', NULL, NULL),
(1314, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:18:35pm', '146.70.142.92', NULL, NULL),
(1315, NULL, 'Mumbai-India', '', NULL, '09-01-2024 09:18:37pm', '146.70.142.92', NULL, NULL),
(1316, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:18:39pm', '146.70.142.92', NULL, NULL),
(1317, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:18:41pm', '146.70.142.92', NULL, NULL),
(1318, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:18:44pm', '146.70.142.92', NULL, NULL),
(1319, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:18:46pm', '146.70.142.92', NULL, NULL),
(1320, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:18:47pm', '146.70.142.92', NULL, NULL),
(1321, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:18:49pm', '146.70.142.92', NULL, NULL),
(1322, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:18:51pm', '146.70.142.92', NULL, NULL),
(1323, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:18:52pm', '146.70.142.92', NULL, NULL),
(1324, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:18:54pm', '146.70.142.92', NULL, NULL),
(1325, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:18:55pm', '146.70.142.92', NULL, NULL),
(1326, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:18:57pm', '146.70.142.92', NULL, NULL),
(1327, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:18:59pm', '146.70.142.92', NULL, NULL),
(1328, NULL, 'Mumbai-India', '3', NULL, '09-01-2024 09:19:02pm', '146.70.142.92', NULL, NULL),
(1329, NULL, '-', '3', NULL, '09-01-2024 09:19:03pm', '146.70.142.92', NULL, NULL),
(1330, NULL, '-', '3', NULL, '09-01-2024 09:19:05pm', '146.70.142.92', NULL, NULL),
(1331, NULL, '-', '3', NULL, '09-01-2024 09:19:06pm', '146.70.142.92', NULL, NULL),
(1332, NULL, '-', '3', NULL, '09-01-2024 09:19:08pm', '146.70.142.92', NULL, NULL),
(1333, NULL, '-', '3', NULL, '09-01-2024 09:19:10pm', '146.70.142.92', NULL, NULL),
(1334, NULL, '-', '3', NULL, '09-01-2024 09:19:13pm', '146.70.142.92', NULL, NULL),
(1335, NULL, '-', '3', NULL, '09-01-2024 09:19:15pm', '146.70.142.92', NULL, NULL),
(1336, 'Smith', '3', '3', '09/01/2024', '09:19:pm', '  146.70.142.92', 'Feedback', NULL),
(1337, 'Smith', '3', '3', '09/01/2024', '09:23:pm', '  146.70.142.92', 'Feedback', NULL),
(1338, 'Smith', '3', '3', '09/01/2024', '09:23:pm', '  146.70.142.92', 'Feedback', NULL),
(1339, 'Smith', '3', '3', '09/01/2024', '09:23:pm', '  146.70.142.92', 'Feedback', NULL),
(1340, NULL, 'Nagpur-India', '9881699576', NULL, '29-01-2024 11:16:32pm', '49.15.248.89', NULL, NULL),
(1341, 'Shubham', 'Nagpur', '9881689576', '29/01/2024', '11:38:pm', 'India Nagpur 49.15.248.89', 'Feedback', NULL),
(1342, NULL, 'Shimla-India', '9993497788', NULL, '01-02-2024 08:20:44am', '106.205.184.241', NULL, NULL),
(1343, NULL, 'Shimla-India', '9926970496', NULL, '01-02-2024 08:29:24am', '106.205.184.241', NULL, NULL),
(1344, NULL, '-', '09926970496', NULL, '01-02-2024 08:36:27am', '106.205.184.241', NULL, NULL),
(1345, NULL, '-', '7489002814', NULL, '01-02-2024 08:42:42am', '106.205.184.241', NULL, NULL),
(1346, NULL, '-', '7489002814', NULL, '01-02-2024 08:42:43am', '106.205.184.241', NULL, NULL),
(1347, NULL, '-', '7489002814', NULL, '01-02-2024 08:44:26am', '106.205.184.241', NULL, NULL),
(1348, NULL, 'Delhi-India', '89080980809', NULL, '06-02-2024 05:12:19pm', '27.7.229.48', NULL, NULL),
(1349, NULL, 'Delhi-India', '212112121212', NULL, '06-02-2024 05:14:34pm', '27.7.229.48', NULL, NULL),
(1350, NULL, 'Lucknow-India', '7000166060', NULL, '10-02-2024 06:34:44am', '106.194.14.109', NULL, NULL),
(1351, NULL, 'Lucknow-India', '7800819806', NULL, '10-02-2024 06:44:21am', '106.194.14.109', NULL, NULL),
(1352, NULL, 'Lucknow-India', '9044440370', NULL, '10-02-2024 06:50:16am', '106.194.14.109', NULL, NULL),
(1353, NULL, 'Lucknow-India', '9335956862', NULL, '10-02-2024 06:55:52am', '106.194.14.109', NULL, NULL),
(1354, NULL, 'Lucknow-India', '8468004837', NULL, '10-02-2024 07:02:37am', '106.194.14.109', NULL, NULL),
(1355, NULL, 'Lucknow-India', '9794324332', NULL, '10-02-2024 07:08:40am', '106.194.14.109', NULL, NULL),
(1356, NULL, 'Delhi-India', '8989898989', NULL, '22-02-2024 10:06:08am', '152.58.92.207', NULL, NULL),
(1357, NULL, 'Lucknow-India', '9651272036', NULL, '03-03-2024 07:57:36am', '223.189.238.125', NULL, NULL),
(1358, NULL, 'Lucknow-India', '9651272036', NULL, '03-03-2024 07:58:15am', '223.189.238.125', NULL, NULL),
(1359, NULL, 'Lucknow-India', '9452030048', NULL, '05-03-2024 06:15:58am', '223.189.238.125', NULL, NULL),
(1360, NULL, 'Lucknow-India', '7774032066', NULL, '05-03-2024 06:23:22am', '223.189.238.125', NULL, NULL),
(1361, NULL, 'Lucknow-India', '9419436278', NULL, '05-03-2024 06:29:41am', '223.189.238.125', NULL, NULL),
(1362, NULL, 'Lucknow-India', '9335144095', NULL, '08-03-2024 06:08:36pm', '47.15.14.25', NULL, NULL),
(1363, NULL, 'Lucknow-India', '09335144095', NULL, '08-03-2024 06:11:30pm', '47.15.14.25', NULL, NULL),
(1364, NULL, 'Lucknow-India', '9664314673', NULL, '08-03-2024 06:18:40pm', '47.15.14.25', NULL, NULL),
(1365, NULL, 'Lucknow-India', '9324784248', NULL, '08-03-2024 06:24:36pm', '47.15.5.146', NULL, NULL),
(1366, NULL, 'Lucknow-India', '9370516430', NULL, '08-03-2024 06:33:19pm', '47.15.5.146', NULL, NULL),
(1367, NULL, 'Lucknow-India', '9920896027', NULL, '08-03-2024 06:40:05pm', '47.15.5.146', NULL, NULL),
(1368, NULL, 'Lucknow-India', '9820966989', NULL, '08-03-2024 06:49:03pm', '47.15.5.146', NULL, NULL),
(1369, NULL, 'Lucknow-India', '8889273211', NULL, '08-03-2024 06:55:09pm', '47.15.5.146', NULL, NULL),
(1370, 'Vikash kr gupta', 'Near Rajgir', '6206542867', '20/03/2024', '06:39:pm', 'India Patna 157.42.194.192', 'Feedback', NULL),
(1371, NULL, '-', '7800509777', NULL, '09-09-2025 07:23:44pm', '106.219.120.211', NULL, NULL),
(1372, 'hey sona', '-', '7800709777', NULL, '14-09-2025 09:40:36pm', '106.219.120.211', NULL, 'kese ho '),
(1373, NULL, '-', '5317948090', NULL, '29-09-2025 11:36:26am', '31.10.61.178', NULL, NULL),
(1374, NULL, '-', '7227002445', NULL, '29-09-2025 11:36:31am', '31.10.61.178', NULL, NULL),
(1375, NULL, '-', '9491398679', NULL, '30-09-2025 05:19:01am', '103.135.134.162', NULL, NULL),
(1376, NULL, '-', '3716836865', NULL, '30-09-2025 05:19:11am', '103.135.134.162', NULL, NULL),
(1377, NULL, '-', '09186765992', NULL, '04-10-2025 08:18:13pm', '194.32.122.53', NULL, NULL),
(1378, NULL, '-', '9999999999', NULL, '11-10-2025 08:34:57pm', '106.219.122.14', NULL, NULL),
(1379, NULL, '-', '9999999999', NULL, '11-10-2025 08:35:16pm', '106.219.122.14', NULL, NULL),
(1380, NULL, '-', '9899999999', NULL, '12-10-2025 08:38:53pm', '106.219.122.14', NULL, NULL),
(1381, NULL, '-', '9899999999', NULL, '12-10-2025 08:39:04pm', '106.219.122.14', NULL, NULL),
(1382, NULL, '-', '898989898', NULL, '12-10-2025 08:55:09pm', '106.219.122.14', NULL, NULL),
(1383, 'Bbvbb', '-', '7656788888', NULL, '21-12-2025 09:49:13am', '106.219.121.105', NULL, 'Vhhhh');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `pass` varchar(30) DEFAULT NULL,
  `D` varchar(20) DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `y` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `religion` varchar(40) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `city` varchar(40) NOT NULL,
  `img1` varchar(30) DEFAULT NULL,
  `img2` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `pass`, `D`, `month`, `y`, `sex`, `date`, `time`, `religion`, `mobile`, `city`, `img1`, `img2`) VALUES
(2, 'sachin', '98', '17', '7 Apr 1993', '', 'male', '06/04/2020', '05:35:pm', 'HINDU', '809092258', 'null', 'img/content.png', 'img/content1.png'),
(5, 'supriya', '9899990238', '4', 'July', '1989', 'female', '06/04/2020', '05:45:pm', 'HINDU', '8090922587', '', NULL, NULL),
(18, 'bittu', '0000', '3', 'July', '2011', 'male', '10/04/2020', '02:04:pm', 'HINDU', '0000000000', 'TELI', 'img/sachin D1.jpg', 'img/sachin gupta.jpg'),
(20, 'anand ', '0000', '9', 'April', '1995', 'male', '13/04/2020', '09:48:pm', 'HINDU', '9999999999', 'TELI', NULL, NULL),
(26, '98', '98', '2', 'January', '1980', 'Female', '13/04/2020', '10:43:pm', 'hindu', '07905433649', 'SUBHASH NAGAR', NULL, NULL),
(28, 'sachin', '98', '1', 'January', '1998', 'male', '13/04/2020', '11:51:pm', 'hindu', '9899990238', 'GHOSI', NULL, NULL),
(29, 'sachin', '98', '', '', '', 'male', '13/04/2020', '11:57:pm', '  ', '  ', '   ', NULL, NULL),
(30, 'sachin', '98', '1', 'January', '1980', 'Female', '14/04/2020', '12:09:am', 'hindu', '9899990', 'GHOSI', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `indian_caste_data`
--

CREATE TABLE `indian_caste_data` (
  `caste` varchar(17) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `indian_caste_data`
--

INSERT INTO `indian_caste_data` (`caste`, `id`) VALUES
('abbi', 1),
('abhyankar', 2),
('abraham', 3),
('acharya', 4),
('achrekar', 5),
('adani', 6),
('adhikane', 7),
('adhikari', 8),
('adiga', 9),
('advani', 10),
('agarkar', 11),
('agarwal', 12),
('agate', 13),
('agnihotri', 14),
('agvan', 15),
('ahlawat', 16),
('ahluwalia', 17),
('ahuja', 18),
('aiyappa', 19),
('ajgaonkar', 20),
('akash', 21),
('akhtar', 22),
('akkineni', 23),
('ali', 24),
('amarnath', 25),
('ambani', 26),
('ambedkar', 27),
('ambekar', 28),
('amble', 29),
('ambuja', 30),
('ambulkar', 31),
('ameer', 32),
('amin', 33),
('amladi', 34),
('amravatikar', 35),
('amrutham', 36),
('anand', 37),
('anandi', 38),
('anchan', 39),
('aneja', 41),
('annaladasula', 42),
('antony', 43),
('anumula', 44),
('apdev', 45),
('apte', 46),
('apture', 47),
('argade', 48),
('arjun', 49),
('arora', 50),
('arya', 51),
('ashar', 52),
('asrani', 53),
('asthana', 54),
('ashtikar', 55),
('atre', 56),
('atrey', 57),
('atri', 58),
('attal', 59),
('atwal', 60),
('aulakh', 61),
('avari', 62),
('awasthi', 63),
('babariya', 64),
('babbar', 65),
('babu', 66),
('bachchan', 67),
('badgujar', 68),
('badkas', 69),
('badhe', 70),
('bahl', 71),
('bhadsavle', 72),
('bhaduri', 73),
('bhasi', 74),
('bafna', 75),
('baghel, bagul', 76),
('baid', 77),
('bajaj', 78),
('bajpai', 79),
('bajwa', 80),
('bakshi', 81),
('balaji', 82),
('balakrishnan', 83),
('balasubramaniam', 84),
('balsara', 85),
('bamnote', 86),
('bandodkar', 87),
('bandyopadhyay', 88),
('banerjee', 89),
('bangera', 90),
('bangre', 91),
('banjan', 92),
('bansal', 93),
('bansod', 94),
('banthia', 95),
('banthiya', 96),
('bantwal', 97),
('bapat', 98),
('barde', 99),
('bardia', 100),
('barman', 101),
('barot', 102),
('barua', 103),
('basra', 104),
('basu', 105),
('batliwalla', 106),
('batra', 107),
('basha', 108),
('bawaskar', 109),
('baweja', 110),
('bawre', 111),
('bedi', 112),
('bendre', 113),
('benegal', 114),
('bengre', 115),
('berde', 116),
('bhaiya', 117),
('bhagat', 118),
('bhagavathar', 119),
('bhagwat', 120),
('bhakri', 121),
('bhalla', 122),
('bhalodiya', 123),
('bhan', 124),
('bhandari', 125),
('bhanot', 126),
('bhanushali', 127),
('bharadwaj', 128),
('bhardwaj', 129),
('bhargav', 130),
('bharjatya', 131),
('bharti', 132),
('bhat', 133),
('bhathheja', 134),
('bhatia', 135),
('bhattacharya', 136),
('bhattad', 137),
('bhatti', 138),
('bhave', 139),
('bhavsar', 140),
('bhende', 141),
('bhide', 142),
('bhimani', 143),
('bhite', 144),
('bhoir', 145),
('bhoite', 146),
('bhojwani', 147),
('bhosale', 148),
('bhowmick', 149),
('bhupathi', 150),
('bhushan', 151),
('bhutada', 152),
('bijlani', 153),
('bika', 154),
('binny', 155),
('birla', 156),
('bisht', 157),
('biswas', 158),
('biyani', 159),
('bobde', 160),
('bodhankar', 161),
('bokare', 162),
('bora', 163),
('borgaonkar', 164),
('borkar', 165),
('bose', 166),
('bradoo', 167),
('buddharaju', 168),
('budhisagar', 169),
('bundela', 170),
('burman', 171),
('busanagari', 172),
('buty', 173),
('cethirakath', 174),
('chabbria', 175),
('chabukswar', 176),
('chacko', 177),
('chahal', 178),
('chakole', 179),
('chakraborty', 180),
('chakravarthy', 181),
('chanana', 182),
('chanchad', 183),
('chandani', 184),
('chandavarkar', 185),
('chandel', 186),
('chander', 187),
('chandak', 188),
('chandok', 189),
('chandorkar', 190),
('chandrababu', 191),
('channe', 192),
('chafekar', 193),
('chaphekar', 194),
('chary', 195),
('chattaraj', 196),
('chatterjee', 197),
('chattopadhyay', 198),
('chaturvedi', 199),
('chandra', 200),
('chaubey', 201),
('chauhan', 202),
('chavan', 203),
('chaurasiya', 204),
('chaurasia', 205),
('chawla', 206),
('chedge', 207),
('cheema', 208),
('chettipally', 209),
('chimalwar', 210),
('chimote', 211),
('chimurkar', 212),
('chintawar', 213),
('chitale', 214),
('chitalia', 215),
('chitnis', 216),
('choksi', 217),
('chopra', 218),
('chorghade', 219),
('chotai', 220),
('choudhary', 221),
('chaudhary', 222),
('choudhury', 223),
('chowdhury', 224),
('chowdhary', 225),
('chaudhari', 226),
('chugh', 227),
('dabholkar', 228),
('dabral', 229),
('dadlani', 230),
('daftari', 231),
('daga', 232),
('dahake', 233),
('dalvi', 234),
('damble', 235),
('damle', 236),
('dandale', 237),
('dandekar', 238),
('dang', 239),
('dani', 240),
('darbari', 241),
('darji', 242),
('darling', 243),
('das', 244),
('dasgupta', 245),
('dasgupta', 246),
('dashmunshi', 247),
('daswani', 248),
('datey', 249),
('dave', 250),
('dawande', 251),
('dayal', 252),
('de', 253),
('dedhe', 254),
('dedhia', 255),
('dehadrai', 256),
('denzongpa', 257),
('deodhar', 258),
('deol', 259),
('deora', 260),
('desai', 261),
('deshmukh', 262),
('deshpande', 263),
('dev', 264),
('devadiga', 265),
('devadikar', 266),
('devaiah', 267),
('devgade', 268),
('devgan', 269),
('dewaikar', 270),
('dey', 271),
('dhake', 272),
('dhaliwal', 273),
('dhameja', 274),
('dhanoa', 275),
('dhar', 276),
('dharashiokar', 277),
('dharmadhikari', 278),
('dhawan', 279),
('dhingra', 280),
('dholakia', 281),
('dhone', 282),
('dhoni', 283),
('dhoot', 284),
('dhote', 285),
('dhumal', 286),
('dhumale', 287),
('dikshit', 288),
('divekar', 289),
('diwadkar', 290),
('diwe', 291),
('dixit', 292),
('dobriyal', 293),
('doifode, doiphode', 294),
('dongre', 295),
('dosanjh', 296),
('doshi', 297),
('draboo', 298),
('dua', 299),
('dubey', 300),
('duddala', 301),
('dugar', 302),
('duggal', 303),
('dusanj', 304),
('dutt', 305),
('dutta', 306),
('dwivedi', 307),
('eknath', 308),
('engle, ingle', 309),
('faasil', 310),
('fadikar', 311),
('fadnavis', 312),
('fansekar', 313),
('faujdar', 314),
('faye', 315),
('fernandez', 316),
('firodia', 317),
('fotedar', 318),
('gadde', 319),
('gadekar', 320),
('gadgil', 321),
('ghadse', 322),
('gadikar', 323),
('gadkari', 324),
('gadre', 325),
('gaikwad', 326),
('gaiki', 327),
('gaitonde', 328),
('gajjar', 329),
('gambhir', 330),
('ganatra', 331),
('gandhi', 332),
('ganesan', 333),
('gangopadhyay', 334),
('gangotri', 335),
('ganguly', 336),
('garach', 337),
('garapati', 338),
('garcia', 339),
('garg', 340),
('garware', 341),
('gavaskar', 342),
('gaur', 343),
('gautam', 344),
('gavit', 345),
('gawande', 346),
('gayatri', 347),
('gehlot', 348),
('gera', 349),
('ghai', 350),
('ghaisas', 351),
('ghanekar', 352),
('ghatate', 353),
('ghate', 354),
('ghosh', 355),
('ghoshal', 356),
('ghui', 357),
('gilani', 358),
('gill', 359),
('girdhar', 360),
('girotra', 361),
('godbole', 362),
('godse', 363),
('goel', 364),
('goenka', 365),
('gohad', 366),
('gohil', 367),
('gokarn', 368),
('gokhale', 369),
('golani', 370),
('gole', 371),
('gopal', 372),
('gopalan', 373),
('gopi', 374),
('gore', 375),
('gosai', 376),
('gosain', 377),
('goswami', 378),
('gounder', 379),
('govind', 380),
('govitrikar', 381),
('gowarikar', 382),
('gowda', 383),
('goyal', 384),
('grewal', 385),
('grover', 386),
('guha', 387),
('gujar', 388),
('gujral', 389),
('gulgule', 390),
('gulwadi', 391),
('gunnam', 392),
('gupta', 393),
('gupte', 394),
('gurnani', 395),
('gursahani', 396),
('gurwara', 397),
('haasan', 398),
('hadapsar', 399),
('hadas', 400),
('hagavane', 401),
('haksar', 402),
('handoo', 403),
('hangal', 404),
('hansraj', 405),
('hardas', 406),
('haridas', 407),
('harode', 408),
('hashmi', 409),
('hasnee', 410),
('hassan', 411),
('hattangadi', 412),
('hazra', 413),
('hazare', 414),
('hazari', 415),
('hazarika', 416),
('hebbar', 417),
('hegde', 418),
('hinduja', 419),
('hingorani', 420),
('hiranandani', 421),
('hirani', 422),
('hirlekar', 423),
('hirwani', 424),
('hiwre', 425),
('hole', 426),
('holkar', 427),
('hooda', 428),
('hoon', 429),
('hoskote', 430),
('huilgol', 431),
('hundal', 432),
('hussainl', 433),
('inamdar', 434),
('indoria', 435),
('indulkar', 436),
('ingle', 437),
('ingole', 438),
('iragavarapu', 439),
('irani', 440),
('ivaturi', 441),
('iyengar', 442),
('iyer', 443),
('jadeja', 444),
('jadhav', 445),
('jadi', 446),
('jadon', 447),
('jagtap', 448),
('jain', 449),
('jaiswal', 450),
('jajoo', 451),
('jalan', 452),
('janardhan', 453),
('janefalkar', 454),
('janmeja', 455),
('janolkar', 456),
('janumala', 457),
('jariwala', 458),
('jatasra', 459),
('jawalkar', 460),
('jena', 461),
('jha', 462),
('jhathar', 463),
('jhawar', 464),
('jindal', 465),
('jinturkar', 466),
('jobanputra', 467),
('joglekar', 468),
('johal', 469),
('johar', 470),
('joshi', 471),
('juneja', 472),
('juvekar', 473),
('kadakia', 474),
('kadam', 475),
('kak', 476),
('kakde', 477),
('kalawar', 478),
('kalbhor', 479),
('kale', 480),
('kalra', 481),
('kalwani', 482),
('kamat', 483),
('kambli', 484),
('kamboj', 485),
('kanakia', 486),
('kanchan', 487),
('kane', 488),
('kanetkar', 489),
('kanhe', 490),
('kanitkar', 491),
('kankariya', 492),
('kannaujiya', 493),
('kanojiya', 494),
('kanoongo', 495),
('kansal', 496),
('kapadia', 497),
('kapoor', 498),
('kapre', 499),
('kapse', 500),
('kapur', 501),
('kar', 502),
('karanth', 503),
('karia', 504),
('karkare', 505),
('karkera', 506),
('karlekar', 507),
('karnad', 508),
('karnatakkachu', 509),
('karnawat', 510),
('karnik', 511),
('karthik', 512),
('karwande', 513),
('kasat', 514),
('kasundra', 515),
('katoch', 516),
('kaul', 517),
('kazi', 518),
('kazmi', 519),
('kelkar', 520),
('keshari', 521),
('kewalramani', 522),
('khadse', 523),
('khaitan', 524),
('khan', 525),
('khandar', 526),
('khandelwal', 527),
('khanduja', 528),
('khanna', 529),
('khanolkar', 530),
('kharbanda', 531),
('khatri', 532),
('khedekar', 533),
('khemu', 534),
('kher', 535),
('khetarpal', 536),
('khobragade', 537),
('kholkute', 538),
('khopkar', 539),
('khosla', 540),
('khurana', 541),
('kilachand', 542),
('kinariwala', 543),
('kinariwalla', 544),
('kirloskar', 545),
('kochar', 546),
('koganti', 547),
('kohale', 548),
('kondke', 549),
('kothale', 550),
('kothari', 551),
('kotian', 552),
('kottarakkara', 553),
('kottary', 554),
('kriplani', 555),
('krishna', 556),
('krishnamurthy', 557),
('kuchibhotla', 558),
('kukde', 559),
('kukkar', 560),
('kukreja', 561),
('kukyan', 562),
('kulkarni', 563),
('kulshreshtha', 564),
('kumari', 565),
('kumbhare', 566),
('kumble', 567),
('kumpawat', 568),
('kumta', 569),
('kundar', 570),
('kundra, kunder', 571),
('kurien', 572),
('kurup', 573),
('kathiriya', 574),
('koshley', 575),
('lad', 576),
('laddha', 577),
('lagadapati', 578),
('laghate', 579),
('lagoo', 580),
('lahoti', 581),
('lakhani', 582),
('lakhotia', 583),
('lal', 584),
('lalbhai', 585),
('lalchandani', 586),
('lallad', 587),
('lalwani', 588),
('lamba', 589),
('langote', 590),
('langroo', 591),
('lapalikar', 592),
('latkar', 593),
('lele', 594),
('ligam', 595),
('limaye', 596),
('lobo', 597),
('lodha', 598),
('lohia', 599),
('lokhande', 600),
('lopes', 601),
('lote', 602),
('ludhani', 603),
('lunkad', 604),
('luthra', 605),
('maan', 606),
('mabiyan', 607),
('madasani', 608),
('madiwale', 609),
('mafatlal', 610),
('mahajan', 611),
('mahakale', 612),
('mahalingam', 613),
('mahashabde', 614),
('maheshwari', 615),
('mahindra', 616),
('mahindrakar', 617),
('maitra', 618),
('majumdar', 619),
('makhija', 620),
('makwana', 621),
('malhan', 622),
('malhotra', 623),
('malhotra', 624),
('mali', 625),
('malik', 626),
('malini', 627),
('mallapur', 628),
('mallya', 629),
('malpe', 630),
('malusare', 631),
('malviya', 632),
('mamdani', 633),
('manak', 634),
('manchandha', 635),
('mandal', 636),
('mandalik', 637),
('mande', 638),
('mandhane', 639),
('mandlekar', 640),
('manjrekar', 641),
('marathe', 642),
('marwah', 643),
('marwaha', 644),
('mashelkar', 645),
('mathur', 646),
('mathurkar', 647),
('mattu', 648),
('mayar', 649),
('meghe', 650),
('mehra', 651),
('mehrotra', 652),
('mehrotra', 653),
('mehta', 654),
('mendhi', 655),
('mendon', 656),
('menon', 657),
('merchant', 658),
('mhatre', 659),
('minhas', 660),
('mirchandani', 661),
('mishra', 662),
('mistry', 663),
('mittal', 664),
('mittal', 665),
('modak', 666),
('modi', 667),
('moghe', 668),
('mohan', 669),
('mohanty', 670),
('mohit', 671),
('mohril', 672),
('moitra', 673),
('mojala', 674),
('molkar', 675),
('mongia', 676),
('more', 677),
('morea', 678),
('motwani', 679),
('motwani', 680),
('macwan', 681),
('mudaliyar', 682),
('mujumdar', 683),
('mukherjee', 684),
('mulchandani', 685),
('mule', 686),
('muley', 687),
('mulki', 688),
('mundan', 689),
('mundhe', 690),
('mundi', 691),
('munjal', 692),
('munje', 693),
('munshi', 694),
('muralidharan', 695),
('murthy', 696),
('mushrif', 697),
('muttemwar', 698),
('muzumdar', 699),
('noora', 700),
('nabar', 701),
('nadar', 702),
('nadella', 703),
('nadikatla', 704),
('nadkarni', 705),
('nag', 706),
('nagaiah', 707),
('nagar', 708),
('nagpal', 709),
('naik', 710),
('nair', 711),
('nakra', 712),
('nalamolu', 713),
('nambian', 714),
('nambiar', 715),
('nambiyar', 716),
('namboodiri', 717),
('nakhate', 718),
('nanavati', 719),
('nanda', 720),
('nandamuri', 721),
('nandanwar', 722),
('nandigam', 723),
('narang', 724),
('narayan', 725),
('narayanan', 726),
('naresh', 727),
('narlikar', 728),
('narula', 729),
('nath', 730),
('nathawat', 731),
('naudiyal', 732),
('nawre', 733),
('nayak', 734),
('negi', 735),
('nehra', 736),
('nehru', 737),
('nelluri', 738),
('nene', 739),
('nerurkar', 740),
('nigam', 741),
('nihalani', 742),
('nikam', 743),
('nike', 744),
('nikhanj', 745),
('nimbalkar', 746),
('nimhan', 747),
('nischol', 748),
('nitharwal', 749),
('oak', 750),
('oberoi', 751),
('ogle, ogale', 752),
('ogra', 753),
('ohri', 754),
('omble', 755),
('omkareshwar', 756),
('omkarnath', 757),
('ozha', 758),
('padukone', 759),
('padwad', 760),
('pahwa', 761),
('pai', 762),
('pagi', 763),
('paintal', 764),
('pal', 765),
('palan', 766),
('palande', 767),
('palandurkar', 768),
('palav', 769),
('palekar', 770),
('paliwal', 771),
('palod', 772),
('pancholi', 773),
('panda', 774),
('pande', 775),
('pandey', 776),
('pandher', 777),
('pandhripande', 778),
('pandian', 779),
('pandit', 780),
('pandya', 781),
('pangarkar', 782),
('page', 783),
('pagey', 784),
('panicker', 785),
('panigrahi', 786),
('panjwani', 787),
('panse', 788),
('pant', 789),
('panthulu', 790),
('panwar', 791),
('pappu', 792),
('papule', 793),
('parab', 794),
('paranjape', 795),
('parasher', 796),
('parate', 797),
('parchure', 798),
('pardesi', 799),
('pardeshi', 800),
('parekh', 801),
('parihar', 802),
('parikh', 803),
('parkhi', 804),
('parmar', 805),
('parsodkar', 806),
('paruchuri', 807),
('pasricha', 808),
('patankar', 809),
('patekar', 810),
('patel', 811),
('pathak', 812),
('patil', 813),
('patki', 814),
('patnaik', 815),
('patne', 816),
('patni', 817),
('patra', 818),
('patwardhan', 819),
('paud', 820),
('paul', 821),
('pavri, pawri', 822),
('pawar', 823),
('pednekar', 824),
('pendharkar', 825),
('pendse', 826),
('phanse', 827),
('phatak', 828),
('phogat', 829),
('pillai', 830),
('pimparkar', 831),
('pimplapure', 832),
('pingale', 833),
('pinjarkar', 834),
('piramal', 835),
('piramal', 836),
('pitale', 837),
('pohankar', 838),
('pohnekar', 839),
('polekar', 840),
('porwal', 841),
('potdar', 842),
('potdukhe', 843),
('potluri', 844),
('prabhavalkar', 845),
('prabhu', 846),
('pradhan', 847),
('prajapati', 848),
('prasad', 849),
('prasade', 850),
('prasadi', 851),
('pratham', 852),
('premji', 853),
('punia', 854),
('puniani', 855),
('puniyani', 856),
('punj', 857),
('punwani', 858),
('puranik', 859),
('puri', 860),
('purohit', 861),
('puthran', 862),
('prakash', 863),
('raaju', 864),
('raaz', 865),
('rahane', 866),
('raheja', 867),
('rahman', 868),
('rai', 869),
('raikantiwar', 870),
('raina', 871),
('raizada', 872),
('raj', 873),
('rajan', 874),
('rajawat', 875),
('rajpurohit', 876),
('raju', 877),
('rakshit', 878),
('ramachandran', 879),
('ramelwar', 880),
('ramesh', 881),
('ramisetty', 882),
('ramnani', 883),
('rampal', 884),
('rana', 885),
('ranade', 886),
('ranawat', 887),
('rane', 888),
('rao', 889),
('rastogi', 890),
('rathi', 891),
('rathod', 892),
('rathore', 893),
('ravinuthala', 894),
('rawal', 895),
('rawat', 896),
('rawat', 897),
('raxit', 898),
('ray', 899),
('raykantiwar', 900),
('reddy', 901),
('rege', 902),
('rehman', 903),
('reshammiya', 904),
('rode', 905),
('rokade', 906),
('roshan', 907),
('roy', 908),
('roychoudhury', 909),
('ruia', 910),
('rungta', 911),
('ruparel', 912),
('sabnis', 913),
('sachan', 914),
('sachdev', 915),
('sadarangani', 916),
('sadhu', 917),
('safary', 918),
('saha', 919),
('sahai', 920),
('sahastrabuddhe', 921),
('sahedev', 922),
('sahni', 923),
('sahu', 924),
('sahukar', 925),
('saigal', 926),
('saini', 927),
('saklani', 928),
('sakpal', 929),
('salian', 930),
('salmaan', 931),
('saluja', 932),
('salunkhe', 933),
('samarth', 934),
('samdurkar', 935),
('samudre', 936),
('sandhu', 937),
('sanghavi', 938),
('sanghvi', 939),
('sanil', 940),
('sanir', 941),
('sanon', 942),
('saoji', 943),
('sapra', 944),
('saraf', 945),
('sarda', 946),
('sarja', 947),
('sarnaik', 948),
('sarode', 949),
('sarve', 950),
('sarwe', 951),
('satam', 952),
('satija', 953),
('savarkar', 954),
('sawant', 955),
('sawarkar', 956),
('sawhney', 957),
('sawji', 958),
('saxena', 959),
('sehgal', 960),
('sehwag', 961),
('sekhri', 962),
('selvan', 963),
('sen', 964),
('sengupta', 965),
('sethi', 966),
('setna', 967),
('shah', 968),
('shahane', 969),
('shareef', 970),
('sharma', 971),
('shastri', 972),
('shekhawat', 973),
('shelke', 974),
('shenoy', 975),
('sheikh', 976),
('sheirgill', 977),
('shekhar', 978),
('sheshadri', 979),
('shete', 980),
('sheth', 981),
('shetty', 982),
('shikhavat', 983),
('shikhawat', 984),
('shinde', 985),
('shirke', 986),
('shishodia', 987),
('shivalkar', 988),
('shivdasani', 989),
('shourey', 990),
('shrikhande', 991),
('shriyan', 992),
('shroff', 993),
('shukla', 994),
('siddiqui', 995),
('sidhu', 996),
('sikarwar', 997),
('[simha]]', 998),
('singh', 999),
('singhal', 1000),
('singham', 1001),
('singhania', 1002),
('sinha', 1003),
('siripurapu', 1004),
('sirish', 1005),
('sobti', 1006),
('solanki', 1007),
('somaiya', 1008),
('somalwar', 1009),
('soman', 1010),
('somani', 1011),
('somayajulu', 1012),
('sonawane', 1013),
('soni', 1014),
('sonolikar', 1015),
('sonowal', 1016),
('sonpatki', 1017),
('sood', 1018),
('srinivasan', 1019),
('srivastava', 1020),
('subramaniam', 1021),
('subramanium', 1022),
('subramanyam', 1023),
('suchak', 1024),
('suman', 1025),
('surana', 1026),
('suri', 1027),
('surve', 1028),
('suvarna', 1029),
('swamy', 1030),
('swarup', 1031),
('syed', 1032),
('tadaskar', 1033),
('tagore', 1034),
('tahil', 1035),
('tahiliani', 1036),
('tahilramani', 1037),
('tak', 1038),
('talari', 1039),
('talgeri', 1040),
('talpade', 1041),
('talsania', 1042),
('talwar', 1043),
('tambe', 1044),
('tambke', 1045),
('tamang', 1046),
('tamhane', 1047),
('tamhankar', 1048),
('tandel', 1049),
('tandon', 1050),
('tanna', 1051),
('tanti', 1052),
('tanwar', 1053),
('taparia', 1054),
('tata', 1055),
('taurani', 1056),
('tawde', 1057),
('tayde', 1058),
('tejwani', 1059),
('tekchandani', 1060),
('tempalli', 1061),
('tendulkar', 1062),
('thackeray', 1063),
('thakersey', 1064),
('thakkar', 1065),
('thakore', 1066),
('thakral', 1067),
('thakran', 1068),
('thakre', 1069),
('thakrey', 1070),
('thakur', 1071),
('thakurtha', 1072),
('thapa', 1073),
('thapar', 1074),
('thombre', 1075),
('thorvi', 1076),
('thosar', 1077),
('thota', 1078),
('thuse', 1079),
('tijori', 1080),
('tikoo', 1081),
('tilak', 1082),
('tirodkar', 1083),
('tirpude', 1084),
('tiwari', 1085),
('tiwaskar', 1086),
('tomar', 1087),
('toor', 1088),
('tope', 1089),
('toshniwal', 1090),
('tripathi', 1091),
('trivedi', 1092),
('tufchi', 1093),
('tyagi', 1094),
('tapaniya', 1095),
('udayaraju', 1096),
('udyavar', 1097),
('ullal', 1098),
('umbarkar', 1099),
('unhale', 1100),
('uniyal', 1101),
('unni', 1102),
('unnikrishnan', 1103),
('unnithan', 1104),
('upadhyay', 1105),
('upadhye', 1106),
('upasni', 1107),
('uplenchwar', 1108),
('uppal', 1109),
('uppalapati', 1110),
('upponi', 1111),
('velugubanti', 1112),
('vaghela', 1113),
('vaida', 1114),
('vaidya', 1115),
('vaish', 1116),
('vajpayee', 1117),
('valecha', 1118),
('varghese', 1119),
('varma', 1120),
('vartak', 1121),
('vashisth', 1122),
('vasudevan', 1123),
('vaswani', 1124),
('vaze', 1125),
('veeranna', 1126),
('velankar', 1127),
('vengsarkar', 1128),
('venkat', 1129),
('venkateswaran', 1130),
('venkatraman', 1131),
('verghese', 1132),
('verma', 1133),
('vernekar', 1134),
('vichare', 1135),
('vidyarthi', 1136),
('vij', 1137),
('vijay', 1138),
('vijayrania', 1139),
('vincent', 1140),
('virani', 1141),
('virk', 1142),
('virmani', 1143),
('visariya', 1144),
('vora', 1145),
('vyas', 1146),
('wadekar', 1147),
('wadhavkar', 1148),
('wadhva', 1149),
('wadhawa', 1150),
('wadhawan', 1151),
('wadhwani', 1152),
('wadia', 1153),
('wagh', 1154),
('waghe', 1155),
('waghmare', 1156),
('waghray', 1157),
('wagle', 1158),
('waingankar', 1159),
('wajantri', 1160),
('waknis', 1161),
('walale', 1162),
('walawalakar', 1163),
('walia', 1164),
('walker', 1165),
('wangdu', 1166),
('wangnoo', 1167),
('wani', 1168),
('wanjare', 1169),
('wanjari', 1170),
('wankar', 1171),
('wankhede', 1172),
('waradpande', 1173),
('wargantiwar', 1174),
('warhadpande', 1175),
('warraich', 1176),
('warsi', 1177),
('watane', 1178),
('watharkar', 1179),
('wattal', 1180),
('watwe', 1181),
('wazalwar', 1182),
('wazir', 1183),
('yadav', 1184),
('yagnik', 1185),
('yarlagadda', 1186),
('yedekar', 1187),
('yederi', 1188),
('yelimeli', 1189),
('yelkar', 1190),
('yelpude', 1191),
('yenkie', 1192),
('yennemadi', 1193),
('yenugula', 1194),
('yeolekar', 1195),
('yerukola', 1196),
('yesuraju', 1197),
('zaantye', 1198),
('zade', 1199),
('zahaldar', 1200),
('zakaria', 1201),
('zalpuri', 1202),
('zarapkar', 1203),
('zariwala', 1204),
('zate', 1205),
('zaveri', 1206),
('zende', 1207),
('zite', 1208),
('zutshi', 1209),
('tadaskar', 1210),
('tagore', 1211),
('tahil', 1212),
('tahiliani', 1213),
('tahilramani', 1214),
('tak', 1215),
('talari', 1216),
('talgeri', 1217),
('talpade', 1218),
('talsania', 1219),
('talwar', 1220),
('tambe', 1221),
('tambke', 1222),
('tamang', 1223),
('tamhane', 1224),
('tamhankar', 1225),
('tandel', 1226),
('tandon', 1227),
('tanna', 1228),
('tanti', 1229),
('tanwar', 1230),
('taparia', 1231),
('tata', 1232),
('taurani', 1233),
('tawde', 1234),
('tayde', 1235),
('tejwani', 1236),
('tekchandani', 1237),
('tempalli', 1238),
('tendulkar', 1239),
('thackeray', 1240),
('thakersey', 1241),
('thakkar', 1242),
('thakore', 1243),
('thakral', 1244),
('thakran', 1245),
('thakre', 1246),
('thakrey', 1247),
('thakur', 1248),
('thakurtha', 1249),
('thapa', 1250),
('thapar', 1251),
('thombre', 1252),
('thorvi', 1253),
('thosar', 1254),
('thota', 1255),
('thuse', 1256),
('tijori', 1257),
('tikoo', 1258),
('tilak', 1259),
('tirodkar', 1260),
('tirpude', 1261),
('tomar', 1264),
('toor', 1265),
('tope', 1266),
('toshniwal', 1267),
('tripathi', 1268),
('trivedi', 1269),
('tufchi', 1270),
('tyagi', 1271),
('tapaniya', 1272),
('udayaraju', 1273),
('udyavar', 1274),
('ullal', 1275),
('umbarkar', 1276),
('unhale', 1277),
('uniyal', 1278),
('unni', 1279),
('unnikrishnan', 1280),
('unnithan', 1281),
('upadhyay', 1282),
('upadhye', 1283),
('upasni', 1284),
('uplenchwar', 1285),
('uppal', 1286),
('uppalapati', 1287),
('upponi', 1288),
('velugubanti', 1289),
('vaghela', 1290),
('vaida', 1291),
('vaidya', 1292),
('vaish', 1293),
('vajpayee', 1294),
('valecha', 1295),
('varghese', 1296),
('varma', 1297),
('vartak', 1298),
('vashisth', 1299),
('vasudevan', 1300),
('vaswani', 1301),
('vaze', 1302),
('veeranna', 1303),
('velankar', 1304),
('vengsarkar', 1305),
('venkat', 1306),
('venkateswaran', 1307),
('venkatraman', 1308),
('verghese', 1309),
('verma', 1310),
('vernekar', 1311),
('vichare', 1312),
('vidyarthi', 1313),
('vij', 1314),
('vijay', 1315),
('vijayrania', 1316),
('vincent', 1317),
('virani', 1318),
('virk', 1319),
('virmani', 1320),
('visariya', 1321),
('vora', 1322),
('vyas', 1323),
('wadekar', 1324),
('wadhavkar', 1325),
('wadhva', 1326),
('wadhawa', 1327),
('wadhawan', 1328),
('wadhwani', 1329),
('wadia', 1330),
('wagh', 1331),
('waghe', 1332),
('waghmare', 1333),
('waghray', 1334),
('wagle', 1335),
('waingankar', 1336),
('wajantri', 1337),
('waknis', 1338),
('walale', 1339),
('walawalakar', 1340),
('walia', 1341),
('walker', 1342),
('wangdu', 1343),
('wangnoo', 1344),
('wani', 1345),
('wanjare', 1346),
('wanjari', 1347),
('wankar', 1348),
('wankhede', 1349),
('waradpande', 1350),
('wargantiwar', 1351),
('warhadpande', 1352),
('warraich', 1353),
('warsi', 1354),
('watane', 1355),
('watharkar', 1356),
('wattal', 1357),
('watwe', 1358),
('wazalwar', 1359),
('wazir', 1360),
('yadav', 1361),
('yagnik', 1362),
('yarlagadda', 1363),
('yedekar', 1364),
('yederi', 1365),
('yelimeli', 1366),
('yelkar', 1367),
('yelpude', 1368),
('yenkie', 1369),
('yennemadi', 1370),
('yenugula', 1371),
('yeolekar', 1372),
('yerukola', 1373),
('yesuraju', 1374),
('zaantye', 1375),
('zade', 1376),
('zahaldar', 1377),
('zakaria', 1378),
('zalpuri', 1379),
('zarapkar', 1380),
('zariwala', 1381),
('zate', 1382),
('zaveri', 1383),
('zende', 1384),
('zite', 1385),
('zutshi', 1386),
('SC', 1387),
('ST', 1388),
('Chambhar', 1389);

-- --------------------------------------------------------

--
-- Table structure for table `login_detail`
--

CREATE TABLE `login_detail` (
  `login_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_type` enum('no','yes') NOT NULL,
  `accept` varchar(20) DEFAULT NULL,
  `request` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login_detail`
--

INSERT INTO `login_detail` (`login_details_id`, `user_id`, `last_activity`, `is_type`, `accept`, `request`) VALUES
(46, 1202, '2021-07-19 02:52:45', 'no', NULL, NULL),
(49, 0, '2021-07-18 17:19:32', 'no', NULL, NULL),
(52, 0, '2021-07-18 17:20:36', 'no', NULL, NULL),
(53, 0, '2021-07-18 17:21:33', 'no', NULL, NULL),
(54, 0, '2021-07-18 17:22:42', 'no', NULL, NULL),
(55, 1202, '2021-07-19 03:15:51', 'no', NULL, NULL),
(56, 0, '2021-07-18 17:25:54', 'no', NULL, NULL),
(57, 1063, '2021-07-19 03:02:50', 'no', NULL, NULL),
(1432, 140, '2026-01-28 09:09:29', 'no', NULL, NULL),
(1433, 140, '2026-02-03 14:40:00', 'no', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `login_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_activity` datetime NOT NULL,
  `sd_ip` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`login_details_id`, `user_id`, `last_activity`, `sd_ip`) VALUES
(172, 881, '2020-11-23 09:07:19', NULL),
(175, 874, '2020-11-24 01:15:35', NULL),
(186, 512, '2020-11-25 07:08:40', NULL),
(188, 511, '2020-11-25 07:14:41', NULL),
(198, 94, '2020-11-29 04:02:36', NULL),
(200, 305, '2020-12-01 11:07:32', NULL),
(203, 505, '2020-12-04 08:21:13', NULL),
(216, 140, '2020-12-06 04:15:54', NULL),
(218, 140, '2020-12-06 09:27:55', NULL),
(219, 267, '2020-12-06 09:43:30', 'Lucknow India 47.9.175.209'),
(222, 143, '2020-12-06 10:13:03', NULL),
(223, 750, '2020-12-06 10:29:13', 'Lucknow India 47.9.139.151'),
(224, 891, '2020-12-06 10:32:20', 'Patna India 106.207.77.154'),
(225, 140, '2020-12-06 11:13:17', NULL),
(226, 891, '2020-12-06 12:14:40', 'Lucknow India 47.9.112.159'),
(227, 896, '2020-12-06 18:20:05', 'Jaipur India 157.47.198.249'),

(2833, 140, '2026-02-03 13:10:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login_details1`
--

CREATE TABLE `login_details1` (
  `login_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_type` enum('no','yes') NOT NULL,
  `accept` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login_details1`
--

INSERT INTO `login_details1` (`login_details_id`, `user_id`, `last_activity`, `is_type`, `accept`) VALUES
(46, 1202, '2021-07-19 02:52:45', 'no', NULL),
(49, 0, '2021-07-18 17:19:32', 'no', NULL),
(52, 0, '2021-07-18 17:20:36', 'no', NULL),
(53, 0, '2021-07-18 17:21:33', 'no', NULL),
(54, 0, '2021-07-18 17:22:42', 'no', NULL),
(2325, NULL, 'Index Page', NULL, '2026-02-08 02:24:02', '49.36.188.56 -', '28.502361630561275', '77.18694986051656');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `user_id` varchar(40) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `mobile` varchar(14) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `price` varchar(12) DEFAULT NULL,
  `productinfo` varchar(15) DEFAULT NULL,
  `payment_status` varchar(10) DEFAULT NULL,
  `txnid` varchar(30) DEFAULT NULL,
  `mihpayid` varchar(30) DEFAULT NULL,
  `bank_ref_num` varchar(30) DEFAULT NULL,
  `payuMoneyId` varchar(20) DEFAULT NULL,
  `addedon` varchar(23) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `user_id`, `name`, `mobile`, `email`, `price`, `productinfo`, `payment_status`, `txnid`, `mihpayid`, `bank_ref_num`, `payuMoneyId`, `addedon`) VALUES
(125, '140', 'sachin', '9335994716', 'sachinatmail@gmail.com', '1', 'PRO Membershsip', 'success', 'cd25376ebabe2f6455d1', '11533837581', '031009360833', '374367234', '2020-11-05 09:00:04'),
(124, '140', 'sachin', '9335994716', 'sachinatmail@gmail.com', '1', 'PRO Membershsip', 'success', '1a227d37e0a7d22c3c71', '11533787619', '031008171854', '374365742', '2020-11-05 08:50:23'),
(5, '140', 'sachin', '9335994716', 'sachinatmail@gmail.com', '5', 'PRO Membershsip', 'Pending', '1ccff2d022f97813d841', NULL, NULL, NULL, '2020-10-26 03:48:22'),
(6, '140', 'sachin', '9335994716', 'sachinatmail@gmail.com', '5', 'PRO Membershsip', 'Pending', '1ccff2d022f97813d841', NULL, NULL, NULL, '2020-10-26 03:48:25'),
(123, '140', 'sachin', '9335994716', 'sachinatmail@gmail.com', '1', 'PRO Membershsip', 'success', 'cf19459305ba484067d8', '11533675415', '031008750682', '374362270', '2020-11-05 08:27:06'),
(122, '140', 'sachin', '9335994716', 'sachinatmail@gmail.com', '1', 'PRO Membershsip', 'success', '99d6ac80701aae865660', '11532101111', 'P2011042226373494789336', '374321153', '2020-11-04 10:25:31'),
(121, '140', 'sachin', '9335994716', 'sachinatmail@gmail.com', '1', 'PRO Membershsip', 'Pending', 'e825774da93d19e8573a', NULL, NULL, NULL, '2020-11-04 10:22:57'),
(118, '140', 'sachin', '9335994716', 'sachinatmail@gmail.com', '3', 'PRO Membershsip', 'success', 'a88a1138d30941b39be1', '11507310259', '030621424295', '373243319', '2020-11-01 03:56:37'),
(119, '140', 'sachin', '9335994716', 'sachinatmail@gmail.com', '3', 'PRO Membershsip', 'Pending', '7b2155f7bd6cc5ff9449', NULL, NULL, NULL, '2020-11-03 04:17:34'),
(120, '140', 'sachin', '9335994716', 'sachinatmail@gmail.com', '3', 'PRO Membershsip', 'success', '53667c94000c311f3a62', '11525432811', 'P2011040846312069431285', '374037991', '2020-11-04 03:14:29'),
(74, '140', 'sachin', '9335994716', 'sachinatmail@gmail.com', '2', 'PRO Membershsip', 'success', '9110a0a447fca5a673f8', '11462297981', '6037335418466182106090', '371109213', '2020-10-26 05:30:56'),
(126, '140', 'sachin', '9335994716', 'sachinatmail@gmail.com', '1', 'PRO Membershsip', 'Pending', '80b77128e0cf30f72ee6', NULL, NULL, NULL, '2020-11-05 09:13:12'),
(127, '140', 'sachin', '9335994716', 'sachinatmail@gmail.com', '1', 'PRO Membershsip', 'success', 'e43ca3d5da4f7cb3cc4d', '11533994853', '031009934242', '374372911', '2020-11-05 09:28:23'),
(128, '124', 'Rajnish prakash', '1111111111', 'spriyasahu550@gmail.com', '1', 'PRO Membershsip', 'Pending', 'be6d97a1aec8ab91b446', NULL, NULL, NULL, '2020-11-26 11:24:13'),
(73, '140', 'sachin', '9335994716', 'sachinatmail@gmail.com', '2', 'PRO Membershsip', 'success', '0b9507f66421e89c16da', '11462071665', NULL, NULL, '2020-10-26 05:05:56');

-- --------------------------------------------------------

--
-- Table structure for table `paytm`
--

CREATE TABLE `paytm` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ORDERID` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `price` varchar(15) DEFAULT NULL,
  `product_info` varchar(20) DEFAULT NULL,
  `RESPMSG` varchar(250) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `txnid` varchar(100) DEFAULT NULL,
  `TXNDATE` varchar(30) DEFAULT NULL,
  `BANKTXNID` varchar(30) DEFAULT NULL,
  `PAYMENTMODE` varchar(20) DEFAULT NULL,
  `MID` varchar(50) DEFAULT NULL,
  `BANKTXNDATE` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `paytm`
--

INSERT INTO `paytm` (`id`, `user_id`, `ORDERID`, `name`, `mobile`, `email`, `price`, `product_info`, `RESPMSG`, `payment_status`, `txnid`, `TXNDATE`, `BANKTXNID`, `PAYMENTMODE`, `MID`, `BANKTXNDATE`) VALUES
(75, 917, 'ORDS18062817', 'Rajkumar Gupta', '7700003737', 'shivkumargupta960@gmail.com', '51', 'PRO Membershsip', 'Txn Success', 'TXN_SUCCESS', '20201208111212800110168990965619296', '2020-12-08 11:07:48', '99932159462285', 'PPI', 'ELeZUW63036669209792', '2020-12-08 11:07:49.0'),
(118, 972, 'ORDS60938690', 'Pankaj muresh gupta', '9762723660', 'pg2790293@gmail.com', '51', 'PRO Membershsip', 'Txn Success', 'TXN_SUCCESS', '20210403111212800110168898194884039', '2021-04-03 12:37:33', '109300094933', 'UPI', 'ELeZUW63036669209792', '2021-04-03 00:37:34.0'),
(112, 991, 'ORDS19682699', 'Shailendra gupta', '7905007511', 'shail2020luck@gmail.com', '51', 'PRO Membershsip', 'Your payment has been declined by your bank. Please try again or use a different method to complete the payment.', 'TXN_FAILURE', '20210128111212800110168583079130187', '2021-01-28 08:38:36', '', 'PPI', 'ELeZUW63036669209792', '2021-01-28 20:38:43.0'),
(100, 972, 'ORDS72033206', 'Pankaj muresh gupta', '9762723660', 'pg2790293@gmail.com', '2', 'PRO Membershsip', 'Txn Success', 'TXN_SUCCESS', '20210107111212800110168412672693825', '2021-01-07 10:26:28', '150801598817', 'PPI', 'ELeZUW63036669209792', '2021-01-07 22:26:30.0'),
(113, 991, 'ORDS44354300', 'Shailendra gupta', '7905007511', 'shail2020luck@gmail.com', '51', 'PRO Membershsip', 'Txn Success', 'TXN_SUCCESS', '20210130111212800110168538879039501', '2021-01-30 10:06:11', '152023397956', 'PPI', 'ELeZUW63036669209792', '2021-01-30 22:06:12.0'),
(213, 1723, 'ORDS80531988', 'DEEPSHIKHA ', '9120068470', 'guptarohit594@gmail.com', '151', 'PRO Membershsip', 'Txn Success', 'TXN_SUCCESS', '20230415011080000853948401997159928', '2023-04-15 10:46:03', '310513588474', 'UPI', 'ELeZUW63036669209792', '2023-04-15 10:46:04.0'),
(127, 750, 'ORDS93248312', 'Aishwarya Rathore', '7470600554', 'anita09rat@gmail.com', '251', 'PRO Membershsip', 'User has not completed transaction.', 'TXN_FAILURE', '20210513111212800110168684905505892', '2021-05-13 10:16:41', '', NULL, 'ELeZUW63036669209792', NULL),
(128, 1122, 'ORDS26393608', 'SHIV Shankar', '9616183709', 'shivgupta012@gmail.com', '251', 'PRO Membershsip', NULL, 'Pending', NULL, '2021-05-13 10:20:27', NULL, NULL, NULL, NULL),
(136, 1200, 'ORDS94100850', 'Dr Sandeep Kumar Gupta', '8171557186', NULL, '151', 'PRO Membershsip', NULL, 'Pending', NULL, '2021-07-15 09:14:42', NULL, NULL, NULL, NULL),
(139, 1211, 'ORDS55568209', 'Arvind Sahani', '9791187282', NULL, '251', 'PRO Membershsip', NULL, 'Pending', NULL, '2021-09-06 06:25:16', NULL, NULL, NULL, NULL),
(214, 140, 'ORDS58342388', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '151', 'PRO Membershsip', NULL, 'Pending', NULL, '2023-04-16 07:27:45', NULL, NULL, NULL, NULL),
(215, 140, 'ORDS75186625', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '151', 'PRO Membershsip', NULL, 'Pending', NULL, '2023-04-21 10:38:08', NULL, NULL, NULL, NULL),
(216, 140, 'ORDS47855436', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '151', 'PRO Membershsip', NULL, 'Pending', NULL, '2023-07-01 08:11:08', NULL, NULL, NULL, NULL),
(217, 140, 'ORDS31559228', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '551', 'PRO Membershsip', NULL, 'Pending', NULL, '2023-07-01 08:11:19', NULL, NULL, NULL, NULL),
(218, 140, 'ORDS20937955', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '999', 'PRO Membershsip', NULL, 'Pending', NULL, '2023-07-01 08:11:24', NULL, NULL, NULL, NULL),
(165, 1561, 'ORDS85604864', 'Kunal Kumar', '9570138371', 'kunalkumar9571@gmail.com', '151', 'PRO Membershsip', NULL, 'Pending', NULL, '2022-06-10 12:04:51', NULL, NULL, NULL, NULL),
(164, 1347, 'ORDS8841452', 'SUPRIYA GUPTA', '9807719509', NULL, '151', 'PRO Membershsip', 'Txn Success', 'TXN_SUCCESS', '20220610111212800110168883357535399', '2022-06-10 10:21:06', '188906581970', 'PPI', 'ELeZUW63036669209792', '2022-06-10 10:21:07.0'),
(162, 1347, 'ORDS22231856', 'SUPRIYA GUPTA', '9807719509', NULL, '151', 'PRO Membershsip', 'The UPI PIN you entered was incorrect. Please try again or use different payment method.', 'TXN_FAILURE', '20220610111212800110168837257631845', '2022-06-10 10:18:40', '216114199961', 'PPI', 'ELeZUW63036669209792', '2022-06-10 10:18:40.0'),
(166, 1561, 'ORDS81530289', 'Kunal Kumar', '9570138371', 'kunalkumar9571@gmail.com', '151', 'PRO Membershsip', NULL, 'Pending', NULL, '2022-06-10 12:16:59', NULL, NULL, NULL, NULL),
(175, 140, 'ORDS38168532', 'Sachin Gupta', '9335994716', 'sachinatmail@gmail.com', '551', 'PRO Membershsip', 'User has not completed transaction.', 'TXN_FAILURE', '20220613111212800110168548858494196', '2022-06-13 03:21:50', '', NULL, 'ELeZUW63036669209792', NULL),
(176, 1591, 'ORDS56063510', 'Ashish Sahu ', '8928339966', 'sahuashish8917@gmail.com', 'NULL', 'PRO Membershsip', NULL, 'Pending', NULL, '2022-06-28 03:43:06', NULL, NULL, NULL, NULL),
(194, 140, 'ORDS74419670', 'Sachin Gupta', '9335994716', 'sachinatmail@gmail.com', '151', 'PRO Membershsip', 'Merchant Transaction Failure', 'TXN_FAILURE', '20220711111212800110168848166746600', '2022-07-11 10:00:17', '', NULL, 'ELeZUW63036669209792', '2022-07-11 22:00:21.0'),
(207, 140, 'ORDS5952029', 'Sachin Gupta', '9335994716', 'sachinatmail@gmail.com', '151', 'PRO Membershsip', 'Merchant Transaction Failure', 'TXN_FAILURE', '20220712111212800110168742967524620', '2022-07-12 08:45:25', '', NULL, 'ELeZUW63036669209792', '2022-07-12 08:45:26.0'),
(210, 1678, 'ORDS88970352', 'Ajay Kumar Sahu', '9212066102', 'shyamsundergupta487@gmail.com', '999', 'PRO Membershsip', 'Txn Success', 'TXN_SUCCESS', '20221008111212800110168304990633272', '2022-10-08 10:45:26', '196839767901', 'PPI', 'ELeZUW63036669209792', '2022-10-08 10:45:27.0'),
(219, 140, 'ORDS12579873', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '999', 'PRO Membershsip', 'User has not completed transaction.', 'TXN_FAILURE', '20231216010870000942828815485308920', '2023-12-16 05:05:05', '', NULL, 'ELeZUW63036669209792', NULL),
(220, 140, 'ORDS58135407', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '151', 'PRO Membershsip', 'User has not completed transaction.', 'TXN_FAILURE', '20231216010860000942829046293670517', '2023-12-16 05:06:00', '', NULL, 'ELeZUW63036669209792', NULL),
(221, NULL, 'ORDS51910496', NULL, NULL, NULL, '151', 'PRO Membershsip', NULL, 'Pending', NULL, '2024-01-09 09:19:10', NULL, NULL, NULL, NULL),
(222, NULL, 'ORDS51910496', NULL, NULL, NULL, '151', 'PRO Membershsip', NULL, 'Pending', NULL, '2024-01-09 09:22:56', NULL, NULL, NULL, NULL),
(223, NULL, 'ORDS51910496', NULL, NULL, NULL, '151', 'PRO Membershsip', NULL, 'Pending', NULL, '2024-01-09 09:22:56', NULL, NULL, NULL, NULL),
(224, NULL, 'ORDS51910496', NULL, NULL, NULL, '151', 'PRO Membershsip', NULL, 'Pending', NULL, '2024-01-09 09:22:57', NULL, NULL, NULL, NULL),
(225, NULL, 'ORDS51910496', NULL, NULL, NULL, '151', 'PRO Membershsip', NULL, 'Pending', NULL, '2024-01-09 09:22:58', NULL, NULL, NULL, NULL),
(226, NULL, 'ORDS51910496', NULL, NULL, NULL, '151', 'PRO Membershsip', NULL, 'Pending', NULL, '2024-01-09 09:22:59', NULL, NULL, NULL, NULL),
(227, 140, 'ORDS81368050', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '151', 'PRO Membershsip', NULL, 'Pending', NULL, '2024-01-20 02:01:17', NULL, NULL, NULL, NULL),
(228, 140, 'ORDS48897938', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '151', 'PRO Membershsip', 'Txn Success', 'TXN_SUCCESS', '20240120011010000955466728886775046', '2024-01-20 02:03:38', '233016963156', 'PPI', 'ELeZUW63036669209792', '2024-01-20 14:03:39.0'),
(229, 140, 'ORDS34588773', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '11', 'PRO Membershsip', 'Txn Success', 'TXN_SUCCESS', '20240206011050000961677957737698249', '2024-02-06 05:24:50', '440320297448', 'UPI', 'ELeZUW63036669209792', '2024-02-06 17:24:52.0'),
(230, 140, 'ORDS79642784', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '11', 'PRO Membershsip', 'Txn Success', 'TXN_SUCCESS', '20240206010980000961678258310455883', '2024-02-06 05:26:02', '440320343326', 'UPI', 'ELeZUW63036669209792', '2024-02-06 17:26:03.0'),
(231, 140, 'ORDS83073739', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '11', 'PRO Membershsip', 'Txn Success', 'TXN_SUCCESS', '20240206010850000961689926859047318', '2024-02-06 06:12:24', '403733573694', 'UPI', 'ELeZUW63036669209792', '2024-02-06 18:12:25.0'),
(232, 140, 'ORDS22811137', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '251', 'PRO Membershsip', 'User has not completed transaction.', 'TXN_FAILURE', '20240206010810000961691972170126633', '2024-02-06 06:20:31', '', NULL, 'ELeZUW63036669209792', NULL),
(233, 1942, 'ORDS56436988', 'Rahul', '7982824595', 'subhashgupta34@yahoo.in', '251', 'PRO Membershsip', NULL, 'Pending', NULL, '2025-09-09 12:45:12', NULL, NULL, NULL, NULL),
(234, 1942, 'ORDS6056536', 'Rahul', '7982824595', 'subhashgupta34@yahoo.in', '251', 'PRO Membershsip', NULL, 'Pending', NULL, '2025-09-09 12:45:27', NULL, NULL, NULL, NULL),
(235, 1942, 'ORDS6563499', 'Rahul', '7982824595', 'subhashgupta34@yahoo.in', '251', 'PRO Membershsip', NULL, 'Pending', NULL, '2025-09-09 12:46:52', NULL, NULL, NULL, NULL),
(236, 1942, 'ORDS3392371', 'Rahul', '7982824595', 'subhashgupta34@yahoo.in', '251', 'PRO Membershsip', NULL, 'Pending', NULL, '2025-09-09 12:47:32', NULL, NULL, NULL, NULL),
(237, 140, 'ORDS77938317', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '251', 'PRO Membershsip', NULL, 'Pending', NULL, '2025-09-09 12:34:53', NULL, NULL, NULL, NULL),
(238, 140, 'ORDS726007', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '251', 'PRO Membershsip', NULL, 'Pending', NULL, '2025-09-09 06:14:04', NULL, NULL, NULL, NULL),
(239, 140, 'ORDS726007', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '251', 'PRO Membershsip', NULL, 'Pending', NULL, '2025-09-09 06:16:14', NULL, NULL, NULL, NULL),
(240, 140, 'ORDS73034678', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '251', 'PRO Membershsip', NULL, 'Pending', NULL, '2025-09-09 06:21:59', NULL, NULL, NULL, NULL),
(241, 140, 'ORDS62785245', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '551', 'PRO Membershsip', NULL, 'Pending', NULL, '2025-09-09 06:23:25', NULL, NULL, NULL, NULL),
(242, 140, 'ORDS54444406', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '251', 'PRO Membershsip', NULL, 'Pending', NULL, '2025-09-09 06:24:51', NULL, NULL, NULL, NULL),
(243, 140, 'ORDS67788815', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '251', 'PRO Membershsip', NULL, 'Pending', NULL, '2025-09-09 06:35:48', NULL, NULL, NULL, NULL),
(244, 140, 'ORDS26324044', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '251', 'PRO Membershsip', NULL, 'Pending', NULL, '2025-09-09 06:39:48', NULL, NULL, NULL, NULL),
(245, NULL, 'ORDS26324044', NULL, NULL, NULL, '251', 'PRO Membershsip', NULL, 'Pending', NULL, '2025-09-09 06:53:20', NULL, NULL, NULL, NULL),
(246, 140, 'ORDS94697715', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '251', 'PRO Membershsip', NULL, 'Pending', NULL, '2025-09-09 06:53:57', NULL, NULL, NULL, NULL),
(247, 140, 'ORDS95829388', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '251', 'PRO Membershsip', NULL, 'Pending', NULL, '2025-09-09 06:58:25', NULL, NULL, NULL, NULL),
(248, 140, 'ORDS75540180', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '251', 'PRO Membershsip', NULL, 'Pending', NULL, '2025-09-09 06:59:05', NULL, NULL, NULL, NULL),
(249, 1965, 'ORDS565314', 'hjj', '898989889', 'hjh@d.com', '551', 'PRO Membershsip', NULL, 'Pending', NULL, '2025-10-12 09:09:28', NULL, NULL, NULL, NULL),
(250, NULL, 'ORDS37835022', 'hjhjh', '8989898888', 'Guest', '98', 'hhh', NULL, 'Pending', NULL, '2025-10-12 11:44:06', NULL, NULL, NULL, NULL),
(251, NULL, 'ORDS36957774', NULL, NULL, 'Guest', '51', NULL, NULL, 'Pending', NULL, '2025-10-12 11:45:43', NULL, NULL, NULL, NULL),
(252, 140, 'ORDS99991714', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '251', 'PRO Membershsip', NULL, 'Pending', NULL, '2025-10-25 09:18:03', NULL, NULL, NULL, NULL),
(253, 140, 'ORDS73011242', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '251', 'PRO Membershsip', NULL, 'Pending', NULL, '2025-10-25 09:24:55', NULL, NULL, NULL, NULL),
(254, 140, 'ORDS44266057', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '551', 'PRO Membershsip', NULL, 'Pending', NULL, '2025-10-25 09:35:49', NULL, NULL, NULL, NULL),
(255, 140, 'ORDS44934496', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '251', 'PRO Membershsip', NULL, 'Pending', NULL, '2026-01-05 06:52:16', NULL, NULL, NULL, NULL),
(256, 140, 'ORDS29705242', 'Sachin Gupta', '9335994716', 'd.sachin@live.in', '251', 'PRO Membershsip', NULL, 'Pending', NULL, '2026-02-03 08:10:28', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quick_admin`
--

CREATE TABLE `quick_admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(35) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `quick_admin`
--

INSERT INTO `quick_admin` (`admin_id`, `email`, `password`, `status`, `name`) VALUES
(1, 'SACHIND', '5d28cf806d585717b095a74b13d9d318', 'Admin', 'Sachin');

-- --------------------------------------------------------

--
-- Table structure for table `sdetails`
--

CREATE TABLE `sdetails` (
  `did` int(11) NOT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `scolour` varchar(20) DEFAULT NULL,
  `sweight` varchar(20) DEFAULT NULL,
  `sheight` varchar(20) DEFAULT NULL,
  `sstatus` varchar(30) DEFAULT NULL,
  `sbody` varchar(20) DEFAULT NULL,
  `scast` varchar(20) DEFAULT NULL,
  `sbcast` varchar(20) DEFAULT NULL,
  `srasi` varchar(12) DEFAULT NULL,
  `stob` varchar(20) DEFAULT NULL,
  `spob` varchar(20) DEFAULT NULL,
  `sedu` varchar(100) DEFAULT NULL,
  `sedudetail` varchar(150) DEFAULT NULL,
  `soccupation` varchar(20) DEFAULT NULL,
  `sincome` varchar(20) DEFAULT NULL,
  `foccu` varchar(30) DEFAULT NULL,
  `moccu` varchar(30) DEFAULT NULL,
  `bs` varchar(100) DEFAULT NULL,
  `sdate` varchar(20) DEFAULT NULL,
  `stime` varchar(20) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `smangal` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sdetails`
--

INSERT INTO `sdetails` (`did`, `fname`, `scolour`, `sweight`, `sheight`, `sstatus`, `sbody`, `scast`, `sbcast`, `srasi`, `stob`, `spob`, `sedu`, `sedudetail`, `soccupation`, `sincome`, `foccu`, `moccu`, `bs`, `sdate`, `stime`, `id`, `smangal`) VALUES
(86, NULL, 'Fair', '60-70 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'Kamma', 'Kamma', NULL, NULL, 'Hyderabad', 'B.Tech', NULL, 'Business', '10-15 Lacs', 'Business Person', 'House Wife', '2', '19/04/2020', '07:35:am', 20, NULL),
(93, NULL, 'Wheatish', '60-70 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'GUPTA', 'MAHOUR VAISHYA', NULL, NULL, 'ETAH', 'BSC', NULL, 'Private Job', '3-5 Lacs', 'Private Job', 'Private Job', 'Brother -1, Sister- 2', '19/04/2020', '02:19:pm', 27, 'No'),
(94, NULL, 'Fair', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'Fit', 'Baniya', 'Mahor Vaishya', NULL, NULL, 'New Delhi', 'B.A', NULL, 'Business', '10-15 Lacs', 'Business Person', 'Business Women', '3', '19/04/2020', '02:49:pm', 28, NULL),
(95, NULL, 'Fair', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'SCHEDULED CASTE ', 'BANSPHOR', NULL, NULL, 'BAREILLY', 'B.Tech', NULL, 'All Gov.Job ', '10-15 Lacs', 'All Gov.Job ', 'House Wife', 'FOUR SISTERS', '19/04/2020', '05:28:pm', 29, NULL),
(96, NULL, 'Very Fair', '50-60 Kg', '5 Feet 1inch', 'Never Married', 'Fit', 'Jatav', '', NULL, NULL, 'Delhi', 'B.A', NULL, 'Unemployed', '5-7 Lacs', 'Private Job', 'House Wife', '3 sisters and 3 brothers', '19/04/2020', '06:10:pm', 30, NULL),
(122, 'V K TIWARI', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'slim', 'Bramhan', 'Tiwari', NULL, NULL, 'INDIA', 'BSC', NULL, 'Business', '3-5 Lacs', 'Farmer', 'House Wife', '2', '20/04/2020', '09:22:am', 35, NULL),
(124, 'Chandra Prakash gupta', 'Very Fair', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'Healthy', 'Gupta', 'Teli', NULL, NULL, 'Mau', 'B.Tech', NULL, 'Gov.Job ', '5-7 Lacs', 'Business Person', 'House Wife', '4', '20/04/2020', '11:17:am', 36, NULL),
(126, '', 'Fair', '60-70 Kg', '5 Feet 5 inch', 'Never Married', 'Healthy', '', '', NULL, NULL, '', 'BSC', NULL, 'Gov.Job ', '7-10 Lacs', 'Farmer', 'House Wife', '', '20/04/2020', '12:04:pm', 37, NULL),
(128, 'Umakant arya', 'Fair', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'Healthy', '', '', NULL, NULL, 'Mau', 'MBBS/MD', NULL, 'Gov.Job ', '7-10 Lacs', 'All Gov.Job ', 'Business Women', '3 brother', '20/04/2020', '12:36:pm', 39, NULL),
(127, 'Jagdhar', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', '', '', NULL, NULL, 'Gorakhpur', 'B.A', NULL, 'Unemployed', '', 'Farmer', 'House Wife', '2', '20/04/2020', '12:46:pm', 40, NULL),
(130, 'Prafulbhai manibhai patel', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'slim', 'Patel', 'Leaua patel', NULL, NULL, '3', 'HighSchool', NULL, 'Private Job', '3-5 Lacs', 'Farmer', 'House Wife', '2sister married', '20/04/2020', '01:43:pm', 43, NULL),
(131, 'Ramesh', 'Wheatish', '', '5 Feet 4 inch', 'Never Married', 'slim', 'Teli', 'Teli', NULL, NULL, '7', 'B.Com', NULL, 'Private Job', '3-5 Lacs', 'Private Job', 'House Wife', '2', '20/04/2020', '01:52:pm', 44, NULL),
(132, 'N k yadav', 'Wheatish', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'slim', 'Yadav', 'Ahir', NULL, NULL, 'Ballia', 'BTC', NULL, 'Gov.Job ', '5-7 Lacs', 'Farmer', 'House Wife', '2', '20/04/2020', '02:09:pm', 45, NULL),
(133, 'Late Dr B. K. Mishra', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Hindu Brahmin', 'Brahmin', NULL, NULL, '4', 'Other', NULL, 'Private Job', '1-3 Lacs', 'All Gov.Job ', 'House Wife', '2', '20/04/2020', '02:30:pm', 47, NULL),
(142, 'Budharu ram sahu', 'Fair', '50-60 Kg', '5 Feet 1inch', 'Never Married', 'slim', 'Sahu', 'Teli', NULL, NULL, '', 'Other', NULL, 'Private Job', '1-3 Lacs', 'Civil Services', 'House Wife', '2 brothers and 2 sister ', '21/04/2020', '08:49:am', 48, NULL),
(143, 'DAYASHANKAR GUPTA ', 'Wheatish', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'OBC', 'TELI', NULL, NULL, 'MAU', 'B.A', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHERS', '21/04/2020', '09:00:am', 49, NULL),
(144, 'Late shyam singh', 'Wheatish', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'slim', 'Singh', 'RAJPUT', NULL, NULL, 'Small family', 'B.Com', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '0', '21/04/2020', '09:46:am', 50, NULL),
(146, 'M R sahu', 'Fair', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Healthy', 'Sahu', 'Sahu jhariya teli', NULL, NULL, '4', '', NULL, 'Business', '5-7 Lacs', 'Business Person', 'House Wife', '4', '21/04/2020', '11:08:am', 52, NULL),
(151, 'Ram Pyare Prasad', 'Fair', '60-70 Kg', '5 Feet 9 inch', 'Never Married', 'slim', 'Teli', 'Kanaujiya ', NULL, NULL, 'Bagaha', 'B.Com', NULL, 'Private Job', '3-5 Lacs', 'Farmer', 'House Wife', '1', '21/04/2020', '11:38:am', 53, NULL),
(153, 'Lachchhan sahu', 'Fair', '80-90 Kg', '5 Feet 11 inch', 'Never Married', 'Fit', '', 'teli', NULL, NULL, 'deobhog', 'B.A', NULL, 'Gov.Job ', '1-3 Lacs', 'Farmer', 'House Wife', 'none', '21/04/2020', '11:52:am', 56, NULL),
(155, 'ram kumar sahu', 'Wheatish', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Healthy', 'gupta', 'sahu', NULL, NULL, 'barabanki', 'HighSchool', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '4 brother &1 sister', '21/04/2020', '11:56:am', 57, NULL),
(158, 'hajarilal sahu', 'Wheatish', '50-60 Kg', '5 Feet 1inch', 'Divorced', 'slim', 'sahu', 'teli', NULL, NULL, 'kota (rajasthan)', 'HighSchool', NULL, 'Business', '1-3 Lacs', 'Farmer', 'House Wife', '1 brother & 2 sister', '21/04/2020', '12:16:pm', 63, NULL),
(159, 'Samaru sahu', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Teli', 'Sahu', NULL, NULL, 'Bhilai', '', NULL, '', '', 'Farmer', 'House Wife', '2brother +2sister(including me) ', '21/04/2020', '12:18:pm', 65, NULL),
(162, 'late Parasnath sahu', 'Fair', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'Healthy', 'sahu', 'teli', NULL, NULL, 'basti  up', 'Law', NULL, 'Private Job', '1-3 Lacs', 'Farmer', 'House Wife', '2 sister only', '21/04/2020', '12:35:pm', 68, NULL),
(165, 'mohan lal sahu', 'Fair', '60-70 Kg', '5 Feet 3 inch', 'Never Married', 'Healthy', 'sahu', 'teli', NULL, NULL, 'jabalpur mp', 'B.A', NULL, '', '1-3 Lacs', 'Business Person', 'House Wife', '', '21/04/2020', '12:46:pm', 69, NULL),
(164, 'Ajay verma', 'Very Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Verma', 'Sunar', NULL, NULL, 'Uttar pradesh', 'BSC', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '2,0', '21/04/2020', '12:47:pm', 70, NULL),
(165, 'mohan lal sahu', 'Fair', '60-70 Kg', '5 Feet 3 inch', 'Never Married', 'Healthy', 'sahu', 'teli', NULL, NULL, 'jabalpur mp', 'B.A', NULL, '', '1-3 Lacs', 'Business Person', 'House Wife', '', '21/04/2020', '12:51:pm', 72, NULL),
(166, 'balkishun sahu', 'Wheatish', '60-70 Kg', '5 Feet 4 inch', 'Never Married', 'slim', 'sahu', 'teli', NULL, NULL, 'bhopal mp', 'B.A', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '------', '21/04/2020', '12:56:pm', 74, NULL),
(167, 'lekhram sahu', 'Fair', '60-70 Kg', '5 Feet 5 inch', 'Divorced', 'Healthy', 'sahu', 'teli', NULL, NULL, 'gopalganj (mp)', 'B.A', NULL, 'Private Job', '10-15 Lacs', 'Farmer', 'House Wife', '2 brother &4 sister', '21/04/2020', '01:06:pm', 76, NULL),
(170, 'Tulsi ram sahu ', 'Fair', '60-70 Kg', '5 Feet 6 inch', 'Divorced', 'Fit', 'Sahu', 'Sahu', NULL, NULL, '3', '', NULL, '', '', 'Farmer', 'House Wife', '1 sister', '21/04/2020', '01:40:pm', 77, NULL),
(172, '', 'Fair', '60-70 Kg', '5 Feet 5 inch', 'Divorced', 'Fit', 'Sahu', '', NULL, NULL, '', 'HighSchool', NULL, 'Private Job', '1-3 Lacs', 'Farmer', 'House Wife', '1 sisters merrid', '21/04/2020', '03:29:pm', 80, NULL),
(175, 'Sunil gupta', 'Fair', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'slim', 'Teli', 'Kanaujia teli', NULL, NULL, 'Gopalganj', 'MSC', NULL, 'Gov.Job ', '3-5 Lacs', 'Farmer', 'House Wife', '1 yenger bro and three married sister', '21/04/2020', '04:28:pm', 82, NULL),
(177, 'Suresh pal', 'Wheatish', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'slim', 'Obc', 'Teli', NULL, NULL, 'Hardoi', 'B.A', NULL, 'Unemployed', '', 'All Gov.Job ', 'House Wife', '3 brother with me and 2 sister, 1 brother and 1 sister married', '21/04/2020', '04:56:pm', 86, NULL),
(178, 'Mr. Purushottam  sahu', '', '', '5 Feet 4 inch', 'Never Married', 'slim', '', '', NULL, NULL, 'Hata', 'BSC', NULL, '', '1-3 Lacs', 'Business Person', 'House Wife', '2 brother 2 sisters ', '21/04/2020', '05:00:pm', 87, NULL),
(182, 'Madhav LAL sahu', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'slim', 'Sahu', 'Teli', NULL, NULL, 'Mangata Rajnandgoan', 'Other', NULL, 'Private Job', '1-3 Lacs', 'Farmer', 'House Wife', '1and 2', '21/04/2020', '06:42:pm', 88, NULL),
(183, 'jeetram sahu', 'Fair', '50-60 Kg', '5 Feet 8 inch', 'Never Married', 'Fit', 'sahu', 'teli', NULL, NULL, 'balodabazar', 'B.Com', NULL, 'Gov.Job ', '3-5 Lacs', 'Farmer', 'House Wife', '------------', '21/04/2020', '06:56:pm', 89, NULL),
(183, 'jeetram sahu', 'Wheatish', '', '5 Feet 8 inch', 'Never Married', '', 'sahu', 'teli', NULL, NULL, 'balodabazar (cg)', 'B.Com', NULL, 'Gov.Job ', '3-5 Lacs', 'Farmer', 'House Wife', '', '21/04/2020', '07:01:pm', 91, NULL),
(184, 'pitambar sahu', 'Wheatish', '', '5 Feet 3 inch', 'Never Married', '', 'sahu', '', NULL, NULL, 'janjgir champa (cg)', 'Undergraduate', NULL, 'Private Job', '', 'Farmer', 'House Wife', '1 brother & 4 sister', '21/04/2020', '07:12:pm', 93, NULL),
(190, 'Raj kumar sharma', 'Fair', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'slim', 'Hindu', 'Badai', NULL, NULL, 'Ghaziabad', 'B.Tech', NULL, 'Private Job', '3-5 Lacs', 'Private Job', 'Business Women', '1', '22/04/2020', '03:57:am', 94, NULL),
(191, 'Late. Rajendra sahu', 'Wheatish', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'Healthy', 'Sahu teli', 'Telu', NULL, NULL, 'Semariya ', 'B.Com', NULL, 'Private Job', '1-3 Lacs', 'Farmer', 'House Wife', 'No brother no sister ', '22/04/2020', '06:23:am', 95, NULL),
(193, 'L yashpal khanna', 'Wheatish', '70-80 Kg', '5 Feet 6 inch', 'Never Married', 'Skinny', 'Khanna', 'Khatri', NULL, NULL, 'Mother ', 'B.A', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', 'No', '22/04/2020', '08:01:am', 96, NULL),
(192, 'Kulwant Singh', 'Fair', '60-70 Kg', '5 Feet 5 inch', 'Divorced', 'Athletic', 'Kashyap Rajput', '', NULL, NULL, 'New Delhi', 'HighSchool', NULL, 'Private Job', '7-10 Lacs', 'Farmer', 'House Wife', '2 sister and 1 brother,both sister are married', '22/04/2020', '08:02:am', 98, NULL),
(196, 'MOHAN LAL', 'Wheatish', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'GADARIYA', 'BADE HINWAR', NULL, NULL, 'GHAZIABAD', 'BTC', NULL, 'Gov.Job ', '3-5 Lacs', 'All Gov.Job ', 'House Wife', '2 brother and 3 sister ', '22/04/2020', '09:51:am', 99, NULL),
(200, 'Gopal', 'Fair', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'Fit', 'Madrasi', 'Madrasi', NULL, NULL, 'Ajmer', 'B.A', NULL, 'Business', '1-3 Lacs', 'Farmer', 'House Wife', '1', '22/04/2020', '11:38:am', 100, NULL),
(202, 'Kamta sahu', 'Fair', '50-60 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'Sahu', 'Shri batri', NULL, NULL, 'Midil', 'HighSchool', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '2 sistar 1merid self ', '22/04/2020', '01:18:pm', 103, NULL),
(203, 'Pankaj kumar Srivastava', 'Very Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'Kayasth', 'Srivastava', NULL, NULL, 'Ghosi mau', 'B.A', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1 brother only', '22/04/2020', '02:00:pm', 104, NULL),
(198, 'LATE RAMESH CHANDRA TRIPATHI', 'Fair', '', '5 Feet 3 inch', 'Never Married', 'Fit', 'brahman', 'TRIPATHI', NULL, NULL, 'GORAKHPUR', 'BTC', NULL, 'Gov.Job ', '3-5 Lacs', 'Farmer', 'House Wife', '2 BROTHER &2 SISTER', '22/04/2020', '04:21:pm', 105, NULL),
(204, 'LATE RAMESH CHANDRA TRIPATHI', 'Wheatish', '', '5 Feet 2 inch', 'Never Married', 'Healthy', 'BRAHMAN', 'TRIPATHI', NULL, NULL, 'GORAKHPUR', 'Other', NULL, '', '', 'Farmer', 'House Wife', '2 BROTHER & 2 SISTER', '22/04/2020', '04:30:pm', 106, NULL),
(204, 'LATE RAMESH CHANDRA TRIPATHI', 'Wheatish', '', '5 Feet 2 inch', 'Never Married', 'Healthy', 'BRAHMAN', 'TRIPATHI', NULL, NULL, 'GORAKHPUR', 'Other', NULL, '', '', 'Farmer', 'House Wife', '2 BROTHER & 2 SISTER', '22/04/2020', '04:30:pm', 107, NULL),
(205, 'MR. SUBHASHCHANDRA SAHU', 'Fair', '', '5 Feet 1inch', 'Never Married', 'Healthy', 'SAHU', 'TELI', NULL, NULL, 'NAGPUR', 'Other', NULL, 'Business', '7-10 Lacs', 'Farmer', 'House Wife', '3 SISTER', '22/04/2020', '04:54:pm', 109, NULL),
(205, 'MR. SUBHASHCHANDRA SAHU', 'Fair', '', '5 Feet 1inch', 'Never Married', 'Healthy', 'SAHU', 'TELI', NULL, NULL, 'NAGPUR', 'Other', NULL, 'Business', '7-10 Lacs', 'Farmer', 'House Wife', '3 SISTER', '22/04/2020', '04:55:pm', 110, NULL),
(206, '', 'Wheatish', '', '5 Feet 5 inch', 'Never Married', 'Healthy', 'GUPTA', 'ROUNIYAR VAISHYA', NULL, NULL, '', '', NULL, 'Business', '', 'Farmer', 'House Wife', '', '22/04/2020', '05:03:pm', 111, NULL),
(207, 'Rama sahu', 'Fair', '70-80 Kg', '5 Feet 10 inch', 'Divorced', 'Healthy', 'Teli', 'Sahu', NULL, NULL, 'Village', 'Other', NULL, 'Gov.Job ', '3-5 Lacs', 'Farmer', 'House Wife', '3 brothers and1 sister', '22/04/2020', '05:07:pm', 112, NULL),
(208, 'MR.MOHAN MANSINGHANI', 'Fair', '', '5 Feet 7 inch', 'Never Married', 'Healthy', 'SINDHI', '', NULL, NULL, 'LUCKNOW', 'B.Com', NULL, 'Business', '', 'Business Person', 'House Wife', '1 SISTER', '22/04/2020', '05:18:pm', 116, NULL),
(209, 'LATE SRI PRAKASH GUPTA', 'Fair', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'Healthy', 'GUPTA', '', NULL, NULL, 'FAIZABAD', 'Pharmacy', NULL, 'Gov.Job ', '', 'Farmer', 'House Wife', '1 BROTHER & 1 SISTER', '22/04/2020', '05:43:pm', 119, NULL),
(210, 'UMASHANKAR GUPTA', 'Fair', '', '5 Feet 9 inch', 'Never Married', 'Healthy', 'SAHU', 'TELI', NULL, NULL, 'SAGAR (MP)', 'MCA', NULL, 'Private Job', '', 'Farmer', 'House Wife', '1 BROTHER', '22/04/2020', '05:58:pm', 121, NULL),
(214, 'Saheb lal sahu', 'Fair', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'Healthy', 'Sonboir', 'Teli', NULL, NULL, 'Janjgir champa', 'BCA', NULL, 'Business', '1-3 Lacs', 'All Gov.Job ', 'House Wife', '2 brother nd 4sister', '22/04/2020', '07:02:pm', 124, NULL),
(215, 'parash ram sahu', 'Fair', '', '5 Feet 5 inch', 'Never Married', 'Healthy', 'sahu', 'teli', NULL, NULL, 'gariaband (cg)', 'BSC', NULL, '', '', 'Farmer', 'House Wife', '1 brother & 1 sister', '22/04/2020', '07:16:pm', 127, NULL),
(216, '', 'Very Fair', '60-70 Kg', '6 Feet ', 'Never Married', 'Fit', 'Brahman', '', NULL, NULL, 'Palwal Haryana', 'BSC', NULL, 'Gov.Job ', '3-5 Lacs', 'Farmer', 'House Wife', '2,2', '22/04/2020', '07:31:pm', 129, NULL),
(219, 'Upendra kumar mishra ', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Brahmin', 'Saryuparin brahmin ', NULL, NULL, 'Bareilly', '', NULL, '', '', 'Farmer', 'House Wife', 'Two', '22/04/2020', '10:25:pm', 130, NULL),
(219, 'Late B. K. Mishra', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Brahmin', 'Saryuparin brahmin ', NULL, NULL, 'Bareilly', '', NULL, '', '', 'Farmer', 'House Wife', 'Two', '22/04/2020', '10:27:pm', 131, NULL),
(216, '', 'Fair', '60-70 Kg', '5 Feet 11 inch', 'Never Married', 'Athletic', 'Brahmin', '', NULL, NULL, 'Palwal', 'BSC', NULL, 'Gov.Job ', '3-5 Lacs', 'Farmer', 'House Wife', '', '22/04/2020', '11:30:pm', 132, NULL),
(229, 'SRI SHIVKUMAR SAHU', 'Fair', '70-80 Kg', '5 Feet 8 inch', 'Never Married', 'Healthy', 'SAHU', 'TELI', NULL, NULL, 'JAUNPUR', 'B.A', NULL, 'Private Job', '', 'Farmer', 'House Wife', '2 BROTHER &1 SISTER', '23/04/2020', '08:35:am', 134, NULL),
(237, 'Late. Badri Prasad Gupta', 'Fair', '60-70 Kg', '5 Feet 1inch', 'Never Married', 'Healthy', 'Teli', 'Gupta', NULL, NULL, 'Ghosi', 'B.A', NULL, 'Unemployed', '', 'Farmer', 'House Wife', 'Brother 1', '23/04/2020', '11:37:am', 138, NULL),
(238, 'SHYAM LAL', 'Wheatish', '', '5 Feet 2 inch', 'Never Married', 'Healthy', 'SAHU', 'TELI', NULL, NULL, 'NARSINGHPUR (MP)', 'HighSchool', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER & 4 SISTER', '23/04/2020', '12:10:pm', 139, NULL),
(233, '', 'Fair', '', '5 Feet 5 inch', 'Never Married', 'fit', 'Sahu', 'Teli', NULL, NULL, '', 'B.A', NULL, 'Business', '1-3 Lacs', 'Farmer', 'House Wife', '3', '23/04/2020', '12:33:pm', 141, NULL),
(242, 'BHURA SAHU', 'Very Fair', '', '5 Feet 4 inch', 'Never Married', 'Healthy', 'SAHU', 'TELI', NULL, NULL, 'MAHOBA', 'Intermediate', NULL, 'Private Job', '3-5 Lacs', 'Farmer', 'House Wife', '2 BROTHER & 2 SISTER', '23/04/2020', '12:52:pm', 143, NULL),
(243, 'KASHINATH', 'Fair', '', '5 Feet 5 inch', 'Never Married', '', '', 'TELI', NULL, NULL, 'AHAMADNAGAR', '', NULL, '', '', 'Farmer', 'House Wife', '', '23/04/2020', '01:19:pm', 146, 'No'),
(244, 'SURESH', 'Fair', '', '5 Feet 8 inch', 'Never Married', 'Healthy', '', 'TELI', NULL, NULL, 'MUMBAI', '', NULL, 'Private Job', '', 'Private Job', 'House Wife', '', '23/04/2020', '01:27:pm', 147, 'No'),
(245, 'GAJENDRA KUMAR', 'Wheatish', '', '5 Feet 5 inch', 'Never Married', '', 'JAYSWAL', 'TELI', NULL, NULL, 'KHEDA GUJARAT', 'Other', NULL, '', '1-3 Lacs', 'Farmer', 'House Wife', '', '23/04/2020', '01:43:pm', 148, 'Yes'),
(246, 'Shyam Babu', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', '', 'sahu', 'Teli', NULL, NULL, 'Prayagraj, up', '', NULL, '', '', 'All Gov.Job ', 'House Wife', '3 sis, 1 bro', '23/04/2020', '01:59:pm', 151, 'No'),
(247, 'Anil pandey', 'Very Fair', '60-70 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'Brahman', '', NULL, NULL, 'Mau', 'B.Tech', NULL, 'Private Job', '7-10 Lacs', 'Private Job', 'House Wife', '1,1', '23/04/2020', '02:07:pm', 153, 'No'),
(248, 'Radhey shyam bansal', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Aggarwal ', 'Bansal', NULL, NULL, 'Delhi', 'B.A', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '3 sister all married ', '23/04/2020', '04:46:pm', 155, 'No'),
(249, 'Shri rajendra Prasad sahu', 'Fair', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Hindu', 'Teli sahu', NULL, NULL, 'Indore', 'HighSchool', NULL, 'Private Job', '1-3 Lacs', 'Farmer', 'House Wife', 'One brother', '23/04/2020', '05:20:pm', 156, 'No'),
(239, 'Anil gupta ', 'Wheatish', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Walidpur   MAU ', 'MSC', NULL, 'Gov.Job ', '5-7 Lacs', 'Business Person', 'House Wife', 'One brother and one sister', '23/04/2020', '08:34:pm', 158, 'Yes'),
(252, 'Milan ram sahu', 'Fair', '60-70 Kg', '6 Feet 1 inch', 'Never Married', 'Fit', 'Teli', 'Sahu', NULL, NULL, 'Chhatisgarh', 'Undergraduate', NULL, 'Gov.Job ', '3-5 Lacs', 'Farmer', 'House Wife', '2 brother /2sister', '23/04/2020', '10:35:pm', 159, 'No'),
(255, 'GAJANAN RAGHINATH DALVI', 'Fair', '', '6 Feet ', 'Never Married', 'Healthy', 'DALVI', 'TELI', NULL, NULL, 'PUNE', 'Other', NULL, 'Business', '3-5 Lacs', 'Farmer', 'House Wife', '1 BROTHER', '24/04/2020', '11:43:am', 160, 'No'),
(256, 'MADHUKAR LANJEWAR', 'Fair', '', '5 Feet 10 inch', 'Never Married', 'Fit', '', 'TELI', NULL, NULL, 'PUNE', 'Other', NULL, '', '3-5 Lacs', 'Farmer', 'House Wife', '', '24/04/2020', '11:56:am', 161, 'No'),
(257, 'GANESHRAM SAHU', 'Fair', '', '5 Feet 1inch', 'Never Married', 'Fit', 'SAHU', 'TELI', NULL, NULL, 'BILASHPUR (CG)', 'Other', NULL, '', '', 'Farmer', 'House Wife', '2 BROTHER 2 SISTER', '24/04/2020', '12:12:pm', 162, 'No'),
(258, 'Bhagwat sahu', 'Fair', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'slim', 'Teli', 'Sahu', NULL, NULL, '4', 'BCA', NULL, 'Private Job', '1-3 Lacs', 'Farmer', 'House Wife', '1-3', '24/04/2020', '12:19:pm', 163, 'No'),
(259, 'MANOJ KUMAR SAHU', 'Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'SAHU', 'TELI', NULL, NULL, 'DHAMATARI (CG)', 'BSC', NULL, '', '1-3 Lacs', 'Farmer', 'House Wife', '2 BROTHER', '24/04/2020', '12:19:pm', 164, 'No'),
(261, 'HARI RAM GUPTA', 'Wheatish', '', '5 Feet 4 inch', 'Never Married', 'Healthy', 'GUPTA', 'TELI', NULL, NULL, 'KANPUR', 'Other', NULL, 'Business', '1-3 Lacs', 'Farmer', 'House Wife', '1 BROTHER 1 SISTER', '24/04/2020', '01:22:pm', 165, 'No'),
(262, 'Sh.Balwant Goyal', 'Fair', '60-70 Kg', '5 Feet 5 inch', 'Never Married', 'Healthy', 'Goyal', '', NULL, NULL, 'HISAR', 'HighSchool', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1 Brother', '24/04/2020', '01:23:pm', 166, 'No'),
(263, 'GANGA RAM SAHU', 'Fair', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'slim', 'SAHU', 'TELI', NULL, NULL, 'BILASHPUR (CG)', 'HighSchool', NULL, 'Private Job', '1-3 Lacs', 'Farmer', 'House Wife', '-----', '24/04/2020', '01:29:pm', 167, 'No'),
(264, 'GANGOO RAM SAHU', 'Wheatish', '', '5 Feet 4 inch', 'Divorced', 'Healthy', 'SAHU', 'TELI', NULL, NULL, 'BILASHPUR (CG)', 'Other', NULL, 'Gov.Job ', '3-5 Lacs', 'All Gov.Job ', 'House Wife', '---', '24/04/2020', '01:36:pm', 168, 'No'),
(266, 'LEELOO SAHU', 'Fair', '', '5 Feet 5 inch', '', 'Fit', 'SAHU', 'TELI', NULL, NULL, 'BADAULABAZAR (CG)', 'Other', NULL, '', '1-3 Lacs', 'Farmer', 'House Wife', '3 BROTHER 1 SISTER', '24/04/2020', '01:43:pm', 169, 'No'),
(267, '', 'Fair', '', '', 'Never Married', 'Fit', 'sahu', 'teli', NULL, NULL, '', 'Other', NULL, '', '', 'Farmer', 'House Wife', '', '24/04/2020', '02:54:pm', 176, 'No'),
(269, 'UTTARESWER ', 'Fair', '', '5 Feet 3 inch', 'Never Married', 'Fit', '', 'TELI', NULL, NULL, 'OSMANABAD (MH)', 'MS', NULL, 'Private Job', '', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '24/04/2020', '03:08:pm', 177, 'No'),
(270, 'SHRI. ML SAHU', 'Very Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Healthy', 'SAHU', 'TELI', NULL, NULL, 'GWALIOR (MP)', 'B.Com', NULL, '', '', 'All Gov.Job ', 'House Wife', '---', '24/04/2020', '03:17:pm', 178, 'No'),
(273, 'CHHOTELAL SAHU', 'Fair', '', '6 Feet 1 inch', 'Never Married', 'Healthy', 'SAHU', 'TELI', NULL, NULL, 'AHEMDABAD', 'B.Com', NULL, 'Business', '', 'Business Person', 'House Wife', '3 BROTHER &1 SISTER', '24/04/2020', '03:33:pm', 179, 'No'),
(274, 'GOVARDHAN P SAHU', 'Wheatish', '', '5 Feet 4 inch', 'Never Married', 'Healthy', 'SAHU', 'TELI', NULL, NULL, 'JANJGIR (CG)', 'B.Ed', NULL, 'Business', '', 'All Gov.Job ', 'House Wife', '2 BROTHER', '24/04/2020', '03:45:pm', 180, 'No'),
(275, 'RAM KUMAR SAHU', 'Fair', '', '5 Feet 3 inch', 'Divorced', 'Healthy', 'SAHU', 'TELI', NULL, NULL, 'BALOD (CG)', '', NULL, '', '', 'Farmer', 'House Wife', '1 SONE (1 YEAR)', '24/04/2020', '03:55:pm', 181, 'No'),
(198, 'Late Ramesh chandra tripathi', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Bhahman', '', NULL, NULL, 'Gorakhpur', 'B.Ed', NULL, 'Private Job', '3-5 Lacs', 'Farmer', 'House Wife', '', '24/04/2020', '06:24:pm', 182, 'No'),
(198, 'Late Ramesh chandra tripathi', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Bhahman', '', NULL, NULL, 'Gorakhpur', 'B.Ed', NULL, 'Private Job', '3-5 Lacs', 'Farmer', 'House Wife', '', '24/04/2020', '06:24:pm', 186, 'No'),
(277, 'Ashok Kr Kakar', 'Fair', '70-80 Kg', '5 Feet 3 inch', 'Never Married', 'Athletic', 'Khatri', 'Kakar', NULL, NULL, 'Kolkata ', 'Other', NULL, 'Private Job', '1-3 Lacs', 'All Gov.Job ', 'Private Job', '1', '24/04/2020', '07:19:pm', 187, 'No'),
(279, 'Subhash ', 'Fair', '70-80 Kg', '5 Feet 8 inch', 'Never Married', 'slim', 'Jaat', 'Goyat', NULL, NULL, 'Meerut', 'BSC', NULL, 'Gov.Job ', '', 'Farmer', 'House Wife', '0', '24/04/2020', '08:51:pm', 188, 'No'),
(279, '', '', '', '', '', '', '', '', NULL, NULL, '', 'BSC', NULL, 'Gov.Job ', '7-10 Lacs', 'Farmer', 'House Wife', '', '24/04/2020', '08:55:pm', 189, 'No'),
(286, 'mr. pritam sahu', 'Fair', '70-80 Kg', '6 Feet 1 inch', 'Never Married', 'slim', 'sahu', 'teli', NULL, NULL, 'sagar (mp)', 'B.A', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '1 brother & 2 sister', '24/04/2020', '09:06:pm', 190, 'Yes'),
(198, '', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '', '24/04/2020', '10:21:pm', 197, 'No'),
(289, 'B.l. sahu', 'Fair', '', '5 Feet 4 inch', 'Never Married', 'slim', 'Sahu', 'Teli', NULL, NULL, 'Charama (cg)', 'B.A', NULL, 'Business', '', 'Farmer', 'House Wife', '', '25/04/2020', '05:49:am', 198, 'No'),
(289, 'B.l. sahu', 'Fair', '', '5 Feet 4 inch', 'Never Married', 'slim', 'Sahu', 'Teli', NULL, NULL, 'Charama (cg)', 'B.A', NULL, 'Business', '', 'Farmer', 'House Wife', '', '25/04/2020', '05:50:am', 199, 'No'),
(238, 'Shyam lal', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'Sahu', 'Tali', NULL, NULL, 'Narsinghpur', 'HighSchool', NULL, 'Unemployed', '1-3 Lacs', 'Farmer', 'House Wife', 'Bhai 1 sistar 4marrij', '25/04/2020', '12:12:pm', 200, 'No'),
(103, NULL, 'Fair', '60-70 Kg', '5 Feet 11 inch', 'Never Married', 'Fit', 'Brahmin bhumihar', 'Bhumihar', NULL, NULL, '', 'B.Tech', NULL, 'Civil Services', '', 'Business Person', 'House Wife', 'Not brother not sister', '19/04/2020', '02:50:am', 202, NULL),
(290, 'Late Deepak Kumar Srivastava ', 'Fair', '80-90 Kg', '5 Feet 11 inch', 'Never Married', 'Fit', 'Shrivastava', 'Kayastha', NULL, NULL, 'Purnea', 'B.Com', NULL, 'Private Job', '3-5 Lacs', 'Private Job', 'House Wife', '1', '25/04/2020', '01:44:pm', 203, 'No'),
(213, NULL, 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Healthy', 'Balija', '', NULL, NULL, 'Telangana', '', NULL, '', '', 'Farmer', 'House Wife', '3', '19/04/2020', '06:26:am', 204, NULL),
(218, NULL, 'Fair', '60-70 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'Kamma', 'Kamma', NULL, NULL, 'Hyderabad', 'B.Tech', NULL, 'Business', '10-15 Lacs', 'Business Person', 'House Wife', '2', '19/04/2020', '07:35:am', 205, NULL),
(225, NULL, 'Fair', '70-80 Kg', '5 Feet 9 inch', 'Never Married', 'slim', 'Jain', 'Mehta', NULL, NULL, 'With parents', 'B.Com', NULL, 'Business', '10-15 Lacs', 'Business Person', 'House Wife', '1', '19/04/2020', '10:34:am', 206, NULL),
(86, 'Vijay narayan sonvade', 'Very Fair', '', '5 Feet 3 inch', 'Never Married', 'Healthy', 'Sonvade', 'teli', NULL, NULL, 'Pune', 'MCA', NULL, 'Private Job', '5-7 Lacs', 'Business Person', 'House Wife', '', '25/04/2020', '04:01:pm', 209, 'No'),
(85, 'gajanand sahu', 'Fair', '60-70 Kg', '5 Feet 3 inch', 'Never Married', 'slim', 'sahu', 'teli', NULL, NULL, 'dhamtri (cg)', 'BSC', NULL, 'Gov.Job ', '3-5 Lacs', 'Farmer', 'House Wife', '', '25/04/2020', '04:08:pm', 210, 'No'),
(293, 'RAMCHANDRA SAHU', 'Fair', '', '5 Feet 7 inch', 'Divorced', 'Fit', 'SAHU', 'TELI', NULL, NULL, 'SAGAR', 'Other', NULL, 'Business', '', 'All Gov.Job ', 'House Wife', '', '25/04/2020', '05:38:pm', 212, 'No'),
(294, 'ANIL WALUNJKAR', 'Very Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'WALUNJKAR', 'TELI', NULL, NULL, 'PUNE', 'Pharmacy', NULL, '', '', 'Farmer', 'House Wife', '', '25/04/2020', '05:50:pm', 213, 'No'),
(295, 'BALIRAM SAHU', 'Very Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'SAHU', 'TELI', NULL, NULL, 'MAHASAMUND (CG)', 'Other', NULL, '', '', 'All Gov.Job ', 'House Wife', '', '25/04/2020', '06:06:pm', 214, 'No'),
(296, 'KAUSHAL KISHOR', 'Very Fair', '', '5 Feet 7 inch', 'Never Married', 'Healthy', 'BARANWAL', 'BARANWAL', NULL, NULL, 'LAKHIMPUR KHERI', 'B.A', NULL, 'Business', '3-5 Lacs', 'All Gov.Job ', 'House Wife', '1 BROTHER & 1 SISTER', '25/04/2020', '06:25:pm', 215, 'No'),
(98, NULL, 'Wheatish', '60-70 Kg', '5 Feet 9 inch', 'Never Married', 'slim', 'Teli', 'Saahu', NULL, NULL, 'Mumbai', 'B.A', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '3 brother 1sisters', '19/04/2020', '03:28:am', 217, NULL),
(297, 'MOHD SAYEED', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'slim', 'MUSLIM', '', NULL, NULL, 'AYODHYA', 'B.Ed', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '', '25/04/2020', '08:29:pm', 218, 'No'),
(298, 'MALCHANDRA GUPTA', 'Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'ALIGARH', 'BSC', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER 2 SISTER', '25/04/2020', '08:44:pm', 219, 'No'),
(299, 'HARI OM GUPTA', 'Fair', '', '5 Feet 6 inch', 'Never Married', 'Healthy', 'GUPTA', 'TELI', NULL, NULL, 'ETAH/NEW DELHI', 'MCA', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 SISTER', '25/04/2020', '08:54:pm', 220, 'Yes'),
(297, 'Mohd Sayeed', 'Fair', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'slim', 'Teli', '', NULL, NULL, 'Ayodhya', 'B.Ed', NULL, 'Business', '1-3 Lacs', 'All Gov.Job ', 'Business Women', '2 and 4', '25/04/2020', '08:56:pm', 221, 'No'),
(284, 'Preetam sahu', 'Very Fair', '50-60 Kg', '6 Feet ', 'Never Married', 'Healthy', 'Sahu', 'Teli', NULL, NULL, 'Sagar', 'B.A', NULL, 'Unemployed', '1-3 Lacs', 'Farmer', 'House Wife', '1/2', '25/04/2020', '09:29:pm', 222, 'No'),
(301, 'vinod gupta', 'Very Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'gupta', '', NULL, NULL, 'varanasi', 'B.Tech', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '0 brother, 0 sister', '25/04/2020', '09:44:pm', 223, 'No'),
(164, 'Sanjay verma', 'Very Fair', '50-60 Kg', '5 Feet 3 inch', '', 'Fit', 'Verma', '', NULL, NULL, 'New delhi', 'B.Tech', NULL, 'Private Job', '3-5 Lacs', 'Private Job', 'House Wife', '0,0', '25/04/2020', '10:10:pm', 225, 'No'),
(303, 'Jagubhai', '', '50-60 Kg', '6 Feet ', '', 'Fit', 'Khuman', 'Rajput', NULL, NULL, 'Junagdah ', 'B.A', NULL, 'Private Job', '', 'Farmer', 'House Wife', 'Brothers', '26/04/2020', '08:20:am', 227, 'No'),
(304, '', 'Fair', '90-100 Kg', '5 Feet 7 inch', 'Never Married', 'Healthy', '', '', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '', '26/04/2020', '09:01:am', 228, 'No'),
(305, 'RAM VILAS GUPTA', 'Wheatish', '60-70 Kg', '5 Feet 5 inch', 'Never Married', 'Healthy', 'GUPTA', 'Sahu/Teli', NULL, NULL, 'MAU', 'MSC', NULL, 'Gov.Job ', '5-7 Lacs', 'Business Person', 'House Wife', '1', '26/04/2020', '09:26:am', 229, 'No'),
(306, 'ANIL KUMAR GUPTA', 'Wheatish', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'SIKANDARPUR', 'Other', NULL, '', '', 'Business Person', 'House Wife', '2 BROTHER', '26/04/2020', '12:00:pm', 231, 'No'),
(308, 'PRABHAKAR BHOJ', 'Fair', '60-70 Kg', '5 Feet 4 inch', 'Never Married', 'slim', 'BHOJ', 'TELI', NULL, NULL, 'LATUR', 'Other', NULL, 'Private Job', '', 'Farmer', 'House Wife', '2 BROTHER 1 SISTER', '26/04/2020', '02:32:pm', 232, 'No'),
(309, 'RAJENDR PRASHAD', 'Fair', '', '5 Feet 8 inch', 'Never Married', '', 'SC', 'CHAMAAR', NULL, NULL, 'MAU', 'B.Ed', NULL, 'Gov.Job ', '', 'All Gov.Job ', 'House Wife', '2 BROTHER & 1 SISTER', '26/04/2020', '03:02:pm', 233, 'No'),
(310, 'Vijay saw', 'Wheatish', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'slim', 'Hindu', 'Teli', NULL, NULL, 'Chaibasa', 'Intermediate', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '3', '26/04/2020', '03:22:pm', 234, 'Yes'),
(311, 'Radheshyam sahu', 'Wheatish', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Teli', 'Sahu', NULL, NULL, 'Mulitai', '', NULL, '', '', 'Farmer', 'House Wife', 'brother :- 2', '26/04/2020', '03:38:pm', 235, 'No'),
(312, 'rajeev kumar gupta', 'Fair', '', '5 Feet 5 inch', 'Never Married', 'Fit', 'gupta', 'teli', NULL, NULL, 'agara', 'Other', NULL, '', '', 'Business Person', 'House Wife', '1 brother', '26/04/2020', '04:13:pm', 236, 'No'),
(312, 'rajeev kumar gupta', 'Fair', '', '5 Feet 5 inch', 'Never Married', 'Fit', 'gupta', 'teli', NULL, NULL, 'agara', 'Other', NULL, '', '', 'Business Person', 'House Wife', '1 brother', '26/04/2020', '04:17:pm', 237, 'No'),
(313, 'mr. devendr kumar gupta', 'Wheatish', '', '5 Feet 5 inch', 'Never Married', 'Fit', 'gupta', 'teli', NULL, NULL, 'delhi', 'B.Com', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1 brother', '26/04/2020', '04:45:pm', 238, 'No'),
(313, 'mr. devendr kumar gupta', 'Wheatish', '', '5 Feet 5 inch', 'Never Married', 'Fit', 'gupta', 'teli', NULL, NULL, 'delhi', 'B.Com', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1 brother', '26/04/2020', '04:58:pm', 239, 'No'),
(315, 'MR. MANOJ KUMAR GUPTA', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'SIKANDRA RAO', 'BSC', NULL, '', '', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '26/04/2020', '05:35:pm', 241, 'No'),
(316, 'Sh. ANIL KUMAR', 'Very Fair', '', '5 Feet 3 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'KASGANJ (UP)', 'Other', NULL, '', '', 'Farmer', 'House Wife', '1 BROTHER & 1 SISTER', '26/04/2020', '05:52:pm', 242, 'No'),
(317, 'GYANDAS SAHU', 'Fair', '50-60 Kg', '5 Feet 11 inch', 'Never Married', 'Healthy', 'SAHU', 'TELI', NULL, NULL, 'BASTI', 'HighSchool', NULL, 'Business', '', 'Farmer', 'House Wife', '6 BROTHER & 2 SISTER', '26/04/2020', '06:43:pm', 243, 'No'),
(318, 'let kalyan Singh sahu', 'Fair', '', '5 Feet 5 inch', 'Never Married', 'Fit', 'Sahu', 'teli', NULL, NULL, 'bemetara (cg)', 'B.A', NULL, '', '', 'Farmer', 'House Wife', '', '26/04/2020', '07:51:pm', 244, 'No'),
(319, 'Mr. T. R. Sahu', 'Very Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'Sahu', 'teli', NULL, NULL, 'Dhamtari (cg)', 'Other', NULL, '', '', 'Business Person', 'House Wife', '1brother & 1sister', '26/04/2020', '08:04:pm', 245, 'No'),
(320, 'Shri Padam chand gupta', 'Fair', '', '5 Feet 5 inch', 'Never Married', 'Fit', 'Gupta', 'teli', NULL, NULL, 'gwalior', 'Other', NULL, 'Private Job', '', 'Business Person', 'House Wife', '2 brother', '26/04/2020', '08:34:pm', 246, 'No'),
(322, 'omprakash sahu', 'Fair', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'Sahu', 'teli', NULL, NULL, 'dhamtari (cg)', 'B.A', NULL, '', '', 'Business Person', 'House Wife', '1 brother & 1sister', '26/04/2020', '09:15:pm', 248, 'No'),
(323, 'MAHENDRA GUPTA ', 'Fair', '50-60 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Mirzapur ', 'BSC', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '3', '27/04/2020', '01:27:am', 257, 'No'),
(305, 'RAM VILAS GUPTA', 'Wheatish', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'Healthy', 'GUPTA', 'SAHU/TELI', NULL, NULL, 'MAU', 'MSC', NULL, 'Gov.Job ', '5-7 Lacs', 'Business Person', 'Business Women', '1', '27/04/2020', '02:24:am', 258, 'No'),
(324, '', '', '50-60 Kg', '5 Feet 2 inch', 'Never Married', '', 'Teli ', 'Sahu', NULL, NULL, '', '', NULL, 'Civil Services', '', 'Farmer', 'House Wife', '', '27/04/2020', '08:53:am', 262, 'No'),
(325, 'kashinath sahu', 'Fair', '', '5 Feet 2 inch', 'Divorced', 'Healthy', 'sahu', 'teli', NULL, NULL, 'raipur', 'Other', NULL, '', '', 'Farmer', 'House Wife', '', '27/04/2020', '09:05:am', 265, 'No'),
(327, 'shankar shelar', 'Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'shelar', 'teli', NULL, NULL, 'pune', 'Other', NULL, 'Private Job', '', 'Business Person', 'House Wife', '', '27/04/2020', '09:15:am', 266, 'No'),
(328, 'Jagadeesh Prashad gupta', 'Very Fair', '', '5 Feet 5 inch', 'Never Married', 'Healthy', 'Gupta', 'Teli', NULL, NULL, 'Hamirpur (up)', 'Other', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '1 brother & 2 sister', '27/04/2020', '10:52:am', 267, 'No'),
(329, 'byaiyalal sahu', 'Fair', '50-60 Kg', '5 Feet ', 'Never Married', 'Fit', 'Sahu', 'teli', NULL, NULL, 'banda', 'B.A', NULL, 'Unemployed', '', 'Farmer', 'House Wife', '1 brother & 3 sister', '27/04/2020', '04:14:pm', 272, 'No'),
(332, 'bhojram sahu', 'Fair', '', '5 Feet ', 'Never Married', 'Fit', 'Sahu', 'teli', NULL, NULL, 'dhamtari (cg)', 'B.A', NULL, '', '', 'Farmer', 'House Wife', '', '27/04/2020', '04:45:pm', 273, 'No'),
(333, 'k.l. Sahu', 'Fair', '', '5 Feet 7 inch', 'Never Married', 'Fit', 'Sahu', 'teli', NULL, NULL, 'bi\'ashpur (cg)', 'BSC', NULL, '', '', 'Business Person', 'House Wife', '1brother & 2sister', '27/04/2020', '04:54:pm', 274, 'No'),
(317, 'Gyandas sahu', 'Very Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Teli', 'Teli', NULL, NULL, 'Up', '', NULL, '', '', 'Farmer', 'House Wife', 'Brother 6 sister 2', '27/04/2020', '08:32:pm', 275, 'No'),
(317, 'Gyandas sahu', 'Very Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Teli', 'Teli', NULL, NULL, 'Uttar Pradesh', '', NULL, '', '', 'Farmer', 'House Wife', 'Brother 6', '27/04/2020', '08:33:pm', 276, 'No'),
(317, 'Gyandas sahu', 'Very Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Teli', 'Teli', NULL, NULL, 'Up', '', NULL, '', '', 'Farmer', 'House Wife', 'Brother 6 sister 2', '27/04/2020', '08:34:pm', 277, 'No'),
(334, 'shree kuwanr Singh sahu', 'Fair', '50-60 Kg', '5 Feet ', 'Never Married', 'Fit', 'Sahu', 'teli', NULL, NULL, 'drug (cg)', 'Intermediate', NULL, 'Business', '', 'Farmer', 'House Wife', '1 brother & 1sister', '27/04/2020', '09:18:pm', 278, 'No'),
(210, 'Umashankar Sahu', 'Fair', '60-70 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Sagar', 'MCA', NULL, 'Gov.Job ', '3-5 Lacs', 'Private Job', 'Private Job', '1', '27/04/2020', '10:39:pm', 279, 'No'),
(337, '', 'Wheatish', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'Healthy', 'Teli', '', NULL, NULL, '', 'B.Tech', NULL, 'Gov.Job ', '3-5 Lacs', 'All Gov.Job ', 'House Wife', '', '28/04/2020', '01:46:am', 280, 'No'),
(340, 'balawant sahu', 'Fair', '', '5 Feet ', 'Divorced', 'Fit', 'Sahu', 'teli', NULL, NULL, 'dantewada (cg)', 'B.A', NULL, 'Business', '', 'Farmer', 'House Wife', '', '28/04/2020', '01:30:pm', 281, 'No'),
(341, 'Ramesh sahu', 'Wheatish', '', '5 Feet 9 inch', 'Widowed', 'Fit', 'Sahu', 'teli', NULL, NULL, 'kankerg (cg)', 'BCA', NULL, '', '', 'Farmer', 'House Wife', '1 brother. & 1 sister', '28/04/2020', '01:54:pm', 282, 'No'),
(343, 'Lt. Ameerchandr rathore', 'Wheatish', '50-60 Kg', '5 Feet 7 inch', 'Divorced', 'Fit', 'Rathore', 'teli', NULL, NULL, 'shivpuri', 'B.Com', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '2 brother\'s 4 sisters', '28/04/2020', '02:43:pm', 283, 'Yes'),
(344, 'Kamal Narayan sahu', 'Wheatish', '60-70 Kg', '5 Feet 6 inch', 'Widowed', 'slim', 'Sahu', 'Teli', NULL, NULL, 'Raipur', '', NULL, '', '', 'Farmer', 'House Wife', '3 brother with self 1 sister', '28/04/2020', '02:50:pm', 284, 'No'),
(344, 'Kamal Narayan sahu', 'Wheatish', '60-70 Kg', '5 Feet 6 inch', 'Widowed', 'slim', 'Sahu', 'Teli', NULL, NULL, 'Raipur', 'B.Com', NULL, 'Private Job', '1-3 Lacs', 'Farmer', 'House Wife', '3 brother with self 1 sister', '28/04/2020', '02:53:pm', 285, 'No'),
(345, 'Mr. G r sahu', 'Fair', '60-70 Kg', '5 Feet 4 inch', 'Never Married', 'Athletic', 'Sahu', 'Teli', NULL, NULL, 'Dhamtari', '', NULL, '', '', 'Farmer', 'House Wife', '1 brother 1 sister both r married', '28/04/2020', '04:00:pm', 286, 'No'),
(348, '', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', '', '', NULL, NULL, '', '', NULL, 'Private Job', '', 'Farmer', 'House Wife', '', '28/04/2020', '09:19:pm', 287, 'No'),
(348, 'Sonsingh sahu', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Healthy', 'Teli', 'Sahu', NULL, NULL, 'Maneri', 'B.A', NULL, 'Private Job', '', 'Farmer', 'House Wife', '1 sister and 1 brother', '28/04/2020', '09:24:pm', 289, 'No'),
(349, 'bharat bhushan sahu', 'Wheatish', '60-70 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'sahu', 'teli', NULL, NULL, 'mahasamund (cg)', 'B.Com', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '1 sister', '29/04/2020', '01:59:pm', 290, 'No'),
(351, 'Pranav kumar sahu', 'Fair', '', '5 Feet 7 inch', '', '', 'Kashyap', 'Sahu teli', NULL, NULL, 'Jawa rewa ', '', NULL, 'Business', '7-10 Lacs', 'Business Person', 'House Wife', '', '29/04/2020', '02:45:pm', 291, 'No'),
(353, 'Mastulal', 'Fair', '60-70 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Teli ,sahu', 'Sahu', NULL, NULL, 'Saragbundiya, korba', 'Other', NULL, 'Private Job', '', 'Farmer', 'House Wife', '1brother married, 2 sister married', '29/04/2020', '05:26:pm', 292, 'No'),
(267, 'Let Satyanaryn Sahu', 'Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', '', '', NULL, NULL, 'Sagar', 'B.Tech', NULL, 'Private Job', '', 'Farmer', 'House Wife', 'One brother one sister', '29/04/2020', '06:00:pm', 293, 'No'),
(354, 'Jalal sahu', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Teli', 'Sahu', NULL, NULL, 'Rewa', 'HighSchool', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '', '29/04/2020', '09:12:pm', 297, 'No'),
(355, 'Late. Mr. Siyaram sahu', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Bilaspur', 'B.Tech', NULL, 'Unemployed', '1-3 Lacs', 'Business Person', 'House Wife', 'No', '29/04/2020', '09:15:pm', 298, 'No'),
(355, '', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '', '29/04/2020', '09:20:pm', 299, 'No'),
(356, 'Brahamdeo sah', 'Fair', '50-60 Kg', '5 Feet 6 inch', 'Never Married', 'slim', 'Swarnkar', 'Sonar', NULL, NULL, 'Delhi', 'B.A', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '7', '29/04/2020', '09:39:pm', 300, 'No'),
(357, 'Chuman das sahu', 'Wheatish', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'slim', 'Sahu', 'Teli', NULL, NULL, 'Bhilai', 'B.Com', NULL, 'Private Job', '3-5 Lacs', 'All Gov.Job ', 'House Wife', '2', '29/04/2020', '10:02:pm', 301, 'No'),
(360, 'Jagat Ram Sahu', 'Fair', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'BAHRAICH ', 'B.A', NULL, 'Business', '5-7 Lacs', 'Farmer', 'House Wife', '1 Brotr', '30/04/2020', '05:34:am', 302, 'No'),
(361, 'ASHOK KNATH KHOND', 'Fair', '', '5 Feet 8 inch', 'Never Married', 'Fit', 'KHOND', 'TELI', NULL, NULL, 'PUNE', 'B.Ed', NULL, 'Private Job', '7-10 Lacs', 'Farmer', 'House Wife', '', '30/04/2020', '08:03:am', 303, 'No'),
(366, 'late badri shankar Gupta ', 'Wheatish', '50-60 Kg', '5 Feet 6 inch', 'Never Married', '', 'sahu ', 'teli', NULL, NULL, 'varanasi ', 'B.Com', NULL, 'Business', '5-7 Lacs', 'Farmer', 'House Wife', '2 sisters', '30/04/2020', '01:51:pm', 305, 'No'),
(366, 'late badri shankar Gupta ', 'Wheatish', '50-60 Kg', '5 Feet 5 inch', 'Never Married', '', 'sahu', 'teli', NULL, NULL, 'varanasi ', 'B.Com', NULL, 'Business', '5-7 Lacs', 'Business Person', 'House Wife', '2 sisters', '30/04/2020', '01:54:pm', 306, 'No'),
(368, 'ramesh raghunath kale', 'Wheatish', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'kale', 'teli', NULL, NULL, 'ahmadnagar ', 'B.Ed', NULL, 'Private Job', '', 'Business Person', 'House Wife', '', '30/04/2020', '02:19:pm', 307, 'No'),
(369, 'shriranh kedari', 'Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'kedari', 'teli', NULL, NULL, 'pune', 'B.Com', NULL, 'Gov.Job ', '1-3 Lacs', 'Business Person', 'House Wife', '', '30/04/2020', '02:48:pm', 308, 'No'),
(369, 'shriranh kedari', 'Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'kedari', 'teli', NULL, NULL, 'pune', 'B.Com', NULL, 'Gov.Job ', '1-3 Lacs', 'Business Person', 'House Wife', '', '30/04/2020', '02:49:pm', 309, 'No'),
(370, 'ganeshrav rajaram', 'Fair', '', '5 Feet 3 inch', 'Never Married', 'slim', 'kshirsagar', 'teli', NULL, NULL, 'ahmadnagar', 'B.Ed', NULL, 'Unemployed', '', 'All Gov.Job ', 'House Wife', '', '30/04/2020', '02:58:pm', 310, 'No'),
(371, 'shatish dalavi', 'Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'dalavi', 'teli', NULL, NULL, 'pune', 'Pharmacy', NULL, 'Private Job', '', 'Business Person', 'House Wife', '', '30/04/2020', '03:08:pm', 311, 'No'),
(180, 'Mr Ram prasad sahu', 'Fair', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'Teli', 'Sahu', NULL, NULL, 'Panna', 'Pharmacy', NULL, 'Private Job', '3-5 Lacs', 'Farmer', 'House Wife', '1,bro 1 sis', '30/04/2020', '03:12:pm', 312, 'No'),
(373, 'sahebrav', 'Fair', '', '5 Feet 3 inch', 'Never Married', 'Fit', 'shinde', 'teli', NULL, NULL, 'pune', 'B.Ed', NULL, '', '', 'Farmer', 'House Wife', '', '30/04/2020', '03:15:pm', 313, 'No'),
(374, 'shantilal shejal', 'Very Fair', '', '5 Feet 3 inch', 'Never Married', 'Fit', 'shejal', 'teli', NULL, NULL, 'pune', 'BSC', NULL, '', '', 'Farmer', 'House Wife', '1 brother', '30/04/2020', '03:22:pm', 314, 'No'),
(378, 'Pramod', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Teli', 'Sahu', NULL, NULL, 'Bilaspur', 'B.A', NULL, 'Private Job', '1-3 Lacs', 'All Gov.Job ', 'House Wife', 'No', '30/04/2020', '05:20:pm', 316, 'No'),
(378, '', '', '', '', '', '', '', 'Sonkalihari', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '', '30/04/2020', '05:25:pm', 317, 'No'),
(379, 'LATE SIV NATH SAHU', 'Fair', '60-70 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'SAHU', 'TELI', NULL, NULL, 'SAMASTIPUR (BIHAR)', 'BSC', NULL, '', '', 'Farmer', 'House Wife', '1 BROTHER & 3 SISTER', '30/04/2020', '06:34:pm', 318, 'No'),
(380, '', 'Fair', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'SAHU', 'TELI', NULL, NULL, 'RAIPUR (CG)', 'B.Com', NULL, 'Business', '', 'Farmer', 'House Wife', '', '30/04/2020', '06:44:pm', 319, 'No'),
(381, 'MAHESH SAHU', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'SAHU', 'TELI', NULL, NULL, 'DHAMATARI (CG)', 'B.A', NULL, 'Business', '1-3 Lacs', 'Farmer', 'House Wife', '1 BROTHER & 1SISTER', '30/04/2020', '06:59:pm', 320, 'No'),
(382, 'DHARMENDRA GUPTA', 'Wheatish', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'NEW DELHI', 'B.Com', NULL, 'Private Job', '', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '30/04/2020', '07:10:pm', 321, 'No'),
(384, 'Jag prasad sahu', 'Fair', '', '5 Feet 8 inch', 'Never Married', 'Healthy', 'Sahu', 'Teli', NULL, NULL, 'New delhi', 'Intermediate', NULL, '', '3-5 Lacs', 'Business Person', 'House Wife', '5 brothers including me I\'m 4rth no. ', '01/05/2020', '02:42:am', 322, 'No'),
(386, 'Late. K.C. Gupta', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'l', '', NULL, '', '', 'Farmer', 'House Wife', '', '01/05/2020', '08:54:am', 323, 'No'),
(385, '', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', '', '', NULL, NULL, 'Nashik', 'Intermediate', NULL, 'Business', '3-5 Lacs', 'Private Job', 'House Wife', '3', '01/05/2020', '08:54:am', 324, 'Yes'),
(385, 'Premprakash jaiswal', '', '', '', 'Never Married', '', 'Kalwar', '', NULL, NULL, 'Nashik', 'Intermediate', NULL, 'Business', '3-5 Lacs', 'Private Job', 'House Wife', '3', '01/05/2020', '08:59:am', 327, 'Yes'),
(386, 'Late. K.C. Gupta', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Gupta', 'Kalawar', NULL, NULL, 'Lucknow ', 'B.Com', NULL, 'Gov.Job ', '5-7 Lacs', 'Farmer', 'House Wife', '1 brother & 1 sister ', '01/05/2020', '08:59:am', 328, 'No'),
(385, 'Premprakash Jaiswal', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Kalwar', '', NULL, NULL, 'Nashik', 'Intermediate', NULL, 'Business', '3-5 Lacs', 'Private Job', 'House Wife', '3', '01/05/2020', '09:03:am', 329, 'Yes'),
(387, 'RAMESH CHANDRA GUPTA', 'Very Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Gupta', '', NULL, NULL, 'Fatehpur (up)', 'B.A', NULL, 'Private Job', '', 'Business Person', 'House Wife', '', '01/05/2020', '09:14:am', 330, 'No'),
(388, 'adarsh gupta', 'Wheatish', '60-70 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Gorakhpur', 'Other', NULL, 'Business', '', 'All Gov.Job ', 'House Wife', '1 brother', '01/05/2020', '09:27:am', 331, 'No'),
(389, 'ugrasen jaiswal', 'Wheatish', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'Fit', 'Jaiswal', 'Baniya', NULL, NULL, 'deoria', 'B.Com', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 brother', '01/05/2020', '09:42:am', 333, 'Yes'),
(390, 'Sunil Kumar Gupta', 'Wheatish', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Athletic', 'Baniye', 'Gupta', NULL, NULL, 'Haridwar', 'B.Ed', NULL, 'Private Job', '1-3 Lacs', 'All Gov.Job ', 'House Wife', '2 brother s', '01/05/2020', '09:50:am', 334, 'No'),
(392, 'subas gupta', 'Wheatish', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'Healthy', 'Gupta', 'Teli', NULL, NULL, 'Ku', '', NULL, '', '', 'Farmer', 'House Wife', '', '01/05/2020', '09:51:am', 335, 'No'),
(392, 'subas gupta', 'Wheatish', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'Healthy', 'Gupta', 'Teli', NULL, NULL, 'Ku', '', NULL, '', '', 'Farmer', 'House Wife', '', '01/05/2020', '09:51:am', 336, 'No'),
(394, 'umesh gupta', 'Fair', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'Gupta', 'Halwai', NULL, NULL, 'munger bihar', 'BSC', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '2 brother', '01/05/2020', '12:47:pm', 338, 'No'),
(395, 'm.l. gupta', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'Gupta', 'teli', NULL, NULL, 'Sultanpur', 'Intermediate', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 2 SISTER', '01/05/2020', '01:02:pm', 339, 'No'),
(396, 'moti lal gupta', 'Fair', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'Gupta', 'Vaishy', NULL, NULL, 'Lucknow', 'Other', NULL, '', '', 'Business Person', 'House Wife', '5 brother & 1 sister', '01/05/2020', '01:11:pm', 340, 'No'),
(397, 'K.C. SAHU', 'Fair', '', '5 Feet 8 inch', 'Never Married', 'Fit', 'Sahu', 'teli', NULL, NULL, 'KANPUR', 'B.Ed', NULL, 'Gov.Job ', '5-7 Lacs', 'Business Person', 'House Wife', '4 BROTHER & 4 SISTER', '01/05/2020', '01:19:pm', 341, 'No'),
(398, 'LATE. ..........', 'Fair', '', '5 Feet 6 inch', 'Never Married', 'Fit', 'Gupta', 'teli', NULL, NULL, '', 'HighSchool', NULL, 'Business', '', 'Farmer', 'House Wife', '1 BROTHER', '01/05/2020', '01:27:pm', 342, 'No'),
(399, '', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Healthy', 'Gupta', 'teli', NULL, NULL, 'KANNAUJ', 'Pharmacy', NULL, 'Business', '5-7 Lacs', 'Farmer', 'House Wife', '', '01/05/2020', '01:35:pm', 343, 'No'),
(400, 'Rajendra ', 'Fair', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Baniya', 'Kanthariya', NULL, NULL, 'Tahrauli', 'B.A', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '3', '01/05/2020', '01:52:pm', 345, 'No'),
(401, 'Mahesh kumar sahu', 'Wheatish', '50-60 Kg', '5 Feet ', 'Never Married', 'slim', 'Sahu', 'Mathur vaishay', NULL, NULL, 'Joint ', 'B.A', NULL, 'Private Job', '1-3 Lacs', 'Farmer', 'House Wife', '3 brothers and 2 sisters', '01/05/2020', '04:11:pm', 346, 'No'),
(404, 'Mangala prashad jaiswal', 'Wheatish', '', '5 Feet 6 inch', 'Never Married', 'Fit', 'Jaiswal', 'Baniya', NULL, NULL, 'Mugalsarai', 'Law', NULL, 'Business', '', 'Business Person', 'House Wife', '3 brother & 1 sister', '01/05/2020', '06:13:pm', 348, 'No');
INSERT INTO `sdetails` (`did`, `fname`, `scolour`, `sweight`, `sheight`, `sstatus`, `sbody`, `scast`, `sbcast`, `srasi`, `stob`, `spob`, `sedu`, `sedudetail`, `soccupation`, `sincome`, `foccu`, `moccu`, `bs`, `sdate`, `stime`, `id`, `smangal`) VALUES
(405, 'Mukesh gulabchand gupta', 'Fair', '50-60 Kg', '4 Feet 10inch', 'Never Married', 'Fit', 'Gupta', 'Sahu', NULL, NULL, 'Mumbai ', 'B.Com', NULL, '', '', 'Business Person', 'House Wife', '', '01/05/2020', '06:26:pm', 349, 'No'),
(407, 'Shyam baboo gupta', 'Very Fair', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'Fit', 'Gupta', 'Baniya', NULL, NULL, 'Chitrakut', 'Other', NULL, 'Gov.Job ', '', 'Business Person', 'House Wife', '1 brother', '01/05/2020', '06:57:pm', 350, 'No'),
(408, 'Loknath Gupta', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'Gupta', 'Baniya', NULL, NULL, 'Shahdol (mp)', 'Other', NULL, '', '', 'Business Person', 'House Wife', '3 brother & 1 sister', '01/05/2020', '07:16:pm', 351, 'No'),
(409, 'Tribhuwan nath kesharwani', 'Fair', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'Kesharwani', 'Baniya', NULL, NULL, 'Allahabad', 'Other', NULL, '', '', 'Business Person', 'House Wife', '1.bfother & 2 sister ', '01/05/2020', '07:27:pm', 352, 'No'),
(392, 'subas gupta', 'Wheatish', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'Healthy', 'Gupta', 'Baniya', NULL, NULL, 'Kushinagar', 'Intermediate', NULL, '', '', 'Business Person', 'House Wife', '1 brother & 2 sister', '01/05/2020', '07:44:pm', 353, 'No'),
(411, 'Dharmendra gupta', 'Fair', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Healthy', 'Gupta', 'Baniya', NULL, NULL, 'Firozabad agra', 'Other', NULL, '', '', 'Business Person', 'House Wife', '', '01/05/2020', '08:06:pm', 354, 'No'),
(413, 'Gagdish prashad sahu', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'slim', 'Sahu', 'teli', NULL, NULL, 'Madhopur (rj)', 'Other', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '', '02/05/2020', '07:00:am', 355, 'No'),
(414, 'Rakesh', 'Wheatish', '60-70 Kg', '5 Feet 9 inch', 'Never Married', 'Athletic', 'Yadav', 'Gwal', NULL, NULL, 'Firozabad', 'MSC', NULL, 'Private Job', '20-40 Lacs', 'Farmer', 'House Wife', '1', '02/05/2020', '07:05:am', 356, 'No'),
(414, 'Rakesh', 'Wheatish', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'Athletic', 'Yadav', 'Ahir', NULL, NULL, 'Lucknow ', 'MSC', NULL, 'Private Job', '7-10 Lacs', 'Business Person', 'House Wife', '1 bro', '02/05/2020', '07:10:am', 357, 'No'),
(415, 'Late Govind madhesiya', 'Wheatish', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'Madhesiya', 'Baniya', NULL, NULL, 'gorakhpur', 'Other', NULL, 'Gov.Job ', '3-5 Lacs', 'Farmer', 'House Wife', '1 brother & 1 sister', '02/05/2020', '07:13:am', 358, 'No'),
(417, 'Radha sah', 'Fair', '60-70 Kg', '5 Feet 11 inch', 'Never Married', 'slim', 'Teli', 'Teli kanaujiya', NULL, NULL, 'Village- kaithi ', 'B.Tech', NULL, 'Private Job', '7-10 Lacs', 'Farmer', 'House Wife', '1&3', '02/05/2020', '07:48:am', 359, 'No'),
(425, 'late  kishan gupta', 'Fair', '60-70 Kg', '5 Feet 2 inch', 'Divorced', 'Healthy', 'Gupta', 'teli', NULL, NULL, 'Kannauj (UP)', 'B.A', NULL, 'Business', '', 'Farmer', 'House Wife', '1 BROTHER  1 SISTER', '02/05/2020', '09:59:am', 360, 'No'),
(426, 'Jeevan lal gupta', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'slim', 'Gupta', 'teli', NULL, NULL, 'Gonda', 'B.A', NULL, 'Gov.Job ', '1-3 Lacs', 'All Gov.Job ', 'House Wife', ' 3 BROTHER & 1 SISTER', '02/05/2020', '10:09:am', 361, 'No'),
(427, 'Daya ram gupta', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Healthy', 'Gupta', 'teli', NULL, NULL, 'Sultanpur', 'Pharmacy', NULL, '', '', 'All Gov.Job ', 'House Wife', '', '02/05/2020', '10:21:am', 362, 'No'),
(429, 'LATE SHRI OM PRAKASH ', 'Fair', '50-60 Kg', '4 Feet 2inch', 'Never Married', 'Fit', 'SC  ', 'JATAV', NULL, NULL, 'Agra ', 'B.A', NULL, 'Unemployed', '', 'Farmer', 'House Wife', '4 brothers and two sister\'s ', '02/05/2020', '11:04:am', 363, 'No'),
(431, 'Late. Dinesh k gupta', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'slim', 'Gupta', 'Mittal', NULL, NULL, 'New delhi', 'Other', NULL, 'Private Job', '', 'Farmer', 'House Wife', '2 BROTher', '02/05/2020', '11:11:am', 364, 'No'),
(433, 'Kailash sahu', 'Fair', '', '5 Feet 5 inch', 'Never Married', 'Healthy', 'Sahu', 'teli', NULL, NULL, 'balod', 'Intermediate', NULL, '', '', 'Business Person', 'House Wife', '2 BROTHER & 2 SISTER', '02/05/2020', '11:19:am', 365, 'No'),
(434, 'Jai prakash sahu', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'Shah', 'teli', NULL, NULL, 'Muzaffarpur (Bihar)', 'B.A', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER & 2 SISTER', '02/05/2020', '11:27:am', 366, 'No'),
(436, 'Shiv Kumar Gupta', 'Wheatish', '50-60 Kg', '5 Feet 10 inch', 'Never Married', 'slim', 'Doshar veshey', 'All', NULL, NULL, 'Kanpur', 'HighSchool', NULL, 'Private Job', '1-3 Lacs', 'Private Job', 'House Wife', '1brothers 1sisters', '02/05/2020', '12:34:pm', 367, 'No'),
(437, 'A.k.Agarwal', 'Wheatish', '70-80 Kg', '6 Feet ', 'Never Married', 'Athletic', 'Vaish', 'Agarwal', NULL, NULL, 'ALLAHABAD', 'Other', NULL, 'Private Job', '40-80 Lacs', 'All Gov.Job ', 'Business Women', '2', '02/05/2020', '01:32:pm', 368, 'No'),
(438, 'Sri santosh Kumar ', 'Very Fair', '80-90 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Kalwar', 'Jaiswal', NULL, NULL, 'Rasra', 'Pharmacy', NULL, 'Business', '', 'Business Person', 'House Wife', '1', '02/05/2020', '01:37:pm', 370, 'No'),
(438, 'Sri santosh Kumar ', 'Very Fair', '80-90 Kg', '', 'Never Married', 'Fit', 'Kalwar', 'Jaiswal ', NULL, NULL, 'Rasra, Ballia', '', NULL, '', '', 'Farmer', 'House Wife', '1', '02/05/2020', '01:38:pm', 372, 'No'),
(439, '', 'Fair', '60-70 Kg', '5 Feet 4 inch', 'Never Married', 'Healthy', 'YADAV', 'Ahir', NULL, NULL, '', 'BSC', NULL, 'Gov.Job ', '3-5 Lacs', 'Farmer', 'House Wife', '', '02/05/2020', '01:39:pm', 373, 'No'),
(438, 'Sri santosh Kumar gupta', 'Very Fair', '80-90 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Kalwar ', 'Jaiswal ', NULL, NULL, 'Rasra, Ballia(up) ', 'Pharmacy', NULL, 'Business', '', 'Business Person', 'House Wife', '1', '02/05/2020', '01:41:pm', 374, 'No'),
(438, 'Sri santosh Kumar gupta', 'Very Fair', '90-100 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Kalwar, Jaiswal ', 'Jaiswal', NULL, NULL, 'Rasra, Ballia', 'Pharmacy', NULL, 'Business', '', 'Business Person', 'House Wife', '1', '02/05/2020', '01:56:pm', 375, 'No'),
(441, 'Lallan Prasad', 'Wheatish', '70-80 Kg', '5 Feet 8 inch', 'Never Married', 'Healthy', 'Kushwaha', 'Maurya', NULL, NULL, 'Ballia', 'B.Ed', NULL, 'Gov.Job ', '5-7 Lacs', 'All Gov.Job ', 'House Wife', '', '02/05/2020', '02:09:pm', 378, 'No'),
(442, 'Laxminarayan Rathor', 'Wheatish', '', '5 Feet 8 inch', 'Never Married', 'Healthy', 'Rathor', 'Teli', NULL, NULL, 'Dhar (MP)', 'HighSchool', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '1 brother', '02/05/2020', '06:46:pm', 379, 'No'),
(182, 'Madhav LAL', 'Fair', '50-60 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'à¤¸à¤¾à¤¹à¥‚', 'à¤¤à¥‡à¤²à¥€', NULL, NULL, 'Rajnandgoan', 'Other', NULL, '', '1-3 Lacs', 'Farmer', 'House Wife', '2', '02/05/2020', '06:54:pm', 380, 'No'),
(443, 'Late. Bhagwat sahu', 'Fair', '50-60 Kg', '5 Feet ', 'Never Married', 'slim', 'Sahu', 'Teli', NULL, NULL, 'Bilaspur', 'B.A', NULL, '', '', 'Farmer', 'House Wife', '2 brother.& 1. Sister', '02/05/2020', '06:59:pm', 381, 'No'),
(444, 'Lalji sahu', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'kawardha (Cg)', 'Nursing', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '3.sister & 2.  Brother', '02/05/2020', '07:13:pm', 383, 'No'),
(445, 'janki prashad sahu', 'Fair', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Janjgir (Cg)', 'BSC', NULL, '', '', 'Business Person', 'House Wife', '', '02/05/2020', '07:30:pm', 384, 'No'),
(446, 'kishan gupta', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Divorced', 'Healthy', 'Gupta', 'Teli', NULL, NULL, 'Delhi', 'Intermediate', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '1 sone', '02/05/2020', '07:57:pm', 386, 'No'),
(447, 'Kripasankar sanhu', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Jaunpur', 'BSC', NULL, 'Asst. Manager', '', 'Business Person', 'House Wife', '1.brother &  1. Sister', '02/05/2020', '08:15:pm', 387, 'No'),
(449, 'Birendra prashad', 'Very Fair', '50-60 Kg', '5 Feet ', 'Never Married', '', 'Gupta', 'Teli', NULL, NULL, 'Jehanabad (Bihar)', 'B.A', NULL, '', '', 'Business Person', 'House Wife', '', '02/05/2020', '08:46:pm', 389, 'No'),
(450, 'v.m. Rathor', 'Fair', '50-60 Kg', '5 Feet ', 'Never Married', 'Fit', 'Rathor', 'Teli', NULL, NULL, 'kanpur', 'B.Ed', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '2.brother  &  3. Sister', '02/05/2020', '08:56:pm', 390, 'No'),
(451, 'Rajkumar gupta', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Gorakhpur', 'M.Tech', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '2.brother  &  1. Sister', '02/05/2020', '09:03:pm', 391, 'No'),
(452, 'Satyanarayan', 'Wheatish', '60-70 Kg', '5 Feet 7 inch', 'Divorced', 'Athletic', 'Aggarwal', 'Vaishnava', NULL, NULL, 'Mumbai', 'B.Tech/BE', NULL, 'Private Job', '20-40 Lacs', 'Business Person', 'House Wife', '1sister', '02/05/2020', '09:45:pm', 392, 'No'),
(453, 'Naresh sahu', 'Fair', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'Teli', 'Sahu', NULL, NULL, 'Shahdol', 'B.A', NULL, 'Business', '3-5 Lacs', 'Farmer', 'House Wife', '1 brather, 2sister', '02/05/2020', '11:13:pm', 393, 'No'),
(454, 'Shyam Ji Gupta', 'Wheatish', '50-60 Kg', '5 Feet 8 inch', 'Widowed', 'slim', 'Gupta', 'Gupta', NULL, NULL, 'Lucknow', 'B.Com', NULL, 'Business', '7-10 Lacs', 'Business Person', 'House Wife', '1 brother or 1 sister', '03/05/2020', '12:14:am', 398, 'No'),
(458, 'Late Ashok Gupta', 'Wheatish', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'slim', 'Gupta', 'Goyal', NULL, NULL, 'Mawana ', 'B.A', NULL, 'Business', '3-5 Lacs', 'Farmer', 'Private Job', '1bro', '03/05/2020', '10:32:am', 401, 'Yes'),
(461, 'Late Shri Jaiprakash Jain', 'Wheatish', '60-70 Kg', '5 Feet 11 inch', 'Never Married', 'Athletic', 'Baniya', 'Jain', NULL, NULL, 'Muzaffarnagar', 'Intermediate', NULL, 'Private Job', '1-3 Lacs', 'Farmer', 'House Wife', '4 sister', '03/05/2020', '11:05:am', 402, 'No'),
(462, 'Rajendra Gupta', 'Fair', '50-60 Kg', '5 Feet 2 inch', '', 'Fit', 'Modanwal ', 'Kankooj halwai', NULL, NULL, 'Prayagraj ', 'B.Com', NULL, 'Civil Services', '1-3 Lacs', 'Private Job', 'House Wife', '5 brother no  sister ', '03/05/2020', '11:18:am', 403, 'No'),
(463, 'Anil mittal', 'Fair', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'slim', 'Baniya', 'Aggarwal', NULL, NULL, 'PANIPAT', 'B.A', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER', '03/05/2020', '11:24:am', 404, 'No'),
(464, 'Ajay kumar Gupta', 'Fair', '60-70 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'Gupta', 'Kalvar', NULL, NULL, 'Shahjahanpur', 'B.Ed', NULL, 'Private Job', '3-5 Lacs', 'Private Job', 'House Wife', '2', '03/05/2020', '02:36:pm', 405, 'No'),
(466, '', 'Wheatish', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'slim', 'Agrawal', 'Goyal', NULL, NULL, 'Vrindavan', '', NULL, 'Business', '3-5 Lacs', 'Farmer', 'House Wife', '1', '03/05/2020', '04:42:pm', 406, 'No'),
(467, 'DHIRENDRA KUMAR GUPTA', 'Fair', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Gupta', 'Yagsani Halwai', NULL, NULL, 'Kanpur', 'B.Ed', NULL, 'Private Job', '1-3 Lacs', 'Private Job', 'House Wife', '1brother 1sister', '03/05/2020', '04:52:pm', 407, 'Yes'),
(465, '', 'Fair', '60-70 Kg', '5 Feet 11 inch', 'Never Married', 'Athletic', '', '', NULL, NULL, '', 'Intermediate', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '', '03/05/2020', '05:04:pm', 408, 'No'),
(468, 'sh.ram chander aggarwal', 'Wheatish', '70-80 Kg', '5 Feet 5 inch', 'Never Married', 'slim', 'aggarwal', 'garg', NULL, NULL, 'ludhiana', 'MBA', NULL, 'Private Job', '7-10 Lacs', 'Business Person', 'House Wife', '2', '03/05/2020', '05:09:pm', 409, 'No'),
(481, 'Indal singh', 'Fair', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Singh', 'Kshatri', NULL, NULL, 'Kushinagar', 'B.Com', NULL, 'Gov.Job ', '', 'Private Job', 'House Wife', '2 brother 2 sister', '04/05/2020', '10:53:am', 410, 'No'),
(483, 'Kuldeep gupta', 'Fair', '60-70 Kg', '5 Feet 4 inch', 'Never Married', 'Healthy', 'Gupta', 'teli', NULL, NULL, 'Kanpur', 'Intermediate', NULL, 'Unemployed', '', 'Farmer', 'House Wife', '----', '04/05/2020', '01:20:pm', 411, 'No'),
(485, 'BALESHWAR GUPTA', 'Wheatish', '70-80 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'GUPTA', 'GUPTA', NULL, NULL, 'MEERUT UTTAR PRADESH', 'M.Com', NULL, 'Private Job', '5-7 Lacs', 'Business Person', 'House Wife', '2', '04/05/2020', '01:25:pm', 412, 'No'),
(490, '', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'slim', 'Kashyap', 'Baniya', NULL, NULL, 'Mumbai', 'M.Com', NULL, 'Private Job', '', 'Business Person', 'House Wife', '', '04/05/2020', '05:45:pm', 414, 'No'),
(493, 'Prem chand gupta', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'slim', 'Gupta', 'teli', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '', '05/05/2020', '06:28:am', 415, 'No'),
(494, 'Subhash chandra gupta', 'Wheatish', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'Fit', 'Gupta', 'teli', NULL, NULL, 'Gorakhpur', 'ITI/Diploma', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '0 BROTHER & 1 SISTER', '05/05/2020', '06:39:am', 439, 'No'),
(495, 'Mangeelala rathore', 'Very Fair', '50-60 Kg', '5 Feet 2 inch', 'Divorced', 'slim', 'Rathore', 'teli', NULL, NULL, 'dewas (mp)', 'B.A', NULL, '', '', 'Business Person', 'House Wife', '    ', '05/05/2020', '06:48:am', 440, 'Yes'),
(496, 'A.k. Sahu', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Sahu', 'teli', NULL, NULL, 'Lucknow', 'B.Tech/BE', NULL, 'Gov.Job ', '3-5 Lacs', 'Gov.Job ', 'House Wife', '1 BROTHER & 0 SISTER', '05/05/2020', '06:58:am', 441, 'No'),
(497, 'Badri prashad sahu', 'Fair', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'slim', 'sahu', 'teli', NULL, NULL, 'Sultanpur', 'B.Ed', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '05/05/2020', '07:11:am', 442, 'No'),
(500, 'Pitambar lal sahu', 'Wheatish', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Healthy', 'Sahu', 'Teli', NULL, NULL, 'FaTehpur', 'Phd', NULL, 'Private Job', '5-7 Lacs', 'Gov.Job ', 'House Wife', '1 and 1', '05/05/2020', '11:02:am', 443, 'No'),
(501, 'Jagdish prashad', 'Wheatish', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Lucknow', 'ITI/Diploma', NULL, 'Gov.Job ', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '', '05/05/2020', '12:08:pm', 444, 'No'),
(503, 'Durga prashad gupta', 'Fair', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'slim', 'Gupta', 'Teli', NULL, NULL, 'Kanpur nagar', 'B.Com', NULL, 'Private Job', '', 'Business Person', 'House Wife', '2 brother', '05/05/2020', '12:17:pm', 445, 'No'),
(503, 'Durga prashad gupta', 'Fair', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'slim', 'Gupta', 'Teli', NULL, NULL, 'Kanpur nagar', 'B.Com', NULL, 'Private Job', '', 'Business Person', 'House Wife', '2 brother', '05/05/2020', '12:19:pm', 446, 'No'),
(504, 'moolchand', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'slim', 'Jindal', '', NULL, NULL, 'Faridabad', 'B.Com', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1  brother &  1  sister', '05/05/2020', '12:31:pm', 448, 'No'),
(505, 'Biranjan gupta', 'Very Fair', '50-60 Kg', '5 Feet ', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Aurangabad', 'B.Com', NULL, '', '', 'Business Person', 'House Wife', '   ', '05/05/2020', '12:41:pm', 449, 'No'),
(505, 'Biranjan gupta', 'Very Fair', '50-60 Kg', '5 Feet ', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Aurangabad', 'B.Com', NULL, '', '', 'Business Person', 'House Wife', '   ', '05/05/2020', '12:43:pm', 451, 'No'),
(506, 'R.P. Sahu', 'Fair', '50-60 Kg', '5 Feet ', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Dhamatari (cg)', 'PGDCA', NULL, '', '', 'Business Person', 'House Wife', '1  BROTHER  1 SISTER', '05/05/2020', '01:15:pm', 453, 'No'),
(507, 'Nandu Prasad', 'Wheatish', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'slim', 'Gupta', 'Maddheshiya', NULL, NULL, 'Lucknow', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Private Job', 'House Wife', '2 Brother and Single sister', '05/05/2020', '02:09:pm', 456, 'No'),
(508, 'ramesh chand gupta', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Kanpur', 'BSC', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '2 brother &  1 sister', '05/05/2020', '02:13:pm', 457, 'No'),
(477, 'Mahesh Gupta', 'Fair', '70-80 Kg', '5 Feet 3 inch', 'Never Married', 'Healthy', 'Gupta', 'Halwai Yagyasaini', NULL, NULL, 'Lucknow', 'B.Com', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '4 Brother\'s (1married)', '05/05/2020', '03:50:pm', 459, 'No'),
(284, 'Preetam sahu', 'Very Fair', '60-70 Kg', '6 Feet ', 'Never Married', 'Healthy', 'Sahu', 'Sahu', NULL, NULL, 'Sagar', 'B.A', NULL, 'Private Job', '1-3 Lacs', 'Farmer', 'House Wife', '2/2', '05/05/2020', '03:56:pm', 460, 'No'),
(511, 'Jeevan lal Agarwal', 'Fair', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'Agarwal', 'Goyal', NULL, NULL, 'Bhilwara (Raj)', 'B.Tech/BE', NULL, 'Gov.Job ', '5-7 Lacs', 'Private Job', 'House Wife', '1 BROTHER & 1 SISTER', '06/05/2020', '06:56:am', 461, 'No'),
(512, 'Lt. kali ram goel', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Healthy', 'Agarwal', 'Goel', NULL, NULL, 'Delhi', 'B.A', NULL, 'Business', '3-5 Lacs', 'Farmer', 'House Wife', '1 BROTHER & 3 SISTER', '06/05/2020', '07:15:am', 462, 'No'),
(513, 'Late. Naresh kumar Goel', 'Fair', '', '5 Feet 7 inch', 'Never Married', 'slim', 'Goel', 'Goel', NULL, NULL, 'Delhi', 'MSC', NULL, 'Private Job', '10-15 Lacs', 'Ex.SeviceMan', 'Ex.SeviceMan', '1 BROTHER & 0 SISTER', '06/05/2020', '07:25:am', 463, 'No'),
(514, 'shiv kumar goel', 'Fair', '', '5 Feet 9 inch', 'Never Married', 'Healthy', 'Agarwal', 'Goel', NULL, NULL, 'Gaziabad', 'B.Com', NULL, 'Business', '3-5 Lacs', 'Gov.Job ', 'House Wife', '1 brother', '06/05/2020', '07:36:am', 464, 'No'),
(516, 'Shayamlalji Rathore', 'Fair', '50-60 Kg', '5 Feet ', 'Never Married', 'Fit', 'Rathore', 'Tail', NULL, NULL, 'Indore', 'HighSchool', NULL, 'Business', '1-3 Lacs', 'Farmer', 'House Wife', '2borthermarride 1sister married', '06/05/2020', '02:49:pm', 465, 'Yes'),
(517, 'Ram naresh Gupta', 'Wheatish', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'Healthy', 'Gupta', 'Vaisy', NULL, NULL, 'Lakhimpur kheri', 'Phd', NULL, 'Gov.Job ', '7-10 Lacs', 'Gov.Job ', 'Business Women', '2 brother & 1 sister', '06/05/2020', '02:52:pm', 466, 'No'),
(518, 'Chandra Prakash Gupta', 'Fair', '60-70 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'Gupta', 'Halwai', NULL, NULL, 'Lucknow', 'B.A', NULL, 'Business', '1-3 Lacs', 'Farmer', 'House Wife', '2 brother & 1 sister', '06/05/2020', '03:07:pm', 467, 'No'),
(519, 'Rameshwar Prashad Gupta', 'Wheatish', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Healthy', 'Gupta', 'Vaisya', NULL, NULL, 'Meerut', 'B.Com', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '2 brother', '06/05/2020', '03:19:pm', 469, 'No'),
(520, 'Prakash Agareal', 'Dusky', '60-70 Kg', '5 Feet 9 inch', 'Never Married', 'Healthy', 'Agarwal', 'vaishya', NULL, NULL, 'Agra', 'B.Com', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '1 brother', '06/05/2020', '03:31:pm', 470, 'No'),
(521, 'Ashok kumar Gupta', 'Fair', '50-60 Kg', '5 Feet 6 inch', 'Never Married', 'slim', 'Gupta', 'Vaisya', NULL, NULL, 'Allahabad', 'MA', NULL, '', '', 'Business Person', 'House Wife', '2 brother & 1 sister', '06/05/2020', '04:29:pm', 472, 'No'),
(522, 'Kailash Gupta', 'Wheatish', '', '5 Feet 3 inch', 'Never Married', 'Healthy', 'Gupta', 'Vaisya', NULL, NULL, 'Mumbai', 'B.Com', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '----', '06/05/2020', '05:07:pm', 473, 'No'),
(237, 'Late. Badri prasad Gupta', 'Fair', '50-60 Kg', '5 Feet ', 'Never Married', 'Healthy', 'Teli', 'Gupta', NULL, NULL, 'Ghosi', 'B.A', NULL, 'Unemployed', '', 'Farmer', 'House Wife', 'Brother 1', '06/05/2020', '05:08:pm', 474, 'No'),
(524, 'Sushi ram sahu', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Korba (CG)', 'MBA', NULL, 'Private Job', '1-3 Lacs', 'Gov.Job ', 'House Wife', '1 brother  &. 1sister', '06/05/2020', '06:56:pm', 475, 'No'),
(525, 'Kailash agarwal', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'slim', 'Agarwal', 'Agarwal', NULL, NULL, 'Delhi', 'Intermediate', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '1 brother', '06/05/2020', '07:04:pm', 476, 'No'),
(526, 'Sanjay Gupta', 'Very Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Healthy', 'Gupta', 'Baniya', NULL, NULL, 'Delhi', 'B.A', NULL, '', '', 'Gov.Job ', 'House Wife', '1.brother  &  1. Sister', '06/05/2020', '07:23:pm', 478, 'No'),
(527, 'Gopal prashad Sahu', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Healthy', 'Sahu', 'Baniya', NULL, NULL, 'Janjgir Champa (CG)', 'Intermediate', NULL, 'Business', '', 'Business Person', 'House Wife', '', '06/05/2020', '07:29:pm', 479, 'No'),
(528, 'Resham all saw', 'Fair', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'slim', 'Saw', 'Baniya', NULL, NULL, 'Mahasamund (CG)', 'MA', NULL, 'Gov.Job ', '1-3 Lacs', 'Farmer', 'House Wife', '1.brother &  3. Suster', '06/05/2020', '07:37:pm', 480, 'No'),
(533, 'Filip atnagae', 'Fair', '50-60 Kg', '5 Feet ', 'Divorced', 'Healthy', 'Gupta', 'Baniya', NULL, NULL, 'Nagpur', 'Other', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '', '06/05/2020', '08:33:pm', 481, 'No'),
(534, '', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Healthy', 'Gupta', 'Teli', NULL, NULL, 'Valid (CG)', 'MA', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1. sister', '06/05/2020', '08:40:pm', 482, 'No'),
(640, 'Raj kumar shah', 'Fair', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'Healthy', 'Shah', 'Baniya', NULL, NULL, 'Muzaffarpur', '', NULL, '', '10-15 Lacs', 'Business Person', 'House Wife', '3 sister', '07/05/2020', '06:29:am', 489, 'No'),
(641, 'Anay kumar', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'slim', 'Gupta', 'Baniya', NULL, NULL, 'Garhwa (jharkhand)', '', NULL, '', '', 'Business Person', 'House Wife', '2 brother', '07/05/2020', '07:15:am', 490, 'No'),
(642, 'Shiv narayan Rathor', 'Fair', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'slim', 'Rathore', 'Teli', NULL, NULL, 'Unnao', 'MBA', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '', '07/05/2020', '07:27:am', 491, 'No'),
(644, ' Badari Lal ji', 'Fair', '90-100 Kg', '5 Feet 3 inch', 'Divorced', 'slim', 'Teli', 'Teli', NULL, NULL, 'Pratapghar', '', NULL, '', '1-3 Lacs', 'Business Person', 'House Wife', '1 sister', '07/05/2020', '01:30:pm', 505, 'No'),
(645, ' Prabhakar Raut', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Healthy', 'Raut', 'Baniya', NULL, NULL, 'Pune', 'Pharmacy', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '', '07/05/2020', '02:06:pm', 506, 'No'),
(646, ' Shailendra gupta', 'Wheatish', '50-60 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Bahraich', 'MA', NULL, 'Unemployed', '', 'Gov.Job ', 'House Wife', '2 brother', '07/05/2020', '02:23:pm', 507, 'No'),
(647, ' Jawahar prashad gupta', 'Fair', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Sasaram Bihar', 'B.A', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '3 brother & 1 sister', '07/05/2020', '02:31:pm', 508, 'No'),
(648, ' Sunil Sahu', 'Fair', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Kanpur nagar', 'ITI/Diploma', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '1 sister', '07/05/2020', '02:39:pm', 509, 'No'),
(649, ' salik ram sahu', 'Wheatish', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Lucknow', 'BTC', NULL, '', '', 'Business Person', 'House Wife', '2 brother & 1 sister', '07/05/2020', '02:52:pm', 510, 'Yes'),
(653, ' Late. Budhuram Gupta', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Mirzapur', 'MA', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '1 brother & 2 sister', '07/05/2020', '03:03:pm', 512, 'No'),
(654, ' Shripal sahu', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Delhi', 'B.A', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '3 brother & 1 sister', '07/05/2020', '03:33:pm', 513, 'No'),
(655, ' Late. Jagdish prashad Sahu', 'Fair', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Lucknow', 'MA', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '', '07/05/2020', '03:41:pm', 514, 'No'),
(94, ' Gyanender Kumar Gupta', 'Wheatish', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'Fit', 'Gupta', 'Gupta', NULL, NULL, 'Delhi', 'B.A', NULL, 'Business', '7-10 Lacs', 'Business Person', 'Business Women', '4', '07/05/2020', '05:30:pm', 516, 'Yes'),
(657, ' ', 'Fair', '50-60 Kg', '5 Feet 9 inch', 'Never Married', '', '', '', NULL, NULL, '', '', NULL, '', '1-3 Lacs', 'Farmer', 'House Wife', '', '08/05/2020', '08:32:am', 517, 'No'),
(658, ' santu sahu ', 'Fair', '80-90 Kg', '5 Feet 8 inch', 'Never Married', 'Fit', 'ObC ', 'sahu teli', NULL, NULL, 'Nagpur ', 'B.Com', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '2 brother 1 sister ', '08/05/2020', '10:45:am', 518, 'No'),
(660, ' Late. Kailash Nath gupta', 'Fair', '80-90 Kg', '5 Feet 7 inch', 'Divorced', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Gorakhpur', 'B.Com', NULL, 'Private Job', '', 'Farmer', 'House Wife', '', '08/05/2020', '03:43:pm', 519, 'No'),
(661, ' Santu Sahu', 'Fair', '60-70 Kg', '5 Feet 4 inch', 'Never Married', 'Healthy', 'Sahu', 'Teli', NULL, NULL, 'Nagpur', 'B.Com', NULL, 'Private Job', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '2 brother. &  1 sister', '08/05/2020', '03:54:pm', 520, 'No'),
(662, ' Late. jeevan lal sahu', 'Fair', '70-80 Kg', '5 Feet 10 inch', 'Never Married', 'Healthy', 'sahu', 'Teli', NULL, NULL, 'Janjgir-Champa', 'BSC', NULL, 'Gov.Job ', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '2 sister', '08/05/2020', '04:12:pm', 521, 'No'),
(663, ' Govind ram sahu', 'Fair', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'slim', 'Sahu', 'Teli', NULL, NULL, 'Gariyaband', 'B.Ed', NULL, 'Gov.Job ', '3-5 Lacs', 'Gov.Job ', 'House Wife', '1 brother &  1 sister', '08/05/2020', '04:20:pm', 522, 'No'),
(664, ' Balmukund sahu', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Healthy', 'Sahu', 'Teli', NULL, NULL, 'Kabirdham  (CG)', 'BSC', NULL, 'Gov.Job ', '1-3 Lacs', 'Business Person', 'House Wife', '3 brother ', '08/05/2020', '04:30:pm', 523, 'No'),
(665, ' Banshi lal Sahu', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Durg', 'B.A', NULL, 'Unemployed', '', 'Gov.Job ', 'House Wife', '1 brother', '08/05/2020', '04:48:pm', 524, 'No'),
(666, ' Hira Lal gupta', 'Fair', '', '', 'Never Married', '', 'Gupta', 'Teli', NULL, NULL, 'Prayagraj', 'Law', NULL, 'Gov.Job ', '', 'Private Job', 'House Wife', '', '08/05/2020', '06:00:pm', 530, 'No'),
(667, ' Late. Anand ram sahu', 'Fair', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'Athletic', 'Sagu', 'Teli', NULL, NULL, 'Durg', 'B.Ed', NULL, 'Gov.Job ', '3-5 Lacs', 'Farmer', 'House Wife', '', '08/05/2020', '06:11:pm', 531, 'No'),
(668, ' Vijay k gupta', 'Wheatish', '60-70 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'Gupta', 'Baniya', NULL, NULL, 'Nagpur', 'ITI/Diploma', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '', '08/05/2020', '06:19:pm', 532, 'No'),
(669, ' Chauthmal sahu', 'Fair', '', '5 Feet 6 inch', 'Never Married', 'Fit', 'Sahu', 'Baniya', NULL, NULL, 'Sawai Madhopur', 'B.A', NULL, 'Business', '1-3 Lacs', 'Farmer', 'House Wife', '', '09/05/2020', '08:19:am', 533, 'No'),
(670, ' Suresh chand rathor', 'Wheatish', '50-60 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'Rathor', 'Teli', NULL, NULL, 'Kota', 'B.A', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '', '09/05/2020', '08:29:am', 534, 'No'),
(50, ' Brijmohan gupta', 'Very Fair', '60-70 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Ambedkar Nagar', 'B.Ed', NULL, 'Gov.Job ', '5-7 Lacs', 'Business Person', 'House Wife', '2 brother & 2 sister', '09/05/2020', '08:37:am', 535, 'No'),
(671, ' Tejram Gajpal', 'Fair', '60-70 Kg', '5 Feet 5 inch', 'Never Married', 'Healthy', 'Gajpal', 'Baniya', NULL, NULL, 'Durg', 'B.Ed', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '', '09/05/2020', '09:09:am', 536, 'No'),
(672, ' Gopiram Sahu', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Healthy', 'Sahu', 'Teli', NULL, NULL, 'Durg', 'ITI/Diploma', NULL, 'Business', '', 'Farmer', 'House Wife', '3 brother  1 sister', '09/05/2020', '09:17:am', 537, 'No'),
(673, ' Phulchand Sahu', 'Wheatish', '60-70 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Mungeli', 'Intermediate', NULL, 'Gov.Job ', '1-3 Lacs', 'Gov.Job ', 'House Wife', '1 brother', '09/05/2020', '09:25:am', 538, 'No'),
(674, ' Jawahar lal sahu', 'Fair', '50-60 Kg', '4 Feet 9inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Korba', 'BSC', NULL, 'Private Job', '1-3 Lacs', 'Private Job', 'House Wife', '1 brother & 3 sister', '09/05/2020', '09:33:am', 539, 'No'),
(675, ' ', 'Fair', '', '5 Feet 4 inch', 'Divorced', '', 'Sahu', 'Teli', NULL, NULL, '', '', NULL, 'Private Job', '', 'Farmer', 'House Wife', '', '09/05/2020', '10:02:am', 540, 'No'),
(677, ' Sandeep kumar Gupta', 'Fair', '60-70 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Lucknow', 'BCA', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1 brother', '09/05/2020', '08:19:pm', 541, 'No'),
(679, ' Pradeep agarwal', 'Wheatish', '50-60 Kg', '4 Feet 9inch', 'Never Married', 'slim', 'Agarwal', 'Garg', NULL, NULL, 'Lucknow', 'HighSchool', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '3 brother', '09/05/2020', '09:22:pm', 542, 'No'),
(682, ' Santosh kumar gupta', 'Wheatish', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'Baniya', 'Kashyap', NULL, NULL, 'Hoshangabad', 'MBA', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'Business Women', '2', '09/05/2020', '10:31:pm', 543, 'No'),
(280, ' Shailendra Kumar gupta', 'Fair', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'Teli', 'Maghai', NULL, NULL, 'Begusarai', 'MBA', NULL, 'Unemployed', '1-3 Lacs', 'Farmer', 'House Wife', '2', '07/05/2020', '04:24:pm', 545, 'No'),
(169, 'Vinod kumar gupta', 'Fair', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'Teli', 'Kannajia', NULL, NULL, 'Madhuban', 'Other', NULL, 'Gov.Job ', '5-7 Lacs', 'Business Person', 'House Wife', '2 brothers', '30/04/2020', '04:41:pm', 546, 'No'),
(684, ' Late Shri S.K.Gupta', 'Fair', '90-100 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'Gupta', 'Gulahare Gupta ', NULL, NULL, 'Bhopal', 'B.Com', NULL, 'Private Job', '1-3 Lacs', 'Private Job', 'House Wife', '2 brother 1 sister ', '10/05/2020', '12:49:am', 547, 'Yes'),
(685, ' K.k. Garg', 'Fair', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'Fit', 'Garg', 'Baniya', NULL, NULL, 'Delhi', 'MBBS/MD', NULL, 'Private Job', '15-20 Lacs', 'Farmer', 'House Wife', '2 brother & 2 sister', '10/05/2020', '05:15:am', 548, 'No'),
(687, ' Satish Goel ', 'Wheatish', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'slim', 'Aggarwal ', 'Goel ', NULL, NULL, 'Delhi ', 'B.Com', NULL, 'Business', '7-10 Lacs', 'Business Person', 'House Wife', '1sister marriaged ', '10/05/2020', '06:58:am', 549, 'No'),
(689, ' Mahesh Chand singhal', 'Fair', '70-80 Kg', '5 Feet 4 inch', 'Never Married', 'Athletic', 'Agarwal', 'Singhal', NULL, NULL, 'Faridabad', 'B.A', NULL, 'Business', '7-10 Lacs', 'Business Person', 'House Wife', '2', '10/05/2020', '07:32:am', 550, 'No'),
(680, ' Rama Shankar Baranwal', 'Fair', '50-60 Kg', '5 Feet 6 inch', 'Widowed', 'Fit', 'Bania', 'Baranwal', NULL, NULL, 'Sultanpur', 'B.A', NULL, 'Business', '7-10 Lacs', 'Farmer', 'House Wife', '2 brothers and 4 sisters of which all married.', '10/05/2020', '09:34:am', 551, 'No'),
(691, ' Ravindra agrawal', 'Fair', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'Fit', 'Agrawal', 'Baniya', NULL, NULL, 'Gorakhpur', 'M.Com', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '2 brother', '10/05/2020', '09:44:am', 552, 'No'),
(692, ' Jai Prakash Agrawal', 'Fair', '60-70 Kg', '5 Feet 11 inch', 'Never Married', 'Fit', 'Agrawal', 'Baniya', NULL, NULL, 'Dhanbad', 'M.Com', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '2 brother & 1 sister', '10/05/2020', '10:23:am', 553, 'No'),
(693, ' ', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', '', '', NULL, NULL, '', 'Intermediate', NULL, 'Business', '3-5 Lacs', 'Farmer', 'House Wife', '', '10/05/2020', '12:22:pm', 554, 'No'),
(454, ' Shyam Ji Gupta', 'Wheatish', '50-60 Kg', '5 Feet 8 inch', 'Widowed', 'slim', 'Gupta', '', NULL, NULL, 'Lucknow', 'B.Com', NULL, 'Business', '7-10 Lacs', 'Business Person', 'House Wife', '1 brother and 1 sister', '10/05/2020', '12:35:pm', 555, 'No'),
(128, ' Mr.Umakant Arya', 'Fair', '80-90 Kg', '5 Feet 7 inch', 'Never Married', 'Athletic', 'Vaishya', 'Umar Vaishya', NULL, NULL, 'Ghosi', 'MBBS/MD', NULL, 'Gov.Job ', '10-15 Lacs', 'Gov.Job ', 'House Wife', '2 Brothres', '10/05/2020', '01:29:pm', 556, 'No'),
(128, ' Mr.Umakant Arya', 'Fair', '80-90 Kg', '5 Feet 8 inch', 'Never Married', 'Athletic', 'Vaishya', 'Umar Vaishya', NULL, NULL, 'Ghodi dist Mau', 'MBBS/MD', NULL, 'Gov.Job ', '10-15 Lacs', 'Gov.Job ', 'House Wife', '2 Brothers', '10/05/2020', '01:31:pm', 557, 'No'),
(695, ' Haridwar Nath Gupta', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Gupta', 'Halwai', NULL, NULL, 'Darbhanga', 'BSC', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '2 brother', '10/05/2020', '04:43:pm', 558, 'Yes'),
(696, ' s.n. bansal', 'Fair', '60-70 Kg', '5 Feet 4 inch', 'Divorced', 'Healthy', 'Bansal', 'Baniya', NULL, NULL, 'Delhi', 'MBA', NULL, 'Private Job', '3-5 Lacs', 'Farmer', 'House Wife', '', '10/05/2020', '04:57:pm', 559, 'No'),
(697, ' Late. Madan gopal gupta', 'Fair', '60-70 Kg', '6 Feet ', 'Never Married', 'Fit', 'Gupta', 'Vaishya', NULL, NULL, 'Barabanki', 'B.A', NULL, 'Business', '1-3 Lacs', 'Farmer', 'House Wife', '3 sister', '10/05/2020', '05:11:pm', 560, 'No'),
(696, ' ', 'Fair', '60-70 Kg', '5 Feet 4 inch', 'Divorced', 'slim', 'Bansal', '', NULL, NULL, 'Delhi', 'MBA', NULL, 'Private Job', '3-5 Lacs', 'Farmer', 'House Wife', '', '10/05/2020', '05:22:pm', 561, 'No'),
(698, ' Rajkumar Bansal', 'Fair', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'Bansal', 'Baniya', NULL, NULL, 'Delhi', 'Other', NULL, 'Private Job', '10-15 Lacs', 'Business Person', 'House Wife', '', '10/05/2020', '05:26:pm', 562, 'Yes'),
(699, ' Vimal gupta', 'Fair', '70-80 Kg', '5 Feet 8 inch', 'Divorced', 'Healthy', 'Gupta', 'Baniya', NULL, NULL, 'Delhi', 'MCA', NULL, 'Private Job', '10-15 Lacs', 'Ex.SeviceMan', 'House Wife', '2 brother & 1 sister', '10/05/2020', '05:45:pm', 563, 'No'),
(701, ' Mahendr k gupta', 'Wheatish', '60-70 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'Gupta', 'Baniya', NULL, NULL, 'Lakhimpur kheri', 'ITI/Diploma', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '1 brother & 3 sister', '10/05/2020', '06:14:pm', 564, 'No'),
(704, ' Atul Maheshwari', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'Maheshwari', 'Baniya', NULL, NULL, 'Meerut', 'B.A', NULL, '', '', 'Private Job', 'House Wife', '1 brother & 2 sister', '10/05/2020', '06:57:pm', 565, 'No'),
(703, ' late chotey Lal gupta', 'Fair', '50-60 Kg', '5 Feet 8 inch', 'Never Married', 'Fit', 'Dusar vasya', 'baniya', NULL, NULL, 'Lucknow', 'HighSchool', NULL, 'Private Job', '1-3 Lacs', 'Farmer', 'House Wife', '9161204045', '10/05/2020', '06:57:pm', 566, 'No'),
(703, ' ', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '', '10/05/2020', '07:03:pm', 567, 'No'),
(706, ' Vimal kumar Gupta ', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', '', 'Gupta ( mahajan)', 'Vaisy', NULL, NULL, 'Rampur ', 'ITI/Diploma', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '1', '10/05/2020', '09:37:pm', 568, 'No'),
(660, ' Late Kailashnath Gupta', 'Fair', '70-80 Kg', '5 Feet 7 inch', 'Divorced', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Gorakhpur District', 'B.Com', NULL, 'Private Job', '3-5 Lacs', 'Farmer', 'House Wife', 'We are 5 brother and 2 sister', '11/05/2020', '06:54:am', 569, 'No'),
(708, ' Ramchandra sah', 'Fair', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'Fit', 'Telu', '', NULL, NULL, 'Muzaffarpur', 'B.Tech/BE', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '2,1', '11/05/2020', '08:02:am', 570, 'No'),
(710, ' Shiv Kumar Gupta', 'Wheatish', '60-70 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'Baniya', 'Gupta', NULL, NULL, 'Rithi district Katni', 'B.Tech/BE', NULL, 'Private Job', '5-7 Lacs', 'Business Person', 'House Wife', '1 and 1', '11/05/2020', '09:02:am', 571, 'No'),
(660, ' Late Kailashnath Gupta', 'Fair', '70-80 Kg', '5 Feet 7 inch', 'Divorced', 'Athletic', 'Gupta', 'Teli', NULL, NULL, 'Gorakhpur District ', 'B.Com', NULL, 'Private Job', '3-5 Lacs', 'Farmer', 'House Wife', '5 Brothers and 2 sisters ', '11/05/2020', '11:58:am', 572, 'No'),
(428, ' Dinanath sharma', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'slim', 'Obc', 'Lohar', NULL, NULL, 'Kushinagar', 'BTC', NULL, 'Unemployed', '', 'Farmer', 'House Wife', '2 sisters ', '11/05/2020', '06:06:pm', 573, 'No'),
(715, ' Harpal grover', 'Fair', '70-80 Kg', '5 Feet 11 inch', 'Divorced', 'Healthy', 'Grover', 'Kashyap', NULL, NULL, 'Delhi', 'B.A', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1', '11/05/2020', '07:46:pm', 574, 'No'),
(707, ' Shiv narayan Singh Rawat ', 'Fair', '70-80 Kg', '5 Feet 10 inch', 'Never Married', 'Healthy', 'Rajpoot', 'Singh', NULL, NULL, 'Dehradoon', 'BCA', NULL, 'Private Job', '1-3 Lacs', 'Gov.Job ', 'House Wife', '3 brothers', '11/05/2020', '08:23:pm', 575, 'No'),
(717, ' Ramanuj gupta ', 'Wheatish', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Kasaudhan ', 'Kashyap ', NULL, NULL, 'Varanasi ', 'BSC', NULL, 'Private Job', '7-10 Lacs', 'Business Person', 'House Wife', '2', '12/05/2020', '08:12:am', 577, 'No'),
(718, ' Pardeep singhal', 'Fair', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'slim', 'Singhal', 'Baniye', NULL, NULL, 'Saharanpur up', 'B.A', NULL, 'Business', '20-40 Lacs', 'Business Person', 'Gov.Job ', 'I sister', '12/05/2020', '08:23:am', 578, 'No'),
(718, 'Pardeep singhal', 'Fair', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'slim', 'Singhal', 'Baniya', NULL, NULL, 'Saharanpur up', 'B.A', NULL, 'Business', '20-40 Lacs', 'Business Person', 'Gov.Job ', 'I sister', '12/05/2020', '08:30:am', 579, 'No'),
(719, ' Anil Gupta', 'Fair', '50-60 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'Gupta', 'Baniya', NULL, NULL, 'Hisar', 'B.Com', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '1 sister', '12/05/2020', '10:58:am', 580, 'No'),
(720, ' Late. Surendr gupta', 'Fair', '60-70 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'Gupta', 'Baniya', NULL, NULL, 'Moradabad', 'B.Com', NULL, 'Private Job', '1-3 Lacs', 'Farmer', 'House Wife', '1 brother & 1 sister', '12/05/2020', '12:00:pm', 581, 'No'),
(723, ' Mukesh kumar Agarwal', 'Fair', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'Agarwal', 'Baniya', NULL, NULL, 'Delhi', 'B.Com', NULL, 'Gov.Job ', '7-10 Lacs', 'Business Person', 'House Wife', '2 brother', '12/05/2020', '06:29:pm', 582, 'Yes'),
(725, ' Late. Om Prakash sahu', 'Wheatish', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Healthy', 'Sahu', 'Teli', NULL, NULL, 'Jaunpur', 'B.A', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '1 brother & 1 sister', '12/05/2020', '07:38:pm', 583, 'No'),
(727, ' Arvind kumar gupta', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'slim', 'Gupta', 'Baniya', NULL, NULL, 'Bhopal', 'M.Com', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '1 brother 1sister', '12/05/2020', '07:52:pm', 584, 'No'),
(732, ' Trilokinath Gupta', 'Fair', '50-60 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'Gupta', 'Halwai', NULL, NULL, 'Ghazipur', 'BTC', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1 brother', '13/05/2020', '09:11:am', 585, 'Yes'),
(733, ' Santosh Gupta', 'Fair', '50-60 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'Gupta', 'Baniya', NULL, NULL, 'Firozabad', 'BSC', NULL, 'Business', '10-15 Lacs', 'Business Person', 'House Wife', '1 brother & 1 sister', '13/05/2020', '09:38:am', 586, 'No'),
(724, ' Dinesh Sahu', 'Very Fair', '60-70 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'Sahu', 'Sahu', NULL, NULL, 'Bhopal', 'B.Tech/BE', NULL, 'Private Job', '5-7 Lacs', 'Gov.Job ', 'House Wife', '1', '13/05/2020', '11:01:am', 587, 'No'),
(734, 'Ram ratan singh', 'Wheatish', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Chauhan', 'à¤›à¤¤à¥à¤°à¤¿à¤¯', NULL, NULL, 'Lalganj, raebareli', 'Other', NULL, 'Gov.Job ', '5-7 Lacs', 'Business Person', 'House Wife', '1', '13/05/2020', '11:46:am', 588, 'No'),
(428, ' Dinanath sharma', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'slim', 'Obc', 'Lohar', NULL, NULL, 'Kushinagar', 'BTC', NULL, '', '', 'Farmer', 'House Wife', '1brother 2sister', '13/05/2020', '07:33:pm', 590, 'No'),
(690, ' shree kailash sahu', 'Fair', '60-70 Kg', '5 Feet 3 inch', 'Divorced', 'Fit', 'sahu', 'sahu', NULL, NULL, 'kanpur', 'B.Com', NULL, 'Private Job', '1-3 Lacs', 'Private Job', 'House Wife', '1 brother(unmarried )&1sister (married) ', '14/05/2020', '10:29:am', 592, 'No'),
(741, 'Mr. Raj kumar gupta', 'Fair', '70-80 Kg', '5 Feet 10 inch', 'Never Married', 'Athletic', 'Baniya', 'Mathur vaisya baniya', NULL, NULL, 'Delhi', 'B.Com', NULL, 'Private Job', '5-7 Lacs', 'Private Job', 'House Wife', '1brother and 1 sister', '14/05/2020', '10:48:am', 593, 'No'),
(743, ' Kamal Sahu', 'Wheatish', '60-70 Kg', '5 Feet 6 inch', 'Divorced', 'slim', 'Sahu', 'Teli', NULL, NULL, 'Durg', 'PGDCA', NULL, 'Private Job', '5-7 Lacs', 'Business Person', 'House Wife', '3', '15/05/2020', '09:30:am', 594, 'No'),
(745, ' Late shree jageshwar prasad', 'Fair', '70-80 Kg', '5 Feet 11 inch', 'Never Married', 'Fit', 'Sahu', 'Shreevatri', NULL, NULL, 'Katni', 'B.Tech/BE', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', 'One married sister', '16/05/2020', '10:43:am', 595, 'No'),
(747, ' Lekhram sahu', 'Wheatish', '60-70 Kg', '5 Feet 11 inch', 'Never Married', 'Fit', 'Teli', 'Sahu', NULL, NULL, 'Barghat seoni mp', 'Pharmacy', NULL, 'Business', '3-5 Lacs', 'Gov.Job ', 'House Wife', 'Sister ..1 ', '16/05/2020', '10:51:am', 596, 'No'),
(749, ' Kailash bansal', 'Fair', '60-70 Kg', '5 Feet 9 inch', 'Never Married', 'Healthy', 'Agarwal', 'Baniya', NULL, NULL, 'Chandigarh', 'HighSchool', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '1 brother & 1 sister', '16/05/2020', '05:51:pm', 597, 'No'),
(718, ' Pardeep singhal', 'Fair', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'slim', 'Singhal', 'Baniya', NULL, NULL, 'Saharanpur up', 'B.A', NULL, 'Business', '20-40 Lacs', 'Business Person', 'Gov.Job ', '1 sister', '17/05/2020', '12:21:am', 598, 'No'),
(750, ' Ajay Rathore', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Rathore', 'Teli', NULL, NULL, 'Rajgarh (mp)', 'M.Tech', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1 brother', '17/05/2020', '03:04:pm', 599, 'No'),
(755, ' Late. Rajendra kumar', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'slim', 'Gupta', 'Baniya', NULL, NULL, 'Kanpur', 'BSC', NULL, 'Unemployed', '', 'Farmer', 'House Wife', '1 sister', '17/05/2020', '06:17:pm', 600, 'No'),
(756, 'RAM RATAN KARNDHAR', 'Dusky', '60-70 Kg', '5 Feet 4 inch', '', 'Healthy', 'OBC', 'Kewat', NULL, NULL, 'HAMIRPUR', 'MSC', NULL, 'Private Job', '1-3 Lacs', 'Gov.Job ', 'House Wife', '1 brother and two sisters', '17/05/2020', '06:27:pm', 601, 'No'),
(718, ' Pardeep singhal', 'Fair', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'slim', 'Singhal', 'Baniya', NULL, NULL, 'Saharanpur up', 'B.A', NULL, 'Business', '20-40 Lacs', 'Business Person', 'Gov.Job ', 'I sister', '17/05/2020', '07:09:pm', 602, 'No'),
(758, ' NANDLAL BHARADWAJ', 'Wheatish', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Healthy', 'OBC', 'BHARADWAJ', NULL, NULL, 'GHAZIPUR', 'BTC', NULL, 'Unemployed', '3-5 Lacs', 'Farmer', 'House Wife', '1,1', '17/05/2020', '10:49:pm', 603, 'No'),
(760, ' Dr.m.l.sahu', 'Very Fair', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'Athletic', 'Teli ', 'Sahu', NULL, NULL, 'Mandla', 'Law', NULL, 'Gov.Job ', '10-15 Lacs', 'Gov.Job ', 'Business Women', '', '18/05/2020', '07:50:pm', 604, 'No'),
(718, ' Pardeep singhal', 'Fair', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'slim', 'Singhal', 'Baniya', NULL, NULL, 'Saharanpur up', 'B.A', NULL, 'Business', '20-40 Lacs', 'Business Person', 'Gov.Job ', '1 sister', '21/05/2020', '01:00:pm', 610, 'No'),
(775, ' Prakash jain', 'Fair', '100-150 Kg', '5 Feet 10 inch', 'Never Married', 'Healthy', 'Jain', 'Oswal', NULL, NULL, 'Ahmednagar ', 'B.Tech/BE', NULL, 'Business', '40-80 Lacs', 'Business Person', 'House Wife', '2', '26/05/2020', '07:47:pm', 611, 'No'),
(779, ' N.P. Gupta', 'Fair', '60-70 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Azamgarh', 'MA', NULL, 'Business', '5-7 Lacs', 'Business Person', 'House Wife', '1', '30/05/2020', '10:32:pm', 612, 'No'),
(789, ' Dhanna Ram Sahu', 'Wheatish', '', '5 Feet ', 'Never Married', '', 'Sahu', '', NULL, NULL, 'Bhilai', 'B.Tech/BE', NULL, 'Private Job', '', 'Private Job', 'House Wife', '1 brother', '05/06/2020', '09:16:pm', 616, 'No'),
(793, ' T. S. Gupta ', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Teli ', 'Gupta, sahu ', NULL, NULL, 'kota, Rajasthan ', 'MA', NULL, 'Private Job', '1-3 Lacs', 'Ex.SeviceMan', 'House Wife', '3-Sisters,  2 - brothers ', '11/06/2020', '03:08:pm', 617, 'No'),
(404, ' ', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '', '13/06/2020', '06:24:am', 618, 'No'),
(239, ' Anil Gupta', 'Wheatish', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Walidpur  Mau', 'MSC', NULL, 'Gov.Job ', '5-7 Lacs', 'Business Person', 'House Wife', '1 brother and 1 sister', '15/06/2020', '07:07:pm', 620, 'Yes'),
(239, ' Anil Gupta', 'Wheatish', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'Teli', 'Kannaujia', NULL, NULL, 'Walidpur  Mau', 'MSC', NULL, 'Gov.Job ', '5-7 Lacs', 'Business Person', 'House Wife', '1 brother and 1 sister', '15/06/2020', '07:12:pm', 622, 'Yes'),
(796, ' Late Shri Jai Prakash Jain', 'Wheatish', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'Athletic', 'Baniya', 'Goel ', NULL, NULL, 'Muzaffarnagar', 'B.Com', NULL, 'Private Job', '1-3 Lacs', 'Ex.SeviceMan', 'House Wife', 'No brother 5 Sister', '17/06/2020', '11:24:pm', 623, 'No'),
(800, ' suryanath', 'Fair', '90-100 Kg', '5 Feet 10 inch', 'Never Married', 'Fit', 'shahu', 'teli', NULL, NULL, 'mumbai', 'B.Com', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '3', '26/06/2020', '07:16:pm', 624, 'No'),
(802, 'DEVENDRA GUPTA', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'slim', 'GUPTA', 'Ayodhya Wasi Vaishya', NULL, NULL, 'KANPUR', 'MA', NULL, 'Private Job', '1-3 Lacs', 'Private Job', 'House Wife', '2', '28/06/2020', '04:28:pm', 625, 'No'),
(803, ' Ashok gupta', 'Wheatish', '50-60 Kg', '5 Feet 2 inch', 'Divorced', 'Fit', 'Baniya. ', 'Ayodhyavasi kaushal', NULL, NULL, 'Fatehpus', 'MA', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '3/2', '07/07/2020', '05:42:pm', 626, 'No'),
(808, ' Hari shanksr', 'Fair', '50-60 Kg', '5 Feet 7 inch', 'Widowed', 'Healthy', 'Gupta', 'Vaish', NULL, NULL, 'Kanpur dehat', 'BSC', NULL, 'Business', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '2 brother 1 sister', '12/07/2020', '09:40:pm', 627, 'No'),
(821, 'Vinodchandra ', 'Fair', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'slim', 'Modi', 'Modi', NULL, NULL, 'Mehsana Gujarat', 'PGDCA', NULL, 'Business', '5-7 Lacs', 'Business Person', 'House Wife', '0 brother and 2 sister', '30/07/2020', '04:49:pm', 631, 'No'),
(823, ' Late Krishan prasad', 'Wheatish', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'slim', 'Teli, baniya, Gupta', 'Teli', NULL, NULL, 'Patna ', 'MSC', NULL, 'Gov.Job ', '10-15 Lacs', 'Farmer', 'House Wife', '1 brother and 2 sisters ', '05/08/2020', '04:54:pm', 632, 'No'),
(833, 'Shambhulal ', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Healthy', 'Teli', 'Rathor', NULL, NULL, 'Nimuch', '', NULL, '', '', 'Farmer', 'House Wife', '', '11/08/2020', '04:42:am', 633, 'No'),
(834, 'Uma Kant Ojha', 'Very Fair', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Ojha', '', NULL, NULL, 'Delhi', 'MBA', NULL, 'Private Job', '5-7 Lacs', 'Private Job', 'House Wife', '1 Brother', '15/08/2020', '12:43:pm', 634, 'No'),
(838, ' Ashok Sahu', 'Wheatish', '60-70 Kg', '5 Feet ', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Jhansi', 'HighSchool', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '2', '20/08/2020', '08:10:am', 635, 'No'),
(841, ' ', '', '', '', '', '', '', '', NULL, NULL, '', 'Intermediate', NULL, 'Business', '', 'Farmer', 'House Wife', '', '08/09/2020', '02:41:pm', 636, 'No'),
(843, ' Ashish Gupta', 'Fair', '70-80 Kg', '5 Feet 8 inch', 'Never Married', 'Fit', 'Teli', 'Gupta', NULL, NULL, 'Chhindwara (M.P.)', 'M.Tech', NULL, 'Private Job', '5-7 Lacs', 'Business Person', 'House Wife', '2', '15/09/2020', '08:22:pm', 637, 'No'),
(847, ' ', 'Fair', '50-60 Kg', '5 Feet 5 inch', '', 'Healthy', 'Sahu', 'Teli', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '', '17/09/2020', '10:21:pm', 639, 'No');
INSERT INTO `sdetails` (`did`, `fname`, `scolour`, `sweight`, `sheight`, `sstatus`, `sbody`, `scast`, `sbcast`, `srasi`, `stob`, `spob`, `sedu`, `sedudetail`, `soccupation`, `sincome`, `foccu`, `moccu`, `bs`, `sdate`, `stime`, `id`, `smangal`) VALUES
(848, ' Harinath', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'slim', '', 'Gupta', NULL, NULL, 'Mau ', 'B.Ed', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '2 brother', '23/09/2020', '04:43:pm', 640, 'No'),
(848, ' Harinath', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'slim', '', 'Gupta', NULL, NULL, 'Mau ', 'B.Ed', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '2 brother', '23/09/2020', '04:50:pm', 641, 'No'),
(850, ' Late..Shri. S.K. Gupta', 'Fair', '70-80 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'Gupta', 'Gulhare Gupta', NULL, NULL, 'Bhopal', 'B.Com', NULL, 'Private Job', '3-5 Lacs', 'Farmer', 'House Wife', '3', '28/09/2020', '11:22:pm', 642, 'Yes'),
(851, ' Kedar Nath gupta', 'Fair', '60-70 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'Gupta', 'Sahu', NULL, NULL, 'Madhuban', 'BDS', NULL, 'Business', '7-10 Lacs', 'Business Person', 'House Wife', '2 and 2', '30/09/2020', '10:12:pm', 643, 'No'),
(851, ' ', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '', '30/09/2020', '10:46:pm', 644, 'No'),
(140, NULL, 'Dusky', '70-80 Kg', '5 Feet 11 inch', 'Never Married', 'Athletic', 'Gupta', 'Sahu', NULL, NULL, 'DELHI', 'B.Tech/BE', NULL, 'Gov.Job ', '5-7 Lacs', 'Business Person', 'House Wife', '3', '14/10/2020', '10:14:pm', 645, 'No'),
(860, ' RAM KARAN', 'Fair', '50-60 Kg', '5 Feet 8 inch', 'Never Married', 'slim', 'TELI', 'SAHU', NULL, NULL, 'RAEBARELI', 'MBA', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '3 AND 0', '14/10/2020', '10:17:pm', 646, 'No'),
(860, ' ', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '', '14/10/2020', '10:38:pm', 647, 'No'),
(861, 'LATE RAM LALLAN GUPTA ', 'Fair', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'slim', 'OBC', 'SAHU/TELI', NULL, NULL, 'TANDA', '', NULL, '', '', 'Farmer', 'House Wife', '1, 2', '15/10/2020', '05:53:pm', 648, 'No'),
(861, ' LATE RAM LALLAN GUPTA', 'Fair', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'slim', 'OBC', 'SAHU/TELI', NULL, NULL, 'TANDA', 'MA', NULL, 'Gov.Job ', '3-5 Lacs', 'Farmer', 'House Wife', '1, 2', '15/10/2020', '05:57:pm', 649, 'No'),
(862, ' Mangat Singh ', 'Wheatish', '60-70 Kg', '5 Feet 2 inch', 'Never Married', 'Healthy', 'Rawat', 'Garhwali ', NULL, NULL, 'Village ', 'B.Com', NULL, 'Private Job', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '4', '15/10/2020', '06:14:pm', 650, 'No'),
(863, ' gopal agrawal', '', '90-100 Kg', '5 Feet 7 inch', 'Never Married', 'Healthy', 'agrawal', 'agrawal', NULL, NULL, '', 'B.Com', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '', '15/10/2020', '06:33:pm', 651, 'No'),
(863, ' ', '', '90-100 Kg', '', '', '', '', '', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '', '15/10/2020', '06:34:pm', 652, 'No'),
(867, ' Vimal chand chaudhary', 'Wheatish', '70-80 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'Jain', 'Chaudhary', NULL, NULL, 'Hyderabad', 'B.Tech/BE', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '2', '18/10/2020', '11:14:am', 653, 'No'),
(868, ' Nathuram sahu', 'Fair', '50-60 Kg', '5 Feet 8 inch', 'Never Married', 'slim', 'Sahu', 'Teli', NULL, NULL, 'Chhatarpur mp', 'MA', NULL, 'Private Job', '1-3 Lacs', 'Farmer', 'House Wife', '2 brother 1 sister', '18/10/2020', '09:43:pm', 654, 'No'),
(861, ' LATE RAM LALLAN GUPTA', 'Fair', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'slim', 'Sahu', 'Teli', NULL, NULL, 'TANDA', 'MA', NULL, 'Gov.Job ', '3-5 Lacs', 'Farmer', 'House Wife', '1, 2', '21/10/2020', '08:56:am', 655, 'No'),
(873, ' Dileep Gupta ', 'Fair', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'Fit', 'Gupta ', 'Modanwal ', NULL, NULL, 'Gonda ', 'BSC', NULL, 'Business', '3-5 Lacs', 'Gov.Job ', 'House Wife', '1', '02/11/2020', '01:03:pm', 656, 'Yes'),
(875, ' Basant kumar gupta', 'Dusky', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'Fit', 'General', 'Gupta', NULL, NULL, 'Agra', 'B.A', NULL, 'Business', '1-3 Lacs', 'Ex.SeviceMan', 'House Wife', 'One elder brother', '17/11/2020', '11:44:am', 657, 'No'),
(879, ' Ramnagina prasad', 'Wheatish', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'Athletic', 'Gautam', 'Chamar', NULL, NULL, 'Kushinagar', 'B.A', NULL, 'Unemployed', '1-3 Lacs', 'Gov.Job ', 'House Wife', '3 brorher 2 sister', '23/11/2020', '10:20:am', 658, 'No'),
(880, ' Ashok kumar', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Healthy', 'Gautam', 'Chamar', NULL, NULL, 'Kushinagar', 'BTC', NULL, 'Unemployed', '1-3 Lacs', 'Private Job', 'Gov.Job ', '', '23/11/2020', '10:25:am', 659, 'No'),
(882, ' Ishvarbhai ', 'Wheatish', '50-60 Kg', '5 Feet 10 inch', 'Divorced', 'Athletic', 'Patel ', 'Kadava patel', NULL, NULL, 'Mahesana ', 'MA', NULL, 'Private Job', '1-3 Lacs', 'Gov.Job ', 'House Wife', '', '24/11/2020', '02:24:am', 660, 'No'),
(883, ' Mohammad shakeel', 'Fair', '60-70 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'Khan', 'Jen.. ', NULL, NULL, 'Khalilabad', 'M.Ed', NULL, 'Gov.Job ', '7-10 Lacs', 'Ex.SeviceMan', 'House Wife', '', '28/11/2020', '12:08:am', 661, 'No'),
(885, ' Jagat prasad', '', '70-80 Kg', '', 'Divorce In Process', '', 'Gupta', 'Teli', NULL, NULL, 'Ballia', 'B.A', NULL, 'Business', '7-10 Lacs', 'Business Person', 'House Wife', '0', '06/12/2020', '01:25:pm', 662, 'No'),
(887, ' Late deokinandan sah', 'Fair', '60-70 Kg', '', 'Never Married', '', 'Teli', 'Kanojiya', NULL, NULL, 'Jamalpur', '', NULL, '', '', 'Farmer', 'House Wife', '08brothar and 2sister', '06/12/2020', '09:52:pm', 663, 'No'),
(890, ' Late Prakash Kumar', 'Fair', '60-70 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'Sahu', 'Saundik', NULL, NULL, 'Delhi', 'MBA', NULL, 'Private Job', '5-7 Lacs', 'Farmer', 'House Wife', '2', '06/12/2020', '10:26:pm', 664, 'No'),
(891, ' Ram swarth sah', 'Very Fair', '60-70 Kg', '4 Feet 6inch', 'Never Married', 'Healthy', 'Teli', 'Sahu', NULL, NULL, 'Sitamarhi', '', NULL, '', '', 'Farmer', 'House Wife', '1 and 4', '06/12/2020', '10:31:pm', 665, 'No'),
(892, 'Kamal Singh Sahu ', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'Sahu', 'Bathri Teli', NULL, NULL, 'Vidisha', 'B.Tech/BE', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1 Bro..,  2 Sis.. ', '06/12/2020', '11:18:pm', 666, 'Yes'),
(895, 'Sri vishnu kumar sahu ', 'Fair', '70-80 Kg', '5 Feet 8 inch', 'Divorce In Process', 'Fit', 'Sahu ', 'Teli ', NULL, NULL, 'Lucknow ', 'Law', NULL, 'Business', '5-7 Lacs', 'Ex.SeviceMan', 'House Wife', '1brother and 1sister married ', '07/12/2020', '02:52:am', 667, 'No'),
(897, ' Mr.Vishnu Kumar Agrawal ', 'Wheatish', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Agrawal ', 'Singhal', NULL, NULL, 'Khurja ', 'B.Com', NULL, 'Business', '5-7 Lacs', 'Business Person', 'House Wife', '1', '07/12/2020', '09:28:am', 668, 'Yes'),
(902, 'Sh. Yogendra Kumar Agarwal', 'Wheatish', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Agarwal', 'Bisa', NULL, NULL, 'Najobabad', '', NULL, '', '', 'Farmer', 'House Wife', '1 sister, elder, married', '07/12/2020', '11:24:am', 669, 'No'),
(904, ' Vijay sahu', 'Wheatish', '60-70 Kg', '4 Feet 6inch', 'Never Married', 'Fit', 'Teli', 'Teli', NULL, NULL, 'Kanpur', 'B.A', NULL, 'Private Job', '', 'Farmer', 'House Wife', '3 brother 1 sister', '07/12/2020', '12:33:pm', 670, 'No'),
(913, ' Mahendra sah', 'Wheatish', '60-70 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'Teli', 'Magahiya teli', NULL, NULL, 'Sitamarhi ', 'B.Tech/BE', NULL, 'Private Job', '7-10 Lacs', 'Farmer', 'House Wife', 'Two brothers two sisters ', '07/12/2020', '08:01:pm', 671, 'No'),
(909, ' Ghanshyam prasad sahu', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'Teli', 'Sahu', NULL, NULL, 'Mandla', 'BSC', NULL, 'Private Job', '', 'Gov.Job ', 'House Wife', '2 sisters', '07/12/2020', '08:24:pm', 672, 'No'),
(904, ' ', '', '', '5 Feet 6 inch', '', '', '', '', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '', '07/12/2020', '10:39:pm', 673, 'No'),
(904, ' Vijay sahu', 'Wheatish', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'Teli', 'Sahu', NULL, NULL, 'Kanpur', 'B.A', NULL, 'Private Job', '1-3 Lacs', 'Farmer', 'House Wife', '', '07/12/2020', '10:41:pm', 674, 'No'),
(918, ' dinesh kaushal', '', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'slim', 'aayodhyawasi vaishya', '', NULL, NULL, 'fatehpur ', '', NULL, '', '', 'Farmer', 'House Wife', '', '07/12/2020', '11:15:pm', 675, 'No'),
(917, ' Gokul Gupta', 'Wheatish', '70-80 Kg', '5 Feet 8 inch', 'Never Married', 'Fit', 'Teli', 'Shaw', NULL, NULL, 'Mumbai', 'B.Com', NULL, 'Business', '5-7 Lacs', 'Business Person', 'House Wife', '2+1', '08/12/2020', '10:31:am', 676, 'No'),
(917, ' Gokul Gupta', 'Wheatish', '70-80 Kg', '5 Feet 8 inch', 'Never Married', 'Fit', 'Teli', 'saw sahu', NULL, NULL, 'Mumbai', 'B.Com', NULL, 'Business', '5-7 Lacs', 'Business Person', 'House Wife', '2+1', '08/12/2020', '11:02:am', 677, 'No'),
(923, ' Suresh sahu', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'DHAMTARI', 'Nursing', NULL, 'Gov.Job ', '3-5 Lacs', 'Farmer', 'House Wife', '1', '08/12/2020', '11:09:am', 678, 'No'),
(886, ' Om prakash', 'Wheatish', '70-80 Kg', '5 Feet 8 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Ramgarh', 'B.A', NULL, 'Gov.Job ', '', 'Business Person', 'House Wife', '2 bro 1 sis', '08/12/2020', '01:38:pm', 679, 'No'),
(906, ' Vidya Shankar Sahu', 'Wheatish', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Lucknow', 'B.Tech/BE', NULL, 'Gov.Job ', '10-15 Lacs', 'Business Person', 'House Wife', '2 Brothers & 1 Sister', '08/12/2020', '03:12:pm', 680, 'No'),
(926, ' LAL BAHADUR', 'Fair', '50-60 Kg', '5 Feet ', 'Never Married', 'Fit', 'SAHU', 'TELI', NULL, NULL, 'FATEHPUR U.P.', 'BTC', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '3,                    2', '08/12/2020', '09:01:pm', 681, 'No'),
(941, ' Kamlesh prasad', 'Very Fair', '50-60 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'Teli', 'Kannaunjia', NULL, NULL, 'Gangtok', 'ITI/Diploma', NULL, 'Private Job', '5-7 Lacs', 'Business Person', 'House Wife', '1 younger brother and 2 sister', '09/12/2020', '10:46:pm', 682, 'No'),
(942, 'Late Shri K.L Sahu', 'Fair', '90-100 Kg', '5 Feet 6 inch', 'Never Married', 'Healthy', 'Sahu', 'Teli', NULL, NULL, 'REWA', '', NULL, '', '', 'Farmer', 'House Wife', 'Brothers 3 sisters 4', '09/12/2020', '11:31:pm', 683, 'No'),
(942, 'Late Shri K.L Sahu', 'Fair', '90-100 Kg', '5 Feet 6 inch', 'Never Married', 'Healthy', 'Sahu', 'Teli', NULL, NULL, 'REWA', '', NULL, '', '', 'Farmer', 'House Wife', 'Brothers 3 sisters 4', '09/12/2020', '11:31:pm', 684, 'No'),
(942, ' ', '', '80-90 Kg', '', '', '', '', '', NULL, NULL, '', 'Other', NULL, 'Business', '3-5 Lacs', 'Farmer', 'House Wife', '', '09/12/2020', '11:33:pm', 685, 'No'),
(942, ' Late k.l sahu', 'Fair', '80-90 Kg', '5 Feet 7 inch', 'Never Married', 'Healthy', 'Sahu', 'Teli', NULL, NULL, 'REWA', 'MSC', NULL, 'Business', '3-5 Lacs', 'Farmer', 'House Wife', 'Brothers 3 sisters 4', '09/12/2020', '11:34:pm', 686, 'No'),
(944, ' Janau ram', 'Fair', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'Fit', 'Teli', 'Sahu', NULL, NULL, 'Dhaurabhata', 'Law', NULL, 'Business', '1-3 Lacs', 'Farmer', 'House Wife', '2 brother 2 sister', '11/12/2020', '07:13:am', 687, 'No'),
(945, ' Late arun PRASAD gupta', 'Wheatish', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'Athletic', 'Teli ', 'Sahu', NULL, NULL, 'Munger', '', NULL, '', '', 'Farmer', 'House Wife', '3 brother and 1 sister', '11/12/2020', '12:17:pm', 688, 'No'),
(945, ' Late arun PRASAD gupta', 'Wheatish', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Athletic', 'Teli ', 'Sahu', NULL, NULL, 'Munger', 'B.A', NULL, 'Business', '7-10 Lacs', 'Business Person', 'House Wife', '3 brother and 1 sister', '11/12/2020', '01:21:pm', 689, 'No'),
(948, ' Pappulal sahu', 'Fair', '50-60 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'Teli', '', NULL, NULL, 'Mandsaur', 'HighSchool', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1 sister', '13/12/2020', '09:43:pm', 690, 'No'),
(950, ' Ramesh Chandra ji Vatra ', 'Fair', '50-60 Kg', '5 Feet 6 inch', '', 'slim', 'Teli ', 'Sahu', NULL, NULL, 'Mandsour (m.p)', 'B.Com', NULL, 'Business', '', 'Business Person', 'House Wife', '2 sis & 1 bro... ', '14/12/2020', '01:36:am', 691, 'No'),
(954, ' Nandan sahu', 'Wheatish', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'slim', 'Sahu', 'Sahu', NULL, NULL, 'Bordehi', '', NULL, '', '', 'Farmer', 'House Wife', 'Radios sahu', '14/12/2020', '11:50:am', 692, 'No'),
(955, ' Swaminath Gupta', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', '', 'Teli', 'Gupta', NULL, NULL, 'Mau', 'MA', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '6 brother 1 sister ', '14/12/2020', '03:50:pm', 694, 'No'),
(955, ' Swaminath Gupta', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'slim', 'Teli', 'Gupta', NULL, NULL, 'Mau', 'MA', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '6 brother 1 sister ', '14/12/2020', '03:52:pm', 695, 'No'),
(954, ' Nandan sahu ', 'Very Fair', '50-60 Kg', '5 Feet 8 inch', 'Never Married', 'slim', 'Sahu', 'Sahu', NULL, NULL, 'Bordehi', '', NULL, '', '', 'Farmer', 'House Wife', 'Radhika', '14/12/2020', '10:15:pm', 696, 'No'),
(962, ' Mr. Suresh Kumar Gupta', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Divorced', 'Fit', 'Gupta', 'Gupta', NULL, NULL, 'Varanasi', '', NULL, 'Private Job', '', 'Business Person', 'House Wife', '', '26/12/2020', '11:16:pm', 700, 'No'),
(967, ' Ramesh khanna', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Punjabi', 'punjabi katri', NULL, NULL, 'mumbai', '', NULL, 'Private Job', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '3 sisters', '26/12/2020', '11:23:pm', 701, 'Yes'),
(967, ' ', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '', '26/12/2020', '11:24:pm', 702, 'No'),
(969, ' Sukkhu gupta', 'Fair', '60-70 Kg', '5 Feet 4 inch', 'Divorced', 'Fit', '', '', NULL, NULL, 'Jaunpur', 'HighSchool', NULL, 'Business', '1-3 Lacs', 'Private Job', 'House Wife', '3brothers...2sister.mairrig.and 2brothers.mairrig', '06/01/2021', '02:24:pm', 703, 'No'),
(969, ' ', 'Fair', '50-60 Kg', '5 Feet ', 'Never Married', 'Fit', '', '', NULL, NULL, '', 'HighSchool', NULL, 'Private Job', '', 'Farmer', 'House Wife', '', '06/01/2021', '02:32:pm', 704, 'No'),
(970, ' Let. Jawahar lal singh', 'Fair', '60-70 Kg', '5 Feet 11 inch', 'Never Married', 'Fit', 'Singh', 'Sainthwar', NULL, NULL, 'Sahjanwa', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 brother and 1 sister', '06/01/2021', '03:16:pm', 705, 'No'),
(972, ' Muresh gupta', 'Fair', '60-70 Kg', '5 Feet 10 inch', '', 'Healthy', 'Gupta', 'Baniya', NULL, NULL, 'Mumbai', 'HighSchool', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '4brother 3 sister', '07/01/2021', '09:55:pm', 706, 'No'),
(973, ' Ramesh chand omar ', 'Fair', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'Omar vaishay ', 'Vaishay ', NULL, NULL, 'Unnow town safipur ', 'B.A', NULL, 'Private Job', '5-7 Lacs', 'Business Person', 'House Wife', '1and sister 1 ', '07/01/2021', '10:13:pm', 707, 'No'),
(979, ' ', '', '', '', '', '', '', '', NULL, NULL, '', 'B.Com', NULL, 'Business', '7-10 Lacs', 'Business Person', 'House Wife', '', '11/01/2021', '03:52:am', 708, 'No'),
(981, ' ramanuj gupta', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'slim', 'agrahari', 'gupta', NULL, NULL, 'jabalpur', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '2', '14/01/2021', '05:50:am', 709, 'No'),
(984, ' Uday kumar gupta', 'Fair', '80-90 Kg', '6 Feet ', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'GARHWA', 'B.A', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '3 brothers 1 sister(married) 1 brother(married)', '17/01/2021', '01:00:pm', 710, 'No'),
(984, ' uday kumar gupta', 'Fair', '80-90 Kg', '6 Feet ', 'Never Married', 'Fit', 'gupta', 'teli', NULL, NULL, 'GARHWA', 'B.A', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '3 brother and 1 sister', '17/01/2021', '01:02:pm', 711, 'No'),
(986, ' Anil Singh', 'Fair', '80-90 Kg', '5 Feet 11 inch', 'Never Married', 'Fit', 'Singh', 'Chouhan', NULL, NULL, 'Mau nath bhanjan', 'B.A', NULL, 'Private Job', '1-3 Lacs', 'Gov.Job ', 'House Wife', '1 brother 1 sister', '19/01/2021', '07:18:pm', 712, 'No'),
(989, ' Gopal jee gupta', 'Fair', '60-70 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'Rauniyar', '', NULL, NULL, 'Varanasi', 'MSC', NULL, 'Gov.Job ', '3-5 Lacs', 'Gov.Job ', 'House Wife', '1:3', '26/01/2021', '10:17:pm', 713, 'No'),
(991, ' Late Guru prasad gupta', 'Fair', '', '5 Feet 8 inch', 'Never Married', '', 'Sahu', 'Teli', NULL, NULL, 'Azamgarh', 'MA', NULL, 'Gov.Job ', '3-5 Lacs', 'Gov.Job ', 'House Wife', '3', '28/01/2021', '08:33:pm', 714, 'No'),
(991, ' Late guru prasad gupta', 'Fair', '', '5 Feet 8 inch', 'Never Married', '', 'Sahu', 'Teli', NULL, NULL, 'Azamgarh', 'MA', NULL, 'Gov.Job ', '3-5 Lacs', 'Gov.Job ', 'House Wife', '3', '28/01/2021', '08:42:pm', 715, 'No'),
(992, ' Dhaneshwar Sah ', 'Fair', '60-70 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Godda', 'B.Tech/BE', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', 'Only 3 sisters 2 married ', '29/01/2021', '09:20:pm', 716, 'No'),
(991, ' Late guru prasad gupta', 'Fair', '80-90 Kg', '5 Feet 8 inch', 'Never Married', 'Healthy', 'Sahu', 'Teli', NULL, NULL, 'Azamgarh', 'MA', NULL, 'Gov.Job ', '3-5 Lacs', 'Gov.Job ', 'House Wife', '5', '31/01/2021', '09:31:am', 717, 'No'),
(995, 'rajiv kumar gupta ', 'Fair', '50-60 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'baniya', '', NULL, NULL, 'Chhindwara', 'PGDCA', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1brother', '02/02/2021', '07:41:pm', 718, 'No'),
(996, ' Bhan prakash gupta', 'Fair', '60-70 Kg', '5 Feet 5 inch', 'Never Married', 'Healthy', 'madhesiya', 'kandu', NULL, NULL, 'ballia', 'BTC', NULL, 'Gov.Job ', '5-7 Lacs', 'Gov.Job ', 'Gov.Job ', '2', '08/02/2021', '07:50:am', 719, 'Yes'),
(996, ' ', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '', '08/02/2021', '07:55:am', 720, 'No'),
(997, ' ', 'Fair', '80-90 Kg', '5 Feet 8 inch', 'Never Married', 'Fit', '', '', NULL, NULL, '', 'B.A', NULL, 'Business', '5-7 Lacs', 'Business Person', 'House Wife', 'One sister', '10/02/2021', '09:52:am', 721, 'No'),
(997, 'Sh Rakesh jain ', 'Fair', '80-90 Kg', '5 Feet 8 inch', 'Never Married', 'Fit', 'Jain', 'Jain', NULL, NULL, 'Delhi', '', NULL, '', '', 'Farmer', 'House Wife', 'One sister', '10/02/2021', '01:27:pm', 722, 'No'),
(997, 'Sh Rakesh jain ', 'Fair', '80-90 Kg', '5 Feet 8 inch', 'Never Married', 'Fit', 'Jain', 'Jain', NULL, NULL, 'Delhi', 'B.A', NULL, 'Business', '5-7 Lacs', 'Business Person', 'House Wife', 'One sister', '10/02/2021', '01:27:pm', 723, 'No'),
(998, ' Kishor prasad gupta ', 'Wheatish', '60-70 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'Gupta ', 'Teli/agrwal', NULL, NULL, 'Mumbai ', 'MA', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1 brother 3 sister ', '10/02/2021', '01:29:pm', 724, 'No'),
(1000, ' Mohan Lal chaurasia', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'Chaursasia', 'Chaursasia', NULL, NULL, 'Mau', 'B.Ed', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '4 brorher', '13/02/2021', '10:02:am', 725, 'No'),
(1002, ' sury bhan gupta', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'GUPTA', 'kanykunj vaishy', NULL, NULL, 'GORAKHPUR', 'MA', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER & 2 SISTER', '15/02/2021', '07:33:pm', 726, 'No'),
(1003, ' RAM JI JAISWAL', 'Fair', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'slim', 'JAISWAL', 'JAISWAL', NULL, NULL, 'DELHI', 'B.A', NULL, 'Private Job', '', 'Business Person', 'House Wife', '2 BROTHER & 2 SISTER', '15/02/2021', '07:46:pm', 727, 'No'),
(1004, ' RAM KUMAR GUPTA', 'Fair', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'RAUNIAR', NULL, NULL, 'GORAKHPUR', 'B.Ed', NULL, 'Gov.Job ', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '1 BROTHER & 1 SISTER', '15/02/2021', '07:55:pm', 728, 'No'),
(1005, ' OM PRAKASH GUPTA', 'Fair', '', '5 Feet 3 inch', 'Never Married', 'Fit', 'GUPTA', 'VAISHYA', NULL, NULL, 'BARABANKI', 'B.Ed', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'Gov.Job ', '2 BROTHER ', '15/02/2021', '08:07:pm', 729, 'No'),
(1006, ' PRADEEP KUMAR GUPTA', 'Fair', '50-60 Kg', '5 Feet ', 'Never Married', 'Fit', 'GUPTA', 'BANIYA', NULL, NULL, 'SHAHJAHANPUR', 'B.A', NULL, '', '', 'Private Job', 'House Wife', '1 BROTHER & 0 SISTER', '15/02/2021', '08:43:pm', 730, 'No'),
(1012, ' Krishna sah', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'slim', 'Gupta', 'Halwai', NULL, NULL, 'Sasaram', 'B.A', NULL, 'Gov.Job ', '5-7 Lacs', 'Farmer', 'House Wife', '3', '20/02/2021', '07:01:pm', 732, 'No'),
(1013, ' Rakesh Gupta', 'Fair', '60-70 Kg', '', 'Never Married', 'Fit', 'Sahu teli', 'Teli', NULL, NULL, 'Ayodhya', 'BTC', NULL, 'Gov.Job ', '5-7 Lacs', 'Business Person', 'House Wife', 'Brothers none,sisters one', '23/02/2021', '09:53:pm', 733, 'No'),
(1014, ' Moti lal Gupta ', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Baniya', '', NULL, NULL, 'Alwar Rajasthan ', 'B.Com', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '1-1', '24/02/2021', '03:36:pm', 734, 'Yes'),
(1019, ' shri. khushi ram gupta ', 'Wheatish', '60-70 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'gupta ', 'mahawar', NULL, NULL, 'Alwar', 'MA', NULL, 'Private Job', '5-7 Lacs', 'Gov.Job ', 'House Wife', '3', '14/03/2021', '10:30:pm', 735, 'No'),
(1021, ' Rakesh Prakash', 'Fair', '60-70 Kg', '5 Feet 5 inch', 'Never Married', 'Healthy', '', '', NULL, NULL, 'Etawah', 'B.Ed', NULL, 'Private Job', '1-3 Lacs', 'Farmer', 'House Wife', '2 sisters', '15/03/2021', '01:39:pm', 736, 'No'),
(1025, ' Tapeshwari p sahu', 'Fair', '80-90 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Lucknow ', 'B.Tech/BE', NULL, 'Gov.Job ', '15-20 Lacs', 'Ex.SeviceMan', 'House Wife', '2 brother ', '16/03/2021', '09:43:pm', 737, 'No'),
(1027, ' Rajkumar Sahu', 'Wheatish', '80-90 Kg', '5 Feet 8 inch', 'Never Married', 'Healthy', 'Teli', '', NULL, NULL, 'Prayagraj', '', NULL, '', '', 'Farmer', 'House Wife', '1', '16/03/2021', '11:23:pm', 738, 'No'),
(1027, ' Rajkumar Sahu', 'Wheatish', '80-90 Kg', '5 Feet 8 inch', 'Never Married', 'Healthy', 'Teli', '', NULL, NULL, 'Prayagraj', '', NULL, '', '', 'Farmer', 'House Wife', '1', '16/03/2021', '11:27:pm', 739, 'No'),
(1030, ' Natthu lal', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Sc', 'Chamar', NULL, NULL, 'Hardoi up ', 'B.Ed', NULL, 'Gov.Job ', '5-7 Lacs', 'Farmer', 'House Wife', 'Six', '17/03/2021', '12:06:pm', 740, 'No'),
(1037, ' Late. Surendra k gupta', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Gupta', 'Gupta', NULL, NULL, 'Lucknow', 'B.A', NULL, 'Unemployed', '', 'Farmer', 'House Wife', '1 brother 3 sister', '17/03/2021', '07:40:pm', 741, 'No'),
(1042, ' BHIKHAM Yadav', 'Fair', '50-60 Kg', '5 Feet 6 inch', 'Never Married', 'Healthy', 'Yadav ', 'Ahir', NULL, NULL, 'Gorakhpur', 'B.A', NULL, 'Gov.Job ', '5-7 Lacs', 'Gov.Job ', 'House Wife', '3', '18/03/2021', '03:25:am', 742, 'No'),
(1043, ' Swgye kreeshna shahu', 'Fair', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Obc', 'Obc teli', NULL, NULL, 'Japla', '', NULL, '', '', 'Farmer', 'House Wife', 'Brothers 3and sister 1', '18/03/2021', '07:38:am', 743, 'No'),
(1046, ' ', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', '', '', NULL, NULL, '', 'BTC', NULL, '', '', 'Business Person', 'Business Women', '', '18/03/2021', '10:29:am', 744, 'No'),
(1050, ' Dilip Gupta', 'Fair', '', '5 Feet 3 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Kolkata', 'Other', NULL, 'Business', '', 'Business Person', 'House Wife', '', '18/03/2021', '10:45:am', 745, 'No'),
(1052, 'Premchand gupta', 'Fair', '50-60 Kg', '5 Feet 2 inch', 'Never Married', '', 'Gupta', 'Teli', NULL, NULL, 'Thane Maharashtra', 'HighSchool', NULL, '', '', 'Business Person', 'House Wife', '2 brorher', '18/03/2021', '10:53:am', 746, 'No'),
(1053, 'Dinesh kumar Sahu', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Healthy', 'Gupta', 'Teli', NULL, NULL, 'Lucknow', 'MA', NULL, '', '', 'Business Person', 'House Wife', '1 brorher', '18/03/2021', '11:00:am', 747, 'No'),
(1054, ' Kunj Mohan sahu', 'Fair', '60-70 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Ranchi', 'B.Tech/BE', NULL, 'Private Job', '5-7 Lacs', 'Business Person', 'House Wife', '2 brorher', '18/03/2021', '11:07:am', 748, 'No'),
(1057, ' Laltaprasad shahu', 'Wheatish', '', '5 Feet 6 inch', 'Never Married', 'Fit', 'Teli', 'Behaut ', NULL, NULL, 'Nagpur maharashtra ', '', NULL, '', '', 'Farmer', 'House Wife', '1 sister (married)', '18/03/2021', '08:11:pm', 749, 'No'),
(1057, ' Laltaprasad shahu', '', '', '', 'Never Married', '', 'Teli', 'Behaut', NULL, NULL, 'Nagpur (Maharashtra)', 'B.A', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '1 sister (married)', '18/03/2021', '08:18:pm', 750, 'No'),
(1063, ' Jeetnarayan Gupta', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Mulund/Allahabad', 'Other', NULL, 'Business', '5-7 Lacs', 'Business Person', 'House Wife', '1 brorher 1 sister', '19/03/2021', '07:20:am', 751, 'No'),
(1064, ' Omprakash sahu', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'slim', 'Gupta', 'Teli', NULL, NULL, 'Jhansi', 'MSC', NULL, '', '', 'Business Person', 'House Wife', '0 brother 5 sister', '19/03/2021', '07:30:am', 752, 'No'),
(1068, ' Mohd sayeed', 'Fair', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'slim', 'Teli', '', NULL, NULL, 'Rudauli', 'MSC', NULL, 'Business', '1-3 Lacs', 'Gov.Job ', 'House Wife', '1 brother 4 Sister', '19/03/2021', '09:12:am', 753, 'No'),
(1076, ' Mangaru sahu', 'Fair', '70-80 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Sahu', 'teli', NULL, NULL, 'Mumbai', 'B.A', NULL, 'Private Job', '1-3 Lacs', 'Private Job', 'House Wife', '1 brother and 1 sister', '20/03/2021', '09:24:pm', 754, 'No'),
(1078, ' Tripurari mishra', 'Fair', '60-70 Kg', '5 Feet 5 inch', 'Widowed', 'Fit', 'Brahmn', 'Malviya brahmn', NULL, NULL, 'Seorahi', 'B.Ed', NULL, 'Gov.Job ', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '2and2', '21/03/2021', '12:02:pm', 755, 'No'),
(1079, ' Sahu', 'Fair', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Gupta', '', NULL, NULL, 'Basti', 'B.Com', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '1 brorher 3 sister', '21/03/2021', '07:29:pm', 756, 'No'),
(1083, ' Nitendra Kumar Goel', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Agarwal', 'Goel', NULL, NULL, 'Meerut', 'MBA', NULL, 'Private Job', '5-7 Lacs', 'Farmer', 'House Wife', '3', '22/03/2021', '01:59:pm', 757, 'No'),
(1083, ' Nitendra Kumar Goel', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Agarwal', 'Goel', NULL, NULL, 'MEERUT', 'MBA', NULL, 'Private Job', '5-7 Lacs', 'Farmer', 'House Wife', '3', '22/03/2021', '02:05:pm', 758, 'No'),
(1024, ' Mr bahadur Lal rathour', 'Fair', '', '4 Feet 11inch', 'Never Married', 'slim', 'Rathour teli', 'Teli', NULL, NULL, 'Lakhimpur kheri', 'B.A', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '2 brother 3 sister', '23/03/2021', '09:18:am', 759, 'No'),
(1082, ' Mohan Lal sahu', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Gupta', 'Sahu', NULL, NULL, 'Jabalpur', 'M.Com', NULL, 'Unemployed', '', 'Gov.Job ', 'House Wife', '', '23/03/2021', '11:09:am', 760, 'No'),
(1078, ' Tripurari ', 'Fair', '60-70 Kg', '5 Feet 6 inch', 'Widowed', 'Fit', 'Brahmin', ' Malviya brahmin', NULL, NULL, 'Seorahi', 'MSC', NULL, 'Gov.Job ', '5-7 Lacs', 'Gov.Job ', 'House Wife', '2and2', '27/03/2021', '06:09:am', 761, 'No'),
(1089, ' Shrawan kumar', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'slim', 'Teli', 'Teli', NULL, NULL, 'Gaya', 'B.Tech/BE', NULL, 'Business', '10-15 Lacs', 'Business Person', 'House Wife', '4', '15/04/2021', '08:56:pm', 762, 'No'),
(1093, ' Mahadev', 'Fair', '', '5 Feet 5 inch', 'Never Married', 'Fit', 'Kurmi', 'Patel', NULL, NULL, 'Unnao', '', NULL, '', '', 'Farmer', 'House Wife', 'One brother', '30/04/2021', '05:29:pm', 763, 'No'),
(1094, ' ', 'Fair', '60-70 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'Sc', 'Chamar', NULL, NULL, 'Basti', 'M.Com', NULL, 'Gov.Job ', '3-5 Lacs', 'Farmer', 'House Wife', '', '30/04/2021', '05:31:pm', 764, 'No'),
(1096, ' Mede Lal', 'Very Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'slim', 'Prajapati', 'Kumhar', NULL, NULL, 'bharwa Sumerpur', 'B.Ed', NULL, 'Gov.Job ', '5-7 Lacs', 'Farmer', 'House Wife', 'two brother including me and two sisters. one brother and one sister married. brother is a Govt empl', '30/04/2021', '09:23:pm', 765, 'No'),
(1101, ' Pramod kumar gupta', 'Fair', '70-80 Kg', '5 Feet 8 inch', 'Never Married', 'Athletic', 'Gupta', 'Yagyasaini Vaish', NULL, NULL, 'Kanpur', 'MBA', NULL, 'Gov.Job ', '5-7 Lacs', 'Business Person', 'House Wife', '1', '04/05/2021', '09:48:am', 766, 'Yes'),
(1102, ' Bhagwat Prasad gupta ', 'Wheatish', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'slim', 'Halwai vashy ', 'halwai vashy ', NULL, NULL, 'Kanpur ', 'B.A', NULL, '', '', 'Business Person', 'House Wife', '2', '04/05/2021', '10:33:am', 767, 'Yes'),
(1104, ' rajesh gupta ', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'slim', 'gupta', 'vaisya ', NULL, NULL, 'shahdol', 'HighSchool', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '2 sister ', '04/05/2021', '12:30:pm', 768, 'No'),
(1090, ' Hajari shaw', 'Wheatish', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Athletic', 'Telli', 'Gupta,shaw', NULL, NULL, 'Kolkata', 'B.Ed', NULL, 'Unemployed', '', 'Business Person', 'House Wife', 'Three brothers and me', '04/05/2021', '01:20:pm', 769, 'No'),
(1104, ' rajesh gupta ', 'Fair', '50-60 Kg', '5 Feet ', 'Never Married', 'slim', 'gupta', 'vaisya ', NULL, NULL, 'shahdol', 'HighSchool', NULL, 'Business', '', 'Business Person', 'House Wife', '2 sister ', '04/05/2021', '07:17:pm', 770, 'No'),
(1106, ' Vinod Kumar gupta', 'Wheatish', '60-70 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'Baniya', 'Varshney', NULL, NULL, 'Chandausi', 'B.Com', NULL, 'Business', '3-5 Lacs', 'Gov.Job ', 'House Wife', '1 brother 1 sister', '06/05/2021', '11:32:am', 771, 'Yes'),
(1115, ' Omprakash Gupta', 'Fair', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'Athletic', 'Agrawal', 'Mittal', NULL, NULL, 'Morena', 'B.Tech/BE', NULL, 'Gov.Job ', '15-20 Lacs', 'Business Person', 'House Wife', '2', '08/05/2021', '08:37:pm', 772, 'No'),
(1116, ' Gurpal singh', 'Very Fair', '70-80 Kg', '5 Feet 10 inch', 'Never Married', 'slim', 'Maid rajput', 'Bagga', NULL, NULL, 'Hoshiarpur', 'MBA', NULL, 'Business', '7-10 Lacs', 'Ex.SeviceMan', 'House Wife', '03 elder sisters ', '10/05/2021', '11:41:am', 773, 'No'),
(1122, ' Suresh kumar', 'Wheatish', '50-60 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'Gupta ', 'Bhurji', NULL, NULL, 'Raebareli', 'MA', NULL, 'Gov.Job ', '5-7 Lacs', 'Farmer', 'House Wife', '2 elder brothers', '13/05/2021', '10:09:am', 774, 'No'),
(1123, ' Phulgen patel', 'Fair', '60-70 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Obc', '??????', NULL, NULL, 'Mirzapur up', 'MSC', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '1brothers/2sister', '13/05/2021', '10:24:am', 775, 'No'),
(1123, ' Phulgen patel', 'Fair', '60-70 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Obc', 'Kurmi', NULL, NULL, 'Mirzapur', 'MSC', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '1brother/2sistetr', '13/05/2021', '10:27:am', 776, 'No'),
(1129, ' Subhash Chandra sahu', 'Wheatish', '60-70 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Prayagraj', 'MBA', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '4 Brothers and 1 Sister', '13/05/2021', '01:57:pm', 777, 'No'),
(1136, ' Kuldeep kumar duggal', 'Fair', '80-90 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'Punjabi', 'Khatri', NULL, NULL, 'Saharanpur (uttarpra', 'HighSchool', NULL, 'Business', '', 'Private Job', 'House Wife', 'One sister married ', '13/05/2021', '02:59:pm', 778, 'No'),
(1138, ' Ravinder Singh ', 'Fair', '60-70 Kg', '5 Feet 9 inch', 'Divorced', 'slim', 'Chandhok ', 'Chandhok ', NULL, NULL, 'Patiala ', '', NULL, '', '', 'Farmer', 'House Wife', '1 brother 1 sister ', '13/05/2021', '03:02:pm', 779, 'No'),
(1143, ' Avtar singh bagga ', 'Fair', '60-70 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'Bagga', '', NULL, NULL, 'Rai bareli ', '', NULL, 'Business', '10-15 Lacs', 'Business Person', 'House Wife', '2', '14/05/2021', '05:08:pm', 780, 'No'),
(1147, ' Suresh chandra gupta ', 'Fair', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'Healthy', 'Teli', 'Gupta ', NULL, NULL, 'Prayagraj utter prad', 'B.A', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '2 brother and 1 sister ', '15/05/2021', '11:16:pm', 781, 'No'),
(1147, ' Suresh chandra gupta ', 'Fair', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'Healthy', 'Teli', 'Gupta ', NULL, NULL, 'Prayagraj utter prad', 'B.A', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '2 brother and 1 sister ', '15/05/2021', '11:16:pm', 782, 'No'),
(1151, ' ', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Divorced', 'Fit', '', '', NULL, NULL, '', 'Law', NULL, 'Private Job', '5-7 Lacs', 'Ex.SeviceMan', 'House Wife', '', '19/05/2021', '05:14:pm', 783, 'No'),
(1155, ' OM PRAKASH', 'Wheatish', '50-60 Kg', '5 Feet 6 inch', 'Never Married', 'slim', 'SC', 'Dhobi', NULL, NULL, 'PILIBHIT', 'B.Tech/BE', NULL, 'Private Job', '1-3 Lacs', 'Farmer', 'House Wife', '2 BROTHER AND 4 SISTERS', '20/05/2021', '03:51:pm', 784, 'No'),
(1151, 'Subhash Chandra Gautam', 'Fair', '70-80 Kg', '5 Feet 7 inch', 'Divorced', 'Fit', 'Brahmin', 'Gautam', NULL, NULL, 'New Delhi', 'Law', NULL, 'Private Job', '5-7 Lacs', 'Ex.SeviceMan', 'House Wife', '1', '22/05/2021', '10:54:am', 785, 'No'),
(1156, ' Late purshottam kesharwani', 'Wheatish', '60-70 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'Baniya', 'Baniya', NULL, NULL, 'Allahbaad', 'B.A', NULL, 'Business', '5-7 Lacs', 'Business Person', 'House Wife', '1 big brother 1sister', '22/05/2021', '05:16:pm', 786, 'No'),
(1157, ' Suresh Sahu', 'Wheatish', '50-60 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'Sahu ', 'Teli ', NULL, NULL, 'Jhansi ', 'BSC', NULL, 'Business', '7-10 Lacs', 'Business Person', 'House Wife', '1 Brother and 1 Sister ', '24/05/2021', '01:32:pm', 787, 'No'),
(1158, ' Late Ram khelawan sah', 'Very Fair', '50-60 Kg', '5 Feet 6 inch', 'Never Married', 'slim', 'Teli', 'Kanujiya', NULL, NULL, 'Sitamarhi', 'B.Tech/BE', NULL, 'Business', '7-10 Lacs', 'Gov.Job ', 'House Wife', '2 brothers and 3 sisters', '26/05/2021', '02:51:pm', 788, 'No'),
(1159, ' Late BALKRISHNA SHASTRI', 'Fair', '70-80 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'Schedule caste', 'Chamar', NULL, NULL, 'MAU NATH BHANJAN', 'B.Ed', NULL, 'Gov.Job ', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '1 bro & 3 sis', '27/05/2021', '11:04:am', 789, 'No'),
(1168, 'Ram', '', '60-70 Kg', '5 Feet 8 inch', 'Divorce In Process', 'Fit', 'Brahmin', '', NULL, NULL, 'Unnao', 'B.Ed', NULL, 'Gov.Job ', '5-7 Lacs', 'Farmer', 'House Wife', '0', '02/06/2021', '06:27:pm', 790, 'No'),
(1168, ' Ram', 'Fair', '60-70 Kg', '5 Feet 8 inch', 'Divorce In Process', 'Fit', 'Brahmin', '', NULL, NULL, 'Unnao', 'B.Ed', NULL, 'Gov.Job ', '5-7 Lacs', 'Farmer', 'House Wife', '0', '02/06/2021', '06:29:pm', 791, 'No'),
(1172, ' Shivdutt mishra', 'Wheatish', '90-100 Kg', '6 Feet 1 inch', 'Never Married', 'Fit', 'Brahman', 'Mishra', NULL, NULL, 'Orai', 'MCA', NULL, 'Business', '', 'Business Person', 'House Wife', '2 sister', '04/06/2021', '02:23:pm', 792, 'No'),
(1183, ' DILIP KUMAR GUPTA', 'Wheatish', '80-90 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'CHANDAULI', 'Phd', NULL, 'Gov.Job ', '7-10 Lacs', 'Gov.Job ', 'House Wife', '2 BROTHER ', '07/06/2021', '05:23:pm', 793, 'No'),
(1184, ' Mahavir p sahu', 'Fair', '', '5 Feet 3 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Allahabad', 'MBA', NULL, 'Gov.Job ', '5-7 Lacs', 'Ex.SeviceMan', 'House Wife', '4 brorher 1 sister', '07/06/2021', '05:44:pm', 794, 'No'),
(1185, ' Santosh Gupta', 'Wheatish', '70-80 Kg', '5 Feet 10 inch', 'Never Married', 'slim', 'Gupta', 'Teli', NULL, NULL, 'Maharashtra', 'B.A', NULL, '', '', 'Farmer', 'House Wife', '1 brorher', '07/06/2021', '05:59:pm', 795, 'No'),
(1186, ' Rambachan Gupta', 'Fair', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'slim', 'Gupta', 'Teli', NULL, NULL, 'Mumbai', 'Other', NULL, 'Business', '5-7 Lacs', 'Business Person', 'House Wife', '---', '07/06/2021', '06:06:pm', 796, 'No'),
(1187, ' ', 'Fair', '60-70 Kg', '5 Feet 4 inch', 'Never Married', 'slim', 'Gupta', 'Teli', NULL, NULL, 'Hamirpur', 'HighSchool', NULL, 'Business', '1-3 Lacs', 'Farmer', 'House Wife', '', '07/06/2021', '06:12:pm', 797, 'No'),
(1188, ' Amarjeet Gupta', 'Fair', '70-80 Kg', '5 Feet 11 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Mumbai', 'B.Com', NULL, 'Business', '10-15 Lacs', 'Business Person', 'House Wife', '1 brorher 1 sister', '07/06/2021', '06:25:pm', 798, 'No'),
(1190, ' Surendra kumar', 'Fair', '60-70 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'Verma', 'Kurmi', NULL, NULL, 'Mahmudabad sitapur', 'B.Tech/BE', NULL, 'Gov.Job ', '7-10 Lacs', 'Business Person', 'House Wife', 'One younger brother and two sisters', '10/06/2021', '11:06:pm', 799, 'No'),
(1172, ' Shri Shivdutt Mishra ', 'Wheatish', '70-80 Kg', '6 Feet 1 inch', 'Never Married', 'Fit', 'Brahmin', 'Kanykubj ', NULL, NULL, 'Orai, Uttar Pradesh ', '', NULL, '', '', 'Farmer', 'House Wife', 'One sister, no brother ', '16/06/2021', '03:10:pm', 800, 'No'),
(1172, ' Shri Shivdutt Mishra ', 'Wheatish', '70-80 Kg', '6 Feet 1 inch', 'Never Married', 'Fit', 'Brahmin', 'Kanykubj ', NULL, NULL, 'Orai, Uttar Pradesh ', '', NULL, '', '', 'Farmer', 'House Wife', 'One sister, no brother ', '16/06/2021', '03:10:pm', 801, 'No'),
(1172, ' Shri Shivdutt Mishra ', 'Wheatish', '70-80 Kg', '6 Feet 1 inch', 'Never Married', 'Fit', 'Brahmin', 'Kanykubj ', NULL, NULL, 'Orai, Uttar Pradesh ', '', NULL, '', '', 'Farmer', 'House Wife', 'One sister, no brother ', '16/06/2021', '03:10:pm', 802, 'No'),
(1172, ' Shri Shivdutt Mishra ', 'Wheatish', '70-80 Kg', '6 Feet 1 inch', 'Never Married', 'Fit', 'Brahmin', 'Kanykubj ', NULL, NULL, 'Orai, Uttar Pradesh ', '', NULL, '', '', 'Farmer', 'House Wife', 'One sister, no brother ', '16/06/2021', '03:10:pm', 803, 'No'),
(1172, ' Shri Shivdutt Mishra ', 'Wheatish', '70-80 Kg', '6 Feet 1 inch', 'Never Married', 'Fit', 'Brahmin', 'Kanykubj ', NULL, NULL, 'Orai, Uttar Pradesh ', '', NULL, '', '', 'Farmer', 'House Wife', 'One sister, no brother ', '16/06/2021', '03:10:pm', 804, 'No'),
(1192, ' Prem ', 'Wheatish', '60-70 Kg', '5 Feet 4 inch', 'Divorced', 'Healthy', 'Gupta', 'Baniya', NULL, NULL, 'Delhi', 'B.Com', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '1 brother', '17/06/2021', '08:13:pm', 805, 'No'),
(1193, ' ', 'Wheatish', '70-80 Kg', '5 Feet 5 inch', 'Divorced', 'Fit', 'Sahu', 'Teli', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '', '24/06/2021', '09:35:am', 806, 'No'),
(1200, ' Kedar Nath Gupta', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'Gupta', 'Sahu', NULL, NULL, 'Madhuban mau', 'BDS', NULL, 'Business', '5-7 Lacs', 'Business Person', 'House Wife', '2 brother 2 sister', '14/07/2021', '03:40:pm', 807, 'No'),
(1200, ' ', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '', '14/07/2021', '03:55:pm', 808, 'No'),
(1200, ' ', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '', '15/07/2021', '09:15:pm', 809, 'No'),
(1200, ' ', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '', '15/07/2021', '09:15:pm', 810, 'No'),
(1202, ' santosh kumar gupta', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'gupta ', 'teli', NULL, NULL, 'ghazipur', 'BSC', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '1 brother 2 sister', '17/07/2021', '11:04:pm', 811, 'No'),
(1207, ' Late. Ram Chandra ', 'Wheatish', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'Gautam', 'Chamar', NULL, NULL, 'Lucknow', 'BTC', NULL, '', '', 'Ex.SeviceMan', 'House Wife', '1 brorher 2 sister', '28/08/2021', '09:36:am', 812, 'No'),
(1211, ' Ramvatar Sahani', 'Fair', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'Mallah', '', NULL, NULL, 'Mau', 'MCA', NULL, 'Private Job', '10-15 Lacs', 'Farmer', 'House Wife', '2', '2021-09-06 18:2', '06:21:pm', 814, 'No'),
(1217, ' Late sh somnath Arora ', 'Fair', '70-80 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Arora', 'Panjabi ', NULL, NULL, 'Kurukshetra village ', '', NULL, '', '', 'Farmer', 'House Wife', '2brother', '2021-10-14 21:5', '09:52:pm', 815, 'No'),
(1217, ' Late sh Somnath Arora ', 'Fair', '70-80 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Arora ', 'Panjabi ', NULL, NULL, 'Kurukshetra village ', '', NULL, '', '', 'Farmer', 'House Wife', 'brothers ', '2021-10-14 21:5', '09:54:pm', 816, 'No'),
(1222, ' Suresh singh ', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Rajput', 'Rajput', NULL, NULL, 'gujrat', 'Other', NULL, 'Private Job', '1-3 Lacs', 'Private Job', 'House Wife', '1 brother ', '2021-11-30 10:0', '10:01:am', 817, 'No'),
(1224, ' ABHIRENDRA', 'Wheatish', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Healthy', 'Hindu', 'Brahmin ', NULL, NULL, 'Lucknow ', 'M.Ed', NULL, 'Private Job', '1-3 Lacs', 'Farmer', 'Gov.Job ', '1', '2021-12-01 00:2', '12:28:am', 818, 'No'),
(1225, ' Shri subhash chander ', 'Fair', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'Athletic', 'Arora', 'Watts', NULL, NULL, 'Sri gangangar ', 'MA', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '2', '2021-12-01 09:3', '09:32:am', 819, 'No'),
(1226, ' L. P Gupta ', 'Fair', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'slim', 'Gupta ', 'Bhojwal ', NULL, NULL, 'Sitapur', '', NULL, '', '', 'Farmer', 'House Wife', 'No', '2021-12-02 14:4', '02:40:pm', 820, 'No'),
(1228, ' B.P.Gupta', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', '', 'Gupta', 'teli', NULL, NULL, 'lucknow', 'B.Ed', NULL, 'Private Job', '1-3 Lacs', 'Farmer', 'House Wife', '', '2021-12-03 14:3', '02:38:pm', 821, 'No'),
(1236, ' ', 'Fair', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'Swarnkar', 'Sah', NULL, NULL, 'Bhagalpur', '', NULL, '', '', 'Farmer', 'House Wife', '3', '2021-12-13 11:0', '11:03:am', 823, 'No'),
(1238, ' Satyanarayan gupta', 'Wheatish', '60-70 Kg', '5 Feet 10 inch', 'Divorced', 'slim', 'Jaiswal', 'Baniya', NULL, NULL, 'Mumbai', 'B.Com', NULL, 'Private Job', '1-3 Lacs', 'Ex.SeviceMan', 'House Wife', '1brither 3sister', '2022-01-23 07:1', '07:17:am', 824, 'No'),
(1237, ' ', 'Dusky', '60-70 Kg', '5 Feet 11 inch', 'Never Married', 'Healthy', '', '', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '', '2022-01-23 18:5', '06:59:pm', 827, 'No'),
(1238, ' Satyanarayan gupta', 'Wheatish', '60-70 Kg', '5 Feet 11 inch', 'Divorced', 'slim', 'Gupta', 'Baniya', NULL, NULL, 'Mumbai', 'B.Com', NULL, 'Private Job', '1-3 Lacs', 'Ex.SeviceMan', 'House Wife', '1brither 3sister', '2022-01-24 22:5', '10:58:pm', 828, 'No'),
(1239, ' Om Prakash gupta', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Widowed', 'slim', 'Vaisy baniya', 'Baniya', NULL, NULL, 'Loni Gariyaband', 'B.A', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', 'Brother 3 sister 3 married', '2022-02-15 05:4', '05:41:am', 829, 'No'),
(1239, ' Om Prakash gupta', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Widowed', 'slim', 'Vaisy baniya', 'Baniya', NULL, NULL, 'Loni Gariyaband', 'B.A', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', 'Brother 3 sister 3 married', '2022-02-15 05:4', '05:41:am', 830, 'No'),
(1242, ' LATE BISHWANATH SAH', 'Fair', '', '5 Feet 11 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'RANCHI', 'MBA', NULL, 'Private Job', '10-15 Lacs', 'Farmer', 'Ex.SeviceMan', '', '2022-02-28 08:0', '08:02:am', 831, 'No'),
(1243, ' L. PRASHAD', 'Fair', '', '5 Feet 2 inch', 'Divorced', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'MAU', 'B.Ed', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '', '2022-02-28 08:1', '08:10:am', 832, 'No'),
(1244, ' HIRALAL SHAW', 'Wheatish', '', '5 Feet 3 inch', 'Never Married', 'Fit', 'GUPTA', 'SAHU', NULL, NULL, 'BANGALOR', 'MSC', NULL, 'Private Job', '', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2022-02-28 08:2', '08:21:am', 833, 'No'),
(1245, ' anish kumar sahu', 'Fair', '', '5 Feet 5 inch', 'Never Married', 'Fit', 'GUPTA', 'SAHU', NULL, NULL, 'Ahemdabad', '', NULL, '', '', 'Farmer', 'House Wife', '1 BROTHER & 0 SISTER', '2022-02-28 20:2', '08:21:pm', 834, 'No'),
(1245, ' anish kumar sahu', 'Fair', '', '5 Feet 5 inch', 'Never Married', 'Fit', 'GUPTA', 'SAHU', NULL, NULL, 'Ahemdabad', 'ITI/Diploma', NULL, 'Private Job', '', 'Business Person', 'House Wife', '1 BROTHER & 0 SISTER', '2022-02-28 20:2', '08:23:pm', 835, 'No'),
(1246, 'Hajari prashad', 'Fair', '', '5 Feet 2 inch', 'Never Married', 'slim', 'GUPTA', 'SAHU', NULL, NULL, 'pATNA', 'B.A', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-02-28 20:2', '08:29:pm', 836, 'No'),
(1247, ' CHIRAUNJI LAL GUPTA', 'Fair', '', '5 Feet 5 inch', 'Never Married', 'Fit', 'GUPTA', 'SAHU', NULL, NULL, 'PRATAPGARH', 'BDS', NULL, 'Business', '5-7 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2022-02-28 20:4', '08:42:pm', 837, 'No'),
(1248, ' JHAGADU GUPTA', 'Wheatish', '', '5 Feet 10 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI', '', NULL, 'Gov.Job ', '5-7 Lacs', 'Gov.Job ', 'House Wife', '0 BROTHER & 2 SISTER', '2022-02-28 20:5', '08:53:pm', 838, 'No'),
(1249, ' Dr. Omprakash Gupta', 'Fair', '', '6 Feet ', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Azamghar', 'MBBS/MD', NULL, 'Gov.Job ', '5-7 Lacs', 'Farmer', 'House Wife', '2 brorher', '2022-03-03 15:0', '03:00:pm', 839, 'No'),
(1250, ' Mangal Prashad Gupta', 'Fair', '', '5 Feet 3 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Kanpur', 'M.Tech', NULL, 'Gov.Job ', '5-7 Lacs', 'Private Job', 'House Wife', '2 brorher', '2022-03-03 15:0', '03:07:pm', 840, 'No'),
(1251, ' Laxman Prashad', 'Fair', '', '5 Feet 6 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Buxar', 'BSC', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '', '2022-03-03 15:1', '03:13:pm', 841, 'No'),
(1252, ' Dinesh kumar sahu', 'Fair', '', '5 Feet 9 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Gopalganj', 'MBBS/MD', NULL, 'Gov.Job ', '7-10 Lacs', 'Ex.SeviceMan', 'Ex.SeviceMan', '2 brorher', '2022-03-03 15:2', '03:20:pm', 842, 'No'),
(1253, 'Lalan Gupta', 'Fair', '', '5 Feet 5 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Chhattisgarh', 'B.Tech/BE', NULL, 'Private Job', '', 'Private Job', 'House Wife', '1 brorher 1 sister', '2022-03-03 15:3', '03:32:pm', 843, 'No'),
(1254, ' Munna Prasad Gupta', 'Fair', '', '4 Feet 4inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Varanasi', 'BCA', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 brorher', '2022-03-03 15:5', '03:50:pm', 844, 'No'),
(1255, ' Krishna Sahu', 'Fair', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Gaya', 'MBA', NULL, 'Private Job', '3-5 Lacs', 'Private Job', 'House Wife', '', '2022-03-03 15:5', '03:57:pm', 845, 'No'),
(1256, ' Ramesh sah', 'Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Mau', 'MSC', NULL, '', '', 'Business Person', 'House Wife', '2 brorher', '2022-03-03 16:3', '04:32:pm', 846, 'No'),
(1258, ' Mahendra Gupta', 'Fair', '', '5 Feet ', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Azamghar', 'M.Com', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '2 brorher 1 sister', '2022-03-03 17:1', '05:13:pm', 848, 'No'),
(1259, ' Ramesh Chandra sahu', 'Fair', '', '5 Feet 3 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Bhopal', 'B.Tech/BE', NULL, 'Private Job', '20-40 Lacs', 'Business Person', 'House Wife', '1 brorher 2 sister', '2022-03-03 18:2', '06:26:pm', 849, 'Yes'),
(1260, ' Jitendra Gupta', 'Fair', '', '5 Feet 7 inch', 'Never Married', 'Healthy', 'Gupta', 'Teli', NULL, NULL, 'Jharkhand', 'MBA', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'Business Women', '2 brorher', '2022-03-06 14:3', '02:38:pm', 850, 'No'),
(1265, ' Mr. Ramesh Chand sahu', 'Fair', '', '5 Feet 10 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Lucknow', 'B.Com', NULL, 'Gov.Job ', '5-7 Lacs', 'Ex.SeviceMan', 'House Wife', '0 brorher 1 sister', '2022-05-07 17:4', '05:44:pm', 852, 'No'),
(1266, ' Vinod Prasad Sah', 'Fair', '', '5 Feet 10 inch', 'Never Married', 'Fit', 'Teli', 'Teli', NULL, NULL, 'Samastipur', 'BTC', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '', '2022-05-07 18:0', '06:04:pm', 853, 'No'),
(1267, ' Mr. Rakesh Gupta', 'Fair', '', '5 Feet 7 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Gorakhpur', 'B.Com', NULL, '', '', 'Farmer', 'House Wife', '1 brorher 1 sister', '2022-05-07 18:1', '06:13:pm', 854, 'No'),
(1268, ' Ramesh Gupta', 'Wheatish', '', '5 Feet 6 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Sarita Vihar New Del', 'B.A', NULL, 'Private Job', '', 'Business Person', 'House Wife', '1 brorher 1 sister', '2022-05-07 18:2', '06:20:pm', 855, 'No'),
(1269, ' ', 'Fair', '', '5 Feet 8 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, '', 'B.Ed', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '', '2022-05-08 10:1', '10:19:am', 856, 'No');
INSERT INTO `sdetails` (`did`, `fname`, `scolour`, `sweight`, `sheight`, `sstatus`, `sbody`, `scast`, `sbcast`, `srasi`, `stob`, `spob`, `sedu`, `sedudetail`, `soccupation`, `sincome`, `foccu`, `moccu`, `bs`, `sdate`, `stime`, `id`, `smangal`) VALUES
(1271, ' ', 'Fair', '', '5 Feet 3 inch', 'Never Married', 'Fit', 'Gupta', 'T', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '', '2022-05-08 14:0', '02:01:pm', 857, 'No'),
(1271, ' MR. RAJKUMAR GUPTA', 'Fair', '', '5 Feet 3 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'GORAKHPUR', 'B.Ed', NULL, '', '', 'Business Person', 'House Wife', '2 brother 0 sister', '2022-05-08 14:0', '02:05:pm', 858, 'No'),
(1273, ' Harinarayan Gupta', 'Fair', '60-70 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Gorakhpur', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '5 brorher 1 sister', '2022-05-08 14:1', '02:16:pm', 859, 'No'),
(1274, ' Vinod kumar gupta', 'Wheatish', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'pratapgargh', 'B.A', NULL, 'Business', '', 'Business Person', 'House Wife', '2 brorher 1 sister', '2022-05-08 14:2', '02:29:pm', 860, 'No'),
(1275, ' Bharat lal gupta ', 'Fair', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Gorakhpur', 'MA', NULL, '', '', 'Business Person', 'House Wife', '2 brorher', '2022-05-08 14:3', '02:39:pm', 861, 'No'),
(1276, ' Mr.Pannalal gupta', 'Fair', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Ghazipur', 'MA', NULL, '', '', 'Business Person', 'House Wife', '', '2022-05-08 14:5', '02:58:pm', 862, 'No'),
(1277, ' Umesh Prasad sah', 'Fair', '', '6 Feet ', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'New Delhi', 'MCA', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 brorher 1 sister', '2022-05-08 15:1', '03:11:pm', 863, 'No'),
(1278, ' Ashok kumar shaw', 'Fair', '', '5 Feet 3 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Burdwan West Bengal', 'B.Com', NULL, 'Private Job', '', 'Business Person', 'House Wife', '1 brorher', '2022-05-08 15:2', '03:25:pm', 864, 'Yes'),
(1279, ' Deena Nath Gupta', 'Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Deoria', 'B.A', NULL, '', '', 'Business Person', 'House Wife', '2 brorher', '2022-05-09 11:1', '11:13:am', 865, 'No'),
(1280, ' Murari Lal Sahu', 'Fair', '', '', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Chhattisgarh', 'MSC', NULL, 'Private Job', '', 'Business Person', 'House Wife', '1 brorher 1 sister', '2022-05-09 14:4', '02:40:pm', 866, 'No'),
(1281, ' Om prakash sahu', 'Fair', '', '5 Feet ', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Prayagraj', 'M.Com', NULL, '', '', 'Business Person', 'House Wife', '2 brorher 1 sister', '2022-05-09 14:4', '02:47:pm', 867, 'No'),
(1282, ' Rambaboo sahu', 'Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Bhopal', 'M.Com', NULL, '', '', 'Farmer', 'House Wife', '', '2022-05-09 16:1', '04:14:pm', 868, 'No'),
(1283, ' Manohar Lal Gupta', 'Wheatish', '60-70 Kg', '5 Feet 2 inch', 'Never Married', '', 'Gupta', 'Chamar', NULL, NULL, 'Ghazipur', 'ITI/Diploma', NULL, 'Private Job', '', 'Business Person', 'House Wife', '1 brorher 1 sister', '2022-05-11 06:4', '06:42:am', 869, 'No'),
(1284, ' Satya Narayan Gupta', 'Fair', '', '5 Feet 3 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Azamghar', 'BTC', NULL, '', '', 'Business Person', 'House Wife', '1 brorher 1 sister', '2022-05-11 06:5', '06:51:am', 870, 'No'),
(1285, ' Mahesh saw', 'Fair', '', '5 Feet ', 'Never Married', 'Fit', 'Saw ', 'Sahu ', NULL, NULL, 'Bokaro jharkhand', 'B.A', NULL, '', '', 'Business Person', 'House Wife', '1 brother', '2022-05-11 11:1', '11:16:am', 871, 'No'),
(1286, ' Shyam Nath Sah', 'Fair', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Muzaffarpur', 'Intermediate', NULL, '', '', 'Business Person', 'House Wife', '2 brorher 2 sister', '2022-05-11 11:2', '11:27:am', 872, 'No'),
(1287, ' Ashok shaw', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'West Bengal', 'MA', NULL, '', '', 'Business Person', 'House Wife', '0 brorher 0 sister', '2022-05-11 11:3', '11:36:am', 873, 'No'),
(1288, ' Ram Naresh sah', 'Fair', '', '5 Feet 6 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Muzaffarpur', 'B.A', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '1 brorher 2 sister', '2022-05-11 11:4', '11:47:am', 874, 'No'),
(1290, ' Sankar Gupta', 'Wheatish', '', '5 Feet ', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Thane Maharashtra', 'B.A', NULL, '', '', 'Business Person', 'House Wife', '2 brorher 1 sister', '2022-05-11 11:5', '11:58:am', 875, 'Yes'),
(1291, ' Gangaram gupta', 'Fair', '', '5 Feet 5 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Mumbai', 'B.Tech/BE', NULL, 'Private Job', '15-20 Lacs', 'Business Person', 'House Wife', '2 brorher 1 sister', '2022-05-11 15:5', '03:53:pm', 876, 'No'),
(1292, ' B. P. Sahu', 'Fair', '', '6 Feet 1 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Gonda', 'B.A', NULL, '', '', 'Farmer', 'House Wife', '', '2022-05-16 10:5', '10:54:am', 877, 'No'),
(1293, ' GANGA SAGAR GUPTA', 'Fair', '', '5 Feet 6 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHKHPUR', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Farmer', 'House Wife', '2 BROTHER ', '2022-05-23 15:1', '03:19:pm', 878, 'No'),
(1294, ' SUNIL KUMAR SHAH', 'Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'SAHU', NULL, NULL, 'JAUNPUR', 'B.A', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 2 SISTER', '2022-05-23 15:2', '03:25:pm', 879, 'No'),
(1295, ' SHYAM SHARAN SAH', 'Fair', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'PATNA', 'M.Com', NULL, 'Gov.Job ', '3-5 Lacs', 'Gov.Job ', 'House Wife', '2 BROTHER & 2 SISTER', '2022-05-23 15:3', '03:33:pm', 880, 'No'),
(1296, ' DINESH KUMAR SAHU', 'Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'KANPUR', 'B.Ed', NULL, '', '', 'Farmer', 'House Wife', '2 BROTHER & 1 SISTER', '2022-05-23 15:3', '03:37:pm', 881, 'No'),
(1297, ' RAM PYARE GUPTA', 'Wheatish', '', '5 Feet 3 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'MA', NULL, '', '', 'Business Person', 'House Wife', '', '2022-05-23 15:4', '03:41:pm', 882, 'No'),
(1298, ' Santosh Gupta', 'Fair', '', '5 Feet ', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Deoria', 'M.Com', NULL, '', '', 'Business Person', 'House Wife', '1 brorher 3 sister', '2022-05-23 15:5', '03:51:pm', 883, 'No'),
(1299, ' Vinay kumar gupta', 'Fair', '70-80 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Akbarpur', 'B.Tech/BE', NULL, 'Private Job', '10-15 Lacs', 'Gov.Job ', 'House Wife', '1 brorher 2 sister', '2022-05-23 15:5', '03:58:pm', 884, 'No'),
(1300, ' SURENDRA PRASAD GUPTA', 'Fair', '60-70 Kg', '5 Feet ', 'Never Married', 'Healthy', 'GUPTA', 'TELI', NULL, NULL, 'DEORIA', 'MA', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 0 SISTER', '2022-05-23 16:1', '04:10:pm', 885, 'No'),
(1301, ' ASHWANI KUMAR', 'Fair', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'GONDA', 'B.Tech/BE', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-05-23 16:1', '04:15:pm', 886, 'Yes'),
(1302, ' SURENDRE PRASAD', 'Wheatish', '', '5 Feet 5 inch', '', '', 'GUPTA', 'TELI', NULL, NULL, 'AURANGABAD BIHAR', 'B.A', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER & 2 SISTER', '2022-05-24 07:1', '07:16:am', 887, 'No'),
(1303, ' RAMCHANDRA GUPTA', 'Fair', '60-70 Kg', '5 Feet 11 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'KUSHINAGAR', 'B.Com', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-05-24 07:2', '07:27:am', 888, 'Yes'),
(1305, ' ', 'Fair', '', '5 Feet 10 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'LUDHIANA', 'B.A', NULL, 'Business', '', 'Farmer', 'House Wife', '', '2022-05-24 07:3', '07:36:am', 889, 'No'),
(1306, ' RAMAKANT', 'Fair', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'LUDHIANA', 'Nursing', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '0 BROTHER & 2 SISTER', '2022-05-24 07:4', '07:43:am', 890, 'No'),
(1307, ' SHIV PRAKASH GUPTA', 'Fair', '', '5 Feet 5 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'SANT KABIR NAGAR', 'BTC', NULL, '', '', 'Business Person', 'House Wife', '2 BROTHER & 2 SISTER', '2022-05-24 07:4', '07:47:am', 891, 'No'),
(1308, ' RAMESH GUPTA', 'Wheatish', '', '5 Feet 8 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'DELHI', 'Intermediate', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-05-24 07:5', '07:53:am', 892, 'No'),
(1309, ' PREM LAL GUPTA', 'Fair', '80-90 Kg', '5 Feet 10 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'KANPUR', 'BSC', NULL, 'Gov.Job ', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '0 BROTHER & 2 SISTER', '2022-05-24 07:5', '07:59:am', 893, 'No'),
(1311, ' DEVESH RAMDAYAL SAHU', 'Fair', '', '5 Feet 6 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI', 'BDS', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER ', '2022-05-24 20:2', '08:27:pm', 894, 'No'),
(1312, ' LATE Dr. SS RATHORE', 'Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'KANPUR', 'MBBS/MD', NULL, 'Business', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '1 BROTHER & 3 SISTER', '2022-05-24 20:3', '08:35:pm', 895, 'No'),
(1314, ' GANGA SAGAR GUPTA', 'Fair', '', '5 Feet 5 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'ITI/Diploma', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER ', '2022-05-24 20:4', '08:44:pm', 896, 'No'),
(1315, ' MAHENDRA GUPTA', 'Wheatish', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI', 'M.Com', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '3 BROTHER & 1 SISTER', '2022-05-24 20:5', '08:53:pm', 897, 'No'),
(1318, ' munnalal gupta', 'Fair', '', '6 Feet ', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'JAUNPUR', 'M.Com', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 3 SISTER', '2022-05-26 15:2', '03:23:pm', 898, 'No'),
(1319, ' ITESH SAW', 'Very Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'DHANBAD', 'B.A', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER & 3 SISTER', '2022-05-26 15:3', '03:31:pm', 899, 'No'),
(1320, ' DILIP KUMAR GUPTA', 'Wheatish', '', '5 Feet 11 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'VARANASI', 'Other', NULL, 'Private Job', '', 'Business Person', 'House Wife', '3 BROTHER ', '2022-05-26 15:3', '03:36:pm', 900, 'No'),
(1321, ' DILIP KUMAR SAHU', '', '', '', '', '', 'GUPTA', 'TELI', NULL, NULL, 'LUCKNOW', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 0 SISTER', '2022-05-26 15:4', '03:42:pm', 901, 'No'),
(1322, ' SURYANATH GUPTA', 'Fair', '', '5 Feet 3 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'AZAMGHAR', 'M.Com', NULL, '', '', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2022-05-26 15:4', '03:46:pm', 902, 'No'),
(1323, ' BASUDEO GUPTA', 'Very Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'MA', NULL, '', '', 'Ex.SeviceMan', 'House Wife', '4 BROTHER & 2 SISTER', '2022-05-26 21:0', '09:01:pm', 903, 'No'),
(1324, ' MOHAN LAL SAH', 'Fair', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI', 'B.Com', NULL, 'Gov.Job ', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '1 BROTHER & 1 SISTER', '2022-05-26 21:0', '09:08:pm', 904, 'No'),
(1325, ' SURESH CHANDRA GUPTA', 'Very Fair', '', '5 Feet ', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'BTC', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-05-26 21:1', '09:12:pm', 905, 'No'),
(1326, ' VIJAY KRISHNA GUPTA', 'Fair', '', '5 Feet 11 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'AZAMGHAR', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-05-26 21:1', '09:18:pm', 906, 'No'),
(1327, ' ', 'Wheatish', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'GHAZIPUR', 'ITI/Diploma', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '', '2022-05-26 21:2', '09:21:pm', 907, 'No'),
(1328, ' CHANDRIKA GUPTA', 'Fair', '', '5 Feet 9 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'B.Tech/BE', NULL, 'Private Job', '5-7 Lacs', 'Ex.SeviceMan', 'House Wife', '1 BROTHER & 2 SISTER', '2022-05-26 21:3', '09:33:pm', 908, 'No'),
(1329, ' LATE BRINATH GUPTA', '', '', '', '', '', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', '', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 0 SISTER', '2022-05-26 21:3', '09:38:pm', 909, 'No'),
(1330, ' VINOD GUPTA', 'Very Fair', '', '5 Feet 10 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'DELHI', 'B.Com', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 0 SISTER', '2022-05-26 21:4', '09:42:pm', 910, 'Yes'),
(1330, ' VINOD GUPTA', 'Very Fair', '', '5 Feet 10 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'DELHI', 'B.Com', NULL, 'Gov.Job ', '10-15 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 0 SISTER', '2022-05-26 21:4', '09:44:pm', 911, 'Yes'),
(1331, ' LATE ASHOK CHAND SAHU', 'Fair', '50-60 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'LUCKNOW', 'Law', NULL, 'Gov.Job ', '5-7 Lacs', 'Ex.SeviceMan', 'House Wife', '1 BROTHER & 1 SISTER', '2022-05-26 21:4', '09:48:pm', 912, 'No'),
(1332, ' Late Satish Prasad', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Bihar', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'Business Women', '2 brorher', '2022-05-27 11:0', '11:03:am', 913, 'No'),
(1333, ' Anil gupta', 'Wheatish', '', '5 Feet 6 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Mumbai', 'B.Com', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '1 brorher 1 sister', '2022-05-27 12:1', '12:16:pm', 914, 'Yes'),
(1334, ' munnalal gupta', 'Wheatish', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'bhadohi', 'HighSchool', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER & 0 SISTER', '2022-05-27 12:2', '12:22:pm', 915, 'No'),
(1335, ' rambodh gupta', 'Fair', '', '5 Feet ', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'SULTANPUR', 'M.Com', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-05-27 12:2', '12:28:pm', 916, 'No'),
(1336, ' RAM NARAYAN SAHU', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'KANPUR', 'MBBS/MD', NULL, 'Private Job', '5-7 Lacs', 'Ex.SeviceMan', 'House Wife', '2 BROTHER & 3 SISTER', '2022-05-27 12:3', '12:33:pm', 917, 'No'),
(1337, ' RAJAN SAHU', 'Fair', '60-70 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'JAUNPUR', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 6 SISTER', '2022-05-27 12:4', '12:41:pm', 918, 'No'),
(1338, ' RAJENDRA GUPTA', 'Dusky', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI', 'BAMS/BUMS', NULL, 'Private Job', '5-7 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 3 SISTER', '2022-05-27 12:4', '12:45:pm', 919, 'No'),
(1339, ' chandrakant gupta', 'Fair', '', '5 Feet 6 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'JAUNPUR', 'Pharmacy', NULL, 'Private Job', '5-7 Lacs', 'Private Job', 'House Wife', '1 BROTHER & 0 SISTER', '2022-05-27 12:5', '12:52:pm', 920, 'No'),
(1340, ' MULCHAND GUPTA', 'Very Fair', '60-70 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'AZAMGHAR', 'MBA', NULL, 'Private Job', '5-7 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 2 SISTER', '2022-05-27 12:5', '12:58:pm', 921, 'No'),
(1341, ' D.R. GUPTA', 'Wheatish', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'BHADOHI', 'BSC', NULL, '', '', 'Business Person', 'House Wife', '2 BROTHER & 3 SISTER', '2022-05-27 13:0', '01:05:pm', 922, 'No'),
(1342, ' RAM JANAK GUPTA', 'Fair', '', '5 Feet 3 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'JAUNPUR', 'Law', NULL, '', '', 'Business Person', 'House Wife', '', '2022-05-27 13:1', '01:11:pm', 923, 'No'),
(1344, ' KAMTAPRASAD', 'Fair', '', '5 Feet 7 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'PRATAPGARH', 'Law', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-05-27 13:2', '01:22:pm', 925, 'Yes'),
(1346, ' RAJKUMAR GUPTA', 'Fair', '', '5 Feet 6 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'BALLIA', 'B.Tech/BE', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '', '2022-05-27 13:2', '01:27:pm', 926, 'No'),
(1349, ' LATE POORAN LAL RATHORE', 'Fair', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'TELI', 'RATHORE', NULL, NULL, 'BAREILLY', 'B.Ed', NULL, 'Gov.Job ', '5-7 Lacs', 'Gov.Job ', 'House Wife', 'BROTHERS - 02', '2022-05-27 14:1', '02:14:pm', 928, 'No'),
(1349, ' LATE POORAN LAL RATHORE', 'Fair', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'TELI', 'RATHORE', NULL, NULL, 'BAREILLY', 'B.Ed', NULL, 'Gov.Job ', '5-7 Lacs', 'Gov.Job ', 'House Wife', 'BROTHERS 02', '2022-05-27 14:1', '02:16:pm', 929, 'No'),
(1349, ' LATE POORAN LAL RATHORE', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'TELI', 'RATHORE', NULL, NULL, 'BAREILLY', 'B.Ed', NULL, 'Gov.Job ', '5-7 Lacs', 'Gov.Job ', 'House Wife', 'BROTHERS 02', '2022-05-27 14:2', '02:22:pm', 930, 'No'),
(1350, 'Ishwar chandra gupta  ', 'Fair', '60-70 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'Teli', 'Teli', NULL, NULL, 'Kaptanganj', 'MSC', NULL, 'Gov.Job ', '5-7 Lacs', 'Farmer', 'House Wife', '4', '2022-05-27 16:5', '04:56:pm', 931, 'No'),
(1353, ' LATE PRAMOD KUMAR', 'Wheatish', '', '5 Feet 3 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'JHARKHAND', 'BCA', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 2 SISTER', '2022-05-28 11:4', '11:40:am', 932, 'No'),
(1354, ' RAM NARESH PRASAD SAH', 'Very Fair', '', '5 Feet 4 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'BIHAR', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '1 BROTHER & 1 SISTER', '2022-05-28 11:4', '11:45:am', 933, 'No'),
(1360, ' suresh kumar gupta', 'Fair', '', '', 'Never Married', 'Healthy', 'GUPTA', 'TELI', NULL, NULL, 'mahoba', 'BTC', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '', '2022-05-29 13:0', '01:02:pm', 934, 'No'),
(1361, ' LT. RAJKISHOR GUPTA', 'Very Fair', '', '5 Feet 3 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'PRAYAGRAJ', 'MBA', NULL, 'Private Job', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '3 BROTHER & 1 SISTER', '2022-05-29 13:0', '01:08:pm', 935, 'No'),
(1362, ' RAVINDRA GUPTA', '', '', '', '', '', 'GUPTA', 'TELI', NULL, NULL, 'MAU', 'ITI/Diploma', NULL, 'Gov.Job ', '5-7 Lacs', 'Business Person', 'House Wife', '', '2022-05-29 13:1', '01:14:pm', 936, 'No'),
(1363, ' SURESH SAHU', 'Very Fair', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'LUCKNOW', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Private Job', 'House Wife', '1 BROTHER & 1 SISTER', '2022-05-29 13:1', '01:18:pm', 937, 'No'),
(1364, ' RAJESH SAHU', 'Very Fair', '', '5 Feet 8 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'DHANBAD', 'Law', NULL, 'Private Job', '3-5 Lacs', 'Private Job', 'House Wife', '2 BROTHER & 2 SISTER', '2022-05-29 13:2', '01:22:pm', 938, 'No'),
(1365, ' LATE SHIV KUMAR GUPTA', 'Very Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'LUCKNOW', 'B.Tech/BE', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2022-05-29 13:2', '01:27:pm', 939, 'No'),
(1366, ' SHIV SHANKAR SAHU', 'Very Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'JAUNPUR', 'B.Ed', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-05-29 13:4', '01:42:pm', 940, 'No'),
(1367, ' JAGANNATH GUPTA', 'Very Fair', '', '5 Feet 3 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'PRATAPGARH', 'B.Com', NULL, 'Private Job', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '2 BROTHER & 1 SISTER', '2022-05-29 13:4', '01:47:pm', 941, 'No'),
(1368, ' late ram dayal sahu', 'Very Fair', '', '5 Feet 3 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'LUCKNOW', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2022-05-29 13:5', '01:52:pm', 942, 'No'),
(1369, ' RAJKUMAR GUPTA', 'Wheatish', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'BALLIA', 'B.Tech/BE', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER ', '2022-05-29 13:5', '01:57:pm', 943, 'No'),
(1370, ' FAGU GUPTA', 'Very Fair', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'MAU', 'ITI/Diploma', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '3 SISTER', '2022-05-29 14:0', '02:02:pm', 944, 'Yes'),
(1371, ' RAJBAHADUR GUPTA', 'Fair', '80-90 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 4 SISTER', '2022-05-29 14:0', '02:06:pm', 945, 'No'),
(1372, ' Shatrughan gupta', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'slim', 'Gupta', 'Teli', NULL, NULL, 'Faridabad', 'MBA', NULL, 'Private Job', '3-5 Lacs', 'Private Job', 'House Wife', '', '2022-05-29 14:1', '02:11:pm', 946, 'No'),
(1373, ' RAJKUMAR GUPTA', 'Very Fair', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'MAU', 'Hotel Management', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER ', '2022-05-29 14:1', '02:14:pm', 947, 'No'),
(1376, ' RAJKUMAR GUPTA', 'Wheatish', '60-70 Kg', '5 Feet 11 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'MBA', NULL, 'Private Job', '7-10 Lacs', 'Gov.Job ', 'House Wife', '1 BROTHER & 2 SISTER', '2022-05-29 14:2', '02:22:pm', 948, 'No'),
(1378, ' RAJKUMAR GUPTA', 'Wheatish', '60-70 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'M.Tech', NULL, 'Private Job', '', 'Gov.Job ', 'House Wife', '1 BROTHER & 1 SISTER', '2022-05-29 14:2', '02:29:pm', 949, 'No'),
(1379, ' SUDAMA GUPTA', '', '', '', '', '', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI', 'HighSchool', NULL, 'Business', '', 'Business Person', 'House Wife', '', '2022-05-29 14:3', '02:33:pm', 950, 'No'),
(1380, ' LALMANI SAHU', 'Very Fair', '', '5 Feet 6 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'AZAMGHAR', 'B.A', NULL, 'Business', '', 'Business Person', 'House Wife', '5 BROTHER & 5 SISTER', '2022-05-29 14:3', '02:39:pm', 951, 'No'),
(1381, ' MAHESH SAHU', 'Fair', '', '5 Feet 3 inch', 'Never Married', 'Healthy', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI', 'M.Com', NULL, 'Private Job', '', 'Gov.Job ', 'House Wife', '3 BROTHER ', '2022-05-29 14:4', '02:44:pm', 952, 'No'),
(1382, ' RAJESHWAR GUPTA', 'Wheatish', '', '5 Feet 7 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'M.Com', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '3 BROTHER & 1 SISTER', '2022-05-29 14:4', '02:48:pm', 953, 'No'),
(1385, ' LAXMIKANT GUPTA', 'Fair', '', '5 Feet 8 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'AZAMGHAR', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-05-30 09:0', '09:04:am', 954, 'No'),
(1386, ' salik ram gupta', 'Very Fair', '', '5 Feet 2 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'LUCKNOW', 'B.Tech/BE', NULL, 'Private Job', '1-3 Lacs', 'Private Job', 'House Wife', '', '2022-05-30 09:1', '09:15:am', 955, 'No'),
(1387, ' KAMTAPRASAD GUPTA', 'Fair', '', '5 Feet 8 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'VARANASI', 'MSC', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 2 SISTER', '2022-05-30 09:2', '09:21:am', 956, 'No'),
(1388, ' KAMTAPRASAD GUPTA', 'Wheatish', '', '5 Feet 4 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'VARANASI', 'B.Com', NULL, 'Gov.Job ', '1-3 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-05-30 09:2', '09:27:am', 957, 'No'),
(1389, ' LATE KUBER NATH SAHU', 'Very Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'AZAMGHAR', 'B.A', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-05-30 09:3', '09:32:am', 958, 'No'),
(1390, ' ASHWANI KUMAR GUPTA', 'Very Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 2 SISTER', '2022-05-30 09:3', '09:38:am', 959, 'No'),
(1391, ' LATE SHYAM MUKUT GUPTA', 'Wheatish', '', '5 Feet 8 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'AGRA', 'MA', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-05-30 09:4', '09:42:am', 960, 'No'),
(1393, ' RAMESHVER PRASAD SAHU', 'Fair', '', '5 Feet 3 inch', 'Divorced', '', 'GUPTA', 'TELI', NULL, NULL, 'ALLAHABAD', 'B.A', NULL, '', '', 'Business Person', 'House Wife', '2 BROTHER & 2 SISTER', '2022-05-30 09:4', '09:48:am', 961, 'No'),
(1394, 'Vijay Prasad', 'Fair', '', '5 Feet 4 inch', 'Never Married', '', 'Gupta', 'Teli', NULL, NULL, 'Gaya', 'MA', NULL, '', '', 'Business Person', 'House Wife', '2 brorher 1 sister', '2022-05-30 14:3', '02:34:pm', 962, 'No'),
(1395, ' ', 'Wheatish', '', '5 Feet 3 inch', 'Never Married', '', 'Gupta', 'Teli', NULL, NULL, '', 'Intermediate', NULL, 'Business', '1-3 Lacs', 'Farmer', 'House Wife', '', '2022-05-30 14:4', '02:41:pm', 963, 'No'),
(1396, ' Dr. LR sahu', 'Fair', '', '5 Feet 5 inch', 'Never Married', '', 'Gupta', 'Teli', NULL, NULL, 'Bemetara cg', 'B.Tech/BE', NULL, 'Gov.Job ', '5-7 Lacs', 'Private Job', 'House Wife', '1 brorher 2 sister', '2022-05-30 14:4', '02:47:pm', 964, 'No'),
(1397, ' Laxman sahu', 'Fair', '', '5 Feet 10 inch', 'Never Married', '', 'Gupta', 'Teli', NULL, NULL, 'Ujjain', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Farmer', 'House Wife', '', '2022-05-30 15:0', '03:03:pm', 965, 'Yes'),
(1355, ' Govind sahu', 'Fair', '70-80 Kg', '5 Feet 4 inch', 'Divorced', 'Healthy', 'Sahu', 'Sahu', NULL, NULL, 'Kanker', 'B.A', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1 brother 1 soster', '2022-05-30 16:2', '04:25:pm', 966, 'No'),
(1398, 'ANMOL GUPTA', 'Fair', '60-70 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'B.Com', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-05-30 21:4', '09:44:pm', 967, 'No'),
(1399, ' BANMALI SAHU', 'Fair', '', '5 Feet ', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'JHANSI', '', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 2 SISTER', '2022-05-30 21:5', '09:50:pm', 968, 'No'),
(1400, ' H.P. SAHU', 'Wheatish', '', '5 Feet 5 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'KANPUR', 'B.Tech/BE', NULL, 'Gov.Job ', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '1 BROTHER & 1 SISTER', '2022-05-30 21:5', '09:58:pm', 969, 'No'),
(1401, ' RAJENDRA P SAHU', 'Fair', '60-70 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'JAUNPUR', 'BSC', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '', '2022-05-30 22:0', '10:04:pm', 970, 'No'),
(1402, ' RAM MURAT ARYA', 'Very Fair', '', '5 Feet 10 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'AMBEDKAR NAGAR', 'Phd', NULL, 'Gov.Job ', '10-15 Lacs', 'Business Person', 'House Wife', '3 BROTHER & 2 SISTER', '2022-05-30 22:0', '10:09:pm', 971, 'No'),
(1403, ' LATERAMPALAT GUPTA', 'Very Fair', '60-70 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'JAUNPUR', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '1 BROTHER & 0 SISTER', '2022-05-30 22:2', '10:20:pm', 972, 'No'),
(1404, ' ', 'Wheatish', '', '5 Feet 6 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '', '2022-05-30 22:2', '10:24:pm', 973, 'No'),
(1406, ' ', 'Fair', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI', 'M.Com', NULL, 'Business', '5-7 Lacs', 'Farmer', 'House Wife', '', '2022-05-31 07:1', '07:18:am', 974, 'No'),
(1407, ' MANOJ GUPTA', 'Fair', '', '', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'PRAYAGRAJ', 'BSC', NULL, 'Business', '3-5 Lacs', 'Farmer', 'House Wife', '', '2022-05-31 07:2', '07:25:am', 975, 'No'),
(1409, ' KANDHAI LAL SAHU', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'LUCKNOW', 'B.A', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER & 2 SISTER', '2022-05-31 07:3', '07:37:am', 977, 'No'),
(1410, ' MASTRAM GUPTA', 'Very Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'LUCKNOW', 'BTC', NULL, '', '', 'Gov.Job ', 'House Wife', '2 BROTHER & 2 SISTER', '2022-05-31 07:4', '07:41:am', 978, 'No'),
(1411, ' SURYMANI GUPTA', 'Fair', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI', 'M.Com', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-05-31 07:5', '07:56:am', 979, 'No'),
(1412, 'VINOD KUMAR GUPTA', 'Fair', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'PRATAPGARH', 'B.A', NULL, 'Business', '', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2022-05-31 08:0', '08:01:am', 980, 'Yes'),
(1413, ' UTTAM CHAND GUPTA', 'Fair', '', '5 Feet 8 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'MAU', '', NULL, '', '', 'Business Person', 'House Wife', '4 BROTHER ', '2022-05-31 08:0', '08:06:am', 981, 'No'),
(1414, ' RAMESH CHAND GUPTA', 'Very Fair', '', '5 Feet 7 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'MAU', 'B.A', NULL, 'Business', '', 'Business Person', 'House Wife', '4 BROTHER & 2 SISTER', '2022-05-31 08:1', '08:11:am', 982, 'Yes'),
(1415, ' SURYA BHAN GUPTA', 'Very Fair', '', '5 Feet 11 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'UTTARAKHAND', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Private Job', 'House Wife', '', '2022-05-31 08:1', '08:15:am', 983, 'No'),
(1416, ' NIBULAL GUPTA', 'Fair', '', '5 Feet 3 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'MAU', 'B.A', NULL, 'Business', '', 'Business Person', 'House Wife', '1 BROTHER & 5 SISTER', '2022-05-31 08:2', '08:20:am', 984, 'No'),
(1418, ' Santosh Kumar', 'Fair', '', '5 Feet 3 inch', 'Never Married', '', 'Gupta', 'Teli', NULL, NULL, 'Lucknow', 'MBA', NULL, '', '', 'Business Person', 'Business Women', '0 brorher 2 sister', '2022-05-31 15:0', '03:08:pm', 985, 'No'),
(1419, ' Ramesh Chandra sahu', 'Wheatish', '', '5 Feet 7 inch', 'Never Married', '', 'Gupta', 'Teli', NULL, NULL, 'Ghazipur', 'ITI/Diploma', NULL, 'Business', '', 'Business Person', 'House Wife', '1 brorher 1 sister', '2022-05-31 15:2', '03:21:pm', 986, 'No'),
(1420, ' Sanjay Kumar Gupta', 'Very Fair', '', '5 Feet 7 inch', 'Never Married', '', 'Gupta', 'Teli', NULL, NULL, 'Mau', 'MSC', NULL, 'Private Job', '7-10 Lacs', 'Business Person', 'House Wife', '1 brorher 1 sister', '2022-05-31 15:3', '03:39:pm', 987, 'No'),
(1422, ' RAJKUMAR Gupta', 'Very Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Mumbai', 'M.Com', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 brorher 2 sister', '2022-05-31 15:5', '03:50:pm', 988, 'No'),
(1423, ' CHANDRA BHANU GUPTA', '', '50-60 Kg', '5 Feet ', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'DELHI', 'B.Ed', NULL, '', '', 'Gov.Job ', 'House Wife', '2 BROTHER & 2 SISTER', '2022-05-31 20:3', '08:34:pm', 989, 'No'),
(1424, ' RAJESH KUMAR', 'Wheatish', '60-70 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'KANNAUJ', 'BTC', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 3 SISTER', '2022-05-31 20:4', '08:40:pm', 990, 'No'),
(1425, ' GOVIND LAL GUPTA', 'Very Fair', '', '5 Feet 8 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI', 'M.Com', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 0 SISTER', '2022-05-31 20:5', '08:50:pm', 991, 'No'),
(1426, ' LATE RAMDULAR GUPTA', 'Wheatish', '', '5 Feet 11 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'MIRZAPUR', 'M.Com', NULL, 'Gov.Job ', '', 'Business Person', 'House Wife', '2 BROTHER & 3 SISTER', '2022-05-31 20:5', '08:55:pm', 992, 'No'),
(1428, ' RAJMAN GUPTA', 'Wheatish', '', '5 Feet 6 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'JAUNPUR', 'Intermediate', NULL, 'Business', '7-10 Lacs', 'Business Person', 'House Wife', '', '2022-05-31 21:0', '09:04:pm', 993, 'No'),
(1429, ' SHIV KUMAR GUPTA', '', '', '', '', '', 'GUPTA', 'TELI', NULL, NULL, 'MAU', '', NULL, '', '', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2022-05-31 21:0', '09:08:pm', 994, 'No'),
(1430, 'LATE SHIVNATH GUPTA', 'Fair', '', '5 Feet 6 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'B.Ed', NULL, 'Business', '7-10 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 2 SISTER', '2022-05-31 21:1', '09:16:pm', 995, 'No'),
(1431, ' KRISHNA NAND GUPTA', 'Very Fair', '', '5 Feet 6 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Gov.Job ', 'House Wife', '1 BROTHER & 2 SISTER', '2022-05-31 21:2', '09:20:pm', 996, 'No'),
(1432, ' RAVINDRA GUPTA', 'Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'MAU', 'ITI/Diploma', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 2 SISTER', '2022-05-31 21:2', '09:24:pm', 997, 'No'),
(1433, ' madhur shyam gupta', 'Very Fair', '50-60 Kg', '5 Feet ', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'B.Com', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2022-06-01 08:3', '08:36:am', 998, 'No'),
(1435, ' Rambabu Gupta', 'Wheatish', '', '5 Feet 5 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'EAST CHAMPARAN', 'MA', NULL, '', '', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2022-06-01 08:4', '08:48:am', 1000, 'No'),
(1436, ' MAHENDRA SAHU', 'Very Fair', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'SAHARANPUR', 'M.Com', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER & 2 SISTER', '2022-06-01 08:5', '08:54:am', 1001, 'No'),
(1437, ' GAGAN PRASAD GUPTA', 'Wheatish', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'LUCKNOW', 'B.Ed', NULL, '', '', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2022-06-01 09:0', '09:01:am', 1002, 'No'),
(1438, ' PREMROOP SAHU', 'Wheatish', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'PRATAPGARH', 'MBA', NULL, 'Private Job', '3-5 Lacs', 'Private Job', 'House Wife', '1 BROTHER & 0 SISTER', '2022-06-01 09:2', '09:27:am', 1003, 'No'),
(1439, ' RAKESH GUPTA', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'ALLAHABAD', 'B.Com', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'Business Women', '2 BROTHER ', '2022-06-01 09:3', '09:33:am', 1004, 'Yes'),
(1440, ' KAMLESH HARA', 'Fair', '50-60 Kg', '5 Feet 8 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'AJMER', 'MBBS/MD', NULL, 'Private Job', '1-3 Lacs', 'Gov.Job ', 'Gov.Job ', '', '2022-06-01 09:4', '09:44:am', 1005, 'No'),
(1441, ' SUBHASH CHAND GUPTA', 'Fair', '50-60 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'MAU', '', NULL, '', '', 'Business Person', 'House Wife', '', '2022-06-01 12:2', '12:29:pm', 1006, 'No'),
(1442, ' SURESH PRASAD', 'Fair', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'NALANDA BIHAR', 'ITI/Diploma', NULL, 'Gov.Job ', '3-5 Lacs', 'Gov.Job ', 'House Wife', '1 BROTHER & 1 SISTER', '2022-06-01 12:3', '12:33:pm', 1007, 'No'),
(1443, ' SURENDRA PRASAD GUPTA', 'Very Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'BIHAR', 'BTC', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2022-06-01 12:3', '12:38:pm', 1008, 'No'),
(1444, ' BIPIN KUMAR', 'Very Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'NALANDA BIHAR', 'BSC', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-06-01 12:4', '12:44:pm', 1009, 'No'),
(1445, ' BHOLA SAW', 'Very Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'JHARKHAND', 'Intermediate', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER & 3 SISTER', '2022-06-01 12:4', '12:49:pm', 1010, 'Yes'),
(1446, ' KISHORI SAW', 'Fair', '', '5 Feet ', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'DHANBAD ', 'BCA', NULL, 'Private Job', '1-3 Lacs', 'Ex.SeviceMan', 'House Wife', '1 BROTHER & 1 SISTER', '2022-06-01 12:5', '12:54:pm', 1011, 'No'),
(1447, ' LATE BHAGWAN PRASAD', 'Very Fair', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'JHARKHAND GIRIDHI', 'HighSchool', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER & 2 SISTER', '2022-06-01 12:5', '12:58:pm', 1012, 'No'),
(1448, ' RAMESH KUMAR', 'Fair', '', '5 Feet 6 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'GAYA', 'BSC', NULL, 'Private Job', '3-5 Lacs', 'Private Job', 'House Wife', '1 BROTHER & 2 SISTER', '2022-06-01 13:0', '01:01:pm', 1013, 'No'),
(1449, ' KAMAL KUMAR', 'Wheatish', '', '5 Feet 4 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'PATNA', 'MBBS/MD', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-06-01 13:0', '01:06:pm', 1014, 'No'),
(1450, ' DHARMENDRA GUPTA', 'Very Fair', '', '5 Feet 2 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'B.A', NULL, '', '', 'Business Person', 'House Wife', '', '2022-06-01 13:0', '01:08:pm', 1015, 'No'),
(1451, ' LALCHAND GUPTA', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'JAUNPUR', 'HighSchool', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-06-01 15:3', '03:35:pm', 1016, 'No'),
(1452, ' RAMAKANT GUPTA', 'Wheatish', '60-70 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'SONBHADRA', 'B.Tech/BE', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '', '2022-06-01 15:4', '03:42:pm', 1017, 'No'),
(1453, ' DILIP ALGU GUPTA', 'Fair', '', '5 Feet 5 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'AZAMGHAR', 'HighSchool', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '3 BROTHER & 1 SISTER', '2022-06-01 15:4', '03:48:pm', 1018, 'No'),
(1454, ' PREM CHAND GUPTA', 'Very Fair', '', '5 Feet 6 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'BALLIA', 'B.Ed', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-06-01 15:5', '03:53:pm', 1019, 'No'),
(1455, ' GULAB CHAND GUPTA', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'JAUNPUR', 'B.Ed', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER ', '2022-06-01 15:5', '03:59:pm', 1020, 'No'),
(1456, ' RAJKISHOR GUPTA', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'Phd', NULL, 'Private Job', '', 'Ex.SeviceMan', 'House Wife', '3 BROTHER & 1 SISTER', '2022-06-01 16:0', '04:06:pm', 1021, 'No'),
(1457, ' VIRENDARA SAHU', 'Very Fair', '', '5 Feet 3 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'LUCKNOW', 'ITI/Diploma', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER & 0 SISTER', '2022-06-01 16:1', '04:15:pm', 1022, 'No'),
(1458, ' LAKSHMAN PRASAD', 'Fair', '60-70 Kg', '5 Feet 3 inch', 'Never Married', 'Healthy', 'GUPTA', 'TELI', NULL, NULL, 'GHAZIPUR', 'ITI/Diploma', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '', '2022-06-01 16:2', '04:26:pm', 1023, 'No'),
(1460, ' SHREE KANT GUPTA', 'Very Fair', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'Healthy', 'GUPTA', 'TELI', NULL, NULL, 'ASSAM', 'MBA', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-06-01 16:3', '04:36:pm', 1024, 'No'),
(1461, ' RAJKUMAR GUPTA', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Healthy', 'GUPTA', 'TELI', NULL, NULL, 'MAU', 'MA', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '3 BROTHER ', '2022-06-01 16:3', '04:39:pm', 1025, 'No'),
(1463, ' HARINARAYAN GUPTA', 'Very Fair', '', '5 Feet 2 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'B.A', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-06-01 16:4', '04:49:pm', 1028, 'No'),
(1464, ' JUGAL KISHOR GUPTA', 'Very Fair', '', '5 Feet 9 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'BALLIA', 'MSC', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 3 SISTER', '2022-06-01 16:5', '04:52:pm', 1029, 'No'),
(1465, ' MAHESH SAHU', 'Very Fair', '50-60 Kg', '5 Feet ', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'Chhattisgarh', 'B.A', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-06-01 16:5', '04:56:pm', 1030, 'No'),
(1449, ' Kamal kumar', 'Wheatish', '', '5 Feet 4 inch', 'Never Married', '', 'Gupta', 'Teli', NULL, NULL, 'Patana', 'MBA', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 brorher 1 sister', '2022-06-02 10:2', '10:22:am', 1031, 'Yes'),
(1472, ' Jitendra Kumar Rathor', 'Very Fair', '', '5 Feet 2 inch', 'Never Married', 'slim', 'Gupta', 'Teli', NULL, NULL, 'Delhi', 'B.Ed', NULL, '', '', 'Business Person', 'House Wife', '1 brorher 1 sister', '2022-06-02 10:2', '10:29:am', 1032, 'No'),
(1473, ' GHANSHYAM SAH', 'Very Fair', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'MUNGER BIHAR', 'B.Tech/BE', NULL, 'Private Job', '15-20 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 2 SISTER', '2022-06-03 06:5', '06:51:am', 1033, 'No'),
(1475, ' LATE SURESH RATHOR', 'Very Fair', '', '5 Feet 2 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'Haridwar', 'MA', NULL, '', '', 'Ex.SeviceMan', 'House Wife', '3 BROTHER & 1 SISTER', '2022-06-03 07:0', '07:02:am', 1034, 'No'),
(1476, ' MAHENDRA KUMAR GUPTA', 'Wheatish', '', '5 Feet ', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'PATNA', 'BSC', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 2 SISTER', '2022-06-03 07:0', '07:09:am', 1035, 'No'),
(1477, ' CHANDRABHAN GUPTA', 'Very Fair', '', '5 Feet 11 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'BASTI', 'ITI/Diploma', NULL, 'Gov.Job ', '1-3 Lacs', 'Business Person', 'Business Women', '2 BROTHER ', '2022-06-03 07:1', '07:15:am', 1036, 'No'),
(1478, ' SHRIKISHUN GUPTA', 'Fair', '', '5 Feet 3 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'BALLIA', 'ITI/Diploma', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER & 2 SISTER', '2022-06-03 07:2', '07:20:am', 1037, 'No'),
(1479, ' ', 'Very Fair', '', '5 Feet 2 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'DELHI', 'B.Ed', NULL, 'Gov.Job ', '3-5 Lacs', 'Gov.Job ', 'House Wife', '1 BROTHER & 1 SISTER', '2022-06-03 07:2', '07:28:am', 1038, 'No'),
(1480, ' SANJAY RATHOR', 'Very Fair', '', '5 Feet 5 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'AGRA', 'MSC', NULL, '', '', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2022-06-03 07:3', '07:32:am', 1039, 'No'),
(1481, ' PRAHLAD GUPTA', '', '', '5 Feet 9 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'VARANASI', 'MBA', NULL, 'Private Job', '10-15 Lacs', 'Gov.Job ', 'House Wife', '1 SISTER', '2022-06-03 07:3', '07:38:am', 1040, 'No'),
(1483, ' DWARIKA PRASAD GUPTA', 'Wheatish', '', '5 Feet 9 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'PRAYAGRAJ', 'M.Tech', NULL, 'Private Job', '20-40 Lacs', 'Gov.Job ', 'House Wife', ' 2 SISTER', '2022-06-03 07:4', '07:47:am', 1041, 'No'),
(1484, ' Panna lal', 'Very Fair', '60-70 Kg', '5 Feet 11 inch', 'Never Married', 'slim', '', '', NULL, NULL, 'Mau', '', NULL, '', '', 'Farmer', 'House Wife', '', '2022-06-03 08:1', '08:13:am', 1042, 'No'),
(1485, ' SIDDH GOPAL RATHOR', 'Very Fair', '', '5 Feet 3 inch', 'Never Married', '', 'Gupta', 'Teli', NULL, NULL, 'JALAUN', 'BCA', NULL, 'Private Job', '5-7 Lacs', 'Farmer', 'House Wife', '2 brorher 1 sister', '2022-06-03 11:1', '11:16:am', 1043, 'No'),
(1486, ' Ajay Kumar sah', 'Wheatish', '60-70 Kg', '5 Feet 5 inch', 'Never Married', 'Healthy', 'Gupta', 'Teli', NULL, NULL, 'Bihar', 'B.A', NULL, 'Gov.Job ', '1-3 Lacs', 'Private Job', 'House Wife', '1 brorher 1 sister', '2022-06-03 14:0', '02:07:pm', 1044, 'No'),
(1487, ' vishwanath prasad gupta', 'Fair', '60-70 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-06-03 14:3', '02:38:pm', 1045, 'No'),
(1488, ' dinesh chhannulal gupta', 'Wheatish', '', '6 Feet 1 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI', 'B.A', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2022-06-03 14:4', '02:46:pm', 1046, 'No'),
(1489, ' bansilal gupta', 'Fair', '', '5 Feet 4 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'GHAZIPUR', 'Fine Arts', NULL, '', '', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2022-06-03 14:5', '02:59:pm', 1047, 'Yes'),
(1490, ' rajesh gupta', 'Very Fair', '', '5 Feet ', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI', 'B.A', NULL, '', '', 'Business Person', 'House Wife', '', '2022-06-03 15:0', '03:04:pm', 1048, 'No'),
(1491, ' vinod kumar sahu', 'Fair', '', '5 Feet 5 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'BASTI', 'BSC', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2022-06-03 15:0', '03:08:pm', 1049, 'No'),
(1492, ' DHARMENDRA GUPTA', 'Fair', '', '5 Feet 2 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'VARANASI', 'MSC', NULL, '', '', 'Business Person', 'House Wife', '', '2022-06-03 15:1', '03:12:pm', 1050, 'No'),
(1493, ' D.R. GUPTA', 'Wheatish', '', '5 Feet 8 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'BHADOHI', 'MBBS/MD', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 3 SISTER', '2022-06-03 15:1', '03:15:pm', 1051, 'No'),
(1494, ' DURGAPRASAD SAHU', 'Fair', '', '5 Feet 3 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'SURAT GUJARAT', 'MCA', NULL, 'Private Job', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '', '2022-06-03 15:2', '03:20:pm', 1052, 'No'),
(1495, ' MUKUND LAL', 'Fair', '70-80 Kg', '5 Feet 7 inch', 'Never Married', 'Healthy', 'GUPTA', 'TELI', NULL, NULL, 'LUCKNOW', 'B.Tech/BE', NULL, 'Private Job', '5-7 Lacs', 'Gov.Job ', 'House Wife', '', '2022-06-03 15:2', '03:25:pm', 1053, 'No'),
(1496, ' SHIV GUVIND LAL GUPTA', 'Very Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'JAUNPUR', 'B.A', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '', '2022-06-03 15:2', '03:29:pm', 1054, 'No'),
(1497, ' ', 'Very Fair', '', '5 Feet 2 inch', 'Never Married', 'Healthy', 'GUPTA', 'TELI', NULL, NULL, 'VARANASI', 'B.Com', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '', '2022-06-03 20:5', '08:53:pm', 1055, 'No'),
(1498, ' PRAKASH CHANDRA GUPTA', 'Fair', '80-90 Kg', '5 Feet 7 inch', 'Never Married', 'Healthy', 'GUPTA', 'TELI', NULL, NULL, 'JAUNPUR MUMBAI', 'B.Com', NULL, 'Business', '', 'Business Person', 'House Wife', '', '2022-06-03 20:5', '08:58:pm', 1056, 'No'),
(1499, ' HARI PRASAD SAHU', 'Fair', '', '5 Feet 2 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'AYODHYA', 'PGDCA', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-06-03 21:0', '09:05:pm', 1057, 'No'),
(1500, ' SURESH PRASAD', 'Very Fair', '', '5 Feet ', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'JAMSHEDPUR', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 2 SISTER', '2022-06-03 21:1', '09:11:pm', 1058, 'No'),
(1501, ' SANJAY KUMAR SAHU', 'Fair', '', '5 Feet 2 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'BANDA', 'MA', NULL, '', '', 'Business Person', 'Business Women', '2 BROTHER & 1 SISTER', '2022-06-03 21:2', '09:27:pm', 1059, 'No'),
(1502, ' SUBHASH CHAND GUPTA', 'Wheatish', '', '5 Feet 7 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'NAGPUR', 'B.Tech/BE', NULL, 'Gov.Job ', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '', '2022-06-03 21:3', '09:32:pm', 1060, 'No'),
(1503, ' Poshan sahu', 'Fair', '60-70 Kg', '5 Feet 9 inch', 'Never Married', 'slim', 'Sahu', 'Sahu', NULL, NULL, 'Sakti ', 'MA', NULL, 'Gov.Job ', '1-3 Lacs', 'Business Person', 'House Wife', 'Self ', '2022-06-04 12:1', '12:12:pm', 1062, 'No');
INSERT INTO `sdetails` (`did`, `fname`, `scolour`, `sweight`, `sheight`, `sstatus`, `sbody`, `scast`, `sbcast`, `srasi`, `stob`, `spob`, `sedu`, `sedudetail`, `soccupation`, `sincome`, `foccu`, `moccu`, `bs`, `sdate`, `stime`, `id`, `smangal`) VALUES
(1504, ' radheshyam gupta', 'Fair', '70-80 Kg', '5 Feet 5 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'singrauli mp', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2022-06-04 14:0', '02:09:pm', 1063, 'No'),
(1505, ' subhash chandra gupta', 'Fair', '', '5 Feet 5 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'GHAZIPUR mumbai', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2022-06-04 14:1', '02:16:pm', 1064, 'No'),
(1506, ' anil kumar sahu', 'Fair', '60-70 Kg', '5 Feet 8 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI', 'B.Tech/BE', NULL, 'Business', '3-5 Lacs', 'Business Person', 'Business Women', '2 BROTHER ', '2022-06-04 14:2', '02:22:pm', 1065, 'No'),
(1507, ' M.K. GUPTA', 'Fair', '', '5 Feet 6 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'AMBALA ', 'Other', NULL, 'Business', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '2 BROTHER ', '2022-06-04 14:2', '02:28:pm', 1066, 'No'),
(1508, ' UMESH GUPTA', 'Fair', '', '5 Feet 3 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'MSC', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '', '2022-06-04 14:3', '02:39:pm', 1067, 'No'),
(1509, ' ABADH SAHU', 'Very Fair', '60-70 Kg', '5 Feet 2 inch', 'Never Married', 'Healthy', 'GUPTA', 'TELI', NULL, NULL, 'SAGAR MP', 'MBBS/MD', NULL, 'Private Job', '3-5 Lacs', 'Gov.Job ', 'Private Job', '', '2022-06-04 14:4', '02:43:pm', 1068, 'No'),
(1510, ' ASHOK KUMAR SAHU', 'Fair', '', '5 Feet 5 inch', 'Divorced', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'HOSHANGABAD MP', 'MBA', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-06-04 14:5', '02:51:pm', 1069, 'No'),
(1511, ' PURNWASI P GUPTA', 'Very Fair', '', '5 Feet 7 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'M.Com', NULL, 'Business', '3-5 Lacs', 'Gov.Job ', 'House Wife', '2 BROTHER & 1 SISTER', '2022-06-04 14:5', '02:55:pm', 1070, 'No'),
(1512, ' PRAMOD GUPTA', 'Very Fair', '', '5 Feet 3 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'B.Ed', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '2 SISTER', '2022-06-04 15:0', '03:01:pm', 1071, 'No'),
(1514, ' LATE DURGESH KUMAR SAHU', 'Very Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'BEHRAICH', 'B.Ed', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 2 SISTER', '2022-06-04 15:1', '03:16:pm', 1072, 'No'),
(1516, ' SHIV PRASAD SAW', 'Wheatish', '', '5 Feet 4 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'JHARKHAND', 'B.Tech/BE', NULL, 'Private Job', '15-20 Lacs', 'Business Person', 'House Wife', '2 BROTHER ', '2022-06-04 15:2', '03:28:pm', 1074, 'No'),
(1519, ' CHANDRIKA P GUPTA', 'Fair', '60-70 Kg', '5 Feet 5 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'JAUNPUR BALLIA', 'B.Ed', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '3 BROTHER ', '2022-06-07 06:5', '06:55:am', 1075, 'No'),
(1520, ' CHANDRA BHUSHAN ARYA', 'Fair', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'B.Tech/BE', NULL, 'Private Job', '5-7 Lacs', 'Gov.Job ', 'House Wife', '2 BROTHER & 1 SISTER', '2022-06-07 07:0', '07:05:am', 1076, 'No'),
(1521, ' MADAN GUPTA', 'Very Fair', '', '5 Feet 6 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'JAUNPUR', 'ITI/Diploma', NULL, '', '', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2022-06-07 07:1', '07:10:am', 1077, 'Yes'),
(1522, ' LATE RAJKUMAR SAHU', 'Fair', '60-70 Kg', '5 Feet 6 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'WEST BENGAL', 'M.Com', NULL, 'Business', '5-7 Lacs', 'Business Person', 'House Wife', '', '2022-06-07 07:1', '07:15:am', 1078, 'No'),
(1523, ' VISHWANATH SAHU', 'Very Fair', '', '5 Feet 2 inch', 'Divorced', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'Chhattisgarh', 'Intermediate', NULL, '', '', 'Business Person', 'House Wife', '', '2022-06-07 07:2', '07:21:am', 1079, 'No'),
(1524, ' GOPAL JEE GUPTA', 'Very Fair', '', '5 Feet 4 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'B.Ed', NULL, 'Gov.Job ', '5-7 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 2 SISTER', '2022-06-07 07:2', '07:28:am', 1080, 'No'),
(1525, ' SANJAY KUMAR GUPTA', 'Fair', '', '5 Feet 3 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'FARIDABAD', 'Other', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-06-07 07:3', '07:33:am', 1081, 'No'),
(1526, ' Dr. S.N. GUPTA', 'Very Fair', '60-70 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'BDS', NULL, 'Business', '3-5 Lacs', 'Gov.Job ', 'House Wife', '2 BROTHER & 1 SISTER', '2022-06-07 07:4', '07:40:am', 1082, 'No'),
(1527, ' VIJAY NATH GUPTA', 'Fair', '', '5 Feet 5 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'MA', NULL, '', '', 'Business Person', 'House Wife', '2 BROTHER ', '2022-06-07 07:4', '07:45:am', 1083, 'No'),
(1528, ' RAJA RAM GUPTA', 'Wheatish', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'NAJAFGARH  DELHI', 'B.Ed', NULL, '', '', 'Business Person', 'House Wife', '2 BROTHER ', '2022-06-07 07:5', '07:51:am', 1084, 'No'),
(1529, ' RAMESH CHAND GUPTA', 'Fair', '70-80 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'NEW DELHI', 'MA', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER & 0 SISTER', '2022-06-07 07:5', '07:57:am', 1085, 'No'),
(1530, ' LATE ASHOK KUMAR', 'Very Fair', '', '5 Feet 3 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'AMETHI', 'M.Com', NULL, 'Gov.Job ', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '1 BROTHER & 1 SISTER', '2022-06-07 08:0', '08:05:am', 1086, 'No'),
(1531, ' JATAN LAL GUPTA', 'Very Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'B.Tech/BE', NULL, 'Gov.Job ', '1-3 Lacs', 'Gov.Job ', 'House Wife', '1 BROTHER & 1 SISTER', '2022-06-07 08:1', '08:12:am', 1087, 'No'),
(1532, ' TULSI RAM GUPTA', 'Fair', '', '5 Feet 4 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'DELHI', 'B.Ed', NULL, '', '', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2022-06-07 08:1', '08:16:am', 1088, 'No'),
(1534, ' MURLIDHAR GUPTA', 'Fair', '', '5 Feet 9 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'ITI/Diploma', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'Business Women', '2 BROTHER & 1 SISTER', '2022-06-07 08:2', '08:22:am', 1089, 'No'),
(1535, ' LATE VISHWANATH GUPTA', 'Fair', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'JALAUN', 'B.Ed', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '3 BROTHER & 6 SISTER', '2022-06-07 13:3', '01:37:pm', 1090, 'No'),
(1536, ' MANOJ KUMAR SAHU', 'Fair', '', '5 Feet ', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'KANPUR', 'B.A', NULL, '', '', 'Private Job', 'House Wife', '2 SISTER', '2022-06-07 13:4', '01:43:pm', 1091, 'No'),
(1537, ' NAND LAL GUPTA', 'Wheatish', '', '5 Feet 6 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI', 'M.Com', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 2 SISTER', '2022-06-07 13:4', '01:48:pm', 1092, 'No'),
(1538, ' SURESH CHANDRA GUPTA', 'Fair', '', '5 Feet 7 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR DELHI', 'ITI/Diploma', NULL, 'Unemployed', '', 'Private Job', 'House Wife', '1 BROTHER & 2 SISTER', '2022-06-07 13:5', '01:53:pm', 1093, 'No'),
(1539, ' ANIL KUMAR GUPTA', 'Very Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'GURGAON', 'MBA', NULL, 'Private Job', '3-5 Lacs', 'Private Job', 'House Wife', '', '2022-06-07 13:5', '01:59:pm', 1094, 'No'),
(1540, ' LATE TARA PRASAD GUPTA', 'Fair', '', '5 Feet 7 inch', 'Never Married', 'Healthy', 'GUPTA', 'TELI', NULL, NULL, 'GHAZIPUR', 'B.Com', NULL, 'Business', '7-10 Lacs', 'Business Person', 'House Wife', '3 BROTHER & 5 SISTER', '2022-06-07 14:0', '02:05:pm', 1095, 'No'),
(1541, ' CHANDRA PRAKASH GUPTA', 'Fair', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'MAU', 'B.Tech/BE', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '3 BROTHER & 1 SISTER', '2022-06-07 14:4', '02:44:pm', 1096, 'No'),
(1542, ' PARAS NATH GUPTA', 'Fair', '', '5 Feet 2 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'LUCKNOW', 'BCA', NULL, 'Private Job', '', 'Business Person', 'House Wife', '1 BROTHER & 2 SISTER', '2022-06-07 14:5', '02:53:pm', 1097, 'No'),
(1543, ' BADARI NATH GUPTA', '', '', '5 Feet 4 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'VARANASI', 'B.A', NULL, 'Business', '3-5 Lacs', 'Business Person', 'Business Women', '', '2022-06-07 14:5', '02:57:pm', 1098, 'Yes'),
(1544, ' RAM AWADH GUPTA', 'Very Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'GHAZIPUR', 'MA', NULL, 'Unemployed', '', 'Private Job', 'House Wife', '2 BROTHER ', '2022-06-07 15:0', '03:02:pm', 1099, 'Yes'),
(1545, ' SHARDA PRASAD SAHU', 'Fair', '80-90 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'AMETHI', 'MA', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 2 SISTER', '2022-06-07 15:0', '03:07:pm', 1100, 'No'),
(1546, ' LATE NARAYAN CHANDRA GUPTA', 'Fair', '60-70 Kg', '5 Feet 8 inch', '', '', 'GUPTA', 'TELI', NULL, NULL, 'JAUNPUR', 'B.A', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER ', '2022-06-07 15:1', '03:10:pm', 1101, 'No'),
(1547, ' SHANKAR LAL SAHU', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'ALLAHABAD PRAYAGRAJ', 'MBBS/MD', NULL, 'Gov.Job ', '3-5 Lacs', 'Private Job', 'House Wife', '', '2022-06-07 15:1', '03:14:pm', 1102, 'No'),
(1548, ' BADARI LAL RATHORE', '', '', '', 'Divorced', '', 'GUPTA', 'TELI', NULL, NULL, 'RATLAM MP', 'B.Com', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '', '2022-06-07 15:1', '03:18:pm', 1103, 'No'),
(1549, ' DURGA SANKAR RATHOR', 'Fair', '', '5 Feet 7 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'INDORE MP', 'M.Tech', NULL, 'Business', '3-5 Lacs', 'Gov.Job ', 'House Wife', '2 BROTHER & 1 SISTER', '2022-06-07 15:2', '03:23:pm', 1104, 'No'),
(1551, ' NARENDRA GUPTA', 'Very Fair', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI GHAZIPUR', 'MBBS/MD', NULL, 'Private Job', '5-7 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-06-08 08:1', '08:19:am', 1106, 'No'),
(1552, ' jaiprakash gupta', 'Wheatish', '', '4 Feet 11inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI GHAZIPUR', 'B.Ed', NULL, 'Private Job', '1-3 Lacs', 'Ex.SeviceMan', 'House Wife', '3 BROTHER ', '2022-06-08 08:3', '08:32:am', 1107, 'No'),
(1553, ' CHUNNILAL SAHU', 'Very Fair', '', '5 Feet ', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'JAUNPUR', 'B.A', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '', '2022-06-08 08:3', '08:36:am', 1108, 'No'),
(1554, ' MUNSHI LAL GUPTA', 'Fair', '', '5 Feet 7 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'ALLAHABAD', 'B.Tech/BE', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER ', '2022-06-08 08:3', '08:39:am', 1109, 'No'),
(1555, ' RAMESH CHAND GUPTA', 'Very Fair', '', '5 Feet 3 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'BSC', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '2 BROTHER & 2 SISTER', '2022-06-08 08:4', '08:43:am', 1110, 'No'),
(1556, ' SHANKAR GUPTA', 'Very Fair', '', '5 Feet 2 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'PUNE', 'BCA', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-06-08 08:5', '08:53:am', 1111, 'No'),
(1560, ' Uma Shankar sahu', 'Fair', '50-60 Kg', '5 Feet ', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Prayagraj', 'BSC', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '2 brorher 1 sister', '2022-06-09 11:1', '11:16:am', 1114, 'No'),
(1561, ' Sanjay saw', 'Very Fair', '70-80 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Saw', 'Teli', NULL, NULL, 'Dhanbad, Jharkhand', 'B.Com', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', 'One brother', '2022-06-10 09:5', '09:53:am', 1115, 'No'),
(1566, ' ', 'Wheatish', '50-60 Kg', '5 Feet 10 inch', 'Never Married', 'slim', '', '', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '1 brother and 1 sis', '2022-06-12 14:3', '02:38:pm', 1116, 'No'),
(1567, ' d.k. gupta', 'Very Fair', '', '5 Feet 2 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'LUCKNOW', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '1 BROTHER & 2 SISTER', '2022-06-12 15:3', '03:38:pm', 1117, 'No'),
(1568, ' ramlakhan gupta', 'Fair', '60-70 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'udaipur rajasthan', 'MSC', NULL, 'Gov.Job ', '15-20 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 3 SISTER', '2022-06-12 15:4', '03:49:pm', 1118, 'No'),
(1570, ' GULAB CHAND GUPTA', 'Fair', '60-70 Kg', '5 Feet 4 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'JAUNPUR MUMBAI', 'ITI/Diploma', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '', '2022-06-12 16:0', '04:09:pm', 1120, 'No'),
(1572, ' NAND KISHOR GUPTA', 'Fair', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'DEORIA', 'B.Tech/BE', NULL, 'Gov.Job ', '5-7 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 3 SISTER', '2022-06-12 16:2', '04:22:pm', 1121, 'No'),
(1573, ' R GUPTA', 'Fair', '60-70 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'MIRZAPUR', 'MA', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '', '2022-06-12 16:3', '04:31:pm', 1122, 'No'),
(1574, ' ASHOK KUMAR SAHU', 'Wheatish', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'JAUNPUR', 'M.Com', NULL, 'Private Job', '3-5 Lacs', 'Private Job', 'House Wife', '2 BROTHER & 2 SISTER', '2022-06-12 16:4', '04:42:pm', 1123, 'No'),
(1576, ' Arun sahu', 'Fair', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'Athletic', 'Obc', 'teli', NULL, NULL, 'Hingoli Maharashtra', 'B.Com', NULL, 'Business', '1-3 Lacs', 'Farmer', 'House Wife', '1-1', '2022-06-12 19:5', '07:56:pm', 1124, 'No'),
(1576, ' ', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '', '2022-06-12 19:5', '07:57:pm', 1125, 'No'),
(1578, ' Ram sagar gupta', 'Very Fair', '', '5 Feet 3 inch', 'Never Married', 'slim', 'Gupta', 'Teli', NULL, NULL, 'Gorakhpur', 'ITI/Diploma', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '2 brorher 1 sister', '2022-06-14 10:1', '10:15:am', 1126, 'No'),
(1579, ' late.ganesh sahu', 'Fair', '50-60 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'sahu', 'hirwani', NULL, NULL, 'Durg', 'ITI/Diploma', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '3', '2022-06-15 13:1', '01:13:pm', 1127, 'No'),
(1580, ' Suresh c gupta', 'Wheatish', '', '5 Feet 6 inch', 'Never Married', 'Healthy', 'Gupta', 'Teli', NULL, NULL, 'Patana', 'MBA', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '2 brother 1 sister', '2022-06-20 21:1', '09:10:pm', 1128, 'No'),
(1582, ' Let mr. Tejsingh rathour', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'slim', 'Teli', 'Rathour', NULL, NULL, 'Etawah', 'HighSchool', NULL, 'Private Job', '1-3 Lacs', 'Private Job', 'House Wife', '3 brathars 1 sister', '2022-06-21 15:4', '03:48:pm', 1129, 'No'),
(1583, ' surendra gupta', 'Fair', '', '5 Feet ', '', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'varanasi', 'B.A', NULL, '', '', 'Business Person', 'House Wife', '1 brother 3 sister', '2022-06-22 15:5', '03:57:pm', 1130, 'No'),
(1584, ' purushottam das', 'Fair', '', '4 Feet 8inch', 'Never Married', 'Healthy', 'Gupta', 'Teli', NULL, NULL, 'varanasi', 'M.Com', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1 brother 3 sister', '2022-06-22 16:0', '04:07:pm', 1131, 'No'),
(1585, ' ram chandra rathore', 'Fair', '', '5 Feet 8 inch', 'Never Married', 'Healthy', 'Gupta', 'Teli', NULL, NULL, 'aligarh', 'M.Tech', NULL, 'Gov.Job ', '5-7 Lacs', 'Gov.Job ', 'House Wife', '2 brother 1 sister', '2022-06-22 16:1', '04:16:pm', 1132, 'No'),
(1586, ' ramgulam sahu', 'Fair', '', '5 Feet 9 inch', 'Never Married', 'Healthy', 'Gupta', 'Teli', NULL, NULL, 'banda', 'B.Tech/BE', NULL, 'Private Job', '10-15 Lacs', 'Ex.SeviceMan', 'House Wife', '2 brother 1 sister', '2022-06-22 16:2', '04:23:pm', 1133, 'No'),
(1587, ' prem chandra gupta', 'Fair', '', '5 Feet 10 inch', 'Never Married', 'Healthy', 'Gupta', 'Teli', NULL, NULL, 'prayagraj', 'MA', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '2 brother 0 sister', '2022-06-22 16:3', '04:30:pm', 1134, 'No'),
(1588, ' LALJI GUPTA', 'Wheatish', '100-150 Kg', '5 Feet 10 inch', 'Never Married', 'Healthy', 'Gupta', 'Teli', NULL, NULL, 'MUMBAI', '', NULL, '', '1-3 Lacs', 'Business Person', 'House Wife', '1 brother 1 sister', '2022-06-22 16:3', '04:36:pm', 1135, 'No'),
(1597, ' Uday prakash gupta', 'Wheatish', '', '5 Feet 8 inch', 'Widowed', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Jharkhand', 'Pharmacy', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '2 brorher 2 sister', '2022-07-03 10:0', '10:04:am', 1136, 'No'),
(1598, ' Rajesh gupta', 'Fair', '', '5 Feet 9 inch', 'Never Married', 'Healthy', 'Gupta', 'Teli', NULL, NULL, 'Varanasi', 'BSC', NULL, 'Business', '7-10 Lacs', 'Business Person', 'House Wife', '1 brorher 2 sister', '2022-07-03 10:1', '10:11:am', 1137, 'No'),
(1599, ' Santosh Kumar Gupta', 'Fair', '', '5 Feet 9 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Jaunpur', 'M.Com', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 brorher 2 sister', '2022-07-03 10:2', '10:22:am', 1138, 'Yes'),
(1176, ' ', 'Fair', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'Fit', 'Teli', '', NULL, NULL, 'Delhi and UP', 'B.Tech/BE', NULL, 'Gov.Job ', '7-10 Lacs', 'Business Person', 'House Wife', '2, 1 ', '2022-07-12 01:0', '01:09:am', 1139, 'No'),
(1176, ' ', 'Fair', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'Fit', 'Teli', '', NULL, NULL, 'Delhi and UP', 'B.Tech/BE', NULL, 'Gov.Job ', '7-10 Lacs', 'Business Person', 'House Wife', '2, 1 ', '2022-07-12 13:1', '01:19:pm', 1140, 'No'),
(1604, ' ', '', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'slim', 'teli', '', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '', '2022-07-12 22:0', '10:00:pm', 1141, 'No'),
(1605, ' Rakesh Kumar ', '', '', '5 Feet 6 inch', '', '', 'Teli', 'Teli', NULL, NULL, 'Kanpur', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Gov.Job ', 'House Wife', '1', '2022-07-15 22:4', '10:44:pm', 1142, 'No'),
(1606, ' ', 'Fair', '60-70 Kg', '5 Feet 6 inch', 'Never Married', '', '', '', NULL, NULL, 'Bhilai', 'MA', NULL, 'Business', '7-10 Lacs', 'Farmer', 'House Wife', '', '2022-07-16 14:2', '02:23:pm', 1143, 'No'),
(1606, ' ', 'Fair', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', '', '', NULL, NULL, 'Bhilai', 'Other', NULL, 'Business', '7-10 Lacs', 'Farmer', 'House Wife', '', '2022-07-17 20:1', '08:19:pm', 1144, 'No'),
(1609, ' Triloki gupta', 'Wheatish', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Kushinagar', 'ITI/Diploma', NULL, '', '', 'Business Person', 'House Wife', '1 brorher 2 sister', '2022-07-21 19:1', '07:14:pm', 1145, 'No'),
(1611, ' Satishbhai ', 'Very Fair', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'Modh-Modi', 'Hindu modh Ghanchi ', NULL, NULL, 'Surat', 'B.Tech/BE', NULL, 'Private Job', '1-3 Lacs', 'Private Job', 'House Wife', '1 sister', '2022-07-24 08:3', '08:37:am', 1146, 'No'),
(1612, ' Ram avadh gupta', 'Very Fair', '50-60 Kg', '5 Feet ', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'New Delhi', 'MA', NULL, 'Gov.Job ', '1-3 Lacs', 'Business Person', 'House Wife', '2 brorher 3 sister', '2022-07-24 16:5', '04:55:pm', 1147, 'No'),
(1613, ' Babu Lal Gupta', 'Fair', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Gorakhpur', 'B.A', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '3 brorher 2 sister', '2022-07-24 17:1', '05:10:pm', 1148, 'No'),
(1615, 'Late c l sahu', 'Wheatish', '80-90 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Bilaspur', 'B.Tech/BE', NULL, 'Gov.Job ', '3-5 Lacs', 'Farmer', 'House Wife', '4', '2022-07-24 23:3', '11:32:pm', 1149, 'No'),
(1617, ' Manoj Kumar Gupta', 'Very Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Gorakhpur', 'MBA', NULL, 'Private Job', '3-5 Lacs', 'Gov.Job ', 'House Wife', '1 brorher 1 sister', '2022-07-26 06:0', '06:06:am', 1150, 'No'),
(1618, ' Bhomaram Rathore', 'Fair', '60-70 Kg', '5 Feet 5 inch', 'Never Married', 'slim', 'Gupta', 'Teli', NULL, NULL, 'Surat', 'BDS', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '2 brorher', '2022-07-26 06:1', '06:15:am', 1151, 'No'),
(1619, ' Ashok shaw', 'Fair', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'slim', 'Sahu', 'Teli', NULL, NULL, 'Jabalpur', 'B.Tech/BE', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '2 brorher 1 sister', '2022-07-26 06:2', '06:23:am', 1152, 'No'),
(1621, ' Late. Phool Chand Sahu', 'Very Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Bahraich', 'BTC', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1 brorher 2 sister', '2022-07-27 11:3', '11:31:am', 1153, 'No'),
(1622, 'Jay Prakash', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'slim', 'Gupta', 'Teli', NULL, NULL, 'Buxar', 'Phd', NULL, 'Unemployed', '', 'Business Person', 'Gov.Job ', '2 brorher 1 sister', '2022-07-27 11:4', '11:45:am', 1154, 'No'),
(1623, ' R.K.Gupta', 'Fair', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Varanasi', 'Law', NULL, 'Private Job', '1-3 Lacs', 'Gov.Job ', 'Gov.Job ', '1 brorher', '2022-07-27 12:0', '12:00:pm', 1155, 'No'),
(1625, ' Lt. Keshav prasad sahu', 'Fair', '90-100 Kg', '6 Feet 1 inch', 'Divorced', 'Healthy', 'Sahu', 'Teli', NULL, NULL, 'Ahiwara Durg(C. G.)', 'HighSchool', NULL, 'Private Job', '1-3 Lacs', 'Farmer', 'House Wife', 'Two brother with me and one sister', '2022-07-28 10:5', '10:53:am', 1156, 'No'),
(1626, ' Rajeshwar p sah', 'Fair', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Agra', 'B.Tech/BE', NULL, 'Private Job', '7-10 Lacs', 'Ex.SeviceMan', 'House Wife', '2 brother 0 sister', '2022-07-28 20:0', '08:08:pm', 1157, 'No'),
(1627, ' Rajeshwar p sah', 'Fair', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'Healthy', 'Gupta', 'Teli', NULL, NULL, 'Agra', 'B.Tech/BE', NULL, 'Gov.Job ', '7-10 Lacs', 'Ex.SeviceMan', 'House Wife', '2 brother 0 sister', '2022-07-28 20:1', '08:13:pm', 1158, 'No'),
(1628, ' Late shita ram rathore', 'Fair', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'slim', 'Gupta', 'Teli', NULL, NULL, 'Rampur', 'MCA', NULL, 'Gov.Job ', '5-7 Lacs', 'Business Person', 'House Wife', '4 brother 2 sister', '2022-07-28 20:2', '08:22:pm', 1159, 'No'),
(1628, ' Late shita ram rathore', 'Fair', '60-70 Kg', '5 Feet 6 inch', 'Never Married', 'slim', 'Gupta', 'Teli', NULL, NULL, 'Rampur', 'MCA', NULL, 'Gov.Job ', '5-7 Lacs', 'Business Person', 'House Wife', '4 brother 2 sister', '2022-07-28 20:2', '08:22:pm', 1160, 'No'),
(1629, ' Pradeep Kumar Gupta ', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'MUMBAI', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 brother 3 sister', '2022-07-28 20:3', '08:33:pm', 1161, 'No'),
(1630, ' Dr. A P Gupta ', 'Wheatish', '90-100 Kg', '5 Feet 11 inch', 'Widowed', 'Healthy', 'Gupta', 'Teli', NULL, NULL, 'Mau', 'MBBS/MD', NULL, 'Private Job', '7-10 Lacs', 'Business Person', 'House Wife', '2 brother 2 sister', '2022-07-28 20:4', '08:44:pm', 1162, 'No'),
(1631, ' Prem Shankar Sahu', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'slim', 'Sahu', 'Teli', NULL, NULL, 'Kanpur', 'MA', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 brorher 2 sister', '2022-07-29 11:4', '11:48:am', 1163, 'No'),
(1634, ' Ramhit gupta', 'Very Fair', '50-60 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'GORAKHPUR', 'M.Com', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '0 brother 3 sister', '2022-07-31 11:0', '11:05:am', 1164, 'No'),
(1636, ' Mulchand gupta', 'Wheatish', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'Healthy', 'Gupta', 'Teli', NULL, NULL, 'Azamghar', 'B.A', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '2 brorher 3 sister', '2022-08-07 10:0', '10:02:am', 1165, 'Yes'),
(1637, ' Mulchand gupta', 'Wheatish', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'slim', 'Gupta', 'Teli', NULL, NULL, 'Azamghar', 'B.Com', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '2 brorher 3 sister', '2022-08-07 10:0', '10:08:am', 1166, 'Yes'),
(1638, 'Jaychand Bakelal Gupta', 'Fair', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'slim', 'Gupta', 'Teli', NULL, NULL, 'Mumbai ', 'Intermediate', NULL, 'Business', '', 'Business Person', 'House Wife', '3 brorher 1 sister', '2022-08-07 10:1', '10:16:am', 1167, 'Yes'),
(1643, ' Prakas sahu', 'Very Fair', '100-150 Kg', '5 Feet 11 inch', 'Never Married', 'Healthy', 'Sahu', 'Teli', NULL, NULL, 'Ranchi', '', NULL, 'Private Job', '7-10 Lacs', 'Business Person', 'House Wife', '1', '2022-09-01 18:5', '06:54:pm', 1168, 'No'),
(1644, ' Sajan Lal Gupta', 'Fair', '', '5 Feet 6 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Sultanpur', 'Intermediate', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '2 brorher 1 sister', '2022-09-03 13:4', '01:45:pm', 1169, 'No'),
(1645, ' Ram naresh sahu', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', '', 'Teli', 'Sahu', NULL, NULL, 'Unnao', 'M.Com', NULL, 'Business', '5-7 Lacs', 'Farmer', 'House Wife', '', '2022-09-09 06:4', '06:42:am', 1170, 'No'),
(1647, ' VEDRAM RATHORE', 'Wheatish', '', '5 Feet 5 inch', 'Never Married', 'Fit', 'gupta', 'TELI', NULL, NULL, 'PILIBHIT', '', NULL, 'Gov.Job ', '5-7 Lacs', 'Ex.SeviceMan', 'House Wife', '2 BROTHER 1 SISTER', '2022-09-17 18:1', '06:16:pm', 1171, 'No'),
(1648, ' LATE KANHAIYALAL SAHU', 'Fair', '', '5 Feet 9 inch', 'Never Married', 'Healthy', 'GUPTA', 'TELI', NULL, NULL, 'AYODHYA', 'B.A', NULL, 'Business', '5-7 Lacs', 'Business Person', 'House Wife', '1 BROTHER 4 SISTER', '2022-09-17 18:2', '06:26:pm', 1172, 'No'),
(1649, ' DR. SITA RAM RATHORE', 'Wheatish', '', '5 Feet 8 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'SITAPUR', 'MSC', NULL, 'Gov.Job ', '7-10 Lacs', 'Gov.Job ', 'House Wife', '2 BROTHER 2 SISTER', '2022-09-17 18:3', '06:35:pm', 1173, 'No'),
(1650, ' RAJKUMAR SAHU', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'AYODHYA', '', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '1 BROTHER & 2 SISTER', '2022-09-17 18:4', '06:41:pm', 1174, 'No'),
(1651, ' CHHOTE LAL GUPTA', 'Fair', '', '5 Feet 7 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'AYODHYA', 'B.Tech/BE', NULL, 'Gov.Job ', '3-5 Lacs', 'Gov.Job ', 'Gov.Job ', '1 BROTHER & 1 SISTER', '2022-09-17 18:5', '06:50:pm', 1175, 'No'),
(1652, ' GYANCHAND GUPTA', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI', '', NULL, 'Private Job', '7-10 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 2 SISTER', '2022-09-17 18:5', '06:58:pm', 1176, 'No'),
(1653, ' VAKIL GUPTA', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI', '', NULL, 'Private Job', '7-10 Lacs', 'Business Person', 'House Wife', '2 BROTHER', '2022-09-17 19:0', '07:03:pm', 1177, 'No'),
(1655, ' ramesh chand sahu', 'Very Fair', '', '5 Feet ', 'Never Married', 'Fit', 'gupta', 'teli', NULL, NULL, 'delhi', 'Phd', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '2 brother & 1 sister', '2022-09-18 10:4', '10:43:am', 1178, 'No'),
(1656, ' ram autar sahu', 'Wheatish', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Healthy', 'gupta', 'teli', NULL, NULL, 'sitapur', 'M.Tech', NULL, 'Gov.Job ', '5-7 Lacs', 'Ex.SeviceMan', 'House Wife', '2 brother & 2 sister', '2022-09-18 10:5', '10:54:am', 1179, 'Yes'),
(1657, ' SUBODH KUMAR GUPTA', 'Fair', '', '5 Feet 9 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'NALANDA', 'M.Tech', NULL, 'Gov.Job ', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER', '2022-09-18 11:0', '11:00:am', 1180, 'No'),
(1658, ' LATE REVA RAM RATHORE', 'Wheatish', '', '5 Feet 9 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'NEW DELHI', 'B.Tech/BE', NULL, 'Gov.Job ', '5-7 Lacs', 'Business Person', 'House Wife', '4 BROTHER & 2 SISTER', '2022-09-18 11:0', '11:07:am', 1181, 'No'),
(1659, ' LEKHRAJ SHASTRI', 'Fair', '', '6 Feet ', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'SHAHJAHANPUR', 'Pharmacy', NULL, 'Private Job', '5-7 Lacs', 'Ex.SeviceMan', 'House Wife', '2 BROTHER & 2 SISTER', '2022-09-18 11:1', '11:14:am', 1182, 'No'),
(1660, ' SURESH GUPTA', 'Fair', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'PRAYAGRAJ', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2022-09-18 11:3', '11:30:am', 1183, 'No'),
(1661, ' RAMASHISH GUPTA', 'Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'SALEMPUR', 'B.Tech/BE', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 2 SISTER', '2022-09-18 11:3', '11:36:am', 1184, 'No'),
(1662, ' CHANDRA BHANU GUPTA', 'Wheatish', '', '5 Feet ', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'KUSHINAGAR', 'B.Ed', NULL, 'Private Job', '', 'Gov.Job ', 'House Wife', '2 BROTHER & 2 SISTER', '2022-09-18 11:4', '11:42:am', 1185, 'No'),
(1663, ' gyan prakash sahu', 'Fair', '', '5 Feet 2 inch', 'Never Married', 'slim', 'gupta', 'teli', NULL, NULL, 'fatehpur', 'B.Ed', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1 brother & 3 sister', '2022-09-18 12:1', '12:12:pm', 1186, 'No'),
(1664, ' late sankar lal gupta', 'Fair', '', '5 Feet 3 inch', 'Never Married', 'Healthy', 'gupta', 'teli', NULL, NULL, 'jamshedpur', 'M.Com', NULL, 'Private Job', '15-20 Lacs', 'Business Person', 'House Wife', '2 brother & 1 sister', '2022-09-18 12:1', '12:18:pm', 1187, 'No'),
(1665, ' laxmi prakash gupta', 'Very Fair', '', '5 Feet 5 inch', 'Never Married', 'Fit', 'gupta', 'teli', NULL, NULL, 'chandigarh', 'B.A', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1 brother & 1 sister', '2022-09-18 12:2', '12:23:pm', 1188, 'No'),
(1666, ' fekoo prasad gupta', 'Fair', '', '5 Feet 5 inch', 'Never Married', 'slim', 'gupta', 'teli', NULL, NULL, 'deoria', 'BTC', NULL, 'Gov.Job ', '5-7 Lacs', 'Ex.SeviceMan', 'House Wife', '4 brother & 2 sister', '2022-09-18 12:3', '12:32:pm', 1189, 'No'),
(1667, ' LATE SUNIL L PARDESHI', 'Fair', '', '5 Feet 10 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'NASHIK', 'B.Com', NULL, 'Business', '5-7 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2022-09-18 14:5', '02:58:pm', 1190, 'No'),
(1668, ' RAJU GUPTA', 'Fair', '', '5 Feet 4 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'JAUNPUR', 'HighSchool', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '3 BROTHER', '2022-09-18 15:0', '03:06:pm', 1191, 'No'),
(1669, ' ACHCHHE LAL GUPTA', 'Very Fair', '', '5 Feet 5 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'VARANASI', 'Law', NULL, 'Private Job', '', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-09-18 15:1', '03:16:pm', 1192, 'No'),
(1672, ' JEET NARAYAN GUPTA', 'Fair', '', '5 Feet 3 inch', '', '', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI', 'Fine Arts', NULL, '', '', 'Farmer', 'House Wife', '', '2022-09-18 15:2', '03:23:pm', 1193, 'No'),
(1673, ' NAND KUMAR', 'Very Fair', '', '5 Feet 2 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'RANCHI', 'ITI/Diploma', NULL, 'Private Job', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '1 BROTHER & 2 SISTER', '2022-09-18 15:3', '03:31:pm', 1194, 'No'),
(1675, ' Swaminath gupta', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Healthy', 'Sahu', 'Gupta', NULL, NULL, 'Up', '', NULL, '', '', 'Farmer', 'House Wife', '', '2022-09-19 08:1', '08:12:am', 1195, 'No'),
(1678, ' Shyam Sunder Gupta ', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'slim', 'Sahu ', 'Teli', NULL, NULL, 'Noida', 'Nursing', NULL, 'Business', '40-80 Lacs', 'Business Person', 'House Wife', 'One Brother and One Sister ', '2022-10-07 22:4', '10:40:pm', 1196, 'Yes'),
(1678, ' Shyam Sunder Gupta ', 'Fair', '60-70 Kg', '5 Feet 5 inch', 'Never Married', 'slim', 'Sahu ', 'Teli ', NULL, NULL, 'Noida ', 'Nursing', NULL, 'Business', '40-80 Lacs', 'Business Person', 'House Wife', 'One Brother and one Sister ', '2022-10-08 10:3', '10:34:am', 1197, 'Yes'),
(1679, ' Let Prabhunath prasad', 'Very Fair', '', '5 Feet 4 inch', 'Never Married', '', 'Gupta', 'Teli', NULL, NULL, 'Bihar', 'B.A', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1 brorher 3 sister', '2022-10-08 13:5', '01:56:pm', 1198, 'No'),
(1679, ' Yogendra Prasad', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '', '2022-10-08 13:5', '01:56:pm', 1199, 'No'),
(1681, ' Suresh Prasad', 'Fair', '', '5 Feet 7 inch', 'Never Married', '', 'Gupta', 'Teli', NULL, NULL, 'New Delhi', 'Nursing', NULL, 'Gov.Job ', '3-5 Lacs', 'Gov.Job ', 'House Wife', '1 brorher 2 sister', '2022-10-08 14:0', '02:07:pm', 1200, 'No'),
(1682, ' Lallan Prasad', 'Wheatish', '', '5 Feet 6 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'New Delhi', 'B.Tech/BE', NULL, 'Private Job', '10-15 Lacs', 'Gov.Job ', 'House Wife', '', '2022-10-08 14:1', '02:12:pm', 1201, 'No'),
(1683, ' UPENDER SHAW', 'Fair', '', '5 Feet 2 inch', '', '', 'Gupta', 'Teli', NULL, NULL, 'Kolkata', 'B.Com', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '', '2022-10-08 14:1', '02:18:pm', 1202, 'No'),
(1684, ' Amin Gupta', 'Fair', '', '5 Feet 11 inch', 'Never Married', '', 'Gupta', 'Teli', NULL, NULL, 'Ballia', 'MBA', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '', '2022-10-08 14:2', '02:24:pm', 1203, 'No'),
(1687, ' B.G.SAHU', 'Very Fair', '', '5 Feet 6 inch', 'Never Married', 'Fit', 'gupta', 'teli', NULL, NULL, 'LUCKNOW', 'MBBS/MD', NULL, 'Gov.Job ', '20-40 Lacs', 'Ex.SeviceMan', 'House Wife', '2 BROTHER & 1 SISTER', '2022-10-26 15:2', '03:20:pm', 1204, 'No'),
(1688, ' RAJESH K SAHU', 'Fair', '', '5 Feet ', 'Never Married', 'slim', 'GUPTA', 'teli', NULL, NULL, 'JAUNPUR', 'ITI/Diploma', NULL, '', '', 'Business Person', 'House Wife', '2 BROTHER & 2 SISTER', '2022-10-26 15:2', '03:29:pm', 1205, 'No'),
(1690, ' ASHOK K SAHU', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'slim', 'GUPTA', 'teli', NULL, NULL, 'JHANSI', 'Nursing', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2022-10-26 15:3', '03:38:pm', 1206, 'No'),
(1691, ' MUNNA GUPTA', 'Very Fair', '50-60 Kg', '5 Feet ', 'Never Married', 'Fit', 'GUPTA', 'teli', NULL, NULL, 'MAU', 'BSC', NULL, '', '', 'Farmer', 'House Wife', '2 BROTHER & 5 SISTER', '2022-10-26 15:4', '03:44:pm', 1207, 'No'),
(1692, ' KATAWARU GUPTA', 'Wheatish', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'teli', NULL, NULL, 'MAHARAJGANJ', 'B.Com', NULL, 'Private Job', '1-3 Lacs', 'Farmer', 'House Wife', '', '2022-10-26 15:5', '03:50:pm', 1208, 'No'),
(1693, ' RAJESH K GUPTA', 'Wheatish', '70-80 Kg', '5 Feet 6 inch', 'Never Married', 'Healthy', '', 'teli', NULL, NULL, 'DEHRADUN', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Private Job', 'House Wife', '2 BROTHER & 0 SISTER', '2022-10-26 15:5', '03:57:pm', 1209, 'No'),
(1695, ' LATE GURU PRASAD SAH', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'GUPTA', 'teli', NULL, NULL, 'ARARIA', 'Nursing', NULL, 'Private Job', '1-3 Lacs', 'Farmer', 'House Wife', '2 BROTHER & 2 SISTER', '2022-10-26 16:1', '04:12:pm', 1210, 'No'),
(1696, ' HARI PRASAD SAHU', 'Very Fair', '60-70 Kg', '5 Feet 3 inch', 'Never Married', 'Healthy', 'GUPTA', 'teli', NULL, NULL, 'BHOPAL', 'M.Com', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2022-10-26 16:2', '04:23:pm', 1211, 'No'),
(1697, ' P.D.SAHU', 'Fair', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'slim', 'GUPTA', 'teli', NULL, NULL, 'BHOPAL', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '2 BROTHER & 1 SISTER', '2022-10-26 16:3', '04:31:pm', 1212, 'No'),
(1698, ' KRISHNA K GUPTA', 'Very Fair', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Healthy', 'GUPTA', 'teli', NULL, NULL, 'SONBHADRA', 'MCA', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2022-10-26 16:3', '04:37:pm', 1213, 'No'),
(1699, ' DR. HN SAHU', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'GUPTA', 'teli', NULL, NULL, 'BHOPAL', 'BAMS/BUMS', NULL, 'Private Job', '3-5 Lacs', 'Gov.Job ', 'Gov.Job ', '2 BROTHER & 2 SISTER', '2022-10-26 16:4', '04:45:pm', 1214, 'No'),
(1705, ' SANJAY GUPTA', 'Fair', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'DELHI', 'B.A', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2022-11-08 16:1', '04:18:pm', 1215, 'No'),
(1705, ' ', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '', '2022-11-08 16:1', '04:18:pm', 1216, 'Yes'),
(1705, ' SANJAY GUPTA', 'Fair', '60-70 Kg', '5 Feet 10 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'DELHI', 'B.A', NULL, 'Business', '5-7 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2022-11-08 16:2', '04:20:pm', 1217, 'Yes'),
(1707, ' RAMASHISH GUPTA', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'SALEMPUR', 'B.Tech/BE', NULL, 'Private Job', '7-10 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 2 SISTER', '2022-11-08 16:3', '04:36:pm', 1218, 'No'),
(1713, ' RAM VISHAL SAHU', 'Fair', '60-70 Kg', '5 Feet 6 inch', 'Never Married', '', 'SAHU', 'TELI', NULL, NULL, 'PRATAPGARH', 'BTC', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '3 BROTHER', '2023-01-22 08:2', '08:25:am', 1219, 'No'),
(1714, ' RAJESH KUMAR SAHU', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'SAHU', 'TELI', NULL, NULL, 'KANPUR', 'B.Tech/BE', NULL, 'Private Job', '15-20 Lacs', 'Business Person', 'House Wife', '2 BROTHER & 1 SISTER', '2023-01-22 08:3', '08:35:am', 1220, 'No'),
(1715, ' santosh kumar gupta', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'slim', 'Gupta', 'Teli', NULL, NULL, 'deoria', 'Nursing', NULL, 'Gov.Job ', '1-3 Lacs', 'Business Person', 'House Wife', '1 brother 2 sister', '2023-02-19 09:2', '09:21:am', 1221, 'Yes'),
(1716, ' vijay sahu', 'Fair', '', '5 Feet 10 inch', '', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'delhi', 'M.Tech', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 brother 1 sister', '2023-02-19 09:2', '09:29:am', 1222, 'No'),
(1717, ' Kamalesh gupta', 'Fair', '', '5 Feet 2 inch', 'Never Married', 'slim', 'Gupta', 'Teli', NULL, NULL, 'Faridabad', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 brorher 2 sister', '2023-02-19 09:3', '09:39:am', 1223, 'No'),
(1718, ' Late Durgesh gupta', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Maharajganj', 'M.Tech', NULL, 'Gov.Job ', '5-7 Lacs', 'Farmer', 'House Wife', '1 brorher 1 sister', '2023-02-19 09:4', '09:44:am', 1224, 'No'),
(1719, ' Domar singh', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Teli', 'Sahu', NULL, NULL, 'Kurud', '', NULL, '', '', 'Farmer', 'House Wife', '3 brother\'s/3 sister\'s', '2023-02-21 14:0', '02:00:pm', 1225, 'No'),
(1721, ' OM PRAKASH GUPTA', 'Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'BALLIA', 'B.Tech/BE', NULL, 'Private Job', '5-7 Lacs', 'Business Person', 'House Wife', '2 BROTHER 1 SISTER', '2023-04-12 17:5', '05:50:pm', 1226, 'No'),
(1722, ' DAYA SHANKAR GUPTA', 'Fair', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'DELHI', 'ITI/Diploma', NULL, 'Unemployed', '', 'Private Job', 'House Wife', '1 BROTHER &  1 SISTER', '2023-04-12 18:0', '06:01:pm', 1227, 'No'),
(1723, ' Late Premchand Gupta ', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'Teli', 'Kanaujiya ', NULL, NULL, 'Belthraroad Ballia', 'BAMS/BUMS', NULL, 'Unemployed', '', 'Gov.Job ', 'Gov.Job ', '1', '2023-04-15 10:4', '10:41:am', 1228, 'Yes'),
(1675, ' ', '', '', '', '', '', 'Sahu', '', NULL, NULL, '', 'BTC', NULL, '', '', 'Farmer', 'House Wife', '', '2023-04-19 11:0', '11:01:am', 1229, 'No'),
(1726, ' SURESH SAHU', 'Fair', '', '5 Feet 10 inch', 'Divorced', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'CHHINDWARA', 'MA', NULL, 'Gov.Job ', '7-10 Lacs', 'Farmer', 'Gov.Job ', '2 BROTHER ', '2023-04-19 18:3', '06:31:pm', 1230, 'No'),
(1727, ' RAKESH SAHU', 'Fair', '', '5 Feet 7 inch', 'Never Married', 'Healthy', 'GUPTA', 'TELI', NULL, NULL, 'KANPUR', 'MA', NULL, 'Business', '7-10 Lacs', 'Farmer', 'House Wife', '2 BROTHER 2 SISTER', '2023-04-19 18:4', '06:40:pm', 1231, 'No'),
(1728, ' RAJESH SAHU', 'Fair', '', '5 Feet 9 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'JABALPUR', 'BCA', NULL, 'Business', '5-7 Lacs', 'Farmer', 'House Wife', '1 BROTHER &  1 SISTER', '2023-04-19 18:4', '06:48:pm', 1232, 'No'),
(1730, ' RAM CHARAN GUPTA', 'Wheatish', '50-60 Kg', '5 Feet ', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'DELHI', 'M.Com', NULL, 'Private Job', '', 'Business Person', 'House Wife', '2 BROTHER 2 SISTER', '2023-04-19 19:2', '07:20:pm', 1234, 'No'),
(1731, ' vijay prasad sah', 'Wheatish', '', '5 Feet 9 inch', 'Divorced', '', 'GUPTA', 'TELI', NULL, NULL, 'MADHUBANI', 'MSC', NULL, '', '', 'Business Person', 'House Wife', '2 BROTHER ', '2023-04-24 17:4', '05:45:pm', 1235, 'No'),
(1733, ' SURESH CHAND RATHOR', 'Fair', '', '5 Feet 10 inch', 'Divorced', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'RATALAM', 'HighSchool', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '2 BROTHER 2 SISTER', '2023-04-25 16:3', '04:39:pm', 1236, 'No'),
(1734, ' SOHAN LAL SAHU', 'Fair', '', '5 Feet 8 inch', 'Divorced', '', 'GUPTA', '', NULL, NULL, 'GONDIA', 'M.Com', NULL, 'Business', '10-15 Lacs', 'Business Person', 'House Wife', '2 BROTHER ', '2023-04-25 16:5', '04:51:pm', 1237, 'No'),
(1735, ' VINAY GUPTA', 'Fair', '', '5 Feet 7 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'BALRAMPUR', 'B.Tech/BE', NULL, 'Private Job', '5-7 Lacs', 'Farmer', 'House Wife', '2 BROTHER 1 SISTER', '2023-04-25 17:0', '05:00:pm', 1238, 'No'),
(1736, ' RAMESH SAHU', 'Wheatish', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'DHANBAD', 'B.Tech/BE', NULL, '', '', 'Business Person', 'House Wife', '2 BROTHER ', '2023-04-25 17:0', '05:06:pm', 1239, 'No'),
(1737, ' MANIK SAHU', 'Very Fair', '', '5 Feet 5 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'KARNATAKA', 'B.Tech/BE', NULL, 'Private Job', '7-10 Lacs', 'Ex.SeviceMan', 'House Wife', '2 BROTHER 2 SISTER', '2023-04-25 17:1', '05:13:pm', 1240, 'No'),
(1738, ' RAMESHWAR PRASAD', 'Very Fair', '60-70 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'PATNA', '', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '', '2023-04-25 17:1', '05:18:pm', 1241, 'No'),
(1739, ' RAMESHWAR PRASAD', 'Fair', '', '6 Feet ', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'PATNA', 'B.A', NULL, 'Business', '7-10 Lacs', 'Business Person', 'House Wife', '2 BROTHER ', '2023-04-25 17:2', '05:25:pm', 1242, 'No'),
(1740, ' SUNIL PRASAD', 'Fair', '', '5 Feet 6 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'PATNA', 'B.Tech/BE', NULL, 'Private Job', '20-40 Lacs', 'Business Person', 'House Wife', '2 BROTHER ', '2023-04-25 17:3', '05:35:pm', 1243, 'No'),
(1741, ' BALRAM GUPTA', 'Wheatish', '', '5 Feet 11 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'VALSAD', 'B.Tech/BE', NULL, 'Private Job', '40-80 Lacs', 'Gov.Job ', 'House Wife', '', '2023-04-25 17:4', '05:42:pm', 1244, 'No'),
(1742, ' LATE RAMLAL GUPTA', 'Wheatish', '', '5 Feet 2 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI', 'BAMS/BUMS', NULL, 'Private Job', '5-7 Lacs', 'Farmer', 'House Wife', '4 BROTHER ', '2023-04-26 17:0', '05:06:pm', 1245, 'No'),
(1743, ' Jagdish Sah', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'Gupta', 'Teli', NULL, NULL, 'Jharkhand', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Private Job', 'House Wife', '2 brorher 3 sister', '2023-04-26 17:1', '05:12:pm', 1246, 'No'),
(1744, ' DINESH P SAHU', 'Fair', '', '5 Feet 8 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER &  1 SISTER', '2023-04-26 17:2', '05:22:pm', 1247, 'Yes'),
(1746, ' OM PRAKASH GUPTA', 'Very Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'GORAKHPUR', 'MBA', NULL, 'Gov.Job ', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '2 BROTHER 1 SISTER', '2023-04-26 17:3', '05:35:pm', 1248, 'No'),
(1748, ' MADAN LAL SAHU', 'Fair', '', '5 Feet 2 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'GURUGRAM', 'B.Com', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '', '2023-04-26 17:4', '05:44:pm', 1249, 'No'),
(1750, ' R.B. GUPTA', 'Wheatish', '60-70 Kg', '5 Feet 6 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'LUCKNOW', 'Law', NULL, 'Private Job', '5-7 Lacs', 'Ex.SeviceMan', 'House Wife', '2 BROTHER 1 SISTER', '2023-04-26 17:5', '05:52:pm', 1250, 'No'),
(1751, ' BHARAT GUPTA', 'Fair', '', '5 Feet 5 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'DELHI', 'Other', NULL, '', '15-20 Lacs', 'Business Person', 'House Wife', '4 BROTHER 2 SISTER', '2023-04-26 18:0', '06:03:pm', 1251, 'No'),
(1752, ' VIJAY SANKAR GUPTA', 'Fair', '50-60 Kg', '5 Feet 6 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'KUSHINAGAR', 'B.Tech/BE', NULL, 'Gov.Job ', '5-7 Lacs', 'Business Person', 'House Wife', '1 BROTHER &  3 SISTER', '2023-04-26 18:0', '06:08:pm', 1252, 'No'),
(1753, ' MANOJ GUPTA', 'Very Fair', '50-60 Kg', '5 Feet ', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'VARANASI', 'Nursing', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER &  1 SISTER', '2023-04-26 18:1', '06:13:pm', 1253, 'Yes'),
(1754, ' ', 'Fair', '', '5 Feet 3 inch', '', '', 'Gupta', 'Teli', NULL, NULL, 'Delhi', 'B.Ed', NULL, '', '', 'Farmer', 'House Wife', '1 brorher 1 sister', '2023-04-26 18:2', '06:20:pm', 1254, 'No'),
(1756, ' INDRAJEET SAHU', 'Wheatish', '', '5 Feet 4 inch', '', '', 'GUPTA', 'TELI', NULL, NULL, 'KANPUR', 'MSC', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER &  1 SISTER', '2023-04-26 18:2', '06:26:pm', 1255, 'No'),
(1757, ' NIRMAL KUMAR', 'Very Fair', '', '5 Feet 5 inch', '', '', 'GUPTA', 'TELI', NULL, NULL, 'PRAYAGRAJ', 'MBA', NULL, '', '', 'Ex.SeviceMan', 'House Wife', '1 BROTHER &  2 SISTER', '2023-04-26 18:3', '06:34:pm', 1256, 'No'),
(1759, ' shyamsundar gupta', 'Fair', '', '5 Feet 5 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'basti', 'Nursing', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '', '2023-04-27 16:4', '04:40:pm', 1257, 'Yes'),
(1760, ' sanjay kumar', 'Fair', '', '5 Feet 5 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'new delhi', 'MBA', NULL, 'Private Job', '3-5 Lacs', 'Gov.Job ', 'Gov.Job ', '2 BROTHER 1 SISTER', '2023-04-27 16:4', '04:49:pm', 1258, 'No'),
(1761, ' mahendra prasad', 'Fair', '', '5 Feet 9 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'DHANBAD', 'B.A', NULL, 'Business', '7-10 Lacs', 'Business Person', 'House Wife', '1 BROTHER &  1 SISTER', '2023-04-27 17:0', '05:03:pm', 1259, 'No'),
(1762, ' PRAMOD KUMAR', 'Very Fair', '', '5 Feet 11 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'DHANBAD', 'B.A', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER &  1 SISTER', '2023-04-27 17:1', '05:10:pm', 1260, 'No'),
(1762, ' PRAMOD KUMAR', 'Very Fair', '', '5 Feet 11 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'DHANBAD', 'B.A', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER &  1 SISTER', '2023-04-27 17:1', '05:10:pm', 1261, 'No'),
(1763, ' BANDHAN SAHU', 'Fair', '', '5 Feet 8 inch', '', '', 'GUPTA', 'TELI', NULL, NULL, 'JHARKHAND', 'B.Ed', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER &  1 SISTER', '2023-04-27 17:2', '05:20:pm', 1262, 'No'),
(1764, ' ALOK KUMAR SAHU', 'Fair', '', '5 Feet 6 inch', '', '', 'GUPTA', 'TELI', NULL, NULL, 'BAHRAICH', 'M.Com', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER &  1 SISTER', '2023-04-27 17:2', '05:24:pm', 1263, 'No'),
(1765, ' ARUN SAH', 'Fair', '', '5 Feet 4 inch', '', '', 'GUPTA', 'TELI', NULL, NULL, 'DARBHANGA', 'B.A', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER 3 SISTER', '2023-04-27 17:3', '05:36:pm', 1264, 'No'),
(1766, ' RAJ KUMAR PRASAD', 'Fair', '', '5 Feet 9 inch', '', '', 'GUPTA', 'TELI', NULL, NULL, 'NALANDA', 'BSC', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '2 BROTHER 2 SISTER', '2023-04-28 15:5', '03:56:pm', 1265, 'No');
INSERT INTO `sdetails` (`did`, `fname`, `scolour`, `sweight`, `sheight`, `sstatus`, `sbody`, `scast`, `sbcast`, `srasi`, `stob`, `spob`, `sedu`, `sedudetail`, `soccupation`, `sincome`, `foccu`, `moccu`, `bs`, `sdate`, `stime`, `id`, `smangal`) VALUES
(1767, ' RAMPRATAP GUPTA', 'Wheatish', '', '', 'Divorced', '', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI', 'Intermediate', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '', '2023-04-28 16:1', '04:10:pm', 1266, 'No'),
(1768, ' SHIV SHAMBHU P SAH', 'Wheatish', '', '5 Feet 8 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'AHMEDABAD', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Gov.Job ', 'Private Job', '1 BROTHER &  1 SISTER', '2023-04-28 16:2', '04:23:pm', 1267, 'No'),
(1769, ' ', 'Very Fair', '', '5 Feet 8 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'BOKARO', 'B.Com', NULL, 'Private Job', '3-5 Lacs', 'Farmer', 'House Wife', '2 BROTHER 1 SISTER', '2023-04-28 16:3', '04:38:pm', 1268, 'Yes'),
(1770, ' LATE OMPRAKASH GUPTA', 'Wheatish', '', '5 Feet 4 inch', '', '', 'GUPTA', 'TELI', NULL, NULL, 'KOLKATA', 'HighSchool', NULL, 'Business', '', 'Farmer', 'House Wife', '3 BROTHER 1 SISTER', '2023-04-28 16:4', '04:45:pm', 1269, 'No'),
(1772, ' late. virendra ksahu', 'Fair', '', '5 Feet 9 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'jhansi', 'B.Com', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER ', '2023-05-04 22:3', '10:38:pm', 1270, 'No'),
(1775, ' g.c. sahu', 'Fair', '', '5 Feet 3 inch', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'ALLAHABAD', 'MBA', NULL, '', '', 'Business Person', 'House Wife', '2 BROTHER ', '2023-05-05 12:5', '12:57:pm', 1271, 'No'),
(1776, ' ASHOK KUMAR GUPTA', 'Fair', '70-80 Kg', '5 Feet 8 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'PRAYAGRAJ', 'BDS', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER &  1 SISTER', '2023-05-05 13:0', '01:07:pm', 1272, 'No'),
(1777, ' HIRA LAL PRASAD', 'Fair', '', '5 Feet 8 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'EAST CHAMPARAN', 'Pharmacy', NULL, 'Business', '5-7 Lacs', 'Business Person', 'House Wife', '2 BROTHER 1 SISTER', '2023-05-05 13:1', '01:13:pm', 1273, 'No'),
(1778, ' PRAMOD K SAO', 'Fair', '', '5 Feet 8 inch', '', '', 'GUPTA', 'TELI', NULL, NULL, 'NALANDA', 'B.Com', NULL, 'Business', '5-7 Lacs', 'Business Person', 'House Wife', '2 BROTHER 1 SISTER', '2023-05-05 13:2', '01:22:pm', 1274, 'No'),
(1779, ' RATAN SAO', 'Very Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'BIHAR', 'MA', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER &  1 SISTER', '2023-05-05 13:3', '01:35:pm', 1275, 'No'),
(1780, ' J.C.RAJ', 'Fair', '', '5 Feet 7 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'BHAGALPUR', 'B.Tech/BE', NULL, 'Private Job', '3-5 Lacs', 'Ex.SeviceMan', 'House Wife', '', '2023-05-05 13:4', '01:49:pm', 1276, 'No'),
(1781, ' NEPAL SHAW', 'Wheatish', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'SAHU', 'TELI', NULL, NULL, 'KOLKATA', 'ITI/Diploma', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER ', '2023-05-05 13:5', '01:57:pm', 1277, 'No'),
(1782, ' SAHDEV SAH', 'Fair', '', '5 Feet 10 inch', '', '', 'SAHU', 'TELI', NULL, NULL, 'BIHAR', 'ITI/Diploma', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER &  2 SISTER', '2023-05-05 14:0', '02:03:pm', 1278, 'No'),
(1782, ' SAHDEV SAH', 'Fair', '', '5 Feet 10 inch', '', '', 'SAHU', 'TELI', NULL, NULL, 'BIHAR', 'ITI/Diploma', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER &  2 SISTER', '2023-05-05 14:0', '02:03:pm', 1279, 'No'),
(1783, ' BABU LAL GUPTA', 'Very Fair', '', '5 Feet 2 inch', '', '', 'GUPTA', 'TELI', NULL, NULL, 'BIHAR', 'BSC', NULL, '', '', 'Business Person', 'House Wife', '3 BROTHER 1 SISTER', '2023-05-05 14:1', '02:10:pm', 1280, 'No'),
(1784, ' MAHESH SAW', 'Fair', '', '5 Feet 2 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'BIHAR', 'B.A', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER &  2 SISTER', '2023-05-05 14:1', '02:19:pm', 1281, 'No'),
(1785, ' omprakash ', 'Fair', '50-60 Kg', '5 Feet 11 inch', 'Never Married', 'Fit', 'sahu', 'teli', NULL, NULL, 'indore', 'B.Tech/BE', NULL, 'Private Job', '20-40 Lacs', 'Farmer', 'House Wife', '1', '2023-05-05 16:4', '04:43:pm', 1282, 'No'),
(1786, ' Ashok k gupt', 'Very Fair', '', '5 Feet 3 inch', 'Never Married', 'slim', 'Gupta', 'Teli', NULL, NULL, 'Bodhgaya', 'MSC', NULL, '', '', 'Business Person', 'House Wife', '1 brorher 1 sister', '2023-05-06 12:1', '12:18:pm', 1283, 'No'),
(1788, ' vinod kumar sahu', 'Fair', '', '5 Feet ', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'jhansi', 'B.Ed', NULL, '', '', 'Business Person', 'House Wife', '2 BROTHER ', '2023-05-07 12:0', '12:06:pm', 1284, 'No'),
(1789, ' KAILASH SAHU', 'Fair', '', '5 Feet 9 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'JABALPUR', 'B.Tech/BE', NULL, 'Business', '7-10 Lacs', 'Business Person', 'House Wife', '2 BROTHER ', '2023-05-07 12:1', '12:16:pm', 1285, 'No'),
(1790, ' VINOD RATHOR', 'Fair', '', '', 'Divorced', '', 'GUPTA', 'TELI', NULL, NULL, 'INDORE', 'BSC', NULL, 'Business', '10-15 Lacs', 'Business Person', 'House Wife', '2 BROTHER 1 SISTER', '2023-05-07 12:3', '12:36:pm', 1286, 'No'),
(1791, ' OM PRAKASH NIRALA', 'Fair', '', '5 Feet 10 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'PATNA', 'B.Tech/BE', NULL, 'Private Job', '20-40 Lacs', 'Business Person', 'House Wife', '4 SISTER', '2023-05-07 12:4', '12:45:pm', 1287, 'No'),
(1792, ' Dubraj sahu', 'Fair', '', '5 Feet 4 inch', 'Never Married', 'slim', 'Gupta', 'Teli', NULL, NULL, 'Ranchi', 'BDS', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'Private Job', '1 brother 1 sister', '2023-05-07 15:0', '03:09:pm', 1288, 'No'),
(1794, ' Lalu ji rathod', 'Fair', '', '5 Feet 4 inch', 'Never Married', '', 'Gupta', 'Teli', NULL, NULL, 'Ratlam', 'B.A', NULL, '', '', 'Business Person', 'House Wife', '', '2023-05-09 11:4', '11:49:am', 1289, 'Yes'),
(1795, ' Hitesh k sahu', 'Very Fair', '', '5 Feet 8 inch', 'Never Married', 'Healthy', 'Gupta', 'Teli', NULL, NULL, 'prayagraj', 'B.Tech/BE', NULL, 'Private Job', '10-15 Lacs', 'Ex.SeviceMan', 'Business Women', '1 brother 1 sister', '2023-05-09 12:0', '12:01:pm', 1290, 'No'),
(1796, ' Jamnadas ', 'Fair', '50-60 Kg', '5 Feet 2 inch', 'Never Married', 'Fit', 'Soni', 'Parjiya Soni ', NULL, NULL, 'Mumbai ', 'HighSchool', NULL, 'Business', '3-5 Lacs', 'Private Job', 'House Wife', '1 sis 1 brother ', '2023-05-11 20:5', '08:52:pm', 1291, 'No'),
(1675, ' Swaminath gupta', 'Fair', '60-70 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'Teli', 'Sahu', NULL, NULL, 'Up mau', 'BTC', NULL, 'Business', '', 'Farmer', 'House Wife', '', '2023-05-20 11:3', '11:33:am', 1292, 'No'),
(1675, ' ', 'Fair', '', '5 Feet 3 inch', 'Never Married', 'Fit', 'Teli', 'Gupta', NULL, NULL, 'Up mau', 'BTC', NULL, 'Business', '', 'Farmer', 'House Wife', '', '2023-06-08 09:1', '09:18:am', 1293, 'No'),
(140, ' C P Gupta', 'Very Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Athletic', 'Gupta', 'Sahu', NULL, NULL, 'Varanasi', 'B.Tech/BE', NULL, 'Gov.Job ', '7-10 Lacs', 'Business Person', 'House Wife', '2', '2023-07-01 19:0', '07:02:pm', 1294, 'No'),
(1797, ' Heera lal', 'Fair', '60-70 Kg', '5 Feet 8 inch', 'Never Married', 'Athletic', 'Teli', 'Teli', NULL, NULL, 'Prayagraj ', 'M.Ed', NULL, 'Gov.Job ', '7-10 Lacs', 'Business Person', 'House Wife', '2', '2023-08-12 21:3', '09:35:pm', 1295, 'No'),
(1800, ' Sri kapil dev prasad', 'Fair', '70-80 Kg', '5 Feet 10 inch', 'Never Married', 'Fit', 'Teli', 'Teli', NULL, NULL, 'Main road gola, ramg', 'MCA', NULL, 'Private Job', '15-20 Lacs', 'Ex.SeviceMan', 'House Wife', 'Two sister', '2023-09-15 22:4', '10:42:pm', 1296, 'No'),
(1803, ' late. nirmal kumar sahu', 'Fair', '', '5 Feet 3 inch', 'Never Married', 'Fit', 'sahu', 'teli', NULL, NULL, 'muzaffarpur bihar', 'B.A', NULL, 'Business', '1-3 Lacs', 'Farmer', 'House Wife', '2 brother', '2023-10-21 21:4', '09:41:pm', 1297, 'No'),
(1804, ' V K Gupta', 'Wheatish', '50-60 Kg', '5 Feet 7 inch', 'Never Married', 'slim', 'Teli', 'Teli', NULL, NULL, 'Varanasi', 'MSC', NULL, 'Gov.Job ', '10-15 Lacs', 'Business Person', 'House Wife', '0 and 2', '2023-10-22 14:0', '02:02:pm', 1298, 'No'),
(1805, ' Arjun saw', 'Very Fair', '', '5 Feet 5 inch', 'Never Married', 'Fit', 'Gupta', 'teli', NULL, NULL, 'Nalanda Bihar', 'MA', NULL, 'Gov.Job ', '5-7 Lacs', 'Business Person', 'House Wife', '1 brother & 7 sister\'s', '2023-10-22 14:5', '02:53:pm', 1299, 'No'),
(1807, ' ABHAY PRASAD SAHU', 'Wheatish', '', '5 Feet 4 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'PASCHIMI CHAMPARAN B', 'B.A', NULL, 'Business', '1-3 Lacs', 'Business Person', 'House Wife', '2 BROTHR & 2 SISTER', '2023-10-22 15:1', '03:19:pm', 1300, 'No'),
(1808, ' RAMASHANKAR RATHOUR', 'Wheatish', '', '5 Feet 7 inch', '', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'KANPUR', 'Intermediate', NULL, 'Business', '3-5 Lacs', 'Farmer', 'House Wife', '1 BROTHER & 1 SISTER', '2023-10-22 16:0', '04:02:pm', 1301, 'No'),
(1810, ' VIJAY PRASAD', 'Fair', '', '5 Feet 10 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'GAYA BIHAR', 'M.Tech', NULL, 'Private Job', '7-10 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2023-10-22 16:2', '04:21:pm', 1302, 'No'),
(1812, ' LATE. ABHAYRAM SAHU', 'Fair', '', '5 Feet 3 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'BHOPAL', 'B.Com', NULL, '', '', 'Farmer', 'House Wife', '2 BROTHER & 1 SISTER', '2023-10-22 16:4', '04:42:pm', 1303, 'Yes'),
(1813, ' RAM SEWAK PRASAD', 'Fair', '', '5 Feet 5 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'SITAMARHI BIHAR', 'BAMS/BUMS', NULL, 'Private Job', '5-7 Lacs', 'Business Person', 'House Wife', '2 BROTHERS', '2023-10-22 16:5', '04:53:pm', 1304, 'No'),
(1814, ' ', 'Fair', '', '5 Feet 3 inch', 'Never Married', 'Fit', '', '', NULL, NULL, '', '', NULL, '', '', 'Farmer', 'House Wife', '', '2023-10-25 05:5', '05:58:am', 1305, 'No'),
(1815, ' Heera lal', 'Fair', '60-70 Kg', '5 Feet 7 inch', 'Never Married', 'Fit', 'Sahu', 'Teli', NULL, NULL, 'Prayagraj ', 'M.Ed', NULL, 'Gov.Job ', '7-10 Lacs', 'Business Person', 'House Wife', '2 brother 2 sister', '2023-10-29 21:5', '09:52:pm', 1306, 'No'),
(1820, ' rajaram rathor', 'Wheatish', '50-60 Kg', '5 Feet ', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'noida', 'B.Com', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHER 1 SISTER', '2023-12-14 21:0', '09:01:pm', 1307, 'Yes'),
(1822, ' Niraj ', 'Fair', '50-60 Kg', '5 Feet 5 inch', 'Never Married', 'Fit', 'Teli', '', NULL, NULL, '', 'B.A', NULL, 'Private Job', '3-5 Lacs', 'Private Job', 'House Wife', '', '2023-12-18 19:2', '07:28:pm', 1308, 'No'),
(1914, ' LT. SHAILENDRA SAHU', 'Fair', '', '5 Feet 3 inch', 'Never Married', 'slim', 'SAHU', 'TELI', NULL, NULL, 'DINDORI-M.P.', 'M.Com', NULL, 'Business', '3-5 Lacs', 'Farmer', 'House Wife', '1 BROTHER & 2 SISTER', '2024-02-01 08:2', '08:24:am', 1309, 'No'),
(1915, ' SHIV KUMAR SAHU', 'Fair', '', '5 Feet 4 inch', 'Never Married', 'Fit', 'SAHU', 'TELI', NULL, NULL, 'VIDISHA-M.P.', 'Intermediate', NULL, 'Unemployed', '', 'Business Person', 'House Wife', '2 BROTHR & 1 SISTER', '2024-02-01 08:3', '08:33:am', 1310, 'No'),
(1916, ' SHIV KUMAR SAHU', 'Fair', '', '5 Feet 7 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'VIDISHA-M.P.', 'B.A', NULL, 'Business', '5-7 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 2 SISTER', '2024-02-01 08:3', '08:38:am', 1311, 'No'),
(1922, ' RAMESH JI SAHU', 'Very Fair', '', '6 Feet ', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'VIDISHA-MP', 'Law', NULL, 'Business', '10-15 Lacs', 'Business Person', 'Business Women', '1 BROTHER & 3 SISTER', '2024-02-10 06:3', '06:39:am', 1312, 'No'),
(1923, ' RAMPAL SAHU', 'Fair', '', '5 Feet 10 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'SULTANPUR', 'MA', NULL, 'Business', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 2 SISTER', '2024-02-10 06:4', '06:47:am', 1313, 'No'),
(1924, ' LATE. DINESH KUMAR SAHU', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'AYODHYA', 'MA', NULL, 'Business', '7-10 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 2 SISTER', '2024-02-10 06:5', '06:52:am', 1314, 'No'),
(1925, ' RAJUMAR SAHU', 'Wheatish', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'KANPUR', 'B.Ed', NULL, '', '', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2024-02-10 06:5', '06:59:am', 1315, 'No'),
(1926, ' DINESH GUPTA', 'Fair', '', '5 Feet 11 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'MIRZAPUR', 'MBA', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 0 SISTER', '2024-02-10 07:0', '07:04:am', 1316, 'No'),
(1927, ' RAMESH LAL SAHU', '', '', '', '', '', 'GUPTA', 'TELI', NULL, NULL, 'ALLAHABAD', 'Other', NULL, '', '', 'Ex.SeviceMan', 'House Wife', '4 BROTHER & 4 SISTER', '2024-02-10 07:1', '07:10:am', 1317, 'No'),
(1929, ' SWROOPCHAND GUPTA', 'Fair', '60-70 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'JAUNPUR', 'B.Com', NULL, 'Business', '5-7 Lacs', 'Business Person', 'House Wife', '', '2024-03-03 08:0', '08:02:am', 1318, 'No'),
(1931, ' JAGDISH PRASAD SAHU', 'Fair', '50-60 Kg', '5 Feet 3 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'JHANSI', 'B.Com', NULL, 'Business', '5-7 Lacs', 'Business Person', 'House Wife', '', '2024-03-05 06:1', '06:19:am', 1319, 'No'),
(1932, ' MANIKALAL SAHU', 'Very Fair', '', '', 'Never Married', 'slim', 'GUPTA', 'TELI', NULL, NULL, 'AURANGABAD', 'B.Tech/BE', NULL, 'Private Job', '10-15 Lacs', 'Ex.SeviceMan', 'House Wife', '', '2024-03-05 06:2', '06:27:am', 1320, 'No'),
(1935, ' SURESH GUPTA', 'Fair', '', '5 Feet 2 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'ALLAHABAD', 'MBA', NULL, 'Private Job', '3-5 Lacs', 'Business Person', 'House Wife', '2 BROTHR & 1 SISTER', '2024-03-08 18:1', '06:14:pm', 1321, 'No'),
(1936, ' DIPCHANDRA GUPTA', 'Fair', '', '5 Feet 7 inch', 'Divorced', 'Healthy', 'GUPTA', 'TELI', NULL, NULL, 'VASAI EAST MUMBAI', 'HighSchool', NULL, 'Private Job', '1-3 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 4 SISTER', '2024-03-08 18:2', '06:21:pm', 1322, 'No'),
(1937, ' GHIRAHU V GUPTA', 'Wheatish', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI JOGESHWARI E', 'Law', NULL, 'Private Job', '5-7 Lacs', 'Business Person', 'House Wife', '2 BROTHR & 2 SISTER', '2024-03-08 18:2', '06:28:pm', 1323, 'No'),
(1938, ' SOHAN LAL GUPTA', 'Fair', '', '5 Feet 5 inch', 'Never Married', '', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI', 'Pharmacy', NULL, 'Private Job', '5-7 Lacs', 'Private Job', 'House Wife', '', '2024-03-08 18:3', '06:37:pm', 1324, 'No'),
(1939, ' JAI PRAKASH GUPTA', 'Fair', '', '5 Feet 8 inch', 'Never Married', 'Fit', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI', 'MBA', NULL, 'Private Job', '5-7 Lacs', 'Business Person', 'House Wife', '1 BROTHER & 1 SISTER', '2024-03-08 18:4', '06:44:pm', 1325, 'No'),
(1940, ' BHOLAPRASAD GUPTA', 'Fair', '50-60 Kg', '5 Feet 4 inch', 'Never Married', 'Healthy', 'GUPTA', 'TELI', NULL, NULL, 'MUMBAI MALAD W', 'B.Com', NULL, 'Unemployed', '', 'Ex.SeviceMan', 'House Wife', '1 BROTHER & 3 SISTER', '2024-03-08 18:5', '06:52:pm', 1326, 'No'),
(1943, 'kjkj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1328, NULL),
(1943, 'kjhkjh', 'Fair', '50-60 Kg', '4 Feet 2inch', 'Never Married', 'Fit', 'bkj', 'hjkjh', NULL, NULL, 'kjhk', 'BAMS/BUMS', NULL, 'Business', '3-5 Lacs', 'Farmer', 'Business Women', 'jh', NULL, NULL, 1329, 'No'),
(1943, 'kjhkj', 'Very Fair', '50-60 Kg', '4 Feet 2inch', 'Divorced', 'slim', 'jhk', 'khkj', NULL, NULL, 'h', 'BAMS/BUMS', NULL, 'Private Job', '1-3 Lacs', 'Farmer', 'Business Women', 'khkj', '2025-12-24 01:13:18', '01:13:am', 1330, 'Yes'),
(1943, ' Amardeep gupta', 'Wheatish', '60-70 Kg', '5 Feet 9 inch', 'Never Married', 'Fit', 'Baniya', 'Teli', NULL, NULL, 'Gotakhpur', 'B.Tech/BE', NULL, 'Private Job', '1 Crore', 'Business Person', 'House Wife', '1 -sister', '2025-12-24 11:01:03', '11:01:am', 1331, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `sd_client`
--

CREATE TABLE `sd_client` (
  `tbl` int(11) NOT NULL,
  `sd_name` varchar(35) NOT NULL,
  `sd_pass` varchar(100) DEFAULT NULL,
  `sd_d` varchar(15) DEFAULT NULL,
  `sd_m` varchar(15) DEFAULT NULL,
  `sd_y` varchar(15) DEFAULT NULL,
  `sd_mobile` varchar(15) NOT NULL,
  `sd_religion` varchar(20) DEFAULT NULL,
  `sd_sex` varchar(12) DEFAULT NULL,
  `sd_city` varchar(20) DEFAULT NULL,
  `sd_date` varchar(20) DEFAULT NULL,
  `sd_time` varchar(20) DEFAULT NULL,
  `sd_ip` varchar(60) DEFAULT NULL,
  `img1` varchar(120) DEFAULT NULL,
  `img2` varchar(50) DEFAULT NULL,
  `look` varchar(30) DEFAULT NULL,
  `sd_email` varchar(30) DEFAULT NULL,
  `sd_verify` varchar(10) DEFAULT NULL,
  `scast` varchar(30) DEFAULT NULL,
  `conleft` varchar(30) DEFAULT '1',
  `mail_mob` varchar(20) DEFAULT '0',
  `L_Name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sd_client`
--

INSERT INTO `sd_client` (`tbl`, `sd_name`, `sd_pass`, `sd_d`, `sd_m`, `sd_y`, `sd_mobile`, `sd_religion`, `sd_sex`, `sd_city`, `sd_date`, `sd_time`, `sd_ip`, `img1`, `img2`, `look`, `sd_email`, `sd_verify`, `scast`, `conleft`, `mail_mob`, `L_Name`) VALUES
(50, 'Jyoti Gupta', '$2y$10$kXvu8rM/yu1ywCTan15yT.0jm7AGDfR8OhD9MG/nYw2Co4UW3NJIq', '15', 'August', '1987', '7234935974', 'Hindu', 'Female', 'Ambedkarnagar', '19/04/2020', '10:30:am', 'Indore-India-49.15.167.150', 'img/20200423_105106.jpg', NULL, 'Myself', NULL, 'Engaged', 'Gupta', '1', '0', NULL),
(85, 'SARIKA SAHU', '$2y$10$HNaLuvMkLDKx2ZGEVWu9auRJXlajaiiRcXLlZEnTNMsKa/6I1Kje6', '24', 'November', '1996', '8839738058', 'Hindu', 'Female', 'Dhamtri', '19/04/2020', '06:25:am', 'Visakhapatnam-India-223.238.68.254', 'img/8839738059786.jpg', NULL, 'Myself', NULL, 'No', 'sahu', '1', '0', NULL),
(86, 'Purva vijay', '$2y$10$UsxGTy4XNjdhS2KkL2XUx.1G7ss9D.n/AmuzxVVAPjvcZj7dmpnIS', '21', 'November', '1989', '8329733507', 'Hindu', 'Female', 'Pune', '19/04/2020', '07:32:am', 'Hyderabad-India-106.76.230.184', 'img/8329733508786.jpg', NULL, 'Face-fraind', NULL, 'No', 'Sonvade', '1', '0', NULL),
(93, 'Lucky gupta', '$2y$10$/br.JKo1.4ozuDWn2EwgQeC3SGm7c0g8wp022JZAXYwFyxDXYfkTm', '6', 'May', '1992', '9540174837', 'HINDU', 'Female', 'ETAH', '19/04/2020', '02:11:pm', 'Greater Noida-India-180.151.81.62', 'img/IMG-20200311-WA0044.jpg', NULL, 'Myself', NULL, 'Premium', 'GUPTA', '1', '0', NULL),
(94, 'Puneet Gupta', '$2y$10$fJfz6U8YneM5399qoMp.oODoTSzjnQUGLMkwM/fqotGI3eoG57y/.', '2', 'August', '1995', '7053200705', 'Hindu', 'Male', 'New Delhi', '19/04/2020', '02:44:pm', 'New Delhi-India-183.82.81.130', NULL, 'img/demo.png', 'SON', NULL, 'VERIFIED', 'Gupta', '1', '0', NULL),
(95, 'GULSHAN KUMAR', '$2y$10$7S69M.c5syv7GDT.FVXXruXioJ/R7mH8haEOTLs7SCeZLItiE/Xd.', '4', 'August', '1991', '8115550594', 'HINDU', 'Male', 'BAREILLY', '19/04/2020', '04:15:pm', 'Meerut-India-106.223.180.39', 'img/G2.jpg', NULL, 'Myself', NULL, 'VERIFIED', 'SCHEDULED CASTE ', '1', '0', NULL),
(96, 'Jyoti', '$2y$10$kljrnNERstWjVsTFboL0QOCcNI1GtLqVSTU6g9x2isVTTGHo3I1Ca', '22', 'August', '1991', '9968619866', 'Hindu', 'Female', 'Delhi', '19/04/2020', '06:05:pm', 'Delhi-India-106.210.97.146', 'img/IMG_20191028_141937.jpg', NULL, 'Brother', NULL, 'Premium', 'Jatav', '1', '0', NULL),
(97, 'Thiru', '$2y$10$SdxC512tIlw0OGvOU8AAxO/81Gnptjaqec4q6DDiqmbuTcOR2Qaxe', '25', 'November', '1991', '9663171379', 'Hindu ', 'Male', 'BANGALORE', '19/04/2020', '07:34:pm', 'Chennai-India-106.208.131.91', NULL, 'img/demo.png', 'Myself', NULL, NULL, NULL, '1', '0', NULL),
(1943, 'Saurabh', '$2y$10$D8CyIjNG9qjHo47ngzrDgudWA3Mlyiq9Nos3HZQwnPGbC.EhB8Z1u', '30', 'January', '1996', '7800509777', 'Hindu', 'Male', NULL, '2025-09-09 19:23:43', '07:23:pm', '  106.219.120.211', NULL, 'img/demo.png', 'Brother', 'aditisingh123789.com@gmail.com', 'VERIFIED', 'gupta', '1', '1', 'Sahu');

-- --------------------------------------------------------

--
-- Table structure for table `sd_cum`
--

CREATE TABLE `sd_cum` (
  `tbl` int(11) NOT NULL,
  `sd_name` varchar(30) NOT NULL,
  `sd_pass` varchar(30) NOT NULL,
  `sd_d` varchar(15) DEFAULT NULL,
  `sd_m` varchar(15) DEFAULT NULL,
  `sd_y` varchar(15) DEFAULT NULL,
  `sd_mobile` varchar(14) NOT NULL,
  `sd_religion` varchar(15) DEFAULT NULL,
  `sd_sex` varchar(15) DEFAULT NULL,
  `sd_city` varchar(40) DEFAULT NULL,
  `sd_date` varchar(10) DEFAULT NULL,
  `sd_time` varchar(15) DEFAULT NULL,
  `sd_ip` varchar(50) DEFAULT NULL,
  `img1` varchar(20) DEFAULT NULL,
  `img2` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sd_cum`
--

INSERT INTO `sd_cum` (`tbl`, `sd_name`, `sd_pass`, `sd_d`, `sd_m`, `sd_y`, `sd_mobile`, `sd_religion`, `sd_sex`, `sd_city`, `sd_date`, `sd_time`, `sd_ip`, `img1`, `img2`) VALUES
(1, 'sachin', '98', '1', 'January', '1980', '9899990238', 'hindu', 'male', 'GHOSI', '14/04/2020', '01:07:am', NULL, 'img/content.png', 'img/content1.png'),
(2, 'supriya', '0000', '24', 'January', '1989', '8090922587', 'HINDU', 'Female', 'GHOSI', '14/04/2020', '01:44:am', NULL, 'img/content.png', 'img/content1.png');

-- --------------------------------------------------------

--
-- Table structure for table `shortlist`
--

CREATE TABLE `shortlist` (
  `tap` int(11) DEFAULT NULL,
  `sid` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `shortlist`
--

INSERT INTO `shortlist` (`tap`, `sid`, `id`) VALUES
(NULL, 315, 127),
(NULL, 315, 128),
(140, 50, 144),
(239, 169, 130),
(239, 493, 132),
(305, 50, 135),
(305, 169, 137),
(305, 426, 138),
(404, 725, 125),
(404, 1003, 153),
(789, 183, 123),
(792, 315, 126),
(794, 793, 129),
(798, 727, 133),
(833, 169, 134),
(843, 306, 140),
(860, 85, 142),
(860, 93, 143),
(860, 735, 141),
(972, 316, 145),
(991, 124, 146),
(1019, 96, 147),
(1019, 1006, 148),
(1027, 93, 149),
(1078, 998, 150),
(1095, 1037, 151),
(1104, 641, 152),
(1582, 1523, 155),
(1611, 1319, 156),
(1611, 1485, 164),
(1611, 1489, 163),
(1611, 1492, 162),
(1611, 1508, 161),
(1611, 1525, 160),
(1611, 1537, 159),
(1611, 1542, 158),
(1611, 1551, 157),
(1675, 237, 166),
(1686, 1617, 165);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_password` varchar(200) NOT NULL,
  `user_type` enum('master','user') NOT NULL,
  `user_image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_email`, `user_password`, `user_type`, `user_image`) VALUES
(1, 'sd', '$2y$10$fOOxIo4w1MIDvTgqeJzbV.K74F6xn2ClApsV8jeY01MEY2Fn60r/.', 'master', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `community`
--
ALTER TABLE `community`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`mobile`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `indian_caste_data`
--
ALTER TABLE `indian_caste_data`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `login_detail`
--
ALTER TABLE `login_detail`
  ADD PRIMARY KEY (`login_details_id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`login_details_id`);

--
-- Indexes for table `login_details1`
--
ALTER TABLE `login_details1`
  ADD PRIMARY KEY (`login_details_id`);

--
-- Indexes for table `msg`
--
ALTER TABLE `msg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mtap` (`mtap`);

--
-- Indexes for table `mvisitor`
--
ALTER TABLE `mvisitor`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `paytm`
--
ALTER TABLE `paytm`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `sdetails`
--
ALTER TABLE `sdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `sd_client`
--
ALTER TABLE `sd_client`
  ADD PRIMARY KEY (`tbl`),
  ADD UNIQUE KEY `sd_mobile` (`sd_mobile`);

--
-- Indexes for table `sd_cum`
--
ALTER TABLE `sd_cum`
  ADD PRIMARY KEY (`sd_mobile`),
  ADD UNIQUE KEY `tbl` (`tbl`);

--
-- Indexes for table `shortlist`
--
ALTER TABLE `shortlist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tap` (`tap`,`sid`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `community`
--
ALTER TABLE `community`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1384;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `indian_caste_data`
--
ALTER TABLE `indian_caste_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1390;

--
-- AUTO_INCREMENT for table `login_detail`
--
ALTER TABLE `login_detail`
  MODIFY `login_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1434;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2834;

--
-- AUTO_INCREMENT for table `login_details1`
--
ALTER TABLE `login_details1`
  MODIFY `login_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13312;

--
-- AUTO_INCREMENT for table `msg`
--
ALTER TABLE `msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=556;

--
-- AUTO_INCREMENT for table `mvisitor`
--
ALTER TABLE `mvisitor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2326;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `paytm`
--
ALTER TABLE `paytm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `sdetails`
--
ALTER TABLE `sdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1332;

--
-- AUTO_INCREMENT for table `sd_client`
--
ALTER TABLE `sd_client`
  MODIFY `tbl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1968;

--
-- AUTO_INCREMENT for table `sd_cum`
--
ALTER TABLE `sd_cum`
  MODIFY `tbl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shortlist`
--
ALTER TABLE `shortlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `msg`
--
ALTER TABLE `msg`
  ADD CONSTRAINT `msg_ibfk_1` FOREIGN KEY (`mtap`) REFERENCES `sd_client` (`tbl`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sdetails`
--
ALTER TABLE `sdetails`
  ADD CONSTRAINT `sdetails_ibfk_1` FOREIGN KEY (`did`) REFERENCES `sd_client` (`tbl`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shortlist`
--
ALTER TABLE `shortlist`
  ADD CONSTRAINT `shortlist_ibfk_1` FOREIGN KEY (`tap`) REFERENCES `sd_client` (`tbl`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `onliner1_globe`
--
CREATE DATABASE IF NOT EXISTS `onliner1_globe` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `onliner1_globe`;

-- --------------------------------------------------------

--
-- Table structure for table `discussion`
--

CREATE TABLE `discussion` (
  `UserId` int(11) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Comment` varchar(2000) DEFAULT NULL,
  `Time` varchar(50) DEFAULT NULL,
  `SendTo` varchar(30) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `Receiver` varchar(70) DEFAULT NULL,
  `status` varchar(30) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `discussion`
--

INSERT INTO `discussion` (`UserId`, `Name`, `Comment`, `Time`, `SendTo`, `id`, `Receiver`, `status`) VALUES
(833, 'Hello', '____@Hello Start chating to see online users____', '2026-01-03 23:09:16', 'All', 91935, NULL, '1'),
(833, 'Hello', 'is there any one ', '2026-01-03 23:09:35', 'All', 91936, NULL, '1'),
(833, 'Hello', 'i have time  ', '2026-01-03 23:09:50', 'All', 91937, NULL, '1'),
(833, 'Hello', 'i am free ', '2026-01-03 23:09:54', 'All', 91938, NULL, '1'),
(834, 'fog', '____@fog Start chating to see online users____', '2026-01-03 23:13:30', 'All', 91939, NULL, '1'),
(835, 'jkjlk', '____@jkjlk Start chating to see online users____', '2026-01-03 23:26:18', 'All', 91940, NULL, '1'),
(835, 'jkjlk', '_________Welcome Back-jkjlk____________', '2026-01-03 23:35:31', 'All', 91941, NULL, '1'),
(836, 'joi', '____@joi Start chating to see online users____', '2026-01-03 23:35:50', 'All', 91942, NULL, '1'),
(837, 'user', '____@user Start chating to see online users____', '2026-01-13 00:02:36', 'All', 91943, NULL, '1'),
(838, 'Hh', '____@Hh Start chating to see online users____', '2026-01-15 16:14:46', 'All', 91944, NULL, '1'),
(838, 'Hh', 'Jhhd', '2026-01-15 16:14:57', '837', 91945, 'user', '1'),
(838, 'Hh', 'How r ypu ', '2026-01-15 16:15:04', 'All', 91946, NULL, '1'),
(838, 'Hh', 'Jjj', '2026-01-15 16:15:57', 'All', 91947, NULL, '1'),
(838, 'Hh', 'Nnnsa', '2026-01-15 16:16:01', 'All', 91948, NULL, '1'),
(839, 'ss', '____@ss Start chating to see online users____', '2026-01-30 09:52:47', 'All', 91949, NULL, '1'),
(839, 'ss', 'hi', '2026-01-30 09:53:08', '838', 91950, 'Hh', '1'),
(839, 'ss', 'how r you ', '2026-01-30 09:53:17', 'All', 91951, NULL, '1'),
(839, 'ss', 'i am fine ', '2026-01-30 09:53:23', 'All', 91952, NULL, '1'),
(839, 'ss', 'whrere r you ', '2026-01-30 09:53:30', 'All', 91953, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `user_activity`
--

CREATE TABLE `user_activity` (
  `sid` int(11) NOT NULL,
  `active_id` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `last_activity` timestamp NULL DEFAULT NULL,
  `is_type` enum('no','yes') NOT NULL,
  `IPAdd` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_activity`
--

INSERT INTO `user_activity` (`sid`, `active_id`, `Name`, `last_activity`, `is_type`, `IPAdd`) VALUES
(761, 833, 'Hello', '2026-01-03 23:10:31', 'no', '106.219.122.106'),
(762, 834, 'fog', '2026-01-03 23:13:40', 'no', NULL),
(763, 835, 'jkjlk', '2026-01-03 23:26:28', 'no', NULL),
(764, 835, 'jkjlk', '2026-01-03 23:35:41', 'no', NULL),
(765, 836, 'joi', '2026-01-03 23:36:06', 'no', '106.219.122.106'),
(766, 837, 'user', '2026-01-13 00:03:09', 'no', '27.59.71.74'),
(767, 838, 'Hh', '2026-01-15 16:16:17', 'no', '152.58.115.221'),
(768, 839, 'ss', '2026-01-30 09:54:09', 'no', '49.36.190.70');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `Id` int(11) NOT NULL,
  `Name` varchar(70) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Visiting_date` varchar(50) DEFAULT NULL,
  `IPaddress` varchar(70) DEFAULT NULL,
  `vcount` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`Id`, `Name`, `Email`, `Visiting_date`, `IPaddress`, `vcount`) VALUES
(833, 'Hello', 'Hello1', '2026-01-03 23:09:16', '106.219.122.106', NULL),
(834, 'fog', 'fog', '2026-01-03 23:13:30', '106.219.122.106', NULL),
(835, 'jkjlk', 'jljlkl', '2026-01-03 23:26:18', '106.219.122.106', NULL),
(836, 'joi', 'joi', '2026-01-03 23:35:50', '106.219.122.106', NULL),
(837, 'user', 'user', '2026-01-13 00:02:36', '27.59.71.74', NULL),
(838, 'Hh', 'H', '2026-01-15 16:14:46', '152.58.115.221', NULL),
(839, 'ss', 'ss', '2026-01-30 09:52:47', '49.36.190.70', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `discussion`
--
ALTER TABLE `discussion`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `user_activity`
--
ALTER TABLE `user_activity`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `discussion`
--
ALTER TABLE `discussion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91954;

--
-- AUTO_INCREMENT for table `user_activity`
--
ALTER TABLE `user_activity`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=769;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=840;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `discussion`
--
ALTER TABLE `discussion`
  ADD CONSTRAINT `discussion_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `visitor` (`Id`);
--
-- Database: `onliner1_SD`
--
CREATE DATABASE IF NOT EXISTS `onliner1_SD` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `onliner1_SD`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `SID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `otp` varchar(6) DEFAULT NULL,
  `otp_expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_login` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT 1,
  `failed_login_attempts` int(11) DEFAULT 0,
  `account_locked_until` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`SID`, `name`, `email`, `username`, `password`, `age`, `DOB`, `otp`, `otp_expires_at`, `created_at`, `updated_at`, `last_login`, `is_active`, `failed_login_attempts`, `account_locked_until`) VALUES
(1, 'Admin User', 'd.sachin@live.in', 'admin', '$2y$10$1jKgFDgnBEthiRU8V3OhHeHPvjM.eZ3xKFWJGGvLqKl/LvQaIdh2K', 30, '1994-01-15', '001285', '2026-02-01 10:22:59', '2026-02-01 10:13:13', '2026-02-01 05:12:37', NULL, 1, 0, NULL),
(2, 'Test User', 'test@example.com', 'testuser', '$2y$10$SsQH9ZXRwJPJxQm3UKfCWuQPcBLqXWp1LpTHCQF1xZ8XQ9mKMo0mq', 25, '1999-05-20', NULL, NULL, '2026-02-01 10:13:13', '2026-02-01 10:13:13', NULL, 1, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`SID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `idx_username` (`username`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `onliner1_tracking`
--
CREATE DATABASE IF NOT EXISTS `onliner1_tracking` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `onliner1_tracking`;

-- --------------------------------------------------------

--
-- Table structure for table `gps_track`
--

CREATE TABLE `gps_track` (
  `UID` int(11) NOT NULL,
  `rider_id` varchar(100) NOT NULL,
  `prmt` varchar(200) DEFAULT NULL,
  `track_time` datetime NOT NULL DEFAULT current_timestamp(),
  `Rider_IP` varchar(50) DEFAULT NULL,
  `track_lng` decimal(11,8) NOT NULL,
  `track_lat` decimal(10,8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gps_track`
--

INSERT INTO `gps_track` (`UID`, `rider_id`, `prmt`, `track_time`, `Rider_IP`, `track_lng`, `track_lat`) VALUES
(480, '103.146.241.36', 'abcdef', '2026-01-31 18:19:30', NULL, 72.87740000, 19.07610000),
(226, '106.219.120.14', 'Sachin', '2025-12-11 23:48:55', NULL, 77.18697803, 28.50238824),
(211, '106.219.122.118', 'Saurabh', '2025-10-27 19:10:00', NULL, 77.18698303, 28.50241703),
(202, '106.219.122.171', 'as', '2025-10-26 01:56:24', NULL, 77.18830080, 28.49177600),
(467, '106.219.122.222', 'sachin', '2025-12-31 20:39:33', NULL, 77.18830080, 28.49177600),
(459, '106.219.123.6', 'Sachin', '2025-12-28 08:03:02', NULL, 77.18697284, 28.50238124),
(215, '116.74.91.4', 'abcdef', '2025-11-16 18:11:14', NULL, 72.87740000, 19.07610000),
(477, '152.58.120.124', 'hh', '2026-01-16 21:46:23', NULL, 77.18637442, 28.50228511),
(227, '152.58.121.12', 'Sachin', '2025-12-24 19:11:29', NULL, 77.19417206, 28.53256709),
(223, '152.59.173.143', 'null', '2025-11-18 12:48:13', NULL, 84.12553750, 26.73962260),
(471, '157.49.16.106', 'sach', '2026-01-12 22:26:44', NULL, 77.23089920, 28.61301760),
(214, '157.49.28.34', 'Gvvs', '2025-11-03 14:26:12', NULL, 77.19423897, 28.53261678),
(447, '157.49.35.42', 'Sachin', '2025-12-26 10:42:32', NULL, 77.21199790, 28.52764924),
(237, '163.223.42.116', 'abcdef', '2025-12-25 17:30:42', NULL, 77.59460000, 12.97160000),
(478, '182.79.251.138', 'abcdef', '2026-01-16 21:53:56', NULL, 72.87740000, 19.07610000),
(474, '27.59.71.74', 'sachin', '2026-01-12 23:53:48', NULL, 77.22762240, 28.59008000),
(501, '49.36.188.16', 'sachin', '2026-02-01 12:19:40', NULL, 77.18638589, 28.50218391);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gps_track`
--
ALTER TABLE `gps_track`
  ADD PRIMARY KEY (`rider_id`),
  ADD UNIQUE KEY `UID` (`UID`),
  ADD KEY `track_time` (`track_time`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gps_track`
--
ALTER TABLE `gps_track`
  MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
