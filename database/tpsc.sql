-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 16, 2022 at 08:33 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latra`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `administration_categories`
--

CREATE TABLE `administration_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administration_categories`
--

INSERT INTO `administration_categories` (`id`, `title_sw`, `title_en`, `summary_sw`, `summary_en`, `slug`, `content`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Bodi ya Wakurugenzi', 'Board Members', 'Hii ni Bodi ya Wakuregenzi.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'This is the Board Members.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'board-members', NULL, 1, '2021-08-09 12:32:20', '2021-10-26 04:37:11'),
(2, 'Management Team', 'Management Team', NULL, NULL, 'management-team', NULL, 1, '2021-10-08 08:50:02', '2021-10-08 08:50:02');

-- --------------------------------------------------------

--
-- Table structure for table `administration_categories_members`
--

CREATE TABLE `administration_categories_members` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `title_en` varchar(64) DEFAULT NULL,
  `title_sw` varchar(64) DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `administration_categories_members`
--

INSERT INTO `administration_categories_members` (`id`, `category_id`, `member_id`, `title_en`, `title_sw`, `parent`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Secretary of Board', 'Katibu wa Bodi', 0, 2, '2021-08-09 12:34:21', '2021-08-09 12:34:21'),
(2, 1, 6, 'Member', 'Mjumbe', 0, 3, '2021-08-09 12:34:56', '2021-08-09 12:34:56'),
(3, 1, 7, 'Chairman', 'Mwenyekiti', 0, 2, '2021-10-26 03:25:17', '2021-10-26 03:25:17'),
(4, 1, 1, 'Member', 'Mjumbe', 0, 1, '2021-10-26 03:44:08', '2021-10-26 03:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `administration_members`
--

CREATE TABLE `administration_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `salutation_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salutation_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administration_members`
--

INSERT INTO `administration_members` (`id`, `salutation_en`, `salutation_sw`, `fullname`, `position`, `title_sw`, `title_en`, `content_sw`, `content_en`, `photo_url`, `email`, `phone`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Dr.', 'Dkt.', 'John Doe', 1, 'Mkuu wa Chuo', 'Vice Chancellor', NULL, NULL, '448f674e33f0894caeba68c7734cc420.jpeg', NULL, NULL, '2021-07-30 09:38:34', '2021-11-23 11:40:49', 'firstname-lastname'),
(2, NULL, NULL, 'Firstname Lastname', 0, 'Chief Secretary', 'Chief Secretary', NULL, NULL, '7ec4f86d83948cc6ac3dd723984e72e4.png', NULL, NULL, '2021-07-30 09:39:57', '2021-08-06 10:09:52', 'firstname-lastname-2'),
(3, NULL, NULL, 'Firstname Lastname', 0, 'TPSC Chairman', 'TPSC Chairman', NULL, NULL, 'af860032cec48389bbb0302756406e3a.png', NULL, NULL, '2021-07-30 09:41:38', '2021-07-30 09:41:38', 'firstname-lastname-3'),
(4, NULL, NULL, 'Firstname Lastname', 0, 'Executive Secretary', 'Executive Secretary', NULL, NULL, '5f8ce47789dfb96f00265d78352b8726.png', NULL, NULL, '2021-07-30 09:42:47', '2021-07-30 09:42:47', 'firstname-lastname-4'),
(5, NULL, NULL, 'Pasiansi Master', 3, 'Pansi Master', 'Pansi Master', NULL, NULL, '76b38a956bc3ec50a60b489643c6a86c.jpeg', NULL, NULL, '2021-07-30 10:13:44', '2021-10-13 10:05:32', 'pasiansi-master'),
(6, NULL, NULL, 'Jane Joe', 2, 'Secretary', 'Secretary', '<p>cool lady and very passionate about many things, if you know what I mean&nbsp;cool lady and very passionate about many things, if you know what I mean&nbsp;cool lady and very passionate about many things, if you know what I mean&nbsp;cool lady and very passionate about many things, if you know what I mean</p>', '<p>cool lady and very passionate about many things, if you know what I mean&nbsp;cool lady and very passionate about many things, if you know what I mean&nbsp;cool lady and very passionate about many things, if you know what I mean&nbsp;cool lady and very passionate about many things, if you know what I mean&nbsp;cool lady and very passionate about many things, if you know what I mean</p>', '6747f9ef1b8ad6debbd70f1199f55e9c.jpeg', 'jane@janes.com', NULL, '2021-08-02 04:10:20', '2021-10-13 10:05:10', 'jane-joe'),
(7, NULL, NULL, 'Pasiansi Master', 4, 'Master of masters', 'Master of masters', '<p>the window doesnt blow where this being is, its almost comes as a fable till reality slaps you in the face&nbsp;the window doesnt blow where this being is, its almost comes as a fable till reality slaps you in the face&nbsp;the window doesnt blow where this being is, its almost comes as a fable till reality slaps you in the face&nbsp;the window doesnt blow where this being is, its almost comes as a fable till reality slaps you in the face</p>', '<p>the window doesnt blow where this being is, its almost comes as a fable till reality slaps you in the face&nbsp;the window doesnt blow where this being is, its almost comes as a fable till reality slaps you in the face&nbsp;the window doesnt blow where this being is, its almost comes as a fable till reality slaps you in the face&nbsp;the window doesnt blow where this being is, its almost comes as a fable till reality slaps you in the face</p>', '208e85575e6e2fd5e1f6619afdcc784d.jpeg', 'cool@coolnes.com', NULL, '2021-08-02 04:13:01', '2021-10-13 10:04:42', 'pasiansi-master-2');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `name_sw`, `name_en`, `content_sw`, `content_en`, `active`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC', 'Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC', '<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;</p>', '<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;</p>', 1, 'mapitio-ya-kikao-kazi-cha-utendaji-wa-TPSC', '2021-11-01 03:44:12', '2021-11-01 03:44:12'),
(2, 'Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC ', 'Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC ', '<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;</p>', '<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;</p>', 1, 'mapitio-ya-kikao-kazi-cha-utendaji-wa-TPSC-2', '2021-11-17 03:44:12', '2021-11-17 03:44:12'),
(3, 'Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC ', 'Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC ', '<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;</p>', '<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;</p>', 1, 'mapitio-ya-kikao-kazi-cha-utendaji-wa-TPSC-3', '2021-11-20 03:44:12', '2021-11-20 03:44:12'),
(4, 'Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC ', 'Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC ', '<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;</p>', '<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;</p>', 1, 'mapitio-ya-kikao-kazi-cha-utendaji-wa-TPSC-4', '2021-11-23 03:44:12', '2021-11-23 03:44:12'),
(5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, 'mapitio-ya-kikao-kazi-cha-utendaji-wa-TPSC-5', '2021-11-23 03:44:12', '2021-11-23 03:44:12');

-- --------------------------------------------------------

--
-- Table structure for table `backgrounds`
--

CREATE TABLE `backgrounds` (
  `id` int(11) NOT NULL,
  `main_bg` varchar(255) NOT NULL,
  `banner_bg` varchar(255) NOT NULL,
  `second_bg` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `backgrounds`
--

INSERT INTO `backgrounds` (`id`, `main_bg`, `banner_bg`, `second_bg`, `user_id`, `created_at`, `updated_at`) VALUES
(6, '', '/uploads/backgrounds/1645039545-banner.png', NULL, 1, '2022-02-16 16:25:45', '2022-02-16 16:25:45');

-- --------------------------------------------------------

--
-- Table structure for table `complainants`
--

CREATE TABLE `complainants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_type` enum('Internal','External') COLLATE utf8mb4_unicode_ci NOT NULL,
  `complainant_id` int(11) NOT NULL,
  `grievance_level_id` int(11) NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `defect` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `complained_before` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `first_name`, `middle_name`, `last_name`, `work`, `designation`, `organization`, `address`, `phone`, `fax`, `customer_type`, `complainant_id`, `grievance_level_id`, `subject`, `message`, `defect`, `location`, `date`, `complained_before`, `created_at`, `updated_at`, `email`) VALUES
(1, 'Demo Name', '', '', '', '', 'TPSC', NULL, '255754 555 222', '', 'Internal', 0, 0, 'INQUIRING ON LAND TENURE', 'Hi, Hope you are fine!?\r\n\r\nI am inquiring on the process to receive land tenure services and how to arrive there... Hope you can help?\r\nAwaiting response!', '', '', '0000-00-00', 0, '2021-09-20 08:17:35', '2021-09-20 08:17:35', 'frednandjohn@gmail.com'),
(2, 'Demo Name', '', '', '', '', 'TPSC', NULL, '255754 555 222', '', 'Internal', 0, 0, 'INQUIRING ON LAND TENURE', 'Hi, Hope you are fine!?\r\n\r\nI am inquiring on the process to receive land tenure services and how to arrive there... Hope you can help?\r\nAwaiting response!', '', '', '0000-00-00', 0, '2021-09-20 08:18:18', '2021-09-20 08:18:18', 'frednandjohn@gmail.com'),
(3, 'Demo Name', '', '', '', '', 'TPSC', NULL, '255754 555 222', '', 'Internal', 0, 0, 'INQUIRING ON LAND TENURE', 'Hi, Hope you are fine!?\r\n\r\nI am inquiring on the process to receive land tenure services and how to arrive there... Hope you can help?\r\nAwaiting response!', '', '', '0000-00-00', 0, '2021-09-20 08:36:50', '2021-09-20 08:36:50', 'frednandjohn@gmail.com'),
(4, 'Demo Name', '', '', '', '', 'TPSC', NULL, '255754 555 222', '', 'Internal', 0, 0, 'INQUIRING ON LAND TENURE', 'Hi, Hope you are fine!?\r\n\r\nI am inquiring on the process to receive land tenure services and how to arrive there... Hope you can help?\r\nAwaiting response!', '', '', '0000-00-00', 0, '2021-09-20 08:42:38', '2021-09-20 08:42:38', 'frednandjohn@gmail.com'),
(5, 'Demo Name', '', '', '', '', 'Demo Organization', NULL, '255754 555 222', '', 'Internal', 0, 0, 'Demo Subject', 'This is a test. Thank you!', '', '', '0000-00-00', 0, '2021-11-01 10:01:44', '2021-11-01 10:01:44', 'demo@email.com'),
(6, 'Demo Name', '', '', '', '', 'Demo Organization', NULL, '255754 555 222', '', 'Internal', 0, 0, 'Demo Subject', 'This is a test. Thank you!', '', '', '0000-00-00', 0, '2021-11-01 10:03:27', '2021-11-01 10:03:27', 'demo@email.com'),
(7, 'gjjhhjgjj', '', '', '', '', 'gyjgjygb', NULL, 'yjgjygbj', '', 'Internal', 0, 0, 'jgvjygyujh', 'guyguygyjhbjh', '', '', '0000-00-00', 0, '2021-11-24 15:40:20', '2021-11-24 15:40:20', 'jhgjhgjh@hgfgujhg'),
(8, 'Frednand Masasi', '', '', '', '', NULL, NULL, '', '', 'Internal', 0, 0, NULL, 'Demo', '', '', '0000-00-00', 0, '2022-02-16 10:15:42', '2022-02-16 10:15:42', 'frednand.masasi@mail.com'),
(9, 'Demo Name', '', '', '', '', NULL, NULL, '', '', 'Internal', 0, 0, NULL, 'Demo Message', '', '', '0000-00-00', 0, '2022-02-16 10:21:44', '2022-02-16 10:21:44', 'admin@lands.go.tz'),
(10, 'Demo Name', '', '', '', '', NULL, NULL, '', '', 'Internal', 0, 0, NULL, 'Demo', '', '', '0000-00-00', 0, '2022-02-16 10:24:58', '2022-02-16 10:24:58', 'admin@tic.go.tz');

-- --------------------------------------------------------

--
-- Table structure for table `customer_centers`
--

CREATE TABLE `customer_centers` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` tinyint(1) NOT NULL DEFAULT 0,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_external` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_centers`
--

INSERT INTO `customer_centers` (`id`, `title_sw`, `title_en`, `link`, `url`, `url_external`, `active`, `created_at`, `updated_at`, `parent`, `position`) VALUES
(6, 'User Manual', 'User Manual', 1, '#', NULL, 1, '2022-01-02 09:04:47', '2022-01-02 09:06:18', 0, 2),
(7, 'Product Catalogue', 'Product Catalogue', 0, '', NULL, 1, '2022-01-02 09:06:11', '2022-01-09 07:34:23', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `published_date` date NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `title_sw`, `title_en`, `file_sw`, `file_en`, `active`, `published_date`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Ripoti ya mwaka 2021/22', '2021/22 Annual Reports', 'sw-1628523483-code.txt', 'en-1628523483-demo.pdf', 1, '2021-08-07', 3, '2021-08-09 12:38:04', '2022-02-07 07:38:07'),
(2, 'First Phase Books I', 'First Phase Books I', 'sw-1634118097-DCEA_CHALLENGES.pdf', 'en-1634118097-DCEA_CHALLENGES.pdf', 1, '2021-10-12', 9, '2021-10-13 06:41:37', '2021-10-13 06:41:37');

-- --------------------------------------------------------

--
-- Table structure for table `document_categories`
--

CREATE TABLE `document_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `featured` int(11) NOT NULL DEFAULT 0,
  `specials` int(11) DEFAULT NULL,
  `services` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `document_categories`
--

INSERT INTO `document_categories` (`id`, `title_sw`, `title_en`, `slug`, `active`, `created_at`, `updated_at`, `featured`, `specials`, `services`) VALUES
(1, 'Strategic Plan', 'Strategic Plan', 'strategic-plan', 1, '2021-08-02 04:14:11', '2021-08-02 04:14:11', 0, NULL, NULL),
(2, 'Presidential Circular', 'Presidential Circular', 'presidential-circular', 1, '2021-08-02 04:14:38', '2021-08-02 04:14:38', 0, NULL, NULL),
(3, 'Annual Reports', 'Annual Reports', 'annual-reports', 1, '2021-08-02 04:15:02', '2021-08-02 04:15:02', 0, NULL, NULL),
(4, 'State of Economy', 'State of Economy', 'state-of-economy', 1, '2021-08-02 04:15:33', '2021-08-02 04:15:33', 0, NULL, NULL),
(5, 'Guidelines', 'Guidelines', 'guidelines', 1, '2021-08-02 04:15:51', '2021-08-02 04:15:51', 0, NULL, NULL),
(6, 'PPD Framework', 'PPD Framework', 'ppd-framework', 1, '2021-08-02 04:16:15', '2021-08-02 04:16:15', 0, NULL, NULL),
(7, 'Viwanja kupanda bei', 'Land prices shooting up', 'land-prices-shooting-up', 1, '2021-09-14 09:36:38', '2021-09-14 09:36:38', 0, NULL, NULL),
(8, 'Mission and Vision', 'Real Possibilities on Enhancement of the Achievable Estimates', 'real-possibilities-on-enhancement-of-the-achievable-estimates', 1, '2021-09-14 09:38:57', '2021-09-14 09:38:57', 0, NULL, NULL),
(9, 'Vitabu vya Bajeti 2020', 'Budget Books 2020', 'budget-books-2020', 1, '2021-10-13 06:40:40', '2021-10-13 06:40:40', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_date` date DEFAULT NULL,
  `event_time` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_date`, `event_time`, `location`, `title_sw`, `title_en`, `summary_sw`, `summary_en`, `content_sw`, `content_en`, `active`, `user_id`, `slug`, `photo_url`, `created_at`, `updated_at`) VALUES
(1, '2021-08-13', '11:00AM - 2:30PM', 'Nkrumah Hall', 'Changes in Second Stakeholders General Meeting', 'Changes in Second Stakeholders General Meeting', '', NULL, '<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting</p>', '<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting</p>', 1, 1, 'changes-in-second-stakeholders-general-meeting', '29607a269177ccd5b27f90d3182c841e.jpeg', '2021-08-02 03:28:10', '2021-08-02 03:28:10'),
(2, '2021-08-19', '11:00AM - 2:30PM', 'Nkrumah Hall', 'Changes in Second Stakeholders General Meeting', 'Changes in Second Stakeholders General Meeting', '', NULL, '<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting</p>', '<p>Changes in Second Stakeholders General Meeting Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting</p>', 1, 1, 'changes-in-second-stakeholders-general-meeting-2', 'e7e68c54216952937fc3aa8f8e4c7fe8.jpeg', '2021-08-02 03:30:48', '2021-08-02 03:30:48'),
(3, '2021-08-20', '11:00AM - 2:30PM', 'Nkrumah Hall', 'Mkutano wa Wawekezaji', 'Investors Meeting', '', NULL, '<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting</p>', '<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;</p>', 1, 1, 'changes-in-second-stakeholders-general-meeting-3', '3fe0f4a0ae63a24b3c0a002132e050c6.jpeg', '2021-08-02 03:32:16', '2021-10-07 07:29:15'),
(4, '2021-08-12', '11:00AM - 2:30PM', 'Nkrumah Hall', 'Changes in Second Stakeholders General Meeting', 'Changes in Second Stakeholders General Meeting', '', NULL, '<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting</p>', '<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting</p>', 1, 1, 'changes-in-second-stakeholders-general-meeting-4', 'dd39cc22c2b751e9d33f74e73ac64b00.jpeg', '2021-08-02 03:34:28', '2021-08-02 03:34:28'),
(5, '2022-02-07', '07:00AM - 12:30PM', 'KarimJee, Dar es Salaam', 'Demo Menu', 'Demo News', '', NULL, '<p>bjnknj</p>', '<p>jllnm</p>', 1, 1, 'demo-news', '99d2dc4170483a7de434a018770802af.jpeg', '2022-02-07 09:19:44', '2022-02-07 09:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `specials` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question_sw`, `question_en`, `answer_sw`, `answer_en`, `active`, `slug`, `created_at`, `updated_at`, `specials`) VALUES
(1, 'Ofisi zetu hupatikana wapi?', 'Where are our offices located?', '<p>Mtaa wa Jamhuri</p>', '<p>Jamhuri Street</p>', 1, 'how-to-do-something', '2021-08-03 07:31:50', '2021-08-10 03:41:31', NULL),
(2, 'How do I become a Business man', 'How do I become a Business man', '<p>How do I become a Business man</p>', '<p>How do I become a Business man</p>', 1, 'how-do-i-become-a-business-man-2', '2021-08-03 07:39:40', '2021-08-03 07:54:50', NULL),
(3, 'How to Start a farm business How to Start a farm business How to Start a farm business How to Start a farm business', 'How to Start a farm business How to Start a farm business How to Start a farm business How to Start a farm business How to Start a farm business How to Start a farm business', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas semper nisi in dolor vehicula, quis pellentesque magna efficitur. Etiam turpis risus, consectetur vitae bibendum vel, viverra ac mi. Curabitur et leo in libero ultrices dapibus.</p>\r\n\r\n<ul>\r\n	<li>Mauris sodales consequat tortor, sit amet mollis ante pulvinar porttitor. Donec venenatis, erat id dignissim elementum, metus odio semper turpis, ut sagittis urna enim id dolor. Integer vel tellus consequat, ornare nisl sed, convallis ante.</li>\r\n	<li>Praesent pulvinar, enim sed interdum tristique, libero tellus malesuada est, et ornare tellus orci sit amet metus.</li>\r\n	<li>Donec quis eros vitae sem mattis eleifend. Proin odio ipsum, viverra quis nibh quis, sollicitudin molestie ante. Sed egestas nulla leo, at dapibus odio eleifend id. Integer turpis elit, luctus in finibus ac, viverra ut lacus.</li>\r\n	<li>Maecenas molestie at mauris eu vehicula. Pellentesque porttitor sed orci sit amet condimentum.</li>\r\n	<li>Integer fermentum, diam non condimentum mollis, mauris quam tempor neque, non posuere mauris lacus sodales sem.</li>\r\n</ul>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas semper nisi in dolor vehicula, quis pellentesque magna efficitur. Etiam turpis risus, consectetur vitae bibendum vel, viverra ac mi. Curabitur et leo in libero ultrices dapibus.</p>\r\n\r\n<ul>\r\n	<li>Mauris sodales consequat tortor, sit amet mollis ante pulvinar porttitor. Donec venenatis, erat id dignissim elementum, metus odio semper turpis, ut sagittis urna enim id dolor. Integer vel tellus consequat, ornare nisl sed, convallis ante.</li>\r\n	<li>Praesent pulvinar, enim sed interdum tristique, libero tellus malesuada est, et ornare tellus orci sit amet metus.</li>\r\n	<li>Donec quis eros vitae sem mattis eleifend. Proin odio ipsum, viverra quis nibh quis, sollicitudin molestie ante. Sed egestas nulla leo, at dapibus odio eleifend id. Integer turpis elit, luctus in finibus ac, viverra ut lacus.</li>\r\n	<li>Maecenas molestie at mauris eu vehicula. Pellentesque porttitor sed orci sit amet condimentum.</li>\r\n	<li>Integer fermentum, diam non condimentum mollis, mauris quam tempor neque, non posuere mauris lacus sodales sem.</li>\r\n</ul>', 1, 'how-to-start-a-farm-business', '2021-08-03 08:06:04', '2021-08-03 08:06:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title_sw`, `title_en`, `content_sw`, `content_en`, `type`, `slug`, `featured`, `status`, `created_at`, `updated_at`) VALUES
(1, 'slideshow', 'slideshow', 'slideshow', 'slideshow', 'photos', 'slideshow', 1, 1, '2021-07-30 09:06:50', '2021-08-09 12:10:54'),
(2, 'Picha za Ulimwengu', 'Photos of the Universe', 'The world is very promising The world is very promising  The world is very promising  The world is very promising The world is very promising  The world is very promising  The world is very promising The world is very promising  The world is very promising  The world is very promising  The world is very promising  The world is very promising', 'The world is very promising  The world is very promising  The world is very promising  The world is very promising  The world is very promising  The world is very promising  The world is very promising  The world is very promising  The world is very promising  The world is very promising  The world is very promising  The world is very promising', 'photos', 'photos-of-the-universe', 0, 1, '2021-08-04 01:39:59', '2021-08-09 12:10:54'),
(3, 'Picha Nzuri', 'Good Picha', 'picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana', 'picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana', 'photos', 'good-picha', 0, 1, '2021-08-04 03:00:22', '2021-08-09 12:10:54'),
(4, 'Video kali za Matukio', 'Hot Trending Videos', 'All the good clips are available here on the website All the good clips are available here on the website All the good clips are available here on the website All the good clips are available here on the website All the good clips are available here on the website All the good clips are available here on the website All the good clips are available here on the website', 'All the good clips are available here on the website All the good clips are available here on the website All the good clips are available here on the website All the good clips are available here on the website All the good clips are available here on the website All the good clips are available here on the website All the good clips are available here on the website', 'videos', 'hot-trending-videos', 1, 1, '2021-08-04 03:26:00', '2021-10-14 05:51:32'),
(5, 'New Video Gallery', 'New Video Gallery', 'New Video Gallery', 'New Video Gallery', 'videos', 'new-video-gallery', 0, 1, '2021-10-08 06:49:57', '2021-10-14 05:51:32'),
(6, 'Demo Service', 'Demo Service', 'Demo Service', 'Demo Service', 'photos', 'demo-service', 0, 1, '2021-11-24 10:05:44', '2021-11-24 10:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `google_maps`
--

CREATE TABLE `google_maps` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `google_maps`
--

INSERT INTO `google_maps` (`id`, `url`, `office_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15845.972643510664!2d39.2769355!3d-6.8313183!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x70a0735adc1ff7ae!2sKeko%20Pharmaceutical%20Industries%20(1997)%20Ltd.!5e0!3m2!1sen!2stz!4v1641743069240!5m2!1sen!2stz\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 1, 1, '2022-02-16 08:49:53', '2022-02-16 09:35:19'),
(5, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15846.224109305367!2d39.27362156977538!3d-6.8237241999999965!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x185c4b61df89fadb%3A0xa3d3a42e611127bc!2sLATRA%20(Land%20Transport%20Regulatory%20Authority%20)!5e0!3m2!1sen!2stz!4v1645018599771!5m2!1sen!2stz\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 3, 1, '2022-02-16 10:37:07', '2022-02-16 10:37:07'),
(6, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15846.224109305367!2d39.27362156977538!3d-6.8237241999999965!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x185c4b61df89fadb%3A0xa3d3a42e611127bc!2sLATRA%20(Land%20Transport%20Regulatory%20Authority%20)!5e0!3m2!1sen!2stz!4v1645018599771!5m2!1sen!2stz\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 4, 1, '2022-02-16 13:21:14', '2022-02-16 13:21:14');

-- --------------------------------------------------------

--
-- Table structure for table `how_do_i`
--

CREATE TABLE `how_do_i` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `how_do_i`
--

INSERT INTO `how_do_i` (`id`, `title_sw`, `title_en`, `content_sw`, `content_en`, `active`, `slug`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'How do I apply for a teaching position?', 'How do I apply for a teaching position?', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, 'how-do-i-apply-for-a-teaching-position', 1, '2021-12-01 03:17:10', '2021-12-01 03:17:10'),
(5, 'How Do I get a License?', 'How Do I get a License?', '<p>How Do I get a License explained ....</p>', '<p>How Do I get a License explained</p>', 1, 'how-do-i-get-a-license', 1, '2022-02-14 10:18:43', '2022-02-14 10:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `important_links`
--

CREATE TABLE `important_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `important_links`
--

INSERT INTO `important_links` (`id`, `title_sw`, `title_en`, `url`, `active`, `created_at`, `updated_at`, `parent`, `position`) VALUES
(1, 'IKULU Tanzania', 'IKULU Tanzania', 'http://ikulu.go.tz', 1, '2021-07-28 06:16:15', '2021-10-13 08:19:20', 0, 1),
(3, 'Ofisi ya Waziri Mkuu', 'Ofisi ya Waziri Mkuu', 'http://tpsf.go.tz', 1, '2021-07-28 06:17:24', '2021-10-13 08:19:20', 0, 3),
(4, 'Wizara ya Viwanda na Biashara', 'Wizara ya Viwanda na Biashara', 'http://trc.go.tz', 1, '2021-07-28 06:17:43', '2021-10-13 08:19:20', 0, 5),
(6, 'Ofisi ya Makamu wa Raisi', 'Ofisi ya Makamu wa Raisi', 'http://tnbp.go.tz', 1, '2021-07-28 06:18:36', '2021-10-13 08:19:20', 0, 2),
(7, 'Ofisi ya Katibu Mkuu Kiongozi', 'Chief Secretary\'s Office', 'https://www.chiefsecretary.go.tz/', 1, '2021-10-13 08:18:42', '2021-10-13 08:19:20', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_sw` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8_unicode_ci NOT NULL,
  `content_sw` text COLLATE utf8_unicode_ci NOT NULL,
  `mime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iconurl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `gallery_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `title_en`, `title_sw`, `content_en`, `content_sw`, `mime`, `path`, `url`, `filename`, `iconurl`, `slug`, `user_id`, `gallery_id`, `status`, `created_at`, `updated_at`) VALUES
(5, '', '', 'Remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.', 'images/jpeg', '/uploads/gallery/', '', 'd449b86a4a3d15c6578f0da2285ca4f9.jpeg', '', 'dff4503974a98bf379a65b34f00d8fb8-jpeg', 0, 1, 1, '2021-07-30 09:10:01', '2021-11-24 03:30:46'),
(6, '', '', 'leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap', 'images/jpeg', '/uploads/gallery/', '', '4b61f8811922bcdacd128277b8907823.jpeg', '', 'fa1c310e1527b7310444b2226893a2b9-jpeg', 0, 1, 1, '2021-07-30 09:10:56', '2021-11-24 03:29:34'),
(7, '', '', 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'images/jpeg', '/uploads/gallery/', '', '5efef6ed8990771012cf0c373f3771bb.jpeg', '', '612bcdabb113ed30b94b4b6ea8a67032-jpeg', 0, 1, 1, '2021-07-30 09:12:36', '2021-11-24 03:27:00'),
(8, '', '', '', '', 'images/jpg', 'uploads/gallery/', '', '74561aa69114ec4993291d31afcaf798.jpg', '', '74561aa69114ec4993291d31afcaf798-jpg', 0, 2, 1, '2021-08-04 01:43:23', '2021-08-04 01:43:23'),
(9, '', '', '', '', 'images/jpg', 'uploads/gallery/', '', '430e297c55a162fe18668ccb3414f615.jpg', '', '430e297c55a162fe18668ccb3414f615-jpg', 0, 2, 1, '2021-08-04 01:43:25', '2021-08-04 01:43:25'),
(10, '', '', 'pink caption', 'caption pink', 'images/jpg', 'uploads/gallery/', '', '6d8ae25f077b72ecdd21998368e8db87.jpg', '', '6d8ae25f077b72ecdd21998368e8db87-jpg', 0, 2, 1, '2021-08-04 01:43:27', '2021-08-04 02:42:18'),
(11, '', '', 'good picture', 'picha kali', 'images/jpeg', '/uploads/gallery/', '', 'ef32cc4b7ed92527b9bcabf575ac4e26.jpeg', '', 'ef32cc4b7ed92527b9bcabf575ac4e26-jpeg', 0, 2, 0, '2021-08-04 02:45:54', '2021-08-04 02:45:54'),
(12, '', '', 'good picture', 'picha kali', 'images/jpeg', '/uploads/gallery/', '', '7c20645e9271a710e03401433be4de86.jpeg', '', '7c20645e9271a710e03401433be4de86-jpeg', 0, 2, 0, '2021-08-04 02:45:56', '2021-08-04 02:45:56'),
(13, '', '', '', '', 'images/jpg', 'uploads/gallery/', '', '843a37ceee9ac402b8a32bfaf57d325f.jpg', '', '843a37ceee9ac402b8a32bfaf57d325f-jpg', 0, 3, 1, '2021-08-04 03:02:19', '2021-08-04 03:02:19'),
(14, '', '', '', '', 'images/jpg', 'uploads/gallery/', '', '843a37ceee9ac402b8a32bfaf57d325f.jpg', '', '843a37ceee9ac402b8a32bfaf57d325f-jpg-2', 0, 3, 1, '2021-08-04 03:02:19', '2021-08-04 03:02:19'),
(15, '', '', '', '', 'images/jpg', 'uploads/gallery/', '', 'b3d4f9b510ba59324e59423fca8892d7.jpg', '', 'b3d4f9b510ba59324e59423fca8892d7-jpg', 0, 3, 1, '2021-08-04 03:02:23', '2021-08-04 03:02:23'),
(16, '', '', '', '', 'images/jpg', 'uploads/gallery/', '', 'ecf279ee42f6f6413ef9f30e9c8b2a96.jpg', '', 'ecf279ee42f6f6413ef9f30e9c8b2a96-jpg', 0, 3, 1, '2021-08-04 03:02:24', '2021-08-04 03:02:24'),
(17, '', '', '', '', 'images/jpg', 'uploads/gallery/', '', 'f83d2398293f0d726607d3114fd0e4b1.jpg', '', 'f83d2398293f0d726607d3114fd0e4b1-jpg', 0, 3, 1, '2021-08-04 03:02:28', '2021-08-04 03:02:28'),
(18, '', '', '', '', 'images/jpg', 'uploads/gallery/', '', '7c534271269824a8ea69c610d9c8f32d.jpg', '', '7c534271269824a8ea69c610d9c8f32d-jpg', 0, 3, 1, '2021-08-04 03:02:29', '2021-08-04 03:02:29'),
(19, 'good video very very nice', 'video kali', '', '', '', '', 'https://www.youtube.com/watch?v=yoP5YVkFxXU&pp=sAQA', '', '', 'good-video-very-very-nice', 0, 4, 1, '2021-08-04 03:27:11', '2021-08-04 03:27:11'),
(20, 'Good Music', 'Music kalii', '', '', '', '', 'https://www.youtube.com/watch?v=1mkWQdfEO10&pp=sAQA', '', '', 'good-music', 0, 4, 1, '2021-08-04 03:27:44', '2021-08-04 03:27:44'),
(21, 'Real Possibilities on Enhancement of the Achievable Estimates', 'mambo hua kweli', '', '', '', '', 'https://www.youtube.com/watch?v=dqs2Fct0JNU&pp=sAQA', '', '', 'real-possibilities-on-enhancement-of-the-achievable-estimates', 0, 4, 1, '2021-08-04 03:28:21', '2021-08-04 03:28:21'),
(22, 'Management Team', 'mambo hua kweli', '', '', '', '', 'https://www.youtube.com/watch?v=RakQ5XTFEU4&pp=sAQA', '', '', 'management-team', 0, 4, 1, '2021-08-04 03:28:45', '2021-08-04 03:28:45'),
(23, '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'images/jpeg', '/uploads/gallery/', '', '36e67aa0f5fcc9695bc643de0acd4115.jpeg', '', 'a64147600e6914bec2ccd489464313cc-jpeg', 0, 1, 1, '2021-09-22 09:53:42', '2021-11-24 03:24:04');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'main_nav',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title_sw`, `title_en`, `status`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Top Menu', 'Top Menu', 1, 'top_menu', '2021-07-28 05:15:07', '2021-10-29 09:46:29'),
(3, 'Main Menu', 'Main Menu', 1, 'main_nav', '2021-07-28 06:00:35', '2021-08-10 03:15:06'),
(4, 'Footer Menu', 'Footer Menu', 1, 'footer_menu', '2021-08-10 03:45:27', '2021-08-10 03:45:27');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_external` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` tinyint(1) NOT NULL DEFAULT 1,
  `parent` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `has_sidebar` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `title_sw`, `title_en`, `status`, `menu_id`, `url`, `url_external`, `link`, `parent`, `position`, `has_sidebar`, `created_at`, `updated_at`) VALUES
(1, 'Barua Pepe', 'Staff Mail', 1, 1, '#', NULL, 1, 0, 5, 0, '2021-07-28 05:40:41', '2021-10-05 10:50:50'),
(2, 'Wasiliana Nasi', 'Contact Us', 1, 1, 'contacts', NULL, 1, 0, 4, 0, '2021-07-28 05:43:18', '2022-02-16 13:44:16'),
(3, 'Vacancies', 'Vacancies', 1, 1, '#', NULL, 1, 0, 1, 0, '2021-07-28 05:44:12', '2021-10-05 10:50:50'),
(4, 'MMM', 'FAQs', 1, 1, 'faqs', NULL, 1, 0, 2, 0, '2021-07-28 05:44:26', '2021-10-05 10:50:50'),
(5, 'Mrejesho', 'Feedback', 1, 1, 'complaints', NULL, 1, 0, 3, 0, '2021-07-28 05:44:47', '2022-02-16 13:44:26'),
(6, 'Kuhusu Sisi', 'About Us', 1, 3, '#', NULL, 1, 0, 1, 0, '2021-07-28 06:05:19', '2022-02-07 10:29:14'),
(7, 'TPSC Mandate', 'TPSC Mandate', 1, 3, '#', NULL, 1, 6, 1, 0, '2021-07-28 06:05:59', '2022-02-07 10:29:14'),
(8, 'Machapisho', 'Publications', 1, 3, 'publications', NULL, 1, 0, 3, 0, '2021-07-28 06:06:27', '2022-02-07 10:29:14'),
(10, 'Maktaba ya Picha', 'Gallery', 1, 3, '#', NULL, 1, 22, 2, 0, '2021-07-28 06:07:25', '2022-02-07 10:29:14'),
(12, 'Ramani', 'Sitemap', 1, 4, 'sitemap', NULL, 1, 0, 1, 0, '2021-08-10 03:46:19', '2022-02-07 06:59:30'),
(13, 'Dira na Dhamira', 'Mission and Vision', 1, 3, 'pages/mission-and-vision', NULL, 1, 7, 1, 0, '2021-08-10 03:47:42', '2022-02-07 10:29:14'),
(14, 'Vigezo na Masharti', 'Terms and Conditions', 1, 4, '#', NULL, 1, 0, 2, 0, '2021-08-10 04:01:43', '2022-02-07 06:59:30'),
(15, 'Hakimiliki', 'Copyright Statement', 1, 4, '#', NULL, 1, 0, 3, 0, '2021-08-10 04:01:59', '2022-02-07 06:59:30'),
(16, 'Kanusho', 'Disclaimer', 1, 4, '#', NULL, 1, 0, 4, 0, '2021-08-10 04:03:00', '2022-02-07 06:59:30'),
(17, 'Maktaba ya Picha', 'Photo Gallery', 1, 3, 'galleries/listing/photos', NULL, 1, 10, 1, 0, '2021-08-10 04:03:54', '2022-02-07 10:29:14'),
(18, 'Maktaba ya Video', 'Video Gallery', 1, 3, 'galleries/listing/videos', NULL, 1, 10, 2, 0, '2021-08-10 04:04:34', '2022-02-07 10:29:14'),
(19, 'Hotuba', 'Speeches', 1, 3, 'speeches', NULL, 1, 22, 5, 0, '2021-09-11 08:26:46', '2022-02-07 10:29:14'),
(21, 'Ofisi Zetu', 'Our Offices', 1, 3, 'offices', NULL, 1, 0, 2, 0, '2021-09-20 04:21:04', '2022-02-07 10:29:14'),
(22, 'Media Center', 'Media Center', 1, 3, '#', NULL, 1, 0, 4, 0, '2021-09-21 15:01:43', '2022-02-07 10:29:14'),
(23, 'Vyombo vya Habari', 'Press Releases', 1, 3, 'press-releases', NULL, 1, 22, 1, 0, '2021-09-21 15:02:13', '2022-02-07 10:29:14'),
(24, 'Habari', 'News', 1, 3, 'news', NULL, 1, 22, 3, 0, '2021-09-21 15:02:40', '2022-02-07 10:29:14'),
(25, 'Matukio', 'Events', 1, 3, 'events', NULL, 1, 22, 4, 0, '2021-09-21 15:02:57', '2022-02-07 10:29:14'),
(26, 'Matangazo', 'Announcements', 1, 3, 'announcements', NULL, 1, 22, 6, 0, '2021-09-21 15:03:28', '2022-02-07 10:29:14'),
(27, 'Bodi ya Wakurugenzi', '<script>alert(\'hello\');</script>', 1, 3, 'administration/board-members', NULL, 1, 6, 2, 0, '2021-09-21 15:04:36', '2022-02-07 10:29:28'),
(46, 'Mpango Mkakati', 'Strategic Plan', 1, 3, 'publications/strategic-plan', NULL, 1, 8, 1, 0, '2021-11-24 11:40:35', '2022-02-07 10:29:14'),
(47, 'Ripoti za Mwaka', 'Annual Reports', 1, 3, 'publications/annual-reports', NULL, 1, 8, 2, 0, '2021-11-24 11:40:55', '2022-02-07 10:29:14'),
(48, 'Miongozo', 'Guidelines', 1, 3, 'publications/guidelines', NULL, 1, 8, 3, 0, '2021-11-24 11:41:17', '2022-02-07 10:29:14'),
(49, 'Malengo ya DMI', 'DMI Objectives', 1, 3, 'pages/dmi-objectives', NULL, 1, 7, 2, 0, '2021-11-25 06:07:41', '2022-02-07 10:29:14'),
(50, 'Bidhaa Zetu', 'Our Products', 1, 3, 'product-categories', NULL, 1, 0, 5, 0, '2022-01-10 01:09:42', '2022-02-07 10:29:14'),
(51, 'Vifaa vya kitabibu', 'Tools and Equipments', 1, 3, 'product-categories/tools-and-equipments', NULL, 1, 50, 1, 0, '2022-01-10 01:10:50', '2022-02-07 10:29:14'),
(52, 'Dirisha la Abiria', 'Passengers Information', 1, 3, 'passengers', NULL, 1, 0, 6, 0, '2022-02-16 13:41:57', '2022-02-16 13:41:57'),
(53, 'Nifanyeje', 'How Do i', 1, 3, 'howdois', NULL, 1, 0, 7, 0, '2022-02-16 13:42:19', '2022-02-16 13:42:19'),
(54, 'Huduma Mtandao', 'Online Services', 1, 1, 'online-services', NULL, 1, 0, 8, 0, '2022-02-16 13:43:40', '2022-02-16 13:43:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(68, '2020_06_14_082300_permission', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title_sw`, `title_en`, `summary_sw`, `summary_en`, `content_sw`, `content_en`, `active`, `user_id`, `slug`, `photo_url`, `created_at`, `updated_at`) VALUES
(1, 'Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika', 'Changes in Second Stakeholders General Meeting', '', NULL, '<p>Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;</p>', '<p>Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;</p>', 1, 1, 'changes-in-second-stakeholders-general-meeting', '351abfe2be9cc7dd735da662d1117220.jpeg', '2021-08-02 02:58:21', '2021-08-02 03:06:14'),
(2, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduce', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduce', '', NULL, '<p>Changes in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. RackhamChanges in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n\r\n<p>Changes in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. RackhamChanges in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. RackhamChanges in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. RackhamChanges in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>', '<p>Changes in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. RackhamChanges in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n\r\n<p>Changes in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. RackhamChanges in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. RackhamChanges in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. RackhamChanges in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>', 1, 1, 'changes-in-second-stakeholders-general-meeting-1', '847b30bd7b758b16ce24149f31116b9c.jpeg', '2021-08-02 02:58:21', '2021-11-24 04:35:40'),
(3, 'Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika', 'Changes in Second Stakeholders General Meeting', '', NULL, '<p>Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;</p>', '<p>Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;</p>', 1, 1, 'changes-in-second-stakeholders-general-meeting-2', '2fcf67cb832e45a7ff29bd94107220e7.jpeg', '2021-08-02 02:58:21', '2021-08-02 03:01:04'),
(4, 'Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika', 'Changes in Second Stakeholders General Meeting', '', NULL, '<p>Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika  Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika  Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika  Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika  Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika  Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika  Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika </p>', '<p>Changes in Second Stakeholders General Meeting  Changes in Second Stakeholders General Meeting  Changes in Second Stakeholders General Meeting Changes in Second Stakeholders General Meeting  Changes in Second Stakeholders General Meeting Changes in Second Stakeholders General Meeting </p>', 1, 1, 'changes-in-second-stakeholders-general-meeting-3', 'dca7f90408aaed33eebd27bfd5ef2082.jpeg', '2021-08-02 02:58:21', '2021-08-09 12:02:17'),
(5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat cursus. Nam id justo non turpis gravida dapibus. Cras a facilisis odio, quis accumsan diam. Sed sem neque, pharetra sit amet iaculis et, ullamcorper et risus. Morbi blandit nibh risus, et dignissim dui iaculis sit amet. In convallis lectus vitae tellus malesuada sodales. Sed iaculis aliquam magna at dictum. Aenean pharetra ligula massa, vel fermentum elit elementum pharetra. Integer et viverra purus. Donec molestie ante molestie fringilla scelerisque.</p>\r\n\r\n<p>Donec auctor, enim eleifend fermentum commodo, nisl eros malesuada lorem, eu suscipit ex est vitae lacus. Nullam euismod velit at velit mattis, vel mattis augue fringilla. Nam scelerisque eu quam varius gravida. Sed in ultrices justo, id tristique magna. Maecenas aliquet accumsan volutpat. Quisque commodo nisi at tortor rutrum consectetur. Nunc euismod, turpis ut rhoncus egestas, augue erat eleifend justo, nec vulputate sapien nisi non risus. Nullam eleifend placerat lorem, non vulputate tortor bibendum sed. Duis quis pharetra urna. Ut condimentum, ligula ut auctor malesuada, mi nulla efficitur velit, et eleifend neque mauris nec odio. Mauris a nunc felis. Cras quis leo dictum, rutrum nibh non, venenatis odio. Nam porttitor eros sed ipsum cursus, vitae pellentesque leo feugiat. Morbi magna leo, vehicula sed nisl eget, faucibus sollicitudin erat.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat cursus. Nam id justo non turpis gravida dapibus. Cras a facilisis odio, quis accumsan diam. Sed sem neque, pharetra sit amet iaculis et, ullamcorper et risus. Morbi blandit nibh risus, et dignissim dui iaculis sit amet. In convallis lectus vitae tellus malesuada sodales. Sed iaculis aliquam magna at dictum. Aenean pharetra ligula massa, vel fermentum elit elementum pharetra. Integer et viverra purus. Donec molestie ante molestie fringilla scelerisque.</p>\r\n\r\n<p>Donec auctor, enim eleifend fermentum commodo, nisl eros malesuada lorem, eu suscipit ex est vitae lacus. Nullam euismod velit at velit mattis, vel mattis augue fringilla. Nam scelerisque eu quam varius gravida. Sed in ultrices justo, id tristique magna. Maecenas aliquet accumsan volutpat. Quisque commodo nisi at tortor rutrum consectetur. Nunc euismod, turpis ut rhoncus egestas, augue erat eleifend justo, nec vulputate sapien nisi non risus. Nullam eleifend placerat lorem, non vulputate tortor bibendum sed. Duis quis pharetra urna. Ut condimentum, ligula ut auctor malesuada, mi nulla efficitur velit, et eleifend neque mauris nec odio. Mauris a nunc felis. Cras quis leo dictum, rutrum nibh non, venenatis odio. Nam porttitor eros sed ipsum cursus, vitae pellentesque leo feugiat. Morbi magna leo, vehicula sed nisl eget, faucibus sollicitudin erat.</p>', 1, 1, 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-donec-mollis-consequat', '94c0ded4110752d637dc7cebf1c3ad3b.jpeg', '2021-08-09 13:30:30', '2022-02-07 07:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `online_services`
--

CREATE TABLE `online_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online_services`
--

INSERT INTO `online_services` (`id`, `title_sw`, `title_en`, `url`, `active`, `created_at`, `updated_at`, `parent`, `position`) VALUES
(1, 'TIC', 'TIC', 'http://tic.go.tz', 1, '2021-07-28 06:16:15', '2021-08-09 12:30:37', 0, 3),
(2, 'PMO Uwekezaji', 'PMO Uwekezaji', 'http://pmo.go.tz', 1, '2021-07-28 06:16:48', '2021-08-09 12:30:38', 0, 6),
(3, 'TPSF', 'TPSF', 'http://tpsf.go.tz', 1, '2021-07-28 06:17:24', '2021-08-09 12:30:37', 0, 2),
(4, 'TRA', 'TRA', 'http://trc.go.tz', 1, '2021-07-28 06:17:43', '2021-08-09 12:30:37', 0, 4),
(5, 'Viwanda na Biashara', 'Viwanda na Biashara', 'http://wiwanda.com', 1, '2021-07-28 06:18:04', '2021-08-09 12:30:38', 0, 5),
(6, 'TNBP', 'TNBP', 'http://tnbp.go.tz', 1, '2021-07-28 06:18:36', '2022-02-10 12:28:02', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_sidebar` smallint(1) NOT NULL DEFAULT 0,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title_sw`, `title_en`, `has_sidebar`, `content_sw`, `content_en`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dira na Dhamira', 'Mission and Vision', 1, '<p><strong>Dira</strong></p>\r\n\r\n<p>&ldquo;Spearheading Tanzania&rsquo;s Economic Development through consensus building and networking&rdquo;</p>\r\n\r\n<p><strong>Dhamira&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&ldquo;To promote healthy and robust economy where the guiding hand of government, enlightened legislation and transparent governance enhances the development of private initiative, encourages local and foreign investments and generally provides an enabling environment for economic growth&rdquo;.</p>', '<p><strong>Vision</strong></p>\r\n\r\n<p>&ldquo;Spearheading Tanzania&rsquo;s Economic Development through consensus building and networking&rdquo;</p>\r\n\r\n<p><strong>Mission&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&ldquo;To promote healthy and robust economy where the guiding hand of government, enlightened legislation and transparent governance enhances the development of private initiative, encourages local and foreign investments and generally provides an enabling environment for economic growth&rdquo;.</p>', 'mission-and-vision', 1, '2021-08-10 03:44:57', '2022-02-16 03:36:18'),
(2, 'Malengo ya DMI', 'DMI Objectives', 0, '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8000/uploads/gallery/d449b86a4a3d15c6578f0da2285ca4f9.jpeg\" style=\"height:1455px; width:2586px\" /></p>\r\n\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8000/uploads/gallery/d449b86a4a3d15c6578f0da2285ca4f9.jpeg\" style=\"height:1455px; width:2586px\" /></p>\r\n\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>', 'dmi-objectives', 1, '2021-11-25 06:06:17', '2022-01-09 12:38:29');

-- --------------------------------------------------------

--
-- Table structure for table `page_categories`
--

CREATE TABLE `page_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `modifiable` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`id`, `title_sw`, `title_en`, `content_sw`, `content_en`, `active`, `slug`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Demo Passenger Info', 'Demo Passenger Info', '<p>Demo Passenger Information</p>', '<p>Demo Passenger Info</p>', 1, 'demo-passenger-info', 1, '2022-02-14 10:31:07', '2022-02-15 16:09:41');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'cms.cms.dashboard.view-dashboard', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(2, 'cms.online_services.index', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(3, 'cms.online_services.create', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(4, 'cms.online_services.store', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(5, 'cms.online_services.show', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(6, 'cms.online_services.edit', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(7, 'cms.online_services.update', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(8, 'cms.online_services.destroy', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(9, 'cms.howdois.index', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(10, 'cms.howdois.create', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(11, 'cms.howdois.store', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(12, 'cms.howdois.show', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(13, 'cms.howdois.edit', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(14, 'cms.howdois.update', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(15, 'cms.howdois.destroy', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(16, 'cms.passengers.index', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(17, 'cms.passengers.create', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(18, 'cms.passengers.store', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(19, 'cms.passengers.show', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(20, 'cms.passengers.edit', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(21, 'cms.passengers.update', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(22, 'cms.passengers.destroy', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(23, 'cms.seo.index', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(24, 'cms.seo.create', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(25, 'cms.seo.store', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(26, 'cms.seo.show', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(27, 'cms.seo.edit', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(28, 'cms.seo.update', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(29, 'cms.seo.destroy', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(30, 'cms.faqs.index', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(31, 'cms.faqs.create', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(32, 'cms.faqs.store', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(33, 'cms.faqs.show', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(34, 'cms.faqs.edit', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(35, 'cms.faqs.update', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(36, 'cms.faqs.destroy', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(37, 'cms.news.index', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(38, 'cms.news.create', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(39, 'cms.news.store', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(40, 'cms.news.show', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(41, 'cms.news.edit', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(42, 'cms.news.update', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(43, 'cms.news.destroy', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(44, 'cms.events.index', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(45, 'cms.events.create', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(46, 'cms.events.store', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(47, 'cms.events.show', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(48, 'cms.events.edit', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(49, 'cms.events.update', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(50, 'cms.events.destroy', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(51, 'cms.regional_office.index', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(52, 'cms.regional_office.create', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(53, 'cms.regional_office.store', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(54, 'cms.regional_office.show', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(55, 'cms.regional_office.edit', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(56, 'cms.regional_office.update', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(57, 'cms.regional_office.destroy', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(58, 'cms.complaints.index', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(59, 'cms.complaints.create', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(60, 'cms.complaints.store', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(61, 'cms.complaints.show', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(62, 'cms.complaints.edit', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(63, 'cms.complaints.update', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(64, 'cms.complaints.destroy', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(65, 'cms.quick_links.index', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(66, 'cms.quick_links.create', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(67, 'cms.quick_links.store', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(68, 'cms.quick_links.show', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(69, 'cms.quick_links.edit', 'web', '2022-02-16 13:32:35', '2022-02-16 13:32:35'),
(70, 'cms.quick_links.update', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(71, 'cms.quick_links.destroy', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(72, 'cms.related_links.index', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(73, 'cms.related_links.create', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(74, 'cms.related_links.store', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(75, 'cms.related_links.show', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(76, 'cms.related_links.edit', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(77, 'cms.related_links.update', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(78, 'cms.related_links.destroy', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(79, 'cms.important_links.index', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(80, 'cms.important_links.create', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(81, 'cms.important_links.store', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(82, 'cms.important_links.show', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(83, 'cms.important_links.edit', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(84, 'cms.important_links.update', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(85, 'cms.important_links.destroy', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(86, 'cms.social_links.index', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(87, 'cms.social_links.create', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(88, 'cms.social_links.store', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(89, 'cms.social_links.show', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(90, 'cms.social_links.edit', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(91, 'cms.social_links.update', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(92, 'cms.social_links.destroy', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(93, 'cms.googlemaps.index', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(94, 'cms.googlemaps.create', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(95, 'cms.googlemaps.store', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(96, 'cms.googlemaps.show', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(97, 'cms.googlemaps.edit', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(98, 'cms.googlemaps.update', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(99, 'cms.googlemaps.destroy', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(100, 'cms.welcome.index', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(101, 'cms.welcome.create', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(102, 'cms.welcome.store', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(103, 'cms.welcome.show', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(104, 'cms.welcome.edit', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(105, 'cms.welcome.update', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(106, 'cms.welcome.destroy', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(107, 'cms.announcements.index', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(108, 'cms.announcements.create', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(109, 'cms.announcements.store', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(110, 'cms.announcements.show', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(111, 'cms.announcements.edit', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(112, 'cms.announcements.update', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(113, 'cms.announcements.destroy', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(114, 'cms.press_releases.index', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(115, 'cms.press_releases.create', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(116, 'cms.press_releases.store', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(117, 'cms.press_releases.show', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(118, 'cms.press_releases.edit', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(119, 'cms.press_releases.update', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(120, 'cms.press_releases.destroy', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(121, 'cms.speeches.index', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(122, 'cms.speeches.create', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(123, 'cms.speeches.store', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(124, 'cms.speeches.show', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(125, 'cms.speeches.edit', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(126, 'cms.speeches.update', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(127, 'cms.speeches.destroy', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(128, 'cms.administration.index', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(129, 'cms.administration.create', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(130, 'cms.administration.store', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(131, 'cms.administration.show', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(132, 'cms.administration.edit', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(133, 'cms.administration.update', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(134, 'cms.administration.destroy', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(135, 'cms.administration_categories.index', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(136, 'cms.administration_categories.create', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(137, 'cms.administration_categories.store', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(138, 'cms.administration_categories.show', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(139, 'cms.administration_categories.edit', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(140, 'cms.administration_categories.update', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(141, 'cms.administration_categories.destroy', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(142, 'cms.administration_categories_members.store', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(143, 'cms.administration_categories_members.update', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(144, 'cms.administration_categories_members.destroy', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(145, 'cms.document-categories.index', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(146, 'cms.document-categories.create', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(147, 'cms.document-categories.store', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(148, 'cms.document-categories.show', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(149, 'cms.document-categories.edit', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(150, 'cms.document-categories.update', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(151, 'cms.document-categories.destroy', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(152, 'cms.documents.index', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(153, 'cms.documents.create', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(154, 'cms.documents.store', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(155, 'cms.documents.show', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(156, 'cms.documents.edit', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(157, 'cms.documents.update', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(158, 'cms.documents.destroy', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(159, 'cms.translations.index', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(160, 'cms.translations.create', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(161, 'cms.translations.store', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(162, 'cms.translations.show', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(163, 'cms.translations.destroy', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(164, 'cms.translations.update', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(165, 'cms.menu.index', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(166, 'cms.menu.create', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(167, 'cms.menu.store', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(168, 'cms.menu.show', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(169, 'cms.menu.edit', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(170, 'cms.menu.update', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(171, 'cms.menu.destroy', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(172, 'cms.', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(173, 'cms.menu-items.create', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(174, 'cms.menu-items.store', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(175, 'cms.menu-items.show', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(176, 'cms.menu-items.update', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(177, 'cms.menu-items.destroy', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(178, 'cms.menu-items.index', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(179, 'cms.menu-items.ajax-update', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(180, 'cms.menu-items.ajax-link-update', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(181, 'cms.galleries.index', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(182, 'cms.galleries.create', 'web', '2022-02-16 13:32:36', '2022-02-16 13:32:36'),
(183, 'cms.galleries.store', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(184, 'cms.galleries.show', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(185, 'cms.galleries.edit', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(186, 'cms.galleries.update', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(187, 'cms.galleries.destroy', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(188, 'cms.media.create', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(189, 'cms.media.store', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(190, 'cms.media.show', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(191, 'cms.media.edit', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(192, 'cms.media.update', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(193, 'cms.media.destroy', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(194, 'cms.media.transfer-media', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(195, 'cms.media.transfer-gallery', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(196, 'cms.media.index', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(197, 'cms.media.bulk', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(198, 'cms.media.bulk-upload-images', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(199, 'cms.pages.index', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(200, 'cms.pages.create', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(201, 'cms.pages.store', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(202, 'cms.pages.show', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(203, 'cms.pages.edit', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(204, 'cms.pages.update', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(205, 'cms.pages.destroy', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(206, 'cms.roles.index', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(207, 'cms.roles.store', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(208, 'cms.roles.show', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(209, 'cms.roles.edit', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(210, 'cms.roles.update', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(211, 'cms.roles.destroy', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(212, 'cms.cms.text-editor.upload', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(213, 'cms.cms.text-editor.upload_file', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(214, 'cms.cms.text-editor.getimages', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(215, 'cms.cms.text-editor.getfiles', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(216, 'cms.cms.text-editor.delete_file', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(217, 'cms.users.create-user-form', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(218, 'cms.users.edit-user', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(219, 'cms.users.update-user', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(220, 'cms.users.destroy', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(221, 'cms.users.create-user', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(222, 'cms.users.user-roles-form', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(223, 'cms.users.update-user-roles', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(224, 'cms.users.user-permissions-form', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(225, 'cms.users.update-user-permissions', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(226, 'cms.users.user-change-password-form', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(227, 'cms.users.user-change-password', 'web', '2022-02-16 13:32:37', '2022-02-16 13:32:37'),
(228, 'cms.backgrounds.index', 'web', '2022-02-16 16:15:02', '2022-02-16 16:15:02'),
(229, 'cms.backgrounds.create', 'web', '2022-02-16 16:15:02', '2022-02-16 16:15:02'),
(230, 'cms.backgrounds.store', 'web', '2022-02-16 16:15:02', '2022-02-16 16:15:02'),
(231, 'cms.backgrounds.show', 'web', '2022-02-16 16:15:02', '2022-02-16 16:15:02'),
(232, 'cms.backgrounds.edit', 'web', '2022-02-16 16:15:02', '2022-02-16 16:15:02'),
(233, 'cms.backgrounds.update', 'web', '2022-02-16 16:15:02', '2022-02-16 16:15:02'),
(234, 'cms.backgrounds.destroy', 'web', '2022-02-16 16:15:02', '2022-02-16 16:15:02');

-- --------------------------------------------------------

--
-- Table structure for table `press_releases`
--

CREATE TABLE `press_releases` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_en` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_sw` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `press_releases`
--

INSERT INTO `press_releases` (`id`, `name_sw`, `name_en`, `content_sw`, `content_en`, `file_en`, `file_sw`, `active`, `slug`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Chuo kufungua', 'General Meeting', '<p>turukie bata</p>', '<p>jump into party</p>', '/uploads/press_releases/en1627388386-_Motion Design School Courses mod AF.docx', '/uploads/press_releases/sw1627388386-_Motion Design School Courses mod AF.docx', 1, 'general-meeting', 1, '2021-07-27 09:19:46', '2021-07-27 09:19:46'),
(3, 'Likizo imekaribia kona', 'Holiday is around the corner', '<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;</p>', '<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;</p>', '/uploads/press_releases/en1627887149-PROVISIONAL SITE MAP.xlsx', '/uploads/press_releases/sw1627887149-PROVISIONAL SITE MAP.xlsx', 1, 'holiday-is-around-the-corner', 1, '2021-08-02 03:52:30', '2021-08-02 03:52:30'),
(4, 'Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC ', 'Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC ', '<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;</p>', '<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;</p>', '/uploads/press_releases/en1627887240-INSTITUTE OF CONSTRUCTION TECHNOLOGY Website.docx', '/uploads/press_releases/sw1627887240-INSTITUTE OF CONSTRUCTION TECHNOLOGY Website.docx', 1, 'mapitio-ya-kikao-kazi-cha-utendaji-wa-TPSC', 1, '2021-08-02 03:54:00', '2021-08-02 03:54:00'),
(5, 'Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC ', 'Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC ', '<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC </p>', '<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC </p>', '/uploads/press_releases/en1627887854-INSTITUTE OF CONSTRUCTION TECHNOLOGY Website (1).docx', '/uploads/press_releases/sw1627887854-INSTITUTE OF CONSTRUCTION TECHNOLOGY Website.docx', 1, 'mapitio-ya-kikao-kazi-cha-utendaji-wa-TPSC-2', 1, '2021-08-02 04:04:15', '2021-08-09 12:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title_en`, `title_sw`, `summary_en`, `summary_sw`, `content_en`, `content_sw`, `photo_url`, `category_id`, `active`, `slug`, `created_at`, `updated_at`) VALUES
(4, 'Scissors', 'Mkasi', 'Scissors', 'Mkasi', NULL, NULL, '/uploads/products/0d1eba692467e4ee491e0974d871223d.jpeg', 2, 1, 'scissors', '2022-01-09 06:05:22', '2022-01-09 06:14:03'),
(5, 'X-ray Machine', 'Machine ya X-ray', 'An X-ray machine is any machine that involves X-rays. It may consist of an X-ray generator and an X-ray detector.', 'An X-ray machine is any machine that involves X-rays. It may consist of an X-ray generator and an X-ray detector.', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '/uploads/products/515cc8f8fc408e148faf3ae3442c1671.jpeg', 2, 1, 'x-ray-machine', '2022-01-09 06:05:22', '2022-01-09 14:21:47');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `title_en`, `title_sw`, `summary_en`, `summary_sw`, `photo_url`, `active`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Tools and Equipments', 'Vifaa vya kitabibu', 'Tools and Equipments', 'Vifaa vya kitabibu', '/uploads/product-categories/7f74f6a100ab66cb50dea85e562f3b66.jpeg', 1, 'tools-and-equipments', '2022-01-09 06:00:56', '2022-01-09 06:00:56'),
(3, 'Pain Killers', 'Dawa za Kupunguza Makali', 'Pain Killers Summary here', 'Dawa za Kupunguza Makali zinapatikana', '/uploads/product-categories/58119d1f984a049ea85942769c330500.jpeg', 1, 'pain-killers', '2022-01-09 08:40:22', '2022-01-09 08:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title_sw`, `title_en`, `summary_sw`, `summary_en`, `content_sw`, `content_en`, `photo_url`, `active`, `slug`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Majengo ya Wizara', 'Ministry Building', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>', '4559c6f8c4da7ec78768c52ab65ed292.jpeg', 1, 'ministry-building', 0, '2021-10-14 03:48:28', '2021-10-14 03:48:28'),
(3, 'GePG', 'GePG', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>', '0f709d14af202ed8701e4e3f304be049.jpeg', 1, 'gepg', 0, '2021-10-14 03:50:51', '2021-10-14 03:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `quicklink_categories`
--

CREATE TABLE `quicklink_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quick_links`
--

CREATE TABLE `quick_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` tinyint(1) NOT NULL DEFAULT 0,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_external` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 1,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quick_links`
--

INSERT INTO `quick_links` (`id`, `title_sw`, `title_en`, `link`, `url`, `url_external`, `active`, `created_at`, `updated_at`, `parent`, `position`, `category_id`) VALUES
(1, 'TPSC meeting', 'TPSC meeting', 1, '#', NULL, 1, '2021-07-28 06:21:55', '2021-11-08 08:15:44', 0, 3, 0),
(2, 'Regions', 'Regions', 1, '#', NULL, 1, '2021-07-28 06:22:11', '2021-11-08 08:15:44', 0, 4, 0),
(3, 'Districts', 'Districts', 0, '', NULL, 1, '2021-07-28 06:22:24', '2021-11-25 03:29:13', 0, 2, 0),
(4, 'Smart partnership', 'Smart partnership', 1, '#', NULL, 1, '2021-07-28 06:22:34', '2021-11-08 08:15:44', 0, 5, 0),
(5, 'Technical', 'Technical', 0, 'https://mail.ega.go.tz', 'https://mail.ega.go.tz', 1, '2021-07-28 06:22:43', '2021-11-08 08:15:44', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `regional_offices`
--

CREATE TABLE `regional_offices` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `physical_address_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `physical_address_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `toll_free` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `headquarter` tinyint(1) NOT NULL DEFAULT 0,
  `used_as` smallint(6) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regional_offices`
--

INSERT INTO `regional_offices` (`id`, `name_en`, `name_sw`, `physical_address_sw`, `physical_address_en`, `phone`, `toll_free`, `fax`, `email`, `content_sw`, `content_en`, `photo_url`, `latitude`, `longitude`, `slug`, `headquarter`, `used_as`, `created_at`, `updated_at`) VALUES
(1, 'Treasury Square Building', 'Treasury Square Building', 'S.L.P 2908,\r\nDododma, Tanzania', 'P.O.BOX 2908,\r\nDododma, Tanzania', '+255-282 560333', '255 222 15612', '+255-282 560333', 'ps@mof.go.tz', NULL, NULL, NULL, NULL, NULL, 'tanzania-national-business-council', 1, 1, '2021-07-28 11:05:10', '2021-10-17 13:41:06'),
(3, 'Dar es Salaam Offices', 'Ofisi za Dar es Salaam', 'Test', 'Test', '255754 555 222', '255 222 15612', '255 222 54854', 'admin@tic.go.tz', NULL, NULL, NULL, NULL, NULL, 'dar-es-salaam-offices', 0, 1, '2022-02-16 10:33:06', '2022-02-16 10:33:06'),
(4, 'Finance Department', 'Idara ya Fedha', 'Test', 'Test', '255762000111', '+255 26 2160000', '255 222 54854', 'admin@lands.go.tz', NULL, NULL, NULL, NULL, NULL, 'finance-department', 0, 1, '2022-02-16 13:13:40', '2022-02-16 13:13:40');

-- --------------------------------------------------------

--
-- Table structure for table `related_links`
--

CREATE TABLE `related_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `related_links`
--

INSERT INTO `related_links` (`id`, `title_sw`, `title_en`, `url`, `active`, `created_at`, `updated_at`, `parent`, `position`) VALUES
(1, 'TIC', 'TIC', 'http://tic.go.tz', 1, '2021-07-28 06:16:15', '2021-08-09 12:30:37', 0, 3),
(2, 'PMO Uwekezaji', 'PMO Uwekezaji', 'http://pmo.go.tz', 1, '2021-07-28 06:16:48', '2021-08-09 12:30:38', 0, 6),
(3, 'TPSF', 'TPSF', 'http://tpsf.go.tz', 1, '2021-07-28 06:17:24', '2021-08-09 12:30:37', 0, 2),
(4, 'TRA', 'TRA', 'http://trc.go.tz', 1, '2021-07-28 06:17:43', '2021-08-09 12:30:37', 0, 4),
(5, 'Viwanda na Biashara', 'Viwanda na Biashara', 'http://wiwanda.com', 1, '2021-07-28 06:18:04', '2021-08-09 12:30:38', 0, 5),
(6, 'TNBP', 'TNBP', 'http://tnbp.go.tz', 1, '2021-07-28 06:18:36', '2021-08-09 12:30:37', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'Administrator', 'Administrator', 'web', '2021-06-29 06:56:30', '2021-06-29 06:56:30'),
(2, 'Default', 'Default User', 'Default Role', 'web', '2020-06-14 04:30:23', '2022-02-16 13:34:02');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1),
(222, 1),
(223, 1),
(224, 1),
(225, 1),
(226, 1),
(226, 2),
(227, 1),
(227, 2),
(228, 1),
(229, 1),
(230, 1),
(231, 1),
(232, 1),
(233, 1),
(234, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales_points`
--

CREATE TABLE `sales_points` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_points`
--

INSERT INTO `sales_points` (`id`, `title_sw`, `title_en`, `fullname`, `email`, `phone`, `active`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Kanda ya Dar es Salaam', 'Dar es Salaam Zone', 'John Doe', 'johndoee@mail.com', '255762000111', 1, 'dar-es-salaam-zone', '2022-01-02 10:06:51', '2022-01-02 10:06:51'),
(2, 'Kanda ya Ziwa', 'Lake Zone', 'Dr. Jane Doe', 'JANE@DOE.COM', '255 2223 43567', 1, 'lake-zone', '2022-01-09 08:21:08', '2022-01-09 08:21:08');

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `recaptcha_site_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recaptcha_secret_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `content_en`, `content_sw`, `keywords_en`, `keywords_sw`, `created_at`, `updated_at`, `recaptcha_site_key`, `recaptcha_secret_key`) VALUES
(1, 'Government Website', 'Tovuti ya Serikali', 'Government,website', 'Tovuti,serikali', '2021-09-20 03:56:59', '2021-09-20 03:56:59', '6LdK9nIcAAAAAKCjCMNVoNtob9Shvmx7Xkj1qxHY', '6LdK9nIcAAAAAD_MZovQUsH8YNeMtcrwXBX3YWWG');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specials` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title_sw`, `title_en`, `summary_sw`, `summary_en`, `content_sw`, `content_en`, `photo_url`, `active`, `slug`, `created_at`, `updated_at`, `user_id`, `icon`, `color`, `specials`) VALUES
(1, 'Real Possibilities on Enhancement of the Achievable Estimates', 'Real Possibilities on Enhancement of the Achievable Estimates', NULL, NULL, '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '31f3afbe0391e899b5e29b56793a2aec.jpeg', 1, 'real-possibilities-on-enhancement-of-the-achievable-estimates', '2021-08-02 04:59:37', '2021-08-02 04:59:37', 0, NULL, NULL, NULL),
(2, 'Real Possibilities on Enhancement of the Achievable Estimates', 'Real Possibilities on Enhancement of the Achievable Estimates', NULL, NULL, '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '6a8ea596f0f6bd638f331463b185d621.jpeg', 1, 'real-possibilities-on-enhancement-of-the-achievable-estimates-2', '2021-08-02 05:00:05', '2021-08-02 05:01:20', 0, NULL, NULL, NULL),
(3, 'Real Possibilities on Enhancement of the Achievable Estimates', 'Real Possibilities on Enhancement of the Achievable Estimates', NULL, NULL, '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '85e656ecaab168f4b9f7833b934b33aa.jpeg', 1, 'real-possibilities-on-enhancement-of-the-achievable-estimates-3', '2021-08-02 05:03:54', '2021-08-02 05:03:54', 0, NULL, NULL, NULL),
(4, 'Real Possibilities on Enhancement of the Achievable Estimates', 'Real Possibilities on Enhancement of the Achievable Estimates', NULL, NULL, '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '393749445b2fa32a0f8ee8efe58c1443.jpeg', 1, 'real-possibilities-on-enhancement-of-the-achievable-estimates-4', '2021-08-02 05:05:24', '2021-08-02 05:05:24', 0, NULL, NULL, NULL),
(5, 'Demo', 'Demo', NULL, NULL, '<p>Demo</p>', '<p>Demo</p>', '2e30b7ff0e3ae1bd64eb7e402b564ab4.jpeg', 1, 'demo', '2021-09-11 09:24:32', '2021-09-11 09:26:28', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 1,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`title_en`, `url`, `created_at`, `updated_at`, `parent`, `position`, `active`, `id`) VALUES
('facebook', 'http://facebook.com', '2021-07-28 05:47:02', '2021-07-28 05:47:02', 0, 0, 1, 1),
('instagram', 'http://instagram.com', '2021-07-28 05:47:44', '2021-07-28 05:47:44', 0, 0, 1, 2),
('youtube', 'https://youtube.com', '2021-07-28 05:49:31', '2021-07-28 05:50:19', 0, 0, 1, 3),
('twitter', 'http://twitter.com', '2021-07-28 05:50:00', '2021-07-28 05:50:00', 0, 0, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `special_pages`
--

CREATE TABLE `special_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `speeches`
--

CREATE TABLE `speeches` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_en` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_sw` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `speeches`
--

INSERT INTO `speeches` (`id`, `name_sw`, `name_en`, `content_sw`, `content_en`, `file_en`, `file_sw`, `active`, `slug`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Demo', 'Demo', '<p>Demo</p>', '<p>Demo</p>', '/uploads/speeches/en1631361370-DCEA_CHALLENGES.pdf', '/uploads/speeches/sw1631361370-DCEA_CHALLENGES.pdf', 1, 'demo', 1, '2021-09-11 08:56:10', '2021-09-11 08:56:10');

-- --------------------------------------------------------

--
-- Table structure for table `timelines`
--

CREATE TABLE `timelines` (
  `id` int(10) UNSIGNED NOT NULL,
  `actor` int(11) NOT NULL,
  `object` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verb` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timelines`
--

INSERT INTO `timelines` (`id`, `actor`, `object`, `verb`, `ip`, `url`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 'PressRelease', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/press_releases', '{\"name_sw\":\"madude kibao\",\"name_en\":\"alot of things\",\"content_sw\":\"<p>mambo<\\/p>\",\"content_en\":\"<p>hello<\\/p>\",\"active\":\"1\",\"slug\":\"alot-of-things\"}', '2021-07-27 06:25:42', '2021-07-27 06:25:42'),
(2, 1, 'PressRelease', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/press_releases/1', '{\"id\":1,\"name_sw\":\"madude kibao--\",\"name_en\":\"alot of things--\",\"content_sw\":\"<p>mambo<\\/p>\",\"content_en\":\"<p>hello<\\/p>\",\"active\":\"1\",\"slug\":\"alot-of-things\",\"created_at\":\"2021-07-27T09:25:42.000000Z\",\"updated_at\":\"2021-07-27T09:25:42.000000Z\"}', '2021-07-27 06:27:33', '2021-07-27 06:27:33'),
(3, 1, 'PressRelease', 'destroy', '127.0.0.1', 'http://127.0.0.1:8000/cms/press_releases/1', '{\"id\":1,\"name_sw\":\"madude kibao--\",\"name_en\":\"alot of things--\",\"content_sw\":\"<p>mambo<\\/p>\",\"content_en\":\"<p>hello<\\/p>\",\"active\":1,\"slug\":\"alot-of-things\",\"created_at\":\"2021-07-27T09:25:42.000000Z\",\"updated_at\":\"2021-07-27T09:27:33.000000Z\"}', '2021-07-27 06:27:45', '2021-07-27 06:27:45'),
(4, 1, 'MeetingsCalendar', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/meetings_calendar', '{\"name_sw\":\"COVID-19\",\"name_en\":\"COVID-19\",\"due_date\":\"2021-07-14\",\"time\":\"7:00\",\"location\":\"Nkrumah Hall\",\"content_sw\":\"<p>saffiiii<\\/p>\",\"content_en\":\"<p>gooodi<\\/p>\",\"active\":\"1\",\"slug\":\"covid-19\"}', '2021-07-27 07:54:41', '2021-07-27 07:54:41'),
(5, 1, 'MeetingsCalendar', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/meetings_calendar/1', '{\"id\":1,\"due_date\":\"2021-07-24\",\"time\":\"7:00\",\"location\":\"Nkrumah Hall\",\"name_sw\":\"COVID-19-\",\"name_en\":\"COVID-19-\",\"content_sw\":\"<p>saffiiii<\\/p>\",\"content_en\":\"<p>gooodi<\\/p>\",\"active\":\"1\",\"slug\":\"covid-19\",\"created_at\":\"2021-07-27T10:54:41.000000Z\",\"updated_at\":\"2021-07-27T10:54:41.000000Z\"}', '2021-07-27 07:55:30', '2021-07-27 07:55:30'),
(6, 1, 'PressRelease', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/press_releases', '{\"name_sw\":\"file kubwa\",\"name_en\":\"small file\",\"content_sw\":\"<p>good things<\\/p>\",\"content_en\":\"<p>are better<\\/p>\",\"active\":\"1\",\"file_sw\":\"\\/uploads\\/press_releases\\/sw1627388170-_Motion Design School Courses mod AF.docx\",\"file_en\":\"\\/uploads\\/press_releases\\/en1627388170-_Motion Design School Courses mod AF.docx\",\"user_id\":1,\"slug\":\"small-file\"}', '2021-07-27 09:16:10', '2021-07-27 09:16:10'),
(7, 1, 'PressRelease', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/press_releases', '{\"name_sw\":\"Chuo kufungua\",\"name_en\":\"General Meeting\",\"content_sw\":\"<p>turukie bata<\\/p>\",\"content_en\":\"<p>jump into party<\\/p>\",\"active\":\"1\",\"file_sw\":\"\\/uploads\\/press_releases\\/sw1627388386-_Motion Design School Courses mod AF.docx\",\"file_en\":\"\\/uploads\\/press_releases\\/en1627388386-_Motion Design School Courses mod AF.docx\",\"user_id\":1,\"slug\":\"general-meeting\"}', '2021-07-27 09:19:46', '2021-07-27 09:19:46'),
(8, 1, 'MenuItem', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/menu-items', '{\"menu_id\":\"1\",\"title_sw\":\"Barua Pepe\",\"title_en\":\"Staff Mail\",\"link\":\"1\",\"url_external\":null,\"url\":\"#\",\"position\":1}', '2021-07-28 05:40:41', '2021-07-28 05:40:41'),
(9, 1, 'MenuItem', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/menu-items', '{\"menu_id\":\"1\",\"title_sw\":\"Tenders\",\"title_en\":\"Tenders\",\"link\":\"1\",\"url_external\":null,\"url\":\"#\",\"position\":2}', '2021-07-28 05:43:18', '2021-07-28 05:43:18'),
(10, 1, 'MenuItem', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/menu-items', '{\"menu_id\":\"1\",\"title_sw\":\"Vacancies\",\"title_en\":\"Vacancies\",\"link\":\"1\",\"url_external\":null,\"url\":\"#\",\"position\":3}', '2021-07-28 05:44:12', '2021-07-28 05:44:12'),
(11, 1, 'MenuItem', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/menu-items', '{\"menu_id\":\"1\",\"title_sw\":\"FAQs\",\"title_en\":\"FAQs\",\"link\":\"1\",\"url_external\":null,\"url\":\"#\",\"position\":4}', '2021-07-28 05:44:26', '2021-07-28 05:44:26'),
(12, 1, 'MenuItem', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/menu-items', '{\"menu_id\":\"1\",\"title_sw\":\"Mrejesho\",\"title_en\":\"Feedback\",\"link\":\"1\",\"url_external\":null,\"url\":\"#\",\"position\":5}', '2021-07-28 05:44:47', '2021-07-28 05:44:47'),
(13, 1, 'SocialLink', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/social_links', '{\"title_en\":\"facebook\",\"url\":\"http:\\/\\/facebook.com\"}', '2021-07-28 05:47:01', '2021-07-28 05:47:01'),
(14, 1, 'SocialLink', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/social_links', '{\"title_en\":\"instagram\",\"url\":\"http:\\/\\/instagram.com\"}', '2021-07-28 05:47:43', '2021-07-28 05:47:43'),
(15, 1, 'SocialLink', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/social_links', '{\"title_en\":\"youtube\",\"url\":\"https:\\/\\/youtu.be\\/A0u2MEWjUlU\"}', '2021-07-28 05:49:31', '2021-07-28 05:49:31'),
(16, 1, 'SocialLink', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/social_links', '{\"title_en\":\"twitter\",\"url\":\"http:\\/\\/twitter.com\"}', '2021-07-28 05:50:00', '2021-07-28 05:50:00'),
(17, 1, 'SocialLink', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/social_links/3', '{\"title_en\":\"youtube\",\"url\":\"https:\\/\\/youtube.com\",\"created_at\":\"2021-07-28T08:49:31.000000Z\",\"updated_at\":\"2021-07-28T08:49:31.000000Z\",\"parent\":0,\"position\":0,\"active\":1,\"id\":3}', '2021-07-28 05:50:19', '2021-07-28 05:50:19'),
(18, 1, 'MenuItem', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Kuhusu Sisi\",\"title_en\":\"About Us\",\"link\":\"1\",\"url_external\":null,\"url\":\"#\",\"position\":6}', '2021-07-28 06:05:19', '2021-07-28 06:05:19'),
(19, 1, 'MenuItem', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"TPSC Mandate\",\"title_en\":\"TPSC Mandate\",\"link\":\"1\",\"url_external\":null,\"url\":\"#\",\"position\":7}', '2021-07-28 06:05:59', '2021-07-28 06:05:59'),
(20, 1, 'MenuItem', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Machapisho\",\"title_en\":\"Publications\",\"link\":\"1\",\"url_external\":null,\"url\":\"#\",\"position\":6}', '2021-07-28 06:06:27', '2021-07-28 06:06:27'),
(21, 1, 'MenuItem', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Majadiliano\",\"title_en\":\"Dialogues\",\"link\":\"1\",\"url_external\":null,\"url\":\"#\",\"position\":7}', '2021-07-28 06:07:04', '2021-07-28 06:07:04'),
(22, 1, 'MenuItem', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Maktaba ya Picha\",\"title_en\":\"Gallery\",\"link\":\"1\",\"url_external\":null,\"url\":\"#\",\"position\":8}', '2021-07-28 06:07:25', '2021-07-28 06:07:25'),
(23, 1, 'MenuItem', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Wasiliana Nasi\",\"title_en\":\"Contact Us\",\"link\":\"1\",\"url_external\":null,\"url\":\"#\",\"position\":9}', '2021-07-28 06:07:42', '2021-07-28 06:07:42'),
(24, 1, 'RelatedLink', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/related_links', '{\"title_sw\":\"TIC\",\"title_en\":\"TIC\",\"url\":\"http:\\/\\/tic.go.tz\"}', '2021-07-28 06:16:15', '2021-07-28 06:16:15'),
(25, 1, 'RelatedLink', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/related_links', '{\"title_sw\":\"PMO Uwekezaji\",\"title_en\":\"PMO Uwekezaji\",\"url\":\"http:\\/\\/pmo.go.tz\"}', '2021-07-28 06:16:48', '2021-07-28 06:16:48'),
(26, 1, 'RelatedLink', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/related_links', '{\"title_sw\":\"TPSF\",\"title_en\":\"TPSF\",\"url\":\"http:\\/\\/tpsf.go.tz\"}', '2021-07-28 06:17:24', '2021-07-28 06:17:24'),
(27, 1, 'RelatedLink', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/related_links', '{\"title_sw\":\"TRA\",\"title_en\":\"TRA\",\"url\":\"http:\\/\\/trc.go.tz\"}', '2021-07-28 06:17:43', '2021-07-28 06:17:43'),
(28, 1, 'RelatedLink', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/related_links', '{\"title_sw\":\"Viwanda na Biashara\",\"title_en\":\"Viwanda na Biashara\",\"url\":\"http:\\/\\/wiwanda.com\"}', '2021-07-28 06:18:04', '2021-07-28 06:18:04'),
(29, 1, 'RelatedLink', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/related_links', '{\"title_sw\":\"TNBP\",\"title_en\":\"TNBP\",\"url\":\"http:\\/\\/tnbp.go.tz\"}', '2021-07-28 06:18:36', '2021-07-28 06:18:36'),
(30, 1, 'QuickLink', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/quick_links', '{\"title_sw\":\"TPSC meeting\",\"title_en\":\"TPSC meeting\",\"url\":\"#\"}', '2021-07-28 06:21:55', '2021-07-28 06:21:55'),
(31, 1, 'QuickLink', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/quick_links', '{\"title_sw\":\"Regions\",\"title_en\":\"Regions\",\"url\":\"#\"}', '2021-07-28 06:22:11', '2021-07-28 06:22:11'),
(32, 1, 'QuickLink', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/quick_links', '{\"title_sw\":\"Districts\",\"title_en\":\"Districts\",\"url\":\"#\"}', '2021-07-28 06:22:24', '2021-07-28 06:22:24'),
(33, 1, 'QuickLink', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/quick_links', '{\"title_sw\":\"Smart partnership\",\"title_en\":\"Smart partnership\",\"url\":\"#\"}', '2021-07-28 06:22:34', '2021-07-28 06:22:34'),
(34, 1, 'QuickLink', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/quick_links', '{\"title_sw\":\"Technical\",\"title_en\":\"Technical\",\"url\":\"#\"}', '2021-07-28 06:22:43', '2021-07-28 06:22:43'),
(35, 1, 'ImportantLink', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/important_links/1', '{\"id\":1,\"title_sw\":\"IKULU Tanzania\",\"title_en\":\"IKULU Tanzania\",\"url\":\"http:\\/\\/ikulu.go.tz\",\"active\":1,\"created_at\":\"2021-07-28T09:16:15.000000Z\",\"updated_at\":\"2021-07-28T09:18:23.000000Z\",\"parent\":0,\"position\":1}', '2021-07-28 06:51:12', '2021-07-28 06:51:12'),
(36, 1, 'ImportantLink', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/important_links/1', '{\"id\":1,\"title_sw\":\"IKULU Tanzania\",\"title_en\":\"IKULU Tanzania\",\"url\":\"http:\\/\\/ikulu.go.tz\",\"active\":1,\"created_at\":\"2021-07-28T09:16:15.000000Z\",\"updated_at\":\"2021-07-28T09:51:13.000000Z\",\"parent\":0,\"position\":1}', '2021-07-28 06:51:15', '2021-07-28 06:51:15'),
(37, 1, 'ImportantLink', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/important_links/6', '{\"id\":6,\"title_sw\":\"Ofisi ya Makamu wa Raisi\",\"title_en\":\"Ofisi ya Makamu wa Raisi\",\"url\":\"http:\\/\\/tnbp.go.tz\",\"active\":1,\"created_at\":\"2021-07-28T09:18:36.000000Z\",\"updated_at\":\"2021-07-28T13:58:38.000000Z\",\"parent\":0,\"position\":1}', '2021-07-28 11:00:24', '2021-07-28 11:00:24'),
(38, 1, 'ImportantLink', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/important_links/3', '{\"id\":3,\"title_sw\":\"Ofisi ya Waziri Mkuu\",\"title_en\":\"Ofisi ya Waziri Mkuu\",\"url\":\"http:\\/\\/tpsf.go.tz\",\"active\":1,\"created_at\":\"2021-07-28T09:17:24.000000Z\",\"updated_at\":\"2021-07-28T13:58:38.000000Z\",\"parent\":0,\"position\":3}', '2021-07-28 11:00:47', '2021-07-28 11:00:47'),
(39, 1, 'ImportantLink', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/important_links/4', '{\"id\":4,\"title_sw\":\"Wizara ya Viwanda na Biashara\",\"title_en\":\"Wizara ya Viwanda na Biashara\",\"url\":\"http:\\/\\/trc.go.tz\",\"active\":1,\"created_at\":\"2021-07-28T09:17:43.000000Z\",\"updated_at\":\"2021-07-28T14:00:58.000000Z\",\"parent\":0,\"position\":4}', '2021-07-28 11:01:15', '2021-07-28 11:01:15'),
(40, 1, 'ImportantLink', 'destroy', '127.0.0.1', 'http://127.0.0.1:8000/cms/important_links/5', '{\"id\":5,\"title_sw\":\"Viwanda na Biashara\",\"title_en\":\"Viwanda na Biashara\",\"url\":\"http:\\/\\/wiwanda.com\",\"active\":1,\"created_at\":\"2021-07-28T09:18:04.000000Z\",\"updated_at\":\"2021-07-28T14:00:58.000000Z\",\"parent\":0,\"position\":5}', '2021-07-28 11:01:24', '2021-07-28 11:01:24'),
(41, 1, 'ImportantLink', 'destroy', '127.0.0.1', 'http://127.0.0.1:8000/cms/important_links/2', '{\"id\":2,\"title_sw\":\"PMO Uwekezaji\",\"title_en\":\"PMO Uwekezaji\",\"url\":\"http:\\/\\/pmo.go.tz\",\"active\":1,\"created_at\":\"2021-07-28T09:16:48.000000Z\",\"updated_at\":\"2021-07-28T14:00:58.000000Z\",\"parent\":0,\"position\":6}', '2021-07-28 11:01:30', '2021-07-28 11:01:30'),
(42, 1, 'RegionalOffice', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/regional_office', '{\"name_en\":\"Tanzania National Business Council\",\"name_sw\":\"Tanzania National Business Council\",\"phone\":\"+255-282 560333\",\"toll_free\":null,\"fax\":\"+255-282 560333\",\"email\":\"principal@TPSC.go.tz\",\"used_as\":\"1\",\"headquarter\":\"1\",\"physical_address_sw\":\"S.L.P 1432, Dar es Salaam,Tanzania\",\"physical_address_en\":\"P.O. BOX 1432, Dar es Salaam,Tanzania\",\"slug\":\"tanzania-national-business-council\"}', '2021-07-28 11:05:10', '2021-07-28 11:05:10'),
(43, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":261,\"keyword\":\"lbl_doc_title\",\"en\":\"Description\",\"sw\":\"Maelezo\",\"created_at\":\"2021-06-16T12:21:35.000000Z\",\"updated_at\":\"2021-06-16T12:21:35.000000Z\"}', '2021-07-28 11:17:40', '2021-07-28 11:17:40'),
(44, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":1,\"keyword\":\"lbl_site_title\",\"en\":\"Tanzania National Business Council\",\"sw\":\"Tanzania National Business Council\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-07-06T08:33:26.000000Z\"}', '2021-07-28 11:17:40', '2021-07-28 11:17:40'),
(45, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":2,\"keyword\":\"lbl_site_subtitle\",\"en\":\"Prime Minister\'s Office\",\"sw\":\"Jamhuri ya Muungano wa Tanzania\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-10-19T10:57:12.000000Z\"}', '2021-07-28 11:17:41', '2021-07-28 11:17:41'),
(46, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":100,\"keyword\":\"lbl_site_title_short \",\"en\":\"TPSC\",\"sw\":\"TPSC\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-07-05T08:50:04.000000Z\"}', '2021-07-28 11:17:41', '2021-07-28 11:17:41'),
(47, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":261,\"keyword\":\"lbl_doc_title\",\"en\":\"Description\",\"sw\":\"Maelezo\",\"created_at\":\"2021-06-16T12:21:35.000000Z\",\"updated_at\":\"2021-06-16T12:21:35.000000Z\"}', '2021-07-28 11:20:24', '2021-07-28 11:20:24'),
(48, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":1,\"keyword\":\"lbl_site_title\",\"en\":\"Tanzania National Business Council\",\"sw\":\"Tanzania National Business Council\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-07-06T08:33:26.000000Z\"}', '2021-07-28 11:20:24', '2021-07-28 11:20:24'),
(49, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":2,\"keyword\":\"lbl_site_subtitle\",\"en\":\"United Republic of Tanzania\",\"sw\":\"Jamhuri ya Muungano wa Tanzania\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-07-28T14:17:41.000000Z\"}', '2021-07-28 11:20:24', '2021-07-28 11:20:24'),
(50, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":100,\"keyword\":\"lbl_site_title_short \",\"en\":\"TPSC\",\"sw\":\"TPSC\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-07-05T08:50:04.000000Z\"}', '2021-07-28 11:20:24', '2021-07-28 11:20:24'),
(51, 1, 'Photo', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/media', '{\"gallery_id\":1,\"content_sw\":\"Welcome to TPSC! Photo Caption with details on the photo descriptions...\",\"content_en\":\"Welcome to TPSC! Photo Caption with details on the photo descriptions...\",\"status\":\"1\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"dff4503974a98bf379a65b34f00d8fb8.jpeg\",\"mime\":\"images\\/jpeg\",\"slug\":\"dff4503974a98bf379a65b34f00d8fb8-jpeg\"}', '2021-07-30 09:10:01', '2021-07-30 09:10:01'),
(52, 1, 'Photo', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/media', '{\"gallery_id\":1,\"content_sw\":\"Welcome to TPSC! Photo Caption with details on the photo descriptions...\",\"content_en\":\"Welcome to TPSC! Photo Caption with details on the photo descriptions...\",\"status\":\"1\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"fa1c310e1527b7310444b2226893a2b9.jpeg\",\"mime\":\"images\\/jpeg\",\"slug\":\"fa1c310e1527b7310444b2226893a2b9-jpeg\"}', '2021-07-30 09:10:56', '2021-07-30 09:10:56'),
(53, 1, 'Photo', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/media', '{\"gallery_id\":1,\"content_sw\":\"Welcome to TPSC! Photo Caption with details on the photo descriptions...\",\"content_en\":\"Welcome to TPSC! Photo Caption with details on the photo descriptions...\",\"status\":\"1\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"612bcdabb113ed30b94b4b6ea8a67032.jpeg\",\"mime\":\"images\\/jpeg\",\"slug\":\"612bcdabb113ed30b94b4b6ea8a67032-jpeg\"}', '2021-07-30 09:12:36', '2021-07-30 09:12:36'),
(54, 1, 'Administration', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/administration', '{\"salutation_sw\":null,\"salutation_en\":null,\"fullname\":\"Firstname Lastname\",\"title_sw\":\"President of URT\",\"title_en\":\"President of URT\",\"email\":null,\"phone\":null,\"position\":\"1\",\"content_sw\":null,\"content_en\":null,\"photo_url\":\"fd9efb0db8bd232eb60d8c5941205733.png\",\"slug\":\"firstname-lastname\"}', '2021-07-30 09:38:34', '2021-07-30 09:38:34'),
(55, 1, 'Administration', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/administration', '{\"salutation_sw\":null,\"salutation_en\":null,\"fullname\":\"Firstname Lastname\",\"title_sw\":\"Chief Secretary\",\"title_en\":\"Chief Secretary\",\"email\":null,\"phone\":null,\"position\":\"2\",\"content_sw\":null,\"content_en\":null,\"photo_url\":\"7ec4f86d83948cc6ac3dd723984e72e4.png\",\"slug\":\"firstname-lastname-2\"}', '2021-07-30 09:39:57', '2021-07-30 09:39:57'),
(56, 1, 'Administration', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/administration', '{\"salutation_sw\":null,\"salutation_en\":null,\"fullname\":\"Firstname Lastname\",\"title_sw\":\"TPSC Chairman\",\"title_en\":\"TPSC Chairman\",\"email\":null,\"phone\":null,\"position\":\"3\",\"content_sw\":null,\"content_en\":null,\"photo_url\":\"af860032cec48389bbb0302756406e3a.png\",\"slug\":\"firstname-lastname-3\"}', '2021-07-30 09:41:38', '2021-07-30 09:41:38'),
(57, 1, 'Administration', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/administration', '{\"salutation_sw\":null,\"salutation_en\":null,\"fullname\":\"Firstname Lastname\",\"title_sw\":\"Executive Secretary\",\"title_en\":\"Executive Secretary\",\"email\":null,\"phone\":null,\"position\":\"4\",\"content_sw\":null,\"content_en\":null,\"photo_url\":\"5f8ce47789dfb96f00265d78352b8726.png\",\"slug\":\"firstname-lastname-4\"}', '2021-07-30 09:42:47', '2021-07-30 09:42:47'),
(58, 1, 'Administration', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/administration/1', '{\"id\":1,\"salutation_en\":null,\"salutation_sw\":null,\"fullname\":\"Firstname Lastname...\",\"position\":\"1\",\"title_sw\":\"President of URT\",\"title_en\":\"President of URT\",\"content_sw\":null,\"content_en\":null,\"photo_url\":\"fd9efb0db8bd232eb60d8c5941205733.png\",\"email\":null,\"phone\":null,\"created_at\":\"2021-07-30T12:38:34.000000Z\",\"updated_at\":\"2021-07-30T12:38:34.000000Z\",\"slug\":\"firstname-lastname\"}', '2021-07-30 09:52:50', '2021-07-30 09:52:50'),
(59, 1, 'Administration', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/administration', '{\"salutation_sw\":null,\"salutation_en\":null,\"fullname\":\"Pasiansi Master\",\"title_sw\":\"Pansi Master\",\"title_en\":\"Pansi Master\",\"email\":null,\"phone\":null,\"position\":\"1\",\"content_sw\":null,\"content_en\":null,\"photo_url\":\"76b38a956bc3ec50a60b489643c6a86c.jpeg\",\"slug\":\"pasiansi-master\"}', '2021-07-30 10:13:44', '2021-07-30 10:13:44'),
(60, 1, 'News', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/news', '{\"title_en\":\"Changes in Second Stakeholders General Meeting\",\"title_sw\":\"Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika\",\"content_en\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;<\\/p>\",\"content_sw\":\"<p>Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;<\\/p>\",\"active\":\"1\",\"photo_url\":\"74f3a45a56402d1ae5c4d06c16d66378.jpeg\",\"user_id\":1,\"slug\":\"changes-in-second-stakeholders-general-meeting\"}', '2021-08-02 02:58:21', '2021-08-02 02:58:21'),
(61, 1, 'News', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/news/3', '{\"id\":3,\"title_sw\":\"Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika\",\"title_en\":\"Changes in Second Stakeholders General Meeting\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p>Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;<\\/p>\",\"content_en\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;<\\/p>\",\"active\":\"1\",\"user_id\":1,\"slug\":\"changes-in-second-stakeholders-general-meeting\",\"photo_url\":\"2fcf67cb832e45a7ff29bd94107220e7.jpeg\",\"created_at\":\"2021-08-02T05:58:21.000000Z\",\"updated_at\":\"2021-08-02T05:58:21.000000Z\"}', '2021-08-02 03:01:04', '2021-08-02 03:01:04'),
(62, 1, 'News', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/news/4', '{\"id\":4,\"title_sw\":\"Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika\",\"title_en\":\"Changes in Second Stakeholders General Meeting\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p>Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;<\\/p>\",\"content_en\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;<\\/p>\",\"active\":\"1\",\"user_id\":1,\"slug\":\"changes-in-second-stakeholders-general-meeting\",\"photo_url\":\"dca7f90408aaed33eebd27bfd5ef2082.jpeg\",\"created_at\":\"2021-08-02T05:58:21.000000Z\",\"updated_at\":\"2021-08-02T05:58:21.000000Z\"}', '2021-08-02 03:02:14', '2021-08-02 03:02:14'),
(63, 1, 'News', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/news/2', '{\"id\":2,\"title_sw\":\"Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika\",\"title_en\":\"Changes in Second Stakeholders General Meeting\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p>Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;<\\/p>\",\"content_en\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;<\\/p>\",\"active\":\"1\",\"user_id\":1,\"slug\":\"changes-in-second-stakeholders-general-meeting\",\"photo_url\":\"847b30bd7b758b16ce24149f31116b9c.jpeg\",\"created_at\":\"2021-08-02T05:58:21.000000Z\",\"updated_at\":\"2021-08-02T05:58:21.000000Z\"}', '2021-08-02 03:04:23', '2021-08-02 03:04:23'),
(64, 1, 'News', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/news/1', '{\"id\":1,\"title_sw\":\"Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika\",\"title_en\":\"Changes in Second Stakeholders General Meeting\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p>Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;<\\/p>\",\"content_en\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;<\\/p>\",\"active\":\"1\",\"user_id\":1,\"slug\":\"changes-in-second-stakeholders-general-meeting\",\"photo_url\":\"351abfe2be9cc7dd735da662d1117220.jpeg\",\"created_at\":\"2021-08-02T05:58:21.000000Z\",\"updated_at\":\"2021-08-02T05:58:21.000000Z\"}', '2021-08-02 03:06:14', '2021-08-02 03:06:14'),
(65, 1, 'Events', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/events', '{\"event_date\":\"2021-08-13\",\"event_time\":\"11:00AM - 2:30PM\",\"location\":\"Nkrumah Hall\",\"title_en\":\"Changes in Second Stakeholders General Meeting\",\"title_sw\":\"Changes in Second Stakeholders General Meeting\",\"content_en\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting<\\/p>\",\"content_sw\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting<\\/p>\",\"active\":\"1\",\"photo_url\":\"29607a269177ccd5b27f90d3182c841e.jpeg\",\"user_id\":1,\"slug\":\"changes-in-second-stakeholders-general-meeting\"}', '2021-08-02 03:28:10', '2021-08-02 03:28:10'),
(66, 1, 'Events', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/events', '{\"event_date\":\"2021-08-19\",\"event_time\":\"11:00AM - 2:30PM\",\"location\":\"Nkrumah Hall\",\"title_en\":\"Changes in Second Stakeholders General Meeting\",\"title_sw\":\"Changes in Second Stakeholders General Meeting\",\"content_en\":\"<p>Changes in Second Stakeholders General Meeting Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting<\\/p>\",\"content_sw\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting<\\/p>\",\"active\":\"1\",\"photo_url\":\"e7e68c54216952937fc3aa8f8e4c7fe8.jpeg\",\"user_id\":1,\"slug\":\"changes-in-second-stakeholders-general-meeting-2\"}', '2021-08-02 03:30:48', '2021-08-02 03:30:48'),
(67, 1, 'Events', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/events', '{\"event_date\":\"2021-08-20\",\"event_time\":\"11:00AM - 2:30PM\",\"location\":\"Nkrumah Hall\",\"title_en\":\"Changes in Second Stakeholders General Meeting\",\"title_sw\":\"Changes in Second Stakeholders General Meeting\",\"content_en\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;<\\/p>\",\"content_sw\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting<\\/p>\",\"active\":\"1\",\"photo_url\":\"3fe0f4a0ae63a24b3c0a002132e050c6.jpeg\",\"user_id\":1,\"slug\":\"changes-in-second-stakeholders-general-meeting-3\"}', '2021-08-02 03:32:16', '2021-08-02 03:32:16'),
(68, 1, 'Events', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/events', '{\"event_date\":\"2021-08-12\",\"event_time\":\"11:00AM - 2:30PM\",\"location\":\"Nkrumah Hall\",\"title_en\":\"Changes in Second Stakeholders General Meeting\",\"title_sw\":\"Changes in Second Stakeholders General Meeting\",\"content_en\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting<\\/p>\",\"content_sw\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting<\\/p>\",\"active\":\"1\",\"photo_url\":\"dd39cc22c2b751e9d33f74e73ac64b00.jpeg\",\"user_id\":1,\"slug\":\"changes-in-second-stakeholders-general-meeting-4\"}', '2021-08-02 03:34:28', '2021-08-02 03:34:28'),
(69, 1, 'Announcement', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/announcements', '{\"name_sw\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\",\"name_en\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\",\"content_sw\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;<\\/p>\",\"content_en\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;<\\/p>\",\"active\":\"1\",\"slug\":\"mapitio-ya-kikao-kazi-cha-utendaji-wa-TPSC\"}', '2021-08-02 03:44:12', '2021-08-02 03:44:12'),
(70, 1, 'Announcement', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/announcements', '{\"name_sw\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0\",\"name_en\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0\",\"content_sw\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;<\\/p>\",\"content_en\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;<\\/p>\",\"active\":\"1\",\"slug\":\"mapitio-ya-kikao-kazi-cha-utendaji-wa-TPSC-2\"}', '2021-08-02 03:44:43', '2021-08-02 03:44:43'),
(71, 1, 'Announcement', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/announcements', '{\"name_sw\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0\",\"name_en\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0\",\"content_sw\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;<\\/p>\",\"content_en\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;<\\/p>\",\"active\":\"1\",\"slug\":\"mapitio-ya-kikao-kazi-cha-utendaji-wa-TPSC-3\"}', '2021-08-02 03:45:07', '2021-08-02 03:45:07'),
(72, 1, 'Announcement', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/announcements', '{\"name_sw\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0\",\"name_en\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0\",\"content_sw\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;<\\/p>\",\"content_en\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;<\\/p>\",\"active\":\"1\",\"slug\":\"mapitio-ya-kikao-kazi-cha-utendaji-wa-TPSC-4\"}', '2021-08-02 03:45:30', '2021-08-02 03:45:30'),
(73, 1, 'Announcement', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/announcements', '{\"name_sw\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0\",\"name_en\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0\",\"content_sw\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;<\\/p>\",\"content_en\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;<\\/p>\",\"active\":\"1\",\"slug\":\"mapitio-ya-kikao-kazi-cha-utendaji-wa-TPSC-5\"}', '2021-08-02 03:45:56', '2021-08-02 03:45:56'),
(74, 1, 'PressRelease', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/press_releases', '{\"name_sw\":\"Likizo imekaribia kona\",\"name_en\":\"Holiday is around the corner\",\"content_sw\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;<\\/p>\",\"content_en\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;<\\/p>\",\"active\":\"1\",\"file_sw\":\"\\/uploads\\/press_releases\\/sw1627887149-PROVISIONAL SITE MAP.xlsx\",\"file_en\":\"\\/uploads\\/press_releases\\/en1627887149-PROVISIONAL SITE MAP.xlsx\",\"user_id\":1,\"slug\":\"holiday-is-around-the-corner\"}', '2021-08-02 03:52:30', '2021-08-02 03:52:30'),
(75, 1, 'PressRelease', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/press_releases', '{\"name_sw\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0\",\"name_en\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0\",\"content_sw\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;<\\/p>\",\"content_en\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;<\\/p>\",\"active\":\"1\",\"file_sw\":\"\\/uploads\\/press_releases\\/sw1627887240-INSTITUTE OF CONSTRUCTION TECHNOLOGY Website.docx\",\"file_en\":\"\\/uploads\\/press_releases\\/en1627887240-INSTITUTE OF CONSTRUCTION TECHNOLOGY Website.docx\",\"user_id\":1,\"slug\":\"mapitio-ya-kikao-kazi-cha-utendaji-wa-TPSC\"}', '2021-08-02 03:54:00', '2021-08-02 03:54:00'),
(76, 1, 'PressRelease', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/press_releases', '{\"name_sw\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0\",\"name_en\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0\",\"content_sw\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;<\\/p>\",\"content_en\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;<\\/p>\",\"active\":\"1\",\"file_sw\":\"\\/uploads\\/press_releases\\/sw1627887854-INSTITUTE OF CONSTRUCTION TECHNOLOGY Website.docx\",\"file_en\":\"\\/uploads\\/press_releases\\/en1627887854-INSTITUTE OF CONSTRUCTION TECHNOLOGY Website (1).docx\",\"user_id\":1,\"slug\":\"mapitio-ya-kikao-kazi-cha-utendaji-wa-TPSC-2\"}', '2021-08-02 04:04:14', '2021-08-02 04:04:14'),
(77, 1, 'Administration', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/administration', '{\"salutation_sw\":null,\"salutation_en\":null,\"fullname\":\"Jane Joe\",\"title_sw\":\"Secretary\",\"title_en\":\"Secretary\",\"email\":\"jane@janes.com\",\"phone\":null,\"position\":\"0\",\"content_sw\":\"<p>cool lady and very passionate about many things, if you know what I mean&nbsp;cool lady and very passionate about many things, if you know what I mean&nbsp;cool lady and very passionate about many things, if you know what I mean&nbsp;cool lady and very passionate about many things, if you know what I mean<\\/p>\",\"content_en\":\"<p>cool lady and very passionate about many things, if you know what I mean&nbsp;cool lady and very passionate about many things, if you know what I mean&nbsp;cool lady and very passionate about many things, if you know what I mean&nbsp;cool lady and very passionate about many things, if you know what I mean&nbsp;cool lady and very passionate about many things, if you know what I mean<\\/p>\",\"photo_url\":\"6747f9ef1b8ad6debbd70f1199f55e9c.jpeg\",\"slug\":\"jane-joe\"}', '2021-08-02 04:10:20', '2021-08-02 04:10:20'),
(78, 1, 'Administration', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/administration', '{\"salutation_sw\":null,\"salutation_en\":null,\"fullname\":\"Pasiansi Master\",\"title_sw\":\"Master of masters\",\"title_en\":\"Master of masters\",\"email\":\"cool@coolnes.com\",\"phone\":null,\"position\":\"0\",\"content_sw\":\"<p>the window doesnt blow where this being is, its almost comes as a fable till reality slaps you in the face&nbsp;the window doesnt blow where this being is, its almost comes as a fable till reality slaps you in the face&nbsp;the window doesnt blow where this being is, its almost comes as a fable till reality slaps you in the face&nbsp;the window doesnt blow where this being is, its almost comes as a fable till reality slaps you in the face<\\/p>\",\"content_en\":\"<p>the window doesnt blow where this being is, its almost comes as a fable till reality slaps you in the face&nbsp;the window doesnt blow where this being is, its almost comes as a fable till reality slaps you in the face&nbsp;the window doesnt blow where this being is, its almost comes as a fable till reality slaps you in the face&nbsp;the window doesnt blow where this being is, its almost comes as a fable till reality slaps you in the face<\\/p>\",\"photo_url\":\"208e85575e6e2fd5e1f6619afdcc784d.jpeg\",\"slug\":\"pasiansi-master-2\"}', '2021-08-02 04:13:01', '2021-08-02 04:13:01'),
(79, 1, 'DocumentCategory', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/document-categories', '{\"title_sw\":\"Strategic Plan\",\"title_en\":\"Strategic Plan\",\"slug\":\"strategic-plan\"}', '2021-08-02 04:14:11', '2021-08-02 04:14:11'),
(80, 1, 'DocumentCategory', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/document-categories', '{\"title_sw\":\"Presidential Circular\",\"title_en\":\"Presidential Circular\",\"slug\":\"presidential-circular\"}', '2021-08-02 04:14:38', '2021-08-02 04:14:38'),
(81, 1, 'DocumentCategory', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/document-categories', '{\"title_sw\":\"Annual Reports\",\"title_en\":\"Annual Reports\",\"slug\":\"annual-reports\"}', '2021-08-02 04:15:02', '2021-08-02 04:15:02'),
(82, 1, 'DocumentCategory', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/document-categories', '{\"title_sw\":\"State of Economy\",\"title_en\":\"State of Economy\",\"slug\":\"state-of-economy\"}', '2021-08-02 04:15:33', '2021-08-02 04:15:33'),
(83, 1, 'DocumentCategory', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/document-categories', '{\"title_sw\":\"Guidelines\",\"title_en\":\"Guidelines\",\"slug\":\"guidelines\"}', '2021-08-02 04:15:51', '2021-08-02 04:15:51'),
(84, 1, 'DocumentCategory', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/document-categories', '{\"title_sw\":\"PPD Framework\",\"title_en\":\"PPD Framework\",\"slug\":\"ppd-framework\"}', '2021-08-02 04:16:15', '2021-08-02 04:16:15'),
(85, 1, 'Service', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/services', '{\"title_en\":\"Real Possibilities on Enhancement of the Achievable Estimates\",\"title_sw\":\"Real Possibilities on Enhancement of the Achievable Estimates\",\"content_en\":\"<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;<\\/p>\",\"content_sw\":\"<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;<\\/p>\",\"active\":\"1\",\"photo_url\":\"31f3afbe0391e899b5e29b56793a2aec.jpeg\",\"slug\":\"real-possibilities-on-enhancement-of-the-achievable-estimates\"}', '2021-08-02 04:59:37', '2021-08-02 04:59:37');
INSERT INTO `timelines` (`id`, `actor`, `object`, `verb`, `ip`, `url`, `content`, `created_at`, `updated_at`) VALUES
(86, 1, 'Service', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/services', '{\"title_en\":\"Real Possibilities on Enhancement of the Achievable Estimates\",\"title_sw\":\"Real Possibilities on Enhancement of the Achievable Estimates\",\"content_en\":\"<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;<\\/p>\",\"content_sw\":\"<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;<\\/p>\",\"active\":\"1\",\"slug\":\"real-possibilities-on-enhancement-of-the-achievable-estimates-2\"}', '2021-08-02 05:00:05', '2021-08-02 05:00:05'),
(87, 1, 'Service', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/services/2', '{\"id\":2,\"title_sw\":\"Real Possibilities on Enhancement of the Achievable Estimates\",\"title_en\":\"Real Possibilities on Enhancement of the Achievable Estimates\",\"summary_sw\":null,\"summary_en\":null,\"content_sw\":\"<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;<\\/p>\",\"content_en\":\"<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;<\\/p>\",\"photo_url\":\"6a8ea596f0f6bd638f331463b185d621.jpeg\",\"active\":\"1\",\"slug\":\"real-possibilities-on-enhancement-of-the-achievable-estimates-2\",\"created_at\":\"2021-08-02T08:00:05.000000Z\",\"updated_at\":\"2021-08-02T08:00:05.000000Z\",\"user_id\":0,\"icon\":null,\"color\":null,\"specials\":null}', '2021-08-02 05:01:20', '2021-08-02 05:01:20'),
(88, 1, 'Service', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/services', '{\"title_en\":\"Real Possibilities on Enhancement of the Achievable Estimates\",\"title_sw\":\"Real Possibilities on Enhancement of the Achievable Estimates\",\"content_en\":\"<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;<\\/p>\",\"content_sw\":\"<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;<\\/p>\",\"active\":\"1\",\"photo_url\":\"85e656ecaab168f4b9f7833b934b33aa.jpeg\",\"slug\":\"real-possibilities-on-enhancement-of-the-achievable-estimates-3\"}', '2021-08-02 05:03:54', '2021-08-02 05:03:54'),
(89, 1, 'Service', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/services', '{\"title_en\":\"Real Possibilities on Enhancement of the Achievable Estimates\",\"title_sw\":\"Real Possibilities on Enhancement of the Achievable Estimates\",\"content_en\":\"<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;<\\/p>\",\"content_sw\":\"<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;<\\/p>\",\"active\":\"1\",\"photo_url\":\"393749445b2fa32a0f8ee8efe58c1443.jpeg\",\"slug\":\"real-possibilities-on-enhancement-of-the-achievable-estimates-4\"}', '2021-08-02 05:05:24', '2021-08-02 05:05:24'),
(90, 1, 'GoogleMap', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/googlemaps/1', '{\"id\":1,\"url\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3961.618465872513!2d39.285840196335165!3d-6.816173454543785!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x185c4b25ef06a02b%3A0x5b798c6c04045b4e!2sTANZANIA%20NATIONAL%20BUSINESS%20COUNCIL!5e0!3m2!1sen!2stz!4v1627383197016!5m2!1sen!2stz\\\"                                              width=\\\"100%\\\" height=\\\"100%\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"true\\\" loading=\\\"lazy\\\">                                         <\\/iframe>\",\"user_id\":1,\"created_at\":\"2021-07-01T08:13:01.000000Z\",\"updated_at\":\"2021-07-06T13:49:16.000000Z\"}', '2021-08-02 11:53:47', '2021-08-02 11:53:47'),
(91, 1, 'GoogleMap', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/googlemaps/1', '{\"id\":1,\"url\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d15846.594959360982!2d39.2895452!3d-6.8125094!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe10fa5e04ce1b92b!2sTPSC%20Office!5e0!3m2!1sen!2stz!4v1627916614224!5m2!1sen!2stz\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\"><\\/iframe>\",\"user_id\":1,\"created_at\":\"2021-07-01T08:13:01.000000Z\",\"updated_at\":\"2021-08-02T14:53:47.000000Z\"}', '2021-08-02 12:04:05', '2021-08-02 12:04:05'),
(92, 1, 'Photo', 'bulkUpload', '127.0.0.1', 'http://127.0.0.1:8000/cms/media/bulk-upload-images/2', '{\"gallery_id\":\"2\",\"mime\":\"images\\/jpg\",\"path\":\"uploads\\/gallery\\/\",\"filename\":\"74561aa69114ec4993291d31afcaf798.jpg\",\"slug\":\"74561aa69114ec4993291d31afcaf798-jpg\"}', '2021-08-04 01:43:23', '2021-08-04 01:43:23'),
(93, 1, 'Photo', 'bulkUpload', '127.0.0.1', 'http://127.0.0.1:8000/cms/media/bulk-upload-images/2', '{\"gallery_id\":\"2\",\"mime\":\"images\\/jpg\",\"path\":\"uploads\\/gallery\\/\",\"filename\":\"430e297c55a162fe18668ccb3414f615.jpg\",\"slug\":\"430e297c55a162fe18668ccb3414f615-jpg\"}', '2021-08-04 01:43:25', '2021-08-04 01:43:25'),
(94, 1, 'Photo', 'bulkUpload', '127.0.0.1', 'http://127.0.0.1:8000/cms/media/bulk-upload-images/2', '{\"gallery_id\":\"2\",\"mime\":\"images\\/jpg\",\"path\":\"uploads\\/gallery\\/\",\"filename\":\"6d8ae25f077b72ecdd21998368e8db87.jpg\",\"slug\":\"6d8ae25f077b72ecdd21998368e8db87-jpg\"}', '2021-08-04 01:43:27', '2021-08-04 01:43:27'),
(95, 1, 'Photo', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/media/10', '{\"id\":10,\"title_en\":\"\",\"title_sw\":\"\",\"content_en\":\"pink caption\",\"content_sw\":\"caption pink\",\"mime\":\"images\\/jpg\",\"path\":\"uploads\\/gallery\\/\",\"url\":\"\",\"filename\":\"6d8ae25f077b72ecdd21998368e8db87.jpg\",\"iconurl\":\"\",\"slug\":\"6d8ae25f077b72ecdd21998368e8db87-jpg\",\"user_id\":0,\"gallery_id\":2,\"status\":\"1\",\"created_at\":\"2021-08-04T04:43:27.000000Z\",\"updated_at\":\"2021-08-04T04:43:27.000000Z\"}', '2021-08-04 02:42:18', '2021-08-04 02:42:18'),
(96, 1, 'Photo', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/media/10', '{\"id\":10,\"title_en\":\"\",\"title_sw\":\"\",\"content_en\":\"pink caption\",\"content_sw\":\"caption pink\",\"mime\":\"images\\/jpg\",\"path\":\"uploads\\/gallery\\/\",\"url\":\"\",\"filename\":\"6d8ae25f077b72ecdd21998368e8db87.jpg\",\"iconurl\":\"\",\"slug\":\"6d8ae25f077b72ecdd21998368e8db87-jpg\",\"user_id\":0,\"gallery_id\":2,\"status\":\"1\",\"created_at\":\"2021-08-04T04:43:27.000000Z\",\"updated_at\":\"2021-08-04T05:42:18.000000Z\"}', '2021-08-04 02:43:07', '2021-08-04 02:43:07'),
(97, 1, 'Photo', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/media', '{\"gallery_id\":2,\"content_sw\":\"picha kali\",\"content_en\":\"good picture\",\"status\":\"0\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"ef32cc4b7ed92527b9bcabf575ac4e26.jpeg\",\"mime\":\"images\\/jpeg\",\"slug\":\"ef32cc4b7ed92527b9bcabf575ac4e26-jpeg\"}', '2021-08-04 02:45:54', '2021-08-04 02:45:54'),
(98, 1, 'Photo', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/media', '{\"gallery_id\":2,\"content_sw\":\"picha kali\",\"content_en\":\"good picture\",\"status\":\"0\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"7c20645e9271a710e03401433be4de86.jpeg\",\"mime\":\"images\\/jpeg\",\"slug\":\"7c20645e9271a710e03401433be4de86-jpeg\"}', '2021-08-04 02:45:56', '2021-08-04 02:45:56'),
(99, 1, 'Photo', 'bulkUpload', '127.0.0.1', 'http://127.0.0.1:8000/cms/media/bulk-upload-images/3', '{\"gallery_id\":\"3\",\"mime\":\"images\\/jpg\",\"path\":\"uploads\\/gallery\\/\",\"filename\":\"843a37ceee9ac402b8a32bfaf57d325f.jpg\",\"slug\":\"843a37ceee9ac402b8a32bfaf57d325f-jpg\"}', '2021-08-04 03:02:19', '2021-08-04 03:02:19'),
(100, 1, 'Photo', 'bulkUpload', '127.0.0.1', 'http://127.0.0.1:8000/cms/media/bulk-upload-images/3', '{\"gallery_id\":\"3\",\"mime\":\"images\\/jpg\",\"path\":\"uploads\\/gallery\\/\",\"filename\":\"843a37ceee9ac402b8a32bfaf57d325f.jpg\",\"slug\":\"843a37ceee9ac402b8a32bfaf57d325f-jpg-2\"}', '2021-08-04 03:02:19', '2021-08-04 03:02:19'),
(101, 1, 'Photo', 'bulkUpload', '127.0.0.1', 'http://127.0.0.1:8000/cms/media/bulk-upload-images/3', '{\"gallery_id\":\"3\",\"mime\":\"images\\/jpg\",\"path\":\"uploads\\/gallery\\/\",\"filename\":\"b3d4f9b510ba59324e59423fca8892d7.jpg\",\"slug\":\"b3d4f9b510ba59324e59423fca8892d7-jpg\"}', '2021-08-04 03:02:23', '2021-08-04 03:02:23'),
(102, 1, 'Photo', 'bulkUpload', '127.0.0.1', 'http://127.0.0.1:8000/cms/media/bulk-upload-images/3', '{\"gallery_id\":\"3\",\"mime\":\"images\\/jpg\",\"path\":\"uploads\\/gallery\\/\",\"filename\":\"ecf279ee42f6f6413ef9f30e9c8b2a96.jpg\",\"slug\":\"ecf279ee42f6f6413ef9f30e9c8b2a96-jpg\"}', '2021-08-04 03:02:24', '2021-08-04 03:02:24'),
(103, 1, 'Photo', 'bulkUpload', '127.0.0.1', 'http://127.0.0.1:8000/cms/media/bulk-upload-images/3', '{\"gallery_id\":\"3\",\"mime\":\"images\\/jpg\",\"path\":\"uploads\\/gallery\\/\",\"filename\":\"f83d2398293f0d726607d3114fd0e4b1.jpg\",\"slug\":\"f83d2398293f0d726607d3114fd0e4b1-jpg\"}', '2021-08-04 03:02:28', '2021-08-04 03:02:28'),
(104, 1, 'Photo', 'bulkUpload', '127.0.0.1', 'http://127.0.0.1:8000/cms/media/bulk-upload-images/3', '{\"gallery_id\":\"3\",\"mime\":\"images\\/jpg\",\"path\":\"uploads\\/gallery\\/\",\"filename\":\"7c534271269824a8ea69c610d9c8f32d.jpg\",\"slug\":\"7c534271269824a8ea69c610d9c8f32d-jpg\"}', '2021-08-04 03:02:29', '2021-08-04 03:02:29'),
(105, 1, 'Video', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/media', '{\"gallery_id\":4,\"title_sw\":\"video kali\",\"title_en\":\"good video very very nice\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=yoP5YVkFxXU&pp=sAQA\",\"slug\":\"good-video-very-very-nice\"}', '2021-08-04 03:27:10', '2021-08-04 03:27:10'),
(106, 1, 'Video', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/media', '{\"gallery_id\":4,\"title_sw\":\"Music kalii\",\"title_en\":\"Good Music\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=1mkWQdfEO10&pp=sAQA\",\"slug\":\"good-music\"}', '2021-08-04 03:27:44', '2021-08-04 03:27:44'),
(107, 1, 'Video', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/media', '{\"gallery_id\":4,\"title_sw\":\"mambo hua kweli\",\"title_en\":\"Real Possibilities on Enhancement of the Achievable Estimates\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=dqs2Fct0JNU&pp=sAQA\",\"slug\":\"real-possibilities-on-enhancement-of-the-achievable-estimates\"}', '2021-08-04 03:28:21', '2021-08-04 03:28:21'),
(108, 1, 'Video', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/media', '{\"gallery_id\":4,\"title_sw\":\"mambo hua kweli\",\"title_en\":\"Management Team\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=RakQ5XTFEU4&pp=sAQA\",\"slug\":\"management-team\"}', '2021-08-04 03:28:45', '2021-08-04 03:28:45'),
(109, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":100,\"keyword\":\"lbl_site_title_short \",\"en\":\"UCSAF\",\"sw\":\"UCSAF\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-07-05T08:50:04.000000Z\"}', '2021-08-04 07:00:33', '2021-08-04 07:00:33'),
(110, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":1,\"keyword\":\"lbl_site_title\",\"en\":\"Universal Communications Service Access Fund\",\"sw\":\"Universal Communications Service Access Fund\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-07-06T08:33:26.000000Z\"}', '2021-08-04 07:01:50', '2021-08-04 07:01:50'),
(111, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":2,\"keyword\":\"lbl_site_subtitle\",\"en\":\"The United Republic of Tanzania\",\"sw\":\"Jamhuri ya Muungano wa Tanzania\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-07-28T14:20:24.000000Z\"}', '2021-08-04 07:01:50', '2021-08-04 07:01:50'),
(112, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":99,\"keyword\":\"lbl_content_maintained \",\"en\":\"Content Maintained by Universal Communications Service Access Fund\",\"sw\":\"Huendeshwa na Tanzania Universal Communications Service Access Fund\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-07-06T08:33:26.000000Z\"}', '2021-08-04 07:01:51', '2021-08-04 07:01:51'),
(113, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":261,\"keyword\":\"lbl_doc_title\",\"en\":\"Description\",\"sw\":\"Maelezo\",\"created_at\":\"2021-06-16T12:21:35.000000Z\",\"updated_at\":\"2021-06-16T12:21:35.000000Z\"}', '2021-08-04 08:27:56', '2021-08-04 08:27:56'),
(114, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":1,\"keyword\":\"lbl_site_title\",\"en\":\"UNIVERSAL COMMUNICATIONS SERVICE ACCESS FUND\",\"sw\":\"UNIVERSAL COMMUNICATIONS SERVICE ACCESS FUND\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-08-04T10:01:50.000000Z\"}', '2021-08-04 08:27:56', '2021-08-04 08:27:56'),
(115, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":2,\"keyword\":\"lbl_site_subtitle\",\"en\":\"The United Republic of Tanzania\",\"sw\":\"Jamhuri ya Muungano wa Tanzania\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-08-04T10:01:50.000000Z\"}', '2021-08-04 08:27:57', '2021-08-04 08:27:57'),
(116, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":100,\"keyword\":\"lbl_site_title_short \",\"en\":\"UCSAF\",\"sw\":\"UCSAF\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-08-04T10:00:33.000000Z\"}', '2021-08-04 08:27:57', '2021-08-04 08:27:57'),
(117, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":281,\"keyword\":\"lbl_site_sub_subtitle\",\"en\":\"Prime Minister\'s Office\",\"sw\":\"Ofisi ya Waziri Mkuu\",\"created_at\":null,\"updated_at\":null}', '2021-08-04 08:27:57', '2021-08-04 08:27:57'),
(118, 1, 'WelcomeNote', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/welcome', '{\"content_sw\":\"<p>Put brief introduction about UCSAF Welcome to the UCSAF official website. This is your one stop center for bussiness Lorem ipsum dolor sit amet, consectetur adipiscing.<\\/p>\\r\\n\\r\\n<p>Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations. Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations.<\\/p>\",\"content_en\":\"<p>Put brief introduction about UCSAF Welcome to the UCSAF official website. This is your one stop center for bussiness Lorem ipsum dolor sit amet, consectetur adipiscing.<\\/p>\\r\\n\\r\\n<p>Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations. Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations.<\\/p>\",\"status\":\"1\"}', '2021-08-04 09:04:09', '2021-08-04 09:04:09'),
(119, 1, 'WelcomeNote', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/welcome/1', '{\"id\":1,\"summary_en\":null,\"summary_sw\":null,\"content_sw\":\"<p>Put brief introduction about UCSAF Welcome to the UCSAF official website. This is your one stop center for bussiness Lorem ipsum dolor sit amet, consectetur adipiscing.<\\/p>\\r\\n\\r\\n<p>Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations. Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations.<\\/p>\",\"content_en\":\"<p>Put brief introduction about UCSAF Welcome to the UCSAF official website. This is your one stop center for bussiness Lorem ipsum dolor sit amet, consectetur adipiscing.<\\/p>\\r\\n\\r\\n<p>Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations. Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations.<\\/p>\",\"created_at\":\"2021-08-04T12:04:09.000000Z\",\"updated_at\":\"2021-08-04T12:04:09.000000Z\",\"status\":\"1\"}', '2021-08-04 09:05:20', '2021-08-04 09:05:20'),
(120, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":281,\"keyword\":\"lbl_site_sub_subtitle\",\"en\":\"Prime Minister\'s Office\",\"sw\":\"Ofisi ya Waziri Mkuu\",\"created_at\":\"2021-08-06T14:37:55.000000Z\",\"updated_at\":\"2021-08-06T14:37:55.000000Z\"}', '2021-08-06 08:57:44', '2021-08-06 08:57:44'),
(121, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":261,\"keyword\":\"lbl_doc_title\",\"en\":\"Description\",\"sw\":\"Maelezo\",\"created_at\":\"2021-06-16T12:21:35.000000Z\",\"updated_at\":\"2021-06-16T12:21:35.000000Z\"}', '2021-08-06 08:57:44', '2021-08-06 08:57:44'),
(122, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":1,\"keyword\":\"lbl_site_title\",\"en\":\"Universal Communication Service Access Fund\",\"sw\":\"Mfuko wa Mawasiliano kwa Wote\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-08-04T11:27:57.000000Z\"}', '2021-08-06 08:57:44', '2021-08-06 08:57:44'),
(123, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":2,\"keyword\":\"lbl_site_subtitle\",\"en\":\"The United Republic of Tanzania\",\"sw\":\"Jamhuri ya Muungano wa Tanzania\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-08-04T10:01:50.000000Z\"}', '2021-08-06 08:57:45', '2021-08-06 08:57:45'),
(124, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":100,\"keyword\":\"lbl_site_title_short \",\"en\":\"UCSAF\",\"sw\":\"UCSAF\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-08-04T10:00:33.000000Z\"}', '2021-08-06 08:57:45', '2021-08-06 08:57:45'),
(125, 1, 'Administration', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration/2', '{\"id\":2,\"salutation_en\":null,\"salutation_sw\":null,\"fullname\":\"Firstname Lastname\",\"position\":\"0\",\"title_sw\":\"Chief Secretary\",\"title_en\":\"Chief Secretary\",\"content_sw\":null,\"content_en\":null,\"photo_url\":\"7ec4f86d83948cc6ac3dd723984e72e4.png\",\"email\":null,\"phone\":null,\"created_at\":\"2021-07-30T12:39:57.000000Z\",\"updated_at\":\"2021-07-30T12:39:57.000000Z\",\"slug\":\"firstname-lastname-2\"}', '2021-08-06 10:09:52', '2021-08-06 10:09:52'),
(126, 1, 'News', 'update', '127.0.0.1', 'http://localhost:8000/cms/news/4', '{\"id\":4,\"title_sw\":\"Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika\",\"title_en\":\"Changes in Second Stakeholders General Meeting\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p>Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika\\u00a0\\u00a0Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika\\u00a0\\u00a0Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika\\u00a0\\u00a0Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika\\u00a0\\u00a0Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika\\u00a0\\u00a0Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika\\u00a0\\u00a0Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika\\u00a0<\\/p>\",\"content_en\":\"<p>Changes in Second Stakeholders General Meeting\\u00a0\\u00a0Changes in Second Stakeholders General Meeting\\u00a0\\u00a0Changes in Second Stakeholders General Meeting\\u00a0Changes in Second Stakeholders General Meeting\\u00a0\\u00a0Changes in Second Stakeholders General Meeting\\u00a0Changes in Second Stakeholders General Meeting\\u00a0<\\/p>\",\"active\":\"1\",\"user_id\":1,\"slug\":\"changes-in-second-stakeholders-general-meeting\",\"photo_url\":\"dca7f90408aaed33eebd27bfd5ef2082.jpeg\",\"created_at\":\"2021-08-02T05:58:21.000000Z\",\"updated_at\":\"2021-08-02T06:02:14.000000Z\"}', '2021-08-09 12:02:17', '2021-08-09 12:02:17'),
(127, 1, 'Events', 'update', '127.0.0.1', 'http://localhost:8000/cms/events/4', '{\"id\":4,\"event_date\":\"2021-08-12\",\"event_time\":\"11:00AM - 2:30PM\",\"location\":\"Nkrumah Hall\",\"title_sw\":\"Changes in Second Stakeholders General Meeting\",\"title_en\":\"Changes in Second Stakeholders General Meeting\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting<\\/p>\",\"content_en\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting<\\/p>\",\"active\":\"1\",\"user_id\":1,\"slug\":\"changes-in-second-stakeholders-general-meeting-4\",\"photo_url\":\"dd39cc22c2b751e9d33f74e73ac64b00.jpeg\",\"created_at\":\"2021-08-02T06:34:28.000000Z\",\"updated_at\":\"2021-08-02T06:34:28.000000Z\"}', '2021-08-09 12:07:32', '2021-08-09 12:07:32'),
(128, 1, 'Announcement', 'update', '127.0.0.1', 'http://localhost:8000/cms/announcements/5', '{\"id\":5,\"name_sw\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0\",\"name_en\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0\",\"content_sw\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;<\\/p>\",\"content_en\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;<\\/p>\",\"active\":\"1\",\"slug\":\"mapitio-ya-kikao-kazi-cha-utendaji-wa-TPSC-5\",\"created_at\":\"2021-08-02T06:45:56.000000Z\",\"updated_at\":\"2021-08-02T06:45:56.000000Z\"}', '2021-08-09 12:15:47', '2021-08-09 12:15:47'),
(129, 1, 'Announcement', 'update', '127.0.0.1', 'http://localhost:8000/cms/announcements/5', '{\"id\":5,\"name_sw\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0\",\"name_en\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0\",\"content_sw\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;<\\/p>\",\"content_en\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC &nbsp;<\\/p>\",\"active\":\"1\",\"slug\":\"mapitio-ya-kikao-kazi-cha-utendaji-wa-TPSC-5\",\"created_at\":\"2021-08-02T06:45:56.000000Z\",\"updated_at\":\"2021-08-02T06:45:56.000000Z\"}', '2021-08-09 12:17:12', '2021-08-09 12:17:12'),
(130, 1, 'PressRelease', 'update', '127.0.0.1', 'http://localhost:8000/cms/press_releases/5', '{\"id\":5,\"name_sw\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0\",\"name_en\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0\",\"content_sw\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0<\\/p>\",\"content_en\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0<\\/p>\",\"file_en\":\"\\/uploads\\/press_releases\\/en1627887854-INSTITUTE OF CONSTRUCTION TECHNOLOGY Website (1).docx\",\"file_sw\":\"\\/uploads\\/press_releases\\/sw1627887854-INSTITUTE OF CONSTRUCTION TECHNOLOGY Website.docx\",\"active\":\"1\",\"slug\":\"mapitio-ya-kikao-kazi-cha-utendaji-wa-TPSC-2\",\"user_id\":1,\"created_at\":\"2021-08-02T07:04:15.000000Z\",\"updated_at\":\"2021-08-02T07:04:15.000000Z\"}', '2021-08-09 12:21:09', '2021-08-09 12:21:09'),
(131, 1, 'Faq', 'store', '127.0.0.1', 'http://localhost:8000/cms/faqs', '{\"question_sw\":\"Ofisi zetu hupatikana wapi?\",\"question_en\":\"Where are our offices located?\",\"answer_sw\":\"<p>Mtaa wa Jamhuri<\\/p>\",\"answer_en\":\"<p>Jamhuri Street<\\/p>\",\"active\":\"1\"}', '2021-08-09 12:22:43', '2021-08-09 12:22:43'),
(132, 1, 'Faq', 'store', '127.0.0.1', 'http://localhost:8000/cms/faqs', '{\"question_sw\":\"Ofisi zetu hupatikana wapi?\",\"question_en\":\"Where are our offices located?\",\"answer_sw\":\"<p>Mtaa wa Jamhuri<\\/p>\",\"answer_en\":\"<p>Jamhuri Street<\\/p>\",\"active\":\"1\"}', '2021-08-09 12:25:04', '2021-08-09 12:25:04'),
(133, 1, 'Faq', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/faqs/2', '{\"id\":2,\"question_sw\":\"Ofisi zetu hupatikana wapi?\",\"question_en\":\"Where are our offices located?\",\"answer_sw\":\"<p>Mtaa wa Jamhuri<\\/p>\",\"answer_en\":\"<p>Jamhuri Street<\\/p>\",\"active\":1,\"created_at\":\"2021-08-09T15:25:04.000000Z\",\"updated_at\":\"2021-08-09T15:25:04.000000Z\",\"specials\":null}', '2021-08-09 12:25:22', '2021-08-09 12:25:22'),
(134, 1, 'AdministrationCategories', 'store', '127.0.0.1', 'http://localhost:8000/cms/administration_categories', '{\"title_sw\":\"Bodi ya Wakurugenzi\",\"title_en\":\"Board Members\",\"slug\":\"board-members\"}', '2021-08-09 12:32:20', '2021-08-09 12:32:20'),
(135, 1, 'AdministrationCategoriesMembers', 'store', '127.0.0.1', 'http://localhost:8000/cms/administration_categories_members', '{\"member_id\":\"2\",\"title_en\":\"Secretary of Board\",\"title_sw\":\"Katibu wa Bodi\",\"position\":\"2\",\"category_id\":\"1\"}', '2021-08-09 12:34:21', '2021-08-09 12:34:21'),
(136, 1, 'AdministrationCategoriesMembers', 'store', '127.0.0.1', 'http://localhost:8000/cms/administration_categories_members', '{\"member_id\":\"6\",\"title_en\":\"Member\",\"title_sw\":\"Mjumbe\",\"position\":\"3\",\"category_id\":\"1\"}', '2021-08-09 12:34:56', '2021-08-09 12:34:56'),
(137, 1, 'Documents', 'store', '127.0.0.1', 'http://localhost:8000/cms/documents', '{\"title_sw\":\"Ripoti ya mwaka 2021\\/22\",\"title_en\":\"2021\\/22 Annual Report\",\"category_id\":\"3\",\"active\":\"1\",\"published_date\":\"2021-08-07\",\"file_sw\":\"sw-1628523483-code.txt\",\"file_en\":\"en-1628523483-demo.pdf\"}', '2021-08-09 12:38:03', '2021-08-09 12:38:03'),
(138, 1, 'Documents', 'update', '127.0.0.1', 'http://localhost:8000/cms/documents/1', '{\"id\":1,\"title_sw\":\"Ripoti ya mwaka 2021\\/22\",\"title_en\":\"2021\\/22 Annual Report\",\"file_sw\":\"sw-1628523483-code.txt\",\"file_en\":\"en-1628523483-demo.pdf\",\"active\":\"1\",\"published_date\":\"2021-08-07\",\"category_id\":\"3\",\"created_at\":\"2021-08-09T15:38:04.000000Z\",\"updated_at\":\"2021-08-09T15:38:04.000000Z\"}', '2021-08-09 12:38:25', '2021-08-09 12:38:25'),
(139, 1, 'RegionalOffice', 'update', '127.0.0.1', 'http://localhost:8000/cms/regional_office/1', '{\"id\":1,\"name_en\":\"Universal Communication Service Access Fund\",\"name_sw\":\"Mfuko wa Mawasiliano kwa Wote\",\"physical_address_sw\":\"S.L.P 1432, Dar es Salaam,Tanzania\",\"physical_address_en\":\"P.O. BOX 1432, Dar es Salaam,Tanzania\",\"phone\":\"+255-282 560333\",\"toll_free\":\"255 222 15612\",\"fax\":\"+255-282 560333\",\"email\":\"principal@TPSC.go.tz\",\"content_sw\":null,\"content_en\":null,\"photo_url\":null,\"latitude\":null,\"longitude\":null,\"slug\":\"tanzania-national-business-council\",\"headquarter\":\"1\",\"used_as\":\"1\",\"created_at\":\"2021-07-28T14:05:10.000000Z\",\"updated_at\":\"2021-07-28T14:05:10.000000Z\"}', '2021-08-09 12:52:30', '2021-08-09 12:52:30'),
(140, 1, 'GoogleMap', 'update', '127.0.0.1', 'http://localhost:8000/cms/googlemaps/1', '{\"id\":1,\"url\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3961.970590669435!2d39.239789814365885!3d-6.773433868120419!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x185c4c2690c546d7%3A0x7fc91d48f0ee94aa!2sUniversal%20Communications%20Service%20Access%20Fund%20(UCSAF)!5e0!3m2!1sen!2stz!4v1628525820660!5m2!1sen!2stz\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\"><\\/iframe>\",\"user_id\":1,\"created_at\":\"2021-07-01T08:13:01.000000Z\",\"updated_at\":\"2021-08-02T15:04:05.000000Z\"}', '2021-08-09 13:17:30', '2021-08-09 13:17:30'),
(141, 1, 'News', 'store', '127.0.0.1', 'http://localhost:8000/cms/news', '{\"title_en\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat\",\"title_sw\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat\",\"content_en\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat cursus. Nam id justo non turpis gravida dapibus. Cras a facilisis odio, quis accumsan diam. Sed sem neque, pharetra sit amet iaculis et, ullamcorper et risus. Morbi blandit nibh risus, et dignissim dui iaculis sit amet. In convallis lectus vitae tellus malesuada sodales. Sed iaculis aliquam magna at dictum. Aenean pharetra ligula massa, vel fermentum elit elementum pharetra. Integer et viverra purus. Donec molestie ante molestie fringilla scelerisque.<\\/p>\\r\\n\\r\\n<p>Donec auctor, enim eleifend fermentum commodo, nisl eros malesuada lorem, eu suscipit ex est vitae lacus. Nullam euismod velit at velit mattis, vel mattis augue fringilla. Nam scelerisque eu quam varius gravida. Sed in ultrices justo, id tristique magna. Maecenas aliquet accumsan volutpat. Quisque commodo nisi at tortor rutrum consectetur. Nunc euismod, turpis ut rhoncus egestas, augue erat eleifend justo, nec vulputate sapien nisi non risus. Nullam eleifend placerat lorem, non vulputate tortor bibendum sed. Duis quis pharetra urna. Ut condimentum, ligula ut auctor malesuada, mi nulla efficitur velit, et eleifend neque mauris nec odio. Mauris a nunc felis. Cras quis leo dictum, rutrum nibh non, venenatis odio. Nam porttitor eros sed ipsum cursus, vitae pellentesque leo feugiat. Morbi magna leo, vehicula sed nisl eget, faucibus sollicitudin erat.<\\/p>\",\"content_sw\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat cursus. Nam id justo non turpis gravida dapibus. Cras a facilisis odio, quis accumsan diam. Sed sem neque, pharetra sit amet iaculis et, ullamcorper et risus. Morbi blandit nibh risus, et dignissim dui iaculis sit amet. In convallis lectus vitae tellus malesuada sodales. Sed iaculis aliquam magna at dictum. Aenean pharetra ligula massa, vel fermentum elit elementum pharetra. Integer et viverra purus. Donec molestie ante molestie fringilla scelerisque.<\\/p>\\r\\n\\r\\n<p>Donec auctor, enim eleifend fermentum commodo, nisl eros malesuada lorem, eu suscipit ex est vitae lacus. Nullam euismod velit at velit mattis, vel mattis augue fringilla. Nam scelerisque eu quam varius gravida. Sed in ultrices justo, id tristique magna. Maecenas aliquet accumsan volutpat. Quisque commodo nisi at tortor rutrum consectetur. Nunc euismod, turpis ut rhoncus egestas, augue erat eleifend justo, nec vulputate sapien nisi non risus. Nullam eleifend placerat lorem, non vulputate tortor bibendum sed. Duis quis pharetra urna. Ut condimentum, ligula ut auctor malesuada, mi nulla efficitur velit, et eleifend neque mauris nec odio. Mauris a nunc felis. Cras quis leo dictum, rutrum nibh non, venenatis odio. Nam porttitor eros sed ipsum cursus, vitae pellentesque leo feugiat. Morbi magna leo, vehicula sed nisl eget, faucibus sollicitudin erat.<\\/p>\",\"active\":\"1\",\"photo_url\":\"eb6eb0a03617d59856d09da5256f3007.png\",\"user_id\":1,\"slug\":\"lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-donec-mollis-consequat\"}', '2021-08-09 13:30:30', '2021-08-09 13:30:30'),
(142, 1, 'Faq', 'update', '127.0.0.1', 'http://localhost:8000/cms/faqs/1', '{\"id\":1,\"question_sw\":\"Ofisi zetu hupatikana wapi?\",\"question_en\":\"Where are our offices located?\",\"answer_sw\":\"<p>Mtaa wa Jamhuri<\\/p>\",\"answer_en\":\"<p>Jamhuri Street<\\/p>\",\"active\":\"1\",\"slug\":\"how-to-do-something\",\"created_at\":\"2021-08-03T10:31:50.000000Z\",\"updated_at\":\"2021-08-03T10:54:40.000000Z\",\"specials\":null}', '2021-08-10 03:41:31', '2021-08-10 03:41:31'),
(143, 1, 'Page', 'store', '127.0.0.1', 'http://localhost:8000/cms/pages', '{\"title_en\":\"Mission and Vision\",\"title_sw\":\"Dira na Dhamira\",\"content_en\":\"<p><strong>Vision<\\/strong><\\/p>\\r\\n\\r\\n<p>&ldquo;Spearheading Tanzania&rsquo;s Economic Development through consensus building and networking&rdquo;<\\/p>\\r\\n\\r\\n<p><strong>Mission&nbsp;<\\/strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<\\/p>\\r\\n\\r\\n<p>&ldquo;To promote healthy and robust economy where the guiding hand of government, enlightened legislation and transparent governance enhances the development of private initiative, encourages local and foreign investments and generally provides an enabling environment for economic growth&rdquo;.<\\/p>\",\"content_sw\":\"<p><strong>Dira<\\/strong><\\/p>\\r\\n\\r\\n<p>&ldquo;Spearheading Tanzania&rsquo;s Economic Development through consensus building and networking&rdquo;<\\/p>\\r\\n\\r\\n<p><strong>Dhamira&nbsp;<\\/strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<\\/p>\\r\\n\\r\\n<p>&ldquo;To promote healthy and robust economy where the guiding hand of government, enlightened legislation and transparent governance enhances the development of private initiative, encourages local and foreign investments and generally provides an enabling environment for economic growth&rdquo;.<\\/p>\",\"slug\":\"mission-and-vision\"}', '2021-08-10 03:44:57', '2021-08-10 03:44:57'),
(144, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"4\",\"title_sw\":\"Ramani\",\"title_en\":\"Sitemap\",\"link\":\"1\",\"url_external\":null,\"url\":\"sitemap\",\"position\":10}', '2021-08-10 03:46:19', '2021-08-10 03:46:19'),
(145, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Dira na Dhamira\",\"title_en\":\"Mission and Vision\",\"link\":\"1\",\"url_external\":null,\"url\":\"pages\\/mission-and-vision\",\"position\":11}', '2021-08-10 03:47:42', '2021-08-10 03:47:42'),
(146, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"4\",\"title_sw\":\"Vigezo na Masharti\",\"title_en\":\"Terms and Conditions\",\"link\":\"1\",\"url_external\":null,\"url\":\"#\",\"position\":11}', '2021-08-10 04:01:43', '2021-08-10 04:01:43'),
(147, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"4\",\"title_sw\":\"Hakimiliki\",\"title_en\":\"Copyright Statement\",\"link\":\"1\",\"url_external\":null,\"url\":\"#\",\"position\":12}', '2021-08-10 04:01:59', '2021-08-10 04:01:59'),
(148, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"4\",\"title_sw\":\"Kanusho\",\"title_en\":\"Disclaimer\",\"link\":\"1\",\"url_external\":null,\"url\":\"#\",\"position\":13}', '2021-08-10 04:03:00', '2021-08-10 04:03:00'),
(149, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Maktaba ya Picha\",\"title_en\":\"Photo Gallery\",\"link\":\"1\",\"url_external\":null,\"url\":\"#\",\"position\":14}', '2021-08-10 04:03:54', '2021-08-10 04:03:54'),
(150, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Maktaba ya Video\",\"title_en\":\"Video Gallery\",\"link\":\"1\",\"url_external\":null,\"url\":\"galleries\\/listing\\/videos\",\"position\":15}', '2021-08-10 04:04:34', '2021-08-10 04:04:34'),
(151, 1, 'MenuItem', 'update', '127.0.0.1', 'http://localhost:8000/cms/menu-items/17', '{\"id\":17,\"title_sw\":\"Maktaba ya Picha\",\"title_en\":\"Photo Gallery\",\"status\":1,\"menu_id\":\"3\",\"url\":\"galleries\\/listing\\/photos\",\"url_external\":null,\"link\":\"1\",\"parent\":0,\"position\":16,\"has_sidebar\":0,\"created_at\":\"2021-08-10T07:03:54.000000Z\",\"updated_at\":\"2021-08-10T07:03:54.000000Z\"}', '2021-08-10 04:04:50', '2021-08-10 04:04:50'),
(152, 1, 'MenuItem', 'update', '127.0.0.1', 'http://localhost:8000/cms/menu-items/8', '{\"id\":8,\"title_sw\":\"Machapisho\",\"title_en\":\"Publications\",\"status\":1,\"menu_id\":\"3\",\"url\":\"publications\",\"url_external\":null,\"link\":\"1\",\"parent\":0,\"position\":14,\"has_sidebar\":0,\"created_at\":\"2021-07-28T09:06:27.000000Z\",\"updated_at\":\"2021-08-10T07:05:05.000000Z\"}', '2021-08-10 04:05:19', '2021-08-10 04:05:19'),
(153, 1, 'MenuItem', 'update', '127.0.0.1', 'http://localhost:8000/cms/menu-items/11', '{\"id\":11,\"title_sw\":\"Wasiliana Nasi\",\"title_en\":\"Contact Us\",\"status\":1,\"menu_id\":\"3\",\"url\":\"contacts\",\"url_external\":null,\"link\":\"1\",\"parent\":0,\"position\":14,\"has_sidebar\":0,\"created_at\":\"2021-07-28T09:07:42.000000Z\",\"updated_at\":\"2021-08-10T07:05:32.000000Z\"}', '2021-08-10 04:05:57', '2021-08-10 04:05:57'),
(154, 1, 'MenuItem', 'update', '127.0.0.1', 'http://localhost:8000/cms/menu-items/5', '{\"id\":5,\"title_sw\":\"Mrejesho\",\"title_en\":\"Feedback\",\"status\":1,\"menu_id\":\"1\",\"url\":\"contacts\",\"url_external\":null,\"link\":\"1\",\"parent\":0,\"position\":15,\"has_sidebar\":0,\"created_at\":\"2021-07-28T08:44:47.000000Z\",\"updated_at\":\"2021-08-10T07:11:08.000000Z\"}', '2021-08-10 04:11:16', '2021-08-10 04:11:16'),
(155, 1, 'MenuItem', 'update', '127.0.0.1', 'http://localhost:8000/cms/menu-items/4', '{\"id\":4,\"title_sw\":\"MMM\",\"title_en\":\"FAQs\",\"status\":1,\"menu_id\":\"1\",\"url\":\"faqs\",\"url_external\":null,\"link\":\"1\",\"parent\":0,\"position\":16,\"has_sidebar\":0,\"created_at\":\"2021-07-28T08:44:26.000000Z\",\"updated_at\":\"2021-08-10T07:11:08.000000Z\"}', '2021-08-10 04:11:36', '2021-08-10 04:11:36'),
(156, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Hotuba\",\"title_en\":\"Speeches\",\"link\":\"1\",\"url_external\":null,\"url\":\"speeches\",\"position\":15}', '2021-09-11 08:26:46', '2021-09-11 08:26:46'),
(157, 1, 'Speech', 'store', '127.0.0.1', 'http://localhost:8000/cms/speeches', '{\"name_sw\":\"Demo\",\"name_en\":\"Demo\",\"content_sw\":\"<p>Demo<\\/p>\",\"content_en\":\"<p>Demo<\\/p>\",\"active\":\"1\",\"file_sw\":\"\\/uploads\\/speeches\\/sw1631361370-DCEA_CHALLENGES.pdf\",\"file_en\":\"\\/uploads\\/speeches\\/en1631361370-DCEA_CHALLENGES.pdf\",\"user_id\":1,\"slug\":\"demo\"}', '2021-09-11 08:56:10', '2021-09-11 08:56:10'),
(158, 1, 'Service', 'store', '127.0.0.1', 'http://localhost:8000/cms/services', '{\"title_en\":\"Demo\",\"title_sw\":\"Demo\",\"content_en\":\"<p>Demo<\\/p>\",\"content_sw\":\"<p>Demo<\\/p>\",\"active\":\"0\",\"photo_url\":\"2e30b7ff0e3ae1bd64eb7e402b564ab4.jpeg\",\"slug\":\"demo\"}', '2021-09-11 09:24:32', '2021-09-11 09:24:32'),
(159, 1, 'Service', 'update', '127.0.0.1', 'http://localhost:8000/cms/services/5', '{\"id\":5,\"title_sw\":\"Demo\",\"title_en\":\"Demo\",\"summary_sw\":null,\"summary_en\":null,\"content_sw\":\"<p>Demo<\\/p>\",\"content_en\":\"<p>Demo<\\/p>\",\"photo_url\":\"2e30b7ff0e3ae1bd64eb7e402b564ab4.jpeg\",\"active\":\"1\",\"slug\":\"demo\",\"created_at\":\"2021-09-11T12:24:32.000000Z\",\"updated_at\":\"2021-09-11T12:24:32.000000Z\",\"user_id\":0,\"icon\":null,\"color\":null,\"specials\":null}', '2021-09-11 09:26:28', '2021-09-11 09:26:28'),
(160, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":248,\"keyword\":\"lbl_our_Service\",\"en\":\"Service\",\"sw\":\"Huduma\",\"created_at\":\"2020-06-23T09:14:51.000000Z\",\"updated_at\":\"2020-08-06T07:52:44.000000Z\"}', '2021-09-11 09:45:00', '2021-09-11 09:45:00'),
(161, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"5\",\"title_sw\":\"Demo\",\"title_en\":\"Demo\",\"link\":\"1\",\"url_external\":null,\"url\":\"#\",\"position\":14}', '2021-09-13 03:49:19', '2021-09-13 03:49:19'),
(162, 1, 'Notice', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/notices/5', '{\"id\":5,\"name_sw\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0\",\"name_en\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0\",\"content_sw\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC..<\\/p>\",\"content_en\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;<\\/p>\",\"file_en\":\"\\/uploads\\/press_releases\\/en1627887854-INSTITUTE OF CONSTRUCTION TECHNOLOGY Website (1).docx\",\"file_sw\":\"\\/uploads\\/press_releases\\/sw1627887854-INSTITUTE OF CONSTRUCTION TECHNOLOGY Website.docx\",\"active\":\"1\",\"slug\":\"mapitio-ya-kikao-kazi-cha-utendaji-wa-TPSC-2\",\"user_id\":1,\"created_at\":\"2021-08-02T07:04:15.000000Z\",\"updated_at\":\"2021-08-09T15:21:09.000000Z\"}', '2021-09-14 07:52:38', '2021-09-14 07:52:38'),
(163, 1, 'Notice', 'destroy', '127.0.0.1', 'http://127.0.0.1:8000/cms/notices/5', '{\"id\":5,\"name_sw\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0\",\"name_en\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0\",\"content_sw\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC..<\\/p>\",\"content_en\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;<\\/p>\",\"file_en\":\"\\/uploads\\/press_releases\\/en1627887854-INSTITUTE OF CONSTRUCTION TECHNOLOGY Website (1).docx\",\"file_sw\":\"\\/uploads\\/press_releases\\/sw1627887854-INSTITUTE OF CONSTRUCTION TECHNOLOGY Website.docx\",\"active\":1,\"slug\":\"mapitio-ya-kikao-kazi-cha-utendaji-wa-TPSC-2\",\"user_id\":1,\"created_at\":\"2021-08-02T07:04:15.000000Z\",\"updated_at\":\"2021-09-14T10:52:38.000000Z\"}', '2021-09-14 07:53:02', '2021-09-14 07:53:02'),
(164, 1, 'Notice', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/notices', '{\"name_sw\":\"notice kubwa\",\"name_en\":\"big notice\",\"content_sw\":\"<p>lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;<\\/p>\",\"content_en\":\"<p>lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;lot of texts&nbsp;<\\/p>\",\"active\":\"1\",\"file_sw\":\"\\/uploads\\/notices\\/sw1631616860-_Motion Design School Courses mod AF.docx\",\"file_en\":\"\\/uploads\\/notices\\/en1631616860-_Motion Design School Courses mod AF.docx\",\"user_id\":1,\"slug\":\"big-notice\"}', '2021-09-14 07:54:20', '2021-09-14 07:54:20');
INSERT INTO `timelines` (`id`, `actor`, `object`, `verb`, `ip`, `url`, `content`, `created_at`, `updated_at`) VALUES
(165, 1, 'DocumentCategory', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/document-categories', '{\"title_sw\":\"Viwanja kupanda bei\",\"title_en\":\"Land prices shooting up\",\"slug\":\"land-prices-shooting-up\"}', '2021-09-14 09:36:38', '2021-09-14 09:36:38'),
(166, 1, 'DocumentCategory', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/document-categories', '{\"title_sw\":\"Mission and Vision\",\"title_en\":\"Real Possibilities on Enhancement of the Achievable Estimates\",\"slug\":\"real-possibilities-on-enhancement-of-the-achievable-estimates\"}', '2021-09-14 09:38:57', '2021-09-14 09:38:57'),
(167, 1, 'SuggestionCategory', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/suggestion-categories', '{\"title_sw\":\"land prices\",\"title_en\":\"thamani\",\"slug\":\"thamani\"}', '2021-09-14 09:41:25', '2021-09-14 09:41:25'),
(168, 1, 'SuggestionCategory', 'destroy', '127.0.0.1', 'http://127.0.0.1:8000/cms/suggestion-categories/1', '{\"id\":1,\"title_sw\":\"land prices\",\"title_en\":\"thamani\",\"slug\":\"thamani\",\"active\":1,\"created_at\":\"2021-09-14T12:41:25.000000Z\",\"updated_at\":\"2021-09-14T12:41:25.000000Z\",\"featured\":0}', '2021-09-14 09:54:35', '2021-09-14 09:54:35'),
(169, 1, 'SuggestionCategory', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/suggestion-categories', '{\"title_sw\":\"good things\",\"title_en\":\"mambo mazuri\",\"slug\":\"mambo-mazuri\"}', '2021-09-14 09:54:52', '2021-09-14 09:54:52'),
(170, 1, 'SuggestionCategory', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/suggestion-categories', '{\"title_sw\":\"good things\",\"title_en\":\"mambo mazuri\",\"slug\":\"mambo-mazuri-2\"}', '2021-09-14 09:54:55', '2021-09-14 09:54:55'),
(171, 1, 'SuggestionCategory', 'destroy', '127.0.0.1', 'http://127.0.0.1:8000/cms/suggestion-categories/2', '{\"id\":2,\"title_sw\":\"good things\",\"title_en\":\"mambo mazuri\",\"slug\":\"mambo-mazuri\",\"active\":1,\"created_at\":\"2021-09-14T12:54:52.000000Z\",\"updated_at\":\"2021-09-14T12:54:52.000000Z\",\"featured\":0}', '2021-09-14 09:55:07', '2021-09-14 09:55:07'),
(172, 1, 'SuggestionCategory', 'destroy', '127.0.0.1', 'http://127.0.0.1:8000/cms/suggestion-categories/3', '{\"id\":3,\"title_sw\":\"good things\",\"title_en\":\"mambo mazuri\",\"slug\":\"mambo-mazuri-2\",\"active\":1,\"created_at\":\"2021-09-14T12:54:55.000000Z\",\"updated_at\":\"2021-09-14T12:54:55.000000Z\",\"featured\":0}', '2021-09-14 09:55:14', '2021-09-14 09:55:14'),
(173, 1, 'SuggestionCategory', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/suggestion-categories', '{\"title_sw\":\"mambo mazuri\",\"title_en\":\"good things\",\"slug\":\"good-things\"}', '2021-09-14 09:55:34', '2021-09-14 09:55:34'),
(174, 1, 'SuggestionCategory', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/suggestion-categories/4', '{\"id\":4,\"title_sw\":\"mambo mazuri\",\"title_en\":\"good things\",\"slug\":\"good-things\",\"active\":\"0\",\"created_at\":\"2021-09-14T12:55:34.000000Z\",\"updated_at\":\"2021-09-14T12:55:34.000000Z\",\"featured\":0}', '2021-09-14 10:10:32', '2021-09-14 10:10:32'),
(175, 1, 'SuggestionCategory', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/suggestion-categories/4', '{\"id\":4,\"title_sw\":\"mambo mazuri\",\"title_en\":\"good things\",\"slug\":\"good-things\",\"active\":\"0\",\"created_at\":\"2021-09-14T12:55:34.000000Z\",\"updated_at\":\"2021-09-14T13:10:32.000000Z\",\"featured\":0}', '2021-09-14 10:10:34', '2021-09-14 10:10:34'),
(176, 1, 'SuggestionCategory', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/suggestion-categories/4', '{\"id\":4,\"title_sw\":\"mambo mazuri\",\"title_en\":\"good things\",\"slug\":\"good-things\",\"active\":\"1\",\"created_at\":\"2021-09-14T12:55:34.000000Z\",\"updated_at\":\"2021-09-14T13:10:32.000000Z\",\"featured\":0}', '2021-09-14 10:10:52', '2021-09-14 10:10:52'),
(177, 1, 'SuggestionCategory', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/suggestion-categories/4', '{\"id\":4,\"title_sw\":\"mambo mazuri\",\"title_en\":\"good things\",\"slug\":\"good-things\",\"active\":\"0\",\"created_at\":\"2021-09-14T12:55:34.000000Z\",\"updated_at\":\"2021-09-14T13:10:52.000000Z\",\"featured\":0}', '2021-09-14 10:11:13', '2021-09-14 10:11:13'),
(178, 1, 'SuggestionCategory', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/suggestion-categories', '{\"title_sw\":\"Kuhusu Sisi\",\"title_en\":\"IKULU Tanzania\",\"active\":\"1\",\"slug\":\"ikulu-tanzania\"}', '2021-09-14 10:19:14', '2021-09-14 10:19:14'),
(179, 1, 'SuggestionCategory', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/suggestion-categories', '{\"title_sw\":\"Kwanini Sisi\",\"title_en\":\"E-Libraly\",\"active\":\"1\",\"slug\":\"e-libraly\"}', '2021-09-14 10:19:35', '2021-09-14 10:19:35'),
(180, 1, 'SuggestionCategory', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/suggestion-categories/5', '{\"id\":5,\"title_sw\":\"Kuhusu Sisi\",\"title_en\":\"IKULU Tanzania\",\"slug\":\"ikulu-tanzania\",\"active\":\"1\",\"created_at\":\"2021-09-14T13:19:14.000000Z\",\"updated_at\":\"2021-09-14T13:19:35.000000Z\",\"featured\":0}', '2021-09-14 10:20:33', '2021-09-14 10:20:33'),
(181, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":100,\"keyword\":\"lbl_site_title_short \",\"en\":\"MLHHSD\",\"sw\":\"MLHHSD\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-08-04T10:00:33.000000Z\"}', '2021-09-16 04:56:42', '2021-09-16 04:56:42'),
(182, 1, 'Seo', 'store', '127.0.0.1', 'http://localhost:8000/cms/seo', '{\"keywords_sw\":\"Tovuti,serikali\",\"keywords_en\":\"Government,website\",\"content_sw\":\"Tovuti ya Serikali\",\"content_en\":\"Government Website\",\"recaptcha_site_key\":\"6LdK9nIcAAAAAKCjCMNVoNtob9Shvmx7Xkj1qxHY\",\"recaptcha_secret_key\":\"6LdK9nIcAAAAAD_MZovQUsH8YNeMtcrwXBX3YWWG\"}', '2021-09-20 03:56:59', '2021-09-20 03:56:59'),
(183, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":5,\"keyword\":\"lbl_region\",\"en\":\"Region\",\"sw\":\"Mkoa\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2021-09-20 04:19:25', '2021-09-20 04:19:25'),
(184, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":11,\"keyword\":\"lbl_region_offices\",\"en\":\"Ministry of Lands Offices\",\"sw\":\"Ofisi za Wizara ya Ardhi\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2021-09-20 04:19:25', '2021-09-20 04:19:25'),
(185, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Ofisi Zetu\",\"title_en\":\"Our Offices\",\"link\":\"1\",\"url_external\":null,\"url\":\"offices\",\"position\":14}', '2021-09-20 04:21:04', '2021-09-20 04:21:04'),
(186, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":262,\"keyword\":\"lbl_university_life\",\"en\":\"University Life\",\"sw\":\"Maisha Chuoni\",\"created_at\":\"2021-06-17T16:46:44.000000Z\",\"updated_at\":\"2021-06-17T16:46:44.000000Z\"}', '2021-09-20 04:32:09', '2021-09-20 04:32:09'),
(187, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":263,\"keyword\":\"lbl_sub_university_life\",\"en\":\"Overall in Here\",\"sw\":\"Maisha kwa Ujumla\",\"created_at\":\"2021-06-17T16:46:44.000000Z\",\"updated_at\":\"2021-06-17T16:46:44.000000Z\"}', '2021-09-20 04:32:09', '2021-09-20 04:32:09'),
(188, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":1,\"keyword\":\"lbl_site_title\",\"en\":\"Ministry of Lands, Housing and Human Settlements Development\",\"sw\":\"Wizara ya Ardhi, Nyumba na Maendeleo ya Makazi\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-08-06T11:57:45.000000Z\"}', '2021-09-20 04:32:09', '2021-09-20 04:32:09'),
(189, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":99,\"keyword\":\"lbl_content_maintained \",\"en\":\"Content Maintained by Ministry of Lands, Housing and Human Settlements Development\",\"sw\":\"Huendeshwa na Wizara ya Ardhi, Nyumba na Maendeleo ya Makazi\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-08-04T10:01:51.000000Z\"}', '2021-09-20 04:32:09', '2021-09-20 04:32:09'),
(190, 1, 'Administration', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration/1', '{\"id\":1,\"salutation_en\":\"Hon.\",\"salutation_sw\":\"Mh.\",\"fullname\":\"Firstname Lastname...\",\"position\":\"1\",\"title_sw\":\"Waziri\",\"title_en\":\"Minister\",\"content_sw\":null,\"content_en\":null,\"photo_url\":\"fd9efb0db8bd232eb60d8c5941205733.png\",\"email\":null,\"phone\":null,\"created_at\":\"2021-07-30T12:38:34.000000Z\",\"updated_at\":\"2021-07-30T12:52:50.000000Z\",\"slug\":\"firstname-lastname\"}', '2021-09-20 04:49:00', '2021-09-20 04:49:00'),
(191, 1, 'Administration', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration/1', '{\"id\":1,\"salutation_en\":\"Hon.\",\"salutation_sw\":\"Mh.\",\"fullname\":\"William Vangimembe Lukuvi\",\"position\":\"1\",\"title_sw\":\"Waziri\",\"title_en\":\"Minister\",\"content_sw\":null,\"content_en\":null,\"photo_url\":\"fd9efb0db8bd232eb60d8c5941205733.png\",\"email\":null,\"phone\":null,\"created_at\":\"2021-07-30T12:38:34.000000Z\",\"updated_at\":\"2021-09-20T07:49:00.000000Z\",\"slug\":\"firstname-lastname\"}', '2021-09-20 04:50:07', '2021-09-20 04:50:07'),
(192, 1, 'RegionalOffice', 'update', '127.0.0.1', 'http://localhost:8000/cms/regional_office/1', '{\"id\":1,\"name_en\":\"HeadQuarters\",\"name_sw\":\"Makao Makuu\",\"physical_address_sw\":\"S.L.P 1432,\\r\\nDododma, Tanzania\",\"physical_address_en\":\"P.O.BOX 1432,\\r\\nDododma, Tanzania\",\"phone\":\"+255-282 560333\",\"toll_free\":\"255 222 15612\",\"fax\":\"+255-282 560333\",\"email\":\"frednand.masasi@ega.go.tz\",\"content_sw\":null,\"content_en\":null,\"photo_url\":null,\"latitude\":null,\"longitude\":null,\"slug\":\"tanzania-national-business-council\",\"headquarter\":\"1\",\"used_as\":\"1\",\"created_at\":\"2021-07-28T14:05:10.000000Z\",\"updated_at\":\"2021-08-09T15:52:30.000000Z\"}', '2021-09-20 05:10:05', '2021-09-20 05:10:05'),
(193, 1, 'SuggestionCategory', 'update', '127.0.0.1', 'http://localhost:8000/cms/suggestion-categories/5', '{\"id\":5,\"title_sw\":\"Maboresho Sera ya Ardhi\",\"title_en\":\"Land Policy Enhancement\",\"slug\":\"ikulu-tanzania\",\"active\":\"1\",\"created_at\":\"2021-09-14T13:19:14.000000Z\",\"updated_at\":\"2021-09-14T13:20:33.000000Z\",\"featured\":0}', '2021-09-20 06:07:12', '2021-09-20 06:07:12'),
(194, 1, 'SuggestionCategory', 'update', '127.0.0.1', 'http://localhost:8000/cms/suggestion-categories/5', '{\"id\":5,\"title_sw\":\"Maboresho Sera ya Ardhi\",\"title_en\":\"Land Policy Enhancement\",\"slug\":\"ikulu-tanzania\",\"active\":\"1\",\"created_at\":\"2021-09-14T13:19:14.000000Z\",\"updated_at\":\"2021-09-20T09:07:12.000000Z\",\"featured\":0}', '2021-09-20 06:07:54', '2021-09-20 06:07:54'),
(195, 1, 'SuggestionCategory', 'update', '127.0.0.1', 'http://localhost:8000/cms/suggestion-categories/4', '{\"id\":4,\"title_sw\":\"Land Prices\",\"title_en\":\"Bei ya Viwanja\",\"slug\":\"good-things\",\"active\":\"0\",\"created_at\":\"2021-09-14T12:55:34.000000Z\",\"updated_at\":\"2021-09-14T13:11:13.000000Z\",\"featured\":0}', '2021-09-20 06:08:39', '2021-09-20 06:08:39'),
(196, 1, 'SuggestionCategory', 'update', '127.0.0.1', 'http://localhost:8000/cms/suggestion-categories/6', '{\"id\":6,\"title_sw\":\"Kigamboni Project\",\"title_en\":\"Mradi wa Kigamboni\",\"slug\":\"e-libraly\",\"active\":\"1\",\"created_at\":\"2021-09-14T13:19:35.000000Z\",\"updated_at\":\"2021-09-14T13:20:33.000000Z\",\"featured\":0}', '2021-09-20 06:09:20', '2021-09-20 06:09:20'),
(197, 1, 'SuggestionCategory', 'update', '127.0.0.1', 'http://localhost:8000/cms/suggestion-categories/6', '{\"id\":6,\"title_sw\":\"Kigamboni Project\",\"title_en\":\"Mradi wa Kigamboni\",\"summary_en\":\"Mradi wa Kigamboni ni Mpya sana, tungependa kujua ni namna gani bora ya kuuendeleza na kuukuza.\\r\\nTafadhali changia kadiri unavyoona ni vyema!?\",\"summary_sw\":\"Mradi wa Kigamboni ni Mpya sana, tungependa kujua ni namna gani bora ya kuuendeleza na kuukuza.\\r\\nTafadhali changia kadiri unavyoona ni vyema!?\",\"slug\":\"e-libraly\",\"active\":\"1\",\"created_at\":\"2021-09-14T13:19:35.000000Z\",\"updated_at\":\"2021-09-20T09:09:20.000000Z\",\"featured\":0}', '2021-09-20 06:54:24', '2021-09-20 06:54:24'),
(198, 1, 'SuggestionCategory', 'update', '127.0.0.1', 'http://localhost:8000/cms/suggestion-categories/6', '{\"id\":6,\"title_sw\":\"Kigamboni Project\",\"title_en\":\"Mradi wa Kigamboni\",\"summary_en\":\"Mradi wa Kigamboni ni Mpya sana, tungependa kujua ni namna gani bora ya kuuendeleza na kuukuza.\\r\\nTafadhali changia kadiri unavyoona ni vyema!?\",\"summary_sw\":\"Mradi wa Kigamboni ni Mpya sana, tungependa kujua ni namna gani bora ya kuuendeleza na kuukuza.\\r\\nTafadhali changia kadiri unavyoona ni vyema!?\",\"slug\":\"e-libraly\",\"active\":\"1\",\"created_at\":\"2021-09-14T13:19:35.000000Z\",\"updated_at\":\"2021-09-20T09:54:24.000000Z\",\"featured\":0}', '2021-09-20 07:45:23', '2021-09-20 07:45:23'),
(199, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":295,\"keyword\":\"lbl_suggestion_box\",\"en\":\"Suggestion Box\",\"sw\":\"Sanduku La Maoni\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2021-09-20 08:59:54', '2021-09-20 08:59:54'),
(200, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":296,\"keyword\":\"lbl_add_suggestion\",\"en\":\"Add your suggestion\",\"sw\":\"Toa maoni yako\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2021-09-20 08:59:54', '2021-09-20 08:59:54'),
(201, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":297,\"keyword\":\"lbL_suggestion_success\",\"en\":\"Success! Your Suggestion has been Submitted.\",\"sw\":\"Imefanikiwa! Maoni yako yamewasilishwa.\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2021-09-20 08:59:54', '2021-09-20 08:59:54'),
(202, 1, 'SuggestionCategory', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/suggestion-categories/4', '{\"id\":4,\"title_sw\":\"Land Prices\",\"title_en\":\"Bei ya Viwanja\",\"summary_en\":null,\"summary_sw\":null,\"slug\":\"good-things\",\"active\":0,\"created_at\":\"2021-09-14T12:55:34.000000Z\",\"updated_at\":\"2021-09-20T09:08:39.000000Z\",\"featured\":0}', '2021-09-20 09:38:16', '2021-09-20 09:38:16'),
(203, 1, 'SuggestionCategory', 'store', '127.0.0.1', 'http://localhost:8000/cms/suggestion-categories', '{\"title_sw\":\"Demo Menu\",\"title_en\":\"Demo News\",\"summary_sw\":\"jyhtrfuyigkh\",\"summary_en\":\"uyfgui\",\"active\":\"1\",\"slug\":\"demo-news\"}', '2021-09-20 09:42:19', '2021-09-20 09:42:19'),
(204, 1, 'SuggestionCategory', 'update', '127.0.0.1', 'http://localhost:8000/cms/suggestion-categories/7', '{\"id\":7,\"title_sw\":\"Demo Menu\",\"title_en\":\"Demo News\",\"summary_en\":\"uyfgui\",\"summary_sw\":\"jyhtrfuyigkh\",\"slug\":\"demo-news\",\"active\":\"0\",\"created_at\":\"2021-09-20T12:42:19.000000Z\",\"updated_at\":\"2021-09-20T12:42:19.000000Z\",\"featured\":0}', '2021-09-20 09:42:28', '2021-09-20 09:42:28'),
(205, 1, 'SuggestionCategory', 'update', '127.0.0.1', 'http://localhost:8000/cms/suggestion-categories/6', '{\"id\":6,\"title_sw\":\"Kigamboni Project\",\"title_en\":\"Mradi wa Kigamboni\",\"summary_en\":\"Mradi wa Kigamboni ni Mpya sana, tungependa kujua ni namna gani bora ya kuuendeleza na kuukuza.\\r\\nTafadhali changia kadiri unavyoona ni vyema!?\",\"summary_sw\":\"Mradi wa Kigamboni ni Mpya sana, tungependa kujua ni namna gani bora ya kuuendeleza na kuukuza.\\r\\nTafadhali changia kadiri unavyoona ni vyema!?\",\"slug\":\"e-libraly\",\"active\":\"1\",\"created_at\":\"2021-09-14T13:19:35.000000Z\",\"updated_at\":\"2021-09-20T12:42:19.000000Z\",\"featured\":0}', '2021-09-20 09:42:42', '2021-09-20 09:42:42'),
(206, 1, 'SuggestionCategory', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/suggestion-categories/7', '{\"id\":7,\"title_sw\":\"Demo Menu\",\"title_en\":\"Demo News\",\"summary_en\":\"uyfgui\",\"summary_sw\":\"jyhtrfuyigkh\",\"slug\":\"demo-news\",\"active\":0,\"created_at\":\"2021-09-20T12:42:19.000000Z\",\"updated_at\":\"2021-09-20T12:42:28.000000Z\",\"featured\":0}', '2021-09-20 09:42:47', '2021-09-20 09:42:47'),
(207, 1, 'GoogleMap', 'update', '127.0.0.1', 'http://localhost:8000/cms/googlemaps/1', '{\"id\":1,\"url\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3961.605512548307!2d39.29493191477236!3d-6.817740595072519!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x185c4b19cb0b316f%3A0xe8315a1f8eef0805!2sMinistry%20of%20Lands%20and%20Human%20Settlements!5e0!3m2!1sen!2stz!4v1632142237242!5m2!1sen!2stz\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\"><\\/iframe>\",\"user_id\":1,\"created_at\":\"2021-07-01T08:13:01.000000Z\",\"updated_at\":\"2021-08-09T16:17:30.000000Z\"}', '2021-09-20 09:51:02', '2021-09-20 09:51:02'),
(208, 1, 'RegionalOffice', 'update', '127.0.0.1', 'http://localhost:8000/cms/regional_office/1', '{\"id\":1,\"name_en\":\"Ministry of Lands HeadQuarters\",\"name_sw\":\"Makao Makuu ya Wizara ya Ardhi\",\"physical_address_sw\":\"S.L.P 1432,\\r\\nDododma, Tanzania\",\"physical_address_en\":\"P.O.BOX 1432,\\r\\nDododma, Tanzania\",\"phone\":\"+255-282 560333\",\"toll_free\":\"255 222 15612\",\"fax\":\"+255-282 560333\",\"email\":\"frednand.masasi@ega.go.tz\",\"content_sw\":null,\"content_en\":null,\"photo_url\":null,\"latitude\":null,\"longitude\":null,\"slug\":\"tanzania-national-business-council\",\"headquarter\":\"1\",\"used_as\":\"1\",\"created_at\":\"2021-07-28T14:05:10.000000Z\",\"updated_at\":\"2021-09-20T08:10:05.000000Z\"}', '2021-09-20 09:52:15', '2021-09-20 09:52:15'),
(209, 1, 'RegionalOffice', 'update', '127.0.0.1', 'http://localhost:8000/cms/regional_office/1', '{\"id\":1,\"name_en\":\"Ministry of Lands HeadQuarters\",\"name_sw\":\"Makao Makuu ya Wizara ya Ardhi\",\"physical_address_sw\":\"S.L.P 2908,\\r\\nDododma, Tanzania\",\"physical_address_en\":\"P.O.BOX 2908,\\r\\nDododma, Tanzania\",\"phone\":\"+255-282 560333\",\"toll_free\":\"255 222 15612\",\"fax\":\"+255-282 560333\",\"email\":\"frednand.masasi@ega.go.tz\",\"content_sw\":null,\"content_en\":null,\"photo_url\":null,\"latitude\":null,\"longitude\":null,\"slug\":\"tanzania-national-business-council\",\"headquarter\":\"1\",\"used_as\":\"1\",\"created_at\":\"2021-07-28T14:05:10.000000Z\",\"updated_at\":\"2021-09-20T12:52:15.000000Z\"}', '2021-09-20 09:52:58', '2021-09-20 09:52:58'),
(210, 1, 'RegionalOffice', 'update', '127.0.0.1', 'http://localhost:8000/cms/regional_office/1', '{\"id\":1,\"name_en\":\"Ministry of Lands HeadQuarters\",\"name_sw\":\"Makao Makuu ya Wizara ya Ardhi\",\"physical_address_sw\":\"S.L.P 2908,\\r\\nDododma, Tanzania\",\"physical_address_en\":\"P.O.BOX 2908,\\r\\nDododma, Tanzania\",\"phone\":\"+255-282 560333\",\"toll_free\":\"255 222 15612\",\"fax\":\"+255-282 560333\",\"email\":\"ps@lands.go.tz\",\"content_sw\":null,\"content_en\":null,\"photo_url\":null,\"latitude\":null,\"longitude\":null,\"slug\":\"tanzania-national-business-council\",\"headquarter\":\"1\",\"used_as\":\"1\",\"created_at\":\"2021-07-28T14:05:10.000000Z\",\"updated_at\":\"2021-09-20T12:52:58.000000Z\"}', '2021-09-20 09:53:47', '2021-09-20 09:53:47'),
(211, 1, 'SuggestionCategory', 'update', '127.0.0.1', 'http://localhost:8000/cms/suggestion-categories/6', '{\"id\":6,\"title_sw\":\"Kigamboni Project\",\"title_en\":\"Mradi wa Kigamboni\",\"summary_en\":\"Mradi wa Kigamboni ni Mpya sana, tungependa kujua ni namna gani bora ya kuuendeleza na kuukuza.\\r\\nTafadhali changia kadiri unavyoona ni vyema!?\",\"summary_sw\":\"Mradi wa Kigamboni ni Mpya sana, tungependa kujua ni namna gani bora ya kuuendeleza na kuukuza.\\r\\nTafadhali changia kadiri unavyoona ni vyema!?\",\"slug\":\"e-libraly\",\"active\":\"0\",\"created_at\":\"2021-09-14T13:19:35.000000Z\",\"updated_at\":\"2021-09-20T12:42:42.000000Z\",\"featured\":0}', '2021-09-21 04:09:42', '2021-09-21 04:09:42'),
(212, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Media Center\",\"title_en\":\"Media Center\",\"link\":\"1\",\"url_external\":null,\"url\":\"#\",\"position\":15}', '2021-09-21 15:01:43', '2021-09-21 15:01:43'),
(213, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Vyombo vya Habari\",\"title_en\":\"Press Releases\",\"link\":\"1\",\"url_external\":null,\"url\":\"press-releases\",\"position\":16}', '2021-09-21 15:02:13', '2021-09-21 15:02:13'),
(214, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Habari\",\"title_en\":\"News\",\"link\":\"1\",\"url_external\":null,\"url\":\"news\",\"position\":17}', '2021-09-21 15:02:40', '2021-09-21 15:02:40'),
(215, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Matukio\",\"title_en\":\"Events\",\"link\":\"1\",\"url_external\":null,\"url\":\"events\",\"position\":18}', '2021-09-21 15:02:57', '2021-09-21 15:02:57'),
(216, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Matangazo\",\"title_en\":\"Announcements\",\"link\":\"1\",\"url_external\":null,\"url\":\"announcements\",\"position\":19}', '2021-09-21 15:03:28', '2021-09-21 15:03:28'),
(217, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Bodi ya Wakurugenzi\",\"title_en\":\"Board Members\",\"link\":\"1\",\"url_external\":null,\"url\":\"administration\\/board-members\",\"position\":20}', '2021-09-21 15:04:36', '2021-09-21 15:04:36'),
(218, 1, 'MenuItem', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/menu-items/9', '{\"id\":9,\"title_sw\":\"Majadiliano\",\"title_en\":\"Dialogues\",\"status\":1,\"menu_id\":3,\"url\":\"#\",\"url_external\":null,\"link\":1,\"parent\":0,\"position\":2,\"has_sidebar\":0,\"created_at\":\"2021-07-28T09:07:04.000000Z\",\"updated_at\":\"2021-09-21T18:05:09.000000Z\"}', '2021-09-21 15:05:26', '2021-09-21 15:05:26'),
(219, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":13,\"keyword\":\"lbl_faq\",\"en\":\"Frequently Asked Questions\",\"sw\":\"Maswali Yaulizwayo Mara kwa Mara\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2021-09-21 15:22:22', '2021-09-21 15:22:22'),
(220, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":14,\"keyword\":\"lbl_faq_short\",\"en\":\"FAQs\",\"sw\":\"MMM\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2021-09-21 15:22:22', '2021-09-21 15:22:22'),
(221, 1, 'SuggestionCategory', 'update', '127.0.0.1', 'http://localhost:8000/cms/suggestion-categories/6', '{\"id\":6,\"title_sw\":\"Kigamboni Project\",\"title_en\":\"Mradi wa Kigamboni\",\"summary_en\":\"Mradi wa Kigamboni ni Mpya sana, tungependa kujua ni namna gani bora ya kuuendeleza na kuukuza.\\r\\nTafadhali changia kadiri unavyoona ni vyema!?\",\"summary_sw\":\"Mradi wa Kigamboni ni Mpya sana, tungependa kujua ni namna gani bora ya kuuendeleza na kuukuza.\\r\\nTafadhali changia kadiri unavyoona ni vyema!?\",\"slug\":\"e-libraly\",\"active\":\"1\",\"created_at\":\"2021-09-14T13:19:35.000000Z\",\"updated_at\":\"2021-09-21T07:09:42.000000Z\",\"featured\":0}', '2021-09-21 15:28:08', '2021-09-21 15:28:08'),
(222, 1, 'MenuItem', 'update', '127.0.0.1', 'http://localhost:8000/cms/menu-items/11', '{\"id\":11,\"title_sw\":\"Maoni\",\"title_en\":\"Suggestions\",\"status\":1,\"menu_id\":\"3\",\"url\":\"suggestions\",\"url_external\":null,\"link\":\"1\",\"parent\":0,\"position\":14,\"has_sidebar\":0,\"created_at\":\"2021-07-28T09:07:42.000000Z\",\"updated_at\":\"2021-09-21T18:06:52.000000Z\"}', '2021-09-21 15:30:38', '2021-09-21 15:30:38'),
(223, 1, 'Photo', 'store', '127.0.0.1', 'http://localhost:8000/cms/media', '{\"gallery_id\":1,\"content_sw\":\"restdhuj\",\"content_en\":\"tyghbmkl;\",\"status\":\"1\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"a64147600e6914bec2ccd489464313cc.jpeg\",\"mime\":\"images\\/jpeg\",\"slug\":\"a64147600e6914bec2ccd489464313cc-jpeg\"}', '2021-09-22 09:53:42', '2021-09-22 09:53:42'),
(224, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":294,\"keyword\":\"lbl_notice_board\",\"en\":\"Notice Board\",\"sw\":\"Taarifa Muhimu\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-08-06T11:57:45.000000Z\"}', '2021-09-26 07:38:31', '2021-09-26 07:38:31'),
(225, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":298,\"keyword\":\"lbl_notice\",\"en\":\"Notices\",\"sw\":\"Taarifa Muhimu\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2021-09-26 07:38:31', '2021-09-26 07:38:31'),
(226, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":54,\"keyword\":\"lbl_speeches\",\"en\":\"Speeches\",\"sw\":\"Hotuba\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2021-09-26 07:39:04', '2021-09-26 07:39:04'),
(227, 1, 'Notice', 'update', '127.0.0.1', 'http://localhost:8000/cms/notices/4', '{\"id\":4,\"name_sw\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0\",\"name_en\":\"Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC\\u00a0\",\"content_sw\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;<\\/p>\",\"content_en\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TPSC&nbsp;<\\/p>\",\"file_en\":\"\\/uploads\\/notices\\/en1632658411-DCEA_CHALLENGES.pdf\",\"file_sw\":\"\\/uploads\\/notices\\/sw1632658411-DCEA_CHALLENGES.pdf\",\"active\":\"1\",\"slug\":\"mapitio-ya-kikao-kazi-cha-utendaji-wa-TPSC\",\"user_id\":1,\"created_at\":\"2021-08-02T06:54:00.000000Z\",\"updated_at\":\"2021-08-02T06:54:00.000000Z\"}', '2021-09-26 09:13:31', '2021-09-26 09:13:31'),
(228, 1, 'Notice', 'update', '127.0.0.1', 'http://localhost:8000/cms/notices/4', '{\"id\":4,\"name_sw\":\"Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara\",\"name_en\":\"Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara\",\"content_sw\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;<\\/p>\\r\\n\\r\\n<p>Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"content_en\":\"<p>Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;<\\/p>\\r\\n\\r\\n<p>Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;<\\/p>\\r\\n\\r\\n<p>Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;<\\/p>\\r\\n\\r\\n<p>Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji wa Wizara&nbsp;<\\/p>\",\"file_en\":\"\\/uploads\\/notices\\/en1632658411-DCEA_CHALLENGES.pdf\",\"file_sw\":\"\\/uploads\\/notices\\/sw1632658411-DCEA_CHALLENGES.pdf\",\"active\":\"1\",\"slug\":\"mapitio-ya-kikao-kazi-cha-utendaji-wa-TPSC\",\"user_id\":1,\"created_at\":\"2021-08-02T06:54:00.000000Z\",\"updated_at\":\"2021-09-26T12:13:31.000000Z\"}', '2021-09-26 09:14:18', '2021-09-26 09:14:18'),
(229, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":97,\"keyword\":\"lbl_ega\",\"en\":\"e-Government Authority\",\"sw\":\"Mamlaka ya Serikali Mtandao\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-06-13T09:19:37.000000Z\"}', '2021-10-04 07:14:51', '2021-10-04 07:14:51'),
(230, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":100,\"keyword\":\"lbl_site_title_short \",\"en\":\"TIC\",\"sw\":\"TIC\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-09-16T07:56:42.000000Z\"}', '2021-10-04 07:14:51', '2021-10-04 07:14:51'),
(231, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":283,\"keyword\":\"lbl_administration\",\"en\":\"Administration\",\"sw\":\"Utawala\",\"created_at\":\"2021-08-06T14:37:55.000000Z\",\"updated_at\":\"2021-08-06T14:37:55.000000Z\"}', '2021-10-04 07:17:21', '2021-10-04 07:17:21'),
(232, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":1,\"keyword\":\"lbl_site_title\",\"en\":\"Tanzania Investment Centre\",\"sw\":\"Wizara ya Ardhi, Nyumba na Maendeleo ya Makazi\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-09-20T07:32:09.000000Z\"}', '2021-10-04 07:17:21', '2021-10-04 07:17:21'),
(233, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":11,\"keyword\":\"lbl_region_offices\",\"en\":\"TIC Offices\",\"sw\":\"Ofisi za TICi\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-09-20T07:19:25.000000Z\"}', '2021-10-04 07:17:21', '2021-10-04 07:17:21'),
(234, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":99,\"keyword\":\"lbl_content_maintained \",\"en\":\"Content Maintained by Tanzania Investment Centre\",\"sw\":\"Huendeshwa na Wizara ya Ardhi, Nyumba na Maendeleo ya Makazi\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-09-20T07:32:09.000000Z\"}', '2021-10-04 07:17:21', '2021-10-04 07:17:21'),
(235, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":1,\"keyword\":\"lbl_site_title\",\"en\":\"Tanzania Investment Centre\",\"sw\":\"Kituo cha Uwekezaji Tanzania\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-10-04T10:17:21.000000Z\"}', '2021-10-04 07:20:28', '2021-10-04 07:20:28'),
(236, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":58,\"keyword\":\"lbl_about_us\",\"en\":\"About us\",\"sw\":\"Kuhusu sisi\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2021-10-04 07:20:28', '2021-10-04 07:20:28'),
(237, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":99,\"keyword\":\"lbl_content_maintained \",\"en\":\"Content Maintained by Tanzania Investment Centre\",\"sw\":\"Huendeshwa na Kituo cha Uwekezaji Tanzania\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-10-04T10:17:21.000000Z\"}', '2021-10-04 07:20:28', '2021-10-04 07:20:28'),
(238, 1, 'Reason', 'store', '127.0.0.1', 'http://localhost:8000/cms/reasons', '{\"title_en\":\"Demo Reason en\",\"title_sw\":\"Demo Reason sw\",\"content_en\":\"<p>Demo Reason en&nbsp;Demo Reason en<\\/p>\",\"content_sw\":\"<p>Demo Reason sw&nbsp;Demo Reason sw&nbsp;<\\/p>\",\"active\":\"1\",\"photo_url\":\"ae8d189224f348016725cddbd3d154d9.jpeg\",\"icon\":\"icon-1633350731-logo.jpg\",\"slug\":\"demo-reason-en\"}', '2021-10-04 09:32:11', '2021-10-04 09:32:11'),
(239, 1, 'Reason', 'update', '127.0.0.1', 'http://localhost:8000/cms/reasons/1', '{\"id\":1,\"title_sw\":\"Demo Reason sww\",\"title_en\":\"Demo Reason enn\",\"content_sw\":\"<p>Demo Reason sw&nbsp;Demo Reason sw&nbsp;<\\/p>\",\"content_en\":\"<p>Demo Reason en&nbsp;Demo Reason en<\\/p>\",\"photo_url\":\"ae8d189224f348016725cddbd3d154d9.jpeg\",\"icon\":\"icon-1633350731-logo.jpg\",\"slug\":\"demo-reason-en\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-04T12:32:11.000000Z\",\"updated_at\":\"2021-10-04T12:32:11.000000Z\"}', '2021-10-04 09:32:48', '2021-10-04 09:32:48'),
(240, 1, 'Reason', 'update', '127.0.0.1', 'http://localhost:8000/cms/reasons/1', '{\"id\":1,\"title_sw\":\"Demo Reason sw\",\"title_en\":\"Demo Reason en\",\"content_sw\":\"<p>Demo Reason sw&nbsp;Demo Reason sw&nbsp;<\\/p>\",\"content_en\":\"<p>Demo Reason en&nbsp;Demo Reason en<\\/p>\",\"photo_url\":\"ae8d189224f348016725cddbd3d154d9.jpeg\",\"icon\":\"icon-1633350731-logo.jpg\",\"slug\":\"demo-reason-en\",\"active\":\"0\",\"user_id\":0,\"created_at\":\"2021-10-04T12:32:11.000000Z\",\"updated_at\":\"2021-10-04T12:32:48.000000Z\"}', '2021-10-04 09:33:16', '2021-10-04 09:33:16'),
(241, 1, 'Reason', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/reasons/1', '{\"id\":1,\"title_sw\":\"Demo Reason sw\",\"title_en\":\"Demo Reason en\",\"content_sw\":\"<p>Demo Reason sw&nbsp;Demo Reason sw&nbsp;<\\/p>\",\"content_en\":\"<p>Demo Reason en&nbsp;Demo Reason en<\\/p>\",\"photo_url\":\"ae8d189224f348016725cddbd3d154d9.jpeg\",\"icon\":\"icon-1633350731-logo.jpg\",\"slug\":\"demo-reason-en\",\"active\":0,\"user_id\":0,\"created_at\":\"2021-10-04T12:32:11.000000Z\",\"updated_at\":\"2021-10-04T12:33:16.000000Z\"}', '2021-10-04 09:38:00', '2021-10-04 09:38:00'),
(242, 1, 'Sector', 'store', '127.0.0.1', 'http://localhost:8000/cms/sectors', '{\"title_en\":\"Agriculture\",\"title_sw\":\"Kilimo\",\"content_en\":\"<p>Agriculture&nbsp;Agriculture&nbsp;Agriculture&nbsp;<\\/p>\",\"content_sw\":\"<p>Kilimo&nbsp;Kilimo&nbsp;Kilimo&nbsp;Kilimo&nbsp;<\\/p>\",\"active\":\"1\",\"photo_url\":\"e27e9c9530e123b53fc5ed957d68ce27.png\",\"icon\":\"icon-1633351581-logo2.png\",\"slug\":\"agriculture\"}', '2021-10-04 09:46:21', '2021-10-04 09:46:21'),
(243, 1, 'Sector', 'update', '127.0.0.1', 'http://localhost:8000/cms/sectors/1', '{\"id\":1,\"title_sw\":\"Kilimo\",\"title_en\":\"Agriculture\",\"content_sw\":\"<p>Kilimo&nbsp;Kilimo&nbsp;Kilimo&nbsp;Kilimo&nbsp;<\\/p>\",\"content_en\":\"<p>Agriculture&nbsp;Agriculture&nbsp;Agriculture&nbsp;<\\/p>\",\"photo_url\":\"e27e9c9530e123b53fc5ed957d68ce27.png\",\"icon\":\"icon-1633351581-logo2.png\",\"slug\":\"agriculture\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-04T12:46:21.000000Z\",\"updated_at\":\"2021-10-04T12:46:21.000000Z\"}', '2021-10-04 09:48:00', '2021-10-04 09:48:00'),
(244, 1, 'Sector', 'update', '127.0.0.1', 'http://localhost:8000/cms/sectors/1', '{\"id\":1,\"title_sw\":\"Kilimo\",\"title_en\":\"Agriculture\",\"content_sw\":\"<p>Kilimo&nbsp;Kilimo&nbsp;Kilimo&nbsp;Kilimo&nbsp;<\\/p>\",\"content_en\":\"<p>Agriculture&nbsp;Agriculture&nbsp;Agriculture&nbsp;<\\/p>\",\"photo_url\":\"e27e9c9530e123b53fc5ed957d68ce27.png\",\"icon\":\"icon-1633351581-logo2.png\",\"slug\":\"agriculture\",\"active\":\"0\",\"user_id\":0,\"created_at\":\"2021-10-04T12:46:21.000000Z\",\"updated_at\":\"2021-10-04T12:46:21.000000Z\"}', '2021-10-04 09:48:10', '2021-10-04 09:48:10'),
(245, 1, 'Guide', 'store', '127.0.0.1', 'http://localhost:8000/cms/guides', '{\"title_en\":\"Transportation Guide\",\"title_sw\":\"Transportation Guide sw\",\"content_en\":\"<p>Transportation Guide&nbsp;Transportation Guide&nbsp;Transportation Guide<\\/p>\",\"content_sw\":\"<p>Transportation Guide&nbsp;Transportation Guide&nbsp;Transportation Guide<\\/p>\",\"active\":\"1\",\"photo_url\":\"b33380fc16a134ca5752c7d92e4a3075.png\",\"slug\":\"transportation-guide\"}', '2021-10-04 09:59:23', '2021-10-04 09:59:23'),
(246, 1, 'Guide', 'update', '127.0.0.1', 'http://localhost:8000/cms/guides/1', '{\"id\":1,\"title_sw\":\"Transportation Guide sw\",\"title_en\":\"Transportation Guide\",\"content_sw\":\"<p>Transportation Guide&nbsp;Transportation Guide&nbsp;Transportation Guide<\\/p>\",\"content_en\":\"<p>Transportation Guide&nbsp;Transportation Guide&nbsp;Transportation Guide<\\/p>\",\"photo_url\":\"31b819323629849477187c59c75750fb.jpeg\",\"slug\":\"transportation-guide\",\"active\":\"0\",\"user_id\":0,\"created_at\":\"2021-10-04T12:59:23.000000Z\",\"updated_at\":\"2021-10-04T12:59:23.000000Z\"}', '2021-10-04 10:00:03', '2021-10-04 10:00:03'),
(247, 1, 'Guide', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/guides/1', '{\"id\":1,\"title_sw\":\"Transportation Guide sw\",\"title_en\":\"Transportation Guide\",\"content_sw\":\"<p>Transportation Guide&nbsp;Transportation Guide&nbsp;Transportation Guide<\\/p>\",\"content_en\":\"<p>Transportation Guide&nbsp;Transportation Guide&nbsp;Transportation Guide<\\/p>\",\"photo_url\":\"31b819323629849477187c59c75750fb.jpeg\",\"slug\":\"transportation-guide\",\"active\":0,\"user_id\":0,\"created_at\":\"2021-10-04T12:59:23.000000Z\",\"updated_at\":\"2021-10-04T13:00:03.000000Z\"}', '2021-10-04 10:00:18', '2021-10-04 10:00:18'),
(248, 1, 'Guide', 'store', '127.0.0.1', 'http://localhost:8000/cms/guides', '{\"title_en\":\"Investment Guide 1\",\"title_sw\":\"Investment Guide 1\",\"content_en\":\"<p>Investment Guide 1&nbsp;Investment Guide 1&nbsp;Investment Guide 1<\\/p>\",\"content_sw\":\"<p>Investment Guide 1&nbsp;Investment Guide 1&nbsp;Investment Guide 1<\\/p>\",\"active\":\"0\",\"photo_url\":\"ac1b2497aec3e21b5e164a36670f906b.jpeg\",\"slug\":\"investment-guide-1\"}', '2021-10-04 10:04:10', '2021-10-04 10:04:10'),
(249, 1, 'Guide', 'update', '127.0.0.1', 'http://localhost:8000/cms/guides/2', '{\"id\":2,\"title_sw\":\"Investment Guides 1\",\"title_en\":\"Investment Guides 1\",\"content_sw\":\"<p>Investment Guide 1&nbsp;Investment Guide 1&nbsp;Investment Guide 1<\\/p>\",\"content_en\":\"<p>Investment Guide 1&nbsp;Investment Guide 1&nbsp;Investment Guide 1<\\/p>\",\"photo_url\":\"ac1b2497aec3e21b5e164a36670f906b.jpeg\",\"slug\":\"investment-guide-1\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-04T13:04:10.000000Z\",\"updated_at\":\"2021-10-04T13:04:10.000000Z\"}', '2021-10-04 10:04:30', '2021-10-04 10:04:30'),
(250, 1, 'Story', 'store', '127.0.0.1', 'http://localhost:8000/cms/stories', '{\"title_en\":\"Vodacom Tanzania\",\"title_sw\":\"Vodacom Tanzania\",\"summary_en\":\"Vodacom Tanzania Summary\",\"summary_sw\":\"Vodacom Tanzania Summary\",\"content_en\":\"<p>Vodacom Tanzania Story Details<\\/p>\",\"content_sw\":\"<p>Vodacom Tanzania Story Details<\\/p>\",\"active\":\"0\",\"icon\":\"icon-1633355012-logo2.png\",\"slug\":\"vodacom-tanzania\"}', '2021-10-04 10:43:32', '2021-10-04 10:43:32'),
(251, 1, 'Story', 'update', '127.0.0.1', 'http://localhost:8000/cms/stories/1', '{\"id\":1,\"title_sw\":\"Vodacom Tanzania\",\"title_en\":\"Vodacom Tanzania\",\"summary_en\":\"Vodacom Tanzania Summary\",\"summary_sw\":\"Vodacom Tanzania Summary\",\"content_sw\":\"<p>Vodacom Tanzania Story Details<\\/p>\",\"content_en\":\"<p>Vodacom Tanzania Story Details<\\/p>\",\"icon\":\"icon-1633355012-logo2.png\",\"slug\":\"vodacom-tanzania\",\"active\":\"0\",\"user_id\":0,\"created_at\":\"2021-10-04T13:43:32.000000Z\",\"updated_at\":\"2021-10-04T13:43:32.000000Z\"}', '2021-10-04 10:43:44', '2021-10-04 10:43:44'),
(252, 1, 'Story', 'update', '127.0.0.1', 'http://localhost:8000/cms/stories/1', '{\"id\":1,\"title_sw\":\"Vodacom Tanzania\",\"title_en\":\"Vodacom Tanzania\",\"summary_en\":\"Vodacom Tanzania Summary\",\"summary_sw\":\"Vodacom Tanzania Summary\",\"content_sw\":\"<p>Vodacom Tanzania Story Details<\\/p>\",\"content_en\":\"<p>Vodacom Tanzania Story Details<\\/p>\",\"icon\":\"icon-1633355012-logo2.png\",\"slug\":\"vodacom-tanzania\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-04T13:43:32.000000Z\",\"updated_at\":\"2021-10-04T13:43:32.000000Z\"}', '2021-10-04 10:43:52', '2021-10-04 10:43:52'),
(253, 1, 'Story', 'update', '127.0.0.1', 'http://localhost:8000/cms/stories/1', '{\"id\":1,\"title_sw\":\"Vodacom Tanzania\",\"title_en\":\"Vodacom Tanzania\",\"summary_en\":\"Vodacom Tanzania Summary\",\"summary_sw\":\"Vodacom Tanzania Summary\",\"content_sw\":\"<p>Vodacom Tanzania Story Details<\\/p>\",\"content_en\":\"<p>Vodacom Tanzania Story Details<\\/p>\",\"icon\":\"icon-1633355107-logo.jpg\",\"slug\":\"vodacom-tanzania\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-04T13:43:32.000000Z\",\"updated_at\":\"2021-10-04T13:43:52.000000Z\"}', '2021-10-04 10:45:07', '2021-10-04 10:45:07'),
(254, 1, 'Story', 'store', '127.0.0.1', 'http://localhost:8000/cms/stories', '{\"title_en\":\"TPSC\",\"title_sw\":\"TPSC\",\"summary_en\":\"TPSC SUMMARY\",\"summary_sw\":\"TPSC SUMMARY\",\"content_en\":\"<p>TPSC SUMMARY Content...<\\/p>\",\"content_sw\":\"<p>TPSC SUMMARY Content...<\\/p>\",\"active\":\"0\",\"icon\":\"icon-1633355212-TPSC.jpg\",\"slug\":\"TPSC\"}', '2021-10-04 10:46:52', '2021-10-04 10:46:52'),
(255, 1, 'MenuItem', 'update', '127.0.0.1', 'http://localhost:8000/cms/menu-items/1', '{\"id\":1,\"title_sw\":\"Barua Pepe\",\"title_en\":\"Staff Mail\",\"status\":1,\"menu_id\":\"1\",\"url\":\"https:\\/\\/mail.ega.go.tz\",\"url_external\":\"https:\\/\\/mail.ega.go.tz\",\"link\":\"0\",\"parent\":0,\"position\":15,\"has_sidebar\":0,\"created_at\":\"2021-07-28T08:40:41.000000Z\",\"updated_at\":\"2021-08-10T07:11:51.000000Z\"}', '2021-10-05 04:07:42', '2021-10-05 04:07:42'),
(256, 1, 'MenuItem', 'update', '127.0.0.1', 'http://localhost:8000/cms/menu-items/1', '{\"id\":1,\"title_sw\":\"Barua Pepe\",\"title_en\":\"Staff Mail\",\"status\":1,\"menu_id\":\"1\",\"url\":\"https:\\/\\/mail.ega.go.tz\",\"url_external\":\"https:\\/\\/mail.ega.go.tz\",\"link\":\"1\",\"parent\":0,\"position\":15,\"has_sidebar\":0,\"created_at\":\"2021-07-28T08:40:41.000000Z\",\"updated_at\":\"2021-10-05T07:07:46.000000Z\"}', '2021-10-05 04:13:13', '2021-10-05 04:13:13'),
(257, 1, 'MenuItem', 'update', '127.0.0.1', 'http://localhost:8000/cms/menu-items/2', '{\"id\":2,\"title_sw\":\"Tenders\",\"title_en\":\"Tenders\",\"status\":1,\"menu_id\":\"1\",\"url\":\"contacts\",\"url_external\":null,\"link\":\"1\",\"parent\":0,\"position\":16,\"has_sidebar\":0,\"created_at\":\"2021-07-28T08:43:18.000000Z\",\"updated_at\":\"2021-10-05T07:07:46.000000Z\"}', '2021-10-05 04:15:04', '2021-10-05 04:15:04'),
(258, 1, 'MenuItem', 'update', '127.0.0.1', 'http://localhost:8000/cms/menu-items/1', '{\"id\":1,\"title_sw\":\"Barua Pepe\",\"title_en\":\"Staff Mail\",\"status\":1,\"menu_id\":\"1\",\"url\":\"https:\\/\\/mail.ega.go.tz\",\"url_external\":\"https:\\/\\/mail.ega.go.tz\",\"link\":\"1\",\"parent\":0,\"position\":17,\"has_sidebar\":0,\"created_at\":\"2021-07-28T08:40:41.000000Z\",\"updated_at\":\"2021-10-05T07:13:13.000000Z\"}', '2021-10-05 04:15:19', '2021-10-05 04:15:19'),
(259, 1, 'MenuItem', 'update', '127.0.0.1', 'http://localhost:8000/cms/menu-items/1', '{\"id\":1,\"title_sw\":\"Barua Pepe\",\"title_en\":\"Staff Mail\",\"status\":1,\"menu_id\":\"1\",\"url\":\"https:\\/\\/mail.ega.go.tz\",\"url_external\":\"https:\\/\\/mail.ega.go.tz\",\"link\":\"1\",\"parent\":0,\"position\":18,\"has_sidebar\":0,\"created_at\":\"2021-07-28T08:40:41.000000Z\",\"updated_at\":\"2021-10-05T07:15:19.000000Z\"}', '2021-10-05 04:15:41', '2021-10-05 04:15:41'),
(260, 1, 'MenuItem', 'update', '127.0.0.1', 'http://localhost:8000/cms/menu-items/1', '{\"id\":1,\"title_sw\":\"Barua Pepe\",\"title_en\":\"Staff Mail\",\"status\":1,\"menu_id\":\"1\",\"url\":\"https:\\/\\/mail.ega.go.t\",\"url_external\":\"https:\\/\\/mail.ega.go.t\",\"link\":\"0\",\"parent\":0,\"position\":19,\"has_sidebar\":0,\"created_at\":\"2021-07-28T08:40:41.000000Z\",\"updated_at\":\"2021-10-05T07:15:41.000000Z\"}', '2021-10-05 04:16:45', '2021-10-05 04:16:45'),
(261, 1, 'MenuItem', 'update', '127.0.0.1', 'http://localhost:8000/cms/menu-items/1', '{\"id\":1,\"title_sw\":\"Barua Pepe\",\"title_en\":\"Staff Mail\",\"status\":1,\"menu_id\":\"1\",\"url\":\"https:\\/\\/mail.ega.go.tz\",\"url_external\":\"https:\\/\\/mail.ega.go.tz\",\"link\":\"1\",\"parent\":0,\"position\":20,\"has_sidebar\":0,\"created_at\":\"2021-07-28T08:40:41.000000Z\",\"updated_at\":\"2021-10-05T07:16:45.000000Z\"}', '2021-10-05 04:17:22', '2021-10-05 04:17:22'),
(262, 1, 'MenuItem', 'update', '127.0.0.1', 'http://localhost:8000/cms/menu-items/1', '{\"id\":1,\"title_sw\":\"Barua Pepe\",\"title_en\":\"Staff Mail\",\"status\":1,\"menu_id\":\"1\",\"url\":\"#\",\"url_external\":null,\"link\":\"1\",\"parent\":0,\"position\":21,\"has_sidebar\":0,\"created_at\":\"2021-07-28T08:40:41.000000Z\",\"updated_at\":\"2021-10-05T07:17:22.000000Z\"}', '2021-10-05 04:35:20', '2021-10-05 04:35:20'),
(263, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"1\",\"title_sw\":\"Demo Link\",\"title_en\":\"Demo Link\",\"link\":\"0\",\"url_external\":\"https:\\/\\/mail.ega.go.tz\",\"url\":\"https:\\/\\/mail.ega.go.tz\",\"position\":22}', '2021-10-05 04:42:40', '2021-10-05 04:42:40'),
(264, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"1\",\"title_sw\":\"Demo Link2\",\"title_en\":\"Demo Link2\",\"link\":\"1\",\"url_external\":null,\"url\":\"press-releases\",\"position\":23}', '2021-10-05 04:44:02', '2021-10-05 04:44:02'),
(265, 1, 'Photo', 'update', '127.0.0.1', 'http://localhost:8000/cms/media/23', '{\"id\":23,\"title_en\":\"\",\"title_sw\":\"\",\"content_en\":\"tyghbmkl;\",\"content_sw\":\"restdhuj\",\"mime\":\"images\\/png\",\"path\":\"\\/uploads\\/gallery\\/\",\"url\":\"\",\"filename\":\"6c53e920a6b6bd11786671d2b678728c.png\",\"iconurl\":\"\",\"slug\":\"a64147600e6914bec2ccd489464313cc-jpeg\",\"user_id\":0,\"gallery_id\":1,\"status\":\"1\",\"created_at\":\"2021-09-22T12:53:42.000000Z\",\"updated_at\":\"2021-09-22T12:53:42.000000Z\"}', '2021-10-05 04:58:16', '2021-10-05 04:58:16'),
(266, 1, 'Slider', 'store', '127.0.0.1', 'http://localhost:8000/cms/sliders', '{\"title_en\":\"Demo Slider\",\"title_sw\":\"Demo Slider\",\"link\":\"1\",\"url_external\":null,\"url\":\"welcome\",\"active\":\"1\",\"media_url\":\"slider-1633422716-_gif1.gif\",\"slug\":\"demo-slider\"}', '2021-10-05 05:31:56', '2021-10-05 05:31:56'),
(267, 1, 'Slider', 'update', '127.0.0.1', 'http://localhost:8000/cms/sliders/1', '{\"id\":1,\"title_sw\":\"Demo Slider\",\"title_en\":\"Demo Slider\",\"media_url\":\"slider-1633422716-_gif1.gif\",\"link\":\"1\",\"url\":\"pages\\/mission-and-vision\",\"url_external\":null,\"slug\":\"demo-slider\",\"active\":\"0\",\"user_id\":0,\"created_at\":\"2021-10-05T08:31:56.000000Z\",\"updated_at\":\"2021-10-05T08:31:56.000000Z\"}', '2021-10-05 05:39:24', '2021-10-05 05:39:24'),
(268, 1, 'Slider', 'store', '127.0.0.1', 'http://localhost:8000/cms/sliders', '{\"title_en\":\"This is our port in Dar es Salaam, Please come and invest in Tanzania\",\"title_sw\":\"This is our port in Dar es Salaam, Please come and invest in Tanzania\",\"link\":\"1\",\"url_external\":null,\"url\":\"#\",\"active\":\"1\",\"media_url\":\"slider-1633423573-_gif2.gif\",\"slug\":\"this-is-our-port-in-dar-es-salaam-please-come-and-invest-in-tanzania\"}', '2021-10-05 05:46:13', '2021-10-05 05:46:13'),
(269, 1, 'Slider', 'update', '127.0.0.1', 'http://localhost:8000/cms/sliders/2', '{\"id\":2,\"title_sw\":\"This is our port in Dar es Salaam, Please come and invest in Tanzania\",\"title_en\":\"This is our port in Dar es Salaam, Please come and invest in Tanzania\",\"media_url\":\"slider-1633423573-_gif2.gif\",\"link\":\"0\",\"url\":\"https:\\/\\/mail.ega.go.tz\",\"url_external\":\"https:\\/\\/mail.ega.go.tz\",\"slug\":\"this-is-our-port-in-dar-es-salaam-please-come-and-invest-in-tanzania\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-05T08:46:13.000000Z\",\"updated_at\":\"2021-10-05T08:46:13.000000Z\"}', '2021-10-05 05:47:45', '2021-10-05 05:47:45'),
(270, 1, 'Slider', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/sliders/1', '{\"id\":1,\"title_sw\":\"Demo Slider\",\"title_en\":\"Demo Slider\",\"media_url\":\"slider-1633422716-_gif1.gif\",\"link\":1,\"url\":\"pages\\/mission-and-vision\",\"url_external\":null,\"slug\":\"demo-slider\",\"active\":0,\"user_id\":0,\"created_at\":\"2021-10-05T08:31:56.000000Z\",\"updated_at\":\"2021-10-05T08:39:24.000000Z\"}', '2021-10-05 05:49:19', '2021-10-05 05:49:19');
INSERT INTO `timelines` (`id`, `actor`, `object`, `verb`, `ip`, `url`, `content`, `created_at`, `updated_at`) VALUES
(271, 1, 'Slider', 'store', '127.0.0.1', 'http://localhost:8000/cms/sliders', '{\"title_en\":\"Tourism at its best, Tour the Ngorongoro and Serengeti for better prices\",\"title_sw\":\"Tourism at its best, Tour the Ngorongoro and Serengeti for better prices\",\"link\":\"0\",\"url_external\":\"https:\\/\\/portal.maliasili.go.tz\\/\",\"url\":\"https:\\/\\/portal.maliasili.go.tz\\/\",\"active\":\"1\",\"media_url\":\"slider-1633424803-_gif3.gif\",\"slug\":\"tourism-at-its-best-tour-the-ngorongoro-and-serengeti-for-better-prices\"}', '2021-10-05 06:06:43', '2021-10-05 06:06:43'),
(272, 1, 'Slider', 'update', '127.0.0.1', 'http://localhost:8000/cms/sliders/3', '{\"id\":3,\"title_sw\":\"Tourism at its best, Tour the Ngorongoro and Serengeti for better prices\",\"title_en\":\"Tourism at its best, Tour the Ngorongoro and Serengeti for better prices\",\"media_url\":\"slider-1633424803-_gif3.gif\",\"link\":\"1\",\"url\":\"announcements\",\"url_external\":null,\"slug\":\"tourism-at-its-best-tour-the-ngorongoro-and-serengeti-for-better-prices\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-05T09:06:43.000000Z\",\"updated_at\":\"2021-10-05T09:06:43.000000Z\"}', '2021-10-05 06:42:10', '2021-10-05 06:42:10'),
(273, 1, 'MenuItem', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/menu-items/28', '{\"id\":28,\"title_sw\":\"Demo Link\",\"title_en\":\"Demo Link\",\"status\":1,\"menu_id\":1,\"url\":\"https:\\/\\/mail.ega.go.tz\",\"url_external\":\"https:\\/\\/mail.ega.go.tz\",\"link\":0,\"parent\":0,\"position\":6,\"has_sidebar\":0,\"created_at\":\"2021-10-05T07:42:40.000000Z\",\"updated_at\":\"2021-10-05T13:50:50.000000Z\"}', '2021-10-05 10:50:55', '2021-10-05 10:50:55'),
(274, 1, 'MenuItem', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/menu-items/28', '{\"id\":29,\"title_sw\":\"Demo Link2\",\"title_en\":\"Demo Link2\",\"status\":1,\"menu_id\":1,\"url\":\"press-releases\",\"url_external\":null,\"link\":1,\"parent\":28,\"position\":1,\"has_sidebar\":0,\"created_at\":\"2021-10-05T07:44:02.000000Z\",\"updated_at\":\"2021-10-05T13:50:50.000000Z\"}', '2021-10-05 10:50:55', '2021-10-05 10:50:55'),
(275, 1, 'Sector', 'update', '127.0.0.1', 'http://localhost:8000/cms/sectors/1', '{\"id\":1,\"title_sw\":\"Kilimo\",\"title_en\":\"Agriculture\",\"content_sw\":\"<p>Kilimo&nbsp;Kilimo&nbsp;Kilimo&nbsp;Kilimo&nbsp;<\\/p>\",\"content_en\":\"<p>Agriculture&nbsp;Agriculture&nbsp;Agriculture&nbsp;<\\/p>\",\"photo_url\":\"e27e9c9530e123b53fc5ed957d68ce27.png\",\"icon\":\"icon-1633351581-logo2.png\",\"slug\":\"agriculture\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-04T12:46:21.000000Z\",\"updated_at\":\"2021-10-04T12:48:10.000000Z\"}', '2021-10-06 08:31:18', '2021-10-06 08:31:18'),
(276, 1, 'Sector', 'store', '127.0.0.1', 'http://localhost:8000/cms/sectors', '{\"title_en\":\"Tourism\",\"title_sw\":\"Utalii\",\"content_en\":\"<p>Tourism&nbsp;Tourism&nbsp;Tourism<\\/p>\",\"content_sw\":\"<p>Utalii&nbsp;Utalii&nbsp;Utalii&nbsp;Utalii&nbsp;Utalii&nbsp;<\\/p>\",\"active\":\"1\",\"photo_url\":\"072bfe17f3833ef9dda78d15e57f90fa.jpeg\",\"icon\":\"icon-1633520400-TPSC.jpg\",\"slug\":\"tourism\"}', '2021-10-06 08:40:00', '2021-10-06 08:40:00'),
(277, 1, 'Reason', 'store', '127.0.0.1', 'http://localhost:8000/cms/reasons', '{\"title_en\":\"Geographical Location\",\"title_sw\":\"Geographical Location\",\"content_en\":\"<p>Geographical Location&nbsp;Geographical Location&nbsp;Geographical Location&nbsp;<\\/p>\",\"content_sw\":\"<p>Geographical Location&nbsp;Geographical Location&nbsp;Geographical Location&nbsp;Geographical Location&nbsp;<\\/p>\",\"active\":\"1\",\"photo_url\":\"d5555ac98bedf3f2f83a213dedd9a02a.jpeg\",\"icon\":\"icon-1633521393-arimo.png\",\"slug\":\"geographical-location\"}', '2021-10-06 08:56:33', '2021-10-06 08:56:33'),
(278, 1, 'Reason', 'update', '127.0.0.1', 'http://localhost:8000/cms/reasons/2', '{\"id\":2,\"title_sw\":\"Geographical Location\",\"title_en\":\"Geographical Location\",\"content_sw\":\"<p>Geographical Location Geographical Location Geographical Location<\\/p>\",\"content_en\":\"<p>Geographical Location Geographical Location Geographical Location<\\/p>\",\"photo_url\":\"d5555ac98bedf3f2f83a213dedd9a02a.jpeg\",\"icon\":\"icon-1633521393-arimo.png\",\"slug\":\"geographical-location\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-06T11:56:33.000000Z\",\"updated_at\":\"2021-10-06T11:56:33.000000Z\"}', '2021-10-06 08:58:23', '2021-10-06 08:58:23'),
(279, 1, 'Sector', 'update', '127.0.0.1', 'http://localhost:8000/cms/sectors/9', '{\"id\":9,\"title_sw\":\"Kilimo\",\"title_en\":\"Agriculture\",\"content_sw\":\"<p>Kilimo&nbsp;Kilimo&nbsp;Kilimo&nbsp;Kilimo&nbsp;<\\/p>\",\"content_en\":\"<p>Agriculture&nbsp;Agriculture&nbsp;Agriculture&nbsp;<\\/p>\",\"photo_url\":\"e27e9c9530e123b53fc5ed957d68ce27.png\",\"icon\":\"icon-1633351581-logo2.png\",\"slug\":\"agriculture\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-04T12:46:21.000000Z\",\"updated_at\":\"2021-10-06T11:31:18.000000Z\"}', '2021-10-06 09:18:16', '2021-10-06 09:18:16'),
(280, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":304,\"keyword\":\"lbl_sectors\",\"en\":\"Sectors\",\"sw\":\"Sekta\",\"created_at\":\"2021-10-06T15:22:34.000000Z\",\"updated_at\":\"2021-10-06T15:22:34.000000Z\"}', '2021-10-06 09:28:25', '2021-10-06 09:28:25'),
(281, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":305,\"keyword\":\"lbl_sectors_msg\",\"en\":\"Explore untapped investment opportunities across a variety of industries in Tanzania\",\"sw\":\"Explore untapped investment opportunities across a variety of industries in Tanzania\",\"created_at\":\"2021-10-06T15:22:34.000000Z\",\"updated_at\":\"2021-10-06T15:22:34.000000Z\"}', '2021-10-06 09:28:25', '2021-10-06 09:28:25'),
(282, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":302,\"keyword\":\"lbl_subscription\",\"en\":\"Subscription\",\"sw\":\"Subscription\",\"created_at\":\"2021-10-06T15:21:32.000000Z\",\"updated_at\":\"2021-10-06T15:21:32.000000Z\"}', '2021-10-06 09:28:25', '2021-10-06 09:28:25'),
(283, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":303,\"keyword\":\"lbl_subscription_msg\",\"en\":\"Subscribe to our newsletter to get the latest scoop right to your inbox\",\"sw\":\"Subscribe to our newsletter to get the latest scoop right to your inbox\",\"created_at\":\"2021-10-06T15:21:32.000000Z\",\"updated_at\":\"2021-10-06T15:21:32.000000Z\"}', '2021-10-06 09:28:25', '2021-10-06 09:28:25'),
(284, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":301,\"keyword\":\"lbl_resource_not_found\",\"en\":\"Sorry, The Resource you are looking for was not found.\",\"sw\":\"Samahani, Unachokitafuta hakijapatikana.\",\"created_at\":\"2021-09-21T09:58:12.000000Z\",\"updated_at\":\"2021-09-21T09:58:12.000000Z\"}', '2021-10-06 09:28:25', '2021-10-06 09:28:25'),
(285, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":300,\"keyword\":\"lbl_not_found\",\"en\":\"Not Found\",\"sw\":\"Haipatikani\",\"created_at\":\"2021-09-21T09:56:31.000000Z\",\"updated_at\":\"2021-09-21T09:56:31.000000Z\"}', '2021-10-06 09:28:25', '2021-10-06 09:28:25'),
(286, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":299,\"keyword\":\"lbl_view_offices\",\"en\":\"View All Offices\",\"sw\":\"Tazama Ofisi Zote\",\"created_at\":\"2021-09-20T10:05:01.000000Z\",\"updated_at\":\"2021-09-20T10:05:01.000000Z\"}', '2021-10-06 09:28:25', '2021-10-06 09:28:25'),
(287, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":292,\"keyword\":\"lbl_latest_announcement\",\"en\":\"Latest Announcements\",\"sw\":\"Matangazo Mapya\",\"created_at\":\"2021-08-06T14:49:39.000000Z\",\"updated_at\":\"2021-08-06T14:49:39.000000Z\"}', '2021-10-06 09:28:25', '2021-10-06 09:28:25'),
(288, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":280,\"keyword\":\"lbl_important_links\",\"en\":\"Important Links\",\"sw\":\"Tovuti Muhimu\",\"created_at\":\"2021-08-06T14:37:55.000000Z\",\"updated_at\":\"2021-08-06T14:37:55.000000Z\"}', '2021-10-06 09:28:26', '2021-10-06 09:28:26'),
(289, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":281,\"keyword\":\"lbl_site_sub_subtitle\",\"en\":\"Prime Minister\'s Office\",\"sw\":\"Ofisi ya Waziri Mkuu\",\"created_at\":\"2021-08-06T14:37:55.000000Z\",\"updated_at\":\"2021-08-06T14:37:55.000000Z\"}', '2021-10-06 09:28:26', '2021-10-06 09:28:26'),
(290, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":306,\"keyword\":\"lbl_investment_guides\",\"en\":\"Investment Guides\",\"sw\":\"Miongozo ya Uwekezaji\",\"created_at\":\"2021-10-06T15:25:42.000000Z\",\"updated_at\":\"2021-10-06T15:25:42.000000Z\"}', '2021-10-06 09:30:47', '2021-10-06 09:30:47'),
(291, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":307,\"keyword\":\"lbl_reasons\",\"en\":\"Reasons To Invest\",\"sw\":\"Sababu za Kuwekeza\",\"created_at\":\"2021-10-06T15:25:42.000000Z\",\"updated_at\":\"2021-10-06T15:25:42.000000Z\"}', '2021-10-06 09:30:47', '2021-10-06 09:30:47'),
(292, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":304,\"keyword\":\"lbl_sectors\",\"en\":\"Sectors\",\"sw\":\"Sekta\",\"created_at\":\"2021-10-06T15:22:34.000000Z\",\"updated_at\":\"2021-10-06T12:28:25.000000Z\"}', '2021-10-06 09:30:47', '2021-10-06 09:30:47'),
(293, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":305,\"keyword\":\"lbl_sectors_msg\",\"en\":\"Explore untapped investment opportunities across a variety of industries in Tanzania\",\"sw\":\"Chunguza fursa za uwekezaji ambazo hazijatumika katika tasnia anuwai nchini Tanzania\",\"created_at\":\"2021-10-06T15:22:34.000000Z\",\"updated_at\":\"2021-10-06T12:28:25.000000Z\"}', '2021-10-06 09:30:47', '2021-10-06 09:30:47'),
(294, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":302,\"keyword\":\"lbl_subscription\",\"en\":\"Subscription\",\"sw\":\"Subscription\",\"created_at\":\"2021-10-06T15:21:32.000000Z\",\"updated_at\":\"2021-10-06T15:21:32.000000Z\"}', '2021-10-06 09:30:47', '2021-10-06 09:30:47'),
(295, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":303,\"keyword\":\"lbl_subscription_msg\",\"en\":\"Subscribe to our newsletter to get the latest scoop right to your inbox\",\"sw\":\"Jisajili kwenye jarida letu kupata habari mpya za hivi majuzi kwenye kikasha chako\",\"created_at\":\"2021-10-06T15:21:32.000000Z\",\"updated_at\":\"2021-10-06T15:21:32.000000Z\"}', '2021-10-06 09:30:47', '2021-10-06 09:30:47'),
(296, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":301,\"keyword\":\"lbl_resource_not_found\",\"en\":\"Sorry, The Resource you are looking for was not found.\",\"sw\":\"Samahani, Rasilimali uliyotafuta haikupatikana.\",\"created_at\":\"2021-09-21T09:58:12.000000Z\",\"updated_at\":\"2021-09-21T09:58:12.000000Z\"}', '2021-10-06 09:30:47', '2021-10-06 09:30:47'),
(297, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":300,\"keyword\":\"lbl_not_found\",\"en\":\"Not Found\",\"sw\":\"Haipatikani\",\"created_at\":\"2021-09-21T09:56:31.000000Z\",\"updated_at\":\"2021-09-21T09:56:31.000000Z\"}', '2021-10-06 09:30:47', '2021-10-06 09:30:47'),
(298, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":299,\"keyword\":\"lbl_view_offices\",\"en\":\"View All Offices\",\"sw\":\"Tazama Ofisi Zote\",\"created_at\":\"2021-09-20T10:05:01.000000Z\",\"updated_at\":\"2021-09-20T10:05:01.000000Z\"}', '2021-10-06 09:30:47', '2021-10-06 09:30:47'),
(299, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":292,\"keyword\":\"lbl_latest_announcement\",\"en\":\"Latest Announcements\",\"sw\":\"Matangazo Mapya\",\"created_at\":\"2021-08-06T14:49:39.000000Z\",\"updated_at\":\"2021-08-06T14:49:39.000000Z\"}', '2021-10-06 09:30:47', '2021-10-06 09:30:47'),
(300, 1, 'Story', 'update', '127.0.0.1', 'http://localhost:8000/cms/stories/2', '{\"id\":2,\"title_sw\":\"TPSC\",\"title_en\":\"TPSC\",\"summary_en\":\"TPSC SUMMARY\",\"summary_sw\":\"TPSC SUMMARY\",\"content_sw\":\"<p>TPSC SUMMARY Content...<\\/p>\",\"content_en\":\"<p>TPSC SUMMARY Content...<\\/p>\",\"icon\":\"icon-1633355212-TPSC.jpg\",\"slug\":\"TPSC\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-04T13:46:52.000000Z\",\"updated_at\":\"2021-10-04T13:46:52.000000Z\"}', '2021-10-06 11:17:12', '2021-10-06 11:17:12'),
(301, 1, 'Story', 'update', '127.0.0.1', 'http://localhost:8000/cms/stories/1', '{\"id\":1,\"title_sw\":\"Vodacom Tanzania\",\"title_en\":\"Vodacom Tanzania\",\"summary_en\":\"Vodacom Tanzania Summary\",\"summary_sw\":\"Vodacom Tanzania Summary\",\"content_sw\":\"<p>Vodacom Tanzania Story Details<\\/p>\",\"content_en\":\"<p>Vodacom Tanzania Story Details<\\/p>\",\"icon\":\"icon-1633583874-voda.jpg\",\"slug\":\"vodacom-tanzania\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-04T13:43:32.000000Z\",\"updated_at\":\"2021-10-04T13:45:07.000000Z\"}', '2021-10-07 02:17:54', '2021-10-07 02:17:54'),
(302, 1, 'Story', 'update', '127.0.0.1', 'http://localhost:8000/cms/stories/1', '{\"id\":1,\"title_sw\":\"Vodacom Tanzania\",\"title_en\":\"Vodacom Tanzania\",\"summary_en\":\"Vodacom Tanzania Summary\",\"summary_sw\":\"Vodacom Tanzania Summary\",\"content_sw\":\"<p>Vodacom Tanzania Story Details<\\/p>\",\"content_en\":\"<p>Vodacom Tanzania Story Details<\\/p>\",\"icon\":\"icon-1633583958-voda.png\",\"slug\":\"vodacom-tanzania\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-04T13:43:32.000000Z\",\"updated_at\":\"2021-10-07T05:17:54.000000Z\"}', '2021-10-07 02:19:18', '2021-10-07 02:19:18'),
(303, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":309,\"keyword\":\"lbl_investment_guides_msg\",\"en\":\"Summary Explore untapped investment opportunities across a variety of industries in Tanzania.\",\"sw\":\"Muhtasari Chunguza fursa za uwekezaji ambazo hazijatumika katika tasnia mbalimbali nchini Tanzania\",\"created_at\":\"2021-10-07T09:48:03.000000Z\",\"updated_at\":\"2021-10-07T09:48:03.000000Z\"}', '2021-10-07 03:48:58', '2021-10-07 03:48:58'),
(304, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":308,\"keyword\":\"lbl_success_stories\",\"en\":\"Success Stories\",\"sw\":\"Hadithi za Mafanikio\",\"created_at\":\"2021-10-07T08:11:45.000000Z\",\"updated_at\":\"2021-10-07T08:11:45.000000Z\"}', '2021-10-07 03:48:58', '2021-10-07 03:48:58'),
(305, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":306,\"keyword\":\"lbl_investment_guides\",\"en\":\"Investment Guides\",\"sw\":\"Miongozo ya Uwekezaji\",\"created_at\":\"2021-10-06T15:25:42.000000Z\",\"updated_at\":\"2021-10-06T12:30:47.000000Z\"}', '2021-10-07 03:48:58', '2021-10-07 03:48:58'),
(306, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":307,\"keyword\":\"lbl_reasons\",\"en\":\"Reasons To Invest\",\"sw\":\"Sababu za Kuwekeza\",\"created_at\":\"2021-10-06T15:25:42.000000Z\",\"updated_at\":\"2021-10-06T12:30:47.000000Z\"}', '2021-10-07 03:48:58', '2021-10-07 03:48:58'),
(307, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":304,\"keyword\":\"lbl_sectors\",\"en\":\"Sectors\",\"sw\":\"Sekta\",\"created_at\":\"2021-10-06T15:22:34.000000Z\",\"updated_at\":\"2021-10-06T12:28:25.000000Z\"}', '2021-10-07 03:48:58', '2021-10-07 03:48:58'),
(308, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":305,\"keyword\":\"lbl_sectors_msg\",\"en\":\"Explore untapped investment opportunities across a variety of industries in Tanzania\",\"sw\":\"Chunguza fursa za uwekezaji ambazo hazijatumika katika tasnia anuwai nchini Tanzania\",\"created_at\":\"2021-10-06T15:22:34.000000Z\",\"updated_at\":\"2021-10-06T12:30:47.000000Z\"}', '2021-10-07 03:48:58', '2021-10-07 03:48:58'),
(309, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":302,\"keyword\":\"lbl_subscription\",\"en\":\"Subscription\",\"sw\":\"Subscription\",\"created_at\":\"2021-10-06T15:21:32.000000Z\",\"updated_at\":\"2021-10-06T15:21:32.000000Z\"}', '2021-10-07 03:48:58', '2021-10-07 03:48:58'),
(310, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":303,\"keyword\":\"lbl_subscription_msg\",\"en\":\"Subscribe to our newsletter to get the latest scoop right to your inbox\",\"sw\":\"Jisajili kwenye jarida letu kupata habari mpya za hivi majuzi kwenye kikasha chako\",\"created_at\":\"2021-10-06T15:21:32.000000Z\",\"updated_at\":\"2021-10-06T12:30:47.000000Z\"}', '2021-10-07 03:48:58', '2021-10-07 03:48:58'),
(311, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":301,\"keyword\":\"lbl_resource_not_found\",\"en\":\"Sorry, The Resource you are looking for was not found.\",\"sw\":\"Samahani, Rasilimali uliyotafuta haikupatikana.\",\"created_at\":\"2021-09-21T09:58:12.000000Z\",\"updated_at\":\"2021-10-06T12:30:47.000000Z\"}', '2021-10-07 03:48:58', '2021-10-07 03:48:58'),
(312, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":300,\"keyword\":\"lbl_not_found\",\"en\":\"Not Found\",\"sw\":\"Haipatikani\",\"created_at\":\"2021-09-21T09:56:31.000000Z\",\"updated_at\":\"2021-09-21T09:56:31.000000Z\"}', '2021-10-07 03:48:58', '2021-10-07 03:48:58'),
(313, 1, 'Guide', 'store', '127.0.0.1', 'http://localhost:8000/cms/guides', '{\"title_en\":\"Fees and Registrations\",\"title_sw\":\"Fees and Registrations\",\"content_en\":\"<p>Fees and Registrations&nbsp;Fees and Registrations&nbsp;Fees and Registrations<\\/p>\",\"content_sw\":\"<p>Fees and Registrations&nbsp;Fees and Registrations&nbsp;Fees and Registrations&nbsp;Fees and Registrations&nbsp;Fees and Registrations&nbsp;Fees and Registrations<\\/p>\\r\\n\\r\\n<p>Fees and Registrations&nbsp;Fees and Registrations&nbsp;Fees and RegistrationsFees and Registrations&nbsp;Fees and Registrations&nbsp;Fees and RegistrationsFees and Registrations&nbsp;Fees and Registrations&nbsp;Fees and RegistrationsFees and Registrations&nbsp;Fees and Registrations&nbsp;Fees and RegistrationsFees and Registrations&nbsp;Fees and Registrations&nbsp;Fees and RegistrationsFees and Registrations&nbsp;Fees and Registrations&nbsp;Fees and RegistrationsFees and Registrations&nbsp;Fees and Registrations&nbsp;Fees and Registrations<\\/p>\",\"active\":\"1\",\"photo_url\":\"f822198e4ee1796dd7aae800bb45f2a2.jpeg\",\"slug\":\"fees-and-registrations\"}', '2021-10-07 03:51:04', '2021-10-07 03:51:04'),
(314, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":310,\"keyword\":\"lbl_reasons_msg\",\"en\":\"This is a reason welcome message\",\"sw\":\"This is a reason welcome message\",\"created_at\":\"2021-10-07T10:40:06.000000Z\",\"updated_at\":\"2021-10-07T10:40:06.000000Z\"}', '2021-10-07 04:40:37', '2021-10-07 04:40:37'),
(315, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":309,\"keyword\":\"lbl_investment_guides_msg\",\"en\":\"Summary Explore untapped investment opportunities across a variety of industries in Tanzania.\",\"sw\":\"Muhtasari Chunguza fursa za uwekezaji ambazo hazijatumika katika tasnia mbalimbali nchini Tanzania\",\"created_at\":\"2021-10-07T09:48:03.000000Z\",\"updated_at\":\"2021-10-07T06:48:58.000000Z\"}', '2021-10-07 04:40:37', '2021-10-07 04:40:37'),
(316, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":308,\"keyword\":\"lbl_success_stories\",\"en\":\"Success Stories\",\"sw\":\"Hadithi za Mafanikio\",\"created_at\":\"2021-10-07T08:11:45.000000Z\",\"updated_at\":\"2021-10-07T08:11:45.000000Z\"}', '2021-10-07 04:40:37', '2021-10-07 04:40:37'),
(317, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":306,\"keyword\":\"lbl_investment_guides\",\"en\":\"Investment Guides\",\"sw\":\"Miongozo ya Uwekezaji\",\"created_at\":\"2021-10-06T15:25:42.000000Z\",\"updated_at\":\"2021-10-06T12:30:47.000000Z\"}', '2021-10-07 04:40:37', '2021-10-07 04:40:37'),
(318, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":307,\"keyword\":\"lbl_reasons\",\"en\":\"Reasons To Invest\",\"sw\":\"Sababu za Kuwekeza\",\"created_at\":\"2021-10-06T15:25:42.000000Z\",\"updated_at\":\"2021-10-06T12:30:47.000000Z\"}', '2021-10-07 04:40:37', '2021-10-07 04:40:37'),
(319, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":304,\"keyword\":\"lbl_sectors\",\"en\":\"Sectors\",\"sw\":\"Sekta\",\"created_at\":\"2021-10-06T15:22:34.000000Z\",\"updated_at\":\"2021-10-06T12:28:25.000000Z\"}', '2021-10-07 04:40:37', '2021-10-07 04:40:37'),
(320, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":305,\"keyword\":\"lbl_sectors_msg\",\"en\":\"Explore untapped investment opportunities across a variety of industries in Tanzania\",\"sw\":\"Chunguza fursa za uwekezaji ambazo hazijatumika katika tasnia anuwai nchini Tanzania\",\"created_at\":\"2021-10-06T15:22:34.000000Z\",\"updated_at\":\"2021-10-06T12:30:47.000000Z\"}', '2021-10-07 04:40:37', '2021-10-07 04:40:37'),
(321, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":302,\"keyword\":\"lbl_subscription\",\"en\":\"Subscription\",\"sw\":\"Subscription\",\"created_at\":\"2021-10-06T15:21:32.000000Z\",\"updated_at\":\"2021-10-06T15:21:32.000000Z\"}', '2021-10-07 04:40:37', '2021-10-07 04:40:37'),
(322, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":303,\"keyword\":\"lbl_subscription_msg\",\"en\":\"Subscribe to our newsletter to get the latest scoop right to your inbox\",\"sw\":\"Jisajili kwenye jarida letu kupata habari mpya za hivi majuzi kwenye kikasha chako\",\"created_at\":\"2021-10-06T15:21:32.000000Z\",\"updated_at\":\"2021-10-06T12:30:47.000000Z\"}', '2021-10-07 04:40:37', '2021-10-07 04:40:37'),
(323, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":301,\"keyword\":\"lbl_resource_not_found\",\"en\":\"Sorry, The Resource you are looking for was not found.\",\"sw\":\"Samahani, Rasilimali uliyotafuta haikupatikana.\",\"created_at\":\"2021-09-21T09:58:12.000000Z\",\"updated_at\":\"2021-10-06T12:30:47.000000Z\"}', '2021-10-07 04:40:37', '2021-10-07 04:40:37'),
(324, 1, 'Events', 'update', '127.0.0.1', 'http://localhost:8000/cms/events/3', '{\"id\":3,\"event_date\":\"2021-08-20\",\"event_time\":\"11:00AM - 2:30PM\",\"location\":\"Nkrumah Hall\",\"title_sw\":\"Mkutano wa Wawekezaji\",\"title_en\":\"Investors Meeting\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting<\\/p>\",\"content_en\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;<\\/p>\",\"active\":\"1\",\"user_id\":1,\"slug\":\"changes-in-second-stakeholders-general-meeting-3\",\"photo_url\":\"3fe0f4a0ae63a24b3c0a002132e050c6.jpeg\",\"created_at\":\"2021-08-02T06:32:16.000000Z\",\"updated_at\":\"2021-08-02T06:32:16.000000Z\"}', '2021-10-07 07:29:15', '2021-10-07 07:29:15'),
(325, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":311,\"keyword\":\"lbl_success_stories_msg\",\"en\":\"This is a reason success stories message\",\"sw\":\"This is a reason success stories message\",\"created_at\":\"2021-10-07T18:06:44.000000Z\",\"updated_at\":\"2021-10-07T18:06:44.000000Z\"}', '2021-10-07 12:07:32', '2021-10-07 12:07:32'),
(326, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":310,\"keyword\":\"lbl_reasons_msg\",\"en\":\"This is a reason welcome message\",\"sw\":\"This is a reason welcome message\",\"created_at\":\"2021-10-07T10:40:06.000000Z\",\"updated_at\":\"2021-10-07T07:40:37.000000Z\"}', '2021-10-07 12:07:32', '2021-10-07 12:07:32'),
(327, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":309,\"keyword\":\"lbl_investment_guides_msg\",\"en\":\"Summary Explore untapped investment opportunities across a variety of industries in Tanzania.\",\"sw\":\"Muhtasari Chunguza fursa za uwekezaji ambazo hazijatumika katika tasnia mbalimbali nchini Tanzania\",\"created_at\":\"2021-10-07T09:48:03.000000Z\",\"updated_at\":\"2021-10-07T06:48:58.000000Z\"}', '2021-10-07 12:07:32', '2021-10-07 12:07:32'),
(328, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":308,\"keyword\":\"lbl_success_stories\",\"en\":\"Success Stories\",\"sw\":\"Hadithi za Mafanikio\",\"created_at\":\"2021-10-07T08:11:45.000000Z\",\"updated_at\":\"2021-10-07T08:11:45.000000Z\"}', '2021-10-07 12:07:32', '2021-10-07 12:07:32'),
(329, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":306,\"keyword\":\"lbl_investment_guides\",\"en\":\"Investment Guides\",\"sw\":\"Miongozo ya Uwekezaji\",\"created_at\":\"2021-10-06T15:25:42.000000Z\",\"updated_at\":\"2021-10-06T12:30:47.000000Z\"}', '2021-10-07 12:07:32', '2021-10-07 12:07:32'),
(330, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":307,\"keyword\":\"lbl_reasons\",\"en\":\"Reasons To Invest\",\"sw\":\"Sababu za Kuwekeza\",\"created_at\":\"2021-10-06T15:25:42.000000Z\",\"updated_at\":\"2021-10-06T12:30:47.000000Z\"}', '2021-10-07 12:07:32', '2021-10-07 12:07:32'),
(331, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":304,\"keyword\":\"lbl_sectors\",\"en\":\"Sectors\",\"sw\":\"Sekta\",\"created_at\":\"2021-10-06T15:22:34.000000Z\",\"updated_at\":\"2021-10-06T12:28:25.000000Z\"}', '2021-10-07 12:07:32', '2021-10-07 12:07:32'),
(332, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":305,\"keyword\":\"lbl_sectors_msg\",\"en\":\"Explore untapped investment opportunities across a variety of industries in Tanzania\",\"sw\":\"Chunguza fursa za uwekezaji ambazo hazijatumika katika tasnia anuwai nchini Tanzania\",\"created_at\":\"2021-10-06T15:22:34.000000Z\",\"updated_at\":\"2021-10-06T12:30:47.000000Z\"}', '2021-10-07 12:07:32', '2021-10-07 12:07:32'),
(333, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":302,\"keyword\":\"lbl_subscription\",\"en\":\"Subscription\",\"sw\":\"Subscription\",\"created_at\":\"2021-10-06T15:21:32.000000Z\",\"updated_at\":\"2021-10-06T15:21:32.000000Z\"}', '2021-10-07 12:07:32', '2021-10-07 12:07:32'),
(334, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":303,\"keyword\":\"lbl_subscription_msg\",\"en\":\"Subscribe to our newsletter to get the latest scoop right to your inbox\",\"sw\":\"Jisajili kwenye jarida letu kupata habari mpya za hivi majuzi kwenye kikasha chako\",\"created_at\":\"2021-10-06T15:21:32.000000Z\",\"updated_at\":\"2021-10-06T12:30:47.000000Z\"}', '2021-10-07 12:07:32', '2021-10-07 12:07:32'),
(335, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Reasons\",\"title_en\":\"Reasons\",\"link\":\"1\",\"url_external\":null,\"url\":\"reasons\",\"position\":15}', '2021-10-08 03:23:54', '2021-10-08 03:23:54'),
(336, 1, 'AdministrationCategories', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration_categories/1', '{\"id\":1,\"title_sw\":\"Bodi ya Wakurugenzi\",\"title_en\":\"Board Members\",\"summary_en\":\"Hii ni Bodi ya Wakuregenzi.\\r\\n\\r\\nInaongozwa na Mwenyekiti...\",\"summary_sw\":\"Hii ni Bodi ya Wakuregenzi.\\r\\n\\r\\nInaongozwa na Mwenyekiti...\",\"slug\":\"board-members\",\"content\":null,\"active\":1,\"created_at\":\"2021-08-09T15:32:20.000000Z\",\"updated_at\":\"2021-08-09T15:32:20.000000Z\"}', '2021-10-08 08:49:36', '2021-10-08 08:49:36'),
(337, 1, 'AdministrationCategories', 'store', '127.0.0.1', 'http://localhost:8000/cms/administration_categories', '{\"title_sw\":\"Management Team\",\"title_en\":\"Management Team\",\"summary_sw\":null,\"summary_en\":null,\"slug\":\"management-team\"}', '2021-10-08 08:50:02', '2021-10-08 08:50:02'),
(338, 1, 'AdministrationCategories', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration_categories/2', '{\"id\":2,\"title_sw\":\"Management Team\",\"title_en\":\"Management Team\",\"summary_en\":null,\"summary_sw\":null,\"slug\":\"management-team\",\"content\":null,\"active\":1,\"created_at\":\"2021-10-08T11:50:02.000000Z\",\"updated_at\":\"2021-10-08T11:50:02.000000Z\"}', '2021-10-08 08:50:07', '2021-10-08 08:50:07'),
(339, 1, 'GoogleMap', 'update', '127.0.0.1', 'http://localhost:8000/cms/googlemaps/1', '{\"id\":1,\"url\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d3961.6297522079612!2d39.2950404!3d-6.8148077!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x185c4b16d63a4ecf%3A0x6a67d5ae832bd8c2!2sTanzania%20Investment%20Centre!5e0!3m2!1sen!2stz!4v1633698990306!5m2!1sen!2stz\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\"><\\/iframe>\",\"user_id\":1,\"created_at\":\"2021-07-01T08:13:01.000000Z\",\"updated_at\":\"2021-09-20T12:51:02.000000Z\"}', '2021-10-08 10:25:52', '2021-10-08 10:25:52'),
(340, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Kilimo\",\"title_en\":\"Agriculture\",\"link\":\"1\",\"url_external\":null,\"url\":\"sectors\\/agriculture\",\"position\":16}', '2021-10-08 11:46:33', '2021-10-08 11:46:33'),
(341, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Geographical Location\",\"title_en\":\"Geographical Location\",\"link\":\"1\",\"url_external\":null,\"url\":\"reasons\\/geographical-location\",\"position\":17}', '2021-10-08 11:47:01', '2021-10-08 11:47:01'),
(342, 1, 'WelcomeNote', 'update', '127.0.0.1', 'http://localhost:8000/cms/welcome/1', '{\"id\":1,\"summary_en\":\"This is a welcome to appear on slider This is a welcome to appear on slider \\r\\nThis is a welcome to appear on slider This is a welcome to appear on slider This is a welcome to appear on slider \\r\\nThis is a welcome to appear on slider This is a welcome to appear on slider This is a welcome to appear on slider \\r\\nThis is a welcome to appear on slider\",\"summary_sw\":\"This is a welcome to appear on slider This is a welcome to appear on slider \\r\\nThis is a welcome to appear on slider\",\"content_sw\":\"<p>Put brief introduction about UCSAF Welcome to the UCSAF official website. This is your one stop center for bussiness Lorem ipsum dolor sit amet, consectetur adipiscing.<\\/p>\\r\\n\\r\\n<p>Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations. Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations.<\\/p>\",\"content_en\":\"<p>Put brief introduction about UCSAF Welcome to the UCSAF official website. This is your one stop center for bussiness Lorem ipsum dolor sit amet, consectetur adipiscing.<\\/p>\\r\\n\\r\\n<p>Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations. Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations.<\\/p>\",\"created_at\":\"2021-08-04T12:04:09.000000Z\",\"updated_at\":\"2021-08-04T12:04:09.000000Z\",\"status\":\"1\"}', '2021-10-08 12:03:55', '2021-10-08 12:03:55'),
(343, 1, 'WelcomeNote', 'update', '127.0.0.1', 'http://localhost:8000/cms/welcome/1', '{\"id\":1,\"summary_en\":\"This is a welcome to appear on slider This is a welcome to appear on slider \\r\\nThis is a welcome to appear on slider This is a welcome to appear on slider This is a welcome to appear on slider \\r\\nThis is a welcome to appear on slider This is a welcome to appear on slider This is a welcome to appear on slider \\r\\nThis is a welcome to appear on slider\",\"summary_sw\":\"This is a welcome to appear on slider This is a welcome to appear on slider \\r\\nThis is a welcome to appear on slider\",\"content_sw\":\"<p>Put brief introduction about UCSAF Welcome to the UCSAF official website. This is your one stop center for bussiness Lorem ipsum dolor sit amet, consectetur adipiscing.<\\/p>\\r\\n\\r\\n<p>Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations. Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations.<\\/p>\",\"content_en\":\"<p>Put brief introduction about UCSAF Welcome to the UCSAF official website. This is your one stop center for bussiness Lorem ipsum dolor sit amet, consectetur adipiscing.<\\/p>\\r\\n\\r\\n<p>Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations. Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations.<\\/p>\",\"created_at\":\"2021-10-08T18:03:55.000000Z\",\"updated_at\":\"2021-10-08T15:03:55.000000Z\",\"status\":\"1\"}', '2021-10-08 12:05:08', '2021-10-08 12:05:08'),
(344, 1, 'WelcomeNote', 'update', '127.0.0.1', 'http://localhost:8000/cms/welcome/1', '{\"id\":1,\"summary_en\":\"Welcome, The united Republic of Tanzania invites you to take part in investing in one among the most lucrative arena in Africa.\",\"summary_sw\":\"Welcome, The united Republic of Tanzania invites you to take part in investing in one among the most lucrative arena in Africa.\",\"content_sw\":\"<p>Put brief introduction about UCSAF Welcome to the UCSAF official website. This is your one stop center for bussiness Lorem ipsum dolor sit amet, consectetur adipiscing.<\\/p>\\r\\n\\r\\n<p>Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations. Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations.<\\/p>\",\"content_en\":\"<p>Put brief introduction about UCSAF Welcome to the UCSAF official website. This is your one stop center for bussiness Lorem ipsum dolor sit amet, consectetur adipiscing.<\\/p>\\r\\n\\r\\n<p>Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations. Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations.<\\/p>\",\"created_at\":\"2021-10-08T18:03:55.000000Z\",\"updated_at\":\"2021-10-08T15:03:55.000000Z\",\"status\":\"1\"}', '2021-10-08 12:07:05', '2021-10-08 12:07:05'),
(345, 1, 'WelcomeNote', 'update', '127.0.0.1', 'http://localhost:8000/cms/welcome/1', '{\"id\":1,\"summary_en\":\"Welcome, The united Republic of Tanzania invites you to take part in investing in one among the most lucrative arena in Africa.\",\"summary_sw\":\"Welcome, The united Republic of Tanzania invites you to take part in investing in one among the most lucrative arena in Africa.\",\"content_sw\":\"<p>Put brief introduction about UCSAF Welcome to the UCSAF official website. This is your one stop center for bussiness Lorem ipsum dolor sit amet, consectetur adipiscing.<\\/p>\\r\\n\\r\\n<p>Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations. Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations.<\\/p>\",\"content_en\":\"<p>Put brief introduction about UCSAF Welcome to the UCSAF official website. This is your one stop center for bussiness Lorem ipsum dolor sit amet, consectetur adipiscing.<\\/p>\\r\\n\\r\\n<p>Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations. Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations.<\\/p>\",\"created_at\":\"2021-10-08T18:07:05.000000Z\",\"updated_at\":\"2021-10-08T15:07:05.000000Z\",\"status\":\"1\"}', '2021-10-08 12:10:01', '2021-10-08 12:10:01'),
(346, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"7\",\"title_sw\":\"Accountant General\",\"title_en\":\"Accountant General\",\"link\":\"1\",\"url\":\"#\",\"url_external\":null,\"position\":14}', '2021-10-11 07:22:01', '2021-10-11 07:22:01'),
(347, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"7\",\"title_sw\":\"Gratudes\",\"title_en\":\"Gratudes\",\"link\":\"1\",\"url\":\"#\",\"url_external\":null,\"position\":15}', '2021-10-11 07:22:57', '2021-10-11 07:22:57'),
(348, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"7\",\"title_sw\":\"Pension\",\"title_en\":\"Pension\",\"link\":\"1\",\"url\":\"#\",\"url_external\":null,\"position\":16}', '2021-10-11 07:23:07', '2021-10-11 07:23:07'),
(349, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"7\",\"title_sw\":\"Communication and Media\",\"title_en\":\"Communication and Media\",\"link\":\"1\",\"url\":\"#\",\"url_external\":null,\"position\":17}', '2021-10-11 07:23:29', '2021-10-11 07:23:29'),
(350, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"7\",\"title_sw\":\"Vyombo vya Habari\",\"title_en\":\"Press Releases\",\"link\":\"1\",\"url\":\"press-releases\",\"url_external\":null,\"position\":18}', '2021-10-11 07:23:50', '2021-10-11 07:23:50'),
(351, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"7\",\"title_sw\":\"Matangazo\",\"title_en\":\"Announcements\",\"link\":\"1\",\"url\":\"announcements\",\"url_external\":null,\"position\":19}', '2021-10-11 07:24:08', '2021-10-11 07:24:08'),
(352, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"7\",\"title_sw\":\"Hotuba\",\"title_en\":\"Speeches\",\"link\":\"1\",\"url\":\"speeches\",\"url_external\":null,\"position\":20}', '2021-10-11 07:24:35', '2021-10-11 07:24:35'),
(353, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"7\",\"title_sw\":\"Government Budget\",\"title_en\":\"Government Budget\",\"link\":\"1\",\"url\":\"#\",\"url_external\":null,\"position\":14}', '2021-10-11 07:39:18', '2021-10-11 07:39:18'),
(354, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"7\",\"title_sw\":\"Budget Process\",\"title_en\":\"Budget Process\",\"link\":\"1\",\"url\":\"#\",\"url_external\":null,\"position\":15}', '2021-10-11 07:41:40', '2021-10-11 07:41:40'),
(355, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"7\",\"title_sw\":\"Budget Guidelines\",\"title_en\":\"Budget Guidelines\",\"link\":\"1\",\"url\":\"#\",\"url_external\":null,\"position\":16}', '2021-10-11 07:42:06', '2021-10-11 07:42:06'),
(356, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"7\",\"title_sw\":\"Budget Books\",\"title_en\":\"Budget Books\",\"link\":\"1\",\"url\":\"#\",\"url_external\":null,\"position\":17}', '2021-10-11 07:42:25', '2021-10-11 07:42:25'),
(357, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"7\",\"title_sw\":\"2021\",\"title_en\":\"2021\",\"link\":\"1\",\"url\":\"#\",\"url_external\":null,\"position\":18}', '2021-10-11 07:42:39', '2021-10-11 07:42:39'),
(358, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"7\",\"title_sw\":\"2020\",\"title_en\":\"2020\",\"link\":\"1\",\"url\":\"#\",\"url_external\":null,\"position\":19}', '2021-10-11 07:42:48', '2021-10-11 07:42:48'),
(359, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":11,\"keyword\":\"lbl_region_offices\",\"en\":\"Ministry Offices\",\"sw\":\"Ofisi za Wizara\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-10-04T10:17:21.000000Z\"}', '2021-10-11 08:36:02', '2021-10-11 08:36:02'),
(360, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":294,\"keyword\":\"lbl_notice_board\",\"en\":\"Notice Board\",\"sw\":\"Taarifa Muhimu\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-08-06T11:57:45.000000Z\"}', '2021-10-11 08:36:02', '2021-10-11 08:36:02'),
(361, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":298,\"keyword\":\"lbl_notice\",\"en\":\"Notices\",\"sw\":\"Taarifa Muhimu\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-09-26T10:38:31.000000Z\"}', '2021-10-11 08:36:02', '2021-10-11 08:36:02'),
(362, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":100,\"keyword\":\"lbl_site_title_short \",\"en\":\"MOF\",\"sw\":\"MOF\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-10-04T10:14:51.000000Z\"}', '2021-10-11 08:36:02', '2021-10-11 08:36:02'),
(363, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":309,\"keyword\":\"lbl_investment_guides_msg\",\"en\":\"Summary Explore untapped investment opportunities across a variety of industries in Tanzania.\",\"sw\":\"Muhtasari Chunguza fursa za uwekezaji ambazo hazijatumika katika tasnia mbalimbali nchini Tanzania\",\"created_at\":\"2021-10-07T09:48:03.000000Z\",\"updated_at\":\"2021-10-07T06:48:58.000000Z\"}', '2021-10-11 08:37:32', '2021-10-11 08:37:32'),
(364, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":305,\"keyword\":\"lbl_sectors_msg\",\"en\":\"Explore untapped investment opportunities across a variety of industries in Tanzania\",\"sw\":\"Chunguza fursa za uwekezaji ambazo hazijatumika katika tasnia anuwai nchini Tanzania\",\"created_at\":\"2021-10-06T15:22:34.000000Z\",\"updated_at\":\"2021-10-06T12:30:47.000000Z\"}', '2021-10-11 08:37:32', '2021-10-11 08:37:32'),
(365, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":1,\"keyword\":\"lbl_site_title\",\"en\":\"Ministry of Finance and Planning\",\"sw\":\"Wizara ya Fedha na Mipango\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-10-04T10:20:28.000000Z\"}', '2021-10-11 08:37:32', '2021-10-11 08:37:32'),
(366, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":2,\"keyword\":\"lbl_site_subtitle\",\"en\":\"The United Republic of Tanzania\",\"sw\":\"Jamhuri ya Muungano wa Tanzania\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-08-04T10:01:50.000000Z\"}', '2021-10-11 08:37:32', '2021-10-11 08:37:32'),
(367, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":99,\"keyword\":\"lbl_content_maintained \",\"en\":\"Content Maintained by Ministry of Finance and Planning\",\"sw\":\"Huendeshwa na Wizara ya Fedha na Mipango\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-10-04T10:20:28.000000Z\"}', '2021-10-11 08:37:32', '2021-10-11 08:37:32'),
(368, 1, 'MenuItem', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/menu-items/11', '{\"id\":11,\"title_sw\":\"Maoni\",\"title_en\":\"Suggestions\",\"status\":1,\"menu_id\":3,\"url\":\"suggestions\",\"url_external\":null,\"link\":1,\"parent\":0,\"position\":5,\"has_sidebar\":0,\"created_at\":\"2021-07-28T09:07:42.000000Z\",\"updated_at\":\"2021-10-12T10:04:32.000000Z\"}', '2021-10-12 07:04:43', '2021-10-12 07:04:43'),
(369, 1, 'MenuItem', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/menu-items/11', '{\"id\":30,\"title_sw\":\"Reasons\",\"title_en\":\"Reasons\",\"status\":1,\"menu_id\":3,\"url\":\"reasons\",\"url_external\":null,\"link\":1,\"parent\":11,\"position\":1,\"has_sidebar\":0,\"created_at\":\"2021-10-08T06:23:54.000000Z\",\"updated_at\":\"2021-10-12T10:04:32.000000Z\"}', '2021-10-12 07:04:43', '2021-10-12 07:04:43'),
(370, 1, 'MenuItem', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/menu-items/11', '{\"id\":31,\"title_sw\":\"Kilimo\",\"title_en\":\"Agriculture\",\"status\":1,\"menu_id\":3,\"url\":\"sectors\\/agriculture\",\"url_external\":null,\"link\":1,\"parent\":11,\"position\":2,\"has_sidebar\":0,\"created_at\":\"2021-10-08T14:46:33.000000Z\",\"updated_at\":\"2021-10-12T10:04:32.000000Z\"}', '2021-10-12 07:04:43', '2021-10-12 07:04:43'),
(371, 1, 'MenuItem', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/menu-items/11', '{\"id\":32,\"title_sw\":\"Geographical Location\",\"title_en\":\"Geographical Location\",\"status\":1,\"menu_id\":3,\"url\":\"reasons\\/geographical-location\",\"url_external\":null,\"link\":1,\"parent\":11,\"position\":3,\"has_sidebar\":0,\"created_at\":\"2021-10-08T14:47:01.000000Z\",\"updated_at\":\"2021-10-12T10:04:32.000000Z\"}', '2021-10-12 07:04:43', '2021-10-12 07:04:43'),
(372, 1, 'MenuItem', 'update', '127.0.0.1', 'http://localhost:8000/cms/menu-items/44', '{\"id\":44,\"title_sw\":\"Vitabu vya Bajeti 2021\",\"title_en\":\"Budget Books 2021\",\"status\":1,\"menu_id\":\"7\",\"url\":\"#\",\"url_external\":null,\"link\":\"1\",\"parent\":43,\"position\":14,\"has_sidebar\":0,\"created_at\":\"2021-10-11T10:42:39.000000Z\",\"updated_at\":\"2021-10-11T10:43:16.000000Z\"}', '2021-10-13 03:52:42', '2021-10-13 03:52:42'),
(373, 1, 'MenuItem', 'update', '127.0.0.1', 'http://localhost:8000/cms/menu-items/45', '{\"id\":45,\"title_sw\":\"Vitabu vya Bajeti 2020\",\"title_en\":\"Budget Books 2020\",\"status\":1,\"menu_id\":\"7\",\"url\":\"#\",\"url_external\":null,\"link\":\"1\",\"parent\":43,\"position\":14,\"has_sidebar\":0,\"created_at\":\"2021-10-11T10:42:48.000000Z\",\"updated_at\":\"2021-10-11T10:43:16.000000Z\"}', '2021-10-13 03:53:19', '2021-10-13 03:53:19'),
(374, 1, 'DocumentCategory', 'store', '127.0.0.1', 'http://localhost:8000/cms/document-categories', '{\"title_sw\":\"Vitabu vya Bajeti 2020\",\"title_en\":\"Budget Books 2020\",\"slug\":\"budget-books-2020\"}', '2021-10-13 06:40:40', '2021-10-13 06:40:40'),
(375, 1, 'Documents', 'store', '127.0.0.1', 'http://localhost:8000/cms/documents', '{\"title_sw\":\"First Phase Books I\",\"title_en\":\"First Phase Books I\",\"category_id\":\"9\",\"active\":\"1\",\"published_date\":\"2021-10-12\",\"file_sw\":\"sw-1634118097-DCEA_CHALLENGES.pdf\",\"file_en\":\"en-1634118097-DCEA_CHALLENGES.pdf\"}', '2021-10-13 06:41:37', '2021-10-13 06:41:37'),
(376, 1, 'MenuItem', 'update', '127.0.0.1', 'http://localhost:8000/cms/menu-items/45', '{\"id\":45,\"title_sw\":\"Vitabu vya Bajeti 2020\",\"title_en\":\"Budget Books 2020\",\"status\":1,\"menu_id\":\"7\",\"url\":\"publications\\/budget-books-2020\",\"url_external\":null,\"link\":\"1\",\"parent\":43,\"position\":14,\"has_sidebar\":0,\"created_at\":\"2021-10-11T10:42:48.000000Z\",\"updated_at\":\"2021-10-13T06:53:19.000000Z\"}', '2021-10-13 06:42:44', '2021-10-13 06:42:44'),
(377, 1, 'ImportantLink', 'store', '127.0.0.1', 'http://localhost:8000/cms/important_links', '{\"title_sw\":\"Ofisi ya Katibu Mkuu Kiongozi\",\"title_en\":\"Chief Secretary\'s Office\",\"url\":\"https:\\/\\/www.chiefsecretary.go.tz\\/\"}', '2021-10-13 08:18:42', '2021-10-13 08:18:42'),
(378, 1, 'WelcomeNote', 'update', '127.0.0.1', 'http://localhost:8000/cms/welcome/1', '{\"id\":1,\"summary_en\":\"Pay Taxes, Build Our Country\",\"summary_sw\":\"Tulipe Kodi, Tujenge Nchi Yetu\",\"content_sw\":\"<p>Put brief introduction about UCSAF Welcome to the UCSAF official website. This is your one stop center for bussiness Lorem ipsum dolor sit amet, consectetur adipiscing.<\\/p>\\r\\n\\r\\n<p>Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations. Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations.<\\/p>\",\"content_en\":\"<p>Put brief introduction about UCSAF Welcome to the UCSAF official website. This is your one stop center for bussiness Lorem ipsum dolor sit amet, consectetur adipiscing.<\\/p>\\r\\n\\r\\n<p>Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations. Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations.<\\/p>\",\"created_at\":\"2021-10-08T18:07:05.000000Z\",\"updated_at\":\"2021-10-08T15:07:05.000000Z\",\"status\":\"1\"}', '2021-10-13 08:36:53', '2021-10-13 08:36:53');
INSERT INTO `timelines` (`id`, `actor`, `object`, `verb`, `ip`, `url`, `content`, `created_at`, `updated_at`) VALUES
(379, 1, 'Administration', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration/7', '{\"id\":7,\"salutation_en\":null,\"salutation_sw\":null,\"fullname\":\"Pasiansi Master\",\"position\":\"4\",\"title_sw\":\"Master of masters\",\"title_en\":\"Master of masters\",\"content_sw\":\"<p>the window doesnt blow where this being is, its almost comes as a fable till reality slaps you in the face&nbsp;the window doesnt blow where this being is, its almost comes as a fable till reality slaps you in the face&nbsp;the window doesnt blow where this being is, its almost comes as a fable till reality slaps you in the face&nbsp;the window doesnt blow where this being is, its almost comes as a fable till reality slaps you in the face<\\/p>\",\"content_en\":\"<p>the window doesnt blow where this being is, its almost comes as a fable till reality slaps you in the face&nbsp;the window doesnt blow where this being is, its almost comes as a fable till reality slaps you in the face&nbsp;the window doesnt blow where this being is, its almost comes as a fable till reality slaps you in the face&nbsp;the window doesnt blow where this being is, its almost comes as a fable till reality slaps you in the face<\\/p>\",\"photo_url\":\"208e85575e6e2fd5e1f6619afdcc784d.jpeg\",\"email\":\"cool@coolnes.com\",\"phone\":null,\"created_at\":\"2021-08-02T07:13:01.000000Z\",\"updated_at\":\"2021-08-02T07:13:01.000000Z\",\"slug\":\"pasiansi-master-2\"}', '2021-10-13 10:04:42', '2021-10-13 10:04:42'),
(380, 1, 'Administration', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration/6', '{\"id\":6,\"salutation_en\":null,\"salutation_sw\":null,\"fullname\":\"Jane Joe\",\"position\":\"2\",\"title_sw\":\"Secretary\",\"title_en\":\"Secretary\",\"content_sw\":\"<p>cool lady and very passionate about many things, if you know what I mean&nbsp;cool lady and very passionate about many things, if you know what I mean&nbsp;cool lady and very passionate about many things, if you know what I mean&nbsp;cool lady and very passionate about many things, if you know what I mean<\\/p>\",\"content_en\":\"<p>cool lady and very passionate about many things, if you know what I mean&nbsp;cool lady and very passionate about many things, if you know what I mean&nbsp;cool lady and very passionate about many things, if you know what I mean&nbsp;cool lady and very passionate about many things, if you know what I mean&nbsp;cool lady and very passionate about many things, if you know what I mean<\\/p>\",\"photo_url\":\"6747f9ef1b8ad6debbd70f1199f55e9c.jpeg\",\"email\":\"jane@janes.com\",\"phone\":null,\"created_at\":\"2021-08-02T07:10:20.000000Z\",\"updated_at\":\"2021-08-02T07:10:20.000000Z\",\"slug\":\"jane-joe\"}', '2021-10-13 10:05:10', '2021-10-13 10:05:10'),
(381, 1, 'Administration', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration/5', '{\"id\":5,\"salutation_en\":null,\"salutation_sw\":null,\"fullname\":\"Pasiansi Master\",\"position\":\"3\",\"title_sw\":\"Pansi Master\",\"title_en\":\"Pansi Master\",\"content_sw\":null,\"content_en\":null,\"photo_url\":\"76b38a956bc3ec50a60b489643c6a86c.jpeg\",\"email\":null,\"phone\":null,\"created_at\":\"2021-07-30T13:13:44.000000Z\",\"updated_at\":\"2021-07-30T13:13:44.000000Z\",\"slug\":\"pasiansi-master\"}', '2021-10-13 10:05:32', '2021-10-13 10:05:32'),
(382, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":312,\"keyword\":\"lbl_projects_msg\",\"en\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor\\\" elit, sed do eiusmod tempor,o eiusmod tempor\",\"sw\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor\\\" elit, sed do eiusmod tempor,o eiusmod tempor\",\"created_at\":\"2021-10-13T16:24:52.000000Z\",\"updated_at\":\"2021-10-13T16:24:52.000000Z\"}', '2021-10-14 03:32:40', '2021-10-14 03:32:40'),
(383, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":173,\"keyword\":\"lbl_projects\",\"en\":\"Our Projects\",\"sw\":\"Miradi Yetu\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2021-10-14 03:32:40', '2021-10-14 03:32:40'),
(384, 1, 'Project', 'store', '127.0.0.1', 'http://localhost:8000/cms/projects', '{\"title_en\":\"Ministry Building\",\"title_sw\":\"Majengo ya Wizara\",\"content_en\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;<\\/p>\",\"content_sw\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;<\\/p>\",\"active\":\"0\",\"photo_url\":\"ab1fa88c655ff401b374f27ee78d80b2.jpeg\",\"slug\":\"ministry-building\"}', '2021-10-14 03:38:09', '2021-10-14 03:38:09'),
(385, 1, 'Project', 'update', '127.0.0.1', 'http://localhost:8000/cms/projects/1', '{\"id\":1,\"title_sw\":\"Majengo ya Wizara\",\"title_en\":\"Ministry Building\",\"summary_sw\":null,\"summary_en\":null,\"content_sw\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;<\\/p>\",\"content_en\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;<\\/p>\",\"photo_url\":\"ab1fa88c655ff401b374f27ee78d80b2.jpeg\",\"active\":\"1\",\"slug\":\"ministry-building\",\"user_id\":0,\"created_at\":\"2021-10-14T06:38:09.000000Z\",\"updated_at\":\"2021-10-14T06:38:09.000000Z\"}', '2021-10-14 03:45:54', '2021-10-14 03:45:54'),
(386, 1, 'Project', 'update', '127.0.0.1', 'http://localhost:8000/cms/projects/1', '{\"id\":1,\"title_sw\":\"Majengo ya Wizara\",\"title_en\":\"Ministry Building\",\"summary_sw\":null,\"summary_en\":null,\"content_sw\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;<\\/p>\",\"content_en\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;<\\/p>\",\"photo_url\":\"75fa7a00ab48205e37144042daa4128b.jpeg\",\"active\":\"1\",\"slug\":\"ministry-building\",\"user_id\":0,\"created_at\":\"2021-10-14T06:38:09.000000Z\",\"updated_at\":\"2021-10-14T06:45:54.000000Z\"}', '2021-10-14 03:46:20', '2021-10-14 03:46:20'),
(387, 1, 'Project', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/projects/1', '{\"id\":1,\"title_sw\":\"Majengo ya Wizara\",\"title_en\":\"Ministry Building\",\"summary_sw\":null,\"summary_en\":null,\"content_sw\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;<\\/p>\",\"content_en\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;<\\/p>\",\"photo_url\":\"75fa7a00ab48205e37144042daa4128b.jpeg\",\"active\":1,\"slug\":\"ministry-building\",\"user_id\":0,\"created_at\":\"2021-10-14T06:38:09.000000Z\",\"updated_at\":\"2021-10-14T06:46:20.000000Z\"}', '2021-10-14 03:46:42', '2021-10-14 03:46:42'),
(388, 1, 'Project', 'store', '127.0.0.1', 'http://localhost:8000/cms/projects', '{\"title_en\":\"Ministry Building\",\"title_sw\":\"Majengo ya Wizara\",\"content_en\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;<\\/p>\",\"content_sw\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;<\\/p>\",\"active\":\"1\",\"photo_url\":\"4559c6f8c4da7ec78768c52ab65ed292.jpeg\",\"slug\":\"ministry-building\"}', '2021-10-14 03:48:28', '2021-10-14 03:48:28'),
(389, 1, 'Project', 'store', '127.0.0.1', 'http://localhost:8000/cms/projects', '{\"title_en\":\"GePG\",\"title_sw\":\"GePG\",\"content_en\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;<\\/p>\",\"content_sw\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;<\\/p>\",\"active\":\"1\",\"photo_url\":\"0f709d14af202ed8701e4e3f304be049.jpeg\",\"slug\":\"gepg\"}', '2021-10-14 03:50:51', '2021-10-14 03:50:51'),
(390, 1, 'OnlineService', 'store', '127.0.0.1', 'http://localhost:8000/cms/online_services', '{\"title_en\":\"e-Office\",\"title_sw\":\"Ofisi Mtandao\",\"url\":\"https:\\/\\/office.ega.go.tz\",\"active\":\"0\",\"icon\":\"icon-1634195887-_service5.png\",\"slug\":\"e-office\"}', '2021-10-14 04:18:07', '2021-10-14 04:18:07'),
(391, 1, 'OnlineService', 'update', '127.0.0.1', 'http://localhost:8000/cms/online_services/1', '{\"id\":1,\"title_sw\":\"Ofisi Mtandao\",\"title_en\":\"e-Office\",\"content_sw\":null,\"content_en\":null,\"url\":\"https:\\/\\/office.ega.go.tz\",\"icon\":\"icon-1634195887-_service5.png\",\"slug\":\"e-office\",\"active\":\"0\",\"user_id\":0,\"created_at\":\"2021-10-14T07:18:07.000000Z\",\"updated_at\":\"2021-10-14T07:18:07.000000Z\"}', '2021-10-14 04:19:16', '2021-10-14 04:19:16'),
(392, 1, 'OnlineService', 'update', '127.0.0.1', 'http://localhost:8000/cms/online_services/1', '{\"id\":1,\"title_sw\":\"Ofisi Mtandaoo\",\"title_en\":\"E-Office\",\"content_sw\":null,\"content_en\":null,\"url\":\"https:\\/\\/office.ega.go.tz\",\"icon\":\"icon-1634195887-_service5.png\",\"slug\":\"e-office\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-14T07:18:07.000000Z\",\"updated_at\":\"2021-10-14T07:18:07.000000Z\"}', '2021-10-14 04:19:38', '2021-10-14 04:19:38'),
(393, 1, 'OnlineService', 'update', '127.0.0.1', 'http://localhost:8000/cms/online_services/1', '{\"id\":1,\"title_sw\":\"Ofisi Mtandao\",\"title_en\":\"E-Office\",\"content_sw\":null,\"content_en\":null,\"url\":\"https:\\/\\/office.ega.go.tz\",\"icon\":\"icon-1634195997-_service2.png\",\"slug\":\"e-office\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-14T07:18:07.000000Z\",\"updated_at\":\"2021-10-14T07:19:38.000000Z\"}', '2021-10-14 04:19:57', '2021-10-14 04:19:57'),
(394, 1, 'OnlineService', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/online_services/1', '{\"id\":1,\"title_sw\":\"Ofisi Mtandao\",\"title_en\":\"E-Office\",\"content_sw\":null,\"content_en\":null,\"url\":\"https:\\/\\/office.ega.go.tz\",\"icon\":\"icon-1634195997-_service2.png\",\"slug\":\"e-office\",\"active\":1,\"user_id\":0,\"created_at\":\"2021-10-14T07:18:07.000000Z\",\"updated_at\":\"2021-10-14T07:19:57.000000Z\"}', '2021-10-14 04:20:09', '2021-10-14 04:20:09'),
(395, 1, 'OnlineService', 'store', '127.0.0.1', 'http://localhost:8000/cms/online_services', '{\"title_en\":\"e-Office\",\"title_sw\":\"Ofisi Mtandao\",\"url\":\"https:\\/\\/office.ega.go.tz\",\"active\":\"1\",\"icon\":\"icon-1634196059-_service5.png\",\"slug\":\"e-office\"}', '2021-10-14 04:20:59', '2021-10-14 04:20:59'),
(396, 1, 'OnlineService', 'store', '127.0.0.1', 'http://localhost:8000/cms/online_services', '{\"title_en\":\"GePG\",\"title_sw\":\"GePG\",\"url\":\"https:\\/\\/gepg.mof.go.tz\",\"active\":\"1\",\"icon\":\"icon-1634196124-gepg.jpg\",\"slug\":\"gepg\"}', '2021-10-14 04:22:04', '2021-10-14 04:22:04'),
(397, 1, 'RegionalOffice', 'update', '127.0.0.1', 'http://localhost:8000/cms/regional_office/1', '{\"id\":1,\"name_en\":\"Treasury Square Building\",\"name_sw\":\"Treasury Square Building\",\"physical_address_sw\":\"S.L.P 2908,\\r\\nDododma, Tanzania\",\"physical_address_en\":\"P.O.BOX 2908,\\r\\nDododma, Tanzania\",\"phone\":\"+255-282 560333\",\"toll_free\":\"255 222 15612\",\"fax\":\"+255-282 560333\",\"email\":\"ps@mof.go.tz\",\"content_sw\":null,\"content_en\":null,\"photo_url\":null,\"latitude\":null,\"longitude\":null,\"slug\":\"tanzania-national-business-council\",\"headquarter\":\"1\",\"used_as\":\"1\",\"created_at\":\"2021-07-28T14:05:10.000000Z\",\"updated_at\":\"2021-09-20T12:53:47.000000Z\"}', '2021-10-17 13:41:06', '2021-10-17 13:41:06'),
(398, 1, 'GoogleMap', 'update', '127.0.0.1', 'http://localhost:8000/cms/googlemaps/1', '{\"id\":1,\"url\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3966.5789489978765!2d35.75667411488161!3d-6.187059395520866!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x184de54b0ea19e2b%3A0xe7ac38f77fa4bac4!2sTreasury%20Square!5e0!3m2!1sen!2stz!4v1634488787951!5m2!1sen!2stz\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\"><\\/iframe>\",\"user_id\":1,\"created_at\":\"2021-07-01T08:13:01.000000Z\",\"updated_at\":\"2021-10-08T13:25:52.000000Z\"}', '2021-10-17 13:41:23', '2021-10-17 13:41:23'),
(399, 1, 'RegionalOffice', 'store', '127.0.0.1', 'http://localhost:8000/cms/regional_office', '{\"name_en\":\"Dar es Salaam Offices\",\"name_sw\":\"Ofisi za Dar es Salaam\",\"phone\":\"255762000111\",\"toll_free\":\"255 222 15612\",\"fax\":\"255 222 54854\",\"email\":\"dar@mof.go.tz\",\"used_as\":\"1\",\"headquarter\":\"0\",\"physical_address_sw\":\"Address\",\"physical_address_en\":\"Address\",\"slug\":\"dar-es-salaam-offices\"}', '2021-10-17 13:49:00', '2021-10-17 13:49:00'),
(400, 1, 'MenuItem', 'update', '127.0.0.1', 'http://localhost:8000/cms/menu-items/38', '{\"id\":38,\"title_sw\":\"Notice Board\",\"title_en\":\"Notice Board\",\"status\":1,\"menu_id\":\"7\",\"url\":\"notices\",\"url_external\":null,\"link\":\"1\",\"parent\":36,\"position\":14,\"has_sidebar\":0,\"created_at\":\"2021-10-11T10:24:08.000000Z\",\"updated_at\":\"2021-10-11T10:43:16.000000Z\"}', '2021-10-17 15:55:57', '2021-10-17 15:55:57'),
(401, 1, 'MenuItem', 'update', '127.0.0.1', 'http://localhost:8000/cms/menu-items/38', '{\"id\":38,\"title_sw\":\"Taarifa Muhimu\",\"title_en\":\"Notice Board\",\"status\":1,\"menu_id\":\"7\",\"url\":\"notices\",\"url_external\":null,\"link\":\"1\",\"parent\":36,\"position\":14,\"has_sidebar\":0,\"created_at\":\"2021-10-11T10:24:08.000000Z\",\"updated_at\":\"2021-10-17T18:55:57.000000Z\"}', '2021-10-17 16:02:09', '2021-10-17 16:02:09'),
(402, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":24,\"keyword\":\"lbl_recent_press\",\"en\":\"Press releases\",\"sw\":\"Taarifa kwa vyombo vya habari\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2021-10-17 16:06:16', '2021-10-17 16:06:16'),
(403, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":79,\"keyword\":\"lbl_press\",\"en\":\"Press Release\",\"sw\":\"Vyombo vya Habari\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2021-10-17 16:06:16', '2021-10-17 16:06:16'),
(404, 1, 'Rate', 'store', '127.0.0.1', 'http://localhost:8000/cms/rates', '{\"title_en\":\"Exchange Rate\",\"title_sw\":\"Kiwango cha Ubadilishaji\",\"rate_percentage\":\"3.2%\",\"url\":\"http:\\/\\/tourism.go.tz\",\"rate_date\":\"2021-10-01\",\"active\":\"0\",\"photo_url\":\"photo_url-1634539038-exchange.jpg\",\"slug\":\"exchange-rate\"}', '2021-10-18 03:37:18', '2021-10-18 03:37:18'),
(405, 1, 'Rate', 'update', '127.0.0.1', 'http://localhost:8000/cms/rates/1', '{\"id\":1,\"title_sw\":\"Kiwango cha Ubadilishaji\",\"title_en\":\"Exchange Rate\",\"rate_percentage\":\"3.2%\",\"rate_date\":\"2021-10-01\",\"url\":\"http:\\/\\/tourism.go.tz\",\"photo_url\":\"photo_url-1634539038-exchange.jpg\",\"slug\":\"exchange-rate\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-18T06:37:18.000000Z\",\"updated_at\":\"2021-10-18T06:37:18.000000Z\"}', '2021-10-18 03:42:48', '2021-10-18 03:42:48'),
(406, 1, 'Rate', 'update', '127.0.0.1', 'http://localhost:8000/cms/rates/1', '{\"id\":1,\"title_sw\":\"Kiwango cha Ubadilishaji\",\"title_en\":\"Exchange Rate\",\"rate_percentage\":\"3.2%\",\"rate_date\":\"2021-10-01\",\"url\":\"http:\\/\\/tourism.go.tz\",\"photo_url\":\"photo-1634539787-emblem.png\",\"slug\":\"exchange-rate\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-18T06:37:18.000000Z\",\"updated_at\":\"2021-10-18T06:42:48.000000Z\"}', '2021-10-18 03:49:47', '2021-10-18 03:49:47'),
(407, 1, 'Rate', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/rates/1', '{\"id\":1,\"title_sw\":\"Kiwango cha Ubadilishaji\",\"title_en\":\"Exchange Rate\",\"rate_percentage\":\"3.2%\",\"rate_date\":\"2021-10-01\",\"url\":\"http:\\/\\/tourism.go.tz\",\"photo_url\":\"photo-1634539787-emblem.png\",\"slug\":\"exchange-rate\",\"active\":1,\"user_id\":0,\"created_at\":\"2021-10-18T06:37:18.000000Z\",\"updated_at\":\"2021-10-18T06:49:47.000000Z\"}', '2021-10-18 03:50:30', '2021-10-18 03:50:30'),
(408, 1, 'Rate', 'store', '127.0.0.1', 'http://localhost:8000/cms/rates', '{\"title_en\":\"Exchange Rate\",\"title_sw\":\"Kiwango cha Ubadilishaji\",\"rate_percentage\":\"3.2%\",\"url\":\"http:\\/\\/bot.go.tz\",\"rate_date\":\"2021-10-01\",\"active\":\"1\",\"photo_url\":\"photo_url-1634540025-exchange.jpg\",\"slug\":\"exchange-rate\"}', '2021-10-18 03:53:45', '2021-10-18 03:53:45'),
(409, 1, 'Rate', 'update', '127.0.0.1', 'http://localhost:8000/cms/rates/2', '{\"id\":2,\"title_sw\":\"Kiwango cha Ubadilishaji\",\"title_en\":\"Exchange Rate\",\"rate_percentage\":\"3.2%\",\"rate_date\":\"2021-10-01\",\"url\":\"https:\\/\\/bot.go.tz\",\"photo_url\":\"photo_url-1634540025-exchange.jpg\",\"slug\":\"exchange-rate\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-18T06:53:45.000000Z\",\"updated_at\":\"2021-10-18T06:53:45.000000Z\"}', '2021-10-18 03:56:21', '2021-10-18 03:56:21'),
(410, 1, 'Rate', 'store', '127.0.0.1', 'http://localhost:8000/cms/rates', '{\"title_en\":\"Inflation Rate\",\"title_sw\":\"Kiwango cha Mfumko\",\"rate_percentage\":\"-4.2%\",\"url\":\"https:\\/\\/nbs.go.tz\",\"rate_date\":\"2021-11-01\",\"active\":\"1\",\"photo_url\":\"photo_url-1634540407-inflation.jpg\",\"slug\":\"inflation-rate\"}', '2021-10-18 04:00:07', '2021-10-18 04:00:07'),
(411, 1, 'Rate', 'update', '127.0.0.1', 'http://localhost:8000/cms/rates/2', '{\"id\":2,\"title_sw\":\"Kiwango cha Ubadilishaji\",\"title_en\":\"Exchange Rate\",\"rate_percentage\":\"3.2%\",\"rate_date\":\"2021-10-01\",\"url\":\"http:\\/\\/bot.go.tz\",\"photo_url\":\"photo_url-1634540025-exchange.jpg\",\"slug\":\"exchange-rate\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-18T06:53:45.000000Z\",\"updated_at\":\"2021-10-18T06:56:21.000000Z\"}', '2021-10-18 04:38:29', '2021-10-18 04:38:29'),
(412, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":100,\"keyword\":\"lbl_site_title_short \",\"en\":\"MUWASA\",\"sw\":\"MUWASA\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-10-11T11:36:02.000000Z\"}', '2021-10-25 06:38:54', '2021-10-25 06:38:54'),
(413, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":1,\"keyword\":\"lbl_site_title\",\"en\":\"Musoma Urban Water Supply and Sanitation Authority\",\"sw\":\"Mamlaka ya Maji Musoma\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-10-11T11:37:32.000000Z\"}', '2021-10-25 06:41:10', '2021-10-25 06:41:10'),
(414, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":99,\"keyword\":\"lbl_content_maintained \",\"en\":\"Content Maintained by Musoma Urban Water Supply and Sanitation Authority\",\"sw\":\"Huendeshwa na Mamlaka ya Maji Musoma\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-10-11T11:37:32.000000Z\"}', '2021-10-25 06:41:10', '2021-10-25 06:41:10'),
(415, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":281,\"keyword\":\"lbl_site_sub_subtitle\",\"en\":\"Ministry of Water\",\"sw\":\"Wizara ya Maji\",\"created_at\":\"2021-08-06T14:37:55.000000Z\",\"updated_at\":\"2021-08-06T14:37:55.000000Z\"}', '2021-10-25 06:42:28', '2021-10-25 06:42:28'),
(416, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":94,\"keyword\":\"lbl_print\",\"en\":\"Chapisha\",\"sw\":\"Chapisha\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2021-10-25 06:42:28', '2021-10-25 06:42:28'),
(417, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":125,\"keyword\":\"privacy_policy\",\"en\":\"Privacy Policy\",\"sw\":\"Sera ya Faragha\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2021-10-25 06:42:28', '2021-10-25 06:42:28'),
(418, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":313,\"keyword\":\"lbl_online_services\",\"en\":\"Online Services\",\"sw\":\"Huduma Mtandao\",\"created_at\":\"2021-10-14T10:49:03.000000Z\",\"updated_at\":\"2021-10-14T10:49:03.000000Z\"}', '2021-10-25 10:00:34', '2021-10-25 10:00:34'),
(419, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":248,\"keyword\":\"lbl_our_services_msg\",\"en\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor\\\" elit, sed do eiusmod tempor,o eiusmod tempor\\\" Lorem ipsum dolor sit amet, consectetur adipiscing\",\"sw\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor\\\" elit, sed do eiusmod tempor,o eiusmod tempor\\\" Lorem ipsum dolor sit amet, consectetur adipiscing\",\"created_at\":\"2020-06-23T09:14:51.000000Z\",\"updated_at\":\"2021-09-11T12:45:00.000000Z\"}', '2021-10-25 10:00:34', '2021-10-25 10:00:34'),
(420, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":16,\"keyword\":\"lbl_our_services\",\"en\":\"Our Services\",\"sw\":\"Huduma Zetu\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2021-10-25 10:00:34', '2021-10-25 10:00:34'),
(421, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":43,\"keyword\":\"lbl_e_services_links\",\"en\":\"E-Services\",\"sw\":\"Huduma Mtandao\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2021-10-25 10:00:34', '2021-10-25 10:00:34'),
(422, 1, 'AdministrationCategoriesMembers', 'store', '127.0.0.1', 'http://localhost:8000/cms/administration_categories_members', '{\"member_id\":\"7\",\"title_en\":\"Chairman\",\"title_sw\":\"Mwenyekiti\",\"position\":\"2\",\"category_id\":\"1\"}', '2021-10-26 03:25:17', '2021-10-26 03:25:17'),
(423, 1, 'AdministrationCategoriesMembers', 'store', '127.0.0.1', 'http://localhost:8000/cms/administration_categories_members', '{\"member_id\":\"1\",\"title_en\":\"Member\",\"title_sw\":\"Mjumbe\",\"position\":\"1\",\"category_id\":\"1\"}', '2021-10-26 03:44:08', '2021-10-26 03:44:08'),
(424, 1, 'AdministrationCategories', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration_categories/1', '{\"id\":1,\"title_sw\":\"Bodi ya Wakurugenzi\",\"title_en\":\"Board Members\",\"summary_sw\":\"Hii ni Bodi ya Wakuregenzi.\\r\\n\\r\\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"summary_en\":\"This is the Board Members.\\r\\n\\r\\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"slug\":\"board-members\",\"content\":null,\"active\":1,\"created_at\":\"2021-08-09T15:32:20.000000Z\",\"updated_at\":\"2021-10-08T11:49:36.000000Z\"}', '2021-10-26 04:37:11', '2021-10-26 04:37:11'),
(425, 1, 'Announcement', 'update', '127.0.0.1', 'http://localhost:8000/cms/announcements/5', '{\"id\":5,\"name_sw\":\"Lorem Ipsum\\u00a0is simply dummy text of the printing and typesetting industry\",\"name_en\":\"Lorem Ipsum\\u00a0is simply dummy text of the printing and typesetting industry\",\"content_sw\":\"<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"content_en\":\"<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"active\":\"1\",\"slug\":\"mapitio-ya-kikao-kazi-cha-utendaji-wa-TPSC-5\",\"created_at\":\"2021-08-02T06:45:56.000000Z\",\"updated_at\":\"2021-08-02T06:45:56.000000Z\"}', '2021-10-27 04:11:16', '2021-10-27 04:11:16');
INSERT INTO `timelines` (`id`, `actor`, `object`, `verb`, `ip`, `url`, `content`, `created_at`, `updated_at`) VALUES
(426, 1, 'WelcomeNote', 'update', '127.0.0.1', 'http://localhost:8000/cms/welcome/1', '{\"id\":1,\"summary_en\":\"Pay Taxes, Build Our Country\",\"summary_sw\":\"Tulipe Kodi, Tujenge Nchi Yetu\",\"content_sw\":\"<p><img alt=\\\"\\\" src=\\\"http:\\/\\/localhost:8000\\/uploads\\/gallery\\/612bcdabb113ed30b94b4b6ea8a67032.jpeg\\\" style=\\\"float:left; height:111px; margin-left:10px; margin-right:10px; width:197px\\\" \\/>Put brief introduction about UCSAF Welcome to the UCSAF official website. This is your one stop center for bussiness Lorem ipsum dolor sit amet, consectetur adipiscing.<\\/p>\\r\\n\\r\\n<p>Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations. Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations.<\\/p>\",\"content_en\":\"<p>Put brief introduction about UCSAF Welcome to the UCSAF official website. This is your one stop center for bussiness Lorem ipsum dolor sit amet, consectetur adipiscing.<\\/p>\\r\\n\\r\\n<p>Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations. Our website contains information, guidelines and procedures on matters relating to UCSAF and its operations.<\\/p>\",\"created_at\":\"2021-10-13T14:36:53.000000Z\",\"updated_at\":\"2021-10-13T11:36:53.000000Z\",\"status\":\"1\"}', '2021-10-27 04:32:49', '2021-10-27 04:32:49'),
(427, 1, 'WelcomeNote', 'update', '127.0.0.1', 'http://localhost:8000/cms/welcome/1', '{\"id\":1,\"summary_en\":\"Pay Taxes, Build Our Country\",\"summary_sw\":\"Tulipe Kodi, Tujenge Nchi Yetu\",\"content_sw\":\"<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\",\"content_en\":\"<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\",\"created_at\":\"2021-10-27T10:32:49.000000Z\",\"updated_at\":\"2021-10-27T07:32:49.000000Z\",\"status\":\"1\"}', '2021-10-27 04:37:14', '2021-10-27 04:37:14'),
(428, 1, 'GoogleMap', 'update', '127.0.0.1', 'http://localhost:8000/cms/googlemaps/1', '{\"id\":1,\"url\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3988.4599502942983!2d33.80024251536055!3d-1.4951419989096215!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x19d301e08883e8fd%3A0xa57a1c3655ae5f39!2sMUWASA!5e0!3m2!1sen!2stz!4v1635346884061!5m2!1sen!2stz\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\"><\\/iframe>\",\"user_id\":1,\"created_at\":\"2021-07-01T08:13:01.000000Z\",\"updated_at\":\"2021-10-17T16:41:23.000000Z\"}', '2021-10-27 12:01:39', '2021-10-27 12:01:39'),
(429, 1, 'OnlineService', 'update', '127.0.0.1', 'http://localhost:8000/cms/online_services/3', '{\"id\":3,\"title_sw\":\"GePG\",\"title_en\":\"GePG\",\"content_sw\":null,\"content_en\":null,\"url\":\"https:\\/\\/gepg.mof.go.tz\",\"icon\":\"icon-1634196124-gepg.jpg\",\"slug\":\"gepg\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-14T07:22:04.000000Z\",\"updated_at\":\"2021-10-14T07:22:04.000000Z\",\"service_type\":\"1\"}', '2021-10-27 12:28:56', '2021-10-27 12:28:56'),
(430, 1, 'OnlineService', 'update', '127.0.0.1', 'http://localhost:8000/cms/online_services/2', '{\"id\":2,\"title_sw\":\"Ofisi Mtandao\",\"title_en\":\"e-Office\",\"service_type\":\"3\",\"slug\":\"e-office\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-14T07:20:59.000000Z\",\"updated_at\":\"2021-10-14T07:20:59.000000Z\"}', '2021-10-27 12:52:56', '2021-10-27 12:52:56'),
(431, 1, 'OnlineService', 'update', '127.0.0.1', 'http://localhost:8000/cms/online_services/2', '{\"id\":2,\"title_sw\":\"Ofisi Mtandao\",\"title_en\":\"e-Office\",\"service_type\":\"1\",\"slug\":\"e-office\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-14T07:20:59.000000Z\",\"updated_at\":\"2021-10-27T15:52:56.000000Z\"}', '2021-10-27 13:04:42', '2021-10-27 13:04:42'),
(432, 1, 'OnlineService', 'update', '127.0.0.1', 'http://localhost:8000/cms/online_services/2', '{\"id\":2,\"title_sw\":\"Ofisi Mtandao\",\"title_en\":\"e-Office\",\"service_type\":\"3\",\"slug\":\"e-office\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-14T07:20:59.000000Z\",\"updated_at\":\"2021-10-27T16:04:42.000000Z\"}', '2021-10-27 13:05:06', '2021-10-27 13:05:06'),
(433, 1, 'OnlineService', 'update', '127.0.0.1', 'http://localhost:8000/cms/online_services/2', '{\"id\":2,\"title_sw\":\"Ofisi Mtandao\",\"title_en\":\"e-Office\",\"service_type\":\"1\",\"slug\":\"e-office\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-14T07:20:59.000000Z\",\"updated_at\":\"2021-10-27T16:05:06.000000Z\"}', '2021-10-27 13:05:36', '2021-10-27 13:05:36'),
(434, 1, 'OnlineService', 'update', '127.0.0.1', 'http://localhost:8000/cms/online_services/3', '{\"id\":3,\"title_sw\":\"GePG\",\"title_en\":\"GePG\",\"service_type\":\"2\",\"slug\":\"gepg\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-14T07:22:04.000000Z\",\"updated_at\":\"2021-10-14T07:22:04.000000Z\"}', '2021-10-28 02:41:52', '2021-10-28 02:41:52'),
(435, 1, 'OnlineService', 'update', '127.0.0.1', 'http://localhost:8000/cms/online_services/3', '{\"id\":3,\"title_sw\":\"GePG\",\"title_en\":\"GePG\",\"service_type\":\"4\",\"slug\":\"gepg\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-14T07:22:04.000000Z\",\"updated_at\":\"2021-10-14T07:22:04.000000Z\"}', '2021-10-28 02:42:11', '2021-10-28 02:42:11'),
(436, 1, 'OnlineService', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/online_services/3', '{\"id\":3,\"title_sw\":\"GePG\",\"title_en\":\"GePG\",\"service_type\":4,\"slug\":\"gepg\",\"active\":1,\"user_id\":0,\"created_at\":\"2021-10-14T07:22:04.000000Z\",\"updated_at\":\"2021-10-28T05:42:11.000000Z\"}', '2021-10-28 02:52:20', '2021-10-28 02:52:20'),
(437, 1, 'OnlineService', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/online_services/2', '{\"id\":2,\"title_sw\":\"Ofisi Mtandao\",\"title_en\":\"e-Office\",\"service_type\":1,\"slug\":\"e-office\",\"active\":1,\"user_id\":0,\"created_at\":\"2021-10-14T07:20:59.000000Z\",\"updated_at\":\"2021-10-27T16:05:36.000000Z\"}', '2021-10-28 02:52:24', '2021-10-28 02:52:24'),
(438, 1, 'OnlineService', 'store', '127.0.0.1', 'http://localhost:8000/cms/online_services', '{\"title_en\":\"New Connection Service\",\"title_sw\":\"Maunganisho Mapya ya Maji\",\"service_type\":\"1\",\"active\":\"0\",\"slug\":\"new-connection-service\"}', '2021-10-28 02:54:10', '2021-10-28 02:54:10'),
(439, 1, 'OnlineService', 'store', '127.0.0.1', 'http://localhost:8000/cms/online_services', '{\"title_en\":\"Report Issue\",\"title_sw\":\"Toa Taarifa\",\"service_type\":\"2\",\"active\":\"1\",\"slug\":\"report-issue\"}', '2021-10-28 02:55:39', '2021-10-28 02:55:39'),
(440, 1, 'OnlineService', 'store', '127.0.0.1', 'http://localhost:8000/cms/online_services', '{\"title_en\":\"View Bill\",\"title_sw\":\"Angalia Bili\",\"service_type\":\"3\",\"active\":\"1\",\"slug\":\"view-bill\"}', '2021-10-28 02:56:26', '2021-10-28 02:56:26'),
(441, 1, 'OnlineService', 'store', '127.0.0.1', 'http://localhost:8000/cms/online_services', '{\"title_en\":\"Remove Sewage\",\"title_sw\":\"Remove Sewage\",\"service_type\":\"4\",\"active\":\"1\",\"slug\":\"remove-sewage\"}', '2021-10-28 02:58:47', '2021-10-28 02:58:47'),
(442, 1, 'OnlineService', 'update', '127.0.0.1', 'http://localhost:8000/cms/online_services/6', '{\"id\":6,\"title_sw\":\"Angalia Bili\",\"title_en\":\"View Bill\",\"service_type\":\"3\",\"slug\":\"view-bill\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-28T05:56:26.000000Z\",\"updated_at\":\"2021-10-28T05:56:26.000000Z\"}', '2021-10-28 02:58:53', '2021-10-28 02:58:53'),
(443, 1, 'OnlineService', 'update', '127.0.0.1', 'http://localhost:8000/cms/online_services/6', '{\"id\":6,\"title_sw\":\"Angalia Bili\",\"title_en\":\"View Bill\",\"service_type\":\"3\",\"slug\":\"view-bill\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-28T05:56:26.000000Z\",\"updated_at\":\"2021-10-28T05:56:26.000000Z\"}', '2021-10-28 02:59:16', '2021-10-28 02:59:16'),
(444, 1, 'OnlineService', 'update', '127.0.0.1', 'http://localhost:8000/cms/online_services/4', '{\"id\":4,\"title_sw\":\"Maunganisho Mapya ya Maji\",\"title_en\":\"New Connection Service\",\"service_type\":\"1\",\"slug\":\"new-connection-service\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-28T05:54:10.000000Z\",\"updated_at\":\"2021-10-28T05:54:10.000000Z\"}', '2021-10-28 02:59:54', '2021-10-28 02:59:54'),
(445, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":291,\"keyword\":\"lbl_location\",\"en\":\"Location\",\"sw\":\"Eneo \\/ Mahali\",\"created_at\":\"2021-08-06T14:37:55.000000Z\",\"updated_at\":\"2021-08-06T14:37:55.000000Z\"}', '2021-10-29 07:02:51', '2021-10-29 07:02:51'),
(446, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":317,\"keyword\":\"lbl_location_status\",\"en\":\"Location Status\",\"sw\":\"Hali ya Eneo\",\"created_at\":\"2021-10-29T13:05:07.000000Z\",\"updated_at\":\"2021-10-29T13:05:07.000000Z\"}', '2021-10-29 07:07:04', '2021-10-29 07:07:04'),
(447, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":316,\"keyword\":\"lbl_connection_type\",\"en\":\"Connection Type\",\"sw\":\"Aina ya Maunganisho\",\"created_at\":\"2021-10-29T13:04:48.000000Z\",\"updated_at\":\"2021-10-29T13:04:48.000000Z\"}', '2021-10-29 07:07:04', '2021-10-29 07:07:04'),
(448, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":315,\"keyword\":\"lbl_account_number\",\"en\":\"Account Number\",\"sw\":\"Namba ya Akaunti\",\"created_at\":\"2021-10-29T13:00:46.000000Z\",\"updated_at\":\"2021-10-29T13:00:46.000000Z\"}', '2021-10-29 07:07:04', '2021-10-29 07:07:04'),
(449, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":314,\"keyword\":\"lbl_request_success\",\"en\":\"Request or Report has been submitted successful\",\"sw\":\"Maombi au Ripoti imewasilishwa kikamilifu\",\"created_at\":\"2021-10-28T14:10:47.000000Z\",\"updated_at\":\"2021-10-28T14:10:47.000000Z\"}', '2021-10-29 07:07:04', '2021-10-29 07:07:04'),
(450, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":313,\"keyword\":\"lbl_online_services\",\"en\":\"Online Services\",\"sw\":\"Huduma Mtandao\",\"created_at\":\"2021-10-14T10:49:03.000000Z\",\"updated_at\":\"2021-10-14T10:49:03.000000Z\"}', '2021-10-29 07:07:04', '2021-10-29 07:07:04'),
(451, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":312,\"keyword\":\"lbl_projects_msg\",\"en\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor\\\" elit, sed do eiusmod tempor,o eiusmod tempor\",\"sw\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor\\\" elit, sed do eiusmod tempor,o eiusmod tempor\",\"created_at\":\"2021-10-13T16:24:52.000000Z\",\"updated_at\":\"2021-10-13T16:24:52.000000Z\"}', '2021-10-29 07:07:04', '2021-10-29 07:07:04'),
(452, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":301,\"keyword\":\"lbl_resource_not_found\",\"en\":\"Sorry, The Resource you are looking for was not found.\",\"sw\":\"Samahani, Rasilimali uliyotafuta haikupatikana.\",\"created_at\":\"2021-09-21T09:58:12.000000Z\",\"updated_at\":\"2021-10-06T12:30:47.000000Z\"}', '2021-10-29 07:07:04', '2021-10-29 07:07:04'),
(453, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":300,\"keyword\":\"lbl_not_found\",\"en\":\"Not Found\",\"sw\":\"Haipatikani\",\"created_at\":\"2021-09-21T09:56:31.000000Z\",\"updated_at\":\"2021-09-21T09:56:31.000000Z\"}', '2021-10-29 07:07:04', '2021-10-29 07:07:04'),
(454, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":299,\"keyword\":\"lbl_view_offices\",\"en\":\"View All Offices\",\"sw\":\"Tazama Ofisi Zote\",\"created_at\":\"2021-09-20T10:05:01.000000Z\",\"updated_at\":\"2021-09-20T10:05:01.000000Z\"}', '2021-10-29 07:07:04', '2021-10-29 07:07:04'),
(455, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":292,\"keyword\":\"lbl_latest_announcement\",\"en\":\"Latest Announcements\",\"sw\":\"Matangazo Mapya\",\"created_at\":\"2021-08-06T14:49:39.000000Z\",\"updated_at\":\"2021-08-06T14:49:39.000000Z\"}', '2021-10-29 07:07:04', '2021-10-29 07:07:04'),
(456, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":324,\"keyword\":\"lbl_issue_scarcity\",\"en\":\"Scarcity of Water\",\"sw\":\"Uhaba wa Maji\",\"created_at\":\"2021-10-29T13:21:04.000000Z\",\"updated_at\":\"2021-10-29T13:21:04.000000Z\"}', '2021-10-29 07:26:39', '2021-10-29 07:26:39'),
(457, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":323,\"keyword\":\"lbl_issue_leakage\",\"en\":\"Leakage of Water\",\"sw\":\"Uvujaji wa Maji\",\"created_at\":\"2021-10-29T13:20:25.000000Z\",\"updated_at\":\"2021-10-29T13:20:25.000000Z\"}', '2021-10-29 07:26:39', '2021-10-29 07:26:39'),
(458, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":322,\"keyword\":\"lbl_issue_theft\",\"en\":\"Theft of Infrastructures\",\"sw\":\"Wizi wa Miundombinu\",\"created_at\":\"2021-10-29T13:19:35.000000Z\",\"updated_at\":\"2021-10-29T13:19:35.000000Z\"}', '2021-10-29 07:26:39', '2021-10-29 07:26:39'),
(459, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":321,\"keyword\":\"lbl_not_measured\",\"en\":\"NOT Measured\",\"sw\":\"Halijapimwa\",\"created_at\":\"2021-10-29T13:16:34.000000Z\",\"updated_at\":\"2021-10-29T13:16:34.000000Z\"}', '2021-10-29 07:26:39', '2021-10-29 07:26:39'),
(460, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":320,\"keyword\":\"lbl_measured\",\"en\":\"Measured\",\"sw\":\"Limepimwa\",\"created_at\":\"2021-10-29T13:16:19.000000Z\",\"updated_at\":\"2021-10-29T13:16:19.000000Z\"}', '2021-10-29 07:26:39', '2021-10-29 07:26:39'),
(461, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":319,\"keyword\":\"lbl_sewage_service\",\"en\":\"Sewage Service\",\"sw\":\"Huduma ya Maji Taka\",\"created_at\":\"2021-10-29T13:15:57.000000Z\",\"updated_at\":\"2021-10-29T13:15:57.000000Z\"}', '2021-10-29 07:26:39', '2021-10-29 07:26:39'),
(462, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":318,\"keyword\":\"lbl_clean_water_service\",\"en\":\"Clean Water Service\",\"sw\":\"Huduma ya Maji Safi\",\"created_at\":\"2021-10-29T13:15:40.000000Z\",\"updated_at\":\"2021-10-29T13:15:40.000000Z\"}', '2021-10-29 07:26:39', '2021-10-29 07:26:39'),
(463, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":317,\"keyword\":\"lbl_location_status\",\"en\":\"Location Status\",\"sw\":\"Hali ya Eneo\",\"created_at\":\"2021-10-29T13:05:07.000000Z\",\"updated_at\":\"2021-10-29T10:07:04.000000Z\"}', '2021-10-29 07:26:39', '2021-10-29 07:26:39'),
(464, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":316,\"keyword\":\"lbl_connection_type\",\"en\":\"Connection Type\",\"sw\":\"Aina ya Maunganisho\",\"created_at\":\"2021-10-29T13:04:48.000000Z\",\"updated_at\":\"2021-10-29T10:07:04.000000Z\"}', '2021-10-29 07:26:39', '2021-10-29 07:26:39'),
(465, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":315,\"keyword\":\"lbl_account_number\",\"en\":\"Account Number\",\"sw\":\"Namba ya Akaunti\",\"created_at\":\"2021-10-29T13:00:46.000000Z\",\"updated_at\":\"2021-10-29T13:00:46.000000Z\"}', '2021-10-29 07:26:39', '2021-10-29 07:26:39'),
(466, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":325,\"keyword\":\"lbl_issue_type\",\"en\":\"Issue Type\",\"sw\":\"Aina ya Taarifa\",\"created_at\":\"2021-10-29T13:27:52.000000Z\",\"updated_at\":\"2021-10-29T13:27:52.000000Z\"}', '2021-10-29 07:29:08', '2021-10-29 07:29:08'),
(467, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":324,\"keyword\":\"lbl_issue_scarcity\",\"en\":\"Scarcity of Water\",\"sw\":\"Uhaba wa Maji\",\"created_at\":\"2021-10-29T13:21:04.000000Z\",\"updated_at\":\"2021-10-29T10:26:39.000000Z\"}', '2021-10-29 07:29:08', '2021-10-29 07:29:08'),
(468, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":323,\"keyword\":\"lbl_issue_leakage\",\"en\":\"Leakage of Water\",\"sw\":\"Uvujaji wa Maji\",\"created_at\":\"2021-10-29T13:20:25.000000Z\",\"updated_at\":\"2021-10-29T10:26:39.000000Z\"}', '2021-10-29 07:29:08', '2021-10-29 07:29:08'),
(469, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":322,\"keyword\":\"lbl_issue_theft\",\"en\":\"Theft of Infrastructures\",\"sw\":\"Wizi wa Miundombinu\",\"created_at\":\"2021-10-29T13:19:35.000000Z\",\"updated_at\":\"2021-10-29T10:26:39.000000Z\"}', '2021-10-29 07:29:08', '2021-10-29 07:29:08'),
(470, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":321,\"keyword\":\"lbl_not_measured\",\"en\":\"NOT Measured\",\"sw\":\"Halijapimwa\",\"created_at\":\"2021-10-29T13:16:34.000000Z\",\"updated_at\":\"2021-10-29T10:26:39.000000Z\"}', '2021-10-29 07:29:08', '2021-10-29 07:29:08'),
(471, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":320,\"keyword\":\"lbl_measured\",\"en\":\"Measured\",\"sw\":\"Limepimwa\",\"created_at\":\"2021-10-29T13:16:19.000000Z\",\"updated_at\":\"2021-10-29T10:26:39.000000Z\"}', '2021-10-29 07:29:08', '2021-10-29 07:29:08'),
(472, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":319,\"keyword\":\"lbl_sewage_service\",\"en\":\"Sewage Service\",\"sw\":\"Huduma ya Maji Taka\",\"created_at\":\"2021-10-29T13:15:57.000000Z\",\"updated_at\":\"2021-10-29T10:26:39.000000Z\"}', '2021-10-29 07:29:08', '2021-10-29 07:29:08'),
(473, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":318,\"keyword\":\"lbl_clean_water_service\",\"en\":\"Clean Water Service\",\"sw\":\"Huduma ya Maji Safi\",\"created_at\":\"2021-10-29T13:15:40.000000Z\",\"updated_at\":\"2021-10-29T10:26:39.000000Z\"}', '2021-10-29 07:29:08', '2021-10-29 07:29:08'),
(474, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":317,\"keyword\":\"lbl_location_status\",\"en\":\"Location Status\",\"sw\":\"Hali ya Eneo\",\"created_at\":\"2021-10-29T13:05:07.000000Z\",\"updated_at\":\"2021-10-29T10:07:04.000000Z\"}', '2021-10-29 07:29:08', '2021-10-29 07:29:08'),
(475, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":316,\"keyword\":\"lbl_connection_type\",\"en\":\"Connection Type\",\"sw\":\"Aina ya Maunganisho\",\"created_at\":\"2021-10-29T13:04:48.000000Z\",\"updated_at\":\"2021-10-29T10:07:04.000000Z\"}', '2021-10-29 07:29:08', '2021-10-29 07:29:08'),
(476, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":329,\"keyword\":\"lbl_bill_type\",\"en\":\"Bill Type\",\"sw\":\"Aina ya Bill\",\"created_at\":\"2021-10-29T14:33:03.000000Z\",\"updated_at\":\"2021-10-29T14:33:03.000000Z\"}', '2021-10-29 08:37:12', '2021-10-29 08:37:12'),
(477, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":328,\"keyword\":\"lbl_balance_bill\",\"en\":\"View Bill Balance\",\"sw\":\"Tazama Akiba ya Deni\",\"created_at\":\"2021-10-29T14:32:43.000000Z\",\"updated_at\":\"2021-10-29T14:32:43.000000Z\"}', '2021-10-29 08:37:12', '2021-10-29 08:37:12'),
(478, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":327,\"keyword\":\"lbl_month_bill\",\"en\":\"View Month Bill\",\"sw\":\"Tazama Akiba ya Mwezi\",\"created_at\":\"2021-10-29T14:32:26.000000Z\",\"updated_at\":\"2021-10-29T14:32:26.000000Z\"}', '2021-10-29 08:37:12', '2021-10-29 08:37:12'),
(479, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":326,\"keyword\":\"lbl_meter_number\",\"en\":\"Meter Number\",\"sw\":\"Namba ya Mita\",\"created_at\":\"2021-10-29T14:32:09.000000Z\",\"updated_at\":\"2021-10-29T14:32:09.000000Z\"}', '2021-10-29 08:37:12', '2021-10-29 08:37:12'),
(480, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":325,\"keyword\":\"lbl_issue_type\",\"en\":\"Issue Type\",\"sw\":\"Aina ya Taarifa\",\"created_at\":\"2021-10-29T13:27:52.000000Z\",\"updated_at\":\"2021-10-29T10:29:08.000000Z\"}', '2021-10-29 08:37:12', '2021-10-29 08:37:12'),
(481, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":324,\"keyword\":\"lbl_issue_scarcity\",\"en\":\"Scarcity of Water\",\"sw\":\"Uhaba wa Maji\",\"created_at\":\"2021-10-29T13:21:04.000000Z\",\"updated_at\":\"2021-10-29T10:26:39.000000Z\"}', '2021-10-29 08:37:12', '2021-10-29 08:37:12'),
(482, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":323,\"keyword\":\"lbl_issue_leakage\",\"en\":\"Leakage of Water\",\"sw\":\"Uvujaji wa Maji\",\"created_at\":\"2021-10-29T13:20:25.000000Z\",\"updated_at\":\"2021-10-29T10:26:39.000000Z\"}', '2021-10-29 08:37:12', '2021-10-29 08:37:12'),
(483, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":322,\"keyword\":\"lbl_issue_theft\",\"en\":\"Theft of Infrastructures\",\"sw\":\"Wizi wa Miundombinu\",\"created_at\":\"2021-10-29T13:19:35.000000Z\",\"updated_at\":\"2021-10-29T10:26:39.000000Z\"}', '2021-10-29 08:37:12', '2021-10-29 08:37:12'),
(484, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":321,\"keyword\":\"lbl_not_measured\",\"en\":\"NOT Measured\",\"sw\":\"Halijapimwa\",\"created_at\":\"2021-10-29T13:16:34.000000Z\",\"updated_at\":\"2021-10-29T10:26:39.000000Z\"}', '2021-10-29 08:37:12', '2021-10-29 08:37:12'),
(485, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":320,\"keyword\":\"lbl_measured\",\"en\":\"Measured\",\"sw\":\"Limepimwa\",\"created_at\":\"2021-10-29T13:16:19.000000Z\",\"updated_at\":\"2021-10-29T10:26:39.000000Z\"}', '2021-10-29 08:37:12', '2021-10-29 08:37:12'),
(486, 1, 'OnlineService', 'update', '127.0.0.1', 'http://localhost:8000/cms/online_services/6', '{\"id\":6,\"title_sw\":\"Angalia Bili\",\"title_en\":\"View Bill\",\"service_type\":\"3\",\"slug\":\"view-bill\",\"active\":\"0\",\"user_id\":0,\"created_at\":\"2021-10-28T05:56:26.000000Z\",\"updated_at\":\"2021-10-28T05:56:26.000000Z\"}', '2021-11-01 06:39:22', '2021-11-01 06:39:22'),
(487, 1, 'OnlineService', 'update', '127.0.0.1', 'http://localhost:8000/cms/online_services/6', '{\"id\":6,\"title_sw\":\"Angalia Bili\",\"title_en\":\"View Bill\",\"service_type\":\"3\",\"slug\":\"view-bill\",\"active\":\"1\",\"user_id\":0,\"created_at\":\"2021-10-28T05:56:26.000000Z\",\"updated_at\":\"2021-11-01T09:39:22.000000Z\"}', '2021-11-01 06:57:00', '2021-11-01 06:57:00'),
(488, 1, 'OnlineService', 'update', '127.0.0.1', 'http://localhost:8000/cms/online_services/6', '{\"id\":6,\"title_sw\":\"Angalia Bili\",\"title_en\":\"View Bill\",\"service_type\":\"3\",\"slug\":\"view-bill\",\"active\":\"0\",\"user_id\":0,\"created_at\":\"2021-10-28T05:56:26.000000Z\",\"updated_at\":\"2021-11-01T09:57:00.000000Z\"}', '2021-11-01 06:57:19', '2021-11-01 06:57:19'),
(489, 1, 'MenuItem', 'update', '127.0.0.1', 'http://localhost:8000/cms/menu-items/8', '{\"id\":8,\"title_sw\":\"Machapisho\",\"title_en\":\"Publications\",\"status\":1,\"menu_id\":\"3\",\"url\":\"https:\\/\\/mail.ega.go.tz\",\"url_external\":\"https:\\/\\/mail.ega.go.tz\",\"link\":\"0\",\"parent\":0,\"position\":14,\"has_sidebar\":0,\"created_at\":\"2021-07-28T09:06:27.000000Z\",\"updated_at\":\"2021-10-12T10:04:32.000000Z\"}', '2021-11-01 11:42:00', '2021-11-01 11:42:00'),
(490, 1, 'QuickLink', 'update', '127.0.0.1', 'http://localhost:8000/cms/quick_links/5', '{\"id\":5,\"title_sw\":\"Technical\",\"title_en\":\"Technical\",\"link\":0,\"url\":null,\"url_external\":null,\"active\":1,\"created_at\":\"2021-07-28T09:22:43.000000Z\",\"updated_at\":\"2021-10-12T11:11:02.000000Z\",\"parent\":0,\"position\":1,\"category_id\":0}', '2021-11-08 08:06:29', '2021-11-08 08:06:29'),
(491, 1, 'QuickLink', 'update', '127.0.0.1', 'http://localhost:8000/cms/quick_links/5', '{\"id\":5,\"title_sw\":\"Technical\",\"title_en\":\"Technical\",\"link\":0,\"url\":\"https:\\/\\/mail.ega.go.tz\",\"url_external\":null,\"active\":1,\"created_at\":\"2021-07-28T09:22:43.000000Z\",\"updated_at\":\"2021-11-08T11:06:29.000000Z\",\"parent\":0,\"position\":1,\"category_id\":0}', '2021-11-08 08:06:41', '2021-11-08 08:06:41'),
(492, 1, 'QuickLink', 'update', '127.0.0.1', 'http://localhost:8000/cms/quick_links/5', '{\"id\":5,\"title_sw\":\"Technical\",\"title_en\":\"Technical\",\"link\":\"0\",\"url\":\"https:\\/\\/mail.ega.go.tz\",\"url_external\":\"https:\\/\\/mail.ega.go.tz\",\"active\":1,\"created_at\":\"2021-07-28T09:22:43.000000Z\",\"updated_at\":\"2021-11-08T11:06:41.000000Z\",\"parent\":0,\"position\":1,\"category_id\":0}', '2021-11-08 08:08:25', '2021-11-08 08:08:25'),
(493, 1, 'QuickLink', 'update', '127.0.0.1', 'http://localhost:8000/cms/quick_links/5', '{\"id\":5,\"title_sw\":\"Technical\",\"title_en\":\"Technical\",\"link\":\"1\",\"url\":\"#\",\"url_external\":null,\"active\":1,\"created_at\":\"2021-07-28T09:22:43.000000Z\",\"updated_at\":\"2021-11-08T11:08:25.000000Z\",\"parent\":0,\"position\":1,\"category_id\":0}', '2021-11-08 08:09:16', '2021-11-08 08:09:16'),
(494, 1, 'QuickLink', 'update', '127.0.0.1', 'http://localhost:8000/cms/quick_links/1', '{\"id\":1,\"title_sw\":\"TPSC meeting\",\"title_en\":\"TPSC meeting\",\"link\":\"1\",\"url\":\"#\",\"url_external\":null,\"active\":1,\"created_at\":\"2021-07-28T09:21:55.000000Z\",\"updated_at\":\"2021-10-12T11:11:02.000000Z\",\"parent\":0,\"position\":2,\"category_id\":0}', '2021-11-08 08:09:34', '2021-11-08 08:09:34'),
(495, 1, 'QuickLink', 'update', '127.0.0.1', 'http://localhost:8000/cms/quick_links/2', '{\"id\":2,\"title_sw\":\"Regions\",\"title_en\":\"Regions\",\"link\":\"1\",\"url\":\"#\",\"url_external\":null,\"active\":1,\"created_at\":\"2021-07-28T09:22:11.000000Z\",\"updated_at\":\"2021-10-12T11:11:02.000000Z\",\"parent\":0,\"position\":3,\"category_id\":0}', '2021-11-08 08:09:40', '2021-11-08 08:09:40'),
(496, 1, 'QuickLink', 'update', '127.0.0.1', 'http://localhost:8000/cms/quick_links/3', '{\"id\":3,\"title_sw\":\"Districts\",\"title_en\":\"Districts\",\"link\":\"1\",\"url\":\"#\",\"url_external\":null,\"active\":1,\"created_at\":\"2021-07-28T09:22:24.000000Z\",\"updated_at\":\"2021-10-12T11:11:02.000000Z\",\"parent\":0,\"position\":4,\"category_id\":0}', '2021-11-08 08:09:46', '2021-11-08 08:09:46'),
(497, 1, 'QuickLink', 'update', '127.0.0.1', 'http://localhost:8000/cms/quick_links/4', '{\"id\":4,\"title_sw\":\"Smart partnership\",\"title_en\":\"Smart partnership\",\"link\":\"1\",\"url\":\"#\",\"url_external\":null,\"active\":1,\"created_at\":\"2021-07-28T09:22:34.000000Z\",\"updated_at\":\"2021-10-12T11:11:02.000000Z\",\"parent\":0,\"position\":5,\"category_id\":0}', '2021-11-08 08:09:53', '2021-11-08 08:09:53'),
(498, 1, 'QuickLink', 'update', '127.0.0.1', 'http://localhost:8000/cms/quick_links/5', '{\"id\":5,\"title_sw\":\"Technical\",\"title_en\":\"Technical\",\"link\":\"0\",\"url\":\"https:\\/\\/mail.ega.go.tz\",\"url_external\":\"https:\\/\\/mail.ega.go.tz\",\"active\":1,\"created_at\":\"2021-07-28T09:22:43.000000Z\",\"updated_at\":\"2021-11-08T11:09:16.000000Z\",\"parent\":0,\"position\":1,\"category_id\":0}', '2021-11-08 08:10:10', '2021-11-08 08:10:10'),
(499, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":100,\"keyword\":\"lbl_site_title_short \",\"en\":\"DMI\",\"sw\":\"DMI\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-10-25T09:38:54.000000Z\"}', '2021-11-18 12:50:54', '2021-11-18 12:50:54'),
(500, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":1,\"keyword\":\"lbl_site_title\",\"en\":\"Dar es salaam Maritime Institute\",\"sw\":\"Dar es salaam Maritime Institute\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-10-25T09:41:10.000000Z\"}', '2021-11-18 12:54:43', '2021-11-18 12:54:43'),
(501, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":99,\"keyword\":\"lbl_content_maintained \",\"en\":\"Content Maintained by Dar es salaam Maritime Institute\",\"sw\":\"Huendeshwa na Dar es salaam Maritime Institute\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-10-25T09:41:10.000000Z\"}', '2021-11-18 12:54:43', '2021-11-18 12:54:43'),
(502, 1, 'ImportantLink', 'update', '127.0.0.1', 'http://localhost:8000/cms/important_links/1', '{\"id\":1,\"title_sw\":\"IKULU Tanzania\",\"title_en\":\"IKULU Tanzania\",\"url\":\"http:\\/\\/ikulu.go.tz\",\"active\":1,\"created_at\":\"2021-07-28T09:16:15.000000Z\",\"updated_at\":\"2021-10-13T11:19:20.000000Z\",\"parent\":0,\"position\":1}', '2021-11-18 13:14:49', '2021-11-18 13:14:49'),
(503, 1, 'RelatedLink', 'update', '127.0.0.1', 'http://localhost:8000/cms/related_links/6', '{\"id\":6,\"title_sw\":\"TNBP\",\"title_en\":\"TNBP\",\"url\":\"http:\\/\\/tnbp.go.tz\",\"active\":1,\"created_at\":\"2021-07-28T09:18:36.000000Z\",\"updated_at\":\"2021-08-09T15:30:37.000000Z\",\"parent\":0,\"position\":1}', '2021-11-18 13:15:00', '2021-11-18 13:15:00'),
(504, 1, 'RelatedLink', 'update', '127.0.0.1', 'http://localhost:8000/cms/related_links/6', '{\"id\":6,\"title_sw\":\"TNBP\",\"title_en\":\"TNBP\",\"url\":\"http:\\/\\/tnbp.go.tz\",\"active\":1,\"created_at\":\"2021-07-28T09:18:36.000000Z\",\"updated_at\":\"2021-08-09T15:30:37.000000Z\",\"parent\":0,\"position\":1}', '2021-11-18 13:16:26', '2021-11-18 13:16:26'),
(505, 1, 'StudentPortal', 'update', '127.0.0.1', 'http://localhost:8000/cms/student_portal/6', '{\"id\":6,\"title_sw\":\"Ofisi ya Makamu wa Raisi\",\"title_en\":\"Ofisi ya Makamu wa Raisi\",\"url\":\"http:\\/\\/tnbp.go.tz\",\"active\":1,\"created_at\":\"2021-07-28T09:18:36.000000Z\",\"updated_at\":\"2021-11-18T16:44:28.000000Z\",\"parent\":0,\"position\":1}', '2021-11-18 13:52:33', '2021-11-18 13:52:33'),
(506, 1, 'StudentPortal', 'update', '127.0.0.1', 'http://localhost:8000/cms/student_portal/6', '{\"id\":6,\"title_sw\":\"Ofisi ya Makamu wa Raisi\",\"title_en\":\"Ofisi ya Makamu wa Rai\",\"url\":\"http:\\/\\/tnbp.go.tz\",\"active\":1,\"created_at\":\"2021-07-28T09:18:36.000000Z\",\"updated_at\":\"2021-11-18T16:44:28.000000Z\",\"parent\":0,\"position\":1}', '2021-11-18 13:52:41', '2021-11-18 13:52:41'),
(507, 1, 'StudentPortal', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/student_portal/6', '{\"id\":6,\"title_sw\":\"Ofisi ya Makamu wa Raisi\",\"title_en\":\"Ofisi ya Makamu wa Rai\",\"url\":\"http:\\/\\/tnbp.go.tz\",\"active\":1,\"created_at\":\"2021-07-28T09:18:36.000000Z\",\"updated_at\":\"2021-11-18T16:52:46.000000Z\",\"parent\":0,\"position\":2}', '2021-11-18 13:52:50', '2021-11-18 13:52:50'),
(508, 1, 'WelcomeNote', 'update', '127.0.0.1', 'http://localhost:8000/cms/welcome/1', '{\"id\":1,\"summary_en\":\"Pay Taxes, Build Our Country\",\"summary_sw\":\"Tulipe Kodi, Tujenge Nchi Yetu\",\"content_sw\":\"<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\",\"content_en\":\"<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\",\"mission_en\":null,\"mission_sw\":null,\"vision_en\":null,\"vision_sw\":null,\"status\":\"1\",\"created_at\":\"2021-10-27T10:37:14.000000Z\",\"updated_at\":\"2021-10-27T07:37:14.000000Z\"}', '2021-11-23 04:00:45', '2021-11-23 04:00:45'),
(509, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":98,\"keyword\":\"lbl_designed\",\"en\":\"Imesanifiwa na Imetengenezwa na\",\"sw\":\"The website is Designed, Developed And Maintained by\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2021-11-23 09:50:03', '2021-11-23 09:50:03'),
(510, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":98,\"keyword\":\"lbl_designed\",\"en\":\"The website is Designed, Developed And Maintained by\",\"sw\":\"Imesanifiwa na Imetengenezwa na\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-11-23T12:50:03.000000Z\"}', '2021-11-23 09:50:46', '2021-11-23 09:50:46'),
(511, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":315,\"keyword\":\"lbl_student_portal\",\"en\":\"Student Portal\",\"sw\":\"Student Portal\",\"created_at\":\"2021-10-29T13:00:46.000000Z\",\"updated_at\":\"2021-10-29T13:00:46.000000Z\"}', '2021-11-23 09:55:15', '2021-11-23 09:55:15'),
(512, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":314,\"keyword\":\"lbl_staff_portal\",\"en\":\"Staff Portal\",\"sw\":\"Staff Portal\",\"created_at\":\"2021-10-28T14:10:47.000000Z\",\"updated_at\":\"2021-10-28T14:10:47.000000Z\"}', '2021-11-23 09:55:15', '2021-11-23 09:55:15'),
(513, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":313,\"keyword\":\"lbl_online_services\",\"en\":\"Online Services\",\"sw\":\"Huduma Mtandao\",\"created_at\":\"2021-10-14T10:49:03.000000Z\",\"updated_at\":\"2021-10-14T10:49:03.000000Z\"}', '2021-11-23 09:55:15', '2021-11-23 09:55:15'),
(514, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":312,\"keyword\":\"lbl_useful_links\",\"en\":\"Useful Links\",\"sw\":\"Useful Links\",\"created_at\":\"2021-10-13T16:24:52.000000Z\",\"updated_at\":\"2021-10-13T16:24:52.000000Z\"}', '2021-11-23 09:55:15', '2021-11-23 09:55:15'),
(515, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":301,\"keyword\":\"lbl_resource_not_found\",\"en\":\"Sorry, The Resource you are looking for was not found.\",\"sw\":\"Samahani, Rasilimali uliyotafuta haikupatikana.\",\"created_at\":\"2021-09-21T09:58:12.000000Z\",\"updated_at\":\"2021-10-06T12:30:47.000000Z\"}', '2021-11-23 09:55:15', '2021-11-23 09:55:15'),
(516, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":300,\"keyword\":\"lbl_not_found\",\"en\":\"Not Found\",\"sw\":\"Haipatikani\",\"created_at\":\"2021-09-21T09:56:31.000000Z\",\"updated_at\":\"2021-09-21T09:56:31.000000Z\"}', '2021-11-23 09:55:15', '2021-11-23 09:55:15'),
(517, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":299,\"keyword\":\"lbl_view_offices\",\"en\":\"View All Offices\",\"sw\":\"Tazama Ofisi Zote\",\"created_at\":\"2021-09-20T10:05:01.000000Z\",\"updated_at\":\"2021-09-20T10:05:01.000000Z\"}', '2021-11-23 09:55:15', '2021-11-23 09:55:15'),
(518, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":292,\"keyword\":\"lbl_latest_announcement\",\"en\":\"Latest Announcements\",\"sw\":\"Matangazo Mapya\",\"created_at\":\"2021-08-06T14:49:39.000000Z\",\"updated_at\":\"2021-08-06T14:49:39.000000Z\"}', '2021-11-23 09:55:15', '2021-11-23 09:55:15'),
(519, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":280,\"keyword\":\"lbl_important_links\",\"en\":\"Important Links\",\"sw\":\"Tovuti Muhimu\",\"created_at\":\"2021-08-06T14:37:55.000000Z\",\"updated_at\":\"2021-08-06T14:37:55.000000Z\"}', '2021-11-23 09:55:15', '2021-11-23 09:55:15'),
(520, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":281,\"keyword\":\"lbl_site_sub_subtitle\",\"en\":\"Ministry of Water\",\"sw\":\"Wizara ya Maji\",\"created_at\":\"2021-08-06T14:37:55.000000Z\",\"updated_at\":\"2021-10-25T09:42:28.000000Z\"}', '2021-11-23 09:55:15', '2021-11-23 09:55:15');
INSERT INTO `timelines` (`id`, `actor`, `object`, `verb`, `ip`, `url`, `content`, `created_at`, `updated_at`) VALUES
(521, 1, 'WelcomeNote', 'update', '127.0.0.1', 'http://localhost:8000/cms/welcome/1', '{\"id\":1,\"summary_en\":\"Pay Taxes, Build Our Country\",\"summary_sw\":\"Tulipe Kodi, Tujenge Nchi Yetu\",\"content_sw\":\"<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\",\"content_en\":\"<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\",\"mission_en\":\"To provide an enabling environment through coordination, oversight and promotion of ICT usage for improvement of service delivery.\",\"mission_sw\":\"To provide an enabling environment through coordination, oversight and promotion of ICT usage for improvement of service delivery.\",\"vision_en\":\"To be a leading innovative Institution, enabling the use of ICT for improving Public Service delivery\",\"vision_sw\":\"To be a leading innovative Institution, enabling the use of ICT for improving Public Service delivery\",\"status\":\"1\",\"created_at\":\"2021-10-27T10:37:14.000000Z\",\"updated_at\":\"2021-10-27T07:37:14.000000Z\"}', '2021-11-23 11:01:52', '2021-11-23 11:01:52'),
(522, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":330,\"keyword\":\"lbl_mission\",\"en\":\"Mission\",\"sw\":\"Dhamira\",\"created_at\":\"2021-11-23T17:03:17.000000Z\",\"updated_at\":\"2021-11-23T17:03:17.000000Z\"}', '2021-11-23 11:03:57', '2021-11-23 11:03:57'),
(523, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":331,\"keyword\":\"lbl_vision\",\"en\":\"Vision\",\"sw\":\"Dira\",\"created_at\":\"2021-11-23T17:03:17.000000Z\",\"updated_at\":\"2021-11-23T17:03:17.000000Z\"}', '2021-11-23 11:03:57', '2021-11-23 11:03:57'),
(524, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":315,\"keyword\":\"lbl_student_portal\",\"en\":\"Student Portal\",\"sw\":\"Student Portal\",\"created_at\":\"2021-10-29T13:00:46.000000Z\",\"updated_at\":\"2021-11-23T12:55:15.000000Z\"}', '2021-11-23 11:03:57', '2021-11-23 11:03:57'),
(525, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":314,\"keyword\":\"lbl_staff_portal\",\"en\":\"Staff Portal\",\"sw\":\"Staff Portal\",\"created_at\":\"2021-10-28T14:10:47.000000Z\",\"updated_at\":\"2021-11-23T12:55:15.000000Z\"}', '2021-11-23 11:03:57', '2021-11-23 11:03:57'),
(526, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":313,\"keyword\":\"lbl_online_services\",\"en\":\"Online Services\",\"sw\":\"Huduma Mtandao\",\"created_at\":\"2021-10-14T10:49:03.000000Z\",\"updated_at\":\"2021-10-14T10:49:03.000000Z\"}', '2021-11-23 11:03:57', '2021-11-23 11:03:57'),
(527, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":312,\"keyword\":\"lbl_useful_links\",\"en\":\"Useful Links\",\"sw\":\"Useful Links\",\"created_at\":\"2021-10-13T16:24:52.000000Z\",\"updated_at\":\"2021-11-23T12:55:15.000000Z\"}', '2021-11-23 11:03:57', '2021-11-23 11:03:57'),
(528, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":301,\"keyword\":\"lbl_resource_not_found\",\"en\":\"Sorry, The Resource you are looking for was not found.\",\"sw\":\"Samahani, Rasilimali uliyotafuta haikupatikana.\",\"created_at\":\"2021-09-21T09:58:12.000000Z\",\"updated_at\":\"2021-10-06T12:30:47.000000Z\"}', '2021-11-23 11:03:57', '2021-11-23 11:03:57'),
(529, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":300,\"keyword\":\"lbl_not_found\",\"en\":\"Not Found\",\"sw\":\"Haipatikani\",\"created_at\":\"2021-09-21T09:56:31.000000Z\",\"updated_at\":\"2021-09-21T09:56:31.000000Z\"}', '2021-11-23 11:03:57', '2021-11-23 11:03:57'),
(530, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":299,\"keyword\":\"lbl_view_offices\",\"en\":\"View All Offices\",\"sw\":\"Tazama Ofisi Zote\",\"created_at\":\"2021-09-20T10:05:01.000000Z\",\"updated_at\":\"2021-09-20T10:05:01.000000Z\"}', '2021-11-23 11:03:57', '2021-11-23 11:03:57'),
(531, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":292,\"keyword\":\"lbl_latest_announcement\",\"en\":\"Latest Announcements\",\"sw\":\"Matangazo Mapya\",\"created_at\":\"2021-08-06T14:49:39.000000Z\",\"updated_at\":\"2021-08-06T14:49:39.000000Z\"}', '2021-11-23 11:03:57', '2021-11-23 11:03:57'),
(532, 1, 'Administration', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration/1', '{\"id\":1,\"salutation_en\":\"Dr.\",\"salutation_sw\":\"Dkt.\",\"fullname\":\"John Doe\",\"position\":\"1\",\"title_sw\":\"Mkuu wa Chuo\",\"title_en\":\"Vice Chancellor\",\"content_sw\":null,\"content_en\":null,\"photo_url\":\"448f674e33f0894caeba68c7734cc420.jpeg\",\"email\":null,\"phone\":null,\"created_at\":\"2021-07-30T12:38:34.000000Z\",\"updated_at\":\"2021-09-20T07:50:07.000000Z\",\"slug\":\"firstname-lastname\"}', '2021-11-23 11:40:49', '2021-11-23 11:40:49'),
(533, 1, 'Photo', 'update', '127.0.0.1', 'http://localhost:8000/cms/media/23', '{\"id\":23,\"title_en\":\"\",\"title_sw\":\"\",\"content_en\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\",\"content_sw\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\",\"mime\":\"images\\/jpeg\",\"path\":\"\\/uploads\\/gallery\\/\",\"url\":\"\",\"filename\":\"36e67aa0f5fcc9695bc643de0acd4115.jpeg\",\"iconurl\":\"\",\"slug\":\"a64147600e6914bec2ccd489464313cc-jpeg\",\"user_id\":0,\"gallery_id\":1,\"status\":\"1\",\"created_at\":\"2021-09-22T12:53:42.000000Z\",\"updated_at\":\"2021-10-05T07:58:16.000000Z\"}', '2021-11-24 03:24:04', '2021-11-24 03:24:04'),
(534, 1, 'Photo', 'update', '127.0.0.1', 'http://localhost:8000/cms/media/7', '{\"id\":7,\"title_en\":\"\",\"title_sw\":\"\",\"content_en\":\"It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\",\"content_sw\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\",\"mime\":\"images\\/jpeg\",\"path\":\"\\/uploads\\/gallery\\/\",\"url\":\"\",\"filename\":\"5efef6ed8990771012cf0c373f3771bb.jpeg\",\"iconurl\":\"\",\"slug\":\"612bcdabb113ed30b94b4b6ea8a67032-jpeg\",\"user_id\":0,\"gallery_id\":1,\"status\":\"1\",\"created_at\":\"2021-07-30T12:12:36.000000Z\",\"updated_at\":\"2021-07-30T12:12:36.000000Z\"}', '2021-11-24 03:27:00', '2021-11-24 03:27:00'),
(535, 1, 'Photo', 'update', '127.0.0.1', 'http://localhost:8000/cms/media/6', '{\"id\":6,\"title_en\":\"\",\"title_sw\":\"\",\"content_en\":\"leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\",\"content_sw\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap\",\"mime\":\"images\\/jpeg\",\"path\":\"\\/uploads\\/gallery\\/\",\"url\":\"\",\"filename\":\"4b61f8811922bcdacd128277b8907823.jpeg\",\"iconurl\":\"\",\"slug\":\"fa1c310e1527b7310444b2226893a2b9-jpeg\",\"user_id\":0,\"gallery_id\":1,\"status\":\"1\",\"created_at\":\"2021-07-30T12:10:56.000000Z\",\"updated_at\":\"2021-07-30T12:10:56.000000Z\"}', '2021-11-24 03:29:34', '2021-11-24 03:29:34'),
(536, 1, 'Photo', 'update', '127.0.0.1', 'http://localhost:8000/cms/media/5', '{\"id\":5,\"title_en\":\"\",\"title_sw\":\"\",\"content_en\":\"Remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum\",\"content_sw\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.\",\"mime\":\"images\\/jpeg\",\"path\":\"\\/uploads\\/gallery\\/\",\"url\":\"\",\"filename\":\"d449b86a4a3d15c6578f0da2285ca4f9.jpeg\",\"iconurl\":\"\",\"slug\":\"dff4503974a98bf379a65b34f00d8fb8-jpeg\",\"user_id\":0,\"gallery_id\":1,\"status\":\"1\",\"created_at\":\"2021-07-30T12:10:01.000000Z\",\"updated_at\":\"2021-07-30T12:10:01.000000Z\"}', '2021-11-24 03:30:46', '2021-11-24 03:30:46'),
(537, 1, 'News', 'update', '127.0.0.1', 'http://localhost:8000/cms/news/2', '{\"id\":2,\"title_sw\":\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\\"de Finibus Bonorum et Malorum\\\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham\",\"title_en\":\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\\"de Finibus Bonorum et Malorum\\\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. RackhamChanges in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham<\\/p>\\r\\n\\r\\n<p>Changes in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. RackhamChanges in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. RackhamChanges in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. RackhamChanges in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham<\\/p>\",\"content_en\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. RackhamChanges in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham<\\/p>\\r\\n\\r\\n<p>Changes in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. RackhamChanges in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. RackhamChanges in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. RackhamChanges in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham<\\/p>\",\"active\":\"1\",\"user_id\":1,\"slug\":\"changes-in-second-stakeholders-general-meeting-1\",\"photo_url\":\"847b30bd7b758b16ce24149f31116b9c.jpeg\",\"created_at\":\"2021-08-02T05:58:21.000000Z\",\"updated_at\":\"2021-08-02T06:04:23.000000Z\"}', '2021-11-24 04:35:40', '2021-11-24 04:35:40'),
(538, 1, 'MenuItem', 'update', '127.0.0.1', 'http://localhost:8000/cms/menu-items/8', '{\"id\":8,\"title_sw\":\"Machapisho\",\"title_en\":\"Publications\",\"status\":1,\"menu_id\":\"3\",\"url\":\"publications\",\"url_external\":null,\"link\":\"1\",\"parent\":0,\"position\":4,\"has_sidebar\":0,\"created_at\":\"2021-07-28T09:06:27.000000Z\",\"updated_at\":\"2021-11-08T11:15:57.000000Z\"}', '2021-11-24 11:40:05', '2021-11-24 11:40:05'),
(539, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Mpango Mkakati\",\"title_en\":\"Strategic Plan\",\"link\":\"1\",\"url_external\":null,\"url\":\"publications\\/strategic-plan\",\"position\":14}', '2021-11-24 11:40:35', '2021-11-24 11:40:35'),
(540, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Ripoti za Mwaka\",\"title_en\":\"Annual Reports\",\"link\":\"1\",\"url_external\":null,\"url\":\"publications\\/annual-reports\",\"position\":15}', '2021-11-24 11:40:55', '2021-11-24 11:40:55'),
(541, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Miongozo\",\"title_en\":\"Guidelines\",\"link\":\"1\",\"url_external\":null,\"url\":\"publications\\/guidelines\",\"position\":16}', '2021-11-24 11:41:17', '2021-11-24 11:41:17'),
(542, 1, 'QuickLink', 'update', '127.0.0.1', 'http://localhost:8000/cms/quick_links/3', '{\"id\":3,\"title_sw\":\"Districts\",\"title_en\":\"Districts\",\"link\":\"0\",\"url\":null,\"url_external\":null,\"active\":1,\"created_at\":\"2021-07-28T09:22:24.000000Z\",\"updated_at\":\"2021-11-08T11:15:44.000000Z\",\"parent\":0,\"position\":2,\"category_id\":0}', '2021-11-25 03:29:04', '2021-11-25 03:29:04'),
(543, 1, 'QuickLink', 'update', '127.0.0.1', 'http://localhost:8000/cms/quick_links/3', '{\"id\":3,\"title_sw\":\"Districts\",\"title_en\":\"Districts\",\"link\":\"0\",\"url\":null,\"url_external\":null,\"active\":1,\"created_at\":\"2021-07-28T09:22:24.000000Z\",\"updated_at\":\"2021-11-25T06:29:04.000000Z\",\"parent\":0,\"position\":2,\"category_id\":0}', '2021-11-25 03:29:13', '2021-11-25 03:29:13'),
(544, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":1,\"keyword\":\"lbl_site_title\",\"en\":\"Dar es salaam Maritime Institute\",\"sw\":\"Taasisi ya Bahari ya Dar es Salaam\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-11-18T15:54:43.000000Z\"}', '2021-11-25 05:56:52', '2021-11-25 05:56:52'),
(545, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":99,\"keyword\":\"lbl_content_maintained \",\"en\":\"Content Maintained by Dar es salaam Maritime Institute\",\"sw\":\"Huendeshwa na Taasisi ya Bahari ya Dar es Salaam\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-11-18T15:54:43.000000Z\"}', '2021-11-25 05:56:52', '2021-11-25 05:56:52'),
(546, 1, 'Page', 'store', '127.0.0.1', 'http://localhost:8000/cms/pages', '{\"title_en\":\"DMI Objectives\",\"title_sw\":\"Malengo ya DMI\",\"content_en\":\"<h2>What is Lorem Ipsum?<\\/h2>\\r\\n\\r\\n<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<h2>Why do we use it?<\\/h2>\\r\\n\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"http:\\/\\/localhost:8000\\/uploads\\/gallery\\/d449b86a4a3d15c6578f0da2285ca4f9.jpeg\\\" style=\\\"height:1455px; width:2586px\\\" \\/><\\/p>\\r\\n\\r\\n<h2>Where does it come from?<\\/h2>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\",\"content_sw\":\"<h2>What is Lorem Ipsum?<\\/h2>\\r\\n\\r\\n<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<h2>Why do we use it?<\\/h2>\\r\\n\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"http:\\/\\/localhost:8000\\/uploads\\/gallery\\/d449b86a4a3d15c6578f0da2285ca4f9.jpeg\\\" style=\\\"height:1455px; width:2586px\\\" \\/><\\/p>\\r\\n\\r\\n<h2>Where does it come from?<\\/h2>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\",\"slug\":\"dmi-objectives\"}', '2021-11-25 06:06:17', '2021-11-25 06:06:17'),
(547, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Malengo ya DMI\",\"title_en\":\"DMI Objectives\",\"link\":\"1\",\"url_external\":null,\"url\":\"pages\\/dmi-objectives\",\"position\":14}', '2021-11-25 06:07:41', '2021-11-25 06:07:41'),
(548, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":283,\"keyword\":\"lbl_administration\",\"en\":\"Administration\",\"sw\":\"Utawala\",\"created_at\":\"2021-08-06T14:37:55.000000Z\",\"updated_at\":\"2021-08-06T14:37:55.000000Z\"}', '2021-12-20 05:38:55', '2021-12-20 05:38:55'),
(549, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":100,\"keyword\":\"lbl_site_title_short \",\"en\":\"KPI\",\"sw\":\"KPI\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-11-18T15:50:54.000000Z\"}', '2021-12-20 05:38:55', '2021-12-20 05:38:55'),
(550, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":1,\"keyword\":\"lbl_site_title\",\"en\":\"Keko Pharmaceutical Industries (1997) LTD\",\"sw\":\"Kiwanda cha Dawa Keko\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-11-25T08:56:52.000000Z\"}', '2021-12-20 05:41:17', '2021-12-20 05:41:17'),
(551, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":99,\"keyword\":\"lbl_content_maintained \",\"en\":\"Content Maintained by Keko Pharmaceutical Industries (1997) LTD\",\"sw\":\"Huendeshwa na Kiwanda cha Dawa Keko\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-11-25T08:56:52.000000Z\"}', '2021-12-20 05:41:17', '2021-12-20 05:41:17'),
(552, 1, 'CustomerCenter', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/customer_centers/5', '{\"id\":5,\"title_sw\":\"Technical\",\"title_en\":\"Technical\",\"link\":0,\"url\":\"https:\\/\\/mail.ega.go.tz\",\"url_external\":\"https:\\/\\/mail.ega.go.tz\",\"active\":1,\"created_at\":\"2021-07-28T09:22:43.000000Z\",\"updated_at\":\"2021-11-08T11:15:44.000000Z\",\"parent\":0,\"position\":1}', '2022-01-02 09:03:45', '2022-01-02 09:03:45'),
(553, 1, 'CustomerCenter', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/customer_centers/3', '{\"id\":3,\"title_sw\":\"Districts\",\"title_en\":\"Districts\",\"link\":0,\"url\":\"\",\"url_external\":null,\"active\":1,\"created_at\":\"2021-07-28T09:22:24.000000Z\",\"updated_at\":\"2021-11-25T06:29:13.000000Z\",\"parent\":0,\"position\":2}', '2022-01-02 09:03:48', '2022-01-02 09:03:48'),
(554, 1, 'CustomerCenter', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/customer_centers/1', '{\"id\":1,\"title_sw\":\"TPSC meeting\",\"title_en\":\"TPSC meeting\",\"link\":1,\"url\":\"#\",\"url_external\":null,\"active\":1,\"created_at\":\"2021-07-28T09:21:55.000000Z\",\"updated_at\":\"2021-11-08T11:15:44.000000Z\",\"parent\":0,\"position\":3}', '2022-01-02 09:03:52', '2022-01-02 09:03:52'),
(555, 1, 'CustomerCenter', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/customer_centers/2', '{\"id\":2,\"title_sw\":\"Regions\",\"title_en\":\"Regions\",\"link\":1,\"url\":\"#\",\"url_external\":null,\"active\":1,\"created_at\":\"2021-07-28T09:22:11.000000Z\",\"updated_at\":\"2021-11-08T11:15:44.000000Z\",\"parent\":0,\"position\":4}', '2022-01-02 09:04:06', '2022-01-02 09:04:06'),
(556, 1, 'CustomerCenter', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/customer_centers/4', '{\"id\":4,\"title_sw\":\"Smart partnership\",\"title_en\":\"Smart partnership\",\"link\":1,\"url\":\"#\",\"url_external\":null,\"active\":1,\"created_at\":\"2021-07-28T09:22:34.000000Z\",\"updated_at\":\"2021-11-08T11:15:44.000000Z\",\"parent\":0,\"position\":5}', '2022-01-02 09:04:22', '2022-01-02 09:04:22'),
(557, 1, 'CustomerCenter', 'store', '127.0.0.1', 'http://localhost:8000/cms/customer_centers', '{\"title_sw\":\"User Manual\",\"title_en\":\"User Manual\",\"link\":\"1\",\"url_external\":null,\"url\":\"#\"}', '2022-01-02 09:04:47', '2022-01-02 09:04:47'),
(558, 1, 'CustomerCenter', 'update', '127.0.0.1', 'http://localhost:8000/cms/customer_centers/6', '{\"id\":6,\"title_sw\":\"User Manual\",\"title_en\":\"User Manual\",\"link\":\"0\",\"url\":null,\"url_external\":null,\"active\":1,\"created_at\":\"2022-01-02T12:04:47.000000Z\",\"updated_at\":\"2022-01-02T12:04:47.000000Z\",\"parent\":0,\"position\":1}', '2022-01-02 09:05:05', '2022-01-02 09:05:05'),
(559, 1, 'CustomerCenter', 'update', '127.0.0.1', 'http://localhost:8000/cms/customer_centers/6', '{\"id\":6,\"title_sw\":\"User Manual\",\"title_en\":\"User Manual\",\"link\":\"0\",\"url\":\"https:\\/\\/mail.ega.go.tz\",\"url_external\":\"https:\\/\\/mail.ega.go.tz\",\"active\":1,\"created_at\":\"2022-01-02T12:04:47.000000Z\",\"updated_at\":\"2022-01-02T12:05:05.000000Z\",\"parent\":0,\"position\":1}', '2022-01-02 09:05:13', '2022-01-02 09:05:13'),
(560, 1, 'CustomerCenter', 'update', '127.0.0.1', 'http://localhost:8000/cms/customer_centers/6', '{\"id\":6,\"title_sw\":\"User Manual\",\"title_en\":\"User Manual\",\"link\":\"1\",\"url\":\"#\",\"url_external\":null,\"active\":1,\"created_at\":\"2022-01-02T12:04:47.000000Z\",\"updated_at\":\"2022-01-02T12:05:13.000000Z\",\"parent\":0,\"position\":1}', '2022-01-02 09:05:25', '2022-01-02 09:05:25'),
(561, 1, 'CustomerCenter', 'store', '127.0.0.1', 'http://localhost:8000/cms/customer_centers', '{\"title_sw\":\"Product Catalogue\",\"title_en\":\"Product Catalogue\",\"link\":\"1\",\"url_external\":null,\"url\":\"#\"}', '2022-01-02 09:06:11', '2022-01-02 09:06:11'),
(562, 1, 'WelcomeNote', 'update', '127.0.0.1', 'http://localhost:8000/cms/welcome/1', '{\"id\":1,\"summary_en\":\"Pay Taxes, Build Our Country\",\"summary_sw\":\"Tulipe Kodi, Tujenge Nchi Yetu\",\"content_sw\":\"<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\",\"content_en\":\"<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\",\"status\":\"1\",\"created_at\":\"2021-11-23T17:01:52.000000Z\",\"updated_at\":\"2021-11-23T14:01:52.000000Z\"}', '2022-01-02 09:11:16', '2022-01-02 09:11:16'),
(563, 1, 'WelcomeNote', 'store', '127.0.0.1', 'http://localhost:8000/cms/welcome', '{\"content_sw\":\"<p>Welcome to KPI<\\/p>\",\"content_en\":\"<p>Welcome to KPI<\\/p>\",\"status\":\"1\"}', '2022-01-02 09:11:54', '2022-01-02 09:11:54'),
(564, 1, 'WelcomeNote', 'update', '127.0.0.1', 'http://localhost:8000/cms/welcome/2', '{\"id\":2,\"summary_en\":null,\"summary_sw\":null,\"content_sw\":\"<p>Welcome to KPI<\\/p>\",\"content_en\":\"<p>Welcome to KPI<\\/p>\",\"status\":\"1\",\"created_at\":\"2022-01-02T12:11:54.000000Z\",\"updated_at\":\"2022-01-02T12:11:54.000000Z\"}', '2022-01-02 09:11:59', '2022-01-02 09:11:59'),
(565, 1, 'SalesPoint', 'store', '127.0.0.1', 'http://localhost:8000/cms/sales_points', '{\"title_en\":\"Dar es Salaam Zone\",\"title_sw\":\"Kanda ya Dar es Salaam\",\"fullname\":\"John Doe\",\"email\":\"johndoee@mail.com\",\"phone\":\"255762000111\",\"active\":\"1\",\"slug\":\"dar-es-salaam-zone\"}', '2022-01-02 10:06:51', '2022-01-02 10:06:51'),
(566, 1, 'SalesPoint', 'update', '127.0.0.1', 'http://localhost:8000/cms/sales_points/1', '{\"id\":1,\"title_sw\":\"Kanda ya Dar es Salaam\",\"title_en\":\"Dar es Salaam Zone\",\"fullname\":\"John Doe\",\"email\":\"johndoee@mail.com\",\"phone\":\"255762000111\",\"active\":\"1\",\"slug\":\"dar-es-salaam-zone\",\"created_at\":\"2022-01-02T13:06:51.000000Z\",\"updated_at\":\"2022-01-02T13:06:51.000000Z\"}', '2022-01-02 10:09:31', '2022-01-02 10:09:31'),
(567, 1, 'ProductCategory', 'store', '127.0.0.1', 'http://localhost:8000/cms/product_categories', '{\"title_en\":\"Pain Killers\",\"title_sw\":\"Pain Killers\",\"summary_en\":\"Pain Killers\",\"summary_sw\":\"Pain Killers\",\"active\":\"1\",\"photo_url\":\"\\/uploads\\/product-categories\\/b74276c40e62053fb15a07704ee495e3.jpeg\",\"slug\":\"pain-killers\"}', '2022-01-02 11:28:20', '2022-01-02 11:28:20'),
(568, 1, 'ProductCategory', 'update', '127.0.0.1', 'http://localhost:8000/cms/product_categories/1', '{\"id\":1,\"title_en\":\"Pain Killers\",\"title_sw\":\"Pain Killers\",\"summary_en\":\"Pain Killers\",\"summary_sw\":\"Pain Killers\",\"photo_url\":\"\\/uploads\\/product-categories\\/b74276c40e62053fb15a07704ee495e3.jpeg\",\"active\":\"1\",\"slug\":\"pain-killers\",\"created_at\":\"2022-01-02T14:28:20.000000Z\",\"updated_at\":\"2022-01-02T14:28:20.000000Z\"}', '2022-01-02 11:32:38', '2022-01-02 11:32:38'),
(569, 1, 'ProductCategory', 'update', '127.0.0.1', 'http://localhost:8000/cms/product_categories/1', '{\"id\":1,\"title_en\":\"Pain Killers\",\"title_sw\":\"Pain Killers\",\"summary_en\":\"Summary of Pain Killers\",\"summary_sw\":\"Summary of Pain Killers\",\"photo_url\":\"\\/uploads\\/product-categories\\/b74276c40e62053fb15a07704ee495e3.jpeg\",\"active\":\"1\",\"slug\":\"pain-killers\",\"created_at\":\"2022-01-02T14:28:20.000000Z\",\"updated_at\":\"2022-01-02T14:28:20.000000Z\"}', '2022-01-02 11:32:56', '2022-01-02 11:32:56'),
(570, 1, 'ProductCategory', 'store', '127.0.0.1', 'http://localhost:8000/cms/product_categories', '{\"title_en\":\"Tools and Equipments\",\"title_sw\":\"Vifaa vya kitabibu\",\"summary_en\":\"Tools and Equipments\",\"summary_sw\":\"Vifaa vya kitabibu\",\"active\":\"1\",\"photo_url\":\"\\/uploads\\/product-categories\\/7f74f6a100ab66cb50dea85e562f3b66.jpeg\",\"slug\":\"tools-and-equipments\"}', '2022-01-09 06:00:56', '2022-01-09 06:00:56');
INSERT INTO `timelines` (`id`, `actor`, `object`, `verb`, `ip`, `url`, `content`, `created_at`, `updated_at`) VALUES
(571, 1, 'Product', 'store', '127.0.0.1', 'http://localhost:8000/cms/products', '{\"category_id\":\"2\",\"title_en\":\"Scissors\",\"title_sw\":\"Mkasi\",\"summary_en\":\"Scissors\",\"summary_sw\":\"Mkasi\",\"content_en\":null,\"content_sw\":null,\"active\":\"1\",\"photo_url\":\"\\/uploads\\/products\\/b3f6d79d0aa7cff2cf0bba4fe224a1a7.png\",\"slug\":\"scissors\"}', '2022-01-09 06:05:22', '2022-01-09 06:05:22'),
(572, 1, 'Product', 'update', '127.0.0.1', 'http://localhost:8000/cms/products/1', '{\"id\":1,\"title_en\":\"Scissors\",\"title_sw\":\"Mkasi\",\"summary_en\":\"Scissors\",\"summary_sw\":\"Mkasi\",\"content_en\":null,\"content_sw\":null,\"photo_url\":\"\\/uploads\\/products\\/b3f6d79d0aa7cff2cf0bba4fe224a1a7.png\",\"category_id\":\"2\",\"active\":\"1\",\"slug\":\"scissors\",\"created_at\":\"2022-01-09T09:05:22.000000Z\",\"updated_at\":\"2022-01-09T09:05:22.000000Z\"}', '2022-01-09 06:07:33', '2022-01-09 06:07:33'),
(573, 1, 'Product', 'update', '127.0.0.1', 'http://localhost:8000/cms/products/1', '{\"id\":1,\"title_en\":\"Scissors\",\"title_sw\":\"Mkasi\",\"summary_en\":\"Scissors\",\"summary_sw\":\"Mkasi\",\"content_en\":null,\"content_sw\":null,\"photo_url\":\"\\/uploads\\/products\\/b3f6d79d0aa7cff2cf0bba4fe224a1a7.png\",\"category_id\":\"2\",\"active\":\"1\",\"slug\":\"scissors\",\"created_at\":\"2022-01-09T09:05:22.000000Z\",\"updated_at\":\"2022-01-09T09:05:22.000000Z\"}', '2022-01-09 06:09:03', '2022-01-09 06:09:03'),
(574, 1, 'Product', 'update', '127.0.0.1', 'http://localhost:8000/cms/products/1', '{\"id\":1,\"title_en\":\"Scissors\",\"title_sw\":\"Mkasi\",\"summary_en\":\"Scissors\",\"summary_sw\":\"Mkasi\",\"content_en\":null,\"content_sw\":null,\"photo_url\":\"\\/uploads\\/products\\/b3f6d79d0aa7cff2cf0bba4fe224a1a7.png\",\"category_id\":\"1\",\"active\":\"1\",\"slug\":\"scissors\",\"created_at\":\"2022-01-09T09:05:22.000000Z\",\"updated_at\":\"2022-01-09T09:05:22.000000Z\"}', '2022-01-09 06:09:17', '2022-01-09 06:09:17'),
(575, 1, 'Product', 'update', '127.0.0.1', 'http://localhost:8000/cms/products/3', '{\"id\":3,\"title_en\":\"Panadol\",\"title_sw\":\"Panadol\",\"summary_en\":\"Panadol\",\"summary_sw\":\"Panadol\",\"content_en\":\"<p>Panadol<\\/p>\",\"content_sw\":\"<p>Panadol<\\/p>\",\"photo_url\":\"\\/uploads\\/products\\/d998c13cd944f94408ed05a73ad91079.jpeg\",\"category_id\":\"1\",\"active\":\"0\",\"slug\":\"scissors\",\"created_at\":\"2022-01-09T09:05:22.000000Z\",\"updated_at\":\"2022-01-09T09:09:17.000000Z\"}', '2022-01-09 06:12:22', '2022-01-09 06:12:22'),
(576, 1, 'Product', 'update', '127.0.0.1', 'http://localhost:8000/cms/products/5', '{\"id\":5,\"title_en\":\"Scissors\",\"title_sw\":\"Mkasi\",\"summary_en\":\"Scissors\",\"summary_sw\":\"Mkasi\",\"content_en\":null,\"content_sw\":null,\"photo_url\":\"\\/uploads\\/products\\/b3f6d79d0aa7cff2cf0bba4fe224a1a7.png\",\"category_id\":\"2\",\"active\":\"1\",\"slug\":\"scissors\",\"created_at\":\"2022-01-09T09:05:22.000000Z\",\"updated_at\":\"2022-01-09T09:09:17.000000Z\"}', '2022-01-09 06:12:36', '2022-01-09 06:12:36'),
(577, 1, 'Product', 'update', '127.0.0.1', 'http://localhost:8000/cms/products/4', '{\"id\":4,\"title_en\":\"Scissors\",\"title_sw\":\"Mkasi\",\"summary_en\":\"Scissors\",\"summary_sw\":\"Mkasi\",\"content_en\":null,\"content_sw\":null,\"photo_url\":\"\\/uploads\\/products\\/0d1eba692467e4ee491e0974d871223d.jpeg\",\"category_id\":\"1\",\"active\":\"1\",\"slug\":\"scissors\",\"created_at\":\"2022-01-09T09:05:22.000000Z\",\"updated_at\":\"2022-01-09T09:09:17.000000Z\"}', '2022-01-09 06:13:27', '2022-01-09 06:13:27'),
(578, 1, 'Product', 'update', '127.0.0.1', 'http://localhost:8000/cms/products/4', '{\"id\":4,\"title_en\":\"Scissors\",\"title_sw\":\"Mkasi\",\"summary_en\":\"Scissors\",\"summary_sw\":\"Mkasi\",\"content_en\":null,\"content_sw\":null,\"photo_url\":\"\\/uploads\\/products\\/0d1eba692467e4ee491e0974d871223d.jpeg\",\"category_id\":\"2\",\"active\":\"1\",\"slug\":\"scissors\",\"created_at\":\"2022-01-09T09:05:22.000000Z\",\"updated_at\":\"2022-01-09T09:13:27.000000Z\"}', '2022-01-09 06:14:03', '2022-01-09 06:14:03'),
(579, 1, 'Product', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/products/1', '{\"id\":1,\"title_en\":\"Scissors\",\"title_sw\":\"Mkasi\",\"summary_en\":\"Scissors\",\"summary_sw\":\"Mkasi\",\"content_en\":null,\"content_sw\":null,\"photo_url\":\"\\/uploads\\/products\\/b3f6d79d0aa7cff2cf0bba4fe224a1a7.png\",\"category_id\":1,\"active\":1,\"slug\":\"scissors\",\"created_at\":\"2022-01-09T09:05:22.000000Z\",\"updated_at\":\"2022-01-09T09:09:17.000000Z\"}', '2022-01-09 06:17:55', '2022-01-09 06:17:55'),
(580, 1, 'ProductCategory', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/product_categories/1', '{\"id\":1,\"title_en\":\"Pain Killers\",\"title_sw\":\"Pain Killers\",\"summary_en\":\"Summary of Pain Killers\",\"summary_sw\":\"Summary of Pain Killers\",\"photo_url\":\"\\/uploads\\/product-categories\\/b74276c40e62053fb15a07704ee495e3.jpeg\",\"active\":1,\"slug\":\"pain-killers\",\"created_at\":\"2022-01-02T14:28:20.000000Z\",\"updated_at\":\"2022-01-02T14:32:56.000000Z\",\"products\":[{\"id\":3,\"title_en\":\"Panadol\",\"title_sw\":\"Panadol\",\"summary_en\":\"Panadol\",\"summary_sw\":\"Panadol\",\"content_en\":\"<p>Panadol<\\/p>\",\"content_sw\":\"<p>Panadol<\\/p>\",\"photo_url\":\"\\/uploads\\/products\\/d998c13cd944f94408ed05a73ad91079.jpeg\",\"category_id\":1,\"active\":0,\"slug\":\"scissors\",\"created_at\":\"2022-01-09T09:05:22.000000Z\",\"updated_at\":\"2022-01-09T09:12:22.000000Z\"},{\"id\":2,\"title_en\":\"Scissors\",\"title_sw\":\"Mkasi\",\"summary_en\":\"Scissors\",\"summary_sw\":\"Mkasi\",\"content_en\":null,\"content_sw\":null,\"photo_url\":\"\\/uploads\\/products\\/b3f6d79d0aa7cff2cf0bba4fe224a1a7.png\",\"category_id\":1,\"active\":1,\"slug\":\"scissors\",\"created_at\":\"2022-01-09T09:05:22.000000Z\",\"updated_at\":\"2022-01-09T09:09:17.000000Z\"}]}', '2022-01-09 06:18:23', '2022-01-09 06:18:23'),
(581, 1, 'CustomerCenter', 'update', '127.0.0.1', 'http://localhost:8000/cms/customer_centers/7', '{\"id\":7,\"title_sw\":\"Product Catalogue\",\"title_en\":\"Product Catalogue\",\"link\":\"0\",\"url\":null,\"url_external\":null,\"active\":1,\"created_at\":\"2022-01-02T12:06:11.000000Z\",\"updated_at\":\"2022-01-02T12:06:18.000000Z\",\"parent\":0,\"position\":1}', '2022-01-09 07:34:23', '2022-01-09 07:34:23'),
(582, 1, 'SalesPoint', 'store', '127.0.0.1', 'http://localhost:8000/cms/sales_points', '{\"title_en\":\"Lake Zone\",\"title_sw\":\"Kanda ya Ziwa\",\"fullname\":\"Dr. Jane Doe\",\"email\":\"JANE@DOE.COM\",\"phone\":\"255 2223 43567\",\"active\":\"1\",\"slug\":\"lake-zone\"}', '2022-01-09 08:21:08', '2022-01-09 08:21:08'),
(583, 1, 'ProductCategory', 'store', '127.0.0.1', 'http://localhost:8000/cms/product_categories', '{\"title_en\":\"Pain Killers\",\"title_sw\":\"Dawa za Kupunguza Makali\",\"summary_en\":\"Pain Killers Summary here\",\"summary_sw\":\"Dawa za Kupunguza Makali zinapatikana\",\"active\":\"1\",\"photo_url\":\"\\/uploads\\/product-categories\\/58119d1f984a049ea85942769c330500.jpeg\",\"slug\":\"pain-killers\"}', '2022-01-09 08:40:22', '2022-01-09 08:40:22'),
(584, 1, 'Documents', 'update', '127.0.0.1', 'http://localhost:8000/cms/documents/1', '{\"id\":1,\"title_sw\":\"Ripoti ya mwaka 2021\\/22\",\"title_en\":\"2021\\/22 Annual Report\",\"file_sw\":\"sw-1628523483-code.txt\",\"file_en\":\"en-1628523483-demo.pdf\",\"active\":\"1\",\"published_date\":\"2021-08-07\",\"category_id\":\"3\",\"created_at\":\"2021-08-09T15:38:04.000000Z\",\"updated_at\":\"2021-08-09T15:38:04.000000Z\"}', '2022-01-09 11:19:17', '2022-01-09 11:19:17'),
(585, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":312,\"keyword\":\"lbl_customer_center\",\"en\":\"Customer Center\",\"sw\":\"Kituo cha Wateja\",\"created_at\":\"2021-10-13T16:24:52.000000Z\",\"updated_at\":\"2021-11-23T12:55:15.000000Z\"}', '2022-01-09 11:29:37', '2022-01-09 11:29:37'),
(586, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":330,\"keyword\":\"lbl_mission\",\"en\":\"Mission\",\"sw\":\"Dhamira\",\"created_at\":\"2021-11-23T17:03:17.000000Z\",\"updated_at\":\"2021-11-23T14:03:57.000000Z\"}', '2022-01-09 11:32:51', '2022-01-09 11:32:51'),
(587, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":331,\"keyword\":\"lbl_vision\",\"en\":\"Vision\",\"sw\":\"Dira\",\"created_at\":\"2021-11-23T17:03:17.000000Z\",\"updated_at\":\"2021-11-23T14:03:57.000000Z\"}', '2022-01-09 11:32:51', '2022-01-09 11:32:51'),
(588, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":315,\"keyword\":\"lbl_home_message\",\"en\":\"Keko cares for your Health\",\"sw\":\"Keko inajali Afya yako\",\"created_at\":\"2021-10-29T13:00:46.000000Z\",\"updated_at\":\"2021-11-23T12:55:15.000000Z\"}', '2022-01-09 11:32:51', '2022-01-09 11:32:51'),
(589, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":314,\"keyword\":\"lbl_customer_portal\",\"en\":\"Customer Portal\",\"sw\":\"Customer Portal\",\"created_at\":\"2021-10-28T14:10:47.000000Z\",\"updated_at\":\"2021-11-23T12:55:15.000000Z\"}', '2022-01-09 11:32:51', '2022-01-09 11:32:51'),
(590, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":313,\"keyword\":\"lbl_online_services\",\"en\":\"Online Services\",\"sw\":\"Huduma Mtandao\",\"created_at\":\"2021-10-14T10:49:03.000000Z\",\"updated_at\":\"2021-10-14T10:49:03.000000Z\"}', '2022-01-09 11:32:51', '2022-01-09 11:32:51'),
(591, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":312,\"keyword\":\"lbl_customer_center\",\"en\":\"Customer Center\",\"sw\":\"Kituo cha Wateja\",\"created_at\":\"2021-10-13T16:24:52.000000Z\",\"updated_at\":\"2022-01-09T14:29:37.000000Z\"}', '2022-01-09 11:32:51', '2022-01-09 11:32:51'),
(592, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":301,\"keyword\":\"lbl_resource_not_found\",\"en\":\"Sorry, The Resource you are looking for was not found.\",\"sw\":\"Samahani, Rasilimali uliyotafuta haikupatikana.\",\"created_at\":\"2021-09-21T09:58:12.000000Z\",\"updated_at\":\"2021-10-06T12:30:47.000000Z\"}', '2022-01-09 11:32:51', '2022-01-09 11:32:51'),
(593, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":300,\"keyword\":\"lbl_not_found\",\"en\":\"Not Found\",\"sw\":\"Haipatikani\",\"created_at\":\"2021-09-21T09:56:31.000000Z\",\"updated_at\":\"2021-09-21T09:56:31.000000Z\"}', '2022-01-09 11:32:51', '2022-01-09 11:32:51'),
(594, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":299,\"keyword\":\"lbl_view_offices\",\"en\":\"View All Offices\",\"sw\":\"Tazama Ofisi Zote\",\"created_at\":\"2021-09-20T10:05:01.000000Z\",\"updated_at\":\"2021-09-20T10:05:01.000000Z\"}', '2022-01-09 11:32:51', '2022-01-09 11:32:51'),
(595, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":292,\"keyword\":\"lbl_latest_announcement\",\"en\":\"Latest Announcements\",\"sw\":\"Matangazo Mapya\",\"created_at\":\"2021-08-06T14:49:39.000000Z\",\"updated_at\":\"2021-08-06T14:49:39.000000Z\"}', '2022-01-09 11:32:51', '2022-01-09 11:32:51'),
(596, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":330,\"keyword\":\"lbl_medicine_purchase\",\"en\":\"Medicine Purchase\",\"sw\":\"Manunuzi ya Dawa\",\"created_at\":\"2021-11-23T17:03:17.000000Z\",\"updated_at\":\"2021-11-23T14:03:57.000000Z\"}', '2022-01-09 11:38:24', '2022-01-09 11:38:24'),
(597, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":331,\"keyword\":\"lbl_sales_personel\",\"en\":\"Sales Personnel\",\"sw\":\"Wauzaji\",\"created_at\":\"2021-11-23T17:03:17.000000Z\",\"updated_at\":\"2021-11-23T14:03:57.000000Z\"}', '2022-01-09 11:38:24', '2022-01-09 11:38:24'),
(598, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":315,\"keyword\":\"lbl_home_message\",\"en\":\"Keko cares for your health\",\"sw\":\"Keko inajali Afya yako\",\"created_at\":\"2021-10-29T13:00:46.000000Z\",\"updated_at\":\"2022-01-09T14:32:51.000000Z\"}', '2022-01-09 11:38:24', '2022-01-09 11:38:24'),
(599, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":314,\"keyword\":\"lbl_customer_portal\",\"en\":\"Customer Portal\",\"sw\":\"Customer Portal\",\"created_at\":\"2021-10-28T14:10:47.000000Z\",\"updated_at\":\"2021-11-23T12:55:15.000000Z\"}', '2022-01-09 11:38:24', '2022-01-09 11:38:24'),
(600, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":313,\"keyword\":\"lbl_online_services\",\"en\":\"Online Services\",\"sw\":\"Huduma Mtandao\",\"created_at\":\"2021-10-14T10:49:03.000000Z\",\"updated_at\":\"2021-10-14T10:49:03.000000Z\"}', '2022-01-09 11:38:24', '2022-01-09 11:38:24'),
(601, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":312,\"keyword\":\"lbl_customer_center\",\"en\":\"Customer Center\",\"sw\":\"Kituo cha Wateja\",\"created_at\":\"2021-10-13T16:24:52.000000Z\",\"updated_at\":\"2022-01-09T14:29:37.000000Z\"}', '2022-01-09 11:38:24', '2022-01-09 11:38:24'),
(602, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":301,\"keyword\":\"lbl_resource_not_found\",\"en\":\"Sorry, The Resource you are looking for was not found.\",\"sw\":\"Samahani, Rasilimali uliyotafuta haikupatikana.\",\"created_at\":\"2021-09-21T09:58:12.000000Z\",\"updated_at\":\"2021-10-06T12:30:47.000000Z\"}', '2022-01-09 11:38:24', '2022-01-09 11:38:24'),
(603, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":300,\"keyword\":\"lbl_not_found\",\"en\":\"Not Found\",\"sw\":\"Haipatikani\",\"created_at\":\"2021-09-21T09:56:31.000000Z\",\"updated_at\":\"2021-09-21T09:56:31.000000Z\"}', '2022-01-09 11:38:24', '2022-01-09 11:38:24'),
(604, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":299,\"keyword\":\"lbl_view_offices\",\"en\":\"View All Offices\",\"sw\":\"Tazama Ofisi Zote\",\"created_at\":\"2021-09-20T10:05:01.000000Z\",\"updated_at\":\"2021-09-20T10:05:01.000000Z\"}', '2022-01-09 11:38:24', '2022-01-09 11:38:24'),
(605, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":292,\"keyword\":\"lbl_latest_announcement\",\"en\":\"Latest Announcements\",\"sw\":\"Matangazo Mapya\",\"created_at\":\"2021-08-06T14:49:39.000000Z\",\"updated_at\":\"2021-08-06T14:49:39.000000Z\"}', '2022-01-09 11:38:24', '2022-01-09 11:38:24'),
(606, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":332,\"keyword\":\"lbl_medicine_purchase_summary\",\"en\":\"The procedure to purchase is simple, Depending on your location reach out to our Sales Personnel in your area.\",\"sw\":\"Utaratibu wa kununua ni rahisi, Kulingana na eneo lako wasiliana na Wafanyikazi wetu wa Uuzaji katika eneo lako.\",\"created_at\":\"2022-01-09T17:40:46.000000Z\",\"updated_at\":\"2022-01-09T17:40:46.000000Z\"}', '2022-01-09 11:42:44', '2022-01-09 11:42:44'),
(607, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":330,\"keyword\":\"lbl_medicine_purchase\",\"en\":\"Medicine Purchase\",\"sw\":\"Manunuzi ya Dawa\",\"created_at\":\"2021-11-23T17:03:17.000000Z\",\"updated_at\":\"2022-01-09T14:38:24.000000Z\"}', '2022-01-09 11:42:44', '2022-01-09 11:42:44'),
(608, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":331,\"keyword\":\"lbl_sales_personel\",\"en\":\"Sales Personnel\",\"sw\":\"Wauzaji\",\"created_at\":\"2021-11-23T17:03:17.000000Z\",\"updated_at\":\"2022-01-09T14:38:24.000000Z\"}', '2022-01-09 11:42:44', '2022-01-09 11:42:44'),
(609, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":315,\"keyword\":\"lbl_home_message\",\"en\":\"Keko cares for your health\",\"sw\":\"Keko inajali Afya yako\",\"created_at\":\"2021-10-29T13:00:46.000000Z\",\"updated_at\":\"2022-01-09T14:32:51.000000Z\"}', '2022-01-09 11:42:44', '2022-01-09 11:42:44'),
(610, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":314,\"keyword\":\"lbl_customer_portal\",\"en\":\"Customer Portal\",\"sw\":\"Dirisha la Wateja\",\"created_at\":\"2021-10-28T14:10:47.000000Z\",\"updated_at\":\"2021-11-23T12:55:15.000000Z\"}', '2022-01-09 11:42:44', '2022-01-09 11:42:44'),
(611, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":313,\"keyword\":\"lbl_online_services\",\"en\":\"Online Services\",\"sw\":\"Huduma Mtandao\",\"created_at\":\"2021-10-14T10:49:03.000000Z\",\"updated_at\":\"2021-10-14T10:49:03.000000Z\"}', '2022-01-09 11:42:44', '2022-01-09 11:42:44'),
(612, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":312,\"keyword\":\"lbl_customer_center\",\"en\":\"Customer Center\",\"sw\":\"Kituo cha Wateja\",\"created_at\":\"2021-10-13T16:24:52.000000Z\",\"updated_at\":\"2022-01-09T14:29:37.000000Z\"}', '2022-01-09 11:42:44', '2022-01-09 11:42:44'),
(613, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":301,\"keyword\":\"lbl_resource_not_found\",\"en\":\"Sorry, The Resource you are looking for was not found.\",\"sw\":\"Samahani, Rasilimali uliyotafuta haikupatikana.\",\"created_at\":\"2021-09-21T09:58:12.000000Z\",\"updated_at\":\"2021-10-06T12:30:47.000000Z\"}', '2022-01-09 11:42:44', '2022-01-09 11:42:44'),
(614, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":300,\"keyword\":\"lbl_not_found\",\"en\":\"Not Found\",\"sw\":\"Haipatikani\",\"created_at\":\"2021-09-21T09:56:31.000000Z\",\"updated_at\":\"2021-09-21T09:56:31.000000Z\"}', '2022-01-09 11:42:44', '2022-01-09 11:42:44'),
(615, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":299,\"keyword\":\"lbl_view_offices\",\"en\":\"View All Offices\",\"sw\":\"Tazama Ofisi Zote\",\"created_at\":\"2021-09-20T10:05:01.000000Z\",\"updated_at\":\"2021-09-20T10:05:01.000000Z\"}', '2022-01-09 11:42:44', '2022-01-09 11:42:44'),
(616, 1, 'Page', 'update', '127.0.0.1', 'http://localhost:8000/cms/pages/2', '{\"id\":2,\"title_sw\":\"Malengo ya DMI\",\"title_en\":\"DMI Objectives\",\"has_sidebar\":\"1\",\"content_sw\":\"<h2>What is Lorem Ipsum?<\\/h2>\\r\\n\\r\\n<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<h2>Why do we use it?<\\/h2>\\r\\n\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"http:\\/\\/localhost:8000\\/uploads\\/gallery\\/d449b86a4a3d15c6578f0da2285ca4f9.jpeg\\\" style=\\\"height:1455px; width:2586px\\\" \\/><\\/p>\\r\\n\\r\\n<h2>Where does it come from?<\\/h2>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\",\"content_en\":\"<h2>What is Lorem Ipsum?<\\/h2>\\r\\n\\r\\n<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<h2>Why do we use it?<\\/h2>\\r\\n\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"http:\\/\\/localhost:8000\\/uploads\\/gallery\\/d449b86a4a3d15c6578f0da2285ca4f9.jpeg\\\" style=\\\"height:1455px; width:2586px\\\" \\/><\\/p>\\r\\n\\r\\n<h2>Where does it come from?<\\/h2>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\",\"slug\":\"dmi-objectives\",\"status\":1,\"created_at\":\"2021-11-25T09:06:17.000000Z\",\"updated_at\":\"2021-11-25T09:06:17.000000Z\"}', '2022-01-09 12:36:24', '2022-01-09 12:36:24'),
(617, 1, 'Page', 'update', '127.0.0.1', 'http://localhost:8000/cms/pages/2', '{\"id\":2,\"title_sw\":\"Malengo ya DMI\",\"title_en\":\"DMI Objectives\",\"has_sidebar\":\"0\",\"content_sw\":\"<h2>What is Lorem Ipsum?<\\/h2>\\r\\n\\r\\n<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<h2>Why do we use it?<\\/h2>\\r\\n\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"http:\\/\\/localhost:8000\\/uploads\\/gallery\\/d449b86a4a3d15c6578f0da2285ca4f9.jpeg\\\" style=\\\"height:1455px; width:2586px\\\" \\/><\\/p>\\r\\n\\r\\n<h2>Where does it come from?<\\/h2>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\",\"content_en\":\"<h2>What is Lorem Ipsum?<\\/h2>\\r\\n\\r\\n<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<h2>Why do we use it?<\\/h2>\\r\\n\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"http:\\/\\/localhost:8000\\/uploads\\/gallery\\/d449b86a4a3d15c6578f0da2285ca4f9.jpeg\\\" style=\\\"height:1455px; width:2586px\\\" \\/><\\/p>\\r\\n\\r\\n<h2>Where does it come from?<\\/h2>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\",\"slug\":\"dmi-objectives\",\"status\":1,\"created_at\":\"2021-11-25T09:06:17.000000Z\",\"updated_at\":\"2022-01-09T15:36:24.000000Z\"}', '2022-01-09 12:38:29', '2022-01-09 12:38:29'),
(618, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":281,\"keyword\":\"lbl_site_sub_subtitle\",\"en\":\"Ministry of Water\",\"sw\":\"Wizara ya Maji\",\"created_at\":\"2021-08-06T14:37:55.000000Z\",\"updated_at\":\"2021-10-25T09:42:28.000000Z\"}', '2022-01-09 12:42:32', '2022-01-09 12:42:32'),
(619, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":283,\"keyword\":\"lbl_administration\",\"en\":\"Administration\",\"sw\":\"Utawala\",\"created_at\":\"2021-08-06T14:37:55.000000Z\",\"updated_at\":\"2021-08-06T14:37:55.000000Z\"}', '2022-01-09 12:42:32', '2022-01-09 12:42:32'),
(620, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":11,\"keyword\":\"lbl_region_offices\",\"en\":\"Keko Pharmaceuticals Offices\",\"sw\":\"Ofisi za Kiwanda cha Keko\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-10-11T11:36:02.000000Z\"}', '2022-01-09 12:42:32', '2022-01-09 12:42:32'),
(621, 1, 'GoogleMap', 'update', '127.0.0.1', 'http://localhost:8000/cms/googlemaps/1', '{\"id\":1,\"url\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d15845.972643510664!2d39.2769355!3d-6.8313183!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x70a0735adc1ff7ae!2sKeko%20Pharmaceutical%20Industries%20(1997)%20Ltd.!5e0!3m2!1sen!2stz!4v1641743069240!5m2!1sen!2stz\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\"><\\/iframe>\",\"user_id\":1,\"created_at\":\"2021-07-01T08:13:01.000000Z\",\"updated_at\":\"2021-10-27T15:01:39.000000Z\"}', '2022-01-09 12:44:49', '2022-01-09 12:44:49'),
(622, 1, 'Product', 'update', '127.0.0.1', 'http://localhost:8000/cms/products/5', '{\"id\":5,\"title_en\":\"X-ray Machine\",\"title_sw\":\"Machine ya X-ray\",\"summary_en\":\"An X-ray machine is any machine that involves X-rays. It may consist of an X-ray generator and an X-ray detector.\",\"summary_sw\":\"An X-ray machine is any machine that involves X-rays. It may consist of an X-ray generator and an X-ray detector.\",\"content_en\":\"<h2>What is Lorem Ipsum?<\\/h2>\\r\\n\\r\\n<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<h2>Why do we use it?<\\/h2>\\r\\n\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\",\"content_sw\":\"<h2>What is Lorem Ipsum?<\\/h2>\\r\\n\\r\\n<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<h2>Why do we use it?<\\/h2>\\r\\n\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\",\"photo_url\":\"\\/uploads\\/products\\/515cc8f8fc408e148faf3ae3442c1671.jpeg\",\"category_id\":\"2\",\"active\":\"1\",\"slug\":\"scissors\",\"created_at\":\"2022-01-09T09:05:22.000000Z\",\"updated_at\":\"2022-01-09T09:12:36.000000Z\"}', '2022-01-09 14:21:47', '2022-01-09 14:21:47'),
(623, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Bidhaa Zetu\",\"title_en\":\"Our Products\",\"link\":\"1\",\"url_external\":null,\"url\":\"product-categories\",\"position\":14}', '2022-01-10 01:09:42', '2022-01-10 01:09:42'),
(624, 1, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Vifaa vya kitabibu\",\"title_en\":\"Tools and Equipments\",\"link\":\"1\",\"url_external\":null,\"url\":\"product-categories\\/tools-and-equipments\",\"position\":15}', '2022-01-10 01:10:50', '2022-01-10 01:10:50'),
(625, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":249,\"keyword\":\"lbl_our_products\",\"en\":\"Our Products\",\"sw\":\"Bidhaa Zetu\",\"created_at\":\"2020-06-23T09:30:22.000000Z\",\"updated_at\":\"2020-06-27T10:34:51.000000Z\"}', '2022-01-10 01:14:43', '2022-01-10 01:14:43'),
(626, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":28,\"keyword\":\"lbl_latest_products\",\"en\":\"Latest Products\",\"sw\":\"Bidhaa Mpya\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2022-01-10 01:14:43', '2022-01-10 01:14:43'),
(627, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":38,\"keyword\":\"lbl_more_products\",\"en\":\"More Products\",\"sw\":\"Bidhaa Zaidi\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2022-01-10 01:14:43', '2022-01-10 01:14:43'),
(628, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://localhost:8000/cms/trans_update', '{\"id\":59,\"keyword\":\"lbl_products\",\"en\":\"Products\",\"sw\":\"Bidhaa\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-06-23T09:30:47.000000Z\"}', '2022-01-10 01:14:43', '2022-01-10 01:14:43'),
(629, 1, 'News', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/news/5', '{\"id\":5,\"title_sw\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat\",\"title_en\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat cursus. Nam id justo non turpis gravida dapibus. Cras a facilisis odio, quis accumsan diam. Sed sem neque, pharetra sit amet iaculis et, ullamcorper et risus. Morbi blandit nibh risus, et dignissim dui iaculis sit amet. In convallis lectus vitae tellus malesuada sodales. Sed iaculis aliquam magna at dictum. Aenean pharetra ligula massa, vel fermentum elit elementum pharetra. Integer et viverra purus. Donec molestie ante molestie fringilla scelerisque.<\\/p>\\r\\n\\r\\n<p>Donec auctor, enim eleifend fermentum commodo, nisl eros malesuada lorem, eu suscipit ex est vitae lacus. Nullam euismod velit at velit mattis, vel mattis augue fringilla. Nam scelerisque eu quam varius gravida. Sed in ultrices justo, id tristique magna. Maecenas aliquet accumsan volutpat. Quisque commodo nisi at tortor rutrum consectetur. Nunc euismod, turpis ut rhoncus egestas, augue erat eleifend justo, nec vulputate sapien nisi non risus. Nullam eleifend placerat lorem, non vulputate tortor bibendum sed. Duis quis pharetra urna. Ut condimentum, ligula ut auctor malesuada, mi nulla efficitur velit, et eleifend neque mauris nec odio. Mauris a nunc felis. Cras quis leo dictum, rutrum nibh non, venenatis odio. Nam porttitor eros sed ipsum cursus, vitae pellentesque leo feugiat. Morbi magna leo, vehicula sed nisl eget, faucibus sollicitudin erat.<\\/p>\",\"content_en\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat cursus. Nam id justo non turpis gravida dapibus. Cras a facilisis odio, quis accumsan diam. Sed sem neque, pharetra sit amet iaculis et, ullamcorper et risus. Morbi blandit nibh risus, et dignissim dui iaculis sit amet. In convallis lectus vitae tellus malesuada sodales. Sed iaculis aliquam magna at dictum. Aenean pharetra ligula massa, vel fermentum elit elementum pharetra. Integer et viverra purus. Donec molestie ante molestie fringilla scelerisque.<\\/p>\\r\\n\\r\\n<p>Donec auctor, enim eleifend fermentum commodo, nisl eros malesuada lorem, eu suscipit ex est vitae lacus. Nullam euismod velit at velit mattis, vel mattis augue fringilla. Nam scelerisque eu quam varius gravida. Sed in ultrices justo, id tristique magna. Maecenas aliquet accumsan volutpat. Quisque commodo nisi at tortor rutrum consectetur. Nunc euismod, turpis ut rhoncus egestas, augue erat eleifend justo, nec vulputate sapien nisi non risus. Nullam eleifend placerat lorem, non vulputate tortor bibendum sed. Duis quis pharetra urna. Ut condimentum, ligula ut auctor malesuada, mi nulla efficitur velit, et eleifend neque mauris nec odio. Mauris a nunc felis. Cras quis leo dictum, rutrum nibh non, venenatis odio. Nam porttitor eros sed ipsum cursus, vitae pellentesque leo feugiat. Morbi magna leo, vehicula sed nisl eget, faucibus sollicitudin erat.<\\/p>\",\"active\":\"1\",\"user_id\":1,\"slug\":\"lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-donec-mollis-consequat\",\"photo_url\":\"94c0ded4110752d637dc7cebf1c3ad3b.jpeg\",\"created_at\":\"2021-08-09T16:30:30.000000Z\",\"updated_at\":\"2021-08-09T16:30:30.000000Z\"}', '2022-02-07 07:25:25', '2022-02-07 07:25:25'),
(630, 1, 'WelcomeNote', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/welcome/2', '{\"id\":2,\"summary_en\":null,\"summary_sw\":null,\"content_sw\":\"<p>Welcome to KPI<\\/p>\\r\\n\\r\\n<h2>What is Lorem Ipsum?<\\/h2>\\r\\n\\r\\n<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<h2>Why do we use it?<\\/h2>\\r\\n\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\",\"content_en\":\"<p>Welcome to KPI<\\/p>\\r\\n\\r\\n<h2>What is Lorem Ipsum?<\\/h2>\\r\\n\\r\\n<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<h2>Why do we use it?<\\/h2>\\r\\n\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\",\"status\":\"1\",\"created_at\":\"2022-01-02T12:11:54.000000Z\",\"updated_at\":\"2022-01-02T12:11:54.000000Z\"}', '2022-02-07 07:26:48', '2022-02-07 07:26:48'),
(631, 1, 'WelcomeNote', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/welcome/2', '{\"id\":2,\"summary_en\":null,\"summary_sw\":null,\"content_sw\":\"<p>Welcome to KPI<\\/p>\\r\\n\\r\\n<h2>What is Lorem Ipsum?<\\/h2>\\r\\n\\r\\n<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/uploads\\/gallery\\/36e67aa0f5fcc9695bc643de0acd4115.jpeg\\\" style=\\\"height:504px; width:897px\\\" \\/><\\/p>\\r\\n\\r\\n<h2>Why do we use it?<\\/h2>\\r\\n\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\",\"content_en\":\"<p>Welcome to KPI<\\/p>\\r\\n\\r\\n<h2>What is Lorem Ipsum?<\\/h2>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/uploads\\/gallery\\/36e67aa0f5fcc9695bc643de0acd4115.jpeg\\\" style=\\\"height:504px; width:897px\\\" \\/><\\/p>\\r\\n\\r\\n<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<h2>Why do we use it?<\\/h2>\\r\\n\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\",\"status\":\"1\",\"created_at\":\"2022-02-07T13:26:48.000000Z\",\"updated_at\":\"2022-02-07T10:26:48.000000Z\"}', '2022-02-07 07:27:45', '2022-02-07 07:27:45'),
(632, 1, 'Documents', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/documents/1', '{\"id\":1,\"title_sw\":\"Ripoti ya mwaka 2021\\/22\",\"title_en\":\"2021\\/22 Annual Reports\",\"file_sw\":\"sw-1628523483-code.txt\",\"file_en\":\"en-1628523483-demo.pdf\",\"active\":\"1\",\"published_date\":\"2021-08-07\",\"category_id\":\"3\",\"created_at\":\"2021-08-09T15:38:04.000000Z\",\"updated_at\":\"2022-01-09T14:19:17.000000Z\"}', '2022-02-07 07:38:07', '2022-02-07 07:38:07'),
(633, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":332,\"keyword\":\"lbl_medicine_purchase_summary\",\"en\":\"The procedure to purchase is simple, Depending on your location reach out to our Sales Personnel in your area.\",\"sw\":\"Utaratibu wa kununua ni rahisi, Kulingana na eneo lako wasiliana na Wafanyikazi wetu wa Uuzaji katika eneo lako.\",\"created_at\":\"2022-01-09T17:40:46.000000Z\",\"updated_at\":\"2022-01-09T14:42:44.000000Z\"}', '2022-02-07 08:53:40', '2022-02-07 08:53:40'),
(634, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":330,\"keyword\":\"lbl_medicine_purchase\",\"en\":\"Medicine Purchase\",\"sw\":\"Manunuzi ya Dawa\",\"created_at\":\"2021-11-23T17:03:17.000000Z\",\"updated_at\":\"2022-01-09T14:38:24.000000Z\"}', '2022-02-07 08:53:40', '2022-02-07 08:53:40'),
(635, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":331,\"keyword\":\"lbl_sales_personel\",\"en\":\"Sales Personnel\",\"sw\":\"Wauzaji\",\"created_at\":\"2021-11-23T17:03:17.000000Z\",\"updated_at\":\"2022-01-09T14:38:24.000000Z\"}', '2022-02-07 08:53:40', '2022-02-07 08:53:40'),
(636, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":315,\"keyword\":\"lbl_home_message\",\"en\":\"Keko cares for your health\",\"sw\":\"Keko inajali Afya yako\",\"created_at\":\"2021-10-29T13:00:46.000000Z\",\"updated_at\":\"2022-01-09T14:32:51.000000Z\"}', '2022-02-07 08:53:40', '2022-02-07 08:53:40'),
(637, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":314,\"keyword\":\"lbl_customer_portal\",\"en\":\"Customer Portal\",\"sw\":\"Dirisha la Wateja\",\"created_at\":\"2021-10-28T14:10:47.000000Z\",\"updated_at\":\"2022-01-09T14:42:44.000000Z\"}', '2022-02-07 08:53:40', '2022-02-07 08:53:40'),
(638, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":313,\"keyword\":\"lbl_online_services\",\"en\":\"Online Services\",\"sw\":\"Huduma Mtandao\",\"created_at\":\"2021-10-14T10:49:03.000000Z\",\"updated_at\":\"2021-10-14T10:49:03.000000Z\"}', '2022-02-07 08:53:40', '2022-02-07 08:53:40'),
(639, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":312,\"keyword\":\"lbl_customer_center\",\"en\":\"Customer Center\",\"sw\":\"Kituo cha Wateja\",\"created_at\":\"2021-10-13T16:24:52.000000Z\",\"updated_at\":\"2022-01-09T14:29:37.000000Z\"}', '2022-02-07 08:53:40', '2022-02-07 08:53:40'),
(640, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":301,\"keyword\":\"lbl_resource_not_found\",\"en\":\"Sorry, The Resource you are looking for was not found.\",\"sw\":\"Samahani, Rasilimali uliyotafuta haikupatikana.\",\"created_at\":\"2021-09-21T09:58:12.000000Z\",\"updated_at\":\"2021-10-06T12:30:47.000000Z\"}', '2022-02-07 08:53:40', '2022-02-07 08:53:40');
INSERT INTO `timelines` (`id`, `actor`, `object`, `verb`, `ip`, `url`, `content`, `created_at`, `updated_at`) VALUES
(641, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":300,\"keyword\":\"lbl_not_found\",\"en\":\"Not Found\",\"sw\":\"Haipatikani\",\"created_at\":\"2021-09-21T09:56:31.000000Z\",\"updated_at\":\"2021-09-21T09:56:31.000000Z\"}', '2022-02-07 08:53:40', '2022-02-07 08:53:40'),
(642, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":299,\"keyword\":\"lbl_view_offices\",\"en\":\"View All Offices\",\"sw\":\"Tazama Ofisi Zote\",\"created_at\":\"2021-09-20T10:05:01.000000Z\",\"updated_at\":\"2021-09-20T10:05:01.000000Z\"}', '2022-02-07 08:53:40', '2022-02-07 08:53:40'),
(643, 1, 'News', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/news/5', '{\"id\":5,\"title_sw\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat\",\"title_en\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat cursus. Nam id justo non turpis gravida dapibus. Cras a facilisis odio, quis accumsan diam. Sed sem neque, pharetra sit amet iaculis et, ullamcorper et risus. Morbi blandit nibh risus, et dignissim dui iaculis sit amet. In convallis lectus vitae tellus malesuada sodales. Sed iaculis aliquam magna at dictum. Aenean pharetra ligula massa, vel fermentum elit elementum pharetra. Integer et viverra purus. Donec molestie ante molestie fringilla scelerisque.<\\/p>\\r\\n\\r\\n<p>Donec auctor, enim eleifend fermentum commodo, nisl eros malesuada lorem, eu suscipit ex est vitae lacus. Nullam euismod velit at velit mattis, vel mattis augue fringilla. Nam scelerisque eu quam varius gravida. Sed in ultrices justo, id tristique magna. Maecenas aliquet accumsan volutpat. Quisque commodo nisi at tortor rutrum consectetur. Nunc euismod, turpis ut rhoncus egestas, augue erat eleifend justo, nec vulputate sapien nisi non risus. Nullam eleifend placerat lorem, non vulputate tortor bibendum sed. Duis quis pharetra urna. Ut condimentum, ligula ut auctor malesuada, mi nulla efficitur velit, et eleifend neque mauris nec odio. Mauris a nunc felis. Cras quis leo dictum, rutrum nibh non, venenatis odio. Nam porttitor eros sed ipsum cursus, vitae pellentesque leo feugiat. Morbi magna leo, vehicula sed nisl eget, faucibus sollicitudin erat.<\\/p>\",\"content_en\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat cursus. Nam id justo non turpis gravida dapibus. Cras a facilisis odio, quis accumsan diam. Sed sem neque, pharetra sit amet iaculis et, ullamcorper et risus. Morbi blandit nibh risus, et dignissim dui iaculis sit amet. In convallis lectus vitae tellus malesuada sodales. Sed iaculis aliquam magna at dictum. Aenean pharetra ligula massa, vel fermentum elit elementum pharetra. Integer et viverra purus. Donec molestie ante molestie fringilla scelerisque.<\\/p>\\r\\n\\r\\n<p>Donec auctor, enim eleifend fermentum commodo, nisl eros malesuada lorem, eu suscipit ex est vitae lacus. Nullam euismod velit at velit mattis, vel mattis augue fringilla. Nam scelerisque eu quam varius gravida. Sed in ultrices justo, id tristique magna. Maecenas aliquet accumsan volutpat. Quisque commodo nisi at tortor rutrum consectetur. Nunc euismod, turpis ut rhoncus egestas, augue erat eleifend justo, nec vulputate sapien nisi non risus. Nullam eleifend placerat lorem, non vulputate tortor bibendum sed. Duis quis pharetra urna. Ut condimentum, ligula ut auctor malesuada, mi nulla efficitur velit, et eleifend neque mauris nec odio. Mauris a nunc felis. Cras quis leo dictum, rutrum nibh non, venenatis odio. Nam porttitor eros sed ipsum cursus, vitae pellentesque leo feugiat. Morbi magna leo, vehicula sed nisl eget, faucibus sollicitudin erat.<\\/p>\",\"active\":\"1\",\"user_id\":1,\"slug\":\"lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-donec-mollis-consequat\",\"photo_url\":\"94c0ded4110752d637dc7cebf1c3ad3b.jpeg\",\"created_at\":\"2021-08-09T16:30:30.000000Z\",\"updated_at\":\"2022-02-07T10:25:25.000000Z\"}', '2022-02-07 09:12:37', '2022-02-07 09:12:37'),
(644, 1, 'WelcomeNote', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/welcome/2', '{\"id\":2,\"summary_en\":null,\"summary_sw\":null,\"content_sw\":\"<p>Welcome to KPI<\\/p>\\r\\n\\r\\n<h2>What is Lorem Ipsum?<\\/h2>\\r\\n\\r\\n<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/uploads\\/gallery\\/36e67aa0f5fcc9695bc643de0acd4115.jpeg\\\" style=\\\"height:504px; width:897px\\\" \\/><\\/p>\\r\\n\\r\\n<h2>Why do we use it?<\\/h2>\\r\\n\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\",\"content_en\":\"<p>Welcome to KPI<\\/p>\\r\\n\\r\\n<h2>What is Lorem Ipsum?<\\/h2>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/uploads\\/gallery\\/36e67aa0f5fcc9695bc643de0acd4115.jpeg\\\" style=\\\"height:504px; width:897px\\\" \\/><\\/p>\\r\\n\\r\\n<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<h2>Why do we use it?<\\/h2>\\r\\n\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\",\"status\":\"1\",\"created_at\":\"2022-02-07T13:27:45.000000Z\",\"updated_at\":\"2022-02-07T10:27:45.000000Z\"}', '2022-02-07 09:12:52', '2022-02-07 09:12:52'),
(645, 1, 'Events', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/events', '{\"event_date\":\"2022-02-07\",\"event_time\":\"07:00AM - 12:30PM\",\"location\":\"KarimJee, Dar es Salaam\",\"title_en\":\"Demo News\",\"title_sw\":\"Demo Menu\",\"content_en\":\"<p>jllnm<\\/p>\",\"content_sw\":\"<p>bjnknj<\\/p>\",\"active\":\"1\",\"photo_url\":\"99d2dc4170483a7de434a018770802af.jpeg\",\"user_id\":1,\"slug\":\"demo-news\"}', '2022-02-07 09:19:44', '2022-02-07 09:19:44'),
(646, 1, 'Events', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/events/5', '{\"id\":5,\"event_date\":\"2022-02-07\",\"event_time\":\"07:00AM - 12:30PM\",\"location\":\"KarimJee, Dar es Salaam\",\"title_sw\":\"Demo Menu\",\"title_en\":\"Demo News\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p>bjnknj<\\/p>\",\"content_en\":\"<p>jllnm<\\/p>\",\"active\":\"1\",\"user_id\":1,\"slug\":\"demo-news\",\"photo_url\":\"99d2dc4170483a7de434a018770802af.jpeg\",\"created_at\":\"2022-02-07T12:19:44.000000Z\",\"updated_at\":\"2022-02-07T12:19:44.000000Z\"}', '2022-02-07 09:20:02', '2022-02-07 09:20:02'),
(647, 1, 'MenuItem', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/menu-items/13', '{\"id\":13,\"title_sw\":\"Dira na Dhamira\",\"title_en\":\"Mission and Vision\",\"status\":1,\"menu_id\":\"3\",\"url\":\"https:\\/\\/mail.ega.go.tz\",\"url_external\":\"https:\\/\\/mail.ega.go.tz\",\"link\":\"0\",\"parent\":7,\"position\":1,\"has_sidebar\":0,\"created_at\":\"2021-08-10T06:47:42.000000Z\",\"updated_at\":\"2022-02-07T13:13:02.000000Z\"}', '2022-02-07 10:26:48', '2022-02-07 10:26:48'),
(648, 1, 'MenuItem', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/menu-items/27', '{\"id\":27,\"title_sw\":\"Bodi ya Wakurugenzi\",\"title_en\":\"Board Members\",\"status\":1,\"menu_id\":\"3\",\"url\":\"https:\\/\\/portal.maliasili.go.tz\\/\",\"url_external\":\"https:\\/\\/portal.maliasili.go.tz\\/\",\"link\":\"0\",\"parent\":6,\"position\":2,\"has_sidebar\":0,\"created_at\":\"2021-09-21T18:04:36.000000Z\",\"updated_at\":\"2022-02-07T13:13:02.000000Z\"}', '2022-02-07 10:27:19', '2022-02-07 10:27:19'),
(649, 1, 'MenuItem', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/menu-items/13', '{\"id\":13,\"title_sw\":\"Dira na Dhamira\",\"title_en\":\"Mission and Vision\",\"status\":1,\"menu_id\":\"3\",\"url\":\"#\",\"url_external\":null,\"link\":\"1\",\"parent\":7,\"position\":1,\"has_sidebar\":0,\"created_at\":\"2021-08-10T06:47:42.000000Z\",\"updated_at\":\"2022-02-07T13:26:48.000000Z\"}', '2022-02-07 10:28:58', '2022-02-07 10:28:58'),
(650, 1, 'MenuItem', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/menu-items/13', '{\"id\":13,\"title_sw\":\"Dira na Dhamira\",\"title_en\":\"Mission and Vision\",\"status\":1,\"menu_id\":\"3\",\"url\":\"pages\\/mission-and-vision\",\"url_external\":null,\"link\":\"1\",\"parent\":7,\"position\":1,\"has_sidebar\":0,\"created_at\":\"2021-08-10T06:47:42.000000Z\",\"updated_at\":\"2022-02-07T13:28:58.000000Z\"}', '2022-02-07 10:29:09', '2022-02-07 10:29:09'),
(651, 1, 'MenuItem', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/menu-items/27', '{\"id\":27,\"title_sw\":\"Bodi ya Wakurugenzi\",\"title_en\":\"<script>alert(\'hello\');<\\/script>\",\"status\":1,\"menu_id\":\"3\",\"url\":\"administration\\/board-members\",\"url_external\":null,\"link\":\"1\",\"parent\":6,\"position\":2,\"has_sidebar\":0,\"created_at\":\"2021-09-21T18:04:36.000000Z\",\"updated_at\":\"2022-02-07T13:29:14.000000Z\"}', '2022-02-07 10:29:28', '2022-02-07 10:29:28'),
(652, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":100,\"keyword\":\"lbl_site_title_short \",\"en\":\"LATRA\",\"sw\":\"LATRA\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-12-20T08:38:55.000000Z\"}', '2022-02-10 11:16:34', '2022-02-10 11:16:34'),
(653, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":315,\"keyword\":\"lbl_home_message\",\"en\":\"Keko cares for your health\",\"sw\":\"Keko inajali Afya yako\",\"created_at\":\"2021-10-29T13:00:46.000000Z\",\"updated_at\":\"2022-01-09T14:32:51.000000Z\"}', '2022-02-10 11:21:12', '2022-02-10 11:21:12'),
(654, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":1,\"keyword\":\"lbl_site_title\",\"en\":\"Land Transport Regulatory Authority\",\"sw\":\"Mamlaka ya Udhibiti Usafiri Ardhini\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-12-20T08:41:17.000000Z\"}', '2022-02-10 11:21:12', '2022-02-10 11:21:12'),
(655, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":11,\"keyword\":\"lbl_region_offices\",\"en\":\"LATRA Offices\",\"sw\":\"Ofisi za LATRA\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2022-01-09T15:42:32.000000Z\"}', '2022-02-10 11:21:12', '2022-02-10 11:21:12'),
(656, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":99,\"keyword\":\"lbl_content_maintained \",\"en\":\"Content Maintained by Land Transport Regulatory Authority\",\"sw\":\"Huendeshwa na Mamlaka ya Udhibiti Usafiri Ardhini\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2021-12-20T08:41:17.000000Z\"}', '2022-02-10 11:21:12', '2022-02-10 11:21:12'),
(657, 1, 'OnlineService', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/online_services/6', '{\"id\":6,\"title_sw\":\"TNBPp\",\"title_en\":\"TNBP\",\"url\":\"http:\\/\\/tnbp.go.tz\",\"active\":1,\"created_at\":\"2021-07-28T09:18:36.000000Z\",\"updated_at\":\"2021-08-09T15:30:37.000000Z\",\"parent\":0,\"position\":1}', '2022-02-10 11:50:41', '2022-02-10 11:50:41'),
(658, 1, 'OnlineService', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/online_services/6', '{\"id\":6,\"title_sw\":\"TNBPp\",\"title_en\":\"TNBPp\",\"url\":\"http:\\/\\/tnbp.go.tz\",\"active\":1,\"created_at\":\"2021-07-28T09:18:36.000000Z\",\"updated_at\":\"2022-02-10T14:50:41.000000Z\",\"parent\":0,\"position\":1}', '2022-02-10 11:50:54', '2022-02-10 11:50:54'),
(659, 1, 'OnlineService', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/online_services/6', '{\"id\":6,\"title_sw\":\"TNBPpp\",\"title_en\":\"TNBPpp\",\"url\":\"http:\\/\\/tnbp.go.tz\",\"active\":1,\"created_at\":\"2021-07-28T09:18:36.000000Z\",\"updated_at\":\"2022-02-10T14:50:54.000000Z\",\"parent\":0,\"position\":1}', '2022-02-10 12:27:52', '2022-02-10 12:27:52'),
(660, 1, 'OnlineService', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/online_services/6', '{\"id\":6,\"title_sw\":\"TNBP\",\"title_en\":\"TNBP\",\"url\":\"http:\\/\\/tnbp.go.tz\",\"active\":1,\"created_at\":\"2021-07-28T09:18:36.000000Z\",\"updated_at\":\"2022-02-10T15:27:52.000000Z\",\"parent\":0,\"position\":1}', '2022-02-10 12:28:02', '2022-02-10 12:28:02'),
(661, 1, 'HowDoI', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/howdois', '{\"title_sw\":\"How Do I get a License?\",\"title_en\":\"How Do I get a License?\",\"content_sw\":\"<p>How Do I get a License explained<\\/p>\",\"content_en\":\"<p>How Do I get a License explained<\\/p>\",\"active\":\"1\",\"user_id\":1,\"slug\":\"how-do-i-get-a-license\"}', '2022-02-14 10:18:43', '2022-02-14 10:18:43'),
(662, 1, 'HowDoI', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/howdois/5', '{\"id\":5,\"title_sw\":\"How Do I get a License?\",\"title_en\":\"How Do I get a License?\",\"content_sw\":\"<p>How Do I get a License explained ....<\\/p>\",\"content_en\":\"<p>How Do I get a License explained<\\/p>\",\"active\":\"1\",\"slug\":\"how-do-i-get-a-license\",\"user_id\":1,\"created_at\":\"2022-02-14T13:18:43.000000Z\",\"updated_at\":\"2022-02-14T13:18:43.000000Z\"}', '2022-02-14 10:18:54', '2022-02-14 10:18:54'),
(663, 1, 'HowDoI', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/howdois/5', '{\"id\":5,\"title_sw\":\"How Do I get a License?\",\"title_en\":\"How Do I get a License?\",\"content_sw\":\"<p>How Do I get a License explained ....<\\/p>\",\"content_en\":\"<p>How Do I get a License explained<\\/p>\",\"active\":\"1\",\"slug\":\"how-do-i-get-a-license\",\"user_id\":1,\"created_at\":\"2022-02-14T13:18:43.000000Z\",\"updated_at\":\"2022-02-14T13:18:54.000000Z\"}', '2022-02-14 10:19:01', '2022-02-14 10:19:01'),
(664, 1, 'Passenger', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/passengers', '{\"title_sw\":\"Demo Passenger Info\",\"title_en\":\"Demo Passenger Info\",\"content_sw\":\"<p>Demo Passenger Info<\\/p>\",\"content_en\":\"<p>Demo Passenger Info<\\/p>\",\"active\":\"1\",\"user_id\":1,\"slug\":\"demo-passenger-info\"}', '2022-02-14 10:31:07', '2022-02-14 10:31:07'),
(665, 1, 'Passenger', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/passengers/1', '{\"id\":1,\"title_sw\":\"Demo Passenger Info\",\"title_en\":\"Demo Passenger Info\",\"content_sw\":\"<p>Demo Passenger Information<\\/p>\",\"content_en\":\"<p>Demo Passenger Info<\\/p>\",\"active\":\"1\",\"slug\":\"demo-passenger-info\",\"user_id\":1,\"created_at\":\"2022-02-14T13:31:07.000000Z\",\"updated_at\":\"2022-02-14T13:31:07.000000Z\"}', '2022-02-14 10:31:22', '2022-02-14 10:31:22'),
(666, 1, 'Passenger', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/passengers/1', '{\"id\":1,\"title_sw\":\"Demo Passenger Info\",\"title_en\":\"Demo Passenger Info\",\"content_sw\":\"<p>Demo Passenger Information<\\/p>\",\"content_en\":\"<p>Demo Passenger Info<\\/p>\",\"active\":\"1\",\"slug\":\"demo-passenger-info\",\"user_id\":1,\"created_at\":\"2022-02-14T13:31:07.000000Z\",\"updated_at\":\"2022-02-14T13:31:22.000000Z\"}', '2022-02-14 10:31:30', '2022-02-14 10:31:30'),
(667, 1, 'Passenger', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/passengers/1', '{\"id\":1,\"title_sw\":\"Demo Passenger Info\",\"title_en\":\"Demo Passenger Info\",\"content_sw\":\"<p>Demo Passenger Information<\\/p>\",\"content_en\":\"<p>Demo Passenger Info<\\/p>\",\"active\":\"0\",\"slug\":\"demo-passenger-info\",\"user_id\":1,\"created_at\":\"2022-02-14T13:31:07.000000Z\",\"updated_at\":\"2022-02-14T13:31:22.000000Z\"}', '2022-02-14 10:31:43', '2022-02-14 10:31:43'),
(668, 1, 'Passenger', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/passengers/1', '{\"id\":1,\"title_sw\":\"Demo Passenger Info\",\"title_en\":\"Demo Passenger Info\",\"content_sw\":\"<p>Demo Passenger Information<\\/p>\",\"content_en\":\"<p>Demo Passenger Info<\\/p>\",\"active\":\"1\",\"slug\":\"demo-passenger-info\",\"user_id\":1,\"created_at\":\"2022-02-14T13:31:07.000000Z\",\"updated_at\":\"2022-02-14T13:31:43.000000Z\"}', '2022-02-15 16:09:41', '2022-02-15 16:09:41'),
(669, 1, 'Page', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/pages/1', '{\"id\":1,\"title_sw\":\"Dira na Dhamira\",\"title_en\":\"Mission and Vision\",\"has_sidebar\":\"1\",\"content_sw\":\"<p><strong>Dira<\\/strong><\\/p>\\r\\n\\r\\n<p>&ldquo;Spearheading Tanzania&rsquo;s Economic Development through consensus building and networking&rdquo;<\\/p>\\r\\n\\r\\n<p><strong>Dhamira&nbsp;<\\/strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<\\/p>\\r\\n\\r\\n<p>&ldquo;To promote healthy and robust economy where the guiding hand of government, enlightened legislation and transparent governance enhances the development of private initiative, encourages local and foreign investments and generally provides an enabling environment for economic growth&rdquo;.<\\/p>\",\"content_en\":\"<p><strong>Vision<\\/strong><\\/p>\\r\\n\\r\\n<p>&ldquo;Spearheading Tanzania&rsquo;s Economic Development through consensus building and networking&rdquo;<\\/p>\\r\\n\\r\\n<p><strong>Mission&nbsp;<\\/strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<\\/p>\\r\\n\\r\\n<p>&ldquo;To promote healthy and robust economy where the guiding hand of government, enlightened legislation and transparent governance enhances the development of private initiative, encourages local and foreign investments and generally provides an enabling environment for economic growth&rdquo;.<\\/p>\",\"slug\":\"mission-and-vision\",\"status\":1,\"created_at\":\"2021-08-10T06:44:57.000000Z\",\"updated_at\":\"2021-08-10T06:44:57.000000Z\"}', '2022-02-16 03:36:18', '2022-02-16 03:36:18'),
(670, 1, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":118,\"keyword\":\"lbl_telephone\",\"en\":\"Telephone\",\"sw\":\"Simu\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2022-02-16 07:53:25', '2022-02-16 07:53:25'),
(671, 1, 'GoogleMap', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/googlemaps/1', '{\"id\":1,\"url\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d15845.972643510664!2d39.2769355!3d-6.8313183!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x70a0735adc1ff7ae!2sKeko%20Pharmaceutical%20Industries%20(1997)%20Ltd.!5e0!3m2!1sen!2stz!4v1641743069240!5m2!1sen!2stz\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\"><\\/iframe>\",\"office_id\":\"2\",\"user_id\":1,\"created_at\":\"2021-07-01T08:13:01.000000Z\",\"updated_at\":\"2022-01-09T15:44:49.000000Z\"}', '2022-02-16 08:43:10', '2022-02-16 08:43:10'),
(672, 1, 'GoogleMap', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/googlemaps/1', '{\"id\":1,\"url\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d15845.972643510664!2d39.2769355!3d-6.8313183!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x70a0735adc1ff7ae!2sKeko%20Pharmaceutical%20Industries%20(1997)%20Ltd.!5e0!3m2!1sen!2stz!4v1641743069240!5m2!1sen!2stz\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\"><\\/iframe>\",\"office_id\":\"2\",\"user_id\":1,\"created_at\":\"2021-07-01T08:13:01.000000Z\",\"updated_at\":\"2022-02-16T11:43:10.000000Z\"}', '2022-02-16 08:44:24', '2022-02-16 08:44:24'),
(673, 1, 'GoogleMap', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/googlemaps', '{\"office_id\":\"1\",\"url\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d15845.972643510664!2d39.2769355!3d-6.8313183!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x70a0735adc1ff7ae!2sKeko%20Pharmaceutical%20Industries%20(1997)%20Ltd.!5e0!3m2!1sen!2stz!4v1641743069240!5m2!1sen!2stz\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\"><\\/iframe>\"}', '2022-02-16 08:49:53', '2022-02-16 08:49:53'),
(674, 1, 'GoogleMap', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/googlemaps/2', '{\"id\":2,\"url\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d15845.972643510664!2d39.2769355!3d-6.8313183!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x70a0735adc1ff7ae!2sKeko%20Pharmaceutical%20Industries%20(1997)%20Ltd.!5e0!3m2!1sen!2stz!4v1641743069240!5m2!1sen!2stz\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\"><\\/iframe>\",\"office_id\":\"1\",\"user_id\":1,\"created_at\":\"2022-02-16T11:49:53.000000Z\",\"updated_at\":\"2022-02-16T11:49:53.000000Z\"}', '2022-02-16 09:09:39', '2022-02-16 09:09:39'),
(675, 1, 'GoogleMap', 'destroy', '127.0.0.1', 'http://127.0.0.1:8000/cms/googlemaps/1', '{\"id\":1,\"url\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d15845.972643510664!2d39.2769355!3d-6.8313183!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x70a0735adc1ff7ae!2sKeko%20Pharmaceutical%20Industries%20(1997)%20Ltd.!5e0!3m2!1sen!2stz!4v1641743069240!5m2!1sen!2stz\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\"><\\/iframe>\",\"office_id\":2,\"user_id\":1,\"created_at\":\"2021-07-01T08:13:01.000000Z\",\"updated_at\":\"2022-02-16T11:43:10.000000Z\"}', '2022-02-16 09:12:28', '2022-02-16 09:12:28'),
(676, 1, 'GoogleMap', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/googlemaps/2', '{\"id\":2,\"url\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d15845.972643510664!2d39.2769355!3d-6.8313183!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x70a0735adc1ff7ae!2sKeko%20Pharmaceutical%20Industries%20(1997)%20Ltd.!5e0!3m2!1sen!2stz!4v1641743069240!5m2!1sen!2stz\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\"><\\/iframe>\",\"office_id\":1,\"user_id\":1,\"created_at\":\"2022-02-16T11:49:53.000000Z\",\"updated_at\":\"2022-02-16T12:09:39.000000Z\"}', '2022-02-16 09:31:38', '2022-02-16 09:31:38'),
(677, 1, 'GoogleMap', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/googlemaps/2', '{\"id\":2,\"url\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d15845.972643510664!2d39.2769355!3d-6.8313183!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x70a0735adc1ff7ae!2sKeko%20Pharmaceutical%20Industries%20(1997)%20Ltd.!5e0!3m2!1sen!2stz!4v1641743069240!5m2!1sen!2stz\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\"><\\/iframe>\",\"office_id\":1,\"user_id\":1,\"created_at\":\"2022-02-16T11:49:53.000000Z\",\"updated_at\":\"2022-02-16T12:09:39.000000Z\"}', '2022-02-16 09:32:03', '2022-02-16 09:32:03'),
(678, 1, 'GoogleMap', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/googlemaps/2', '{\"id\":2,\"url\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d15845.972643510664!2d39.2769355!3d-6.8313183!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x70a0735adc1ff7ae!2sKeko%20Pharmaceutical%20Industries%20(1997)%20Ltd.!5e0!3m2!1sen!2stz!4v1641743069240!5m2!1sen!2stz\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\"><\\/iframe>\",\"office_id\":1,\"user_id\":1,\"created_at\":\"2022-02-16T11:49:53.000000Z\",\"updated_at\":\"2022-02-16T12:09:39.000000Z\"}', '2022-02-16 09:32:20', '2022-02-16 09:32:20'),
(679, 1, 'GoogleMap', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/googlemaps/2', '{\"id\":2,\"url\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d15845.972643510664!2d39.2769355!3d-6.8313183!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x70a0735adc1ff7ae!2sKeko%20Pharmaceutical%20Industries%20(1997)%20Ltd.!5e0!3m2!1sen!2stz!4v1641743069240!5m2!1sen!2stz\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\"><\\/iframe>\",\"office_id\":\"2\",\"user_id\":1,\"created_at\":\"2022-02-16T11:49:53.000000Z\",\"updated_at\":\"2022-02-16T12:09:39.000000Z\"}', '2022-02-16 09:35:07', '2022-02-16 09:35:07'),
(680, 1, 'GoogleMap', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/googlemaps/2', '{\"id\":2,\"url\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d15845.972643510664!2d39.2769355!3d-6.8313183!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x70a0735adc1ff7ae!2sKeko%20Pharmaceutical%20Industries%20(1997)%20Ltd.!5e0!3m2!1sen!2stz!4v1641743069240!5m2!1sen!2stz\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\"><\\/iframe>\",\"office_id\":\"1\",\"user_id\":1,\"created_at\":\"2022-02-16T11:49:53.000000Z\",\"updated_at\":\"2022-02-16T12:35:07.000000Z\"}', '2022-02-16 09:35:19', '2022-02-16 09:35:19'),
(681, 1, 'GoogleMap', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/googlemaps', '{\"office_id\":\"2\",\"url\":\"https:\\/\\/ega.go.tz\",\"user_id\":1}', '2022-02-16 09:35:46', '2022-02-16 09:35:46'),
(682, 1, 'GoogleMap', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/googlemaps/3', '{\"id\":3,\"url\":\"https:\\/\\/ega.go.tz\",\"office_id\":\"2\",\"user_id\":1,\"created_at\":\"2022-02-16T12:35:46.000000Z\",\"updated_at\":\"2022-02-16T12:35:46.000000Z\"}', '2022-02-16 09:42:38', '2022-02-16 09:42:38'),
(683, 1, 'GoogleMap', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/googlemaps/3', '{\"id\":3,\"url\":\"https:\\/\\/ega.go.tz\",\"office_id\":\"2\",\"user_id\":1,\"created_at\":\"2022-02-16T12:35:46.000000Z\",\"updated_at\":\"2022-02-16T12:35:46.000000Z\"}', '2022-02-16 09:43:03', '2022-02-16 09:43:03'),
(684, 1, 'GoogleMap', 'destroy', '127.0.0.1', 'http://127.0.0.1:8000/cms/googlemaps/3', '{\"id\":3,\"url\":\"https:\\/\\/ega.go.tz\",\"office_id\":2,\"user_id\":1,\"created_at\":\"2022-02-16T12:35:46.000000Z\",\"updated_at\":\"2022-02-16T12:35:46.000000Z\"}', '2022-02-16 09:43:36', '2022-02-16 09:43:36'),
(685, 1, 'GoogleMap', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/googlemaps', '{\"office_id\":\"2\",\"url\":\"https:\\/\\/ega.go.tz\",\"user_id\":1}', '2022-02-16 09:56:03', '2022-02-16 09:56:03'),
(686, 1, 'RegionalOffice', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/regional_office/1', '{\"id\":1,\"name_en\":\"Treasury Square Building\",\"name_sw\":\"Treasury Square Building\",\"physical_address_sw\":\"S.L.P 2908,\\r\\nDododma, Tanzania\",\"physical_address_en\":\"P.O.BOX 2908,\\r\\nDododma, Tanzania\",\"phone\":\"+255-282 560333\",\"toll_free\":\"255 222 15612\",\"fax\":\"+255-282 560333\",\"email\":\"ps@mof.go.tz\",\"content_sw\":null,\"content_en\":null,\"photo_url\":null,\"latitude\":null,\"longitude\":null,\"slug\":\"tanzania-national-business-council\",\"headquarter\":\"1\",\"used_as\":\"1\",\"created_at\":\"2021-07-28T14:05:10.000000Z\",\"updated_at\":\"2021-10-17T16:41:06.000000Z\"}', '2022-02-16 10:00:41', '2022-02-16 10:00:41'),
(687, 1, 'RegionalOffice', 'destroy', '127.0.0.1', 'http://127.0.0.1:8000/cms/regional_office/2', '{\"id\":2,\"name_en\":\"Dar es Salaam Offices\",\"name_sw\":\"Ofisi za Dar es Salaam\",\"physical_address_sw\":\"Address\",\"physical_address_en\":\"Address\",\"phone\":\"255762000111\",\"toll_free\":\"255 222 15612\",\"fax\":\"255 222 54854\",\"email\":\"dar@mof.go.tz\",\"content_sw\":null,\"content_en\":null,\"photo_url\":null,\"latitude\":null,\"longitude\":null,\"slug\":\"dar-es-salaam-offices\",\"headquarter\":0,\"used_as\":1,\"created_at\":\"2021-10-17T16:49:00.000000Z\",\"updated_at\":\"2021-10-17T16:49:00.000000Z\"}', '2022-02-16 10:00:52', '2022-02-16 10:00:52'),
(688, 1, 'RegionalOffice', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/regional_office', '{\"name_en\":\"Dar es Salaam Offices\",\"name_sw\":\"Ofisi za Dar es Salaam\",\"phone\":\"255754 555 222\",\"toll_free\":\"255 222 15612\",\"fax\":\"255 222 54854\",\"email\":\"admin@tic.go.tz\",\"used_as\":\"1\",\"headquarter\":\"0\",\"physical_address_sw\":\"Test\",\"physical_address_en\":\"Test\",\"slug\":\"dar-es-salaam-offices\"}', '2022-02-16 10:33:06', '2022-02-16 10:33:06'),
(689, 1, 'GoogleMap', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/googlemaps', '{\"office_id\":\"3\",\"url\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d15846.224109305367!2d39.27362156977538!3d-6.8237241999999965!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x185c4b61df89fadb%3A0xa3d3a42e611127bc!2sLATRA%20(Land%20Transport%20Regulatory%20Authority%20)!5e0!3m2!1sen!2stz!4v1645018599771!5m2!1sen!2stz\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\"><\\/iframe>\",\"user_id\":1}', '2022-02-16 10:37:07', '2022-02-16 10:37:07'),
(690, 1, 'RegionalOffice', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/regional_office', '{\"name_en\":\"Finance Department\",\"name_sw\":\"Idara ya Fedha\",\"phone\":\"255762000111\",\"toll_free\":\"+255 26 2160000\",\"fax\":\"255 222 54854\",\"email\":\"admin@lands.go.tz\",\"used_as\":\"1\",\"headquarter\":\"0\",\"physical_address_sw\":\"Test\",\"physical_address_en\":\"Test\",\"slug\":\"finance-department\"}', '2022-02-16 13:13:40', '2022-02-16 13:13:40'),
(691, 1, 'GoogleMap', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/googlemaps', '{\"office_id\":\"4\",\"url\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d15846.224109305367!2d39.27362156977538!3d-6.8237241999999965!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x185c4b61df89fadb%3A0xa3d3a42e611127bc!2sLATRA%20(Land%20Transport%20Regulatory%20Authority%20)!5e0!3m2!1sen!2stz!4v1645018599771!5m2!1sen!2stz\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\"><\\/iframe>\",\"user_id\":1}', '2022-02-16 13:21:14', '2022-02-16 13:21:14'),
(692, 1, 'GoogleMap', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/googlemaps/5', '{\"id\":5,\"url\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d15846.224109305367!2d39.27362156977538!3d-6.8237241999999965!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x185c4b61df89fadb%3A0xa3d3a42e611127bc!2sLATRA%20(Land%20Transport%20Regulatory%20Authority%20)!5e0!3m2!1sen!2stz!4v1645018599771!5m2!1sen!2stz\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\"><\\/iframe>\",\"office_id\":\"3\",\"user_id\":1,\"created_at\":\"2022-02-16T13:37:07.000000Z\",\"updated_at\":\"2022-02-16T13:37:07.000000Z\"}', '2022-02-16 13:21:35', '2022-02-16 13:21:35'),
(693, 1, 'MenuItem', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Dirisha la Abiria\",\"title_en\":\"Passengers Information\",\"link\":\"1\",\"url_external\":null,\"url\":\"passengers\",\"position\":6}', '2022-02-16 13:41:57', '2022-02-16 13:41:57'),
(694, 1, 'MenuItem', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/menu-items', '{\"menu_id\":\"3\",\"title_sw\":\"Nifanyeje\",\"title_en\":\"How Do i\",\"link\":\"1\",\"url_external\":null,\"url\":\"howdois\",\"position\":7}', '2022-02-16 13:42:19', '2022-02-16 13:42:19'),
(695, 1, 'MenuItem', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/menu-items', '{\"menu_id\":\"1\",\"title_sw\":\"Huduma Mtandao\",\"title_en\":\"Online Services\",\"link\":\"1\",\"url_external\":null,\"url\":\"online-services\",\"position\":8}', '2022-02-16 13:43:40', '2022-02-16 13:43:40'),
(696, 1, 'MenuItem', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/menu-items/2', '{\"id\":2,\"title_sw\":\"Wasiliana Nasi\",\"title_en\":\"Contact Us\",\"status\":1,\"menu_id\":\"1\",\"url\":\"contacts\",\"url_external\":null,\"link\":\"1\",\"parent\":0,\"position\":4,\"has_sidebar\":0,\"created_at\":\"2021-07-28T08:43:18.000000Z\",\"updated_at\":\"2021-10-05T13:50:50.000000Z\"}', '2022-02-16 13:44:16', '2022-02-16 13:44:16'),
(697, 1, 'MenuItem', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/menu-items/5', '{\"id\":5,\"title_sw\":\"Mrejesho\",\"title_en\":\"Feedback\",\"status\":1,\"menu_id\":\"1\",\"url\":\"complaints\",\"url_external\":null,\"link\":\"1\",\"parent\":0,\"position\":3,\"has_sidebar\":0,\"created_at\":\"2021-07-28T08:44:47.000000Z\",\"updated_at\":\"2021-10-05T13:50:50.000000Z\"}', '2022-02-16 13:44:26', '2022-02-16 13:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `keyword`, `en`, `sw`, `created_at`, `updated_at`) VALUES
(1, 'lbl_site_title', 'Land Transport Regulatory Authority', 'Mamlaka ya Udhibiti Usafiri Ardhini', '2020-04-17 06:41:00', '2022-02-10 11:21:12'),
(2, 'lbl_site_subtitle', 'The United Republic of Tanzania', 'Jamhuri ya Muungano wa Tanzania', '2020-04-17 06:41:00', '2021-08-04 07:01:50'),
(3, 'lbl_feedback', 'Feedback, Complaint or Opinion:', 'Mrejesho, Malalamiko au Wazo', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(4, 'lbl_contact', 'Contact Us', 'Wasiliana Nasi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(5, 'lbl_region', 'Region', 'Mkoa', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(11, 'lbl_region_offices', 'LATRA Offices', 'Ofisi za LATRA', '2020-04-17 06:41:00', '2022-02-10 11:21:12'),
(12, 'lbl_social', 'Social Media', 'Mitandao ya Kijamii', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(13, 'lbl_faq', 'Frequently Asked Questions', 'Maswali Yaulizwayo Mara kwa Mara', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(14, 'lbl_faq_short', 'FAQs', 'MMM', '2020-04-17 06:41:00', '2021-09-21 15:22:22'),
(16, 'lbl_our_services', 'Our Services', 'Huduma Zetu', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(17, 'lbl_sitemap', 'Sitemap', 'Ramani Ya Tovuti', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(18, 'lbl_languge', 'English', 'Kiswahili', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(20, 'lbl_profile', 'Profile', 'Wasifu', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(22, 'lbl_announcements', 'Announcements', 'Matangazo', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(24, 'lbl_recent_press', 'Press releases', 'Taarifa kwa vyombo vya habari', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(27, 'lbl_latest_news', 'Latest News', 'Habari Mpya', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(28, 'lbl_latest_products', 'Latest Products', 'Bidhaa Mpya', '2020-04-17 06:41:00', '2022-01-10 01:14:43'),
(29, 'lbl_latest_publications', 'Latest Publications', 'Machapisho Mapya', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(30, 'lbl_news', 'News', 'Habari', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(32, 'lbl_events', 'Events', 'Matukio', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(33, 'lbl_document', 'Document', 'Document', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(34, 'lbl_more', 'More', 'Zaidi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(35, 'lbl_more_news', 'More News', 'Habari Zaidi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(36, 'lbl_more_events', 'More Events', 'Matukio Zaidi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(37, 'lbl_more_gallery', 'More Gallery', 'Maktaba zote', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(38, 'lbl_more_products', 'More Products', 'Bidhaa Zaidi', '2020-04-17 06:41:00', '2022-01-10 01:14:43'),
(39, 'lbl_more_publications', 'More publications', 'More publications', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(40, 'lbl_more_announcements', 'View All Announcements', 'Matangazo Zaidi', '2020-04-17 06:41:00', '2020-08-05 01:43:45'),
(42, 'lbl_related_links', 'Related Links', 'Tovuti Mashuhuri', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(43, 'lbl_e_services_links', 'E-Services', 'Huduma Mtandao', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(44, 'lbl_quick_links', 'Quick Links', 'Kurasa za Karibu', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(45, 'lbl_readmore', 'Read More', 'Soma zaidi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(46, 'lbl_view_all_news', 'View All News', 'Soma Habari zaidi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(50, 'lbl_home', 'Home', 'Mwanzo', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(51, 'lbl_category', 'Category', 'Makundi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(53, 'lbl_pages', 'Pages', 'Kurasa', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(54, 'lbl_speeches', 'Speeches', 'Hotuba', '2020-04-17 06:41:00', '2021-09-26 07:39:04'),
(56, 'lbl_how_doi', 'How Do I?', 'Nifanyaje?', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(58, 'lbl_about_us', 'About us', 'Kuhusu sisi', '2020-04-17 06:41:00', '2021-10-04 07:20:28'),
(59, 'lbl_products', 'Products', 'Bidhaa', '2020-04-17 06:41:00', '2020-06-23 06:30:47'),
(60, 'lbl_publications', 'Publications', 'Machapisho', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(61, 'lbl_no_information', 'Content not found ', 'Hakuna Taarifa kwa sasa ', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(66, 'lbl_album', 'Albums', 'Albamu', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(67, 'lbl_vids', 'Videos', 'Video', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(68, 'lbl_error', 'Content Not Found', 'Taarifa hazijapatikana', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(73, 'lbl_desc', 'Description', 'Maelezo', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(79, 'lbl_press', 'Press Release', 'Vyombo vya Habari', '2020-04-17 06:41:00', '2021-10-17 16:06:16'),
(80, 'lbl_posted', 'Posted On', 'Imewekwa', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(82, 'lbl_biography', 'Biography', 'Wasifu', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(84, 'lbl_address', 'Postal Address', 'Anwani/Mahali', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(86, 'lbl_more_videos', 'More Videos', 'Video Zaidi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(87, 'lbl_copyright', 'All Rights Reserved.', 'Haki zote zimehifadhiwa.', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(88, 'lbl_copyright_statement', 'Copy Right Statements.', 'Copy Right Statements.', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(93, 'lbl_download', 'Download', 'Pakua', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(94, 'lbl_print', 'Chapisha', 'Chapisha', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(96, 'lbl_sponsor', 'Sponsors', 'Wadhamini', '2020-04-17 06:41:00', '2021-06-17 10:41:12'),
(97, 'lbl_ega', 'e-Government Authority', 'Mamlaka ya Serikali Mtandao', '2020-04-17 06:41:00', '2021-06-13 06:19:37'),
(98, 'lbl_designed', 'The website is Designed, Developed And Maintained by', 'Imesanifiwa na Imetengenezwa na', '2020-04-17 06:41:00', '2021-11-23 09:50:46'),
(99, 'lbl_content_maintained ', 'Content Maintained by Land Transport Regulatory Authority', 'Huendeshwa na Mamlaka ya Udhibiti Usafiri Ardhini', '2020-04-17 06:41:00', '2022-02-10 11:21:12'),
(100, 'lbl_site_title_short ', 'LATRA', 'LATRA', '2020-04-17 06:41:00', '2022-02-10 11:16:34'),
(101, 'lbl_photo_gallery', 'Photo Gallery', 'Maktaba ya Picha', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(102, 'lbl_video_gallery', 'Video Gallery', 'Maktaba ya Video', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(103, 'lbl_audio_gallery', 'Audio Gallery', 'Maktaba ya Audio', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(105, 'lbl_media_center', 'Media Center', 'Ukumbi wa Habari', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(106, 'lbl_name', 'Name', 'Jina', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(107, 'lbl_email', 'Email Address', 'Barua pepe', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(108, 'lbl_phone', 'Phone', 'Simu', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(109, 'lbl_phone_number', 'Phone Number', 'Namba ya Simu', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(110, 'lbl_fax', 'Fax', 'Nukushi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(111, 'lbl_message', 'Message', 'Ujumbe', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(112, 'lbl_send', 'Send', 'Tuma', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(114, 'lbl_search', 'Search', 'Tafuta', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(115, 'lbl_search_results', 'Search Results', 'Matokeo', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(116, 'lbl_search1', 'Type your search here then press ENTER', 'Andika Unachokitafuta Hapa Kisha bonyeza kitufe', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(117, 'lbl_mobile', 'Mobile', 'Simu ya Mkononi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(118, 'lbl_telephone', 'Telephone', 'Simu', '2020-04-17 06:41:00', '2022-02-16 07:53:26'),
(119, 'lbl_p.o.box', 'P.O Box', 'S.L.P', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(120, 'lbl_comments', 'Comments', 'Maoni', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(124, 'stakeholders', 'Stakeholders', 'Wadau', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(125, 'privacy_policy', 'Privacy Policy', 'Sera ya Faragha', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(126, 'disclaimer', 'Disclaimer', 'Angalizo', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(133, 'lbl_videos_gallery', 'Video Albums', 'Albamu ya Video', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(134, 'lbl_vacancies', 'Vacancies', 'Ajira', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(135, 'lbl_deadline', 'Deadline', 'Tarehe ya Mwisho', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(138, 'lbl_welcome_note', 'Welcome', 'Karibu', '2020-04-17 06:41:00', '2020-06-27 07:34:01'),
(139, 'lbl_contact_info', 'Contact Info', 'Mawasiliano', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(141, 'lbl_view_more', 'View More', 'Angalia Zaidi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(142, 'lbl_fullname', 'Fullname', 'Jina Kamili', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(143, 'lbl_subject', 'Subject', 'Kichwa cha Habari', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(144, 'lbl_call_us', 'Call Us', 'Tupigie', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(145, 'lbl_hotline', 'Hotline', 'Hotline', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(146, 'lbl_view', 'View', 'Tazama', '2020-04-17 06:41:00', '2021-07-09 12:27:59'),
(148, 'lbl_contacts', 'Contacts Us', 'Wasiliana Nasi', '2020-04-17 06:41:00', '2021-06-28 12:02:48'),
(173, 'lbl_projects', 'Our Projects', 'Miradi Yetu', '2020-04-17 06:41:00', '2021-10-14 03:32:40'),
(181, 'lbl_submit', 'Submit', 'Wasilisha', '2020-04-17 06:41:00', '2021-06-28 12:11:34'),
(247, 'lbl_sponsors_links', 'Sponsor Links', 'Wadhamini', '2020-06-23 04:28:17', '2020-06-23 04:28:17'),
(248, 'lbl_our_services_msg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor\" elit, sed do eiusmod tempor,o eiusmod tempor\" Lorem ipsum dolor sit amet, consectetur adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor\" elit, sed do eiusmod tempor,o eiusmod tempor\" Lorem ipsum dolor sit amet, consectetur adipiscing', '2020-06-23 06:14:51', '2021-10-25 10:00:34'),
(249, 'lbl_our_products', 'Our Products', 'Bidhaa Zetu', '2020-06-23 06:30:22', '2022-01-10 01:14:43'),
(259, 'lbl_view_all', 'View All', 'Tazama Zaidi', '2021-06-13 05:58:35', '2021-06-13 05:58:35'),
(260, 'lbl_date', 'Date', 'Tarehe', '2021-06-16 09:21:35', '2021-06-16 09:21:35'),
(261, 'lbl_doc_title', 'Description', 'Maelezo', '2021-06-16 09:21:35', '2021-06-16 09:21:35'),
(267, 'lbl_duration', 'Duration', 'Muda', '2021-06-26 12:15:55', '2021-06-26 12:15:55'),
(269, 'lbL_feedback_success', 'Feedback Successful Submitted', 'Mrejesho / Maoni Yamewasilishwa ', '2021-06-29 07:58:58', '2021-06-29 07:58:58'),
(273, 'lbl_latest_updates', 'Lastest Updates', 'Habari Mpya', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(277, 'lbl_overview', 'Overview', 'Muhtasari', '2021-07-09 15:54:12', '2021-07-09 15:54:12'),
(280, 'lbl_important_links', 'Important Links', 'Tovuti Muhimu', '2021-08-06 11:37:55', '2021-08-06 11:37:55'),
(281, 'lbl_site_sub_subtitle', 'Ministry of Water', 'Wizara ya Maji', '2021-08-06 11:37:55', '2021-10-25 06:42:28'),
(283, 'lbl_administration', 'Administration', 'Utawala', '2021-08-06 11:37:55', '2021-08-06 11:37:55'),
(289, 'lbl_feedbacks', 'Feedbacks', 'Feedbacks', '2021-08-06 11:37:55', '2021-08-06 11:37:55'),
(290, 'lbl_organization', 'Organization', 'Taasisi', '2021-08-06 11:37:55', '2021-08-06 11:37:55'),
(291, 'lbl_location', 'Location', 'Eneo / Mahali', '2021-08-06 11:37:55', '2021-10-29 07:02:51'),
(292, 'lbl_latest_announcement', 'Latest Announcements', 'Matangazo Mapya', '2021-08-06 11:49:39', '2021-08-06 11:49:39'),
(299, 'lbl_view_offices', 'View All Offices', 'Tazama Ofisi Zote', '2021-09-20 07:05:01', '2021-09-20 07:05:01'),
(300, 'lbl_not_found', 'Not Found', 'Haipatikani', '2021-09-21 06:56:31', '2021-09-21 06:56:31'),
(301, 'lbl_resource_not_found', 'Sorry, The Resource you are looking for was not found.', 'Samahani, Rasilimali uliyotafuta haikupatikana.', '2021-09-21 06:58:12', '2021-10-06 09:30:47'),
(312, 'lbl_toll_free', 'Toll Free', 'Piga Bure', '2021-10-13 13:24:52', '2022-01-09 11:29:37'),
(313, 'lbl_online_services', 'Online Services', 'Huduma Mtandao', '2021-10-14 07:49:03', '2021-10-14 07:49:03'),
(314, 'lbl_passengers_info', 'Passengers Information Center', 'Dirisha la Wasafiri', '2021-10-28 11:10:47', '2022-01-09 11:42:44'),
(315, 'lbl_home_message', 'Keko cares for your health', 'Keko inajali Afya yako', '2021-10-29 10:00:46', '2022-01-09 11:32:51'),
(330, 'lbl_medicine_purchase', 'Medicine Purchase', 'Manunuzi ya Dawa', '2021-11-23 14:03:17', '2022-01-09 11:38:24'),
(331, 'lbl_sales_personel', 'Sales Personnel', 'Wauzaji', '2021-11-23 14:03:17', '2022-01-09 11:38:24'),
(332, 'lbl_medicine_purchase_summary', 'The procedure to purchase is simple, Depending on your location reach out to our Sales Personnel in your area.', 'Utaratibu wa kununua ni rahisi, Kulingana na eneo lako wasiliana na Wafanyikazi wetu wa Uuzaji katika eneo lako.', '2022-01-09 14:40:46', '2022-01-09 11:42:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiring_date` date NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `last_login`, `photo`, `expiring_date`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@latra.go.tz', NULL, '$2a$12$wMh35A.NrHG7fh.P5LA7eO2tNKqtESDpTchsNoe38AQeYo9DifSVS', '', '', '0000-00-00', NULL, '2020-06-14 04:31:13', '2021-10-08 02:49:10');

-- --------------------------------------------------------

--
-- Table structure for table `visitors_logs`
--

CREATE TABLE `visitors_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `browserId` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browserName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browserVersion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userAgent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `osVersion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors_logs`
--

INSERT INTO `visitors_logs` (`id`, `browserId`, `browserName`, `browserVersion`, `userAgent`, `os`, `osVersion`, `created_at`, `updated_at`) VALUES
(7, '1514401248', 'Chrome', '83.0.4103.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'Windows', 'NT 10.0', '2020-06-27 11:12:03', '2020-06-27 11:12:03'),
(8, '399976577', 'Chrome', '84.0.4147.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'Windows', 'NT 10.0', '2020-08-05 05:08:40', '2020-08-05 05:08:40'),
(9, '3219720555', 'Chrome', '86.0.4240.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'Windows', 'NT 10.0', '2020-10-19 10:06:55', '2020-10-19 10:06:55'),
(10, '2254993920', 'Chrome', '90.0.4430.212', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Windows', 'NT 10.0', '2021-06-13 08:38:05', '2021-06-13 08:38:05'),
(11, '4003097485', 'Chrome', '91.0.4472.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', 'Windows', 'NT 10.0', '2021-06-14 09:24:49', '2021-06-14 09:24:49'),
(12, '792526207', 'Chrome', '91.0.4472.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', 'Windows', 'NT 10.0', '2021-06-14 17:23:02', '2021-06-14 17:23:02'),
(13, '1597388010', 'Chrome', '91.0.4472.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', 'Windows', 'NT 10.0', '2021-06-15 06:10:08', '2021-06-15 06:10:08'),
(14, '519499901', 'Chrome', '91.0.4472.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36', 'Windows', 'NT 10.0', '2021-06-16 05:43:57', '2021-06-16 05:43:57'),
(15, '841805890', 'Chrome', '91.0.4472.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', 'Windows', 'NT 10.0', '2021-06-17 14:23:43', '2021-06-17 14:23:43'),
(16, '4143783568', 'Chrome', '89.0.4389.105', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-G925F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36', 'Android', '6.0.1', '2021-06-19 06:46:31', '2021-06-19 06:46:31'),
(17, '1057539092', 'Mobile Safari', '10.0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1', 'iOS', '10.3.1', '2021-06-20 12:41:47', '2021-06-20 12:41:47'),
(18, '2931564642', 'Chrome', '91.0.4472.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Windows', 'NT 10.0', '2021-06-22 03:21:13', '2021-06-22 03:21:13'),
(19, '779227816', 'Chrome', '91.0.4472.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Windows', 'NT 10.0', '2021-06-22 13:30:34', '2021-06-22 13:30:34'),
(20, '2438620051', 'Chrome', '91.0.4472.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Windows', 'NT 10.0', '2021-06-23 17:45:17', '2021-06-23 17:45:17'),
(21, '2628712207', 'Chrome', '91.0.4472.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'Windows', 'NT 10.0', '2021-06-25 19:20:24', '2021-06-25 19:20:24'),
(22, '2846666480', 'Mobile Safari', '10.0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1', 'iOS', '10.3.1', '2021-06-27 18:03:09', '2021-06-27 18:03:09'),
(23, '4271773779', 'Mobile Safari', '13.0.3', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'iOS', '13.2.3', '2021-06-27 18:03:44', '2021-06-27 18:03:44'),
(24, '904489244', 'Chrome', '91.0.4472.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'Windows', 'NT 10.0', '2021-07-01 06:41:47', '2021-07-01 06:41:47'),
(25, '1950095434', 'Chrome', '91.0.4472.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'Windows', 'NT 10.0', '2021-07-05 08:35:28', '2021-07-05 08:35:28'),
(26, '1043298765', 'Chrome', '91.0.4472.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'Windows', 'NT 10.0', '2021-07-06 11:30:20', '2021-07-06 11:30:20'),
(27, '4040973509', 'Firefox', '67.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Windows', 'NT 10.0', '2021-07-16 06:04:19', '2021-07-16 06:04:19'),
(28, '2564103079', 'Mobile Safari', '13.0.3', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'iOS', '13.2.3', '2021-07-17 12:38:06', '2021-07-17 12:38:06'),
(29, '1006421051', 'Chrome', '91.0.4472.164', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'Windows', 'NT 10.0', '2021-07-19 10:01:22', '2021-07-19 10:01:22'),
(30, '997338073', 'Chrome', '92.0.4515.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'Windows', 'NT 10.0', '2021-07-27 07:53:17', '2021-07-27 07:53:17'),
(31, '1081752201', 'Mobile Safari', '10.0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1', 'iOS', '10.3.1', '2021-07-28 15:35:41', '2021-07-28 15:35:41'),
(32, '2746491122', 'Chrome', '92.0.4515.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'Windows', 'NT 10.0', '2021-08-05 05:31:59', '2021-08-05 05:31:59'),
(33, '858023180', 'Chrome', '92.0.4515.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'Windows', 'NT 10.0', '2021-08-06 06:49:48', '2021-08-06 06:49:48'),
(34, '2642244143', 'Chrome', '93.0.4577.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'Windows', 'NT 10.0', '2021-09-11 08:54:49', '2021-09-11 08:54:49'),
(35, '928240925', 'Chrome', '93.0.4577.63', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'Linux', 'x86_64', '2021-09-11 10:45:28', '2021-09-11 10:45:28'),
(36, '7032588', 'Chrome', '93.0.4577.63', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Mobile Safari/537.36', 'Android', '6.0', '2021-09-12 07:24:18', '2021-09-12 07:24:18'),
(37, '3475456421', 'Chrome', '93.0.4577.63', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Mobile Safari/537.36', 'Android', '6.0', '2021-09-12 07:24:41', '2021-09-12 07:24:41'),
(38, '3553092579', 'Chrome', '93.0.4577.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'Windows', 'NT 10.0', '2021-09-13 12:22:03', '2021-09-13 12:22:03'),
(39, '2554049866', 'Chrome', '93.0.4577.82', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 'Windows', 'NT 10.0', '2021-09-16 05:56:08', '2021-09-16 05:56:08'),
(40, '1496658469', 'Chrome', '93.0.4577.82', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 'Linux', 'x86_64', '2021-09-19 13:10:56', '2021-09-19 13:10:56'),
(41, '3478044887', 'Chrome', '93.0.4577.82', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 'Linux', 'x86_64', '2021-09-20 06:39:06', '2021-09-20 06:39:06'),
(42, '1642887794', 'Chrome', '93.0.4577.82', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', 'Android', '6.0', '2021-09-20 06:53:23', '2021-09-20 06:53:23'),
(43, '3319553820', 'Chrome', '93.0.4577.82', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', 'Android', '6.0', '2021-09-20 06:57:07', '2021-09-20 06:57:07'),
(44, '2326083630', 'Chrome', '93.0.4577.82', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', 'Android', '6.0', '2021-09-20 07:05:07', '2021-09-20 07:05:07'),
(45, '3251456635', 'Chrome', '93.0.4577.82', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', 'Android', '6.0', '2021-09-20 07:28:57', '2021-09-20 07:28:57'),
(46, '2578667287', 'Chrome', '93.0.4577.82', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 'Linux', 'x86_64', '2021-09-20 07:46:03', '2021-09-20 07:46:03'),
(47, '3969231667', 'Chrome', '93.0.4577.82', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', 'Android', '6.0', '2021-09-20 09:04:33', '2021-09-20 09:04:33'),
(48, '2517118823', 'Chrome', '93.0.4577.82', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', 'Android', '6.0', '2021-09-21 17:44:46', '2021-09-21 17:44:46'),
(49, '363927433', 'Chrome', '93.0.4577.82', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', 'Android', '6.0', '2021-09-21 17:51:58', '2021-09-21 17:51:58'),
(50, '3264825405', 'Chrome', '93.0.4577.82', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', 'Android', '6.0', '2021-09-26 10:50:32', '2021-09-26 10:50:32'),
(51, '3810936055', 'Chrome', '93.0.4577.82', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', 'Android', '6.0', '2021-09-26 10:51:14', '2021-09-26 10:51:14'),
(52, '3390390277', 'Chrome', '93.0.4577.82', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', 'Android', '6.0', '2021-09-26 10:53:18', '2021-09-26 10:53:18'),
(53, '1003235934', 'Mobile Safari', '10.0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1', 'iOS', '10.3.1', '2021-09-26 10:55:40', '2021-09-26 10:55:40'),
(54, '1506105151', 'Chrome', '93.0.4577.82', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', 'Android', '6.0', '2021-09-26 10:57:56', '2021-09-26 10:57:56'),
(55, '730314484', 'Chrome', '93.0.4577.82', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', 'Android', '6.0', '2021-09-26 11:00:01', '2021-09-26 11:00:01'),
(56, '1671016567', 'Chrome', '93.0.4577.82', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', 'Android', '6.0', '2021-09-26 11:01:21', '2021-09-26 11:01:21'),
(57, '3846624551', 'Chrome', '93.0.4577.82', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', 'Android', '6.0', '2021-09-26 11:04:44', '2021-09-26 11:04:44'),
(58, '1420189137', 'Chrome', '93.0.4577.82', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', 'Android', '6.0', '2021-09-26 11:08:51', '2021-09-26 11:08:51'),
(59, '727366539', 'Chrome', '93.0.4577.82', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', 'Android', '6.0', '2021-09-26 11:10:28', '2021-09-26 11:10:28'),
(60, '2865015099', 'Chrome', '93.0.4577.82', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', 'Android', '6.0', '2021-09-26 11:11:22', '2021-09-26 11:11:22'),
(61, '1993846285', 'Chrome', '93.0.4577.82', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', 'Android', '6.0', '2021-09-26 11:12:29', '2021-09-26 11:12:29'),
(62, '963949613', 'Chrome', '94.0.4606.71', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', 'Linux', 'x86_64', '2021-10-04 08:20:44', '2021-10-04 08:20:44'),
(63, '981399757', 'Chrome', '94.0.4606.71', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36', 'Android', '6.0', '2021-10-06 13:56:37', '2021-10-06 13:56:37'),
(64, '3090126127', 'Chrome', '94.0.4606.71', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36', 'Android', '6.0', '2021-10-06 13:57:40', '2021-10-06 13:57:40'),
(65, '2959358744', 'Chrome', '94.0.4606.71', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36', 'Android', '6.0', '2021-10-06 13:58:03', '2021-10-06 13:58:03'),
(66, '894864223', 'Chrome', '94.0.4606.71', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36', 'Android', '6.0', '2021-10-07 05:31:34', '2021-10-07 05:31:34'),
(67, '4199307218', 'Chrome', '94.0.4606.71', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36', 'Android', '6.0', '2021-10-07 05:34:37', '2021-10-07 05:34:37'),
(68, '3844392928', 'Chrome', '94.0.4606.71', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36', 'Android', '6.0', '2021-10-07 05:35:33', '2021-10-07 05:35:33'),
(69, '2599753801', 'Chrome', '94.0.4606.71', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36', 'Android', '6.0', '2021-10-07 06:07:05', '2021-10-07 06:07:05'),
(70, '3467905923', 'Chrome', '94.0.4606.71', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36', 'Android', '6.0', '2021-10-07 06:11:01', '2021-10-07 06:11:01'),
(71, '3295926932', 'Chrome', '94.0.4606.71', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36', 'Android', '6.0', '2021-10-08 12:57:06', '2021-10-08 12:57:06'),
(72, '3193108850', 'Chrome', '94.0.4606.71', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36', 'Android', '6.0', '2021-10-08 12:58:16', '2021-10-08 12:58:16'),
(73, '4234113606', 'Chrome', '94.0.4606.71', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36', 'Android', '6.0', '2021-10-08 13:11:39', '2021-10-08 13:11:39'),
(74, '3088389947', 'Chrome', '94.0.4606.71', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36', 'Android', '6.0', '2021-10-08 13:13:20', '2021-10-08 13:13:20'),
(75, '4224368164', 'Chrome', '94.0.4606.71', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36', 'Android', '6.0', '2021-10-11 12:52:59', '2021-10-11 12:52:59'),
(76, '1831126704', 'Chrome', '94.0.4606.71', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36', 'Android', '6.0', '2021-10-17 19:07:38', '2021-10-17 19:07:38'),
(77, '369944548', 'Chrome', '94.0.4606.71', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36', 'Android', '6.0', '2021-10-18 07:30:13', '2021-10-18 07:30:13'),
(78, '3091748894', 'Chrome', '94.0.4606.81', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', 'Linux', 'x86_64', '2021-10-25 09:03:35', '2021-10-25 09:03:35'),
(79, '4096195069', 'Chrome', '94.0.4606.81', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Mobile Safari/537.36', 'Android', '6.0', '2021-10-25 09:52:48', '2021-10-25 09:52:48'),
(80, '1641243843', 'Chrome', '94.0.4606.81', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', 'Linux', 'x86_64', '2021-10-25 12:39:06', '2021-10-25 12:39:06'),
(81, '3393694938', 'Firefox', '93.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:93.0) Gecko/20100101 Firefox/93.0', 'Ubuntu', NULL, '2021-10-25 12:39:43', '2021-10-25 12:39:43'),
(82, '1569298711', 'Chrome', '95.0.4638.54', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'Linux', 'x86_64', '2021-10-26 05:43:06', '2021-10-26 05:43:06'),
(83, '3112285023', 'Chrome', '95.0.4638.54', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'Linux', 'x86_64', '2021-10-26 05:46:11', '2021-10-26 05:46:11'),
(84, '326597605', 'Chrome', '95.0.4638.54', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'Linux', 'x86_64', '2021-10-26 06:05:48', '2021-10-26 06:05:48'),
(85, '1933837870', 'Chrome', '95.0.4638.54', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'Linux', 'x86_64', '2021-10-27 05:42:20', '2021-10-27 05:42:20'),
(86, '1308071491', 'Firefox', '93.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:93.0) Gecko/20100101 Firefox/93.0', 'Ubuntu', NULL, '2021-10-28 16:32:06', '2021-10-28 16:32:06'),
(87, '1597640844', 'Firefox', '93.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:93.0) Gecko/20100101 Firefox/93.0', 'Ubuntu', NULL, '2021-10-28 16:43:19', '2021-10-28 16:43:19'),
(88, '2821720569', 'Chrome', '95.0.4638.69', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'Linux', 'x86_64', '2021-11-08 10:04:11', '2021-11-08 10:04:11'),
(89, '2821720569', 'Chrome', '95.0.4638.69', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'Linux', 'x86_64', '2021-11-18 14:27:46', '2021-11-18 15:54:48'),
(90, '2821720569', 'Chrome', '95.0.4638.69', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'Linux', 'x86_64', '2021-11-22 11:56:17', '2021-11-22 11:56:17'),
(91, '2821720569', 'Chrome', '95.0.4638.69', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'Linux', 'x86_64', '2021-11-23 11:27:03', '2021-11-23 16:12:35'),
(92, '1554331059', 'Chrome', '95.0.4638.69', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Mobile Safari/537.36', 'Android', '6.0', '2021-11-23 13:26:40', '2021-11-23 13:26:40'),
(93, '154505629', 'Chrome', '95.0.4638.69', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Mobile Safari/537.36', 'Android', '6.0', '2021-11-23 13:27:10', '2021-11-23 13:27:10'),
(94, '2896436988', 'Chrome', '95.0.4638.69', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Mobile Safari/537.36', 'Android', '6.0', '2021-11-23 13:28:33', '2021-11-23 13:28:33'),
(95, '3195695944', 'Chrome', '95.0.4638.69', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Mobile Safari/537.36', 'Android', '6.0', '2021-11-23 13:30:02', '2021-11-23 13:30:02'),
(96, '2190751082', 'Chrome', '95.0.4638.69', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Mobile Safari/537.36', 'Android', '6.0', '2021-11-23 13:30:43', '2021-11-23 13:31:00'),
(97, '2821720569', 'Chrome', '95.0.4638.69', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'Linux', 'x86_64', '2021-11-24 06:15:55', '2021-11-24 16:31:34'),
(98, '1003235934', 'Mobile Safari', '10.0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1', 'iOS', '10.3.1', '2021-11-24 06:30:52', '2021-11-24 06:32:12'),
(99, '653897905', 'Chrome', '95.0.4638.69', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Mobile Safari/537.36', 'Android', '6.0', '2021-11-24 08:45:10', '2021-11-24 08:45:13'),
(100, '4024288225', 'Chrome', '95.0.4638.69', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Mobile Safari/537.36', 'Android', '6.0', '2021-11-24 08:45:32', '2021-11-24 08:45:32'),
(101, '2333218993', 'Firefox', '94.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/94.0', 'Ubuntu', NULL, '2021-11-24 14:23:15', '2021-11-24 14:23:15'),
(102, '1775863200', 'Chrome', '95.0.4638.69', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Mobile Safari/537.36', 'Android', '6.0', '2021-11-24 15:20:21', '2021-11-24 15:20:21'),
(103, '2821720569', 'Chrome', '95.0.4638.69', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'Linux', 'x86_64', '2021-11-25 05:15:20', '2021-11-25 10:07:27'),
(104, '840353776', 'Mobile Safari', '13.0.3', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'iOS', '13.2.3', '2021-11-25 08:06:02', '2021-11-25 08:06:02'),
(105, '2035746371', 'Chrome', '96.0.4664.45', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'Linux', 'x86_64', '2021-12-20 05:31:19', '2021-12-20 06:00:10'),
(106, '3481189777', 'Chrome', '96.0.4664.45', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'Linux', 'x86_64', '2021-12-20 08:30:34', '2021-12-20 08:41:33'),
(107, '30765005', 'Chrome', '96.0.4664.110', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'Linux', 'x86_64', '2022-01-02 10:39:02', '2022-01-02 12:19:03'),
(108, '30765005', 'Chrome', '96.0.4664.110', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'Linux', 'x86_64', '2022-01-09 08:25:16', '2022-01-09 17:59:40'),
(109, '3320614821', 'Chrome', '96.0.4664.110', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Mobile Safari/537.36', 'Android', '6.0', '2022-01-09 10:01:41', '2022-01-09 10:01:41'),
(110, '1193130634', 'Chrome', '96.0.4664.110', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Mobile Safari/537.36', 'Android', '6.0', '2022-01-09 15:10:59', '2022-01-09 15:10:59'),
(111, '1613282533', 'Chrome', '96.0.4664.110', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Mobile Safari/537.36', 'Android', '6.0', '2022-01-09 15:11:37', '2022-01-09 15:11:37'),
(112, '30765005', 'Chrome', '96.0.4664.110', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'Linux', 'x86_64', '2022-01-10 01:37:30', '2022-01-10 04:15:21'),
(113, '1444327705', 'Chrome', '97.0.4692.71', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'Linux', 'x86_64', '2022-01-14 14:19:17', '2022-01-14 14:50:11'),
(114, '1073366217', 'Chrome', '97.0.4692.99', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'Linux', 'x86_64', '2022-02-07 06:34:31', '2022-02-07 13:27:33'),
(115, '1406250003', 'Chrome', '97.0.4692.99', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'Linux', 'x86_64', '2022-02-09 09:42:39', '2022-02-09 09:42:41'),
(116, '1406250003', 'Chrome', '97.0.4692.99', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'Linux', 'x86_64', '2022-02-10 13:41:26', '2022-02-10 14:21:31'),
(117, '1406250003', 'Chrome', '97.0.4692.99', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'Linux', 'x86_64', '2022-02-14 12:38:26', '2022-02-14 12:41:05'),
(118, '1406250003', 'Chrome', '97.0.4692.99', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'Linux', 'x86_64', '2022-02-15 15:14:46', '2022-02-15 19:59:07'),
(119, '3825328445', 'Chrome', '97.0.4692.99', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Mobile Safari/537.36', 'Android', '6.0', '2022-02-15 15:28:07', '2022-02-15 15:28:09'),
(120, '3110695857', 'Chrome', '97.0.4692.99', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Mobile Safari/537.36', 'Android', '6.0', '2022-02-15 15:30:48', '2022-02-15 15:30:48'),
(121, '1265727730', 'Chrome', '97.0.4692.99', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Mobile Safari/537.36', 'Android', '6.0', '2022-02-15 15:33:16', '2022-02-15 15:33:16'),
(122, '3079998283', 'Chrome', '97.0.4692.99', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Mobile Safari/537.36', 'Android', '6.0', '2022-02-15 15:33:38', '2022-02-15 15:33:38'),
(123, '4178766005', 'Chrome', '97.0.4692.99', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Mobile Safari/537.36', 'Android', '6.0', '2022-02-15 18:02:26', '2022-02-15 18:02:26'),
(124, '1406250003', 'Chrome', '97.0.4692.99', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'Linux', 'x86_64', '2022-02-16 06:33:52', '2022-02-16 19:33:06'),
(125, '3771307716', 'Chrome', '97.0.4692.99', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Mobile Safari/537.36', 'Android', '6.0', '2022-02-16 16:02:53', '2022-02-16 16:07:42'),
(126, '2065970009', 'Chrome', '97.0.4692.99', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Mobile Safari/537.36', 'Android', '6.0', '2022-02-16 16:11:44', '2022-02-16 16:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `welcome`
--

CREATE TABLE `welcome` (
  `id` int(11) NOT NULL,
  `summary_en` text DEFAULT NULL,
  `summary_sw` text DEFAULT NULL,
  `content_sw` text DEFAULT NULL,
  `content_en` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `welcome`
--

INSERT INTO `welcome` (`id`, `summary_en`, `summary_sw`, `content_sw`, `content_en`, `status`, `created_at`, `updated_at`) VALUES
(2, NULL, NULL, '<p>Welcome to KPI</p>\r\n\r\n<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\"\" src=\"http://127.0.0.1:8000/uploads/gallery/36e67aa0f5fcc9695bc643de0acd4115.jpeg\" style=\"height:504px; width:897px\" /></p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<p>Welcome to KPI</p>\r\n\r\n<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><img alt=\"\" src=\"http://127.0.0.1:8000/uploads/gallery/36e67aa0f5fcc9695bc643de0acd4115.jpeg\" style=\"height:504px; width:897px\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 1, '2022-02-07 10:27:45', '2022-02-07 07:27:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `administration_categories`
--
ALTER TABLE `administration_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `administration_categories_members`
--
ALTER TABLE `administration_categories_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `administration_members`
--
ALTER TABLE `administration_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backgrounds`
--
ALTER TABLE `backgrounds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complainants`
--
ALTER TABLE `complainants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_centers`
--
ALTER TABLE `customer_centers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `publications_category_id_index` (`category_id`);

--
-- Indexes for table `document_categories`
--
ALTER TABLE `document_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_maps`
--
ALTER TABLE `google_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `how_do_i`
--
ALTER TABLE `how_do_i`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `important_links`
--
ALTER TABLE `important_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_services`
--
ALTER TABLE `online_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_categories`
--
ALTER TABLE `page_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `press_releases`
--
ALTER TABLE `press_releases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quicklink_categories`
--
ALTER TABLE `quicklink_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quick_links`
--
ALTER TABLE `quick_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regional_offices`
--
ALTER TABLE `regional_offices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `related_links`
--
ALTER TABLE `related_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales_points`
--
ALTER TABLE `sales_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_pages`
--
ALTER TABLE `special_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speeches`
--
ALTER TABLE `speeches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timelines`
--
ALTER TABLE `timelines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors_logs`
--
ALTER TABLE `visitors_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `welcome`
--
ALTER TABLE `welcome`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `administration_categories`
--
ALTER TABLE `administration_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `administration_categories_members`
--
ALTER TABLE `administration_categories_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `administration_members`
--
ALTER TABLE `administration_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `backgrounds`
--
ALTER TABLE `backgrounds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `complainants`
--
ALTER TABLE `complainants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer_centers`
--
ALTER TABLE `customer_centers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `document_categories`
--
ALTER TABLE `document_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `google_maps`
--
ALTER TABLE `google_maps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `how_do_i`
--
ALTER TABLE `how_do_i`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `important_links`
--
ALTER TABLE `important_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `online_services`
--
ALTER TABLE `online_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `page_categories`
--
ALTER TABLE `page_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `passengers`
--
ALTER TABLE `passengers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `press_releases`
--
ALTER TABLE `press_releases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quicklink_categories`
--
ALTER TABLE `quicklink_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quick_links`
--
ALTER TABLE `quick_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `regional_offices`
--
ALTER TABLE `regional_offices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `related_links`
--
ALTER TABLE `related_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales_points`
--
ALTER TABLE `sales_points`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `special_pages`
--
ALTER TABLE `special_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `speeches`
--
ALTER TABLE `speeches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `timelines`
--
ALTER TABLE `timelines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=698;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitors_logs`
--
ALTER TABLE `visitors_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `welcome`
--
ALTER TABLE `welcome`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
