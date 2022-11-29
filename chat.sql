-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 29, 2022 at 03:22 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `to_user_id` bigint(20) NOT NULL,
  `from_user_id` bigint(20) NOT NULL,
  `chat_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `to_user_id`, `from_user_id`, `chat_message`, `created_at`, `updated_at`) VALUES
(1, 1, 11, 'hii', '2022-03-29 02:42:29', '2022-03-29 02:42:29'),
(2, 10, 11, 'hii', '2022-03-29 02:43:11', '2022-03-29 02:43:11'),
(3, 6, 11, 'hello', '2022-03-29 02:43:44', '2022-03-29 02:43:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_03_165822_create_chat_messages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Corbin Wilderman DDS', 'leo15', 'bria54@example.com', '2022-03-29 02:37:22', '$2y$10$IW/VLGmLILsUavmn6Z76M.PMBZkHTmxfnfTtcTEpIYkAOmPD0w6M6', 'qzZAHhYzRF', '2022-03-29 02:37:22', '2022-03-29 02:37:22'),
(2, 'Rocky Johnson', 'rohan.leila', 'sschinner@example.org', '2022-03-29 02:37:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FUknZB7QWD', '2022-03-29 02:37:22', '2022-03-29 02:37:22'),
(3, 'Dr. Wyatt Parker II', 'madge67', 'lesley.nolan@example.com', '2022-03-29 02:37:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lUtLqCITrY', '2022-03-29 02:37:22', '2022-03-29 02:37:22'),
(4, 'Bo Yost', 'rhoda.cruickshank', 'garry07@example.com', '2022-03-29 02:37:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XLikrq4KLE', '2022-03-29 02:37:22', '2022-03-29 02:37:22'),
(5, 'Jerome Wiza', 'beryl44', 'angel36@example.com', '2022-03-29 02:37:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vb1G8APiqi', '2022-03-29 02:37:22', '2022-03-29 02:37:22'),
(6, 'Clarissa Kemmer', 'ulittel', 'dooley.imogene@example.com', '2022-03-29 02:37:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bty46dNi1w', '2022-03-29 02:37:22', '2022-03-29 02:37:22'),
(7, 'Orville Jerde', 'lesly.jast', 'cordie93@example.org', '2022-03-29 02:37:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aR55ubmUoV', '2022-03-29 02:37:22', '2022-03-29 02:37:22'),
(8, 'Mr. Emmitt O\'Connell I', 'haylie.kuhn', 'xmoore@example.org', '2022-03-29 02:37:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BA1k5cX2hb', '2022-03-29 02:37:22', '2022-03-29 02:37:22'),
(9, 'Fausto Rutherford', 'econn', 'bstokes@example.net', '2022-03-29 02:37:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8tPQ6NLF1a', '2022-03-29 02:37:22', '2022-03-29 02:37:22'),
(10, 'Ewald Lind', 'gutmann.anna', 'hkling@example.org', '2022-03-29 02:37:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sPpqhuJ3yg', '2022-03-29 02:37:22', '2022-03-29 02:37:22'),
(11, 'jaymin', 'jaymin', 'modijaymin86@gmail.com', NULL, '$2y$10$IW/VLGmLILsUavmn6Z76M.PMBZkHTmxfnfTtcTEpIYkAOmPD0w6M6', NULL, '2022-03-29 02:42:22', '2022-03-29 02:42:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_messages_to_user_id_index` (`to_user_id`),
  ADD KEY `chat_messages_from_user_id_index` (`from_user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
