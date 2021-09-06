-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 14, 2021 at 01:36 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `on_post` bigint(20) UNSIGNED NOT NULL,
  `from_user` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `on_post`, `from_user`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Great!', '2021-05-13 10:06:01', '2021-05-13 10:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2021_05_08_000000_create_failed_jobs_table', 1),
(6, '2021_05_08_000000_create_users_table', 1),
(7, '2021_05_08_033538_posts', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `title`, `body`, `slug`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Team Project Report', '<table>\r\n<tbody>\r\n<tr>\r\n<td style=\"border-color: blue; background-color: blue; color: white; font-weight: bold; padding-left: 10px; font-size: 16pt; height: 35px; text-align: center; vertical-align: middle;\">Team Project Report Can Be Displaed Here</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'team-project-report', 1, '2021-05-13 10:04:41', '2021-05-14 02:01:15'),
(2, 1, 'Team Members', '<table style=\"height: 332px;\" width=\"648\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-color: blue; background-color: blue; color: white; font-weight: bold; width: 100px; height: 45px; padding-left: 10px; font-size: 16pt; text-align: left; vertical-align: middle;\">ID</td>\r\n<th style=\"border-color: blue; background-color: blue; color: white; font-weight: bold; width: 200px; height: 45px; padding-left: 10px; font-size: 16pt; text-align: left; vertical-align: middle;\">Name</th>\r\n</tr>\r\n<tr>\r\n<td style=\"border-color: blue; background-color: blue; color: white; font-weight: bold; padding-left: 10px; font-size: 16pt; text-align: left; vertical-align: middle;\">U1810069</td>\r\n<td style=\"border-color: blue; background-color: blue; color: white; font-weight: bold; padding-left: 10px; font-size: 16pt; text-align: left; vertical-align: middle;\">\r\n<p>Safarov Otamurod</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-color: blue; background-color: blue; color: white; font-weight: bold; padding-left: 10px; font-size: 16pt; text-align: left; vertical-align: middle;\">U1910061</td>\r\n<td style=\"border-color: blue; background-color: blue; color: white; font-weight: bold; padding-left: 10px; font-size: 16pt; text-align: left; vertical-align: middle;\">\r\n<p>Karimov Khojiakbar</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-color: blue; background-color: blue; color: white; font-weight: bold; padding-left: 10px; font-size: 16pt; text-align: left; vertical-align: middle;\">U1910089</td>\r\n<td style=\"border-color: blue; background-color: blue; color: white; font-weight: bold; padding-left: 10px; font-size: 16pt; text-align: left; vertical-align: middle;\">\r\n<p>Askarov Jamshid</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-color: blue; background-color: blue; color: white; font-weight: bold; padding-left: 10px; font-size: 16pt; text-align: left; vertical-align: middle;\">U1910091</td>\r\n<td style=\"border-color: blue; background-color: blue; color: white; font-weight: bold; padding-left: 10px; font-size: 16pt; text-align: left; vertical-align: middle;\">\r\n<p>Ulmasov Mirjakhon</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-color: blue; background-color: blue; color: white; font-weight: bold; padding-left: 10px; font-size: 16pt; text-align: left; vertical-align: middle;\">U1910295</td>\r\n<td style=\"border-color: blue; background-color: blue; color: white; font-weight: bold; padding-left: 10px; font-size: 16pt; text-align: left; vertical-align: middle;\">\r\n<p>Abdurashidov Abdulla</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'table-data', 1, '2021-05-14 01:29:09', '2021-05-14 06:35:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','author','subscriber') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscriber',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'safarovotamurod@gmail.com', NULL, '$2y$10$GRnaRbpcEvtnE.YguVHEvufcPFF.iR3axYBCS7zGbv52ZHWFgSddG', 'admin', 'LsX6uxfRhVfNOmaf4i5FenDcOmaOENdQmaVkBuQbb5MDEVLG8PIRC0qBK1q9', '2021-05-13 09:59:40', '2021-05-13 09:59:40'),
(2, 'Otamurod', 'o.safarov@student.inha.uz', NULL, '$2y$10$apJtEvo4.0OBbK.Twm4L/eBRC3.z45UHYkq2IHiNpeBQ7mEOO6XKm', 'subscriber', 'sz7Zsl7TUi2ItVcnNXMMDVI6E9LCfjTN2gNBb9KijR1iUtc7nDBSWYJbclwL', '2021-05-13 10:05:36', '2021-05-13 10:05:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_on_post_foreign` (`on_post`),
  ADD KEY `comments_from_user_foreign` (`from_user`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_author_id_foreign` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_from_user_foreign` FOREIGN KEY (`from_user`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_on_post_foreign` FOREIGN KEY (`on_post`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
