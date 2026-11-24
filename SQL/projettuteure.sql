-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 29 juin 2026 à 22:56
-- Version du serveur :  5.7.17
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projettuteure`
--

-- --------------------------------------------------------

--
-- Structure de la table `chol_hdl`
--

CREATE TABLE `chol_hdl` (
  `id_hdl` int(11) NOT NULL,
  `libelle` varchar(50) DEFAULT NULL,
  `valeur_min` float DEFAULT NULL,
  `valeur_max` float DEFAULT NULL,
  `unite` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `chol_hdl`
--

INSERT INTO `chol_hdl` (`id_hdl`, `libelle`, `valeur_min`, `valeur_max`, `unite`) VALUES
(1, 'Faible', 0, 0.3, 'g/L'),
(2, 'Normal', 0.3, 0.9, 'g/L'),
(3, 'Elevé', 0.9, 99, 'g/L');

-- --------------------------------------------------------

--
-- Structure de la table `chol_ldl`
--

CREATE TABLE `chol_ldl` (
  `id_ldl` int(11) NOT NULL,
  `libelle` varchar(50) DEFAULT NULL,
  `valeur_min` float DEFAULT NULL,
  `valeur_max` float DEFAULT NULL,
  `unite` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `chol_ldl`
--

INSERT INTO `chol_ldl` (`id_ldl`, `libelle`, `valeur_min`, `valeur_max`, `unite`) VALUES
(1, 'Faible', 0, 1, 'g/L'),
(2, 'Normal', 1, 1.6, 'g/L'),
(3, 'Élevé', 1.6, 99, 'g/L');

-- --------------------------------------------------------

--
-- Structure de la table `chol_total`
--

CREATE TABLE `chol_total` (
  `id_chol_total` int(11) NOT NULL,
  `libelle_chol` varchar(50) DEFAULT NULL,
  `valeur_min` float DEFAULT NULL,
  `valeur_max` float DEFAULT NULL,
  `unite` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `chol_total`
--

INSERT INTO `chol_total` (`id_chol_total`, `libelle_chol`, `valeur_min`, `valeur_max`, `unite`) VALUES
(1, 'Taux optimal', 0, 2, 'g/L'),
(2, 'Taux limite', 2, 2.5, 'g/L'),
(3, 'Taux élevé', 2.5, 99, 'g/L');

-- --------------------------------------------------------

--
-- Structure de la table `ethnie`
--

CREATE TABLE `ethnie` (
  `id_ethnie` int(11) NOT NULL,
  `libelle_ethnie` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ethnie`
--

INSERT INTO `ethnie` (`id_ethnie`, `libelle_ethnie`) VALUES
(0, 'Caucasien'),
(1, 'Afro-Américain'),
(2, 'Asiatique'),
(3, 'Autres');

-- --------------------------------------------------------

--
-- Structure de la table `eval_cognitive`
--

CREATE TABLE `eval_cognitive` (
  `id_eval` int(11) NOT NULL,
  `id_patient` int(11) DEFAULT NULL,
  `mmse` float DEFAULT NULL,
  `score_fonct` float DEFAULT NULL,
  `memoire` tinyint(4) DEFAULT NULL,
  `probleme_comp` tinyint(4) DEFAULT NULL,
  `adl` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `eval_cognitive`
--

INSERT INTO `eval_cognitive` (`id_eval`, `id_patient`, `mmse`, `score_fonct`, `memoire`, `probleme_comp`, `adl`) VALUES
(1, 4751, 21.4635, 6.51888, 0, 0, 1.72588),
(2, 4752, 20.6133, 7.1187, 0, 0, 2.59242),
(3, 4753, 7.35625, 5.89508, 0, 0, 7.11955),
(4, 4754, 13.9911, 8.96511, 0, 1, 6.48123),
(5, 4755, 13.5176, 6.04504, 0, 0, 0.0146912),
(6, 4756, 27.5175, 5.51014, 0, 0, 9.01569),
(7, 4757, 1.96441, 6.06212, 0, 0, 9.23633),
(8, 4758, 10.1396, 3.40137, 0, 0, 4.51725),
(9, 4759, 25.8207, 7.39606, 0, 1, 0.756232),
(10, 4760, 28.3884, 1.1489, 0, 1, 4.55439),
(11, 4761, 19.6961, 8.24697, 0, 0, 2.01894),
(12, 4762, 21.2056, 5.56854, 0, 0, 5.46727),
(13, 4763, 2.20034, 0.515136, 0, 0, 9.00376),
(14, 4764, 7.85208, 4.51071, 1, 0, 1.9396),
(15, 4765, 10.7865, 6.79169, 0, 0, 5.50559),
(16, 4766, 22.7152, 3.74303, 0, 0, 1.91113),
(17, 4767, 7.1676, 9.36595, 1, 0, 1.38209),
(18, 4768, 18.0493, 4.01955, 0, 0, 2.89294),
(19, 4769, 15.5447, 5.18954, 0, 0, 7.49811),
(20, 4770, 11.045, 0.535639, 0, 1, 6.53858),
(21, 4771, 8.98476, 6.94643, 0, 1, 1.68802),
(22, 4772, 0.411316, 2.74748, 0, 0, 3.00111),
(23, 4773, 18.8444, 5.8828, 0, 1, 9.17885),
(24, 4774, 16.9297, 8.44663, 1, 0, 4.57252),
(25, 4775, 12.992, 2.47582, 1, 1, 0.373627),
(26, 4776, 24.5986, 7.71019, 0, 0, 6.28661),
(27, 4777, 20.4491, 6.60126, 0, 0, 3.17697),
(28, 4778, 28.7159, 6.05034, 1, 0, 6.17344),
(29, 4779, 28.6613, 8.15334, 1, 0, 2.11164),
(30, 4780, 20.3681, 2.57126, 0, 0, 9.92874),
(31, 4781, 24.6749, 2.72444, 1, 1, 9.89282),
(32, 4782, 0.6946, 9.98644, 1, 0, 6.00938),
(33, 4783, 21.0168, 6.25414, 0, 0, 0.598969),
(34, 4784, 15.0002, 3.38111, 0, 0, 8.86378),
(35, 4785, 8.0332, 0.783516, 1, 0, 8.14115),
(36, 4786, 19.6041, 7.40167, 0, 1, 9.94744),
(37, 4787, 14.1059, 0.312161, 1, 0, 8.74428),
(38, 4788, 16.6402, 6.53866, 0, 1, 7.60522),
(39, 4789, 1.48166, 3.35843, 1, 0, 0.546762),
(40, 4790, 15.7456, 4.79927, 0, 0, 2.40676),
(41, 4791, 19.6456, 5.74655, 0, 0, 7.25378),
(42, 4792, 10.0418, 3.21569, 0, 0, 9.55173),
(43, 4793, 10.1554, 5.09444, 0, 1, 8.89077),
(44, 4794, 14.4212, 2.19304, 0, 0, 2.85681),
(45, 4795, 6.24562, 4.87472, 0, 0, 5.2962),
(46, 4796, 17.9634, 0.000459594, 0, 0, 0.275887),
(47, 4797, 13.4302, 5.08237, 0, 1, 1.43963),
(48, 4798, 14.2016, 8.87366, 0, 1, 8.052),
(49, 4799, 25.8346, 2.55864, 1, 1, 2.59711),
(50, 4800, 16.2054, 4.10022, 1, 0, 3.72427);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id_genre` int(11) NOT NULL,
  `libelle_genre` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id_genre`, `libelle_genre`) VALUES
(0, 'Homme'),
(1, 'Femme');

-- --------------------------------------------------------

--
-- Structure de la table `historique_medical`
--

CREATE TABLE `historique_medical` (
  `id_historique` int(11) NOT NULL,
  `id_patient` int(11) DEFAULT NULL,
  `antecedents` tinyint(4) DEFAULT NULL,
  `maladie_cardio` tinyint(4) DEFAULT NULL,
  `diabete` tinyint(4) DEFAULT NULL,
  `depression` tinyint(4) DEFAULT NULL,
  `trauma_cranien` tinyint(4) DEFAULT NULL,
  `hypertension` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `historique_medical`
--

INSERT INTO `historique_medical` (`id_historique`, `id_patient`, `antecedents`, `maladie_cardio`, `diabete`, `depression`, `trauma_cranien`, `hypertension`) VALUES
(1, 4751, 0, 0, 1, 1, 0, 0),
(2, 4752, 0, 0, 0, 0, 0, 0),
(3, 4753, 1, 0, 0, 0, 0, 0),
(4, 4754, 0, 0, 0, 0, 0, 0),
(5, 4755, 0, 0, 0, 0, 0, 0),
(6, 4756, 0, 0, 1, 0, 0, 0),
(7, 4757, 0, 0, 0, 0, 1, 0),
(8, 4758, 0, 0, 0, 0, 0, 0),
(9, 4759, 0, 0, 0, 0, 0, 1),
(10, 4760, 0, 1, 0, 0, 0, 0),
(11, 4761, 0, 0, 0, 0, 0, 0),
(12, 4762, 0, 0, 1, 0, 0, 1),
(13, 4763, 1, 0, 0, 1, 0, 0),
(14, 4764, 1, 0, 0, 0, 0, 0),
(15, 4765, 0, 1, 1, 1, 0, 0),
(16, 4766, 0, 0, 0, 0, 0, 1),
(17, 4767, 0, 1, 0, 0, 0, 0),
(18, 4768, 0, 0, 0, 0, 0, 1),
(19, 4769, 0, 0, 0, 1, 0, 0),
(20, 4770, 0, 0, 0, 0, 0, 0),
(21, 4771, 0, 1, 0, 0, 0, 0),
(22, 4772, 0, 0, 0, 0, 0, 0),
(23, 4773, 0, 0, 0, 0, 0, 0),
(24, 4774, 0, 0, 0, 0, 0, 0),
(25, 4775, 0, 0, 0, 0, 0, 0),
(26, 4776, 1, 0, 1, 0, 0, 0),
(27, 4777, 0, 0, 1, 0, 0, 0),
(28, 4778, 1, 0, 0, 0, 0, 0),
(29, 4779, 0, 0, 0, 0, 0, 0),
(30, 4780, 0, 1, 1, 0, 0, 0),
(31, 4781, 1, 1, 0, 0, 0, 1),
(32, 4782, 0, 0, 0, 0, 0, 0),
(33, 4783, 0, 0, 1, 0, 0, 0),
(34, 4784, 0, 0, 0, 0, 0, 0),
(35, 4785, 0, 1, 1, 0, 0, 0),
(36, 4786, 0, 0, 0, 0, 0, 0),
(37, 4787, 0, 0, 0, 0, 0, 1),
(38, 4788, 0, 1, 0, 0, 1, 0),
(39, 4789, 0, 0, 0, 0, 1, 0),
(40, 4790, 0, 0, 0, 0, 1, 1),
(41, 4791, 0, 0, 0, 0, 0, 0),
(42, 4792, 0, 0, 0, 1, 0, 0),
(43, 4793, 0, 0, 0, 1, 0, 0),
(44, 4794, 0, 0, 0, 0, 0, 0),
(45, 4795, 0, 0, 0, 0, 0, 0),
(46, 4796, 1, 1, 0, 0, 0, 0),
(47, 4797, 0, 0, 1, 0, 0, 1),
(48, 4798, 0, 0, 0, 0, 0, 0),
(49, 4799, 0, 0, 0, 0, 0, 1),
(50, 4800, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `irm`
--

CREATE TABLE `irm` (
  `id_irm` int(11) NOT NULL,
  `id_patient` int(11) NOT NULL,
  `nom_image` varchar(255) NOT NULL,
  `chemin_image` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `irm`
--

INSERT INTO `irm` (`id_irm`, `id_patient`, `nom_image`, `chemin_image`) VALUES
(1, 4751, 'irm_sain_01.jpg', 'images_irm/sains/irm_sain_01.jpg'),
(2, 4752, 'irm_sain_02.jpg', 'images_irm/sains/irm_sain_02.jpg'),
(3, 4753, 'irm_sain_03.jpg', 'images_irm/sains/irm_sain_03.jpg'),
(4, 4754, 'irm_sain_04.jpg', 'images_irm/sains/irm_sain_04.jpg'),
(5, 4755, 'irm_sain_05.jpg', 'images_irm/sains/irm_sain_05.jpg'),
(6, 4756, 'irm_sain_06.jpg', 'images_irm/sains/irm_sain_06.jpg'),
(7, 4757, 'irm_sain_07.jpg', 'images_irm/sains/irm_sain_07.jpg'),
(8, 4759, 'irm_sain_08.jpg', 'images_irm/sains/irm_sain_08.jpg'),
(9, 4760, 'irm_sain_09.jpg', 'images_irm/sains/irm_sain_09.jpg'),
(10, 4761, 'irm_sain_10.jpg', 'images_irm/sains/irm_sain_10.jpg'),
(11, 4762, 'irm_sain_11.jpg', 'images_irm/sains/irm_sain_11.jpg'),
(12, 4763, 'irm_sain_12.jpg', 'images_irm/sains/irm_sain_12.jpg'),
(13, 4765, 'irm_sain_13.jpg', 'images_irm/sains/irm_sain_13.jpg'),
(14, 4769, 'irm_sain_14.jpg', 'images_irm/sains/irm_sain_14.jpg'),
(15, 4772, 'irm_sain_15.jpg', 'images_irm/sains/irm_sain_15.jpg'),
(16, 4773, 'irm_sain_16.jpg', 'images_irm/sains/irm_sain_16.jpg'),
(17, 4776, 'irm_sain_17.jpg', 'images_irm/sains/irm_sain_17.jpg'),
(18, 4777, 'irm_sain_18.jpg', 'images_irm/sains/irm_sain_18.jpg'),
(19, 4778, 'irm_sain_19.jpg', 'images_irm/sains/irm_sain_19.jpg'),
(20, 4779, 'irm_sain_20.jpg', 'images_irm/sains/irm_sain_20.jpg'),
(21, 4780, 'irm_sain_21.jpg', 'images_irm/sains/irm_sain_21.jpg'),
(22, 4781, 'irm_sain_22.jpg', 'images_irm/sains/irm_sain_22.jpg'),
(23, 4782, 'irm_sain_23.jpg', 'images_irm/sains/irm_sain_23.jpg'),
(24, 4783, 'irm_sain_24.jpg', 'images_irm/sains/irm_sain_24.jpg'),
(25, 4784, 'irm_sain_25.jpg', 'images_irm/sains/irm_sain_25.jpg'),
(26, 4758, 'irm_malade_01.jpg', 'images_irm/malades/irm_malade_01.jpg'),
(27, 4764, 'irm_malade_02.jpg', 'images_irm/malades/irm_malade_02.jpg'),
(28, 4766, 'irm_malade_03.jpg', 'images_irm/malades/irm_malade_03.jpg'),
(29, 4767, 'irm_malade_04.jpg', 'images_irm/malades/irm_malade_04.jpg'),
(30, 4768, 'irm_malade_05.jpg', 'images_irm/malades/irm_malade_05.jpg'),
(31, 4770, 'irm_malade_06.jpg', 'images_irm/malades/irm_malade_06.jpg'),
(32, 4771, 'irm_malade_07.jpg', 'images_irm/malades/irm_malade_07.jpg'),
(33, 4774, 'irm_malade_08.jpg', 'images_irm/malades/irm_malade_08.jpg'),
(34, 4775, 'irm_malade_09.jpg', 'images_irm/malades/irm_malade_09.jpg'),
(35, 4785, 'irm_malade_10.jpg', 'images_irm/malades/irm_malade_10.jpg'),
(36, 4787, 'irm_malade_11.jpg', 'images_irm/malades/irm_malade_11.jpg'),
(37, 4789, 'irm_malade_12.jpg', 'images_irm/malades/irm_malade_12.jpg'),
(38, 4790, 'irm_malade_13.jpg', 'images_irm/malades/irm_malade_13.jpg'),
(39, 4794, 'irm_malade_14.jpg', 'images_irm/malades/irm_malade_14.jpg'),
(40, 4796, 'irm_malade_15.jpg', 'images_irm/malades/irm_malade_15.jpg'),
(41, 4797, 'irm_malade_16.jpg', 'images_irm/malades/irm_malade_16.jpg'),
(42, 4799, 'irm_malade_17.jpg', 'images_irm/malades/irm_malade_17.jpg'),
(43, 4800, 'irm_malade_18.jpg', 'images_irm/malades/irm_malade_18.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `mesure_clinique`
--

CREATE TABLE `mesure_clinique` (
  `id_mesure_clinique` int(11) NOT NULL,
  `id_patient` int(11) DEFAULT NULL,
  `pression_sys` int(11) DEFAULT NULL,
  `pression_dia` int(11) DEFAULT NULL,
  `chol_total` float DEFAULT NULL COMMENT 'g/L',
  `chol_hdl` float DEFAULT NULL COMMENT 'g/L',
  `chol_ldl` float DEFAULT NULL COMMENT 'g/L',
  `chol_tri` float DEFAULT NULL COMMENT 'g/L'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mesure_clinique`
--

INSERT INTO `mesure_clinique` (`id_mesure_clinique`, `id_patient`, `pression_sys`, `pression_dia`, `chol_total`, `chol_hdl`, `chol_ldl`, `chol_tri`) VALUES
(1, 4751, 142, 72, 2.42367, 0.561509, 0.336826, 1.62189),
(2, 4752, 115, 64, 2.31163, 1.93408, 0.790285, 2.94631),
(3, 4753, 99, 116, 2.84182, 1.53323, 0.697723, 0.836383),
(4, 4754, 118, 115, 1.59582, 0.653666, 0.684575, 2.77577),
(5, 4755, 94, 117, 2.37602, 0.928697, 0.568743, 2.91199),
(6, 4756, 168, 62, 2.80713, 1.98335, 0.790805, 2.63944),
(7, 4757, 143, 88, 2.63734, 0.524707, 0.665334, 2.16489),
(8, 4758, 117, 63, 1.51383, 0.696235, 0.773468, 2.10571),
(9, 4759, 117, 119, 2.33606, 1.44046, 0.430759, 1.51164),
(10, 4760, 130, 78, 2.8163, 1.30498, 0.742912, 1.44176),
(11, 4761, 131, 86, 2.24526, 1.60756, 0.683283, 1.72785),
(12, 4762, 165, 97, 2.54587, 1.3296, 0.390093, 3.44449),
(13, 4763, 145, 63, 2.54435, 1.48291, 0.985855, 0.815251),
(14, 4764, 137, 82, 2.21305, 1.946, 0.263339, 3.57583),
(15, 4765, 94, 98, 2.47585, 1.93908, 0.948117, 2.87048),
(16, 4766, 124, 72, 2.04671, 0.977556, 0.992863, 2.46911),
(17, 4767, 148, 116, 2.005, 1.81024, 0.518671, 1.19656),
(18, 4768, 154, 61, 1.83112, 1.01258, 0.392297, 3.74855),
(19, 4769, 132, 107, 2.14908, 1.32127, 0.20888, 1.92761),
(20, 4770, 144, 98, 1.95205, 1.81978, 0.505979, 0.527869),
(21, 4771, 120, 93, 2.71841, 0.844789, 0.763704, 3.61242),
(22, 4772, 178, 89, 2.10151, 0.941284, 0.681956, 3.6415),
(23, 4773, 120, 71, 2.25658, 0.873284, 0.432242, 3.65263),
(24, 4774, 106, 95, 2.01622, 1.10152, 0.26635, 0.998159),
(25, 4775, 153, 81, 2.39263, 1.9845, 0.377132, 2.97501),
(26, 4776, 115, 112, 2.99868, 0.881109, 0.81983, 2.79759),
(27, 4777, 177, 61, 2.71893, 1.16665, 0.360991, 0.677487),
(28, 4778, 134, 77, 1.89982, 0.739254, 0.240558, 0.954241),
(29, 4779, 107, 104, 1.8656, 0.634232, 0.889009, 1.14923),
(30, 4780, 145, 71, 1.51445, 1.85564, 0.92437, 2.72481),
(31, 4781, 114, 97, 1.98349, 1.12713, 0.888767, 3.79354),
(32, 4782, 137, 114, 2.70168, 1.18891, 0.780494, 2.72804),
(33, 4783, 91, 95, 2.86088, 0.854608, 0.963297, 3.31358),
(34, 4784, 90, 64, 2.36371, 1.96197, 0.337717, 1.02967),
(35, 4785, 117, 75, 2.91764, 0.73185, 0.298351, 2.94505),
(36, 4786, 129, 77, 1.66681, 0.535093, 0.674753, 2.95354),
(37, 4787, 97, 60, 2.27299, 0.914354, 0.854909, 3.4472),
(38, 4788, 157, 98, 1.95473, 0.582608, 0.312248, 2.39809),
(39, 4789, 164, 110, 1.59705, 1.78203, 0.908837, 2.56549),
(40, 4790, 143, 74, 1.87235, 1.75595, 0.444816, 1.55151),
(41, 4791, 158, 96, 2.16817, 0.558207, 0.346942, 0.723491),
(42, 4792, 143, 62, 2.47313, 1.34776, 0.32946, 1.81145),
(43, 4793, 98, 98, 2.49235, 1.39335, 0.392062, 3.79483),
(44, 4794, 93, 64, 2.74406, 0.544599, 0.355941, 3.38581),
(45, 4795, 147, 100, 2.28604, 1.84109, 0.737642, 3.3143),
(46, 4796, 102, 63, 2.77121, 1.20092, 0.883268, 2.13989),
(47, 4797, 118, 115, 2.83931, 1.78025, 0.255672, 0.646586),
(48, 4798, 145, 106, 2.40148, 1.02456, 0.526779, 2.14046),
(49, 4799, 127, 114, 2.64433, 1.68528, 0.733561, 1.96339),
(50, 4800, 114, 106, 2.83277, 0.917423, 0.619698, 1.07769);

-- --------------------------------------------------------

--
-- Structure de la table `mode_vie`
--

CREATE TABLE `mode_vie` (
  `id_mode_vie` int(11) NOT NULL,
  `id_patient` int(11) DEFAULT NULL,
  `imc` float DEFAULT NULL,
  `fumeur` tinyint(4) DEFAULT NULL,
  `alcool` float DEFAULT NULL,
  `activite_physique` float DEFAULT NULL,
  `qualite_diet` float DEFAULT NULL,
  `qualite_sommeil` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mode_vie`
--

INSERT INTO `mode_vie` (`id_mode_vie`, `id_patient`, `imc`, `fumeur`, `alcool`, `activite_physique`, `qualite_diet`, `qualite_sommeil`) VALUES
(1, 4751, 22.9277, 0, 13.2972, 6.32711, 1.34721, 9.02568),
(2, 4752, 26.8277, 0, 4.54252, 7.61988, 0.518767, 7.15129),
(3, 4753, 17.7959, 0, 19.5551, 7.84499, 1.82633, 9.67357),
(4, 4754, 33.8008, 1, 12.2093, 8.428, 7.4356, 8.39255),
(5, 4755, 20.717, 0, 18.4544, 6.31046, 0.795498, 5.59724),
(6, 4756, 30.6269, 0, 4.14014, 0.211062, 1.58492, 7.26195),
(7, 4757, 38.3876, 1, 0.646047, 9.2577, 5.89739, 5.47769),
(8, 4758, 18.776, 0, 13.7238, 4.64945, 8.3419, 4.21321),
(9, 4759, 27.8332, 0, 12.1678, 1.53136, 6.73688, 5.74822),
(10, 4760, 35.4563, 1, 16.0287, 6.44077, 8.08602, 7.55177),
(11, 4761, 39.463, 0, 9.81129, 8.81995, 0.43402, 7.6441),
(12, 4762, 22.4634, 1, 19.3002, 3.83464, 8.27919, 8.31233),
(13, 4763, 26.7709, 0, 10.978, 3.97808, 7.02442, 8.25301),
(14, 4764, 28.8707, 1, 10.1947, 0.631281, 1.65328, 7.33324),
(15, 4765, 27.9429, 0, 2.17578, 9.71457, 5.31723, 9.08714),
(16, 4766, 18.0459, 0, 8.11683, 2.95649, 7.57063, 6.7368),
(17, 4767, 22.8229, 1, 4.43396, 7.18289, 7.92949, 4.65483),
(18, 4768, 16.3333, 1, 4.1618, 1.30632, 2.88894, 5.43642),
(19, 4769, 37.9325, 0, 9.3856, 7.12794, 3.31498, 6.7902),
(20, 4770, 20.0414, 0, 18.4264, 4.06071, 3.36154, 7.39313),
(21, 4771, 36.2231, 0, 4.1929, 6.3815, 7.97113, 9.52103),
(22, 4772, 37.5439, 1, 12.064, 9.12604, 3.53121, 9.57401),
(23, 4773, 37.5839, 0, 5.83642, 7.67658, 9.76758, 9.25039),
(24, 4774, 21.9694, 0, 3.28965, 6.93473, 3.24234, 4.4126),
(25, 4775, 15.4577, 1, 9.77594, 7.19893, 6.21755, 6.73259),
(26, 4776, 39.1237, 0, 0.953869, 8.93925, 0.0431465, 9.58218),
(27, 4777, 34.9182, 0, 10.4287, 6.50978, 0.406348, 5.79706),
(28, 4778, 18.4348, 0, 15.9193, 9.98655, 2.03251, 6.09039),
(29, 4779, 30.9536, 0, 4.69222, 0.442691, 1.28925, 7.86907),
(30, 4780, 18.8079, 0, 8.04218, 5.29252, 5.36777, 8.39124),
(31, 4781, 30.5114, 0, 9.26229, 8.17244, 7.87533, 7.68663),
(32, 4782, 37.2052, 0, 12.2157, 7.78054, 6.43389, 6.74482),
(33, 4783, 34.7774, 1, 4.89818, 7.73158, 6.24267, 5.62153),
(34, 4784, 16.254, 0, 17.9119, 7.90561, 7.76739, 9.01825),
(35, 4785, 17.5729, 1, 19.9667, 5.0133, 3.19216, 6.16465),
(36, 4786, 22.7842, 1, 17.8191, 3.76917, 6.63308, 4.87217),
(37, 4787, 36.221, 0, 2.65367, 3.98561, 2.40459, 8.81073),
(38, 4788, 31.5687, 0, 3.47841, 4.7732, 8.85683, 5.53909),
(39, 4789, 33.7807, 0, 13.4421, 4.00569, 4.26965, 6.04664),
(40, 4790, 24.8527, 0, 12.6442, 3.83191, 4.55355, 8.83334),
(41, 4791, 33.6331, 0, 9.86685, 3.61376, 8.33658, 4.93817),
(42, 4792, 33.6845, 0, 8.92324, 3.69007, 2.87022, 7.25596),
(43, 4793, 30.9998, 0, 6.07244, 3.75992, 8.16508, 5.53207),
(44, 4794, 37.5685, 0, 2.21858, 2.91557, 9.75051, 9.74116),
(45, 4795, 19.5256, 0, 13.3929, 4.58186, 6.75841, 9.9992),
(46, 4796, 26.8042, 0, 19.6887, 1.22518, 7.69909, 6.71598),
(47, 4797, 15.6481, 0, 17.8859, 0.930558, 4.94431, 8.47392),
(48, 4798, 16.4802, 1, 17.9477, 0.307674, 8.95157, 5.72098),
(49, 4799, 33.477, 1, 15.8094, 9.33836, 9.64861, 8.20462),
(50, 4800, 32.0349, 0, 3.0601, 3.59993, 3.00347, 5.12301);

-- --------------------------------------------------------

--
-- Structure de la table `niveau_educ`
--

CREATE TABLE `niveau_educ` (
  `id_niveau_educ` int(11) NOT NULL,
  `libelle_educ` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `niveau_educ`
--

INSERT INTO `niveau_educ` (`id_niveau_educ`, `libelle_educ`) VALUES
(0, 'Aucun'),
(1, 'Lycée'),
(2, 'Licence'),
(3, 'Plus haut');

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE `patient` (
  `id_patient` int(11) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `id_genre` int(11) DEFAULT NULL,
  `id_ethnie` int(11) DEFAULT NULL,
  `id_niveau_educ` int(11) DEFAULT NULL,
  `id_diagnostic_ref` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `patient`
--

INSERT INTO `patient` (`id_patient`, `age`, `id_genre`, `id_ethnie`, `id_niveau_educ`, `id_diagnostic_ref`) VALUES
(4751, 73, 0, 0, 2, 0),
(4752, 89, 0, 0, 0, 0),
(4753, 73, 0, 3, 1, 0),
(4754, 74, 1, 0, 1, 0),
(4755, 89, 0, 0, 0, 0),
(4756, 86, 1, 1, 1, 0),
(4757, 68, 0, 3, 2, 0),
(4758, 75, 0, 0, 1, 1),
(4759, 72, 1, 1, 0, 0),
(4760, 87, 0, 0, 0, 0),
(4761, 89, 0, 3, 1, 0),
(4762, 78, 0, 0, 2, 0),
(4763, 84, 1, 0, 1, 0),
(4764, 78, 1, 0, 1, 1),
(4765, 64, 1, 0, 2, 0),
(4766, 69, 0, 0, 1, 1),
(4767, 63, 1, 1, 2, 1),
(4768, 65, 1, 0, 1, 1),
(4769, 72, 0, 0, 2, 0),
(4770, 68, 0, 0, 3, 1),
(4771, 82, 1, 0, 0, 1),
(4772, 65, 0, 1, 2, 0),
(4773, 82, 1, 0, 3, 0),
(4774, 82, 1, 2, 1, 1),
(4775, 64, 1, 0, 1, 1),
(4776, 77, 0, 1, 0, 0),
(4777, 72, 1, 0, 3, 0),
(4778, 71, 0, 0, 2, 0),
(4779, 83, 0, 0, 1, 0),
(4780, 79, 0, 0, 0, 0),
(4781, 73, 1, 0, 1, 0),
(4782, 67, 0, 3, 0, 0),
(4783, 84, 1, 0, 1, 0),
(4784, 67, 0, 0, 1, 0),
(4785, 66, 1, 1, 1, 1),
(4786, 70, 0, 0, 2, 0),
(4787, 85, 0, 0, 1, 1),
(4788, 60, 1, 0, 2, 0),
(4789, 88, 0, 0, 1, 1),
(4790, 62, 1, 1, 3, 1),
(4791, 79, 1, 1, 1, 0),
(4792, 78, 1, 1, 2, 0),
(4793, 68, 1, 0, 3, 0),
(4794, 66, 0, 0, 1, 1),
(4795, 82, 0, 0, 1, 0),
(4796, 68, 1, 0, 1, 1),
(4797, 71, 0, 1, 1, 1),
(4798, 69, 1, 3, 0, 0),
(4799, 87, 0, 1, 2, 1),
(4800, 68, 1, 0, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ref_binaire`
--

CREATE TABLE `ref_binaire` (
  `id_binaire` tinyint(4) NOT NULL,
  `libelle` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ref_binaire`
--

INSERT INTO `ref_binaire` (`id_binaire`, `libelle`) VALUES
(0, 'Non'),
(1, 'Oui');

-- --------------------------------------------------------

--
-- Structure de la table `ref_diagnostic`
--

CREATE TABLE `ref_diagnostic` (
  `id_diagnostic_ref` int(11) NOT NULL,
  `libelle_diagnostic` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ref_diagnostic`
--

INSERT INTO `ref_diagnostic` (`id_diagnostic_ref`, `libelle_diagnostic`) VALUES
(0, 'Pas Alzheimer'),
(1, 'Alzheimer');

-- --------------------------------------------------------

--
-- Structure de la table `symptomes`
--

CREATE TABLE `symptomes` (
  `id_symptomes` int(11) NOT NULL,
  `id_patient` int(11) DEFAULT NULL,
  `confusion` tinyint(4) DEFAULT NULL,
  `desorientation` tinyint(4) DEFAULT NULL,
  `chang_perso` tinyint(4) DEFAULT NULL,
  `difficulte_taches` tinyint(4) DEFAULT NULL,
  `oubli` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `symptomes`
--

INSERT INTO `symptomes` (`id_symptomes`, `id_patient`, `confusion`, `desorientation`, `chang_perso`, `difficulte_taches`, `oubli`) VALUES
(1, 4751, 0, 0, 0, 1, 0),
(2, 4752, 0, 0, 0, 0, 1),
(3, 4753, 0, 1, 0, 1, 0),
(4, 4754, 0, 0, 0, 0, 0),
(5, 4755, 0, 0, 1, 1, 0),
(6, 4756, 1, 0, 0, 0, 0),
(7, 4757, 0, 0, 0, 0, 1),
(8, 4758, 1, 0, 0, 0, 1),
(9, 4759, 0, 0, 1, 0, 0),
(10, 4760, 0, 0, 0, 0, 0),
(11, 4761, 0, 1, 0, 0, 1),
(12, 4762, 0, 1, 0, 1, 1),
(13, 4763, 1, 0, 0, 0, 0),
(14, 4764, 0, 1, 0, 0, 0),
(15, 4765, 1, 1, 1, 0, 0),
(16, 4766, 0, 0, 0, 0, 1),
(17, 4767, 0, 0, 0, 0, 0),
(18, 4768, 0, 0, 0, 0, 0),
(19, 4769, 0, 0, 0, 0, 1),
(20, 4770, 0, 0, 0, 0, 1),
(21, 4771, 0, 0, 0, 0, 1),
(22, 4772, 0, 0, 0, 1, 0),
(23, 4773, 0, 0, 1, 0, 0),
(24, 4774, 0, 0, 0, 0, 0),
(25, 4775, 0, 0, 0, 0, 0),
(26, 4776, 1, 0, 1, 0, 0),
(27, 4777, 0, 1, 0, 0, 0),
(28, 4778, 0, 0, 0, 0, 0),
(29, 4779, 1, 0, 0, 0, 0),
(30, 4780, 0, 0, 0, 0, 0),
(31, 4781, 1, 0, 0, 1, 0),
(32, 4782, 0, 0, 0, 1, 1),
(33, 4783, 0, 0, 0, 0, 0),
(34, 4784, 0, 0, 0, 0, 0),
(35, 4785, 0, 0, 0, 0, 1),
(36, 4786, 0, 0, 1, 0, 0),
(37, 4787, 1, 0, 0, 0, 0),
(38, 4788, 1, 0, 0, 0, 0),
(39, 4789, 0, 0, 0, 0, 1),
(40, 4790, 0, 1, 0, 0, 0),
(41, 4791, 0, 0, 0, 0, 1),
(42, 4792, 0, 0, 0, 0, 0),
(43, 4793, 0, 0, 0, 0, 0),
(44, 4794, 0, 0, 0, 0, 0),
(45, 4795, 0, 0, 0, 0, 1),
(46, 4796, 0, 0, 0, 1, 0),
(47, 4797, 0, 0, 0, 0, 0),
(48, 4798, 0, 0, 0, 0, 0),
(49, 4799, 0, 0, 0, 0, 1),
(50, 4800, 0, 0, 0, 0, 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `chol_hdl`
--
ALTER TABLE `chol_hdl`
  ADD PRIMARY KEY (`id_hdl`);

--
-- Index pour la table `chol_ldl`
--
ALTER TABLE `chol_ldl`
  ADD PRIMARY KEY (`id_ldl`);

--
-- Index pour la table `chol_total`
--
ALTER TABLE `chol_total`
  ADD PRIMARY KEY (`id_chol_total`);

--
-- Index pour la table `ethnie`
--
ALTER TABLE `ethnie`
  ADD PRIMARY KEY (`id_ethnie`);

--
-- Index pour la table `eval_cognitive`
--
ALTER TABLE `eval_cognitive`
  ADD PRIMARY KEY (`id_eval`),
  ADD KEY `id_patient` (`id_patient`),
  ADD KEY `memoire` (`memoire`),
  ADD KEY `probleme_comp` (`probleme_comp`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Index pour la table `historique_medical`
--
ALTER TABLE `historique_medical`
  ADD PRIMARY KEY (`id_historique`),
  ADD KEY `id_patient` (`id_patient`),
  ADD KEY `antecedents` (`antecedents`),
  ADD KEY `maladie_cardio` (`maladie_cardio`),
  ADD KEY `diabete` (`diabete`),
  ADD KEY `depression` (`depression`),
  ADD KEY `trauma_cranien` (`trauma_cranien`),
  ADD KEY `hypertension` (`hypertension`);

--
-- Index pour la table `irm`
--
ALTER TABLE `irm`
  ADD KEY `id_patient` (`id_patient`);

--
-- Index pour la table `mesure_clinique`
--
ALTER TABLE `mesure_clinique`
  ADD PRIMARY KEY (`id_mesure_clinique`),
  ADD KEY `id_patient` (`id_patient`);

--
-- Index pour la table `mode_vie`
--
ALTER TABLE `mode_vie`
  ADD PRIMARY KEY (`id_mode_vie`),
  ADD KEY `id_patient` (`id_patient`),
  ADD KEY `fumeur` (`fumeur`);

--
-- Index pour la table `niveau_educ`
--
ALTER TABLE `niveau_educ`
  ADD PRIMARY KEY (`id_niveau_educ`);

--
-- Index pour la table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id_patient`),
  ADD KEY `id_genre` (`id_genre`),
  ADD KEY `id_ethnie` (`id_ethnie`),
  ADD KEY `id_niveau_educ` (`id_niveau_educ`);

--
-- Index pour la table `ref_binaire`
--
ALTER TABLE `ref_binaire`
  ADD PRIMARY KEY (`id_binaire`);

--
-- Index pour la table `ref_diagnostic`
--
ALTER TABLE `ref_diagnostic`
  ADD PRIMARY KEY (`id_diagnostic_ref`);

--
-- Index pour la table `symptomes`
--
ALTER TABLE `symptomes`
  ADD PRIMARY KEY (`id_symptomes`),
  ADD KEY `id_patient` (`id_patient`),
  ADD KEY `confusion` (`confusion`),
  ADD KEY `desorientation` (`desorientation`),
  ADD KEY `chang_perso` (`chang_perso`),
  ADD KEY `difficulte_taches` (`difficulte_taches`),
  ADD KEY `oubli` (`oubli`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `chol_hdl`
--
ALTER TABLE `chol_hdl`
  MODIFY `id_hdl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `chol_ldl`
--
ALTER TABLE `chol_ldl`
  MODIFY `id_ldl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `chol_total`
--
ALTER TABLE `chol_total`
  MODIFY `id_chol_total` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `ethnie`
--
ALTER TABLE `ethnie`
  MODIFY `id_ethnie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `eval_cognitive`
--
ALTER TABLE `eval_cognitive`
  MODIFY `id_eval` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id_genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `historique_medical`
--
ALTER TABLE `historique_medical`
  MODIFY `id_historique` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT pour la table `mesure_clinique`
--
ALTER TABLE `mesure_clinique`
  MODIFY `id_mesure_clinique` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT pour la table `mode_vie`
--
ALTER TABLE `mode_vie`
  MODIFY `id_mode_vie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT pour la table `niveau_educ`
--
ALTER TABLE `niveau_educ`
  MODIFY `id_niveau_educ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `ref_diagnostic`
--
ALTER TABLE `ref_diagnostic`
  MODIFY `id_diagnostic_ref` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `symptomes`
--
ALTER TABLE `symptomes`
  MODIFY `id_symptomes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
