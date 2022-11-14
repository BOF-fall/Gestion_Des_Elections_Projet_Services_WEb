-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 14 nov. 2022 à 22:49
-- Version du serveur :  10.3.34-MariaDB-0ubuntu0.20.04.1
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `election`
--

-- --------------------------------------------------------

--
-- Structure de la table `bvote`
--

CREATE TABLE `bvote` (
  `idbv` int(11) NOT NULL,
  `numbv` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idregion` int(11) NOT NULL,
  `iddep` int(11) NOT NULL,
  `idcom` int(11) NOT NULL,
  `idlieu` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `bvote`
--

INSERT INTO `bvote` (`idbv`, `numbv`, `idregion`, `iddep`, `idcom`, `idlieu`) VALUES
(1, 'Bureau1', 1, 1, 1, 1),
(2, 'Bureau2', 1, 1, 1, 1),
(3, 'Bureau1', 1, 1, 2, 3),
(4, 'Bureau2', 1, 1, 2, 3),
(8, 'Bureau3', 1, 1, 2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `candidat`
--

CREATE TABLE `candidat` (
  `idcandidat` int(11) NOT NULL,
  `prenom` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NomParti` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `candidat`
--

INSERT INTO `candidat` (`idcandidat`, `prenom`, `nom`, `NomParti`) VALUES
(1, 'Macky', 'SALL', 'APR'),
(3, 'Ousmane', 'SONKO', 'PASTEF'),
(2, 'Idrissa', 'SECK', 'REWMI'),
(4, 'ISSA', 'SALL', 'PUR'),
(5, 'Madicke', 'Niang', 'INDEPENDANT');

-- --------------------------------------------------------

--
-- Structure de la table `communes`
--

CREATE TABLE `communes` (
  `idcom` int(11) NOT NULL,
  `nomcom` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `iddep` int(11) NOT NULL,
  `idregion` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `communes`
--

INSERT INTO `communes` (`idcom`, `nomcom`, `iddep`, `idregion`) VALUES
(1, 'Gorée', 1, 1),
(2, 'Dakar Plateau', 1, 1),
(3, 'Gueule Tapée', 1, 1),
(4, 'Fass', 1, 1),
(5, 'Fann-Point E-Amitié', 1, 1),
(6, 'Médina', 1, 1),
(7, 'Grand-Dakar', 1, 1),
(9, 'Biscuiterie', 1, 1),
(10, 'Dieuppeul-Derklé', 1, 1),
(11, 'Hann-Bel-Air', 1, 1),
(12, 'Sicap-Liberté', 1, 1),
(13, 'HLM', 1, 1),
(14, 'Mermoz-Sacré Coeur', 1, 1),
(15, 'Ouakam', 1, 1),
(16, 'Ngor', 1, 1),
(17, 'Yoff', 1, 1),
(18, 'Grand-Yoff', 1, 1),
(19, 'Patte d\'oie', 1, 1),
(20, 'Parcelles Assainies', 1, 1),
(21, 'Cambérène', 1, 1),
(22, 'Pikine- Est', 3, 1),
(23, 'Pikine-Ouest', 3, 1),
(24, 'Dalifort-Foirail', 3, 1),
(25, 'Djeddha Thiaroye Kao', 3, 1),
(26, 'Guinaw Rail-Nord', 3, 1),
(27, 'Guinaw Rail-Sud', 3, 1),
(28, 'Tivaoune-Diacksao', 3, 1),
(29, 'Diamagueune-Sicap Mbao', 3, 1),
(30, 'Mbao', 3, 1),
(31, 'Pikine-Nord', 3, 1),
(32, 'Sam-Notaire', 2, 1),
(33, 'Golf-Sud', 2, 1),
(35, 'Ndiareme-Limamoulaye', 2, 1),
(36, 'Wakhinane', 2, 1),
(37, 'Medina Gounass', 2, 1),
(38, 'Bargny', 4, 1),
(39, 'Sebikotane', 4, 1),
(40, 'Sendou', 4, 1),
(41, 'Rufisque-Est', 4, 1),
(42, 'Rufisque-Nord', 4, 1),
(43, 'Rufisque-Ouest', 4, 1),
(44, 'Bambylor', 4, 1),
(45, 'Yene', 4, 1),
(46, 'Tivaouane Peulh-Niaga', 4, 1),
(47, 'Diamniadio', 4, 1),
(48, 'Sangalkam', 4, 1),
(49, 'Keur Massar-Nord', 5, 1),
(50, 'Keur Massar-Sud', 5, 1),
(51, 'Malika', 5, 1),
(52, 'Yeumbeul-Sud', 5, 1),
(53, 'Yeumbeul-Nord', 5, 1),
(54, 'Jaxaay-Parcelles-Niakoul Rap', 5, 1),
(55, 'Thies-est', 32, 10),
(56, 'Thies-ouest', 32, 10),
(57, 'Thies-nord', 32, 10);

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `iddep` int(11) NOT NULL,
  `nomdep` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idregion` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`iddep`, `nomdep`, `idregion`) VALUES
(1, 'Dakar', 1),
(2, 'Guediawaye', 1),
(3, 'Pikine', 1),
(4, 'Rufisque', 1),
(5, 'KeurMassar', 1),
(6, 'Bambey', 2),
(7, 'Diourbel', 2),
(8, 'Mbacke', 2),
(9, 'Fatick', 3),
(10, 'Foundiougne', 3),
(11, 'Gossas', 3),
(12, 'Kaolack', 4),
(13, 'Guinguineo', 4),
(14, 'Nioro du Rip', 4),
(15, 'Kolda', 5),
(16, 'Velingara', 5),
(17, 'Médina Yoro Foulah', 5),
(18, 'Kebemer', 6),
(19, 'Linguere', 6),
(20, 'Louga', 6),
(21, 'Kanel', 7),
(22, 'Matam', 7),
(23, 'Ranerou', 7),
(24, 'Dagana', 8),
(25, 'Podor', 8),
(26, 'Saint-Louis', 8),
(27, 'Bakel', 9),
(28, 'Koumpentoum', 9),
(29, 'Tambacounda', 9),
(30, 'Goudiry', 9),
(31, 'Mbour', 10),
(32, 'Thies', 10),
(33, 'Tivaouane', 10),
(34, 'Bignogna', 11),
(35, 'Oussouye', 11),
(36, 'Ziguinchor', 11),
(37, 'Birkilane', 12),
(38, 'Kaffrine', 12),
(39, 'Malem-Hodar', 12),
(40, 'Kounghel', 12),
(41, 'Kedougou', 13),
(42, 'Salemata', 13),
(43, 'Saraya', 13),
(44, 'Bounkiling', 14),
(45, 'Goudomp', 14),
(46, 'Sedhiou', 14);

-- --------------------------------------------------------

--
-- Structure de la table `electeur`
--

CREATE TABLE `electeur` (
  `idelecteur` int(11) NOT NULL,
  `cni` int(13) NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `datenaiss` date NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idregion` int(11) NOT NULL,
  `iddep` int(11) NOT NULL,
  `idcom` int(11) NOT NULL,
  `idlieu` int(11) NOT NULL,
  `idbv` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `electeur`
--

INSERT INTO `electeur` (`idelecteur`, `cni`, `nom`, `prenom`, `datenaiss`, `password`, `idregion`, `iddep`, `idcom`, `idlieu`, `idbv`) VALUES
(1, 25021999, 'fall', 'baye', '2022-11-08', 'test', 1, 1, 1, 1, 1),
(2, 19992502, 'test', 'test1', '2022-11-15', 'test', 1, 1, 2, 3, 1),
(3, 24032002, 'mbodji', 'saidou', '2022-11-29', 'test', 10, 32, 5, 4, 2),
(4, 19972000, 'gaye', 'saliou', '2022-11-01', 'test', 1, 1, 1, 1, 1),
(5, 26191999, 'diouf', 'ndieme', '2022-11-01', 'test', 1, 1, 1, 1, 1),
(6, 2302, 'gna', 'gnagna', '2022-11-05', 'test', 1, 45, 28, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `lieux`
--

CREATE TABLE `lieux` (
  `idlieu` int(11) NOT NULL,
  `nomlieu` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idregion` int(11) NOT NULL,
  `iddep` int(11) NOT NULL,
  `idcom` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `lieux`
--

INSERT INTO `lieux` (`idlieu`, `nomlieu`, `idregion`, `iddep`, `idcom`) VALUES
(1, 'Goree1', 1, 1, 1),
(2, 'Goree2', 1, 1, 1),
(3, 'DakarPlateauP1', 1, 1, 2),
(4, 'DakarPlateauP2', 1, 1, 2),
(5, 'DakarPlateauP3', 1, 1, 2),
(6, 'GueuleTapee1', 1, 1, 3),
(7, 'GueuleTapee2', 1, 1, 3),
(8, 'GueuleTapee3', 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE `region` (
  `idregion` int(11) NOT NULL,
  `nomregion` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `region`
--

INSERT INTO `region` (`idregion`, `nomregion`) VALUES
(14, 'Kedougou'),
(13, 'Kaffrine'),
(12, 'Ziguinchor'),
(11, 'Sédhiou'),
(10, 'Thies'),
(9, 'Tambacounda'),
(8, 'Saint-Louis'),
(7, 'Matam'),
(6, ' Louga'),
(5, 'Kolda'),
(4, 'Kaolack'),
(3, ' Fatick'),
(2, 'Diourbel'),
(1, 'Dakar');

-- --------------------------------------------------------

--
-- Structure de la table `votes`
--

CREATE TABLE `votes` (
  `idvote` int(11) NOT NULL,
  `idelecteur` int(11) NOT NULL,
  `idcandidat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `votes`
--

INSERT INTO `votes` (`idvote`, `idelecteur`, `idcandidat`) VALUES
(1, 1, 2),
(2, 1, 4),
(3, 1, 2),
(4, 1, 1),
(5, 1, 2),
(6, 1, 1),
(7, 1, 3),
(8, 1, 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bvote`
--
ALTER TABLE `bvote`
  ADD PRIMARY KEY (`idbv`),
  ADD KEY `idregion` (`idregion`),
  ADD KEY `iddep` (`iddep`),
  ADD KEY `idcom` (`idcom`),
  ADD KEY `idlieu` (`idlieu`);

--
-- Index pour la table `candidat`
--
ALTER TABLE `candidat`
  ADD PRIMARY KEY (`idcandidat`);

--
-- Index pour la table `communes`
--
ALTER TABLE `communes`
  ADD PRIMARY KEY (`idcom`),
  ADD KEY `iddep` (`iddep`),
  ADD KEY `idregion` (`idregion`);

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`iddep`),
  ADD KEY `id_region` (`idregion`);

--
-- Index pour la table `electeur`
--
ALTER TABLE `electeur`
  ADD PRIMARY KEY (`idelecteur`),
  ADD KEY `iddep` (`idregion`,`iddep`),
  ADD KEY `iddep2` (`iddep`),
  ADD KEY `idcom` (`idcom`),
  ADD KEY `idlieu` (`idlieu`),
  ADD KEY `idbv` (`idbv`);

--
-- Index pour la table `lieux`
--
ALTER TABLE `lieux`
  ADD PRIMARY KEY (`idlieu`),
  ADD KEY `idregion` (`idregion`),
  ADD KEY `iddep` (`iddep`),
  ADD KEY `idcom` (`idcom`);

--
-- Index pour la table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`idregion`);

--
-- Index pour la table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`idvote`),
  ADD KEY `idcandidat` (`idcandidat`),
  ADD KEY `idelecteur` (`idelecteur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bvote`
--
ALTER TABLE `bvote`
  MODIFY `idbv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `candidat`
--
ALTER TABLE `candidat`
  MODIFY `idcandidat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `communes`
--
ALTER TABLE `communes`
  MODIFY `idcom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT pour la table `departement`
--
ALTER TABLE `departement`
  MODIFY `iddep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT pour la table `electeur`
--
ALTER TABLE `electeur`
  MODIFY `idelecteur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `lieux`
--
ALTER TABLE `lieux`
  MODIFY `idlieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `region`
--
ALTER TABLE `region`
  MODIFY `idregion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `votes`
--
ALTER TABLE `votes`
  MODIFY `idvote` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
