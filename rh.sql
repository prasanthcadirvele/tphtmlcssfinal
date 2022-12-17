-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Sam 17 Décembre 2022 à 01:47
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `rh`
--

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE IF NOT EXISTS `employe` (
  `NoEmp` int(11) NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `Prenom` varchar(20) NOT NULL,
  `Sexe` varchar(10) NOT NULL,
  `Salaire` int(11) NOT NULL,
  `TypeContrat` varchar(20) NOT NULL,
  `Fonction` varchar(20) NOT NULL,
  `Site` int(11) NOT NULL,
  `DateEmbauche` date NOT NULL,
  `DateNaissance` date NOT NULL,
  `NoSrv` int(11) NOT NULL,
  PRIMARY KEY (`NoEmp`),
  KEY `NoEmp` (`NoEmp`),
  KEY `NoSrv` (`NoSrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `employe`
--

INSERT INTO `employe` (`NoEmp`, `Nom`, `Prenom`, `Sexe`, `Salaire`, `TypeContrat`, `Fonction`, `Site`, `DateEmbauche`, `DateNaissance`, `NoSrv`) VALUES
(10001, 'Otteri ', 'Nari', 'Masculin', 1500, 'CDI', 'Developpeur Java', 0, '2021-12-15', '2000-12-13', 100),
(10002, 'Dumilkuppam', 'Vavvaalu', 'Masculin', 1600, 'CDD', 'Developpeur front-en', 0, '2022-05-31', '1999-12-21', 101);

-- --------------------------------------------------------

--
-- Structure de la table `intervenir`
--

CREATE TABLE IF NOT EXISTS `intervenir` (
  `Num_Interv` int(11) NOT NULL,
  `NoProjet` int(11) NOT NULL,
  `NoEmp` int(11) NOT NULL,
  `NbHeures` int(11) NOT NULL,
  PRIMARY KEY (`Num_Interv`),
  KEY `Num_Interv` (`Num_Interv`),
  KEY `NoProjet` (`NoProjet`),
  KEY `NoEmp` (`NoEmp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `intervenir`
--

INSERT INTO `intervenir` (`Num_Interv`, `NoProjet`, `NoEmp`, `NbHeures`) VALUES
(1500, 1, 10001, 18),
(1501, 2, 10002, 20);

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE IF NOT EXISTS `projet` (
  `NoProjet` int(11) NOT NULL,
  `LibelleProjet` varchar(20) NOT NULL,
  `NoSrv` int(11) NOT NULL,
  PRIMARY KEY (`NoProjet`),
  KEY `NoProjet` (`NoProjet`),
  KEY `NoSrv` (`NoSrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `projet`
--

INSERT INTO `projet` (`NoProjet`, `LibelleProjet`, `NoSrv`) VALUES
(1, 'creation du site web', 100),
(2, 'Conception du site w', 101);

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `NoSrv` int(11) NOT NULL,
  `NomSrv` varchar(20) NOT NULL,
  PRIMARY KEY (`NoSrv`),
  KEY `NoSrv` (`NoSrv`),
  KEY `NomSrv` (`NomSrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `service`
--

INSERT INTO `service` (`NoSrv`, `NomSrv`) VALUES
(100, 'A001'),
(101, 'A002');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `intervenir`
--
ALTER TABLE `intervenir`
  ADD CONSTRAINT `intervenir_ibfk_2` FOREIGN KEY (`NoProjet`) REFERENCES `projet` (`NoProjet`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `intervenir_ibfk_1` FOREIGN KEY (`NoEmp`) REFERENCES `employe` (`NoEmp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `projet`
--
ALTER TABLE `projet`
  ADD CONSTRAINT `projet_ibfk_1` FOREIGN KEY (`NoSrv`) REFERENCES `service` (`NoSrv`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`NoSrv`) REFERENCES `employe` (`NoSrv`) ON DELETE CASCADE ON UPDATE CASCADE;
