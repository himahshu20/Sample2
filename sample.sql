-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2024 at 03:22 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sample`
--

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `user_id`, `name`, `subject`, `body`, `data`, `created_at`, `updated_at`) VALUES
(1, 1, 'TEST', '', '', '[{\"name\":\"Himanshu1\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu2\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu3\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu4\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu5\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu6\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu7\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu8\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu9\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu10\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu11\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu12\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu13\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu14\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu15\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu16\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu17\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu18\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu19\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu20\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu21\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu22\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu23\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu24\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu25\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu26\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu27\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu28\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu29\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu30\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu31\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu32\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu33\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu34\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu35\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu36\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu37\",\"email\":\"himanshu10K@gmail.com\"}]', '2024-10-11 07:19:12', '2024-10-11 07:19:12'),
(2, 1, 'TEST', '', '', '[{\"name\":\"Himanshu1\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu2\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu3\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu4\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu5\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu6\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu7\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu8\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu9\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu10\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu11\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu12\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu13\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu14\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu15\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu16\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu17\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu18\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu19\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu20\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu21\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu22\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu23\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu24\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu25\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu26\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu27\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu28\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu29\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu30\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu31\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu32\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu33\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu34\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu35\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu36\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu37\",\"email\":\"himanshu10K@gmail.com\"}]', '2024-10-11 07:27:44', '2024-10-11 07:27:44'),
(3, 1, 'TEST', 'TEST', 'SAMPLE MAIL', '[{\"name\":\"Himanshu1\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu2\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu3\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu4\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu5\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu6\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu7\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu8\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu9\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu10\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu11\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu12\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu13\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu14\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu15\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu16\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu17\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu18\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu19\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu20\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu21\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu22\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu23\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu24\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu25\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu26\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu27\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu28\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu29\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu30\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu31\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu32\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu33\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu34\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu35\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu36\",\"email\":\"himanshu10K@gmail.com\"},{\"name\":\"Himanshu37\",\"email\":\"himanshu10K@gmail.com\"}]', '2024-10-11 07:45:00', '2024-10-11 07:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_11_124456_create_campaigns_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Himanshu', 'himanshu20k@gmail.com', NULL, '$2y$12$rQPwrvrqKs6gXdEyg892Wu3.NtvJqMVLcamTdn7gaRb.0sKWOE58m', NULL, '2024-10-11 05:24:27', '2024-10-11 05:24:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaigns_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD CONSTRAINT `campaigns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
