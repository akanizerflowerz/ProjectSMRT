-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 05 mai 2023 à 12:22
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bd_smrt`
--

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `id_utilisateur` int(100) NOT NULL,
  `id_quizz` int(11) NOT NULL,
  `id_commantaire` int(100) UNSIGNED NOT NULL,
  `commentaire` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `participation`
--

CREATE TABLE `participation` (
  `id_utilisateur` int(100) NOT NULL,
  `score` int(100) UNSIGNED NOT NULL,
  `id_quizz` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id_question` int(100) NOT NULL,
  `id_quizz` int(11) NOT NULL,
  `la_question` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id_question`, `id_quizz`, `la_question`) VALUES
(1, 1, 'Dans quel pays se déroule la toute première Coupe du Monde de football en 1930 ?'),
(2, 1, 'Quel pays remporte la toute première Coupe du Monde de foot de l’histoire ?'),
(3, 1, 'Qui est le créateur de la Coupe du Monde et ancien président de la FIFA ?'),
(4, 1, 'Combien de fois le Brésil a-t-il remporté la Coupe du Monde de foot ?'),
(5, 1, 'Lequel de ces pays n’a jamais remporté la Coupe du Monde de football ?'),
(6, 1, 'Combien de fois la France n’a-t-elle pas été qualifiée pour la phase finale de la Coupe du Monde de foot masculin ?'),
(7, 1, 'Combien pèse le trophée de la Coupe du Monde de football utilisé depuis 1974 ?'),
(8, 1, 'L’équipe vainqueur de la Coupe du Monde n’a accès au vrai trophée que 15 minutes. Vrai ou faux ?'),
(9, 1, 'Lequel de ces pays n’a pas organisé au moins une Coupe du Monde de football ?'),
(10, 1, 'Aucun pays d’Afrique n’a remporté la Coupe du Monde de foot. Vrai ou faux ?'),
(11, 1, 'Quel joueur de foot détient le record de but en Coupe du Monde ?'),
(12, 1, 'Quelle récompense est décernée au meilleur buteur de la compétition de la Coupe du Monde depuis 1982?'),
(13, 1, 'Dans quel pays s’est déroulée la finale de la Coupe du Monde de foot en 2002 ?'),
(14, 1, 'Quelles étaient les équipes de la rencontre de foot qu’on surnomme le “Match du siècle” lors de la Coupe du Monde de 1970 ?'),
(15, 2, 'Quel aliment est bon à donner aux chevaux ?'),
(16, 2, 'Comment appelle-t-on l’élevage des lapins de ferme ?'),
(17, 2, 'Combien de temps une poule couve-t-elle ses œufs ?'),
(18, 2, 'Combien de pis une vache possède-t-elle ?'),
(19, 2, 'De quelle femelle, le jars est-il le mâle ?'),
(20, 2, 'Comment s’appelle le mâle de la chèvre ?'),
(21, 2, 'Comment appelle-t-on la femelle du faisan ?'),
(22, 2, 'Quel animal de la ferme vit dans une étable nommée la soue ?'),
(23, 2, 'En moyenne, combien de kilos de laine un mouton produit-il par tonte ?'),
(24, 2, 'Comment s’appelle l’excroissance de chair visible sous le bec de certains oiseaux ou volailles ?'),
(25, 2, 'Quel est le nom de cette variété de lapin français ?'),
(26, 2, 'Un taureau pèse en moyenne 1 tonne. Vrai ou faux ?'),
(27, 3, 'Quel est le synonyme de bachoter ?'),
(28, 3, 'Quel est le synonyme de l’adjectif magnanime ?'),
(29, 3, 'Quel est le synonyme de verve ?'),
(30, 3, 'Quel est le synonyme de mutin ?'),
(31, 3, 'Qu’est-ce qu’un milieu uligineux ?'),
(32, 3, 'Qu’est-ce qu’une personne indigente ?'),
(33, 3, 'Quel est le synonyme du verbe se musser ?'),
(34, 3, 'Quel est le synonyme de flavescent ?'),
(35, 3, 'Que signifie le nom escobarderie ?'),
(36, 3, 'Que fait une personne qui s’esbigne ?'),
(37, 3, 'Qu’est-ce qu’une personne galetteuse ?'),
(38, 3, 'Quel est le synonyme de renfrogner ?'),
(39, 3, 'Quel est le synonyme de badiner ?'),
(40, 3, 'Quel est le synonyme de l’adjectif dévot ?'),
(41, 4, 'Sur quelle surface se joue le tournoi de tennis de Roland-Garros ?'),
(42, 4, 'Quelle était la profession de Roland Garros qui donne son nom au tournoi ?'),
(43, 4, 'Quel joueur est le dernier français à avoir remporté le tournoi en 1983 ?'),
(44, 4, 'En quelle année fut créé le tournoi de tennis de Roland-Garros ?'),
(45, 4, 'Quel nom porte le court central du tournoi de Roland-Garros ?'),
(46, 4, 'Nicolas Mahut et Pierre-Hugues Herbert ont remporté deux fois le tournoi de double de Roland-Garros. Vrai ou faux ?'),
(47, 4, 'Quel joueur est le plus jeune à s’être imposé en simple dans le tournoi de Roland-Garros ?'),
(48, 4, 'Combien de fois Roger Federer a-t-il remporté le tournoi de Roland Garros en simple ?'),
(49, 4, 'Quel nom porte la coupe remise aux vainqueurs du tournoi simple messieurs ? '),
(50, 4, 'En 2022, qui est nommé à la tête de l’organisation du tournoi de Roland-Garros ?'),
(51, 4, 'Quelle paire féminine française remporte le titre en double à Roland-Garros en 2016 ?'),
(52, 4, 'En quelle année la tenniswoman Mary Pierce a-t-elle remporté le tournoi de Roland-Garros en simple et en double ?'),
(53, 4, 'Quelle est la durée du match le plus long jamais joué durant la quinzaine du tournoi de Roland-Garros ?'),
(54, 4, 'Quelle joueuse détient le record de victoires en simple à Roland-Garros ?'),
(55, 5, 'Quel est le résultat de 10² ? '),
(56, 5, 'Quel est le résultat de cette opération : 77 + 33 = ?'),
(57, 5, 'Quel est le résultat de 3³ + 3 = ? '),
(58, 5, 'Quel est le volume en litre d’un cube en verre de 1m³ ?'),
(59, 5, 'Deux sœurs ont 4 ans de différence. Dans 5 ans, à elles deux, elles auront 32 ans. Quel est l’âge de ces sœurs ?'),
(60, 5, 'Quel est le résultat de cette opération : 100 + 40 / 2 = ?'),
(61, 5, 'Quel est le résultat de l’opération : 2/3 + 6/9 - 2/6 = ?'),
(62, 5, 'J ai un troupeau de 550 moutons que je souhaite partager en 2 groupes. Est-ce que je vais avoir 225 moutons dans chaque groupe ?'),
(63, 5, 'Sur un produit acheté 100€, quel est le montant de la TVA à 20% ?');

-- --------------------------------------------------------

--
-- Structure de la table `quizz`
--

CREATE TABLE `quizz` (
  `id_quizz` int(10) UNSIGNED NOT NULL,
  `nom_quizz` varchar(20) NOT NULL,
  `catégorie` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `quizz`
--

INSERT INTO `quizz` (`id_quizz`, `nom_quizz`, `catégorie`) VALUES
(1, 'Coupe du monde', 'SPORT'),
(2, 'Animeaux de la ferme', 'NATURE ET ANIMEAUX'),
(3, 'Français', 'LANGUE ET CULTURE'),
(4, 'Tennis', 'SPORT'),
(5, 'Problèmes de Maths', 'MATHEMATIQUE'),
(6, 'Moteurs', 'VOITURE'),
(7, 'Histoire', 'INFORMATIQUE');

-- --------------------------------------------------------

--
-- Structure de la table `repanse`
--

CREATE TABLE `repanse` (
  `id_repanse` int(255) UNSIGNED NOT NULL,
  `id_question` int(100) NOT NULL,
  `la_repanse` varchar(25) NOT NULL,
  `point_repanse` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `repanse`
--

INSERT INTO `repanse` (`id_repanse`, `id_question`, `la_repanse`, `point_repanse`) VALUES
(1, 1, 'URUGUAY', 20),
(2, 1, 'FRANCE', 0),
(3, 1, 'BRESILE', 0),
(4, 1, 'ANGLETERRE', 0),
(5, 2, 'URUGUAY', 20),
(6, 2, 'BRESILE', 0),
(7, 2, 'U.S.A', 0),
(8, 2, 'ALLEMAGNE', 0),
(9, 3, 'Julet Rimet', 20),
(10, 3, 'Zinedine Zidane', 0),
(11, 3, 'Diego Armando Maradona', 0),
(12, 3, 'MACRON', 0),
(13, 4, '5 fois', 20),
(14, 4, '3 fois', 0),
(15, 4, '2 fois', 0),
(16, 4, '6 fois', 0),
(17, 5, 'croatie', 20),
(18, 5, 'France', 0),
(19, 5, 'Bresile', 0),
(20, 5, 'Allemagne', 0),
(21, 6, '6 fois', 20),
(22, 6, '3 fois', 0),
(23, 6, '4 fois', 0),
(24, 6, '5 fois', 0),
(25, 7, '6,175Kg', 20),
(26, 7, '5,175Kg', 0),
(27, 7, '4,175Kg', 0),
(28, 7, '10,175Kg', 0),
(29, 8, 'Vrai', 20),
(30, 8, 'Faux', 0),
(31, 9, 'Portugal', 20),
(32, 9, 'Allemagne', 0),
(33, 9, 'Uruguay', 0),
(34, 9, 'Bresile', 0),
(35, 10, 'Vrai', 20),
(36, 10, 'Faux', 0),
(37, 11, 'Miroslav Klose', 20),
(38, 11, 'Zinedine Zidane', 0),
(39, 11, 'Diego Armando Maradona', 0),
(40, 11, 'MACRON', 0),
(41, 12, 'Le soulier d or', 20),
(42, 12, 'Le BALLON d or', 0),
(43, 12, 'La coupe du monde', 0),
(44, 12, 'Les chaussete d or', 0),
(45, 13, 'Japon', 20),
(46, 13, 'Bresile', 0),
(47, 13, 'France', 0),
(48, 13, 'Allemagne', 0),
(49, 14, 'Italie bresile ', 0),
(50, 14, 'Bresile allemagne ', 0),
(51, 14, 'France allemagne ', 0),
(52, 14, 'Italie allemagne ', 20),
(53, 15, 'La Carotte ', 0),
(54, 15, 'La pomme ', 0),
(55, 15, "L'avoine ", 20),
(56, 15, 'La bannane ', 0),
(57, 16, 'Élevage bovin ', 0),
(58, 16, 'La cuniculture ', 20),
(59, 16, 'Élevage ovin ', 0),
(60, 16, 'Élevage porcin ', 0),
(61, 17, '21 jours ', 20),
(62, 17, '25 jours ', 0),
(63, 17, '30 jours ', 0),
(64, 17, '15 jours ', 0),
(65, 18, '5 ', 0),
(66, 18, '6 ', 0),
(67, 18, '4 ', 20),
(68, 18, '3 ', 0),
(69, 19, 'Une alouette ', 0),
(70, 19, "L'oie ", 20),
(71, 19, 'Une ânesse ', 0),
(72, 19, 'Une vache ', 0),
(73, 20, 'Le bouc ', 20),
(74, 20, 'Le bélier ', 0),
(75, 20, 'Le taureau ', 0),
(76, 20, 'Bos taurus ', 0),
(77, 21, 'Poule de Bresse ', 0),
(78, 21, 'Poule de bruyère  ', 0),
(79, 21, 'Poule naine  ', 0),
(80, 21, 'Poule de faisane ', 20),
(81, 22, 'Les cauchons ', 20),
(82, 22, 'Les vaches ', 0),
(83, 22, 'Les moutons ', 0),
(84, 22, 'Les poules ', 0),
(85, 23, '5kg ', 20),
(86, 23, '6kg ', 0),
(87, 23, '8kg ', 0),
(88, 23, '9kg ', 0),
(89, 24, 'Le caroncule ', 20),
(90, 24, 'Le gras ', 0),
(91, 24, 'Le ourdela ', 0),
(92, 24, 'Le sur_plus ', 0),
(93, 25, 'Le lapin vache ', 0),
(94, 25, 'Le lapin zebre ', 0),
(95, 25, 'Le lapin papillon ', 20),
(96, 25, 'Le lapin sauvage ', 0),
(97, 26, 'vrais ', 20),
(98, 26, 'Faux ', 0),
(99, 27, 'Courire ', 0),
(100, 27, 'Lire ', 0),
(101, 27, 'Écrire ', 0),
(102, 27, 'Apprendre ', 20),
(103, 28, 'Clément ', 20),
(104, 28, 'Méchant ', 20),
(105, 28, 'Gentie ', 20),
(106, 28, 'Intelligent ', 20),
(107, 29, 'Éloquence ', 20),
(108, 29, 'Beauté ', 0),
(109, 29, 'Splendide ', 0),
(110, 29, 'Mocheté. ', 0),
(111, 30, 'Religieux', 0),
(112, 30, 'Redevable ', 0),
(113, 30, 'Insoumis ', 20),
(114, 30, 'Illigitime ', 0),
(115, 31, 'Un millieu pauvre ', 0),
(116, 31, 'Un millieu froid ', 0),
(117, 31, 'Un millieu chaud ', 0),
(118, 31, 'Un millieu humide ', 20),
(119, 32, 'Une personne riche', 0),
(120, 32, 'Une personne pauvre', 20),
(121, 32, 'Une personne intelligente', 0),
(122, 32, 'Une personne forte', 0),
(123, 33, 'Se laver ', 0),
(124, 33, 'Se musclé ', 0),
(125, 33, 'Se préparer ', 0),
(126, 33, 'Se cacher ', 20),
(127, 34, 'Jaune ', 20),
(128, 34, 'Vert ', 0),
(129, 34, 'Rouge ', 0),
(130, 34, 'Bleu ', 0),
(131, 35, 'Une fourberie ', 20),
(132, 35, 'Une blague ', 0),
(133, 35, 'Une trahison ', 0),
(134, 35, 'Une mesquinerie ', 0),
(135, 36, 'Il s enfuit ', 20),
(136, 36, 'Il coure ', 0),
(137, 36, 'Il dance ', 0),
(138, 36, 'Il chante ', 0),
(139, 37, 'Une personne fiable ', 0),
(140, 37, 'Une personne pauvre ', 0),
(141, 37, 'Une personne riche ', 20),
(142, 37, 'Une personne dégourdie ', 0),
(143, 38, 'Etre énervée ', 0),
(144, 38, 'Etre ronchon ', 20),
(145, 38, 'Etre contente ', 0),
(146, 38, 'Etre effrayée ', 0),
(147, 39, 'Plaisanter ', 20),
(148, 39, 'Rigoler ', 0),
(149, 39, 'Pleurer ', 0),
(150, 39, 'Danser  ', 0),
(151, 40, 'Dévoué ', 0),
(152, 40, 'Intelligent ', 0),
(153, 40, 'Détestable ', 0),
(154, 40, 'Croyant ', 20),
(155, 41, 'Sur terre battue ', 20),
(156, 41, 'Sur terre molle ', 0),
(157, 41, 'Sur terre sèche ', 0),
(158, 41, 'Sur terre commune ', 0),
(159, 42, 'Aviateur ', 20),
(160, 42, 'Architecte ', 0),
(161, 42, 'Informaticien ', 0),
(162, 42, 'Président ', 0),
(163, 43, 'Salah Siad ', 0),
(164, 43, 'Christophe Joralle ', 0),
(165, 43, 'Lucas Auchare  ', 0),
(166, 43, 'Yannick Noah ', 20),
(167, 44, '1935', 0),
(168, 44, '1925', 20),
(169, 44, '1970', 0),
(170, 44, '1910', 0),
(171, 45, 'Le Court philippe-Chartie', 20),
(172, 45, 'Le Court Suzanne-Lenglen', 0),
(173, 45, 'Le Court Simonne-Mathieu', 0),
(174, 45, 'Le Court n°14', 0),
(175, 46, 'Vrai ', 20),
(176, 46, 'Faux ', 0),
(177, 47, 'Donalde Chartie ', 0),
(178, 47, 'Suzanne Lenglen ', 0),
(179, 47, 'Michael Chang ', 20),
(180, 47, 'Johne Jodane ', 0),
(181, 48, '1 fois ',20),
(182, 48, '3 fois ',0),
(183, 48, '4 fois ',0),
(184, 48, '7 fois ',0),
(185, 49, 'La Coupe des Mousquetaire', 20),
(186, 49, 'La Coupe des Chevaliers', 0),
(187, 49, 'La Coupe des Libérateurs', 0),
(188, 49, 'La Coupe des Gendarmes', 0),
(189, 50, 'Omare Chilli ', 0),
(190, 50, 'Amélie Mauresmo ', 20),
(191, 50, 'Bernard Coullis ', 0),
(192, 50, 'Damien Terra ', 0),
(193, 51, 'Carline Garcia-Kristina.m', 20),
(194, 51, 'Carline Garcia-Kristina.m', 20),
(195, 51, 'Carline Garcia-Kristina.m', 20),
(196, 51, 'Carline Garcia-Kristina.m', 20),
(197, 52, '2000 ', 20),
(198, 52, '2001 ', 0),
(199, 52, '2002 ', 0),
(200, 52, '1999 ', 0),
(201, 53, '5h33 ', 0),
(202, 53, '6h33 ', 20),
(203, 53, '4h33 ', 0),
(204, 53, '7h33 ', 0),
(205, 54, 'Chris Evert ', 20),
(206, 54, 'Chris Evert ', 20),
(207, 54, 'Chris Evert ', 20),
(208, 54, 'Chris Evert ', 20),
(209, 55, '150', 0),
(210, 55, '100', 20),
(211, 55, '101', 0),
(212, 55, '110', 0),
(213, 56, '150', 10),
(214, 56, '120', 10),
(215, 56, '111', 10),
(216, 56, '110', 20),
(217, 57, '30', 20),
(218, 57, '20', 0),
(219, 57, '40', 0),
(220, 57, '60', 0),
(221, 58, '100 litres', 0),
(222, 58, '10 litres', 0),
(223, 58, '10000 litres', 0),
(224, 58, '1000 litres', 20),
(225, 59, '9 et 14 ans', 0),
(226, 59, '10 et 13 ans',0),
(227, 59, '8 et 20 ans', 0),
(228, 59, '9 et 13 ans', 20),
(229, 60, '120', 20),
(230, 60, '125', 0),
(231, 60, '130', 0),
(232, 60, '100', 0),
(233, 61, '10', 0),
(234, 61, '1', 20),
(235, 61, '2', 0),
(236, 61, '0', 0),
(237, 62, 'Vrai', 0),
(238, 62, 'Faux', 20),
(239, 63, '15,67euro', 0),
(240, 63, '14,67euro', 0),
(241, 63, '17,67euro', 0),
(242, 63, '16,67euro', 20);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` int(100) UNSIGNED NOT NULL,
  `prenom_utilisateur` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `niveau` int(100) NOT NULL DEFAULT 1,
  `date_creation` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `prenom_utilisateur`, `email`, `password`, `niveau`, `date_creation`) VALUES
(2, 'hicham', 'hicham.s2003@gmail.com', '12345', 1, '0000-00-00'),
(3, 'matthis', 'matthis.rsx@gmail.com', 'matthis_uwu', 1, '0000-00-00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`id_commantaire`),
  ADD KEY `id_utilisateur` (`id_utilisateur`),
  ADD KEY `id_quizz` (`id_quizz`);

--
-- Index pour la table `participation`
--
ALTER TABLE `participation`
  ADD KEY `id_utilisateur` (`id_utilisateur`),
  ADD KEY `id_quizz` (`id_quizz`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id_question`),
  ADD KEY `id_quizz` (`id_quizz`);

--
-- Index pour la table `quizz`
--
ALTER TABLE `quizz`
  ADD PRIMARY KEY (`id_quizz`);

--
-- Index pour la table `repanse`
--
ALTER TABLE `repanse`
  ADD PRIMARY KEY (`id_repanse`),
  ADD KEY `id_question` (`id_question`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`,`niveau`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `avis`
--
ALTER TABLE `avis`
  MODIFY `id_commantaire` int(100) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `id_question` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT pour la table `quizz`
--
ALTER TABLE `quizz`
  MODIFY `id_quizz` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `repanse`
--
ALTER TABLE `repanse`
  MODIFY `id_repanse` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_utilisateur` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
