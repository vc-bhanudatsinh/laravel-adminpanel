-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 30, 2022 at 12:42 AM
-- Server version: 5.7.36-0ubuntu0.18.04.1
-- PHP Version: 8.0.14

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
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('backend','frontend') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items` text COLLATE utf8mb4_unicode_ci,
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
(1, 'backend', 'Backend Sidebar Menu', '[{\"id\":16,\"name\":\"User Management\",\"url\":\"admin.users.index\",\"url_type\":\"route\",\"open_in_new_tab\":0,\"icon\":\"fa-user\",\"view_permission_id\":\"manage-user\",\"content\":\"User Management\"},{\"view_permission_id\":\"manage-module\",\"open_in_new_tab\":0,\"icon\":\"fa-wrench\",\"url_type\":\"route\",\"url\":\"admin.modules.index\",\"name\":\"Module\",\"id\":84,\"content\":\"Module\"},{\"id\":14,\"name\":\"Permission Management\",\"url\":\"admin.permissions.index\",\"url_type\":\"route\",\"open_in_new_tab\":0,\"icon\":\"fa-code-fork\",\"view_permission_id\":\"view-permission-management\",\"content\":\"Permission Management\"},{\"id\":15,\"name\":\"Role Management\",\"url\":\"admin.roles.index\",\"url_type\":\"route\",\"open_in_new_tab\":0,\"icon\":\"fa-star\",\"view_permission_id\":\"manage-role\",\"content\":\"Role Management\"},{\"id\":15,\"name\":\"Menu Management\",\"url\":\"admin.menus.index\",\"url_type\":\"route\",\"open_in_new_tab\":0,\"icon\":\"fa-bars\",\"view_permission_id\":\"manage-menu\",\"content\":\"Menu Management\"},{\"id\":9,\"name\":\"Settings\",\"url\":\"admin.settings.edit?setting=1\",\"url_type\":\"route\",\"open_in_new_tab\":0,\"icon\":\"fa-gear\",\"view_permission_id\":\"edit-setting\",\"content\":\"Setting Management\"}]', 1, NULL, '2022-01-09 13:28:53', '2022-01-09 13:28:53', NULL);

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
(23, '2022_01_01_064810_create_sessions_table', 4);

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
(8, 'view-permission-permission', 'Permission Management', 'admin.permissions.index', 1, NULL, '2022-01-22 10:10:54', '2022-01-22 10:10:54'),
(9, 'view-role-permission', 'Role Management', 'admin.roles.index', 1, NULL, '2022-01-23 07:29:44', '2022-01-23 07:29:44'),
(10, 'view-menu-permission', 'Menu', 'admin.menus.index', 1, NULL, '2022-01-27 11:58:57', '2022-01-27 11:58:57'),
(11, 'view-setting-permission', 'Setting', 'admin.settings.edit', 1, NULL, '2022-01-27 12:01:14', '2022-01-27 12:01:14');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `cannonical_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
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
  `status` int(11) NOT NULL DEFAULT '1',
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
(50, 'delete-permission', 'Delete permission Permission', NULL, 1, NULL, NULL, '2022-01-22 10:10:53', '2022-01-22 10:10:53', NULL),
(51, 'manage-role', 'Manage role Permission', NULL, 1, NULL, 1, '2022-01-23 07:29:44', '2022-01-23 07:29:44', NULL),
(52, 'create-role', 'Create role Permission', NULL, 1, NULL, 1, '2022-01-23 07:29:44', '2022-01-23 07:29:44', NULL),
(53, 'store-role', 'Store role Permission', NULL, 1, NULL, 1, '2022-01-23 07:29:44', '2022-01-23 07:29:44', NULL),
(54, 'edit-role', 'Edit role Permission', NULL, 1, NULL, 1, '2022-01-23 07:29:44', '2022-01-23 07:29:44', NULL),
(55, 'update-role', 'Update role Permission', NULL, 1, NULL, 1, '2022-01-23 07:29:44', '2022-01-23 07:29:44', NULL),
(56, 'delete-role', 'Delete role Permission', NULL, 1, NULL, 1, '2022-01-23 07:29:44', '2022-01-23 07:29:44', NULL),
(57, 'manage-menu', 'Manage menu Permission', NULL, 1, NULL, 1, '2022-01-27 11:58:57', '2022-01-27 11:58:57', NULL),
(58, 'create-menu', 'Create menu Permission', NULL, 1, NULL, 1, '2022-01-27 11:58:57', '2022-01-27 11:58:57', NULL),
(59, 'store-menu', 'Store menu Permission', NULL, 1, NULL, 1, '2022-01-27 11:58:57', '2022-01-27 11:58:57', NULL),
(60, 'edit-menu', 'Edit menu Permission', NULL, 1, NULL, 1, '2022-01-27 11:58:57', '2022-01-27 11:58:57', NULL),
(61, 'update-menu', 'Update menu Permission', NULL, 1, NULL, 1, '2022-01-27 11:58:57', '2022-01-27 11:58:57', NULL),
(62, 'delete-menu', 'Delete menu Permission', NULL, 1, NULL, 1, '2022-01-27 11:58:57', '2022-01-27 11:58:57', NULL),
(63, 'manage-setting', 'Manage setting Permission', NULL, 1, NULL, 1, '2022-01-27 12:01:13', '2022-01-27 12:01:13', NULL),
(64, 'create-setting', 'Create setting Permission', NULL, 1, NULL, 1, '2022-01-27 12:01:14', '2022-01-27 12:01:14', NULL),
(65, 'store-setting', 'Store setting Permission', NULL, 1, NULL, 1, '2022-01-27 12:01:14', '2022-01-27 12:01:14', NULL),
(66, 'edit-setting', 'Edit setting Permission', NULL, 1, NULL, 1, '2022-01-27 12:01:14', '2022-01-27 12:01:14', NULL),
(67, 'update-setting', 'Update setting Permission', NULL, 1, NULL, 1, '2022-01-27 12:01:14', '2022-01-27 12:01:14', NULL),
(68, 'delete-setting', 'Delete setting Permission', NULL, 1, NULL, 1, '2022-01-27 12:01:14', '2022-01-27 12:01:14', NULL);

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
(37, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
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
  `all` int(11) NOT NULL DEFAULT '0',
  `sort` bigint(20) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `all`, `sort`, `status`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Administrator', 'Administrator', 1, NULL, 1, 'Admin default created by Lblara', NULL, NULL, '2022-01-09 13:28:51', '2022-01-09 13:28:51', NULL),
(2, 'Executive', 'Executive', 0, 0, 0, 'Executive default created by Lblara', NULL, 1, '2022-01-09 13:28:51', '2022-01-23 11:35:14', NULL),
(3, 'User', 'User', 0, NULL, 1, 'User default created  by Lblara', NULL, NULL, '2022-01-09 13:28:51', '2022-01-09 13:28:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `user_type`) VALUES
(1, 1, 1, 'App\\Models\\User'),
(2, 2, 2, 'App\\Models\\User'),
(3, 3, 3, 'App\\Models\\User'),
(4, 3, 4, 'App\\Models\\User\\User'),
(5, 3, 6, 'App\\Models\\User\\User');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('LAsxeM54q5WBWPbN7I20DUI5S2Oi67ANbQqxCkhY', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiMDlucTA4cjFQcW9IYm9lRjBlV2JCN1JobGVRS29vWGM4N1piV3NZZiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vbW9kdWxlcy9jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkdkJ3TEhzQWlWa3ROWkRWMlJJeFBUdU41dEoyd1Y3eEVFUUhTMnVTR2dOQU16VjNLb3dDSVciO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHZCd0xIc0FpVmt0TlpEVjJSSXhQVHVONXRKMndWN3hFRVFIUzJ1U0dnTkFNelYzS293Q0lXIjt9', 1643479627);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` text COLLATE utf8mb4_unicode_ci,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `company_contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` text COLLATE utf8mb4_unicode_ci,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci,
  `disclaimer` text COLLATE utf8mb4_unicode_ci,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `home_video1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(244) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(244) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(244) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(244) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(244) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timing` varchar(244) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_description` varchar(244) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(244) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `seo_title`, `seo_keyword`, `seo_description`, `company_contact`, `company_address`, `from_name`, `from_email`, `facebook`, `linkedin`, `twitter`, `google`, `copyright_text`, `footer_text`, `terms`, `disclaimer`, `google_analytics`, `home_video1`, `home_video2`, `home_video3`, `home_video4`, `explanation1`, `explanation2`, `explanation3`, `explanation4`, `created_at`, `updated_at`, `name`, `version`, `description`, `mobile`, `email`, `timing`, `contact_description`, `location`) VALUES
(1, 'images/setting/Artboard-1443.png', NULL, 'LB admin panel boilerplate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LB admin panel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-06 04:17:02', 'LB admin panel', '1.001', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '+45 31 32 10 29', 'lbmadesia@gmail.com', '07:00 AM TO 7:00 PM CT', 'LB admin panel', 'LB admin panel');

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
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
(3, 'Lb madesia', 'user@user.com', NULL, '$2y$10$I6xpEPLhUDOTf8yq10mpk.VYTWf/tl1.xyKC0Xg1OgArXqkDMhASi', NULL, NULL, NULL, NULL, NULL, 'frontend/image/profile.jpeg', 'Enable', '2022-01-09 13:28:53', '2022-01-09 13:28:53', NULL),
(4, 'LB MADESIA', 'lbmadesia8318@gmail.com', NULL, '$2y$10$1izTqWlNDYo7YIv6STguxOj0aIQOMkH0tDvfWZZ61wS/nga1dfvla', NULL, NULL, 'JDJ5JDEwJDFpelRxV2xORFlvN1lJdjZTVGd1eE9qMGFJUU9Na0gwdER2ZldaWjYxd1MvbmdhMWRmdmxh', NULL, NULL, 'images\\users\\aj_lb190.jpg', 'Enable', '2022-01-23 11:39:25', '2022-01-23 11:49:07', '2022-01-23 11:49:07'),
(6, 'ajay madesia', 'lbmadesia83185@gmail.com', NULL, '$2y$10$lLaL5EATtul8COkCCLPYhOs8664RoyZBoz0VZdXqwT9q95d/AnKx2', NULL, NULL, 'JDJ5JDEwJGxMYUw1RUFUdHVsOENPa0NDTFBZaE9zODY2NFJveVpCb3owVlpkWHF3VDlxOTVkL0FuS3gy', NULL, NULL, 'images\\users\\aj_lb864.jpg', 'Enable', '2022-01-23 11:43:35', '2022-01-23 11:44:13', '2022-01-23 11:44:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
