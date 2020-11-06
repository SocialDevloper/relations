-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2020 at 09:29 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `relations`
--

-- --------------------------------------------------------

--
-- Table structure for table `ajax_cruds`
--

CREATE TABLE `ajax_cruds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ajax_cruds`
--

INSERT INTO `ajax_cruds` (`id`, `first_name`, `last_name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Test user', 'Name', '530195670.jpg', '2020-10-21 23:41:02', '2020-10-22 09:36:16'),
(2, 'Jatin', 'Kumar', '23106613.jpg', '2020-10-21 23:41:36', '2020-10-22 09:36:10'),
(3, 'Sanjay', 'Patel', '506882152.jpg', '2020-10-21 23:44:23', '2020-10-22 09:36:05'),
(5, 'Devil', 'Pine', '2070949901.jpg', '2020-10-22 00:05:06', '2020-10-22 00:05:32'),
(6, 'New', 'Diue', '1721621608.jpg', '2020-10-22 00:09:54', '2020-10-22 00:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `authers`
--

CREATE TABLE `authers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authers`
--

INSERT INTO `authers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Mitesh Kadivar', '2020-07-23 18:30:00', '2020-07-23 18:30:00'),
(2, 'Ramesh Trivedi', '2020-07-24 03:00:00', '2020-07-24 03:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `auther_book`
--

CREATE TABLE `auther_book` (
  `id` int(10) UNSIGNED NOT NULL,
  `auther_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auther_book`
--

INSERT INTO `auther_book` (`id`, `auther_id`, `book_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-07-23 22:57:12', '2020-07-23 22:57:12'),
(2, 1, 3, NULL, NULL),
(3, 1, 4, '2020-07-23 18:30:00', NULL),
(4, 2, 1, '2020-07-24 01:52:20', '2020-07-24 01:52:20'),
(5, 2, 3, '2020-07-23 10:46:06', '2020-07-23 10:46:06');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_name`, `created_at`, `updated_at`) VALUES
(1, 'Gujarati', '2020-07-23 18:30:00', '2020-07-23 18:30:00'),
(2, 'English', '2020-07-24 06:57:00', NULL),
(3, 'Hindi', '2020-07-24 07:46:08', '2020-07-24 05:45:22'),
(4, 'Book A', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` bigint(20) NOT NULL,
  `commentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment_body`, `commentable_id`, `commentable_type`, `created_at`, `updated_at`) VALUES
(1, 'Sports comment inserted.', 2, 'App\\FacebookPost', '2020-09-10 03:47:28', '2020-09-10 03:47:28'),
(2, 'Morning comment.', 4, 'App\\FacebookPost', '2020-09-10 03:48:04', '2020-09-10 03:48:04'),
(3, 'Fresh morning!!', 4, 'App\\FacebookPost', '2020-09-10 03:48:26', '2020-09-10 03:48:26'),
(4, 'India post for facebook', 1, 'App\\FacebookPost', '2020-09-10 03:48:55', '2020-09-10 03:48:55'),
(5, 'video comment nice!', 3, 'App\\Video', '2020-09-10 04:01:42', '2020-09-10 04:01:42'),
(6, 'first test', 1, 'App\\Video', '2020-09-10 04:02:07', '2020-09-10 04:02:07'),
(7, 'fbcomment', 5, 'App\\FacebookPost', '2020-09-10 04:02:18', '2020-09-10 04:02:18'),
(8, 'second video comment', 1, 'App\\Video', '2020-09-10 04:02:43', '2020-09-10 04:02:43'),
(9, 'test', 2, 'App\\Video', '2020-09-10 04:04:47', '2020-09-10 04:04:47'),
(10, 'enterment', 3, 'App\\FacebookPost', '2020-09-10 04:06:03', '2020-09-10 04:06:03'),
(11, 'dance plus', 3, 'App\\FacebookPost', '2020-09-10 04:06:21', '2020-09-10 04:06:21'),
(12, 'wwe', 3, 'App\\FacebookPost', '2020-09-10 04:06:36', '2020-09-10 04:06:36'),
(13, 'tesing video', 3, 'App\\Video', '2020-09-10 04:07:18', '2020-09-10 04:07:18'),
(14, 'comment new ad.', 3, 'App\\Video', '2020-09-10 04:07:34', '2020-09-10 04:07:34'),
(15, 'fb post', 1, 'App\\FacebookPost', '2020-09-10 04:10:20', '2020-09-10 04:10:20'),
(16, 'kail sharma part comment', 3, 'App\\FacebookPost', '2020-11-02 07:24:27', '2020-11-02 07:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES
(1, 'India', '2020-07-24 02:46:14', '2020-07-24 02:46:14'),
(2, 'Shrilanka', '2020-07-24 03:42:12', '2020-07-24 03:42:12'),
(3, 'Australia', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `learner_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `learner_id`, `created_at`, `updated_at`) VALUES
(1, 'Wordpress Pulgin Devlopement', 2, '2020-07-23 18:30:00', '2020-07-24 02:44:37'),
(2, 'Wordpress Theme Devp', 2, '2020-07-24 02:53:29', NULL),
(3, 'Laravel Devlopement', 1, NULL, '2020-07-24 01:49:30'),
(4, 'Cake PHP tutorials', 3, '2020-07-24 00:49:00', '2020-07-23 22:54:12'),
(5, 'wordpress Widget Devp', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `email_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `email_id`, `student_id`, `created_at`, `updated_at`) VALUES
(1, 'dollar32@yopmail.com', 1, NULL, NULL),
(2, 'dollar@test.com', 1, NULL, NULL),
(3, 'John23@gmail.com', 3, NULL, NULL),
(4, 'ritesh2333@gmail.com', 2, NULL, NULL),
(5, 'john333@gmail.com', 3, NULL, NULL),
(6, 'ritesh23232@yopmail.com', 2, NULL, NULL),
(7, 'ritesh@yopmail.com', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `facebook_posts`
--

CREATE TABLE `facebook_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facebook_posts`
--

INSERT INTO `facebook_posts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Inida Post', '2020-09-10 03:04:45', '2020-09-10 03:04:45'),
(2, 'Sports Message', '2020-09-10 03:04:59', '2020-09-10 03:04:59'),
(3, 'Entertainment', '2020-09-10 03:05:01', '2020-09-10 03:05:01'),
(4, 'Morning sentanse', '2020-09-10 03:05:03', '2020-09-10 03:05:03'),
(5, 'A5iJrm72bn', '2020-09-10 03:05:04', '2020-09-10 03:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` bigint(20) NOT NULL,
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `imageable_id`, `imageable_type`, `created_at`, `updated_at`) VALUES
(1, 'profiles/profile_532.jpg', 1, 'App\\User', '2020-09-10 01:56:26', '2020-09-10 01:56:26'),
(2, 'profiles/profile_264.jpg', 2, 'App\\User', '2020-09-10 01:58:27', '2020-09-10 01:58:27'),
(3, 'profiles/profile_247.jpg', 3, 'App\\User', '2020-09-10 01:58:56', '2020-09-10 01:58:56'),
(4, 'profiles/profile_5.jpg', 4, 'App\\User', '2020-09-10 02:04:35', '2020-09-10 02:04:35'),
(5, 'posts/profile_191.jpg', 1, 'App\\Post', '2020-09-10 02:14:44', '2020-09-10 02:14:44'),
(6, 'profiles/profile_738.jpg', 5, 'App\\User', '2020-09-10 02:15:21', '2020-09-10 02:15:21'),
(7, 'posts/profile_329.jpg', 2, 'App\\Post', '2020-09-10 02:16:05', '2020-09-10 02:16:05'),
(8, 'profiles/profile_707.jpg', 6, 'App\\User', '2020-09-10 02:21:33', '2020-09-10 02:21:33'),
(9, 'posts/profile_84.jpg', 3, 'App\\Post', '2020-09-10 02:22:10', '2020-09-10 02:22:10'),
(10, 'posts/profile_765.jpg', 4, 'App\\Post', '2020-09-10 04:10:55', '2020-09-10 04:10:55'),
(11, 'posts/profile_175.jpg', 5, 'App\\Post', '2020-11-02 22:23:45', '2020-11-02 22:23:45');

-- --------------------------------------------------------

--
-- Table structure for table `learners`
--

CREATE TABLE `learners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `learners`
--

INSERT INTO `learners` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'Mitesh Kumar', 1, NULL, NULL),
(2, 'Jigar', 3, '2020-07-24 07:49:00', '2020-07-24 07:49:00'),
(3, 'Radhesh', 2, NULL, NULL);

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
(3, '2020_07_23_141105_create_people_table', 1),
(4, '2020_07_23_141154_create_tickets_table', 1),
(5, '2020_07_23_144212_create_students_table', 2),
(6, '2020_07_23_144246_create_emails_table', 2),
(7, '2020_07_24_030501_create_authers_table', 3),
(8, '2020_07_24_030533_create_books_table', 3),
(9, '2020_07_24_030719_create_auther_book_table', 3),
(10, '2020_07_24_042115_create_learners_table', 4),
(11, '2020_07_24_042135_create_countries_table', 4),
(12, '2020_07_24_042241_create_courses_table', 4),
(13, '2020_09_02_081901_create_players_table', 5),
(14, '2020_09_02_082633_rename_dob_in_players_table', 6),
(15, '2020_09_10_055259_create_users_table', 7),
(16, '2020_09_10_055430_create_posts_table', 8),
(17, '2020_09_10_055623_create_images_table', 9),
(18, '2020_09_10_082141_create_facebook_posts_table', 10),
(19, '2020_09_10_082315_create_videos_table', 10),
(20, '2020_09_10_082352_create_comments_table', 10),
(21, '2020_10_22_044044_create_ajax_cruds_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Mitesh', NULL, NULL),
(2, 'Ravi Kumar', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Today News', '2020-09-10 02:14:44', '2020-09-10 02:14:44'),
(2, 'Breaking news post', '2020-09-10 02:16:05', '2020-09-10 02:16:05'),
(3, 'New India headline', '2020-09-10 02:22:10', '2020-09-10 02:22:10'),
(4, 'TEst Post', '2020-09-10 04:10:54', '2020-09-10 04:10:54'),
(5, 'sdfasdf', '2020-11-02 22:23:44', '2020-11-02 22:23:44');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dollar Patel', NULL, NULL),
(2, 'Ritesh Kumar', NULL, NULL),
(3, 'John Dire', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `ticket_id`, `person_id`, `created_at`, `updated_at`) VALUES
(2, 'DHOOM1001', 1, NULL, NULL),
(3, 'DON2', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Mitesh Patel', '2020-09-10 01:56:26', '2020-09-10 01:56:26'),
(2, 'Jigar Methaniya', '2020-09-10 01:58:27', '2020-09-10 01:58:27'),
(3, 'Ravi Patel', '2020-09-10 01:58:55', '2020-09-10 01:58:55'),
(4, 'Ankit Kumar', '2020-09-10 02:04:35', '2020-09-10 02:04:35'),
(5, 'Nirav Shah', '2020-09-10 02:15:21', '2020-09-10 02:15:21'),
(6, 'Niks patel', '2020-09-10 02:21:33', '2020-09-10 02:21:33');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Ms. Hettie Ernser III', '2020-09-10 03:19:54', '2020-09-10 03:19:54'),
(2, 'Brady Windler', '2020-09-10 03:19:55', '2020-09-10 03:19:55'),
(3, 'Rosamond Osinski V', '2020-09-10 03:19:55', '2020-09-10 03:19:55'),
(4, 'Elissa Grant', '2020-09-10 03:19:55', '2020-09-10 03:19:55'),
(5, 'Funny Video', '2020-09-10 03:19:55', '2020-09-10 03:19:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ajax_cruds`
--
ALTER TABLE `ajax_cruds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authers`
--
ALTER TABLE `authers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auther_book`
--
ALTER TABLE `auther_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auther_book_auther_id_foreign` (`auther_id`),
  ADD KEY `auther_book_book_id_foreign` (`book_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_learner_id_foreign` (`learner_id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emails_student_id_foreign` (`student_id`);

--
-- Indexes for table `facebook_posts`
--
ALTER TABLE `facebook_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learners`
--
ALTER TABLE `learners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_person_id_foreign` (`person_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ajax_cruds`
--
ALTER TABLE `ajax_cruds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `authers`
--
ALTER TABLE `authers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auther_book`
--
ALTER TABLE `auther_book`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `facebook_posts`
--
ALTER TABLE `facebook_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `learners`
--
ALTER TABLE `learners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auther_book`
--
ALTER TABLE `auther_book`
  ADD CONSTRAINT `auther_book_auther_id_foreign` FOREIGN KEY (`auther_id`) REFERENCES `authers` (`id`),
  ADD CONSTRAINT `auther_book_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_learner_id_foreign` FOREIGN KEY (`learner_id`) REFERENCES `learners` (`id`);

--
-- Constraints for table `emails`
--
ALTER TABLE `emails`
  ADD CONSTRAINT `emails_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
