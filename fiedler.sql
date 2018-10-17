-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mer 17 Octobre 2018 à 13:28
-- Version du serveur :  5.7.14
-- Version de PHP :  7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `fiedler`
--

-- --------------------------------------------------------

--
-- Structure de la table `connexions`
--

CREATE TABLE `connexions` (
  `id` int(10) UNSIGNED NOT NULL,
  `DebutCon` datetime NOT NULL,
  `FinCon` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `connexions`
--

INSERT INTO `connexions` (`id`, `DebutCon`, `FinCon`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2018-10-14 22:07:14', '2018-10-15 10:26:59', 1, '2018-10-14 22:07:14', '2018-10-15 10:26:59', NULL),
(2, '2018-10-15 10:28:12', '2018-10-15 18:01:16', 1, '2018-10-15 10:28:12', '2018-10-15 18:01:16', NULL),
(3, '2018-10-15 18:01:23', '2018-10-15 18:02:55', 1, '2018-10-15 18:01:23', '2018-10-15 18:02:55', NULL),
(4, '2018-10-15 18:03:03', '2018-10-15 18:04:40', 1, '2018-10-15 18:03:03', '2018-10-15 18:04:40', NULL),
(5, '2018-10-15 18:04:52', '2018-10-15 18:06:16', 1, '2018-10-15 18:04:52', '2018-10-15 18:06:16', NULL),
(6, '2018-10-15 20:48:37', NULL, 1, '2018-10-15 20:48:37', '2018-10-15 20:48:37', NULL),
(7, '2018-10-16 06:43:07', '2018-10-16 07:05:54', 1, '2018-10-16 06:43:07', '2018-10-16 07:05:54', NULL),
(8, '2018-10-16 07:06:11', '2018-10-16 07:06:33', 3, '2018-10-16 07:06:11', '2018-10-16 07:06:33', NULL),
(9, '2018-10-16 07:06:47', '2018-10-16 07:07:05', 2, '2018-10-16 07:06:47', '2018-10-16 07:07:05', NULL),
(10, '2018-10-16 07:07:12', '2018-10-16 07:44:07', 1, '2018-10-16 07:07:12', '2018-10-16 07:44:07', NULL),
(11, '2018-10-16 07:44:20', '2018-10-16 07:44:39', 2, '2018-10-16 07:44:20', '2018-10-16 07:44:39', NULL),
(12, '2018-10-16 07:45:08', '2018-10-16 07:45:34', 3, '2018-10-16 07:45:08', '2018-10-16 07:45:34', NULL),
(13, '2018-10-16 07:45:41', NULL, 1, '2018-10-16 07:45:41', '2018-10-16 07:45:41', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `historiques`
--

CREATE TABLE `historiques` (
  `id` int(10) UNSIGNED NOT NULL,
  `ActionHisto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DateHisto` datetime NOT NULL,
  `ObjetHisto` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `historiques`
--

INSERT INTO `historiques` (`id`, `ActionHisto`, `DateHisto`, `ObjetHisto`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'creation', '2018-10-14 21:29:42', 'menus', 1, '2018-10-14 21:29:42', '2018-10-14 21:29:42', NULL),
(2, 'creation', '2018-10-14 21:34:40', 'menus', 1, '2018-10-14 21:34:40', '2018-10-14 21:34:40', NULL),
(3, 'creation', '2018-10-14 21:42:09', 'menus', 1, '2018-10-14 21:42:09', '2018-10-14 21:42:09', NULL),
(4, 'creation', '2018-10-14 21:42:47', 'menus', 1, '2018-10-14 21:42:47', '2018-10-14 21:42:47', NULL),
(5, 'creation', '2018-10-14 21:56:47', 'menus', 1, '2018-10-14 21:56:47', '2018-10-14 21:56:47', NULL),
(6, 'creation', '2018-10-14 21:57:45', 'menus', 1, '2018-10-14 21:57:45', '2018-10-14 21:57:45', NULL),
(7, 'creation', '2018-10-15 17:56:42', 'typemenus', 1, '2018-10-15 17:56:42', '2018-10-15 17:56:42', NULL),
(8, 'creation', '2018-10-15 17:57:11', 'menus', 1, '2018-10-15 17:57:11', '2018-10-15 17:57:11', NULL),
(9, 'creation', '2018-10-15 17:59:57', 'profils', 1, '2018-10-15 17:59:57', '2018-10-15 17:59:57', NULL),
(10, 'creation', '2018-10-16 06:56:12', 'menus', 1, '2018-10-16 06:56:12', '2018-10-16 06:56:12', NULL),
(11, 'creation', '2018-10-16 06:58:20', 'personnels', 1, '2018-10-16 06:58:20', '2018-10-16 06:58:20', NULL),
(12, 'creation', '2018-10-16 07:00:21', 'personnels', 1, '2018-10-16 07:00:21', '2018-10-16 07:00:21', NULL),
(13, 'creation', '2018-10-16 07:05:15', 'users', 1, '2018-10-16 07:05:15', '2018-10-16 07:05:15', NULL),
(14, 'creation', '2018-10-16 07:05:43', 'users', 1, '2018-10-16 07:05:43', '2018-10-16 07:05:43', NULL),
(15, 'creation', '2018-10-16 07:33:15', 'postes', 1, '2018-10-16 07:33:15', '2018-10-16 07:33:15', NULL),
(16, 'modification', '2018-10-16 07:34:30', 'personnels', 1, '2018-10-16 07:34:30', '2018-10-16 07:34:30', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `NomMenu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UrlMenu` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IconMenu` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `typemenu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `menus`
--

INSERT INTO `menus` (`id`, `NomMenu`, `UrlMenu`, `IconMenu`, `typemenu_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Poste', 'postes', '', 1, '2018-10-14 19:53:00', '2018-10-14 19:53:00', NULL),
(2, 'Personnel', 'personnels', '', 1, '2018-10-14 19:54:00', '2018-10-14 19:54:00', NULL),
(3, 'Profil', 'profils', '', 2, '2018-10-14 21:00:00', '2018-10-14 21:00:00', NULL),
(4, 'Menu', 'menus', NULL, 2, '2018-10-14 21:29:42', '2018-10-14 21:29:42', NULL),
(5, 'Utilisateur', 'users', NULL, 2, '2018-10-14 21:34:40', '2018-10-14 21:34:40', NULL),
(6, 'Droit', 'droits', NULL, 2, '2018-10-14 21:42:08', '2018-10-14 21:42:08', NULL),
(7, 'Type menu', 'typemenus', NULL, 2, '2018-10-14 21:42:47', '2018-10-14 21:42:47', NULL),
(8, 'Connexion', 'connexions', NULL, 2, '2018-10-14 21:56:47', '2018-10-14 21:56:47', NULL),
(9, 'Historique', 'historiques', NULL, 2, '2018-10-14 21:57:45', '2018-10-14 21:57:45', NULL),
(10, 'Presence', 'presences', NULL, 3, '2018-10-15 17:57:11', '2018-10-15 17:57:11', NULL),
(11, 'Recapitulatif', 'recapitulatifs', NULL, 3, '2018-10-16 06:56:12', '2018-10-16 06:56:12', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `menu_profil`
--

CREATE TABLE `menu_profil` (
  `id` int(10) UNSIGNED NOT NULL,
  `profil_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `autorisation` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `menu_profil`
--

INSERT INTO `menu_profil` (`id`, `profil_id`, `menu_id`, `autorisation`, `created_at`, `updated_at`, `deleted_at`) VALUES
(160, 1, 10, 'd', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(159, 1, 10, 'm', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(158, 1, 10, 'c', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(157, 1, 10, 's', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(156, 1, 9, 'd', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(155, 1, 9, 'm', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(154, 1, 9, 'c', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(153, 1, 9, 's', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(152, 1, 8, 'd', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(151, 1, 8, 'm', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(150, 1, 8, 'c', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(149, 1, 8, 's', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(148, 1, 7, 'd', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(147, 1, 7, 'm', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(146, 1, 7, 'c', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(145, 1, 7, 's', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(144, 1, 6, 'd', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(143, 1, 6, 'm', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(142, 1, 6, 'c', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(141, 1, 6, 's', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(140, 1, 5, 'd', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(139, 1, 5, 'm', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(138, 1, 5, 'c', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(137, 1, 5, 's', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(136, 1, 4, 'd', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(135, 1, 4, 'm', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(134, 1, 4, 'c', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(133, 1, 4, 's', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(132, 1, 3, 'd', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(131, 1, 3, 'm', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(130, 1, 3, 'c', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(129, 1, 3, 's', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(128, 1, 2, 'd', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(127, 1, 2, 'm', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(126, 1, 2, 'c', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(125, 1, 2, 's', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(124, 1, 1, 'd', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(123, 1, 1, 'm', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(122, 1, 1, 'c', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(121, 1, 1, 's', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(117, 2, 10, 's', '2018-10-15 18:00:57', '2018-10-15 18:00:57', NULL),
(118, 2, 10, 'c', '2018-10-15 18:00:57', '2018-10-15 18:00:57', NULL),
(119, 2, 10, 'm', '2018-10-15 18:00:57', '2018-10-15 18:00:57', NULL),
(120, 2, 10, 'd', '2018-10-15 18:00:57', '2018-10-15 18:00:57', NULL),
(161, 1, 11, 's', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(162, 1, 11, 'c', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(163, 1, 11, 'm', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL),
(164, 1, 11, 'd', '2018-10-16 06:56:48', '2018-10-16 06:56:48', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_07_03_063035_create_profils_table', 1),
(4, '2018_07_03_063300_create_menus_table', 1),
(5, '2018_07_03_063519_create_historiques_table', 1),
(6, '2018_07_03_063704_create_connexions_table', 1),
(7, '2018_07_03_063948_create_menu_profil_table', 1),
(8, '2018_07_03_064154_create_personnels_table', 1),
(9, '2018_07_03_064422_create_postes_table', 1),
(10, '2018_07_28_222837_create_typemenus_table', 1),
(11, '2018_10_13_110642_create_presences_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personnels`
--

CREATE TABLE `personnels` (
  `id` int(10) UNSIGNED NOT NULL,
  `NomPers` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PrenomPers` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SexePers` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TelephonePers` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AdressePers` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `EmailPers` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poste_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `personnels`
--

INSERT INTO `personnels` (`id`, `NomPers`, `PrenomPers`, `SexePers`, `TelephonePers`, `AdressePers`, `EmailPers`, `poste_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'kodjo', 'yaovi antoine', 'M', '0022890636370', 'agoè cacavéli', 'kodjoyaoviantoine@gmail.com', 2, '2018-10-14 19:51:00', '2018-10-16 07:34:30', NULL),
(2, 'GAMON', 'amivi jaqueline', 'F', '0022870428022', 'rue de la france ségbé', 'gamonamivi@yahoo.fr', 1, '2018-10-16 06:58:20', '2018-10-16 06:58:20', NULL),
(3, 'ASSIROU', 'adamou', 'M', '0022899966670', 'rue de chine adidogomé', 'assirouadama@yahoo.fr', 1, '2018-10-16 07:00:21', '2018-10-16 07:00:21', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `postes`
--

CREATE TABLE `postes` (
  `id` int(10) UNSIGNED NOT NULL,
  `LibellePostes` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `postes`
--

INSERT INTO `postes` (`id`, `LibellePostes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'informaticien', '2018-10-14 19:49:00', '2018-10-14 19:49:00', NULL),
(2, 'Comptable', '2018-10-16 07:33:15', '2018-10-16 07:33:15', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `presences`
--

CREATE TABLE `presences` (
  `id` int(10) UNSIGNED NOT NULL,
  `DateArrive` datetime NOT NULL,
  `DateDepart` datetime DEFAULT NULL,
  `duree` double DEFAULT NULL,
  `personnel_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `presences`
--

INSERT INTO `presences` (`id`, `DateArrive`, `DateDepart`, `duree`, `personnel_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '2018-10-15 13:36:37', '2018-10-15 22:37:54', 541, 1, NULL, '2018-10-15 13:36:37', '2018-10-15 22:37:54'),
(2, '2018-10-16 07:06:23', '2018-10-16 07:45:22', 38, 3, NULL, '2018-10-16 07:06:23', '2018-10-16 07:45:22'),
(3, '2018-10-16 07:06:56', '2018-10-16 07:44:30', 37, 2, NULL, '2018-10-16 07:06:56', '2018-10-16 07:44:30'),
(4, '2018-10-16 07:07:31', '2018-10-16 07:44:00', 36, 1, NULL, '2018-10-16 07:07:31', '2018-10-16 07:44:00');

-- --------------------------------------------------------

--
-- Structure de la table `profils`
--

CREATE TABLE `profils` (
  `id` int(10) UNSIGNED NOT NULL,
  `LibelleProfil` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DescProfil` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EtatProfil` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `profils`
--

INSERT INTO `profils` (`id`, `LibelleProfil`, `DescProfil`, `EtatProfil`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'donne droit à tout', 1, '2018-10-14 19:55:00', '2018-10-14 19:55:00', NULL),
(2, 'personnel', 'permet de marquer sa présence', 1, '2018-10-15 17:59:57', '2018-10-15 17:59:57', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `typemenus`
--

CREATE TABLE `typemenus` (
  `id` int(10) UNSIGNED NOT NULL,
  `LibelleTypemenu` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `typemenus`
--

INSERT INTO `typemenus` (`id`, `LibelleTypemenu`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Personne', NULL, '2018-10-14 19:52:00', '2018-10-14 19:52:00'),
(2, 'SECURITE', NULL, '2018-10-14 19:54:00', '2018-10-14 19:54:00'),
(3, 'VERIFICATION', NULL, '2018-10-15 17:56:41', '2018-10-15 17:56:41');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personnel_id` int(11) NOT NULL,
  `profil_id` int(11) NOT NULL,
  `etat` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `personnel_id`, `profil_id`, `etat`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', NULL, '$2y$10$WreqMW8Mn7zWFSlcM.Br4.AVIZwuphJ8id0XjijynLQ3vVWh5AWFm', 1, 1, 1, NULL, '2018-10-14 20:54:00', '2018-10-14 20:54:00', NULL),
(2, 'amivi', NULL, '$2y$10$WDw6cmxFTHsPmEA59xWl..Fa48Apkn7hnXX1cfyGklSabYbH8R7.i', 2, 2, 1, NULL, '2018-10-16 07:05:15', '2018-10-16 07:05:15', NULL),
(3, 'adamou', NULL, '$2y$10$AhFihiRKEboC3SemMi3nNuAxzR0AxASjg0PiUznRQfbB8R7Lj1Bl.', 3, 2, 1, NULL, '2018-10-16 07:05:43', '2018-10-16 07:05:43', NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `connexions`
--
ALTER TABLE `connexions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `connexions_user_id_foreign` (`user_id`);

--
-- Index pour la table `historiques`
--
ALTER TABLE `historiques`
  ADD PRIMARY KEY (`id`),
  ADD KEY `historiques_user_id_foreign` (`user_id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_nommenu_unique` (`NomMenu`),
  ADD KEY `menus_typemenu_id_foreign` (`typemenu_id`);

--
-- Index pour la table `menu_profil`
--
ALTER TABLE `menu_profil`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_profil_profil_id_foreign` (`profil_id`),
  ADD KEY `menu_profil_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personnels`
--
ALTER TABLE `personnels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personnels_poste_id_foreign` (`poste_id`);

--
-- Index pour la table `postes`
--
ALTER TABLE `postes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `postes_libellepostes_unique` (`LibellePostes`);

--
-- Index pour la table `presences`
--
ALTER TABLE `presences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `presences_personnel_id_foreign` (`personnel_id`);

--
-- Index pour la table `profils`
--
ALTER TABLE `profils`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profils_libelleprofil_unique` (`LibelleProfil`);

--
-- Index pour la table `typemenus`
--
ALTER TABLE `typemenus`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_profil_id_foreign` (`profil_id`),
  ADD KEY `users_personnel_id_foreign` (`personnel_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `connexions`
--
ALTER TABLE `connexions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `historiques`
--
ALTER TABLE `historiques`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `menu_profil`
--
ALTER TABLE `menu_profil`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `personnels`
--
ALTER TABLE `personnels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `postes`
--
ALTER TABLE `postes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `presences`
--
ALTER TABLE `presences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `profils`
--
ALTER TABLE `profils`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `typemenus`
--
ALTER TABLE `typemenus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
