-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2017 at 07:18 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blooddonorapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Chittagong', '2017-11-05 18:00:00', '2017-11-05 18:00:00'),
(2, 'Dhaka', '2017-11-05 18:00:00', '2017-11-05 18:00:00'),
(3, 'Rajshahi', '2017-11-05 18:00:00', '2017-11-05 18:00:00'),
(4, 'Cox\'s Bazar', '2017-11-05 18:00:00', '2017-11-05 18:00:00'),
(5, 'Comilla', '2017-11-05 18:00:00', '2017-11-05 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$TVz30ZA1FsDtqv/oFklIc.Q.DuRlmS9YuGimsG01ishfOdxWahrNG', 'FvObIocjf6m8amJYOCOWORSGY5ILeZXjQLtz1lKk9bgPknXl4JhpZ99lPHYj', '2017-11-05 18:00:00', '2017-11-06 11:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `blood_groups`
--

CREATE TABLE `blood_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `bloodGroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blood_groups`
--

INSERT INTO `blood_groups` (`id`, `bloodGroup`, `created_at`, `updated_at`) VALUES
(1, 'A RhD positive (A+)', '2017-11-05 18:00:00', '2017-11-05 18:00:00'),
(2, 'A RhD negative (A-)', '2017-11-05 18:00:00', '2017-11-05 18:00:00'),
(3, 'B RhD positive (B+)', '2017-11-05 18:00:00', '2017-11-05 18:00:00'),
(4, 'B RhD negative (B-)', '2017-11-05 18:00:00', '2017-11-05 18:00:00'),
(5, 'O RhD positive (O+)', '2017-11-05 18:00:00', '2017-11-05 18:00:00'),
(6, 'O RhD negative (O-)', '2017-11-05 18:00:00', '2017-11-05 18:00:00'),
(7, 'AB RhD positive (AB+)', '2017-11-05 18:00:00', '2017-11-05 18:00:00'),
(8, 'AB RhD negative (AB-)', '2017-11-05 18:00:00', '2017-11-05 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_11_06_134917_create_admins_table', 1),
('2017_11_06_135422_create_addresses_table', 1),
('2017_11_06_135524_create_blood_groups_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` tinyint(4) NOT NULL,
  `contactNo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bloodGroup` tinyint(4) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`, `contactNo`, `bloodGroup`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hasan', 'hasan@gmail.com', 1, '01929664558', 5, '$2y$10$mhmcdVf4h/Dh8WbD3T5tDOK4R9pJw5UXGpqNRh9IoiBRjkpbAyOcK', 'e6tjQStMzYZNmEAlIHlv14im5lPqKEiI7YZ18AB06HAEf1QU8grtBjUBOjRC', '2017-11-06 08:54:08', '2017-11-06 11:22:44'),
(2, 'Tanzim', 'tanzim@gmail.com', 2, '01986995448', 2, '$2y$10$TVz30ZA1FsDtqv/oFklIc.Q.DuRlmS9YuGimsG01ishfOdxWahrNG', 'FOhWyMNtSu6lHjdCAGTvRmwlarSMG76QUvRCPFdFN0KNERyJKTzsNoTWWxzD', '2017-11-06 08:57:25', '2017-11-06 11:30:42'),
(3, 'Saimon', 'saimon@gmail.com', 3, '01829621296', 3, '$2y$10$1fLX0cUlVsH.ftzZXMOWre7TT.40pQT/GByinron5EeEmQdeJcS5i', 'cFTsQW0GW17N7cIMak5EkLZeGKOxDDfNaF9apbTFO7FNVvO0vyX07xLexqxB', '2017-11-06 08:58:21', '2017-11-06 08:58:23'),
(4, 'Tuhin', 'tuhin@gmail.com', 4, '01829621317', 4, '$2y$10$AKhUP.LjQ6n0Z0nlWbJEI..vtR9s8HvvsJp61gp8rEnCDlJB11Lsq', 'ssHFzhNHHCF00gkZZumENsmx4loo5SZPBq5tShlzDtdGR3Vw059W49DrPIvu', '2017-11-06 08:59:06', '2017-11-06 09:29:28'),
(5, 'Kamrul', 'kamrul@gmail.com', 5, '01737904266', 5, '$2y$10$50Txew8wYqugFo.2T/KXn.nobjUvKlwQuNDpQrsSmuyZUdOyPofEa', 'Wu8zluIuNqCXhMIaZEN45B4DqnEhkeAHqkaumnCkzo9Ne0QWEquxf6GDuK2D', '2017-11-06 09:46:18', '2017-11-06 09:46:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `blood_groups`
--
ALTER TABLE `blood_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

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
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blood_groups`
--
ALTER TABLE `blood_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
