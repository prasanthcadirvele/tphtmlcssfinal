-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mer 11 Janvier 2023 à 16:51
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `Gestion-Commande`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `num_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(20) NOT NULL,
  `det_reference` date NOT NULL,
  `cat_remise` int(11) NOT NULL,
  PRIMARY KEY (`num_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`num_categorie`, `nom_categorie`, `det_reference`, `cat_remise`) VALUES
(1, 'pomme', '2023-01-23', 0),
(2, 'babane', '2023-01-01', 10);

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `Clients_id` int(11) NOT NULL,
  `Clients_civilite` varchar(20) NOT NULL,
  `Clients_nom` varchar(20) NOT NULL,
  `Clients_prenom` varchar(20) NOT NULL,
  `Clients_dep` varchar(20) NOT NULL,
  `Clients_ville` varchar(20) NOT NULL,
  PRIMARY KEY (`Clients_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`Clients_id`, `Clients_civilite`, `Clients_nom`, `Clients_prenom`, `Clients_dep`, `Clients_ville`) VALUES
(1, 'je sais pas', 'Patrick', 'JEAN', '91', 'Massy'),
(2, 'je sais pas', 'Valentine', 'Poirau', '75', 'Paris');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE IF NOT EXISTS `commandes` (
  `Com_nom` varchar(20) NOT NULL,
  `Com_client` int(11) NOT NULL,
  `Com_date` date NOT NULL,
  `Com_montant` int(11) NOT NULL,
  `id_clients` int(11) NOT NULL,
  `Produit_ref` int(11) NOT NULL,
  PRIMARY KEY (`Com_nom`),
  KEY `Com_client` (`Com_client`),
  KEY `id_clients` (`id_clients`),
  KEY `Produit_ref` (`Produit_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commandes`
--

INSERT INTO `commandes` (`Com_nom`, `Com_client`, `Com_date`, `Com_montant`, `id_clients`, `Produit_ref`) VALUES
('JEAN', 1, '2023-01-12', 30, 2, 2),
('LACOMMANDE', 2, '2023-01-06', 10, 1, 8);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE IF NOT EXISTS `produits` (
  `Produit_ref` int(11) NOT NULL,
  `Produit_nom` varchar(20) NOT NULL,
  `Produit_prix` int(11) NOT NULL,
  `Produit_poids` int(11) NOT NULL,
  `Produit_vues` int(11) NOT NULL,
  `Produit_stock` int(11) NOT NULL,
  `Produit_code` int(11) NOT NULL,
  `num_categorie` int(11) NOT NULL,
  PRIMARY KEY (`Produit_ref`),
  KEY `Produit_nom` (`Produit_nom`),
  KEY `num_categorie` (`num_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`Produit_ref`, `Produit_nom`, `Produit_prix`, `Produit_poids`, `Produit_vues`, `Produit_stock`, `Produit_code`, `num_categorie`) VALUES
(2, 'poire', 1, 4, 10, 50, 2, 1),
(8, 'fraise', 4, 1, 5, 40, 5, 2);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `commandes_ibfk_2` FOREIGN KEY (`Produit_ref`) REFERENCES `produits` (`Produit_ref`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`id_clients`) REFERENCES `clients` (`Clients_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_ibfk_1` FOREIGN KEY (`num_categorie`) REFERENCES `categories` (`num_categorie`) ON DELETE CASCADE ON UPDATE CASCADE;
