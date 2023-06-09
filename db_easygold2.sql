-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 14 mars 2023 à 14:33
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_easygold2`
--

-- --------------------------------------------------------

--
-- Structure de la table `agency`
--

DROP TABLE IF EXISTS `agency`;
CREATE TABLE IF NOT EXISTS `agency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caisse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `agency`
--

INSERT INTO `agency` (`id`, `name`, `tel`, `caisse`, `email`) VALUES
(9, 'GAO', '98858585', '-1946902.68', 'xx@x.com'),
(10, 'Bamako', '45212558', '13872867.12', 'xx@x.com'),
(11, 'GAO', '98858585', '15896555.9', 'xx@x.com');

-- --------------------------------------------------------

--
-- Structure de la table `alimentation_caisse`
--

DROP TABLE IF EXISTS `alimentation_caisse`;
CREATE TABLE IF NOT EXISTS `alimentation_caisse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `montant` double NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `alimentation_caisse`
--

INSERT INTO `alimentation_caisse` (`id`, `montant`, `created_at`, `type`) VALUES
(1, 7000000, '2021-12-12 03:22:42', ''),
(2, 2000000, '2021-12-07 01:25:00', ''),
(3, 5000, '2022-02-07 00:51:47', 'Dollar');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210703022719', '2021-07-03 02:27:40', 671),
('DoctrineMigrations\\Version20210703034540', '2021-07-03 03:45:47', 1536),
('DoctrineMigrations\\Version20210703034747', '2021-07-03 03:53:58', 1130),
('DoctrineMigrations\\Version20210703225528', '2021-07-03 22:55:40', 4829),
('DoctrineMigrations\\Version20210708001533', '2021-07-08 00:15:49', 3415),
('DoctrineMigrations\\Version20210710024400', '2021-07-10 02:44:05', 1368),
('DoctrineMigrations\\Version20210710044319', '2021-07-10 04:43:27', 1314),
('DoctrineMigrations\\Version20210712012034', '2021-07-12 01:20:46', 2457),
('DoctrineMigrations\\Version20210712012550', '2021-07-12 01:26:03', 666),
('DoctrineMigrations\\Version20210712043712', '2021-07-12 04:37:17', 671),
('DoctrineMigrations\\Version20210712053830', '2021-07-12 05:38:33', 577),
('DoctrineMigrations\\Version20210712065836', '2021-07-12 06:58:39', 1193),
('DoctrineMigrations\\Version20210712095008', '2021-07-12 09:50:15', 569),
('DoctrineMigrations\\Version20210712225038', '2021-07-12 22:50:45', 2856),
('DoctrineMigrations\\Version20210712225120', '2021-07-12 22:51:24', 1038),
('DoctrineMigrations\\Version20210713033334', '2021-07-13 03:33:38', 676),
('DoctrineMigrations\\Version20210714005829', '2021-07-14 00:58:35', 3041),
('DoctrineMigrations\\Version20210723003630', '2021-07-23 00:36:41', 2463),
('DoctrineMigrations\\Version20210723004130', '2021-07-23 00:41:34', 848),
('DoctrineMigrations\\Version20210723230631', '2021-07-23 23:06:38', 2007),
('DoctrineMigrations\\Version20210724012643', '2021-07-24 01:26:48', 810),
('DoctrineMigrations\\Version20210810070724', '2021-08-10 07:07:35', 3401),
('DoctrineMigrations\\Version20210819142740', '2021-08-19 14:27:51', 2969),
('DoctrineMigrations\\Version20210825225359', '2021-08-25 22:54:12', 2269),
('DoctrineMigrations\\Version20211212030656', '2021-12-12 03:10:28', 3237),
('DoctrineMigrations\\Version20220206235938', '2022-02-07 00:00:02', 889);

-- --------------------------------------------------------

--
-- Structure de la table `operations`
--

DROP TABLE IF EXISTS `operations`;
CREATE TABLE IF NOT EXISTS `operations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base` double DEFAULT NULL,
  `poideau` double DEFAULT NULL,
  `poidair` double DEFAULT NULL,
  `densite` double DEFAULT NULL,
  `karat` double DEFAULT NULL,
  `prixu` double DEFAULT NULL,
  `montant` double DEFAULT NULL,
  `avance` double DEFAULT NULL,
  `totalm` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `motif` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempclient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qte` double DEFAULT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taux` double DEFAULT NULL,
  `avdollar` double DEFAULT NULL,
  `valid` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2814534819EB6921` (`client_id`),
  KEY `IDX_28145348CDEADB2A` (`agency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=290 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `operations`
--

INSERT INTO `operations` (`id`, `client_id`, `agency_id`, `type`, `base`, `poideau`, `poidair`, `densite`, `karat`, `prixu`, `montant`, `avance`, `totalm`, `total`, `created_at`, `agent`, `facture`, `numero`, `motif`, `tempclient`, `time`, `tel`, `qte`, `product`, `taux`, `avdollar`, `valid`) VALUES
(274, NULL, NULL, 'Vente', 31000, 10, 131, 13.1, 10.3, 13304.17, 1742846.27, NULL, 1742846.27, 1742846.27, '2022-02-01 00:00:00', 'MAHRI SADAM', 'Ok', 1, NULL, 'ClientX', '00:58:15', '76767676', NULL, NULL, NULL, NULL, NULL),
(275, NULL, NULL, 'Achat', 31000, 10, 131, 13.1, 10.3, 13304.17, 1742846.27, NULL, 1742846.27, 1742846.27, '2022-02-01 00:00:00', 'MAHRI SADAM', 'Ok', 1, NULL, 'ClientX', '01:11:07', '76767676', NULL, NULL, NULL, NULL, NULL),
(276, NULL, NULL, 'Achat', 31000, 10, 131, 13.1, 10.3, 13304.17, 1742846.27, NULL, NULL, NULL, '2022-02-01 00:00:00', 'MAHRI SADAM', NULL, NULL, NULL, 'ClientX', '21:58:18', '76767676', NULL, NULL, NULL, NULL, NULL),
(277, 19, NULL, 'Dépôt', 0, NULL, NULL, NULL, NULL, NULL, 50000, NULL, NULL, NULL, '2022-02-06 00:00:00', 'MAHRI SADAM', 'Ok', 1, 'Dépot', NULL, '22:46:39', NULL, NULL, NULL, NULL, NULL, NULL),
(278, NULL, NULL, 'FD', 0, NULL, NULL, NULL, NULL, NULL, 1000, 50000, 50000, 0, '2022-02-06 00:00:00', 'MAHRI SADAM', 'Ok', 1, 'Achat dollar', 'ClientX', '23:27:14', '76767676', NULL, NULL, 50, NULL, 1),
(279, NULL, NULL, 'FE', 0, NULL, NULL, NULL, NULL, NULL, 1000, 60000, 60000, 0, '2022-02-06 00:00:00', 'MAHRI SADAM', 'Ok', 1, 'Achat Euro', 'ClientX', '23:34:46', '76767676', NULL, NULL, 60, NULL, 1),
(280, NULL, NULL, 'DF', 0, NULL, NULL, NULL, NULL, NULL, 1000, NULL, 30000, 30000, '2022-02-06 00:00:00', 'MAHRI SADAM', 'Ok', 1, 'Vente Dollar', 'ClientX', '23:37:47', '76767676', NULL, NULL, 30, NULL, 1),
(281, NULL, NULL, 'EF', 0, NULL, NULL, NULL, NULL, NULL, 1000, NULL, 30000, 30000, '2022-02-06 00:00:00', 'MAHRI SADAM', 'Ok', 1, 'Vente Euro', 'ClientX', '23:39:10', '76767676', NULL, NULL, 30, NULL, 1),
(282, NULL, NULL, 'FD', 0, NULL, NULL, NULL, NULL, NULL, 1000, NULL, 20000, 70000, '2022-02-07 00:00:00', 'MAHRI SADAM', 'Ok', 2, 'Motif', 'ClientX', '15:30:22', '76767676', NULL, NULL, 20, NULL, 1),
(283, 19, NULL, 'Dépôt', 0, NULL, NULL, NULL, NULL, NULL, 50000, NULL, NULL, NULL, '2022-02-07 00:00:00', 'MAHRI SADAM', 'Ok', 2, 'Epargne', NULL, '15:32:27', NULL, NULL, NULL, NULL, NULL, NULL),
(285, 19, NULL, 'Achat', 33000, 2, 27, 13.5, 11.5, 15812.5, 426937.5, NULL, 426937.5, 426937.5, '2022-02-08 00:00:00', 'MAHRI SADAM', 'Ok', 2, NULL, NULL, '21:26:54', NULL, NULL, NULL, NULL, NULL, NULL),
(286, 19, NULL, 'Rétrait', 0, NULL, NULL, NULL, NULL, NULL, 500000, NULL, NULL, NULL, '2022-02-08 00:00:00', 'MAHRI SADAM', 'Ok', 1, 'Rétrait', NULL, '21:32:35', NULL, NULL, NULL, NULL, NULL, NULL),
(287, NULL, NULL, 'FE', 0, NULL, NULL, NULL, NULL, NULL, 5000, NULL, 250000, 250000, '2022-03-03 00:00:00', 'MAHRI SADAM', 'Ok', 2, 'Motif', 'Aboubacar Togola', '04:00:20', '11111', NULL, NULL, 50, NULL, NULL),
(288, NULL, NULL, 'FD', 0, NULL, NULL, NULL, NULL, NULL, 1000, NULL, 500000, 500000, '2022-03-03 00:00:00', 'MAHRI SADAM', 'Ok', 3, 'achat', 'Aboubacar Togola', '04:09:38', '111111', NULL, NULL, 500, NULL, NULL),
(289, NULL, 9, 'Achat', 30000, 10, 136.01, 13.6, 11.8, 14750, 2006147.5, NULL, NULL, NULL, '2022-06-15 00:00:00', 'MOHAMED', NULL, NULL, NULL, 'Aboubacar Sidiki Togola', '17:27:13', '+22377425252', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `society`
--

DROP TABLE IF EXISTS `society`;
CREATE TABLE IF NOT EXISTS `society` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caisse` double DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dollar` double DEFAULT NULL,
  `euro` double DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `society`
--

INSERT INTO `society` (`id`, `name`, `job`, `logo`, `caisse`, `tel`, `dollar`, `euro`, `description`, `email`) VALUES
(3, 'NEW ENTERPRISE', 'NEW JOB', 'gold.png', 536000, 'XX XX XX XX', 5000, -250000, 'NEW DESCRIBE', 'xxx@x.com');

-- --------------------------------------------------------

--
-- Structure de la table `transfert`
--

DROP TABLE IF EXISTS `transfert`;
CREATE TABLE IF NOT EXISTS `transfert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `transagency_id` int(11) DEFAULT NULL,
  `montant` double NOT NULL,
  `frais` double DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transagent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destinataire` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secretid` bigint(20) NOT NULL,
  `sent_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `receve_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `destinateur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telsender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1E4EACBB19EB6921` (`client_id`),
  KEY `IDX_1E4EACBB7F18E010` (`transagency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `transfert`
--

INSERT INTO `transfert` (`id`, `client_id`, `transagency_id`, `montant`, `frais`, `tel`, `agency`, `agent`, `transagent`, `facture`, `destinataire`, `secretid`, `sent_at`, `receve_at`, `destinateur`, `telsender`, `paid`) VALUES
(7, NULL, 9, 2000000, 1000, '41412525', NULL, 'MAHRI SADAM', 'MAHRI SADAM', 'Ok', 'BB', 6553837595, '2021-07-16 15:09:33', '2021-07-16 15:36:11', 'AST', '45212145', 'OUI'),
(8, NULL, 9, 1999000, 1000, '14584752', NULL, 'MAHRI SADAM', 'MAHRI SADAM', 'Ok', 'BBT', 1577164984, '2021-07-16 15:52:00', '2021-07-16 15:55:09', 'AST', '45124585', 'NON'),
(9, NULL, 10, 1999000, 1000, '44444', 'GAO', 'MOHAMED', 'ALI', 'Ok', 'BST', 3743934252, '2021-07-16 15:57:29', '2021-07-16 15:59:01', 'DST', '44444', 'NON'),
(10, NULL, 9, 1999000, 1000, '111111', 'Bamako', 'ALI', 'MOHAMED', 'Ok', 'BBBB', 8248225972, '2021-07-16 16:13:57', '2021-07-16 16:14:59', 'BBBB', '111111', 'NON'),
(11, NULL, 9, 1000000, 5000, '2122', NULL, 'MAHRI SADAM', NULL, NULL, 'BBB', 4414488644, '2021-08-09 15:42:35', NULL, 'Madou Sidibé', '+22377425252', 'OUI'),
(12, NULL, 9, 995000, 5000, '3232', NULL, 'MAHRI SADAM', 'MOHAMED', 'Ok', 'kkk', 9323662756, '2021-08-09 15:43:49', '2021-08-09 15:48:00', 'jhj', '2121', 'NON'),
(13, NULL, 10, 500000, 500, '111', 'GAO', 'MOHAMED', 'MOHAMED', 'Ok', 'ff', 1164872262, '2021-08-10 06:21:28', '2021-08-10 06:50:20', 'dd', '111', 'OUI'),
(14, NULL, 11, 50000, 5000, '44', NULL, 'MAHRI SADAM', 'MOHAMED', 'Ok', 'ff', 6577896258, '2021-08-12 03:01:21', '2021-08-12 03:03:28', 'dd', '44', 'OUI'),
(15, NULL, 10, 50000, 4000, '+22377425252', 'GAO', 'MOHAMED', NULL, NULL, 'Aboubacar Sidiki TOGOLA', 3239282473, '2021-08-12 03:11:00', NULL, 'Madou Sidibé', '+22377425252', 'NON'),
(16, NULL, 10, 45000, 5000, '14155', 'GAO', 'MOHAMED', 'MOHAMED', 'Ok', 'Daired', 1211993472, '2021-08-22 17:12:40', '2021-08-22 17:14:24', 'Madou Sidibé', '+22377425252', 'NON');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `solde` double DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `isconnected` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`),
  KEY `IDX_8D93D649CDEADB2A` (`agency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`, `type`, `solde`, `tel`, `fullname`, `agency_id`, `isconnected`) VALUES
(15, 'BEN', '[\"ROLE_ADMIN\"]', '$2y$13$7Df6woJke5VyWD/pJte58.xL9PQEpo0zDJvIL3Ea2XxhyGhJEA9d.', 'Super', NULL, '92857171', 'MAHRI SADAM', NULL, 1),
(16, 'ALI', '[\"ROLE_AGENT\"]', '$2y$13$2W/Rp2ZFc2S.QjbQGx4ftufYLVjGS/7L.rZGK1IUcDiMPU0Vx6dPu', 'Agent', NULL, '66666666', 'ALI', 10, 0),
(17, 'MOH', '[\"ROLE_AGENT\"]', '$2y$13$eVAs90JAS6bIs3ebUH5V6eivq440wMW8KLcbOPvwLsJ1M4S2INXfS', 'Agent', NULL, '78787878', 'MOHAMED', 9, 1),
(19, 'SIDIBEMA983', '[\"ROLE_CLIENT\"]', '$2y$13$Saohcc15PchLRg88rzyc4OfsDE1TQfUKeqXN7CTZQZmKmsFTzCpN.', 'Client', 26937.5, '77264552', 'SIDIBE MADOU', 10, NULL);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `operations`
--
ALTER TABLE `operations`
  ADD CONSTRAINT `FK_2814534819EB6921` FOREIGN KEY (`client_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_28145348CDEADB2A` FOREIGN KEY (`agency_id`) REFERENCES `agency` (`id`);

--
-- Contraintes pour la table `transfert`
--
ALTER TABLE `transfert`
  ADD CONSTRAINT `FK_1E4EACBB19EB6921` FOREIGN KEY (`client_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_1E4EACBB7F18E010` FOREIGN KEY (`transagency_id`) REFERENCES `agency` (`id`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D649CDEADB2A` FOREIGN KEY (`agency_id`) REFERENCES `agency` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
