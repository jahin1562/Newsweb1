-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 30, 2024 at 05:17 PM
-- Server version: 8.0.36-cll-lve
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elitedesign_news1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role_id` int NOT NULL DEFAULT '1',
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `verify` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `remember_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `designation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `role_id`, `photo`, `password`, `token`, `verify`, `status`, `remember_token`, `created_at`, `updated_at`, `designation`) VALUES
(1, 'মোঃ আবু সাইদ', 'info@elitedesign.com.bd', '০১৭৭৫৪৫৭০০৮', 1, '1726676068FMS-Abdal-exported.jpg', '$2y$10$3u9PUDaMunY6G/RGQQ1bceor37qtVmYfgW.zSQx8AvFili5hUpPU.', NULL, 1, 1, 'McByh8dPn6X1Y1p9SdVnnUBKFrmdAsd3d673nPQgj7ewyRnK1KKcq70xHR4Q', '2024-11-21 11:07:11', '2024-11-10 15:02:36', 'সম্পাদক ও প্রকাশক'),
(13, 'মোঃ নাইম হোসেন', 'poke15craft@gmail.com', '01730218255', 3, '172667620635868.jpg', '$2y$10$FhF3RdW.1DW/B7nvhgNe1OOPbRY.pCJ7oZhj6p.oM0OJucBj6oHK6', NULL, 1, 1, NULL, '2024-09-18 16:16:46', '2024-09-18 23:16:46', 'বার্তা সম্পাদক'),
(14, 'মোঃ জুবায়ের ইসলাম', 'poke15craf444t@gmail.com', '01730218255', 2, '1726676270images (1).jpeg', '$2y$10$ZcxaNFuJDtlD00KIEg4x.OqN7jzV3RR/.V5swgL/RbmNeU.jmyIbe', NULL, 1, 1, NULL, '2024-09-18 16:17:50', '2024-09-18 23:17:50', 'এডিটর'),
(15, 'মোঃ নজরুল ইসলাম', 'proyojonbajar444@gmail.com', '01684169544', 3, '1726676149images.jpeg', '$2y$10$BLAG6rbf0oEBcyryRKTHE.LWm9sPsIOUjT6glVIfk.pj63VLm.Ucu', NULL, 1, 1, NULL, '2024-09-18 16:15:49', '2024-09-18 23:15:49', 'নির্বাহী সম্পাদক'),
(16, 'মোঃ খালেদ ইসলাম', 'assist.mailcase111@gmail.com', '01775457009', 2, '1726676354PUST_200139.jpg', '$2y$10$rJOpglHJA1KRE1NDylYB1upUi0GARUQ6Amh/9Ogb6jrdpQwlFeAcW', NULL, 1, 1, NULL, '2024-09-18 23:19:14', '2024-09-18 23:19:14', 'সিনিয়র রিপোর্টার'),
(17, 'মোঃ শামিম হোসেন', 'sayed75fff75@gmail.com', '01870829344', 2, '1726676457Md. Shamsul Arefin.jpg', '$2y$10$WJVgjuiQljc4f1laUfWBd.CSY6/GL8I3Cdh71mAklqVd1SUxwL3oS', NULL, 1, 1, NULL, '2024-09-18 23:20:57', '2024-09-18 23:20:57', 'রংপুর প্রতিনিধি'),
(18, 'মোঃ রাকিবুল ইসলাম', 'akashpddcsf786@gmail.com', '01730218256', 2, '1726676905ra.jpg', '$2y$10$iWLhdOGjhRdcad3mm1EcSu6tuUh2zhtyIl0/hsgyG5G/Suw5T5OZq', NULL, 1, 1, NULL, '2024-09-18 16:28:25', '2024-09-18 23:28:25', 'ভোলা প্রতিনিধি'),
(19, 'মোঃ রাসেল মিয়া', 'sayed7544475@gmail.com', '01831439887', 2, '1726676767images (2).jpeg', '$2y$10$9V4sxpne4K.zreghcF5kBOo8a4mh6haDRJ8/Dqzn.sTL/t2VjphFC', NULL, 1, 1, NULL, '2024-09-18 23:26:07', '2024-09-18 23:26:07', 'খুলনা প্রতিনিধি');

-- --------------------------------------------------------

--
-- Table structure for table `admin_languages`
--

CREATE TABLE `admin_languages` (
  `id` int NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  `language` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `rtl` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_languages`
--

INSERT INTO `admin_languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`) VALUES
(1, 1, 'English', '1605077901sgDxsDx1.json', '1605077901sgDxsDx1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int NOT NULL,
  `add_placement` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `banner_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `addSize` enum('size_728','size_468','size_234') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `banner_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `add_placement`, `banner_type`, `addSize`, `photo`, `banner_code`, `link`, `status`) VALUES
(23, 'header', 'code', 'size_728', NULL, '<img alt=\"ad728\" border=\"0\" src=\"https://4.bp.blogspot.com/-0vjyWEgMv-I/V1qVpS7vbRI/AAAAAAAAB70/occVjbuxm14nKSpIOmEWh31q-FhJaXSPwCLcB/s1600/16715760738488333078.gif\" title=\"ad728\">', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category_order` int DEFAULT NULL,
  `show_at_homepage` tinyint DEFAULT '1',
  `show_on_menu` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `language_id`, `title`, `slug`, `parent_id`, `color`, `category_order`, `show_at_homepage`, `show_on_menu`) VALUES
(53, 2, 'জাতীয়', 'national', NULL, '#9a2727', 2, 1, 1),
(54, 2, 'রাজনীতি', 'politics', NULL, '#ff0000', 3, 1, 1),
(55, 2, 'আন্তজাতিক', 'international', NULL, '#ff0000', 4, 1, 1),
(56, 2, 'বিএনপি', 'বিএনপি', 54, NULL, NULL, 1, 1),
(57, 2, 'আওয়ামীলীগ', 'আওয়ামীলীগ', 54, NULL, NULL, 1, 1),
(58, 2, 'অনন্য', 'অনন্য', 54, NULL, NULL, 1, 1),
(59, 2, 'অপরাধ', 'অপরাধ', 53, NULL, NULL, 1, 1),
(60, 2, 'অর্থনীতি', 'অর্থনীতি', 53, NULL, NULL, 1, 1),
(61, 2, 'প্রচ্ছদ', 'home', NULL, '#ff0000', 1, 0, 1),
(62, 2, 'দুর্নীতি', 'দুর্নীতি', 53, NULL, NULL, 1, 1),
(63, 2, 'বিশেষ প্রতিবেদন', 'বিশেষ-প্রতিবেদন', 54, NULL, NULL, 1, 1),
(64, 2, 'সারাবিশ্ব', 'সারাবিশ্ব', 55, NULL, NULL, 1, 1),
(65, 2, 'বিশ্ব রাজনীতি', 'বিশ্ব-রাজনীতি', 55, NULL, NULL, 1, 1),
(66, 2, 'জাতিসংঘ', 'জাতিসংঘ', 55, NULL, NULL, 1, 1),
(67, 2, 'তথ্য প্রযুক্তি', 'ict', NULL, '#ff0000', 5, 1, 1),
(68, 2, 'সারাদেশ', 'saradesh', NULL, '#ff0000', 6, 1, 1),
(69, 2, 'ক্যাম্পাস', 'campus', NULL, '#ff0000', 7, 1, 1),
(70, 2, 'বিনোদন', 'entertainment', NULL, '#ff0000', 8, 1, 1),
(71, 2, 'খেলাধুলা', 'sports', NULL, '#ff0000', 9, 1, 1),
(72, 2, 'মিডিয়া', 'media', NULL, '#ff0000', 10, 1, 1),
(74, 2, 'ঢাকা', 'ঢাকা', 68, NULL, NULL, 1, 1),
(75, 2, 'চট্টগ্রাম', 'চট্টগ্রাম', 68, NULL, NULL, 1, 1),
(76, 2, 'রাজশাহী', 'রাজশাহী', 68, NULL, NULL, 1, 1),
(77, 2, 'খুলনা', 'খুলনা', 68, NULL, NULL, 1, 1),
(78, 2, 'বরিশাল', 'বরিশাল', 68, NULL, NULL, 1, 1),
(79, 2, 'সিলেট', 'সিলেট', 68, NULL, NULL, 1, 1),
(80, 2, 'রংপুর', 'রংপুর', 68, NULL, NULL, 1, 1),
(81, 2, 'ময়মনসিংহ', 'ময়মনসিংহ', 68, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `id` int NOT NULL,
  `admin_id` int NOT NULL,
  `follower_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`id`, `admin_id`, `follower_id`) VALUES
(3, 1, 6),
(4, 1, 3),
(5, 1, 7),
(6, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fonts`
--

CREATE TABLE `fonts` (
  `id` int NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  `font_family` varchar(50) DEFAULT NULL,
  `font_value` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fonts`
--

INSERT INTO `fonts` (`id`, `is_default`, `font_family`, `font_value`) VALUES
(1, 0, 'Roboto', 'Roboto'),
(2, 0, 'Spartan', 'Spartan'),
(3, 0, 'Oxanium', 'Oxanium'),
(4, 1, 'Open Sans', 'Open Sans'),
(5, 0, 'Caladea', 'Caladea'),
(6, 0, 'Montserrat', 'Montserrat'),
(7, 0, 'Trade Winds', 'Trade+Winds'),
(8, 0, 'New Rocker', 'New+Rocker'),
(9, 0, 'Lacquer', 'Lacquer');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int NOT NULL,
  `post_id` int NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gallery_title` varchar(110) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `post_id`, `photo`, `gallery_title`) VALUES
(29, 42, '1578127586joya-ahasan.jpg', NULL),
(30, 42, '1578127586377761_179-600x337.jpg', NULL),
(31, 42, '1578127586164059_Ahsan.jpg', NULL),
(32, 247, '159126244714975762_1631317480501741_490245374_o.jpg', NULL),
(33, 247, '159126244768626497_1696426900506281_7944048120013258752_o.jpg', NULL),
(34, 247, '159126244883207239_2618960801709102_3429411530498637824_n.jpg', NULL),
(35, 247, '159126244888246844_207613606980431_991879025783734272_n.jpg', NULL),
(36, 248, '1591263106xD7rRfOg.jpg', NULL),
(37, 248, '1591263107Pqybxa0L.jpg', NULL),
(38, 248, '1591263108pb1FIKE4.jpg', NULL),
(39, 257, '1601193880buNh5FeW.jpg', NULL),
(40, 257, '1601193880GDqPk0Co.jpg', NULL),
(41, 257, '1601193880IjFHKWnU.jpg', NULL),
(42, 258, '1601274606IKnUQS6o.jpg', NULL),
(43, 258, '1601274606wTQVEs52.jpg', NULL),
(44, 258, '1601274606zobUab6V.jpg', NULL),
(45, 259, '1601275946ICxmn6FP.jpg', NULL),
(46, 259, '16012759465XHrbwZR.jpg', NULL),
(47, 259, '1601275946Gs7EiiRB.jpg', NULL),
(48, 259, '1601282031Dhaka_14th_March_(32624769393).jpg', NULL),
(52, 259, '1601285567places-to-eat-in-noida-live-more-zone-dbs.jpg', NULL),
(53, 322, '1601958165yPpKZyjX.jpg', NULL),
(56, 322, '1601958928manny-moreno-x95vQCFQUmk-unsplash.jpg', NULL),
(57, 323, '1601959076xHBuJhmT.jpg', NULL),
(58, 323, '16019590770urHl8SW.jpg', NULL),
(60, 344, '1602305612izPBavCh.jpg', NULL),
(61, 344, '160230561424fin7m7.jpg', NULL),
(62, 344, '16023056153efGRGOE.jpg', NULL),
(63, 344, '1602305653photo-1601412349797-2383bac9c6f7.jpg', NULL),
(66, 470, '1726330279c0c762131530411.619690856c642.png', NULL),
(67, 471, '1726330862Screenshot_3.png', NULL),
(68, 471, '1726330869Screenshot_2.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int NOT NULL,
  `logo` varchar(100) NOT NULL,
  `footer_logo` varchar(100) NOT NULL,
  `favicon` varchar(191) DEFAULT NULL,
  `loader` varchar(100) DEFAULT NULL,
  `admin_loader` varchar(100) DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_color` varchar(100) DEFAULT NULL,
  `footer_color` varchar(100) DEFAULT NULL,
  `is_capcha` tinyint NOT NULL DEFAULT '0',
  `copyright_text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `copyright_color` varchar(100) DEFAULT NULL,
  `footer_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `error_photo` varchar(100) DEFAULT NULL,
  `error_title` varchar(191) DEFAULT NULL,
  `error_text` text,
  `driver` varchar(100) DEFAULT NULL,
  `smtp_host` varchar(100) DEFAULT NULL,
  `smtp_port` varchar(100) DEFAULT NULL,
  `email_encryption` varchar(100) DEFAULT NULL,
  `smtp_user` varchar(100) DEFAULT NULL,
  `smtp_pass` varchar(100) DEFAULT NULL,
  `from_email` varchar(100) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `time_zone` varchar(100) DEFAULT NULL,
  `is_smtp` tinyint NOT NULL DEFAULT '0',
  `is_verification_email` tinyint NOT NULL DEFAULT '0',
  `notice` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sompadok` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `nirbahi_sompadok` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `barta_sompadok` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mobile` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lazy_baner` varchar(100) DEFAULT NULL,
  `live_tv` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebookpage_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dhaka` varchar(110) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `khulna` varchar(110) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctg` varchar(110) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maymonsingh` varchar(110) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barishal` varchar(110) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rangpur` varchar(110) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `syleth` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rajshahi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sidebar_ads` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header_728` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header1_728` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header2_728` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header3_728` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header4_728` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `adsense_code` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `search_console` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `homepageads1_970` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `homepageads2_970` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `homepageads3_970` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `homepageads4_970` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `og_images` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `footer_logo`, `favicon`, `loader`, `admin_loader`, `title`, `theme_color`, `footer_color`, `is_capcha`, `copyright_text`, `copyright_color`, `footer_text`, `tags`, `error_photo`, `error_title`, `error_text`, `driver`, `smtp_host`, `smtp_port`, `email_encryption`, `smtp_user`, `smtp_pass`, `from_email`, `from_name`, `time_zone`, `is_smtp`, `is_verification_email`, `notice`, `sompadok`, `nirbahi_sompadok`, `barta_sompadok`, `address`, `email_address`, `mobile`, `lazy_baner`, `live_tv`, `facebookpage_id`, `dhaka`, `khulna`, `ctg`, `maymonsingh`, `barishal`, `rangpur`, `syleth`, `rajshahi`, `sidebar_ads`, `header_728`, `header1_728`, `header2_728`, `header3_728`, `header4_728`, `adsense_code`, `search_console`, `homepageads1_970`, `homepageads2_970`, `homepageads3_970`, `homepageads4_970`, `og_images`) VALUES
(1, '1726831078logo.png', '1726831092footer-logo.png', '172650264465500358d4d6f.png', '1579417347loader.gif', '1603002831loader.gif', 'সংবাদ ৭১', '#0d3852', '#212121', 1, '© সকল কিছুর স্বত্বাধিকারঃ সংবাদ ৭১ বিডি', '#0a4466', '<font size=\"3\">সংবাদ ৭১ হল একটি অনলাইন জনপ্রিয় প্রেস মিডিয়া।</font>', 'sports, national, worlds, usa, popular, politics, election, science, bollywood, hollywood, barcalona, justin, brazil, australia, cricket, football, google, facebook, linkedin, bangladesh', '1579421576banner_error_404.jpg', 'fgf', 'fgh', 'smtp', 'mail.elitedesign.com.bd', '587', 'ssl', 'noreply@elitedesign.com.bd', '0Y*xBK%U_ks6', 'info@elitedesign.com.bd', 'Songbad 71', 'Asia/Dhaka', 1, 1, 'আমাদের ওয়েব সাইটের সার্বিক উন্নয়ন এর কাজ চলছে। কাজ চলাকালীন অবস্থায় , আপনাদের সাময়িকভাবে কিছুটা অসুবিধা হতে পারে এর জন্য আমরা আন্তরিকভাবে দুক্ষিত । আমাদের ওয়েবসাইট উন্নয়নের কাজটি আগামিকাল শেষ হবে। আমাদের সাথে থাকার জন্য ধন্যবাদ।', 'মোঃ আব্দুর রশিদ', 'মোঃ নজরুল ইসলাম', 'মোঃ নাইম হোসেন', 'হাউজঃ মুন্সি বাড়ি, নয়ার হাট স্কুল সংলগ্ন, বড়বাড়ি, লালমনির হাট।', 'info@elitedesign.com.bd', '.০১৭৭৫৪৫৭০০৮', '1726502582655003d27587f.png', '<iframe width=\"260\" height=\"220\" src=\"https://www.youtube.com/embed/w_jwubVsEdg\" title=\"ইমরানকে হটাতে বেইমানি, কড়ায়-গণ্ডায় হিসাব নিলো জনগণ | Pakistan | Election 2024 | BanglaVision News\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'official.elitedesign', '/saradesh/ঢাকা', '/saradesh/খুলনা', '/saradesh/চট্টগ্রাম', '/saradesh/ময়মনসিংহ', '/saradesh/বরিশাল', '/saradesh/রংপুর', '/saradesh/সিলেট', '/saradesh/রাজশাহী', '<img alt=\"ad728\" border=\"0\" src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjJzjUlrsCObpKCcZVhpveAxQXG5s1Nv7C8mxpmZWdgluDF6z5m3aAF7Mth6ycqS-3igAJ7ABRrK4VmPyyb_bqiTyaZqxJEHQ-crCcbbSHF_4NkwF5x96RBTkVdIHroZ1coRw2GqKkuBcdVlxTg7Emga-xb7hX3ZXz035N6v-2P3tLwe8lJRpEucwXHO_zV/s500/vertical.gif\" title=\"ad728\">', '<img alt=\"ad728\" border=\"0\" src=\"https://4.bp.blogspot.com/-0vjyWEgMv-I/V1qVpS7vbRI/AAAAAAAAB70/occVjbuxm14nKSpIOmEWh31q-FhJaXSPwCLcB/s1600/16715760738488333078.gif\" title=\"ad728\">', '<img alt=\"ad728\" border=\"0\" src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgSe0pmVufLWngfz587r2D7dohUbe69gqMLZeZc86t-75TVmMbCQPgc7F9vc86JXH-vx1O3P9UNRfSRJ1AH7-uF_nzrP_MpuSPJOUYVT8djrXYBTHJNGM6u5lOxGDpE-aqoUghqofFB0pAFwPUfepMMOOpqTRAmkh0q75wKkCK1a1FEERfc5VJIIIlrOb7n/s728/horizontal5.jpg\" title=\"ad728\">', '<img alt=\"ad728\" border=\"0\" src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjwXwG-gUMjN-ayvGlhS32qSGTVr14sRfdwxZtVyRGumfS1zYuhRqhBuxYU3JEjCAt8Lcn6vK8pR48IrElTGRhkiGRAyPpv2G8JRwjy0KVnSJG6M8IXue34tmmpPMPFQv1YeDWvhEVew1qibjtN57WpzL1YKG5QmhWcv3zwLwNsvCkUboJm_MC9dynRHF4y/s728/horizontal4.png\" title=\"ad728\">', '<img alt=\"ad728\" border=\"0\" src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi2q3jvnSTtcartzHFv62aa2JW0F3yChDdIklOFz3BfEfTByNXVuxaN9zkLl2s_6a7tNfR0JLpa_2Gb1AtjHW7MPBMzJRAx3FpoErd8JMwEwINEGoUwdwkTX38dSL0sJPWsBxm5wQqiGgIE4nnmcBKwmN8gLXL-1puulgXbnQmNO-ZjP0XjMEJ7sXaAnSVL/s16000/horizontal2.png\" title=\"ad728\">', '<img alt=\"ad728\" border=\"0\" src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjwXwG-gUMjN-ayvGlhS32qSGTVr14sRfdwxZtVyRGumfS1zYuhRqhBuxYU3JEjCAt8Lcn6vK8pR48IrElTGRhkiGRAyPpv2G8JRwjy0KVnSJG6M8IXue34tmmpPMPFQv1YeDWvhEVew1qibjtN57WpzL1YKG5QmhWcv3zwLwNsvCkUboJm_MC9dynRHF4y/s728/horizontal4.png\" title=\"ad728\">', '<meta name=\"google-site-verification\" content=\"27TFL9sedPA39difsO1J02G4qVJMOtna3LZv_0K4w6A\" />', '<meta name=\"google-site-verification\" content=\"27TFL9sedPA39difsO1J02G4qVJMOtna3LZv_0K4w6A\" />', '<img alt=\"ad728\" border=\"0\" src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEicpd5jHn65_nWN7eXEfKknexTEUL-OEyacKKUGvnn_KB4k-3XOvXxPWeb95oVt__vcf4qyYJq1DyslPixzYnbarJ_IihV5SJ7AkImmZoPWsH8_Af8Zr3GvVpkz_BsgApqctt3WAFYMUS4TUiFcBXESm6YKGBFJ1a7xyD9j3ZBYkBZbQRDvgy03XPppeI6D/s16000/horizontalbig1.jpg\" title=\"ad728\">', '<img alt=\"ad728\" border=\"0\" src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhVgwki2O2ZzP5feducaTkhS3SJ7e5Yt-RrcKLFUd9ctWka1p9NZYnJJKix5gYdDFUGHsjEY0i227K2N2NZFFNUwRDu0I-u0cmmEn1wI4xvnrbOD9zKTckfa8_yYKXKbFbuj7kFQ9yPAclB21jbjlVBgIywPjNKpINoAaNQjp6eCrALCrfeGYl_S5jAv0XG/s970/horizontalbig2.gif\" title=\"ad728\">', '<img alt=\"ad728\" border=\"0\" src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjj0Do2KlOu68ZtUdl-rNGytfTt1rSbBBI7KQvgqVmScO1HIdRkL83BQUDmhLmvhEyNdnrKqF2fr7LazECEz9R-sajtg6GN7VeI1LM4WOGK4oO18nF8BBR9skViqSWbF2cJuM7T9ksp8YMGHRqA_g8e-tw8U1zPO_RhKo9m1NLfHitpfMd0Ik4xQRDVQFFP/s970/horizontalbig3.gif\" title=\"ad728\">', '<img alt=\"ad728\" border=\"0\" src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg37p8arzYJ3jLgzp9he0n4B3vRqt-VB5BC63EDHhvDvFM90BBoo4xDL5_29yqgnSInrev2cvSIZvalL5BShwvi0Vl4d1stMPpWKlcz_7PIpcK4UG4VLA-YoswL11EtInkB1YoshFLxhrlLbtgDk77bK2KJjrFpg5ugelAj1K47tHal971Z0WZK7uNgkQV5/s970/horizontalbig4.jpg\" title=\"ad728\">', '1726830883Screenshot_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `image_albums`
--

CREATE TABLE `image_albums` (
  `id` int NOT NULL,
  `language_id` int NOT NULL,
  `photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `album_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image_albums`
--

INSERT INTO `image_albums` (`id`, `language_id`, `photo`, `album_name`) VALUES
(7, 2, '1726644443ak_1723399984.jpg', 'বাংলাদেশি ছাত্র আন্দোলন'),
(8, 2, '1726644500gonobhaban-050824-09-1722853720.jpg', 'জনতার দখলে গণভবন'),
(9, 2, '17266446331723213920-79e37da61ac9342b79e553f7929e4e54.jpg', 'বীর শহীদ আবু সাইদ'),
(10, 2, '1726644724abu-20240717125217.jpg', 'শহীদ বীর আবু সাইদের কবর'),
(11, 2, '1726644865Screenshot_8.jpg', 'পানি লাগবে পানি'),
(12, 2, '1726644934Screenshot_9.jpg', 'শহীদ বীর মুগ্ধ'),
(13, 2, '1726645032bmp-20240509232345.jpg', 'বিএনপির মহা সমাবেশ'),
(14, 2, '1726645091Screenshot_1.jpg', 'ইউক্রেন এর দূতাবাস ঘেরাও');

-- --------------------------------------------------------

--
-- Table structure for table `image_categories`
--

CREATE TABLE `image_categories` (
  `id` int NOT NULL,
  `language_id` int NOT NULL,
  `image_album_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `image_galleries`
--

CREATE TABLE `image_galleries` (
  `id` int NOT NULL,
  `language_id` int NOT NULL,
  `image_album_id` int NOT NULL,
  `image_category_id` int NOT NULL,
  `gallery` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  `language` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rtl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`, `status`) VALUES
(1, 0, 'hindi', '1730577619HXejhHJO.json', '1730577619HXejhHJO', '0', 0),
(2, 1, 'বাংলা', '1603003521iQyvW0Lo.json', '1603003521iQyvW0Lo', '0', 0),
(3, 0, 'English', '1730577477GY0vxXR0.json', '1730577477GY0vxXR0', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` int NOT NULL,
  `language_id` int NOT NULL,
  `header_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `language_id`, `header_logo`, `footer_logo`) VALUES
(1, 2, '16097426311579416041ebela.png', '16049882511579416041ebela.png'),
(3, 1, '1605695879images.png', '1605695879images.png');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf32 COLLATE utf32_general_ci,
  `placement` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `wbsite_right_column` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `language_id`, `title`, `slug`, `description`, `placement`, `status`, `wbsite_right_column`) VALUES
(3, 2, 'শর্ত ও নীতিমালা', 'terms', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Verdana, Helvetica, sans-serif; font-size: 15px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi scelerisque, nibh et venenatis pulvinar, est orci euismod diam, et varius tortor sem nec diam. Praesent id sollicitudin urna. Suspendisse potenti. Aliquam ut blandit diam. Duis et accumsan massa. Integer volutpat arcu in arcu scelerisque tristique. Suspendisse sem mauris, iaculis sed urna eget, feugiat bibendum dolor. Donec feugiat ac magna eget tempus. Nulla vel consectetur tortor. Proin tincidunt massa mauris, vel eleifend urna feugiat quis.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Verdana, Helvetica, sans-serif; font-size: 15px;\">Aliquam non laoreet felis. Aliquam erat volutpat. Maecenas posuere magna nibh, sed varius leo luctus quis. Nullam iaculis posuere commodo. Morbi hendrerit malesuada nisi, quis mollis sem fermentum a. Proin ornare quam ac ante dignissim, id pulvinar risus egestas. Vivamus at efficitur diam, quis tincidunt libero.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Verdana, Helvetica, sans-serif; font-size: 15px;\">Aliquam non nulla est. Maecenas lacinia ante tellus, et pharetra tellus imperdiet id. Nullam in nibh lectus. Aenean eu auctor risus. Etiam mattis ultrices lacus suscipit finibus. Nulla non vehicula metus. Etiam ut mattis leo. Quisque hendrerit hendrerit arcu, vitae blandit sapien posuere quis. Curabitur laoreet ligula neque, vel interdum metus consectetur sed.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Verdana, Helvetica, sans-serif; font-size: 15px;\">Vestibulum mollis sodales placerat. Aenean aliquet dui risus, et aliquet turpis ultricies vitae. Curabitur mollis nulla dolor, sit amet pretium elit rutrum vel. Aenean ut orci turpis. Phasellus gravida, justo eget dictum consectetur, leo diam interdum ante, non ultricies lorem metus vitae tortor. Nullam sed lacus ut tellus dignissim pulvinar ut gravida dolor. Nam finibus nec nisl non viverra.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Verdana, Helvetica, sans-serif; font-size: 15px;\">Integer iaculis, dolor ac iaculis elementum, tellus erat luctus lacus, ac tincidunt leo nunc in velit. Donec maximus leo id mauris suscipit, eu pretium nulla fermentum. Nullam ante metus, condimentum quis dictum vel, tincidunt at erat. Aliquam interdum ultricies eros, sed tempus felis venenatis non. Duis lobortis diam quis lorem pellentesque, non mollis nunc tristique. Praesent id commodo ligula. Sed ac tincidunt sapien.</p>', 'footer', 1, 1),
(5, 2, 'গোপনীয়তা নীতি', 'privacy', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 15px; color: rgb(41, 41, 58); font-family: Verdana, Helvetica, sans-serif; overflow-wrap: break-word;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi scelerisque, nibh et venenatis pulvinar, est orci euismod diam, et varius tortor sem nec diam. Praesent id sollicitudin urna. Suspendisse potenti. Aliquam ut blandit diam. Duis et accumsan massa. Integer volutpat arcu in arcu scelerisque tristique. Suspendisse sem mauris, iaculis sed urna eget, feugiat bibendum dolor. Donec feugiat ac magna eget tempus. Nulla vel consectetur tortor. Proin tincidunt massa mauris, vel eleifend urna feugiat quis.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 15px; color: rgb(41, 41, 58); font-family: Verdana, Helvetica, sans-serif; overflow-wrap: break-word;\">Aliquam non laoreet felis. Aliquam erat volutpat. Maecenas posuere magna nibh, sed varius leo luctus quis. Nullam iaculis posuere commodo. Morbi hendrerit malesuada nisi, quis mollis sem fermentum a. Proin ornare quam ac ante dignissim, id pulvinar risus egestas. Vivamus at efficitur diam, quis tincidunt libero.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 15px; color: rgb(41, 41, 58); font-family: Verdana, Helvetica, sans-serif; overflow-wrap: break-word;\">Aliquam non nulla est. Maecenas lacinia ante tellus, et pharetra tellus imperdiet id. Nullam in nibh lectus. Aenean eu auctor risus. Etiam mattis ultrices lacus suscipit finibus. Nulla non vehicula metus. Etiam ut mattis leo. Quisque hendrerit hendrerit arcu, vitae blandit sapien posuere quis. Curabitur laoreet ligula neque, vel interdum metus consectetur sed.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 15px; color: rgb(41, 41, 58); font-family: Verdana, Helvetica, sans-serif; overflow-wrap: break-word;\">Vestibulum mollis sodales placerat. Aenean aliquet dui risus, et aliquet turpis ultricies vitae. Curabitur mollis nulla dolor, sit amet pretium elit rutrum vel. Aenean ut orci turpis. Phasellus gravida, justo eget dictum consectetur, leo diam interdum ante, non ultricies lorem metus vitae tortor. Nullam sed lacus ut tellus dignissim pulvinar ut gravida dolor. Nam finibus nec nisl non viverra.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 15px; color: rgb(41, 41, 58); font-family: Verdana, Helvetica, sans-serif; overflow-wrap: break-word;\">Integer iaculis, dolor ac iaculis elementum, tellus erat luctus lacus, ac tincidunt leo nunc in velit. Donec maximus leo id mauris suscipit, eu pretium nulla fermentum. Nullam ante metus, condimentum quis dictum vel, tincidunt at erat. Aliquam interdum ultricies eros, sed tempus felis venenatis non. Duis lobortis diam quis lorem pellentesque, non mollis nunc tristique. Praesent id commodo ligula. Sed ac tincidunt sapien.</p>', 'footer', 1, 1),
(15, 2, 'আমাদের সম্পর্কে', 'about', 'gsgh weigf iseb hisg', 'footer', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personality_answers`
--

CREATE TABLE `personality_answers` (
  `id` int NOT NULL,
  `personality_question_id` int NOT NULL,
  `answer_title` varchar(255) DEFAULT NULL,
  `answer_photo` varchar(255) DEFAULT NULL,
  `answer_option` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `personality_questions`
--

CREATE TABLE `personality_questions` (
  `id` int NOT NULL,
  `post_id` int NOT NULL,
  `question_title` varchar(255) DEFAULT NULL,
  `question_photo` varchar(255) DEFAULT NULL,
  `question_description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `personality_results`
--

CREATE TABLE `personality_results` (
  `id` int NOT NULL,
  `post_id` int NOT NULL,
  `result_title` varchar(255) DEFAULT NULL,
  `result_photo` varchar(255) DEFAULT NULL,
  `result_description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `poll_answers`
--

CREATE TABLE `poll_answers` (
  `id` int NOT NULL,
  `poll_question_id` int NOT NULL,
  `poll_option` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poll_answers`
--

INSERT INTO `poll_answers` (`id`, `poll_question_id`, `poll_option`) VALUES
(31, 10, 'হ্যাঁ'),
(32, 10, 'না'),
(33, 10, 'মন্তব্য নেই'),
(34, 11, 'হ্যাঁ'),
(35, 11, 'না'),
(36, 11, 'মন্তব্য নেই');

-- --------------------------------------------------------

--
-- Table structure for table `poll_questions`
--

CREATE TABLE `poll_questions` (
  `id` int NOT NULL,
  `language_id` int NOT NULL,
  `question` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `end_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poll_questions`
--

INSERT INTO `poll_questions` (`id`, `language_id`, `question`, `status`, `end_date`, `created_at`, `updated_at`) VALUES
(10, 2, 'বাস-ট্রাক থেকে চাঁদা নেওয়া পুলিশ সদস্যদের বিরুদ্ধে ব্যবস্থা নেওয়া হবে বলে মনে করেন কি?', 1, '2020-05-31 05:02:01', '2020-05-09 05:02:08', '2020-05-09 05:02:08'),
(11, 2, 'আসন্ন ঈদে মহাসড়ক বা রেলপথের পাশে পশুর হাট করা যাবে না—স্বরাষ্ট্রমন্ত্রীর এ নির্দেশনায় কাজ হবে বলে মনে করেন কি?', 1, '2020-05-31 05:36:51', '2020-05-09 05:36:59', '2020-05-09 05:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `poll_results`
--

CREATE TABLE `poll_results` (
  `id` int NOT NULL,
  `poll_question_id` int NOT NULL,
  `poll_answer_id` int NOT NULL,
  `ip_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poll_results`
--

INSERT INTO `poll_results` (`id`, `poll_question_id`, `poll_answer_id`, `ip_address`) VALUES
(18, 10, 32, '::1'),
(19, 11, 35, '::1'),
(20, 8, 25, '::1'),
(21, 14, 62, '::1'),
(22, 15, 68, '::1'),
(23, 19, 84, '103.127.4.242'),
(24, 19, 85, '::1'),
(25, 10, 33, '103.73.46.237'),
(26, 11, 34, '103.242.22.161'),
(27, 11, 34, '37.111.194.231');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `language_id` int DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `post_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `meta_tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `show_right_column` tinyint NOT NULL DEFAULT '0',
  `is_feature` tinyint NOT NULL DEFAULT '0',
  `is_slider` tinyint NOT NULL DEFAULT '0',
  `slider_left` tinyint NOT NULL DEFAULT '0',
  `slider_right` tinyint NOT NULL DEFAULT '0',
  `is_trending` tinyint NOT NULL DEFAULT '0',
  `is_videoGallery` tinyint(1) DEFAULT '0',
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `image_big` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `rss_image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `image_small` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `video` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `audio` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `category_id` int DEFAULT NULL,
  `subcategories_id` int DEFAULT NULL,
  `schedule_post` tinyint NOT NULL DEFAULT '0',
  `schedule_post_date` timestamp NULL DEFAULT NULL,
  `is_pending` tinyint NOT NULL DEFAULT '0',
  `admin_id` int NOT NULL,
  `status` enum('true','false','draft') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'false',
  `is_draft` tinyint NOT NULL DEFAULT '0',
  `rss_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `short_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `video_embed` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_caption` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `video_link` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_video` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `language_id`, `title`, `slug`, `post_type`, `meta_tag`, `show_right_column`, `is_feature`, `is_slider`, `slider_left`, `slider_right`, `is_trending`, `is_videoGallery`, `tags`, `description`, `image_big`, `rss_image`, `image_small`, `video`, `audio`, `category_id`, `subcategories_id`, `schedule_post`, `schedule_post_date`, `is_pending`, `admin_id`, `status`, `is_draft`, `rss_link`, `created_at`, `updated_at`, `short_description`, `video_embed`, `image_caption`, `video_link`, `is_video`) VALUES
(474, 2, 'নেত্রকোনার বারহাট্টা উপজেলার সাবেক চেয়ারম্যান ঢাকায় গ্রেপ্তার', 'netrokonaupojelacahirmangeftar', 'article', 'geftar', 0, 1, 1, 0, 1, 1, 0, 'নেত্রকোনার বারহাট্টা উপজেলার সাবেক চেয়ারম্যান ঢাকায় গ্রেপ্তার', '<div><b>নেত্রকোনার বারহাট্টা উপজেলার সাবেক চেয়ারম্যান খাইরুল কবিরকে গ্রেপ্তার করেছে র‍্যাব। বৃহস্পতিবার সন্ধ্যায় রাজধানীর কল্যাণপুর এলাকা থেকে তাঁকে গ্রেপ্তার করা হয়।</b></div><div><b>রাতে র‍্যাবের গণমাধ্যম শাখা থেকে পাঠানো এক হোয়াটসঅ্যাপ বার্তায় এ তথ্য জানানো হয়।</b></div><div><b><br></b></div><div><b>র‌্যাবের বার্তায় বলা হয়েছে, গত ৪ আগস্ট বৈষম্যবিরোধী ছাত্র আন্দোলন চলাকালে খাইরুল কবিরের নেতৃত্বে বারহাট্টা এলাকার একটি ডায়াগনস্টিক সেন্টারে হামলা ও লুটপাট হয়। ওই ঘটনার পরিপ্রেক্ষিতে বারহাট্টা থানায় একটি মামলা করেন আশিক মিয়া নামের এক ব্যক্তি। এ ছাড়া আন্দোলনকারীদের ওপর গুলিবর্ষণেরও অভিযোগ আনা হয়েছে খাইরুল কবিরের বিরুদ্ধে। পরে র‌্যাব অভিযান চালিয়ে তাঁকে গ্রেপ্তার করে।</b></div><div><b><br></b></div><div><b>নেত্রকোনার বারহাট্টা উপজেলার সাবেক চেয়ারম্যান খাইরুল কবিরকে গ্রেপ্তার করেছে র‍্যাব। বৃহস্পতিবার সন্ধ্যায় রাজধানীর কল্যাণপুর এলাকা থেকে তাঁকে গ্রেপ্তার করা হয়।রাতে র‍্যাবের গণমাধ্যম শাখা থেকে পাঠানো এক হোয়াটসঅ্যাপ বার্তায় এ তথ্য জানানো হয়।</b></div><div><b>র‌্যাবের বার্তায় বলা হয়েছে, গত ৪ আগস্ট বৈষম্যবিরোধী ছাত্র আন্দোলন চলাকালে খাইরুল কবিরের নেতৃত্বে বারহাট্টা এলাকার একটি ডায়াগনস্টিক সেন্টারে হামলা ও লুটপাট হয়। ওই ঘটনার পরিপ্রেক্ষিতে বারহাট্টা থানায় একটি মামলা করেন আশিক মিয়া নামের এক ব্যক্তি। এ ছাড়া আন্দোলনকারীদের ওপর গুলিবর্ষণেরও অভিযোগ আনা হয়েছে খাইরুল কবিরের বিরুদ্ধে। পরে র‌্যাব অভিযান চালিয়ে তাঁকে গ্রেপ্তার করে।</b></div><div><b><br></b></div><div><b>নেত্রকোনার বারহাট্টা উপজেলার সাবেক চেয়ারম্যান খাইরুল কবিরকে গ্রেপ্তার করেছে র‍্যাব। বৃহস্পতিবার সন্ধ্যায় রাজধানীর কল্যাণপুর এলাকা থেকে তাঁকে গ্রেপ্তার করা হয়।রাতে র‍্যাবের গণমাধ্যম শাখা থেকে পাঠানো এক হোয়াটসঅ্যাপ বার্তায় এ তথ্য জানানো হয়।</b></div><div><b><br></b></div><div><b>র‌্যাবের বার্তায় বলা হয়েছে, গত ৪ আগস্ট বৈষম্যবিরোধী ছাত্র আন্দোলন চলাকালে খাইরুল কবিরের নেতৃত্বে বারহাট্টা এলাকার একটি ডায়াগনস্টিক সেন্টারে হামলা ও লুটপাট হয়। ওই ঘটনার পরিপ্রেক্ষিতে বারহাট্টা থানায় একটি মামলা করেন আশিক মিয়া নামের এক ব্যক্তি। এ ছাড়া আন্দোলনকারীদের ওপর গুলিবর্ষণেরও অভিযোগ আনা হয়েছে খাইরুল কবিরের বিরুদ্ধে। পরে র‌্যাব অভিযান চালিয়ে তাঁকে গ্রেপ্তার করে।</b></div><div><br></div>', '1726506098YdbPjtsB.jpg', NULL, NULL, NULL, NULL, 53, 59, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-17 13:56:43', '2024-09-17 20:56:43', 'নেত্রকোনার বারহাট্টা উপজেলার সাবেক চেয়ারম্যান খাইরুল কবিরকে গ্রেপ্তার করেছে র‍্যাব। বৃহস্পতিবার সন্ধ্যায় রাজধানীর কল্যাণপুর এলাকা থেকে তাঁকে গ্রেপ্তার করা হয়।\r\nরাতে র‍্যাবের গণমাধ্যম শাখা থেকে পাঠানো এক হোয়াটসঅ্যাপ বার্তায় এ তথ্য জানানো হয়।', '<iframe width=\"600\" height=\"400\" src=\"https://www.youtube.com/embed/dJmDATCIwd8\" title=\"নেত্রকোনার বারহাট্টার সাবেক উপজেলা চেয়ারম্যান গ্রেফতার | Netrokona | Upazila Chairman\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'নেত্রকোনার বারহাট্টা উপজেলার সাবেক চেয়ারম্যান ঢাকায় গ্রেপ্তার', 'HngQHzQB9K8', 0),
(475, 2, 'সাবেক স্বরাষ্ট্রমন্ত্রী আসাদুজ্জামান খানের ছেলে উত্তরা থেকে গ্রেপ্তার', 'sabekasadduzzamerchelegeftar', 'article', 'সাবেক স্বরাষ্ট্রমন্ত্রী আসাদুজ্জামান খানের ছেলে উত্তরা থেকে গ্রেপ্তার', 0, 1, 1, 0, 1, 1, 0, 'সাবেক স্বরাষ্ট্রমন্ত্রী আসাদুজ্জামান খানের ছেলে উত্তরা থেকে গ্রেপ্তার', '<div>সাবেক স্বরাষ্ট্রমন্ত্রী আসাদুজ্জামান খানের ছেলে শাফি মুদ্দাসির খানকে গ্রেপ্তার করেছে পুলিশ। গতকাল শুক্রবার দিবাগত রাত তিনটার পর রাজধানীর উত্তরা থেকে তাঁকে গ্রেপ্তার করেছে ঢাকা জেলা পুলিশের একটি দল।</div><div><br></div><div>ঢাকা জেলার পুলিশ সুপার আহমেদ মুঈদ প্রথম আলোকে এ তথ্য নিশ্চিত করেছেন ।</div><div><br></div><div>পুলিশ সুপার আহমেদ মুঈদ প্রথম আলোকে বলেন, সাবেক স্বরাষ্ট্রমন্ত্রী আসাদুজ্জামান খানের ছেলে শাফি মুদ্দাসির খানের বিরুদ্ধে আশুলিয়া থানায় মামলা হয়েছে। সেই মামলায় উত্তরার একটি বাসায় অভিযান চালিয়ে তাঁকে গ্রেপ্তার করা হয়েছে। আজ তাঁকে আদালতে তোলা হবে।</div><div>সাবেক স্বরাষ্ট্রমন্ত্রী আসাদুজ্জামান খানের ছেলে শাফি মুদ্দাসির খানকে গ্রেপ্তার করেছে পুলিশ। গতকাল শুক্রবার দিবাগত রাত তিনটার পর রাজধানীর উত্তরা থেকে তাঁকে গ্রেপ্তার করেছে ঢাকা জেলা পুলিশের একটি দল।</div><div><br></div><div>ঢাকা জেলার পুলিশ সুপার আহমেদ মুঈদ প্রথম আলোকে এ তথ্য নিশ্চিত করেছেন ।</div><div><br></div><div>পুলিশ সুপার আহমেদ মুঈদ প্রথম আলোকে বলেন, সাবেক স্বরাষ্ট্রমন্ত্রী আসাদুজ্জামান খানের ছেলে শাফি মুদ্দাসির খানের বিরুদ্ধে আশুলিয়া থানায় মামলা হয়েছে। সেই মামলায় উত্তরার একটি বাসায় অভিযান চালিয়ে তাঁকে গ্রেপ্তার করা হয়েছে। আজ তাঁকে আদালতে তোলা হবে।</div><div>সাবেক স্বরাষ্ট্রমন্ত্রী আসাদুজ্জামান খানের ছেলে শাফি মুদ্দাসির খানকে গ্রেপ্তার করেছে পুলিশ। গতকাল শুক্রবার দিবাগত রাত তিনটার পর রাজধানীর উত্তরা থেকে তাঁকে গ্রেপ্তার করেছে ঢাকা জেলা পুলিশের একটি দল।</div><div><br></div><div>ঢাকা জেলার পুলিশ সুপার আহমেদ মুঈদ প্রথম আলোকে এ তথ্য নিশ্চিত করেছেন ।</div><div><br></div><div>পুলিশ সুপার আহমেদ মুঈদ প্রথম আলোকে বলেন, সাবেক স্বরাষ্ট্রমন্ত্রী আসাদুজ্জামান খানের ছেলে শাফি মুদ্দাসির খানের বিরুদ্ধে আশুলিয়া থানায় মামলা হয়েছে। সেই মামলায় উত্তরার একটি বাসায় অভিযান চালিয়ে তাঁকে গ্রেপ্তার করা হয়েছে। আজ তাঁকে আদালতে তোলা হবে।</div><div>সাবেক স্বরাষ্ট্রমন্ত্রী আসাদুজ্জামান খানের ছেলে শাফি মুদ্দাসির খানকে গ্রেপ্তার করেছে পুলিশ। গতকাল শুক্রবার দিবাগত রাত তিনটার পর রাজধানীর উত্তরা থেকে তাঁকে গ্রেপ্তার করেছে ঢাকা জেলা পুলিশের একটি দল।</div><div><br></div><div>ঢাকা জেলার পুলিশ সুপার আহমেদ মুঈদ প্রথম আলোকে এ তথ্য নিশ্চিত করেছেন ।</div><div><br></div><div>পুলিশ সুপার আহমেদ মুঈদ প্রথম আলোকে বলেন, সাবেক স্বরাষ্ট্রমন্ত্রী আসাদুজ্জামান খানের ছেলে শাফি মুদ্দাসির খানের বিরুদ্ধে আশুলিয়া থানায় মামলা হয়েছে। সেই মামলায় উত্তরার একটি বাসায় অভিযান চালিয়ে তাঁকে গ্রেপ্তার করা হয়েছে। আজ তাঁকে আদালতে তোলা হবে।</div>', '1726508189b4lvVsEY.jpg', NULL, NULL, NULL, NULL, 53, 59, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-17 13:56:19', '2024-09-17 20:56:19', 'সাবেক স্বরাষ্ট্রমন্ত্রী আসাদুজ্জামান খানের ছেলে শাফি মুদ্দাসির খানকে গ্রেপ্তার করেছে পুলিশ। গতকাল শুক্রবার দিবাগত রাত তিনটার পর রাজধানীর উত্তরা থেকে তাঁকে গ্রেপ্তার করেছে ঢাকা জেলা পুলিশের একটি দল।', '<iframe width=\"600\" height=\"400\" src=\"https://www.youtube.com/embed/IzvKWFAn7BU\" title=\"সাবেক স্বরাষ্ট্রমন্ত্রী আসাদুজ্জামান খানের ছেলে সাফি গ্রেপ্তার | ATN News\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'সাবেক স্বরাষ্ট্রমন্ত্রী আসাদুজ্জামান খানের ছেলে উত্তরা থেকে গ্রেপ্তার', 'wPdGkSEI8HY', 0),
(476, 2, 'সুন্দরবনে প্রবেশের অনুমতিপত্র নবায়নে রাজস্বের চেয়ে ৪০ গুণ ঘুষ আদায়', 'sundorbononumoti', 'article', 'সুন্দরবনে প্রবেশের অনুমতিপত্র নবায়নে রাজস্বের চেয়ে ৪০ গুণ ঘুষ আদায়', 0, 1, 1, 0, 1, 1, 0, 'সুন্দরবনে প্রবেশের অনুমতিপত্র নবায়নে রাজস্বের চেয়ে ৪০ গুণ ঘুষ আদায়', '<div>সুন্দরবনের বনজীবী জেলেদের নৌকা নিয়ে বনে প্রবেশের অনুমতিপত্র (বিএলসি) নবায়ন করতে দায়িত্বরত বন কর্মকর্তারা সরকার নির্ধারিত রাজস্বের বাইরে ঘুষ আদায় করছেন বলে অভিযোগ পাওয়া গেছে। বনকর্মীদের হয়রানি থেকে বাঁচতে এবং নিষিদ্ধ জাল ব্যবহার ও কাঁকড়া ধরার অলিখিত অনুমতি পেতে জেলেরা বাধ্য হয়ে ঘুষ দিয়ে বনে প্রবেশ করেন।</div><div><br></div><div>বনজীবী জেলেরা বলছেন, অনুমতিপত্র নবায়নে সরকার প্রতি ২৫ মণ ধারণক্ষমতার একটি নৌকার জন্য ১৫ টাকা পর্যন্ত রাজস্ব নির্ধারণ করে দিয়েছে। কিন্তু বন বিভাগের দায়িত্বরত কর্মকর্তারা তাঁদের কাছ থেকে ৬০০ থেকে ১ হাজার ২০০ টাকা পর্যন্ত আদায় করছেন, যা সরকার নির্ধারিত রাজস্বের কমপক্ষে ৪০ গুণ বেশি।</div><div><br></div><div>বনজীবীরা বলেন, সুন্দরবনের কালাবগী স্টেশন কর্মকর্তা ইস্তিয়াক রহমান, নলীয়ান স্টেশন কর্মকর্তা তানজিলুর রহমান, বানিয়াখালী স্টেশন কর্মকর্তা মনিরুল ইসলাম, কোবাদক স্টেশন কর্মকর্তা আনোয়ার হোসেন, ঢাংমারী স্টেশন কর্মকর্তা মোহসীন আলী প্রতিটি অনুমতিপত্র থেকে ১ হাজার থেকে ১ হাজার ২০০ টাকা পর্যন্ত ঘুষ আদায় করছেন। আর কাশিয়াবাদ স্টেশন কর্মকর্তা নির্মল কুমার প্রতিটি অনুমতিপত্র থেকে ৬০০ টাকা ঘুষ আদায় করছেন।সুন্দরবনের বনজীবী জেলেদের নৌকা নিয়ে বনে প্রবেশের অনুমতিপত্র (বিএলসি) নবায়ন করতে দায়িত্বরত বন কর্মকর্তারা সরকার নির্ধারিত রাজস্বের বাইরে ঘুষ আদায় করছেন বলে অভিযোগ পাওয়া গেছে। বনকর্মীদের হয়রানি থেকে বাঁচতে এবং নিষিদ্ধ জাল ব্যবহার ও কাঁকড়া ধরার অলিখিত অনুমতি পেতে জেলেরা বাধ্য হয়ে ঘুষ দিয়ে বনে প্রবেশ করেন।</div><div><br></div><div>বনজীবী জেলেরা বলছেন, অনুমতিপত্র নবায়নে সরকার প্রতি ২৫ মণ ধারণক্ষমতার একটি নৌকার জন্য ১৫ টাকা পর্যন্ত রাজস্ব নির্ধারণ করে দিয়েছে। কিন্তু বন বিভাগের দায়িত্বরত কর্মকর্তারা তাঁদের কাছ থেকে ৬০০ থেকে ১ হাজার ২০০ টাকা পর্যন্ত আদায় করছেন, যা সরকার নির্ধারিত রাজস্বের কমপক্ষে ৪০ গুণ বেশি।</div><div><br></div><div>বনজীবীরা বলেন, সুন্দরবনের কালাবগী স্টেশন কর্মকর্তা ইস্তিয়াক রহমান, নলীয়ান স্টেশন কর্মকর্তা তানজিলুর রহমান, বানিয়াখালী স্টেশন কর্মকর্তা মনিরুল ইসলাম, কোবাদক স্টেশন কর্মকর্তা আনোয়ার হোসেন, ঢাংমারী স্টেশন কর্মকর্তা মোহসীন আলী প্রতিটি অনুমতিপত্র থেকে ১ হাজার থেকে ১ হাজার ২০০ টাকা পর্যন্ত ঘুষ আদায় করছেন। আর কাশিয়াবাদ স্টেশন কর্মকর্তা নির্মল কুমার প্রতিটি অনুমতিপত্র থেকে ৬০০ টাকা ঘুষ আদায় করছেন।</div>', '1726509365whZ6qADL.jpg', NULL, NULL, NULL, NULL, 53, 59, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-17 13:55:45', '2024-09-17 20:55:45', 'সুন্দরবনের বনজীবী জেলেদের নৌকা নিয়ে বনে প্রবেশের অনুমতিপত্র (বিএলসি) নবায়ন করতে দায়িত্বরত বন কর্মকর্তারা সরকার নির্ধারিত রাজস্বের বাইরে ঘুষ আদায় করছেন বলে অভিযোগ পাওয়া গেছে।', '<iframe width=\"600\" height=\"400\" src=\"https://www.youtube.com/embed/zwmIbcNuo-E\" title=\"সুন্দরবনে পর্যটক ভ্রমণে ৩ মাসের নিষেধাজ্ঞা! | Tourism, Fishing Banned in Sundarban | Somoy TV\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'সুন্দরবনে প্রবেশের অনুমতিপত্র নবায়নে রাজস্বের চেয়ে ৪০ গুণ ঘুষ আদায়', '201ZZGM6n5g', 1),
(477, 2, 'আওয়ামী লীগের মেয়াদে লাইসেন্স পাওয়া ১ হাজার ৬৫৪টি অস্ত্র এখনো জমা পড়েনি', 'awamiligueliecnseprapto', 'article', 'আওয়ামী লীগের মেয়াদে লাইসেন্স পাওয়া ১ হাজার ৬৫৪টি অস্ত্র এখনো জমা পড়েনি', 0, 1, 1, 0, 1, 1, 0, 'আওয়ামী লীগের মেয়াদে লাইসেন্স পাওয়া ১ হাজার ৬৫৪টি অস্ত্র এখনো জমা পড়েনি', '<div>মঙ্গলবার রাত ১২টা থেকে শুরু হওয়া যৌথ অভিযানে কত সংখ্যক অস্ত্র-গোলাবারুদ উদ্ধার এবং বৈধ অস্ত্র জমা পড়ল, তা গতকাল বৃহস্পতিবার সন্ধ্যা সাড়ে সাতটা পর্যন্ত জানাতে পারেনি পুলিশ সদর দপ্তর। তবে এ সময় প্রথম আলোর প্রতিবেদক ও প্রতিনিধিদের পাঠানো তথ্য অনুযায়ী, দেশের আট বিভাগে ৯ হাজার ১৯১টি বৈধ অস্ত্র থানাগুলোতে জমা পড়েছে। বাকি ১ হাজার ৬৫৪টি জমাযোগ্য বৈধ অস্ত্র এখনো জমা দেওয়া হয়নি।</div><div><br></div><div>মঙ্গলবার দিবাগত রাতে পুলিশ সদর দপ্তরের দেওয়া তথ্যমতে, ছাত্র-জনতার অভ্যুত্থানের দিন ও পরদিন (৫ ও ৬ আগস্ট) ১১ ধরনের মোট ৫ হাজার ৮২৯টি অস্ত্র লুট হয়। এর মধ্যে ৩ হাজার ৬৩টি উদ্ধার করা হয়েছে। মঙ্গলবার রাত ১২টা ছিল সব ধরনের বৈধ অস্ত্র জমা দেওয়ার শেষ সময়। উদ্ধার তালিকার মধ্যে বিভিন্ন থানা থেকে লুট করা অস্ত্র যেমন রয়েছে, তেমনি রয়েছে লাইসেন্স স্থগিত করা বৈধ অস্ত্রও। অস্ত্র জমা দেওয়ার সময়সীমা শেষে সশস্ত্র বাহিনী (সেনা, নৌ ও বিমানবাহিনী) পুলিশ, র‍্যাব, বিজিবি, কোস্টগার্ড, আনসারের সমন্বয়ে যৌথ আভিযানিক দল গঠন করে অস্ত্র উদ্ধার অভিযান শুরু করা হয়।</div><div><br></div><div>মঙ্গলবার রাত ১২টা থেকে শুরু হওয়া যৌথ অভিযানে কত সংখ্যক অস্ত্র-গোলাবারুদ উদ্ধার এবং বৈধ অস্ত্র জমা পড়ল, তা গতকাল বৃহস্পতিবার সন্ধ্যা সাড়ে সাতটা পর্যন্ত জানাতে পারেনি পুলিশ সদর দপ্তর। তবে এ সময় প্রথম আলোর প্রতিবেদক ও প্রতিনিধিদের পাঠানো তথ্য অনুযায়ী, দেশের আট বিভাগে ৯ হাজার ১৯১টি বৈধ অস্ত্র থানাগুলোতে জমা পড়েছে। বাকি ১ হাজার ৬৫৪টি জমাযোগ্য বৈধ অস্ত্র এখনো জমা দেওয়া হয়নি।</div><div><br></div><div>মঙ্গলবার দিবাগত রাতে পুলিশ সদর দপ্তরের দেওয়া তথ্যমতে, ছাত্র-জনতার অভ্যুত্থানের দিন ও পরদিন (৫ ও ৬ আগস্ট) ১১ ধরনের মোট ৫ হাজার ৮২৯টি অস্ত্র লুট হয়। এর মধ্যে ৩ হাজার ৬৩টি উদ্ধার করা হয়েছে। মঙ্গলবার রাত ১২টা ছিল সব ধরনের বৈধ অস্ত্র জমা দেওয়ার শেষ সময়। উদ্ধার তালিকার মধ্যে বিভিন্ন থানা থেকে লুট করা অস্ত্র যেমন রয়েছে, তেমনি রয়েছে লাইসেন্স স্থগিত করা বৈধ অস্ত্রও। অস্ত্র জমা দেওয়ার সময়সীমা শেষে সশস্ত্র বাহিনী (সেনা, নৌ ও বিমানবাহিনী) পুলিশ, র‍্যাব, বিজিবি, কোস্টগার্ড, আনসারের সমন্বয়ে যৌথ আভিযানিক দল গঠন করে অস্ত্র উদ্ধার অভিযান শুরু করা হয়।</div><div><br></div><div>মঙ্গলবার রাত ১২টা থেকে শুরু হওয়া যৌথ অভিযানে কত সংখ্যক অস্ত্র-গোলাবারুদ উদ্ধার এবং বৈধ অস্ত্র জমা পড়ল, তা গতকাল বৃহস্পতিবার সন্ধ্যা সাড়ে সাতটা পর্যন্ত জানাতে পারেনি পুলিশ সদর দপ্তর। তবে এ সময় প্রথম আলোর প্রতিবেদক ও প্রতিনিধিদের পাঠানো তথ্য অনুযায়ী, দেশের আট বিভাগে ৯ হাজার ১৯১টি বৈধ অস্ত্র থানাগুলোতে জমা পড়েছে। বাকি ১ হাজার ৬৫৪টি জমাযোগ্য বৈধ অস্ত্র এখনো জমা দেওয়া হয়নি।</div><div><br></div><div>মঙ্গলবার দিবাগত রাতে পুলিশ সদর দপ্তরের দেওয়া তথ্যমতে, ছাত্র-জনতার অভ্যুত্থানের দিন ও পরদিন (৫ ও ৬ আগস্ট) ১১ ধরনের মোট ৫ হাজার ৮২৯টি অস্ত্র লুট হয়। এর মধ্যে ৩ হাজার ৬৩টি উদ্ধার করা হয়েছে। মঙ্গলবার রাত ১২টা ছিল সব ধরনের বৈধ অস্ত্র জমা দেওয়ার শেষ সময়। উদ্ধার তালিকার মধ্যে বিভিন্ন থানা থেকে লুট করা অস্ত্র যেমন রয়েছে, তেমনি রয়েছে লাইসেন্স স্থগিত করা বৈধ অস্ত্রও। অস্ত্র জমা দেওয়ার সময়সীমা শেষে সশস্ত্র বাহিনী (সেনা, নৌ ও বিমানবাহিনী) পুলিশ, র‍্যাব, বিজিবি, কোস্টগার্ড, আনসারের সমন্বয়ে যৌথ আভিযানিক দল গঠন করে অস্ত্র উদ্ধার অভিযান শুরু করা হয়।</div><div><br></div><div>মঙ্গলবার রাত ১২টা থেকে শুরু হওয়া যৌথ অভিযানে কত সংখ্যক অস্ত্র-গোলাবারুদ উদ্ধার এবং বৈধ অস্ত্র জমা পড়ল, তা গতকাল বৃহস্পতিবার সন্ধ্যা সাড়ে সাতটা পর্যন্ত জানাতে পারেনি পুলিশ সদর দপ্তর। তবে এ সময় প্রথম আলোর প্রতিবেদক ও প্রতিনিধিদের পাঠানো তথ্য অনুযায়ী, দেশের আট বিভাগে ৯ হাজার ১৯১টি বৈধ অস্ত্র থানাগুলোতে জমা পড়েছে। বাকি ১ হাজার ৬৫৪টি জমাযোগ্য বৈধ অস্ত্র এখনো জমা দেওয়া হয়নি।</div><div><br></div><div>মঙ্গলবার দিবাগত রাতে পুলিশ সদর দপ্তরের দেওয়া তথ্যমতে, ছাত্র-জনতার অভ্যুত্থানের দিন ও পরদিন (৫ ও ৬ আগস্ট) ১১ ধরনের মোট ৫ হাজার ৮২৯টি অস্ত্র লুট হয়। এর মধ্যে ৩ হাজার ৬৩টি উদ্ধার করা হয়েছে। মঙ্গলবার রাত ১২টা ছিল সব ধরনের বৈধ অস্ত্র জমা দেওয়ার শেষ সময়। উদ্ধার তালিকার মধ্যে বিভিন্ন থানা থেকে লুট করা অস্ত্র যেমন রয়েছে, তেমনি রয়েছে লাইসেন্স স্থগিত করা বৈধ অস্ত্রও। অস্ত্র জমা দেওয়ার সময়সীমা শেষে সশস্ত্র বাহিনী (সেনা, নৌ ও বিমানবাহিনী) পুলিশ, র‍্যাব, বিজিবি, কোস্টগার্ড, আনসারের সমন্বয়ে যৌথ আভিযানিক দল গঠন করে অস্ত্র উদ্ধার অভিযান শুরু করা হয়।</div><div><br></div>', '17265108718GnXEVrt.jpg', NULL, NULL, NULL, NULL, 53, 59, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-17 13:57:17', '2024-09-17 20:57:17', 'মঙ্গলবার রাত ১২টা থেকে শুরু হওয়া যৌথ অভিযানে কত সংখ্যক অস্ত্র-গোলাবারুদ উদ্ধার এবং বৈধ অস্ত্র জমা পড়ল, তা গতকাল বৃহস্পতিবার সন্ধ্যা সাড়ে সাতটা পর্যন্ত জানাতে পারেনি পুলিশ সদর দপ্তর। তবে এ সময় প্রথম আলোর প্রতিবেদক ও প্রতিনিধিদের পাঠানো তথ্য অনুযায়ী,', '<iframe width=\"600\" height=\"400\" src=\"https://www.youtube.com/embed/AUu2lurnEzs\" title=\"আওয়ামী লীগের আমলে দেওয়া অস্ত্রের লাইসেন্স স্থগিত | Arms license suspended | Jago News\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'আওয়ামী লীগের মেয়াদে লাইসেন্স পাওয়া ১ হাজার ৬৫৪টি অস্ত্র এখনো জমা পড়েনি', 'T3rqki03wdg', 1),
(478, 2, 'নাটোরে সাবেক প্রতিমন্ত্রী জুনাইদ ও এমপি শফিকুলের আগ্নেয়াস্ত্র জমা হয়নি', 'junayedpolok', 'article', 'নাটোরে সাবেক প্রতিমন্ত্রী জুনাইদ ও এমপি শফিকুলের আগ্নেয়াস্ত্র জমা হয়নি', 0, 1, 1, 0, 1, 1, 0, 'নাটোরে সাবেক প্রতিমন্ত্রী জুনাইদ ও এমপি শফিকুলের আগ্নেয়াস্ত্র জমা হয়নি', '<div>নাটোরে নির্ধারিত সময়ের মধ্যে আগ্নেয়াস্ত্র জমা দেননি সাবেক প্রতিমন্ত্রী জুনাইদ আহ্‌মেদ (পলক) ও আলোচিত সংসদ সদস্য (নাটোর-২) শফিকুল ইসলাম (শিমুল)। তাঁদের নামে আছে লাইসেন্স করা চারটি আগ্নেয়াস্ত্র।</div><div><br></div><div>আওয়ামী লীগ সরকার পতনের পর জুনাইদ আহ্‌মেদ পুলিশের হাতে গ্রেপ্তার হয়ে কারাগারে আছেন এবং শফিকুল ইসলাম আছেন আত্মগোপনে।</div><div>নাটোরের পুলিশ সুপারের কার্যালয় সূত্রে জানা যায়, অবৈধ অস্ত্র উদ্ধারে স্বরাষ্ট্র মন্ত্রণালয়ের বেঁধে দেওয়া সময় (৩ সেপ্টেম্বর) পার হলেও নাটোরের সাবেক দুই সংসদ সদস্য বা তাঁদের পক্ষে কেউ তাঁদের নামে লাইসেন্স করা শর্টগান ও পিস্তল থানায় জমা দেননি। এর ফলে এই দুজনের হেফাজতে থাকা আগ্নেয়াস্ত্র এখন অবৈধ অস্ত্র হিসেবে বিবেচিত হবে এবং তাঁদের বিরুদ্ধে অস্ত্র আইনে মামলা প্রক্রিয়াধীন।</div><div><br></div><div>পারিবারিক সূত্রে জানা যায়, ৫ আগস্ট প্রধানমন্ত্রীর পদ থেকে শেখ হাসিনার পদত্যাগ ও দেশ ছেড়ে যাওয়ার পর নাটোরে এই দুই সংসদ সদস্যের বাড়িতে বিক্ষুব্ধ জনতা হামলা চালায়। বাড়িতে লুটপাট ও আগুন ধরিয়ে দেওয়া হয়। এখন পর্যন্ত দুই সংসদ সদস্য ও তাঁর স্বজনেরা নাটোর শহরে ফিরে আসেননি।</div><div><br></div><div><br></div><div>দুই সংসদ সদস্যের পাশাপাশি সিংড়া পৌরসভার মেয়র ও সিংড়া উপজেলা আওয়ামী লীগের সাধারণ সম্পাদক জান্নাতুল ফেরদৌসের নামে লাইসেন্স করা একটি ও নাটোর শহরের ঠিকাদার আশফাকুল ইসলামের নামে লাইসেন্স করা অপর একটি অস্ত্রও জমা পড়েনি। ৫ আগস্ট তাঁদের বাড়িঘরে অগ্নিসংযোগ ও লুটপাটের ঘটনা ঘটে। এ ব্যাপারে তাঁদের পক্ষ থেকেও সাধারণ ডায়েরি করার আবেদন করা হয়েছে।</div><div><br></div><div>ঠিকাদার আশফাকুল ইসলাম প্রথম আলোকে বলেন, ৫ আগস্ট সন্ধ্যায় শত শত দুর্বৃত্ত লোহার গেট ভেঙে তাঁর বাড়িতে হামলা করে। ব্যাপক অগ্নিসংযোগ ও লুটপাট করে এবং তাঁকে হত্যার উদ্দেশ্যে গুরুতর জখম করে। এ সময় অন্য জিনিসপত্রের সঙ্গে তাঁর নামে লাইসেন্স করা দুটি অস্ত্র ও গুলি লুট করে। এ ব্যাপারে তিনি সংশ্লিষ্ট দপ্তরে ই–মেইল পাঠিয়েছেন।</div><div><br></div><div>প্রসঙ্গত, নাটোরে আওয়ামী লীগ সরকারের সময় লাইসেন্স দেওয়া ৯৫টি অস্ত্রের মধ্যে নির্ধারিত সময়ে ৮৯টি অস্ত্র জমা পড়েছে।</div><div><br></div><div>নাটোরের পুলিশ সুপার মারুফাত হুসাইন বলেন, যে ছয়টি লাইসেন্স করা বৈধ অস্ত্র জমা পড়েনি, তার মধ্যে দুটি করে সাবেক প্রতিমন্ত্রী পলক ও এমপি শিমুলের। এখন এগুলো অবৈধ বলে ঘোষিত হয়েছে। অবৈধ অস্ত্র উদ্ধারে যৌথ বাহিনী কাজ করছে।</div>', '1726511224saRBrAJh.jpg', NULL, NULL, NULL, NULL, 53, 59, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-17 13:57:42', '2024-09-17 20:57:42', 'নাটোরে নির্ধারিত সময়ের মধ্যে আগ্নেয়াস্ত্র জমা দেননি সাবেক প্রতিমন্ত্রী জুনাইদ আহ্‌মেদ (পলক) ও আলোচিত সংসদ সদস্য (নাটোর-২) শফিকুল ইসলাম (শিমুল)। তাঁদের নামে আছে লাইসেন্স করা চারটি আগ্নেয়াস্ত্র।', '<iframe width=\"600\" height=\"400\" src=\"https://www.youtube.com/embed/MXKzv7bGe4E\" title=\"নাটোরের সাবেক ডিসি এসপি ও এমপিসহ ১৩১ জনের বিরুদ্ধে মামলা | NTV News\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'নাটোরে সাবেক প্রতিমন্ত্রী জুনাইদ ও এমপি শফিকুলের আগ্নেয়াস্ত্র জমা হয়নি', 'MXKzv7bGe4E', 1),
(479, 2, 'ফোনালাপ ফাঁস, যেকোনো সময় দেশে ফিরবেন শেখ হাসিনা', 'seikhhasinacallrecod', 'article', 'ফোনালাপ ফাঁস, যেকোনো সময় দেশে ফিরবেন শেখ হাসিনা', 0, 1, 1, 0, 1, 1, 0, 'ফোনালাপ ফাঁস, যেকোনো সময় দেশে ফিরবেন শেখ হাসিনা', '<div>ছাত্র-জনতার আন্দোলনের মুখে গত ৫ আগস্ট দেশ ছেড়ে ভারতে পালিয়ে গেছেন শেখ হাসিনা। সম্প্রতি সাবেক প্রধানমন্ত্রী শেখ হাসিনার সঙ্গে কথোপকথনের একটি অডিও ফাঁস হয়েছে। ওই কথোপকথনে তানভীর নামে যুক্তরাষ্ট্র প্রবাসী এক আওয়ামী লীগ নেতার সঙ্গে কথা বলেন আওয়ামী লীগ সভাপতি।&nbsp;</div><div><br></div><div>তানভীর : আপা আপনার কাছে ফোন দিয়েছি একটা ব্যাপারে, নিউইয়র্ক মহানগরে আমরা এমদাদ ভাইয়ের নেতৃত্বে মিটিং মিছিল করছি।ছাত্র-জনতার আন্দোলনের মুখে গত ৫ আগস্ট দেশ ছেড়ে ভারতে পালিয়ে গেছেন শেখ হাসিনা। সম্প্রতি সাবেক প্রধানমন্ত্রী শেখ হাসিনার সঙ্গে কথোপকথনের একটি অডিও ফাঁস হয়েছে। ওই কথোপকথনে তানভীর নামে যুক্তরাষ্ট্র প্রবাসী এক আওয়ামী লীগ নেতার সঙ্গে কথা বলেন আওয়ামী লীগ সভাপতি।&nbsp;</div><div><br></div><div>তানভীর : আপা আপনার কাছে ফোন দিয়েছি একটা ব্যাপারে, নিউইয়র্ক মহানগরে আমরা এমদাদ ভাইয়ের নেতৃত্বে মিটিং মিছিল করছি।ছাত্র-জনতার আন্দোলনের মুখে গত ৫ আগস্ট দেশ ছেড়ে ভারতে পালিয়ে গেছেন শেখ হাসিনা। সম্প্রতি সাবেক প্রধানমন্ত্রী শেখ হাসিনার সঙ্গে কথোপকথনের একটি অডিও ফাঁস হয়েছে। ওই কথোপকথনে তানভীর নামে যুক্তরাষ্ট্র প্রবাসী এক আওয়ামী লীগ নেতার সঙ্গে কথা বলেন আওয়ামী লীগ সভাপতি।&nbsp;</div><div><br></div><div>তানভীর : আপা আপনার কাছে ফোন দিয়েছি একটা ব্যাপারে, নিউইয়র্ক মহানগরে আমরা এমদাদ ভাইয়ের নেতৃত্বে মিটিং মিছিল করছি।ছাত্র-জনতার আন্দোলনের মুখে গত ৫ আগস্ট দেশ ছেড়ে ভারতে পালিয়ে গেছেন শেখ হাসিনা। সম্প্রতি সাবেক প্রধানমন্ত্রী শেখ হাসিনার সঙ্গে কথোপকথনের একটি অডিও ফাঁস হয়েছে। ওই কথোপকথনে তানভীর নামে যুক্তরাষ্ট্র প্রবাসী এক আওয়ামী লীগ নেতার সঙ্গে কথা বলেন আওয়ামী লীগ সভাপতি।&nbsp;</div><div><br></div><div>তানভীর : আপা আপনার কাছে ফোন দিয়েছি একটা ব্যাপারে, নিউইয়র্ক মহানগরে আমরা এমদাদ ভাইয়ের নেতৃত্বে মিটিং মিছিল করছি।ছাত্র-জনতার আন্দোলনের মুখে গত ৫ আগস্ট দেশ ছেড়ে ভারতে পালিয়ে গেছেন শেখ হাসিনা। সম্প্রতি সাবেক প্রধানমন্ত্রী শেখ হাসিনার সঙ্গে কথোপকথনের একটি অডিও ফাঁস হয়েছে। ওই কথোপকথনে তানভীর নামে যুক্তরাষ্ট্র প্রবাসী এক আওয়ামী লীগ নেতার সঙ্গে কথা বলেন আওয়ামী লীগ সভাপতি।&nbsp;</div><div><br></div><div>তানভীর : আপা আপনার কাছে ফোন দিয়েছি একটা ব্যাপারে, নিউইয়র্ক মহানগরে আমরা এমদাদ ভাইয়ের নেতৃত্বে মিটিং মিছিল করছি।ছাত্র-জনতার আন্দোলনের মুখে গত ৫ আগস্ট দেশ ছেড়ে ভারতে পালিয়ে গেছেন শেখ হাসিনা। সম্প্রতি সাবেক প্রধানমন্ত্রী শেখ হাসিনার সঙ্গে কথোপকথনের একটি অডিও ফাঁস হয়েছে। ওই কথোপকথনে তানভীর নামে যুক্তরাষ্ট্র প্রবাসী এক আওয়ামী লীগ নেতার সঙ্গে কথা বলেন আওয়ামী লীগ সভাপতি।&nbsp;</div><div><br></div><div>তানভীর : আপা আপনার কাছে ফোন দিয়েছি একটা ব্যাপারে, নিউইয়র্ক মহানগরে আমরা এমদাদ ভাইয়ের নেতৃত্বে মিটিং মিছিল করছি।ছাত্র-জনতার আন্দোলনের মুখে গত ৫ আগস্ট দেশ ছেড়ে ভারতে পালিয়ে গেছেন শেখ হাসিনা। সম্প্রতি সাবেক প্রধানমন্ত্রী শেখ হাসিনার সঙ্গে কথোপকথনের একটি অডিও ফাঁস হয়েছে। ওই কথোপকথনে তানভীর নামে যুক্তরাষ্ট্র প্রবাসী এক আওয়ামী লীগ নেতার সঙ্গে কথা বলেন আওয়ামী লীগ সভাপতি।&nbsp;</div><div><br></div><div>তানভীর : আপা আপনার কাছে ফোন দিয়েছি একটা ব্যাপারে, নিউইয়র্ক মহানগরে আমরা এমদাদ ভাইয়ের নেতৃত্বে মিটিং মিছিল করছি।ছাত্র-জনতার আন্দোলনের মুখে গত ৫ আগস্ট দেশ ছেড়ে ভারতে পালিয়ে গেছেন শেখ হাসিনা। সম্প্রতি সাবেক প্রধানমন্ত্রী শেখ হাসিনার সঙ্গে কথোপকথনের একটি অডিও ফাঁস হয়েছে। ওই কথোপকথনে তানভীর নামে যুক্তরাষ্ট্র প্রবাসী এক আওয়ামী লীগ নেতার সঙ্গে কথা বলেন আওয়ামী লীগ সভাপতি।&nbsp;</div><div><br></div><div>তানভীর : আপা আপনার কাছে ফোন দিয়েছি একটা ব্যাপারে, নিউইয়র্ক মহানগরে আমরা এমদাদ ভাইয়ের নেতৃত্বে মিটিং মিছিল করছি।</div>', '1726511621X1UOI4p0.jpg', NULL, NULL, NULL, NULL, 53, 59, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-17 01:33:41', '2024-09-17 01:33:41', 'ছাত্র-জনতার আন্দোলনের মুখে গত ৫ আগস্ট দেশ ছেড়ে ভারতে পালিয়ে গেছেন শেখ হাসিনা। সম্প্রতি সাবেক প্রধানমন্ত্রী শেখ হাসিনার সঙ্গে কথোপকথনের একটি অডিও ফাঁস হয়েছে। ওই কথোপকথনে তানভীর নামে যুক্তরাষ্ট্র প্রবাসী এক আওয়ামী লীগ নেতার সঙ্গে কথা বলেন আওয়ামী লীগ সভাপতি।', NULL, 'ফোনালাপ ফাঁস, যেকোনো সময় দেশে ফিরবেন শেখ হাসিনা', NULL, 0),
(480, 2, 'ফোনালাপ ফাঁস, যেকোনো সময় দেশে ফিরবেন শেখ হাসিনা', 'hasinaphone', 'audio', 'ফোনালাপ ফাঁস, যেকোনো সময় দেশে ফিরবেন শেখ হাসিনা', 0, 1, 0, 0, 1, 1, 0, 'ফোনালাপ ফাঁস, যেকোনো সময় দেশে ফিরবেন শেখ হাসিনা', '<div>ছাত্র-জনতার আন্দোলনের মুখে গত ৫ আগস্ট দেশ ছেড়ে ভারতে পালিয়ে গেছেন শেখ হাসিনা। সম্প্রতি সাবেক প্রধানমন্ত্রী শেখ হাসিনার সঙ্গে কথোপকথনের একটি অডিও ফাঁস হয়েছে। ওই কথোপকথনে তানভীর নামে যুক্তরাষ্ট্র প্রবাসী এক আওয়ামী লীগ নেতার সঙ্গে কথা বলেন আওয়ামী লীগ সভাপতি।&nbsp;</div><div><br></div><div>তানভীর : আপা আপনার কাছে ফোন দিয়েছি একটা ব্যাপারে, নিউইয়র্ক মহানগরে আমরা এমদাদ ভাইয়ের নেতৃত্বে মিটিং মিছিল করছি।ছাত্র-জনতার আন্দোলনের মুখে গত ৫ আগস্ট দেশ ছেড়ে ভারতে পালিয়ে গেছেন শেখ হাসিনা। সম্প্রতি সাবেক প্রধানমন্ত্রী শেখ হাসিনার সঙ্গে কথোপকথনের একটি অডিও ফাঁস হয়েছে। ওই কথোপকথনে তানভীর নামে যুক্তরাষ্ট্র প্রবাসী এক আওয়ামী লীগ নেতার সঙ্গে কথা বলেন আওয়ামী লীগ সভাপতি।&nbsp;</div><div><br></div><div>তানভীর : আপা আপনার কাছে ফোন দিয়েছি একটা ব্যাপারে, নিউইয়র্ক মহানগরে আমরা এমদাদ ভাইয়ের নেতৃত্বে মিটিং মিছিল করছি।ছাত্র-জনতার আন্দোলনের মুখে গত ৫ আগস্ট দেশ ছেড়ে ভারতে পালিয়ে গেছেন শেখ হাসিনা। সম্প্রতি সাবেক প্রধানমন্ত্রী শেখ হাসিনার সঙ্গে কথোপকথনের একটি অডিও ফাঁস হয়েছে। ওই কথোপকথনে তানভীর নামে যুক্তরাষ্ট্র প্রবাসী এক আওয়ামী লীগ নেতার সঙ্গে কথা বলেন আওয়ামী লীগ সভাপতি।&nbsp;</div><div><br></div><div>তানভীর : আপা আপনার কাছে ফোন দিয়েছি একটা ব্যাপারে, নিউইয়র্ক মহানগরে আমরা এমদাদ ভাইয়ের নেতৃত্বে মিটিং মিছিল করছি।ছাত্র-জনতার আন্দোলনের মুখে গত ৫ আগস্ট দেশ ছেড়ে ভারতে পালিয়ে গেছেন শেখ হাসিনা। সম্প্রতি সাবেক প্রধানমন্ত্রী শেখ হাসিনার সঙ্গে কথোপকথনের একটি অডিও ফাঁস হয়েছে। ওই কথোপকথনে তানভীর নামে যুক্তরাষ্ট্র প্রবাসী এক আওয়ামী লীগ নেতার সঙ্গে কথা বলেন আওয়ামী লীগ সভাপতি।&nbsp;</div><div><br></div><div>তানভীর : আপা আপনার কাছে ফোন দিয়েছি একটা ব্যাপারে, নিউইয়র্ক মহানগরে আমরা এমদাদ ভাইয়ের নেতৃত্বে মিটিং মিছিল করছি।ছাত্র-জনতার আন্দোলনের মুখে গত ৫ আগস্ট দেশ ছেড়ে ভারতে পালিয়ে গেছেন শেখ হাসিনা। সম্প্রতি সাবেক প্রধানমন্ত্রী শেখ হাসিনার সঙ্গে কথোপকথনের একটি অডিও ফাঁস হয়েছে। ওই কথোপকথনে তানভীর নামে যুক্তরাষ্ট্র প্রবাসী এক আওয়ামী লীগ নেতার সঙ্গে কথা বলেন আওয়ামী লীগ সভাপতি।&nbsp;</div><div><br></div><div>তানভীর : আপা আপনার কাছে ফোন দিয়েছি একটা ব্যাপারে, নিউইয়র্ক মহানগরে আমরা এমদাদ ভাইয়ের নেতৃত্বে মিটিং মিছিল করছি।ছাত্র-জনতার আন্দোলনের মুখে গত ৫ আগস্ট দেশ ছেড়ে ভারতে পালিয়ে গেছেন শেখ হাসিনা। সম্প্রতি সাবেক প্রধানমন্ত্রী শেখ হাসিনার সঙ্গে কথোপকথনের একটি অডিও ফাঁস হয়েছে। ওই কথোপকথনে তানভীর নামে যুক্তরাষ্ট্র প্রবাসী এক আওয়ামী লীগ নেতার সঙ্গে কথা বলেন আওয়ামী লীগ সভাপতি।&nbsp;</div><div><br></div><div>তানভীর : আপা আপনার কাছে ফোন দিয়েছি একটা ব্যাপারে, নিউইয়র্ক মহানগরে আমরা এমদাদ ভাইয়ের নেতৃত্বে মিটিং মিছিল করছি।ছাত্র-জনতার আন্দোলনের মুখে গত ৫ আগস্ট দেশ ছেড়ে ভারতে পালিয়ে গেছেন শেখ হাসিনা। সম্প্রতি সাবেক প্রধানমন্ত্রী শেখ হাসিনার সঙ্গে কথোপকথনের একটি অডিও ফাঁস হয়েছে। ওই কথোপকথনে তানভীর নামে যুক্তরাষ্ট্র প্রবাসী এক আওয়ামী লীগ নেতার সঙ্গে কথা বলেন আওয়ামী লীগ সভাপতি।&nbsp;</div><div><br></div><div>তানভীর : আপা আপনার কাছে ফোন দিয়েছি একটা ব্যাপারে, নিউইয়র্ক মহানগরে আমরা এমদাদ ভাইয়ের নেতৃত্বে মিটিং মিছিল করছি।ছাত্র-জনতার আন্দোলনের মুখে গত ৫ আগস্ট দেশ ছেড়ে ভারতে পালিয়ে গেছেন শেখ হাসিনা। সম্প্রতি সাবেক প্রধানমন্ত্রী শেখ হাসিনার সঙ্গে কথোপকথনের একটি অডিও ফাঁস হয়েছে। ওই কথোপকথনে তানভীর নামে যুক্তরাষ্ট্র প্রবাসী এক আওয়ামী লীগ নেতার সঙ্গে কথা বলেন আওয়ামী লীগ সভাপতি।&nbsp;</div><div><br></div><div>তানভীর : আপা আপনার কাছে ফোন দিয়েছি একটা ব্যাপারে, নিউইয়র্ক মহানগরে আমরা এমদাদ ভাইয়ের নেতৃত্বে মিটিং মিছিল করছি।</div>', '17265117567M8wAW4P.jpg', NULL, NULL, NULL, '1726511756ফনলপ ফস যকন সময দশ ফরবন শখ হসন  ড. ইউনস  হজর কট টক পচর করছ.mp3', 53, 59, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-17 01:35:56', '2024-09-17 01:35:56', NULL, NULL, NULL, NULL, 0),
(481, 2, 'ঢাকায় বিএনপির সমাবেশ আজ', 'ঢাকায়-বিএনপির-সমাবেশ-আজ', 'article', 'ঢাকায় বিএনপির সমাবেশ আজ', 0, 1, 1, 0, 1, 1, 0, 'ঢাকায় বিএনপির সমাবেশ আজ', '<div><span style=\"font-size: 14px;\">‘আন্তর্জাতিক গণতন্ত্র দিবস’ উপলক্ষে আজ মঙ্গলবার ঢাকায় সমাবেশ করবে বিএনপি। রাজধানীর নয়াপল্টনে বিএনপির কেন্দ্রীয় কার্যালয়ের সামনে বেলা আড়াইটায় এ সমাবেশ শুরু হবে। ঢাকার বাইরে বিভাগীয় শহরগুলোতে এ দিবস উপলক্ষে আজ শোভাযাত্রা করবেন বিএনপির নেতা-কর্মীরা।</span></div><div><span style=\"font-size: 14px;\"><br></span></div><div><span style=\"font-size: 14px;\">নয়াপল্টনে বিএনপির সমাবেশের প্রধান অতিথি দলের ভারপ্রাপ্ত চেয়ারম্যান তারেক রহমান। তিনি নেতা-কর্মীদের উদ্দেশে ভার্চ্যুয়ালি বক্তব্য দেবেন। সমাবেশে সভাপতিত্ব করবেন বিএনপির মহাসচিব মির্জা ফখরুল ইসলাম আলমগীর। এ ছাড়া দলের স্থায়ী কমিটির সদস্য ও জ্যেষ্ঠ নেতারা সমাবেশে বক্তব্য দেবেন।</span></div><div><span style=\"font-size: 14px;\">বিভাগীয় শহরগুলোর শোভাযাত্রা কর্মসূচির মধ্যে সিলেটে প্রধান অতিথি হিসেবে বিএনপির স্থায়ী কমিটির সদস্য মির্জা আব্বাস, খুলনায় গয়েশ্বর চন্দ্র রায়, ময়মনসিংহে নজরুল ইসলাম খান, চট্টগ্রামে সালাহউদ্দিন আহমেদ, বরিশালে সেলিমা রহমান, রংপুরে হাফিজ উদ্দিন আহমদ, কুমিল্লায় দলের ভাইস চেয়ারম্যান মোহাম্মদ শাহজাহান এবং রাজশাহীতে শামসুজ্জামান দুদু উপস্থিত থাকবেন। এ ছাড়া ফরিদপুরের কর্মসূচিতে বিএনপির ভাইস চেয়ারম্যান বরকতউল্লা বুলু উপস্থিত থাকবেন বলে জানা গেছে।</span></div><div><span style=\"font-size: 14px;\"><br></span></div><div><span style=\"font-size: 14px;\">গণতন্ত্র সম্পর্কে আগ্রহ সৃষ্টি করতে এবং গণতন্ত্রে উৎসাহিত করতে ২০০৮ সাল থেকে প্রতিবছর ১৫ সেপ্টেম্বর জাতিসংঘের সদস্যরাষ্ট্রগুলো ‘আন্তর্জাতিক গণতন্ত্র দিবস’ পালন করে আসছে।</span></div>', '1726563206WyeWjKdr.jpg', NULL, NULL, NULL, NULL, 54, 56, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-17 13:58:21', '2024-09-17 20:58:21', '‘আন্তর্জাতিক গণতন্ত্র দিবস’ উপলক্ষে আজ মঙ্গলবার ঢাকায় সমাবেশ করবে বিএনপি। রাজধানীর নয়াপল্টনে বিএনপির কেন্দ্রীয় কার্যালয়ের সামনে বেলা আড়াইটায় এ সমাবেশ শুরু হবে। ঢাকার বাইরে বিভাগীয় শহরগুলোতে এ দিবস উপলক্ষে আজ শোভাযাত্রা করবেন বিএনপির নেতা-কর্মীরা।', '<iframe width=\"600\" height=\"400\" src=\"https://www.youtube.com/embed/hfgr4nHT-90\" title=\"সাবেক শিক্ষামন্ত্রী নওফেলকে নিয়ে চাঞ্চল্যকর তথ্য দিলেন ববি হাজ্জাজ-Chithi\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'ঢাকায় বিএনপির সমাবেশ আজ', '2SYtOozfnOw', 1),
(482, 2, 'রাশিয়া ও ইউক্রেনের মধ্যে ২০৬ জন বন্দী বিনিময়', 'রাশিয়া-ও-ইউক্রেনের-মধ্যে-২০৬-জন-বন্দী-বিনিময়', 'article', 'রাশিয়া ও ইউক্রেনের মধ্যে ২০৬ জন বন্দী বিনিময়', 0, 1, 1, 0, 1, 1, 0, NULL, '<div>রাশিয়া ও ইউক্রেন আরও ২০৬ জন বন্দী বিনিময় করেছে। সংযুক্ত আরব আমিরাতের (ইউএই) মধ্যস্থতায় এ বন্দী বিনিময় হয়েছে। বিষয়টি রাশিয়া ও ইউক্রেন আলাদাভাবে নিশ্চিত করেছে। আরব আমিরাতের পররাষ্ট্র মন্ত্রণালয়ও সামাজিক যোগাযোগমাধ্যমে বিষয়টি জানিয়েছে।</div><div><br></div><div>শনিবার রুশ পররাষ্ট্র মন্ত্রণালয় জানায়, রাশিয়ার সমান সংখ্যক বন্দীর বিনিময়ে ইউক্রেনের ১০৩ সেনাকে মুক্তি দিয়েছে তারা। এদিনই ইউক্রেনের প্রেসিডেন্ট ভলোদিমির জেলেনস্কি এক্সে এক পোস্টে বলেন, ‘সফলতার সঙ্গে আমাদের আরও ১০৩ যোদ্ধাকে রাশিয়ার বন্দিত্ব থেকে ইউক্রেনে ফিরিয়ে এনেছি।’</div><div>রুশ প্রতিরক্ষা মন্ত্রণালয়ের তথ্যমতে, ইউক্রেনের কাছ থেকে মুক্ত ১০৩ জন রাশিয়ার সামরিক বাহিনীর সদস্য। রাশিয়ার কুরস্ক অঞ্চল থেকে ইউক্রেনের সেনারা সম্প্রতি তাঁদের আটক করেছিলেন। গত মাসের শুরুর দিকে ইউক্রেনের সেনারা কুরস্ক অঞ্চলে অভিযান শুরু করেন।</div><div><br></div><div>ইউক্রেনের হাত থেকে মুক্ত রাশিয়ার যুদ্ধবন্দিরা বর্তমানে বেলারুশে রয়েছে। সেখানে তাঁদের প্রয়োজনীয় চিকিৎসা সহায়তা দেওয়া হচ্ছে।</div><div><br></div><div>এর আগে গত আগস্ট মাসে আরব আমিরাতের মধ্যস্থতায় রাশিয়া ও ইউক্রেন ১১৫ জন করে মোট ৩০০ জন বন্দী বিনিময় করে। আরব আমিরাতের দেওয়া তথ্যমতে, যুদ্ধ শুরু হওয়ার পর থেকে তাদের মধ্যস্থতায় রাশিয়া ও ইউক্রেন ১ হাজার ৯৯৪ জন বন্দী বিনিময় করেছে।</div><div><br></div>', '1726564841RfOI2D52.jpg', NULL, NULL, NULL, NULL, 55, 64, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-17 13:52:29', '2024-09-17 20:52:29', 'রাশিয়া ও ইউক্রেন আরও ২০৬ জন বন্দী বিনিময় করেছে। সংযুক্ত আরব আমিরাতের (ইউএই) মধ্যস্থতায় এ বন্দী বিনিময় হয়েছে। বিষয়টি রাশিয়া ও ইউক্রেন আলাদাভাবে নিশ্চিত করেছে। আরব আমিরাতের পররাষ্ট্র মন্ত্রণালয়ও সামাজিক যোগাযোগমাধ্যমে বিষয়টি জানিয়েছে।', '<iframe width=\"600\" height=\"400\" src=\"https://www.youtube.com/embed/TBgjFA6GplM\" title=\"রাশিয়া ইউক্রেনের মধ্যে দু’দিনে ২০৬ বন্দি বিনিময় | Russia-Ukraine | International\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'রাশিয়া ও ইউক্রেনের মধ্যে ২০৬ জন বন্দী বিনিময়', 'G4EMWWqKm2Q', 1),
(483, 2, 'বঙ্গোপসাগরে ট্রলারডুবি: এক জেলের লাশ উদ্ধার, নিখোঁজ আরও ৩', 'বঙ্গোপসাগরে-ট্রলারডুবি:-এক-জেলের-লাশ-উদ্ধার,-নিখোঁজ-আরও-৩', 'article', 'বঙ্গোপসাগরে ট্রলারডুবি: এক জেলের লাশ উদ্ধার, নিখোঁজ আরও ৩', 0, 1, 1, 0, 1, 1, 0, 'বঙ্গোপসাগরে ট্রলারডুবি: এক জেলের লাশ উদ্ধার, নিখোঁজ আরও ৩', '<div>নোয়াখালীর হাতিয়া উপজেলার বঙ্গোপসাগরে ট্রলারডুবির ঘটনায় নিখোঁজ এক জেলের লাশ উদ্ধার করা হয়েছে। তাঁর নাম মো. হক সাব (৩৫)। আজ মঙ্গলবার সকালে হাতিয়ার নিমতলী এলাকার পূর্ব পাশে মেঘনা নদী থেকে তাঁর লাশ উদ্ধার করা হয়। এর আগে গত শুক্রবার ঝড়ের কবলে পড়ে ট্রলারডুবির ঘটনা ঘটে। এ ঘটনায় এখনো তিন জেলে নিখোঁজ।</div><div><br></div><div>মো. হক সাব উপজেলার জাহাজমারা ইউনিয়নের নতুন সুখচর গ্রামের বাসিন্দা ছিলেন। উদ্ধারের পর তাঁর লাশ বাড়িতে নিয়ে গেছেন স্বজনেরা।</div><div>স্থানীয় সূত্রে জানা গেছে, হক সাব আমতলী ঘাটের রহিম মাঝির ট্রলারের জেলে হিসেবে বঙ্গোপসাগরে মাছ শিকারে যান। গত শুক্রবার বিকেলে ট্রলার নিয়ে হাতিয়া ফেরার পথে সাগরে ঝড়ের কবলে পড়ে তাঁদের ট্রলারটি ডুবে যায়। এতে ট্রলারের ১৬ জন মাঝিমাল্লার সবাই নিখোঁজ হন। পরে স্থানীয় অন্য জেলেদের সহায়তায় গত শনিবার দুজনকে এবং গত রোববার ১০ জনকে উদ্ধার করে ঘাটে নিয়ে আসা হয়। আজ সকালে হক সাবের লাশ পাওয়া যায়। রহিম মাঝির ট্রলারের জেলেদের মধ্যে এখনো তিনজন নিখোঁজ রয়েছেন বলে জানা গেছে।</div><div><br></div><div>এ ব্যাপারে নিঝুম দ্বীপ নৌ পুলিশ ফাঁড়ির ইনচার্জ পরিদর্শক রাকিবুল ইসলাম প্রথম আলোকে জানান, একজন জেলের মৃতদেহ উদ্ধার করা হয়েছে বলে সংবাদ পেয়েছেন তাঁরা। নৌ পুলিশের একটি দল এরই মধ্যে ঘটনাস্থলে গেছে।</div>', '1726571447mGltIOjV.jpg', NULL, NULL, NULL, NULL, 68, NULL, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-17 13:59:16', '2024-09-17 20:59:16', 'নোয়াখালীর হাতিয়া উপজেলার বঙ্গোপসাগরে ট্রলারডুবির ঘটনায় নিখোঁজ এক জেলের লাশ উদ্ধার করা হয়েছে। তাঁর নাম মো. হক সাব (৩৫)। আজ মঙ্গলবার সকালে হাতিয়ার নিমতলী এলাকার পূর্ব পাশে মেঘনা নদী থেকে তাঁর লাশ উদ্ধার করা হয়।', '<iframe width=\"600\" height=\"400\" src=\"https://www.youtube.com/embed/9uxYeCtVvKM\" title=\"পণ্ডিত বাড়ির মাইয়ার সাথে তিড়িং বিরিং | তারছেড়া ভাদাইমা | Tarchera vadaima | Bangla Funny Koutuk 2023\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'বঙ্গোপসাগরে ট্রলারডুবি: এক জেলের লাশ উদ্ধার, নিখোঁজ আরও ৩', 'LzcPl_FGDJo', 1),
(484, 2, 'অনলাইনে লিখে মাসে ২ লাখ টাকা আয় করেন কলেজশিক্ষক মোস্তাফিজুর', 'অনলাইনে-লিখে-মাসে-২-লাখ-টাকা-আয়-করেন-কলেজশিক্ষক-মোস্তাফিজুর', 'article', 'অনলাইনে লিখে মাসে ২ লাখ টাকা আয় করেন কলেজশিক্ষক মোস্তাফিজুর', 0, 1, 1, 0, 1, 1, 0, 'অনলাইনে লিখে মাসে ২ লাখ টাকা আয় করেন কলেজশিক্ষক মোস্তাফিজুর', '<div><span style=\"font-size: 14px;\">পাঁচ ভাই, এক বোনের মধ্যে দ্বিতীয় মো. মোস্তাফিজুর রহমানের আয়ের শুরুটা হয়েছিল গৃহশিক্ষক হিসেবে, ছাত্রজীবনে। ২০০৪ সালে শিক্ষকতা পেশায় জড়িয়ে আজ তিনি থিতু সুনামগঞ্জের ধর্মপাশা উপজেলার সেলবরষ ইউনিয়নের বাদশাগঞ্জ ডিগ্রি কলেজে। এই কলেজে ইংরেজির প্রভাষক তিনি। চমকে দেওয়ার মতো তথ্য হলো মোস্তাফিজুর রহমানের মাসিক আয় প্রায় দুই লাখ টাকা। গ্রামের একটি ডিগ্রি কলেজে পড়িয়ে এটা কীভাবে সম্ভব?</span></div><div><span style=\"font-size: 14px;\"><br></span></div><div><span style=\"font-size: 14px;\">মাসে গড়ে দুই লাখ টাকা আয় করা মো. মোস্তাফিজুর রহমান এটা সম্ভব করেছেন ফ্রিল্যান্স আউটসোর্সিং কাজের মাধ্যমে। বিভিন্ন প্রতিষ্ঠান বা ব্যক্তি ইন্টারনেটের মাধ্যমে তাদের নিয়মিত কর্মীর বাইরে মুক্তপেশাজীবী বা ফ্রিল্যান্সারদের দিয়ে প্রয়োজনীয় কাজ করিয়ে নেন। এটিই ‘ফ্রিল্যান্স আউটসোর্সিং’ নামে পরিচিত। গ্রাহকের নির্দিষ্ট কাজ নির্ধারিত সময়ে কাজ করে দেন ফ্রিল্যান্সাররা। মোস্তাফিজুর রহমান এমন কাজই করেন চারজনের একটি দল নিয়ে। ধর্মপাশায় বসে ইন্টারনেটের মাধ্যমে বিভিন্ন প্রতিষ্ঠান বা পণ্যের বর্ণনা লিখে দেয় মোস্তাফিজুর ও তাঁর দল। লিখতে হয় ইংরেজিতে। কারিগরি ভাষায় এই বিষয়টিকে বলে ‘কনটেন্ট রাইটিং’। সাত বছর আগে কন্টেন্ট রাইটিং দিয়ে ফ্রিল্যান্সিং শুরু করেছিলেন মোস্তাফিজুর রহমান।পাঁচ ভাই, এক বোনের মধ্যে দ্বিতীয় মো. মোস্তাফিজুর রহমানের আয়ের শুরুটা হয়েছিল গৃহশিক্ষক হিসেবে, ছাত্রজীবনে। ২০০৪ সালে শিক্ষকতা পেশায় জড়িয়ে আজ তিনি থিতু সুনামগঞ্জের ধর্মপাশা উপজেলার সেলবরষ ইউনিয়নের বাদশাগঞ্জ ডিগ্রি কলেজে। এই কলেজে ইংরেজির প্রভাষক তিনি। চমকে দেওয়ার মতো তথ্য হলো মোস্তাফিজুর রহমানের মাসিক আয় প্রায় দুই লাখ টাকা। গ্রামের একটি ডিগ্রি কলেজে পড়িয়ে এটা কীভাবে সম্ভব?</span></div><div><span style=\"font-size: 14px;\"><br></span></div><div><span style=\"font-size: 14px;\">মাসে গড়ে দুই লাখ টাকা আয় করা মো. মোস্তাফিজুর রহমান এটা সম্ভব করেছেন ফ্রিল্যান্স আউটসোর্সিং কাজের মাধ্যমে। বিভিন্ন প্রতিষ্ঠান বা ব্যক্তি ইন্টারনেটের মাধ্যমে তাদের নিয়মিত কর্মীর বাইরে মুক্তপেশাজীবী বা ফ্রিল্যান্সারদের দিয়ে প্রয়োজনীয় কাজ করিয়ে নেন। এটিই ‘ফ্রিল্যান্স আউটসোর্সিং’ নামে পরিচিত। গ্রাহকের নির্দিষ্ট কাজ নির্ধারিত সময়ে কাজ করে দেন ফ্রিল্যান্সাররা। মোস্তাফিজুর রহমান এমন কাজই করেন চারজনের একটি দল নিয়ে। ধর্মপাশায় বসে ইন্টারনেটের মাধ্যমে বিভিন্ন প্রতিষ্ঠান বা পণ্যের বর্ণনা লিখে দেয় মোস্তাফিজুর ও তাঁর দল। লিখতে হয় ইংরেজিতে। কারিগরি ভাষায় এই বিষয়টিকে বলে ‘কনটেন্ট রাইটিং’। সাত বছর আগে কন্টেন্ট রাইটিং দিয়ে ফ্রিল্যান্সিং শুরু করেছিলেন মোস্তাফিজুর রহমান।</span></div>', '17265722904On6VFBo.jpg', NULL, NULL, NULL, NULL, 67, NULL, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-17 18:24:50', '2024-09-17 18:24:50', 'পাঁচ ভাই, এক বোনের মধ্যে দ্বিতীয় মো. মোস্তাফিজুর রহমানের আয়ের শুরুটা হয়েছিল গৃহশিক্ষক হিসেবে, ছাত্রজীবনে। ২০০৪ সালে শিক্ষকতা পেশায় জড়িয়ে আজ তিনি থিতু সুনামগঞ্জের ধর্মপাশা উপজেলার সেলবরষ ইউনিয়নের বাদশাগঞ্জ ডিগ্রি কলেজে। এই কলেজে ইংরেজির প্রভাষক তিনি।', NULL, 'অনলাইনে লিখে মাসে ২ লাখ টাকা আয় করেন কলেজশিক্ষক মোস্তাফিজুর', NULL, 0),
(485, 2, 'রাজশাহী মেডিকেল বিশ্ববিদ্যালয়ের নতুন উপাচার্য', 'রাজশাহী-মেডিকেল-বিশ্ববিদ্যালয়ের-নতুন-উপাচার্য', 'article', 'রাজশাহী মেডিকেল বিশ্ববিদ্যালয়ের নতুন উপাচার্য', 0, 1, 1, 0, 1, 1, 0, 'রাজশাহী মেডিকেল বিশ্ববিদ্যালয়ের নতুন উপাচার্য', '<div><span style=\"font-size: 14px;\">রাজশাহী মেডিকেল বিশ্ববিদ্যালয়ের (রামেবি) নতুন উপাচার্য (ভিসি) হিসেবে নিয়োগ পেয়েছেন অধ্যাপক মোহাম্মদ জাওয়াদুল হক। তিনি রাজশাহী মেডিকেল কলেজের (আরএমসি) অবসরপ্রাপ্ত অধ্যাপক। স্বাস্থ্য ও পরিবার কল্যাণ মন্ত্রণালয়ের স্বাস্থ্য শিক্ষা ও পরিবার কল্যাণ বিভাগের এক বিজ্ঞপ্তিতে এসব তথ্য জানানো হয়েছে।</span></div><div><span style=\"font-size: 14px;\"><br></span></div><div><span style=\"font-size: 14px;\">বিজ্ঞপ্তিতে বলা হয়েছে, ‘রাষ্ট্রপতি ও চ্যান্সেলরের অনুমোদনক্রমে “রাজশাহী মেডিকেল বিশ্ববিদ্যালয় আইন, ২০১৬”–এর ১২ (১) ধারা অনুযায়ী অধ্যাপক ডা. মোহা. জাওয়াদুল হককে রাজশাহী মেডিকেল বিশ্ববিদ্যালয়ের ভিসির শূন্য পদে নিম্নবর্ণিত শর্তে নিয়োগ করা হলো।’ শর্তগুলো হলো—</span></div><div><span style=\"font-size: 14px;\">রাজশাহী মেডিকেল বিশ্ববিদ্যালয়ের (রামেবি) নতুন উপাচার্য (ভিসি) হিসেবে নিয়োগ পেয়েছেন অধ্যাপক মোহাম্মদ জাওয়াদুল হক। তিনি রাজশাহী মেডিকেল কলেজের (আরএমসি) অবসরপ্রাপ্ত অধ্যাপক। স্বাস্থ্য ও পরিবার কল্যাণ মন্ত্রণালয়ের স্বাস্থ্য শিক্ষা ও পরিবার কল্যাণ বিভাগের এক বিজ্ঞপ্তিতে এসব তথ্য জানানো হয়েছে।</span></div><div><span style=\"font-size: 14px;\"><br></span></div><div><span style=\"font-size: 14px;\">বিজ্ঞপ্তিতে বলা হয়েছে, ‘রাষ্ট্রপতি ও চ্যান্সেলরের অনুমোদনক্রমে “রাজশাহী মেডিকেল বিশ্ববিদ্যালয় আইন, ২০১৬”–এর ১২ (১) ধারা অনুযায়ী অধ্যাপক ডা. মোহা. জাওয়াদুল হককে রাজশাহী মেডিকেল বিশ্ববিদ্যালয়ের ভিসির শূন্য পদে নিম্নবর্ণিত শর্তে নিয়োগ করা হলো।’ শর্তগুলো হলো—রাজশাহী মেডিকেল বিশ্ববিদ্যালয়ের (রামেবি) নতুন উপাচার্য (ভিসি) হিসেবে নিয়োগ পেয়েছেন অধ্যাপক মোহাম্মদ জাওয়াদুল হক। তিনি রাজশাহী মেডিকেল কলেজের (আরএমসি) অবসরপ্রাপ্ত অধ্যাপক। স্বাস্থ্য ও পরিবার কল্যাণ মন্ত্রণালয়ের স্বাস্থ্য শিক্ষা ও পরিবার কল্যাণ বিভাগের এক বিজ্ঞপ্তিতে এসব তথ্য জানানো হয়েছে।</span></div><div><span style=\"font-size: 14px;\"><br></span></div><div><span style=\"font-size: 14px;\">বিজ্ঞপ্তিতে বলা হয়েছে, ‘রাষ্ট্রপতি ও চ্যান্সেলরের অনুমোদনক্রমে “রাজশাহী মেডিকেল বিশ্ববিদ্যালয় আইন, ২০১৬”–এর ১২ (১) ধারা অনুযায়ী অধ্যাপক ডা. মোহা. জাওয়াদুল হককে রাজশাহী মেডিকেল বিশ্ববিদ্যালয়ের ভিসির শূন্য পদে নিম্নবর্ণিত শর্তে নিয়োগ করা হলো।’ শর্তগুলো হলো—রাজশাহী মেডিকেল বিশ্ববিদ্যালয়ের (রামেবি) নতুন উপাচার্য (ভিসি) হিসেবে নিয়োগ পেয়েছেন অধ্যাপক মোহাম্মদ জাওয়াদুল হক। তিনি রাজশাহী মেডিকেল কলেজের (আরএমসি) অবসরপ্রাপ্ত অধ্যাপক। স্বাস্থ্য ও পরিবার কল্যাণ মন্ত্রণালয়ের স্বাস্থ্য শিক্ষা ও পরিবার কল্যাণ বিভাগের এক বিজ্ঞপ্তিতে এসব তথ্য জানানো হয়েছে।</span></div><div><span style=\"font-size: 14px;\"><br></span></div><div><span style=\"font-size: 14px;\">বিজ্ঞপ্তিতে বলা হয়েছে, ‘রাষ্ট্রপতি ও চ্যান্সেলরের অনুমোদনক্রমে “রাজশাহী মেডিকেল বিশ্ববিদ্যালয় আইন, ২০১৬”–এর ১২ (১) ধারা অনুযায়ী অধ্যাপক ডা. মোহা. জাওয়াদুল হককে রাজশাহী মেডিকেল বিশ্ববিদ্যালয়ের ভিসির শূন্য পদে নিম্নবর্ণিত শর্তে নিয়োগ করা হলো।’ শর্তগুলো হলো—রাজশাহী মেডিকেল বিশ্ববিদ্যালয়ের (রামেবি) নতুন উপাচার্য (ভিসি) হিসেবে নিয়োগ পেয়েছেন অধ্যাপক মোহাম্মদ জাওয়াদুল হক। তিনি রাজশাহী মেডিকেল কলেজের (আরএমসি) অবসরপ্রাপ্ত অধ্যাপক। স্বাস্থ্য ও পরিবার কল্যাণ মন্ত্রণালয়ের স্বাস্থ্য শিক্ষা ও পরিবার কল্যাণ বিভাগের এক বিজ্ঞপ্তিতে এসব তথ্য জানানো হয়েছে।</span></div><div><span style=\"font-size: 14px;\"><br></span></div><div><span style=\"font-size: 14px;\">বিজ্ঞপ্তিতে বলা হয়েছে, ‘রাষ্ট্রপতি ও চ্যান্সেলরের অনুমোদনক্রমে “রাজশাহী মেডিকেল বিশ্ববিদ্যালয় আইন, ২০১৬”–এর ১২ (১) ধারা অনুযায়ী অধ্যাপক ডা. মোহা. জাওয়াদুল হককে রাজশাহী মেডিকেল বিশ্ববিদ্যালয়ের ভিসির শূন্য পদে নিম্নবর্ণিত শর্তে নিয়োগ করা হলো।’ শর্তগুলো হলো—রাজশাহী মেডিকেল বিশ্ববিদ্যালয়ের (রামেবি) নতুন উপাচার্য (ভিসি) হিসেবে নিয়োগ পেয়েছেন অধ্যাপক মোহাম্মদ জাওয়াদুল হক। তিনি রাজশাহী মেডিকেল কলেজের (আরএমসি) অবসরপ্রাপ্ত অধ্যাপক। স্বাস্থ্য ও পরিবার কল্যাণ মন্ত্রণালয়ের স্বাস্থ্য শিক্ষা ও পরিবার কল্যাণ বিভাগের এক বিজ্ঞপ্তিতে এসব তথ্য জানানো হয়েছে।</span></div><div><span style=\"font-size: 14px;\"><br></span></div><div><span style=\"font-size: 14px;\">বিজ্ঞপ্তিতে বলা হয়েছে, ‘রাষ্ট্রপতি ও চ্যান্সেলরের অনুমোদনক্রমে “রাজশাহী মেডিকেল বিশ্ববিদ্যালয় আইন, ২০১৬”–এর ১২ (১) ধারা অনুযায়ী অধ্যাপক ডা. মোহা. জাওয়াদুল হককে রাজশাহী মেডিকেল বিশ্ববিদ্যালয়ের ভিসির শূন্য পদে নিম্নবর্ণিত শর্তে নিয়োগ করা হলো।’ শর্তগুলো হলো—রাজশাহী মেডিকেল বিশ্ববিদ্যালয়ের (রামেবি) নতুন উপাচার্য (ভিসি) হিসেবে নিয়োগ পেয়েছেন অধ্যাপক মোহাম্মদ জাওয়াদুল হক। তিনি রাজশাহী মেডিকেল কলেজের (আরএমসি) অবসরপ্রাপ্ত অধ্যাপক। স্বাস্থ্য ও পরিবার কল্যাণ মন্ত্রণালয়ের স্বাস্থ্য শিক্ষা ও পরিবার কল্যাণ বিভাগের এক বিজ্ঞপ্তিতে এসব তথ্য জানানো হয়েছে।</span></div><div><span style=\"font-size: 14px;\"><br></span></div><div><span style=\"font-size: 14px;\">বিজ্ঞপ্তিতে বলা হয়েছে, ‘রাষ্ট্রপতি ও চ্যান্সেলরের অনুমোদনক্রমে “রাজশাহী মেডিকেল বিশ্ববিদ্যালয় আইন, ২০১৬”–এর ১২ (১) ধারা অনুযায়ী অধ্যাপক ডা. মোহা. জাওয়াদুল হককে রাজশাহী মেডিকেল বিশ্ববিদ্যালয়ের ভিসির শূন্য পদে নিম্নবর্ণিত শর্তে নিয়োগ করা হলো।’ শর্তগুলো হলো—রাজশাহী মেডিকেল বিশ্ববিদ্যালয়ের (রামেবি) নতুন উপাচার্য (ভিসি) হিসেবে নিয়োগ পেয়েছেন অধ্যাপক মোহাম্মদ জাওয়াদুল হক। তিনি রাজশাহী মেডিকেল কলেজের (আরএমসি) অবসরপ্রাপ্ত অধ্যাপক। স্বাস্থ্য ও পরিবার কল্যাণ মন্ত্রণালয়ের স্বাস্থ্য শিক্ষা ও পরিবার কল্যাণ বিভাগের এক বিজ্ঞপ্তিতে এসব তথ্য জানানো হয়েছে।</span></div><div><span style=\"font-size: 14px;\"><br></span></div><div><span style=\"font-size: 14px;\">বিজ্ঞপ্তিতে বলা হয়েছে, ‘রাষ্ট্রপতি ও চ্যান্সেলরের অনুমোদনক্রমে “রাজশাহী মেডিকেল বিশ্ববিদ্যালয় আইন, ২০১৬”–এর ১২ (১) ধারা অনুযায়ী অধ্যাপক ডা. মোহা. জাওয়াদুল হককে রাজশাহী মেডিকেল বিশ্ববিদ্যালয়ের ভিসির শূন্য পদে নিম্নবর্ণিত শর্তে নিয়োগ করা হলো।’ শর্তগুলো হলো—</span></div>', '1726574374mCEaVqKS.jpg', NULL, NULL, NULL, NULL, 69, NULL, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-17 13:24:00', '2024-09-17 20:24:00', 'রাজশাহী মেডিকেল বিশ্ববিদ্যালয়ের (রামেবি) নতুন উপাচার্য (ভিসি) হিসেবে নিয়োগ পেয়েছেন অধ্যাপক মোহাম্মদ জাওয়াদুল হক। তিনি রাজশাহী মেডিকেল কলেজের (আরএমসি) অবসরপ্রাপ্ত অধ্যাপক। স্বাস্থ্য ও পরিবার কল্যাণ মন্ত্রণালয়ের স্বাস্থ্য শিক্ষা ও পরিবার কল্যাণ বিভাগের এক বিজ্ঞপ্তিতে এসব তথ্য জানানো হয়েছে।', NULL, 'রাজশাহী মেডিকেল বিশ্ববিদ্যালয়ের নতুন উপাচার্য', NULL, 0),
(486, 2, 'আওয়ামী লীগ নেতার বিরূপ মন্তব্যের প্রতিবাদে কুশপুত্তলিকা দাহ', 'আওয়ামী-লীগ-নেতার-বিরূপ-মন্তব্যের-প্রতিবাদে-কুশপুত্তলিকা-দাহ', 'audio', 'আওয়ামী লীগ নেতার বিরূপ মন্তব্যের প্রতিবাদে কুশপুত্তলিকা দাহ', 0, 1, 0, 0, 1, 1, 0, 'আওয়ামী লীগ নেতার বিরূপ মন্তব্যের প্রতিবাদে কুশপুত্তলিকা দাহ', '<div><span style=\"font-size: 14px;\">কুমিল্লার দেবিদ্বারে আওয়ামী লীগ সম্পর্কে বিরূপ মন্তব্য করার প্রতিবাদে কুমিল্লা উত্তর জেলা আওয়ামী লীগের সাধারণ সম্পাদক রোশন আলী মাস্টারের কুশপুত্তলিকা দাহ করেছে আওয়ামী লীগ ও ছাত্রলীগ নেতা কর্মীরা। মঙ্গলবার (২৮ ডিসেম্বর) রাতে দেবিদ্বার স্কয়ার হাসপাতাল সামনে থেকে একটি প্রতিবাদ ও মশাল মিছিল বের করা হয়। পরে নিউমার্কেট স্বাধীনতা চত্বরে গিয়ে কুমিল্লা উত্তর জেলা রোশন আলী মাস্টারের বিরুদ্ধে বিক্ষোভ প্রদর্শন করে তার ছবিতে জুতার মালা পরিয়ে কুশপুত্তলিকা দাহ করা হয়।</span></div><div><span style=\"font-size: 14px;\"><br></span></div><div><span style=\"font-size: 14px;\">জানা গেছে, কুমিল্লা উত্তর জেলা আওয়ামী লীগের সাধারণ সম্পাদক রোশন আলী মাস্টার এবং বিএনপি দলীয় দেবিদ্বার উপজেলা পরিষদের সাবেক চেয়ারম্যান রুহুল আমীনের কথোপকথনের একটি অডিও সামাজিক যোগাযোগ মাধ্যমে ভাইরাল হয়। ভাইরাল হওয়া বক্তব্যে রোশন আলী মাস্টার বিএনপি নেতার সঙ্গে নিজ দলের বিরুদ্ধে চরম আপত্তিকর কথা বার্তা বলতে শোনা যায়।</span></div><div><span style=\"font-size: 14px;\"><br></span></div><div><span style=\"font-size: 14px;\">তিনি বলেন, যারা নৌকা করে সব রাজাকারের বাচ্চা। কি করবেন যে দেশে টাকা দিলে নমিনেশন পাওয়া যায়, যে দেশে টাকা দিলে মন্ত্রিত্ব পাওয়া যায়, যে দেশে টাকা দিলে সব আকাম চলে। আপনারা বিরোধী দল (বিএনপি) শক্ত না, মামলা-হামলার ভয়ে আপনারা মাঠে নামেন না, একচেটিয়া কি একটা দেশ চলে? বিরোধী দল সব সময় স্ট্রং থাকতে হয়, আপনারা (বিএনপি) যদি সুযোগ দেন তাহলে তো অপকর্ম হবেই, যা ইচ্ছা তা-ই হবে, দেশের এই অধঃপতনের জন্য দায়ী হলো আপনাদের বিরোধী দল।</span></div><div><span style=\"font-size: 14px;\"><br></span></div><div><span style=\"font-size: 14px;\">এতে কুমিল্লা উত্তর জেলাসহ দেবিদ্বার উপজেলা আওয়ামী লীগ ও অঙ্গ সংগঠনের নেতাকর্মীদের মাঝে ব্যাপক ক্ষোভ ছড়িয়ে পড়ে।</span></div>', '1726580029f30dum0j.jpg', NULL, NULL, NULL, '1726580029ami.mp3', 54, 57, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-17 20:33:49', '2024-09-17 20:33:49', NULL, NULL, NULL, NULL, 0),
(487, 2, 'চেনা সহকর্মীরা অচেনা হয়ে গেলেন, শিল্পকলা থেকে বেরিয়ে জ্যোতিকা জ্যোতি', 'চেনা-সহকর্মীরা-অচেনা-হয়ে-গেলেন,-শিল্পকলা-থেকে-বেরিয়ে-জ্যোতিকা-জ্যোতি', 'article', 'চেনা সহকর্মীরা অচেনা হয়ে গেলেন, শিল্পকলা থেকে বেরিয়ে জ্যোতিকা জ্যোতি', 0, 1, 0, 0, 1, 1, 0, 'চেনা সহকর্মীরা অচেনা হয়ে গেলেন, শিল্পকলা থেকে বেরিয়ে জ্যোতিকা জ্যোতি', '<div>ছাত্র–জনতার অভ্যুত্থানে রাজনৈতিক পটপরিবর্তনের পর প্রথমবার শিল্পকলা একাডেমিতে গিয়ে সহকর্মীদের বাধার মুখে পড়েন শিল্পকলার পরিচালক অভিনেত্রী জ্যোতিকা জ্যোতি।</div><div><br></div><div>আজ মঙ্গলবার দুপুর সাড়ে ১২টা পর অফিসকক্ষে প্রবেশ করেন জ্যোতি। অফিসকক্ষের বাইরে বিভিন্ন বিভাগের সহকর্মীদের জড়ো হতে দেখে জ্যোতি দরজা বন্ধ করে দেন। একপর্যায়ে তিনি বাধ্য হয়ে শিল্পকলা একাডেমি ত্যাগ করেন। ২০২৩ সালের মার্চে জ্যোতিকা জ্যোতিকে শিল্পকলায় পরিচালক পদে চুক্তিভিত্তিক নিয়োগ দিয়েছিল সরকার।</div><div><br></div><div>শিল্পকলা থেকে বেরিয়ে এক ফেসবুক লাইভে জ্যোতিকা জ্যোতি জানান, গত সরকার তাঁকে দুই বছর মেয়াদের চুক্তিভিত্তিক চাকরির সুযোগ দিয়েছিল। সেই মেয়াদ এখনো আছে। সরকার পতনের পর আগের চুক্তিভিত্তিক নিয়োগ বাতিলের কোনো খবরও তিনি পাননি।ছাত্র–জনতার অভ্যুত্থানে রাজনৈতিক পটপরিবর্তনের পর প্রথমবার শিল্পকলা একাডেমিতে গিয়ে সহকর্মীদের বাধার মুখে পড়েন শিল্পকলার পরিচালক অভিনেত্রী জ্যোতিকা জ্যোতি।</div><div><br></div><div>আজ মঙ্গলবার দুপুর সাড়ে ১২টা পর অফিসকক্ষে প্রবেশ করেন জ্যোতি। অফিসকক্ষের বাইরে বিভিন্ন বিভাগের সহকর্মীদের জড়ো হতে দেখে জ্যোতি দরজা বন্ধ করে দেন। একপর্যায়ে তিনি বাধ্য হয়ে শিল্পকলা একাডেমি ত্যাগ করেন। ২০২৩ সালের মার্চে জ্যোতিকা জ্যোতিকে শিল্পকলায় পরিচালক পদে চুক্তিভিত্তিক নিয়োগ দিয়েছিল সরকার।</div><div><br></div><div>শিল্পকলা থেকে বেরিয়ে এক ফেসবুক লাইভে জ্যোতিকা জ্যোতি জানান, গত সরকার তাঁকে দুই বছর মেয়াদের চুক্তিভিত্তিক চাকরির সুযোগ দিয়েছিল। সেই মেয়াদ এখনো আছে। সরকার পতনের পর আগের চুক্তিভিত্তিক নিয়োগ বাতিলের কোনো খবরও তিনি পাননি।ছাত্র–জনতার অভ্যুত্থানে রাজনৈতিক পটপরিবর্তনের পর প্রথমবার শিল্পকলা একাডেমিতে গিয়ে সহকর্মীদের বাধার মুখে পড়েন শিল্পকলার পরিচালক অভিনেত্রী জ্যোতিকা জ্যোতি।</div><div><br></div><div>আজ মঙ্গলবার দুপুর সাড়ে ১২টা পর অফিসকক্ষে প্রবেশ করেন জ্যোতি। অফিসকক্ষের বাইরে বিভিন্ন বিভাগের সহকর্মীদের জড়ো হতে দেখে জ্যোতি দরজা বন্ধ করে দেন। একপর্যায়ে তিনি বাধ্য হয়ে শিল্পকলা একাডেমি ত্যাগ করেন। ২০২৩ সালের মার্চে জ্যোতিকা জ্যোতিকে শিল্পকলায় পরিচালক পদে চুক্তিভিত্তিক নিয়োগ দিয়েছিল সরকার।</div><div><br></div><div>শিল্পকলা থেকে বেরিয়ে এক ফেসবুক লাইভে জ্যোতিকা জ্যোতি জানান, গত সরকার তাঁকে দুই বছর মেয়াদের চুক্তিভিত্তিক চাকরির সুযোগ দিয়েছিল। সেই মেয়াদ এখনো আছে। সরকার পতনের পর আগের চুক্তিভিত্তিক নিয়োগ বাতিলের কোনো খবরও তিনি পাননি।</div>', '1726592193WpDTzKmS.jpg', NULL, NULL, NULL, NULL, 70, NULL, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-18 12:48:38', '2024-09-18 19:48:38', NULL, 'ছাত্র–জনতার অভ্যুত্থানে রাজনৈতিক পটপরিবর্তনের পর প্রথমবার শিল্পকলা একাডেমিতে গিয়ে সহকর্মীদের বাধার মুখে পড়েন শিল্পকলার পরিচালক অভিনেত্রী জ্যোতিকা জ্যোতি।', 'চেনা সহকর্মীরা অচেনা হয়ে গেলেন, শিল্পকলা থেকে বেরিয়ে জ্যোতিকা জ্যোতি', NULL, 0);
INSERT INTO `posts` (`id`, `language_id`, `title`, `slug`, `post_type`, `meta_tag`, `show_right_column`, `is_feature`, `is_slider`, `slider_left`, `slider_right`, `is_trending`, `is_videoGallery`, `tags`, `description`, `image_big`, `rss_image`, `image_small`, `video`, `audio`, `category_id`, `subcategories_id`, `schedule_post`, `schedule_post_date`, `is_pending`, `admin_id`, `status`, `is_draft`, `rss_link`, `created_at`, `updated_at`, `short_description`, `video_embed`, `image_caption`, `video_link`, `is_video`) VALUES
(488, 2, '‘ভারতকে হারিয়ে সবাই মজা পায়, মজা নিতে দিন’', '‘ভারতকে-হারিয়ে-সবাই-মজা-পায়,-মজা-নিতে-দিন’', 'article', '‘ভারতকে হারিয়ে সবাই মজা পায়, মজা নিতে দিন’', 0, 1, 1, 0, 1, 1, 0, '‘ভারতকে হারিয়ে সবাই মজা পায়, মজা নিতে দিন’', '<div>ভারতের বিপক্ষে টেস্ট জয় এখনো অধরা বাংলাদেশের। ১৩ টেস্ট খেলে ১১ টিতেই হার। এর মধ্যে পাঁচটিতে হার ইনিংস ব্যবধানে। ২০০৭ সালে চট্টগ্রামে ও ২০১৫ সালে ফতুল্লায় যে দুটি টেস্ট ড্র করেছে, তাতে ছিল বৃষ্টির আশীর্বাদ।</div><div><br></div><div>কিন্তু কখনো হারাতে পারেনি বলে যে এবারও পারবে না বাংলাদেশ, এমন তো কোনো কথা নেই। মাসখানেক আগে টেস্টে পাকিস্তানের বিপক্ষেও বাংলাদেশের পরিসংখ্যান এমনই ছিল। ১৩ টেস্ট খেলে ১২টিতে হার, একটি ড্র। সেই বাংলাদেশ সর্বশেষ পাকিস্তান সফরে সিরিজ জিতেছে দাপটের সঙ্গে, পাকিস্তানকে ধবলধোলাই করেছে ২-০ ব্যবধানে।ভারতের বিপক্ষে টেস্ট জয় এখনো অধরা বাংলাদেশের। ১৩ টেস্ট খেলে ১১ টিতেই হার। এর মধ্যে পাঁচটিতে হার ইনিংস ব্যবধানে। ২০০৭ সালে চট্টগ্রামে ও ২০১৫ সালে ফতুল্লায় যে দুটি টেস্ট ড্র করেছে, তাতে ছিল বৃষ্টির আশীর্বাদ।</div><div><br></div><div>কিন্তু কখনো হারাতে পারেনি বলে যে এবারও পারবে না বাংলাদেশ, এমন তো কোনো কথা নেই। মাসখানেক আগে টেস্টে পাকিস্তানের বিপক্ষেও বাংলাদেশের পরিসংখ্যান এমনই ছিল। ১৩ টেস্ট খেলে ১২টিতে হার, একটি ড্র। সেই বাংলাদেশ সর্বশেষ পাকিস্তান সফরে সিরিজ জিতেছে দাপটের সঙ্গে, পাকিস্তানকে ধবলধোলাই করেছে ২-০ ব্যবধানে।ভারতের বিপক্ষে টেস্ট জয় এখনো অধরা বাংলাদেশের। ১৩ টেস্ট খেলে ১১ টিতেই হার। এর মধ্যে পাঁচটিতে হার ইনিংস ব্যবধানে। ২০০৭ সালে চট্টগ্রামে ও ২০১৫ সালে ফতুল্লায় যে দুটি টেস্ট ড্র করেছে, তাতে ছিল বৃষ্টির আশীর্বাদ।</div><div><br></div><div>কিন্তু কখনো হারাতে পারেনি বলে যে এবারও পারবে না বাংলাদেশ, এমন তো কোনো কথা নেই। মাসখানেক আগে টেস্টে পাকিস্তানের বিপক্ষেও বাংলাদেশের পরিসংখ্যান এমনই ছিল। ১৩ টেস্ট খেলে ১২টিতে হার, একটি ড্র। সেই বাংলাদেশ সর্বশেষ পাকিস্তান সফরে সিরিজ জিতেছে দাপটের সঙ্গে, পাকিস্তানকে ধবলধোলাই করেছে ২-০ ব্যবধানে।ভারতের বিপক্ষে টেস্ট জয় এখনো অধরা বাংলাদেশের। ১৩ টেস্ট খেলে ১১ টিতেই হার। এর মধ্যে পাঁচটিতে হার ইনিংস ব্যবধানে। ২০০৭ সালে চট্টগ্রামে ও ২০১৫ সালে ফতুল্লায় যে দুটি টেস্ট ড্র করেছে, তাতে ছিল বৃষ্টির আশীর্বাদ।</div><div><br></div><div>কিন্তু কখনো হারাতে পারেনি বলে যে এবারও পারবে না বাংলাদেশ, এমন তো কোনো কথা নেই। মাসখানেক আগে টেস্টে পাকিস্তানের বিপক্ষেও বাংলাদেশের পরিসংখ্যান এমনই ছিল। ১৩ টেস্ট খেলে ১২টিতে হার, একটি ড্র। সেই বাংলাদেশ সর্বশেষ পাকিস্তান সফরে সিরিজ জিতেছে দাপটের সঙ্গে, পাকিস্তানকে ধবলধোলাই করেছে ২-০ ব্যবধানে।ভারতের বিপক্ষে টেস্ট জয় এখনো অধরা বাংলাদেশের। ১৩ টেস্ট খেলে ১১ টিতেই হার। এর মধ্যে পাঁচটিতে হার ইনিংস ব্যবধানে। ২০০৭ সালে চট্টগ্রামে ও ২০১৫ সালে ফতুল্লায় যে দুটি টেস্ট ড্র করেছে, তাতে ছিল বৃষ্টির আশীর্বাদ।</div><div><br></div><div>কিন্তু কখনো হারাতে পারেনি বলে যে এবারও পারবে না বাংলাদেশ, এমন তো কোনো কথা নেই। মাসখানেক আগে টেস্টে পাকিস্তানের বিপক্ষেও বাংলাদেশের পরিসংখ্যান এমনই ছিল। ১৩ টেস্ট খেলে ১২টিতে হার, একটি ড্র। সেই বাংলাদেশ সর্বশেষ পাকিস্তান সফরে সিরিজ জিতেছে দাপটের সঙ্গে, পাকিস্তানকে ধবলধোলাই করেছে ২-০ ব্যবধানে।</div>', '1726593761UzEj2YG4.jpg', NULL, NULL, NULL, NULL, 71, NULL, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-18 00:22:41', '2024-09-18 00:22:41', 'ভারতের বিপক্ষে টেস্ট জয় এখনো অধরা বাংলাদেশের। ১৩ টেস্ট খেলে ১১ টিতেই হার। এর মধ্যে পাঁচটিতে হার ইনিংস ব্যবধানে। ২০০৭ সালে চট্টগ্রামে ও ২০১৫ সালে ফতুল্লায় যে দুটি টেস্ট ড্র করেছে, তাতে ছিল বৃষ্টির আশীর্বাদ।', NULL, '‘ভারতকে হারিয়ে সবাই মজা পায়, মজা নিতে দিন’', NULL, 0),
(489, 2, 'আসুন, পচা অতীত নিয়ে চর্চা না করে ঐক্যবদ্ধভাবে এগোনোর রূপরেখা তৈরি করি: জামায়াতের আমির', 'আসুন,-পচা-অতীত-নিয়ে-চর্চা-না-করে-ঐক্যবদ্ধভাবে-এগোনোর-রূপরেখা-তৈরি-করি:-জামায়াতের-আমির', 'article', 'আসুন, পচা অতীত নিয়ে চর্চা না করে ঐক্যবদ্ধভাবে এগোনোর রূপরেখা তৈরি করি: জামায়াতের আমির', 0, 1, 1, 0, 1, 1, 0, 'আসুন, পচা অতীত নিয়ে চর্চা না করে ঐক্যবদ্ধভাবে এগোনোর রূপরেখা তৈরি করি: জামায়াতের আমির', '<div style=\"text-align: justify;\">জাতি হিসেবে ঐক্যবদ্ধভাবে এগিয়ে যাওয়ার ‘রোডম্যাপ’ তৈরির আহ্বান জানিয়েছেন জামায়াতে ইসলামীর আমির শফিকুর রহমান। তিনি বলেছেন, ‘আসুন, পচা পেছনটাকে (অতীত) পেছনে ফেলে দিই। এটা নিয়ে আর চর্চা না করি। এখন জাতি হিসেবে ঐক্যবদ্ধভাবে কীভাবে এগোব, সেই রোডম্যাপ (রূপরেখা) তৈরি করি।’</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">রাজধানীর তেজগাঁওয়ের একটি রেস্তোরাঁয় আজ মঙ্গলবার দুপুরে সাংবাদিকদের সঙ্গে মতবিনিময় সভায় প্রধান অতিথির বক্তব্যে শফিকুর রহমান এ কথা বলেন।জাতি হিসেবে ঐক্যবদ্ধভাবে এগিয়ে যাওয়ার ‘রোডম্যাপ’ তৈরির আহ্বান জানিয়েছেন জামায়াতে ইসলামীর আমির শফিকুর রহমান। তিনি বলেছেন, ‘আসুন, পচা পেছনটাকে (অতীত) পেছনে ফেলে দিই। এটা নিয়ে আর চর্চা না করি। এখন জাতি হিসেবে ঐক্যবদ্ধভাবে কীভাবে এগোব, সেই রোডম্যাপ (রূপরেখা) তৈরি করি।’</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">রাজধানীর তেজগাঁওয়ের একটি রেস্তোরাঁয় আজ মঙ্গলবার দুপুরে সাংবাদিকদের সঙ্গে মতবিনিময় সভায় প্রধান অতিথির বক্তব্যে শফিকুর রহমান এ কথা বলেন।জাতি হিসেবে ঐক্যবদ্ধভাবে এগিয়ে যাওয়ার ‘রোডম্যাপ’ তৈরির আহ্বান জানিয়েছেন জামায়াতে ইসলামীর আমির শফিকুর রহমান। তিনি বলেছেন, ‘আসুন, পচা পেছনটাকে (অতীত) পেছনে ফেলে দিই। এটা নিয়ে আর চর্চা না করি। এখন জাতি হিসেবে ঐক্যবদ্ধভাবে কীভাবে এগোব, সেই রোডম্যাপ (রূপরেখা) তৈরি করি।’</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">রাজধানীর তেজগাঁওয়ের একটি রেস্তোরাঁয় আজ মঙ্গলবার দুপুরে সাংবাদিকদের সঙ্গে মতবিনিময় সভায় প্রধান অতিথির বক্তব্যে শফিকুর রহমান এ কথা বলেন।জাতি হিসেবে ঐক্যবদ্ধভাবে এগিয়ে যাওয়ার ‘রোডম্যাপ’ তৈরির আহ্বান জানিয়েছেন জামায়াতে ইসলামীর আমির শফিকুর রহমান। তিনি বলেছেন, ‘আসুন, পচা পেছনটাকে (অতীত) পেছনে ফেলে দিই। এটা নিয়ে আর চর্চা না করি। এখন জাতি হিসেবে ঐক্যবদ্ধভাবে কীভাবে এগোব, সেই রোডম্যাপ (রূপরেখা) তৈরি করি।’</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">রাজধানীর তেজগাঁওয়ের একটি রেস্তোরাঁয় আজ মঙ্গলবার দুপুরে সাংবাদিকদের সঙ্গে মতবিনিময় সভায় প্রধান অতিথির বক্তব্যে শফিকুর রহমান এ কথা বলেন।জাতি হিসেবে ঐক্যবদ্ধভাবে এগিয়ে যাওয়ার ‘রোডম্যাপ’ তৈরির আহ্বান জানিয়েছেন জামায়াতে ইসলামীর আমির শফিকুর রহমান। তিনি বলেছেন, ‘আসুন, পচা পেছনটাকে (অতীত) পেছনে ফেলে দিই। এটা নিয়ে আর চর্চা না করি। এখন জাতি হিসেবে ঐক্যবদ্ধভাবে কীভাবে এগোব, সেই রোডম্যাপ (রূপরেখা) তৈরি করি।’</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">রাজধানীর তেজগাঁওয়ের একটি রেস্তোরাঁয় আজ মঙ্গলবার দুপুরে সাংবাদিকদের সঙ্গে মতবিনিময় সভায় প্রধান অতিথির বক্তব্যে শফিকুর রহমান এ কথা বলেন।</div>', '1726594959tyYBsRko.jpg', NULL, NULL, NULL, NULL, 72, NULL, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-18 11:51:06', '2024-09-18 18:51:06', 'জাতি হিসেবে ঐক্যবদ্ধভাবে এগিয়ে যাওয়ার ‘রোডম্যাপ’ তৈরির আহ্বান জানিয়েছেন জামায়াতে ইসলামীর আমির শফিকুর রহমান। তিনি বলেছেন, ‘আসুন, পচা পেছনটাকে (অতীত) পেছনে ফেলে দিই। এটা নিয়ে আর চর্চা না করি।', NULL, 'আসুন, পচা অতীত নিয়ে চর্চা না করে ঐক্যবদ্ধভাবে এগোনোর রূপরেখা তৈরি করি: জামায়াতের আমির', NULL, 0),
(490, 2, 'দূর থেকে স্পর্শ করতে সহায়তা করবে নতুন যন্ত্র', 'দূর-থেকে-স্পর্শ-করতে-সহায়তা-করবে-নতুন-যন্ত্র', 'article', 'দূর থেকে স্পর্শ করতে সহায়তা করবে নতুন যন্ত্র', 0, 1, 1, 0, 1, 1, 0, 'দূর থেকে স্পর্শ করতে সহায়তা করবে নতুন যন্ত্র', '<div style=\"text-align: justify;\">বলুন তো, দূরত্ব যতই হোক না কেন প্রেম কি আটকানো যায়? দূরত্ব কমাতে একসময় চিঠির প্রচলন ছিল। এরপর টেলিগ্রাফ ও টেলিফোন আর হাল জমানায় এসেছে মুঠোফোন, ইন্টারনেট, কত–কী! এসেছে ভিডিও কল। তাতেও যেন মানুষের মন ভরে না। শিগগিরই হাজার হাজার মাইল দূরে থাকা প্রিয়জনের হাত ধরে রাখতে পারবেন, এমনই এক প্রযুক্তি নিয়ে কাজ করছেন বিজ্ঞানীরা। নতুন এই যন্ত্রের মাধ্যমে প্রিয়জনের হাত ধরার অনুভূতি পাওয়া যাবে দূর থেকেই। বিজ্ঞানীরা আঙুলের স্পর্শের অনুভূতি দেয়, এমন এক যন্ত্রের নকশা করেছেন। এই যন্ত্র স্পর্শের বাস্তব অনুভূতি দিতে পারবে হাজার মাইল দূর থেকে।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">মানবদেহের অন্যতম জটিল অনুভূতি স্পর্শকে প্রযুক্তির গণ্ডিতে অনেক দিন ধরেই আনার চেষ্টা চলছে। সেই গবেষণার অংশ হিসেবে নতুন এক যন্ত্র তৈরি করা হচ্ছে। ‘বায়োইনস্পায়ার্ড হ্যাপটিক’ নামের কৌশলে গতি ও শক্তির কম্পন ব্যবহার করে মানুষের আঙুলের চারটি স্পর্শ রিসেপ্টর বা সংবেদনশীল প্রোটিনের অনুকরণে কাজ করবে এটি। এই প্রযুক্তি ব্যবহার করে একটি গ্লাভস বা যান্ত্রিক হাতমোজা তৈরি করতে চান বিজ্ঞানীরা। এটি দূরবর্তী সামাজিক মিথস্ক্রিয়া ও হাত ধরার মতো অনুভূতি তৈরি করতে সক্ষম হবে। বাস্তব জীবনের সংবেদনশীলতার মতো প্রাকৃতিক স্পর্শকে অনুকরণ করতে পারে এই যন্ত্র। যন্ত্রটি স্নায়ু কোষকে উদ্দীপিত করার মধ্য দিয়ে কাজ করে।বলুন তো, দূরত্ব যতই হোক না কেন প্রেম কি আটকানো যায়? দূরত্ব কমাতে একসময় চিঠির প্রচলন ছিল। এরপর টেলিগ্রাফ ও টেলিফোন আর হাল জমানায় এসেছে মুঠোফোন, ইন্টারনেট, কত–কী! এসেছে ভিডিও কল। তাতেও যেন মানুষের মন ভরে না। শিগগিরই হাজার হাজার মাইল দূরে থাকা প্রিয়জনের হাত ধরে রাখতে পারবেন, এমনই এক প্রযুক্তি নিয়ে কাজ করছেন বিজ্ঞানীরা। নতুন এই যন্ত্রের মাধ্যমে প্রিয়জনের হাত ধরার অনুভূতি পাওয়া যাবে দূর থেকেই। বিজ্ঞানীরা আঙুলের স্পর্শের অনুভূতি দেয়, এমন এক যন্ত্রের নকশা করেছেন। এই যন্ত্র স্পর্শের বাস্তব অনুভূতি দিতে পারবে হাজার মাইল দূর থেকে।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">মানবদেহের অন্যতম জটিল অনুভূতি স্পর্শকে প্রযুক্তির গণ্ডিতে অনেক দিন ধরেই আনার চেষ্টা চলছে। সেই গবেষণার অংশ হিসেবে নতুন এক যন্ত্র তৈরি করা হচ্ছে। ‘বায়োইনস্পায়ার্ড হ্যাপটিক’ নামের কৌশলে গতি ও শক্তির কম্পন ব্যবহার করে মানুষের আঙুলের চারটি স্পর্শ রিসেপ্টর বা সংবেদনশীল প্রোটিনের অনুকরণে কাজ করবে এটি। এই প্রযুক্তি ব্যবহার করে একটি গ্লাভস বা যান্ত্রিক হাতমোজা তৈরি করতে চান বিজ্ঞানীরা। এটি দূরবর্তী সামাজিক মিথস্ক্রিয়া ও হাত ধরার মতো অনুভূতি তৈরি করতে সক্ষম হবে। বাস্তব জীবনের সংবেদনশীলতার মতো প্রাকৃতিক স্পর্শকে অনুকরণ করতে পারে এই যন্ত্র। যন্ত্রটি স্নায়ু কোষকে উদ্দীপিত করার মধ্য দিয়ে কাজ করে।</div>', '1726664368zk7D0gVs.jpg', NULL, NULL, NULL, NULL, 67, NULL, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-18 19:59:28', '2024-09-18 19:59:28', 'বলুন তো, দূরত্ব যতই হোক না কেন প্রেম কি আটকানো যায়? দূরত্ব কমাতে একসময় চিঠির প্রচলন ছিল। এরপর টেলিগ্রাফ ও টেলিফোন আর হাল জমানায় এসেছে মুঠোফোন, ইন্টারনেট, কত–কী! এসেছে ভিডিও কল। তাতেও যেন মানুষের মন ভরে না।', NULL, 'দূর থেকে স্পর্শ করতে সহায়তা করবে নতুন যন্ত্র', NULL, 0),
(491, 2, 'আইফোনে এল আরসিএসে বার্তা আদান-প্রদানের সুবিধা', 'আইফোনে-এল-আরসিএসে-বার্তা-আদান-প্রদানের-সুবিধা', 'article', 'আইফোনে এল আরসিএসে বার্তা আদান-প্রদানের সুবিধা', 0, 1, 1, 0, 1, 1, 0, 'আইফোনে এল আরসিএসে বার্তা আদান-প্রদানের সুবিধা', '<div style=\"text-align: justify;\"><b>আইওএস ১৮ অপারেটিং সিস্টেম ছাড়ার পরে আইফোনে যুক্ত হলো ‘রিচ কমিউনিকেশন সার্ভিসেস (আরসিএস) মেসেজিং’ সুবিধা। ফলে এখন আইফোনেও অ্যান্ড্রয়েডের মতো রিচ টেক্সট ফরম্যাটের (আরটিএফ) বার্তা পাঠানো যাবে।</b></div><div style=\"text-align: justify;\"><b><br></b></div><div style=\"text-align: justify;\"><b>কয়েক বছর আগে খুদে বার্তা বা এসএমএসের একটি উন্নত সংস্করণ চালু করে গুগল। এ সুবিধার নাম দেওয়া হয়েছে ‘রিচ কমিউনিকেশন সার্ভিস’ বা আরসিএস। আরসিএস–সুবিধার মাধ্যমে ফোন থেকে এসএমএসের মাধ্যমে রিচ কনটেন্ট পাঠানো যায়। অর্থাৎ আরসিএস–সুবিধা চালু থাকলে স্মার্টফোন থেকে এসএমএসের মাধ্যমে বড় আকারের ফাইল সংযুক্তি হিসেবে পাঠানো যাবে। উচ্চমানের ছবি ও ভিডিও পাঠাতে পারবেন ব্যবহারকারীরা। পাশাপাশি অডিও বার্তাও পাঠানো যাবে। শুধু তা–ই নয়, আরসিএস চালু থাকলে প্রাপক এসএমএস পেয়েছেন কি না, তা নিশ্চিত হওয়া যাবে রিড রিসিটের মাধ্যমে। প্রাপক এসএমএস পড়লে বা দেখলে বার্তার পাশে দুই টিক চিহ্ন দেখা যাবে। বিনিময় করা বার্তায় ইমোজি দিয়ে প্রতিক্রিয়া জানানো যাবে এবং গ্রুপ চ্যাটও করা যাবে। তবে অবশ্যই প্রাপকের স্মার্টফোনেও আরসিএস–সুবিধা চালু থাকতে হবে।আইওএস ১৮ অপারেটিং সিস্টেম ছাড়ার পরে আইফোনে যুক্ত হলো ‘রিচ কমিউনিকেশন সার্ভিসেস (আরসিএস) মেসেজিং’ সুবিধা। ফলে এখন আইফোনেও অ্যান্ড্রয়েডের মতো রিচ টেক্সট ফরম্যাটের (আরটিএফ) বার্তা পাঠানো যাবে।</b></div><div style=\"text-align: justify;\"><b><br></b></div><div style=\"text-align: justify;\"><b>কয়েক বছর আগে খুদে বার্তা বা এসএমএসের একটি উন্নত সংস্করণ চালু করে গুগল। এ সুবিধার নাম দেওয়া হয়েছে ‘রিচ কমিউনিকেশন সার্ভিস’ বা আরসিএস। আরসিএস–সুবিধার মাধ্যমে ফোন থেকে এসএমএসের মাধ্যমে রিচ কনটেন্ট পাঠানো যায়। অর্থাৎ আরসিএস–সুবিধা চালু থাকলে স্মার্টফোন থেকে এসএমএসের মাধ্যমে বড় আকারের ফাইল সংযুক্তি হিসেবে পাঠানো যাবে। উচ্চমানের ছবি ও ভিডিও পাঠাতে পারবেন ব্যবহারকারীরা। পাশাপাশি অডিও বার্তাও পাঠানো যাবে। শুধু তা–ই নয়, আরসিএস চালু থাকলে প্রাপক এসএমএস পেয়েছেন কি না, তা নিশ্চিত হওয়া যাবে রিড রিসিটের মাধ্যমে। প্রাপক এসএমএস পড়লে বা দেখলে বার্তার পাশে দুই টিক চিহ্ন দেখা যাবে। বিনিময় করা বার্তায় ইমোজি দিয়ে প্রতিক্রিয়া জানানো যাবে এবং গ্রুপ চ্যাটও করা যাবে। তবে অবশ্যই প্রাপকের স্মার্টফোনেও আরসিএস–সুবিধা চালু থাকতে হবে।আইওএস ১৮ অপারেটিং সিস্টেম ছাড়ার পরে আইফোনে যুক্ত হলো ‘রিচ কমিউনিকেশন সার্ভিসেস (আরসিএস) মেসেজিং’ সুবিধা। ফলে এখন আইফোনেও অ্যান্ড্রয়েডের মতো রিচ টেক্সট ফরম্যাটের (আরটিএফ) বার্তা পাঠানো যাবে।</b></div><div style=\"text-align: justify;\"><b><br></b></div><div style=\"text-align: justify;\"><b>কয়েক বছর আগে খুদে বার্তা বা এসএমএসের একটি উন্নত সংস্করণ চালু করে গুগল। এ সুবিধার নাম দেওয়া হয়েছে ‘রিচ কমিউনিকেশন সার্ভিস’ বা আরসিএস। আরসিএস–সুবিধার মাধ্যমে ফোন থেকে এসএমএসের মাধ্যমে রিচ কনটেন্ট পাঠানো যায়। অর্থাৎ আরসিএস–সুবিধা চালু থাকলে স্মার্টফোন থেকে এসএমএসের মাধ্যমে বড় আকারের ফাইল সংযুক্তি হিসেবে পাঠানো যাবে। উচ্চমানের ছবি ও ভিডিও পাঠাতে পারবেন ব্যবহারকারীরা। পাশাপাশি অডিও বার্তাও পাঠানো যাবে। শুধু তা–ই নয়, আরসিএস চালু থাকলে প্রাপক এসএমএস পেয়েছেন কি না, তা নিশ্চিত হওয়া যাবে রিড রিসিটের মাধ্যমে। প্রাপক এসএমএস পড়লে বা দেখলে বার্তার পাশে দুই টিক চিহ্ন দেখা যাবে। বিনিময় করা বার্তায় ইমোজি দিয়ে প্রতিক্রিয়া জানানো যাবে এবং গ্রুপ চ্যাটও করা যাবে। তবে অবশ্যই প্রাপকের স্মার্টফোনেও আরসিএস–সুবিধা চালু থাকতে হবে।আইওএস ১৮ অপারেটিং সিস্টেম ছাড়ার পরে আইফোনে যুক্ত হলো ‘রিচ কমিউনিকেশন সার্ভিসেস (আরসিএস) মেসেজিং’ সুবিধা। ফলে এখন আইফোনেও অ্যান্ড্রয়েডের মতো রিচ টেক্সট ফরম্যাটের (আরটিএফ) বার্তা পাঠানো যাবে।</b></div><div style=\"text-align: justify;\"><b><br></b></div><div style=\"text-align: justify;\"><b>কয়েক বছর আগে খুদে বার্তা বা এসএমএসের একটি উন্নত সংস্করণ চালু করে গুগল। এ সুবিধার নাম দেওয়া হয়েছে ‘রিচ কমিউনিকেশন সার্ভিস’ বা আরসিএস। আরসিএস–সুবিধার মাধ্যমে ফোন থেকে এসএমএসের মাধ্যমে রিচ কনটেন্ট পাঠানো যায়। অর্থাৎ আরসিএস–সুবিধা চালু থাকলে স্মার্টফোন থেকে এসএমএসের মাধ্যমে বড় আকারের ফাইল সংযুক্তি হিসেবে পাঠানো যাবে। উচ্চমানের ছবি ও ভিডিও পাঠাতে পারবেন ব্যবহারকারীরা। পাশাপাশি অডিও বার্তাও পাঠানো যাবে। শুধু তা–ই নয়, আরসিএস চালু থাকলে প্রাপক এসএমএস পেয়েছেন কি না, তা নিশ্চিত হওয়া যাবে রিড রিসিটের মাধ্যমে। প্রাপক এসএমএস পড়লে বা দেখলে বার্তার পাশে দুই টিক চিহ্ন দেখা যাবে। বিনিময় করা বার্তায় ইমোজি দিয়ে প্রতিক্রিয়া জানানো যাবে এবং গ্রুপ চ্যাটও করা যাবে। তবে অবশ্যই প্রাপকের স্মার্টফোনেও আরসিএস–সুবিধা চালু থাকতে হবে।আইওএস ১৮ অপারেটিং সিস্টেম ছাড়ার পরে আইফোনে যুক্ত হলো ‘রিচ কমিউনিকেশন সার্ভিসেস (আরসিএস) মেসেজিং’ সুবিধা। ফলে এখন আইফোনেও অ্যান্ড্রয়েডের মতো রিচ টেক্সট ফরম্যাটের (আরটিএফ) বার্তা পাঠানো যাবে।</b></div><div style=\"text-align: justify;\"><b><br></b></div><div style=\"text-align: justify;\"><b>কয়েক বছর আগে খুদে বার্তা বা এসএমএসের একটি উন্নত সংস্করণ চালু করে গুগল। এ সুবিধার নাম দেওয়া হয়েছে ‘রিচ কমিউনিকেশন সার্ভিস’ বা আরসিএস। আরসিএস–সুবিধার মাধ্যমে ফোন থেকে এসএমএসের মাধ্যমে রিচ কনটেন্ট পাঠানো যায়। অর্থাৎ আরসিএস–সুবিধা চালু থাকলে স্মার্টফোন থেকে এসএমএসের মাধ্যমে বড় আকারের ফাইল সংযুক্তি হিসেবে পাঠানো যাবে। উচ্চমানের ছবি ও ভিডিও পাঠাতে পারবেন ব্যবহারকারীরা। পাশাপাশি অডিও বার্তাও পাঠানো যাবে। শুধু তা–ই নয়, আরসিএস চালু থাকলে প্রাপক এসএমএস পেয়েছেন কি না, তা নিশ্চিত হওয়া যাবে রিড রিসিটের মাধ্যমে। প্রাপক এসএমএস পড়লে বা দেখলে বার্তার পাশে দুই টিক চিহ্ন দেখা যাবে। বিনিময় করা বার্তায় ইমোজি দিয়ে প্রতিক্রিয়া জানানো যাবে এবং গ্রুপ চ্যাটও করা যাবে। তবে অবশ্যই প্রাপকের স্মার্টফোনেও আরসিএস–সুবিধা চালু থাকতে হবে।</b></div>', '1726664588aQ5DorbA.jpg', NULL, NULL, NULL, NULL, 67, NULL, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-18 20:03:08', '2024-09-18 20:03:08', 'আইওএস ১৮ অপারেটিং সিস্টেম ছাড়ার পরে আইফোনে যুক্ত হলো ‘রিচ কমিউনিকেশন সার্ভিসেস (আরসিএস) মেসেজিং’ সুবিধা। ফলে এখন আইফোনেও অ্যান্ড্রয়েডের মতো রিচ টেক্সট ফরম্যাটের (আরটিএফ) বার্তা পাঠানো যাবে।', NULL, 'আইফোনে এল আরসিএসে বার্তা আদান-প্রদানের সুবিধা', NULL, 0),
(492, 2, 'হোয়াটসঅ্যাপে মেটা এআই চ্যাটবটের কণ্ঠস্বর পরিবর্তন করে কথা বলা যাবে', 'হোয়াটসঅ্যাপে-মেটা-এআই-চ্যাটবটের-কণ্ঠস্বর-পরিবর্তন-করে-কথা-বলা-যাবে', 'article', 'হোয়াটসঅ্যাপে মেটা এআই চ্যাটবটের কণ্ঠস্বর পরিবর্তন করে কথা বলা যাবে', 0, 1, 1, 0, 1, 1, 0, 'হোয়াটসঅ্যাপে মেটা এআই চ্যাটবটের কণ্ঠস্বর পরিবর্তন করে কথা বলা যাবে', '<div style=\"text-align: justify;\">কৃত্রিম বুদ্ধিমত্তা প্রযুক্তিনির্ভর (এআই) টু ওয়ে ভয়েস চ্যাট–সুবিধা চালু করতে যাচ্ছে হোয়াটসঅ্যাপ। এ সুবিধা চালু হলে হোয়াটসঅ্যাপ ব্যবহারকারীরা মেটা এআই চ্যাটবটের সঙ্গে নিজেদের পছন্দের কণ্ঠস্বরে কথোপকথন করতে পারবেন। অর্থাৎ ব্যবহারকারীরা কোনো প্রশ্ন করলেই জনপ্রিয় বিভিন্ন ব্যক্তি বা তারকার কণ্ঠস্বরে উত্তর দেবে মেটা এআই চ্যাটবট। এর ফলে মেটা এআই চ্যাটবটের সঙ্গে কথোপকথন স্বচ্ছন্দে করা যাবে বলে এক প্রতিবেদনে জানিয়েছে হোয়াটসঅ্যাপের বিভিন্ন সুবিধা নিয়ে কাজ করা প্রতিষ্ঠান ডব্লিউএবেটা ইনফো।কৃত্রিম বুদ্ধিমত্তা প্রযুক্তিনির্ভর (এআই) টু ওয়ে ভয়েস চ্যাট–সুবিধা চালু করতে যাচ্ছে হোয়াটসঅ্যাপ। এ সুবিধা চালু হলে হোয়াটসঅ্যাপ ব্যবহারকারীরা মেটা এআই চ্যাটবটের সঙ্গে নিজেদের পছন্দের কণ্ঠস্বরে কথোপকথন করতে পারবেন। অর্থাৎ ব্যবহারকারীরা কোনো প্রশ্ন করলেই জনপ্রিয় বিভিন্ন ব্যক্তি বা তারকার কণ্ঠস্বরে উত্তর দেবে মেটা এআই চ্যাটবট। এর ফলে মেটা এআই চ্যাটবটের সঙ্গে কথোপকথন স্বচ্ছন্দে করা যাবে বলে এক প্রতিবেদনে জানিয়েছে হোয়াটসঅ্যাপের বিভিন্ন সুবিধা নিয়ে কাজ করা প্রতিষ্ঠান ডব্লিউএবেটা ইনফো।কৃত্রিম বুদ্ধিমত্তা প্রযুক্তিনির্ভর (এআই) টু ওয়ে ভয়েস চ্যাট–সুবিধা চালু করতে যাচ্ছে হোয়াটসঅ্যাপ। এ সুবিধা চালু হলে হোয়াটসঅ্যাপ ব্যবহারকারীরা মেটা এআই চ্যাটবটের সঙ্গে নিজেদের পছন্দের কণ্ঠস্বরে কথোপকথন করতে পারবেন। অর্থাৎ ব্যবহারকারীরা কোনো প্রশ্ন করলেই জনপ্রিয় বিভিন্ন ব্যক্তি বা তারকার কণ্ঠস্বরে উত্তর দেবে মেটা এআই চ্যাটবট। এর ফলে মেটা এআই চ্যাটবটের সঙ্গে কথোপকথন স্বচ্ছন্দে করা যাবে বলে এক প্রতিবেদনে জানিয়েছে হোয়াটসঅ্যাপের বিভিন্ন সুবিধা নিয়ে কাজ করা প্রতিষ্ঠান ডব্লিউএবেটা ইনফো।কৃত্রিম বুদ্ধিমত্তা প্রযুক্তিনির্ভর (এআই) টু ওয়ে ভয়েস চ্যাট–সুবিধা চালু করতে যাচ্ছে হোয়াটসঅ্যাপ। এ সুবিধা চালু হলে হোয়াটসঅ্যাপ ব্যবহারকারীরা মেটা এআই চ্যাটবটের সঙ্গে নিজেদের পছন্দের কণ্ঠস্বরে কথোপকথন করতে পারবেন। অর্থাৎ ব্যবহারকারীরা কোনো প্রশ্ন করলেই জনপ্রিয় বিভিন্ন ব্যক্তি বা তারকার কণ্ঠস্বরে উত্তর দেবে মেটা এআই চ্যাটবট। এর ফলে মেটা এআই চ্যাটবটের সঙ্গে কথোপকথন স্বচ্ছন্দে করা যাবে বলে এক প্রতিবেদনে জানিয়েছে হোয়াটসঅ্যাপের বিভিন্ন সুবিধা নিয়ে কাজ করা প্রতিষ্ঠান ডব্লিউএবেটা ইনফো।কৃত্রিম বুদ্ধিমত্তা প্রযুক্তিনির্ভর (এআই) টু ওয়ে ভয়েস চ্যাট–সুবিধা চালু করতে যাচ্ছে হোয়াটসঅ্যাপ। এ সুবিধা চালু হলে হোয়াটসঅ্যাপ ব্যবহারকারীরা মেটা এআই চ্যাটবটের সঙ্গে নিজেদের পছন্দের কণ্ঠস্বরে কথোপকথন করতে পারবেন। অর্থাৎ ব্যবহারকারীরা কোনো প্রশ্ন করলেই জনপ্রিয় বিভিন্ন ব্যক্তি বা তারকার কণ্ঠস্বরে উত্তর দেবে মেটা এআই চ্যাটবট। এর ফলে মেটা এআই চ্যাটবটের সঙ্গে কথোপকথন স্বচ্ছন্দে করা যাবে বলে এক প্রতিবেদনে জানিয়েছে হোয়াটসঅ্যাপের বিভিন্ন সুবিধা নিয়ে কাজ করা প্রতিষ্ঠান ডব্লিউএবেটা ইনফো।কৃত্রিম বুদ্ধিমত্তা প্রযুক্তিনির্ভর (এআই) টু ওয়ে ভয়েস চ্যাট–সুবিধা চালু করতে যাচ্ছে হোয়াটসঅ্যাপ। এ সুবিধা চালু হলে হোয়াটসঅ্যাপ ব্যবহারকারীরা মেটা এআই চ্যাটবটের সঙ্গে নিজেদের পছন্দের কণ্ঠস্বরে কথোপকথন করতে পারবেন। অর্থাৎ ব্যবহারকারীরা কোনো প্রশ্ন করলেই জনপ্রিয় বিভিন্ন ব্যক্তি বা তারকার কণ্ঠস্বরে উত্তর দেবে মেটা এআই চ্যাটবট। এর ফলে মেটা এআই চ্যাটবটের সঙ্গে কথোপকথন স্বচ্ছন্দে করা যাবে বলে এক প্রতিবেদনে জানিয়েছে হোয়াটসঅ্যাপের বিভিন্ন সুবিধা নিয়ে কাজ করা প্রতিষ্ঠান ডব্লিউএবেটা ইনফো।</div>', '1726664792B62KQRwS.jpg', NULL, NULL, NULL, NULL, 67, NULL, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-18 13:07:25', '2024-09-18 20:07:25', 'কৃত্রিম বুদ্ধিমত্তা প্রযুক্তিনির্ভর (এআই) টু ওয়ে ভয়েস চ্যাট–সুবিধা চালু করতে যাচ্ছে হোয়াটসঅ্যাপ। এ সুবিধা চালু হলে হোয়াটসঅ্যাপ ব্যবহারকারীরা মেটা এআই চ্যাটবটের সঙ্গে নিজেদের পছন্দের কণ্ঠস্বরে কথোপকথন করতে পারবেন।', NULL, 'হোয়াটসঅ্যাপে মেটা এআই চ্যাটবটের কণ্ঠস্বর পরিবর্তন করে কথা বলা যাবে', NULL, 0),
(493, 2, 'সামাজিক যোগাযোগমাধ্যমে ভুয়া ভিডিওর মাধ্যমে ছড়াচ্ছে স্বাস্থ্যবিষয়ক বিপজ্জনক তথ্য', 'সামাজিক-যোগাযোগমাধ্যমে-ভুয়া-ভিডিওর-মাধ্যমে-ছড়াচ্ছে-স্বাস্থ্যবিষয়ক-বিপজ্জনক-তথ্য', 'article', 'সামাজিক যোগাযোগমাধ্যমে ভুয়া ভিডিওর মাধ্যমে ছড়াচ্ছে স্বাস্থ্যবিষয়ক বিপজ্জনক তথ্য', 0, 1, 1, 0, 1, 1, 0, 'সামাজিক যোগাযোগমাধ্যমে ভুয়া ভিডিওর মাধ্যমে ছড়াচ্ছে স্বাস্থ্যবিষয়ক বিপজ্জনক তথ্য', '<div>কৃত্রিম বুদ্ধিমত্তা প্রযুক্তি ব্যবহার করে তৈরি ডিপফেক বা ভুয়া ভিডিওর মাধ্যমে সামাজিক যোগাযোগমাধ্যমে স্বাস্থ্যবিষয়ক বিপজ্জনক তথ্য ছড়াচ্ছে। এসব তথ্যকে বিশ্বাসযোগ্য করতে চিকিৎসকদের নকল বা ডিপফেক ভিডিও জুড়ে দেওয়া হচ্ছে। শুধু তা–ই নয়, সুপরিচিত চিকিৎসকদের নকল ফুটেজ এসব ভিডিওতে যুক্ত করে ক্ষতিকর চিকিৎসাপণ্যের প্রচারণাও চালানো হচ্ছে বলে এক প্রতিবেদনে জানিয়েছে এএফপি।</div><div>এএফপির প্রতিবেদনের তথ্যমতে, বৈজ্ঞানিক প্রমাণ ছাড়াই ভুয়া ভিডিওগুলোতে ডায়াবেটিসের জন্য প্রাকৃতিক পথ্যের তথ্য দেওয়া হচ্ছে, যা স্বাস্থ্যের জন্য ক্ষতিকর। এমনকি ডায়াবেটিসের জন্য বিখ্যাত ওষুধ মেটফরমিন নিয়েও ভুল তথ্য ছড়িয়ে দেওয়া হচ্ছে। এসব ভুয়া ভিডিওতে বলা হচ্ছে, এই ওষুধ মৃত্যুর কারণ হতে পারে৷ বয়োজ্যেষ্ঠদের লক্ষ্য করে ফেসবুক, ইনস্টাগ্রাম ও ইউটিউবের মতো সামাজিক যোগাযোগমাধ্যমে ডিপফেক ভিডিও প্রকাশ করা হচ্ছে। ভিডিওগুলোতে চিকিৎসক ও পরিচিত ব্যক্তিদের নকল ফুটেজ ব্যবহার করায় অনেকে প্রতারিতও হচ্ছেন।</div><div><br></div><div>স্বাস্থ্যবিশেষজ্ঞরা বলছেন, ভিডিওতে ছড়িয়ে দেওয়া ভুল তথ্য মারাত্মক স্বাস্থ্যঝুঁকির কারণ হতে পারে। এমনকি অনেকেই এসব তথ্যের কারণে ভুল চিকিৎসা শুরু করছেন। ব্রিটিশ চিকিৎসক জন কোরমার্ক বলেন, মানুষ এসব ভিডিও বিশ্বাসও করছেন, যা আশঙ্কার।</div><div><br></div><div>বিশেষজ্ঞরা বলছেন, অনলাইনে পাওয়া যেকোনো তথ্যের সত্যতা যাচাইয়ের জন্য সেটির উৎস যাচাই করতে হবে। অবিশ্বস্ত উৎসের তথ্য সম্পর্কে সতর্ক থাকতে হবে। এআইয়ের ব্যবহার বৃদ্ধি পাওয়ায় ছবি, ভিডিওর মতো কনটেন্ট বা আধেয়গুলোও যাচাই করতে হবে। এ ছাড়া স্বাস্থ্যগত যেকোনো তথ্য ও পরামর্শের জন্য অবশ্যই সরাসরি চিকিৎসকের শরণাপন্ন হওয়া উচিত।</div><div><br></div>', '1726665829cXfoeSLm.jpg', NULL, NULL, NULL, NULL, 67, NULL, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-18 20:23:49', '2024-09-18 20:23:49', 'কৃত্রিম বুদ্ধিমত্তা প্রযুক্তি ব্যবহার করে তৈরি ডিপফেক বা ভুয়া ভিডিওর মাধ্যমে সামাজিক যোগাযোগমাধ্যমে স্বাস্থ্যবিষয়ক বিপজ্জনক তথ্য ছড়াচ্ছে। এসব তথ্যকে বিশ্বাসযোগ্য করতে চিকিৎসকদের নকল বা ডিপফেক ভিডিও জুড়ে দেওয়া হচ্ছে।', NULL, 'সামাজিক যোগাযোগমাধ্যমে ভুয়া ভিডিওর মাধ্যমে ছড়াচ্ছে স্বাস্থ্যবিষয়ক বিপজ্জনক তথ্য', NULL, 0),
(494, 2, 'গুগলে শিক্ষানবিশীর সুযোগ', 'গুগলে-শিক্ষানবিশীর-সুযোগ', 'article', 'গুগলে শিক্ষানবিশীর সুযোগ', 0, 1, 1, 0, 1, 1, 0, 'গুগলে শিক্ষানবিশীর সুযোগ', '<div style=\"text-align: justify;\">প্রযুক্তি ও প্রকৌশল দুনিয়াতে ব্যবহারিক শিক্ষার গুরুত্ব অনেক। আর তাই শ্রেণিকক্ষে শেখা জ্ঞান বাস্তবে প্রয়োগের সুযোগ দিতে বড় বড় প্রযুক্তিপ্রতিষ্ঠানগুলো নিয়মিত শিক্ষানবিশ বা ইন্টার্নশিপ কাজের সুযোগ দিয়ে থাকে শিক্ষার্থীদের। সম্প্রতি গুগল ‘ইঞ্জিনিয়ারিং ইন্টার্ন, সামার ২০২৫’ নামের শিক্ষানবিশ কার্যক্রমের জন্য আবেদন গ্রহণ শুরু করেছে।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">গুগলের তথ্যমতে, আগামী বছরের মে-জুন সেশনে অনুষ্ঠেয় এই শিক্ষানবিশ কাজের মেয়াদ হবে ১০ থেকে ১২ সপ্তাহ। কম্পিউটারবিজ্ঞানে স্নাতক বা স্নাতকোত্তর ডিগ্রি থাকা নির্বাচিত ব্যক্তিরা অনলাইনে শিক্ষানবিশ কাজের জন্য আবেদন করতে পারবেন। আবেদনের শেষ সময় ২০ সেপ্টেম্বর।প্রযুক্তি ও প্রকৌশল দুনিয়াতে ব্যবহারিক শিক্ষার গুরুত্ব অনেক। আর তাই শ্রেণিকক্ষে শেখা জ্ঞান বাস্তবে প্রয়োগের সুযোগ দিতে বড় বড় প্রযুক্তিপ্রতিষ্ঠানগুলো নিয়মিত শিক্ষানবিশ বা ইন্টার্নশিপ কাজের সুযোগ দিয়ে থাকে শিক্ষার্থীদের। সম্প্রতি গুগল ‘ইঞ্জিনিয়ারিং ইন্টার্ন, সামার ২০২৫’ নামের শিক্ষানবিশ কার্যক্রমের জন্য আবেদন গ্রহণ শুরু করেছে।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">গুগলের তথ্যমতে, আগামী বছরের মে-জুন সেশনে অনুষ্ঠেয় এই শিক্ষানবিশ কাজের মেয়াদ হবে ১০ থেকে ১২ সপ্তাহ। কম্পিউটারবিজ্ঞানে স্নাতক বা স্নাতকোত্তর ডিগ্রি থাকা নির্বাচিত ব্যক্তিরা অনলাইনে শিক্ষানবিশ কাজের জন্য আবেদন করতে পারবেন। আবেদনের শেষ সময় ২০ সেপ্টেম্বর।প্রযুক্তি ও প্রকৌশল দুনিয়াতে ব্যবহারিক শিক্ষার গুরুত্ব অনেক। আর তাই শ্রেণিকক্ষে শেখা জ্ঞান বাস্তবে প্রয়োগের সুযোগ দিতে বড় বড় প্রযুক্তিপ্রতিষ্ঠানগুলো নিয়মিত শিক্ষানবিশ বা ইন্টার্নশিপ কাজের সুযোগ দিয়ে থাকে শিক্ষার্থীদের। সম্প্রতি গুগল ‘ইঞ্জিনিয়ারিং ইন্টার্ন, সামার ২০২৫’ নামের শিক্ষানবিশ কার্যক্রমের জন্য আবেদন গ্রহণ শুরু করেছে।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">গুগলের তথ্যমতে, আগামী বছরের মে-জুন সেশনে অনুষ্ঠেয় এই শিক্ষানবিশ কাজের মেয়াদ হবে ১০ থেকে ১২ সপ্তাহ। কম্পিউটারবিজ্ঞানে স্নাতক বা স্নাতকোত্তর ডিগ্রি থাকা নির্বাচিত ব্যক্তিরা অনলাইনে শিক্ষানবিশ কাজের জন্য আবেদন করতে পারবেন। আবেদনের শেষ সময় ২০ সেপ্টেম্বর।প্রযুক্তি ও প্রকৌশল দুনিয়াতে ব্যবহারিক শিক্ষার গুরুত্ব অনেক। আর তাই শ্রেণিকক্ষে শেখা জ্ঞান বাস্তবে প্রয়োগের সুযোগ দিতে বড় বড় প্রযুক্তিপ্রতিষ্ঠানগুলো নিয়মিত শিক্ষানবিশ বা ইন্টার্নশিপ কাজের সুযোগ দিয়ে থাকে শিক্ষার্থীদের। সম্প্রতি গুগল ‘ইঞ্জিনিয়ারিং ইন্টার্ন, সামার ২০২৫’ নামের শিক্ষানবিশ কার্যক্রমের জন্য আবেদন গ্রহণ শুরু করেছে।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">গুগলের তথ্যমতে, আগামী বছরের মে-জুন সেশনে অনুষ্ঠেয় এই শিক্ষানবিশ কাজের মেয়াদ হবে ১০ থেকে ১২ সপ্তাহ। কম্পিউটারবিজ্ঞানে স্নাতক বা স্নাতকোত্তর ডিগ্রি থাকা নির্বাচিত ব্যক্তিরা অনলাইনে শিক্ষানবিশ কাজের জন্য আবেদন করতে পারবেন। আবেদনের শেষ সময় ২০ সেপ্টেম্বর।প্রযুক্তি ও প্রকৌশল দুনিয়াতে ব্যবহারিক শিক্ষার গুরুত্ব অনেক। আর তাই শ্রেণিকক্ষে শেখা জ্ঞান বাস্তবে প্রয়োগের সুযোগ দিতে বড় বড় প্রযুক্তিপ্রতিষ্ঠানগুলো নিয়মিত শিক্ষানবিশ বা ইন্টার্নশিপ কাজের সুযোগ দিয়ে থাকে শিক্ষার্থীদের। সম্প্রতি গুগল ‘ইঞ্জিনিয়ারিং ইন্টার্ন, সামার ২০২৫’ নামের শিক্ষানবিশ কার্যক্রমের জন্য আবেদন গ্রহণ শুরু করেছে।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">গুগলের তথ্যমতে, আগামী বছরের মে-জুন সেশনে অনুষ্ঠেয় এই শিক্ষানবিশ কাজের মেয়াদ হবে ১০ থেকে ১২ সপ্তাহ। কম্পিউটারবিজ্ঞানে স্নাতক বা স্নাতকোত্তর ডিগ্রি থাকা নির্বাচিত ব্যক্তিরা অনলাইনে শিক্ষানবিশ কাজের জন্য আবেদন করতে পারবেন। আবেদনের শেষ সময় ২০ সেপ্টেম্বর।প্রযুক্তি ও প্রকৌশল দুনিয়াতে ব্যবহারিক শিক্ষার গুরুত্ব অনেক। আর তাই শ্রেণিকক্ষে শেখা জ্ঞান বাস্তবে প্রয়োগের সুযোগ দিতে বড় বড় প্রযুক্তিপ্রতিষ্ঠানগুলো নিয়মিত শিক্ষানবিশ বা ইন্টার্নশিপ কাজের সুযোগ দিয়ে থাকে শিক্ষার্থীদের। সম্প্রতি গুগল ‘ইঞ্জিনিয়ারিং ইন্টার্ন, সামার ২০২৫’ নামের শিক্ষানবিশ কার্যক্রমের জন্য আবেদন গ্রহণ শুরু করেছে।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">গুগলের তথ্যমতে, আগামী বছরের মে-জুন সেশনে অনুষ্ঠেয় এই শিক্ষানবিশ কাজের মেয়াদ হবে ১০ থেকে ১২ সপ্তাহ। কম্পিউটারবিজ্ঞানে স্নাতক বা স্নাতকোত্তর ডিগ্রি থাকা নির্বাচিত ব্যক্তিরা অনলাইনে শিক্ষানবিশ কাজের জন্য আবেদন করতে পারবেন। আবেদনের শেষ সময় ২০ সেপ্টেম্বর।</div>', '1726666096aCGqKcGM.jpg', NULL, NULL, NULL, NULL, 67, NULL, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-18 13:59:19', '2024-09-18 20:59:19', 'প্রযুক্তি ও প্রকৌশল দুনিয়াতে ব্যবহারিক শিক্ষার গুরুত্ব অনেক। আর তাই শ্রেণিকক্ষে শেখা জ্ঞান বাস্তবে প্রয়োগের সুযোগ দিতে বড় বড় প্রযুক্তিপ্রতিষ্ঠানগুলো নিয়মিত শিক্ষানবিশ বা ইন্টার্নশিপ কাজের সুযোগ দিয়ে থাকে শিক্ষার্থীদের।', NULL, 'গুগলে শিক্ষানবিশীর সুযোগ', NULL, 0),
(495, 2, 'জিমেইল অ্যাকাউন্টের জায়গা খালি করবেন যেভাবে', 'জিমেইল-অ্যাকাউন্টের-জায়গা-খালি-করবেন-যেভাবে', 'article', 'জিমেইল অ্যাকাউন্টের জায়গা খালি করবেন যেভাবে', 0, 1, 1, 0, 1, 1, 0, 'জিমেইল অ্যাকাউন্টের জায়গা খালি করবেন যেভাবে', '<div style=\"text-align: justify;\">দৈনন্দিন কাজের জন্য প্রতিদিন অসংখ্য ই-মেইল আদান-প্রদান করেন অনেকেই। এসব ই-মেইলের অ্যাটাচমেন্টে ছবি, ভিডিও ও পিডিএফ ফাইল থাকায় গুগল অ্যাকাউন্টে অনেক জায়গা দখল করে রাখে। গুগল অ্যাকাউন্টে বিনা মূল্যে সর্বোচ্চ ১৫ গিগাবাইট পর্যন্ত তথ্য জমা রাখার সুযোগ থাকলেও জিমেইলের পাশাপাশি গুগল ড্রাইভ, গুগল ডকস, গুগল শিটসহ গুগলের বিভিন্ন সেবার তথ্য সেখানে নিয়মিত জমা হতে থাকে। ফলে গুগল অ্যাকাউন্টের জায়গা খালি না থাকলে জিমেইলে নতুন ই-মেইল আসে না। তবে চাইলেই জিমেইল অ্যাকাউন্টের জায়গা খালি করে এ সমস্যার সমাধান করা যায়।দৈনন্দিন কাজের জন্য প্রতিদিন অসংখ্য ই-মেইল আদান-প্রদান করেন অনেকেই। এসব ই-মেইলের অ্যাটাচমেন্টে ছবি, ভিডিও ও পিডিএফ ফাইল থাকায় গুগল অ্যাকাউন্টে অনেক জায়গা দখল করে রাখে। গুগল অ্যাকাউন্টে বিনা মূল্যে সর্বোচ্চ ১৫ গিগাবাইট পর্যন্ত তথ্য জমা রাখার সুযোগ থাকলেও জিমেইলের পাশাপাশি গুগল ড্রাইভ, গুগল ডকস, গুগল শিটসহ গুগলের বিভিন্ন সেবার তথ্য সেখানে নিয়মিত জমা হতে থাকে। ফলে গুগল অ্যাকাউন্টের জায়গা খালি না থাকলে জিমেইলে নতুন ই-মেইল আসে না। তবে চাইলেই জিমেইল অ্যাকাউন্টের জায়গা খালি করে এ সমস্যার সমাধান করা যায়।দৈনন্দিন কাজের জন্য প্রতিদিন অসংখ্য ই-মেইল আদান-প্রদান করেন অনেকেই। এসব ই-মেইলের অ্যাটাচমেন্টে ছবি, ভিডিও ও পিডিএফ ফাইল থাকায় গুগল অ্যাকাউন্টে অনেক জায়গা দখল করে রাখে। গুগল অ্যাকাউন্টে বিনা মূল্যে সর্বোচ্চ ১৫ গিগাবাইট পর্যন্ত তথ্য জমা রাখার সুযোগ থাকলেও জিমেইলের পাশাপাশি গুগল ড্রাইভ, গুগল ডকস, গুগল শিটসহ গুগলের বিভিন্ন সেবার তথ্য সেখানে নিয়মিত জমা হতে থাকে। ফলে গুগল অ্যাকাউন্টের জায়গা খালি না থাকলে জিমেইলে নতুন ই-মেইল আসে না। তবে চাইলেই জিমেইল অ্যাকাউন্টের জায়গা খালি করে এ সমস্যার সমাধান করা যায়।দৈনন্দিন কাজের জন্য প্রতিদিন অসংখ্য ই-মেইল আদান-প্রদান করেন অনেকেই। এসব ই-মেইলের অ্যাটাচমেন্টে ছবি, ভিডিও ও পিডিএফ ফাইল থাকায় গুগল অ্যাকাউন্টে অনেক জায়গা দখল করে রাখে। গুগল অ্যাকাউন্টে বিনা মূল্যে সর্বোচ্চ ১৫ গিগাবাইট পর্যন্ত তথ্য জমা রাখার সুযোগ থাকলেও জিমেইলের পাশাপাশি গুগল ড্রাইভ, গুগল ডকস, গুগল শিটসহ গুগলের বিভিন্ন সেবার তথ্য সেখানে নিয়মিত জমা হতে থাকে। ফলে গুগল অ্যাকাউন্টের জায়গা খালি না থাকলে জিমেইলে নতুন ই-মেইল আসে না। তবে চাইলেই জিমেইল অ্যাকাউন্টের জায়গা খালি করে এ সমস্যার সমাধান করা যায়।দৈনন্দিন কাজের জন্য প্রতিদিন অসংখ্য ই-মেইল আদান-প্রদান করেন অনেকেই। এসব ই-মেইলের অ্যাটাচমেন্টে ছবি, ভিডিও ও পিডিএফ ফাইল থাকায় গুগল অ্যাকাউন্টে অনেক জায়গা দখল করে রাখে। গুগল অ্যাকাউন্টে বিনা মূল্যে সর্বোচ্চ ১৫ গিগাবাইট পর্যন্ত তথ্য জমা রাখার সুযোগ থাকলেও জিমেইলের পাশাপাশি গুগল ড্রাইভ, গুগল ডকস, গুগল শিটসহ গুগলের বিভিন্ন সেবার তথ্য সেখানে নিয়মিত জমা হতে থাকে। ফলে গুগল অ্যাকাউন্টের জায়গা খালি না থাকলে জিমেইলে নতুন ই-মেইল আসে না। তবে চাইলেই জিমেইল অ্যাকাউন্টের জায়গা খালি করে এ সমস্যার সমাধান করা যায়।দৈনন্দিন কাজের জন্য প্রতিদিন অসংখ্য ই-মেইল আদান-প্রদান করেন অনেকেই। এসব ই-মেইলের অ্যাটাচমেন্টে ছবি, ভিডিও ও পিডিএফ ফাইল থাকায় গুগল অ্যাকাউন্টে অনেক জায়গা দখল করে রাখে। গুগল অ্যাকাউন্টে বিনা মূল্যে সর্বোচ্চ ১৫ গিগাবাইট পর্যন্ত তথ্য জমা রাখার সুযোগ থাকলেও জিমেইলের পাশাপাশি গুগল ড্রাইভ, গুগল ডকস, গুগল শিটসহ গুগলের বিভিন্ন সেবার তথ্য সেখানে নিয়মিত জমা হতে থাকে। ফলে গুগল অ্যাকাউন্টের জায়গা খালি না থাকলে জিমেইলে নতুন ই-মেইল আসে না। তবে চাইলেই জিমেইল অ্যাকাউন্টের জায়গা খালি করে এ সমস্যার সমাধান করা যায়।</div>', '1726666447dq9CXO0x.jpg', NULL, NULL, NULL, NULL, 67, NULL, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-18 20:34:07', '2024-09-18 20:34:07', 'দৈনন্দিন কাজের জন্য প্রতিদিন অসংখ্য ই-মেইল আদান-প্রদান করেন অনেকেই। এসব ই-মেইলের অ্যাটাচমেন্টে ছবি, ভিডিও ও পিডিএফ ফাইল থাকায় গুগল অ্যাকাউন্টে অনেক জায়গা দখল করে রাখে। গুগল অ্যাকাউন্টে বিনা মূল্যে সর্বোচ্চ ১৫', NULL, 'জিমেইল অ্যাকাউন্টের জায়গা খালি করবেন যেভাবে', NULL, 0),
(496, 2, 'আইওএস ১৮ আনল অ্যাপল, নতুন যেসব সুবিধা পাওয়া যাবে', 'আইওএস-১৮-আনল-অ্যাপল,-নতুন-যেসব-সুবিধা-পাওয়া-যাবে', 'article', 'আইওএস ১৮ আনল অ্যাপল, নতুন যেসব সুবিধা পাওয়া যাবে', 0, 1, 1, 0, 1, 1, 0, 'আইওএস ১৮ আনল অ্যাপল, নতুন যেসব সুবিধা পাওয়া যাবে', '<div style=\"text-align: justify;\">বেশ কিছু নতুন সুবিধা যুক্ত করে আইওএস ১৮ অপারেটিং সিস্টেম উন্মুক্ত করেছে অ্যাপল। গতকাল সোমবার বাংলাদেশ সময় রাত ১১টায় উন্মুক্ত করা সংস্করণটিতে বেশ কিছু নতুন সুবিধা যুক্ত করা হলেও অ্যাপলের নিজস্ব এআই সিস্টেম ‘অ্যাপল ইন্টেলিজেন্স’ যুক্ত করা হয়নি। সংস্করণটিতে নতুন যেসব সুবিধা যুক্ত করা হয়েছে, সেগুলো দেখে নেওয়া যাক।বেশ কিছু নতুন সুবিধা যুক্ত করে আইওএস ১৮ অপারেটিং সিস্টেম উন্মুক্ত করেছে অ্যাপল। গতকাল সোমবার বাংলাদেশ সময় রাত ১১টায় উন্মুক্ত করা সংস্করণটিতে বেশ কিছু নতুন সুবিধা যুক্ত করা হলেও অ্যাপলের নিজস্ব এআই সিস্টেম ‘অ্যাপল ইন্টেলিজেন্স’ যুক্ত করা হয়নি। সংস্করণটিতে নতুন যেসব সুবিধা যুক্ত করা হয়েছে, সেগুলো দেখে নেওয়া যাক।বেশ কিছু নতুন সুবিধা যুক্ত করে আইওএস ১৮ অপারেটিং সিস্টেম উন্মুক্ত করেছে অ্যাপল। গতকাল সোমবার বাংলাদেশ সময় রাত ১১টায় উন্মুক্ত করা সংস্করণটিতে বেশ কিছু নতুন সুবিধা যুক্ত করা হলেও অ্যাপলের নিজস্ব এআই সিস্টেম ‘অ্যাপল ইন্টেলিজেন্স’ যুক্ত করা হয়নি। সংস্করণটিতে নতুন যেসব সুবিধা যুক্ত করা হয়েছে, সেগুলো দেখে নেওয়া যাক।বেশ কিছু নতুন সুবিধা যুক্ত করে আইওএস ১৮ অপারেটিং সিস্টেম উন্মুক্ত করেছে অ্যাপল। গতকাল সোমবার বাংলাদেশ সময় রাত ১১টায় উন্মুক্ত করা সংস্করণটিতে বেশ কিছু নতুন সুবিধা যুক্ত করা হলেও অ্যাপলের নিজস্ব এআই সিস্টেম ‘অ্যাপল ইন্টেলিজেন্স’ যুক্ত করা হয়নি। সংস্করণটিতে নতুন যেসব সুবিধা যুক্ত করা হয়েছে, সেগুলো দেখে নেওয়া যাক।</div>', '1726666671EExeDfxs.jpg', NULL, NULL, NULL, NULL, 67, NULL, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-18 20:37:51', '2024-09-18 20:37:51', 'বেশ কিছু নতুন সুবিধা যুক্ত করে আইওএস ১৮ অপারেটিং সিস্টেম উন্মুক্ত করেছে অ্যাপল। গতকাল সোমবার বাংলাদেশ সময় রাত ১১টায় উন্মুক্ত করা সংস্করণটিতে বেশ কিছু নতুন সুবিধা যুক্ত করা হলেও অ্যাপলের নিজস্ব এআই সিস্টেম ‘অ্যাপল ইন্টেলিজেন্স’ যুক্ত করা হয়নি।', NULL, 'আইওএস ১৮ আনল অ্যাপল, নতুন যেসব সুবিধা পাওয়া যাবে', NULL, 0),
(497, 2, 'পাঠাও প্রতিষ্ঠাতা ফাহিমকে হত্যায় ৪০ বছরের কারাদণ্ড', 'পাঠাও-প্রতিষ্ঠাতা-ফাহিমকে-হত্যায়-৪০-বছরের-কারাদণ্ড', 'article', 'পাঠাও প্রতিষ্ঠাতা ফাহিমকে হত্যায় ৪০ বছরের কারাদণ্ড', 0, 1, 1, 0, 1, 1, 0, NULL, 'বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…<br>', '1726667484mcinBp3i.jpg', NULL, NULL, NULL, NULL, 67, NULL, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-18 13:51:24', '2024-09-18 20:51:24', 'বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…বাংলাদেশের রাইড শেয়ারিং অ্যাপ ‘পাঠাও’র সহ-প্রতিষ্ঠাতা ফাহিম সালেহ হত্যার দায়ে দোষী সাব্যস্ত হয়েছেন তারই ব্যক্তিগত সহকারী। বিস্তারিত দেখুন ভিডিওতে…', '<iframe width=\"600\" height=\"400\" src=\"https://www.youtube.com/embed/axkGQWZvjAc\" title=\"পাঠাও প্রতিষ্ঠাতা ফাহিমকে হত্যায় ৪০ বছরের কারাদণ্ড | Pathao | Fahim Saleh | News | Prothom Alo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'পাঠাও প্রতিষ্ঠাতা ফাহিমকে হত্যায় ৪০ বছরের কারাদণ্ড', 'axkGQWZvjAc', 1);
INSERT INTO `posts` (`id`, `language_id`, `title`, `slug`, `post_type`, `meta_tag`, `show_right_column`, `is_feature`, `is_slider`, `slider_left`, `slider_right`, `is_trending`, `is_videoGallery`, `tags`, `description`, `image_big`, `rss_image`, `image_small`, `video`, `audio`, `category_id`, `subcategories_id`, `schedule_post`, `schedule_post_date`, `is_pending`, `admin_id`, `status`, `is_draft`, `rss_link`, `created_at`, `updated_at`, `short_description`, `video_embed`, `image_caption`, `video_link`, `is_video`) VALUES
(498, 2, 'বঙ্গবন্ধু স্যাটেলাইটে বছরে ৬৬ কোটি টাকা লোকসান', 'বঙ্গবন্ধু-স্যাটেলাইটে-বছরে-৬৬-কোটি-টাকা-লোকসান', 'article', 'বঙ্গবন্ধু স্যাটেলাইটে বছরে ৬৬ কোটি টাকা লোকসান', 0, 1, 1, 0, 1, 1, 0, 'বঙ্গবন্ধু স্যাটেলাইটে বছরে ৬৬ কোটি টাকা লোকসান', '<div style=\"text-align: justify;\">বঙ্গবন্ধু স্যাটেলাইটের আয়ের চেয়ে ব্যয় অনেক বেশি। ফলে লোকসানে আছে স্যাটেলাইটটির পরিচালনাকারী সরকারি প্রতিষ্ঠান বাংলাদেশ স্যাটেলাইট কোম্পানি লিমিটেড (বিএসসিএল)। যদিও ‘কৌশলে’ তারা নিজেদের লাভজনক দেখাচ্ছে।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">বিএসসিএলের সর্বশেষ নিরীক্ষা প্রতিবেদন (২০২১-২২) অনুযায়ী, কোম্পানিটির মুনাফা ৮৫ কোটি টাকা। যদিও মুনাফার এই হিসাব করার ক্ষেত্রে স্যাটেলাইটের অবচয় বা ডেপ্রিসিয়েশন ধরা হয়নি। অবচয় ধরা হলে মুনাফার বদলে লোকসান দাঁড়াবে প্রায় ৬৬ কোটি টাকা। আগের অর্থবছরেও প্রায় সমপরিমাণ লোকসান ছিল।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">লাভ-লোকসানের হিসাবের ক্ষেত্রে সম্পদের স্থায়িত্বের বিপরীতে বছর বছর অবচয় দেখাতে হয়। ধরা যাক, একটি গাড়ির দাম ১০ লাখ টাকা। এটি ব্যবহার করা যাবে ১০ বছর। তাহলে বছরে গাড়িটির অবচয় দাঁড়াবে ১ লাখ টাকা।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">বঙ্গবন্ধু স্যাটেলাইটের মেয়াদ ১৫ বছর। এর সম্পদমূল্য দেখানো হয়েছে ২ হাজার ৭৮৪ কোটি টাকা। ফলে বছরে অবচয় (স্ট্রেইট লাইন মেথড) দাঁড়ায় প্রায় ১৮৬ কোটি টাকা।</div><div style=\"text-align: justify;\">বঙ্গবন্ধু স্যাটেলাইটের আয়ের চেয়ে ব্যয় অনেক বেশি। ফলে লোকসানে আছে স্যাটেলাইটটির পরিচালনাকারী সরকারি প্রতিষ্ঠান বাংলাদেশ স্যাটেলাইট কোম্পানি লিমিটেড (বিএসসিএল)। যদিও ‘কৌশলে’ তারা নিজেদের লাভজনক দেখাচ্ছে।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">বিএসসিএলের সর্বশেষ নিরীক্ষা প্রতিবেদন (২০২১-২২) অনুযায়ী, কোম্পানিটির মুনাফা ৮৫ কোটি টাকা। যদিও মুনাফার এই হিসাব করার ক্ষেত্রে স্যাটেলাইটের অবচয় বা ডেপ্রিসিয়েশন ধরা হয়নি। অবচয় ধরা হলে মুনাফার বদলে লোকসান দাঁড়াবে প্রায় ৬৬ কোটি টাকা। আগের অর্থবছরেও প্রায় সমপরিমাণ লোকসান ছিল।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">লাভ-লোকসানের হিসাবের ক্ষেত্রে সম্পদের স্থায়িত্বের বিপরীতে বছর বছর অবচয় দেখাতে হয়। ধরা যাক, একটি গাড়ির দাম ১০ লাখ টাকা। এটি ব্যবহার করা যাবে ১০ বছর। তাহলে বছরে গাড়িটির অবচয় দাঁড়াবে ১ লাখ টাকা।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">বঙ্গবন্ধু স্যাটেলাইটের মেয়াদ ১৫ বছর। এর সম্পদমূল্য দেখানো হয়েছে ২ হাজার ৭৮৪ কোটি টাকা। ফলে বছরে অবচয় (স্ট্রেইট লাইন মেথড) দাঁড়ায় প্রায় ১৮৬ কোটি টাকা।বঙ্গবন্ধু স্যাটেলাইটের আয়ের চেয়ে ব্যয় অনেক বেশি। ফলে লোকসানে আছে স্যাটেলাইটটির পরিচালনাকারী সরকারি প্রতিষ্ঠান বাংলাদেশ স্যাটেলাইট কোম্পানি লিমিটেড (বিএসসিএল)। যদিও ‘কৌশলে’ তারা নিজেদের লাভজনক দেখাচ্ছে।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">বিএসসিএলের সর্বশেষ নিরীক্ষা প্রতিবেদন (২০২১-২২) অনুযায়ী, কোম্পানিটির মুনাফা ৮৫ কোটি টাকা। যদিও মুনাফার এই হিসাব করার ক্ষেত্রে স্যাটেলাইটের অবচয় বা ডেপ্রিসিয়েশন ধরা হয়নি। অবচয় ধরা হলে মুনাফার বদলে লোকসান দাঁড়াবে প্রায় ৬৬ কোটি টাকা। আগের অর্থবছরেও প্রায় সমপরিমাণ লোকসান ছিল।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">লাভ-লোকসানের হিসাবের ক্ষেত্রে সম্পদের স্থায়িত্বের বিপরীতে বছর বছর অবচয় দেখাতে হয়। ধরা যাক, একটি গাড়ির দাম ১০ লাখ টাকা। এটি ব্যবহার করা যাবে ১০ বছর। তাহলে বছরে গাড়িটির অবচয় দাঁড়াবে ১ লাখ টাকা।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">বঙ্গবন্ধু স্যাটেলাইটের মেয়াদ ১৫ বছর। এর সম্পদমূল্য দেখানো হয়েছে ২ হাজার ৭৮৪ কোটি টাকা। ফলে বছরে অবচয় (স্ট্রেইট লাইন মেথড) দাঁড়ায় প্রায় ১৮৬ কোটি টাকা।</div>', '1726667613QkN7IAXh.jpg', NULL, NULL, NULL, NULL, 67, NULL, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-18 20:53:33', '2024-09-18 20:53:33', 'বঙ্গবন্ধু স্যাটেলাইটের আয়ের চেয়ে ব্যয় অনেক বেশি। ফলে লোকসানে আছে স্যাটেলাইটটির পরিচালনাকারী সরকারি প্রতিষ্ঠান বাংলাদেশ স্যাটেলাইট কোম্পানি লিমিটেড (বিএসসিএল)। যদিও ‘কৌশলে’ তারা নিজেদের লাভজনক দেখাচ্ছে।', NULL, 'বঙ্গবন্ধু স্যাটেলাইটে বছরে ৬৬ কোটি টাকা লোকসান', NULL, 0),
(499, 2, 'ফেসবুক কি সত্যিই পোস্টের রিচ কমিয়ে দেয়', 'ফেসবুক-কি-সত্যিই-পোস্টের-রিচ-কমিয়ে-দেয়', 'article', 'ফেসবুক কি সত্যিই পোস্টের রিচ কমিয়ে দেয়', 0, 1, 1, 0, 1, 1, 0, 'ফেসবুক কি সত্যিই পোস্টের রিচ কমিয়ে দেয়', '<div style=\"text-align: justify;\">প্রথমেই উত্তরটা দিয়ে ফেলি, হ্যাঁ, এক অর্থে ফেসবুক ‘রিচ কমিয়ে দেয়’। এবার আসি ব্যাখ্যায়। ফেসবুক প্রতিনিয়ত অ্যালগরিদম পরিবর্তন করে এবং নিয়ে আসে নিত্যনতুন ফিচার। ফেসবুকের এসব পরিবর্তন অনেক ক্ষেত্রে সাধারণ ব্যবহারকারীদের কাছে দৃশ্যমান হয় না। এখানে দুটি প্রশ্ন সামনে আসে। এক. ফেসবুক অ্যালগরিদম কী? দুই. কোন পোস্ট কত রিচ হবে (ফ্রেন্ড-ফলোয়ারের ফিডে পৌঁছাবে), তা এই অ্যালগরিদম কীভাবে নির্ধারণ করে?</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">ফেসবুকের অ্যালগরিদম যেভাবে কাজ করে</div><div style=\"text-align: justify;\">ফ্রেন্ড-ফলোয়ারদের ফিডে একটি পোস্ট কতটুকু রিচ করবে, ফেসবুক তা নির্ধারণ করে চারটি প্রক্রিয়ায়। ফেসবুকের ভাষায় যাকে বলে কনটেন্ট বা পোস্ট র‌্যাংকিং। প্রক্রিয়া চারটি হলো—</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">১. কনটেন্টের উৎস: ফেসবুক দেখে, কনটেন্টটি ব্যক্তির নিজের তৈরি কি না এবং কনটেন্টটির প্রকৃত উৎস কী? ফেসবুক আপনার ফিডে সেসব পোস্টই দেখায়, যেসব পোস্ট শেয়ার করেন আপনার ফেসবুক ফ্রেন্ড কিংবা যাঁদের আপনি ফলো করেন। পাশাপাশি আপনি যেসব পেজ ফলো করেন, সাধারণত সেসব কনটেন্টই আপনার ফিডে বেশি দেখতে পান।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">২. কনটেন্টের ধরন: কনটেন্টটি লাইভ, ভিডিও, ছবি নাকি স্ট্যাটাস? আপনি যে ধরনের কনটেন্ট বেশি দেখেন বা ইন্টার‌্যাক্ট করেন (লাইক, কমেন্ট, শেয়ার), ওই ধরনের পোস্ট আপনার ফিডে বেশি দেখায় ফেসবুক। আপনি যদি ভিডিও বেশি দেখেন, ফেসবুক আপনার ফিডে বেশি বেশি ভিডিও দেখাবে, যদি ছবি বেশি দেখেন, তাহলে ছবি।</div><div style=\"text-align: justify;\">প্রথমেই উত্তরটা দিয়ে ফেলি, হ্যাঁ, এক অর্থে ফেসবুক ‘রিচ কমিয়ে দেয়’। এবার আসি ব্যাখ্যায়। ফেসবুক প্রতিনিয়ত অ্যালগরিদম পরিবর্তন করে এবং নিয়ে আসে নিত্যনতুন ফিচার। ফেসবুকের এসব পরিবর্তন অনেক ক্ষেত্রে সাধারণ ব্যবহারকারীদের কাছে দৃশ্যমান হয় না। এখানে দুটি প্রশ্ন সামনে আসে। এক. ফেসবুক অ্যালগরিদম কী? দুই. কোন পোস্ট কত রিচ হবে (ফ্রেন্ড-ফলোয়ারের ফিডে পৌঁছাবে), তা এই অ্যালগরিদম কীভাবে নির্ধারণ করে?</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">ফেসবুকের অ্যালগরিদম যেভাবে কাজ করে</div><div style=\"text-align: justify;\">ফ্রেন্ড-ফলোয়ারদের ফিডে একটি পোস্ট কতটুকু রিচ করবে, ফেসবুক তা নির্ধারণ করে চারটি প্রক্রিয়ায়। ফেসবুকের ভাষায় যাকে বলে কনটেন্ট বা পোস্ট র‌্যাংকিং। প্রক্রিয়া চারটি হলো—</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">১. কনটেন্টের উৎস: ফেসবুক দেখে, কনটেন্টটি ব্যক্তির নিজের তৈরি কি না এবং কনটেন্টটির প্রকৃত উৎস কী? ফেসবুক আপনার ফিডে সেসব পোস্টই দেখায়, যেসব পোস্ট শেয়ার করেন আপনার ফেসবুক ফ্রেন্ড কিংবা যাঁদের আপনি ফলো করেন। পাশাপাশি আপনি যেসব পেজ ফলো করেন, সাধারণত সেসব কনটেন্টই আপনার ফিডে বেশি দেখতে পান।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">২. কনটেন্টের ধরন: কনটেন্টটি লাইভ, ভিডিও, ছবি নাকি স্ট্যাটাস? আপনি যে ধরনের কনটেন্ট বেশি দেখেন বা ইন্টার‌্যাক্ট করেন (লাইক, কমেন্ট, শেয়ার), ওই ধরনের পোস্ট আপনার ফিডে বেশি দেখায় ফেসবুক। আপনি যদি ভিডিও বেশি দেখেন, ফেসবুক আপনার ফিডে বেশি বেশি ভিডিও দেখাবে, যদি ছবি বেশি দেখেন, তাহলে ছবি।</div>', '1726667719tDItkcQE.jpg', NULL, NULL, NULL, NULL, 67, NULL, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-18 20:55:19', '2024-09-18 20:55:19', 'প্রথমেই উত্তরটা দিয়ে ফেলি, হ্যাঁ, এক অর্থে ফেসবুক ‘রিচ কমিয়ে দেয়’। এবার আসি ব্যাখ্যায়। ফেসবুক প্রতিনিয়ত অ্যালগরিদম পরিবর্তন করে এবং নিয়ে আসে নিত্যনতুন ফিচার। ফেসবুকের এসব পরিবর্তন অনেক ক্ষেত্রে সাধারণ ব্যবহারকারীদের কাছে দৃশ্যমান হয় না।', NULL, 'ফেসবুক কি সত্যিই পোস্টের রিচ কমিয়ে দেয়', NULL, 0),
(500, 2, 'নর্থ সাউথ ইউনিভার্সিটির ভারপ্রাপ্ত উপাচার্য হলেন আবদুর রব খান', 'নর্থ-সাউথ-ইউনিভার্সিটির-ভারপ্রাপ্ত-উপাচার্য-হলেন-আবদুর-রব-খান', 'article', 'নর্থ সাউথ ইউনিভার্সিটির ভারপ্রাপ্ত উপাচার্য হলেন আবদুর রব খান', 0, 1, 1, 0, 1, 1, 0, 'নর্থ সাউথ ইউনিভার্সিটির ভারপ্রাপ্ত উপাচার্য হলেন আবদুর রব খান', '<div style=\"text-align: justify;\">বেসরকারি নর্থ সাউথ ইউনিভার্সিটির (এনএসইউ) ভারপ্রাপ্ত উপাচার্য (ভিসি) হলেন অধ্যাপক আবদুর রব খান। তিনি প্রতিষ্ঠানটির কোষাধ্যক্ষ হিসেবে দায়িত্ব পালন করছিলেন। গতকাল শুক্রবার বিশ্ববিদ্যালয়টির এক বিজ্ঞপ্তিতে এ তথ্য জানানো হয়।</div><div style=\"text-align: justify;\">বিজ্ঞপ্তিতে বলা হয়েছে, ২৮ আগস্ট জরুরি বোর্ড মিটিং সভার সিদ্ধান্ত অনুযায়ী অধ্যাপক আবদুর রব খানকে ভারপ্রাপ্ত উপাচার্য হিসেবে দায়িত্বভার অর্পণ করেছে ইউনিভার্সিটির ট্রাস্টি বোর্ড।বিজ্ঞপ্তিতে বলা হয়েছে, ২৮ আগস্ট জরুরি বোর্ড মিটিং সভার সিদ্ধান্ত অনুযায়ী অধ্যাপক আবদুর রব খানকে ভারপ্রাপ্ত উপাচার্য হিসেবে দায়িত্বভার অর্পণ করেছে ইউনিভার্সিটির ট্রাস্টি বোর্ড।বিজ্ঞপ্তিতে বলা হয়েছে, ২৮ আগস্ট জরুরি বোর্ড মিটিং সভার সিদ্ধান্ত অনুযায়ী অধ্যাপক আবদুর রব খানকে ভারপ্রাপ্ত উপাচার্য হিসেবে দায়িত্বভার অর্পণ করেছে ইউনিভার্সিটির ট্রাস্টি বোর্ড।বিজ্ঞপ্তিতে বলা হয়েছে, ২৮ আগস্ট জরুরি বোর্ড মিটিং সভার সিদ্ধান্ত অনুযায়ী অধ্যাপক আবদুর রব খানকে ভারপ্রাপ্ত উপাচার্য হিসেবে দায়িত্বভার অর্পণ করেছে ইউনিভার্সিটির ট্রাস্টি বোর্ড।বিজ্ঞপ্তিতে বলা হয়েছে, ২৮ আগস্ট জরুরি বোর্ড মিটিং সভার সিদ্ধান্ত অনুযায়ী অধ্যাপক আবদুর রব খানকে ভারপ্রাপ্ত উপাচার্য হিসেবে দায়িত্বভার অর্পণ করেছে ইউনিভার্সিটির ট্রাস্টি বোর্ড।</div><div style=\"text-align: justify;\">বেসরকারি নর্থ সাউথ ইউনিভার্সিটির (এনএসইউ) ভারপ্রাপ্ত উপাচার্য (ভিসি) হলেন অধ্যাপক আবদুর রব খান। তিনি প্রতিষ্ঠানটির কোষাধ্যক্ষ হিসেবে দায়িত্ব পালন করছিলেন। গতকাল শুক্রবার বিশ্ববিদ্যালয়টির এক বিজ্ঞপ্তিতে এ তথ্য জানানো হয়।</div><div style=\"text-align: justify;\">বিজ্ঞপ্তিতে বলা হয়েছে, ২৮ আগস্ট জরুরি বোর্ড মিটিং সভার সিদ্ধান্ত অনুযায়ী অধ্যাপক আবদুর রব খানকে ভারপ্রাপ্ত উপাচার্য হিসেবে দায়িত্বভার অর্পণ করেছে ইউনিভার্সিটির ট্রাস্টি বোর্ড।বিজ্ঞপ্তিতে বলা হয়েছে, ২৮ আগস্ট জরুরি বোর্ড মিটিং সভার সিদ্ধান্ত অনুযায়ী অধ্যাপক আবদুর রব খানকে ভারপ্রাপ্ত উপাচার্য হিসেবে দায়িত্বভার অর্পণ করেছে ইউনিভার্সিটির ট্রাস্টি বোর্ড।বিজ্ঞপ্তিতে বলা হয়েছে, ২৮ আগস্ট জরুরি বোর্ড মিটিং সভার সিদ্ধান্ত অনুযায়ী অধ্যাপক আবদুর রব খানকে ভারপ্রাপ্ত উপাচার্য হিসেবে দায়িত্বভার অর্পণ করেছে ইউনিভার্সিটির ট্রাস্টি বোর্ড।বিজ্ঞপ্তিতে বলা হয়েছে, ২৮ আগস্ট জরুরি বোর্ড মিটিং সভার সিদ্ধান্ত অনুযায়ী অধ্যাপক আবদুর রব খানকে ভারপ্রাপ্ত উপাচার্য হিসেবে দায়িত্বভার অর্পণ করেছে ইউনিভার্সিটির ট্রাস্টি বোর্ড।বিজ্ঞপ্তিতে বলা হয়েছে, ২৮ আগস্ট জরুরি বোর্ড মিটিং সভার সিদ্ধান্ত অনুযায়ী অধ্যাপক আবদুর রব খানকে ভারপ্রাপ্ত উপাচার্য হিসেবে দায়িত্বভার অর্পণ করেছে ইউনিভার্সিটির ট্রাস্টি বোর্ড।বেসরকারি নর্থ সাউথ ইউনিভার্সিটির (এনএসইউ) ভারপ্রাপ্ত উপাচার্য (ভিসি) হলেন অধ্যাপক আবদুর রব খান। তিনি প্রতিষ্ঠানটির কোষাধ্যক্ষ হিসেবে দায়িত্ব পালন করছিলেন। গতকাল শুক্রবার বিশ্ববিদ্যালয়টির এক বিজ্ঞপ্তিতে এ তথ্য জানানো হয়।</div><div style=\"text-align: justify;\">বিজ্ঞপ্তিতে বলা হয়েছে, ২৮ আগস্ট জরুরি বোর্ড মিটিং সভার সিদ্ধান্ত অনুযায়ী অধ্যাপক আবদুর রব খানকে ভারপ্রাপ্ত উপাচার্য হিসেবে দায়িত্বভার অর্পণ করেছে ইউনিভার্সিটির ট্রাস্টি বোর্ড।বিজ্ঞপ্তিতে বলা হয়েছে, ২৮ আগস্ট জরুরি বোর্ড মিটিং সভার সিদ্ধান্ত অনুযায়ী অধ্যাপক আবদুর রব খানকে ভারপ্রাপ্ত উপাচার্য হিসেবে দায়িত্বভার অর্পণ করেছে ইউনিভার্সিটির ট্রাস্টি বোর্ড।বিজ্ঞপ্তিতে বলা হয়েছে, ২৮ আগস্ট জরুরি বোর্ড মিটিং সভার সিদ্ধান্ত অনুযায়ী অধ্যাপক আবদুর রব খানকে ভারপ্রাপ্ত উপাচার্য হিসেবে দায়িত্বভার অর্পণ করেছে ইউনিভার্সিটির ট্রাস্টি বোর্ড।বিজ্ঞপ্তিতে বলা হয়েছে, ২৮ আগস্ট জরুরি বোর্ড মিটিং সভার সিদ্ধান্ত অনুযায়ী অধ্যাপক আবদুর রব খানকে ভারপ্রাপ্ত উপাচার্য হিসেবে দায়িত্বভার অর্পণ করেছে ইউনিভার্সিটির ট্রাস্টি বোর্ড।বিজ্ঞপ্তিতে বলা হয়েছে, ২৮ আগস্ট জরুরি বোর্ড মিটিং সভার সিদ্ধান্ত অনুযায়ী অধ্যাপক আবদুর রব খানকে ভারপ্রাপ্ত উপাচার্য হিসেবে দায়িত্বভার অর্পণ করেছে ইউনিভার্সিটির ট্রাস্টি বোর্ড।বেসরকারি নর্থ সাউথ ইউনিভার্সিটির (এনএসইউ) ভারপ্রাপ্ত উপাচার্য (ভিসি) হলেন অধ্যাপক আবদুর রব খান। তিনি প্রতিষ্ঠানটির কোষাধ্যক্ষ হিসেবে দায়িত্ব পালন করছিলেন। গতকাল শুক্রবার বিশ্ববিদ্যালয়টির এক বিজ্ঞপ্তিতে এ তথ্য জানানো হয়।</div><div style=\"text-align: justify;\">বিজ্ঞপ্তিতে বলা হয়েছে, ২৮ আগস্ট জরুরি বোর্ড মিটিং সভার সিদ্ধান্ত অনুযায়ী অধ্যাপক আবদুর রব খানকে ভারপ্রাপ্ত উপাচার্য হিসেবে দায়িত্বভার অর্পণ করেছে ইউনিভার্সিটির ট্রাস্টি বোর্ড।বিজ্ঞপ্তিতে বলা হয়েছে, ২৮ আগস্ট জরুরি বোর্ড মিটিং সভার সিদ্ধান্ত অনুযায়ী অধ্যাপক আবদুর রব খানকে ভারপ্রাপ্ত উপাচার্য হিসেবে দায়িত্বভার অর্পণ করেছে ইউনিভার্সিটির ট্রাস্টি বোর্ড।বিজ্ঞপ্তিতে বলা হয়েছে, ২৮ আগস্ট জরুরি বোর্ড মিটিং সভার সিদ্ধান্ত অনুযায়ী অধ্যাপক আবদুর রব খানকে ভারপ্রাপ্ত উপাচার্য হিসেবে দায়িত্বভার অর্পণ করেছে ইউনিভার্সিটির ট্রাস্টি বোর্ড।বিজ্ঞপ্তিতে বলা হয়েছে, ২৮ আগস্ট জরুরি বোর্ড মিটিং সভার সিদ্ধান্ত অনুযায়ী অধ্যাপক আবদুর রব খানকে ভারপ্রাপ্ত উপাচার্য হিসেবে দায়িত্বভার অর্পণ করেছে ইউনিভার্সিটির ট্রাস্টি বোর্ড।বিজ্ঞপ্তিতে বলা হয়েছে, ২৮ আগস্ট জরুরি বোর্ড মিটিং সভার সিদ্ধান্ত অনুযায়ী অধ্যাপক আবদুর রব খানকে ভারপ্রাপ্ত উপাচার্য হিসেবে দায়িত্বভার অর্পণ করেছে ইউনিভার্সিটির ট্রাস্টি বোর্ড।</div>', '1726668108bPL3uSjh.jpg', NULL, NULL, NULL, NULL, 69, NULL, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-18 21:01:48', '2024-09-18 21:01:48', 'বেসরকারি নর্থ সাউথ ইউনিভার্সিটির (এনএসইউ) ভারপ্রাপ্ত উপাচার্য (ভিসি) হলেন অধ্যাপক আবদুর রব খান। তিনি প্রতিষ্ঠানটির কোষাধ্যক্ষ হিসেবে দায়িত্ব পালন করছিলেন। গতকাল শুক্রবার বিশ্ববিদ্যালয়টির এক বিজ্ঞপ্তিতে এ তথ্য জানানো হয়।', NULL, 'নর্থ সাউথ ইউনিভার্সিটির ভারপ্রাপ্ত উপাচার্য হলেন আবদুর রব খান', NULL, 0),
(502, 2, 'বিসিএসআইআরের চেয়ারম্যান হলেন সামিনা', 'বিসিএসআইআরের-চেয়ারম্যান-হলেন-সামিনা', 'article', 'বিসিএসআইআরের চেয়ারম্যান হলেন সামিনা আহমেদ', 0, 1, 1, 0, 1, 1, 0, 'বিসিএসআইআরের চেয়ারম্যান হলেন সামিনা আহমেদ', '<span style=\"text-align: justify;\">বাংলাদেশ বিজ্ঞান ও শিল্প গবেষণা পরিষদের (বিসিএসআইআর) চেয়ারম্যান হয়েছেন ড. সামিনা আহমেদ। আজ বুধবার জনপ্রশাসন মন্ত্রণালয়ের উপসচিব এ টি এম শরিফুল আলম স্বাক্ষরিত এক বিজ্ঞপ্তি থেকে এ তথ্য জানা গেছে।</span><br><div style=\"text-align: justify;\"><br></div><span style=\"text-align: justify;\">সামিনা আহমেদ একজন সুনামধন্য রসায়নবিদ। তিনি ৩০ বছর ধরে বিসিএসআইআরে কাজ করছেন। তিনি ঢাকা বিশ্ববিদ্যালয়ে রসায়নে পড়াশোনা করেছেন।</span><br><span style=\"text-align: justify;\">বাংলাদেশ বিজ্ঞান ও শিল্প গবেষণা পরিষদের (বিসিএসআইআর) চেয়ারম্যান হয়েছেন ড. সামিনা আহমেদ। আজ বুধবার জনপ্রশাসন মন্ত্রণালয়ের উপসচিব এ টি এম শরিফুল আলম স্বাক্ষরিত এক বিজ্ঞপ্তি থেকে এ তথ্য জানা গেছে।</span><br><div style=\"text-align: justify;\"><br></div><span style=\"text-align: justify;\">সামিনা আহমেদ একজন সুনামধন্য রসায়নবিদ। তিনি ৩০ বছর ধরে বিসিএসআইআরে কাজ করছেন। তিনি ঢাকা বিশ্ববিদ্যালয়ে রসায়নে পড়াশোনা করেছেন।</span><br><div style=\"text-align: justify;\"><br></div><span style=\"text-align: justify;\">বাংলাদেশ বিজ্ঞান ও শিল্প গবেষণা পরিষদের (বিসিএসআইআর) চেয়ারম্যান হয়েছেন ড. সামিনা আহমেদ। আজ বুধবার জনপ্রশাসন মন্ত্রণালয়ের উপসচিব এ টি এম শরিফুল আলম স্বাক্ষরিত এক বিজ্ঞপ্তি থেকে এ তথ্য জানা গেছে।</span><br><div style=\"text-align: justify;\"><br></div><span style=\"text-align: justify;\">সামিনা আহমেদ একজন সুনামধন্য রসায়নবিদ। তিনি ৩০ বছর ধরে বিসিএসআইআরে কাজ করছেন। তিনি ঢাকা বিশ্ববিদ্যালয়ে রসায়নে পড়াশোনা করেছেন।</span><br><div style=\"text-align: justify;\"><br></div><span style=\"text-align: justify;\">বাংলাদেশ বিজ্ঞান ও শিল্প গবেষণা পরিষদের (বিসিএসআইআর) চেয়ারম্যান হয়েছেন ড. সামিনা আহমেদ। আজ বুধবার জনপ্রশাসন মন্ত্রণালয়ের উপসচিব এ টি এম শরিফুল আলম স্বাক্ষরিত এক বিজ্ঞপ্তি থেকে এ তথ্য জানা গেছে।</span><br><div style=\"text-align: justify;\"><br></div><span style=\"text-align: justify;\">সামিনা আহমেদ একজন সুনামধন্য রসায়নবিদ। তিনি ৩০ বছর ধরে বিসিএসআইআরে কাজ করছেন। তিনি ঢাকা বিশ্ববিদ্যালয়ে রসায়নে পড়াশোনা করেছেন।</span><br>', '1726668891QXFamrHb.jpg', NULL, NULL, NULL, NULL, 68, NULL, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-18 14:14:51', '2024-09-18 21:14:51', 'বাংলাদেশ বিজ্ঞান ও শিল্প গবেষণা পরিষদের (বিসিএসআইআর) চেয়ারম্যান হয়েছেন ড. সামিনা আহমেদ। আজ বুধবার জনপ্রশাসন মন্ত্রণালয়ের উপসচিব এ টি এম শরিফুল আলম স্বাক্ষরিত এক বিজ্ঞপ্তি থেকে এ তথ্য জানা গেছে।', NULL, 'বিসিএসআইআরের চেয়ারম্যান হলেন সামিনা আহমেদ', NULL, 0),
(513, 2, 'শুরু থেকেই ছাত্র-জনতার বিপ্লবকে ধূলিসাৎ করতে প্রতিবিপ্লবের চেষ্টা হয়েছিল', 'শুরু-থেকেই-ছাত্র-জনতার-বিপ্লবকে-ধূলিসাৎ-করতে-প্রতিবিপ্লবের-চেষ্টা-হয়েছিল', 'article', NULL, 0, 1, 1, 0, 1, 1, 0, 'শুরু থেকেই ছাত্র-জনতার বিপ্লবকে ধূলিসাৎ করতে প্রতিবিপ্লবের চেষ্টা হয়েছিল', '<div style=\"text-align: justify;\">অন্তর্বর্তী সরকারের শুরু থেকেই দেশে প্রতিবিপ্লবের চেষ্টা করা হয়েছিল উল্লেখ করে জামায়াতে ইসলামীর সেক্রেটারি জেনারেল মিয়া গোলাম পরওয়ার প্রতিবিপ্লব ঠেকাতে সবাইকে সচেতন থাকার আহ্বান জানিয়েছেন। আজ শুক্রবার সকালে রাজশাহীতে দলের সদস্য সম্মেলনে তিনি বলেন, ‘এখনো দুই মাস হয়নি, একটা অরাজনৈতিক সরকার ক্ষমতায় এসে নতুন রাষ্ট্র বিনির্মাণের প্রচেষ্টা চালিয়ে যাচ্ছে। কিন্তু শুরু থেকেই এই ছাত্র-জনতার বিপ্লবকে ধূলিসাৎ করার জন্য একটা পাল্টা প্রতিবিপ্লবের চেষ্টা করা হয়েছিল। বাংলাদেশের দেশপ্রেমিক সেনাবাহিনী, ছাত্র-জনতার সেই বিপ্লবের প্রতিবিপ্লবকে ব্যর্থ করে দিয়েছে।’</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">রাজশাহী জেলা পরিষদ মিলনায়তনে মহানগর জামায়াতে ইসলামী আয়োজিত সদস্য সম্মেলনে প্রধান অতিথির বক্তব্যে মিয়া গোলাম পরওয়ার আরও বলেন, ‘তারা জুডিশিয়াল ক্যু করার চেষ্টা করেছিল। দলবাজ প্রধান বিচারপতির নেতৃত্বে হাইকোর্টের আপিল ডিভিশনের জাস্টিসরা (বিচারপতিরা) ষড়যন্ত্র করে প্রথমে তাঁরা একটা ফুলকোর্ট মিটিং করে ষড়যন্ত্র করছিল যে তাঁরা এই অন্তর্বর্তী সরকারকে বাতিল করবেন। এই খবর জানার পর আমাদের দামাল ছাত্রসমাজ হাইকোর্ট ঘেরাও করেছে এবং বিচারপতিদের পদত্যাগ দাবি করে। তখন প্রধান বিচারপতিসহ আওয়ামী লীগের প্রেতাত্মারা পদত্যাগ করতে বাধ্য হয়। আমাদের ছাত্রসমাজ জুডিশিয়াল ক্যু থেকে বাংলাদেশকে রক্ষা করতে সফলতার পরিচয় দিয়েছে।’</div>', '1726857379CRy77Er7.jpg', NULL, NULL, NULL, NULL, 54, 58, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-21 01:36:19', '2024-09-21 01:36:19', 'অন্তর্বর্তী সরকারের শুরু থেকেই দেশে প্রতিবিপ্লবের চেষ্টা করা হয়েছিল উল্লেখ করে জামায়াতে ইসলামীর সেক্রেটারি জেনারেল মিয়া গোলাম পরওয়ার প্রতিবিপ্লব ঠেকাতে সবাইকে সচেতন থাকার আহ্বান জানিয়েছেন।', NULL, 'শুরু থেকেই ছাত্র-জনতার বিপ্লবকে ধূলিসাৎ করতে প্রতিবিপ্লবের চেষ্টা হয়েছিল', NULL, 0),
(514, 2, 'যুক্তরাষ্ট্রের দেওয়া ক্ষেপণাস্ত্র ব্যবস্থা মোতায়েন রাখতে চায় ফিলিপাইন', 'যুক্তরাষ্ট্রের-দেওয়া-ক্ষেপণাস্ত্র-ব্যবস্থা-মোতায়েন-রাখতে-চায়-ফিলিপাইন', 'article', 'যুক্তরাষ্ট্রের দেওয়া ক্ষেপণাস্ত্র ব্যবস্থা মোতায়েন রাখতে চায় ফিলিপাইন', 0, 1, 1, 0, 1, 1, 0, 'যুক্তরাষ্ট্রের দেওয়া ক্ষেপণাস্ত্র ব্যবস্থা মোতায়েন রাখতে চায় ফিলিপাইন', '<div style=\"text-align: justify;\">চীনের আপত্তির মুখেও ভবিষ্যতে মধ্যপাল্লার ক্ষমতাসম্পন্ন ক্ষেপণাস্ত্র সংগ্রহে রাখতে চায় ফিলিপাইন। এ ছাড়া সামরিক প্রশিক্ষণের জন্য যুক্তরাষ্ট্রের দেওয়া টাইফোন সিস্টেমও ব্যবহার করতে চায়।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">যুক্তরাষ্ট্রের পক্ষ থেকে সামরিক মহড়ার জন্য ফিলিপাইনে স্থাপন করা টাইফোন ক্ষেপণাস্ত্র লাঞ্চার ফেরত দেওয়ার পরিকল্পনা নেই দেশটির। আজ শুক্রবার দেশটির একজন শীর্ষ নিরাপত্তা কর্মকর্তা এ কথা বলেন।চীনের আপত্তির মুখেও ভবিষ্যতে মধ্যপাল্লার ক্ষমতাসম্পন্ন ক্ষেপণাস্ত্র সংগ্রহে রাখতে চায় ফিলিপাইন। এ ছাড়া সামরিক প্রশিক্ষণের জন্য যুক্তরাষ্ট্রের দেওয়া টাইফোন সিস্টেমও ব্যবহার করতে চায়।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">যুক্তরাষ্ট্রের পক্ষ থেকে সামরিক মহড়ার জন্য ফিলিপাইনে স্থাপন করা টাইফোন ক্ষেপণাস্ত্র লাঞ্চার ফেরত দেওয়ার পরিকল্পনা নেই দেশটির। আজ শুক্রবার দেশটির একজন শীর্ষ নিরাপত্তা কর্মকর্তা এ কথা বলেন।চীনের আপত্তির মুখেও ভবিষ্যতে মধ্যপাল্লার ক্ষমতাসম্পন্ন ক্ষেপণাস্ত্র সংগ্রহে রাখতে চায় ফিলিপাইন। এ ছাড়া সামরিক প্রশিক্ষণের জন্য যুক্তরাষ্ট্রের দেওয়া টাইফোন সিস্টেমও ব্যবহার করতে চায়।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">যুক্তরাষ্ট্রের পক্ষ থেকে সামরিক মহড়ার জন্য ফিলিপাইনে স্থাপন করা টাইফোন ক্ষেপণাস্ত্র লাঞ্চার ফেরত দেওয়ার পরিকল্পনা নেই দেশটির। আজ শুক্রবার দেশটির একজন শীর্ষ নিরাপত্তা কর্মকর্তা এ কথা বলেন।চীনের আপত্তির মুখেও ভবিষ্যতে মধ্যপাল্লার ক্ষমতাসম্পন্ন ক্ষেপণাস্ত্র সংগ্রহে রাখতে চায় ফিলিপাইন। এ ছাড়া সামরিক প্রশিক্ষণের জন্য যুক্তরাষ্ট্রের দেওয়া টাইফোন সিস্টেমও ব্যবহার করতে চায়।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">যুক্তরাষ্ট্রের পক্ষ থেকে সামরিক মহড়ার জন্য ফিলিপাইনে স্থাপন করা টাইফোন ক্ষেপণাস্ত্র লাঞ্চার ফেরত দেওয়ার পরিকল্পনা নেই দেশটির। আজ শুক্রবার দেশটির একজন শীর্ষ নিরাপত্তা কর্মকর্তা এ কথা বলেন।চীনের আপত্তির মুখেও ভবিষ্যতে মধ্যপাল্লার ক্ষমতাসম্পন্ন ক্ষেপণাস্ত্র সংগ্রহে রাখতে চায় ফিলিপাইন। এ ছাড়া সামরিক প্রশিক্ষণের জন্য যুক্তরাষ্ট্রের দেওয়া টাইফোন সিস্টেমও ব্যবহার করতে চায়।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">যুক্তরাষ্ট্রের পক্ষ থেকে সামরিক মহড়ার জন্য ফিলিপাইনে স্থাপন করা টাইফোন ক্ষেপণাস্ত্র লাঞ্চার ফেরত দেওয়ার পরিকল্পনা নেই দেশটির। আজ শুক্রবার দেশটির একজন শীর্ষ নিরাপত্তা কর্মকর্তা এ কথা বলেন।চীনের আপত্তির মুখেও ভবিষ্যতে মধ্যপাল্লার ক্ষমতাসম্পন্ন ক্ষেপণাস্ত্র সংগ্রহে রাখতে চায় ফিলিপাইন। এ ছাড়া সামরিক প্রশিক্ষণের জন্য যুক্তরাষ্ট্রের দেওয়া টাইফোন সিস্টেমও ব্যবহার করতে চায়।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">যুক্তরাষ্ট্রের পক্ষ থেকে সামরিক মহড়ার জন্য ফিলিপাইনে স্থাপন করা টাইফোন ক্ষেপণাস্ত্র লাঞ্চার ফেরত দেওয়ার পরিকল্পনা নেই দেশটির। আজ শুক্রবার দেশটির একজন শীর্ষ নিরাপত্তা কর্মকর্তা এ কথা বলেন।</div>', '1726857530AT7sKogE.jpg', NULL, NULL, NULL, NULL, 55, 65, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-21 01:38:50', '2024-09-21 01:38:50', 'চীনের আপত্তির মুখেও ভবিষ্যতে মধ্যপাল্লার ক্ষমতাসম্পন্ন ক্ষেপণাস্ত্র সংগ্রহে রাখতে চায় ফিলিপাইন। এ ছাড়া সামরিক প্রশিক্ষণের জন্য যুক্তরাষ্ট্রের দেওয়া টাইফোন সিস্টেমও ব্যবহার করতে চায়।', NULL, 'যুক্তরাষ্ট্রের দেওয়া ক্ষেপণাস্ত্র ব্যবস্থা মোতায়েন রাখতে চায় ফিলিপাইন', NULL, 0),
(515, 2, 'পেজার ও ওয়াকিটকি তৈরির কথা স্বীকার করছে না কোনো প্রতিষ্ঠান', 'পেজার-ও-ওয়াকিটকি-তৈরির-কথা-স্বীকার-করছে-না-কোনো-প্রতিষ্ঠান', 'article', NULL, 0, 1, 1, 0, 1, 1, 0, 'পেজার ও ওয়াকিটকি তৈরির কথা স্বীকার করছে না কোনো প্রতিষ্ঠান', '<div style=\"text-align: justify;\">লেবাননের হিজবুল্লাহ গোষ্ঠীর কাছে পেজার (তারহীন যোগাযোগের যন্ত্র) বিক্রির সঙ্গে জড়িত থাকার কথা অস্বীকার করেছে তাইওয়ান ও বুলগেরিয়া। গত মঙ্গলবার হিজবুল্লাহর ব্যবহার করা কয়েক হাজার পেজার বিস্ফোরিত হয়। এ ঘটনাকে হিজবুল্লাহর জন্য বড় ধাক্কা হিসেবে দেখা হচ্ছে।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">পেজার বিস্ফোরণের পরদিনই হিজবুল্লাহ সদস্যদের হাতে থাকা ওয়াকিটকি বিস্ফোরণের ঘটনাও ঘটে। এ দুই ঘটনায় ৩৭ জন নিহত হন। আহত হন প্রায় তিন হাজার। হতাহত ব্যক্তিদের মধ্যে শিশুও রয়েছে।লেবাননের হিজবুল্লাহ গোষ্ঠীর কাছে পেজার (তারহীন যোগাযোগের যন্ত্র) বিক্রির সঙ্গে জড়িত থাকার কথা অস্বীকার করেছে তাইওয়ান ও বুলগেরিয়া। গত মঙ্গলবার হিজবুল্লাহর ব্যবহার করা কয়েক হাজার পেজার বিস্ফোরিত হয়। এ ঘটনাকে হিজবুল্লাহর জন্য বড় ধাক্কা হিসেবে দেখা হচ্ছে।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">পেজার বিস্ফোরণের পরদিনই হিজবুল্লাহ সদস্যদের হাতে থাকা ওয়াকিটকি বিস্ফোরণের ঘটনাও ঘটে। এ দুই ঘটনায় ৩৭ জন নিহত হন। আহত হন প্রায় তিন হাজার। হতাহত ব্যক্তিদের মধ্যে শিশুও রয়েছে।লেবাননের হিজবুল্লাহ গোষ্ঠীর কাছে পেজার (তারহীন যোগাযোগের যন্ত্র) বিক্রির সঙ্গে জড়িত থাকার কথা অস্বীকার করেছে তাইওয়ান ও বুলগেরিয়া। গত মঙ্গলবার হিজবুল্লাহর ব্যবহার করা কয়েক হাজার পেজার বিস্ফোরিত হয়। এ ঘটনাকে হিজবুল্লাহর জন্য বড় ধাক্কা হিসেবে দেখা হচ্ছে।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">পেজার বিস্ফোরণের পরদিনই হিজবুল্লাহ সদস্যদের হাতে থাকা ওয়াকিটকি বিস্ফোরণের ঘটনাও ঘটে। এ দুই ঘটনায় ৩৭ জন নিহত হন। আহত হন প্রায় তিন হাজার। হতাহত ব্যক্তিদের মধ্যে শিশুও রয়েছে।লেবাননের হিজবুল্লাহ গোষ্ঠীর কাছে পেজার (তারহীন যোগাযোগের যন্ত্র) বিক্রির সঙ্গে জড়িত থাকার কথা অস্বীকার করেছে তাইওয়ান ও বুলগেরিয়া। গত মঙ্গলবার হিজবুল্লাহর ব্যবহার করা কয়েক হাজার পেজার বিস্ফোরিত হয়। এ ঘটনাকে হিজবুল্লাহর জন্য বড় ধাক্কা হিসেবে দেখা হচ্ছে।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">পেজার বিস্ফোরণের পরদিনই হিজবুল্লাহ সদস্যদের হাতে থাকা ওয়াকিটকি বিস্ফোরণের ঘটনাও ঘটে। এ দুই ঘটনায় ৩৭ জন নিহত হন। আহত হন প্রায় তিন হাজার। হতাহত ব্যক্তিদের মধ্যে শিশুও রয়েছে।লেবাননের হিজবুল্লাহ গোষ্ঠীর কাছে পেজার (তারহীন যোগাযোগের যন্ত্র) বিক্রির সঙ্গে জড়িত থাকার কথা অস্বীকার করেছে তাইওয়ান ও বুলগেরিয়া। গত মঙ্গলবার হিজবুল্লাহর ব্যবহার করা কয়েক হাজার পেজার বিস্ফোরিত হয়। এ ঘটনাকে হিজবুল্লাহর জন্য বড় ধাক্কা হিসেবে দেখা হচ্ছে।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">পেজার বিস্ফোরণের পরদিনই হিজবুল্লাহ সদস্যদের হাতে থাকা ওয়াকিটকি বিস্ফোরণের ঘটনাও ঘটে। এ দুই ঘটনায় ৩৭ জন নিহত হন। আহত হন প্রায় তিন হাজার। হতাহত ব্যক্তিদের মধ্যে শিশুও রয়েছে।লেবাননের হিজবুল্লাহ গোষ্ঠীর কাছে পেজার (তারহীন যোগাযোগের যন্ত্র) বিক্রির সঙ্গে জড়িত থাকার কথা অস্বীকার করেছে তাইওয়ান ও বুলগেরিয়া। গত মঙ্গলবার হিজবুল্লাহর ব্যবহার করা কয়েক হাজার পেজার বিস্ফোরিত হয়। এ ঘটনাকে হিজবুল্লাহর জন্য বড় ধাক্কা হিসেবে দেখা হচ্ছে।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">পেজার বিস্ফোরণের পরদিনই হিজবুল্লাহ সদস্যদের হাতে থাকা ওয়াকিটকি বিস্ফোরণের ঘটনাও ঘটে। এ দুই ঘটনায় ৩৭ জন নিহত হন। আহত হন প্রায় তিন হাজার। হতাহত ব্যক্তিদের মধ্যে শিশুও রয়েছে।লেবাননের হিজবুল্লাহ গোষ্ঠীর কাছে পেজার (তারহীন যোগাযোগের যন্ত্র) বিক্রির সঙ্গে জড়িত থাকার কথা অস্বীকার করেছে তাইওয়ান ও বুলগেরিয়া। গত মঙ্গলবার হিজবুল্লাহর ব্যবহার করা কয়েক হাজার পেজার বিস্ফোরিত হয়। এ ঘটনাকে হিজবুল্লাহর জন্য বড় ধাক্কা হিসেবে দেখা হচ্ছে।</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">পেজার বিস্ফোরণের পরদিনই হিজবুল্লাহ সদস্যদের হাতে থাকা ওয়াকিটকি বিস্ফোরণের ঘটনাও ঘটে। এ দুই ঘটনায় ৩৭ জন নিহত হন। আহত হন প্রায় তিন হাজার। হতাহত ব্যক্তিদের মধ্যে শিশুও রয়েছে।</div>', '1726857660EYajrSXS.jpg', NULL, NULL, NULL, NULL, 55, 64, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-21 01:41:00', '2024-09-21 01:41:00', 'লেবাননের হিজবুল্লাহ গোষ্ঠীর কাছে পেজার (তারহীন যোগাযোগের যন্ত্র) বিক্রির সঙ্গে জড়িত থাকার কথা অস্বীকার করেছে তাইওয়ান ও বুলগেরিয়া। গত মঙ্গলবার হিজবুল্লাহর ব্যবহার করা কয়েক হাজার পেজার বিস্ফোরিত হয়। এ ঘটনাকে হিজবুল্লাহর জন্য বড় ধাক্কা হিসেবে দেখা হচ্ছে।', NULL, 'পেজার ও ওয়াকিটকি তৈরির কথা স্বীকার করছে না কোনো প্রতিষ্ঠান', NULL, 0),
(516, 2, 'ওয়েসিস ফিরছে, পুরোনো জাদু ফিরবে কি', 'ওয়েসিস-ফিরছে,-পুরোনো-জাদু-ফিরবে-কি', 'article', 'ওয়েসিস ফিরছে, পুরোনো জাদু ফিরবে কি', 0, 1, 1, 0, 1, 1, 0, 'ওয়েসিস ফিরছে, পুরোনো জাদু ফিরবে কি', '<div style=\"text-align: justify;\">২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।</div><div style=\"text-align: justify;\">২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।</div><div style=\"text-align: justify;\">২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।</div>', '1726903877SGSHkbda.jpg', NULL, NULL, NULL, NULL, 72, NULL, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-21 07:31:17', '2024-09-21 07:31:17', '২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা,', NULL, 'ওয়েসিস ফিরছে, পুরোনো জাদু ফিরবে কি', NULL, 0),
(517, 2, 'দর্শক নাটকে মন খারাপের গল্প দেখতে পছন্দ করেন', 'দর্শক-নাটকে-মন-খারাপের-গল্প-দেখতে-পছন্দ-করেন', 'article', 'ওয়েসিস ফিরছে, পুরোনো জাদু ফিরবে কি', 0, 1, 1, 0, 1, 1, 0, 'ওয়েসিস ফিরছে, পুরোনো জাদু ফিরবে কি', '<div style=\"text-align: justify;\">২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।</div><div style=\"text-align: justify;\">২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।</div><div style=\"text-align: justify;\">২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।</div>', '1726903991OAwx1mdc.jpg', NULL, NULL, NULL, NULL, 72, NULL, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-21 07:33:11', '2024-09-21 07:33:11', '২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা,', NULL, 'ওয়েসিস ফিরছে, পুরোনো জাদু ফিরবে কি', NULL, 0),
(518, 2, '‘কে এই হাসান’কে থামিয়ে অশ্বিন-জাদেজা ঝড়', '‘কে-এই-হাসান’কে-থামিয়ে-অশ্বিন-জাদেজা-ঝড়', 'article', 'ওয়েসিস ফিরছে, পুরোনো জাদু ফিরবে কি', 0, 1, 1, 0, 1, 1, 0, 'ওয়েসিস ফিরছে, পুরোনো জাদু ফিরবে কি', '<div style=\"text-align: justify;\">২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।</div><div style=\"text-align: justify;\">২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।</div><div style=\"text-align: justify;\">২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।</div>', '1726904144w4AFVpRa.jpg', NULL, NULL, NULL, NULL, 71, NULL, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-21 07:35:44', '2024-09-21 07:35:44', '২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা,', NULL, 'ওয়েসিস ফিরছে, পুরোনো জাদু ফিরবে কি', NULL, 0),
(519, 2, 'সেঞ্চুরি করা অশ্বিনের কথায় কি বাংলাদেশের ব্যাটসম্যানরা ভয় পাবে', 'সেঞ্চুরি-করা-অশ্বিনের-কথায়-কি-বাংলাদেশের-ব্যাটসম্যানরা-ভয়-পাবে', 'article', 'ওয়েসিস ফিরছে, পুরোনো জাদু ফিরবে কি', 0, 1, 1, 0, 1, 1, 0, 'ওয়েসিস ফিরছে, পুরোনো জাদু ফিরবে কি', '<div style=\"text-align: justify;\">২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।</div><div style=\"text-align: justify;\">২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।</div><div style=\"text-align: justify;\">২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।</div>', '1726904198K8eviUCS.jpg', NULL, NULL, NULL, NULL, 71, NULL, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-21 07:36:38', '2024-09-21 07:36:38', '২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা,', NULL, 'ওয়েসিস ফিরছে, পুরোনো জাদু ফিরবে কি', NULL, 0),
(520, 2, 'এডিডিতে আক্রান্ত আলিয়া', 'এডিডিতে-আক্রান্ত-আলিয়া', 'article', 'ওয়েসিস ফিরছে, পুরোনো জাদু ফিরবে কি', 0, 1, 1, 0, 1, 1, 0, 'ওয়েসিস ফিরছে, পুরোনো জাদু ফিরবে কি', '<div style=\"text-align: justify;\">২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।</div><div style=\"text-align: justify;\">২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।</div><div style=\"text-align: justify;\">২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।</div>', '1726904304rWpgYIMH.jpg', NULL, NULL, NULL, NULL, 70, NULL, 0, NULL, 0, 1, 'true', 0, NULL, '2024-09-21 07:38:24', '2024-09-21 07:38:24', '২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা,', NULL, 'ওয়েসিস ফিরছে, পুরোনো জাদু ফিরবে কি', NULL, 0),
(521, 2, 'সালমান শাহ: ইস্কাটন রোডের ফ্ল্যাটে কী হয়েছিল সেই শুক্রবারে', 'সালমান-শাহ:-ইস্কাটন-রোডের-ফ্ল্যাটে-কী-হয়েছিল-সেই-শুক্রবারে', 'article', 'ওয়েসিস ফিরছে, পুরোনো জাদু ফিরবে কি', 0, 1, 1, 0, 1, 1, 0, 'ওয়েসিস ফিরছে, পুরোনো জাদু ফিরবে কি', '<div style=\"text-align: justify;\">২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।</div><div style=\"text-align: justify;\">২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।</div><div style=\"text-align: justify;\">২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা, গত এক দশকের বেশি সময় তো দৃশ্যপটেই ছিল না। প্রথম অ্যালবাম মুক্তির ৩০ বছর পূর্তির ঠিক দুই দিন আগে পুনর্মিলনীর ঘোষণা দিল তারা; জানাল, আগামী বছর কনসার্ট করবে। এর পর থেকেই কনসার্টের টিকিট নিয়ে রীতিমতো হুলুস্থুল। বিশ্বসংগীতের ভক্তরা নিশ্চয় এরই মধ্যে বুঝে গেছেন, কার কথা হচ্ছে। গত ২৭ আগস্ট ‘ওয়েসিস লাইভ ’২৫ ট্যুর’-এর ঘোষণা দিয়েছে ওয়েসিস।</div>', '1728455396AZ3RuXa9.jpg', NULL, NULL, NULL, NULL, 70, NULL, 0, NULL, 0, 1, 'true', 0, NULL, '2024-10-09 06:29:56', '2024-10-09 06:29:56', '২৯ আগস্ট ১৯৯৪। নিজেদের প্রথম অ্যালবাম মুক্তির পরই শোরগোল ফেলে দেয় আনকোরা নতুন ব্রিটিশ এক রক ব্যান্ড, পরের এক দশকে তারা হয়ে ওঠে বিশ্বসংগীতে অন্যতম প্রভাব বিস্তারকারী ব্যান্ড। এরপর ধীরে ধীরে খেই হারাতে থাকে তারা,', NULL, 'ওয়েসিস ফিরছে, পুরোনো জাদু ফিরবে কি', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `section` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `section`) VALUES
(1, 'admin', '[\"menu_builder\",\"pages\",\"categories\",\"add_post\",\"add_gallery\",\"posts\",\"schedule_post\",\"drafts\",\"rss_feeds\",\"polls\",\"widgets\",\"create_ads\",\"newsLetter\",\"contact_messages\",\"languages\",\"general_settings\",\"social_settings\",\"seo_tools\",\"emails_settings\",\"role_management\",\"font_option\",\"user_management\",\"cache_management\",\"administration_management\"]'),
(2, 'moderator', '[\"pages\",\"categories\",\"add_post\",\"add_gallery\",\"posts\",\"schedule_post\",\"drafts\",\"rss_feeds\",\"polls\",\"widgets\",\"create_ads\",\"newsLetter\",\"contact_messages\",\"languages\",\"general_settings\",\"social_settings\",\"seo_tools\",\"emails_settings\",\"font_option\",\"user_management\",\"cache_management\"]'),
(3, 'author', '[\"add_post\",\"add_gallery\",\"posts\",\"schedule_post\",\"drafts\",\"cache_management\"]'),
(4, 'user', '[\"add_post\",\"posts\",\"schedule_post\",\"drafts\"]');

-- --------------------------------------------------------

--
-- Table structure for table `rss_feeds`
--

CREATE TABLE `rss_feeds` (
  `id` int NOT NULL,
  `language_id` int NOT NULL,
  `feed_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `feed_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `post_limit` int DEFAULT NULL,
  `category_id` int NOT NULL,
  `auto_update` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seotools`
--

CREATE TABLE `seotools` (
  `id` int NOT NULL,
  `google_analytics` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keys` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seotools`
--

INSERT INTO `seotools` (`id`, `google_analytics`, `meta_keys`, `meta_description`) VALUES
(1, '<!-- Google tag (gtag.js) -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=G-F758S21JWX\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'G-F758S21JWX\');\r\n</script>', 'Songbad', 'This is A Professional News Protal Website in Bangladesh.');

-- --------------------------------------------------------

--
-- Table structure for table `short_lists`
--

CREATE TABLE `short_lists` (
  `id` int NOT NULL,
  `post_id` int NOT NULL,
  `item_title` varchar(255) DEFAULT NULL,
  `item_photo` varchar(255) DEFAULT NULL,
  `item_description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `short_lists`
--

INSERT INTO `short_lists` (`id`, `post_id`, `item_title`, `item_photo`, `item_description`) VALUES
(5, 194, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra', '1588399220tmOLewct.jpg', '<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec rhoncus feugiat magna ut hendrerit. Mauris non consectetur nunc. Nam scelerisque ex a posuere porttitor. Morbi tincidunt eget odio nec pretium. Morbi aliquam, elit nec interdum commodo, metus neque tincidunt tellus, a hendrerit risus magna sit amet turpis.</p>\n<div id=\"gtx-trans\" style=\"position: absolute; left: 820px; top: -12px;\">\n<div class=\"gtx-trans-icon\"></div></div>'),
(6, 194, 'Vivamus sit amet turpis at nisl elementum pellentesque', '1588399222Y1S1NXTT.jpg', '<p>Integer non cursus ligula, et varius diam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vestibulum auctor, tellus sit amet dapibus ultricies, lorem tortor efficitur enim, et gravida eros felis et lectus. Cras a condimentum felis. Sed congue mauris vel lectus scelerisque, id rutrum velit dictum. Nam sapien neque, interdum at mi quis, viverra pellentesque metus. Etiam in ante nunc.</p>\n<div id=\"gtx-trans\" style=\"position: absolute; left: 673px; top: 8px;\">\n<div class=\"gtx-trans-icon\"></div></div>'),
(7, 194, 'Quisque efficitur augue eget enim malesuada auctor', '1588399223xqQYMrBn.jpg', '<p>Cras hendrerit enim ut turpis commodo, eget porta massa ullamcorper. Maecenas quis maximus ipsum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed hendrerit magna ligula, nec malesuada lectus finibus vel. Praesent varius rutrum nunc, sit amet tincidunt dolor ultrices nec.</p>\n<div id=\"gtx-trans\" style=\"position: absolute; left: 629px; top: 33px;\">\n<div class=\"gtx-trans-icon\"></div></div>'),
(10, 255, 'German Shepherd Dogs can stand as high as 26 inches', '1591550393Q2NLPIRu.jpg', '<span style=\"color: rgb(34, 34, 35); font-family: Lato, Arial, sans-serif; font-size: small;\">German Shepherd Dogs can stand as high as 26 inches at the shoulder and, when viewed in outline, presents a picture of smooth, graceful curves rather than angles. The natural gait is a free-and-easy trot, but they can turn it up a notch or two and reach great speeds.</span><br>'),
(11, 255, 'The graceful, medium-sized Siberian Husky', '1591550394uN7rYki9.jpg', '<span style=\"color: rgb(34, 34, 35); font-family: Lato, Arial, sans-serif; background-color: rgb(255, 255, 255);\"><font size=\"2\">The graceful, medium-sized Siberian Husky’s almond-shaped eyes can be either brown or blue—and sometimes one of each—and convey a keen but amiable and even mischievous expression. Quick and nimble-footed, Siberians are known for their powerful but seemingly effortless gait. Tipping the scales at no more than 60 pounds, they are noticeably smaller and lighter than their burly cousin,</font></span><br>'),
(12, 256, 'xcv', '1591551708qW75IKmu.jpg', 'cxvx'),
(13, 257, 'The graceful, medium-sized Siberian Husky', '15915524243Duq53wW.jpg', 'Enter some text in the fields below, then press the \"Reset form\" button to reset the form.<br>'),
(14, 257, 'xcv', '15915524255ilvg4Rh.jpg', 'Enter some text in the fields below, then press the \"Reset form\" button to reset the form.<br>'),
(15, 258, 'The graceful, medium-sized Siberian Husky', '1591552592BmXwB3AH.jpg', 'Enter some text in the fields below, then press the \"Reset form\" button to reset the form.<br>'),
(16, 258, 'xcv', '1591552593hl5zxFGy.jpg', 'Enter some text in the fields below, then press the \"Reset form\" button to reset the form.<br>'),
(17, 259, 'The graceful, medium-sized Siberian Husky', '1591552897AgQ3Zdjx.jpg', 'Enter some text in the fields below, then press the \"Reset form\" button to reset the form.<br>'),
(18, 259, 'xcv', '1591552898tAcDIof4.jpg', 'Enter some text in the fields below, then press the \"Reset form\" button to reset the form.<br>'),
(19, 260, 'The graceful, medium-sized Siberian Husky', '1591594120cNPnlRpD.jpg', '<span style=\"color: rgb(26, 30, 37); font-family: -apple-system, &quot;Segoe UI&quot;, sans-serif; font-size: medium;\">This package can make a Laravel app tenant aware. The philosophy of this package is that it should only provide the bare essentials to enable multitenancy.</span><br>'),
(20, 261, NULL, NULL, '<br>'),
(21, 262, NULL, NULL, '<br>'),
(22, 264, 'The graceful, medium-sized Siberian Husky', '1591601362bJ0DWPQU.jpg', 'gjgh'),
(23, 263, 'The graceful, medium-sized Siberian Husky', '1591601362qgTvU4ea.jpg', 'gjgh'),
(24, 264, 'The graceful, medium-sized Siberian Husky', '1591601362ws3RJxxS.jpg', 'fghf'),
(25, 263, 'The graceful, medium-sized Siberian Husky', '1591601362appT3ApW.jpg', 'fghf'),
(26, 266, NULL, NULL, '<br>'),
(27, 265, NULL, NULL, '<br>'),
(28, 256, 'The graceful, medium-sized Siberian Husky', '1591764926cQXo4HYj.jpg', '<span style=\"color: rgb(57, 66, 78); font-family: &quot;Whitney SSm A&quot;, &quot;Whitney SSm B&quot;, Avenir, &quot;Segoe UI&quot;, Ubuntu, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The creator of this contest is solely responsible for setting and communicating the eligibility requirements associated with prizes awarded to participants, as well as for procurement and distribution of all prizes. The contest creator holds HackerRank harmless from and against any and all claims, losses, damages, costs, awards, settlements, orders, or fines.</span><br>'),
(29, 262, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1601367099Uy5jC5Fw.jpg', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br>'),
(30, 262, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1601367099zel3FMID.jpg', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br>'),
(31, 262, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1601367100YMHm45lS.jpg', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br>'),
(33, 325, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1601960815uK2seoy8.jpg', 'fghfg');

-- --------------------------------------------------------

--
-- Table structure for table `sitemaps`
--

CREATE TABLE `sitemaps` (
  `id` int NOT NULL,
  `sitemap_url` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `auto_update` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `socialsettings`
--

CREATE TABLE `socialsettings` (
  `id` int NOT NULL,
  `fclient_id` varchar(100) DEFAULT NULL,
  `fclient_secret` varchar(100) DEFAULT NULL,
  `fredirect` varchar(100) DEFAULT NULL,
  `gclient_id` varchar(100) DEFAULT NULL,
  `gclient_secret` varchar(100) DEFAULT NULL,
  `gredirect` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `socialsettings`
--

INSERT INTO `socialsettings` (`id`, `fclient_id`, `fclient_secret`, `fredirect`, `gclient_id`, `gclient_secret`, `gredirect`) VALUES
(1, '560315224867834', 'ebcdaa2a847428152e8f254ea9f95bab', 'https://localhost/newspaper/auth/facebook/callback', '904681031719-sh1aolu42k7l93ik0bkiddcboghbpcfi.apps.googleusercontent.com', 'yGBWmUpPtn5yWhDAsXnswEX3', 'http://localhost/newspaper/auth/google/callback');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `name`, `link`, `icon`) VALUES
(7, 'facebook', 'https://facebook.com/official.elitedesign', 'lab la-facebook-f'),
(8, 'twitter', 'https://facebook.com/official.elitedesign', 'lab la-twitter'),
(9, 'linkedin', 'https://facebook.com/official.elitedesign', 'lab la-linkedin-in'),
(10, 'youtube', 'https://youtube.com/@elitedesignbd', 'lab la-youtube');

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

CREATE TABLE `social_providers` (
  `id` int NOT NULL,
  `admin_id` int NOT NULL,
  `provider_id` varchar(191) NOT NULL,
  `provider` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`) VALUES
(16, 'mma.rifat66@gmail.com'),
(17, 'admin@gmail.com'),
(18, 'shagorbutterfly@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `trivia_answers`
--

CREATE TABLE `trivia_answers` (
  `id` int NOT NULL,
  `trivia_question_id` int NOT NULL,
  `answer_title` varchar(255) DEFAULT NULL,
  `correct_answer` tinyint DEFAULT '0',
  `answer_photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trivia_answers`
--

INSERT INTO `trivia_answers` (`id`, `trivia_question_id`, `answer_title`, `correct_answer`, `answer_photo`) VALUES
(372, 303, 'a', 0, '1602050454T7SgXAGq.jpg'),
(373, 303, NULL, 0, '1602050454ZRyO2mSt.jpg'),
(374, 304, 'a', 0, '16020504560VXzEAmG.jpg'),
(375, 304, NULL, 0, '1602050456nAFymf74.jpg'),
(376, 305, 'q', 0, NULL),
(377, 305, 'y', 0, NULL),
(378, 308, 'r', 0, NULL),
(379, 308, 't', 0, NULL),
(380, 309, 'a', 1, NULL),
(381, 309, 'b', 0, NULL),
(382, 310, 'a', 1, NULL),
(383, 310, 'b', 0, NULL),
(388, 313, 'a', 1, NULL),
(389, 313, 'b', 0, NULL),
(390, 314, 'a', 1, NULL),
(391, 314, 'b', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trivia_questions`
--

CREATE TABLE `trivia_questions` (
  `id` int NOT NULL,
  `post_id` int NOT NULL,
  `question_title` varchar(255) DEFAULT NULL,
  `question_photo` varchar(255) DEFAULT NULL,
  `question_description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trivia_questions`
--

INSERT INTO `trivia_questions` (`id`, `post_id`, `question_title`, `question_photo`, `question_description`) VALUES
(303, 334, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1602050453flJQswLe.jpg', '<br>'),
(304, 334, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1602050456a9Iq0UmF.jpg', '<br>'),
(305, 334, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1602050458cZMau9EY.jpg', '<br>'),
(306, 335, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1602051685Q0vCujHM.jpg', '<br>'),
(308, 354, 'gfgh', NULL, '<br>'),
(309, 355, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1602309736GigUSK0D.jpg', '<br>'),
(310, 356, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1602309771qFudLBgu.jpg', '<br>'),
(313, 379, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium', '1602646325T7sZOtR9.jpg', '<br>'),
(314, 380, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium', '1602646492swQzOIyN.jpg', '<br>');

-- --------------------------------------------------------

--
-- Table structure for table `trivia_results`
--

CREATE TABLE `trivia_results` (
  `id` int NOT NULL,
  `post_id` int NOT NULL,
  `result_title` varchar(255) DEFAULT NULL,
  `result_photo` varchar(255) DEFAULT NULL,
  `result_description` text,
  `min` int DEFAULT NULL,
  `max` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trivia_results`
--

INSERT INTO `trivia_results` (`id`, `post_id`, `result_title`, `result_photo`, `result_description`, `min`, `max`) VALUES
(61, 334, 'You are confident', '1602050460bQf9x3Xa.jpg', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</span><br>', NULL, NULL),
(62, 334, 'You are dull', '1602050460foIdm8QP.jpg', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</span><br>', NULL, NULL),
(63, 354, 'v', NULL, '<br>', NULL, NULL),
(64, 355, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1602309736e7mOdk5c.jpg', '<br>', 0, 1),
(65, 356, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1602309771qbx9Ju6B.jpg', '<br>', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` int NOT NULL,
  `post_id` int NOT NULL,
  `ip_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `post_id`, `ip_address`) VALUES
(14, 46, '::1'),
(26, 109, '::1'),
(27, 110, '::1'),
(28, 108, '::1'),
(29, 112, '::1'),
(31, 107, '::1'),
(50, 152, '::1'),
(54, 153, '::1'),
(82, 111, '::1'),
(84, 99, '::1'),
(85, 76, '::1'),
(87, 194, '::1'),
(93, 215, '::1'),
(131, 218, '::1'),
(132, 221, '::1'),
(134, 257, '::1'),
(135, 338, '::1'),
(151, 414, '103.54.150.47'),
(152, 414, '169.60.29.183'),
(153, 406, '103.54.150.47'),
(154, 406, '169.60.29.183'),
(155, 435, '103.54.150.47'),
(156, 435, '169.60.29.183'),
(157, 444, '103.54.150.47'),
(158, 444, '169.61.190.27'),
(159, 398, '103.54.150.47'),
(160, 398, '169.61.190.27'),
(161, 412, '103.54.150.47'),
(162, 412, '169.61.133.87'),
(163, 411, '103.54.150.47'),
(164, 411, '169.46.82.252'),
(167, 399, '203.189.227.70'),
(168, 399, '169.60.29.183'),
(169, 399, '173.252.83.120'),
(170, 399, '173.252.83.24'),
(171, 399, '173.252.83.1'),
(172, 399, '173.252.83.17'),
(173, 399, '173.252.83.12'),
(174, 399, '173.252.83.13'),
(175, 399, '173.252.83.3'),
(176, 403, '203.189.227.70'),
(177, 403, '169.46.82.252'),
(178, 419, '203.189.227.70'),
(179, 419, '169.63.251.251'),
(180, 420, '203.189.227.70'),
(181, 420, '169.63.251.251'),
(182, 434, '203.189.227.70'),
(183, 434, '169.46.82.252'),
(184, 406, '173.252.83.23'),
(185, 406, '173.252.83.21'),
(186, 406, '173.252.83.20'),
(187, 406, '173.252.95.9'),
(188, 406, '173.252.107.118'),
(189, 406, '173.252.95.16'),
(190, 406, '173.252.107.3'),
(191, 406, '173.252.95.26'),
(192, 406, '173.252.107.117'),
(193, 406, '173.252.83.12'),
(194, 406, '173.252.83.16'),
(195, 406, '69.171.251.11'),
(196, 423, '103.54.150.47'),
(197, 423, '169.61.133.87'),
(198, 423, '173.252.95.118'),
(199, 423, '173.252.95.11'),
(200, 423, '173.252.95.6'),
(201, 423, '173.252.107.14'),
(202, 423, '69.171.249.111'),
(203, 423, '173.252.107.7'),
(204, 423, '173.252.107.6'),
(205, 423, '69.171.249.15'),
(206, 423, '69.171.249.120'),
(207, 423, '173.252.95.18'),
(208, 423, '31.13.115.7'),
(209, 423, '74.114.154.10'),
(210, 423, '173.252.95.17'),
(211, 423, '173.252.95.116'),
(212, 423, '54.236.1.11'),
(213, 415, '103.54.150.47'),
(214, 415, '169.61.133.87'),
(215, 418, '103.54.150.47'),
(216, 418, '169.60.29.183'),
(217, 418, '69.171.251.117'),
(218, 418, '69.171.251.13'),
(219, 418, '69.171.251.22'),
(220, 418, '66.220.149.3'),
(221, 418, '173.252.83.20'),
(222, 418, '66.220.149.7'),
(223, 418, '66.220.149.23'),
(224, 418, '173.252.83.13'),
(225, 418, '173.252.83.22'),
(226, 418, '74.114.154.12'),
(227, 423, '66.220.149.21'),
(228, 418, '59.152.11.134'),
(229, 418, '173.252.83.18'),
(230, 418, '173.252.83.9'),
(231, 418, '173.252.83.8'),
(232, 418, '173.252.83.15'),
(233, 418, '173.252.83.6'),
(234, 398, '59.152.11.134'),
(235, 442, '59.152.11.134'),
(236, 442, '169.61.133.87'),
(237, 402, '59.152.11.134'),
(238, 402, '169.61.133.87'),
(239, 402, '173.252.83.7'),
(240, 402, '173.252.83.8'),
(241, 402, '173.252.127.120'),
(242, 402, '173.252.127.28'),
(243, 402, '173.252.127.12'),
(244, 402, '108.174.8.21'),
(245, 402, '173.252.83.5'),
(246, 402, '173.252.83.15'),
(247, 402, '173.252.83.12'),
(248, 402, '173.252.127.20'),
(249, 402, '173.252.95.19'),
(250, 414, '59.152.11.134'),
(251, 404, '59.152.11.134'),
(252, 404, '169.46.82.252'),
(253, 428, '59.152.11.134'),
(254, 428, '169.61.190.27'),
(255, 428, '54.236.1.11'),
(256, 403, '59.152.11.134'),
(257, 418, '66.220.149.116'),
(258, 418, '66.220.149.46'),
(259, 418, '66.220.149.36'),
(260, 418, '66.220.149.1'),
(261, 418, '66.220.149.26'),
(262, 418, '66.220.149.8'),
(263, 423, '66.220.149.30'),
(264, 423, '66.220.149.15'),
(265, 423, '66.220.149.36'),
(266, 418, '66.220.149.34'),
(267, 423, '66.220.149.20'),
(268, 423, '66.220.149.45'),
(269, 402, '173.252.83.17'),
(270, 402, '173.252.83.120'),
(271, 402, '173.252.83.117'),
(272, 402, '173.252.83.20'),
(273, 402, '173.252.83.117'),
(274, 402, '173.252.83.23'),
(275, 402, '173.252.83.20'),
(276, 402, '173.252.83.17'),
(277, 418, '173.252.95.20'),
(278, 418, '173.252.95.25'),
(279, 423, '173.252.95.119'),
(280, 406, '173.252.95.32'),
(281, 406, '173.252.95.111'),
(282, 423, '173.252.95.20'),
(283, 428, '66.249.79.41'),
(284, 402, '173.252.87.9'),
(285, 402, '173.252.87.6'),
(286, 423, '173.252.83.12'),
(287, 428, '54.236.1.13'),
(288, 427, '::1'),
(309, 474, '::1'),
(310, 475, '::1'),
(311, 477, '::1'),
(312, 479, '::1'),
(313, 480, '::1'),
(314, 481, '::1'),
(315, 482, '::1'),
(316, 486, '::1'),
(317, 487, '::1'),
(318, 488, '::1'),
(319, 484, '::1'),
(320, 489, '::1'),
(321, 478, '::1'),
(322, 490, '::1'),
(325, 515, '::1'),
(326, 488, '103.25.248.236'),
(327, 488, '69.171.234.10'),
(328, 515, '103.25.248.236'),
(329, 515, '69.171.234.9'),
(330, 514, '103.25.248.236'),
(331, 514, '69.171.234.114'),
(332, 502, '103.25.248.236'),
(333, 502, '69.171.234.112'),
(334, 497, '103.25.248.236'),
(335, 497, '69.171.234.7'),
(336, 515, '69.171.234.5'),
(337, 484, '37.111.222.41'),
(338, 484, '31.13.127.30'),
(339, 502, '37.111.222.41'),
(340, 502, '31.13.127.6'),
(341, 517, '118.179.56.198'),
(342, 517, '69.171.234.8'),
(343, 480, '103.111.14.1'),
(344, 480, '31.13.103.113'),
(345, 480, '31.13.103.8'),
(346, 480, '31.13.103.4'),
(347, 480, '173.252.83.31'),
(348, 521, '103.49.200.36'),
(349, 521, '69.171.234.7'),
(350, 479, '114.130.186.155'),
(351, 479, '173.252.95.5'),
(352, 479, '173.252.95.22'),
(353, 479, '173.252.95.16'),
(354, 479, '173.252.79.3'),
(355, 515, '37.111.232.65'),
(356, 515, '173.252.83.112'),
(357, 520, '217.182.175.163'),
(358, 520, '65.108.203.133'),
(359, 521, '118.179.56.198'),
(360, 521, '69.171.234.18'),
(361, 480, '124.243.137.11'),
(362, 485, '124.243.139.125'),
(363, 478, '111.119.207.238'),
(364, 478, '103.230.105.32'),
(365, 478, '173.252.95.112'),
(366, 478, '173.252.95.4'),
(367, 478, '173.252.95.25'),
(368, 478, '31.13.115.115'),
(369, 520, '149.202.86.56'),
(370, 487, '3.14.251.57'),
(371, 502, '18.118.226.240'),
(372, 495, '18.221.165.115'),
(373, 521, '3.21.46.78'),
(374, 500, '18.191.233.43'),
(375, 479, '3.136.17.139'),
(376, 498, '3.147.75.221'),
(377, 489, '3.144.97.187'),
(378, 518, '3.128.173.53'),
(379, 485, '3.144.37.196'),
(380, 478, '3.12.163.175'),
(381, 519, '3.145.202.61'),
(382, 494, '3.145.101.81'),
(383, 481, '18.118.24.30'),
(384, 476, '3.16.81.33'),
(385, 516, '3.144.114.85'),
(386, 488, '18.117.75.70'),
(387, 493, '3.137.186.178'),
(388, 517, '3.145.109.234'),
(389, 475, '18.221.89.18'),
(390, 499, '18.191.195.111'),
(391, 490, '3.128.205.21'),
(392, 496, '18.225.255.178'),
(393, 483, '18.118.12.50'),
(394, 474, '3.144.15.154'),
(395, 477, '18.226.165.70'),
(396, 486, '3.133.123.34'),
(397, 492, '18.116.80.34'),
(398, 515, '3.143.205.27'),
(399, 482, '3.145.172.146'),
(400, 480, '3.141.42.116'),
(401, 514, '3.14.252.56'),
(402, 484, '3.135.249.220'),
(403, 520, '18.226.170.187'),
(404, 497, '18.223.239.226'),
(405, 491, '3.145.70.170'),
(406, 513, '3.144.100.237'),
(407, 481, '3.145.11.227'),
(408, 475, '18.116.15.161'),
(409, 479, '18.219.236.70'),
(410, 480, '18.219.71.21'),
(411, 485, '18.118.10.32'),
(412, 490, '3.139.67.5'),
(413, 481, '52.15.38.176'),
(414, 515, '3.15.14.98'),
(415, 482, '18.117.98.250'),
(416, 490, '3.145.33.235'),
(417, 487, '3.22.74.160'),
(418, 495, '3.145.97.170'),
(419, 477, '18.191.176.99'),
(420, 516, '18.220.53.93'),
(421, 487, '3.135.204.0'),
(422, 500, '3.129.218.69'),
(423, 500, '13.59.141.75'),
(424, 514, '3.145.66.94'),
(425, 496, '3.133.157.142'),
(426, 477, '18.188.227.4'),
(427, 513, '3.145.175.253'),
(428, 479, '3.145.71.115'),
(429, 474, '3.22.71.28'),
(430, 478, '18.227.111.208'),
(431, 515, '3.128.226.255'),
(432, 496, '18.224.54.136'),
(433, 495, '3.145.45.5'),
(434, 484, '18.118.138.195'),
(435, 483, '3.149.241.250'),
(436, 498, '3.133.128.145'),
(437, 478, '18.118.12.186'),
(438, 492, '3.144.107.193'),
(439, 482, '18.118.152.58'),
(440, 486, '3.17.81.201'),
(441, 513, '18.118.0.145'),
(442, 502, '18.189.188.238'),
(443, 474, '18.117.231.15'),
(444, 518, '3.129.218.69'),
(445, 483, '3.129.42.243'),
(446, 486, '18.226.187.233'),
(447, 485, '18.191.189.186'),
(448, 493, '3.139.240.244'),
(449, 476, '3.144.107.193'),
(450, 499, '52.15.245.1'),
(451, 502, '52.15.245.1'),
(452, 520, '18.116.14.245'),
(453, 488, '3.145.7.208'),
(454, 476, '3.12.107.31'),
(455, 480, '18.225.149.238'),
(456, 475, '18.216.232.11'),
(457, 514, '18.218.45.80'),
(458, 494, '3.16.135.36'),
(459, 488, '18.219.134.198'),
(460, 491, '18.221.165.115'),
(461, 521, '18.226.133.49'),
(462, 484, '18.117.78.237'),
(463, 521, '3.144.30.178'),
(464, 492, '3.145.45.5'),
(465, 498, '3.144.172.38'),
(466, 494, '3.133.158.36'),
(467, 517, '18.119.142.232'),
(468, 499, '18.216.232.11'),
(469, 489, '18.118.198.81'),
(470, 520, '18.225.254.192'),
(471, 489, '18.222.164.141'),
(472, 517, '3.145.101.109'),
(473, 497, '18.224.59.192'),
(474, 516, '3.15.226.120'),
(475, 493, '3.15.26.221'),
(476, 518, '3.22.41.212'),
(477, 519, '3.133.156.251'),
(478, 491, '3.16.75.165'),
(479, 519, '3.143.239.103'),
(480, 516, '3.12.136.63'),
(481, 485, '18.116.67.70'),
(482, 518, '3.141.37.10'),
(483, 502, '3.143.254.90'),
(484, 493, '18.219.239.118'),
(485, 497, '18.222.114.28'),
(486, 499, '18.218.171.212'),
(487, 495, '3.139.97.53'),
(488, 492, '3.135.213.212'),
(489, 484, '3.149.234.188'),
(490, 487, '3.135.246.245'),
(491, 494, '3.138.36.38'),
(492, 520, '3.144.9.169'),
(493, 521, '18.117.93.0'),
(494, 496, '3.14.144.216'),
(495, 483, '52.15.245.1'),
(496, 498, '18.119.133.160'),
(497, 515, '3.145.179.85'),
(498, 481, '3.149.253.210'),
(499, 482, '18.118.138.195'),
(500, 500, '18.118.226.66'),
(501, 488, '3.14.131.47'),
(502, 490, '18.116.60.158'),
(503, 491, '52.15.42.128'),
(504, 486, '18.191.29.22'),
(505, 489, '3.15.206.25'),
(506, 513, '18.225.235.144'),
(507, 514, '18.226.177.86'),
(508, 519, '18.119.19.174'),
(509, 517, '18.222.184.200'),
(510, 496, '49.0.204.80'),
(511, 521, '202.134.11.230'),
(512, 521, '69.171.234.8'),
(513, 477, '190.92.201.248'),
(514, 521, '103.162.51.26'),
(515, 521, '173.252.95.10'),
(516, 502, '124.243.190.250'),
(517, 487, '166.108.230.183'),
(518, 482, '114.119.189.248'),
(519, 489, '124.243.150.207'),
(520, 491, '111.119.222.48'),
(521, 474, '190.92.209.34'),
(522, 486, '124.243.135.71'),
(523, 520, '103.148.99.65'),
(524, 520, '69.63.184.12'),
(525, 515, '103.148.99.65'),
(526, 515, '69.63.184.7'),
(527, 521, '36.255.82.241'),
(528, 521, '66.220.149.21'),
(529, 518, '103.73.46.239'),
(530, 518, '69.171.234.1'),
(531, 515, '59.152.5.224'),
(532, 521, '103.172.216.171'),
(533, 521, '69.171.231.8'),
(534, 515, '37.111.226.186'),
(535, 515, '69.171.234.25'),
(536, 477, '94.74.89.144'),
(537, 488, '190.92.219.117'),
(538, 520, '103.148.99.69'),
(539, 520, '173.252.83.9'),
(540, 478, '103.148.99.69'),
(541, 478, '173.252.83.3'),
(542, 478, '173.252.83.23'),
(543, 478, '173.252.83.45'),
(544, 518, '124.243.136.70'),
(545, 496, '124.243.139.110'),
(546, 486, '49.0.200.111'),
(547, 502, '124.243.137.11'),
(548, 477, '85.208.96.198'),
(549, 481, '85.208.96.205'),
(550, 520, '124.243.180.228'),
(551, 476, '185.191.171.9'),
(552, 474, '185.191.171.4'),
(553, 476, '110.238.106.30'),
(554, 494, '85.208.96.211'),
(555, 514, '190.92.216.45'),
(556, 478, '185.191.171.16'),
(557, 499, '124.243.184.164'),
(558, 480, '85.208.96.195'),
(559, 489, '124.243.132.41'),
(560, 494, '166.108.200.244'),
(561, 491, '124.243.132.29'),
(562, 520, '85.208.96.205'),
(563, 475, '190.92.201.153'),
(564, 475, '85.208.96.202'),
(565, 474, '190.92.208.52'),
(566, 516, '185.191.171.3'),
(567, 516, '190.92.204.112'),
(568, 517, '166.108.200.11'),
(569, 498, '119.8.173.215'),
(570, 484, '124.243.134.213'),
(571, 519, '119.8.166.250'),
(572, 481, '119.13.103.3'),
(573, 495, '111.119.196.216'),
(574, 521, '94.74.89.144'),
(575, 492, '124.243.185.50'),
(576, 500, '124.243.151.51'),
(577, 513, '159.138.99.103'),
(578, 520, '192.95.30.177'),
(579, 515, '94.74.92.239'),
(580, 485, '111.119.195.191'),
(581, 489, '103.187.94.250'),
(582, 489, '69.171.234.3'),
(583, 499, '103.187.94.250'),
(584, 499, '69.171.234.2'),
(585, 519, '103.187.94.250'),
(586, 519, '69.171.234.5'),
(587, 520, '65.108.2.171'),
(588, 482, '124.243.135.55'),
(589, 480, '114.119.174.222'),
(590, 485, '49.0.207.32'),
(591, 480, '185.191.171.4'),
(592, 475, '85.208.96.206'),
(593, 476, '85.208.96.206'),
(594, 477, '85.208.96.207'),
(595, 514, '85.208.96.202'),
(596, 478, '85.208.96.198'),
(597, 502, '185.191.171.13'),
(598, 516, '85.208.96.200'),
(599, 494, '85.208.96.196'),
(600, 481, '85.208.96.207'),
(601, 491, '185.191.171.6'),
(602, 474, '185.191.171.16'),
(603, 484, '85.208.96.198'),
(604, 485, '185.191.171.6'),
(605, 500, '85.208.96.198'),
(606, 517, '85.208.96.199'),
(607, 514, '173.252.83.32'),
(608, 483, '85.208.96.196'),
(609, 487, '85.208.96.204'),
(610, 494, '185.191.171.18'),
(611, 481, '66.220.149.38'),
(612, 482, '173.252.83.48'),
(613, 515, '69.171.230.9'),
(614, 484, '159.138.111.239'),
(615, 474, '185.191.171.18'),
(616, 495, '85.208.96.206'),
(617, 496, '85.208.96.205'),
(618, 499, '85.208.96.201'),
(619, 475, '85.208.96.199'),
(620, 480, '185.191.171.8'),
(621, 476, '185.191.171.12'),
(622, 486, '85.208.96.209'),
(623, 490, '85.208.96.201'),
(624, 498, '85.208.96.211'),
(625, 521, '185.191.171.7'),
(626, 488, '85.208.96.206'),
(627, 497, '185.191.171.19'),
(628, 499, '124.243.139.252'),
(629, 516, '85.208.96.196'),
(630, 515, '69.171.230.10'),
(631, 516, '190.92.202.142'),
(632, 519, '185.191.171.2'),
(633, 482, '185.191.171.17'),
(634, 489, '185.191.171.12'),
(635, 520, '185.191.171.4'),
(636, 477, '85.208.96.199'),
(637, 518, '85.208.96.198'),
(638, 493, '185.191.171.11'),
(639, 481, '85.208.96.208'),
(640, 515, '85.208.96.211'),
(641, 513, '85.208.96.207'),
(642, 520, '185.191.171.8'),
(643, 492, '85.208.96.205'),
(644, 481, '190.92.216.45'),
(645, 519, '103.109.95.153'),
(646, 519, '66.220.149.39'),
(647, 492, '182.48.70.155'),
(648, 492, '173.252.83.34'),
(649, 521, '182.48.70.155'),
(650, 521, '173.252.83.55'),
(651, 519, '119.13.104.184'),
(652, 514, '101.44.162.60'),
(653, 498, '124.243.180.153'),
(654, 520, '81.167.26.57'),
(655, 500, '114.119.189.237'),
(656, 517, '49.0.202.21'),
(657, 490, '124.243.136.193'),
(658, 515, '216.244.66.199'),
(659, 513, '103.145.113.20'),
(660, 513, '69.171.234.114'),
(661, 476, '190.92.204.35'),
(662, 521, '173.252.83.43'),
(663, 487, '57.141.5.8'),
(664, 482, '173.252.107.112'),
(665, 502, '69.171.230.5'),
(666, 481, '66.220.149.11'),
(667, 483, '69.171.249.5'),
(668, 519, '173.252.83.47'),
(669, 479, '66.220.149.37'),
(670, 477, '173.252.83.28'),
(671, 500, '57.141.5.17'),
(672, 513, '69.171.249.14'),
(673, 476, '173.252.83.60'),
(674, 481, '57.141.5.3'),
(675, 520, '173.252.83.3'),
(676, 474, '173.252.83.51'),
(677, 518, '57.141.5.23'),
(678, 478, '66.220.149.28'),
(679, 515, '69.171.230.17'),
(680, 517, '173.252.127.9'),
(681, 485, '57.141.5.11'),
(682, 515, '173.252.83.54'),
(683, 480, '69.171.249.22'),
(684, 475, '173.252.69.115'),
(685, 516, '69.171.230.11'),
(686, 482, '57.141.5.26'),
(687, 500, '85.208.96.195'),
(688, 484, '85.208.96.211'),
(689, 491, '85.208.96.195'),
(690, 490, '85.208.96.209'),
(691, 518, '185.191.171.2'),
(692, 514, '85.208.96.195'),
(693, 487, '185.191.171.2'),
(694, 519, '185.191.171.16'),
(695, 513, '185.191.171.5'),
(696, 502, '185.191.171.4'),
(697, 486, '185.191.171.3'),
(698, 515, '185.191.171.11'),
(699, 518, '85.208.96.210'),
(700, 488, '185.191.171.14'),
(701, 495, '85.208.96.205'),
(702, 487, '185.191.171.12'),
(703, 497, '85.208.96.211'),
(704, 477, '216.244.66.199'),
(705, 498, '85.208.96.209'),
(706, 493, '85.208.96.211'),
(707, 489, '85.208.96.198'),
(708, 482, '216.244.66.199'),
(709, 495, '185.191.171.2'),
(710, 486, '185.191.171.12'),
(711, 519, '85.208.96.206'),
(712, 497, '185.191.171.10'),
(713, 500, '85.208.96.203'),
(714, 513, '85.208.96.195'),
(715, 514, '85.208.96.205'),
(716, 492, '85.208.96.196'),
(717, 498, '185.191.171.12'),
(718, 517, '185.191.171.14'),
(719, 488, '185.191.171.15'),
(720, 502, '166.108.239.156'),
(721, 482, '85.208.96.198'),
(722, 491, '85.208.96.200'),
(723, 482, '185.191.171.13'),
(724, 496, '185.191.171.16'),
(725, 483, '185.191.171.10'),
(726, 521, '185.191.171.8'),
(727, 521, '85.208.96.199'),
(728, 492, '85.208.96.193'),
(729, 478, '216.244.66.199'),
(730, 521, '103.25.250.246'),
(731, 521, '69.171.234.112'),
(732, 521, '31.13.115.2'),
(733, 477, '43.135.182.95'),
(734, 489, '35.173.48.18'),
(735, 518, '35.173.48.18'),
(736, 478, '43.128.67.187'),
(737, 493, '35.173.48.18'),
(738, 516, '35.173.48.18'),
(739, 497, '35.173.48.18'),
(740, 485, '35.173.48.18'),
(741, 520, '216.244.66.199'),
(742, 484, '35.173.48.18'),
(743, 500, '35.173.48.18'),
(744, 495, '35.173.48.18'),
(745, 475, '35.173.48.18'),
(746, 521, '35.173.48.18'),
(747, 517, '35.173.48.18'),
(748, 498, '35.173.48.18'),
(749, 487, '35.173.48.18'),
(750, 496, '35.173.48.18'),
(751, 514, '35.173.48.18'),
(752, 481, '35.173.48.18'),
(753, 490, '35.173.48.18'),
(754, 513, '35.173.48.18'),
(755, 499, '35.173.48.18'),
(756, 482, '35.173.48.18'),
(757, 478, '35.173.48.18'),
(758, 480, '35.173.48.18'),
(759, 519, '35.173.48.18'),
(760, 492, '35.173.48.18'),
(761, 502, '35.173.48.18'),
(762, 488, '35.173.48.18'),
(763, 477, '35.173.48.18'),
(764, 476, '35.173.48.18'),
(765, 494, '35.173.48.18'),
(766, 474, '35.173.48.18'),
(767, 486, '35.173.48.18'),
(768, 491, '35.173.48.18'),
(769, 479, '35.173.48.18'),
(770, 515, '35.173.48.18'),
(771, 520, '35.173.48.18'),
(772, 483, '35.173.48.18'),
(773, 476, '216.244.66.199'),
(774, 479, '58.145.186.201'),
(775, 479, '69.171.234.4'),
(776, 479, '69.171.234.5'),
(777, 517, '173.252.83.6'),
(778, 474, '57.141.0.7'),
(779, 513, '173.252.83.43'),
(780, 519, '173.252.83.3'),
(781, 517, '173.252.107.9'),
(782, 502, '69.171.249.6'),
(783, 485, '173.252.83.17'),
(784, 520, '65.108.64.210'),
(785, 519, '69.171.249.7'),
(786, 477, '69.171.249.113'),
(787, 500, '69.171.249.13'),
(788, 520, '69.171.230.15'),
(789, 474, '216.244.66.199'),
(790, 484, '94.74.86.75'),
(791, 483, '69.171.230.112'),
(792, 487, '173.252.107.6'),
(793, 480, '173.252.107.113'),
(794, 476, '173.252.107.112'),
(795, 479, '173.252.83.30'),
(796, 514, '119.13.111.59'),
(797, 480, '190.92.217.222'),
(798, 515, '190.92.214.222'),
(799, 482, '124.243.133.108'),
(800, 521, '103.156.238.216'),
(801, 521, '69.171.234.3'),
(802, 517, '103.156.238.216'),
(803, 517, '69.171.234.5'),
(804, 518, '103.156.238.216'),
(805, 518, '69.171.234.9'),
(806, 493, '103.108.60.117'),
(807, 493, '31.13.103.114'),
(808, 495, '103.113.149.118'),
(809, 495, '69.171.230.9'),
(810, 521, '216.244.66.199'),
(811, 480, '216.244.66.199'),
(812, 521, '103.25.251.227'),
(813, 520, '103.25.251.227'),
(814, 520, '69.171.234.10'),
(815, 496, '124.243.191.126'),
(816, 479, '216.244.66.199'),
(817, 476, '49.0.206.145'),
(818, 521, '118.179.39.109'),
(819, 521, '69.171.231.113'),
(820, 520, '118.179.39.109'),
(821, 520, '69.171.231.10'),
(822, 489, '124.243.182.11'),
(823, 517, '203.190.11.171'),
(824, 517, '173.252.87.19'),
(825, 520, '203.190.11.171'),
(826, 520, '173.252.87.113'),
(827, 480, '114.119.191.191'),
(828, 494, '103.113.149.116'),
(829, 494, '69.171.230.4'),
(830, 521, '103.113.149.116'),
(831, 521, '69.171.230.17'),
(832, 519, '103.113.149.116'),
(833, 519, '69.171.230.115'),
(834, 475, '49.0.206.227'),
(835, 520, '93.158.213.25'),
(836, 490, '216.244.66.199'),
(837, 488, '57.141.0.13'),
(838, 491, '216.244.66.199'),
(839, 502, '216.244.66.199'),
(840, 518, '216.244.66.199'),
(841, 494, '216.244.66.199'),
(842, 480, '103.129.208.39'),
(843, 480, '173.252.95.1'),
(844, 480, '173.252.95.8'),
(845, 480, '173.252.95.114'),
(846, 474, '185.191.171.17'),
(847, 481, '185.191.171.16'),
(848, 476, '85.208.96.197'),
(849, 478, '85.208.96.194'),
(850, 520, '173.252.83.44'),
(851, 475, '119.8.187.89'),
(852, 474, '110.238.111.92'),
(853, 517, '216.244.66.199'),
(854, 514, '159.138.105.111'),
(855, 516, '216.244.66.199'),
(856, 520, '37.187.89.104'),
(857, 480, '103.133.141.25'),
(858, 480, '69.171.230.6'),
(859, 480, '69.171.230.1'),
(860, 480, '69.171.230.4'),
(861, 502, '85.208.96.212'),
(862, 514, '185.191.171.17'),
(863, 516, '85.208.96.198'),
(864, 477, '85.208.96.211'),
(865, 494, '85.208.96.194'),
(866, 495, '85.208.96.203'),
(867, 480, '185.191.171.15'),
(868, 484, '85.208.96.203'),
(869, 476, '185.191.171.1'),
(870, 489, '110.238.109.62'),
(871, 475, '185.191.171.4'),
(872, 491, '185.191.171.10'),
(873, 521, '103.31.154.238'),
(874, 521, '69.171.234.9'),
(875, 488, '57.141.0.8'),
(876, 488, '216.244.66.199'),
(877, 521, '185.191.171.1'),
(878, 520, '85.208.96.199'),
(879, 487, '85.208.96.210'),
(880, 500, '85.208.96.208'),
(881, 483, '85.208.96.210'),
(882, 486, '85.208.96.212'),
(883, 498, '185.191.171.19'),
(884, 497, '185.191.171.17'),
(885, 474, '185.191.171.1'),
(886, 517, '185.191.171.7'),
(887, 478, '185.191.171.19'),
(888, 490, '85.208.96.206'),
(889, 519, '85.208.96.212'),
(890, 480, '185.191.171.19'),
(891, 485, '185.191.171.16'),
(892, 482, '185.191.171.11'),
(893, 475, '185.191.171.17'),
(894, 474, '124.243.181.131'),
(895, 496, '85.208.96.194'),
(896, 478, '66.220.149.10'),
(897, 514, '119.8.168.116'),
(898, 491, '159.138.100.196'),
(899, 476, '173.252.83.46'),
(900, 481, '216.244.66.199'),
(901, 513, '37.111.217.231'),
(902, 479, '37.111.217.231'),
(903, 479, '69.171.234.113'),
(904, 479, '69.171.234.7'),
(905, 520, '88.90.248.233'),
(906, 496, '185.191.171.18'),
(907, 493, '85.208.96.197'),
(908, 485, '185.191.171.14'),
(909, 477, '69.171.230.4'),
(910, 485, '185.191.171.12'),
(911, 492, '85.208.96.211'),
(912, 518, '185.191.171.18'),
(913, 489, '185.191.171.14'),
(914, 479, '173.252.83.39'),
(915, 514, '85.208.96.193'),
(916, 493, '85.208.96.207'),
(917, 517, '85.208.96.210'),
(918, 475, '69.171.249.3'),
(919, 478, '57.141.0.19'),
(920, 518, '69.171.230.114'),
(921, 513, '185.191.171.18'),
(922, 515, '85.208.96.197'),
(923, 500, '57.141.0.11'),
(924, 495, '216.244.66.199'),
(925, 520, '85.208.96.212'),
(926, 513, '85.208.96.208'),
(927, 481, '85.208.96.193'),
(928, 498, '85.208.96.200'),
(929, 515, '85.208.96.209'),
(930, 491, '85.208.96.196'),
(931, 489, '216.244.66.199'),
(932, 519, '85.208.96.211'),
(933, 500, '85.208.96.200'),
(934, 490, '85.208.96.195'),
(935, 483, '85.208.96.201'),
(936, 515, '185.191.171.1'),
(937, 484, '85.208.96.199'),
(938, 496, '216.244.66.199'),
(939, 482, '85.208.96.205'),
(940, 502, '185.191.171.16'),
(941, 492, '185.191.171.19'),
(942, 518, '85.208.96.208'),
(943, 488, '85.208.96.195'),
(944, 475, '69.171.249.19'),
(945, 489, '85.208.96.193'),
(946, 495, '85.208.96.207'),
(947, 484, '185.191.171.13'),
(948, 496, '185.191.171.13'),
(949, 513, '66.220.149.43'),
(950, 495, '101.44.162.60'),
(951, 518, '173.252.83.9'),
(952, 480, '94.74.87.29'),
(953, 480, '49.0.203.142'),
(954, 483, '66.220.149.37'),
(955, 520, '192.99.37.132'),
(956, 486, '69.171.249.17'),
(957, 494, '85.208.96.195'),
(958, 474, '85.208.96.194'),
(959, 476, '85.208.96.210'),
(960, 477, '85.208.96.197'),
(961, 520, '65.108.227.178'),
(962, 518, '122.152.49.112'),
(963, 518, '173.252.83.23'),
(964, 517, '185.191.171.12'),
(965, 480, '85.208.96.205'),
(966, 483, '85.208.96.199'),
(967, 516, '85.208.96.207'),
(968, 478, '85.208.96.203'),
(969, 514, '185.191.171.11'),
(970, 494, '85.208.96.207'),
(971, 519, '185.191.171.11'),
(972, 520, '185.191.171.16'),
(973, 521, '85.208.96.201'),
(974, 482, '185.191.171.5'),
(975, 480, '185.191.171.7'),
(976, 477, '85.208.96.210'),
(977, 475, '185.191.171.15'),
(978, 486, '69.171.249.8'),
(979, 488, '85.208.96.199'),
(980, 491, '185.191.171.15'),
(981, 478, '85.208.96.207'),
(982, 484, '185.191.171.19'),
(983, 485, '85.208.96.202'),
(984, 497, '85.208.96.202'),
(985, 486, '85.208.96.198'),
(986, 487, '85.208.96.207'),
(987, 493, '185.191.171.14'),
(988, 475, '185.191.171.18'),
(989, 516, '85.208.96.203'),
(990, 476, '185.191.171.16'),
(991, 496, '185.191.171.5'),
(992, 500, '85.208.96.205'),
(993, 474, '85.208.96.204'),
(994, 495, '185.191.171.10'),
(995, 483, '185.191.171.5'),
(996, 489, '85.208.96.194'),
(997, 513, '103.137.6.188'),
(998, 513, '69.171.231.6'),
(999, 521, '103.146.3.57'),
(1000, 520, '217.182.175.125'),
(1001, 520, '161.97.130.75'),
(1002, 521, '37.111.238.70'),
(1003, 520, '37.111.238.70'),
(1004, 521, '173.252.95.3'),
(1005, 520, '173.252.95.14'),
(1006, 517, '103.143.139.67'),
(1007, 517, '69.171.234.10'),
(1008, 485, '185.191.171.17'),
(1009, 490, '185.191.171.19'),
(1010, 521, '37.111.225.222'),
(1011, 499, '103.149.143.238'),
(1012, 514, '103.149.143.238'),
(1013, 514, '69.171.234.18'),
(1014, 498, '185.191.171.13'),
(1015, 520, '65.21.233.213'),
(1016, 516, '59.152.96.148'),
(1017, 516, '66.220.149.25'),
(1018, 516, '66.220.149.21'),
(1019, 521, '59.152.96.148'),
(1020, 495, '3.239.97.34'),
(1021, 516, '85.208.96.206'),
(1022, 480, '85.208.96.203'),
(1023, 499, '185.191.171.1'),
(1024, 485, '85.208.96.206'),
(1025, 483, '185.191.171.4'),
(1026, 517, '185.191.171.10'),
(1027, 489, '185.191.171.3'),
(1028, 478, '185.191.171.18'),
(1029, 520, '118.179.56.198'),
(1030, 517, '66.220.149.39'),
(1031, 488, '85.208.96.212'),
(1032, 486, '185.191.171.1'),
(1033, 490, '185.191.171.17'),
(1034, 476, '85.208.96.203'),
(1035, 519, '185.191.171.7'),
(1036, 494, '185.191.171.14'),
(1037, 495, '85.208.96.208'),
(1038, 498, '85.208.96.203'),
(1039, 489, '185.191.171.4'),
(1040, 518, '185.191.171.4'),
(1041, 487, '85.208.96.194'),
(1042, 502, '185.191.171.5'),
(1043, 520, '85.208.96.198'),
(1044, 482, '85.208.96.199'),
(1045, 497, '185.191.171.2'),
(1046, 502, '185.191.171.1'),
(1047, 492, '185.191.171.13'),
(1048, 521, '185.191.171.19'),
(1049, 513, '185.191.171.2'),
(1050, 483, '185.191.171.9'),
(1051, 477, '185.191.171.10'),
(1052, 514, '185.191.171.3'),
(1053, 500, '185.191.171.10'),
(1054, 477, '85.208.96.193'),
(1055, 491, '85.208.96.199'),
(1056, 514, '103.96.106.142'),
(1057, 514, '69.171.231.7'),
(1058, 521, '103.96.106.142'),
(1059, 520, '94.23.207.193'),
(1060, 495, '103.120.203.45'),
(1061, 488, '185.191.171.17'),
(1062, 477, '85.208.96.194'),
(1063, 486, '85.208.96.201'),
(1064, 519, '185.191.171.14'),
(1065, 480, '85.208.96.207'),
(1066, 476, '85.208.96.202'),
(1067, 478, '185.191.171.4'),
(1068, 480, '85.208.96.210'),
(1069, 514, '185.191.171.6'),
(1070, 517, '185.191.171.4'),
(1071, 516, '185.191.171.12'),
(1072, 497, '185.191.171.6'),
(1073, 500, '185.191.171.17'),
(1074, 494, '185.191.171.13'),
(1075, 495, '85.208.96.194'),
(1076, 520, '85.208.96.211'),
(1077, 487, '185.191.171.8'),
(1078, 491, '85.208.96.207'),
(1079, 496, '185.191.171.12'),
(1080, 478, '85.208.96.210'),
(1081, 482, '185.191.171.9'),
(1082, 521, '185.191.171.16'),
(1083, 474, '185.191.171.14'),
(1084, 484, '185.191.171.9'),
(1085, 520, '37.187.73.123'),
(1086, 518, '185.191.171.8'),
(1087, 481, '185.191.171.2'),
(1088, 490, '85.208.96.204'),
(1089, 499, '185.191.171.6'),
(1090, 519, '185.191.171.19'),
(1091, 486, '85.208.96.195'),
(1092, 515, '185.191.171.3'),
(1093, 498, '185.191.171.9'),
(1094, 489, '85.208.96.200'),
(1095, 492, '185.191.171.18'),
(1096, 514, '85.208.96.208'),
(1097, 481, '85.208.96.206'),
(1098, 521, '185.191.171.6'),
(1099, 487, '85.208.96.200'),
(1100, 515, '185.191.171.5'),
(1101, 497, '185.191.171.7'),
(1102, 484, '185.191.171.14'),
(1103, 496, '85.208.96.201'),
(1104, 518, '85.208.96.204'),
(1105, 495, '85.208.96.195'),
(1106, 520, '85.208.96.194'),
(1107, 513, '185.191.171.15'),
(1108, 493, '34.1.18.16'),
(1109, 502, '34.1.18.16'),
(1110, 517, '103.189.11.58'),
(1111, 517, '173.252.95.18'),
(1112, 517, '103.217.111.224'),
(1113, 520, '95.217.109.26'),
(1114, 489, '85.208.96.210'),
(1115, 483, '85.208.96.209'),
(1116, 479, '85.208.96.211'),
(1117, 517, '85.208.96.195'),
(1118, 485, '85.208.96.210'),
(1119, 493, '85.208.96.210'),
(1120, 515, '85.208.96.205'),
(1121, 513, '103.72.212.113'),
(1122, 513, '173.252.83.16'),
(1123, 513, '103.31.179.40'),
(1124, 513, '103.119.102.221'),
(1125, 517, '103.119.102.221'),
(1126, 513, '69.171.231.4'),
(1127, 517, '69.171.231.7'),
(1128, 518, '103.119.102.221'),
(1129, 518, '69.171.231.1'),
(1130, 517, '103.72.212.113'),
(1131, 517, '103.31.179.40'),
(1132, 480, '104.28.208.85'),
(1133, 480, '66.220.149.9'),
(1134, 480, '66.220.149.19'),
(1135, 484, '85.208.96.210'),
(1136, 520, '217.76.58.104'),
(1137, 521, '103.7.121.108'),
(1138, 521, '69.171.234.113'),
(1139, 499, '103.192.156.75'),
(1140, 499, '66.220.149.12'),
(1141, 480, '58.145.186.128'),
(1142, 480, '69.171.234.9'),
(1143, 519, '58.145.186.128'),
(1144, 519, '66.220.149.8'),
(1145, 502, '85.208.96.206'),
(1146, 485, '85.208.96.193'),
(1147, 498, '220.247.129.10'),
(1148, 520, '220.247.129.10'),
(1149, 521, '220.247.129.10'),
(1150, 498, '69.171.234.114'),
(1151, 513, '103.126.219.206'),
(1152, 513, '69.171.234.113'),
(1153, 493, '220.247.129.10'),
(1154, 493, '69.171.234.6'),
(1155, 493, '69.171.234.9'),
(1156, 493, '69.171.234.8'),
(1157, 514, '220.247.129.10'),
(1158, 514, '69.171.234.113'),
(1159, 517, '220.247.129.10'),
(1160, 521, '103.142.80.39'),
(1161, 520, '95.91.104.62'),
(1162, 498, '185.191.171.2'),
(1163, 490, '185.191.171.1'),
(1164, 489, '27.147.200.5'),
(1165, 489, '173.252.83.113'),
(1166, 519, '103.62.140.15'),
(1167, 519, '173.252.95.8'),
(1168, 520, '178.150.14.250'),
(1169, 520, '103.67.156.219'),
(1170, 520, '173.252.95.18'),
(1171, 499, '182.48.70.155'),
(1172, 499, '173.252.83.24'),
(1173, 516, '182.48.70.155'),
(1174, 516, '173.252.83.12'),
(1175, 480, '103.144.201.102'),
(1176, 518, '37.111.232.166'),
(1177, 518, '173.252.95.116'),
(1178, 518, '173.252.95.27'),
(1179, 518, '66.249.82.174'),
(1180, 518, '66.249.82.173'),
(1181, 518, '66.249.82.169'),
(1182, 480, '202.86.216.23'),
(1183, 517, '37.111.232.166'),
(1184, 517, '173.252.95.32'),
(1185, 517, '66.249.82.174'),
(1186, 517, '66.249.82.170'),
(1187, 517, '66.249.82.171'),
(1188, 521, '37.111.232.166'),
(1189, 502, '37.111.232.166'),
(1190, 502, '173.252.95.9'),
(1191, 520, '37.111.213.74'),
(1192, 520, '173.252.95.32'),
(1193, 499, '85.208.96.205'),
(1194, 513, '40.80.158.10'),
(1195, 521, '40.80.158.10'),
(1196, 519, '40.80.158.10'),
(1197, 513, '173.252.95.7'),
(1198, 521, '173.252.95.18'),
(1199, 519, '173.252.95.22'),
(1200, 519, '58.145.190.208'),
(1201, 519, '69.171.234.1'),
(1202, 520, '58.145.190.208'),
(1203, 520, '69.171.234.8'),
(1204, 515, '58.145.190.208'),
(1205, 515, '69.171.234.6'),
(1206, 517, '58.145.190.208'),
(1207, 517, '69.171.234.6'),
(1208, 520, '119.148.36.54'),
(1209, 518, '103.213.237.19'),
(1210, 518, '69.171.231.113'),
(1211, 521, '37.111.194.231'),
(1212, 513, '37.111.194.231'),
(1213, 513, '69.171.234.4'),
(1214, 486, '118.179.39.34'),
(1215, 514, '37.111.207.234'),
(1216, 514, '66.220.149.14'),
(1217, 498, '207.46.13.155'),
(1218, 492, '207.46.13.155'),
(1219, 521, '52.167.144.226'),
(1220, 481, '157.55.39.59'),
(1221, 494, '52.167.144.226'),
(1222, 493, '157.55.39.59'),
(1223, 490, '52.167.144.226'),
(1224, 483, '52.167.144.226'),
(1225, 495, '52.167.144.226'),
(1226, 476, '52.167.144.226'),
(1227, 475, '52.167.144.226'),
(1228, 514, '52.167.144.226'),
(1229, 484, '52.167.144.226'),
(1230, 486, '52.167.144.202'),
(1231, 519, '52.167.144.202'),
(1232, 499, '52.167.144.202'),
(1233, 479, '52.167.144.202'),
(1234, 518, '52.167.144.202'),
(1235, 496, '52.167.144.202'),
(1236, 517, '52.167.144.226'),
(1237, 477, '52.167.144.202'),
(1238, 474, '52.167.144.226'),
(1239, 497, '52.167.144.202'),
(1240, 488, '52.167.144.202'),
(1241, 520, '52.167.144.202'),
(1242, 516, '157.55.39.59'),
(1243, 480, '157.55.39.59'),
(1244, 513, '157.55.39.59'),
(1245, 500, '157.55.39.59'),
(1246, 489, '157.55.39.59'),
(1247, 491, '157.55.39.59'),
(1248, 515, '157.55.39.59'),
(1249, 487, '157.55.39.59'),
(1250, 485, '157.55.39.59');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `status` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `language_id`, `title`, `description`, `status`) VALUES
(8, 2, 'Coronavirus', '<span style=\"color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">ঠিক কত পদে ট্রাম্প-মেলানিয়া দম্পতিকে আপ্যায়ন করা হবে, তা কেউ প্রকাশ করেনি। তবে ভারতের গণমাধ্যম এনডিটিভির খবরে বলা হয়েছে, নৈশভোজে তিনটি পর্ব থাকবে। হালকা মুখরোচক পদ আর পানীয় দিয়ে শুরু হবে খাবার পর্ব। এরপর পরিবেশন করা হবে মূল খাবার। শেষে থাকছে মিষ্টান্ন।</span>', 1),
(9, 2, 'ডোনাল্ড ট্রাম্প', '<span style=\"color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">মার্কিন প্রেসিডেন্ট ডোনাল্ড ট্রাম্পের সম্মানে আজ মঙ্গলবার নৈশভোজের আয়োজন করেছেন ভারতের রাষ্ট্রপতি রামনাথ কোবিন্দ। এতে মার্কিন ফার্স্ট লেডি মেলানিয়া ট্রাম্পসহ প্রায় ১০০ অতিথি উপস্থিত থাকবেন। বিশ্বের ক্ষমতাধর দেশের প্রেসিডেন্ট ও ফার্স্ট লেডিকে আপ্যায়ন করতে আয়োজনের কোনো কমতি নেই রাষ্ট্রপতি ভবনের রান্নাঘরে।</span>', 1),
(10, 1, 'Death of George Floyd', '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">On May 25, 2020, George Perry Floyd, a black man, was killed in the Powderhorn community of Minneapolis, Minnesota, United States</span><br>', 1),
(12, 1, 'Coronavirus: Bangladesh', 'Deaths:6092', 1);

-- --------------------------------------------------------

--
-- Table structure for table `widget_settings`
--

CREATE TABLE `widget_settings` (
  `id` int NOT NULL,
  `feature_inhome` tinyint NOT NULL DEFAULT '0',
  `category_inhome` tinyint NOT NULL DEFAULT '0',
  `follow_inhome` tinyint NOT NULL DEFAULT '0',
  `tag_inhome` tinyint NOT NULL DEFAULT '0',
  `poll_inhome` tinyint NOT NULL DEFAULT '0',
  `calendar_inhome` tinyint NOT NULL DEFAULT '0',
  `newsletter_inhome` tinyint NOT NULL DEFAULT '0',
  `category_incategory` tinyint NOT NULL DEFAULT '0',
  `newsletter_incategory` tinyint NOT NULL DEFAULT '0',
  `calendar_incategory` tinyint NOT NULL DEFAULT '0',
  `category_indetails` tinyint NOT NULL DEFAULT '0',
  `newsletter_indetails` tinyint NOT NULL DEFAULT '0',
  `calendar_indetails` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `widget_settings`
--

INSERT INTO `widget_settings` (`id`, `feature_inhome`, `category_inhome`, `follow_inhome`, `tag_inhome`, `poll_inhome`, `calendar_inhome`, `newsletter_inhome`, `category_incategory`, `newsletter_incategory`, `calendar_incategory`, `category_indetails`, `newsletter_indetails`, `calendar_indetails`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_languages`
--
ALTER TABLE `admin_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fonts`
--
ALTER TABLE `fonts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_albums`
--
ALTER TABLE `image_albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_categories`
--
ALTER TABLE `image_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_galleries`
--
ALTER TABLE `image_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personality_answers`
--
ALTER TABLE `personality_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personality_questions`
--
ALTER TABLE `personality_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personality_results`
--
ALTER TABLE `personality_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_answers`
--
ALTER TABLE `poll_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_questions`
--
ALTER TABLE `poll_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_results`
--
ALTER TABLE `poll_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`),
  ADD KEY `title_2` (`title`),
  ADD KEY `title_3` (`title`);
ALTER TABLE `posts` ADD FULLTEXT KEY `title_4` (`title`);
ALTER TABLE `posts` ADD FULLTEXT KEY `description` (`description`);
ALTER TABLE `posts` ADD FULLTEXT KEY `description_2` (`description`);
ALTER TABLE `posts` ADD FULLTEXT KEY `slug` (`slug`);
ALTER TABLE `posts` ADD FULLTEXT KEY `slug_2` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rss_feeds`
--
ALTER TABLE `rss_feeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seotools`
--
ALTER TABLE `seotools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `short_lists`
--
ALTER TABLE `short_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitemaps`
--
ALTER TABLE `sitemaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialsettings`
--
ALTER TABLE `socialsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_providers`
--
ALTER TABLE `social_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trivia_answers`
--
ALTER TABLE `trivia_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trivia_questions`
--
ALTER TABLE `trivia_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trivia_results`
--
ALTER TABLE `trivia_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widget_settings`
--
ALTER TABLE `widget_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `admin_languages`
--
ALTER TABLE `admin_languages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `follows`
--
ALTER TABLE `follows`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fonts`
--
ALTER TABLE `fonts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `image_albums`
--
ALTER TABLE `image_albums`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `image_categories`
--
ALTER TABLE `image_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `image_galleries`
--
ALTER TABLE `image_galleries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personality_answers`
--
ALTER TABLE `personality_answers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `personality_questions`
--
ALTER TABLE `personality_questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `personality_results`
--
ALTER TABLE `personality_results`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `poll_answers`
--
ALTER TABLE `poll_answers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `poll_questions`
--
ALTER TABLE `poll_questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `poll_results`
--
ALTER TABLE `poll_results`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=522;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rss_feeds`
--
ALTER TABLE `rss_feeds`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `seotools`
--
ALTER TABLE `seotools`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `short_lists`
--
ALTER TABLE `short_lists`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sitemaps`
--
ALTER TABLE `sitemaps`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialsettings`
--
ALTER TABLE `socialsettings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `trivia_answers`
--
ALTER TABLE `trivia_answers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=493;

--
-- AUTO_INCREMENT for table `trivia_questions`
--
ALTER TABLE `trivia_questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT for table `trivia_results`
--
ALTER TABLE `trivia_results`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1251;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `widget_settings`
--
ALTER TABLE `widget_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
