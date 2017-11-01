-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-11-2017 a las 15:47:51
-- Versión del servidor: 5.5.53-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `aulambiente`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_assets`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=55 ;

--
-- Volcado de datos para la tabla `bak_cyfwe_assets`
--

INSERT INTO `bak_cyfwe_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 103, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 20, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 21, 22, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 23, 24, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 25, 26, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 27, 28, 1, 'com_login', 'com_login', '{}'),
(13, 1, 29, 30, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 31, 32, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 33, 34, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 35, 38, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 39, 40, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 41, 72, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 73, 76, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 77, 78, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 79, 80, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 81, 82, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 83, 84, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 85, 88, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 89, 90, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 74, 75, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 86, 87, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 91, 92, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 93, 94, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 95, 96, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 97, 98, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 99, 100, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 101, 102, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 42, 43, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 18, 44, 45, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 46, 47, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 48, 49, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 50, 51, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 52, 53, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 54, 55, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 56, 57, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 58, 59, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 60, 61, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 62, 63, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 64, 65, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 66, 67, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 68, 69, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 70, 71, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 16, 36, 37, 2, 'com_menus.menu.1', 'Main Menu', '{}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_associations`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_banners`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_banner_clients`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_categories`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `bak_cyfwe_categories`
--

INSERT INTO `bak_cyfwe_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 604, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 604, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 604, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 604, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 604, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 604, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_contact_details`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_content`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_content_rating`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_content_types`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `bak_cyfwe_content_types`
--

INSERT INTO `bak_cyfwe_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_extensions`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=803 ;

--
-- Volcado de datos para la tabla `bak_cyfwe_extensions`
--

INSERT INTO `bak_cyfwe_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"10","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"2","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"LIB_PHPUTF8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"LIB_JOOMLA","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"LIB_IDNA","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"LIB_PHPASS","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.18.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2016","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.4.3","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `bak_cyfwe_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{"name":"plg_installer_packageinstaller","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"packageinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_FOLDERINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"folderinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_URLINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"urlinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"December 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.5","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"December 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.5","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"December 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.5","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB) Language Pack","type":"package","creationDate":"December 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.5.1","description":"en-GB language pack","group":"","filename":"pkg_en-GB"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_finder_filters`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_finder_links`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `bak_cyfwe_finder_taxonomy`
--

INSERT INTO `bak_cyfwe_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_finder_terms`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bak_cyfwe_finder_terms_common`
--

INSERT INTO `bak_cyfwe_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_finder_types`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_languages`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `bak_cyfwe_languages`
--

INSERT INTO `bak_cyfwe_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_menu`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=102 ;

--
-- Volcado de datos para la tabla `bak_cyfwe_menu`
--

INSERT INTO `bak_cyfwe_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 43, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 29, 30, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 31, 32, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 33, 34, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 35, 36, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 37, 38, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 42, 1, '*', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_menu_types`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `bak_cyfwe_menu_types`
--

INSERT INTO `bak_cyfwe_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_messages`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_modules`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=87 ;

--
-- Volcado de datos para la tabla `bak_cyfwe_modules`
--

INSERT INTO `bak_cyfwe_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"0","cache_time":"0","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_modules_menu`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bak_cyfwe_modules_menu`
--

INSERT INTO `bak_cyfwe_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_overrider`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `bak_cyfwe_postinstall_messages`
--

INSERT INTO `bak_cyfwe_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_redirect_links`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_schemas`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bak_cyfwe_schemas`
--

INSERT INTO `bak_cyfwe_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.6.3-2016-08-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_session`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_tags`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `bak_cyfwe_tags`
--

INSERT INTO `bak_cyfwe_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 604, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_template_styles`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `bak_cyfwe_template_styles`
--

INSERT INTO `bak_cyfwe_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '1', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_ucm_base`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_ucm_content`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_ucm_history`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_updates`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_update_sites`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites' AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `bak_cyfwe_update_sites`
--

INSERT INTO `bak_cyfwe_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 0, ''),
(2, 'Joomla! Extension Directory', 'collection', 'https://update.joomla.org/jed/list.xml', 1, 0, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Volcado de datos para la tabla `bak_cyfwe_update_sites_extensions`
--

INSERT INTO `bak_cyfwe_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 802),
(4, 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_usergroups`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `bak_cyfwe_usergroups`
--

INSERT INTO `bak_cyfwe_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_users`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=605 ;

--
-- Volcado de datos para la tabla `bak_cyfwe_users`
--

INSERT INTO `bak_cyfwe_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(604, 'Super User', 'daniel', 'danieldaniyyelda@gmail.com', '$2y$10$D.haGEFOW.7lgcc/O3U/5ujyF0C8b9TdyVgJFP98Av7pFLY024GXu', 0, 1, '2017-02-04 07:30:01', '0000-00-00 00:00:00', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_user_keys`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_user_notes`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_user_profiles`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bak_cyfwe_user_usergroup_map`
--

INSERT INTO `bak_cyfwe_user_usergroup_map` (`user_id`, `group_id`) VALUES
(604, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_utf8_conversion`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bak_cyfwe_utf8_conversion`
--

INSERT INTO `bak_cyfwe_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_cyfwe_viewlevels`
--

CREATE TABLE IF NOT EXISTS `bak_cyfwe_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `bak_cyfwe_viewlevels`
--

INSERT INTO `bak_cyfwe_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE IF NOT EXISTS `citas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `espacio` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `hora_entrada` time NOT NULL,
  `hora_salida` time NOT NULL,
  `rol` varchar(50) NOT NULL,
  `estatus` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT 'En revisión',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`id`, `nombre`, `telefono`, `descripcion`, `espacio`, `fecha`, `hora_entrada`, `hora_salida`, `rol`, `estatus`) VALUES
(25, 'DANIEL TOVAR', '4145395328', 'pagina wbe', 'Oficina', '2017-11-03', '08:00:00', '09:00:00', 'Estudiante', 'Aprobada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_assets`
--

CREATE TABLE IF NOT EXISTS `cyfwe_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=93 ;

--
-- Volcado de datos para la tabla `cyfwe_assets`
--

INSERT INTO `cyfwe_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 179, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 78, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 79, 80, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 81, 82, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 83, 84, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 85, 86, 1, 'com_login', 'com_login', '{}'),
(13, 1, 87, 88, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 89, 90, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 91, 92, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 93, 96, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 97, 98, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 99, 142, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 143, 146, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 147, 148, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 149, 150, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 151, 152, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 153, 154, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 155, 158, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 159, 160, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 144, 145, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 156, 157, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 161, 162, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 163, 164, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 165, 166, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 167, 168, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 169, 170, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 171, 172, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 100, 101, 2, 'com_modules.module.1', 'Menú Principal', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(40, 18, 102, 103, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 104, 105, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 106, 107, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 108, 109, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 110, 111, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 112, 113, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 114, 115, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 116, 117, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 118, 119, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 120, 121, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 122, 123, 2, 'com_modules.module.16', 'Iniciar Sesión', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(51, 18, 124, 125, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 126, 127, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 128, 129, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 16, 94, 95, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 130, 131, 2, 'com_modules.module.87', 'Buscar', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(56, 58, 23, 24, 5, 'com_content.article.1', 'El Sistema Solar', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(57, 64, 21, 28, 3, 'com_content.category.8', 'GEOLOGIA', '{}'),
(58, 57, 22, 25, 4, 'com_content.category.9', 'GEOLOGIA FISICA', '{}'),
(59, 57, 26, 27, 4, 'com_content.category.10', 'GEOLOGÍA PETROLERA', '{}'),
(60, 64, 29, 30, 3, 'com_content.category.11', 'PERFORACION I', '{}'),
(61, 64, 31, 32, 3, 'com_content.category.12', 'PERFORACION II', '{}'),
(62, 64, 33, 34, 3, 'com_content.category.13', 'YACIMIENTOS I', '{}'),
(63, 64, 35, 36, 3, 'com_content.category.14', 'FACILIDADES DE SUPERFICIE', '{}'),
(64, 8, 20, 37, 2, 'com_content.category.15', 'SUBPROYECTOS', '{}'),
(65, 8, 38, 39, 2, 'com_content.category.16', 'NOTICIAS', '{}'),
(66, 8, 40, 41, 2, 'com_content.category.17', 'INFORMACION', '{}'),
(67, 8, 42, 43, 2, 'com_content.category.18', 'INVESTIGACION Y EXTENSION', '{}'),
(68, 8, 44, 71, 2, 'com_content.category.19', 'AULA', '{}'),
(69, 68, 47, 48, 3, 'com_content.category.20', 'MISION', '{}'),
(70, 68, 49, 50, 3, 'com_content.category.21', 'VISIÓN', '{}'),
(71, 68, 51, 54, 3, 'com_content.category.22', 'RESEÑA HISTORICA', '{}'),
(72, 68, 45, 46, 3, 'com_content.category.23', 'OBJETIVOS', '{}'),
(73, 68, 55, 56, 3, 'com_content.category.24', 'AUTORIDADES', '{}'),
(74, 18, 132, 133, 2, 'com_modules.module.88', 'Carousel', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(75, 1, 173, 174, 1, 'com_gantry5', 'com_gantry5', '{}'),
(76, 71, 52, 53, 4, 'com_content.article.2', 'Reseña Histórica', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(77, 68, 57, 60, 3, 'com_content.category.25', 'PLANETARIO', '{}'),
(78, 77, 58, 59, 4, 'com_content.article.3', 'Planetario', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(79, 18, 134, 135, 2, 'com_modules.module.89', 'Subir', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(80, 81, 62, 63, 4, 'com_content.article.4', 'Muestrarios', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(81, 68, 61, 64, 3, 'com_content.category.26', 'MUESTRARIOS', '{}'),
(82, 18, 136, 137, 2, 'com_modules.module.90', 'Carousel (2)', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(83, 84, 66, 67, 4, 'com_content.article.5', 'Cierre de Subproyecto: Geología Física', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(84, 68, 65, 70, 3, 'com_content.category.27', 'EVENTOS', '{}'),
(85, 18, 138, 139, 2, 'com_modules.module.91', 'Contacto', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(86, 1, 175, 176, 1, '#__ucm_content.1', '#__ucm_content.1', '[]'),
(87, 84, 68, 69, 4, 'com_content.article.6', 'Columnas Estratigráficas de las Cuencas de Venezuela', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(88, 1, 177, 178, 1, '#__ucm_content.2', '#__ucm_content.2', '[]'),
(89, 8, 72, 77, 2, 'com_content.category.28', 'CITAS', '{}'),
(90, 89, 73, 74, 3, 'com_content.article.7', 'Citas', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"2":0,"3":1,"4":1},"core.edit":{"4":1,"2":0,"3":1},"core.edit.state":{"5":1,"2":0,"3":1,"4":1},"core.edit.own":[]}'),
(91, 18, 140, 141, 2, 'com_modules.module.92', 'citas', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(92, 89, 75, 76, 3, 'com_content.category.29', 'Solicitar Espacio', '{}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_associations`
--

CREATE TABLE IF NOT EXISTS `cyfwe_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_banners`
--

CREATE TABLE IF NOT EXISTS `cyfwe_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_banner_clients`
--

CREATE TABLE IF NOT EXISTS `cyfwe_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `cyfwe_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_booking_admin`
--

CREATE TABLE IF NOT EXISTS `cyfwe_booking_admin` (
  `id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cyfwe_booking_admin`
--

INSERT INTO `cyfwe_booking_admin` (`id`) VALUES
(505);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_booking_article`
--

CREATE TABLE IF NOT EXISTS `cyfwe_booking_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `checked_out` (`checked_out`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `cyfwe_booking_article`
--

INSERT INTO `cyfwe_booking_article` (`id`, `title`, `text`, `checked_out`, `checked_out_time`) VALUES
(1, 'Terms of Contract', '', 0, '0000-00-00 00:00:00'),
(2, 'Terms of Privacy', '', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_booking_closingday`
--

CREATE TABLE IF NOT EXISTS `cyfwe_booking_closingday` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `date_up` date NOT NULL,
  `date_down` date NOT NULL,
  `monday` tinyint(1) NOT NULL DEFAULT '1',
  `tuesday` tinyint(1) NOT NULL DEFAULT '1',
  `wednesday` tinyint(1) NOT NULL DEFAULT '1',
  `thursday` tinyint(1) NOT NULL DEFAULT '1',
  `friday` tinyint(1) NOT NULL DEFAULT '1',
  `saturday` tinyint(1) NOT NULL DEFAULT '1',
  `sunday` tinyint(1) NOT NULL DEFAULT '1',
  `time_up` time NOT NULL DEFAULT '00:00:00',
  `time_down` time NOT NULL DEFAULT '00:00:00',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `color` varchar(6) NOT NULL DEFAULT '',
  `show` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `from` (`date_up`,`date_down`),
  KEY `checked_out` (`checked_out`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_booking_closingday_subject`
--

CREATE TABLE IF NOT EXISTS `cyfwe_booking_closingday_subject` (
  `closingday_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  UNIQUE KEY `exception_id` (`closingday_id`,`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_booking_creditcards`
--

CREATE TABLE IF NOT EXISTS `cyfwe_booking_creditcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reservation_id` int(11) NOT NULL,
  `card_type` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `card_number` varchar(255) NOT NULL,
  `sec_code` varchar(255) NOT NULL,
  `exp_month` int(2) NOT NULL,
  `exp_year` int(2) NOT NULL,
  `pay_type` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_booking_customer`
--

CREATE TABLE IF NOT EXISTS `cyfwe_booking_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL DEFAULT '0',
  `title_before` varchar(20) NOT NULL DEFAULT '',
  `firstname` varchar(35) NOT NULL DEFAULT '',
  `middlename` varchar(35) NOT NULL DEFAULT '',
  `surname` varchar(35) NOT NULL DEFAULT '',
  `title_after` varchar(20) NOT NULL DEFAULT '',
  `company` varchar(70) NOT NULL DEFAULT '',
  `company_id` varchar(20) NOT NULL,
  `vat_id` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `street` varchar(35) NOT NULL DEFAULT '',
  `city` varchar(35) NOT NULL DEFAULT '',
  `country` varchar(35) NOT NULL DEFAULT '',
  `zip` varchar(10) NOT NULL DEFAULT '',
  `telephone` varchar(20) NOT NULL DEFAULT '',
  `fax` varchar(20) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fields` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_booking_email`
--

CREATE TABLE IF NOT EXISTS `cyfwe_booking_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `sms` text NOT NULL,
  `mode` tinyint(1) NOT NULL DEFAULT '0',
  `usage` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `checked_out` (`checked_out`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_booking_field`
--

CREATE TABLE IF NOT EXISTS `cyfwe_booking_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `options` text NOT NULL,
  `template` text NOT NULL,
  `special` tinyint(1) NOT NULL,
  `show_in_table` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_booking_google_calendar`
--

CREATE TABLE IF NOT EXISTS `cyfwe_booking_google_calendar` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `modified` datetime NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_booking_location`
--

CREATE TABLE IF NOT EXISTS `cyfwe_booking_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `pick_up` tinyint(1) NOT NULL DEFAULT '0',
  `drop_off` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `checked_out` (`checked_out`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_booking_occupancy_type`
--

CREATE TABLE IF NOT EXISTS `cyfwe_booking_occupancy_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_id` (`subject`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_booking_payment`
--

CREATE TABLE IF NOT EXISTS `cyfwe_booking_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `info` text NOT NULL,
  `alias` varchar(255) NOT NULL,
  `pay` tinyint(1) NOT NULL DEFAULT '1',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `asset_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`,`checked_out`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_booking_price`
--

CREATE TABLE IF NOT EXISTS `cyfwe_booking_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` int(11) NOT NULL DEFAULT '0',
  `value` float NOT NULL DEFAULT '0',
  `deposit` float NOT NULL DEFAULT '0',
  `deposit_type` tinyint(1) NOT NULL DEFAULT '1',
  `deposit_multiply` tinyint(4) NOT NULL DEFAULT '0',
  `price_capacity_multiply` tinyint(4) NOT NULL DEFAULT '1',
  `deposit_capacity_multiply` tinyint(4) NOT NULL DEFAULT '1',
  `deposit_include_supplements` tinyint(1) NOT NULL DEFAULT '0',
  `price_standard_occupancy_multiply` tinyint(1) NOT NULL DEFAULT '1',
  `price_extra_occupancy_multiply` tinyint(1) NOT NULL DEFAULT '0',
  `deposit_standard_occupancy_multiply` tinyint(1) NOT NULL DEFAULT '1',
  `deposit_extra_occupancy_multiply` tinyint(1) NOT NULL DEFAULT '0',
  `self_pickup_deposit` float NOT NULL DEFAULT '0',
  `self_pickup_deposit_type` tinyint(1) NOT NULL DEFAULT '0',
  `volume_discount` text NOT NULL,
  `volume_type` tinyint(1) NOT NULL DEFAULT '0',
  `discount_include_supplements` tinyint(1) NOT NULL DEFAULT '0',
  `occupancy_price_modifier` text NOT NULL,
  `rezervation_type` int(11) NOT NULL DEFAULT '0',
  `date_up` date NOT NULL DEFAULT '0000-00-00',
  `date_down` date NOT NULL DEFAULT '0000-00-00',
  `time_up` time NOT NULL DEFAULT '00:00:00',
  `time_down` time NOT NULL DEFAULT '00:00:00',
  `cancel_time` int(11) DEFAULT NULL,
  `monday` tinyint(4) NOT NULL DEFAULT '0',
  `tuesday` tinyint(4) NOT NULL DEFAULT '0',
  `wednesday` tinyint(4) NOT NULL DEFAULT '0',
  `thursday` tinyint(4) NOT NULL DEFAULT '0',
  `friday` tinyint(4) NOT NULL DEFAULT '0',
  `saturday` tinyint(4) NOT NULL DEFAULT '0',
  `sunday` tinyint(4) NOT NULL DEFAULT '0',
  `week` tinyint(4) NOT NULL DEFAULT '0',
  `custom_color` varchar(20) DEFAULT NULL,
  `time_range` tinyint(4) NOT NULL DEFAULT '0',
  `head_piece` int(11) NOT NULL DEFAULT '0',
  `tail_piece` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_booking_reservation`
--

CREATE TABLE IF NOT EXISTS `cyfwe_booking_reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer` int(11) NOT NULL DEFAULT '0',
  `username` varchar(150) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `title_before` varchar(20) NOT NULL DEFAULT '',
  `firstname` varchar(35) NOT NULL DEFAULT '',
  `middlename` varchar(35) NOT NULL DEFAULT '',
  `surname` varchar(35) NOT NULL DEFAULT '',
  `title_after` varchar(20) NOT NULL DEFAULT '',
  `more_names` text NOT NULL,
  `company` varchar(70) NOT NULL DEFAULT '',
  `company_id` varchar(20) NOT NULL,
  `vat_id` varchar(20) NOT NULL,
  `street` varchar(35) NOT NULL DEFAULT '',
  `city` varchar(35) NOT NULL DEFAULT '',
  `country` varchar(35) NOT NULL DEFAULT '',
  `zip` varchar(10) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `telephone` varchar(20) NOT NULL DEFAULT '',
  `fax` varchar(20) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `paid` tinyint(4) NOT NULL DEFAULT '0',
  `payment_method_id` varchar(50) NOT NULL,
  `payment_method_name` varchar(50) NOT NULL,
  `payment_type` tinyint(1) NOT NULL DEFAULT '1',
  `payment_method_info` text NOT NULL,
  `note` text NOT NULL,
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fields` longtext NOT NULL,
  `book_time` datetime DEFAULT NULL,
  `follow_up_sent` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer` (`customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_booking_reservation_items`
--

CREATE TABLE IF NOT EXISTS `cyfwe_booking_reservation_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reservation_id` int(11) NOT NULL DEFAULT '0',
  `rtype` tinyint(4) NOT NULL DEFAULT '0',
  `subject` int(11) NOT NULL DEFAULT '0',
  `subject_title` varchar(255) NOT NULL,
  `sub_subject` int(11) NOT NULL DEFAULT '0',
  `sub_subject_title` varchar(255) NOT NULL,
  `from` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `capacity` int(11) NOT NULL DEFAULT '0',
  `more_names` text NOT NULL,
  `occupancy` text NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `deposit` float NOT NULL DEFAULT '0',
  `fullPrice` float NOT NULL DEFAULT '0',
  `fullPriceSupplements` float NOT NULL DEFAULT '0',
  `provision` float NOT NULL DEFAULT '0',
  `fullDeposit` float NOT NULL DEFAULT '0',
  `discount` float NOT NULL DEFAULT '0',
  `fullDiscount` float NOT NULL DEFAULT '0',
  `tax` float NOT NULL DEFAULT '0',
  `cancel_time` int(11) DEFAULT NULL,
  `message` varchar(255) NOT NULL,
  `period_time_up` time NOT NULL,
  `period_time_down` time NOT NULL,
  `period_type` tinyint(1) NOT NULL,
  `period_recurrence` int(11) NOT NULL,
  `period_monday` tinyint(1) NOT NULL,
  `period_tuesday` tinyint(1) NOT NULL,
  `period_wednesday` tinyint(1) NOT NULL,
  `period_thursday` tinyint(1) NOT NULL,
  `period_friday` tinyint(1) NOT NULL,
  `period_saturday` tinyint(1) NOT NULL,
  `period_sunday` tinyint(1) NOT NULL,
  `period_month` tinyint(2) NOT NULL,
  `period_week` tinyint(1) NOT NULL,
  `period_day` tinyint(1) NOT NULL,
  `period_date_up` date NOT NULL,
  `period_end` tinyint(1) NOT NULL,
  `period_occurrences` int(11) NOT NULL,
  `period_date_down` date NOT NULL,
  `period_total` int(11) NOT NULL,
  `google_calendar_id` varchar(255) NOT NULL,
  `postage` float NOT NULL DEFAULT '0',
  `shipping` tinyint(1) NOT NULL DEFAULT '0',
  `takeback` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reservation_id` (`reservation_id`),
  KEY `subject` (`subject`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_booking_reservation_period`
--

CREATE TABLE IF NOT EXISTS `cyfwe_booking_reservation_period` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reservation_item_id` int(11) NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL,
  `google_calendar_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reservation_item_id` (`reservation_item_id`),
  KEY `from` (`from`,`to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_booking_reservation_supplement`
--

CREATE TABLE IF NOT EXISTS `cyfwe_booking_reservation_supplement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(11) NOT NULL,
  `reservation` int(11) NOT NULL,
  `supplement` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` tinyint(4) NOT NULL,
  `value` varchar(255) NOT NULL,
  `paid` tinyint(4) NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `fullPrice` float NOT NULL DEFAULT '0',
  `surcharge_value` float NOT NULL DEFAULT '0',
  `surcharge_label` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL DEFAULT '0',
  `boxsCount` int(11) NOT NULL DEFAULT '0',
  `discount` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reservation` (`reservation`),
  KEY `supplement` (`supplement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_booking_reservation_type`
--

CREATE TABLE IF NOT EXISTS `cyfwe_booking_reservation_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `capacity_unit` int(11) NOT NULL DEFAULT '0',
  `time_unit` int(11) NOT NULL DEFAULT '0',
  `gap_time` int(11) NOT NULL DEFAULT '0',
  `dynamic_gap_time` tinyint(1) NOT NULL DEFAULT '0',
  `special_offer` tinyint(4) NOT NULL DEFAULT '0',
  `min` int(11) NOT NULL DEFAULT '0',
  `max` int(11) NOT NULL DEFAULT '0',
  `fix` int(11) NOT NULL DEFAULT '0',
  `fix_from` text NOT NULL,
  `book_fix_past` tinyint(4) NOT NULL DEFAULT '0',
  `fix_multiply` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `subject` (`subject`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `cyfwe_booking_reservation_type`
--

INSERT INTO `cyfwe_booking_reservation_type` (`id`, `subject`, `title`, `type`, `description`, `capacity_unit`, `time_unit`, `gap_time`, `dynamic_gap_time`, `special_offer`, `min`, `max`, `fix`, `fix_from`, `book_fix_past`, `fix_multiply`) VALUES
(1, 1, 'Planetario', 1, 'Observación del espacio estelar', 0, 2, 2, 1, 0, 0, 0, 0, 'a:0:{}', 0, 0),
(2, 1, 'Salon de clases', 1, 'Dictar clases, conferencias, exposiciones', 0, 2, 0, 0, 0, 0, 0, 0, 'a:0:{}', 0, 0),
(3, 2, 'Reservar', 1, '', 0, 2, 0, 0, 0, 0, 0, 0, 'a:0:{}', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_booking_subject`
--

CREATE TABLE IF NOT EXISTS `cyfwe_booking_subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL DEFAULT '0',
  `template` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(100) NOT NULL DEFAULT '',
  `introtext` text NOT NULL,
  `fulltext` text NOT NULL,
  `total_capacity` int(11) NOT NULL DEFAULT '0',
  `show_occupancy` tinyint(1) NOT NULL DEFAULT '1',
  `standard_occupancy_max` int(11) NOT NULL DEFAULT '0',
  `standard_occupancy_min` int(11) NOT NULL DEFAULT '0',
  `extra_occupancy_max` int(11) NOT NULL DEFAULT '0',
  `extra_occupancy_min` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` tinyint(4) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `use_pdf_ticket` tinyint(1) NOT NULL,
  `pdf_ticket_template` text NOT NULL,
  `pdf_ticket_width` int(11) NOT NULL,
  `pdf_ticket_heigth` int(11) NOT NULL,
  `pdf_ticket_border` tinyint(1) NOT NULL,
  `pdf_ticket_font` varchar(50) NOT NULL,
  `pdf_ticket_font_size` int(11) NOT NULL,
  `pdf_ticket_format` varchar(50) NOT NULL,
  `pdf_ticket_availability` tinyint(1) NOT NULL,
  `google_calendar` varchar(255) NOT NULL,
  `location_use_parent` tinyint(1) NOT NULL,
  `location_content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `cyfwe_booking_subject`
--

INSERT INTO `cyfwe_booking_subject` (`id`, `parent`, `template`, `title`, `alias`, `introtext`, `fulltext`, `total_capacity`, `show_occupancy`, `standard_occupancy_max`, `standard_occupancy_min`, `extra_occupancy_max`, `extra_occupancy_min`, `state`, `featured`, `ordering`, `publish_up`, `publish_down`, `access`, `hits`, `params`, `checked_out`, `checked_out_time`, `user_id`, `use_pdf_ticket`, `pdf_ticket_template`, `pdf_ticket_width`, `pdf_ticket_heigth`, `pdf_ticket_border`, `pdf_ticket_font`, `pdf_ticket_font_size`, `pdf_ticket_format`, `pdf_ticket_availability`, `google_calendar`, `location_use_parent`, `location_content`) VALUES
(1, 0, 1, 'Aula', 'aula', '', '', 5, 0, 0, 0, 0, 0, -2, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '{"price_overlay":0,"display_only_one_rtype":0,"min_limit":0,"image":"","images":"","files":"","reserving":0,"use_fix_shedule":0,"shedule_to":null,"shedule_from":null,"display_capacity":0,"rlimit_count":0,"rlimit_days":0,"rlimit_set":0,"night_booking":0,"night_booking_from":"00:00:00","night_booking_from_any":0,"night_booking_to":"00:00:00","keywords":"","description":"","bookit_button":"","book_over_timeliness":0,"single_deposit":0,"single_deposit_type":0,"single_deposit_include_supplements":0,"volume_discount":"{}","early_booking_discount":"{}","member_discount":"{}","agent_provision":"{}","minimum_capacity":5,"google_maps":"off","google_maps_address":"","google_maps_width":0,"google_maps_heigth":0,"google_maps_zoom":"","google_maps_code":"","google_maps_display":"","tax":"","show_contact_form":0,"contact_email":"danieldaniyyelda@gmail.com","tax_rate_id":"","display_who_reserve":"","supplier":"","capacity_limit_min":0,"capacity_limit_max":0,"capacity_increment":1,"discount_include_supplements":0,"volume_type":0,"postage":0,"calendar_future_days":"","booking_before_since":"","check_in_hour":0,"check_in_time":"","check_in_any":""}', 0, '0000-00-00 00:00:00', 502, 0, '', 0, 0, 0, '', 0, '', 0, '', 0, ''),
(2, 0, 1, 'Planetario', 'planetario', '', '', 1, 0, 0, 0, 0, 0, 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, '{"price_overlay":0,"display_only_one_rtype":0,"min_limit":0,"image":"","images":"","files":"","reserving":0,"use_fix_shedule":0,"shedule_to":null,"shedule_from":null,"display_capacity":0,"rlimit_count":0,"rlimit_days":0,"rlimit_set":0,"night_booking":0,"night_booking_from":"00:00:00","night_booking_from_any":0,"night_booking_to":"00:00:00","keywords":"","description":"","bookit_button":"","book_over_timeliness":0,"single_deposit":0,"single_deposit_type":0,"single_deposit_include_supplements":0,"volume_discount":"{}","early_booking_discount":"{}","member_discount":"{}","agent_provision":"{}","minimum_capacity":0,"google_maps":"off","google_maps_address":"","google_maps_width":0,"google_maps_heigth":0,"google_maps_zoom":"","google_maps_code":"","google_maps_display":"","tax":"","show_contact_form":0,"contact_email":"","tax_rate_id":"","display_who_reserve":"","supplier":"","capacity_limit_min":0,"capacity_limit_max":0,"capacity_increment":1,"discount_include_supplements":0,"volume_type":0,"postage":0,"calendar_future_days":"","booking_before_since":"","check_in_hour":0,"check_in_time":"","check_in_any":""}', 0, '0000-00-00 00:00:00', 502, 0, '', 0, 0, 0, '', 0, '', 0, '', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_booking_supplement`
--

CREATE TABLE IF NOT EXISTS `cyfwe_booking_supplement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(11) NOT NULL,
  `subject` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` tinyint(4) NOT NULL,
  `options` text NOT NULL,
  `empty` tinyint(4) NOT NULL,
  `paid` tinyint(4) NOT NULL,
  `price` text NOT NULL,
  `member_discount` text NOT NULL,
  `surcharge_value` float NOT NULL DEFAULT '0',
  `surcharge_label` varchar(255) NOT NULL,
  `capacity_multiply` tinyint(4) NOT NULL DEFAULT '1',
  `capacity_max` int(11) unsigned NOT NULL DEFAULT '0',
  `capacity_min` int(11) unsigned NOT NULL DEFAULT '0',
  `unit_multiply` tinyint(4) NOT NULL DEFAULT '0',
  `volume_discount` text NOT NULL,
  `volume_type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `subject` (`subject`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_booking_template`
--

CREATE TABLE IF NOT EXISTS `cyfwe_booking_template` (
  `id` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `xml` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cyfwe_booking_template`
--

INSERT INTO `cyfwe_booking_template` (`id`, `params`, `xml`) VALUES
(1, '{"calendars":"daily,weekly","shortest_interval":"","num_months":""}', '<?xml version="1.0"?>\n<form name="Aula Ambiente" id="1"><fields name="params"><fieldset><field name="1" type="text" default="" label="Nombre" description="" searchable="0" filterable="0" objects="1" object="1" icon="" comparison=""/><field name="2" type="text" default="" label="Tel&#xE9;fono" description="" searchable="0" filterable="0" objects="1" object="1" icon="" comparison=""/><field name="3" type="textarea" default="" label="Descripcion" description="" searchable="0" filterable="0" objects="1" object="1" icon="" comparison=""/><field name="4" type="list" default="" label="Espacio a solicitar" description="" searchable="1" filterable="0" objects="1" object="1" icon="" comparison=""><option value="Planetario"/><option value="Salon del planetario"/><option value="Salon de clases"/><option value="Oficina"/></field><field name="5" type="list" default="" label="Rol" description="" searchable="0" filterable="0" objects="1" object="1" icon="" comparison=""><option value="-Seleccione"/><option value="Profesor"/><option value="Estudiante"/><option value="Investigador"/><option value="Administrativo"/></field></fieldset></fields></form>\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_booking_template_1`
--

CREATE TABLE IF NOT EXISTS `cyfwe_booking_template_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `1` varchar(255) NOT NULL,
  `2` varchar(255) NOT NULL,
  `3` text NOT NULL,
  `4` varchar(255) NOT NULL,
  `5` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `cyfwe_booking_template_1`
--

INSERT INTO `cyfwe_booking_template_1` (`id`, `1`, `2`, `3`, `4`, `5`) VALUES
(1, '', '', '', 'Planetario', '-Seleccione'),
(2, '', '', '', 'Planetario', '-Seleccione');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_booking_template_value`
--

CREATE TABLE IF NOT EXISTS `cyfwe_booking_template_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `cyfwe_booking_template_value`
--

INSERT INTO `cyfwe_booking_template_value` (`id`, `value`) VALUES
(10, '-Seleccione'),
(14, 'Administrativo'),
(15, 'Aula Ambiente'),
(3, 'Descripcion'),
(4, 'Espacio a solicitar'),
(12, 'Estudiante'),
(13, 'Investigador'),
(1, 'Nombre'),
(8, 'Oficina'),
(5, 'Planetario'),
(11, 'Profesor'),
(9, 'Rol'),
(7, 'Salon de clases'),
(6, 'Salon del planetario'),
(2, 'Teléfono');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_booking_user_config`
--

CREATE TABLE IF NOT EXISTS `cyfwe_booking_user_config` (
  `user_id` int(11) NOT NULL,
  `payments` text NOT NULL,
  `config` text NOT NULL,
  `calendar` text NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_categories`
--

CREATE TABLE IF NOT EXISTS `cyfwe_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=30 ;

--
-- Volcado de datos para la tabla `cyfwe_categories`
--

INSERT INTO `cyfwe_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 55, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 502, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 502, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 502, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 502, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 502, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 502, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 57, 15, 12, 17, 2, 'subproyectos/geologia', 'com_content', 'GEOLOGIA', 'geologia', '', '<p>Contenido referente a Geología Física</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 502, '2017-02-09 01:42:57', 502, '2017-02-09 01:46:48', 0, '*', 1),
(9, 58, 8, 13, 14, 3, 'subproyectos/geologia/geologia-fisica', 'com_content', 'GEOLOGIA FISICA', 'geologia-fisica', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 502, '2017-02-09 01:43:41', 0, '2017-02-09 01:43:41', 0, '*', 1),
(10, 59, 8, 15, 16, 3, 'subproyectos/geologia/geologia-petrolera', 'com_content', 'GEOLOGÍA PETROLERA', 'geologia-petrolera', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 502, '2017-02-09 01:43:55', 0, '2017-02-09 01:43:55', 0, '*', 1),
(11, 60, 15, 18, 19, 2, 'subproyectos/perforacion-i', 'com_content', 'PERFORACION I', 'perforacion-i', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 502, '2017-02-09 01:44:13', 502, '2017-02-09 01:47:48', 0, '*', 1),
(12, 61, 15, 20, 21, 2, 'subproyectos/perforacion-ii', 'com_content', 'PERFORACION II', 'perforacion-ii', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 502, '2017-02-09 01:44:20', 502, '2017-02-09 01:47:57', 0, '*', 1),
(13, 62, 15, 22, 23, 2, 'subproyectos/yacimientos-i', 'com_content', 'YACIMIENTOS I', 'yacimientos-i', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 502, '2017-02-09 01:44:26', 502, '2017-02-09 01:48:05', 0, '*', 1),
(14, 63, 15, 24, 25, 2, 'subproyectos/facilidades-de-superficie', 'com_content', 'FACILIDADES DE SUPERFICIE', 'facilidades-de-superficie', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 502, '2017-02-09 01:44:46', 502, '2017-02-09 01:48:12', 0, '*', 1),
(15, 64, 1, 11, 26, 1, 'subproyectos', 'com_content', 'SUBPROYECTOS', 'subproyectos', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 502, '2017-02-09 01:44:55', 0, '2017-02-09 01:44:55', 0, '*', 1),
(16, 65, 1, 27, 28, 1, 'noticias', 'com_content', 'NOTICIAS', 'noticias', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 502, '2017-02-09 01:45:02', 0, '2017-02-09 01:45:02', 0, '*', 1),
(17, 66, 1, 29, 30, 1, 'informacion', 'com_content', 'INFORMACION', 'informacion', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 502, '2017-02-09 01:45:21', 0, '2017-02-09 01:45:21', 0, '*', 1),
(18, 67, 1, 31, 32, 1, 'investigacion-y-extension', 'com_content', 'INVESTIGACION Y EXTENSION', 'investigacion-y-extension', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 502, '2017-02-09 01:45:51', 0, '2017-02-09 01:45:51', 0, '*', 1),
(19, 68, 1, 33, 50, 1, 'aula', 'com_content', 'AULA', 'aula', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 502, '2017-02-09 01:48:58', 0, '2017-02-09 01:48:58', 0, '*', 1),
(20, 69, 19, 36, 37, 2, 'aula/mision', 'com_content', 'MISION', 'mision', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 502, '2017-02-09 02:07:00', 502, '2017-02-09 02:09:10', 0, '*', 1),
(21, 70, 19, 38, 39, 2, 'aula/vision', 'com_content', 'VISIÓN', 'vision', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 502, '2017-02-09 02:07:11', 502, '2017-02-09 02:09:20', 0, '*', 1),
(22, 71, 19, 40, 41, 2, 'aula/resena-historica', 'com_content', 'RESEÑA HISTORICA', 'resena-historica', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 502, '2017-02-09 02:07:20', 502, '2017-02-09 02:09:31', 0, '*', 1),
(23, 72, 19, 34, 35, 2, 'aula/objetivos', 'com_content', 'OBJETIVOS', 'objetivos', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 502, '2017-02-09 02:09:00', 0, '2017-02-09 02:09:00', 0, '*', 1),
(24, 73, 19, 42, 43, 2, 'aula/autoridades', 'com_content', 'AUTORIDADES', 'autoridades', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 502, '2017-02-09 02:09:56', 0, '2017-02-09 02:09:56', 0, '*', 1),
(25, 77, 19, 44, 45, 2, 'aula/planetario', 'com_content', 'PLANETARIO', 'planetario', '', '<p>Es un lugar dedicado a la presentación de espectáculos astronómicos</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 502, '2017-02-14 14:41:11', 502, '2017-02-17 05:34:50', 0, '*', 1),
(26, 81, 19, 46, 47, 2, 'aula/muestrarios', 'com_content', 'MUESTRARIOS', 'muestrarios', '', '<p>Muestrarios presentes en la unidad de investigación aula ambiente de geografía</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 502, '2017-02-17 05:24:57', 0, '2017-02-17 05:24:57', 0, '*', 1),
(27, 84, 19, 48, 49, 2, 'aula/eventos', 'com_content', 'EVENTOS', 'eventos', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 502, '2017-03-06 09:48:46', 502, '2017-03-09 06:00:44', 0, '*', 1),
(28, 89, 1, 51, 54, 1, 'citas', 'com_content', 'CITAS', 'citas', '', '<div style="width: 600px;" align="right"><form class="form-horizontal">\r\n<div class="form-group"><label class="col-sm-2 control-label" for="rol">Rol</label>\r\n<div class="col-sm-10"><select class="form-control" name="rol" required="required">\r\n<option>--Seleccione</option>\r\n<option>Público en general</option>\r\n<option>Administrativo</option>\r\n<option>Investigador</option>\r\n<option>Profesor</option>\r\n<option>Estudiante</option>\r\n</select></div>\r\n</div>\r\n<div class="form-group"><label class="col-sm-2 contro-label" for="nombre">Nombre</label>\r\n<div class="col-sm-10"><input class="form-control" name="nombre" required="required" type="text" /></div>\r\n</div>\r\n<div class="form-group"><label class="col-sm-2 control-label" for="cedula">Cedula</label>\r\n<div class="col-sm-10"><input class="form-control" name="cedula" required="required" type="text" /></div>\r\n</div>\r\n<div class="form-group"><label class="col-sm-2 contro-label" for="espacio">Espacio a solicitar/visitar</label>\r\n<div class="col-sm-10"><select class="form-control" name="espacio" required="required">\r\n<option>--Seleccione</option>\r\n<option>Planetario</option>\r\n<option>Salón del planetario</option>\r\n<option>Aula de clases</option>\r\n<option>Oficina</option>\r\n</select></div>\r\n</div>\r\n<div class="form-group"><label class="col-sm-2 contro-label" for="descripcion">Descripción</label>\r\n<div class="col-sm-10"><textarea class="form-control" name="descripcion" required="required" rows="5">The cat was playing in the garden.</textarea></div>\r\n</div>\r\n<div class="form-group"><label class="contro-label col-sm-2">El dia: </label>\r\n<div class="col-sm-10"><input class="form-control" name="fecha" required="required" type="date" /></div>\r\n</div>\r\n<div class="form-group row"><label class="contro-label col-sm-2">Desde: </label>\r\n<div class="col-sm-4"><input class="form-control" name="desde_fecha" required="required" type="time" /></div>\r\n<label class="contro-label col-sm-2">Hasta: </label>\r\n<div class="col-sm-4"><input class="form-control" name="hasta_fecha" required="required" type="time" /></div>\r\n</div>\r\n<div class="col-sm-offset-2 col-sm-10"><button class="btn btn-default" type="submit">Agregar</button></div>\r\n</form></div>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 502, '2017-03-20 05:12:05', 502, '2017-03-20 23:23:57', 0, '*', 1),
(29, 92, 28, 52, 53, 2, 'citas/solicitar-espacio', 'com_content', 'Solicitar Espacio', 'solicitar-espacio', '', '<div align="center">\r\n<div style="width: 600px;"><form class="form-horizontal" action="/control_citas/agregar_cita.php" method="POST">\r\n<div class="form-group">\r\n<div class="col-sm-10"><select class="form-control" name="rol" required="required">\r\n<option>--Seleccione</option>\r\n<option>Público en general</option>\r\n<option>Administrativo</option>\r\n<option>Investigador</option>\r\n<option>Profesor</option>\r\n<option>Estudiante</option>\r\n</select></div>\r\n</div>\r\n<br />\r\n<div class="form-group">\r\n<div class="col-sm-10"><input class="form-control" name="nombre" required="required" type="text" placeholder="Nombre" /></div>\r\n</div>\r\n<br />\r\n<div class="form-group">\r\n<div class="col-sm-10"><input class="form-control" name="cedula" required="required" type="text" placeholder="Cedula" /></div>\r\n</div>\r\n<br />\r\n<div class="form-group col-md-10"><label class="col-sm-10 contro-label" for="espacio">Espacio a solicitar/visitar</label><select class="form-control" name="espacio" required="required">\r\n<option>--Seleccione</option>\r\n<option>Planetario</option>\r\n<option>Salón del planetario</option>\r\n<option>Aula de clases</option>\r\n<option>Oficina</option>\r\n</select></div>\r\n<br />\r\n<div class="form-group">\r\n<div class="col-sm-10"><textarea class="form-control" name="descripcion" required="required" rows="5" placeholder="Descripcion"></textarea></div>\r\n</div>\r\n<div class="form-group"><label class="contro-label col-sm-2">El dia: </label>\r\n<div class="col-sm-10"><input class="form-control" name="fecha" required="required" type="date" /></div>\r\n</div>\r\n<div class="form-group row"><label class="contro-label col-sm-2">Desde: </label>\r\n<div class="col-sm-4"><input class="form-control" name="desde_fecha" required="required" type="time" /></div>\r\n<label class="contro-label col-sm-2">Hasta: </label>\r\n<div class="col-sm-4"><input class="form-control" name="hasta_fecha" required="required" type="time" /></div>\r\n</div>\r\n<br />\r\n<div class="col-sm-offset-2 col-sm-10"><button class="btn btn-default" type="submit">Agregar</button></div>\r\n</form></div>\r\n</div>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 502, '2017-03-20 23:25:31', 0, '2017-03-20 23:25:31', 0, '*', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_contact_details`
--

CREATE TABLE IF NOT EXISTS `cyfwe_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_content`
--

CREATE TABLE IF NOT EXISTS `cyfwe_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `cyfwe_content`
--

INSERT INTO `cyfwe_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 56, 'El Sistema Solar', 'el-sistema-solar', '<p style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;">¿Qué es una estrella?</p>\r\n<p style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;"> </p>\r\n<p style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;">Las estrellas son cuerpos celestes de grandes dimensiones en cuyo interior se producen reacciones nucleares que provocan la emisión de una gran cantidad de energía al espacio exterior. Las estrellas tienen un núcleo donde se producen las reacciones nucleares. Por ejemplo, cuatro átomos de hidrógeno se convierten en uno de helio desprendiendo una cierta cantidad de energía. Estas reacciones nucleares son la causa de la emisión de luz y calor. Las estrellas están siempre en la bóveda celeste, pero de día no son visibles debido a la luz de una de ellas: el Sol. La estrella más cercana a la Tierra ha servido para estudiar estos astros, cuya característica principal es que emiten energía continuamente. </p>\r\n', '<hr /><hr title="Pagina 2" alt="pagina 2" class="system-pagebreak" />\r\n<p style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">¿El Sol?</p>\r\n<p style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;">El Sol es la estrella única y central del Sistema Solar; por tanto, es la estrella más cercana a la Tierra y el astro con mayor brillo aparente. Su presencia o su ausencia en el cielo terrestre determinan, respectivamente, el día y la noche. La energía radiada por el Sol es aprovechada por los seres foto</p>\r\n<p style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;">sintéticos, que constituyen la base de la cadena alimenticia, y es por ello la principal fuente de energía de la vida. También aporta la energía que mantiene en funcionamiento los procesos climáticos. El Sol es una estrella que se encuentra en la fase denominada secuencia principal, con un tipo espectral G2, que se formó hace unos 5000 millones de años, y permanecerá en la secuencia principal aproximadamente otros 5000 millones de años.<br />A pesar de ser una estrella mediana, es la única cuya forma circular se puede apreciar a simple vista, con un diámetro angular de 32'' 35" de arco en el perihelio y 31'' 31" en el afelio, lo que da un diámetro medio de 32'' 03". Casualmente, la combinación de tamaños y distancias del Sol y la Luna respecto a la Tierra, hace que se vean aproximadamente con el mismo tamaño aparente en el cielo. Esto permite una amplia gama de eclipses solares distintos (totales, anulares o parciales). Se han descubierto sistemas planetarios que tienen más de una estrella central (sistema estelar).</p>\r\n<p style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;"> </p>\r\n<figure class="pull-center"><img title="Sistema Solar" src="images/Aula_Ambiente/IMG_20170206_173816854.jpg" alt="" width="867" height="651" />\r\n<figcaption class="text-right">Cuadro ubicado en Aula ambiente</figcaption>\r\n</figure>\r\n<p style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;">Los ocho planetas que componen el Sistema Solar son, de menor a mayor distancia respecto al Sol, los siguientes:</p>\r\n<p style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;"> </p>\r\n<p style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: center;">Mercurio - Venus - Tierra - Marte - Júpiter - Saturno - Urano - Neptuno</p>\r\n<p style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;"> </p>\r\n<p style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;">Los planetas son cuerpos que giran formando órbitas alrededor de la estrella, tienen suficiente masa para que su gravedad supere las fuerzas del cuerpo rígido, de manera que asuman una forma en equilibrio hidrostático (prácticamente esférica), y han limpiado la vecindad de su órbita de planetesimales (dominancia orbital).</p>\r\n<p style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;"> </p>\r\n<p style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;">Los planetas interiores son Mercurio, Venus, la Tierra y Marte y tienen la superficie sólida. Los planetas exteriores son Júpiter, Saturno, Urano y Neptuno, también se denominan planetas gaseosos porque contienen en sus atmósferas gases como el helio, el hidrógeno y el metano, y no se conoce con certeza la estructura de su superficie. El 24 de agosto de 2006, la Unión Astronómica Internacional (UAI) excluyó a Plutón como planeta del Sistema Solar, y lo clasificó como planeta enano.</p>\r\n<hr /><hr title="Pagina 3" alt="Pagina 3" class="system-pagebreak" />\r\n<p style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: left;">¿Que es un Cúmulo Estelar?</p>\r\n<p style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;">Agrupación de estrellas que comparten el mismo origen y se encuentran juntas en una zona determinada del espacio. A diferencia de las constelaciones, los cúmulos son grupos naturales, formados por estrellas relacionadas entre sí y bastante próximas. Se distinguen dos tipos de cúmulos estelares; los cúmulos abiertos, formados por estrellas en número de varias decenas hasta miles, y los cúmulos globulares, que albergan desde 10.000 hasta un millón de estrellas.</p>', 1, 9, '2017-02-07 10:44:45', 502, '', '2017-02-14 14:36:18', 505, 0, '0000-00-00 00:00:00', '2017-02-07 10:44:45', '0000-00-00 00:00:00', '{"image_intro":"images\\/Aula_Ambiente\\/IMG_20170206_173816854.jpg","image_intro_alt":"","image_intro_caption":"Sistema Solar","float_intro":"","image_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":"","float_fulltext":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"0","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"","show_author":"","link_author":"0","show_create_date":"","show_modify_date":"0","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"_:default","show_publishing_options":"1","show_article_options":"1","show_urls_images_backend":"1","show_urls_images_frontend":"1"}', 26, 1, '', '', 1, 40, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(2, 76, 'Reseña Histórica', 'resena-historica', '<p align="justify"><span style="color: #000000;"><span style="font-family: Arial, serif;"><span style="font-size: medium;"><span lang="es-ES">En un principio esta unidad nace de la iniciativa del Prof. Argenis Marquina el cual comenta entre sus compañeros, colegas y estudiantes la idea maravillosa de tener dentro de nuestra universidad un área específica que sirviera como estrategia y herramienta pedagógica para la enseñanza de materias tales como: Geomorfología, Geografía de la Población, Geografía de Venezuela, Cartografía, Climatología, Ecología, Ambiente, y todas las relacionadas a la ciencia de la tierra e incluso algunas áreas de la historia donde se vinculan con las antes mencionadas.</span></span></span></span></p>\r\n<hr />\r\n<p lang="es-VE" align="justify"><span style="color: #000000;"><span style="font-family: Arial, serif;"><span style="font-size: medium;"><span lang="es-ES">En sus inicios presta apoyo directo al programa ciencias de la educación específicamente al subprograma geografía e historia, sin ser una condición de estrecha vinculación al mismo, puesto que dicha iniciativa fue creada para la universidad y no para un programa específico, prueba fehaciente de ello es que a partir del año 2.007 con la aprobación de la carrera Ingeniería De Petróleo, se incorpora a la unidad, las áreas del conocimiento Geología Física, Geología Petrolera e Hidrogeología conjuntamente con 2 profesores más: el Prof. Edgar Eduardo Pérez, quien va a tener la responsabilidad de administrar todo el material documental de la unidad, y el Prof. Franklin Bardog Vergara Orosco, quien funge como asistente de investigación del Prof. Argenis Marquina, siendo éstos el personal íntimo de dicha unidad.</span></span></span></span></p>\r\n<hr />\r\n<p lang="es-VE" align="justify"><span style="color: #000000;"><span style="font-family: Arial, serif;"><span style="font-size: medium;"><span lang="es-ES">El Aula Ambiente de Geografía posee a sus servicios personas de vital importancia como fue en sus inicios, y en la prosecución de sus objetivos, los cuales valen la pena mencionar: Dr. Cristian Casabogne Meger Megor, científico francés autor de infinidad de texto, especialmente del libro de Ciencias de la Tierra con el cual fueron formadas las generaciones de los año 80 en su formación de estudios diversificados, colaborador máximo en el área de geología y epónimo de la colección y muestra litográfica que reposan hoy tanto en el laboratorio de geología como en el Aula Ambiente de Geografía.</span></span></span></span></p>', '', 1, 22, '2017-02-09 06:44:28', 502, '', '2017-02-09 19:15:52', 503, 0, '0000-00-00 00:00:00', '2017-02-09 06:44:28', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"0","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"0","show_print_icon":"","show_email_icon":"","show_vote":"0","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, '', '', 1, 30, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 78, 'Planetario', 'planetario', '<hr />\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;"><img class="pull-right" style="border-width: 5px; margin: 5px;" src="images/Planetario/planetario.gif" width="500" height="400" /></p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">El planetario del Aula Ambiente de Geografía es un lugar dedicado a la presentación de espectáculos astronómicos, donde es posible observar recreaciones del cielo nocturno de Barinas y otros lugares de la Tierra en diferentes momentos del año, para facilitar el entendimiento de la dinámica del universo, sensibilizar a los observadores acerca de la fragilidad de nuestro planeta e incentivar la formación de actitudes ambientalistas”.</p>\r\n<p style="text-align: justify;">En este sentido, gracias a la gestión realizada desde el Aula Ambiente y al aporte de empresas privadas y el Centro de Investigaciones de Astronomía (CIDA) del estado Mérida, abre sus puertas el Planetario del Aula Ambiente de Geografía, ubicado en Barinas II.</p>', '', 1, 25, '2017-02-14 14:47:35', 502, '', '2017-02-17 06:31:16', 502, 0, '0000-00-00 00:00:00', '2017-02-14 14:47:35', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/PLANETARIO.jpg","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"0","link_titles":"0","show_tags":"0","show_intro":"0","info_block_position":"","info_block_show_title":"0","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"0","show_item_navigation":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_vote":"0","show_hits":"0","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 14, 0, '', '', 1, 17, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 80, 'Muestrarios', 'muestrarios', '<p>En la UNIDAD DE INVESTIGACIÓN AULA AMBIENTE DE GEOGRAFÍA contamos con una gran variedad de muestrarios de excelente material académico elaborados por estudiantes y profesores que hacen vida en el aula.</p>\r\n<p> </p>\r\n<p>En esta página te adelantamos algunos muestrarios que te puedes encontrar en el aula:</p>\r\n<hr title="Muestrario" alt="Muestrario 1" class="system-pagebreak" /><hr />\r\n<p>1) Muestrario de rocas</p>\r\n<p><img src="images/Aula_Ambiente/IMG_20170206_172905259_HDR.jpg" alt="" /></p>\r\n<p>Este muestrario esta ubicado en la oficina del aula ambiente y cuenta con una variedad de rocas metamórficas, ignéas y sedimentarias.</p>\r\n<hr title="Muestrarios" alt="Muestrario 2" class="system-pagebreak" />\r\n<p>2) Muestrarios de rocas - Recolección de una práctica de campo</p>\r\n<figure class="pull-center"><img title="Muestrario de rocas" src="images/Aula_Ambiente/IMG_20170206_173508021.jpg" alt="Muestrario de rocas" />\r\n<figcaption></figcaption>\r\n<figcaption>Este muestrario es producto de las actividades de campo realizadas en concordancia con la línea de investigación Geología Física. Podemos observar también el ciclo de las rocas.</figcaption>\r\n</figure>', '', 1, 26, '2017-02-17 05:23:34', 502, '', '2017-02-17 06:14:56', 502, 0, '0000-00-00 00:00:00', '2017-02-17 05:23:34', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/muestrarios-2.jpg","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"0","link_titles":"0","show_tags":"0","show_intro":"0","info_block_position":"","info_block_show_title":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_vote":"0","show_hits":"0","show_noauth":"0","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 16, 0, '', '', 1, 52, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 83, 'Cierre de Subproyecto: Geología Física', 'cierre-geologia-fisica', '<hr />\r\n<p style="padding-left: 60px;"><img style="display: block; margin-left: auto; margin-right: auto; border-width: 2px; width: 600px;" src="images/Eventos/cierre_de_subproyecto.png" alt="Equipo del subproyecto" width="609" height="454" /></p>\r\n<hr />\r\n<p style="text-align: justify;">Durante los días 22 y 23 de febrero la comunidad unellista del Aula Ambiente de Geografía estuvo muy activa por la participación en diversos eventos como lo fueron el cierre de subproyecto Geología Física donde se expuso la experiencia ganada de los estudiantes y profesores involucrados en este subproyecto durante todo el semestre y muy particularmente en la Gira Geológica realizada en el mes de noviembre por los Estados Merida, Barinas y Apure donde palparon y experimentaron todo lo relacionado a las diferentes formaciones y relieve de nuestra cuenca sedimentaria. Esto sucedió bajo la tutela del Prof. Franklin Vegara y en esta ocasión también participó la Prof. Sharon Escalante como invitada especial a la gira.</p>\r\n<p style="text-align: justify;"> </p>\r\n<blockquote>\r\n<p style="text-align: justify;">El aprendizaje es experiencia, todo lo demás es información  -Albert Einstein</p>\r\n</blockquote>', '', 1, 27, '2017-03-06 09:45:22', 502, '', '2017-03-09 06:00:31', 505, 0, '0000-00-00 00:00:00', '2017-03-06 09:45:22', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 1, '', '', 1, 12, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 87, 'Columnas Estratigráficas de las Cuencas de Venezuela', 'columnas-estratigraficas-de-las-cuencas-de-venezuela', '<p>En el marco de entrega de la asignación de columnas estratigráficas del subproyecto geología petrolera, se dio a conocer el producto creativo elaborado por los alumnos. Un gran ejemplo de nuestra unidad de investigación aula ambiente de geografía.</p>\r\n<hr />\r\n<p><img src="images/IMG_20170306_094733457.jpg" alt="" /></p>\r\n<hr />\r\n<p> </p>', '', 1, 27, '2017-03-09 05:57:04', 505, '', '2017-03-09 05:59:58', 505, 0, '0000-00-00 00:00:00', '2017-03-09 01:45:14', '0000-00-00 00:00:00', '{}', '{}', '{}', 4, 0, '', '', 1, 31, '{}', 0, '*', ''),
(7, 90, 'Citas', 'citas', '<div style="width: 600px;"><form class="form-horizontal">\r\n<div class="form-group">\r\n<div class="col-sm-10"><select class="form-control" name="rol" required="required">\r\n<option>--Seleccione</option>\r\n<option>Público en general</option>\r\n<option>Administrativo</option>\r\n<option>Investigador</option>\r\n<option>Profesor</option>\r\n<option>Estudiante</option>\r\n</select></div>\r\n</div>\r\n<div class="form-group">\r\n<div class="col-sm-10"><input class="form-control" name="nombre" required="required" type="text" placeholder="Nombre" /></div>\r\n</div>\r\n<div class="form-group">\r\n<div class="col-sm-10"><input class="form-control" name="cedula" required="required" type="text" placeholder="Cedula" /></div>\r\n</div>\r\n<div class="form-group col-md-10"><label class="col-sm-10 contro-label" for="espacio">Espacio a solicitar/visitar</label><select class="form-control" name="espacio" required="required">\r\n<option>--Seleccione</option>\r\n<option>Planetario</option>\r\n<option>Salón del planetario</option>\r\n<option>Aula de clases</option>\r\n<option>Oficina</option>\r\n</select></div>\r\n<div class="form-group">\r\n<div class="col-sm-10"><textarea class="form-control" name="descripcion" required="required" rows="5" placeholder="Descripcion"></textarea></div>\r\n</div>\r\n<div class="form-group"><label class="contro-label col-sm-2">El dia: </label>\r\n<div class="col-sm-10"><input class="form-control" name="fecha" required="required" type="date" /></div>\r\n</div>\r\n<div class="form-group row"><label class="contro-label col-sm-2">Desde: </label>\r\n<div class="col-sm-4"><input class="form-control" name="desde_fecha" required="required" type="time" /></div>\r\n<label class="contro-label col-sm-2">Hasta: </label>\r\n<div class="col-sm-4"><input class="form-control" name="hasta_fecha" required="required" type="time" /></div>\r\n</div>\r\n<div class="col-sm-offset-2 col-sm-10"><button class="btn btn-default" type="submit">Agregar</button></div>\r\n</form></div>', '', 1, 28, '2017-03-20 05:13:42', 502, '', '2017-11-01 14:24:00', 502, 502, '2017-11-01 14:45:59', '2017-03-20 05:13:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 11, 0, '', '', 1, 15, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `cyfwe_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

--
-- Volcado de datos para la tabla `cyfwe_contentitem_tag_map`
--

INSERT INTO `cyfwe_contentitem_tag_map` (`type_alias`, `core_content_id`, `content_item_id`, `tag_id`, `tag_date`, `type_id`) VALUES
('com_content.article', 1, 5, 2, '2017-03-09 06:00:31', 1),
('com_content.article', 1, 5, 3, '2017-03-09 06:00:31', 1),
('com_content.article', 2, 6, 3, '2017-03-09 05:59:58', 1),
('com_content.article', 2, 6, 4, '2017-03-09 05:59:58', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `cyfwe_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cyfwe_content_frontpage`
--

INSERT INTO `cyfwe_content_frontpage` (`content_id`, `ordering`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_content_rating`
--

CREATE TABLE IF NOT EXISTS `cyfwe_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_content_types`
--

CREATE TABLE IF NOT EXISTS `cyfwe_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `cyfwe_content_types`
--

INSERT INTO `cyfwe_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `cyfwe_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_extensions`
--

CREATE TABLE IF NOT EXISTS `cyfwe_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=819 ;

--
-- Volcado de datos para la tabla `cyfwe_extensions`
--

INSERT INTO `cyfwe_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"contact_layout":"_:default","show_contact_category":"show_with_link","save_history":"1","history_limit":10,"show_contact_list":"1","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"images\\/Aula_Ambiente\\/IMG_20170206_174328555.jpg","allow_vcard":"0","show_articles":"0","articles_display_num":"10","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_tags":"1","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"-1","show_subcat_desc":"1","show_empty_categories":"0","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_subcat_desc_cat":"1","show_empty_categories_cat":"0","show_cat_items_cat":"1","filter_field":"0","show_pagination_limit":"0","show_headings":"1","show_image_heading":"0","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_pagination":"2","show_pagination_results":"1","initial_sort":"ordering","captcha":"","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"es-CO"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{"redirect_edit":"admin"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1","upload_limit":"10","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css,scss,yaml,twig","font_formats":"woff,ttf,otf,eot,svg","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{"mode":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"2","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"5","reset_time":"2","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"Aula Ambiente - UNELLEZ","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"LIB_PHPUTF8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"LIB_JOOMLA","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"b3e837ad15ab96c37b388508917c6e73"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"LIB_IDNA","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"LIB_PHPASS","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.18.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2016","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.4.3","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"skin":"0","skin_admin":"0","mode":"2","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","resize_horizontal":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","image_advtab":"1","code_sample":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `cyfwe_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1509541488}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"mode":1,"lastrun":1509545674,"unique_id":"557f086b8c1a842aba31bd5271612e25cae7e394","interval":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{"name":"plg_installer_packageinstaller","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"packageinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_FOLDERINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"folderinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_URLINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"urlinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"December 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.5","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"December 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.5","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"December 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.5","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB) Language Pack","type":"package","creationDate":"December 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.5.1","description":"en-GB language pack","group":"","filename":"pkg_en-GB"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(803, 'Espaoles-CO', 'language', 'es-CO', '', 0, 1, 0, 1, '{"name":"Espa\\u00f1ol (es-CO)","type":"language","creationDate":"2017-10-05","author":"JUG Bogot\\u00e1","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"info@jugbogota.org","authorUrl":"jugbogota.org","version":"3.8.1.1","description":"idioma del sitio es-CO","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(804, 'Espaoles-CO', 'language', 'es-CO', '', 1, 1, 0, 1, '{"name":"Espa\\u00f1ol (es-CO)","type":"language","creationDate":"2017-10-05","author":"JUG Bogot\\u00e1","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"info@jugbogota.org","authorUrl":"jugbogota.org","version":"3.8.1.1","description":"idioma del administrador es-CO","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(805, 'Spanish-Colombia (es-CO) Language Pack', 'package', 'pkg_es-CO', '', 0, 1, 1, 0, '{"name":"Spanish-Colombia (es-CO) Language Pack","type":"package","creationDate":"2017-10-05","author":"JUG Bogot\\u00e1","copyright":"","authorEmail":"info@jugbogota.org","authorUrl":"jugbogota.org","version":"3.8.1.1","description":"Paquete de idioma espa\\u00f1ol colombiano (es-CO)","group":"","filename":"pkg_es-CO"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(806, 'plg_system_gantry5', 'plugin', 'gantry5', 'system', 0, 1, 1, 1, '{"name":"plg_system_gantry5","type":"plugin","creationDate":"October 18, 2017","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2017 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"5.4.19","description":"PLG_SYSTEM_GANTRY5_DESCRIPTION","group":"","filename":"gantry5"}', '{"production":"1","use_media_folder":"0","asset_timestamps":"1","asset_timestamps_period":"7","compile_yaml":"1","compile_twig":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(807, 'plg_quickicon_gantry5', 'plugin', 'gantry5', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_gantry5","type":"plugin","creationDate":"October 18, 2017","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2017 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"5.4.19","description":"PLG_QUICKICON_GANTRY5_DESCRIPTION","group":"","filename":"gantry5"}', '{"context":"mod_quickicon"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(808, 'plg_gantry5_preset', 'plugin', 'preset', 'gantry5', 0, 0, 1, 1, '{"name":"plg_gantry5_preset","type":"plugin","creationDate":"October 18, 2017","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2017 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"5.4.19","description":"PLG_GANTRY5_PRESET_DESCRIPTION","group":"","filename":"preset"}', '{"preset":"presets","reset":"reset-settings"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(809, 'mod_gantry5_particle', 'module', 'mod_gantry5_particle', '', 0, 1, 0, 1, '{"name":"mod_gantry5_particle","type":"module","creationDate":"October 18, 2017","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2017 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"5.4.19","description":"MOD_GANTRY5_PARTICLE_DESCRIPTION","group":"","filename":"mod_gantry5_particle"}', '{"owncache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(811, 'gantry5_nucleus', 'file', 'gantry5_nucleus', '', 0, 1, 0, 1, '{"name":"gantry5_nucleus","type":"file","creationDate":"October 18, 2017","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2017 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"5.4.19","description":"GANTRY5_NUCLEUS_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(812, 'com_gantry5', 'component', 'com_gantry5', '', 1, 1, 0, 1, '{"name":"com_gantry5","type":"component","creationDate":"October 18, 2017","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2017 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"5.4.19","description":"COM_GANTRY5_DESCRIPTION","group":"","filename":"gantry5"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(813, 'pkg_gantry5', 'package', 'pkg_gantry5', '', 0, 1, 1, 0, '{"name":"pkg_gantry5","type":"package","creationDate":"October 18, 2017","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2017 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"5.4.19","description":"PKG_GANTRY5_DESCRIPTION","group":"","filename":"pkg_gantry5"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(814, 'jl_learnmate_free', 'template', 'jl_learnmate_free', '', 0, 1, 1, 0, '{"name":"jl_learnmate_free","type":"template","creationDate":"January 4, 2017","author":"JoomLead","copyright":"(C) 2015 - 2016 JoomLead. All rights reserved.","authorEmail":"support@joomlead.com","authorUrl":"http:\\/\\/www.joomlead.com","version":"1.0.0","description":"TPL_JL_LEARNMATE_FREE_DESC","group":"","filename":"templateDetails"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(818, 'Gantry 5 Framework', 'library', 'gantry5', '', 0, 1, 1, 1, '{"name":"Gantry 5 Framework","type":"library","creationDate":"October 18, 2017","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2017 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"5.4.19","description":"LIB_GANTRY5_DESCRIPTION","group":"","filename":"gantry5"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_finder_filters`
--

CREATE TABLE IF NOT EXISTS `cyfwe_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_finder_links`
--

CREATE TABLE IF NOT EXISTS `cyfwe_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `cyfwe_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `cyfwe_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `cyfwe_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `cyfwe_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `cyfwe_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `cyfwe_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `cyfwe_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `cyfwe_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `cyfwe_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `cyfwe_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `cyfwe_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `cyfwe_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `cyfwe_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `cyfwe_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `cyfwe_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `cyfwe_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `cyfwe_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `cyfwe_finder_taxonomy`
--

INSERT INTO `cyfwe_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `cyfwe_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_finder_terms`
--

CREATE TABLE IF NOT EXISTS `cyfwe_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `cyfwe_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cyfwe_finder_terms_common`
--

INSERT INTO `cyfwe_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `cyfwe_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `cyfwe_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_finder_types`
--

CREATE TABLE IF NOT EXISTS `cyfwe_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_languages`
--

CREATE TABLE IF NOT EXISTS `cyfwe_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `cyfwe_languages`
--

INSERT INTO `cyfwe_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_menu`
--

CREATE TABLE IF NOT EXISTS `cyfwe_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=145 ;

--
-- Volcado de datos para la tabla `cyfwe_menu`
--

INSERT INTO `cyfwe_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 87, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1),
(101, 'mainmenu', 'Inicio', 'inicio', '', 'inicio', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 9, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"aula ambiente unellez inicio bienvenida","menu-meta_keywords":"aula ambiente unellez inicio bienvenida","robots":"","secure":0}', 39, 40, 1, '*', 0),
(102, 'mainmenu', 'Aula', 'aula', '', 'aula', 'index.php?option=com_content&view=category&id=19', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title_text":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_featured":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 52, 0, '*', 0),
(103, 'mainmenu', 'Objetivos', 'objetivos', '', 'aula/objetivos', 'index.php?option=com_content&view=category&id=23', 'component', 1, 102, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title_text":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_featured":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 42, 43, 0, '*', 0),
(107, 'mainmenu', 'Misión', 'mision', '', 'aula/mision', 'index.php?option=com_content&view=category&id=20', 'component', 1, 102, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title_text":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_featured":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 44, 45, 0, '*', 0),
(108, 'mainmenu', 'Visión', 'vision', '', 'aula/vision', 'index.php?option=com_content&view=category&id=21', 'component', 1, 102, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title_text":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_featured":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 46, 47, 0, '*', 0),
(109, 'mainmenu', 'Reseña Histórica', 'resena-historica', '', 'aula/resena-historica', 'index.php?option=com_content&view=article&id=2', 'component', 1, 102, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"0","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 48, 49, 0, '*', 0),
(110, 'mainmenu', 'Autoridades', 'autoridades', '', 'aula/autoridades', 'index.php?option=com_content&view=category&id=24', 'component', 1, 102, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title_text":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_featured":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 50, 51, 0, '*', 0),
(111, 'mainmenu', 'INVESTIGACIÓN Y EXTENSIÓN', 'investigacion-y-extension', '', 'investigacion-y-extension', 'index.php?option=com_content&view=category&id=18', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title_text":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_featured":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 53, 54, 0, '*', 0),
(112, 'mainmenu', 'NOTICIAS', 'noticias', '', 'noticias', 'index.php?option=com_content&view=category&id=16', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title_text":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_featured":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 55, 56, 0, '*', 0),
(113, 'mainmenu', 'ASIGNATURAS', 'asignaturas', '', 'asignaturas', 'index.php?option=com_content&view=category&id=15', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title_text":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_featured":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 57, 72, 0, '*', 0),
(114, 'mainmenu', 'Geología', 'geologia', '', 'asignaturas/geologia', 'index.php?option=com_content&view=category&id=2', 'component', 1, 113, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title_text":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_featured":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 58, 63, 0, '*', 0),
(115, 'mainmenu', 'Geología Físca', 'geologia-fisca', '', 'asignaturas/geologia/geologia-fisca', 'index.php?option=com_content&view=category&id=9', 'component', 1, 114, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title_text":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_featured":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 59, 60, 0, '*', 0),
(116, 'mainmenu', 'Geología Petrolera', 'geologia-petrolera', '', 'asignaturas/geologia/geologia-petrolera', 'index.php?option=com_content&view=category&id=10', 'component', 1, 114, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title_text":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_featured":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 61, 62, 0, '*', 0),
(117, 'mainmenu', 'Perforación I', 'perforacion', '', 'asignaturas/perforacion', 'index.php?option=com_content&view=category&id=11', 'component', 1, 113, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title_text":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_featured":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 64, 65, 0, '*', 0),
(118, 'mainmenu', 'Perforación II', 'perforacion-ii', '', 'asignaturas/perforacion-ii', 'index.php?option=com_content&view=category&id=12', 'component', 1, 113, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title_text":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_featured":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 66, 67, 0, '*', 0),
(119, 'mainmenu', 'Yacimientos I', 'yacimientos-i', '', 'asignaturas/yacimientos-i', 'index.php?option=com_content&view=category&id=13', 'component', 1, 113, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title_text":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_featured":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 68, 69, 0, '*', 0),
(120, 'mainmenu', 'Facilidades de Superficie', 'facilidades-de-superficie', '', 'asignaturas/facilidades-de-superficie', 'index.php?option=com_content&view=category&id=14', 'component', 1, 113, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title_text":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_featured":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 70, 71, 0, '*', 0),
(130, 'mainmenu', 'Reservar', 'reservar', '', 'reservar', 'index.php?option=com_gantry5&view=custom', 'component', 1, 1, 1, 812, 0, '0000-00-00 00:00:00', 0, 1, ' ', 9, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"custom\\",\\"title\\":\\"Custom HTML\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"html\\":\\"<!DOCTYPE html>\\\\n<html>\\\\n\\\\n<body>\\\\n\\\\n<p>Programar cita para el uso\\\\\\/visita del Aula Ambiente<\\\\\\/p>\\\\n<p>Para utilizar nuestro espacio f\\u00edsico o realizar una visita debes enviarnos una solicitud que con gusto ser\\u00e1 atendida. Es un placer servirles!<\\\\\\/p>\\\\n<div>\\\\n\\\\t<button class=\\\\\\"btn btn-default\\\\\\" onclick=\\\\\\"window.location.href=''reservar\\\\\\/solicitar-espacio''\\\\\\">Agregar Cita<\\\\\\/button>\\\\n<\\\\\\/div>\\\\n\\\\n<\\\\\\/body>\\\\n<\\\\\\/html>\\",\\"twig\\":\\"0\\",\\"filter\\":\\"0\\"}}}","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 73, 80, 0, '*', 0),
(131, 'mainmenu', 'Solicitar espacio', 'solicitar-espacio', '', 'reservar/solicitar-espacio', 'index.php?option=com_gantry5&view=custom', 'component', 1, 130, 2, 812, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"custom\\",\\"title\\":\\"Custom HTML\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"html\\":\\"<div align=\\\\\\"center\\\\\\">\\\\n<div style=\\\\\\"width: 600px;\\\\\\"><form class=\\\\\\"form-horizontal\\\\\\" method=\\\\\\"POST\\\\\\" action=\\\\\\"\\/control_citas\\/agregar_cita.php\\\\\\">\\\\n<div class=\\\\\\"form-group\\\\\\">\\\\n<div class=\\\\\\"col-sm-10\\\\\\"><select class=\\\\\\"form-control\\\\\\" name=\\\\\\"rol\\\\\\" required=\\\\\\"required\\\\\\">\\\\n<option>--Seleccione<\\/option>\\\\n<option>Publico en general<\\/option>\\\\n<option>Administrativo<\\/option>\\\\n<option>Investigador<\\/option>\\\\n<option>Profesor<\\/option>\\\\n<option>Estudiante<\\/option>\\\\n<\\/select><\\/div>\\\\n<\\/div><br>\\\\n<div class=\\\\\\"form-group\\\\\\">\\\\n<div class=\\\\\\"col-sm-10\\\\\\"><input class=\\\\\\"form-control\\\\\\" name=\\\\\\"nombre\\\\\\" required=\\\\\\"required\\\\\\" type=\\\\\\"text\\\\\\" placeholder=\\\\\\"Nombre\\\\\\" \\/><\\/div>\\\\n<\\/div><br>\\\\n<div class=\\\\\\"form-group\\\\\\">\\\\n<div class=\\\\\\"col-sm-10\\\\\\"><input class=\\\\\\"form-control\\\\\\" name=\\\\\\"telefono\\\\\\" required=\\\\\\"required\\\\\\" type=\\\\\\"text\\\\\\" placeholder=\\\\\\"Tel\\u00e9fono\\\\\\" \\/><\\/div>\\\\n<\\/div><br>\\\\n<div class=\\\\\\"form-group col-md-10\\\\\\"><label class=\\\\\\"col-sm-10 contro-label\\\\\\" for=\\\\\\"espacio\\\\\\">Espacio a solicitar\\/visitar<\\/label>\\\\n\\\\n<select class=\\\\\\"form-control\\\\\\" name=\\\\\\"espacio\\\\\\" required=\\\\\\"required\\\\\\">\\\\n<option>--Seleccione<\\/option>\\\\n<option>Planetario<\\/option>\\\\n<option>Salon del planetario<\\/option>\\\\n<option>Aula de clases<\\/option>\\\\n<option>Oficina<\\/option>\\\\n<\\/select>\\\\n\\\\n<\\/div><br>\\\\n<div class=\\\\\\"form-group\\\\\\">\\\\n<div class=\\\\\\"col-sm-10\\\\\\"><textarea class=\\\\\\"form-control\\\\\\" name=\\\\\\"descripcion\\\\\\" required=\\\\\\"required\\\\\\" rows=\\\\\\"5\\\\\\" placeholder=\\\\\\"Descripcion\\\\\\"><\\/textarea><\\/div>\\\\n<\\/div>\\\\n<div class=\\\\\\"form-group\\\\\\"><label class=\\\\\\"contro-label col-sm-2\\\\\\">El dia: <\\/label>\\\\n<div class=\\\\\\"col-sm-10\\\\\\"><input class=\\\\\\"form-control\\\\\\" name=\\\\\\"fecha\\\\\\" required=\\\\\\"required\\\\\\" type=\\\\\\"date\\\\\\" \\/><\\/div>\\\\n<\\/div>\\\\n\\\\n<div class=\\\\\\"form-group row\\\\\\"><label class=\\\\\\"contro-label col-sm-2\\\\\\">Desde: <\\/label>\\\\n<div class=\\\\\\"col-sm-4\\\\\\">\\\\n<select class=\\\\\\"form-control\\\\\\" name=\\\\\\"desde_fecha\\\\\\" required=\\\\\\"required\\\\\\">\\\\n\\\\t<option>Seleccione<\\/option>\\\\n\\\\t<option>Ma\\u00f1ana<\\/option>\\\\n\\\\t<option>07:00<\\/option>\\\\n\\\\t<option>08:00<\\/option>\\\\n\\\\t<option>09:00<\\/option>\\\\n\\\\t<option>10:00<\\/option>\\\\n\\\\t<option>11:00<\\/option>\\\\n\\\\t<option>Tarde<\\/option>\\\\n\\\\t<option>14:00<\\/option>\\\\n\\\\t<option>15:00<\\/option>\\\\n\\\\t<option>16:00<\\/option>\\\\n\\\\t<option>17:00<\\/option>\\\\n<\\/select>\\\\n<\\/div>\\\\n<label class=\\\\\\"contro-label col-sm-2\\\\\\">Hasta: <\\/label>\\\\n<div class=\\\\\\"col-sm-4\\\\\\">\\\\n<select class=\\\\\\"form-control\\\\\\" name=\\\\\\"hasta_fecha\\\\\\" required=\\\\\\"required\\\\\\">\\\\n\\\\t<option>Seleccione<\\/option>\\\\n\\\\t<option>Ma\\u00f1ana<\\/option>\\\\n\\\\t<option>08:00<\\/option>\\\\n\\\\t<option>09:00<\\/option>\\\\n\\\\t<option>10:00<\\/option>\\\\n\\\\t<option>11:00<\\/option>\\\\n\\\\t<option>12:00<\\/option>\\\\n\\\\t<option>Tarde<\\/option>\\\\n\\\\t<option>15:00<\\/option>\\\\n\\\\t<option>16:00<\\/option>\\\\n\\\\t<option>17:00<\\/option>\\\\n\\\\t<option>18:00<\\/option>\\\\n<\\/select>\\\\n<\\/div>\\\\n<\\/div>\\\\n\\\\n\\\\n<br>\\\\n<div class=\\\\\\"col-sm-offset-2 col-sm-10\\\\\\"><button class=\\\\\\"btn btn-default\\\\\\" type=\\\\\\"submit\\\\\\">Agregar<\\/button><\\/div>\\\\n<\\/form><\\/div><\\/div>\\",\\"twig\\":\\"0\\",\\"filter\\":\\"0\\"}}}","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 74, 75, 0, '*', 0),
(132, 'mainmenu', 'Ver agenda', 'ver-agenda', '', 'reservar/ver-agenda', '/control_citas/ver_citas.php', 'url', 1, 130, 2, 0, 502, '2017-03-21 04:16:11', 0, 2, ' ', 9, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_text":1,"menu_show":1}', 78, 79, 0, '*', 0),
(141, 'mainmenu', 'Solicitar espacio (2)', 'solicitar-espacio-2', '', 'reservar/solicitar-espacio-2', 'index.php?option=com_gantry5&view=custom', 'component', -2, 130, 2, 812, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"custom\\",\\"title\\":\\"Custom HTML\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"html\\":\\"<div align=\\\\\\"center\\\\\\">\\\\n<div style=\\\\\\"width: 600px;\\\\\\"><form class=\\\\\\"form-horizontal\\\\\\" method=\\\\\\"POST\\\\\\" action=\\\\\\"\\\\\\/control_citas\\\\\\/agregar_cita.php\\\\\\">\\\\n<div class=\\\\\\"form-group\\\\\\">\\\\n<div class=\\\\\\"col-sm-10\\\\\\"><select class=\\\\\\"form-control\\\\\\" name=\\\\\\"rol\\\\\\" required=\\\\\\"required\\\\\\">\\\\n<option>--Seleccione<\\\\\\/option>\\\\n<option>Publico en general<\\\\\\/option>\\\\n<option>Administrativo<\\\\\\/option>\\\\n<option>Investigador<\\\\\\/option>\\\\n<option>Profesor<\\\\\\/option>\\\\n<option>Estudiante<\\\\\\/option>\\\\n<\\\\\\/select><\\\\\\/div>\\\\n<\\\\\\/div><br>\\\\n<div class=\\\\\\"form-group\\\\\\">\\\\n<div class=\\\\\\"col-sm-10\\\\\\"><input class=\\\\\\"form-control\\\\\\" name=\\\\\\"nombre\\\\\\" required=\\\\\\"required\\\\\\" type=\\\\\\"text\\\\\\" placeholder=\\\\\\"Nombre\\\\\\" \\\\\\/><\\\\\\/div>\\\\n<\\\\\\/div><br>\\\\n<div class=\\\\\\"form-group\\\\\\">\\\\n<div class=\\\\\\"col-sm-10\\\\\\"><input class=\\\\\\"form-control\\\\\\" name=\\\\\\"telefono\\\\\\" required=\\\\\\"required\\\\\\" type=\\\\\\"text\\\\\\" placeholder=\\\\\\"Tel\\u00e9fono\\\\\\" \\\\\\/><\\\\\\/div>\\\\n<\\\\\\/div><br>\\\\n<div class=\\\\\\"form-group col-md-10\\\\\\"><label class=\\\\\\"col-sm-10 contro-label\\\\\\" for=\\\\\\"espacio\\\\\\">Espacio a solicitar\\\\\\/visitar<\\\\\\/label>\\\\n\\\\n<select class=\\\\\\"form-control\\\\\\" name=\\\\\\"espacio\\\\\\" required=\\\\\\"required\\\\\\">\\\\n<option>--Seleccione<\\\\\\/option>\\\\n<option>Planetario<\\\\\\/option>\\\\n<option>Salon del planetario<\\\\\\/option>\\\\n<option>Aula de clases<\\\\\\/option>\\\\n<option>Oficina<\\\\\\/option>\\\\n<\\\\\\/select>\\\\n\\\\n<\\\\\\/div><br>\\\\n<div class=\\\\\\"form-group\\\\\\">\\\\n<div class=\\\\\\"col-sm-10\\\\\\"><textarea class=\\\\\\"form-control\\\\\\" name=\\\\\\"descripcion\\\\\\" required=\\\\\\"required\\\\\\" rows=\\\\\\"5\\\\\\" placeholder=\\\\\\"Descripcion\\\\\\"><\\\\\\/textarea><\\\\\\/div>\\\\n<\\\\\\/div>\\\\n<div class=\\\\\\"form-group\\\\\\"><label class=\\\\\\"contro-label col-sm-2\\\\\\">El dia: <\\\\\\/label>\\\\n<div class=\\\\\\"col-sm-10\\\\\\"><input class=\\\\\\"form-control\\\\\\" name=\\\\\\"fecha\\\\\\" required=\\\\\\"required\\\\\\" type=\\\\\\"date\\\\\\" \\\\\\/><\\\\\\/div>\\\\n<\\\\\\/div>\\\\n\\\\n<div class=\\\\\\"form-group row\\\\\\"><label class=\\\\\\"contro-label col-sm-2\\\\\\">Desde: <\\\\\\/label>\\\\n<div class=\\\\\\"col-sm-4\\\\\\">\\\\n<select class=\\\\\\"form-control\\\\\\" name=\\\\\\"desde_fecha\\\\\\" required=\\\\\\"required\\\\\\">\\\\n\\\\t<option>Seleccione<\\\\\\/option>\\\\n\\\\t<option>Ma\\u00f1ana<\\\\\\/option>\\\\n\\\\t<option>07:00<\\\\\\/option>\\\\n\\\\t<option>08:00<\\\\\\/option>\\\\n\\\\t<option>09:00<\\\\\\/option>\\\\n\\\\t<option>10:00<\\\\\\/option>\\\\n\\\\t<option>11:00<\\\\\\/option>\\\\n\\\\t<option>Tarde<\\\\\\/option>\\\\n\\\\t<option>14:00<\\\\\\/option>\\\\n\\\\t<option>15:00<\\\\\\/option>\\\\n\\\\t<option>16:00<\\\\\\/option>\\\\n\\\\t<option>17:00<\\\\\\/option>\\\\n<\\\\\\/select>\\\\n<\\\\\\/div>\\\\n<label class=\\\\\\"contro-label col-sm-2\\\\\\">Hasta: <\\\\\\/label>\\\\n<div class=\\\\\\"col-sm-4\\\\\\">\\\\n<select class=\\\\\\"form-control\\\\\\" name=\\\\\\"hasta_fecha\\\\\\" required=\\\\\\"required\\\\\\">\\\\n\\\\t<option>Seleccione<\\\\\\/option>\\\\n\\\\t<option>Ma\\u00f1ana<\\\\\\/option>\\\\n\\\\t<option>08:00<\\\\\\/option>\\\\n\\\\t<option>09:00<\\\\\\/option>\\\\n\\\\t<option>10:00<\\\\\\/option>\\\\n\\\\t<option>11:00<\\\\\\/option>\\\\n\\\\t<option>12:00<\\\\\\/option>\\\\n\\\\t<option>Tarde<\\\\\\/option>\\\\n\\\\t<option>15:00<\\\\\\/option>\\\\n\\\\t<option>16:00<\\\\\\/option>\\\\n\\\\t<option>17:00<\\\\\\/option>\\\\n\\\\t<option>18:00<\\\\\\/option>\\\\n<\\\\\\/select>\\\\n<\\\\\\/div>\\\\n<\\\\\\/div>\\\\n\\\\n\\\\n<br>\\\\n<div class=\\\\\\"col-sm-offset-2 col-sm-10\\\\\\"><button class=\\\\\\"btn btn-default\\\\\\" type=\\\\\\"submit\\\\\\">Agregar<\\\\\\/button><\\\\\\/div>\\\\n<\\\\\\/form><\\\\\\/div><\\\\\\/div>\\",\\"twig\\":\\"0\\",\\"filter\\":\\"0\\"}}}","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 76, 77, 0, '*', 0),
(142, 'main', 'COM_GANTRY5', 'com-gantry5', '', 'com-gantry5', 'index.php?option=com_gantry5', 'component', 0, 1, 1, 812, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 81, 86, 0, '', 1),
(143, 'main', 'COM_GANTRY5_ADMIN_MENU_THEMES', 'com-gantry5-admin-menu-themes', '', 'com-gantry5/com-gantry5-admin-menu-themes', 'index.php?option=com_gantry5&view=themes', 'component', 0, 142, 2, 812, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 82, 83, 0, '', 1),
(144, 'main', 'COM_GANTRY5_ADMIN_MENU_THEME', 'com-gantry5-admin-menu-theme', '', 'com-gantry5/com-gantry5-admin-menu-theme', 'index.php?option=com_gantry5', 'component', 0, 142, 2, 812, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 84, 85, 0, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_menu_types`
--

CREATE TABLE IF NOT EXISTS `cyfwe_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `cyfwe_menu_types`
--

INSERT INTO `cyfwe_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`) VALUES
(1, 54, 'mainmenu', 'Main Menu', 'Menú principal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_messages`
--

CREATE TABLE IF NOT EXISTS `cyfwe_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `cyfwe_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_modules`
--

CREATE TABLE IF NOT EXISTS `cyfwe_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=93 ;

--
-- Volcado de datos para la tabla `cyfwe_modules`
--

INSERT INTO `cyfwe_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Menú Principal', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '2017-02-07 10:05:52', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"Beez3-beezHide"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Iniciar Sesión', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '2017-02-16 04:28:26', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"0","cache_time":"0","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 55, 'Buscar', '', '', 1, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"Buscar","width":"20","text":"F\\u00f3siles","button":"1","button_pos":"right","imagebutton":"0","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 74, 'Carousel', '', '', 1, 'position-3', 0, '0000-00-00 00:00:00', '2017-02-09 06:18:31', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"owlcarousel\\",\\"title\\":\\"Owl Carousel\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"\\",\\"title\\":\\"\\",\\"nav\\":\\"enable\\",\\"dots\\":\\"enable\\",\\"autoplay\\":\\"enable\\",\\"autoplaySpeed\\":\\"\\",\\"imageOverlay\\":\\"disable\\",\\"items\\":[{\\"image\\":\\"gantry-media:\\\\\\/\\\\\\/Aula_Ambiente\\\\\\/IMG_20170206_172905259_HDR.jpg\\",\\"title\\":\\"Muestrario de rocas\\",\\"desc\\":\\"\\",\\"link\\":\\"\\",\\"linktext\\":\\"\\",\\"buttonclass\\":\\"button-outline\\",\\"name\\":\\"Muestrario\\"},{\\"image\\":\\"gantry-media:\\\\\\/\\\\\\/Aula_Ambiente\\\\\\/IMG_20170206_173745375.jpg\\",\\"title\\":\\"Rocas\\",\\"desc\\":\\"\\",\\"link\\":\\"\\",\\"linktext\\":\\"\\",\\"buttonclass\\":\\"button-outline\\",\\"name\\":\\"Rocas\\"},{\\"image\\":\\"gantry-media:\\\\\\/\\\\\\/Aula_Ambiente\\\\\\/IMG_20170206_173210135.jpg\\",\\"title\\":\\"Cuenca Barinas-Apure\\",\\"desc\\":\\"\\",\\"link\\":\\"\\",\\"linktext\\":\\"\\",\\"buttonclass\\":\\"button-outline\\",\\"name\\":\\"Cuenca\\"}]}}}","moduleclass_sfx":"","owncache":"0","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(89, 79, 'Subir', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"totop\\",\\"title\\":\\"To Top\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"css\\":{\\"class\\":\\"totop\\"},\\"icon\\":\\"fa fa-chevron-circle-up\\",\\"content\\":\\"\\"}}}","moduleclass_sfx":"","owncache":"0","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 82, 'Carousel (2)', '', '', 1, 'position-3', 0, '0000-00-00 00:00:00', '2017-02-09 06:18:31', '0000-00-00 00:00:00', -2, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"owlcarousel\\",\\"title\\":\\"Owl Carousel\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"\\",\\"title\\":\\"\\",\\"nav\\":\\"enable\\",\\"dots\\":\\"enable\\",\\"autoplay\\":\\"enable\\",\\"autoplaySpeed\\":\\"\\",\\"imageOverlay\\":\\"disable\\",\\"items\\":[{\\"image\\":\\"gantry-media:\\\\\\/\\\\\\/Aula_Ambiente\\\\\\/IMG_20170206_172905259_HDR.jpg\\",\\"title\\":\\"Muestrario de rocas\\",\\"desc\\":\\"\\",\\"link\\":\\"\\",\\"linktext\\":\\"\\",\\"buttonclass\\":\\"button-outline\\",\\"name\\":\\"Muestrario\\"},{\\"image\\":\\"gantry-media:\\\\\\/\\\\\\/Aula_Ambiente\\\\\\/IMG_20170206_173745375.jpg\\",\\"title\\":\\"Rocas\\",\\"desc\\":\\"\\",\\"link\\":\\"\\",\\"linktext\\":\\"\\",\\"buttonclass\\":\\"button-outline\\",\\"name\\":\\"Rocas\\"},{\\"image\\":\\"gantry-media:\\\\\\/\\\\\\/Aula_Ambiente\\\\\\/IMG_20170206_173210135.jpg\\",\\"title\\":\\"Cuenca Barinas-Apure\\",\\"desc\\":\\"\\",\\"link\\":\\"\\",\\"linktext\\":\\"\\",\\"buttonclass\\":\\"button-outline\\",\\"name\\":\\"Cuenca\\"}]}}}","moduleclass_sfx":"","owncache":"0","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 85, 'Contacto', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 1, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"sidemenu\\",\\"title\\":\\"Side Menu\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"menu\\":\\"mainmenu\\",\\"base\\":\\"\\\\\\/\\",\\"startLevel\\":\\"1\\",\\"maxLevels\\":\\"0\\"}}}","moduleclass_sfx":"","owncache":"0","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 91, 'citas', '', '<div style="width: 600px;"><form class="form-horizontal">\r\n<div class="form-group">\r\n<div class="col-sm-10"><select class="form-control" name="rol" required="required">\r\n<option>--Seleccione</option>\r\n<option>Público en general</option>\r\n<option>Administrativo</option>\r\n<option>Investigador</option>\r\n<option>Profesor</option>\r\n<option>Estudiante</option>\r\n</select></div>\r\n</div>\r\n<div class="form-group">\r\n<div class="col-sm-10"><input class="form-control" name="nombre" required="required" type="text" placeholder="Nombre" /></div>\r\n</div>\r\n<div class="form-group">\r\n<div class="col-sm-10"><input class="form-control" name="cedula" required="required" type="text" placeholder="Cedula" /></div>\r\n</div>\r\n<div class="form-group col-md-10"><label class="col-sm-10 contro-label" for="espacio">Espacio a solicitar/visitar</label><select class="form-control" name="espacio" required="required">\r\n<option>--Seleccione</option>\r\n<option>Planetario</option>\r\n<option>Salón del planetario</option>\r\n<option>Aula de clases</option>\r\n<option>Oficina</option>\r\n</select></div>\r\n<div class="form-group">\r\n<div class="col-sm-10"><textarea class="form-control" name="descripcion" required="required" rows="5" placeholder="Descripcion"></textarea></div>\r\n</div>\r\n<div class="form-group"><label class="contro-label col-sm-2">El dia: </label>\r\n<div class="col-sm-10"><input class="form-control" name="fecha" required="required" type="date" /></div>\r\n</div>\r\n<div class="form-group row"><label class="contro-label col-sm-2">Desde: </label>\r\n<div class="col-sm-4"><input class="form-control" name="desde_fecha" required="required" type="time" /></div>\r\n<label class="contro-label col-sm-2">Hasta: </label>\r\n<div class="col-sm-4"><input class="form-control" name="hasta_fecha" required="required" type="time" /></div>\r\n</div>\r\n<div class="col-sm-offset-2 col-sm-10"><button class="btn btn-default" type="submit">Agregar</button></div>\r\n</form></div>', 1, 'aside', 0, '0000-00-00 00:00:00', '2017-03-20 22:53:17', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_modules_menu`
--

CREATE TABLE IF NOT EXISTS `cyfwe_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cyfwe_modules_menu`
--

INSERT INTO `cyfwe_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 101),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 101),
(89, 0),
(90, 0),
(91, 0),
(92, 130);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `cyfwe_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_overrider`
--

CREATE TABLE IF NOT EXISTS `cyfwe_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `cyfwe_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `cyfwe_postinstall_messages`
--

INSERT INTO `cyfwe_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 0),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 0),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 0),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_redirect_links`
--

CREATE TABLE IF NOT EXISTS `cyfwe_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_schemas`
--

CREATE TABLE IF NOT EXISTS `cyfwe_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cyfwe_schemas`
--

INSERT INTO `cyfwe_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.6.3-2016-08-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_session`
--

CREATE TABLE IF NOT EXISTS `cyfwe_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cyfwe_session`
--

INSERT INTO `cyfwe_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('ctpjqmvkvg4lnrjre1fj4gm497', 0, 0, '1509550728', 'joomla|s:1408:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjQ6e3M6NzoiY291bnRlciI7aToxNztzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MDk1NDg1ODI7czo0OiJsYXN0IjtpOjE1MDk1NTAxNTE7czozOiJub3ciO2k6MTUwOTU1MDcyNzt9czo2OiJjbGllbnQiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiZm9yd2FyZGVkIjtzOjE0OiIxODEuMjA4LjE3Ni40NyI7fXM6NToidG9rZW4iO3M6MzI6IjAxZ1BvT1JyZUlFbHVwMHNKU3NFR1paaDV6bGNJamx5Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6NToidXNlcnMiO086ODoic3RkQ2xhc3MiOjE6e3M6NToibG9naW4iO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZm9ybSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo2OiJyZXR1cm4iO3M6NDY6Imh0dHA6Ly9qb29tbGEtZGFuaWVlaXMuYzl1c2Vycy5pbzo4MC9pbmRleC5waHAiO3M6NDoiZGF0YSI7YTowOnt9fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjE7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MTp7czoyOiJpZCI7czozOiI1MDIiO31zOjEwOiJjb21fbWFpbHRvIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6ImxpbmtzIjthOjE6e3M6NDA6IjNlN2NmOTVkZmJkNWYzNGY5ZjY4NzZiNTM5ZmZlNzdlNDJiZDUyOGEiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoibGluayI7czoxMDE6Imh0dHA6Ly9qb29tbGEtZGFuaWVlaXMuYzl1c2Vycy5pbzo4MC9pbmRleC5waHAvYXNpZ25hdHVyYXMvZ2VvbG9naWEvZ2VvbG9naWEtZmlzY2EvMS1lbC1zaXN0ZW1hLXNvbGFyIjtzOjY6ImV4cGlyeSI7aToxNTA5NTUwNzI3O319fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 502, 'daniel'),
('th1a6kb0ae98c81kcs20ne2vm1', 1, 0, '1509550081', 'joomla|s:2832:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjQ6e3M6NzoiY291bnRlciI7aTo5NjtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MDk1NDU2NjU7czo0OiJsYXN0IjtpOjE1MDk1NDkyNDA7czozOiJub3ciO2k6MTUwOTU1MDA4MTt9czo2OiJjbGllbnQiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiZm9yd2FyZGVkIjtzOjE0OiIxODEuMjA4LjE3Ni40NyI7fXM6NToidG9rZW4iO3M6MzI6IlZkVjlRT0p5ZG0xWXNuY2lpYWRGdzBFVnFQNlRtek1TIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjQ6e3M6MTM6ImNvbV9pbnN0YWxsZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NzoibWVzc2FnZSI7czowOiIiO3M6MTc6ImV4dGVuc2lvbl9tZXNzYWdlIjtzOjA6IiI7czo2OiJ1cGRhdGUiO086ODoic3RkQ2xhc3MiOjM6e3M6NjoiZmlsdGVyIjthOjQ6e3M6Njoic2VhcmNoIjtzOjA6IiI7czo5OiJjbGllbnRfaWQiO3M6MDoiIjtzOjQ6InR5cGUiO3M6MDoiIjtzOjY6ImZvbGRlciI7czowOiIiO31zOjQ6Imxpc3QiO2E6Mjp7czoxMjoiZnVsbG9yZGVyaW5nIjtzOjEwOiJ1Lm5hbWUgQVNDIjtzOjU6ImxpbWl0IjtzOjI6IjI1Ijt9czoxMDoibGltaXRzdGFydCI7aTowO319czoxNDoiY29tX2NhdGVnb3JpZXMiO086ODoic3RkQ2xhc3MiOjE6e3M6MTA6ImNhdGVnb3JpZXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NToidXNlcnMiO086ODoic3RkQ2xhc3MiOjI6e3M6NjoiZmlsdGVyIjtPOjg6InN0ZENsYXNzIjoxOntzOjk6ImV4dGVuc2lvbiI7czo5OiJjb21fdXNlcnMiO31zOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjtzOjg6Im9yZGVyaW5nIjtzOjU6ImEubGZ0IjtzOjU6InN0YXJ0IjtkOjA7fX1zOjc6ImNvbnRlbnQiO086ODoic3RkQ2xhc3MiOjI6e3M6NjoiZmlsdGVyIjtPOjg6InN0ZENsYXNzIjoxOntzOjk6ImV4dGVuc2lvbiI7czoxMToiY29tX2NvbnRlbnQiO31zOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjtzOjg6Im9yZGVyaW5nIjtzOjU6ImEubGZ0IjtzOjU6InN0YXJ0IjtkOjA7fX19fXM6OToiY29tX3VzZXJzIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjM6e3M6NToibGV2ZWwiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MTp7aTowO2k6Njt9czo0OiJkYXRhIjtOO31zOjU6Imdyb3VwIjtPOjg6InN0ZENsYXNzIjoyOntzOjI6ImlkIjthOjE6e2k6MDtpOjI7fXM6NDoiZGF0YSI7Tjt9czo0OiJ1c2VyIjtPOjg6InN0ZENsYXNzIjoyOntzOjI6ImlkIjthOjA6e31zOjQ6ImRhdGEiO047fX1zOjU6InVzZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjc6ImRlZmF1bHQiO086ODoic3RkQ2xhc3MiOjM6e3M6NjoiZmlsdGVyIjthOjI6e3M6ODoiZ3JvdXBfaWQiO3M6MToiMiI7czo1OiJzdGF0ZSI7czoxOiIwIjt9czoxMDoibGltaXRzdGFydCI7aTowO3M6NDoibGlzdCI7YTo0OntzOjk6ImRpcmVjdGlvbiI7czozOiJhc2MiO3M6NToibGltaXQiO3M6MjoiMjAiO3M6ODoib3JkZXJpbmciO3M6NjoiYS5uYW1lIjtzOjU6InN0YXJ0IjtkOjA7fX19fXM6MTE6ImNvbV9jb250ZW50IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NzoiYXJ0aWNsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoyOiJpZCI7YToxOntpOjA7aTo3O31zOjQ6ImRhdGEiO047fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjE7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MTp7czoyOiJpZCI7czozOiI1MDIiO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7Tjt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 502, 'daniel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_tags`
--

CREATE TABLE IF NOT EXISTS `cyfwe_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `cyfwe_tags`
--

INSERT INTO `cyfwe_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 7, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 502, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 1, 2, 1, 'eventos', '#eventos', 'eventos', '', '', 1, 0, '2017-03-09 05:43:19', 1, '{}', '', '', '{}', 505, '2017-03-09 05:43:19', '', 0, '2017-03-09 05:43:19', '{}', '{}', 0, '*', 1, '2017-03-09 05:43:19', '2017-03-09 05:43:19'),
(3, 1, 3, 4, 1, 'geologia', '#geologia', 'geologia', '', '', 1, 0, '2017-03-09 05:43:19', 1, '{}', '', '', '{}', 505, '2017-03-09 05:43:19', '', 0, '2017-03-09 05:43:19', '{}', '{}', 0, '*', 1, '2017-03-09 05:43:19', '2017-03-09 05:43:19'),
(4, 1, 5, 6, 1, 'petrolera', '#petrolera', 'petrolera', '', '', 1, 0, '2017-03-09 05:57:04', 1, '{}', '', '', '{}', 505, '2017-03-09 05:57:04', '', 0, '2017-03-09 05:57:04', '{}', '{}', 0, '*', 1, '2017-03-09 05:57:04', '2017-03-09 05:57:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_template_styles`
--

CREATE TABLE IF NOT EXISTS `cyfwe_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `cyfwe_template_styles`
--

INSERT INTO `cyfwe_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'jl_learnmate_free', 0, '1', 'Learnmate Free - Citas', '{"preset":null}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_ucm_base`
--

CREATE TABLE IF NOT EXISTS `cyfwe_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cyfwe_ucm_base`
--

INSERT INTO `cyfwe_ucm_base` (`ucm_id`, `ucm_item_id`, `ucm_type_id`, `ucm_language_id`) VALUES
(1, 5, 1, 0),
(2, 6, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_ucm_content`
--

CREATE TABLE IF NOT EXISTS `cyfwe_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `cyfwe_ucm_content`
--

INSERT INTO `cyfwe_ucm_content` (`core_content_id`, `core_type_alias`, `core_title`, `core_alias`, `core_body`, `core_state`, `core_checked_out_time`, `core_checked_out_user_id`, `core_access`, `core_params`, `core_featured`, `core_metadata`, `core_created_user_id`, `core_created_by_alias`, `core_created_time`, `core_modified_user_id`, `core_modified_time`, `core_language`, `core_publish_up`, `core_publish_down`, `core_content_item_id`, `asset_id`, `core_images`, `core_urls`, `core_hits`, `core_version`, `core_ordering`, `core_metakey`, `core_metadesc`, `core_catid`, `core_xreference`, `core_type_id`) VALUES
(1, 'com_content.article', 'Cierre de Subproyecto: Geología Física', 'cierre-geologia-fisica', '<hr />\r\n<p style="padding-left: 60px;"><img style="display: block; margin-left: auto; margin-right: auto; border-width: 2px; width: 600px;" src="images/Eventos/cierre_de_subproyecto.png" alt="Equipo del subproyecto" width="609" height="454" /></p>\r\n<hr />\r\n<p style="text-align: justify;">Durante los días 22 y 23 de febrero la comunidad unellista del Aula Ambiente de Geografía estuvo muy activa por la participación en diversos eventos como lo fueron el cierre de subproyecto Geología Física donde se expuso la experiencia ganada de los estudiantes y profesores involucrados en este subproyecto durante todo el semestre y muy particularmente en la Gira Geológica realizada en el mes de noviembre por los Estados Merida, Barinas y Apure donde palparon y experimentaron todo lo relacionado a las diferentes formaciones y relieve de nuestra cuenca sedimentaria. Esto sucedió bajo la tutela del Prof. Franklin Vegara y en esta ocasión también participó la Prof. Sharon Escalante como invitada especial a la gira.</p>\r\n<p style="text-align: justify;"> </p>\r\n<blockquote>\r\n<p style="text-align: justify;">El aprendizaje es experiencia, todo lo demás es información  -Albert Einstein</p>\r\n</blockquote>', 1, '', 0, 1, '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 0, '{"robots":"","author":"","rights":"","xreference":""}', 505, '', '2017-03-06 09:45:22', 505, '2017-03-09 06:00:31', '*', '2017-03-06 09:45:22', '0000-00-00 00:00:00', 5, 86, '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', 3, 8, 1, '', '', 27, '', 1),
(2, 'com_content.article', 'Columnas Estratigráficas de las Cuencas de Venezuela', 'columnas-estratigraficas-de-las-cuencas-de-venezuela', '<p>En el marco de entrega de la asignación de columnas estratigráficas del subproyecto geología petrolera, se dio a conocer el producto creativo elaborado por los alumnos. Un gran ejemplo de nuestra unidad de investigación aula ambiente de geografía.</p>\r\n<hr />\r\n<p><img src="images/IMG_20170306_094733457.jpg" alt="" /></p>\r\n<hr />\r\n<p> </p>', 1, '', 0, 1, '{}', 0, '{}', 505, '', '2017-03-09 05:57:04', 505, '2017-03-09 05:59:58', '*', '2017-03-09 01:45:14', '0000-00-00 00:00:00', 6, 88, '{}', '{}', 2, 4, 0, '', '', 27, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_ucm_history`
--

CREATE TABLE IF NOT EXISTS `cyfwe_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=103 ;

--
-- Volcado de datos para la tabla `cyfwe_ucm_history`
--

INSERT INTO `cyfwe_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(10, 1, 1, '', '2017-02-07 11:34:56', 502, 10064, '70f3469f638d887629d0db370e8be9845b2bb024', '{"id":1,"asset_id":"56","title":"El Sistema Solar","alias":"el-sistema-solar","introtext":"<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">\\u00bfQu\\u00e9 es una estrella?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Las estrellas son cuerpos celestes de grandes dimensiones en cuyo interior se producen reacciones nucleares que provocan la emisi\\u00f3n de una gran cantidad de energ\\u00eda al espacio exterior. Las estrellas tienen un n\\u00facleo donde se producen las reacciones nucleares. Por ejemplo, cuatro \\u00e1tomos de hidr\\u00f3geno se convierten en uno de helio desprendiendo una cierta cantidad de energ\\u00eda. Estas reacciones nucleares son la causa de la emisi\\u00f3n de luz y calor. Las estrellas est\\u00e1n siempre en la b\\u00f3veda celeste, pero de d\\u00eda no son visibles debido a la luz de una de ellas: el Sol. La estrella m\\u00e1s cercana a la Tierra ha servido para estudiar estos astros, cuya caracter\\u00edstica principal es que emiten energ\\u00eda continuamente.\\u00a0<\\/p>\\r\\n<hr \\/><hr title=\\"P\\u00e1gina 2\\" alt=\\"Segunda p\\u00e1gina\\" class=\\"system-pagebreak\\" \\/>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00bfEl Sol?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">El\\u00a0Sol\\u00a0es la\\u00a0estrella\\u00a0\\u00fanica y central del Sistema Solar; por tanto, es la estrella m\\u00e1s cercana a la Tierra y el astro con mayor\\u00a0brillo aparente. Su presencia o su ausencia en el cielo terrestre determinan, respectivamente, el\\u00a0d\\u00eda\\u00a0y la\\u00a0noche. La energ\\u00eda radiada por el Sol es aprovechada por los seres fotosint\\u00e9ticos, que constituyen la base de la\\u00a0cadena alimenticia, y es por ello la principal fuente de energ\\u00eda de la vida. Tambi\\u00e9n aporta la energ\\u00eda que mantiene en funcionamiento los\\u00a0procesos clim\\u00e1ticos. El Sol es una estrella que se encuentra en la fase denominada\\u00a0secuencia principal, con un tipo espectral G2, que se form\\u00f3 hace unos 5000 millones de a\\u00f1os, y permanecer\\u00e1 en la secuencia principal aproximadamente otros 5000 millones de a\\u00f1os.<br \\/>A pesar de ser una estrella mediana, es la \\u00fanica cuya forma circular se puede apreciar a simple vista, con un di\\u00e1metro angular de 32'' 35\\" de arco en el\\u00a0perihelio\\u00a0y 31'' 31\\" en el\\u00a0afelio, lo que da un di\\u00e1metro medio de 32'' 03\\". Casualmente, la combinaci\\u00f3n de tama\\u00f1os y distancias del Sol y la Luna respecto a la Tierra, hace que se vean aproximadamente con el mismo tama\\u00f1o aparente en el cielo. Esto permite una amplia gama de eclipses solares\\u00a0distintos (totales, anulares o parciales). Se han descubierto sistemas planetarios que tienen m\\u00e1s de una estrella central (sistema estelar).<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">\\u00a0<\\/p>\\r\\n<figure class=\\"pull-center\\"><img title=\\"Sistema Solar\\" src=\\"images\\/Aula_Ambiente\\/IMG_20170206_173816854.jpg\\" alt=\\"\\" width=\\"867\\" height=\\"651\\" \\/>\\r\\n<figcaption class=\\"text-right\\">Cuadro ubicado en Aula ambiente<\\/figcaption>\\r\\n<\\/figure>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los ocho\\u00a0planetas\\u00a0que componen el Sistema Solar son, de menor a mayor distancia respecto al\\u00a0Sol, los siguientes:<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: center;\\">Mercurio - Venus - Tierra - Marte - J\\u00fapiter - Saturno - Urano - Neptuno<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los planetas son cuerpos que giran formando \\u00f3rbitas alrededor de la estrella, tienen suficiente masa para que su gravedad supere las fuerzas del cuerpo r\\u00edgido, de manera que asuman una forma en equilibrio hidrost\\u00e1tico (pr\\u00e1cticamente esf\\u00e9rica), y han limpiado la vecindad de su \\u00f3rbita de planetesimales (dominancia orbital).<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los planetas interiores son Mercurio, Venus, la Tierra y Marte y tienen la superficie s\\u00f3lida. Los planetas exteriores son J\\u00fapiter, Saturno, Urano y Neptuno, tambi\\u00e9n se denominan planetas gaseosos porque contienen en sus atm\\u00f3sferas gases como el helio, el hidr\\u00f3geno y el metano, y no se conoce con certeza la estructura de su superficie. El 24 de agosto de 2006, la Uni\\u00f3n Astron\\u00f3mica Internacional (UAI) excluy\\u00f3 a Plut\\u00f3n como planeta del Sistema Solar, y lo clasific\\u00f3 como planeta enano.<\\/p>\\r\\n<hr \\/><hr title=\\"3 P\\u00e1gina\\" alt=\\"Tercera p\\u00e1gina\\" class=\\"system-pagebreak\\" \\/>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: left;\\">\\u00bfQue es un C\\u00famulo Estelar?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Agrupaci\\u00f3n de estrellas que comparten el mismo origen y se encuentran juntas en una zona determinada del espacio. A diferencia de las constelaciones, los c\\u00famulos son grupos naturales, formados por estrellas relacionadas entre s\\u00ed y bastante pr\\u00f3ximas. Se distinguen dos tipos de c\\u00famulos estelares; los c\\u00famulos abiertos, formados por estrellas en n\\u00famero de varias decenas hasta miles, y los c\\u00famulos globulares, que albergan desde 10.000 hasta un mill\\u00f3n de estrellas.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2017-02-07 10:44:45","created_by":"502","created_by_alias":"","modified":"2017-02-07 11:34:56","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-07 11:32:49","publish_up":"2017-02-07 10:44:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/Aula_Ambiente\\\\\\/IMG_20170206_173440255.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"Sistema Solar\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"1\\",\\"show_article_options\\":\\"1\\",\\"show_urls_images_backend\\":\\"1\\",\\"show_urls_images_frontend\\":\\"1\\"}","version":15,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"9","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(11, 1, 1, '', '2017-02-09 01:29:37', 502, 9978, 'f2080969db5dfa1dd999b86ad755307dd77872e7', '{"id":1,"asset_id":"56","title":"El Sistema Solar","alias":"el-sistema-solar","introtext":"<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">\\u00bfQu\\u00e9 es una estrella?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Las estrellas son cuerpos celestes de grandes dimensiones en cuyo interior se producen reacciones nucleares que provocan la emisi\\u00f3n de una gran cantidad de energ\\u00eda al espacio exterior. Las estrellas tienen un n\\u00facleo donde se producen las reacciones nucleares. Por ejemplo, cuatro \\u00e1tomos de hidr\\u00f3geno se convierten en uno de helio desprendiendo una cierta cantidad de energ\\u00eda. Estas reacciones nucleares son la causa de la emisi\\u00f3n de luz y calor. Las estrellas est\\u00e1n siempre en la b\\u00f3veda celeste, pero de d\\u00eda no son visibles debido a la luz de una de ellas: el Sol. La estrella m\\u00e1s cercana a la Tierra ha servido para estudiar estos astros, cuya caracter\\u00edstica principal es que emiten energ\\u00eda continuamente.\\u00a0<\\/p>\\r\\n<hr \\/><hr title=\\"P\\u00e1gina 2\\" alt=\\"Segunda p\\u00e1gina\\" class=\\"system-pagebreak\\" \\/>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00bfEl Sol?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">El\\u00a0Sol\\u00a0es la\\u00a0estrella\\u00a0\\u00fanica y central del Sistema Solar; por tanto, es la estrella m\\u00e1s cercana a la Tierra y el astro con mayor\\u00a0brillo aparente. Su presencia o su ausencia en el cielo terrestre determinan, respectivamente, el\\u00a0d\\u00eda\\u00a0y la\\u00a0noche. La energ\\u00eda radiada por el Sol es aprovechada por los seres fotosint\\u00e9ticos, que constituyen la base de la\\u00a0cadena alimenticia, y es por ello la principal fuente de energ\\u00eda de la vida. Tambi\\u00e9n aporta la energ\\u00eda que mantiene en funcionamiento los\\u00a0procesos clim\\u00e1ticos. El Sol es una estrella que se encuentra en la fase denominada\\u00a0secuencia principal, con un tipo espectral G2, que se form\\u00f3 hace unos 5000 millones de a\\u00f1os, y permanecer\\u00e1 en la secuencia principal aproximadamente otros 5000 millones de a\\u00f1os.<br \\/>A pesar de ser una estrella mediana, es la \\u00fanica cuya forma circular se puede apreciar a simple vista, con un di\\u00e1metro angular de 32'' 35\\" de arco en el\\u00a0perihelio\\u00a0y 31'' 31\\" en el\\u00a0afelio, lo que da un di\\u00e1metro medio de 32'' 03\\". Casualmente, la combinaci\\u00f3n de tama\\u00f1os y distancias del Sol y la Luna respecto a la Tierra, hace que se vean aproximadamente con el mismo tama\\u00f1o aparente en el cielo. Esto permite una amplia gama de eclipses solares\\u00a0distintos (totales, anulares o parciales). Se han descubierto sistemas planetarios que tienen m\\u00e1s de una estrella central (sistema estelar).<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">\\u00a0<\\/p>\\r\\n<figure class=\\"pull-center\\"><img title=\\"Sistema Solar\\" src=\\"images\\/Aula_Ambiente\\/IMG_20170206_173816854.jpg\\" alt=\\"\\" width=\\"867\\" height=\\"651\\" \\/>\\r\\n<figcaption class=\\"text-right\\">Cuadro ubicado en Aula ambiente<\\/figcaption>\\r\\n<\\/figure>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los ocho\\u00a0planetas\\u00a0que componen el Sistema Solar son, de menor a mayor distancia respecto al\\u00a0Sol, los siguientes:<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: center;\\">Mercurio - Venus - Tierra - Marte - J\\u00fapiter - Saturno - Urano - Neptuno<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los planetas son cuerpos que giran formando \\u00f3rbitas alrededor de la estrella, tienen suficiente masa para que su gravedad supere las fuerzas del cuerpo r\\u00edgido, de manera que asuman una forma en equilibrio hidrost\\u00e1tico (pr\\u00e1cticamente esf\\u00e9rica), y han limpiado la vecindad de su \\u00f3rbita de planetesimales (dominancia orbital).<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los planetas interiores son Mercurio, Venus, la Tierra y Marte y tienen la superficie s\\u00f3lida. Los planetas exteriores son J\\u00fapiter, Saturno, Urano y Neptuno, tambi\\u00e9n se denominan planetas gaseosos porque contienen en sus atm\\u00f3sferas gases como el helio, el hidr\\u00f3geno y el metano, y no se conoce con certeza la estructura de su superficie. El 24 de agosto de 2006, la Uni\\u00f3n Astron\\u00f3mica Internacional (UAI) excluy\\u00f3 a Plut\\u00f3n como planeta del Sistema Solar, y lo clasific\\u00f3 como planeta enano.<\\/p>\\r\\n<hr \\/>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: left;\\">\\u00bfQue es un C\\u00famulo Estelar?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Agrupaci\\u00f3n de estrellas que comparten el mismo origen y se encuentran juntas en una zona determinada del espacio. A diferencia de las constelaciones, los c\\u00famulos son grupos naturales, formados por estrellas relacionadas entre s\\u00ed y bastante pr\\u00f3ximas. Se distinguen dos tipos de c\\u00famulos estelares; los c\\u00famulos abiertos, formados por estrellas en n\\u00famero de varias decenas hasta miles, y los c\\u00famulos globulares, que albergan desde 10.000 hasta un mill\\u00f3n de estrellas.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2017-02-07 10:44:45","created_by":"502","created_by_alias":"","modified":"2017-02-09 01:29:37","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-09 01:28:40","publish_up":"2017-02-07 10:44:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/Aula_Ambiente\\\\\\/IMG_20170206_173440255.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"Sistema Solar\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"1\\",\\"show_article_options\\":\\"1\\",\\"show_urls_images_backend\\":\\"1\\",\\"show_urls_images_frontend\\":\\"1\\"}","version":16,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"9","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(12, 1, 1, '', '2017-02-09 01:37:51', 502, 10154, 'c24b10b3df90cd4c1ecf0c458b04218efa88840a', '{"id":1,"asset_id":"56","title":"El Sistema Solar","alias":"el-sistema-solar","introtext":"<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">\\u00bfQu\\u00e9 es una estrella?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Las estrellas son cuerpos celestes de grandes dimensiones en cuyo interior se producen reacciones nucleares que provocan la emisi\\u00f3n de una gran cantidad de energ\\u00eda al espacio exterior. Las estrellas tienen un n\\u00facleo donde se producen las reacciones nucleares. Por ejemplo, cuatro \\u00e1tomos de hidr\\u00f3geno se convierten en uno de helio desprendiendo una cierta cantidad de energ\\u00eda. Estas reacciones nucleares son la causa de la emisi\\u00f3n de luz y calor. Las estrellas est\\u00e1n siempre en la b\\u00f3veda celeste, pero de d\\u00eda no son visibles debido a la luz de una de ellas: el Sol. La estrella m\\u00e1s cercana a la Tierra ha servido para estudiar estos astros, cuya caracter\\u00edstica principal es que emiten energ\\u00eda continuamente.\\u00a0<\\/p>\\r\\n<hr \\/>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00bfEl Sol?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">El\\u00a0Sol\\u00a0es la\\u00a0estrella\\u00a0\\u00fanica y central del Sistema Solar; por tanto, es la estrella m\\u00e1s cercana a la Tierra y el astro con mayor\\u00a0brillo aparente. Su presencia o su ausencia en el cielo terrestre determinan, respectivamente, el\\u00a0d\\u00eda\\u00a0y la\\u00a0noche. La energ\\u00eda radiada por el Sol es aprovechada por los seres foto<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">sint\\u00e9ticos, que constituyen la base de la\\u00a0cadena alimenticia, y es por ello la principal fuente de energ\\u00eda de la vida. Tambi\\u00e9n aporta la energ\\u00eda que mantiene en funcionamiento los\\u00a0procesos clim\\u00e1ticos. El Sol es una estrella que se encuentra en la fase denominada\\u00a0secuencia principal, con un tipo espectral G2, que se form\\u00f3 hace unos 5000 millones de a\\u00f1os, y permanecer\\u00e1 en la secuencia principal aproximadamente otros 5000 millones de a\\u00f1os.<br \\/>A pesar de ser una estrella mediana, es la \\u00fanica cuya forma circular se puede apreciar a simple vista, con un di\\u00e1metro angular de 32'' 35\\" de arco en el\\u00a0perihelio\\u00a0y 31'' 31\\" en el\\u00a0afelio, lo que da un di\\u00e1metro medio de 32'' 03\\". Casualmente, la combinaci\\u00f3n de tama\\u00f1os y distancias del Sol y la Luna respecto a la Tierra, hace que se vean aproximadamente con el mismo tama\\u00f1o aparente en el cielo. Esto permite una amplia gama de eclipses solares\\u00a0distintos (totales, anulares o parciales). Se han descubierto sistemas planetarios que tienen m\\u00e1s de una estrella central (sistema estelar).<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">\\u00a0<\\/p>\\r\\n<figure class=\\"pull-center\\"><img title=\\"Sistema Solar\\" src=\\"images\\/Aula_Ambiente\\/IMG_20170206_173816854.jpg\\" alt=\\"\\" width=\\"867\\" height=\\"651\\" \\/>\\r\\n<figcaption class=\\"text-right\\">Cuadro ubicado en Aula ambiente<\\/figcaption>\\r\\n<\\/figure>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los ocho\\u00a0planetas\\u00a0que componen el Sistema Solar son, de menor a mayor distancia respecto al\\u00a0Sol, los siguientes:<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: center;\\">Mercurio - Venus - Tierra - Marte - J\\u00fapiter - Saturno - Urano - Neptuno<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los planetas son cuerpos que giran formando \\u00f3rbitas alrededor de la estrella, tienen suficiente masa para que su gravedad supere las fuerzas del cuerpo r\\u00edgido, de manera que asuman una forma en equilibrio hidrost\\u00e1tico (pr\\u00e1cticamente esf\\u00e9rica), y han limpiado la vecindad de su \\u00f3rbita de planetesimales (dominancia orbital).<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los planetas interiores son Mercurio, Venus, la Tierra y Marte y tienen la superficie s\\u00f3lida. Los planetas exteriores son J\\u00fapiter, Saturno, Urano y Neptuno, tambi\\u00e9n se denominan planetas gaseosos porque contienen en sus atm\\u00f3sferas gases como el helio, el hidr\\u00f3geno y el metano, y no se conoce con certeza la estructura de su superficie. El 24 de agosto de 2006, la Uni\\u00f3n Astron\\u00f3mica Internacional (UAI) excluy\\u00f3 a Plut\\u00f3n como planeta del Sistema Solar, y lo clasific\\u00f3 como planeta enano.<\\/p>\\r\\n<hr \\/>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: left;\\">\\u00bfQue es un C\\u00famulo Estelar?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Agrupaci\\u00f3n de estrellas que comparten el mismo origen y se encuentran juntas en una zona determinada del espacio. A diferencia de las constelaciones, los c\\u00famulos son grupos naturales, formados por estrellas relacionadas entre s\\u00ed y bastante pr\\u00f3ximas. Se distinguen dos tipos de c\\u00famulos estelares; los c\\u00famulos abiertos, formados por estrellas en n\\u00famero de varias decenas hasta miles, y los c\\u00famulos globulares, que albergan desde 10.000 hasta un mill\\u00f3n de estrellas.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2017-02-07 10:44:45","created_by":"502","created_by_alias":"","modified":"2017-02-09 01:37:51","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-09 01:29:37","publish_up":"2017-02-07 10:44:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/Aula_Ambiente\\\\\\/IMG_20170206_173440255.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"Sistema Solar\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"1\\",\\"show_article_options\\":\\"1\\",\\"show_urls_images_backend\\":\\"1\\",\\"show_urls_images_frontend\\":\\"1\\"}","version":17,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"9","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(13, 8, 5, '', '2017-02-09 01:42:57', 502, 610, 'faaa663b7cb88505e40df4ef75db0d7c71c8fa45', '{"id":"8","asset_id":57,"parent_id":"1","lft":"11","rgt":12,"level":1,"path":null,"extension":"com_content","title":"GEOLOGIA","alias":"geologia","note":"","description":"<p>Contenido referente a Geolog\\u00eda F\\u00edsica<\\/p>","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-09 01:42:57","modified_user_id":null,"modified_time":"2017-02-09 01:42:57","hits":"0","language":"*","version":null}', 0),
(14, 9, 5, '', '2017-02-09 01:43:41', 502, 569, 'c5384009aca636f694be44fba0bfb9332d1a7601', '{"id":"9","asset_id":58,"parent_id":"8","lft":"12","rgt":13,"level":2,"path":null,"extension":"com_content","title":"GEOLOGIA FISICA","alias":"geologia-fisica","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-09 01:43:41","modified_user_id":null,"modified_time":"2017-02-09 01:43:41","hits":"0","language":"*","version":null}', 0),
(15, 10, 5, '', '2017-02-09 01:43:55', 502, 581, '26dd2085dbd50f9a30058758f4457d2e50597858', '{"id":"10","asset_id":59,"parent_id":"8","lft":"14","rgt":15,"level":2,"path":null,"extension":"com_content","title":"GEOLOG\\u00cdA PETROLERA","alias":"geologia-petrolera","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-09 01:43:55","modified_user_id":null,"modified_time":"2017-02-09 01:43:55","hits":"0","language":"*","version":null}', 0),
(16, 11, 5, '', '2017-02-09 01:44:13', 502, 566, 'bd5bcbd10b91cc3388bf80a1841df54a110fce05', '{"id":"11","asset_id":60,"parent_id":"1","lft":"17","rgt":18,"level":1,"path":null,"extension":"com_content","title":"PERFORACION I","alias":"perforacion-i","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-09 01:44:13","modified_user_id":null,"modified_time":"2017-02-09 01:44:13","hits":"0","language":"*","version":null}', 0),
(17, 12, 5, '', '2017-02-09 01:44:20', 502, 568, '1ffec9c71f82bb1caf716eed5f7c736aa1c5c197', '{"id":"12","asset_id":61,"parent_id":"1","lft":"19","rgt":20,"level":1,"path":null,"extension":"com_content","title":"PERFORACION II","alias":"perforacion-ii","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-09 01:44:20","modified_user_id":null,"modified_time":"2017-02-09 01:44:20","hits":"0","language":"*","version":null}', 0),
(18, 13, 5, '', '2017-02-09 01:44:26', 502, 566, '562e9285dbbcfabc2a0239c81a451055fdc30d28', '{"id":"13","asset_id":62,"parent_id":"1","lft":"21","rgt":22,"level":1,"path":null,"extension":"com_content","title":"YACIMIENTOS I","alias":"yacimientos-i","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-09 01:44:26","modified_user_id":null,"modified_time":"2017-02-09 01:44:26","hits":"0","language":"*","version":null}', 0),
(19, 14, 5, '', '2017-02-09 01:44:46', 502, 590, '6a66de5ecc5d7b06b25a399dc7398534c2c836f6', '{"id":"14","asset_id":63,"parent_id":"1","lft":"23","rgt":24,"level":1,"path":null,"extension":"com_content","title":"FACILIDADES DE SUPERFICIE","alias":"facilidades-de-superficie","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-09 01:44:46","modified_user_id":null,"modified_time":"2017-02-09 01:44:46","hits":"0","language":"*","version":null}', 0),
(20, 15, 5, '', '2017-02-09 01:44:55', 502, 564, 'e4cadb83c033b87d17d9e51c4d99f29e327666fc', '{"id":"15","asset_id":64,"parent_id":"1","lft":"25","rgt":26,"level":1,"path":null,"extension":"com_content","title":"SUBPROYECTOS","alias":"subproyectos","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-09 01:44:55","modified_user_id":null,"modified_time":"2017-02-09 01:44:55","hits":"0","language":"*","version":null}', 0),
(21, 16, 5, '', '2017-02-09 01:45:02', 502, 556, 'c63042dd9f91a4784958d6a1b1606cbdcdcc3389', '{"id":"16","asset_id":65,"parent_id":"1","lft":"27","rgt":28,"level":1,"path":null,"extension":"com_content","title":"NOTICIAS","alias":"noticias","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-09 01:45:02","modified_user_id":null,"modified_time":"2017-02-09 01:45:02","hits":"0","language":"*","version":null}', 0),
(22, 17, 5, '', '2017-02-09 01:45:21', 502, 562, '709a15c41cf6e5245732b7278cd240e52c403e2e', '{"id":"17","asset_id":66,"parent_id":"1","lft":"29","rgt":30,"level":1,"path":null,"extension":"com_content","title":"INFORMACION","alias":"informacion","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-09 01:45:21","modified_user_id":null,"modified_time":"2017-02-09 01:45:21","hits":"0","language":"*","version":null}', 0),
(23, 18, 5, '', '2017-02-09 01:45:51', 502, 590, '9fe8eb37da44b3afe73f7b9817b28a26d03fcee9', '{"id":"18","asset_id":67,"parent_id":"1","lft":"31","rgt":32,"level":1,"path":null,"extension":"com_content","title":"INVESTIGACION Y EXTENSION","alias":"investigacion-y-extension","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-09 01:45:51","modified_user_id":null,"modified_time":"2017-02-09 01:45:51","hits":"0","language":"*","version":null}', 0),
(24, 8, 5, '', '2017-02-09 01:46:45', 502, 635, 'b68f9777893b6b19423e134762d92244ae886c41', '{"id":8,"asset_id":"57","parent_id":"15","lft":"20","rgt":25,"level":2,"path":"geologia","extension":"com_content","title":"GEOLOGIA","alias":"geologia","note":"","description":"<p>Contenido referente a Geolog\\u00eda F\\u00edsica<\\/p>","published":"1","checked_out":"502","checked_out_time":"2017-02-09 01:46:22","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-09 01:42:57","modified_user_id":"502","modified_time":"2017-02-09 01:46:45","hits":"0","language":"*","version":"1"}', 0),
(25, 11, 5, '', '2017-02-09 01:47:48', 502, 596, '8ae3ae28b1849c5da1f6fc763c4e1297463a04c9', '{"id":11,"asset_id":"60","parent_id":"15","lft":"24","rgt":25,"level":2,"path":"perforacion-i","extension":"com_content","title":"PERFORACION I","alias":"perforacion-i","note":"","description":"","published":"1","checked_out":"502","checked_out_time":"2017-02-09 01:47:41","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-09 01:44:13","modified_user_id":"502","modified_time":"2017-02-09 01:47:48","hits":"0","language":"*","version":"1"}', 0),
(26, 12, 5, '', '2017-02-09 01:47:57', 502, 599, '9d8fbf999c7518eed3cad0378b42922c5911bd85', '{"id":12,"asset_id":"61","parent_id":"15","lft":"24","rgt":25,"level":2,"path":"perforacion-ii","extension":"com_content","title":"PERFORACION II","alias":"perforacion-ii","note":"","description":"","published":"1","checked_out":"502","checked_out_time":"2017-02-09 01:47:51","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-09 01:44:20","modified_user_id":"502","modified_time":"2017-02-09 01:47:57","hits":"0","language":"*","version":"1"}', 0),
(27, 13, 5, '', '2017-02-09 01:48:05', 502, 596, '149139fedfcc611f23d604165e3f66ac78bf4513', '{"id":13,"asset_id":"62","parent_id":"15","lft":"24","rgt":25,"level":2,"path":"yacimientos-i","extension":"com_content","title":"YACIMIENTOS I","alias":"yacimientos-i","note":"","description":"","published":"1","checked_out":"502","checked_out_time":"2017-02-09 01:48:00","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-09 01:44:26","modified_user_id":"502","modified_time":"2017-02-09 01:48:05","hits":"0","language":"*","version":"1"}', 0),
(28, 14, 5, '', '2017-02-09 01:48:12', 502, 632, 'aac6eef1cd5c2657253832ee06c2768f51d831bf', '{"id":14,"asset_id":"63","parent_id":"15","lft":"24","rgt":25,"level":2,"path":"facilidades-de-superficie","extension":"com_content","title":"FACILIDADES DE SUPERFICIE","alias":"facilidades-de-superficie","note":"","description":"","published":"1","checked_out":"502","checked_out_time":"2017-02-09 01:48:08","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-09 01:44:46","modified_user_id":"502","modified_time":"2017-02-09 01:48:12","hits":"0","language":"*","version":"1"}', 0),
(29, 19, 5, '', '2017-02-09 01:48:58', 502, 548, '37725be5145e787a5d8cee8f3c672de3d3285084', '{"id":"19","asset_id":68,"parent_id":"1","lft":"33","rgt":34,"level":1,"path":null,"extension":"com_content","title":"AULA","alias":"aula","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-09 01:48:58","modified_user_id":null,"modified_time":"2017-02-09 01:48:58","hits":"0","language":"*","version":null}', 0);
INSERT INTO `cyfwe_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(30, 1, 1, '', '2017-02-09 01:49:47', 502, 10154, 'ef0399373b65a8aebd82d5132c3a7a0f217012ef', '{"id":1,"asset_id":"56","title":"El Sistema Solar","alias":"el-sistema-solar","introtext":"<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">\\u00bfQu\\u00e9 es una estrella?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Las estrellas son cuerpos celestes de grandes dimensiones en cuyo interior se producen reacciones nucleares que provocan la emisi\\u00f3n de una gran cantidad de energ\\u00eda al espacio exterior. Las estrellas tienen un n\\u00facleo donde se producen las reacciones nucleares. Por ejemplo, cuatro \\u00e1tomos de hidr\\u00f3geno se convierten en uno de helio desprendiendo una cierta cantidad de energ\\u00eda. Estas reacciones nucleares son la causa de la emisi\\u00f3n de luz y calor. Las estrellas est\\u00e1n siempre en la b\\u00f3veda celeste, pero de d\\u00eda no son visibles debido a la luz de una de ellas: el Sol. La estrella m\\u00e1s cercana a la Tierra ha servido para estudiar estos astros, cuya caracter\\u00edstica principal es que emiten energ\\u00eda continuamente.\\u00a0<\\/p>\\r\\n<hr \\/>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00bfEl Sol?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">El\\u00a0Sol\\u00a0es la\\u00a0estrella\\u00a0\\u00fanica y central del Sistema Solar; por tanto, es la estrella m\\u00e1s cercana a la Tierra y el astro con mayor\\u00a0brillo aparente. Su presencia o su ausencia en el cielo terrestre determinan, respectivamente, el\\u00a0d\\u00eda\\u00a0y la\\u00a0noche. La energ\\u00eda radiada por el Sol es aprovechada por los seres foto<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">sint\\u00e9ticos, que constituyen la base de la\\u00a0cadena alimenticia, y es por ello la principal fuente de energ\\u00eda de la vida. Tambi\\u00e9n aporta la energ\\u00eda que mantiene en funcionamiento los\\u00a0procesos clim\\u00e1ticos. El Sol es una estrella que se encuentra en la fase denominada\\u00a0secuencia principal, con un tipo espectral G2, que se form\\u00f3 hace unos 5000 millones de a\\u00f1os, y permanecer\\u00e1 en la secuencia principal aproximadamente otros 5000 millones de a\\u00f1os.<br \\/>A pesar de ser una estrella mediana, es la \\u00fanica cuya forma circular se puede apreciar a simple vista, con un di\\u00e1metro angular de 32'' 35\\" de arco en el\\u00a0perihelio\\u00a0y 31'' 31\\" en el\\u00a0afelio, lo que da un di\\u00e1metro medio de 32'' 03\\". Casualmente, la combinaci\\u00f3n de tama\\u00f1os y distancias del Sol y la Luna respecto a la Tierra, hace que se vean aproximadamente con el mismo tama\\u00f1o aparente en el cielo. Esto permite una amplia gama de eclipses solares\\u00a0distintos (totales, anulares o parciales). Se han descubierto sistemas planetarios que tienen m\\u00e1s de una estrella central (sistema estelar).<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">\\u00a0<\\/p>\\r\\n<figure class=\\"pull-center\\"><img title=\\"Sistema Solar\\" src=\\"images\\/Aula_Ambiente\\/IMG_20170206_173816854.jpg\\" alt=\\"\\" width=\\"867\\" height=\\"651\\" \\/>\\r\\n<figcaption class=\\"text-right\\">Cuadro ubicado en Aula ambiente<\\/figcaption>\\r\\n<\\/figure>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los ocho\\u00a0planetas\\u00a0que componen el Sistema Solar son, de menor a mayor distancia respecto al\\u00a0Sol, los siguientes:<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: center;\\">Mercurio - Venus - Tierra - Marte - J\\u00fapiter - Saturno - Urano - Neptuno<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los planetas son cuerpos que giran formando \\u00f3rbitas alrededor de la estrella, tienen suficiente masa para que su gravedad supere las fuerzas del cuerpo r\\u00edgido, de manera que asuman una forma en equilibrio hidrost\\u00e1tico (pr\\u00e1cticamente esf\\u00e9rica), y han limpiado la vecindad de su \\u00f3rbita de planetesimales (dominancia orbital).<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los planetas interiores son Mercurio, Venus, la Tierra y Marte y tienen la superficie s\\u00f3lida. Los planetas exteriores son J\\u00fapiter, Saturno, Urano y Neptuno, tambi\\u00e9n se denominan planetas gaseosos porque contienen en sus atm\\u00f3sferas gases como el helio, el hidr\\u00f3geno y el metano, y no se conoce con certeza la estructura de su superficie. El 24 de agosto de 2006, la Uni\\u00f3n Astron\\u00f3mica Internacional (UAI) excluy\\u00f3 a Plut\\u00f3n como planeta del Sistema Solar, y lo clasific\\u00f3 como planeta enano.<\\/p>\\r\\n<hr \\/>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: left;\\">\\u00bfQue es un C\\u00famulo Estelar?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Agrupaci\\u00f3n de estrellas que comparten el mismo origen y se encuentran juntas en una zona determinada del espacio. A diferencia de las constelaciones, los c\\u00famulos son grupos naturales, formados por estrellas relacionadas entre s\\u00ed y bastante pr\\u00f3ximas. Se distinguen dos tipos de c\\u00famulos estelares; los c\\u00famulos abiertos, formados por estrellas en n\\u00famero de varias decenas hasta miles, y los c\\u00famulos globulares, que albergan desde 10.000 hasta un mill\\u00f3n de estrellas.<\\/p>","fulltext":"","state":1,"catid":"9","created":"2017-02-07 10:44:45","created_by":"502","created_by_alias":"","modified":"2017-02-09 01:49:47","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-09 01:49:38","publish_up":"2017-02-07 10:44:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/Aula_Ambiente\\\\\\/IMG_20170206_173440255.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"Sistema Solar\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"1\\",\\"show_article_options\\":\\"1\\",\\"show_urls_images_backend\\":\\"1\\",\\"show_urls_images_frontend\\":\\"1\\"}","version":19,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"9","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(31, 20, 5, '', '2017-02-09 02:07:00', 502, 552, '39c7455e8dee41d06de276ec5f82defdcee54c8a', '{"id":"20","asset_id":69,"parent_id":"1","lft":"35","rgt":36,"level":1,"path":null,"extension":"com_content","title":"MISION","alias":"mision","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-09 02:07:00","modified_user_id":null,"modified_time":"2017-02-09 02:07:00","hits":"0","language":"*","version":null}', 0),
(32, 21, 5, '', '2017-02-09 02:07:11', 502, 557, 'c6f086fe034872ad20982c28b09344a12fda79e9', '{"id":"21","asset_id":70,"parent_id":"1","lft":"37","rgt":38,"level":1,"path":null,"extension":"com_content","title":"VISI\\u00d3N","alias":"vision","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-09 02:07:11","modified_user_id":null,"modified_time":"2017-02-09 02:07:11","hits":"0","language":"*","version":null}', 0),
(33, 22, 5, '', '2017-02-09 02:07:20', 502, 577, 'f76279e80e19ce3b22cb4f363b192890baf6c22b', '{"id":"22","asset_id":71,"parent_id":"1","lft":"39","rgt":40,"level":1,"path":null,"extension":"com_content","title":"RESE\\u00d1A HISTORICA","alias":"resena-historica","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-09 02:07:20","modified_user_id":null,"modified_time":"2017-02-09 02:07:20","hits":"0","language":"*","version":null}', 0),
(34, 23, 5, '', '2017-02-09 02:09:00', 502, 559, '7e8c298f52464cdbc1b08e629c8f568a0f0b67b1', '{"id":"23","asset_id":72,"parent_id":"19","lft":"34","rgt":35,"level":2,"path":null,"extension":"com_content","title":"OBJETIVOS","alias":"objetivos","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-09 02:09:00","modified_user_id":null,"modified_time":"2017-02-09 02:09:00","hits":"0","language":"*","version":null}', 0),
(35, 20, 5, '', '2017-02-09 02:09:10', 502, 575, '1b026c1967ef44f05e488352153894a5a7d73ccc', '{"id":20,"asset_id":"69","parent_id":"19","lft":"36","rgt":37,"level":2,"path":"mision","extension":"com_content","title":"MISION","alias":"mision","note":"","description":"","published":"1","checked_out":"502","checked_out_time":"2017-02-09 02:09:04","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-09 02:07:00","modified_user_id":"502","modified_time":"2017-02-09 02:09:10","hits":"0","language":"*","version":"1"}', 0),
(36, 21, 5, '', '2017-02-09 02:09:20', 502, 580, 'b89cafae534de99ecac32356f14fa8e57315825d', '{"id":21,"asset_id":"70","parent_id":"19","lft":"38","rgt":39,"level":2,"path":"vision","extension":"com_content","title":"VISI\\u00d3N","alias":"vision","note":"","description":"","published":"1","checked_out":"502","checked_out_time":"2017-02-09 02:09:15","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-09 02:07:11","modified_user_id":"502","modified_time":"2017-02-09 02:09:20","hits":"0","language":"*","version":"1"}', 0),
(37, 22, 5, '', '2017-02-09 02:09:31', 502, 610, '0a9bda63a19e57ed7d2c2a6578fe3ee678d51342', '{"id":22,"asset_id":"71","parent_id":"19","lft":"40","rgt":41,"level":2,"path":"resena-historica","extension":"com_content","title":"RESE\\u00d1A HISTORICA","alias":"resena-historica","note":"","description":"","published":"1","checked_out":"502","checked_out_time":"2017-02-09 02:09:26","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-09 02:07:20","modified_user_id":"502","modified_time":"2017-02-09 02:09:31","hits":"0","language":"*","version":"1"}', 0),
(38, 24, 5, '', '2017-02-09 02:09:56', 502, 563, '81fbfb7c7a2bffc90e62675377587f5f533fac20', '{"id":"24","asset_id":73,"parent_id":"19","lft":"42","rgt":43,"level":2,"path":null,"extension":"com_content","title":"AUTORIDADES","alias":"autoridades","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-09 02:09:56","modified_user_id":null,"modified_time":"2017-02-09 02:09:56","hits":"0","language":"*","version":null}', 0),
(39, 1, 1, '', '2017-02-09 02:43:28', 502, 10308, '64e18594e4fecabcc89e583ce4d7bd0970b00b6d', '{"id":1,"asset_id":"56","title":"El Sistema Solar","alias":"el-sistema-solar","introtext":"<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">\\u00bfQu\\u00e9 es una estrella?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Las estrellas son cuerpos celestes de grandes dimensiones en cuyo interior se producen reacciones nucleares que provocan la emisi\\u00f3n de una gran cantidad de energ\\u00eda al espacio exterior. Las estrellas tienen un n\\u00facleo donde se producen las reacciones nucleares. Por ejemplo, cuatro \\u00e1tomos de hidr\\u00f3geno se convierten en uno de helio desprendiendo una cierta cantidad de energ\\u00eda. Estas reacciones nucleares son la causa de la emisi\\u00f3n de luz y calor. Las estrellas est\\u00e1n siempre en la b\\u00f3veda celeste, pero de d\\u00eda no son visibles debido a la luz de una de ellas: el Sol. La estrella m\\u00e1s cercana a la Tierra ha servido para estudiar estos astros, cuya caracter\\u00edstica principal es que emiten energ\\u00eda continuamente.\\u00a0<\\/p>\\r\\n<hr \\/><hr title=\\"Pagina 2\\" alt=\\"pagina 2\\" class=\\"system-pagebreak\\" \\/>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00bfEl Sol?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">El\\u00a0Sol\\u00a0es la\\u00a0estrella\\u00a0\\u00fanica y central del Sistema Solar; por tanto, es la estrella m\\u00e1s cercana a la Tierra y el astro con mayor\\u00a0brillo aparente. Su presencia o su ausencia en el cielo terrestre determinan, respectivamente, el\\u00a0d\\u00eda\\u00a0y la\\u00a0noche. La energ\\u00eda radiada por el Sol es aprovechada por los seres foto<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">sint\\u00e9ticos, que constituyen la base de la\\u00a0cadena alimenticia, y es por ello la principal fuente de energ\\u00eda de la vida. Tambi\\u00e9n aporta la energ\\u00eda que mantiene en funcionamiento los\\u00a0procesos clim\\u00e1ticos. El Sol es una estrella que se encuentra en la fase denominada\\u00a0secuencia principal, con un tipo espectral G2, que se form\\u00f3 hace unos 5000 millones de a\\u00f1os, y permanecer\\u00e1 en la secuencia principal aproximadamente otros 5000 millones de a\\u00f1os.<br \\/>A pesar de ser una estrella mediana, es la \\u00fanica cuya forma circular se puede apreciar a simple vista, con un di\\u00e1metro angular de 32'' 35\\" de arco en el\\u00a0perihelio\\u00a0y 31'' 31\\" en el\\u00a0afelio, lo que da un di\\u00e1metro medio de 32'' 03\\". Casualmente, la combinaci\\u00f3n de tama\\u00f1os y distancias del Sol y la Luna respecto a la Tierra, hace que se vean aproximadamente con el mismo tama\\u00f1o aparente en el cielo. Esto permite una amplia gama de eclipses solares\\u00a0distintos (totales, anulares o parciales). Se han descubierto sistemas planetarios que tienen m\\u00e1s de una estrella central (sistema estelar).<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">\\u00a0<\\/p>\\r\\n<figure class=\\"pull-center\\"><img title=\\"Sistema Solar\\" src=\\"images\\/Aula_Ambiente\\/IMG_20170206_173816854.jpg\\" alt=\\"\\" width=\\"867\\" height=\\"651\\" \\/>\\r\\n<figcaption class=\\"text-right\\">Cuadro ubicado en Aula ambiente<\\/figcaption>\\r\\n<\\/figure>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los ocho\\u00a0planetas\\u00a0que componen el Sistema Solar son, de menor a mayor distancia respecto al\\u00a0Sol, los siguientes:<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: center;\\">Mercurio - Venus - Tierra - Marte - J\\u00fapiter - Saturno - Urano - Neptuno<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los planetas son cuerpos que giran formando \\u00f3rbitas alrededor de la estrella, tienen suficiente masa para que su gravedad supere las fuerzas del cuerpo r\\u00edgido, de manera que asuman una forma en equilibrio hidrost\\u00e1tico (pr\\u00e1cticamente esf\\u00e9rica), y han limpiado la vecindad de su \\u00f3rbita de planetesimales (dominancia orbital).<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los planetas interiores son Mercurio, Venus, la Tierra y Marte y tienen la superficie s\\u00f3lida. Los planetas exteriores son J\\u00fapiter, Saturno, Urano y Neptuno, tambi\\u00e9n se denominan planetas gaseosos porque contienen en sus atm\\u00f3sferas gases como el helio, el hidr\\u00f3geno y el metano, y no se conoce con certeza la estructura de su superficie. El 24 de agosto de 2006, la Uni\\u00f3n Astron\\u00f3mica Internacional (UAI) excluy\\u00f3 a Plut\\u00f3n como planeta del Sistema Solar, y lo clasific\\u00f3 como planeta enano.<\\/p>\\r\\n<hr \\/><hr title=\\"Pagina 3\\" alt=\\"Pagina 3\\" class=\\"system-pagebreak\\" \\/>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: left;\\">\\u00bfQue es un C\\u00famulo Estelar?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Agrupaci\\u00f3n de estrellas que comparten el mismo origen y se encuentran juntas en una zona determinada del espacio. A diferencia de las constelaciones, los c\\u00famulos son grupos naturales, formados por estrellas relacionadas entre s\\u00ed y bastante pr\\u00f3ximas. Se distinguen dos tipos de c\\u00famulos estelares; los c\\u00famulos abiertos, formados por estrellas en n\\u00famero de varias decenas hasta miles, y los c\\u00famulos globulares, que albergan desde 10.000 hasta un mill\\u00f3n de estrellas.<\\/p>","fulltext":"","state":1,"catid":"9","created":"2017-02-07 10:44:45","created_by":"502","created_by_alias":"","modified":"2017-02-09 02:43:28","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-09 02:40:31","publish_up":"2017-02-07 10:44:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/Aula_Ambiente\\\\\\/IMG_20170206_173440255.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"Sistema Solar\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"Sistema Solar\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"1\\",\\"show_article_options\\":\\"1\\",\\"show_urls_images_backend\\":\\"1\\",\\"show_urls_images_frontend\\":\\"1\\"}","version":20,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"13","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(40, 1, 1, '', '2017-02-09 02:45:44', 502, 10308, '6c675011f4aca503083010c1a00c67d97ed24d0f', '{"id":1,"asset_id":"56","title":"El Sistema Solar","alias":"el-sistema-solar","introtext":"<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">\\u00bfQu\\u00e9 es una estrella?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Las estrellas son cuerpos celestes de grandes dimensiones en cuyo interior se producen reacciones nucleares que provocan la emisi\\u00f3n de una gran cantidad de energ\\u00eda al espacio exterior. Las estrellas tienen un n\\u00facleo donde se producen las reacciones nucleares. Por ejemplo, cuatro \\u00e1tomos de hidr\\u00f3geno se convierten en uno de helio desprendiendo una cierta cantidad de energ\\u00eda. Estas reacciones nucleares son la causa de la emisi\\u00f3n de luz y calor. Las estrellas est\\u00e1n siempre en la b\\u00f3veda celeste, pero de d\\u00eda no son visibles debido a la luz de una de ellas: el Sol. La estrella m\\u00e1s cercana a la Tierra ha servido para estudiar estos astros, cuya caracter\\u00edstica principal es que emiten energ\\u00eda continuamente.\\u00a0<\\/p>\\r\\n","fulltext":"<hr \\/><hr title=\\"Pagina 2\\" alt=\\"pagina 2\\" class=\\"system-pagebreak\\" \\/>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00bfEl Sol?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">El\\u00a0Sol\\u00a0es la\\u00a0estrella\\u00a0\\u00fanica y central del Sistema Solar; por tanto, es la estrella m\\u00e1s cercana a la Tierra y el astro con mayor\\u00a0brillo aparente. Su presencia o su ausencia en el cielo terrestre determinan, respectivamente, el\\u00a0d\\u00eda\\u00a0y la\\u00a0noche. La energ\\u00eda radiada por el Sol es aprovechada por los seres foto<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">sint\\u00e9ticos, que constituyen la base de la\\u00a0cadena alimenticia, y es por ello la principal fuente de energ\\u00eda de la vida. Tambi\\u00e9n aporta la energ\\u00eda que mantiene en funcionamiento los\\u00a0procesos clim\\u00e1ticos. El Sol es una estrella que se encuentra en la fase denominada\\u00a0secuencia principal, con un tipo espectral G2, que se form\\u00f3 hace unos 5000 millones de a\\u00f1os, y permanecer\\u00e1 en la secuencia principal aproximadamente otros 5000 millones de a\\u00f1os.<br \\/>A pesar de ser una estrella mediana, es la \\u00fanica cuya forma circular se puede apreciar a simple vista, con un di\\u00e1metro angular de 32'' 35\\" de arco en el\\u00a0perihelio\\u00a0y 31'' 31\\" en el\\u00a0afelio, lo que da un di\\u00e1metro medio de 32'' 03\\". Casualmente, la combinaci\\u00f3n de tama\\u00f1os y distancias del Sol y la Luna respecto a la Tierra, hace que se vean aproximadamente con el mismo tama\\u00f1o aparente en el cielo. Esto permite una amplia gama de eclipses solares\\u00a0distintos (totales, anulares o parciales). Se han descubierto sistemas planetarios que tienen m\\u00e1s de una estrella central (sistema estelar).<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">\\u00a0<\\/p>\\r\\n<figure class=\\"pull-center\\"><img title=\\"Sistema Solar\\" src=\\"images\\/Aula_Ambiente\\/IMG_20170206_173816854.jpg\\" alt=\\"\\" width=\\"867\\" height=\\"651\\" \\/>\\r\\n<figcaption class=\\"text-right\\">Cuadro ubicado en Aula ambiente<\\/figcaption>\\r\\n<\\/figure>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los ocho\\u00a0planetas\\u00a0que componen el Sistema Solar son, de menor a mayor distancia respecto al\\u00a0Sol, los siguientes:<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: center;\\">Mercurio - Venus - Tierra - Marte - J\\u00fapiter - Saturno - Urano - Neptuno<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los planetas son cuerpos que giran formando \\u00f3rbitas alrededor de la estrella, tienen suficiente masa para que su gravedad supere las fuerzas del cuerpo r\\u00edgido, de manera que asuman una forma en equilibrio hidrost\\u00e1tico (pr\\u00e1cticamente esf\\u00e9rica), y han limpiado la vecindad de su \\u00f3rbita de planetesimales (dominancia orbital).<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los planetas interiores son Mercurio, Venus, la Tierra y Marte y tienen la superficie s\\u00f3lida. Los planetas exteriores son J\\u00fapiter, Saturno, Urano y Neptuno, tambi\\u00e9n se denominan planetas gaseosos porque contienen en sus atm\\u00f3sferas gases como el helio, el hidr\\u00f3geno y el metano, y no se conoce con certeza la estructura de su superficie. El 24 de agosto de 2006, la Uni\\u00f3n Astron\\u00f3mica Internacional (UAI) excluy\\u00f3 a Plut\\u00f3n como planeta del Sistema Solar, y lo clasific\\u00f3 como planeta enano.<\\/p>\\r\\n<hr \\/><hr title=\\"Pagina 3\\" alt=\\"Pagina 3\\" class=\\"system-pagebreak\\" \\/>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: left;\\">\\u00bfQue es un C\\u00famulo Estelar?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Agrupaci\\u00f3n de estrellas que comparten el mismo origen y se encuentran juntas en una zona determinada del espacio. A diferencia de las constelaciones, los c\\u00famulos son grupos naturales, formados por estrellas relacionadas entre s\\u00ed y bastante pr\\u00f3ximas. Se distinguen dos tipos de c\\u00famulos estelares; los c\\u00famulos abiertos, formados por estrellas en n\\u00famero de varias decenas hasta miles, y los c\\u00famulos globulares, que albergan desde 10.000 hasta un mill\\u00f3n de estrellas.<\\/p>","state":1,"catid":"9","created":"2017-02-07 10:44:45","created_by":"502","created_by_alias":"","modified":"2017-02-09 02:45:44","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-09 02:43:28","publish_up":"2017-02-07 10:44:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/Aula_Ambiente\\\\\\/IMG_20170206_173440255.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"Sistema Solar\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"Sistema Solar\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"1\\",\\"show_article_options\\":\\"1\\",\\"show_urls_images_backend\\":\\"1\\",\\"show_urls_images_frontend\\":\\"1\\"}","version":21,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"14","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(41, 1, 1, '', '2017-02-09 02:46:11', 502, 10317, '0b2608fc19062fb41903e6a51ab67ce770ad76e3', '{"id":1,"asset_id":"56","title":"El Sistema Solar","alias":"el-sistema-solar","introtext":"<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">\\u00bfQu\\u00e9 es una estrella?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Las estrellas son cuerpos celestes de grandes dimensiones en cuyo interior se producen reacciones nucleares que provocan la emisi\\u00f3n de una gran cantidad de energ\\u00eda al espacio exterior. Las estrellas tienen un n\\u00facleo donde se producen las reacciones nucleares. Por ejemplo, cuatro \\u00e1tomos de hidr\\u00f3geno se convierten en uno de helio desprendiendo una cierta cantidad de energ\\u00eda. Estas reacciones nucleares son la causa de la emisi\\u00f3n de luz y calor. Las estrellas est\\u00e1n siempre en la b\\u00f3veda celeste, pero de d\\u00eda no son visibles debido a la luz de una de ellas: el Sol. La estrella m\\u00e1s cercana a la Tierra ha servido para estudiar estos astros, cuya caracter\\u00edstica principal es que emiten energ\\u00eda continuamente.\\u00a0<\\/p>\\r\\n","fulltext":"<hr \\/><hr title=\\"Pagina 2\\" alt=\\"pagina 2\\" class=\\"system-pagebreak\\" \\/>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00bfEl Sol?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">El\\u00a0Sol\\u00a0es la\\u00a0estrella\\u00a0\\u00fanica y central del Sistema Solar; por tanto, es la estrella m\\u00e1s cercana a la Tierra y el astro con mayor\\u00a0brillo aparente. Su presencia o su ausencia en el cielo terrestre determinan, respectivamente, el\\u00a0d\\u00eda\\u00a0y la\\u00a0noche. La energ\\u00eda radiada por el Sol es aprovechada por los seres foto<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">sint\\u00e9ticos, que constituyen la base de la\\u00a0cadena alimenticia, y es por ello la principal fuente de energ\\u00eda de la vida. Tambi\\u00e9n aporta la energ\\u00eda que mantiene en funcionamiento los\\u00a0procesos clim\\u00e1ticos. El Sol es una estrella que se encuentra en la fase denominada\\u00a0secuencia principal, con un tipo espectral G2, que se form\\u00f3 hace unos 5000 millones de a\\u00f1os, y permanecer\\u00e1 en la secuencia principal aproximadamente otros 5000 millones de a\\u00f1os.<br \\/>A pesar de ser una estrella mediana, es la \\u00fanica cuya forma circular se puede apreciar a simple vista, con un di\\u00e1metro angular de 32'' 35\\" de arco en el\\u00a0perihelio\\u00a0y 31'' 31\\" en el\\u00a0afelio, lo que da un di\\u00e1metro medio de 32'' 03\\". Casualmente, la combinaci\\u00f3n de tama\\u00f1os y distancias del Sol y la Luna respecto a la Tierra, hace que se vean aproximadamente con el mismo tama\\u00f1o aparente en el cielo. Esto permite una amplia gama de eclipses solares\\u00a0distintos (totales, anulares o parciales). Se han descubierto sistemas planetarios que tienen m\\u00e1s de una estrella central (sistema estelar).<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">\\u00a0<\\/p>\\r\\n<figure class=\\"pull-center\\"><img title=\\"Sistema Solar\\" src=\\"images\\/Aula_Ambiente\\/IMG_20170206_173816854.jpg\\" alt=\\"\\" width=\\"867\\" height=\\"651\\" \\/>\\r\\n<figcaption class=\\"text-right\\">Cuadro ubicado en Aula ambiente<\\/figcaption>\\r\\n<\\/figure>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los ocho\\u00a0planetas\\u00a0que componen el Sistema Solar son, de menor a mayor distancia respecto al\\u00a0Sol, los siguientes:<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: center;\\">Mercurio - Venus - Tierra - Marte - J\\u00fapiter - Saturno - Urano - Neptuno<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los planetas son cuerpos que giran formando \\u00f3rbitas alrededor de la estrella, tienen suficiente masa para que su gravedad supere las fuerzas del cuerpo r\\u00edgido, de manera que asuman una forma en equilibrio hidrost\\u00e1tico (pr\\u00e1cticamente esf\\u00e9rica), y han limpiado la vecindad de su \\u00f3rbita de planetesimales (dominancia orbital).<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los planetas interiores son Mercurio, Venus, la Tierra y Marte y tienen la superficie s\\u00f3lida. Los planetas exteriores son J\\u00fapiter, Saturno, Urano y Neptuno, tambi\\u00e9n se denominan planetas gaseosos porque contienen en sus atm\\u00f3sferas gases como el helio, el hidr\\u00f3geno y el metano, y no se conoce con certeza la estructura de su superficie. El 24 de agosto de 2006, la Uni\\u00f3n Astron\\u00f3mica Internacional (UAI) excluy\\u00f3 a Plut\\u00f3n como planeta del Sistema Solar, y lo clasific\\u00f3 como planeta enano.<\\/p>\\r\\n<hr \\/><hr title=\\"Pagina 3\\" alt=\\"Pagina 3\\" class=\\"system-pagebreak\\" \\/>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: left;\\">\\u00bfQue es un C\\u00famulo Estelar?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Agrupaci\\u00f3n de estrellas que comparten el mismo origen y se encuentran juntas en una zona determinada del espacio. A diferencia de las constelaciones, los c\\u00famulos son grupos naturales, formados por estrellas relacionadas entre s\\u00ed y bastante pr\\u00f3ximas. Se distinguen dos tipos de c\\u00famulos estelares; los c\\u00famulos abiertos, formados por estrellas en n\\u00famero de varias decenas hasta miles, y los c\\u00famulos globulares, que albergan desde 10.000 hasta un mill\\u00f3n de estrellas.<\\/p>","state":1,"catid":"9","created":"2017-02-07 10:44:45","created_by":"502","created_by_alias":"","modified":"2017-02-09 02:46:11","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-09 02:45:44","publish_up":"2017-02-07 10:44:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/Aula_Ambiente\\\\\\/IMG_20170206_173440255.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"Sistema Solar\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"Sistema Solar\\",\\"article_layout\\":\\"_:default\\",\\"show_publishing_options\\":\\"1\\",\\"show_article_options\\":\\"1\\",\\"show_urls_images_backend\\":\\"1\\",\\"show_urls_images_frontend\\":\\"1\\"}","version":22,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"14","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0);
INSERT INTO `cyfwe_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(42, 1, 1, '', '2017-02-09 02:46:24', 502, 10304, '21fd6b40fdfd4e3c78357b27e63925971d1508e1', '{"id":1,"asset_id":"56","title":"El Sistema Solar","alias":"el-sistema-solar","introtext":"<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">\\u00bfQu\\u00e9 es una estrella?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Las estrellas son cuerpos celestes de grandes dimensiones en cuyo interior se producen reacciones nucleares que provocan la emisi\\u00f3n de una gran cantidad de energ\\u00eda al espacio exterior. Las estrellas tienen un n\\u00facleo donde se producen las reacciones nucleares. Por ejemplo, cuatro \\u00e1tomos de hidr\\u00f3geno se convierten en uno de helio desprendiendo una cierta cantidad de energ\\u00eda. Estas reacciones nucleares son la causa de la emisi\\u00f3n de luz y calor. Las estrellas est\\u00e1n siempre en la b\\u00f3veda celeste, pero de d\\u00eda no son visibles debido a la luz de una de ellas: el Sol. La estrella m\\u00e1s cercana a la Tierra ha servido para estudiar estos astros, cuya caracter\\u00edstica principal es que emiten energ\\u00eda continuamente.\\u00a0<\\/p>\\r\\n","fulltext":"<hr \\/><hr title=\\"Pagina 2\\" alt=\\"pagina 2\\" class=\\"system-pagebreak\\" \\/>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00bfEl Sol?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">El\\u00a0Sol\\u00a0es la\\u00a0estrella\\u00a0\\u00fanica y central del Sistema Solar; por tanto, es la estrella m\\u00e1s cercana a la Tierra y el astro con mayor\\u00a0brillo aparente. Su presencia o su ausencia en el cielo terrestre determinan, respectivamente, el\\u00a0d\\u00eda\\u00a0y la\\u00a0noche. La energ\\u00eda radiada por el Sol es aprovechada por los seres foto<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">sint\\u00e9ticos, que constituyen la base de la\\u00a0cadena alimenticia, y es por ello la principal fuente de energ\\u00eda de la vida. Tambi\\u00e9n aporta la energ\\u00eda que mantiene en funcionamiento los\\u00a0procesos clim\\u00e1ticos. El Sol es una estrella que se encuentra en la fase denominada\\u00a0secuencia principal, con un tipo espectral G2, que se form\\u00f3 hace unos 5000 millones de a\\u00f1os, y permanecer\\u00e1 en la secuencia principal aproximadamente otros 5000 millones de a\\u00f1os.<br \\/>A pesar de ser una estrella mediana, es la \\u00fanica cuya forma circular se puede apreciar a simple vista, con un di\\u00e1metro angular de 32'' 35\\" de arco en el\\u00a0perihelio\\u00a0y 31'' 31\\" en el\\u00a0afelio, lo que da un di\\u00e1metro medio de 32'' 03\\". Casualmente, la combinaci\\u00f3n de tama\\u00f1os y distancias del Sol y la Luna respecto a la Tierra, hace que se vean aproximadamente con el mismo tama\\u00f1o aparente en el cielo. Esto permite una amplia gama de eclipses solares\\u00a0distintos (totales, anulares o parciales). Se han descubierto sistemas planetarios que tienen m\\u00e1s de una estrella central (sistema estelar).<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">\\u00a0<\\/p>\\r\\n<figure class=\\"pull-center\\"><img title=\\"Sistema Solar\\" src=\\"images\\/Aula_Ambiente\\/IMG_20170206_173816854.jpg\\" alt=\\"\\" width=\\"867\\" height=\\"651\\" \\/>\\r\\n<figcaption class=\\"text-right\\">Cuadro ubicado en Aula ambiente<\\/figcaption>\\r\\n<\\/figure>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los ocho\\u00a0planetas\\u00a0que componen el Sistema Solar son, de menor a mayor distancia respecto al\\u00a0Sol, los siguientes:<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: center;\\">Mercurio - Venus - Tierra - Marte - J\\u00fapiter - Saturno - Urano - Neptuno<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los planetas son cuerpos que giran formando \\u00f3rbitas alrededor de la estrella, tienen suficiente masa para que su gravedad supere las fuerzas del cuerpo r\\u00edgido, de manera que asuman una forma en equilibrio hidrost\\u00e1tico (pr\\u00e1cticamente esf\\u00e9rica), y han limpiado la vecindad de su \\u00f3rbita de planetesimales (dominancia orbital).<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los planetas interiores son Mercurio, Venus, la Tierra y Marte y tienen la superficie s\\u00f3lida. Los planetas exteriores son J\\u00fapiter, Saturno, Urano y Neptuno, tambi\\u00e9n se denominan planetas gaseosos porque contienen en sus atm\\u00f3sferas gases como el helio, el hidr\\u00f3geno y el metano, y no se conoce con certeza la estructura de su superficie. El 24 de agosto de 2006, la Uni\\u00f3n Astron\\u00f3mica Internacional (UAI) excluy\\u00f3 a Plut\\u00f3n como planeta del Sistema Solar, y lo clasific\\u00f3 como planeta enano.<\\/p>\\r\\n<hr \\/><hr title=\\"Pagina 3\\" alt=\\"Pagina 3\\" class=\\"system-pagebreak\\" \\/>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: left;\\">\\u00bfQue es un C\\u00famulo Estelar?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Agrupaci\\u00f3n de estrellas que comparten el mismo origen y se encuentran juntas en una zona determinada del espacio. A diferencia de las constelaciones, los c\\u00famulos son grupos naturales, formados por estrellas relacionadas entre s\\u00ed y bastante pr\\u00f3ximas. Se distinguen dos tipos de c\\u00famulos estelares; los c\\u00famulos abiertos, formados por estrellas en n\\u00famero de varias decenas hasta miles, y los c\\u00famulos globulares, que albergan desde 10.000 hasta un mill\\u00f3n de estrellas.<\\/p>","state":1,"catid":"9","created":"2017-02-07 10:44:45","created_by":"502","created_by_alias":"","modified":"2017-02-09 02:46:24","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-09 02:46:11","publish_up":"2017-02-07 10:44:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/Aula_Ambiente\\\\\\/IMG_20170206_173440255.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"Sistema Solar\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"_:default\\",\\"show_publishing_options\\":\\"1\\",\\"show_article_options\\":\\"1\\",\\"show_urls_images_backend\\":\\"1\\",\\"show_urls_images_frontend\\":\\"1\\"}","version":23,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"14","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(43, 1, 1, '', '2017-02-09 03:40:26', 502, 10307, '54ae309e34bb6b648bf93e24909f5236c4698a12', '{"id":1,"asset_id":"56","title":"El Sistema Solar","alias":"el-sistema-solar","introtext":"<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">\\u00bfQu\\u00e9 es una estrella?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Las estrellas son cuerpos celestes de grandes dimensiones en cuyo interior se producen reacciones nucleares que provocan la emisi\\u00f3n de una gran cantidad de energ\\u00eda al espacio exterior. Las estrellas tienen un n\\u00facleo donde se producen las reacciones nucleares. Por ejemplo, cuatro \\u00e1tomos de hidr\\u00f3geno se convierten en uno de helio desprendiendo una cierta cantidad de energ\\u00eda. Estas reacciones nucleares son la causa de la emisi\\u00f3n de luz y calor. Las estrellas est\\u00e1n siempre en la b\\u00f3veda celeste, pero de d\\u00eda no son visibles debido a la luz de una de ellas: el Sol. La estrella m\\u00e1s cercana a la Tierra ha servido para estudiar estos astros, cuya caracter\\u00edstica principal es que emiten energ\\u00eda continuamente.\\u00a0<\\/p>\\r\\n","fulltext":"<hr \\/><hr title=\\"Pagina 2\\" alt=\\"pagina 2\\" class=\\"system-pagebreak\\" \\/>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00bfEl Sol?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">El\\u00a0Sol\\u00a0es la\\u00a0estrella\\u00a0\\u00fanica y central del Sistema Solar; por tanto, es la estrella m\\u00e1s cercana a la Tierra y el astro con mayor\\u00a0brillo aparente. Su presencia o su ausencia en el cielo terrestre determinan, respectivamente, el\\u00a0d\\u00eda\\u00a0y la\\u00a0noche. La energ\\u00eda radiada por el Sol es aprovechada por los seres foto<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">sint\\u00e9ticos, que constituyen la base de la\\u00a0cadena alimenticia, y es por ello la principal fuente de energ\\u00eda de la vida. Tambi\\u00e9n aporta la energ\\u00eda que mantiene en funcionamiento los\\u00a0procesos clim\\u00e1ticos. El Sol es una estrella que se encuentra en la fase denominada\\u00a0secuencia principal, con un tipo espectral G2, que se form\\u00f3 hace unos 5000 millones de a\\u00f1os, y permanecer\\u00e1 en la secuencia principal aproximadamente otros 5000 millones de a\\u00f1os.<br \\/>A pesar de ser una estrella mediana, es la \\u00fanica cuya forma circular se puede apreciar a simple vista, con un di\\u00e1metro angular de 32'' 35\\" de arco en el\\u00a0perihelio\\u00a0y 31'' 31\\" en el\\u00a0afelio, lo que da un di\\u00e1metro medio de 32'' 03\\". Casualmente, la combinaci\\u00f3n de tama\\u00f1os y distancias del Sol y la Luna respecto a la Tierra, hace que se vean aproximadamente con el mismo tama\\u00f1o aparente en el cielo. Esto permite una amplia gama de eclipses solares\\u00a0distintos (totales, anulares o parciales). Se han descubierto sistemas planetarios que tienen m\\u00e1s de una estrella central (sistema estelar).<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">\\u00a0<\\/p>\\r\\n<figure class=\\"pull-center\\"><img title=\\"Sistema Solar\\" src=\\"images\\/Aula_Ambiente\\/IMG_20170206_173816854.jpg\\" alt=\\"\\" width=\\"867\\" height=\\"651\\" \\/>\\r\\n<figcaption class=\\"text-right\\">Cuadro ubicado en Aula ambiente<\\/figcaption>\\r\\n<\\/figure>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los ocho\\u00a0planetas\\u00a0que componen el Sistema Solar son, de menor a mayor distancia respecto al\\u00a0Sol, los siguientes:<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: center;\\">Mercurio - Venus - Tierra - Marte - J\\u00fapiter - Saturno - Urano - Neptuno<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los planetas son cuerpos que giran formando \\u00f3rbitas alrededor de la estrella, tienen suficiente masa para que su gravedad supere las fuerzas del cuerpo r\\u00edgido, de manera que asuman una forma en equilibrio hidrost\\u00e1tico (pr\\u00e1cticamente esf\\u00e9rica), y han limpiado la vecindad de su \\u00f3rbita de planetesimales (dominancia orbital).<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los planetas interiores son Mercurio, Venus, la Tierra y Marte y tienen la superficie s\\u00f3lida. Los planetas exteriores son J\\u00fapiter, Saturno, Urano y Neptuno, tambi\\u00e9n se denominan planetas gaseosos porque contienen en sus atm\\u00f3sferas gases como el helio, el hidr\\u00f3geno y el metano, y no se conoce con certeza la estructura de su superficie. El 24 de agosto de 2006, la Uni\\u00f3n Astron\\u00f3mica Internacional (UAI) excluy\\u00f3 a Plut\\u00f3n como planeta del Sistema Solar, y lo clasific\\u00f3 como planeta enano.<\\/p>\\r\\n<hr \\/><hr title=\\"Pagina 3\\" alt=\\"Pagina 3\\" class=\\"system-pagebreak\\" \\/>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: left;\\">\\u00bfQue es un C\\u00famulo Estelar?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Agrupaci\\u00f3n de estrellas que comparten el mismo origen y se encuentran juntas en una zona determinada del espacio. A diferencia de las constelaciones, los c\\u00famulos son grupos naturales, formados por estrellas relacionadas entre s\\u00ed y bastante pr\\u00f3ximas. Se distinguen dos tipos de c\\u00famulos estelares; los c\\u00famulos abiertos, formados por estrellas en n\\u00famero de varias decenas hasta miles, y los c\\u00famulos globulares, que albergan desde 10.000 hasta un mill\\u00f3n de estrellas.<\\/p>","state":1,"catid":"9","created":"2017-02-07 10:44:45","created_by":"502","created_by_alias":"","modified":"2017-02-09 03:40:26","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-09 03:36:27","publish_up":"2017-02-07 10:44:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/Aula_Ambiente\\\\\\/IMG_20170206_173440255.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"Sistema Solar\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"_:default\\",\\"show_publishing_options\\":\\"1\\",\\"show_article_options\\":\\"1\\",\\"show_urls_images_backend\\":\\"1\\",\\"show_urls_images_frontend\\":\\"1\\"}","version":24,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"21","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(44, 2, 1, '', '2017-02-09 06:44:28', 502, 4446, '28d2fddfb0f60436c2c8ec58dcc47c66ab332725', '{"id":"2","asset_id":76,"title":"Rese\\u00f1a Hist\\u00f3rica","alias":"resena-historica","introtext":"<p align=\\"justify\\"><span style=\\"color: #000000;\\"><span style=\\"font-family: Arial, serif;\\"><span style=\\"font-size: medium;\\"><span lang=\\"es-ES\\">En un principio el Prof. Argenis Marquina comenta entre sus compa\\u00f1eros, colegas y estudiantes la idea maravillosa de tener dentro de nuestra universidad un \\u00e1rea espec\\u00edfica que sirviera como estrategia y herramienta pedag\\u00f3gica para la ense\\u00f1anza de materias tales como: Geomorfolog\\u00eda, Geograf\\u00eda de la Poblaci\\u00f3n, Geograf\\u00eda de Venezuela, Cartograf\\u00eda, Climatolog\\u00eda, Ecolog\\u00eda y Ambiente, y algunas \\u00e1reas de la historia donde se vinculan con las antes mencionadas.<\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n<hr \\/>\\r\\n<p lang=\\"es-VE\\" align=\\"justify\\"><span style=\\"color: #000000;\\"><span style=\\"font-family: Arial, serif;\\"><span style=\\"font-size: medium;\\"><span lang=\\"es-ES\\">En sus inicios presta apoyo directo al programa ciencias de la educaci\\u00f3n espec\\u00edficamente al subprograma geograf\\u00eda e historia, sin ser una condici\\u00f3n de estrecha vinculaci\\u00f3n al mismo, puesto que dicha iniciativa fue creada para la universidad y no para un programa espec\\u00edfico, prueba fehaciente de ello es que a partir del a\\u00f1o 2.007 con la aprobaci\\u00f3n de la carrera Ingenier\\u00eda De Petr\\u00f3leo, se incorpora a la unidad, las \\u00e1reas del conocimiento Geolog\\u00eda F\\u00edsica, Geolog\\u00eda Petrolera e Hidrogeolog\\u00eda conjuntamente con 2 profesores m\\u00e1s: el Prof. Edgar Eduardo P\\u00e9rez, quien va a tener la responsabilidad de administrar todo el material documental de la unidad, y el Prof. Franklin Bardog Vergara Orosco, quien funge como asistente de investigaci\\u00f3n del Prof. Argenis Marquina, siendo \\u00e9stos el personal \\u00edntimo de dicha unidad.<\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n<hr \\/>\\r\\n<p lang=\\"es-VE\\" align=\\"justify\\"><span style=\\"color: #000000;\\"><span style=\\"font-family: Arial, serif;\\"><span style=\\"font-size: medium;\\"><span lang=\\"es-ES\\">El Aula Ambiente de Geograf\\u00eda posee a sus servicios personas de vital importancia como fue en sus inicios, y en la prosecuci\\u00f3n de sus objetivos, los cuales valen la pena mencionar: Dr. Cristian Casabogne Meger Megor, cient\\u00edfico franc\\u00e9s autor de infinidad de texto, especialmente del libro de Ciencias de la Tierra con el cual fueron formadas las generaciones de los a\\u00f1o 80 en su formaci\\u00f3n de estudios diversificados, colaborador m\\u00e1ximo en el \\u00e1rea de geolog\\u00eda y ep\\u00f3nimo de la colecci\\u00f3n y muestra litogr\\u00e1fica que reposan hoy tanto en el laboratorio de geolog\\u00eda como en el Aula Ambiente de Geograf\\u00eda.<\\/span><\\/span><\\/span><\\/span><\\/p>","fulltext":"","state":1,"catid":"22","created":"2017-02-09 06:44:28","created_by":"502","created_by_alias":"","modified":"2017-02-09 06:44:28","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2017-02-09 06:44:28","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(45, 2, 1, '', '2017-02-09 06:48:03', 502, 4476, '3a6d6f10e38bfaf5283391b890f5aef625c1a691', '{"id":2,"asset_id":"76","title":"Rese\\u00f1a Hist\\u00f3rica","alias":"resena-historica","introtext":"<p align=\\"justify\\"><span style=\\"color: #000000;\\"><span style=\\"font-family: Arial, serif;\\"><span style=\\"font-size: medium;\\"><span lang=\\"es-ES\\">En un principio el Prof. Argenis Marquina comenta entre sus compa\\u00f1eros, colegas y estudiantes la idea maravillosa de tener dentro de nuestra universidad un \\u00e1rea espec\\u00edfica que sirviera como estrategia y herramienta pedag\\u00f3gica para la ense\\u00f1anza de materias tales como: Geomorfolog\\u00eda, Geograf\\u00eda de la Poblaci\\u00f3n, Geograf\\u00eda de Venezuela, Cartograf\\u00eda, Climatolog\\u00eda, Ecolog\\u00eda y Ambiente, y algunas \\u00e1reas de la historia donde se vinculan con las antes mencionadas.<\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n<hr \\/>\\r\\n<p lang=\\"es-VE\\" align=\\"justify\\"><span style=\\"color: #000000;\\"><span style=\\"font-family: Arial, serif;\\"><span style=\\"font-size: medium;\\"><span lang=\\"es-ES\\">En sus inicios presta apoyo directo al programa ciencias de la educaci\\u00f3n espec\\u00edficamente al subprograma geograf\\u00eda e historia, sin ser una condici\\u00f3n de estrecha vinculaci\\u00f3n al mismo, puesto que dicha iniciativa fue creada para la universidad y no para un programa espec\\u00edfico, prueba fehaciente de ello es que a partir del a\\u00f1o 2.007 con la aprobaci\\u00f3n de la carrera Ingenier\\u00eda De Petr\\u00f3leo, se incorpora a la unidad, las \\u00e1reas del conocimiento Geolog\\u00eda F\\u00edsica, Geolog\\u00eda Petrolera e Hidrogeolog\\u00eda conjuntamente con 2 profesores m\\u00e1s: el Prof. Edgar Eduardo P\\u00e9rez, quien va a tener la responsabilidad de administrar todo el material documental de la unidad, y el Prof. Franklin Bardog Vergara Orosco, quien funge como asistente de investigaci\\u00f3n del Prof. Argenis Marquina, siendo \\u00e9stos el personal \\u00edntimo de dicha unidad.<\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n<hr \\/>\\r\\n<p lang=\\"es-VE\\" align=\\"justify\\"><span style=\\"color: #000000;\\"><span style=\\"font-family: Arial, serif;\\"><span style=\\"font-size: medium;\\"><span lang=\\"es-ES\\">El Aula Ambiente de Geograf\\u00eda posee a sus servicios personas de vital importancia como fue en sus inicios, y en la prosecuci\\u00f3n de sus objetivos, los cuales valen la pena mencionar: Dr. Cristian Casabogne Meger Megor, cient\\u00edfico franc\\u00e9s autor de infinidad de texto, especialmente del libro de Ciencias de la Tierra con el cual fueron formadas las generaciones de los a\\u00f1o 80 en su formaci\\u00f3n de estudios diversificados, colaborador m\\u00e1ximo en el \\u00e1rea de geolog\\u00eda y ep\\u00f3nimo de la colecci\\u00f3n y muestra litogr\\u00e1fica que reposan hoy tanto en el laboratorio de geolog\\u00eda como en el Aula Ambiente de Geograf\\u00eda.<\\/span><\\/span><\\/span><\\/span><\\/p>","fulltext":"","state":1,"catid":"22","created":"2017-02-09 06:44:28","created_by":"502","created_by_alias":"","modified":"2017-02-09 06:48:03","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-09 06:47:09","publish_up":"2017-02-09 06:44:28","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(46, 2, 1, '', '2017-02-09 19:15:52', 503, 4580, '94fb161496c66c0b1f486a56afba96f3604e1984', '{"id":2,"asset_id":"76","title":"Rese\\u00f1a Hist\\u00f3rica","alias":"resena-historica","introtext":"<p align=\\"justify\\"><span style=\\"color: #000000;\\"><span style=\\"font-family: Arial, serif;\\"><span style=\\"font-size: medium;\\"><span lang=\\"es-ES\\">En un principio esta unidad nace de la iniciativa del Prof. Argenis Marquina el cual comenta entre sus compa\\u00f1eros, colegas y estudiantes la idea maravillosa de tener dentro de nuestra universidad un \\u00e1rea espec\\u00edfica que sirviera como estrategia y herramienta pedag\\u00f3gica para la ense\\u00f1anza de materias tales como: Geomorfolog\\u00eda, Geograf\\u00eda de la Poblaci\\u00f3n, Geograf\\u00eda de Venezuela, Cartograf\\u00eda, Climatolog\\u00eda, Ecolog\\u00eda, Ambiente, y todas las relacionadas a la ciencia de la tierra e incluso algunas \\u00e1reas de la historia donde se vinculan con las antes mencionadas.<\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n<hr \\/>\\r\\n<p lang=\\"es-VE\\" align=\\"justify\\"><span style=\\"color: #000000;\\"><span style=\\"font-family: Arial, serif;\\"><span style=\\"font-size: medium;\\"><span lang=\\"es-ES\\">En sus inicios presta apoyo directo al programa ciencias de la educaci\\u00f3n espec\\u00edficamente al subprograma geograf\\u00eda e historia, sin ser una condici\\u00f3n de estrecha vinculaci\\u00f3n al mismo, puesto que dicha iniciativa fue creada para la universidad y no para un programa espec\\u00edfico, prueba fehaciente de ello es que a partir del a\\u00f1o 2.007 con la aprobaci\\u00f3n de la carrera Ingenier\\u00eda De Petr\\u00f3leo, se incorpora a la unidad, las \\u00e1reas del conocimiento Geolog\\u00eda F\\u00edsica, Geolog\\u00eda Petrolera e Hidrogeolog\\u00eda conjuntamente con 2 profesores m\\u00e1s: el Prof. Edgar Eduardo P\\u00e9rez, quien va a tener la responsabilidad de administrar todo el material documental de la unidad, y el Prof. Franklin Bardog Vergara Orosco, quien funge como asistente de investigaci\\u00f3n del Prof. Argenis Marquina, siendo \\u00e9stos el personal \\u00edntimo de dicha unidad.<\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n<hr \\/>\\r\\n<p lang=\\"es-VE\\" align=\\"justify\\"><span style=\\"color: #000000;\\"><span style=\\"font-family: Arial, serif;\\"><span style=\\"font-size: medium;\\"><span lang=\\"es-ES\\">El Aula Ambiente de Geograf\\u00eda posee a sus servicios personas de vital importancia como fue en sus inicios, y en la prosecuci\\u00f3n de sus objetivos, los cuales valen la pena mencionar: Dr. Cristian Casabogne Meger Megor, cient\\u00edfico franc\\u00e9s autor de infinidad de texto, especialmente del libro de Ciencias de la Tierra con el cual fueron formadas las generaciones de los a\\u00f1o 80 en su formaci\\u00f3n de estudios diversificados, colaborador m\\u00e1ximo en el \\u00e1rea de geolog\\u00eda y ep\\u00f3nimo de la colecci\\u00f3n y muestra litogr\\u00e1fica que reposan hoy tanto en el laboratorio de geolog\\u00eda como en el Aula Ambiente de Geograf\\u00eda.<\\/span><\\/span><\\/span><\\/span><\\/p>","fulltext":"","state":"1","catid":"22","created":"2017-02-09 06:44:28","created_by":"502","created_by_alias":"","modified":"2017-02-09 19:15:52","modified_by":"503","checked_out":"503","checked_out_time":"2017-02-09 19:06:38","publish_up":"2017-02-09 06:44:28","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"11","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(47, 1, 1, '', '2017-02-14 14:36:18', 505, 10309, 'cffe3ac58970d848b541eaf0955871da470ca95a', '{"id":1,"asset_id":"56","title":"El Sistema Solar","alias":"el-sistema-solar","introtext":"<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">\\u00bfQu\\u00e9 es una estrella?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Las estrellas son cuerpos celestes de grandes dimensiones en cuyo interior se producen reacciones nucleares que provocan la emisi\\u00f3n de una gran cantidad de energ\\u00eda al espacio exterior. Las estrellas tienen un n\\u00facleo donde se producen las reacciones nucleares. Por ejemplo, cuatro \\u00e1tomos de hidr\\u00f3geno se convierten en uno de helio desprendiendo una cierta cantidad de energ\\u00eda. Estas reacciones nucleares son la causa de la emisi\\u00f3n de luz y calor. Las estrellas est\\u00e1n siempre en la b\\u00f3veda celeste, pero de d\\u00eda no son visibles debido a la luz de una de ellas: el Sol. La estrella m\\u00e1s cercana a la Tierra ha servido para estudiar estos astros, cuya caracter\\u00edstica principal es que emiten energ\\u00eda continuamente.\\u00a0<\\/p>\\r\\n","fulltext":"<hr \\/><hr title=\\"Pagina 2\\" alt=\\"pagina 2\\" class=\\"system-pagebreak\\" \\/>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00bfEl Sol?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">El\\u00a0Sol\\u00a0es la\\u00a0estrella\\u00a0\\u00fanica y central del Sistema Solar; por tanto, es la estrella m\\u00e1s cercana a la Tierra y el astro con mayor\\u00a0brillo aparente. Su presencia o su ausencia en el cielo terrestre determinan, respectivamente, el\\u00a0d\\u00eda\\u00a0y la\\u00a0noche. La energ\\u00eda radiada por el Sol es aprovechada por los seres foto<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">sint\\u00e9ticos, que constituyen la base de la\\u00a0cadena alimenticia, y es por ello la principal fuente de energ\\u00eda de la vida. Tambi\\u00e9n aporta la energ\\u00eda que mantiene en funcionamiento los\\u00a0procesos clim\\u00e1ticos. El Sol es una estrella que se encuentra en la fase denominada\\u00a0secuencia principal, con un tipo espectral G2, que se form\\u00f3 hace unos 5000 millones de a\\u00f1os, y permanecer\\u00e1 en la secuencia principal aproximadamente otros 5000 millones de a\\u00f1os.<br \\/>A pesar de ser una estrella mediana, es la \\u00fanica cuya forma circular se puede apreciar a simple vista, con un di\\u00e1metro angular de 32'' 35\\" de arco en el\\u00a0perihelio\\u00a0y 31'' 31\\" en el\\u00a0afelio, lo que da un di\\u00e1metro medio de 32'' 03\\". Casualmente, la combinaci\\u00f3n de tama\\u00f1os y distancias del Sol y la Luna respecto a la Tierra, hace que se vean aproximadamente con el mismo tama\\u00f1o aparente en el cielo. Esto permite una amplia gama de eclipses solares\\u00a0distintos (totales, anulares o parciales). Se han descubierto sistemas planetarios que tienen m\\u00e1s de una estrella central (sistema estelar).<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">\\u00a0<\\/p>\\r\\n<figure class=\\"pull-center\\"><img title=\\"Sistema Solar\\" src=\\"images\\/Aula_Ambiente\\/IMG_20170206_173816854.jpg\\" alt=\\"\\" width=\\"867\\" height=\\"651\\" \\/>\\r\\n<figcaption class=\\"text-right\\">Cuadro ubicado en Aula ambiente<\\/figcaption>\\r\\n<\\/figure>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los ocho\\u00a0planetas\\u00a0que componen el Sistema Solar son, de menor a mayor distancia respecto al\\u00a0Sol, los siguientes:<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: center;\\">Mercurio - Venus - Tierra - Marte - J\\u00fapiter - Saturno - Urano - Neptuno<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los planetas son cuerpos que giran formando \\u00f3rbitas alrededor de la estrella, tienen suficiente masa para que su gravedad supere las fuerzas del cuerpo r\\u00edgido, de manera que asuman una forma en equilibrio hidrost\\u00e1tico (pr\\u00e1cticamente esf\\u00e9rica), y han limpiado la vecindad de su \\u00f3rbita de planetesimales (dominancia orbital).<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\">\\u00a0<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Los planetas interiores son Mercurio, Venus, la Tierra y Marte y tienen la superficie s\\u00f3lida. Los planetas exteriores son J\\u00fapiter, Saturno, Urano y Neptuno, tambi\\u00e9n se denominan planetas gaseosos porque contienen en sus atm\\u00f3sferas gases como el helio, el hidr\\u00f3geno y el metano, y no se conoce con certeza la estructura de su superficie. El 24 de agosto de 2006, la Uni\\u00f3n Astron\\u00f3mica Internacional (UAI) excluy\\u00f3 a Plut\\u00f3n como planeta del Sistema Solar, y lo clasific\\u00f3 como planeta enano.<\\/p>\\r\\n<hr \\/><hr title=\\"Pagina 3\\" alt=\\"Pagina 3\\" class=\\"system-pagebreak\\" \\/>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: left;\\">\\u00bfQue es un C\\u00famulo Estelar?<\\/p>\\r\\n<p style=\\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: justify;\\">Agrupaci\\u00f3n de estrellas que comparten el mismo origen y se encuentran juntas en una zona determinada del espacio. A diferencia de las constelaciones, los c\\u00famulos son grupos naturales, formados por estrellas relacionadas entre s\\u00ed y bastante pr\\u00f3ximas. Se distinguen dos tipos de c\\u00famulos estelares; los c\\u00famulos abiertos, formados por estrellas en n\\u00famero de varias decenas hasta miles, y los c\\u00famulos globulares, que albergan desde 10.000 hasta un mill\\u00f3n de estrellas.<\\/p>","state":"1","catid":"9","created":"2017-02-07 10:44:45","created_by":"502","created_by_alias":"","modified":"2017-02-14 14:36:18","modified_by":"505","checked_out":"505","checked_out_time":"2017-02-14 14:34:20","publish_up":"2017-02-07 10:44:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/Aula_Ambiente\\\\\\/IMG_20170206_173816854.jpg\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"Sistema Solar\\",\\"float_intro\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\",\\"float_fulltext\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"_:default\\",\\"show_publishing_options\\":\\"1\\",\\"show_article_options\\":\\"1\\",\\"show_urls_images_backend\\":\\"1\\",\\"show_urls_images_frontend\\":\\"1\\"}","version":26,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"35","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(48, 25, 5, '', '2017-02-14 14:41:11', 502, 649, '9ab5222fd2bd2434b2139b57fa37967ed5a78ccd', '{"id":25,"asset_id":77,"parent_id":"19","lft":"44","rgt":45,"level":2,"path":null,"extension":"com_content","title":"Planetario","alias":"planetario","note":"","description":"<p>Es un lugar dedicado a la presentaci\\u00f3n de espect\\u00e1culos astron\\u00f3micos<\\/p>","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-14 14:41:11","modified_user_id":null,"modified_time":"2017-02-14 14:41:11","hits":"0","language":"*","version":null}', 0),
(52, 26, 5, '', '2017-02-17 05:24:57', 502, 657, '308f70346026a4bbbdefe8e9a745addf72deb5df', '{"id":26,"asset_id":81,"parent_id":"19","lft":"46","rgt":47,"level":2,"path":null,"extension":"com_content","title":"MUESTRARIOS","alias":"muestrarios","note":"","description":"<p>Muestrarios presentes en la unidad de investigaci\\u00f3n aula ambiente de geograf\\u00eda<\\/p>","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-17 05:24:57","modified_user_id":null,"modified_time":"2017-02-17 05:24:57","hits":"0","language":"*","version":null}', 0),
(56, 25, 5, '', '2017-02-17 05:34:50', 502, 687, 'b9ce8e5b1ae01f1dc7996ee2040eae9bdcfc41fd', '{"id":25,"asset_id":"77","parent_id":"19","lft":"44","rgt":"45","level":"2","path":"aula\\/planetario","extension":"com_content","title":"PLANETARIO","alias":"planetario","note":"","description":"<p>Es un lugar dedicado a la presentaci\\u00f3n de espect\\u00e1culos astron\\u00f3micos<\\/p>","published":"1","checked_out":"502","checked_out_time":"2017-02-17 05:34:43","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-02-14 14:41:11","modified_user_id":"502","modified_time":"2017-02-17 05:34:50","hits":"0","language":"*","version":"1"}', 0);
INSERT INTO `cyfwe_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(58, 4, 1, '', '2017-02-17 05:37:50', 502, 3039, '07ea8d9ec507d054185d1017f91c32908e73a241', '{"id":4,"asset_id":"80","title":"Muestrarios","alias":"muestrarios","introtext":"<p>En la UNIDAD DE INVESTIGACI\\u00d3N AULA AMBIENTE DE GEOGRAF\\u00cdA contamos con una gran variedad de muestrarios de excelente material acad\\u00e9mico elaborados por estudiantes y profesores que hacen vida en el aula.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>En esta p\\u00e1gina te adelantamos algunos muestrarios que te puedes encontrar en el aula:<\\/p>\\r\\n<hr title=\\"Muestrarios\\" alt=\\"Muestrarios\\" class=\\"system-pagebreak\\" \\/><hr \\/>\\r\\n<p>1) Muestrario de rocas<\\/p>\\r\\n<p><img src=\\"images\\/Aula_Ambiente\\/IMG_20170206_172905259_HDR.jpg\\" alt=\\"\\" \\/><\\/p>\\r\\n<p>Este muestrario esta ubicado en la oficina del aula ambiente y cuenta con una variedad de rocas metam\\u00f3rficas, ign\\u00e9as y sedimentarias.<\\/p>\\r\\n<hr title=\\"Muestrarios\\" alt=\\"Muestrarios\\" class=\\"system-pagebreak\\" \\/>\\r\\n<p>2) Muestrarios de rocas - Recolecci\\u00f3n de una pr\\u00e1ctica de campo<\\/p>\\r\\n<figure class=\\"pull-center\\"><img title=\\"Muestrario de rocas\\" src=\\"images\\/Aula_Ambiente\\/IMG_20170206_173508021.jpg\\" alt=\\"Muestrario de rocas\\" \\/>\\r\\n<figcaption><\\/figcaption>\\r\\n<figcaption>Este muestrario es producto de las actividades de campo realizadas en concordancia con la l\\u00ednea de investigaci\\u00f3n Geolog\\u00eda F\\u00edsica. Podemos observar tambi\\u00e9n el ciclo de las rocas.<\\/figcaption>\\r\\n<\\/figure>","fulltext":"","state":1,"catid":"26","created":"2017-02-17 05:23:34","created_by":"502","created_by_alias":"","modified":"2017-02-17 05:37:50","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-17 05:35:43","publish_up":"2017-02-17 05:23:34","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"12","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(59, 4, 1, '', '2017-02-17 05:38:28', 502, 3042, '5f08e72268632c5f84b8e4fadf041e075d213e94', '{"id":4,"asset_id":"80","title":"Muestrarios","alias":"muestrarios","introtext":"<p>En la UNIDAD DE INVESTIGACI\\u00d3N AULA AMBIENTE DE GEOGRAF\\u00cdA contamos con una gran variedad de muestrarios de excelente material acad\\u00e9mico elaborados por estudiantes y profesores que hacen vida en el aula.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>En esta p\\u00e1gina te adelantamos algunos muestrarios que te puedes encontrar en el aula:<\\/p>\\r\\n<hr title=\\"Muestrarios\\" alt=\\"Muestrarios\\" class=\\"system-pagebreak\\" \\/><hr \\/>\\r\\n<p>1) Muestrario de rocas<\\/p>\\r\\n<p><img src=\\"images\\/Aula_Ambiente\\/IMG_20170206_172905259_HDR.jpg\\" alt=\\"\\" \\/><\\/p>\\r\\n<p>Este muestrario esta ubicado en la oficina del aula ambiente y cuenta con una variedad de rocas metam\\u00f3rficas, ign\\u00e9as y sedimentarias.<\\/p>\\r\\n<hr title=\\"Muestrarios\\" alt=\\"Muestrarios\\" class=\\"system-pagebreak\\" \\/>\\r\\n<p>2) Muestrarios de rocas - Recolecci\\u00f3n de una pr\\u00e1ctica de campo<\\/p>\\r\\n<figure class=\\"pull-center\\"><img title=\\"Muestrario de rocas\\" src=\\"images\\/Aula_Ambiente\\/IMG_20170206_173508021.jpg\\" alt=\\"Muestrario de rocas\\" \\/>\\r\\n<figcaption><\\/figcaption>\\r\\n<figcaption>Este muestrario es producto de las actividades de campo realizadas en concordancia con la l\\u00ednea de investigaci\\u00f3n Geolog\\u00eda F\\u00edsica. Podemos observar tambi\\u00e9n el ciclo de las rocas.<\\/figcaption>\\r\\n<\\/figure>","fulltext":"","state":1,"catid":"26","created":"2017-02-17 05:23:34","created_by":"502","created_by_alias":"","modified":"2017-02-17 05:38:28","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-17 05:37:50","publish_up":"2017-02-17 05:23:34","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"13","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(60, 4, 1, '', '2017-02-17 05:40:00', 502, 3042, 'edf4b35dc07ed47c08e9ce99bf7cb64da295a564', '{"id":4,"asset_id":"80","title":"Muestrarios","alias":"muestrarios","introtext":"<p>En la UNIDAD DE INVESTIGACI\\u00d3N AULA AMBIENTE DE GEOGRAF\\u00cdA contamos con una gran variedad de muestrarios de excelente material acad\\u00e9mico elaborados por estudiantes y profesores que hacen vida en el aula.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>En esta p\\u00e1gina te adelantamos algunos muestrarios que te puedes encontrar en el aula:<\\/p>\\r\\n<hr title=\\"Muestrario\\" alt=\\"Muestrario 1\\" class=\\"system-pagebreak\\" \\/><hr \\/>\\r\\n<p>1) Muestrario de rocas<\\/p>\\r\\n<p><img src=\\"images\\/Aula_Ambiente\\/IMG_20170206_172905259_HDR.jpg\\" alt=\\"\\" \\/><\\/p>\\r\\n<p>Este muestrario esta ubicado en la oficina del aula ambiente y cuenta con una variedad de rocas metam\\u00f3rficas, ign\\u00e9as y sedimentarias.<\\/p>\\r\\n<hr title=\\"Muestrarios\\" alt=\\"Muestrarios\\" class=\\"system-pagebreak\\" \\/>\\r\\n<p>2) Muestrarios de rocas - Recolecci\\u00f3n de una pr\\u00e1ctica de campo<\\/p>\\r\\n<figure class=\\"pull-center\\"><img title=\\"Muestrario de rocas\\" src=\\"images\\/Aula_Ambiente\\/IMG_20170206_173508021.jpg\\" alt=\\"Muestrario de rocas\\" \\/>\\r\\n<figcaption><\\/figcaption>\\r\\n<figcaption>Este muestrario es producto de las actividades de campo realizadas en concordancia con la l\\u00ednea de investigaci\\u00f3n Geolog\\u00eda F\\u00edsica. Podemos observar tambi\\u00e9n el ciclo de las rocas.<\\/figcaption>\\r\\n<\\/figure>","fulltext":"","state":1,"catid":"26","created":"2017-02-17 05:23:34","created_by":"502","created_by_alias":"","modified":"2017-02-17 05:40:00","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-17 05:38:28","publish_up":"2017-02-17 05:23:34","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"14","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(61, 4, 1, '', '2017-02-17 05:40:38', 502, 3043, '6620f07bb1b33dadc646d7c0c904f4215d52a678', '{"id":4,"asset_id":"80","title":"Muestrarios","alias":"muestrarios","introtext":"<p>En la UNIDAD DE INVESTIGACI\\u00d3N AULA AMBIENTE DE GEOGRAF\\u00cdA contamos con una gran variedad de muestrarios de excelente material acad\\u00e9mico elaborados por estudiantes y profesores que hacen vida en el aula.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>En esta p\\u00e1gina te adelantamos algunos muestrarios que te puedes encontrar en el aula:<\\/p>\\r\\n<hr title=\\"Muestrario\\" alt=\\"Muestrario 1\\" class=\\"system-pagebreak\\" \\/><hr \\/>\\r\\n<p>1) Muestrario de rocas<\\/p>\\r\\n<p><img src=\\"images\\/Aula_Ambiente\\/IMG_20170206_172905259_HDR.jpg\\" alt=\\"\\" \\/><\\/p>\\r\\n<p>Este muestrario esta ubicado en la oficina del aula ambiente y cuenta con una variedad de rocas metam\\u00f3rficas, ign\\u00e9as y sedimentarias.<\\/p>\\r\\n<hr title=\\"Muestrarios\\" alt=\\"Muestrario 2\\" class=\\"system-pagebreak\\" \\/>\\r\\n<p>2) Muestrarios de rocas - Recolecci\\u00f3n de una pr\\u00e1ctica de campo<\\/p>\\r\\n<figure class=\\"pull-center\\"><img title=\\"Muestrario de rocas\\" src=\\"images\\/Aula_Ambiente\\/IMG_20170206_173508021.jpg\\" alt=\\"Muestrario de rocas\\" \\/>\\r\\n<figcaption><\\/figcaption>\\r\\n<figcaption>Este muestrario es producto de las actividades de campo realizadas en concordancia con la l\\u00ednea de investigaci\\u00f3n Geolog\\u00eda F\\u00edsica. Podemos observar tambi\\u00e9n el ciclo de las rocas.<\\/figcaption>\\r\\n<\\/figure>","fulltext":"","state":1,"catid":"26","created":"2017-02-17 05:23:34","created_by":"502","created_by_alias":"","modified":"2017-02-17 05:40:38","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-17 05:40:00","publish_up":"2017-02-17 05:23:34","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"16","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(62, 4, 1, '', '2017-02-17 05:54:23', 502, 3069, 'a741889b5beb9327a7e9f49e5475ec550af0d1e6', '{"id":4,"asset_id":"80","title":"Muestrarios","alias":"muestrarios","introtext":"<p>En la UNIDAD DE INVESTIGACI\\u00d3N AULA AMBIENTE DE GEOGRAF\\u00cdA contamos con una gran variedad de muestrarios de excelente material acad\\u00e9mico elaborados por estudiantes y profesores que hacen vida en el aula.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>En esta p\\u00e1gina te adelantamos algunos muestrarios que te puedes encontrar en el aula:<\\/p>\\r\\n<hr title=\\"Muestrario\\" alt=\\"Muestrario 1\\" class=\\"system-pagebreak\\" \\/><hr \\/>\\r\\n<p>1) Muestrario de rocas<\\/p>\\r\\n<p><img src=\\"images\\/Aula_Ambiente\\/IMG_20170206_172905259_HDR.jpg\\" alt=\\"\\" \\/><\\/p>\\r\\n<p>Este muestrario esta ubicado en la oficina del aula ambiente y cuenta con una variedad de rocas metam\\u00f3rficas, ign\\u00e9as y sedimentarias.<\\/p>\\r\\n<hr title=\\"Muestrarios\\" alt=\\"Muestrario 2\\" class=\\"system-pagebreak\\" \\/>\\r\\n<p>2) Muestrarios de rocas - Recolecci\\u00f3n de una pr\\u00e1ctica de campo<\\/p>\\r\\n<figure class=\\"pull-center\\"><img title=\\"Muestrario de rocas\\" src=\\"images\\/Aula_Ambiente\\/IMG_20170206_173508021.jpg\\" alt=\\"Muestrario de rocas\\" \\/>\\r\\n<figcaption><\\/figcaption>\\r\\n<figcaption>Este muestrario es producto de las actividades de campo realizadas en concordancia con la l\\u00ednea de investigaci\\u00f3n Geolog\\u00eda F\\u00edsica. Podemos observar tambi\\u00e9n el ciclo de las rocas.<\\/figcaption>\\r\\n<\\/figure>","fulltext":"","state":1,"catid":"26","created":"2017-02-17 05:23:34","created_by":"502","created_by_alias":"","modified":"2017-02-17 05:54:23","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-17 05:40:38","publish_up":"2017-02-17 05:23:34","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/muestrarios.png\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":10,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"19","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(63, 4, 1, '', '2017-02-17 05:55:02', 502, 3069, 'a1251247121387f8062b80596eeb17a2e1553e6c', '{"id":4,"asset_id":"80","title":"Muestrarios","alias":"muestrarios","introtext":"<p>En la UNIDAD DE INVESTIGACI\\u00d3N AULA AMBIENTE DE GEOGRAF\\u00cdA contamos con una gran variedad de muestrarios de excelente material acad\\u00e9mico elaborados por estudiantes y profesores que hacen vida en el aula.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>En esta p\\u00e1gina te adelantamos algunos muestrarios que te puedes encontrar en el aula:<\\/p>\\r\\n<hr title=\\"Muestrario\\" alt=\\"Muestrario 1\\" class=\\"system-pagebreak\\" \\/><hr \\/>\\r\\n<p>1) Muestrario de rocas<\\/p>\\r\\n<p><img src=\\"images\\/Aula_Ambiente\\/IMG_20170206_172905259_HDR.jpg\\" alt=\\"\\" \\/><\\/p>\\r\\n<p>Este muestrario esta ubicado en la oficina del aula ambiente y cuenta con una variedad de rocas metam\\u00f3rficas, ign\\u00e9as y sedimentarias.<\\/p>\\r\\n<hr title=\\"Muestrarios\\" alt=\\"Muestrario 2\\" class=\\"system-pagebreak\\" \\/>\\r\\n<p>2) Muestrarios de rocas - Recolecci\\u00f3n de una pr\\u00e1ctica de campo<\\/p>\\r\\n<figure class=\\"pull-center\\"><img title=\\"Muestrario de rocas\\" src=\\"images\\/Aula_Ambiente\\/IMG_20170206_173508021.jpg\\" alt=\\"Muestrario de rocas\\" \\/>\\r\\n<figcaption><\\/figcaption>\\r\\n<figcaption>Este muestrario es producto de las actividades de campo realizadas en concordancia con la l\\u00ednea de investigaci\\u00f3n Geolog\\u00eda F\\u00edsica. Podemos observar tambi\\u00e9n el ciclo de las rocas.<\\/figcaption>\\r\\n<\\/figure>","fulltext":"","state":1,"catid":"26","created":"2017-02-17 05:23:34","created_by":"502","created_by_alias":"","modified":"2017-02-17 05:55:02","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-17 05:54:23","publish_up":"2017-02-17 05:23:34","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/muestrarios.png\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":11,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"22","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(64, 4, 1, '', '2017-02-17 06:00:04', 502, 3071, '2fb180ae787714a3bd7a19345768ac569d8c1a18', '{"id":4,"asset_id":"80","title":"Muestrarios","alias":"muestrarios","introtext":"<p>En la UNIDAD DE INVESTIGACI\\u00d3N AULA AMBIENTE DE GEOGRAF\\u00cdA contamos con una gran variedad de muestrarios de excelente material acad\\u00e9mico elaborados por estudiantes y profesores que hacen vida en el aula.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>En esta p\\u00e1gina te adelantamos algunos muestrarios que te puedes encontrar en el aula:<\\/p>\\r\\n<hr title=\\"Muestrario\\" alt=\\"Muestrario 1\\" class=\\"system-pagebreak\\" \\/><hr \\/>\\r\\n<p>1) Muestrario de rocas<\\/p>\\r\\n<p><img src=\\"images\\/Aula_Ambiente\\/IMG_20170206_172905259_HDR.jpg\\" alt=\\"\\" \\/><\\/p>\\r\\n<p>Este muestrario esta ubicado en la oficina del aula ambiente y cuenta con una variedad de rocas metam\\u00f3rficas, ign\\u00e9as y sedimentarias.<\\/p>\\r\\n<hr title=\\"Muestrarios\\" alt=\\"Muestrario 2\\" class=\\"system-pagebreak\\" \\/>\\r\\n<p>2) Muestrarios de rocas - Recolecci\\u00f3n de una pr\\u00e1ctica de campo<\\/p>\\r\\n<figure class=\\"pull-center\\"><img title=\\"Muestrario de rocas\\" src=\\"images\\/Aula_Ambiente\\/IMG_20170206_173508021.jpg\\" alt=\\"Muestrario de rocas\\" \\/>\\r\\n<figcaption><\\/figcaption>\\r\\n<figcaption>Este muestrario es producto de las actividades de campo realizadas en concordancia con la l\\u00ednea de investigaci\\u00f3n Geolog\\u00eda F\\u00edsica. Podemos observar tambi\\u00e9n el ciclo de las rocas.<\\/figcaption>\\r\\n<\\/figure>","fulltext":"","state":1,"catid":"26","created":"2017-02-17 05:23:34","created_by":"502","created_by_alias":"","modified":"2017-02-17 06:00:04","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-17 05:55:02","publish_up":"2017-02-17 05:23:34","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/muestrarios-1.png\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":12,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"23","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(65, 4, 1, '', '2017-02-17 06:13:33', 502, 3071, 'bd29f6ef098255385f61756d0742a937e382b600', '{"id":4,"asset_id":"80","title":"Muestrarios","alias":"muestrarios","introtext":"<p>En la UNIDAD DE INVESTIGACI\\u00d3N AULA AMBIENTE DE GEOGRAF\\u00cdA contamos con una gran variedad de muestrarios de excelente material acad\\u00e9mico elaborados por estudiantes y profesores que hacen vida en el aula.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>En esta p\\u00e1gina te adelantamos algunos muestrarios que te puedes encontrar en el aula:<\\/p>\\r\\n<hr title=\\"Muestrario\\" alt=\\"Muestrario 1\\" class=\\"system-pagebreak\\" \\/><hr \\/>\\r\\n<p>1) Muestrario de rocas<\\/p>\\r\\n<p><img src=\\"images\\/Aula_Ambiente\\/IMG_20170206_172905259_HDR.jpg\\" alt=\\"\\" \\/><\\/p>\\r\\n<p>Este muestrario esta ubicado en la oficina del aula ambiente y cuenta con una variedad de rocas metam\\u00f3rficas, ign\\u00e9as y sedimentarias.<\\/p>\\r\\n<hr title=\\"Muestrarios\\" alt=\\"Muestrario 2\\" class=\\"system-pagebreak\\" \\/>\\r\\n<p>2) Muestrarios de rocas - Recolecci\\u00f3n de una pr\\u00e1ctica de campo<\\/p>\\r\\n<figure class=\\"pull-center\\"><img title=\\"Muestrario de rocas\\" src=\\"images\\/Aula_Ambiente\\/IMG_20170206_173508021.jpg\\" alt=\\"Muestrario de rocas\\" \\/>\\r\\n<figcaption><\\/figcaption>\\r\\n<figcaption>Este muestrario es producto de las actividades de campo realizadas en concordancia con la l\\u00ednea de investigaci\\u00f3n Geolog\\u00eda F\\u00edsica. Podemos observar tambi\\u00e9n el ciclo de las rocas.<\\/figcaption>\\r\\n<\\/figure>","fulltext":"","state":1,"catid":"26","created":"2017-02-17 05:23:34","created_by":"502","created_by_alias":"","modified":"2017-02-17 06:13:33","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-17 06:13:20","publish_up":"2017-02-17 05:23:34","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/muestrarios-2.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":14,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"24","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(66, 4, 1, '', '2017-02-17 06:14:00', 502, 3072, '047f3ce9620ad2c472249540e8e4f176527bcdc4', '{"id":4,"asset_id":"80","title":"Muestrarios","alias":"muestrarios","introtext":"<p>En la UNIDAD DE INVESTIGACI\\u00d3N AULA AMBIENTE DE GEOGRAF\\u00cdA contamos con una gran variedad de muestrarios de excelente material acad\\u00e9mico elaborados por estudiantes y profesores que hacen vida en el aula.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>En esta p\\u00e1gina te adelantamos algunos muestrarios que te puedes encontrar en el aula:<\\/p>\\r\\n<hr title=\\"Muestrario\\" alt=\\"Muestrario 1\\" class=\\"system-pagebreak\\" \\/><hr \\/>\\r\\n<p>1) Muestrario de rocas<\\/p>\\r\\n<p><img src=\\"images\\/Aula_Ambiente\\/IMG_20170206_172905259_HDR.jpg\\" alt=\\"\\" \\/><\\/p>\\r\\n<p>Este muestrario esta ubicado en la oficina del aula ambiente y cuenta con una variedad de rocas metam\\u00f3rficas, ign\\u00e9as y sedimentarias.<\\/p>\\r\\n<hr title=\\"Muestrarios\\" alt=\\"Muestrario 2\\" class=\\"system-pagebreak\\" \\/>\\r\\n<p>2) Muestrarios de rocas - Recolecci\\u00f3n de una pr\\u00e1ctica de campo<\\/p>\\r\\n<figure class=\\"pull-center\\"><img title=\\"Muestrario de rocas\\" src=\\"images\\/Aula_Ambiente\\/IMG_20170206_173508021.jpg\\" alt=\\"Muestrario de rocas\\" \\/>\\r\\n<figcaption><\\/figcaption>\\r\\n<figcaption>Este muestrario es producto de las actividades de campo realizadas en concordancia con la l\\u00ednea de investigaci\\u00f3n Geolog\\u00eda F\\u00edsica. Podemos observar tambi\\u00e9n el ciclo de las rocas.<\\/figcaption>\\r\\n<\\/figure>","fulltext":"","state":1,"catid":"26","created":"2017-02-17 05:23:34","created_by":"502","created_by_alias":"","modified":"2017-02-17 06:14:00","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-17 06:13:46","publish_up":"2017-02-17 05:23:34","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/muestrarios-2.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":15,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"25","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(67, 4, 1, '', '2017-02-17 06:14:56', 502, 3073, '260ef9ca8680e441bf27e316cae29a21788fa8cf', '{"id":4,"asset_id":"80","title":"Muestrarios","alias":"muestrarios","introtext":"<p>En la UNIDAD DE INVESTIGACI\\u00d3N AULA AMBIENTE DE GEOGRAF\\u00cdA contamos con una gran variedad de muestrarios de excelente material acad\\u00e9mico elaborados por estudiantes y profesores que hacen vida en el aula.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>En esta p\\u00e1gina te adelantamos algunos muestrarios que te puedes encontrar en el aula:<\\/p>\\r\\n<hr title=\\"Muestrario\\" alt=\\"Muestrario 1\\" class=\\"system-pagebreak\\" \\/><hr \\/>\\r\\n<p>1) Muestrario de rocas<\\/p>\\r\\n<p><img src=\\"images\\/Aula_Ambiente\\/IMG_20170206_172905259_HDR.jpg\\" alt=\\"\\" \\/><\\/p>\\r\\n<p>Este muestrario esta ubicado en la oficina del aula ambiente y cuenta con una variedad de rocas metam\\u00f3rficas, ign\\u00e9as y sedimentarias.<\\/p>\\r\\n<hr title=\\"Muestrarios\\" alt=\\"Muestrario 2\\" class=\\"system-pagebreak\\" \\/>\\r\\n<p>2) Muestrarios de rocas - Recolecci\\u00f3n de una pr\\u00e1ctica de campo<\\/p>\\r\\n<figure class=\\"pull-center\\"><img title=\\"Muestrario de rocas\\" src=\\"images\\/Aula_Ambiente\\/IMG_20170206_173508021.jpg\\" alt=\\"Muestrario de rocas\\" \\/>\\r\\n<figcaption><\\/figcaption>\\r\\n<figcaption>Este muestrario es producto de las actividades de campo realizadas en concordancia con la l\\u00ednea de investigaci\\u00f3n Geolog\\u00eda F\\u00edsica. Podemos observar tambi\\u00e9n el ciclo de las rocas.<\\/figcaption>\\r\\n<\\/figure>","fulltext":"","state":1,"catid":"26","created":"2017-02-17 05:23:34","created_by":"502","created_by_alias":"","modified":"2017-02-17 06:14:56","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-17 06:14:16","publish_up":"2017-02-17 05:23:34","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/muestrarios-2.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":16,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"26","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(68, 3, 1, '', '2017-02-17 06:16:09', 502, 2641, 'c19c8d8a520d4a998dcc415c59e7486cf432ddc1', '{"id":3,"asset_id":"78","title":"Planetario","alias":"planetario","introtext":"<p style=\\"text-align: justify;\\">El planetario del Aula Ambiente de Geograf\\u00eda es un lugar dedicado a la presentaci\\u00f3n de espect\\u00e1culos astron\\u00f3micos, donde es posible observar recreaciones del cielo nocturno de Barinas y otros lugares de la Tierra en diferentes momentos del a\\u00f1o, para facilitar el entendimiento de la din\\u00e1mica del universo, sensibilizar a los observadores acerca de la fragilidad de nuestro planeta e incentivar la formaci\\u00f3n de actitudes ambientalistas\\u201d.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">En este sentido, gracias a la gesti\\u00f3n realizada desde el Aula Ambiente y al aporte de empresas privadas y el Centro de Investigaciones de Astronom\\u00eda (CIDA) del estado M\\u00e9rida, abre sus puertas el Planetario del Aula Ambiente de Geograf\\u00eda, ubicado en Barinas II.<\\/p>","fulltext":"","state":1,"catid":"25","created":"2017-02-14 14:47:35","created_by":"502","created_by_alias":"","modified":"2017-02-17 06:16:09","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-17 06:15:46","publish_up":"2017-02-14 14:47:35","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/Planetario\\\\\\/planetario.gif\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(69, 3, 1, '', '2017-02-17 06:16:38', 502, 2646, 'd541c8babb3ff3baad9c9a0dc368094a3bbe288e', '{"id":3,"asset_id":"78","title":"Planetario","alias":"planetario","introtext":"<p style=\\"text-align: justify;\\">El planetario del Aula Ambiente de Geograf\\u00eda es un lugar dedicado a la presentaci\\u00f3n de espect\\u00e1culos astron\\u00f3micos, donde es posible observar recreaciones del cielo nocturno de Barinas y otros lugares de la Tierra en diferentes momentos del a\\u00f1o, para facilitar el entendimiento de la din\\u00e1mica del universo, sensibilizar a los observadores acerca de la fragilidad de nuestro planeta e incentivar la formaci\\u00f3n de actitudes ambientalistas\\u201d.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">En este sentido, gracias a la gesti\\u00f3n realizada desde el Aula Ambiente y al aporte de empresas privadas y el Centro de Investigaciones de Astronom\\u00eda (CIDA) del estado M\\u00e9rida, abre sus puertas el Planetario del Aula Ambiente de Geograf\\u00eda, ubicado en Barinas II.<\\/p>","fulltext":"","state":1,"catid":"25","created":"2017-02-14 14:47:35","created_by":"502","created_by_alias":"","modified":"2017-02-17 06:16:38","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-17 06:16:09","publish_up":"2017-02-14 14:47:35","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/Planetario\\\\\\/planetario.gif\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(70, 3, 1, '', '2017-02-17 06:16:52', 502, 2649, 'e5917de92c616d024f7af0773bae2919e8e3c687', '{"id":3,"asset_id":"78","title":"Planetario","alias":"planetario","introtext":"<p style=\\"text-align: justify;\\">El planetario del Aula Ambiente de Geograf\\u00eda es un lugar dedicado a la presentaci\\u00f3n de espect\\u00e1culos astron\\u00f3micos, donde es posible observar recreaciones del cielo nocturno de Barinas y otros lugares de la Tierra en diferentes momentos del a\\u00f1o, para facilitar el entendimiento de la din\\u00e1mica del universo, sensibilizar a los observadores acerca de la fragilidad de nuestro planeta e incentivar la formaci\\u00f3n de actitudes ambientalistas\\u201d.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">En este sentido, gracias a la gesti\\u00f3n realizada desde el Aula Ambiente y al aporte de empresas privadas y el Centro de Investigaciones de Astronom\\u00eda (CIDA) del estado M\\u00e9rida, abre sus puertas el Planetario del Aula Ambiente de Geograf\\u00eda, ubicado en Barinas II.<\\/p>","fulltext":"","state":1,"catid":"25","created":"2017-02-14 14:47:35","created_by":"502","created_by_alias":"","modified":"2017-02-17 06:16:52","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-17 06:16:38","publish_up":"2017-02-14 14:47:35","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/Planetario\\\\\\/planetario.gif\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(71, 3, 1, '', '2017-02-17 06:23:45', 502, 2673, '82a2192eec9931c84edefb9aef1a92a3a96f4531', '{"id":3,"asset_id":"78","title":"Planetario","alias":"planetario","introtext":"<p style=\\"text-align: justify;\\">El planetario del Aula Ambiente de Geograf\\u00eda es un lugar dedicado a la presentaci\\u00f3n de espect\\u00e1culos astron\\u00f3micos, donde es posible observar recreaciones del cielo nocturno de Barinas y otros lugares de la Tierra en diferentes momentos del a\\u00f1o, para facilitar el entendimiento de la din\\u00e1mica del universo, sensibilizar a los observadores acerca de la fragilidad de nuestro planeta e incentivar la formaci\\u00f3n de actitudes ambientalistas\\u201d.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">En este sentido, gracias a la gesti\\u00f3n realizada desde el Aula Ambiente y al aporte de empresas privadas y el Centro de Investigaciones de Astronom\\u00eda (CIDA) del estado M\\u00e9rida, abre sus puertas el Planetario del Aula Ambiente de Geograf\\u00eda, ubicado en Barinas II.<\\/p>","fulltext":"","state":1,"catid":"25","created":"2017-02-14 14:47:35","created_by":"502","created_by_alias":"","modified":"2017-02-17 06:23:45","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-17 06:16:52","publish_up":"2017-02-14 14:47:35","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/Planetario\\\\\\/planetario.gif\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/PLANETARIO.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(72, 3, 1, '', '2017-02-17 06:24:44', 502, 2673, '00b6f6222d3bcb2640ae1d7edbf55478f544ddb4', '{"id":3,"asset_id":"78","title":"Planetario","alias":"planetario","introtext":"<p style=\\"text-align: justify;\\">El planetario del Aula Ambiente de Geograf\\u00eda es un lugar dedicado a la presentaci\\u00f3n de espect\\u00e1culos astron\\u00f3micos, donde es posible observar recreaciones del cielo nocturno de Barinas y otros lugares de la Tierra en diferentes momentos del a\\u00f1o, para facilitar el entendimiento de la din\\u00e1mica del universo, sensibilizar a los observadores acerca de la fragilidad de nuestro planeta e incentivar la formaci\\u00f3n de actitudes ambientalistas\\u201d.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">En este sentido, gracias a la gesti\\u00f3n realizada desde el Aula Ambiente y al aporte de empresas privadas y el Centro de Investigaciones de Astronom\\u00eda (CIDA) del estado M\\u00e9rida, abre sus puertas el Planetario del Aula Ambiente de Geograf\\u00eda, ubicado en Barinas II.<\\/p>","fulltext":"","state":1,"catid":"25","created":"2017-02-14 14:47:35","created_by":"502","created_by_alias":"","modified":"2017-02-17 06:24:44","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-17 06:23:45","publish_up":"2017-02-14 14:47:35","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/Planetario\\\\\\/planetario.gif\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/PLANETARIO.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"1\\",\\"link_titles\\":\\"1\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `cyfwe_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(73, 3, 1, '', '2017-02-17 06:26:32', 502, 2716, '9d5f4eb6f0ebef60115fe42e481c5a828cf82c9f', '{"id":3,"asset_id":"78","title":"Planetario","alias":"planetario","introtext":"<p style=\\"text-align: justify;\\">El planetario del Aula Ambiente de Geograf\\u00eda es un lugar dedicado a la presentaci\\u00f3n de espect\\u00e1culos astron\\u00f3micos, donde es posible observar recreaciones del cielo nocturno de Barinas y otros lugares de la Tierra en diferentes momentos del a\\u00f1o, para facilitar el entendimiento de la din\\u00e1mica del universo, sensibilizar a los observadores acerca de la fragilidad de nuestro planeta e incentivar la formaci\\u00f3n de actitudes ambientalistas\\u201d.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<img class=\\"pull-right\\" src=\\"images\\/Planetario\\/planetario.gif\\" alt=\\"\\" \\/><\\/p>\\r\\n<p style=\\"text-align: justify;\\">En este sentido, gracias a la gesti\\u00f3n realizada desde el Aula Ambiente y al aporte de empresas privadas y el Centro de Investigaciones de Astronom\\u00eda (CIDA) del estado M\\u00e9rida, abre sus puertas el Planetario del Aula Ambiente de Geograf\\u00eda, ubicado en Barinas II.<\\/p>","fulltext":"","state":1,"catid":"25","created":"2017-02-14 14:47:35","created_by":"502","created_by_alias":"","modified":"2017-02-17 06:26:32","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-17 06:24:44","publish_up":"2017-02-14 14:47:35","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/PLANETARIO.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(74, 3, 1, '', '2017-02-17 06:27:07', 502, 2717, '53b77ae46cdf315fd39a5c98eab8cad25a957dd3', '{"id":3,"asset_id":"78","title":"Planetario","alias":"planetario","introtext":"<p style=\\"text-align: justify;\\">\\u00a0<img class=\\"pull-right\\" src=\\"images\\/Planetario\\/planetario.gif\\" alt=\\"\\" \\/><\\/p>\\r\\n<p style=\\"text-align: justify;\\">El planetario del Aula Ambiente de Geograf\\u00eda es un lugar dedicado a la presentaci\\u00f3n de espect\\u00e1culos astron\\u00f3micos, donde es posible observar recreaciones del cielo nocturno de Barinas y otros lugares de la Tierra en diferentes momentos del a\\u00f1o, para facilitar el entendimiento de la din\\u00e1mica del universo, sensibilizar a los observadores acerca de la fragilidad de nuestro planeta e incentivar la formaci\\u00f3n de actitudes ambientalistas\\u201d.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">En este sentido, gracias a la gesti\\u00f3n realizada desde el Aula Ambiente y al aporte de empresas privadas y el Centro de Investigaciones de Astronom\\u00eda (CIDA) del estado M\\u00e9rida, abre sus puertas el Planetario del Aula Ambiente de Geograf\\u00eda, ubicado en Barinas II.<\\/p>","fulltext":"","state":1,"catid":"25","created":"2017-02-14 14:47:35","created_by":"502","created_by_alias":"","modified":"2017-02-17 06:27:07","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-17 06:26:32","publish_up":"2017-02-14 14:47:35","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/PLANETARIO.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":10,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"3","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(75, 3, 1, '', '2017-02-17 06:27:25', 502, 2766, '6b66eac4b69b02fc63900c0d1ff7bc784b446c47', '{"id":3,"asset_id":"78","title":"Planetario","alias":"planetario","introtext":"<p style=\\"text-align: justify;\\">\\u00a0<img class=\\"pull-right\\" src=\\"images\\/Planetario\\/planetario.gif\\" alt=\\"\\" \\/><\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">El planetario del Aula Ambiente de Geograf\\u00eda es un lugar dedicado a la presentaci\\u00f3n de espect\\u00e1culos astron\\u00f3micos, donde es posible observar recreaciones del cielo nocturno de Barinas y otros lugares de la Tierra en diferentes momentos del a\\u00f1o, para facilitar el entendimiento de la din\\u00e1mica del universo, sensibilizar a los observadores acerca de la fragilidad de nuestro planeta e incentivar la formaci\\u00f3n de actitudes ambientalistas\\u201d.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">En este sentido, gracias a la gesti\\u00f3n realizada desde el Aula Ambiente y al aporte de empresas privadas y el Centro de Investigaciones de Astronom\\u00eda (CIDA) del estado M\\u00e9rida, abre sus puertas el Planetario del Aula Ambiente de Geograf\\u00eda, ubicado en Barinas II.<\\/p>","fulltext":"","state":1,"catid":"25","created":"2017-02-14 14:47:35","created_by":"502","created_by_alias":"","modified":"2017-02-17 06:27:25","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-17 06:27:07","publish_up":"2017-02-14 14:47:35","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/PLANETARIO.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":11,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"4","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(76, 3, 1, '', '2017-02-17 06:28:24', 502, 2882, '4faf7a1353eb5fca1b3641d918d9432bd33bd900', '{"id":3,"asset_id":"78","title":"Planetario","alias":"planetario","introtext":"<hr \\/>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><img class=\\"pull-right\\" style=\\"border-width: 2px; margin: 2px;\\" src=\\"images\\/Planetario\\/planetario.gif\\" width=\\"500\\" height=\\"400\\" \\/><\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">El planetario del Aula Ambiente de Geograf\\u00eda es un lugar dedicado a la presentaci\\u00f3n de espect\\u00e1culos astron\\u00f3micos, donde es posible observar recreaciones del cielo nocturno de Barinas y otros lugares de la Tierra en diferentes momentos del a\\u00f1o, para facilitar el entendimiento de la din\\u00e1mica del universo, sensibilizar a los observadores acerca de la fragilidad de nuestro planeta e incentivar la formaci\\u00f3n de actitudes ambientalistas\\u201d.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">En este sentido, gracias a la gesti\\u00f3n realizada desde el Aula Ambiente y al aporte de empresas privadas y el Centro de Investigaciones de Astronom\\u00eda (CIDA) del estado M\\u00e9rida, abre sus puertas el Planetario del Aula Ambiente de Geograf\\u00eda, ubicado en Barinas II.<\\/p>","fulltext":"","state":1,"catid":"25","created":"2017-02-14 14:47:35","created_by":"502","created_by_alias":"","modified":"2017-02-17 06:28:24","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-17 06:27:25","publish_up":"2017-02-14 14:47:35","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/PLANETARIO.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":12,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"5","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(77, 3, 1, '', '2017-02-17 06:29:00', 502, 2882, 'cd43de5d4e60a2a7f7a17baf33b1c7a47f81342a', '{"id":3,"asset_id":"78","title":"Planetario","alias":"planetario","introtext":"<hr \\/>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><img class=\\"pull-right\\" style=\\"border-width: 5px; margin: 5px;\\" src=\\"images\\/Planetario\\/planetario.gif\\" width=\\"500\\" height=\\"400\\" \\/><\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">El planetario del Aula Ambiente de Geograf\\u00eda es un lugar dedicado a la presentaci\\u00f3n de espect\\u00e1culos astron\\u00f3micos, donde es posible observar recreaciones del cielo nocturno de Barinas y otros lugares de la Tierra en diferentes momentos del a\\u00f1o, para facilitar el entendimiento de la din\\u00e1mica del universo, sensibilizar a los observadores acerca de la fragilidad de nuestro planeta e incentivar la formaci\\u00f3n de actitudes ambientalistas\\u201d.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">En este sentido, gracias a la gesti\\u00f3n realizada desde el Aula Ambiente y al aporte de empresas privadas y el Centro de Investigaciones de Astronom\\u00eda (CIDA) del estado M\\u00e9rida, abre sus puertas el Planetario del Aula Ambiente de Geograf\\u00eda, ubicado en Barinas II.<\\/p>","fulltext":"","state":1,"catid":"25","created":"2017-02-14 14:47:35","created_by":"502","created_by_alias":"","modified":"2017-02-17 06:29:00","modified_by":"502","checked_out":"502","checked_out_time":"2017-02-17 06:28:24","publish_up":"2017-02-14 14:47:35","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/PLANETARIO.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":13,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"6","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(78, 5, 1, '', '2017-03-06 09:45:22', 502, 3039, 'f8e79e752ef10c98947dcdb95f4c256b0153128b', '{"id":5,"asset_id":83,"title":"Cierre de Subproyecto: Geolog\\u00eda F\\u00edsica","alias":"cierre-geologia-fisica","introtext":"<p style=\\"padding-left: 60px;\\"><img style=\\"display: block; margin-left: auto; margin-right: auto; border-width: 2px; width: 600px;\\" src=\\"images\\/Eventos\\/cierre_de_subproyecto.png\\" alt=\\"Equipo del subproyecto\\" width=\\"609\\" height=\\"454\\" \\/><\\/p>\\r\\n<hr \\/>\\r\\n<p style=\\"text-align: justify;\\">Durante los d\\u00edas 22 y 23 de febrero la comunidad unellista del Aula Ambiente de Geograf\\u00eda estuvo muy activa por la participaci\\u00f3n en diversos eventos como lo fueron el cierre de subproyecto Geolog\\u00eda F\\u00edsica donde se expuso la experiencia ganada de los estudiantes y profesores involucrados en este subproyecto durante todo el semestre y muy particularmente en la Gira Geol\\u00f3gica realizada en el mes de noviembre por los Estados Merida, Barinas y Apure donde palparon y experimentaron todo lo relacionado a las diferentes formaciones y relieve de nuestra cuenca sedimentaria. Esto sucedi\\u00f3 bajo la tutela del Prof. Franklin Vegara y en esta ocasi\\u00f3n tambi\\u00e9n particip\\u00f3 la Prof. Sharon Escalante como invitada especial a la gira.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<blockquote>\\r\\n<p style=\\"text-align: justify;\\">El aprendizaje es experiencia, todo lo dem\\u00e1s es informaci\\u00f3n \\u00a0-Albert Einstein<\\/p>\\r\\n<\\/blockquote>","fulltext":"","state":1,"catid":"9","created":"2017-03-06 09:45:22","created_by":"502","created_by_alias":"","modified":"2017-03-06 09:45:22","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2017-03-06 09:45:22","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(79, 5, 1, '', '2017-03-06 09:47:44', 502, 3059, 'd238be47f2431509eb8dc28001ea25e168553bca', '{"id":5,"asset_id":"83","title":"Cierre de Subproyecto: Geolog\\u00eda F\\u00edsica","alias":"cierre-geologia-fisica","introtext":"<p style=\\"padding-left: 60px;\\"><img style=\\"display: block; margin-left: auto; margin-right: auto; border-width: 2px; width: 600px;\\" src=\\"images\\/Eventos\\/cierre_de_subproyecto.png\\" alt=\\"Equipo del subproyecto\\" width=\\"609\\" height=\\"454\\" \\/><\\/p>\\r\\n<hr \\/>\\r\\n<p style=\\"text-align: justify;\\">Durante los d\\u00edas 22 y 23 de febrero la comunidad unellista del Aula Ambiente de Geograf\\u00eda estuvo muy activa por la participaci\\u00f3n en diversos eventos como lo fueron el cierre de subproyecto Geolog\\u00eda F\\u00edsica donde se expuso la experiencia ganada de los estudiantes y profesores involucrados en este subproyecto durante todo el semestre y muy particularmente en la Gira Geol\\u00f3gica realizada en el mes de noviembre por los Estados Merida, Barinas y Apure donde palparon y experimentaron todo lo relacionado a las diferentes formaciones y relieve de nuestra cuenca sedimentaria. Esto sucedi\\u00f3 bajo la tutela del Prof. Franklin Vegara y en esta ocasi\\u00f3n tambi\\u00e9n particip\\u00f3 la Prof. Sharon Escalante como invitada especial a la gira.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<blockquote>\\r\\n<p style=\\"text-align: justify;\\">El aprendizaje es experiencia, todo lo dem\\u00e1s es informaci\\u00f3n \\u00a0-Albert Einstein<\\/p>\\r\\n<\\/blockquote>","fulltext":"","state":1,"catid":"19","created":"2017-03-06 09:45:22","created_by":"502","created_by_alias":"","modified":"2017-03-06 09:47:44","modified_by":"502","checked_out":"502","checked_out_time":"2017-03-06 09:47:08","publish_up":"2017-03-06 09:45:22","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(80, 27, 5, '', '2017-03-06 09:48:46', 502, 553, 'b8b92fa2bce277f83277a0c6de06c8b368df2d6d', '{"id":27,"asset_id":84,"parent_id":"19","lft":"48","rgt":49,"level":2,"path":null,"extension":"com_content","title":"EVENTOS","alias":"eventos","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-03-06 09:48:46","modified_user_id":null,"modified_time":"2017-03-06 09:48:46","hits":"0","language":"*","version":null}', 0),
(81, 5, 1, '', '2017-03-06 09:49:16', 502, 3059, '6f9f0728d667db5c34be865f8dcaae1e392664ee', '{"id":5,"asset_id":"83","title":"Cierre de Subproyecto: Geolog\\u00eda F\\u00edsica","alias":"cierre-geologia-fisica","introtext":"<p style=\\"padding-left: 60px;\\"><img style=\\"display: block; margin-left: auto; margin-right: auto; border-width: 2px; width: 600px;\\" src=\\"images\\/Eventos\\/cierre_de_subproyecto.png\\" alt=\\"Equipo del subproyecto\\" width=\\"609\\" height=\\"454\\" \\/><\\/p>\\r\\n<hr \\/>\\r\\n<p style=\\"text-align: justify;\\">Durante los d\\u00edas 22 y 23 de febrero la comunidad unellista del Aula Ambiente de Geograf\\u00eda estuvo muy activa por la participaci\\u00f3n en diversos eventos como lo fueron el cierre de subproyecto Geolog\\u00eda F\\u00edsica donde se expuso la experiencia ganada de los estudiantes y profesores involucrados en este subproyecto durante todo el semestre y muy particularmente en la Gira Geol\\u00f3gica realizada en el mes de noviembre por los Estados Merida, Barinas y Apure donde palparon y experimentaron todo lo relacionado a las diferentes formaciones y relieve de nuestra cuenca sedimentaria. Esto sucedi\\u00f3 bajo la tutela del Prof. Franklin Vegara y en esta ocasi\\u00f3n tambi\\u00e9n particip\\u00f3 la Prof. Sharon Escalante como invitada especial a la gira.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<blockquote>\\r\\n<p style=\\"text-align: justify;\\">El aprendizaje es experiencia, todo lo dem\\u00e1s es informaci\\u00f3n \\u00a0-Albert Einstein<\\/p>\\r\\n<\\/blockquote>","fulltext":"","state":1,"catid":"27","created":"2017-03-06 09:45:22","created_by":"502","created_by_alias":"","modified":"2017-03-06 09:49:16","modified_by":"502","checked_out":"502","checked_out_time":"2017-03-06 09:48:53","publish_up":"2017-03-06 09:45:22","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(82, 5, 1, '', '2017-03-06 09:55:00', 502, 3060, '5544f464c59da6a89ecdce9d7a84c0a9d40013af', '{"id":5,"asset_id":"83","title":"Cierre de Subproyecto: Geolog\\u00eda F\\u00edsica","alias":"cierre-geologia-fisica","introtext":"<p style=\\"padding-left: 60px;\\"><img style=\\"display: block; margin-left: auto; margin-right: auto; border-width: 2px; width: 600px;\\" src=\\"images\\/Eventos\\/cierre_de_subproyecto.png\\" alt=\\"Equipo del subproyecto\\" width=\\"609\\" height=\\"454\\" \\/><\\/p>\\r\\n<hr \\/>\\r\\n<p style=\\"text-align: justify;\\">Durante los d\\u00edas 22 y 23 de febrero la comunidad unellista del Aula Ambiente de Geograf\\u00eda estuvo muy activa por la participaci\\u00f3n en diversos eventos como lo fueron el cierre de subproyecto Geolog\\u00eda F\\u00edsica donde se expuso la experiencia ganada de los estudiantes y profesores involucrados en este subproyecto durante todo el semestre y muy particularmente en la Gira Geol\\u00f3gica realizada en el mes de noviembre por los Estados Merida, Barinas y Apure donde palparon y experimentaron todo lo relacionado a las diferentes formaciones y relieve de nuestra cuenca sedimentaria. Esto sucedi\\u00f3 bajo la tutela del Prof. Franklin Vegara y en esta ocasi\\u00f3n tambi\\u00e9n particip\\u00f3 la Prof. Sharon Escalante como invitada especial a la gira.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<blockquote>\\r\\n<p style=\\"text-align: justify;\\">El aprendizaje es experiencia, todo lo dem\\u00e1s es informaci\\u00f3n \\u00a0-Albert Einstein<\\/p>\\r\\n<\\/blockquote>","fulltext":"","state":1,"catid":"27","created":"2017-03-06 09:45:22","created_by":"502","created_by_alias":"","modified":"2017-03-06 09:55:00","modified_by":"502","checked_out":"502","checked_out_time":"2017-03-06 09:53:15","publish_up":"2017-03-06 09:45:22","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(83, 2, 8, '', '2017-03-09 05:43:19', 505, 558, 'f1f551e0814a87a4ee50f9f343535185012cab6a', '{"id":2,"parent_id":"1","lft":"1","rgt":2,"level":1,"path":"eventos","title":"#eventos","alias":"eventos","note":"","description":null,"published":1,"checked_out":"0","checked_out_time":"2017-03-09 05:43:19","access":1,"params":"{}","metadesc":"","metakey":"","metadata":"{}","created_user_id":"505","created_time":"2017-03-09 05:43:19","created_by_alias":"","modified_user_id":"0","modified_time":"2017-03-09 05:43:19","images":"{}","urls":"{}","hits":"0","language":"*","version":"1","publish_up":"2017-03-09 05:43:19","publish_down":"2017-03-09 05:43:19"}', 0),
(84, 3, 8, '', '2017-03-09 05:43:19', 505, 561, '88ef6fc560b8c8b4de993f7e7c70a11133d01ec7', '{"id":3,"parent_id":"1","lft":"3","rgt":4,"level":1,"path":"geologia","title":"#geologia","alias":"geologia","note":"","description":null,"published":1,"checked_out":"0","checked_out_time":"2017-03-09 05:43:19","access":1,"params":"{}","metadesc":"","metakey":"","metadata":"{}","created_user_id":"505","created_time":"2017-03-09 05:43:19","created_by_alias":"","modified_user_id":"0","modified_time":"2017-03-09 05:43:19","images":"{}","urls":"{}","hits":"0","language":"*","version":"1","publish_up":"2017-03-09 05:43:19","publish_down":"2017-03-09 05:43:19"}', 0),
(85, 5, 1, '', '2017-03-09 05:43:19', 505, 3061, '849eb8a6e1eb4c94545da5de1b02de1e41250bf2', '{"id":5,"asset_id":"83","title":"Cierre de Subproyecto: Geolog\\u00eda F\\u00edsica","alias":"cierre-geologia-fisica","introtext":"<p style=\\"padding-left: 60px;\\"><img style=\\"display: block; margin-left: auto; margin-right: auto; border-width: 2px; width: 600px;\\" src=\\"images\\/Eventos\\/cierre_de_subproyecto.png\\" alt=\\"Equipo del subproyecto\\" width=\\"609\\" height=\\"454\\" \\/><\\/p>\\r\\n<hr \\/>\\r\\n<p style=\\"text-align: justify;\\">Durante los d\\u00edas 22 y 23 de febrero la comunidad unellista del Aula Ambiente de Geograf\\u00eda estuvo muy activa por la participaci\\u00f3n en diversos eventos como lo fueron el cierre de subproyecto Geolog\\u00eda F\\u00edsica donde se expuso la experiencia ganada de los estudiantes y profesores involucrados en este subproyecto durante todo el semestre y muy particularmente en la Gira Geol\\u00f3gica realizada en el mes de noviembre por los Estados Merida, Barinas y Apure donde palparon y experimentaron todo lo relacionado a las diferentes formaciones y relieve de nuestra cuenca sedimentaria. Esto sucedi\\u00f3 bajo la tutela del Prof. Franklin Vegara y en esta ocasi\\u00f3n tambi\\u00e9n particip\\u00f3 la Prof. Sharon Escalante como invitada especial a la gira.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<blockquote>\\r\\n<p style=\\"text-align: justify;\\">El aprendizaje es experiencia, todo lo dem\\u00e1s es informaci\\u00f3n \\u00a0-Albert Einstein<\\/p>\\r\\n<\\/blockquote>","fulltext":"","state":"1","catid":"9","created":"2017-03-06 09:45:22","created_by":"502","created_by_alias":"","modified":"2017-03-09 05:43:19","modified_by":"505","checked_out":"505","checked_out_time":"2017-03-09 05:42:21","publish_up":"2017-03-06 09:45:22","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"3","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(86, 4, 8, '', '2017-03-09 05:57:04', 505, 564, 'cbe75194c65f3fc4b2044a584cde39d2486e60b4', '{"id":4,"parent_id":"1","lft":"5","rgt":6,"level":1,"path":"petrolera","title":"#petrolera","alias":"petrolera","note":"","description":null,"published":1,"checked_out":"0","checked_out_time":"2017-03-09 05:57:04","access":1,"params":"{}","metadesc":"","metakey":"","metadata":"{}","created_user_id":"505","created_time":"2017-03-09 05:57:04","created_by_alias":"","modified_user_id":"0","modified_time":"2017-03-09 05:57:04","images":"{}","urls":"{}","hits":"0","language":"*","version":"1","publish_up":"2017-03-09 05:57:04","publish_down":"2017-03-09 05:57:04"}', 0),
(87, 6, 1, '', '2017-03-09 05:57:04', 505, 1020, '3c77f662ea80c2f963420b8981a4694fc8a25779', '{"id":6,"asset_id":87,"title":"Columnas Estratigr\\u00e1ficas de las Cuencas de Venezuela","alias":"columnas-estratigraficas-de-las-cuencas-de-venezuela","introtext":"<p>En el marco de entrega por parte de los Alumnos de la asignaci\\u00f3n de columnas estratigr\\u00e1ficas del subproyecto geolog\\u00eda petrolera, se dio a conocer el producto creativo elaborado por los alumnos. Un gran ejemplo de nuestra unidad de investigaci\\u00f3n aula ambiente de geograf\\u00eda.<\\/p>\\r\\n<hr \\/>\\r\\n<p><img src=\\"images\\/IMG_20170306_094733457.jpg\\" alt=\\"\\" \\/><\\/p>","fulltext":"","state":"1","catid":"27","created":"2017-03-09 05:57:04","created_by":"505","created_by_alias":"","modified":"2017-03-09 05:57:04","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2017-03-09 01:45:14","publish_down":"0000-00-00 00:00:00","images":"{}","urls":"{}","attribs":"{}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{}","featured":"0","language":"*","xreference":null}', 0),
(88, 6, 1, '', '2017-03-09 05:58:37', 505, 1012, '5d6608946ddbd899d5a59402e3dc386321114893', '{"id":6,"asset_id":"87","title":"Columnas Estratigr\\u00e1ficas de las Cuencas de Venezuela","alias":"columnas-estratigraficas-de-las-cuencas-de-venezuela","introtext":"<p>En el marco de entrega de la asignaci\\u00f3n de columnas estratigr\\u00e1ficas del subproyecto geolog\\u00eda petrolera, se dio a conocer el producto creativo elaborado por los alumnos. Un gran ejemplo de nuestra unidad de investigaci\\u00f3n aula ambiente de geograf\\u00eda.<\\/p>\\r\\n<hr \\/>\\r\\n<p><img src=\\"images\\/IMG_20170306_094733457.jpg\\" alt=\\"\\" \\/><\\/p>","fulltext":"","state":"1","catid":"10","created":"2017-03-09 05:57:04","created_by":"505","created_by_alias":"","modified":"2017-03-09 05:58:37","modified_by":"505","checked_out":"505","checked_out_time":"2017-03-09 05:57:50","publish_up":"2017-03-09 01:45:14","publish_down":"0000-00-00 00:00:00","images":"{}","urls":"{}","attribs":"{}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{}","featured":"0","language":"*","xreference":""}', 0),
(89, 5, 1, '', '2017-03-09 05:58:53', 505, 3062, '4f00d353c03f664c4c2151ab6df9c5cad5fc9afa', '{"id":5,"asset_id":"83","title":"Cierre de Subproyecto: Geolog\\u00eda F\\u00edsica","alias":"cierre-geologia-fisica","introtext":"<p style=\\"padding-left: 60px;\\"><img style=\\"display: block; margin-left: auto; margin-right: auto; border-width: 2px; width: 600px;\\" src=\\"images\\/Eventos\\/cierre_de_subproyecto.png\\" alt=\\"Equipo del subproyecto\\" width=\\"609\\" height=\\"454\\" \\/><\\/p>\\r\\n<hr \\/>\\r\\n<p style=\\"text-align: justify;\\">Durante los d\\u00edas 22 y 23 de febrero la comunidad unellista del Aula Ambiente de Geograf\\u00eda estuvo muy activa por la participaci\\u00f3n en diversos eventos como lo fueron el cierre de subproyecto Geolog\\u00eda F\\u00edsica donde se expuso la experiencia ganada de los estudiantes y profesores involucrados en este subproyecto durante todo el semestre y muy particularmente en la Gira Geol\\u00f3gica realizada en el mes de noviembre por los Estados Merida, Barinas y Apure donde palparon y experimentaron todo lo relacionado a las diferentes formaciones y relieve de nuestra cuenca sedimentaria. Esto sucedi\\u00f3 bajo la tutela del Prof. Franklin Vegara y en esta ocasi\\u00f3n tambi\\u00e9n particip\\u00f3 la Prof. Sharon Escalante como invitada especial a la gira.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<blockquote>\\r\\n<p style=\\"text-align: justify;\\">El aprendizaje es experiencia, todo lo dem\\u00e1s es informaci\\u00f3n \\u00a0-Albert Einstein<\\/p>\\r\\n<\\/blockquote>","fulltext":"","state":"1","catid":"27","created":"2017-03-06 09:45:22","created_by":"502","created_by_alias":"","modified":"2017-03-09 05:58:53","modified_by":"505","checked_out":"505","checked_out_time":"2017-03-09 05:58:42","publish_up":"2017-03-06 09:45:22","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"3","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(90, 6, 1, '', '2017-03-09 05:59:24', 505, 1012, '716380a15d85d4c9c27d9495f9dd4787606a9724', '{"id":6,"asset_id":"87","title":"Columnas Estratigr\\u00e1ficas de las Cuencas de Venezuela","alias":"columnas-estratigraficas-de-las-cuencas-de-venezuela","introtext":"<p>En el marco de entrega de la asignaci\\u00f3n de columnas estratigr\\u00e1ficas del subproyecto geolog\\u00eda petrolera, se dio a conocer el producto creativo elaborado por los alumnos. Un gran ejemplo de nuestra unidad de investigaci\\u00f3n aula ambiente de geograf\\u00eda.<\\/p>\\r\\n<hr \\/>\\r\\n<p><img src=\\"images\\/IMG_20170306_094733457.jpg\\" alt=\\"\\" \\/><\\/p>","fulltext":"","state":"1","catid":"27","created":"2017-03-09 05:57:04","created_by":"505","created_by_alias":"","modified":"2017-03-09 05:59:24","modified_by":"505","checked_out":"505","checked_out_time":"2017-03-09 05:59:16","publish_up":"2017-03-09 01:45:14","publish_down":"0000-00-00 00:00:00","images":"{}","urls":"{}","attribs":"{}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{}","featured":"0","language":"*","xreference":""}', 0),
(91, 6, 1, '', '2017-03-09 05:59:58', 505, 1041, 'eb3ddaeffc6f3a48e933d7f0c1205a818c5d50fc', '{"id":6,"asset_id":"87","title":"Columnas Estratigr\\u00e1ficas de las Cuencas de Venezuela","alias":"columnas-estratigraficas-de-las-cuencas-de-venezuela","introtext":"<p>En el marco de entrega de la asignaci\\u00f3n de columnas estratigr\\u00e1ficas del subproyecto geolog\\u00eda petrolera, se dio a conocer el producto creativo elaborado por los alumnos. Un gran ejemplo de nuestra unidad de investigaci\\u00f3n aula ambiente de geograf\\u00eda.<\\/p>\\r\\n<hr \\/>\\r\\n<p><img src=\\"images\\/IMG_20170306_094733457.jpg\\" alt=\\"\\" \\/><\\/p>\\r\\n<hr \\/>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":"1","catid":"27","created":"2017-03-09 05:57:04","created_by":"505","created_by_alias":"","modified":"2017-03-09 05:59:58","modified_by":"505","checked_out":"505","checked_out_time":"2017-03-09 05:59:42","publish_up":"2017-03-09 01:45:14","publish_down":"0000-00-00 00:00:00","images":"{}","urls":"{}","attribs":"{}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{}","featured":"0","language":"*","xreference":""}', 0),
(92, 5, 1, '', '2017-03-09 06:00:31', 505, 3073, 'ad194b41f4aa7ac29bbb12047d6d9a33a9fd57ae', '{"id":5,"asset_id":"83","title":"Cierre de Subproyecto: Geolog\\u00eda F\\u00edsica","alias":"cierre-geologia-fisica","introtext":"<hr \\/>\\r\\n<p style=\\"padding-left: 60px;\\"><img style=\\"display: block; margin-left: auto; margin-right: auto; border-width: 2px; width: 600px;\\" src=\\"images\\/Eventos\\/cierre_de_subproyecto.png\\" alt=\\"Equipo del subproyecto\\" width=\\"609\\" height=\\"454\\" \\/><\\/p>\\r\\n<hr \\/>\\r\\n<p style=\\"text-align: justify;\\">Durante los d\\u00edas 22 y 23 de febrero la comunidad unellista del Aula Ambiente de Geograf\\u00eda estuvo muy activa por la participaci\\u00f3n en diversos eventos como lo fueron el cierre de subproyecto Geolog\\u00eda F\\u00edsica donde se expuso la experiencia ganada de los estudiantes y profesores involucrados en este subproyecto durante todo el semestre y muy particularmente en la Gira Geol\\u00f3gica realizada en el mes de noviembre por los Estados Merida, Barinas y Apure donde palparon y experimentaron todo lo relacionado a las diferentes formaciones y relieve de nuestra cuenca sedimentaria. Esto sucedi\\u00f3 bajo la tutela del Prof. Franklin Vegara y en esta ocasi\\u00f3n tambi\\u00e9n particip\\u00f3 la Prof. Sharon Escalante como invitada especial a la gira.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<blockquote>\\r\\n<p style=\\"text-align: justify;\\">El aprendizaje es experiencia, todo lo dem\\u00e1s es informaci\\u00f3n \\u00a0-Albert Einstein<\\/p>\\r\\n<\\/blockquote>","fulltext":"","state":"1","catid":"27","created":"2017-03-06 09:45:22","created_by":"502","created_by_alias":"","modified":"2017-03-09 06:00:31","modified_by":"505","checked_out":"505","checked_out_time":"2017-03-09 06:00:07","publish_up":"2017-03-06 09:45:22","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"3","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `cyfwe_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(93, 28, 5, '', '2017-03-20 05:12:05', 502, 3009, 'e8301399b17414083223bb1a29d5bb7034bee82e', '{"id":28,"asset_id":89,"parent_id":"1","lft":"51","rgt":52,"level":1,"path":null,"extension":"com_content","title":"CITAS","alias":"citas","note":"","description":"<div style=\\"width: 600px;\\" align=\\"right\\"><form class=\\"form-horizontal\\">\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 control-label\\" for=\\"rol\\">Rol<\\/label>\\r\\n<div class=\\"col-sm-10\\"><select class=\\"form-control\\" name=\\"rol\\" required=\\"required\\">\\r\\n<option>--Seleccione<\\/option>\\r\\n<option>P\\u00fablico en general<\\/option>\\r\\n<option>Administrativo<\\/option>\\r\\n<option>Investigador<\\/option>\\r\\n<option>Profesor<\\/option>\\r\\n<option>Estudiante<\\/option>\\r\\n<\\/select><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 contro-label\\" for=\\"nombre\\">Nombre<\\/label>\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"nombre\\" required=\\"required\\" type=\\"text\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 control-label\\" for=\\"cedula\\">Cedula<\\/label>\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"cedula\\" required=\\"required\\" type=\\"text\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 contro-label\\" for=\\"espacio\\">Espacio a solicitar\\/visitar<\\/label>\\r\\n<div class=\\"col-sm-10\\"><select class=\\"form-control\\" name=\\"espacio\\" required=\\"required\\">\\r\\n<option>--Seleccione<\\/option>\\r\\n<option>Planetario<\\/option>\\r\\n<option>Sal\\u00f3n del planetario<\\/option>\\r\\n<option>Aula de clases<\\/option>\\r\\n<option>Oficina<\\/option>\\r\\n<\\/select><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 contro-label\\" for=\\"descripcion\\">Descripci\\u00f3n<\\/label>\\r\\n<div class=\\"col-sm-10\\"><textarea class=\\"form-control\\" name=\\"descripcion\\" required=\\"required\\" rows=\\"5\\">The cat was playing in the garden.<\\/textarea><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"contro-label col-sm-2\\">El dia: <\\/label>\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"fecha\\" required=\\"required\\" type=\\"date\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group row\\"><label class=\\"contro-label col-sm-2\\">Desde: <\\/label>\\r\\n<div class=\\"col-sm-4\\"><input class=\\"form-control\\" name=\\"desde_fecha\\" required=\\"required\\" type=\\"time\\" \\/><\\/div>\\r\\n<label class=\\"contro-label col-sm-2\\">Hasta: <\\/label>\\r\\n<div class=\\"col-sm-4\\"><input class=\\"form-control\\" name=\\"hasta_fecha\\" required=\\"required\\" type=\\"time\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-offset-2 col-sm-10\\"><button class=\\"btn btn-default\\" type=\\"submit\\">Agregar<\\/button><\\/div>\\r\\n<\\/form><\\/div>","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-03-20 05:12:05","modified_user_id":null,"modified_time":"2017-03-20 05:12:05","hits":"0","language":"*","version":null}', 0),
(94, 7, 1, '', '2017-03-20 05:13:42', 502, 4143, 'b39d3c23e32683f237a3ff6b7720076e63300a8f', '{"id":7,"asset_id":90,"title":"Citas","alias":"citas","introtext":"<div style=\\"width: 600px;\\" align=\\"right\\"><form class=\\"form-horizontal\\">\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 control-label\\" for=\\"rol\\">Rol<\\/label>\\r\\n<div class=\\"col-sm-10\\"><select class=\\"form-control\\" name=\\"rol\\" required=\\"required\\">\\r\\n<option>--Seleccione<\\/option>\\r\\n<option>P\\u00fablico en general<\\/option>\\r\\n<option>Administrativo<\\/option>\\r\\n<option>Investigador<\\/option>\\r\\n<option>Profesor<\\/option>\\r\\n<option>Estudiante<\\/option>\\r\\n<\\/select><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 contro-label\\" for=\\"nombre\\">Nombre<\\/label>\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"nombre\\" required=\\"required\\" type=\\"text\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 control-label\\" for=\\"cedula\\">Cedula<\\/label>\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"cedula\\" required=\\"required\\" type=\\"text\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 contro-label\\" for=\\"espacio\\">Espacio a solicitar\\/visitar<\\/label>\\r\\n<div class=\\"col-sm-10\\"><select class=\\"form-control\\" name=\\"espacio\\" required=\\"required\\">\\r\\n<option>--Seleccione<\\/option>\\r\\n<option>Planetario<\\/option>\\r\\n<option>Sal\\u00f3n del planetario<\\/option>\\r\\n<option>Aula de clases<\\/option>\\r\\n<option>Oficina<\\/option>\\r\\n<\\/select><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 contro-label\\" for=\\"descripcion\\">Descripci\\u00f3n<\\/label>\\r\\n<div class=\\"col-sm-10\\"><textarea class=\\"form-control\\" name=\\"descripcion\\" required=\\"required\\" rows=\\"5\\">The cat was playing in the garden.<\\/textarea><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"contro-label col-sm-2\\">El dia: <\\/label>\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"fecha\\" required=\\"required\\" type=\\"date\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group row\\"><label class=\\"contro-label col-sm-2\\">Desde: <\\/label>\\r\\n<div class=\\"col-sm-4\\"><input class=\\"form-control\\" name=\\"desde_fecha\\" required=\\"required\\" type=\\"time\\" \\/><\\/div>\\r\\n<label class=\\"contro-label col-sm-2\\">Hasta: <\\/label>\\r\\n<div class=\\"col-sm-4\\"><input class=\\"form-control\\" name=\\"hasta_fecha\\" required=\\"required\\" type=\\"time\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-offset-2 col-sm-10\\"><button class=\\"btn btn-default\\" type=\\"submit\\">Agregar<\\/button><\\/div>\\r\\n<\\/form><\\/div>","fulltext":"","state":1,"catid":"28","created":"2017-03-20 05:13:42","created_by":"502","created_by_alias":"","modified":"2017-03-20 05:13:42","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2017-03-20 05:13:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(95, 7, 1, '', '2017-03-20 05:16:18', 502, 4122, '69fd8ea71d390597629fef04e8fa3b89d0601340', '{"id":7,"asset_id":"90","title":"Citas","alias":"citas","introtext":"<div><form class=\\"form-horizontal\\">\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 control-label\\" for=\\"rol\\">Rol<\\/label>\\r\\n<div class=\\"col-sm-10\\"><select class=\\"form-control\\" name=\\"rol\\" required=\\"required\\">\\r\\n<option>--Seleccione<\\/option>\\r\\n<option>P\\u00fablico en general<\\/option>\\r\\n<option>Administrativo<\\/option>\\r\\n<option>Investigador<\\/option>\\r\\n<option>Profesor<\\/option>\\r\\n<option>Estudiante<\\/option>\\r\\n<\\/select><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 contro-label\\" for=\\"nombre\\">Nombre<\\/label>\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"nombre\\" required=\\"required\\" type=\\"text\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 control-label\\" for=\\"cedula\\">Cedula<\\/label>\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"cedula\\" required=\\"required\\" type=\\"text\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 contro-label\\" for=\\"espacio\\">Espacio a solicitar\\/visitar<\\/label>\\r\\n<div class=\\"col-sm-10\\"><select class=\\"form-control\\" name=\\"espacio\\" required=\\"required\\">\\r\\n<option>--Seleccione<\\/option>\\r\\n<option>Planetario<\\/option>\\r\\n<option>Sal\\u00f3n del planetario<\\/option>\\r\\n<option>Aula de clases<\\/option>\\r\\n<option>Oficina<\\/option>\\r\\n<\\/select><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 contro-label\\" for=\\"descripcion\\">Descripci\\u00f3n<\\/label>\\r\\n<div class=\\"col-sm-10\\"><textarea class=\\"form-control\\" name=\\"descripcion\\" required=\\"required\\" rows=\\"5\\">The cat was playing in the garden.<\\/textarea><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"contro-label col-sm-2\\">El dia: <\\/label>\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"fecha\\" required=\\"required\\" type=\\"date\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group row\\"><label class=\\"contro-label col-sm-2\\">Desde: <\\/label>\\r\\n<div class=\\"col-sm-4\\"><input class=\\"form-control\\" name=\\"desde_fecha\\" required=\\"required\\" type=\\"time\\" \\/><\\/div>\\r\\n<label class=\\"contro-label col-sm-2\\">Hasta: <\\/label>\\r\\n<div class=\\"col-sm-4\\"><input class=\\"form-control\\" name=\\"hasta_fecha\\" required=\\"required\\" type=\\"time\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-offset-2 col-sm-10\\"><button class=\\"btn btn-default\\" type=\\"submit\\">Agregar<\\/button><\\/div>\\r\\n<\\/form><\\/div>","fulltext":"","state":1,"catid":"28","created":"2017-03-20 05:13:42","created_by":"502","created_by_alias":"","modified":"2017-03-20 05:16:18","modified_by":"502","checked_out":"502","checked_out_time":"2017-03-20 05:15:49","publish_up":"2017-03-20 05:13:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(96, 7, 1, '', '2017-03-20 05:16:45', 502, 4162, '1154efbf2b11115f7bca41b627e735c4d0fea431', '{"id":7,"asset_id":"90","title":"Citas","alias":"citas","introtext":"<div style=\\"width: 800px;\\" align=\\"right\\"><form class=\\"form-horizontal\\">\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 control-label\\" for=\\"rol\\">Rol<\\/label>\\r\\n<div class=\\"col-sm-10\\"><select class=\\"form-control\\" name=\\"rol\\" required=\\"required\\">\\r\\n<option>--Seleccione<\\/option>\\r\\n<option>P\\u00fablico en general<\\/option>\\r\\n<option>Administrativo<\\/option>\\r\\n<option>Investigador<\\/option>\\r\\n<option>Profesor<\\/option>\\r\\n<option>Estudiante<\\/option>\\r\\n<\\/select><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 contro-label\\" for=\\"nombre\\">Nombre<\\/label>\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"nombre\\" required=\\"required\\" type=\\"text\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 control-label\\" for=\\"cedula\\">Cedula<\\/label>\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"cedula\\" required=\\"required\\" type=\\"text\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 contro-label\\" for=\\"espacio\\">Espacio a solicitar\\/visitar<\\/label>\\r\\n<div class=\\"col-sm-10\\"><select class=\\"form-control\\" name=\\"espacio\\" required=\\"required\\">\\r\\n<option>--Seleccione<\\/option>\\r\\n<option>Planetario<\\/option>\\r\\n<option>Sal\\u00f3n del planetario<\\/option>\\r\\n<option>Aula de clases<\\/option>\\r\\n<option>Oficina<\\/option>\\r\\n<\\/select><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 contro-label\\" for=\\"descripcion\\">Descripci\\u00f3n<\\/label>\\r\\n<div class=\\"col-sm-10\\"><textarea class=\\"form-control\\" name=\\"descripcion\\" required=\\"required\\" rows=\\"5\\">The cat was playing in the garden.<\\/textarea><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"contro-label col-sm-2\\">El dia: <\\/label>\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"fecha\\" required=\\"required\\" type=\\"date\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group row\\"><label class=\\"contro-label col-sm-2\\">Desde: <\\/label>\\r\\n<div class=\\"col-sm-4\\"><input class=\\"form-control\\" name=\\"desde_fecha\\" required=\\"required\\" type=\\"time\\" \\/><\\/div>\\r\\n<label class=\\"contro-label col-sm-2\\">Hasta: <\\/label>\\r\\n<div class=\\"col-sm-4\\"><input class=\\"form-control\\" name=\\"hasta_fecha\\" required=\\"required\\" type=\\"time\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-offset-2 col-sm-10\\"><button class=\\"btn btn-default\\" type=\\"submit\\">Agregar<\\/button><\\/div>\\r\\n<\\/form><\\/div>","fulltext":"","state":1,"catid":"28","created":"2017-03-20 05:13:42","created_by":"502","created_by_alias":"","modified":"2017-03-20 05:16:45","modified_by":"502","checked_out":"502","checked_out_time":"2017-03-20 05:16:18","publish_up":"2017-03-20 05:13:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(97, 7, 1, '', '2017-03-20 05:17:24', 502, 4163, '8194a49036f17da48c926ae110903a5cb9df16c9', '{"id":7,"asset_id":"90","title":"Citas","alias":"citas","introtext":"<div style=\\"width: 600px;\\" align=\\"center\\"><form class=\\"form-horizontal\\">\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 control-label\\" for=\\"rol\\">Rol<\\/label>\\r\\n<div class=\\"col-sm-10\\"><select class=\\"form-control\\" name=\\"rol\\" required=\\"required\\">\\r\\n<option>--Seleccione<\\/option>\\r\\n<option>P\\u00fablico en general<\\/option>\\r\\n<option>Administrativo<\\/option>\\r\\n<option>Investigador<\\/option>\\r\\n<option>Profesor<\\/option>\\r\\n<option>Estudiante<\\/option>\\r\\n<\\/select><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 contro-label\\" for=\\"nombre\\">Nombre<\\/label>\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"nombre\\" required=\\"required\\" type=\\"text\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 control-label\\" for=\\"cedula\\">Cedula<\\/label>\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"cedula\\" required=\\"required\\" type=\\"text\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 contro-label\\" for=\\"espacio\\">Espacio a solicitar\\/visitar<\\/label>\\r\\n<div class=\\"col-sm-10\\"><select class=\\"form-control\\" name=\\"espacio\\" required=\\"required\\">\\r\\n<option>--Seleccione<\\/option>\\r\\n<option>Planetario<\\/option>\\r\\n<option>Sal\\u00f3n del planetario<\\/option>\\r\\n<option>Aula de clases<\\/option>\\r\\n<option>Oficina<\\/option>\\r\\n<\\/select><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 contro-label\\" for=\\"descripcion\\">Descripci\\u00f3n<\\/label>\\r\\n<div class=\\"col-sm-10\\"><textarea class=\\"form-control\\" name=\\"descripcion\\" required=\\"required\\" rows=\\"5\\">The cat was playing in the garden.<\\/textarea><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"contro-label col-sm-2\\">El dia: <\\/label>\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"fecha\\" required=\\"required\\" type=\\"date\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group row\\"><label class=\\"contro-label col-sm-2\\">Desde: <\\/label>\\r\\n<div class=\\"col-sm-4\\"><input class=\\"form-control\\" name=\\"desde_fecha\\" required=\\"required\\" type=\\"time\\" \\/><\\/div>\\r\\n<label class=\\"contro-label col-sm-2\\">Hasta: <\\/label>\\r\\n<div class=\\"col-sm-4\\"><input class=\\"form-control\\" name=\\"hasta_fecha\\" required=\\"required\\" type=\\"time\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-offset-2 col-sm-10\\"><button class=\\"btn btn-default\\" type=\\"submit\\">Agregar<\\/button><\\/div>\\r\\n<\\/form><\\/div>","fulltext":"","state":1,"catid":"28","created":"2017-03-20 05:13:42","created_by":"502","created_by_alias":"","modified":"2017-03-20 05:17:24","modified_by":"502","checked_out":"502","checked_out_time":"2017-03-20 05:16:45","publish_up":"2017-03-20 05:13:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"3","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(98, 7, 1, '', '2017-03-20 05:18:07', 502, 4138, 'ad386ff948681945a95aed1f03822a63e9e4916f', '{"id":7,"asset_id":"90","title":"Citas","alias":"citas","introtext":"<div align=\\"right\\"><form class=\\"form-horizontal\\">\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 control-label\\" for=\\"rol\\">Rol<\\/label>\\r\\n<div class=\\"col-sm-10\\"><select class=\\"form-control\\" name=\\"rol\\" required=\\"required\\">\\r\\n<option>--Seleccione<\\/option>\\r\\n<option>P\\u00fablico en general<\\/option>\\r\\n<option>Administrativo<\\/option>\\r\\n<option>Investigador<\\/option>\\r\\n<option>Profesor<\\/option>\\r\\n<option>Estudiante<\\/option>\\r\\n<\\/select><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 contro-label\\" for=\\"nombre\\">Nombre<\\/label>\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"nombre\\" required=\\"required\\" type=\\"text\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 control-label\\" for=\\"cedula\\">Cedula<\\/label>\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"cedula\\" required=\\"required\\" type=\\"text\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 contro-label\\" for=\\"espacio\\">Espacio a solicitar\\/visitar<\\/label>\\r\\n<div class=\\"col-sm-10\\"><select class=\\"form-control\\" name=\\"espacio\\" required=\\"required\\">\\r\\n<option>--Seleccione<\\/option>\\r\\n<option>Planetario<\\/option>\\r\\n<option>Sal\\u00f3n del planetario<\\/option>\\r\\n<option>Aula de clases<\\/option>\\r\\n<option>Oficina<\\/option>\\r\\n<\\/select><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 contro-label\\" for=\\"descripcion\\">Descripci\\u00f3n<\\/label>\\r\\n<div class=\\"col-sm-10\\"><textarea class=\\"form-control\\" name=\\"descripcion\\" required=\\"required\\" rows=\\"5\\">The cat was playing in the garden.<\\/textarea><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"contro-label col-sm-2\\">El dia: <\\/label>\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"fecha\\" required=\\"required\\" type=\\"date\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group row\\"><label class=\\"contro-label col-sm-2\\">Desde: <\\/label>\\r\\n<div class=\\"col-sm-4\\"><input class=\\"form-control\\" name=\\"desde_fecha\\" required=\\"required\\" type=\\"time\\" \\/><\\/div>\\r\\n<label class=\\"contro-label col-sm-2\\">Hasta: <\\/label>\\r\\n<div class=\\"col-sm-4\\"><input class=\\"form-control\\" name=\\"hasta_fecha\\" required=\\"required\\" type=\\"time\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-offset-2 col-sm-10\\"><button class=\\"btn btn-default\\" type=\\"submit\\">Agregar<\\/button><\\/div>\\r\\n<\\/form><\\/div>","fulltext":"","state":1,"catid":"28","created":"2017-03-20 05:13:42","created_by":"502","created_by_alias":"","modified":"2017-03-20 05:18:07","modified_by":"502","checked_out":"502","checked_out_time":"2017-03-20 05:17:24","publish_up":"2017-03-20 05:13:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"5","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(99, 7, 1, '', '2017-03-20 05:19:16', 502, 4137, '67c2d57c07b44c3cdd4166cf2077d3b44b34860c', '{"id":7,"asset_id":"90","title":"Citas","alias":"citas","introtext":"<div align=\\"right\\"><form class=\\"form-horizontal\\">\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 control-label\\" for=\\"rol\\">Rol<\\/label>\\r\\n<div class=\\"col-sm-6\\"><select class=\\"form-control\\" name=\\"rol\\" required=\\"required\\">\\r\\n<option>--Seleccione<\\/option>\\r\\n<option>P\\u00fablico en general<\\/option>\\r\\n<option>Administrativo<\\/option>\\r\\n<option>Investigador<\\/option>\\r\\n<option>Profesor<\\/option>\\r\\n<option>Estudiante<\\/option>\\r\\n<\\/select><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 contro-label\\" for=\\"nombre\\">Nombre<\\/label>\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"nombre\\" required=\\"required\\" type=\\"text\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 control-label\\" for=\\"cedula\\">Cedula<\\/label>\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"cedula\\" required=\\"required\\" type=\\"text\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 contro-label\\" for=\\"espacio\\">Espacio a solicitar\\/visitar<\\/label>\\r\\n<div class=\\"col-sm-10\\"><select class=\\"form-control\\" name=\\"espacio\\" required=\\"required\\">\\r\\n<option>--Seleccione<\\/option>\\r\\n<option>Planetario<\\/option>\\r\\n<option>Sal\\u00f3n del planetario<\\/option>\\r\\n<option>Aula de clases<\\/option>\\r\\n<option>Oficina<\\/option>\\r\\n<\\/select><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"col-sm-2 contro-label\\" for=\\"descripcion\\">Descripci\\u00f3n<\\/label>\\r\\n<div class=\\"col-sm-10\\"><textarea class=\\"form-control\\" name=\\"descripcion\\" required=\\"required\\" rows=\\"5\\">The cat was playing in the garden.<\\/textarea><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"contro-label col-sm-2\\">El dia: <\\/label>\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"fecha\\" required=\\"required\\" type=\\"date\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group row\\"><label class=\\"contro-label col-sm-2\\">Desde: <\\/label>\\r\\n<div class=\\"col-sm-4\\"><input class=\\"form-control\\" name=\\"desde_fecha\\" required=\\"required\\" type=\\"time\\" \\/><\\/div>\\r\\n<label class=\\"contro-label col-sm-2\\">Hasta: <\\/label>\\r\\n<div class=\\"col-sm-4\\"><input class=\\"form-control\\" name=\\"hasta_fecha\\" required=\\"required\\" type=\\"time\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-offset-2 col-sm-10\\"><button class=\\"btn btn-default\\" type=\\"submit\\">Agregar<\\/button><\\/div>\\r\\n<\\/form><\\/div>","fulltext":"","state":1,"catid":"28","created":"2017-03-20 05:13:42","created_by":"502","created_by_alias":"","modified":"2017-03-20 05:19:16","modified_by":"502","checked_out":"502","checked_out_time":"2017-03-20 05:18:07","publish_up":"2017-03-20 05:13:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"6","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(100, 7, 1, '', '2017-03-20 05:23:08', 502, 3886, 'eebd484e3969fb1d67318c241e9a77b1f5a1af9a', '{"id":7,"asset_id":"90","title":"Citas","alias":"citas","introtext":"<div style=\\"width: 600px;\\" align=\\"right\\"><form class=\\"form-horizontal\\">\\r\\n<div class=\\"form-group\\">\\r\\n<div class=\\"col-sm-10\\"><select class=\\"form-control\\" name=\\"rol\\" required=\\"required\\">\\r\\n<option>--Seleccione<\\/option>\\r\\n<option>P\\u00fablico en general<\\/option>\\r\\n<option>Administrativo<\\/option>\\r\\n<option>Investigador<\\/option>\\r\\n<option>Profesor<\\/option>\\r\\n<option>Estudiante<\\/option>\\r\\n<\\/select><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\">\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"nombre\\" required=\\"required\\" type=\\"text\\" placeholder=\\"Nombre\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\">\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"cedula\\" required=\\"required\\" type=\\"text\\" placeholder=\\"Cedula\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group col-md-10\\"><label class=\\"col-sm-10 contro-label\\" for=\\"espacio\\">Espacio a solicitar\\/visitar<\\/label><select class=\\"form-control\\" name=\\"espacio\\" required=\\"required\\">\\r\\n<option>--Seleccione<\\/option>\\r\\n<option>Planetario<\\/option>\\r\\n<option>Sal\\u00f3n del planetario<\\/option>\\r\\n<option>Aula de clases<\\/option>\\r\\n<option>Oficina<\\/option>\\r\\n<\\/select><\\/div>\\r\\n<div class=\\"form-group\\">\\r\\n<div class=\\"col-sm-10\\"><textarea class=\\"form-control\\" name=\\"descripcion\\" required=\\"required\\" rows=\\"5\\" placeholder=\\"Descripcion\\"><\\/textarea><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"contro-label col-sm-2\\">El dia: <\\/label>\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"fecha\\" required=\\"required\\" type=\\"date\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group row\\"><label class=\\"contro-label col-sm-2\\">Desde: <\\/label>\\r\\n<div class=\\"col-sm-4\\"><input class=\\"form-control\\" name=\\"desde_fecha\\" required=\\"required\\" type=\\"time\\" \\/><\\/div>\\r\\n<label class=\\"contro-label col-sm-2\\">Hasta: <\\/label>\\r\\n<div class=\\"col-sm-4\\"><input class=\\"form-control\\" name=\\"hasta_fecha\\" required=\\"required\\" type=\\"time\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-offset-2 col-sm-10\\"><button class=\\"btn btn-default\\" type=\\"submit\\">Agregar<\\/button><\\/div>\\r\\n<\\/form><\\/div>","fulltext":"","state":1,"catid":"28","created":"2017-03-20 05:13:42","created_by":"502","created_by_alias":"","modified":"2017-03-20 05:23:08","modified_by":"502","checked_out":"502","checked_out_time":"2017-03-20 05:19:16","publish_up":"2017-03-20 05:13:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"8","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(101, 7, 1, '', '2017-03-20 05:23:42', 502, 3870, 'a5a7a49b08a858525eeb051f8a78252098436aed', '{"id":7,"asset_id":"90","title":"Citas","alias":"citas","introtext":"<div style=\\"width: 600px;\\"><form class=\\"form-horizontal\\">\\r\\n<div class=\\"form-group\\">\\r\\n<div class=\\"col-sm-10\\"><select class=\\"form-control\\" name=\\"rol\\" required=\\"required\\">\\r\\n<option>--Seleccione<\\/option>\\r\\n<option>P\\u00fablico en general<\\/option>\\r\\n<option>Administrativo<\\/option>\\r\\n<option>Investigador<\\/option>\\r\\n<option>Profesor<\\/option>\\r\\n<option>Estudiante<\\/option>\\r\\n<\\/select><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\">\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"nombre\\" required=\\"required\\" type=\\"text\\" placeholder=\\"Nombre\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\">\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"cedula\\" required=\\"required\\" type=\\"text\\" placeholder=\\"Cedula\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group col-md-10\\"><label class=\\"col-sm-10 contro-label\\" for=\\"espacio\\">Espacio a solicitar\\/visitar<\\/label><select class=\\"form-control\\" name=\\"espacio\\" required=\\"required\\">\\r\\n<option>--Seleccione<\\/option>\\r\\n<option>Planetario<\\/option>\\r\\n<option>Sal\\u00f3n del planetario<\\/option>\\r\\n<option>Aula de clases<\\/option>\\r\\n<option>Oficina<\\/option>\\r\\n<\\/select><\\/div>\\r\\n<div class=\\"form-group\\">\\r\\n<div class=\\"col-sm-10\\"><textarea class=\\"form-control\\" name=\\"descripcion\\" required=\\"required\\" rows=\\"5\\" placeholder=\\"Descripcion\\"><\\/textarea><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"contro-label col-sm-2\\">El dia: <\\/label>\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"fecha\\" required=\\"required\\" type=\\"date\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group row\\"><label class=\\"contro-label col-sm-2\\">Desde: <\\/label>\\r\\n<div class=\\"col-sm-4\\"><input class=\\"form-control\\" name=\\"desde_fecha\\" required=\\"required\\" type=\\"time\\" \\/><\\/div>\\r\\n<label class=\\"contro-label col-sm-2\\">Hasta: <\\/label>\\r\\n<div class=\\"col-sm-4\\"><input class=\\"form-control\\" name=\\"hasta_fecha\\" required=\\"required\\" type=\\"time\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-offset-2 col-sm-10\\"><button class=\\"btn btn-default\\" type=\\"submit\\">Agregar<\\/button><\\/div>\\r\\n<\\/form><\\/div>","fulltext":"","state":1,"catid":"28","created":"2017-03-20 05:13:42","created_by":"502","created_by_alias":"","modified":"2017-03-20 05:23:42","modified_by":"502","checked_out":"502","checked_out_time":"2017-03-20 05:23:08","publish_up":"2017-03-20 05:13:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"9","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(102, 29, 5, '', '2017-03-20 23:25:31', 502, 2895, '6885f5eeb2b4e3861bc3982f9884f388c3f435d9', '{"id":29,"asset_id":92,"parent_id":"28","lft":"52","rgt":53,"level":2,"path":null,"extension":"com_content","title":"Solicitar Espacio","alias":"solicitar-espacio","note":"","description":"<div align=\\"center\\">\\r\\n<div style=\\"width: 600px;\\"><form class=\\"form-horizontal\\" action=\\"\\/control_citas\\/agregar_cita.php\\" method=\\"POST\\">\\r\\n<div class=\\"form-group\\">\\r\\n<div class=\\"col-sm-10\\"><select class=\\"form-control\\" name=\\"rol\\" required=\\"required\\">\\r\\n<option>--Seleccione<\\/option>\\r\\n<option>P\\u00fablico en general<\\/option>\\r\\n<option>Administrativo<\\/option>\\r\\n<option>Investigador<\\/option>\\r\\n<option>Profesor<\\/option>\\r\\n<option>Estudiante<\\/option>\\r\\n<\\/select><\\/div>\\r\\n<\\/div>\\r\\n<br \\/>\\r\\n<div class=\\"form-group\\">\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"nombre\\" required=\\"required\\" type=\\"text\\" placeholder=\\"Nombre\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<br \\/>\\r\\n<div class=\\"form-group\\">\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"cedula\\" required=\\"required\\" type=\\"text\\" placeholder=\\"Cedula\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<br \\/>\\r\\n<div class=\\"form-group col-md-10\\"><label class=\\"col-sm-10 contro-label\\" for=\\"espacio\\">Espacio a solicitar\\/visitar<\\/label><select class=\\"form-control\\" name=\\"espacio\\" required=\\"required\\">\\r\\n<option>--Seleccione<\\/option>\\r\\n<option>Planetario<\\/option>\\r\\n<option>Sal\\u00f3n del planetario<\\/option>\\r\\n<option>Aula de clases<\\/option>\\r\\n<option>Oficina<\\/option>\\r\\n<\\/select><\\/div>\\r\\n<br \\/>\\r\\n<div class=\\"form-group\\">\\r\\n<div class=\\"col-sm-10\\"><textarea class=\\"form-control\\" name=\\"descripcion\\" required=\\"required\\" rows=\\"5\\" placeholder=\\"Descripcion\\"><\\/textarea><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group\\"><label class=\\"contro-label col-sm-2\\">El dia: <\\/label>\\r\\n<div class=\\"col-sm-10\\"><input class=\\"form-control\\" name=\\"fecha\\" required=\\"required\\" type=\\"date\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"form-group row\\"><label class=\\"contro-label col-sm-2\\">Desde: <\\/label>\\r\\n<div class=\\"col-sm-4\\"><input class=\\"form-control\\" name=\\"desde_fecha\\" required=\\"required\\" type=\\"time\\" \\/><\\/div>\\r\\n<label class=\\"contro-label col-sm-2\\">Hasta: <\\/label>\\r\\n<div class=\\"col-sm-4\\"><input class=\\"form-control\\" name=\\"hasta_fecha\\" required=\\"required\\" type=\\"time\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<br \\/>\\r\\n<div class=\\"col-sm-offset-2 col-sm-10\\"><button class=\\"btn btn-default\\" type=\\"submit\\">Agregar<\\/button><\\/div>\\r\\n<\\/form><\\/div>\\r\\n<\\/div>","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2017-03-20 23:25:31","modified_user_id":null,"modified_time":"2017-03-20 23:25:31","hits":"0","language":"*","version":null}', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_updates`
--

CREATE TABLE IF NOT EXISTS `cyfwe_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates' AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `cyfwe_updates`
--

INSERT INTO `cyfwe_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 1, 700, 'Joomla', '', 'joomla', 'file', '', 0, '3.8.1', '', 'https://update.joomla.org/core/sts/extension_sts.xml', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_update_sites`
--

CREATE TABLE IF NOT EXISTS `cyfwe_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites' AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `cyfwe_update_sites`
--

INSERT INTO `cyfwe_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1509546637, ''),
(2, 'Joomla! Extension Directory', 'collection', 'https://update.joomla.org/jed/list.xml', 1, 1509546637, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, ''),
(5, 'Gantry 5', 'extension', 'http://updates.gantry.org/5.0/joomla/pkg_gantry5.xml', 1, 0, ''),
(6, 'Gantry 5', 'collection', 'http://updates.gantry.org/5.0/joomla/list.xml', 1, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `cyfwe_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Volcado de datos para la tabla `cyfwe_update_sites_extensions`
--

INSERT INTO `cyfwe_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 802),
(3, 805),
(4, 28),
(5, 813),
(6, 813);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_usergroups`
--

CREATE TABLE IF NOT EXISTS `cyfwe_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `cyfwe_usergroups`
--

INSERT INTO `cyfwe_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_users`
--

CREATE TABLE IF NOT EXISTS `cyfwe_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=506 ;

--
-- Volcado de datos para la tabla `cyfwe_users`
--

INSERT INTO `cyfwe_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(502, 'Super User', 'daniel', 'danieldaniyyelda@gmail.com', '$2y$10$/k/EiD4HqbHF9mnzbRCv9OqKNgZBEDqm6uc7RqcHM1SafPIRhiPRy', 0, 1, '2017-02-04 07:37:14', '2017-11-01 15:03:50', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(503, 'Franklin', 'franklin', 'franklinbardoth@gmail.com', '$2y$10$XBtS2fnOiZFOp9VflWbjyuVCuP9SsgbsCBt0T31TJ1jm7BSka9.Ga', 0, 0, '2017-02-09 19:05:32', '2017-02-09 19:06:26', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0),
(505, 'Daniel Tovar', 'danieeis', 'josedtovart@gmail.com', '$2y$10$I9Uq0JTiYQvDA9XkFzC6b.NMbZTxs7e6B/fn90OSysdZ4EXywgSDK', 0, 1, '2017-02-14 01:56:05', '2017-03-10 22:55:51', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '2017-03-09 05:38:07', 1, '', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_user_keys`
--

CREATE TABLE IF NOT EXISTS `cyfwe_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_user_notes`
--

CREATE TABLE IF NOT EXISTS `cyfwe_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_user_profiles`
--

CREATE TABLE IF NOT EXISTS `cyfwe_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `cyfwe_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cyfwe_user_usergroup_map`
--

INSERT INTO `cyfwe_user_usergroup_map` (`user_id`, `group_id`) VALUES
(502, 8),
(503, 2),
(503, 3),
(503, 4),
(503, 5),
(505, 2),
(505, 3),
(505, 4),
(505, 5),
(505, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_utf8_conversion`
--

CREATE TABLE IF NOT EXISTS `cyfwe_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cyfwe_utf8_conversion`
--

INSERT INTO `cyfwe_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cyfwe_viewlevels`
--

CREATE TABLE IF NOT EXISTS `cyfwe_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `cyfwe_viewlevels`
--

INSERT INTO `cyfwe_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
