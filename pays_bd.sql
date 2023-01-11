-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mer 11 Janvier 2023 à 03:03
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `pays_bd`
--

-- --------------------------------------------------------

--
-- Structure de la table `tables communes`
--

CREATE TABLE IF NOT EXISTS `tables communes` (
  `Code_commune` int(11) NOT NULL,
  `Nom_commune` varchar(20) NOT NULL,
  `Population_2010` int(11) NOT NULL,
  `Population_1999` int(11) NOT NULL,
  `Surface` int(11) NOT NULL,
  `Longitude` int(11) NOT NULL,
  `Latitude` int(11) NOT NULL,
  `Num_departement` int(11) NOT NULL,
  PRIMARY KEY (`Code_commune`),
  KEY `Num_departement` (`Num_departement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tables communes`
--

INSERT INTO `tables communes` (`Code_commune`, `Nom_commune`, `Population_2010`, `Population_1999`, `Surface`, `Longitude`, `Latitude`, `Num_departement`) VALUES
(10167, 'Grand-Ville', 100, 86, 9494, 445455, 490111, 10),
(92220, 'Bagneux', 40000, 37215, 4484, 254646, 49111, 92),
(94110, 'Arcueil-Cachan', 20053, 10002, 3454, 494444, 54544, 94);

-- --------------------------------------------------------

--
-- Structure de la table `tables departements`
--

CREATE TABLE IF NOT EXISTS `tables departements` (
  `Num_departement` int(11) NOT NULL,
  `Nom_departements` varchar(20) NOT NULL,
  `Code_region` int(11) NOT NULL,
  PRIMARY KEY (`Num_departement`),
  KEY `Code_region` (`Code_region`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tables departements`
--

INSERT INTO `tables departements` (`Num_departement`, `Nom_departements`, `Code_region`) VALUES
(10, 'Aube', 44),
(92, 'Hauts-de-Seine', 11),
(94, 'Val-de-Marne', 11);

-- --------------------------------------------------------

--
-- Structure de la table `tables regions`
--

CREATE TABLE IF NOT EXISTS `tables regions` (
  `Code_region` int(11) NOT NULL,
  `Nom_region` varchar(20) NOT NULL,
  PRIMARY KEY (`Code_region`),
  KEY `Nom_region` (`Nom_region`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tables regions`
--

INSERT INTO `tables regions` (`Code_region`, `Nom_region`) VALUES
(44, 'Grand-Est'),
(11, 'Ile-de-France');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `tables communes`
--
ALTER TABLE `tables communes`
  ADD CONSTRAINT `tables@0020communes_ibfk_1` FOREIGN KEY (`Num_departement`) REFERENCES `tables departements` (`Num_departement`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `tables departements`
--
ALTER TABLE `tables departements`
  ADD CONSTRAINT `tables@0020departements_ibfk_1` FOREIGN KEY (`Code_region`) REFERENCES `tables regions` (`Code_region`) ON DELETE CASCADE ON UPDATE CASCADE;
