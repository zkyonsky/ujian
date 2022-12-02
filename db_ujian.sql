-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 21, 2021 at 03:50 PM
-- Server version: 8.0.20
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ujian`
--

-- --------------------------------------------------------

--
-- Table structure for table `audio`
--

CREATE TABLE `audio` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audio`
--

INSERT INTO `audio` (`id`, `title`, `caption`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Fail', 'Fail Terompet', 'ESxJeLiPzVuN20V2VuaWXSMPDYxrC9NZU1nv7Kkq.mp3', '2021-04-28 16:11:03', '2021-04-28 16:11:03'),
(2, 'Tepuk Tangan', 'Tepuk tangan panjang', '0cyOqZSY4fNSuyVx7hWuObO7XxaH5iGLrforBlAt.mp3', '2021-04-30 03:23:34', '2021-04-30 03:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `title`, `caption`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Jurnal', 'Jurnal Ujian Online', 'oGEWv9yxix2vLvcn7egYTB6zQ8kjss3ly8bwSAyr.pdf', '2021-04-28 16:27:00', '2021-04-28 16:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` int NOT NULL,
  `total_question` int NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `time`, `total_question`, `status`, `start`, `end`, `created_by`, `created_at`, `updated_at`) VALUES
(6, 'Latihan 3', 2, 1, 'Ready', '2021-04-30 17:13:00', '2021-04-30 23:13:00', '1', '2021-04-30 03:17:47', '2021-04-30 03:17:47'),
(7, 'Latihan 4', 10, 2, 'Ready', '2021-04-30 17:25:00', '2021-05-03 17:25:00', '1', '2021-04-30 03:25:32', '2021-04-30 03:25:32'),
(9, 'Ujian 2', 30, 3, 'Ready', '2021-05-01 10:22:00', '2021-05-02 10:22:00', '1', '2021-04-30 20:22:50', '2021-05-03 11:34:06'),
(11, 'Ujian 3', 20, 2, 'Ready', '2021-05-01 22:23:00', '2021-05-01 12:23:00', '1', '2021-05-01 08:23:42', '2021-05-03 11:09:02'),
(12, 'Ujian 4', 10, 2, 'Ready', '2021-05-01 22:24:00', '2021-05-01 12:24:00', '1', '2021-05-01 08:24:33', '2021-05-03 11:07:53'),
(13, 'Logika', 30, 5, 'Ready', '2021-05-01 01:00:00', '2021-05-30 03:09:00', '1', '2021-05-08 13:10:01', '2021-05-08 13:28:40'),
(14, 'Nalar', 60, 3, 'Ready', '2021-05-01 03:16:00', '2021-05-30 03:16:00', '1', '2021-05-08 13:16:21', '2021-05-08 13:33:01'),
(15, 'Ujian Deras', 10, 2, 'Ready', '2021-05-09 04:20:00', '2021-05-18 04:20:00', '1', '2021-05-08 21:20:59', '2021-05-08 21:20:59'),
(16, 'Ujian Mental', 20, 2, 'Ready', '2021-05-09 04:44:00', '2021-05-13 04:44:00', '1', '2021-05-08 21:44:29', '2021-05-08 21:44:29'),
(17, 'Ujian Ujian', 10, 1, 'Ready', '2021-05-09 04:30:00', '2021-05-10 05:09:00', '1', '2021-05-08 22:09:37', '2021-05-08 22:09:37'),
(18, 'Ujian Hidup', 3, 1, 'Ready', '2021-05-09 22:12:00', '2021-05-11 22:12:00', '4', '2021-05-09 15:12:24', '2021-05-09 15:12:24'),
(19, 'Ujian Tebak', 10, 3, 'Ready', '2021-05-15 19:32:00', '2021-06-03 19:32:00', '1', '2021-05-15 12:32:49', '2021-05-15 12:32:49');

-- --------------------------------------------------------

--
-- Table structure for table `exam_question`
--

CREATE TABLE `exam_question` (
  `id` bigint UNSIGNED NOT NULL,
  `exam_id` bigint UNSIGNED NOT NULL,
  `question_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_question`
--

INSERT INTO `exam_question` (`id`, `exam_id`, `question_id`, `created_at`, `updated_at`) VALUES
(1, 6, 2, '2021-04-30 03:17:47', '2021-04-30 03:17:47'),
(2, 7, 3, '2021-04-30 03:25:32', '2021-04-30 03:25:32'),
(3, 7, 2, '2021-04-30 03:25:32', '2021-04-30 03:25:32'),
(6, 12, 8, '2021-05-01 16:07:06', '2021-05-01 16:07:06'),
(7, 12, 5, '2021-05-01 16:09:49', '2021-05-01 16:09:49'),
(8, 12, 7, '2021-05-01 16:17:42', '2021-05-01 16:17:42'),
(9, 12, 3, '2021-05-01 16:17:42', '2021-05-01 16:17:42'),
(10, 12, 2, '2021-05-01 16:17:42', '2021-05-01 16:17:42'),
(11, 11, 3, '2021-05-02 16:26:17', '2021-05-02 16:26:17'),
(12, 12, 6, '2021-05-03 11:07:53', '2021-05-03 11:07:53'),
(13, 12, 4, '2021-05-03 11:07:53', '2021-05-03 11:07:53'),
(14, 11, 8, '2021-05-03 11:08:25', '2021-05-03 11:08:25'),
(15, 11, 7, '2021-05-03 11:08:25', '2021-05-03 11:08:25'),
(16, 11, 6, '2021-05-03 11:08:25', '2021-05-03 11:08:25'),
(17, 11, 5, '2021-05-03 11:08:25', '2021-05-03 11:08:25'),
(18, 11, 4, '2021-05-03 11:08:25', '2021-05-03 11:08:25'),
(23, 9, 8, '2021-05-03 11:34:06', '2021-05-03 11:34:06'),
(24, 14, 8, '2021-05-08 13:24:26', '2021-05-08 13:24:26'),
(25, 14, 7, '2021-05-08 13:24:26', '2021-05-08 13:24:26'),
(27, 13, 8, '2021-05-08 13:28:40', '2021-05-08 13:28:40'),
(28, 13, 7, '2021-05-08 13:28:40', '2021-05-08 13:28:40'),
(29, 13, 6, '2021-05-08 13:28:40', '2021-05-08 13:28:40'),
(30, 13, 5, '2021-05-08 13:28:40', '2021-05-08 13:28:40'),
(31, 13, 4, '2021-05-08 13:28:40', '2021-05-08 13:28:40'),
(32, 13, 3, '2021-05-08 13:28:40', '2021-05-08 13:28:40'),
(33, 15, 8, '2021-05-08 21:20:59', '2021-05-08 21:20:59'),
(34, 15, 7, '2021-05-08 21:20:59', '2021-05-08 21:20:59'),
(35, 16, 8, '2021-05-08 21:44:29', '2021-05-08 21:44:29'),
(36, 16, 7, '2021-05-08 21:44:29', '2021-05-08 21:44:29'),
(37, 17, 8, '2021-05-08 22:09:37', '2021-05-08 22:09:37'),
(38, 18, 7, '2021-05-09 15:12:24', '2021-05-09 15:12:24'),
(39, 19, 6, '2021-05-15 12:32:49', '2021-05-15 12:32:49'),
(40, 19, 4, '2021-05-15 12:32:49', '2021-05-15 12:32:49'),
(41, 19, 2, '2021-05-15 12:32:49', '2021-05-15 12:32:49');

-- --------------------------------------------------------

--
-- Table structure for table `exam_user`
--

CREATE TABLE `exam_user` (
  `id` bigint UNSIGNED NOT NULL,
  `exam_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `history_answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `score` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_user`
--

INSERT INTO `exam_user` (`id`, `exam_id`, `user_id`, `history_answer`, `score`, `created_at`, `updated_at`) VALUES
(18, 17, 3, NULL, NULL, '2021-05-08 23:27:58', '2021-05-08 23:27:58'),
(20, 16, 3, '{\"7\":\"7-Bass\",\"8\":\"8-Administrasi\"}', 0, '2021-05-09 13:42:09', '2021-05-10 22:47:33'),
(21, 16, 2, '{\"7\":\"7-Bass\",\"8\":\"8-Politik\"}', 0, '2021-05-09 13:42:09', '2021-05-10 17:20:07'),
(23, 9, 3, NULL, NULL, '2021-05-09 13:49:11', '2021-05-09 13:49:11'),
(25, 12, 3, NULL, NULL, '2021-05-09 13:49:31', '2021-05-09 13:49:31'),
(27, 15, 3, '[]', 0, '2021-05-09 14:22:25', '2021-05-15 22:07:08'),
(30, 18, 3, '{\"7\":\"7-Drum\"}', 100, '2021-05-09 15:12:51', '2021-05-10 22:51:42'),
(42, 16, 1, NULL, NULL, '2021-05-10 16:48:59', '2021-05-10 16:48:59'),
(44, 18, 1, '{\"7\":\"7-Bass\"}', 0, '2021-05-10 17:34:46', '2021-05-10 17:51:26'),
(45, 15, 1, '{\"7\":\"7-Gitar\",\"8\":\"8-TI\"}', 50, '2021-05-15 12:28:58', '2021-05-15 12:28:58'),
(46, 19, 1, '{\"2\":\"2-PIano\",\"4\":\"4-Benar\",\"6\":\"6-Lebaran\"}', 33.333333333333, '2021-05-18 13:24:44', '2021-05-18 13:24:44');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `title`, `caption`, `link`, `created_at`, `updated_at`) VALUES
(2, 'Pembukaan Pelajaran Akuntansi', 'Meja Akuntansi', 'mBkkuDWuvaaWIto4MKfO2ufmCU0IHQfDfyl4GpV0.jpg', '2021-04-28 06:52:50', '2021-04-28 06:52:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_24_095022_create_permission_tables', 1),
(5, '2021_04_24_105557_create_exams_table', 1),
(6, '2021_04_24_105611_create_questions_table', 1),
(7, '2021_04_24_105627_create_subjects_table', 1),
(8, '2021_04_24_165632_create_photos_table', 1),
(9, '2021_04_24_165646_create_videos_table', 1),
(10, '2021_04_27_223437_create_documents_table', 1),
(11, '2021_04_27_223454_create_images_table', 1),
(12, '2021_04_27_224752_create_exam_user_table', 1),
(13, '2021_04_27_225109_create_exam_question_table', 1),
(14, '2021_04_28_224455_create_audio_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4);

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
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'exams.index', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(2, 'exams.create', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(3, 'exams.edit', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(4, 'exams.delete', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(5, 'subjects.index', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(6, 'subjects.create', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(7, 'subjects.edit', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(8, 'subjects.delete', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(9, 'questions.index', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(10, 'questions.create', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(11, 'questions.edit', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(12, 'questions.delete', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(13, 'images.index', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(14, 'images.create', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(15, 'images.delete', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(16, 'videos.index', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(17, 'videos.create', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(18, 'videos.edit', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(19, 'videos.delete', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(20, 'audios.index', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(21, 'audios.create', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(22, 'audios.edit', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(23, 'audios.delete', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(24, 'documents.index', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(25, 'documents.create', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(26, 'documents.edit', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(27, 'documents.delete', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(28, 'roles.index', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(29, 'roles.create', 'web', '2021-04-27 17:15:27', '2021-04-27 17:15:27'),
(30, 'roles.edit', 'web', '2021-04-27 17:15:27', '2021-04-27 17:15:27'),
(31, 'roles.delete', 'web', '2021-04-27 17:15:27', '2021-04-27 17:15:27'),
(32, 'permissions.index', 'web', '2021-04-27 17:15:27', '2021-04-27 17:15:27'),
(33, 'users.index', 'web', '2021-04-27 17:15:27', '2021-04-27 17:15:27'),
(34, 'users.create', 'web', '2021-04-27 17:15:27', '2021-04-27 17:15:27'),
(35, 'users.edit', 'web', '2021-04-27 17:15:27', '2021-04-27 17:15:27'),
(36, 'users.delete', 'web', '2021-04-27 17:15:27', '2021-04-27 17:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audio_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_A` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_B` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_C` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_D` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_E` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `explanation` text COLLATE utf8mb4_unicode_ci,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `subject_id`, `detail`, `video_id`, `audio_id`, `image_id`, `document_id`, `option_A`, `option_B`, `option_C`, `option_D`, `option_E`, `answer`, `explanation`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 2, 'Suara apakah ini?', NULL, '1', NULL, NULL, 'Terompet', 'Drum', 'Gitar', 'PIano', 'Bass', 'Terompet', 'Ini adalah bunyi terompet', '1', '2021-04-29 15:55:16', '2021-04-29 16:39:48'),
(3, 2, 'Suara apakah ini', NULL, '2', NULL, NULL, 'Tepuk Kaki', 'Tepuk Tangan', 'Tepuk Sebelah Tangan', 'Tepuk Nyamuk', 'Tepuk Kepala', 'Tepuk Tangan', 'Suara Tepuk Tangan', '1', '2021-04-30 03:24:53', '2021-04-30 03:24:53'),
(4, 2, 'Gambar bagan akuntansi', NULL, NULL, '2', NULL, 'Betul', 'Benar', 'Salah', 'Salah kali', 'Moh Salah', 'Benar', 'Yang benar adalah benar', '1', '2021-04-30 18:29:19', '2021-04-30 18:29:19'),
(5, 2, 'Jurnal apakah ini', NULL, NULL, NULL, '1', 'Bahasa', 'Sosial', 'Sejarah', 'Seni', 'Fisika', 'Sejarah', 'Ini jurnal sejarah', '1', '2021-04-30 18:30:09', '2021-04-30 18:30:09'),
(6, 2, 'Suasana apakah ini', '2', NULL, NULL, NULL, 'Lebaran', 'Idul Adha', 'Tahun baru', 'Natal', 'Agustusan', 'Lebaran', 'ini suasana lebaran jadul', '1', '2021-04-30 18:31:09', '2021-04-30 18:31:09'),
(7, 2, 'Suara apa hayo', NULL, '1', NULL, NULL, 'Terompet', 'Gitar', 'Drum', 'Bass', 'Gendang', 'Drum', 'Ini suara drum', '1', '2021-04-30 18:31:53', '2021-04-30 18:31:53'),
(8, 3, 'Apa subtansi jurnal ini', NULL, NULL, NULL, '1', 'TI', 'Administrasi', 'Politik', 'Budaya', 'Terapan', 'TI', 'ini jurnal TI', '1', '2021-04-30 18:34:02', '2021-04-30 18:34:02');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(2, 'teacher', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26'),
(3, 'student', 'web', '2021-04-27 17:15:26', '2021-04-27 17:15:26');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
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
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Listening', '2021-04-29 01:58:05', '2021-04-29 01:58:05'),
(3, 'Reading', '2021-04-29 01:58:17', '2021-04-29 01:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$JUIbXI7tpE36vmcV5Osv8.q57sLvdwSrUT3mr1buN0zlt8Pqh1G7y', NULL, '2021-04-27 17:15:27', '2021-04-27 17:15:27'),
(2, 'Jono', 'jono@gmail.com', NULL, '$2y$10$Jln3Y.GqSW4FX5GVz98BEeSbJQDpzepXi5eNZOpKmJyPS6eNgQCLq', NULL, '2021-05-08 22:24:36', '2021-05-08 22:24:36'),
(3, 'Joni', 'joni@gmail.com', NULL, '$2y$10$i2gFzI8MIpXgSUjvBFGtTuwrzjEv50Gh2SsfXEzCqStfDskOPQz7i', NULL, '2021-05-08 22:25:00', '2021-05-08 22:25:00'),
(4, 'jeni', 'jeni@gmail.com', NULL, '$2y$10$ESFTLlJOpyRLlSCAmCwaNOSjJoXNCc21VLq2QpZA77uJ/De5W3Ty2', NULL, '2021-05-08 22:25:27', '2021-05-08 22:25:27');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `caption`, `link`, `created_at`, `updated_at`) VALUES
(2, 'Lebaran', 'Lebaran Jaman Dulu', 'Qb57ZjbPiUEMxT7bDLWQevqnp5qFYcLcOspJtIfC.mp4', '2021-04-28 15:38:46', '2021-04-28 15:38:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audio`
--
ALTER TABLE `audio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_question`
--
ALTER TABLE `exam_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_user`
--
ALTER TABLE `exam_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
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
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
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
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audio`
--
ALTER TABLE `audio`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `exam_question`
--
ALTER TABLE `exam_question`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `exam_user`
--
ALTER TABLE `exam_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
