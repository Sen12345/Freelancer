-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2022 at 04:01 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freelancerapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `fromcurrency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tocurrency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rates` decimal(8,2) NOT NULL,
  `since` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `until` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `user_id`, `fromcurrency`, `tocurrency`, `rates`, `since`, `until`, `created_at`, `updated_at`) VALUES
(1, 1, 'GBP', 'USD', '1.36', '2022-01-11 22:54:53', NULL, '2022-01-11 22:54:53', '2022-01-11 22:54:53'),
(2, 1, 'EUR', 'USD', '1.36', '2022-01-11 22:54:54', NULL, '2022-01-11 22:54:54', '2022-01-11 22:54:54'),
(3, 1, 'GBP', 'USD', '1.36', '2022-01-11 22:56:21', NULL, '2022-01-11 22:56:21', '2022-01-11 22:56:21'),
(4, 1, 'EUR', 'USD', '1.36', '2022-01-11 22:56:21', NULL, '2022-01-11 22:56:21', '2022-01-11 22:56:21'),
(5, 1, 'GBP', 'USD', '1.36', '2022-01-11 23:01:36', NULL, '2022-01-11 23:01:36', '2022-01-11 23:01:36'),
(6, 1, 'EUR', 'USD', '1.36', '2022-01-11 23:01:36', NULL, '2022-01-11 23:01:36', '2022-01-11 23:01:36'),
(7, 1, 'GBP', 'USD', '1.36', '2022-01-11 23:03:03', NULL, '2022-01-11 23:03:03', '2022-01-11 23:03:03'),
(8, 1, 'EUR', 'USD', '1.36', '2022-01-11 23:03:03', NULL, '2022-01-11 23:03:03', '2022-01-11 23:03:03'),
(9, 1, 'GBP', 'USD', '1.36', '2022-01-11 23:03:17', NULL, '2022-01-11 23:03:17', '2022-01-11 23:03:17'),
(10, 1, 'EUR', 'USD', '1.36', '2022-01-11 23:03:17', NULL, '2022-01-11 23:03:17', '2022-01-11 23:03:17'),
(11, 1, 'GBP', 'USD', '1.36', '2022-01-11 23:04:31', NULL, '2022-01-11 23:04:31', '2022-01-11 23:04:31'),
(12, 1, 'EUR', 'USD', '1.36', '2022-01-11 23:04:31', NULL, '2022-01-11 23:04:31', '2022-01-11 23:04:31'),
(13, 1, 'GBP', 'USD', '1.36', '2022-01-11 23:17:49', NULL, '2022-01-11 23:17:49', '2022-01-11 23:17:49'),
(14, 1, 'EUR', 'USD', '1.36', '2022-01-11 23:17:50', NULL, '2022-01-11 23:17:50', '2022-01-11 23:17:50'),
(15, 1, 'GBP', 'USD', '1.36', '2022-01-11 23:19:36', NULL, '2022-01-11 23:19:36', '2022-01-11 23:19:36'),
(16, 1, 'EUR', 'USD', '1.36', '2022-01-11 23:19:36', NULL, '2022-01-11 23:19:36', '2022-01-11 23:19:36'),
(17, 1, 'GBP', 'USD', '1.36', '2022-01-11 23:20:20', NULL, '2022-01-11 23:20:20', '2022-01-11 23:20:20'),
(18, 1, 'EUR', 'USD', '1.36', '2022-01-11 23:20:20', NULL, '2022-01-11 23:20:20', '2022-01-11 23:20:20'),
(19, 1, 'GBP', 'USD', '1.36', '2022-01-11 23:25:07', NULL, '2022-01-11 23:25:07', '2022-01-11 23:25:07'),
(20, 1, 'EUR', 'USD', '1.36', '2022-01-11 23:25:07', NULL, '2022-01-11 23:25:07', '2022-01-11 23:25:07'),
(21, 1, 'GBP', 'USD', '1.36', '2022-01-11 23:31:00', NULL, '2022-01-11 23:31:00', '2022-01-11 23:31:00'),
(22, 1, 'EUR', 'USD', '1.36', '2022-01-11 23:31:00', NULL, '2022-01-11 23:31:00', '2022-01-11 23:31:00'),
(23, 1, 'GBP', 'USD', '1.36', '2022-01-11 23:31:44', NULL, '2022-01-11 23:31:44', '2022-01-11 23:31:44'),
(24, 1, 'EUR', 'USD', '1.36', '2022-01-11 23:31:44', NULL, '2022-01-11 23:31:44', '2022-01-11 23:31:44'),
(25, 1, 'GBP', 'USD', '1.36', '2022-01-11 23:33:50', NULL, '2022-01-11 23:33:50', '2022-01-11 23:33:50'),
(26, 1, 'EUR', 'USD', '1.36', '2022-01-11 23:33:51', NULL, '2022-01-11 23:33:51', '2022-01-11 23:33:51'),
(27, 1, 'GBP', 'USD', '1.36', '2022-01-11 23:37:14', NULL, '2022-01-11 23:37:14', '2022-01-11 23:37:14'),
(28, 1, 'EUR', 'USD', '1.36', '2022-01-11 23:37:15', NULL, '2022-01-11 23:37:15', '2022-01-11 23:37:15'),
(29, 1, 'GBP', 'USD', '1.36', '2022-01-11 23:38:36', NULL, '2022-01-11 23:38:36', '2022-01-11 23:38:36'),
(30, 1, 'EUR', 'USD', '1.36', '2022-01-11 23:38:37', NULL, '2022-01-11 23:38:37', '2022-01-11 23:38:37'),
(31, 1, 'GBP', 'USD', '1.36', '2022-01-11 23:39:13', NULL, '2022-01-11 23:39:13', '2022-01-11 23:39:13'),
(32, 1, 'EUR', 'USD', '1.36', '2022-01-11 23:39:13', NULL, '2022-01-11 23:39:13', '2022-01-11 23:39:13'),
(33, 1, 'GBP', 'USD', '1.36', '2022-01-11 23:42:02', NULL, '2022-01-11 23:42:02', '2022-01-11 23:42:02'),
(34, 1, 'EUR', 'USD', '1.36', '2022-01-11 23:42:02', NULL, '2022-01-11 23:42:02', '2022-01-11 23:42:02'),
(35, 1, 'GBP', 'USD', '1.36', '2022-01-11 23:42:30', NULL, '2022-01-11 23:42:30', '2022-01-11 23:42:30'),
(36, 1, 'EUR', 'USD', '1.36', '2022-01-11 23:42:31', NULL, '2022-01-11 23:42:31', '2022-01-11 23:42:31'),
(37, 1, 'GBP', 'USD', '1.36', '2022-01-11 23:44:42', NULL, '2022-01-11 23:44:42', '2022-01-11 23:44:42'),
(38, 1, 'EUR', 'USD', '1.36', '2022-01-11 23:44:42', NULL, '2022-01-11 23:44:42', '2022-01-11 23:44:42'),
(39, 1, 'GBP', 'USD', '1.36', '2022-01-11 23:45:01', NULL, '2022-01-11 23:45:01', '2022-01-11 23:45:01'),
(40, 1, 'EUR', 'USD', '1.36', '2022-01-11 23:45:01', NULL, '2022-01-11 23:45:01', '2022-01-11 23:45:01'),
(41, 1, 'GBP', 'USD', '1.36', '2022-01-11 23:45:20', NULL, '2022-01-11 23:45:20', '2022-01-11 23:45:20'),
(42, 1, 'EUR', 'USD', '1.36', '2022-01-11 23:45:21', NULL, '2022-01-11 23:45:21', '2022-01-11 23:45:21'),
(43, 1, 'GBP', 'USD', '1.36', '2022-01-11 23:45:39', NULL, '2022-01-11 23:45:39', '2022-01-11 23:45:39'),
(44, 1, 'EUR', 'USD', '1.36', '2022-01-11 23:45:39', NULL, '2022-01-11 23:45:39', '2022-01-11 23:45:39'),
(45, 1, 'GBP', 'USD', '1.36', '2022-01-11 23:45:57', NULL, '2022-01-11 23:45:57', '2022-01-11 23:45:57'),
(46, 1, 'EUR', 'USD', '1.36', '2022-01-11 23:45:58', NULL, '2022-01-11 23:45:58', '2022-01-11 23:45:58'),
(47, 1, 'GBP', 'USD', '1.36', '2022-01-11 23:53:16', NULL, '2022-01-11 23:53:16', '2022-01-11 23:53:16'),
(48, 1, 'EUR', 'USD', '1.36', '2022-01-11 23:53:16', NULL, '2022-01-11 23:53:16', '2022-01-11 23:53:16'),
(49, 1, 'GBP', 'USD', '1.36', '2022-01-11 23:54:21', NULL, '2022-01-11 23:54:21', '2022-01-11 23:54:21'),
(50, 1, 'EUR', 'USD', '1.36', '2022-01-11 23:54:21', NULL, '2022-01-11 23:54:21', '2022-01-11 23:54:21'),
(51, 1, 'GBP', 'USD', '1.36', '2022-01-11 23:55:23', NULL, '2022-01-11 23:55:23', '2022-01-11 23:55:23'),
(52, 1, 'EUR', 'USD', '1.36', '2022-01-11 23:55:23', NULL, '2022-01-11 23:55:23', '2022-01-11 23:55:23'),
(53, 1, 'GBP', 'USD', '1.36', '2022-01-12 00:39:40', NULL, '2022-01-12 00:39:40', '2022-01-12 00:39:40'),
(54, 1, 'EUR', 'USD', '1.36', '2022-01-12 00:39:40', NULL, '2022-01-12 00:39:40', '2022-01-12 00:39:40'),
(55, 1, 'GBP', 'USD', '1.36', '2022-01-12 00:40:38', NULL, '2022-01-12 00:40:38', '2022-01-12 00:40:38'),
(56, 1, 'EUR', 'USD', '1.36', '2022-01-12 00:40:39', NULL, '2022-01-12 00:40:39', '2022-01-12 00:40:39'),
(57, 1, 'GBP', 'USD', '1.36', '2022-01-12 00:41:14', NULL, '2022-01-12 00:41:14', '2022-01-12 00:41:14'),
(58, 1, 'EUR', 'USD', '1.36', '2022-01-12 00:41:14', NULL, '2022-01-12 00:41:14', '2022-01-12 00:41:14'),
(59, 1, 'GBP', 'USD', '1.36', '2022-01-12 00:43:33', NULL, '2022-01-12 00:43:33', '2022-01-12 00:43:33'),
(60, 1, 'EUR', 'USD', '1.36', '2022-01-12 00:43:33', NULL, '2022-01-12 00:43:33', '2022-01-12 00:43:33'),
(61, 1, 'GBP', 'USD', '1.36', '2022-01-12 00:45:13', NULL, '2022-01-12 00:45:13', '2022-01-12 00:45:13'),
(62, 1, 'EUR', 'USD', '1.36', '2022-01-12 00:45:14', NULL, '2022-01-12 00:45:14', '2022-01-12 00:45:14'),
(63, 1, 'GBP', 'USD', '1.36', '2022-01-12 00:47:45', NULL, '2022-01-12 00:47:45', '2022-01-12 00:47:45'),
(64, 1, 'EUR', 'USD', '1.36', '2022-01-12 00:47:46', NULL, '2022-01-12 00:47:46', '2022-01-12 00:47:46'),
(65, 1, 'GBP', 'USD', '1.36', '2022-01-12 00:50:13', NULL, '2022-01-12 00:50:13', '2022-01-12 00:50:13'),
(66, 1, 'EUR', 'USD', '1.36', '2022-01-12 00:50:13', NULL, '2022-01-12 00:50:13', '2022-01-12 00:50:13'),
(67, 1, 'GBP', 'USD', '1.36', '2022-01-12 00:51:17', NULL, '2022-01-12 00:51:17', '2022-01-12 00:51:17'),
(68, 1, 'EUR', 'USD', '1.36', '2022-01-12 00:51:17', NULL, '2022-01-12 00:51:17', '2022-01-12 00:51:17'),
(69, 1, 'GBP', 'USD', '1.36', '2022-01-12 00:51:57', NULL, '2022-01-12 00:51:57', '2022-01-12 00:51:57'),
(70, 1, 'EUR', 'USD', '1.36', '2022-01-12 00:51:57', NULL, '2022-01-12 00:51:57', '2022-01-12 00:51:57'),
(71, 1, 'GBP', 'USD', '1.36', '2022-01-12 00:53:19', NULL, '2022-01-12 00:53:19', '2022-01-12 00:53:19'),
(72, 1, 'EUR', 'USD', '1.36', '2022-01-12 00:53:20', NULL, '2022-01-12 00:53:20', '2022-01-12 00:53:20'),
(73, 1, 'GBP', 'USD', '1.36', '2022-01-12 00:54:49', NULL, '2022-01-12 00:54:49', '2022-01-12 00:54:49'),
(74, 1, 'EUR', 'USD', '1.36', '2022-01-12 00:54:49', NULL, '2022-01-12 00:54:49', '2022-01-12 00:54:49'),
(75, 1, 'GBP', 'USD', '1.36', '2022-01-12 00:56:12', NULL, '2022-01-12 00:56:12', '2022-01-12 00:56:12'),
(76, 1, 'EUR', 'USD', '1.36', '2022-01-12 00:56:12', NULL, '2022-01-12 00:56:12', '2022-01-12 00:56:12'),
(77, 1, 'GBP', 'USD', '1.36', '2022-01-12 00:57:04', NULL, '2022-01-12 00:57:04', '2022-01-12 00:57:04'),
(78, 1, 'EUR', 'USD', '1.36', '2022-01-12 00:57:04', NULL, '2022-01-12 00:57:04', '2022-01-12 00:57:04'),
(79, 1, 'GBP', 'USD', '1.36', '2022-01-12 00:58:38', NULL, '2022-01-12 00:58:38', '2022-01-12 00:58:38'),
(80, 1, 'EUR', 'USD', '1.36', '2022-01-12 00:58:39', NULL, '2022-01-12 00:58:39', '2022-01-12 00:58:39'),
(81, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:03:51', NULL, '2022-01-12 01:03:51', '2022-01-12 01:03:51'),
(82, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:03:51', NULL, '2022-01-12 01:03:51', '2022-01-12 01:03:51'),
(83, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:05:05', NULL, '2022-01-12 01:05:05', '2022-01-12 01:05:05'),
(84, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:05:06', NULL, '2022-01-12 01:05:06', '2022-01-12 01:05:06'),
(85, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:22:25', NULL, '2022-01-12 01:22:25', '2022-01-12 01:22:25'),
(86, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:22:25', NULL, '2022-01-12 01:22:25', '2022-01-12 01:22:25'),
(87, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:22:48', NULL, '2022-01-12 01:22:48', '2022-01-12 01:22:48'),
(88, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:22:48', NULL, '2022-01-12 01:22:48', '2022-01-12 01:22:48'),
(89, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:24:17', NULL, '2022-01-12 01:24:17', '2022-01-12 01:24:17'),
(90, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:24:18', NULL, '2022-01-12 01:24:18', '2022-01-12 01:24:18'),
(91, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:32:05', NULL, '2022-01-12 01:32:05', '2022-01-12 01:32:05'),
(92, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:32:06', NULL, '2022-01-12 01:32:06', '2022-01-12 01:32:06'),
(93, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:34:10', NULL, '2022-01-12 01:34:10', '2022-01-12 01:34:10'),
(94, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:34:11', NULL, '2022-01-12 01:34:11', '2022-01-12 01:34:11'),
(95, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:34:37', NULL, '2022-01-12 01:34:37', '2022-01-12 01:34:37'),
(96, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:34:37', NULL, '2022-01-12 01:34:37', '2022-01-12 01:34:37'),
(97, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:36:56', NULL, '2022-01-12 01:36:56', '2022-01-12 01:36:56'),
(98, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:36:56', NULL, '2022-01-12 01:36:56', '2022-01-12 01:36:56'),
(99, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:38:04', NULL, '2022-01-12 01:38:04', '2022-01-12 01:38:04'),
(100, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:38:05', NULL, '2022-01-12 01:38:05', '2022-01-12 01:38:05'),
(101, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:38:51', NULL, '2022-01-12 01:38:51', '2022-01-12 01:38:51'),
(102, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:38:51', NULL, '2022-01-12 01:38:51', '2022-01-12 01:38:51'),
(103, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:40:18', NULL, '2022-01-12 01:40:18', '2022-01-12 01:40:18'),
(104, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:40:18', NULL, '2022-01-12 01:40:18', '2022-01-12 01:40:18'),
(105, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:40:31', NULL, '2022-01-12 01:40:31', '2022-01-12 01:40:31'),
(106, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:40:31', NULL, '2022-01-12 01:40:31', '2022-01-12 01:40:31'),
(107, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:40:39', NULL, '2022-01-12 01:40:39', '2022-01-12 01:40:39'),
(108, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:40:39', NULL, '2022-01-12 01:40:39', '2022-01-12 01:40:39'),
(109, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:40:56', NULL, '2022-01-12 01:40:56', '2022-01-12 01:40:56'),
(110, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:40:56', NULL, '2022-01-12 01:40:56', '2022-01-12 01:40:56'),
(111, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:41:28', NULL, '2022-01-12 01:41:28', '2022-01-12 01:41:28'),
(112, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:41:28', NULL, '2022-01-12 01:41:28', '2022-01-12 01:41:28'),
(113, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:42:18', NULL, '2022-01-12 01:42:18', '2022-01-12 01:42:18'),
(114, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:42:19', NULL, '2022-01-12 01:42:19', '2022-01-12 01:42:19'),
(115, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:43:09', NULL, '2022-01-12 01:43:09', '2022-01-12 01:43:09'),
(116, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:43:09', NULL, '2022-01-12 01:43:09', '2022-01-12 01:43:09'),
(117, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:43:31', NULL, '2022-01-12 01:43:31', '2022-01-12 01:43:31'),
(118, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:43:32', NULL, '2022-01-12 01:43:32', '2022-01-12 01:43:32'),
(119, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:43:50', NULL, '2022-01-12 01:43:50', '2022-01-12 01:43:50'),
(120, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:43:50', NULL, '2022-01-12 01:43:50', '2022-01-12 01:43:50'),
(121, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:44:08', NULL, '2022-01-12 01:44:08', '2022-01-12 01:44:08'),
(122, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:44:08', NULL, '2022-01-12 01:44:08', '2022-01-12 01:44:08'),
(123, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:44:27', NULL, '2022-01-12 01:44:27', '2022-01-12 01:44:27'),
(124, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:44:27', NULL, '2022-01-12 01:44:27', '2022-01-12 01:44:27'),
(125, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:45:05', NULL, '2022-01-12 01:45:05', '2022-01-12 01:45:05'),
(126, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:45:05', NULL, '2022-01-12 01:45:05', '2022-01-12 01:45:05'),
(127, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:46:56', NULL, '2022-01-12 01:46:56', '2022-01-12 01:46:56'),
(128, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:46:56', NULL, '2022-01-12 01:46:56', '2022-01-12 01:46:56'),
(129, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:47:51', NULL, '2022-01-12 01:47:51', '2022-01-12 01:47:51'),
(130, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:47:51', NULL, '2022-01-12 01:47:51', '2022-01-12 01:47:51'),
(131, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:48:38', NULL, '2022-01-12 01:48:38', '2022-01-12 01:48:38'),
(132, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:48:39', NULL, '2022-01-12 01:48:39', '2022-01-12 01:48:39'),
(133, 1, 'GBP', 'USD', '1.36', '2022-01-12 01:50:25', NULL, '2022-01-12 01:50:25', '2022-01-12 01:50:25'),
(134, 1, 'EUR', 'USD', '1.36', '2022-01-12 01:50:25', NULL, '2022-01-12 01:50:25', '2022-01-12 01:50:25'),
(135, 1, 'GBP', 'USD', '1.36', '2022-01-12 02:01:42', NULL, '2022-01-12 02:01:42', '2022-01-12 02:01:42'),
(136, 1, 'EUR', 'USD', '1.36', '2022-01-12 02:01:42', NULL, '2022-01-12 02:01:42', '2022-01-12 02:01:42'),
(137, 1, 'GBP', 'USD', '1.36', '2022-01-12 02:02:50', NULL, '2022-01-12 02:02:50', '2022-01-12 02:02:50'),
(138, 1, 'EUR', 'USD', '1.36', '2022-01-12 02:02:51', NULL, '2022-01-12 02:02:51', '2022-01-12 02:02:51'),
(139, 1, 'GBP', 'USD', '1.36', '2022-01-12 02:03:05', NULL, '2022-01-12 02:03:05', '2022-01-12 02:03:05'),
(140, 1, 'EUR', 'USD', '1.36', '2022-01-12 02:03:06', NULL, '2022-01-12 02:03:06', '2022-01-12 02:03:06'),
(141, 1, 'GBP', 'USD', '1.36', '2022-01-12 02:07:51', NULL, '2022-01-12 02:07:51', '2022-01-12 02:07:51'),
(142, 1, 'EUR', 'USD', '1.36', '2022-01-12 02:07:52', NULL, '2022-01-12 02:07:52', '2022-01-12 02:07:52');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_01_09_174012_create_currencies_table', 1),
(11, '2022_01_09_194754_create_user_details_table', 2),
(12, '2022_01_09_195727_create_currencies_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Senator Cox', 'senatorcox90@gmail.com', NULL, '$2y$10$QH7Og2Wx7LeNCoJfsLNz/.jlhvk7vg/PulEDZeVBK2XYvvJbuv5wG', 'R8VODThEW2kDNswcjKDx8yKJznLydbORKM7jLNsHTmiIHEkFA3y14YFkCVBo', '2022-01-11 21:25:01', '2022-01-11 21:25:01'),
(2, 'dddd', 'ddd@gmail.com', NULL, '$2y$10$/Y/9Lsdz4CkC0Q6JCMAxf.jaK1oGm2Sbfzm25jsnrEcsNet5N/A/q', NULL, '2022-01-11 22:14:23', '2022-01-11 22:14:23'),
(3, 'gggg', 'gggg@gmail.com', NULL, '$2y$10$CEv5g5vt2VjQQRQKfu4R8uwYyZl7e0W.8i9taPki6yGaMH6I9ENli', NULL, '2022-01-11 22:30:25', '2022-01-11 22:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `jobtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` int(11) NOT NULL,
  `currency_symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hourlyrate` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `jobtitle`, `salary`, `currency_symbol`, `hourlyrate`, `created_at`, `updated_at`) VALUES
(1, 1, 'Full-stack Web Developer', 35000, 'USD', 40, '2022-01-11 22:08:29', '2022-01-11 22:08:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_details_ibfk_1` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `currencies`
--
ALTER TABLE `currencies`
  ADD CONSTRAINT `currencies_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
