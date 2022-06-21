-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : db372253592.db.1and1.com
-- Généré le : jeu. 29 juil. 2021 à 10:02
-- Version du serveur :  5.5.62-log
-- Version de PHP : 7.0.33-0+deb9u11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db372253592`
--
CREATE DATABASE IF NOT EXISTS `db372253592` DEFAULT CHARACTER SET latin1 COLLATE latin1_german2_ci;
USE `db372253592`;

-- --------------------------------------------------------

--
-- Structure de la table `formallin_admin_access`
--

CREATE TABLE `formallin_admin_access` (
  `id` int(11) NOT NULL,
  `login` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `formallin_admin_access`
--

INSERT INTO `formallin_admin_access` (`id`, `login`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `formallin_attributes`
--

CREATE TABLE `formallin_attributes` (
  `id` int(5) NOT NULL,
  `element_id` int(5) NOT NULL,
  `form_id` int(5) DEFAULT NULL,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `value` blob NOT NULL,
  `multilingue` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `formallin_attributes_value`
--

CREATE TABLE `formallin_attributes_value` (
  `id` int(11) NOT NULL,
  `attribute_id` int(5) NOT NULL,
  `lang_id` int(5) NOT NULL,
  `form_id` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `value` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `formallin_child_nodes`
--

CREATE TABLE `formallin_child_nodes` (
  `id` int(11) NOT NULL,
  `lang_id` int(5) NOT NULL,
  `element_id` int(5) NOT NULL,
  `form_id` int(5) DEFAULT NULL,
  `text` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `formallin_customers`
--

CREATE TABLE `formallin_customers` (
  `id` int(5) NOT NULL,
  `system_id` int(5) NOT NULL,
  `uid` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_bin NOT NULL,
  `registration_date` bigint(20) NOT NULL,
  `subscription_date` bigint(20) NOT NULL,
  `number_subscription` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `formallin_design`
--

CREATE TABLE `formallin_design` (
  `id` int(5) NOT NULL,
  `form_id` int(5) NOT NULL,
  `design_Fieldset_input` varchar(10) COLLATE utf8_bin NOT NULL,
  `design_FieldsetBackground_input` varchar(10) COLLATE utf8_bin NOT NULL,
  `design_FieldsetLegend_input` varchar(10) COLLATE utf8_bin NOT NULL,
  `design_FieldsetLegendBorder_input` varchar(10) COLLATE utf8_bin NOT NULL,
  `design_FieldsetLegendBackground_input` varchar(10) COLLATE utf8_bin NOT NULL,
  `design_Label_input` varchar(10) COLLATE utf8_bin NOT NULL,
  `design_Text_input` varchar(10) COLLATE utf8_bin NOT NULL,
  `design_A_input` varchar(10) COLLATE utf8_bin NOT NULL,
  `design_inputBorder_input` varchar(10) COLLATE utf8_bin NOT NULL,
  `design_inputBackground_input` varchar(10) COLLATE utf8_bin NOT NULL,
  `design_inputText_input` varchar(10) COLLATE utf8_bin NOT NULL,
  `design_textareaBorder_input` varchar(10) COLLATE utf8_bin NOT NULL,
  `design_textareaBackground_input` varchar(10) COLLATE utf8_bin NOT NULL,
  `design_textareaText_input` varchar(10) COLLATE utf8_bin NOT NULL,
  `design_inputSubmitBorder_input` varchar(10) COLLATE utf8_bin NOT NULL,
  `design_inputSubmitBackground_input` varchar(10) COLLATE utf8_bin NOT NULL,
  `design_inputSubmitText_input` varchar(10) COLLATE utf8_bin NOT NULL,
  `design_inputResetBorder_input` varchar(10) COLLATE utf8_bin NOT NULL,
  `design_inputResetBackground_input` varchar(10) COLLATE utf8_bin NOT NULL,
  `design_inputResetText_input` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `formallin_elements`
--

CREATE TABLE `formallin_elements` (
  `id` int(5) NOT NULL,
  `form_id` int(5) DEFAULT NULL,
  `fieldset_id` int(5) DEFAULT NULL,
  `tagId` int(11) DEFAULT NULL,
  `elementPosition` int(5) DEFAULT NULL,
  `fieldRequired` varchar(5) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `formallin_errors`
--

CREATE TABLE `formallin_errors` (
  `id` int(5) NOT NULL,
  `element_id` int(5) NOT NULL,
  `lang_id` int(5) NOT NULL,
  `form_id` int(5) DEFAULT NULL,
  `errorFieldText` blob,
  `errorFormatText` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `formallin_extensions`
--

CREATE TABLE `formallin_extensions` (
  `id` int(5) NOT NULL,
  `element_id` int(5) NOT NULL,
  `form_id` int(5) NOT NULL,
  `extensions` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `formallin_fieldsets`
--

CREATE TABLE `formallin_fieldsets` (
  `id` int(5) NOT NULL,
  `form_id` int(5) NOT NULL,
  `fieldsetPosition` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `formallin_fieldsets_legends`
--

CREATE TABLE `formallin_fieldsets_legends` (
  `id` int(5) NOT NULL,
  `fieldset_id` int(5) NOT NULL,
  `lang_id` int(5) NOT NULL,
  `form_id` int(5) DEFAULT NULL,
  `legendText` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `formallin_formallex`
--

CREATE TABLE `formallin_formallex` (
  `id` int(11) NOT NULL,
  `sessionFormallinEditor` varchar(50) COLLATE utf8_bin NOT NULL,
  `content` longtext COLLATE utf8_bin NOT NULL,
  `date` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `formallin_forms`
--

CREATE TABLE `formallin_forms` (
  `id` int(5) NOT NULL,
  `customer_id` int(5) NOT NULL,
  `formName` blob,
  `action` blob,
  `enctype` blob,
  `email` blob,
  `list_langIds` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `formDate` bigint(20) NOT NULL,
  `sessionFormallinEditor` varchar(50) COLLATE utf8_bin NOT NULL,
  `fileName` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `formallin_items`
--

CREATE TABLE `formallin_items` (
  `id` int(5) NOT NULL,
  `element_id` int(5) NOT NULL,
  `form_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `formallin_items_value`
--

CREATE TABLE `formallin_items_value` (
  `id` int(11) NOT NULL,
  `item_id` int(5) NOT NULL,
  `lang_id` int(5) NOT NULL,
  `form_id` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `value` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `formallin_labels`
--

CREATE TABLE `formallin_labels` (
  `id` int(5) NOT NULL,
  `element_id` int(5) NOT NULL,
  `form_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `formallin_labels_texts`
--

CREATE TABLE `formallin_labels_texts` (
  `id` int(11) NOT NULL,
  `label_id` int(5) NOT NULL,
  `lang_id` int(5) NOT NULL,
  `form_id` int(5) DEFAULT NULL,
  `labelText` varchar(45) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `formallin_langs`
--

CREATE TABLE `formallin_langs` (
  `id` int(5) NOT NULL,
  `shortName` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `longName` varchar(45) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `formallin_langs`
--

INSERT INTO `formallin_langs` (`id`, `shortName`, `longName`) VALUES
(1, 'zh', 'Chinese'),
(2, 'ca', 'Catalan'),
(3, 'da', 'Danish'),
(4, 'de', 'German'),
(5, 'fr', 'French'),
(6, 'it', 'Italian'),
(7, 'pt', 'Portuguese'),
(8, 'ru', 'Russian'),
(9, 'es', 'Spanish'),
(10, 'en', 'English'),
(11, 'ro', 'Romanian'),
(12, 'pl', 'Polish'),
(13, 'nl', 'Dutch');

-- --------------------------------------------------------

--
-- Structure de la table `formallin_source_editor`
--

CREATE TABLE `formallin_source_editor` (
  `id` int(5) NOT NULL,
  `form_id` int(5) NOT NULL,
  `code` longtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `formallin_systems`
--

CREATE TABLE `formallin_systems` (
  `id` int(5) NOT NULL,
  `customer_id` int(5) NOT NULL,
  `lang_id` int(5) NOT NULL,
  `emailAdministrative` varchar(100) COLLATE utf8_bin NOT NULL,
  `emailAdministrator` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `formallin_systems`
--

INSERT INTO `formallin_systems` (`id`, `customer_id`, `lang_id`, `emailAdministrative`, `emailAdministrator`) VALUES
(1, 1, 5, 'contact@nicolasbernardeau.com', 'contact@nicolasbernardeau.com');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `formallin_admin_access`
--
ALTER TABLE `formallin_admin_access`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formallin_attributes`
--
ALTER TABLE `formallin_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formallin_attributes_value`
--
ALTER TABLE `formallin_attributes_value`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formallin_child_nodes`
--
ALTER TABLE `formallin_child_nodes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formallin_customers`
--
ALTER TABLE `formallin_customers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formallin_design`
--
ALTER TABLE `formallin_design`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formallin_elements`
--
ALTER TABLE `formallin_elements`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formallin_errors`
--
ALTER TABLE `formallin_errors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formallin_fieldsets`
--
ALTER TABLE `formallin_fieldsets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formallin_fieldsets_legends`
--
ALTER TABLE `formallin_fieldsets_legends`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formallin_formallex`
--
ALTER TABLE `formallin_formallex`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formallin_forms`
--
ALTER TABLE `formallin_forms`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formallin_items`
--
ALTER TABLE `formallin_items`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formallin_items_value`
--
ALTER TABLE `formallin_items_value`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formallin_labels`
--
ALTER TABLE `formallin_labels`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formallin_labels_texts`
--
ALTER TABLE `formallin_labels_texts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formallin_langs`
--
ALTER TABLE `formallin_langs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formallin_source_editor`
--
ALTER TABLE `formallin_source_editor`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formallin_systems`
--
ALTER TABLE `formallin_systems`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `formallin_admin_access`
--
ALTER TABLE `formallin_admin_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `formallin_attributes`
--
ALTER TABLE `formallin_attributes`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formallin_attributes_value`
--
ALTER TABLE `formallin_attributes_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formallin_child_nodes`
--
ALTER TABLE `formallin_child_nodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formallin_customers`
--
ALTER TABLE `formallin_customers`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formallin_design`
--
ALTER TABLE `formallin_design`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formallin_elements`
--
ALTER TABLE `formallin_elements`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formallin_errors`
--
ALTER TABLE `formallin_errors`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formallin_fieldsets`
--
ALTER TABLE `formallin_fieldsets`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formallin_fieldsets_legends`
--
ALTER TABLE `formallin_fieldsets_legends`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formallin_formallex`
--
ALTER TABLE `formallin_formallex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formallin_forms`
--
ALTER TABLE `formallin_forms`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formallin_items`
--
ALTER TABLE `formallin_items`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formallin_items_value`
--
ALTER TABLE `formallin_items_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formallin_labels`
--
ALTER TABLE `formallin_labels`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formallin_labels_texts`
--
ALTER TABLE `formallin_labels_texts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formallin_langs`
--
ALTER TABLE `formallin_langs`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `formallin_source_editor`
--
ALTER TABLE `formallin_source_editor`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formallin_systems`
--
ALTER TABLE `formallin_systems`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
