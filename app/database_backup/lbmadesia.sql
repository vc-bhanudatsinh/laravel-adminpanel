-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 08, 2022 at 11:56 PM
-- Server version: 5.7.37-0ubuntu0.18.04.1
-- PHP Version: 7.2.34-28+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lbmadesia`
--

-- --------------------------------------------------------

--
-- Table structure for table `apis`
--

CREATE TABLE `apis` (
  `id` int(10) UNSIGNED NOT NULL,
  `view_permission_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `controller_path` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
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
(1, 'backend', 'Backend Sidebar Menu', '[{\"view_permission_id\":\"manage-user\",\"icon\":\"fa-user\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"admin.users.index\",\"name\":\"User Management\",\"id\":1,\"content\":\"User Management\"},{\"id\":7,\"name\":\"Settings\",\"url\":\"admin.settings.edit\",\"url_type\":\"route\",\"open_in_new_tab\":0,\"icon\":\"fa-cogs\",\"view_permission_id\":\"edit-settings\",\"content\":\"Settings\",\"children\":[{\"id\":2,\"name\":\"Module Management\",\"url\":\"admin.modules.index\",\"url_type\":\"route\",\"open_in_new_tab\":0,\"icon\":\"fa-wrench\",\"view_permission_id\":\"manage-module\",\"content\":\"Module Management\"},{\"id\":3,\"name\":\"Permission Management\",\"url\":\"admin.permissions.index\",\"url_type\":\"route\",\"open_in_new_tab\":0,\"icon\":\"fa-code-fork\",\"view_permission_id\":\"view-permission-management\",\"content\":\"Permission Management\"},{\"id\":4,\"name\":\"Role Management\",\"url\":\"admin.roles.index\",\"url_type\":\"route\",\"open_in_new_tab\":0,\"icon\":\"fa-star\",\"view_permission_id\":\"manage-role\",\"content\":\"Role Management\"},{\"id\":5,\"name\":\"Menu Management\",\"url\":\"admin.menus.index\",\"url_type\":\"route\",\"open_in_new_tab\":0,\"icon\":\"fa-bars\",\"view_permission_id\":\"manage-menu\",\"content\":\"Menu Management\"},{\"id\":6,\"name\":\"Setting management\",\"url\":\"admin.settings.edit?setting=1\",\"url_type\":\"route\",\"open_in_new_tab\":0,\"icon\":\"fa-gear\",\"view_permission_id\":\"edit-setting\",\"content\":\"Setting management\"},{\"view_permission_id\":\"manage-api\",\"icon\":\"fa-reddit-alien\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"admin.apis.index\",\"name\":\"Api Management\",\"id\":8,\"content\":\"Api Management\"},{\"view_permission_id\":\"view-page-permission\",\"icon\":\"fa-file-text-o\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"admin.pages.index\",\"name\":\"Page Management\",\"id\":9,\"content\":\"Page Management\"}]}]', 1, NULL, '2022-02-12 10:47:13', '2022-02-14 01:42:05', NULL);

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
(4, '2017_11_02_060149_create_settings_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2021_12_04_165910_create_menus_table', 1),
(8, '2021_12_04_170022_create_pages_table', 1),
(9, '2021_12_25_095757_laratrust_setup_tables', 1),
(10, '2022_01_01_064810_create_sessions_table', 1),
(11, '2022_01_02_060149_create_modules_table', 1),
(15, '2022_01_02_060149_create_apis_table', 2);

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
(1, 'manage-user', 'User Management', 'admin.users.index', 1, NULL, '2022-02-12 10:47:14', NULL),
(2, 'manage-role', 'Role Management', 'admin.roles.index', 1, NULL, '2022-02-12 10:47:14', NULL),
(3, 'manage-permissions', 'Permission Management', 'admin.permissions.index', 1, NULL, '2022-02-12 10:47:14', NULL),
(4, 'manage-menu', 'Menu Management', 'admin.menus.index', 1, NULL, '2022-02-12 10:47:14', NULL),
(5, 'manage-module', 'Module Management', 'admin.modules.index', 1, NULL, '2022-02-12 10:47:14', NULL),
(6, 'edit-settings', 'Settings', 'admin.settings.edit', 1, NULL, '2022-02-12 10:47:14', NULL),
(7, 'manage-page', 'Page Management', 'admin.pages.index', 1, NULL, '2022-02-12 10:47:14', NULL),
(8, 'manage-api', 'Api Management', 'admin.apis.index', 1, NULL, NULL, NULL),
(9, 'view-page-permission', 'Page', 'admin.pages.index', 1, NULL, '2022-02-13 13:02:22', '2022-02-13 13:02:22');

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

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `page_slug`, `description`, `cannonical_link`, `seo_title`, `seo_keyword`, `seo_description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'home page', 'home-page', 'dsafada', 'www.xyz.in', 'sadas', 'asdasd', 'lb madesia', 1, 1, NULL, '2022-02-14 02:40:32', '2022-02-14 13:27:56', NULL),
(4, 'vxc', 'vxc', 'xcvxc', 'xcvxc', 'xcvx', 'xcvxc', 'xcvx', 1, 1, NULL, '2022-02-14 13:26:28', '2022-02-14 13:26:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('lalbabu@aresourcepool.com', '$2y$10$SQOc/ek8oNGDjsnVkUtmxeTBSUMweSSJmsI8zAUlHtChxxqw82Jgq', '2022-03-08 12:45:48');

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
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `sort`, `status`, `description`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'manage-user', 'Manage user Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:08', '2022-02-12 10:47:08', NULL),
(2, 'create-user', 'Create user Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:08', '2022-02-12 10:47:08', NULL),
(3, 'store-user', 'Store user Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:08', '2022-02-12 10:47:08', NULL),
(4, 'edit-user', 'Edit user Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:09', '2022-02-12 10:47:09', NULL),
(5, 'update-user', 'Update user Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:09', '2022-02-12 10:47:09', NULL),
(6, 'delete-user', 'Delete user Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:09', '2022-02-12 10:47:09', NULL),
(7, 'show-user', 'Show user Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:09', '2022-02-12 10:47:09', NULL),
(8, 'manage-role', 'Manage role Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:09', '2022-02-12 10:47:09', NULL),
(9, 'create-role', 'Create role Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:09', '2022-02-12 10:47:09', NULL),
(10, 'store-role', 'Store role Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:09', '2022-02-12 10:47:09', NULL),
(11, 'edit-role', 'Edit role Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:09', '2022-02-12 10:47:09', NULL),
(12, 'update-role', 'Update role Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:10', '2022-02-12 10:47:10', NULL),
(13, 'delete-role', 'Delete role Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:10', '2022-02-12 10:47:10', NULL),
(14, 'manage-permission', 'Manage permission Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:10', '2022-02-12 10:47:10', NULL),
(15, 'create-permission', 'Create permission Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:10', '2022-02-12 10:47:10', NULL),
(16, 'store-permission', 'Store permission Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:10', '2022-02-12 10:47:10', NULL),
(17, 'edit-permission', 'Edit permission Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:10', '2022-02-12 10:47:10', NULL),
(18, 'update-permission', 'Update permission Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:10', '2022-02-12 10:47:10', NULL),
(19, 'delete-permission', 'Delete permission Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:10', '2022-02-12 10:47:10', NULL),
(20, 'manage-menu', 'Manage menu Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:10', '2022-02-12 10:47:10', NULL),
(21, 'create-menu', 'Create menu Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:10', '2022-02-12 10:47:10', NULL),
(22, 'store-menu', 'Store menu Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:10', '2022-02-12 10:47:10', NULL),
(23, 'edit-menu', 'Edit menu Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:10', '2022-02-12 10:47:10', NULL),
(24, 'update-menu', 'Update menu Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:10', '2022-02-12 10:47:10', NULL),
(25, 'delete-menu', 'Delete menu Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:10', '2022-02-12 10:47:10', NULL),
(26, 'manage-module', 'Manage module Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:10', '2022-02-12 10:47:10', NULL),
(27, 'create-module', 'Create module Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:10', '2022-02-12 10:47:10', NULL),
(28, 'store-module', 'Store module Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:10', '2022-02-12 10:47:10', NULL),
(29, 'edit-module', 'Edit module Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:11', '2022-02-12 10:47:11', NULL),
(30, 'update-module', 'Update module Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:11', '2022-02-12 10:47:11', NULL),
(31, 'delete-module', 'Delete module Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:11', '2022-02-12 10:47:11', NULL),
(32, 'manage-setting', 'Manage setting Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:11', '2022-02-12 10:47:11', NULL),
(33, 'create-setting', 'Create setting Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:11', '2022-02-12 10:47:11', NULL),
(34, 'store-setting', 'Store setting Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:11', '2022-02-12 10:47:11', NULL),
(35, 'edit-setting', 'Edit setting Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:11', '2022-02-12 10:47:11', NULL),
(36, 'update-setting', 'Update setting Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:11', '2022-02-12 10:47:11', NULL),
(37, 'delete-setting', 'Delete setting Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:11', '2022-02-12 10:47:11', NULL),
(38, 'manage-page', 'Manage page Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:11', '2022-02-12 10:47:11', NULL),
(39, 'create-page', 'Create page Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:11', '2022-02-12 10:47:11', NULL),
(40, 'store-page', 'Store page Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:11', '2022-02-12 10:47:11', NULL),
(41, 'edit-page', 'Edit page Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:11', '2022-02-12 10:47:11', NULL),
(42, 'update-page', 'Update page Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:11', '2022-02-12 10:47:11', NULL),
(43, 'delete-page', 'Delete page Permission', NULL, 1, NULL, NULL, '2022-02-12 10:47:11', '2022-02-12 10:47:11', NULL),
(44, 'manage-api', 'Manage api Permission', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(45, 'create-api', 'Create api Permission', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(46, 'store-api', 'Store api Permission', NULL, 1, NULL, NULL, NULL, NULL, NULL);

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
(6, 2),
(7, 2);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User\\User', 1, 'auth_token', 'e7c1d98dadf9cf10bf632815b55a279412a1d828e30d429ba9d9ecf7e4eb8eaf', '[\"*\"]', NULL, '2022-03-07 21:00:00', '2022-03-07 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `all` int(11) NOT NULL DEFAULT '0',
  `sort` bigint(20) NOT NULL DEFAULT '0',
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
(1, 'Administrator', 'Administrator', 1, 0, 1, 'Admin default created by Lblara', NULL, NULL, '2022-02-12 10:47:08', '2022-02-12 10:47:08', NULL),
(2, 'Executive', 'Executive', 0, 0, 1, 'Executive default created by Lblara', NULL, NULL, '2022-02-12 10:47:08', '2022-02-12 10:47:08', NULL),
(3, 'User', 'User', 0, 0, 1, 'User default created  by Lblara', NULL, NULL, '2022-02-12 10:47:08', '2022-02-12 10:47:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(3, 3, 3, 'App\\Models\\User');

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
('dGM4zbV9TUzqpB741YKiqANBcqCwkeRJAoBdyZlS', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoidkV4U3FNbHFRM2NxdlJTdUJWUUROendISjdZaEJTQktISjBtQUEwaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9tb2R1bGVzL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRkby9QMHlCN25vTE1PN1BjUG80cXQuUW9Ma0x6bkQ5TG0vSURLUEY4Sm1yY2dydDd6T1FQZSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkZG8vUDB5Qjdub0xNTzdQY1BvNHF0LlFvTGtMem5EOUxtL0lES1BGOEptcmNncnQ3ek9RUGUiO30=', 1646569647),
('hOSlAruRwae03N00SpoYQbrbA6s3KQjGaBCfdSkX', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieE1TWWs1bWxCeTkyQ0JTVzdTajYyQTBRcFFkV3FrcmhtMHdOUjN2biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTM1OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcmVzZXQtcGFzc3dvcmQvZjc4NjAxM2NkMTNiMTI0NWU5MDJlM2QxZjMyOTM0N2NkNzA0YjBmM2ZiOTZhOGI5YTJiNzdjNjBmZTY5NmNiMz9lbWFpbD1sYWxiYWJ1JTQwYXJlc291cmNlcG9vbC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1646763382),
('IX8Sg9f6sGAoMooOaVft28cZ0HPlHqobuUxt1JwH', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiYW1JaGpvVnlxQWpQeUtqQ29LNFUzMzVlbG1TZWs0c2ZDejdoQkRzWCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMyOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vYXBpcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRkby9QMHlCN25vTE1PN1BjUG80cXQuUW9Ma0x6bkQ5TG0vSURLUEY4Sm1yY2dydDd6T1FQZSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkZG8vUDB5Qjdub0xNTzdQY1BvNHF0LlFvTGtMem5EOUxtL0lES1BGOEptcmNncnQ3ek9RUGUiO30=', 1646591057),
('jEcx9oSCS7YDf1CjIgetgjZUWQ1aSd34rTYgr4PA', 1, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Mobile Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoib29nMmVlTmE4SFVSZkYxc1czUlhnZUxlT3VXcUZidnR3RGZ4YmdweCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9hcGlzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJGRvL1AweUI3bm9MTU83UGNQbzRxdC5Rb0xrTHpuRDlMbS9JREtQRjhKbXJjZ3J0N3pPUVBlIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRkby9QMHlCN25vTE1PN1BjUG80cXQuUW9Ma0x6bkQ5TG0vSURLUEY4Sm1yY2dydDd6T1FQZSI7fQ==', 1646566543),
('KnXuTYse6djRuuuRjnDGXxBRv7ohxJBrt7VmCk0A', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiTXNKWUM4QmVRNWFpVENhV0pnMUNsc1d1UUZobzRlMU1UalhFQ2lERiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9hcGlzL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRkby9QMHlCN25vTE1PN1BjUG80cXQuUW9Ma0x6bkQ5TG0vSURLUEY4Sm1yY2dydDd6T1FQZSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkZG8vUDB5Qjdub0xNTzdQY1BvNHF0LlFvTGtMem5EOUxtL0lES1BGOEptcmNncnQ3ek9RUGUiO30=', 1646550653),
('oiI6Q8gYQK3Am5smJWgfFdTZcZKdDBgKZw6pdVLq', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTnlXTWJnSHBiUkFMbGFKZk9vcW9SYkVyS1RwV1dobFFCaWhZbU9rSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1646704784),
('TnEnL52wAKP7LJJ7FvnMOIUJqfKJPRXlfNaJdjuf', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ3p6eFJYblFFeUQxTWp0M3NqNDltRERITUd1QnBwYW1wUUQzUjcyUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9mb3Jnb3QtcGFzc3dvcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1646760424),
('XD3J1UmFVAyIlYyXA1dic8AqZng1NXWbav5yL9C7', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiV2hlQlJsQzkzTEdRMndtalFtS2xGT2JiWExaczFvZzM1TVE3TkF2QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9hcGlzL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRkby9QMHlCN25vTE1PN1BjUG80cXQuUW9Ma0x6bkQ5TG0vSURLUEY4Sm1yY2dydDd6T1FQZSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkZG8vUDB5Qjdub0xNTzdQY1BvNHF0LlFvTGtMem5EOUxtL0lES1BGOEptcmNncnQ3ek9RUGUiO30=', 1646504932),
('xXx0EKX1IMxgtIj5GhsMpZE4bzMtd3T3VCKZMhnl', NULL, '127.0.0.1', 'PostmanRuntime/7.28.4', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQktEMEMyNnk4dlRxT3U2RmxmSTdoWjNVRHBzQVI2TmlDd2xCUEtsbiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1646762424);

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
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timing` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_description` text COLLATE utf8mb4_unicode_ci,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `seo_title`, `seo_keyword`, `seo_description`, `company_contact`, `company_address`, `from_name`, `from_email`, `facebook`, `linkedin`, `twitter`, `google`, `copyright_text`, `footer_text`, `terms`, `disclaimer`, `google_analytics`, `home_video1`, `home_video2`, `home_video3`, `home_video4`, `explanation1`, `explanation2`, `explanation3`, `explanation4`, `name`, `version`, `description`, `mobile`, `email`, `timing`, `contact_description`, `location`, `created_at`, `updated_at`) VALUES
(1, 'images/setting/logo.png', NULL, 'Lb-Madesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lb madesia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lb madesia', '1.0.0', NULL, '7739261027', 'lbmadesia@gmail.com', '09:00 AM TO 6:00 PM CT', 'Lb madesia, lbmadesia@gmail.com, 7739261027', 'India', NULL, NULL);

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
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$do/P0yB7noLMO7PcPo4qt.QoLkLznD9Lm/IDKPF8Jmrcgrt7zOQPe', NULL, NULL, NULL, NULL, NULL, 'backend/image/profile.jpeg', 'Enable', '2022-02-12 10:47:12', '2022-02-12 10:47:12', NULL),
(2, 'Executive', 'executive@executive.com', NULL, '$2y$10$9YGBYuMxMvRVsocQX1D4iunGkHyV3jxb/F47jgBXiEcpMli0Fpspa', NULL, NULL, NULL, NULL, NULL, 'backend/image/profile.jpeg', 'Enable', '2022-02-12 10:47:13', '2022-02-12 10:47:13', NULL),
(3, 'Lb madesia', 'user@user.com', NULL, '$2y$10$9zGypLXURgGh3Pz8EcpiT.7jVOCKPiFyVwJM/MMfRZkDMvlJFB9AW', NULL, NULL, NULL, NULL, NULL, 'frontend/image/profile.jpeg', 'Enable', '2022-02-12 10:47:13', '2022-02-12 10:47:13', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apis`
--
ALTER TABLE `apis`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_user_user_id_foreign` (`user_id`);

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
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apis`
--
ALTER TABLE `apis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
