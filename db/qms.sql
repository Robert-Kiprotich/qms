-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2022 at 06:24 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qms`
--

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE `calls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `counter_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token_letter` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token_number` int(11) NOT NULL,
  `called_date` date NOT NULL,
  `started_at` datetime DEFAULT current_timestamp(),
  `ended_at` datetime DEFAULT NULL,
  `waiting_time` time DEFAULT NULL,
  `served_time` time DEFAULT NULL,
  `turn_around_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `call_status_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `calls`
--

INSERT INTO `calls` (`id`, `queue_id`, `service_id`, `counter_id`, `user_id`, `token_letter`, `token_number`, `called_date`, `started_at`, `ended_at`, `waiting_time`, `served_time`, `turn_around_time`, `created_at`, `updated_at`, `call_status_id`) VALUES
(1, 1, 1, 1, 1, 'w', 1, '2022-10-05', '2022-10-05 10:27:48', '2022-10-05 10:28:09', '00:00:59', '00:00:21', '00:01:20', '2022-10-05 07:27:48', '2022-10-05 07:28:09', 1),
(2, 2, 1, 1, 1, 'w', 2, '2022-10-05', '2022-10-05 10:31:18', '2022-10-05 10:32:58', '00:01:02', '00:01:40', '00:02:42', '2022-10-05 07:31:18', '2022-10-05 07:32:58', 1),
(3, 3, 1, 1, 1, 'w', 3, '2022-10-05', '2022-10-05 10:48:34', '2022-10-05 10:49:01', '00:00:16', '00:00:27', '00:00:43', '2022-10-05 07:48:34', '2022-10-05 07:49:01', 1),
(4, 4, 1, 1, 1, 'w', 4, '2022-10-05', '2022-10-05 10:51:27', '2022-10-05 10:51:38', '00:01:35', '00:00:11', '00:01:46', '2022-10-05 07:51:27', '2022-10-05 07:51:38', 1),
(5, 5, 1, 1, 1, 'w', 5, '2022-10-05', '2022-10-05 10:54:38', '2022-10-05 10:56:37', '00:01:33', '00:01:59', '00:03:32', '2022-10-05 07:54:38', '2022-10-05 07:56:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `call_statuses`
--

CREATE TABLE `call_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `call_statuses`
--

INSERT INTO `call_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'served', '2022-10-05 06:01:41', '2022-10-05 06:01:41'),
(2, 'noshow', '2022-10-05 06:01:41', '2022-10-05 06:01:41');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'banking', 1, '2022-10-05 06:06:54', '2022-10-05 06:06:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `token_translation` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `please_proceed_to_translation` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`, `display`, `image`, `created_at`, `updated_at`, `token_translation`, `please_proceed_to_translation`) VALUES
(1, 'gb', 'English', 'US English Female', NULL, '2022-10-05 06:01:41', '2022-10-05 06:01:41', 'Token', 'Please Proceed to'),
(2, 'fr', 'French', 'French Female', NULL, '2022-10-05 06:01:41', '2022-10-05 06:01:41', 'Jeton', 'Veuillez passer à'),
(3, 'in', 'Hindi', 'Hindi Female', NULL, '2022-10-05 06:01:41', '2022-10-05 06:01:41', ' टोकन', ' कृपया आगे बढ़ें'),
(4, 'sa', 'Arabic', 'Arabic Male', NULL, '2022-10-05 06:01:41', '2022-10-05 06:01:41', ' رمز', 'يرجى المتابعة إلى'),
(5, 'es', 'Spanish', 'Spanish Female', NULL, '2022-10-05 06:01:41', '2022-10-05 06:01:41', ' simbólico', 'por favor proceda a'),
(6, 'pt', 'Portuguese', 'Portuguese Female', NULL, '2022-10-05 06:01:41', '2022-10-05 06:01:41', ' símbolo', 'Por favor, prossiga para'),
(7, 'it', 'Italian', 'Italian Female', NULL, '2022-10-05 06:01:41', '2022-10-05 06:01:41', ' gettone', 'si prega di procedere a'),
(8, 'id', 'Indonesian', 'Indonesian Female', NULL, '2022-10-05 06:01:41', '2022-10-05 06:01:41', ' token', 'silakan lanjutkan ke');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_07_16_161740_create_services_table', 1),
(4, '2016_07_16_180929_create_counters_table', 1),
(5, '2016_07_16_190715_create_queues_table', 1),
(6, '2016_07_19_170334_create_calls_table', 1),
(7, '2016_08_24_231859_create_languages_table', 1),
(8, '2016_09_28_123908_create_settings_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2022_01_25_093555_create_table_call_statuses', 1),
(12, '2022_01_25_094223_add_column_call_status_id_to_calls', 1),
(13, '2022_01_31_083907_alter_table_calls', 1),
(14, '2022_02_05_075323_change_column_type_calls', 1),
(15, '2022_02_11_053149_create_sessions_table', 1),
(16, '2022_02_17_072255_create_permission_tables', 1),
(17, '2022_02_18_095631_add_column_image_on_users', 1),
(18, '2022_02_18_121934_add_columns__on_settings', 1),
(19, '2022_03_04_061813_alter_table_languages', 1),
(20, '2022_03_31_054417_alter_table_services', 1),
(21, '2022_04_01_045644_alter_table_settings', 1),
(22, '2022_04_01_085135_alter_table_queues', 1),
(23, '2022_04_02_103600_create_jobs_table', 1),
(24, '2022_07_02_052217_add_column_to_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view dashboard', 'web', '2022-10-05 06:01:39', '2022-10-05 06:01:39'),
(2, 'view counters', 'web', '2022-10-05 06:01:39', '2022-10-05 06:01:39'),
(3, 'view services', 'web', '2022-10-05 06:01:39', '2022-10-05 06:01:39'),
(4, 'view users', 'web', '2022-10-05 06:01:39', '2022-10-05 06:01:39'),
(5, 'call token', 'web', '2022-10-05 06:01:39', '2022-10-05 06:01:39'),
(6, 'view settings', 'web', '2022-10-05 06:01:39', '2022-10-05 06:01:39'),
(7, 'view reports', 'web', '2022-10-05 06:01:39', '2022-10-05 06:01:39'),
(8, 'view user_roles', 'web', '2022-10-05 06:01:39', '2022-10-05 06:01:39'),
(9, 'issue token', 'web', '2022-10-05 06:01:40', '2022-10-05 06:01:40'),
(10, 'view display', 'web', '2022-10-05 06:01:40', '2022-10-05 06:01:40'),
(11, 'view profile', 'web', '2022-10-05 06:01:40', '2022-10-05 06:01:40');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(12, 'App\\Models\\User', 1, 'SanctumAPI', '8bd3caac9d0107cc77934ad0b030241e2a57124ce7dcd67853078a51fe2f29f9', '[\"*\"]', NULL, '2022-10-09 06:45:57', '2022-10-09 06:45:57'),
(13, 'App\\Models\\User', 1, 'SanctumAPI', '9d71f703f395044ab5541d3fd93aaa9b7ce0b40d39fb652c2275bbea96deb29c', '[\"*\"]', NULL, '2022-10-09 10:24:39', '2022-10-09 10:24:39');

-- --------------------------------------------------------

--
-- Table structure for table `queues`
--

CREATE TABLE `queues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `called` tinyint(1) NOT NULL,
  `reference_no` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `letter` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `queues`
--

INSERT INTO `queues` (`id`, `service_id`, `number`, `called`, `reference_no`, `letter`, `name`, `email`, `phone`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '52rg3WRlA', 'w', '32', 'kyprohz@gmail.com', '24534344454', 0, '2022-10-05 07:26:49', '2022-10-05 07:27:48'),
(2, 1, 2, 1, 'z7ZS3h284', 'w', 'kipkemoi', 'kyproz@gmail.com', '0722763363', 0, '2022-10-05 07:30:16', '2022-10-05 07:31:18'),
(3, 1, 3, 1, 'l3qbj0Kjn', 'w', 'prince', 'khjj@nail.com', '07354353534', 0, '2022-10-05 07:48:18', '2022-10-05 07:48:35'),
(4, 1, 4, 1, 'YWRRSIjvW', 'w', 'jkg', 'hbgggh@mail', '68656', 0, '2022-10-05 07:49:52', '2022-10-05 07:51:27'),
(5, 1, 5, 1, '2paaDYk0S', 'w', 'charles', 'prince!@gmail.com', '0788925422', 0, '2022-10-05 07:53:05', '2022-10-05 07:54:38'),
(6, 1, 1, 0, 'Z6U9FCilq', 'w', 'robert', 'kksksk@jfgd.com', '1234545666', 1, '2022-10-07 16:10:43', '2022-10-07 16:10:43'),
(7, 1, 2, 0, 'SjICKq3ad', 'w', 'robert', 'kksksk@jfgd.com', '1234545666', 2, '2022-10-07 16:23:11', '2022-10-07 16:23:11'),
(8, 1, 3, 0, 'WGg4WwESS', 'w', NULL, NULL, NULL, 3, '2022-10-07 16:25:04', '2022-10-07 16:25:04'),
(9, 1, 1, 0, 'OOd4ZRdd1', 'w', NULL, NULL, NULL, 1, '2022-10-08 10:15:11', '2022-10-08 10:15:11'),
(10, 1, 2, 0, 'fLRTbW1Fh', 'w', NULL, NULL, NULL, 2, '2022-10-08 10:15:39', '2022-10-08 10:15:39'),
(11, 1, 3, 0, 'bsRzlkCW7', 'w', NULL, NULL, NULL, 3, '2022-10-08 10:15:50', '2022-10-08 10:15:50'),
(12, 1, 4, 0, 'z29KOo0gk', 'w', NULL, NULL, NULL, 4, '2022-10-08 10:16:06', '2022-10-08 10:16:06'),
(13, 1, 1, 0, 'mNBFJaRGM', 'w', NULL, NULL, NULL, 1, '2022-10-09 06:10:30', '2022-10-09 06:10:30'),
(14, 1, 2, 0, 'kzLuggujh', 'w', NULL, NULL, NULL, 2, '2022-10-09 06:12:12', '2022-10-09 06:12:12'),
(15, 1, 3, 0, 'yk0eemIMa', 'w', NULL, NULL, NULL, 3, '2022-10-09 06:13:34', '2022-10-09 06:13:34'),
(16, 1, 4, 0, 'wuHReO1Cx', 'w', NULL, NULL, NULL, 4, '2022-10-09 06:13:46', '2022-10-09 06:13:46'),
(17, 1, 5, 0, 'rXEvtkrlT', 'w', NULL, NULL, NULL, 5, '2022-10-09 06:14:22', '2022-10-09 06:14:22'),
(18, 1, 6, 0, 'EdqkEIDzF', 'w', NULL, NULL, NULL, 6, '2022-10-09 06:20:46', '2022-10-09 06:20:46'),
(19, 1, 7, 0, 'jXgeWNe1N', 'w', NULL, NULL, NULL, 7, '2022-10-09 06:54:42', '2022-10-09 06:54:42'),
(20, 1, 8, 0, 'Uxt4s7J2L', 'w', NULL, NULL, NULL, 8, '2022-10-09 07:00:15', '2022-10-09 07:00:15'),
(21, 1, 9, 0, 'fkm9BRU7y', 'w', NULL, NULL, NULL, 9, '2022-10-09 07:02:06', '2022-10-09 07:02:06'),
(22, 1, 10, 0, 'vkOjSupLk', 'w', NULL, NULL, NULL, 10, '2022-10-09 10:25:18', '2022-10-09 10:25:18'),
(23, 1, 11, 0, '9489hjPIG', 'w', 'dfgdfg', 'vnh@hjhj.bg', '78768', 11, '2022-10-09 12:36:15', '2022-10-09 12:36:15');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super-Admin', 'web', '2022-10-05 06:01:40', '2022-10-05 06:01:40'),
(2, 'teller', 'web', '2022-10-09 13:17:51', '2022-10-09 13:17:51');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(5, 2),
(9, 2),
(11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `letter` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `start_number` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sms_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `optin_message_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `call_message_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `noshow_message_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `completed_message_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `status_message_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `optin_message_format` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_message_format` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noshow_message_format` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completed_message_format` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_message_format` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_message_positions` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ask_name` tinyint(1) NOT NULL DEFAULT 0,
  `name_required` tinyint(1) NOT NULL DEFAULT 0,
  `ask_email` tinyint(1) NOT NULL DEFAULT 0,
  `email_required` tinyint(1) NOT NULL DEFAULT 0,
  `ask_phone` tinyint(1) NOT NULL DEFAULT 0,
  `phone_required` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `letter`, `start_number`, `status`, `sms_enabled`, `optin_message_enabled`, `call_message_enabled`, `noshow_message_enabled`, `completed_message_enabled`, `status_message_enabled`, `optin_message_format`, `call_message_format`, `noshow_message_format`, `completed_message_format`, `status_message_format`, `status_message_positions`, `ask_name`, `name_required`, `ask_email`, `email_required`, `ask_phone`, `phone_required`, `created_at`, `updated_at`) VALUES
(1, 'widthraw', 'w', 1, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, '2022-10-05 06:09:24', '2022-10-05 06:09:24');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `counter_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `service_id`, `counter_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('i2iyBnpjE7nK93hoIFyti7ozz08t3zfkvMwmH93I', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'ZXlKcGRpSTZJa3hTYlRnNWVrNVZjV2d3Y3pWcFltTmhSR281Tm1jOVBTSXNJblpoYkhWbElqb2ljbXhSTW1kQlVVa3pUV2d6T1habmFGRk5VMEp6YWxGR1FrVXJaRlZTU1ZSTmFqQXlOR1J4UkRjdlRVeFVLMHRrWmxsR1NIRjFWWGh4U0RkU05FaGhZbmsyYm5wUVpVbEpTMlJ6YmxCaVdGRTJOa1JKZEZNME5XSkRiVU54VERWM1dVbDNiMlowWVZwU09IVnVjSHBWUXpVMWRsUkJjek5aTlVwVWNVbHJZa1JEY1V0UVpFdzNXR2RXV1d0S1NsWnlNelo1UjJwVk9FbFpZWEpPY1M5VlJHcENOM1ZHUkVoVlZuVTFWR2hzVTBnck4xVjFUbVpVY0VaMmRuaDZRVUpYVVN0RlNXVlBReTlMTkdzemNVMWtjRXBTTTB3M1kwZFlha3RKZG5KbWFGaHlXSFZvTkRoTGNqUklhME5wUVU1Uk1GbHVibXRxTTBReGNtdDJXREZ3TVZOVmMyRnJWaTlhVXpSNlEweFBhUzlrWjNZemFFa3JRVE5MYlUxblZFMXdNVTB5WlU1Vk1UZ3hOell3YTJwMGEyNUVNV1ZxV1Zwek4yZEdNbTV6YW01NWExcExhbXRFWlhnM00yTlpZV0ozVXpjdmNsUTVWRXh0UTJaWWFtaFRiVVJuYVRaaFVVUjZTWFo0TW5obmJqa3dVbFJZVFdoSFozRm5WVkpsY0dkbmF6aHhORFY0TkVoWVVHTlFaVVJ5V1Rod05YTkJNSGxpT0VwQ1IyRm5VVU12Vm5Wak5HcGFWM0pOY0VSQlVVOWFLMU50Y2tGclZEZFZLMEZ6Y1dVdmJXdFhXa1p1TkU5VE5GTTNRMU51WjNJMVVrNXpOazQzVWxwWWEzaHhiUzlMZGtwSFIyRlNkMmx5U3pGNlNIbFpiazFEWWtsclRHdFFWRmhpTnpsSU1VdDVRVUp4UVRWUlRqWkVRVU5rVTNwTFlraG5XamxwY0hWU1FXRkxPRFpGVW5STGVrb3lhVXhoVjFGUk9EWTVTbU12WkhSMmJVWTFhVlp0YUZsdmVIZ3plRVkyVVhvMlNFMDNlSGgzUWl0aGJFaEpaVkpaYkVGMWFDOU1MM2RSVUZvMVZuVTRkRGNyWmpGU05WcE1WQzlIWkVObU4xaFBjM2RzUkdwdlpsWmliR1Z1WjNwNWRGUldTWFp1ZVhWRlVHSjZRMFZoTmtadEsyOVhkRmRxTUhoMVdUSjJTVzV3WVZwbWVrVmxOalZ6U21Sa2VpOVdTRU13ZWs5cGVUQkpXbEJqTldWSFZsWnhURFJuUkVGSFVHeHBiRllyT0ZZemNuZFpUVzAxVFdodlJtaHhVWEp0UVRWMWFXWmxlbXhDWjB4M2FWaEVWRFZrU1VKRlFqWnhMMWRNTmxSVE0zRlRlblU0SzJGMlpqSk9TbmxSZUZSMVNYSlNhV3RyTWxkWGNHTnJTVzlsZVRkdWJrMUdhMkl4TW1aU2IxaEpabGRCWmtSbmEyVmhXRzAxYkVGd1kydEtZbTR5TVRKUVVGTktkRVJoV2pSUGFVcHpORXhCVlU5cE4wMU1kbEIyUmtSd1VIaGFPR2RHTDA0d1NVYzBWMjA0WkdFcllqQXZSalZST0ZKUWExQkVUemRZZERFd2VFSXJaa1ZEVG5vdlEwNXRXSEJ4TUVkVE1YUndiamRLYjJSemRXUldVbU0xYTNwcFdscEhXa3BEY0hBMWNFOUtjMHRTWkRFeFZtdEhOV2NyYWxBMWN6ZFlOWEoyUkdwTlZVWnlPVGxtUWpCaFMweDBNM2h5YkhGWVZtTTRhR0pzYTJwdWVqSXdaRkpoU0hCVWRsSkNiRnBTUlVwa00yTkJNV3AwWTA5cmFESkpOWEJKYldabk9WQTJWekpPWmtwS05FdDFjMkp3TTFaNVVFeFRTazVuUVhob1NGcG5PVXBFZVdGWmJpdEJLMk5IU0VobmIzWnRaM3BJTm5Gb1NWazVXSGRXWjAxcFpXTm5kVVZVYVZRMFNYbHRhMjFpVVcxU2JtZzBkakZ0WkZKaWFDOVpSbmx6UTFoeFdtdzBVMmRXZWxST1UzRkpOMDVSZFVGc01rMXNhVTF1VlRoWVUxQjRMMW81VFhkRGJqQjBiRkprY0haR2IzaDBla0ZqTVc4MFRVVlVPRGQxYkRkWmVrNURNSHBLTmxoRU4ySjJiR28wYUdOeFZqUlBTMUJoVEVoRllWRnJSa1pwVXpWbVZ6UXJWbkppVFZFMFNqbEVZVWxzVmpsS2JYaHBVVkJ4UzJSaWMxSllNekZXVWpoQ1YwWjFiR3MwTkdrNE5rcFZaMlpRYzFWM01GQmhhRGQxVmtWSVMwVTFVR293T1ZaM01VMVFSMk40WjNKaGQzcHpVSHBIT0NzNGF6SkNZVmgyVlc0eGJFUlpVemhaWWk5RVdWcFRjalIxYjB4NGFHcFlOUzl5WmxJMVZqZ3hkMUY0WmxGYWVEbG9ZMGxZZDJOUlpHRkZhM0l3Tnl0TFlXdEtUREpZYVdaTFRYWlpZV2x6YzBkRFpEZFdRbTltZERsbFZXczBZMGRIVjJ0amRVaGhWSEF4TmtaWFdIbDZkV1ZVYlRsU2NrOTRjR2xPU3l0NFZYZEZWMjU0Y1RCaGJteGtSbEJqVFhobGRteElSRGcxVWpRdmJ6RnVXazE1WTNwSWRrVmpkRVpEVm1Wc01WWk1SMnhtYUVob1IxVlNlRGRCUlZKUmEwYzVlblpHWWxCSlRUQmFNREJUYW5kRlduTm5jM2QyVTFoNGNtRkdSSEZ1YVdKSlNqazVkRTAyUkVJMFdtbDZPRFZVS3paTVExSkVUMVF4YTJJMFUyVnpVVU5EWjFWQ2JVc3pkamN2U0hwS1RrRnBOR00wY2sxTVlWRkJMMnBQV0VwcVdETk9NbVp6WTBadmRUUlFiSFp0ZVU5aGFIWmtaRk5zWVRWR2QzbFBXRVJSUW5kRU0wZzViMVp4ZDFwQ2JHNUtTMVZXUm5CUWRreFNTM2w2V0ZaeWJXZFZWREpXZGpNM1RtUTRLM2cwVUhGMllsbFVaMGxsWjJaQ2QwVmtWMFo0TW5SdlQzQlJiV1ZSYm10WmJtWTFURkZJYW5wbFduUkpRblprYlcxRU9WTkVTbkV4V0dKaFNrOUhaelZSTTNnek0yNUpha2RzUW5WTU4zUTBlbUZ1Wnk4NWFVZDBSbmRITmpGM01HSnBOVEIzYm1kNk1XUlJjMk00VmtSYVFXWlZiVE5MTms5ek5GSmFVUzlWWlRkQ1JtcENiSE5QVHpKc2RqWktOVk16VW5kb2FuazJNa1F4WW5KT1ZXUldhRXMyZFdWVVkwRTJlbWRCVVVOaFVIRjVkRTF1TVU5QmJ6UXdPV1ZNZERNclFreFVXR1E1Y0hGWFJVeG1WVWhoWmpOVmN5OXVhV3hHV0ZaTE5tcDJkM0JEV1VScFFUQjBZMEprVVROVWNXbHlSREp2Um1reVYyNDJZalVyVjBWUmVGVkhNbTU2Y1ZSVFRYWnZOR055Wm1WekswNWxiUzlTYlc4NVREUk1iekJKYjBrclVYWlVNM0ZhWjJSVVZVOXVTR0ZEZFVaU2JHdGFha3cxTjFWMGFuQXJVemhEYmtWVllrUnRkRFl4YWtWSFIzRTFhV2RoV0V4UFZtRjBlVVV4UW1Wdk9YaFNka1ZpTW10aVozcHJVa1F4VUdsMGJGbFlUelp2VkhGdVZuQkRSa3BJY2xOb1JrTk9XbFJYTVhRM1RUSmhiSFZSZUZreU1FVlBWMGhwZGpKeFRrd3pZazlJTUd4alVraDZNbGsxZUU1akwyeHdUR3RSWldkSFlsZGpTa0pxYlU0ck5IZEpZVGMyUTJwdFYyNVBkV05ySzA5d2FYbFhPRlk0ZUZjMVFXa3hkMlZhWVd0VVRGZDRSalp6ZDJsVWVFSm5OVTA0VW5SSVRrNW5TbnBDV1hWRGRXeEhUWE5OZWtwSGVEZHhOUzlaU1ZGa1pEZFZRbXR6ZVVaRFlVWkhUMDFDWVVkS1RrUkNRazR5YjBWM2NteG5UWEl6U1VKbEwzUnVSRk0wUVcxQ0szQk9LMUoxZURZME1sWklXbVF3U2xFeGFYazJNbFJMUml0clIxZDJjalJWTjFNdlNEQlVjRWxXZGpObVEwVnhVVTlVT0hOUmVFeFJTbVEwYmxSRGJYZE1Za2hUZEZrMWJUTklkbnBUVUZWVVlWTnZPSGR0YVVOYVpEQTFNVVJhYUZwdU5XOXpXVEEwY21JMmN5OTRaRTltY2tsck9XVnZTbWszVG1kNlpYZ3laVmRYYW5FM05uVktSbWxFTWpJNGVtbFFVVVI1V25wdGJVUk5aR1p1WWtZelRWcHhSVkJXYUhwbGQwRkdVMHR0ZFhaTkwyNXhObkpwYzBGTlpubEhkMUJEWVhKbVowMU9NV1JKTlZrNWNqZFJPVU5WSzFCWGFYcDNjVXRpYWtOSU5tMXZSbmxIYVRWaE5FOUxVek5qZGpCVmNYTkhkMFp1TjJWTVVtTlVNVzk1VVVodmJsWlVjbko1ZWpGck9YVndRelUzT1VGelVsUkhjbFpuT1RsSVNXMXhSSFZuUkRkTVYzbEZjMlZuZVRCVFEwNXhWMHRwVkdKemRrNHJhbUY0TTJwVFZTOUhaRU5qWVZWalFWbHFaMkV6TDFKQlZIWktkRFZvTlZkcGNtYzVNMEpNWTNsclJVSm5kWGRITkc0MFN6VmtjVkZ6Um1wdU4xcFpNbXg1TlVkc1NGZHNhMm80VFV0RGJYaHBNbGh4T1dSNlFXSjRTMmxzYVZWYVdVSkdkakU0TlM5SFRTOHlkWFkzU0dsbE15OVhOM05zZUdSWVJYVlJkamw2ZFhaTlowOUlhWFpuY3pOc2FVeHRNbVZLWm1kd1ZreHJiV0pMVmxwb1ptcGxSak5sVERkeVUyMXlhamxHZVhkWVlqRnBOMVpVUkd0V1oyWnlUWGhFV0UxM00wNHlUbFZ5TW1OdlYwVnhZMlZqZDNkdWJqUkZkWFZqUWl0M01ucEJjV1pyZVVOblluZDFZMkpUTTFGS2JtbFJZMmREWWk5bFQybHVSMkppWkV0WlVVNDVNMVk1Tm05dVNtMHliV0YxVURWeGVFRXlORUYxWjNKVlRWUklXV1ZCUkZsa01rNVdlWGRQZEdvemNISmxLM1V2ZEdoaWJuaHBNSGw1V1ZJM05FeGFVVnB2WTBad1pIcDRUM1l2TUM5WmFHdHRZMk0xZERsMGRHRm9Na1UxT1ZnemRHczNZblZCYUU1a00yaE9hSGs1VmtsaGEyMVNTbFUzTmpka0sxWkxWbEZSUml0cWVFNVlURGhMYWk5NWNYSkhTVEpqWm5aeFZYQjBOSEYyUVZGaU5qZDNWa2R0WmpKNmJWVTNRVTFpWkVNdk1tZHBiMGx4UjJnNWMybE9hMmx0V1doYVNFVmFibTQ0VDNGamVXRnRWRUZyYWpWdmRtUnNVbkpvTW0wNVRHRkNhMDVOZFdab1dGRnBWRGswYWk5SldTdEpjWEJHVVZWWWRFMXlTVWRUY0hKdWVsVk1TVEZ5YmpabWMwcFpaVU4wV1ZCSE1tcGxlakJOUkdVdmVtVTJNVkI0ZGtad1Nta3JMM1J4YVZad1JEY3JXa3Q2YW5KS2NYUnRNbTE1WVc5dE5rMHhUVVZ5YTJ4cFpVRXhOMU5WTWpoUlYwUlpUbmcyVWxNNVdXRTBObEJTWmpSaVJWRk9MM1JZVWsxS1FXWlNVR2xwYUZCelJIQjBXazV0TlhwSmJVRTRPVTl2YWt0RGIzUnZjelpDUkZSRlYyc3pkM0pHVkdnck1uQkRiU3MxZDFOUVVtWlhZa2RvY0VjNVNqUjFRakphTTBWeFdHSlFVamRUT1ROcFRVNHdXbmhOVjNnemQwczFhWEV6YkRRNFF6UTVObkpWTWtReFlsQmxTWFJ3SzFCaVdpOHhVMlJzYm5obWREUjZPRVJETUVFdmJqaHdiRVZGUkRSM2N6aEhUM3BZUVdWTmFIZEdOR2RNY21VMlpWcHhlV05TY0VSTGRrRkJXbWhsTjBab1NXTmxkbkJWU21ocGMyWlBlV1Z3UVZJclduRTViR1l5TkRCMFdVeHJkVEZxV2xoblN6UmtiV2xYVUVaVFJHRlNXalkwTjFaM2F6VlBORzF2WVhaUE1qbE1UazAzVFVOaFEwODNRbTU0V0haalNpOUNTbGt4YkhJMWQxZHFlSFp2U1M5VVJUWTNXbWhGSzJ4dmJXVkZieXR2WjNKek5HNVplR2haWVRSVFdVaEdTVlJsTkdjMlVHcHpPVkJFTW5sMU9GVmxZMUUxY0ZGS09VWXhNaTlQWlVwNFpFNHhSa3QzUldsS01HeGxVVFJWVFc5cmNITlJUR2h5ZFc5MldtVTJhRlUyYlhkYVRFaEJUbHBTWmpoWGFEWkZWVzlKVnk4NU9XNUZSMkpyVVRCd1dFSmFkVUptZUdsbk5EZDNZMWRwY0U5MmJYVTJReTl5T1RCb2RqUlpVbE54U0Vsb1NWZEVlRXRFWTJGVmVFRTRhMUIzV0RSd1oxUkRiME52TTBKSEwwWkVPWG80TW1sM1NGRktVWEowWXpKcGMwbFdiWGRtV25aMVpWWXZkRlZzUWtGT1JrOURRelJ2V0dwWWFuTjRUV1JrTUVzeFRVUkVVR3hUTVZSRmVrZzFZMnMzVm5OQ2JrRmxhaTlPVmtoWkt6ZFFlR0pyWjBKWmMwOVpaMnRQTlVST2JXTkdhVUp3ZEZRMlFVZFBUVTlUVTJkSlprSjFVRU5OVVhkd1UycE5jM05FYkZSNk1YZzBMMlZMVkZwWlJsSmhkR3Q1ZVVrMGJUVm5UREpQVmpWb2RtVlNiekk0TkdoSU5FSTJPSGx3WlRkamFWRkRhazV3TUVwNWVVbE1WVWQ0WldsbGJuaDZSazF2VFVwUU1tUXZVR2RCVG1GMU0yazRjM2xLVFZwWlNFVmlSMVpwYkVKT0wwUllRa0o0Y0VWRldYSmtTRWd4VjFKaWMxTklhM2RKZFVWTWIwSXdWVEZpVlRSUlkxTnJObkZCUVVwTFdqVkhVV0kzZDNoWVQySnlSbGROTVZCdU9Ua3pVV2RvWjJvd2FVVkVSMWxoZDNabmNEWk5aemRQWm5aUmNWcEtSRE5hYUUwM2RVTm5jbU5uVG5KMVMwNDVVU3RrVFRKdkt6Sk5URTF2WjFvclkwaEhVVlJJY1dNNFJFWjNPRmxZYXpaM2QyZGtaVkJGWXprNVdEUkNORVpJVEVjd2NuUllUazgySzBOWmExbERaWHA2TkVwNlNHTTRUV3QyZEdjMFkxcDVWbFJPUTJSdlYxSnpWelpoVm5CcVlXVXZPV040TkcweVYxRjBRVE13VFhJNFUzZHJTSGxsTTNkVmFETkJiREZqZDBsRFFsRkJObE5qT0doWGRXWXZNRkpXYkRGc2VGaGFMMHhSZVc5SE5rVkdTa0pCVEhGclIwVTNNR2hGWVVKcE1FeENabXRVUjI5NFNtVnFka3RSVW1wMFVsWXZURE5RTm01Q2JUQjRkMkZtYUcxcVFWYzFaSFl2VFRONWNuTk9jWFl5UW5WRFRrVlJTSGhaV2pCTWVXRm1XR1ZIWTNnMmFFeGhjbGhTZFRCUFUyNU5XVlJEWlZBMEsxZHZibTExVkVKa2JFeHpTVFZXV1cxb1pXVk1Na2xuYWxwUVRUWldVbTE0U0dkM0sxcElNVlZSVEROSk5XNXBNbEk1Y1RWM09HSlpaRWRoYlVJNGEwcHRXRU54WVRaUVMyOVlhVE5rUW1wSVpraFZlbWc0YlVaUE1WQTVabnBQZWtoeWRuSkdlRUZMYWtOcE4yazNlRnBWY1RZMUwzcEhRbXh0TjBvMk4xUTVLelZ3YlU1SWVqSlBUWEY1WmtKTlVFTkRUblJJYVZSWWVWaFBWVkozZGsxcmFXVmtXWFJETUROaGJFaHJRMk50TVVzeVdXbFpWVnBtTjBGeFFtMXBOMDQ0TVV0SFdtaHdUVE5zYUhOMFlsVnVibUZMVFV0UWMxSk1lbkZNV0RCc1UzazVNbGRFTkZOREswRlpkSEZWVG5CRGNUSmlWR2hLWmxkd1VXUnNXWGhSUkd0R1ZWUlZNV0ZxUW1sYVdsUTNNbVo1Y0hOR0wydDFURkZHVFU1cmNreFpPWFZWUzFGdWFGUlVabEkzYm1vMlZXdExSM1l6U3pWVU56TkxPRGhsZUdsU05YTnlWa3QzVEZsM1V6UnBNbVJrVm5kVlRuZFBaVFo0WW1kM1N6bERSMmhrWTBFNE1UaFBVMlk0UTNNM1ozTnpLMmhJTkRkWmIzSmplVGx0VDJaQ1FWWnFXbkExUjNNMFZGVnhPRFJ3VmpKcFZGVktjWEZRVmtGaU1GQkRMMHh5UTJNeWNsbDJXRmxVYnpSb2FIQkpVMGwwVFVSUWVVVTBUekZ3ZEZKR2EwVnJibU14T1RNM1ZtVkVkM0JUTmxCdlVXZzFWMkZuTTNGR05taEdNR0pWU1ZnNFpUbFhMMjFoSzFOdlRXZHJOVVZVYzI5SFZWQkZWazl4TTB0RGNrcG1VQ3QwU0hSRlQzbDRWbHBDTUVoWFJteEVkM05GUWtwME5qZEJlVmhXV1VKYVZUWm9jREJ0YUd0MFNrTm1hM2syYVRFemEzWk1iME5xVUZoNWNWcHpUM1JFVVdoVWNIRm5NRmxRTVVsd1RERnRWRTlPVEc1NFEzQklaa2t3WVcxNWRESndVbTFEYkRGQlNUUk5ialJNTUdWcGNWQTVja1p2YVM5MlpHSTVhVXN3YTNKQmFqQXdSRVZvUjBvd1ptbEpSM2xSYURsNVpHNUhTMHc0TW1oSllURkRVM0ZrY3pKYVluQXdRMVpSY0ROVlkwOVNWVTV6TlZvNVZEbFZZMmR0YlV3NVFWaDJiM1UwZERScmVERklVRzVYTVVaWGJFc3lkR0p3Tmk5RmNFNDBVM3BtWWtwVVlWRkVOemQ1YzBsSFNXdDROVW8yUjFCQ1ZUSmljMFZuUzBVeU1WQnZhU3QxY1hwUGEycEpOVFo1T0ZBemRHTkRZWFZZWVc1MFVpOXVTREJ3V1N0SGNFWmlOemxWUXpWVGRtZzJjMnhtWW1waWMySkdhSE54WVdSaVlUVk9VMkZaU1VoSVNHeHJZVUp1UmpkeVJYSnZNWE5RYkhoSE5WTk5NSGRITlVvNFZGaE5RM1Z0ZG1relYwbEpWR0kwZDJWaVlrWkdZVWxyZGpOcFlsVXZVVTVpY0hWek1ERTRhMmMyTUd0VmQxRkhOV05yTUVRM1RtTlJaV3h5Um5OV2RqaExXVk5QWkdvdmRIWTNabHBHU21OeWFXRnBRM1J0Um1VeWIwRnNWMXBQTTFOMmRubFRRa3MwVG5CclJGZFBVVmhPYmpkWWNEZDJia0ZUVVVKRVZVMW5LemxXUTNKS0x6azRTV1pxYjBVd2RVUkdWMVkzTnpsa1NHWlBOMjl1TkVaUGVGVlJURzlZYjBwWWVpODFhMnczYTNFNVdVbHRReXRqVjBoUmVGQkNSU3RJTVd4bk4yMXhhbWRRUm5Gd1UyNUpkRGx2WXk5bVdtTTJhM2sxWTFadmR6MDlJaXdpYldGaklqb2laalpqTTJNMVkyWXpOalkwTnpoaVpqa3hOakZsTUdNNVpEUTRPVE5qWkRsbFpqVmlZalZoTkRFM1pUa3pNelpqTVdJNU9ERmpaRE0wTldNellUWmhNQ0lzSW5SaFp5STZJaUo5', 1665332347);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_notification` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_font_size` int(11) DEFAULT NULL,
  `display_font_color` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sms_url` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sms_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `installed` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `language_id`, `name`, `address`, `email`, `phone`, `location`, `timezone`, `logo`, `display_notification`, `display_font_size`, `display_font_color`, `sms_url`, `sms_enabled`, `installed`, `created_at`, `updated_at`) VALUES
(1, 1, 'company', 'company', 'company@company.com', NULL, 'location', 'UTC', NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-10-05 06:01:41', '2022-10-05 06:01:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `image`) VALUES
(1, 'admin', 'admin@mail.com', NULL, '$2y$10$pGb4r6IxV56.AJ2fPeYH2eWem/XMjdr1Sgo91kJhQ8TsK2k0xJmmy', NULL, '2022-10-05 06:01:40', '2022-10-05 06:01:40', NULL),
(2, 'teller1', 'teller1@mail.com', NULL, '$2y$10$34izmsbAWv7ws2PuU8tmEOOrO0w7seo2K95Q7TSVftqiRRL6WNAie', NULL, '2022-10-09 13:18:45', '2022-10-09 13:19:05', 'profile/hmJ7CBeg6GQKTfFexh3s5A2TJD7hNOfrvIqCX9CV.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calls_queue_id_foreign` (`queue_id`),
  ADD KEY `calls_service_id_foreign` (`service_id`),
  ADD KEY `calls_counter_id_foreign` (`counter_id`),
  ADD KEY `calls_user_id_foreign` (`user_id`),
  ADD KEY `calls_call_status_id_foreign` (`call_status_id`);

--
-- Indexes for table `call_statuses`
--
ALTER TABLE `call_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_code_unique` (`code`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `queues`
--
ALTER TABLE `queues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queues_service_id_foreign` (`service_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_service_id_foreign` (`service_id`),
  ADD KEY `sessions_counter_id_foreign` (`counter_id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_language_id_foreign` (`language_id`);

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
-- AUTO_INCREMENT for table `calls`
--
ALTER TABLE `calls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `call_statuses`
--
ALTER TABLE `call_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `queues`
--
ALTER TABLE `queues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `calls`
--
ALTER TABLE `calls`
  ADD CONSTRAINT `calls_call_status_id_foreign` FOREIGN KEY (`call_status_id`) REFERENCES `call_statuses` (`id`),
  ADD CONSTRAINT `calls_counter_id_foreign` FOREIGN KEY (`counter_id`) REFERENCES `counters` (`id`),
  ADD CONSTRAINT `calls_queue_id_foreign` FOREIGN KEY (`queue_id`) REFERENCES `queues` (`id`),
  ADD CONSTRAINT `calls_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  ADD CONSTRAINT `calls_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `queues`
--
ALTER TABLE `queues`
  ADD CONSTRAINT `queues_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_counter_id_foreign` FOREIGN KEY (`counter_id`) REFERENCES `counters` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sessions_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
