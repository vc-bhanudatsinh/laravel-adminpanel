-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2022 at 07:37 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lblaravel2`
--

-- --------------------------------------------------------

--
-- Table structure for table `amit`
--

CREATE TABLE `amit` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ashu`
--

CREATE TABLE `ashu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daminis`
--

CREATE TABLE `daminis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `lb`
--

CREATE TABLE `lb` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lbmodules`
--

CREATE TABLE `lbmodules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manish`
--

CREATE TABLE `manish` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('backend','frontend') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `type`, `name`, `items`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'backend', 'Backend Sidebar Menu', '[{\"id\":16,\"name\":\"User Management\",\"url\":\"admin.users.index\",\"url_type\":\"route\",\"open_in_new_tab\":0,\"icon\":\"fa-user\",\"view_permission_id\":\"manage-user\",\"content\":\"User Management\"},{\"view_permission_id\":\"manage-module\",\"open_in_new_tab\":0,\"icon\":\"fa-wrench\",\"url_type\":\"route\",\"url\":\"admin.modules.index\",\"name\":\"Module\",\"id\":84,\"content\":\"Module\"},{\"id\":14,\"name\":\"Permission Management\",\"url\":\"admin.permissions.index\",\"url_type\":\"route\",\"open_in_new_tab\":0,\"icon\":\"fa-linode\",\"view_permission_id\":\"view-permission-management\",\"content\":\"Permission Management\"}]', 1, NULL, '2022-01-09 13:28:53', '2022-01-09 13:28:53', NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2017_11_02_060149_create_modules_table', 1),
(5, '2017_11_02_060149_create_settings_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(8, '2021_12_04_165910_create_menus_table', 1),
(9, '2021_12_04_170022_create_pages_table', 1),
(10, '2021_12_25_095757_laratrust_setup_tables', 1),
(11, '2022_01_01_064810_create_sessions_table', 1),
(12, '2022_01_09_193559_create_vivek_table', 2),
(13, '2022_01_09_194525_create_manish_table', 2),
(14, '2022_01_09_194717_create_lb_table', 2),
(15, '2022_01_09_195846_create_ashu_table', 2),
(16, '2022_01_09_200254_create_amit_table', 2),
(17, '2022_01_10_182615_create_nipun_table', 2),
(18, '2022_01_10_200822_create_nisant_table', 2),
(19, '2022_01_10_205037_create_mohan_table', 2),
(20, '2022_01_15_092417_create_ravi_table', 2),
(21, '2022_01_15_095108_create_daminis_table', 2),
(22, '2022_01_15_162908_create_lbmodules_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `view_permission_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'view_route',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `view_permission_id`, `name`, `url`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'view-amit-permission', 'Amit', 'admin.amits.index', 1, NULL, '2022-01-09 14:32:54', '2022-01-09 14:32:54'),
(2, 'view-nipun-permission', 'Nipun', 'admin.nipuns.index', 1, NULL, '2022-01-10 12:56:16', '2022-01-10 12:56:16'),
(3, 'view-nisant-permission', 'Nisant', 'admin.nisants.index', 1, NULL, '2022-01-10 14:38:23', '2022-01-10 14:38:23'),
(4, 'view-mohan-permission', 'Mohan', 'admin.mohans.index', 1, NULL, '2022-01-10 15:20:38', '2022-01-10 15:20:38'),
(5, 'view-ravi-permission', 'Ravi', 'admin.ravis.index', 1, NULL, '2022-01-15 03:54:18', '2022-01-15 03:54:18'),
(6, 'view-damini-permission', 'Damini', 'admin.daminis.index', 1, NULL, '2022-01-15 04:21:09', '2022-01-15 04:21:09'),
(7, 'view-lbmodule-permission', 'Lbmodule', 'admin.lbmodules.index', 1, NULL, '2022-01-15 10:59:09', '2022-01-15 10:59:09'),
(8, 'view-permission-permission', 'Permission Management', 'admin.permissions.index', 1, NULL, '2022-01-22 10:10:54', '2022-01-22 10:10:54');

-- --------------------------------------------------------

--
-- Table structure for table `mohan`
--

CREATE TABLE `mohan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nipun`
--

CREATE TABLE `nipun` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nisant`
--

CREATE TABLE `nisant` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cannonical_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `sort`, `status`, `description`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'view-user-management', 'View User Management', NULL, 1, NULL, NULL, '2022-01-09 13:28:51', '2022-01-09 13:28:51', NULL),
(2, 'edit-user', 'Edit User', NULL, 1, NULL, NULL, '2022-01-09 13:28:52', '2022-01-09 13:28:52', NULL),
(3, 'create-user', 'Create User', NULL, 1, NULL, NULL, '2022-01-09 13:28:52', '2022-01-09 13:28:52', NULL),
(4, 'delete-user', 'Delete User', NULL, 1, NULL, NULL, '2022-01-09 13:28:52', '2022-01-09 13:28:52', NULL),
(5, 'show-user', 'Show User', NULL, 1, NULL, NULL, '2022-01-09 13:28:52', '2022-01-09 13:28:52', NULL),
(6, 'manage-amit', 'Manage amit Permission', NULL, 1, NULL, 1, '2022-01-09 14:32:54', '2022-01-09 14:32:54', NULL),
(7, 'create-amit', 'Create amit Permission', NULL, 1, NULL, 1, '2022-01-09 14:32:54', '2022-01-09 14:32:54', NULL),
(8, 'store-amit', 'Store amit Permission', NULL, 1, NULL, 1, '2022-01-09 14:32:54', '2022-01-09 14:32:54', NULL),
(9, 'edit-amit', 'Edit amit Permission', NULL, 1, NULL, 1, '2022-01-09 14:32:54', '2022-01-09 14:32:54', NULL),
(10, 'update-amit', 'Update amit Permission', NULL, 1, NULL, 1, '2022-01-09 14:32:54', '2022-01-09 14:32:54', NULL),
(11, 'delete-amit', 'Delete amit Permission', NULL, 1, NULL, 1, '2022-01-09 14:32:54', '2022-01-09 14:32:54', NULL),
(12, 'manage-nipun', 'Manage nipun Permission', NULL, 1, NULL, 1, '2022-01-10 12:56:16', '2022-01-10 12:56:16', NULL),
(13, 'create-nipun', 'Create nipun Permission', NULL, 1, NULL, 1, '2022-01-10 12:56:16', '2022-01-10 12:56:16', NULL),
(14, 'store-nipun', 'Store nipun Permission', NULL, 1, NULL, 1, '2022-01-10 12:56:16', '2022-01-10 12:56:16', NULL),
(15, 'edit-nipun', 'Edit nipun Permission', NULL, 1, NULL, 1, '2022-01-10 12:56:16', '2022-01-10 12:56:16', NULL),
(16, 'update-nipun', 'Update nipun Permission', NULL, 1, NULL, 1, '2022-01-10 12:56:16', '2022-01-10 12:56:16', NULL),
(17, 'delete-nipun', 'Delete nipun Permission', NULL, 1, NULL, 1, '2022-01-10 12:56:16', '2022-01-10 12:56:16', NULL),
(18, 'manage-nisant', 'Manage nisant Permission', NULL, 1, NULL, 1, '2022-01-10 14:38:23', '2022-01-10 14:38:23', NULL),
(19, 'create-nisant', 'Create nisant Permission', NULL, 1, NULL, 1, '2022-01-10 14:38:23', '2022-01-10 14:38:23', NULL),
(20, 'store-nisant', 'Store nisant Permission', NULL, 1, NULL, 1, '2022-01-10 14:38:23', '2022-01-10 14:38:23', NULL),
(21, 'edit-nisant', 'Edit nisant Permission', NULL, 1, NULL, 1, '2022-01-10 14:38:23', '2022-01-10 14:38:23', NULL),
(22, 'update-nisant', 'Update nisant Permission', NULL, 1, NULL, 1, '2022-01-10 14:38:23', '2022-01-10 14:38:23', NULL),
(23, 'delete-nisant', 'Delete nisant Permission', NULL, 1, NULL, 1, '2022-01-10 14:38:23', '2022-01-10 14:38:23', NULL),
(24, 'manage-mohan', 'Manage mohan Permission', NULL, 1, NULL, 1, '2022-01-10 15:20:37', '2022-01-10 15:20:37', NULL),
(25, 'create-mohan', 'Create mohan Permission', NULL, 1, NULL, 1, '2022-01-10 15:20:37', '2022-01-10 15:20:37', NULL),
(26, 'store-mohan', 'Store mohan Permission', NULL, 1, NULL, 1, '2022-01-10 15:20:38', '2022-01-10 15:20:38', NULL),
(27, 'edit-mohan', 'Edit mohan Permission', NULL, 1, NULL, 1, '2022-01-10 15:20:38', '2022-01-10 15:20:38', NULL),
(28, 'update-mohan', 'Update mohan Permission', NULL, 1, NULL, 1, '2022-01-10 15:20:38', '2022-01-10 15:20:38', NULL),
(29, 'delete-mohan', 'Delete mohan Permission', NULL, 1, NULL, 1, '2022-01-10 15:20:38', '2022-01-10 15:20:38', NULL),
(30, 'manage-ravi', 'Manage ravi Permission', NULL, 1, NULL, 1, '2022-01-15 03:54:18', '2022-01-15 03:54:18', NULL),
(31, 'create-ravi', 'Create ravi Permission', NULL, 1, NULL, 1, '2022-01-15 03:54:18', '2022-01-15 03:54:18', NULL),
(32, 'store-ravi', 'Store ravi Permission', NULL, 1, NULL, 1, '2022-01-15 03:54:18', '2022-01-15 03:54:18', NULL),
(33, 'edit-ravi', 'Edit ravi Permission', NULL, 1, NULL, 1, '2022-01-15 03:54:18', '2022-01-15 03:54:18', NULL),
(34, 'update-ravi', 'Update ravi Permission', NULL, 1, NULL, 1, '2022-01-15 03:54:18', '2022-01-15 03:54:18', NULL),
(35, 'delete-ravi', 'Delete ravi Permission', NULL, 1, NULL, 1, '2022-01-15 03:54:18', '2022-01-15 03:54:18', NULL),
(36, 'manage-damini', 'Manage damini Permission', NULL, 1, NULL, 1, '2022-01-15 04:21:09', '2022-01-15 04:21:09', NULL),
(37, 'create-damini', 'Create damini Permission', NULL, 1, NULL, 1, '2022-01-15 04:21:09', '2022-01-15 04:21:09', NULL),
(38, 'store-damini', 'Store damini Permission', NULL, 1, NULL, 1, '2022-01-15 04:21:09', '2022-01-15 04:21:09', NULL),
(39, 'edit-damini', 'Edit damini Permission', NULL, 1, NULL, 1, '2022-01-15 04:21:09', '2022-01-15 04:21:09', NULL),
(40, 'update-damini', 'Update damini Permission', NULL, 1, NULL, 1, '2022-01-15 04:21:09', '2022-01-15 04:21:09', NULL),
(41, 'delete-damini', 'Delete damini Permission', NULL, 1, NULL, 1, '2022-01-15 04:21:09', '2022-01-15 04:21:09', NULL),
(42, 'manage-lbmodule', 'Manage lbmodule Permission', NULL, 1, NULL, 1, '2022-01-15 10:59:09', '2022-01-15 10:59:09', NULL),
(43, 'manage-user', 'Manage user Permission', NULL, 1, NULL, 1, '2022-01-19 13:28:56', '2022-01-19 13:28:56', NULL),
(45, 'manage-permission', 'Manage permission Permission', NULL, 1, NULL, NULL, '2022-01-22 10:10:53', '2022-01-22 10:10:53', NULL),
(46, 'create-permission', 'Create permission Permission', NULL, 1, NULL, NULL, '2022-01-22 10:10:53', '2022-01-22 10:10:53', NULL),
(47, 'store-permission', 'Store permission Permission', NULL, 1, NULL, NULL, '2022-01-22 10:10:53', '2022-01-22 10:10:53', NULL),
(48, 'edit-permission', 'Edit permission Permission', NULL, 1, NULL, NULL, '2022-01-22 10:10:53', '2022-01-22 10:10:53', NULL),
(49, 'update-permission', 'Update permission Permission', NULL, 1, NULL, NULL, '2022-01-22 10:10:53', '2022-01-22 10:10:53', NULL),
(50, 'delete-permission', 'Delete permission Permission', NULL, 1, NULL, NULL, '2022-01-22 10:10:53', '2022-01-22 10:10:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(37, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
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
-- Table structure for table `ravi`
--

CREATE TABLE `ravi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `all` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `all`, `status`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'Administrator', 1, 1, 'Admin default created by Lblara', '2022-01-09 13:28:51', '2022-01-09 13:28:51'),
(2, 'Executive', 'Executive', 0, 1, 'Executive default created by Lblara', '2022-01-09 13:28:51', '2022-01-09 13:28:51'),
(3, 'User', 'User', 0, 1, 'User default created  by Lblara', '2022-01-09 13:28:51', '2022-01-09 13:28:51');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\Models\\User'),
(2, 2, 'App\\Models\\User'),
(3, 3, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('HGfbovqLkxiwypvUBq9OQFnF1GvzxMYIDIZjGG7m', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoicmhCNFNUYktSOGpJUkM4UlEzcTB4Zm4yVWhwcm5vUk5uMUN0cW82cyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vdXNlcnMvY3JlYXRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJHZCd0xIc0FpVmt0TlpEVjJSSXhQVHVONXRKMndWN3hFRVFIUzJ1U0dnTkFNelYzS293Q0lXIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCR2QndMSHNBaVZrdE5aRFYyUkl4UFR1TjV0SjJ3Vjd4RUVRSFMydVNHZ05BTXpWM0tvd0NJVyI7fQ==', 1642876520);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disclaimer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passwordtext` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Enable','Disable') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Enable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `passwordtext`, `remember_token`, `current_team_id`, `profile_photo_path`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$vBwLHsAiVktNZDV2RIxPTuN5tJ2wV7xEEQHS2uSGgNAMzV3KowCIW', NULL, NULL, NULL, NULL, NULL, 'backend/image/profile.jpeg', 'Enable', '2022-01-09 13:28:52', '2022-01-09 13:28:52', NULL),
(2, 'Executive', 'executive@executive.com', NULL, '$2y$10$OQ/DFu/rH8PGDcoMkbQWH.QnHrVbY7n4PD60SJJ6iyGeYSuG1mpsC', NULL, NULL, NULL, NULL, NULL, 'backend/image/profile.jpeg', 'Enable', '2022-01-09 13:28:53', '2022-01-09 13:28:53', NULL),
(3, 'Lb madesia', 'user@user.com', NULL, '$2y$10$I6xpEPLhUDOTf8yq10mpk.VYTWf/tl1.xyKC0Xg1OgArXqkDMhASi', NULL, NULL, NULL, NULL, NULL, 'frontend/image/profile.jpeg', 'Enable', '2022-01-09 13:28:53', '2022-01-09 13:28:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vivek`
--

CREATE TABLE `vivek` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amit`
--
ALTER TABLE `amit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ashu`
--
ALTER TABLE `ashu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daminis`
--
ALTER TABLE `daminis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `lb`
--
ALTER TABLE `lb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lbmodules`
--
ALTER TABLE `lbmodules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manish`
--
ALTER TABLE `manish`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mohan`
--
ALTER TABLE `mohan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nipun`
--
ALTER TABLE `nipun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nisant`
--
ALTER TABLE `nisant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_page_slug_unique` (`page_slug`);

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
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `ravi`
--
ALTER TABLE `ravi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vivek`
--
ALTER TABLE `vivek`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amit`
--
ALTER TABLE `amit`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ashu`
--
ALTER TABLE `ashu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daminis`
--
ALTER TABLE `daminis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lb`
--
ALTER TABLE `lb`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lbmodules`
--
ALTER TABLE `lbmodules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manish`
--
ALTER TABLE `manish`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mohan`
--
ALTER TABLE `mohan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nipun`
--
ALTER TABLE `nipun`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nisant`
--
ALTER TABLE `nisant`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ravi`
--
ALTER TABLE `ravi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vivek`
--
ALTER TABLE `vivek`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
