-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.13 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for myproject
DROP DATABASE IF EXISTS `myproject`;
CREATE DATABASE IF NOT EXISTS `myproject` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `myproject`;

-- Dumping structure for table myproject.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table myproject.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table myproject.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table myproject.migrations: ~6 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2020_04_10_165153_create_profiles_table', 1),
	(5, '2020_04_10_173736_create_posts_table', 1),
	(6, '2020_04_11_190834_creates_profile_user_pivot_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table myproject.posts
DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `caption` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table myproject.posts: ~18 rows (approximately)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `user_id`, `caption`, `image`, `created_at`, `updated_at`) VALUES
	(1, 1, 'my first post', 'uploads/ChNLYKg8JpEGjkVtL8mh60KD5Kpki8uOAxbvBp8v.jpeg', '2020-04-11 16:16:31', '2020-04-11 16:16:31'),
	(2, 1, 'my caption', 'uploads/Ybhok5BTGBVOmFhtxIQUbqo3LDOivxgFbu1PTHnr.png', '2020-04-11 19:40:17', '2020-04-11 19:40:17'),
	(3, 1, 'this is a caption', 'uploads/kl61fphs5T2VKsmsX2UwhXdfzUthCDpu60Vudpez.png', '2020-04-11 21:40:46', '2020-04-11 21:40:46'),
	(4, 2, 'my caption', 'uploads/8DvE7u9UVqSCRd9FQM087jF5RPuSnqiMAGKNGLYZ.jpeg', '2020-04-12 12:56:52', '2020-04-12 12:56:52'),
	(5, 1, 'this is a caption', 'uploads/YeR5xWLvnunVjY9rK0SELT53xxtSnbFSVkpPXKdG.jpeg', '2020-04-12 15:59:52', '2020-04-12 15:59:52'),
	(6, 1, 'test post', 'uploads/q15kBN64n8UxOKSNOvHMTB3nt3DPJ6cpVInuMTh6.jpeg', '2020-04-12 20:12:49', '2020-04-12 20:12:49'),
	(7, 1, 'New Caption Here 123', 'uploads/9PsomGrXJPPEHc2JK037O55ns1rnW4U4j1dPa74Q.jpeg', '2020-04-12 20:13:11', '2020-04-12 20:13:11'),
	(8, 2, 'this is a caption for testing', 'uploads/DJJI62Gfz6r3fN3XDxZ1jQH9WaaXgH3xkYL0oV0f.png', '2020-04-12 20:40:10', '2020-04-12 20:40:10'),
	(9, 1, 'new caption', 'uploads/IBl1F651lw5C663sDpUCc8xttJYxtAtnsK3KIZwe.jpeg', '2020-04-12 21:54:05', '2020-04-12 21:54:05'),
	(10, 1, 'new caption', 'uploads/iQ49jzpdkHIOg64N15wRxvojyWYbZV2T5lerKwQe.jpeg', '2020-04-12 21:54:06', '2020-04-12 21:54:06'),
	(11, 1, 'my caption my caption', 'uploads/1i4EisNnAaLeQ46xY62NL68uFkRRUa87bC3QAypE.jpeg', '2020-04-21 12:20:34', '2020-04-21 12:20:34'),
	(12, 6, 'New Caption Here', 'uploads/6vMgkmYlQoCqJDHJKi8o7kowJ5pdixXeMLPg4d0V.jpeg', '2020-04-26 14:29:14', '2020-04-26 14:29:14'),
	(13, 2, 'test screen', 'uploads/zzue9oOPQNAHx9eNz4uWx3Krik1wFI6QiH8akllr.jpeg', '2020-05-01 21:30:27', '2020-05-01 21:30:27'),
	(14, 2, 'my caption is a test', 'uploads/AVk0471PfnFZsgWETV4dGQOeJzohBYKabVNyyIaV.png', '2020-05-02 18:51:30', '2020-05-02 18:51:30'),
	(15, 8, 'abc', 'uploads/zcB4aAEEX5xJv2mGLTX7GVDErMoWeSCPj6F9DqXv.jpeg', '2020-05-05 12:32:48', '2020-05-05 12:32:48'),
	(16, 1, 'test screen', 'uploads/Krux5ga1C5EqViihqf312DRRtTvos9AWCRxWNnp2.jpeg', '2020-05-05 12:52:23', '2020-05-05 12:52:23'),
	(17, 1, 'my caption', 'uploads/NQVKQhU778entpnpBEPA4GKeN3kcxB8XZ90VyoS1.jpeg', '2020-05-05 13:08:26', '2020-05-05 13:08:26'),
	(18, 9, 'my caption', 'uploads/dRrQmFbwO8BbD0w4t5hXnDoy3cO5sN71eI2kyOLp.png', '2020-05-05 13:10:48', '2020-05-05 13:10:48');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping structure for table myproject.profiles
DROP TABLE IF EXISTS `profiles`;
CREATE TABLE IF NOT EXISTS `profiles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table myproject.profiles: ~9 rows (approximately)
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` (`id`, `user_id`, `title`, `description`, `url`, `image`, `created_at`, `updated_at`) VALUES
	(1, 1, 'this is a title title11', 'description description', 'http://google.com', 'profile/RJaNLqMIUoZEDJV5Cd3MzOg7Y0jCbJ84ZTGuXgM4.jpeg', '2020-04-11 16:12:56', '2020-05-01 21:29:11'),
	(2, 2, 'my second title test', 'description for second profile', 'http://google.com', 'profile/MJGs3ZE0KZpWJ7ItBzXgZLI6B1j7o9IYPiTgT1lW.jpeg', '2020-04-11 16:57:38', '2020-05-02 18:52:11'),
	(3, 3, 'test title 3', 'description for third profile', 'http://tudublin.ie', 'profile/Ri4locbNoqDXV9X0J5zdBxKyWlHqQ1zp829P88Yz.jpeg', '2020-04-11 17:09:48', '2020-04-11 17:15:18'),
	(4, 4, 'test4', NULL, NULL, NULL, '2020-04-12 12:39:32', '2020-04-12 12:39:32'),
	(5, 5, 'emailtest', NULL, NULL, NULL, '2020-04-26 14:22:39', '2020-04-26 14:22:39'),
	(6, 6, 'This is a test title', 'this is my description, this is my description, this is my description, this is my description this is my description, this is my description, this is my description, this is my description, this is my description', 'http://tudublin.ie', 'profile/6Mk32g7dQjngBArZC0DGOf1ZglavBw8f8ZQ2F68T.jpeg', '2020-04-26 14:25:15', '2020-04-26 14:33:35'),
	(7, 7, 'testeruser', NULL, NULL, NULL, '2020-04-27 13:44:31', '2020-04-27 13:44:31'),
	(8, 8, 'this is my title', 'this is a description,this is a description,this is a description,this is a description,this is a description,this is a description', 'http://google.com', 'profile/DIqjuG2Ibtds1hSVG5Jc3lx7vrQI5OVqTv5aGNYs.png', '2020-05-05 12:28:26', '2020-05-05 12:34:29'),
	(9, 9, 'testusername1', 'this is a description', 'http://google.com', 'profile/OHQwD2ReZ0tZTNZWtLmFtwA9a24KbubE6jAq1Uab.jpeg', '2020-05-05 13:09:46', '2020-05-05 13:10:33');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;

-- Dumping structure for table myproject.profile_user
DROP TABLE IF EXISTS `profile_user`;
CREATE TABLE IF NOT EXISTS `profile_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `profile_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table myproject.profile_user: ~6 rows (approximately)
/*!40000 ALTER TABLE `profile_user` DISABLE KEYS */;
INSERT INTO `profile_user` (`id`, `profile_id`, `user_id`, `created_at`, `updated_at`) VALUES
	(55, 3, 3, NULL, NULL),
	(59, 6, 6, NULL, NULL),
	(74, 8, 8, NULL, NULL),
	(75, 1, 1, NULL, NULL),
	(76, 9, 9, NULL, NULL),
	(77, 2, 2, NULL, NULL);
/*!40000 ALTER TABLE `profile_user` ENABLE KEYS */;

-- Dumping structure for table myproject.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table myproject.users: ~9 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'testuser1', 'testuser1@test.com', 'testuser', NULL, '$2y$10$mEWC9p50hLoNwZnhWQsP9utqnJiyyUUsQO4oOPB/1JbndLbZVShGC', 'NZttjb4Ssn6lVduVqrr5U57q20091B1yVJ9p674raAW9KnkAporK40i1aUV6', '2020-04-11 16:12:56', '2020-04-11 16:12:56'),
	(2, 'testuser2', 'testuser2@testuser.com', 'Testuser2', NULL, '$2y$10$CzB1lDWvagKgmuR7Pe054.S4G8UbsnJEhxELZg.pmo8hOm/XZVp8q', NULL, '2020-04-11 16:57:38', '2020-04-11 16:57:38'),
	(3, 'testuser3', 'testuser3@testuser.com', 'TestUser3', NULL, '$2y$10$gag8ipt1iKUcNYfxzcfMBO3W8tt6SCdp7hFNZnMilopMGriWjuSxC', NULL, '2020-04-11 17:09:48', '2020-04-11 17:09:48'),
	(4, 'testuser4', 'test4@test.com', 'test4', NULL, '$2y$10$CwCcTvZoZvaO3MRpc6kk0uYQrnWJjGb4u8a0ow.9ogE5Z7SHMue.m', NULL, '2020-04-12 12:39:32', '2020-04-12 12:39:32'),
	(5, 'emailtest', 'emailtest@test.com', 'emailtest', NULL, '$2y$10$qF8a2bpxnrGnOYVjvHxEW.ID9WROUm1PmIB6bpGHEOCP8/toc6GUW', NULL, '2020-04-26 14:22:38', '2020-04-26 14:22:38'),
	(6, 'email2', 'emailtest2@test.com', 'emailtest2', NULL, '$2y$10$kKdN9JWyeR3pazfNRk3QE.kdUkrrBFHl.16oxzFQc94UE8XRKlJbe', NULL, '2020-04-26 14:25:15', '2020-04-26 14:25:15'),
	(7, 'tester', 'tester@test.com', 'testeruser', NULL, '$2y$10$4Us03xGC7oYqO6MjQN3zvehuhCACqB/t2wb3Q78J9ukBDdPvuSdG6', NULL, '2020-04-27 13:44:31', '2020-04-27 13:44:31'),
	(8, 'testing test', 'testingtest@test.com', 'testinguser', NULL, '$2y$10$jsG.q0sc1JZwsALZKdCJyO/vMYB6h.G7L98Q58YmpV20UkRpUuJI2', NULL, '2020-05-05 12:28:26', '2020-05-05 12:28:26'),
	(9, 'test', 'testuseruser@test.com', 'testusername1', NULL, '$2y$10$a.aZ1VvFDDjvlnTkrRDBDu4ugxmTjLGCMkHlXWA5GF8ACK/H/5kLW', NULL, '2020-05-05 13:09:46', '2020-05-05 13:09:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
