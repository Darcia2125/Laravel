-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 23 avr. 2021 à 11:25
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `laravel`
--

-- --------------------------------------------------------

--
-- Structure de la table `anwers`
--

DROP TABLE IF EXISTS `anwers`;
CREATE TABLE IF NOT EXISTS `anwers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `repondu` varchar(255) NOT NULL,
  `pas_repondu` varchar(255) NOT NULL,
  `num_answer` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `anwers`
--

INSERT INTO `anwers` (`id`, `repondu`, `pas_repondu`, `num_answer`) VALUES
(1, 'repondu', 'null', 2),
(2, 'repondu', 'null', 3);

-- --------------------------------------------------------

--
-- Structure de la table `forms`
--

DROP TABLE IF EXISTS `forms`;
CREATE TABLE IF NOT EXISTS `forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_repondents` varchar(255) NOT NULL,
  `num_page` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `forms_pages`
--

DROP TABLE IF EXISTS `forms_pages`;
CREATE TABLE IF NOT EXISTS `forms_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_form` int(11) NOT NULL,
  `num_page` int(11) NOT NULL,
  `num_question` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) NOT NULL,
  `num_page` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `respondents`
--

DROP TABLE IF EXISTS `respondents`;
CREATE TABLE IF NOT EXISTS `respondents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Anona', 'darciap19.aps2a@gmail.com', NULL, '$2y$10$kMessyJWaKV83WFAapkYves9wNrD8MEGx4DGc.kdYf2ZKzsHEh/06', 'xNbo2yUfyT7LrCL5ZnsUK7SitOTuAxsVGJL78AUyHSnzIcFYXlxG2KHVC4TI', '2021-04-22 08:31:48', '2021-04-22 08:31:48'),
(2, 'andrimasy', 'salemap19.aps1a@gmail.com', NULL, '$2y$10$FVLhi8TY2qqQVLA27x1sEe1dxViv.pUn2Vm04Od/6O6BuLoCVZkHG', NULL, '2021-04-22 09:06:59', '2021-04-22 09:06:59'),
(3, 'ndrina', 'arciap19.aps2a@gmail.com', NULL, '$2y$10$WPvN0MFpLOMP8gioROsA6eTL07luKLf4ET5054jRFW69SPyATRbgq', NULL, '2021-04-22 12:13:33', '2021-04-22 12:13:33'),
(4, 'Tréal Darcia ANONA', 'ciap19.aps2a@gmail.com', NULL, '$2y$10$OhqYtr1jDZzWC78I8uFZPuA97kEZ/eA/JAPRvUHLbLjXeb7VdMV.O', NULL, '2021-04-22 12:17:44', '2021-04-22 12:17:44'),
(5, 'Tréal Darcia ANONA', 'iap19.aps2a@gmail.com', NULL, '$2y$10$KHinaANFirsxJ9s544w58uFURQXoMQfhJLgipEkATbkeDSXH2wSQy', NULL, '2021-04-22 12:20:42', '2021-04-22 12:20:42'),
(6, 'Tréal Darcia', 'aps2a@gmail.com', NULL, '$2y$10$mL0RZLwBWxz.r7kshaKKT.ZhCahy6IcE/DLeLCyJ8/RFTPjbmA0Va', NULL, '2021-04-22 13:48:33', '2021-04-22 13:48:33'),
(7, 'tovo', 'tovo@gmail.com', NULL, '$2y$10$D2Pr4UuVvjXDoKwGP7/zq.j527GiR94FC/TZXkjSrJKJ3UMgWEuMW', NULL, '2021-04-22 14:45:19', '2021-04-22 14:45:19');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
