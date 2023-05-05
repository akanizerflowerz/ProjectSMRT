-- phpMyAdmin SQL Dump
-- version 5.2.0
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
(15, 1, 'Où se déroule la Coupe du Monde de football 2026 ?'),
(16, 2, 'Quel aliment est bon à donner aux chevaux ?'),
(17, 2, 'Comment appelle-t-on l’élevage des lapins de ferme ?'),
(18, 2, 'Combien de temps une poule couve-t-elle ses œufs ?'),
(19, 2, 'Combien de pis une vache possède-t-elle ?'),
(20, 2, 'De quelle femelle, le jars est-il le mâle ?'),
(21, 2, 'Comment s’appelle le mâle de la chèvre ?'),
(22, 2, 'Comment appelle-t-on la femelle du faisan ?'),
(23, 2, 'Quel animal de la ferme vit dans une étable nommée la soue ?'),
(24, 2, 'En moyenne, combien de kilos de laine un mouton produit-il par tonte ?'),
(25, 2, 'Comment s’appelle l’excroissance de chair visible sous le bec de certains oiseaux ou volailles ?'),
(26, 2, 'Quel est le nom de cette variété de lapin français ?'),
(27, 2, 'Un taureau pèse en moyenne 1 tonne. Vrai ou faux ?'),
(28, 2, 'Combien d œufs, une jeune poule peut-elle pondre en un an ?'),
(29, 2, 'De quel animal de la ferme, Cléopâtre avait-elle l’habitude de prendre un bain de lait ?'),
(30, 3, 'Quel est le synonyme de bachoter ?'),
(31, 3, 'Quel est le synonyme de l’adjectif magnanime ?'),
(32, 3, 'Quel est le synonyme de verve ?'),
(33, 3, 'Quel est le synonyme de mutin ?'),
(34, 3, 'Qu’est-ce qu’un milieu uligineux ?'),
(35, 3, 'Qu’est-ce qu’une personne indigente ?'),
(36, 3, 'Quel est le synonyme du verbe se musser ?'),
(37, 3, 'Quel est le synonyme de flavescent ?'),
(38, 3, 'Que signifie le nom escobarderie ?'),
(39, 3, 'Que fait une personne qui s’esbigne ?'),
(40, 3, 'Qu’est-ce qu’une personne galetteuse ?'),
(41, 3, 'Quel est le synonyme de renfrogner ?'),
(42, 3, 'Quel est le synonyme de badiner ?'),
(43, 3, 'Quel est le synonyme de l’adjectif dévot ?'),
(44, 4, 'Sur quelle surface se joue le tournoi de tennis de Roland-Garros ?'),
(45, 4, 'Quelle était la profession de Roland Garros qui donne son nom au tournoi ?'),
(46, 4, 'Quel joueur est le dernier français à avoir remporté le tournoi en 1983 ?'),
(47, 4, 'En quelle année fut créé le tournoi de tennis de Roland-Garros ?'),
(48, 4, 'Quel nom porte le court central du tournoi de Roland-Garros ?'),
(49, 4, 'Nicolas Mahut et Pierre-Hugues Herbert ont remporté deux fois le tournoi de double de Roland-Garros. Vrai ou faux ?'),
(50, 4, 'Quel joueur est le plus jeune à s’être imposé en simple dans le tournoi de Roland-Garros ?'),
(51, 4, 'Combien de fois Roger Federer a-t-il remporté le tournoi de Roland Garros en simple ?'),
(52, 4, 'Quel nom porte la coupe remise aux vainqueurs du tournoi simple messieurs ? '),
(53, 4, 'En 2022, qui est nommé à la tête de l’organisation du tournoi de Roland-Garros ?'),
(54, 4, 'Quelle paire féminine française remporte le titre en double à Roland-Garros en 2016 ?'),
(55, 4, 'En quelle année la tenniswoman Mary Pierce a-t-elle remporté le tournoi de Roland-Garros en simple et en double ?'),
(56, 4, 'Quelle est la durée du match le plus long jamais joué durant la quinzaine du tournoi de Roland-Garros ?'),
(57, 4, 'Quelle joueuse détient le record de victoires en simple à Roland-Garros ?'),
(58, 5, 'Quel est le résultat de 10² ? '),
(59, 5, 'Quel est le résultat de cette opération : 77 + 33 = ?'),
(60, 5, 'Quel est le résultat de 3³ + 3 = ? '),
(61, 5, 'Quel est le volume en litre d’un cube en verre de 1m³ ?'),
(62, 5, 'Deux sœurs ont 4 ans de différence. Dans 5 ans, à elles deux, elles auront 32 ans. Quel est l’âge de ces sœurs ?'),
(63, 5, 'Quel est le résultat de cette opération : 100 + 40 / 2 = ?'),
(64, 5, 'Quel est le résultat de l’opération : 2/3 + 6/9 - 2/6 = ?'),
(65, 5, 'J ai un troupeau de 550 moutons que je souhaite partager en 2 groupes. Est-ce que je vais avoir 225 moutons dans chaque groupe ?'),
(66, 5, 'Sur un produit acheté 100€, quel est le montant de la TVA à 20% ?');

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
(2, 'Animaeaux de la ferm', 'NATURE ET ANIMEAUX'),
(3, 'Françai', 'LANGUE ET CULTURE'),
(4, 'Tennis', 'SPORT'),
(5, 'Problèmes de Maths F', 'MATHEMATIQUE');

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
(2, 2, 'URUGUAY', 20),
(3, 3, 'Julet Rimet', 20),
(4, 4, '5 fois', 20),
(5, 5, 'croatie', 20),
(6, 6, '6 fois', 20),
(7, 7, '6,175Kg', 20),
(8, 8, 'vrai', 20),
(9, 9, 'Portugal', 20),
(10, 10, 'vrai', 20),
(11, 11, 'Miroslav Klose', 20),
(12, 12, 'le soulier d or', 20),
(13, 13, 'japon', 20),
(14, 14, 'italie allemagne de l oue', 20),
(15, 15, 'canada etat-unis mexique ', 20),
(16, 16, 'l avoine ', 20),
(17, 17, 'la cuniculture ', 20),
(18, 18, '21 jours ', 20),
(19, 19, '4 ', 20),
(20, 20, 'l oie ', 20),
(21, 21, 'le bouc ', 20),
(22, 22, 'la poule de faisane ', 20),
(23, 23, 'les cauchons ', 20),
(24, 24, '5kg ', 20),
(25, 25, 'le caroncule ', 20),
(26, 26, 'le lapin papillon ', 20),
(27, 27, 'vrais ', 20),
(28, 28, '230 a 260 ', 20),
(29, 29, 'le lait danesse ', 20),
(30, 30, 'apprendre ', 20),
(31, 31, 'clément ', 20),
(32, 32, 'éloquence ', 20),
(33, 33, 'insoumis ', 20),
(34, 34, 'un millieu humide ', 20),
(35, 35, 'une personne pauvre', 20),
(36, 36, 'se cacher ', 20),
(37, 37, 'jaune ', 20),
(38, 38, 'une fourberie ', 20),
(39, 39, 'il s enfuit ', 20),
(40, 40, 'une personne riche ', 20),
(41, 41, 'etre ronchon ', 20),
(42, 42, 'plaisanter ', 20),
(43, 43, 'croyant ', 20),
(44, 44, 'sur terre battue ', 20),
(45, 45, 'aviateur ', 20),
(46, 46, 'Yannick Noah ', 20),
(47, 47, '1925', 20),
(48, 48, 'le Court philippe-Chartie', 20),
(49, 49, 'vrai ', 20),
(50, 50, 'Michael Chang ', 20),
(51, 51, '1 fois ', 20),
(52, 52, 'La Coupe des Mousquetaire', 20),
(53, 53, 'Amélie Mauresmo ', 20),
(54, 54, 'Carline Garcia-Kristina m', 20),
(55, 55, '2000 ', 20),
(56, 56, '6h33 ', 20),
(57, 57, 'Chris Evert ', 20),
(58, 58, '100', 20),
(59, 59, '110', 20),
(60, 60, '30', 20),
(61, 61, '1000 litres', 20),
(62, 62, '9 et 13 ans', 20),
(63, 63, '120', 20),
(64, 64, '1', 20),
(65, 65, 'Faux', 20),
(66, 66, '16,67euro', 20);

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
(2, 'hicham', 'hicham.s2003@gmail.com', '12345', 1, '0000-00-00');

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
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 03 mai 2023 à 21:14
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
  `id_utilisateur` int(11) NOT NULL,
  `id_quizz` int(11) NOT NULL,
  `id_commantaire` int(10) UNSIGNED NOT NULL,
  `commentaire` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `participation`
--

CREATE TABLE `participation` (
  `id_utilisateur` int(11) NOT NULL,
  `score` int(10) UNSIGNED NOT NULL,
  `id_quizz` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id_question` varchar(100) NOT NULL,
  `id_quizz` int(11) NOT NULL,
  `la_question` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id_question`, `id_quizz`, `la_question`) VALUES
('1', 1, 'Dans quel pays se déroule la toute première Coupe du Monde de football en 1930 ?'),
('2', 1, 'Quel pays remporte la toute première Coupe du Monde de foot de l’histoire ?'),
('3', 1, 'Qui est le créateur de la Coupe du Monde et ancien président de la FIFA ?'),
('4', 1, 'Combien de fois le Brésil a-t-il remporté la Coupe du Monde de foot ?'),
('5', 1, 'Lequel de ces pays n’a jamais remporté la Coupe du Monde de football ?'),
('6', 1, 'Combien de fois la France n’a-t-elle pas été qualifiée pour la phase finale de la Coupe du Monde de foot masculin ?'),
('7', 1, 'Combien pèse le trophée de la Coupe du Monde de football utilisé depuis 1974 ?'),
('8', 1, 'L’équipe vainqueur de la Coupe du Monde n’a accès au vrai trophée que 15 minutes. Vrai ou faux ?'),
('9', 1, 'Lequel de ces pays n’a pas organisé au moins une Coupe du Monde de football ?'),
('10', 1, 'Aucun pays d’Afrique n’a remporté la Coupe du Monde de foot. Vrai ou faux ?'),
('11', 1, 'Quel joueur de foot détient le record de but en Coupe du Monde ?'),
('12', 1, 'Quelle récompense est décernée au meilleur buteur de la compétition de la Coupe du Monde depuis 1982?'),
('13', 1, 'Dans quel pays s’est déroulée la finale de la Coupe du Monde de foot en 2002 ?'),
('14', 1, 'Quelles étaient les équipes de la rencontre de foot qu’on surnomme le “Match du siècle” lors de la Coupe du Monde de 1970 ?'),
('15', 1, 'Où se déroule la Coupe du Monde de football 2026 ?'),
('16', 2, 'Quel aliment est bon à donner aux chevaux ?'),
('17', 2, 'Comment appelle-t-on l’élevage des lapins de ferme ?'),
('18', 2, 'Combien de temps une poule couve-t-elle ses œufs ?'),
('19', 2, 'Combien de pis une vache possède-t-elle ?'),
('20', 2, 'De quelle femelle, le jars est-il le mâle ?'),
('21', 2, 'Comment s’appelle le mâle de la chèvre ?'),
('22', 2, 'Comment appelle-t-on la femelle du faisan ?'),
('23', 2, 'Quel animal de la ferme vit dans une étable nommée la soue ?'),
('24', 2, 'En moyenne, combien de kilos de laine un mouton produit-il par tonte ?'),
('25', 2, 'Comment s’appelle l’excroissance de chair visible sous le bec de certains oiseaux ou volailles ?'),
('26', 2, 'Quel est le nom de cette variété de lapin français ?'),
('27', 2, 'Un taureau pèse en moyenne 1 tonne. Vrai ou faux ?'),
('28', 2, 'Combien d œufs, une jeune poule peut-elle pondre en un an ?'),
('29', 2, 'De quel animal de la ferme, Cléopâtre avait-elle l’habitude de prendre un bain de lait ?'),
('30', 3, 'Quel est le synonyme de bachoter ?'),
('31', 3, 'Quel est le synonyme de l’adjectif magnanime ?'),
('32', 3, 'Quel est le synonyme de verve ?'),
('33', 3, 'Quel est le synonyme de mutin ?'),
('34', 3, 'Qu’est-ce qu’un milieu uligineux ?'),
('35', 3, 'Qu’est-ce qu’une personne indigente ?'),
('36', 3, 'Quel est le synonyme du verbe se musser ?'),
('37', 3, 'Quel est le synonyme de flavescent ?'),
('38', 3, 'Que signifie le nom escobarderie ?'),
('39', 3, 'Que fait une personne qui s’esbigne ?'),
('40', 3, 'Qu’est-ce qu’une personne galetteuse ?'),
('41', 3, 'Quel est le synonyme de renfrogner ?'),
('42', 3, 'Quel est le synonyme de badiner ?'),
('43', 3, 'Quel est le synonyme de l’adjectif dévot ?'),
('44', 4, 'Sur quelle surface se joue le tournoi de tennis de Roland-Garros ?'),
('45', 4, 'Quelle était la profession de Roland Garros qui donne son nom au tournoi ?'),
('46', 4, 'Quel joueur est le dernier français à avoir remporté le tournoi en 1983 ?'),
('47', 4, 'En quelle année fut créé le tournoi de tennis de Roland-Garros ?'),
('48', 4, 'Quel nom porte le court central du tournoi de Roland-Garros ?'),
('49', 4, 'Nicolas Mahut et Pierre-Hugues Herbert ont remporté deux fois le tournoi de double de Roland-Garros. Vrai ou faux ?'),
('50', 4, 'Quel joueur est le plus jeune à s’être imposé en simple dans le tournoi de Roland-Garros ?'),
('51', 4, 'Combien de fois Roger Federer a-t-il remporté le tournoi de Roland Garros en simple ?'),
('52', 4, 'Quel nom porte la coupe remise aux vainqueurs du tournoi simple messieurs ? '),
('53', 4, 'En 2022, qui est nommé à la tête de l’organisation du tournoi de Roland-Garros ?'),
('54', 4, 'Quelle paire féminine française remporte le titre en double à Roland-Garros en 2016 ?'),
('55', 4, 'En quelle année la tenniswoman Mary Pierce a-t-elle remporté le tournoi de Roland-Garros en simple et en double ?'),
('56', 4, 'Quelle est la durée du match le plus long jamais joué durant la quinzaine du tournoi de Roland-Garros ?'),
('57', 4, 'Quelle joueuse détient le record de victoires en simple à Roland-Garros ?'),
('58', 5, 'Quel est le résultat de 10² ? '),
('59', 5, 'Quel est le résultat de cette opération : 77 + 33 = ?'),
('60', 5, 'Quel est le résultat de 3³ + 3 = ? '),
('61', 5, 'Quel est le volume en litre d’un cube en verre de 1m³ ?'),
('62', 5, 'Deux sœurs ont 4 ans de différence. Dans 5 ans, à elles deux, elles auront 32 ans. Quel est l’âge de ces sœurs ?'),
('63', 5, 'Quel est le résultat de cette opération : 100 + 40 / 2 = ?'),
('64', 5, 'Quel est le résultat de l’opération : 2/3 + 6/9 - 2/6 = ?'),
('65', 5, 'J ai un troupeau de 550 moutons que je souhaite partager en 2 groupes. Est-ce que je vais avoir 225 moutons dans chaque groupe ?'),
('66', 5, 'Sur un produit acheté 100€, quel est le montant de la TVA à 20% ?');

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
(2, 'Animaeaux de la ferm', 'NATURE ET ANIMEAUX'),
(3, 'Françai', 'LANGUE ET CULTURE'),
(4, 'Tennis', 'SPORT'),
(5, 'Problèmes de Maths F', 'MATHEMATIQUE');

-- --------------------------------------------------------

--
-- Structure de la table `repanse`
--

CREATE TABLE `repanse` (
  `id_repanse` int(10) UNSIGNED NOT NULL,
  `id_question` int(11) NOT NULL,
  `la_repanse` varchar(25) NOT NULL,
  `point_repanse` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `repanse`
--

INSERT INTO `repanse` (`id_repanse`, `id_question`, `la_repanse`, `point_repanse`) VALUES
(1, 1, 'URUGUAY', 20),
(2, 2, 'URUGUAY', 20),
(3, 3, 'Julet Rimet', 20),
(4, 4, '5 fois', 20),
(5, 5, 'croatie', 20),
(6, 6, '6 fois', 20),
(7, 7, '6,175Kg', 20),
(8, 8, 'vrai', 20),
(9, 9, 'Portugal', 20),
(10, 10, 'vrai', 20),
(11, 11, 'Miroslav Klose', 20),
(12, 12, 'le soulier d or', 20),
(13, 13, 'japon', 20),
(14, 14, 'italie allemagne de l oue', 20),
(15, 15, 'canada etat-unis mexique ', 20),
(16, 16, 'l avoine ', 20),
(17, 17, 'la cuniculture ', 20),
(18, 18, '21 jours ', 20),
(19, 19, '4 ', 20),
(20, 20, 'l oie ', 20),
(21, 21, 'le bouc ', 20),
(22, 22, 'la poule de faisane ', 20),
(23, 23, 'les cauchons ', 20),
(24, 24, '5kg ', 20),
(25, 25, 'le caroncule ', 20),
(26, 26, 'le lapin papillon ', 20),
(27, 27, 'vrais ', 20),
(28, 28, '230 a 260 ', 20),
(29, 29, 'le lait danesse ', 20),
(30, 30, 'apprendre ', 20),
(31, 31, 'clément ', 20),
(32, 32, 'éloquence ', 20),
(33, 33, 'insoumis ', 20),
(34, 34, 'un millieu humide ', 20),
(35, 35, 'une personne pauvre', 20),
(36, 36, 'se cacher ', 20),
(37, 37, 'jaune ', 20),
(38, 38, 'une fourberie ', 20),
(39, 39, 'il s enfuit ', 20),
(40, 40, 'une personne riche ', 20),
(41, 41, 'etre ronchon ', 20),
(42, 42, 'plaisanter ', 20),
(43, 43, 'croyant ', 20),
(44, 44, 'sur terre battue ', 20),
(45, 45, 'aviateur ', 20),
(46, 46, 'Yannick Noah ', 20),
(47, 47, '1925', 20),
(48, 48, 'le Court philippe-Chartie', 20),
(49, 49, 'vrai ', 20),
(50, 50, 'Michael Chang ', 20),
(51, 51, '1 fois ', 20),
(52, 52, 'La Coupe des Mousquetaire', 20),
(53, 53, 'Amélie Mauresmo ', 20),
(54, 54, 'Carline Garcia-Kristina m', 20),
(55, 55, '2000 ', 20),
(56, 56, '6h33 ', 20),
(57, 57, 'Chris Evert ', 20),
(58, 58, '100', 20),
(59, 59, '110', 20),
(60, 60, '30', 20),
(61, 61, '1000 litres', 20),
(62, 62, '9 et 13 ans', 20),
(63, 63, '120', 20),
(64, 64, '1', 20),
(65, 65, 'Faux', 20),
(66, 66, '16,67euro', 20);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` int(10) UNSIGNED NOT NULL,
  `prenom_utilisateur` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `niveau` int(10) UNSIGNED NOT NULL,
  `date_creation` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
