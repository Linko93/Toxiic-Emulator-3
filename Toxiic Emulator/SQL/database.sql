-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versione server:              6.0.4-alpha-community-log - MySQL Community Server (GPL)
-- S.O. server:                  Win32
-- HeidiSQL Versione:            8.3.0.4770
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dump della struttura del database montana
CREATE DATABASE IF NOT EXISTS `montana` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `montana`;

-- Dump della struttura di tabella montana.admincp_logs
CREATE TABLE IF NOT EXISTS `usercp_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `log` text NOT NULL,
  `ip` text NOT NULL,
  `date` text NOT NULL,
  `timestamp` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;

-- Dump della struttura di tabella montana.admincp_logs
CREATE TABLE IF NOT EXISTS `admincp_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminid` int(11) NOT NULL,
  `log` text NOT NULL,
  `date` text NOT NULL,
  `timestamp` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=407 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.admincp_logs: 21 rows
DELETE FROM `admincp_logs`;
/*!40000 ALTER TABLE `admincp_logs` DISABLE KEYS */;
INSERT INTO `admincp_logs` (`id`, `adminid`, `log`, `date`, `timestamp`) VALUES
	(386, -1, 'EXP / Dinar event end!', '18:27:49 - 13/05/14', 1399998469),
	(387, -1, 'EXP / Dinar event end!', '18:28:27 - 13/05/14', 1399998507),
	(388, -1, 'EXP / Dinar event end!', '18:28:35 - 13/05/14', 1399998515),
	(389, -1, 'EXP / Dinar event end!', '18:28:39 - 13/05/14', 1399998519),
	(390, -1, 'EXP / Dinar event end!', '18:28:45 - 13/05/14', 1399998525),
	(391, -1, 'EXP / Dinar event end!', '16:22:50 - 20/05/14', 1400595770),
	(392, -1, 'EXP / Dinar event end!', '16:25:58 - 20/05/14', 1400595958),
	(393, -1, 'EXP / Dinar event end!', '18:10:48 - 20/05/14', 1400602248),
	(394, -1, 'EXP / Dinar event end!', '18:50:16 - 20/05/14', 1400604616),
	(395, -1, 'EXP / Dinar event end!', '23:13:18 - 20/05/14', 1400620398),
	(396, -1, 'EXP / Dinar event end!', '23:58:09 - 20/05/14', 1400623089),
	(397, -1, 'EXP / Dinar event end!', '16:24:18 - 22/05/14', 1400768658),
	(398, -1, 'EXP / Dinar event end!', '15:31:48 - 25/05/14', 1401024708),
	(399, -1, 'EXP / Dinar event end!', '21:37:56 - 25/05/14', 1401046676),
	(400, -1, 'EXP / Dinar event end!', '22:00:52 - 25/05/14', 1401048052),
	(401, -1, 'EXP / Dinar event end!', '22:05:30 - 25/05/14', 1401048330),
	(402, -1, 'EXP / Dinar event end!', '22:05:58 - 25/05/14', 1401048358),
	(403, -1, 'EXP / Dinar event end!', '16:47:45 - 28/05/14', 1401288465),
	(404, -1, 'EXP / Dinar event end!', '17:07:37 - 28/05/14', 1401289657),
	(405, -1, 'EXP / Dinar event end!', '17:14:48 - 28/05/14', 1401290088),
	(406, -1, 'EXP / Dinar event end!', '17:31:29 - 28/05/14', 1401291089);
/*!40000 ALTER TABLE `admincp_logs` ENABLE KEYS */;


-- Dump della struttura di tabella montana.anticheat_logs
CREATE TABLE IF NOT EXISTS `anticheat_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `description` varchar(100) NOT NULL DEFAULT '0',
  `timestamp` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.anticheat_logs: 0 rows
DELETE FROM `anticheat_logs`;
/*!40000 ALTER TABLE `anticheat_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `anticheat_logs` ENABLE KEYS */;


-- Dump della struttura di tabella montana.bans
CREATE TABLE IF NOT EXISTS `bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `deleted` int(15) DEFAULT NULL,
  `expiredate` int(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.bans: 0 rows
DELETE FROM `bans`;
/*!40000 ALTER TABLE `bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bans` ENABLE KEYS */;


-- Dump della struttura di tabella montana.beta_keys
CREATE TABLE IF NOT EXISTS `beta_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regkey` char(50) NOT NULL DEFAULT '0',
  `used` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.beta_keys: 0 rows
DELETE FROM `beta_keys`;
/*!40000 ALTER TABLE `beta_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `beta_keys` ENABLE KEYS */;

-- Dumping structure for table nexuswar_db.levelups
CREATE TABLE IF NOT EXISTS `levelups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `oldlevel` int(11) DEFAULT NULL,
  `newlevel` int(11) DEFAULT NULL,
  `premium` int(11) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=latin1;

-- Dumping data for table nexuswar_db.levelups: ~0 rows (approximately)
DELETE FROM `levelups`;
/*!40000 ALTER TABLE `levelups` DISABLE KEYS */;
/*!40000 ALTER TABLE `levelups` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;


-- Dump della struttura di tabella montana.bugs
CREATE TABLE IF NOT EXISTS `bugs` (
  `reporterID` varchar(16) DEFAULT NULL,
  `content` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.bugs: 0 rows
DELETE FROM `bugs`;
/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs` ENABLE KEYS */;


-- Dump della struttura di tabella montana.carepackage
CREATE TABLE IF NOT EXISTS `carepackage` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `itemcode` char(50) NOT NULL,
  `price` int(10) NOT NULL,
  `method` enum('0','1') NOT NULL,
  `itemdays` int(10) NOT NULL,
  `loseitem1` char(50) NOT NULL,
  `loseitemdays1` int(10) NOT NULL,
  `loseitem2` char(50) NOT NULL,
  `loseitemdays2` int(10) NOT NULL,
  `loseitem3` char(50) NOT NULL,
  `loseitemdays3` int(10) NOT NULL,
  `loseitem4` char(50) NOT NULL,
  `loseitemdays4` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.carepackage: 5 rows
DELETE FROM `carepackage`;
/*!40000 ALTER TABLE `carepackage` DISABLE KEYS */;
INSERT INTO `carepackage` (`id`, `itemcode`, `price`, `method`, `itemdays`, `loseitem1`, `loseitemdays1`, `loseitem2`, `loseitemdays2`, `loseitem3`, `loseitemdays3`, `loseitem4`, `loseitemdays4`) VALUES
	(0, 'DG24', 2500, '1', 30, 'DG31', 15, 'DG23', 15, 'DG16', 7, 'DG20', 3),
	(1, 'DC67', 2500, '1', 30, 'DC36', 15, 'DC31', 15, 'DH03', 7, 'DC03', 3),
	(2, 'DF36', 2500, '1', 30, 'DC34', 15, 'DG25', 15, 'DJ63', 15, 'DF65', 3),
	(3, 'DF35', 15000, '0', 30, 'DC71', 15, 'DG08', 15, 'DJ93', 7, 'DF06', 3),
	(4, 'DC33', 15000, '0', 30, 'DF02', 15, 'DG06', 15, 'DJ03', 7, 'DS10', 3);
/*!40000 ALTER TABLE `carepackage` ENABLE KEYS */;


-- Dumping structure for table nexuswar_db.wordfilter
CREATE TABLE IF NOT EXISTS `wordfilter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `normal` char(50) NOT NULL,
  `replace` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=latin1;

-- Dumping structure for table nexuswar_db.serverinfo
CREATE TABLE IF NOT EXISTS `serverinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL DEFAULT '0',
  `value` char(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table nexuswar_db.serverinfo: ~5 rows (approximately)
DELETE FROM `serverinfo`;
/*!40000 ALTER TABLE `serverinfo` DISABLE KEYS */;
INSERT INTO `serverinfo` (`id`, `name`, `value`) VALUES
	(1, 'uptime', '0d, 0h, 24m'),
	(2, 'lastupdate', '1406481069'),
	(3, 'expexpire', '20:47 27/07/14'),
	(4, 'expevent', '1'),
	(5, 'exprate', '400%, 100%');

CREATE TABLE IF NOT EXISTS `purchases_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `log` char(255) NOT NULL DEFAULT '0',
  `timestamp` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=latin1;

-- Dumping data for table nexuswar_db.purchases_log: ~0 rows (approximately)
DELETE FROM `purchases_logs`;
	
-- Dumping structure for table nexuswar_db.tickets
CREATE TABLE IF NOT EXISTS `tickets` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `ownerid` int(40) NOT NULL DEFAULT '0',
  `title` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `state` enum('readed','unread','answered','closed','open','solved', 'read') NOT NULL DEFAULT 'open',
  `language` enum('English','Deutsch','Polski','Italian','Russian') NOT NULL DEFAULT 'English',
  `department` enum('Game', 'Payment', 'Website', 'TeamSpeak') NOT NULL DEFAULT 'Game',
  `readed` enum('0', '1') NOT NULL DEFAULT '0',
  `lastreplyid` bigint(100) NOT NULL DEFAULT '0',
  `timestamp` bigint(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=latin1;

-- Dumping data for table nexuswar_db.tickets: ~0 rows (approximately)
DELETE FROM `tickets`;

-- Dumping structure for table nexuswar_db.ticket_messages
CREATE TABLE IF NOT EXISTS `ticket_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticketid` int(11) NOT NULL,
  `replierid` int(11) NOT NULL,
  `message` longtext CHARACTER SET utf8 NOT NULL,
  `timestamp` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=latin1;

-- Dumping data for table nexuswar_db.ticket_messages: ~0 rows (approximately)
DELETE FROM `ticket_messages`;


-- Dumping data for table nexuswar_db.serverinfo: ~2 rows (approximately)
DELETE FROM `serverinfo`;
/*!40000 ALTER TABLE `serverinfo` DISABLE KEYS */;
INSERT INTO `serverinfo` (`id`, `name`, `value`) VALUES
	(1, 'uptime', '0d, 0h, 3m'),
	(2, 'lastupdate', '1406477142'),
	(3, 'expexpire', '19:00 11/08/14'),
	(4, 'expevent', '0'),
	(5, 'exprate', '200%, 25%');

-- Dump della struttura di tabella montana.changenick_logs
CREATE TABLE IF NOT EXISTS `changenick_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `oldnick` text NOT NULL,
  `newnick` text NOT NULL,
  `date` text NOT NULL,
  `timestamp` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.changenick_logs: 0 rows
DELETE FROM `changenick_logs`;
/*!40000 ALTER TABLE `changenick_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `changenick_logs` ENABLE KEYS */;


-- Dump della struttura di tabella montana.clans
CREATE TABLE IF NOT EXISTS `clans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL DEFAULT 'Montana',
  `maxusers` int(11) NOT NULL DEFAULT '20',
  `count` int(11) NOT NULL DEFAULT '0',
  `win` int(11) NOT NULL DEFAULT '0',
  `lose` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `announcment` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `iconid` int(11) NOT NULL,
  `creationtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.clans: 1 rows
DELETE FROM `clans`;
/*!40000 ALTER TABLE `clans` DISABLE KEYS */;
INSERT INTO `clans` (`id`, `name`, `maxusers`, `count`, `win`, `lose`, `exp`, `announcment`, `description`, `iconid`, `creationtime`) VALUES
	(1, 'gigino', 20, 1, 0, 0, 0, '', '', 0, 0);
/*!40000 ALTER TABLE `clans` ENABLE KEYS */;


-- Dump della struttura di tabella montana.clans_clanwars
CREATE TABLE IF NOT EXISTS `clans_clanwars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clanid1` int(11) NOT NULL DEFAULT '0',
  `clanid2` int(11) NOT NULL DEFAULT '0',
  `score` char(50) NOT NULL DEFAULT '0',
  `clanwon` int(11) NOT NULL,
  `date` char(50) NOT NULL DEFAULT '0',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.clans_clanwars: 0 rows
DELETE FROM `clans_clanwars`;
/*!40000 ALTER TABLE `clans_clanwars` DISABLE KEYS */;
/*!40000 ALTER TABLE `clans_clanwars` ENABLE KEYS */;


-- Dump della struttura di tabella montana.clans_invite
CREATE TABLE IF NOT EXISTS `clans_invite` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL DEFAULT '0',
  `clanid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.clans_invite: 0 rows
DELETE FROM `clans_invite`;
/*!40000 ALTER TABLE `clans_invite` DISABLE KEYS */;
/*!40000 ALTER TABLE `clans_invite` ENABLE KEYS */;


-- Dump della struttura di tabella montana.countrys
CREATE TABLE IF NOT EXISTS `countrys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `code` char(50) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=509 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.countrys: 245 rows
DELETE FROM `countrys`;
/*!40000 ALTER TABLE `countrys` DISABLE KEYS */;
INSERT INTO `countrys` (`id`, `name`, `code`, `count`) VALUES
	(255, '', 'AC', 0),
	(256, '', 'AD', 0),
	(257, '', 'AE', 0),
	(258, '', 'AF', 0),
	(259, '', 'AG', 0),
	(260, '', 'AI', 0),
	(261, 'Albania', 'AL', 1),
	(262, '', 'AM', 0),
	(263, '', 'AN', 0),
	(264, '', 'AO', 0),
	(265, '', 'AQ', 0),
	(266, 'Argentina', 'AR', 9),
	(267, '', 'AS', 0),
	(269, 'Australia', 'AU', 2),
	(270, '', 'AW', 0),
	(271, '', 'AX', 0),
	(272, '', 'AZ', 0),
	(273, '', 'BA', 6),
	(274, '', 'BB', 0),
	(275, '', 'BD', 0),
	(276, 'Belgium', 'BE', 20),
	(277, '', 'BF', 0),
	(278, 'Bulgaria', 'BG', 8),
	(279, '', 'BH', 0),
	(280, '', 'BI', 0),
	(281, '', 'BJ', 0),
	(282, '', 'BM', 0),
	(283, '', 'BN', 0),
	(284, '', 'BO', 0),
	(285, 'Brazil', 'BR', 205),
	(286, '', 'BS', 0),
	(287, '', 'BT', 0),
	(288, '', 'BV', 0),
	(289, '', 'BW', 0),
	(290, '', 'BY', 0),
	(291, '', 'BZ', 0),
	(292, 'Canada', 'CA', 31),
	(294, '', 'CC', 0),
	(295, '', 'CD', 0),
	(296, '', 'CF', 0),
	(297, '', 'CG', 0),
	(298, 'Switzerland', 'CH', 17),
	(299, '', 'CI', 0),
	(300, '', 'CK', 0),
	(301, 'Chile', 'CL', 33),
	(302, '', 'CM', 0),
	(303, '', 'CN', 0),
	(304, 'Colombia', 'CO', 33),
	(305, 'Costa Rica', 'CR', 4),
	(306, '', 'CS', 0),
	(307, '', 'CU', 0),
	(308, '', 'CV', 0),
	(309, '', 'CX', 0),
	(310, '', 'CY', 0),
	(311, 'Czech Republic', 'CZ', 0),
	(312, 'Germany', 'DE', 570),
	(313, '', 'DJ', 0),
	(314, 'Denmark', 'DK', 2),
	(315, '', 'DM', 0),
	(316, '', 'DO', 0),
	(317, '', 'DZ', 0),
	(318, 'Ecuador', 'EC', 1),
	(319, 'Estonia', 'EE', 5),
	(320, 'Egypt', 'EG', 1),
	(321, '', 'EH', 0),
	(323, '', 'ER', 0),
	(324, 'Spain', 'ES', 84),
	(325, '', 'ET', 0),
	(326, 'European', 'EU', 15),
	(328, '', 'FAM', 0),
	(329, 'Finland', 'FI', 8),
	(330, '', 'FJ', 0),
	(331, '', 'FK', 0),
	(332, '', 'FM', 0),
	(333, '', 'FO', 0),
	(334, 'France', 'FR', 63),
	(335, '', 'GA', 0),
	(336, 'United Kingdom', 'GB', 44),
	(337, '', 'GD', 0),
	(338, '', 'GE', 0),
	(339, '', 'GF', 0),
	(340, '', 'GH', 0),
	(341, '', 'GI', 0),
	(342, '', 'GL', 0),
	(343, '', 'GM', 0),
	(344, '', 'GN', 0),
	(345, '', 'GP', 0),
	(346, '', 'GQ', 0),
	(347, 'Greece', 'GR', 0),
	(348, '', 'GS', 0),
	(349, '', 'GT', 0),
	(350, '', 'GU', 0),
	(351, '', 'GW', 0),
	(352, '', 'GY', 0),
	(353, '', 'HK', 0),
	(354, '', 'HM', 0),
	(355, 'Honduras', 'HN', 0),
	(356, 'Croatia', 'HR', 0),
	(357, '', 'HT', 0),
	(359, '', 'ID', 20),
	(360, '', 'IE', 0),
	(361, 'Israel', 'IL', 1756),
	(362, 'India', 'IN', 40),
	(363, '', 'IO', 0),
	(364, '', 'IQ', 0),
	(365, '', 'IR', 0),
	(366, '', 'IS', 0),
	(367, 'Italy', 'IT', 1072),
	(368, '', 'JA', 0),
	(369, '', 'JM', 0),
	(370, '', 'JO', 0),
	(371, '', 'JP', 0),
	(372, '', 'KE', 0),
	(373, '', 'KG', 0),
	(374, '', 'KH', 0),
	(375, '', 'KI', 0),
	(376, '', 'KM', 0),
	(377, '', 'KN', 0),
	(378, '', 'KP', 0),
	(379, 'Korea, Republic of', 'KR', 1),
	(380, '', 'KW', 0),
	(381, '', 'KY', 0),
	(382, '', 'KZ', 0),
	(383, '', 'LA', 0),
	(384, '', 'LB', 0),
	(385, '', 'LC', 0),
	(386, '', 'LI', 0),
	(387, '', 'LK', 0),
	(388, '', 'LR', 0),
	(389, '', 'LS', 0),
	(390, 'Lithuania', 'LT', 8),
	(391, '', 'LU', 0),
	(392, '', 'LV', 0),
	(393, '', 'LY', 0),
	(394, '', 'MA', 0),
	(395, '', 'MC', 0),
	(396, '', 'MD', 0),
	(397, '', 'ME', 0),
	(398, '', 'MG', 0),
	(399, '', 'MH', 0),
	(400, '', 'MIL', 0),
	(401, 'Macedonia', 'MK', 1),
	(402, '', 'ML', 0),
	(403, '', 'MM', 0),
	(404, '', 'MN', 0),
	(405, '', 'MO', 0),
	(406, '', 'MP', 0),
	(407, '', 'MQ', 0),
	(408, '', 'MR', 0),
	(409, '', 'MS', 0),
	(410, 'Malta', 'MT', 2),
	(411, '', 'MU', 0),
	(412, '', 'MV', 0),
	(413, '', 'MW', 0),
	(414, 'Mexico', 'MX', 20),
	(415, '', 'MY', 0),
	(416, '', 'MZ', 0),
	(417, '', 'NA', 0),
	(418, '', 'NC', 0),
	(419, '', 'NE', 0),
	(420, '', 'NF', 0),
	(421, '', 'NG', 0),
	(422, '', 'NI', 0),
	(423, 'Netherlands', 'NL', 136),
	(424, '', 'NO', 3),
	(425, '', 'NP', 0),
	(426, '', 'NR', 0),
	(427, '', 'NU', 0),
	(428, '', 'NZ', 0),
	(429, '', 'OM', 0),
	(430, '', 'PA', 0),
	(431, 'Peru', 'PE', 7),
	(432, '', 'PF', 0),
	(433, '', 'PG', 0),
	(434, 'Philippines', 'PH', 8),
	(435, '', 'PK', 0),
	(436, 'Poland', 'PL', 538),
	(437, '', 'PM', 0),
	(438, '', 'PN', 0),
	(439, '', 'PR', 2),
	(441, 'Portugal', 'PT', 36),
	(442, '', 'PW', 0),
	(443, '', 'PY', 0),
	(444, '', 'QA', 3),
	(445, '', 'RE', 0),
	(446, 'Romania', 'RO', 14),
	(447, '', 'RS', 0),
	(448, 'Russia', 'RU', 4),
	(449, '', 'RW', 0),
	(450, 'Saudi Arabia', 'SA', 15),
	(451, '', 'SB', 0),
	(452, '', 'SC', 0),
	(454, '', 'SD', 0),
	(456, '', 'SG', 0),
	(457, '', 'SH', 0),
	(459, '', 'SJ', 0),
	(460, '', 'SK', 0),
	(461, '', 'SL', 0),
	(462, '', 'SM', 0),
	(463, '', 'SN', 0),
	(464, '', 'SO', 0),
	(465, '', 'SR', 0),
	(466, '', 'ST', 0),
	(467, 'El Salvador', 'SV', 2),
	(468, '', 'SY', 0),
	(469, '', 'SZ', 0),
	(470, '', 'TC', 0),
	(471, '', 'TD', 0),
	(472, '', 'TF', 0),
	(473, '', 'TG', 0),
	(474, '', 'TH', 0),
	(475, '', 'TJ', 0),
	(476, '', 'TK', 0),
	(477, '', 'TL', 0),
	(478, '', 'TM', 0),
	(479, '', 'TN', 0),
	(480, '', 'TO', 0),
	(481, 'Turkey', 'TR', 980),
	(482, '', 'TT', 0),
	(483, '', 'TV', 0),
	(484, '', 'TW', 0),
	(485, '', 'TZ', 0),
	(486, '', 'UA', 0),
	(487, '', 'UG', 0),
	(488, '', 'UK', 0),
	(489, '', 'UM', 0),
	(490, 'United States', 'US', 86),
	(491, 'Uruguay', 'UY', 3),
	(492, '', 'UZ', 0),
	(493, '', 'VA', 0),
	(494, '', 'VC', 0),
	(495, 'Venezuela', 'VE', 80),
	(496, '', 'VG', 0),
	(497, '', 'VI', 0),
	(498, '', 'VN', 0),
	(499, '', 'VU', 0),
	(500, '', 'WALES', 0),
	(501, '', 'WF', 0),
	(502, '', 'WS', 0),
	(503, '', 'YE', 0),
	(504, '', 'YT', 0),
	(505, '', 'YU', 0),
	(506, '', 'ZA', 0),
	(507, '', 'ZM', 0),
	(508, '', 'ZW', 0);
/*!40000 ALTER TABLE `countrys` ENABLE KEYS */;


-- Dump della struttura di tabella montana.coupons
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon` char(50) NOT NULL,
  `code` char(50) NOT NULL,
  `days` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `used` enum('0','1') NOT NULL DEFAULT '0',
  `item` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.coupons: 0 rows
DELETE FROM `coupons`;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;

-- Dump della struttura di tabella montana.ingame_coupons
CREATE TABLE IF NOT EXISTS `ingame_coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL DEFAULT '0',
  `dinars` bigint(20) NOT NULL DEFAULT '0',
  `cashs` bigint(20) NOT NULL DEFAULT '0',
  `items` char(50) DEFAULT NULL COMMENT 'Structure: item,days-item,days',
  `used` enum('0','1') NOT NULL DEFAULT '0',
  `userId` int(20) NOT NULL DEFAULT '-1',
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.ingame_coupons: 0 rows
DELETE FROM `ingame_coupons`;
/*!40000 ALTER TABLE `ingame_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingame_coupons` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

-- Dump della struttura di tabella montana.gunsmith
CREATE TABLE IF NOT EXISTS `gunsmith` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameid` int(11) NOT NULL DEFAULT '0',
  `item` char(50) NOT NULL DEFAULT '0',
  `rare` char(50) NOT NULL DEFAULT '0',
  `required_items` char(50) NOT NULL DEFAULT '0',
  `lose_items` char(50) NOT NULL DEFAULT '0',
  `required_materials` char(50) NOT NULL DEFAULT '0',
  `cost` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.gunsmith: 1 rows
DELETE FROM `gunsmith`;
/*!40000 ALTER TABLE `gunsmith` DISABLE KEYS */;
INSERT INTO `gunsmith` (`id`, `gameid`, `item`, `required_items`, `lose_items`, `required_materials`, `cost`) VALUES
	(1, 0, 'DE15', 'DB04', 'DC09,DF05', '12,9,14', 12000);


-- Dump della struttura di tabella montana.donations
CREATE TABLE IF NOT EXISTS `donations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `donation` char(50) NOT NULL DEFAULT '0',
  `paypal_email` char(50) NOT NULL DEFAULT '0',
  `date` char(50) NOT NULL DEFAULT '0',
  `timestamp` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.donations: 0 rows
DELETE FROM `donations`;
/*!40000 ALTER TABLE `donations` DISABLE KEYS */;
/*!40000 ALTER TABLE `donations` ENABLE KEYS */;

-- Dumping structure for table nexuswar_db.donation_packs
CREATE TABLE IF NOT EXISTS `donation_packs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `promocodes` int(11) NOT NULL DEFAULT '0',
  `promocodesrare` enum('0','1') NOT NULL DEFAULT '0',
  `cash` int(11) NOT NULL DEFAULT '0',
  `dinar` int(11) NOT NULL DEFAULT '0',
  `coin` int(11) NOT NULL DEFAULT '0',
  `premium` enum('0','1','2','3','4') NOT NULL DEFAULT '0',
  `premiumdays` int(11) NOT NULL DEFAULT '0',
  `items` char(255) NOT NULL DEFAULT 'null',
  `advised` enum('0','1') NOT NULL DEFAULT '0',
  `special` enum('0','1') NOT NULL DEFAULT '0',
  `donatordays` int(11) NOT NULL DEFAULT '0',
  `discount` int(11) NOT NULL DEFAULT '0',
  `description` char(60) NOT NULL DEFAULT 'A donator pack',
  `active` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;


-- Dump della struttura di tabella montana.donation_weapons
CREATE TABLE IF NOT EXISTS `donation_weapons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL,
  `price` int(11) NOT NULL,
  `days` int(11) NOT NULL,
  `min_donation` double NOT NULL DEFAULT '0',
  `class` enum('0','1','2','3','4') NOT NULL DEFAULT '0',
  `type` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dump dei dati della tabella montana.donation_weapons: 0 rows
DELETE FROM `donation_weapons`;
/*!40000 ALTER TABLE `donation_weapons` DISABLE KEYS */;
/*!40000 ALTER TABLE `donation_weapons` ENABLE KEYS */;


-- Dump della struttura di tabella montana.equipment
CREATE TABLE IF NOT EXISTS `equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ownerid` int(11) NOT NULL,
  `class0` varchar(255) NOT NULL DEFAULT 'DA02,DB01,DF01,DR01,^,^,^,^',
  `class1` varchar(255) NOT NULL DEFAULT 'DA02,DB01,DF01,DQ01,^,^,^,^',
  `class2` varchar(255) NOT NULL DEFAULT 'DA02,DB01,DG05,DN01,^,^,^,^',
  `class3` varchar(255) NOT NULL DEFAULT 'DA02,DB01,DC02,DN01,^,^,^,^',
  `class4` varchar(255) NOT NULL DEFAULT 'DA02,DB01,DJ01,DL01,^,^,^,^',
  `inventory` varchar(5000) NOT NULL DEFAULT '^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^',
  `storage` varchar(5000) NOT NULL DEFAULT '^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.equipment: 4 rows
DELETE FROM `equipment`;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` (`id`, `ownerid`, `class0`, `class1`, `class2`, `class3`, `class4`, `inventory`) VALUES
	(1, 1, '^,DB01,DF01,DR01,^,^,^,^', '^,DB01,DF01,DQ01,^,^,^,^', '^,DB01,DG05,DN01,^,^,^,^', '^,DB01,DC02,DN01,^,^,^,^', '^,DB01,DJ01,DL01,^,^,^,^', '^,^,^,^,^,^,^,D101-1-1-14060120-0-0-0-0-0,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^'),
	(2, 2, 'DA02,DB01,DF01,DR01,^,^,^,^', 'DA02,DB01,DF01,DQ01,^,^,^,^', 'DA02,DB01,DG05,DN01,^,^,^,^', 'DA02,DB01,DC02,DN01,^,^,^,^', 'DA02,DB01,DJ01,DL01,^,^,^,^', '^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^'),
	(3, 3, 'DA02,DB01,DF01,DR01,^,^,^,^', 'DA02,DB01,DF01,DQ01,^,^,^,^', 'DA02,DB01,DG05,DN01,^,^,^,^', 'DA02,DB01,DC02,DN01,^,^,^,^', 'DA02,DB01,DJ01,DL01,^,^,^,^', '^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^'),
	(4, 4, 'DA02,DB01,DF01,DR01,^,^,^,^', 'DA02,DB01,DF01,DQ01,^,^,^,^', 'DA02,DB01,DG05,DN01,^,^,^,^', 'DA02,DB01,DC02,DN01,^,^,^,^', 'DA02,DB01,DJ01,DL01,^,^,^,^', '^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^');
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;


-- Dump della struttura di tabella montana.events
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('0','1') NOT NULL DEFAULT '0' COMMENT '1 = Premium, 0 = Item',
  `itemlength` int(11) NOT NULL,
  `weaponcode` varchar(4) NOT NULL,
  `minlevel` int(11) NOT NULL DEFAULT '0',
  `startdate` bigint(20) NOT NULL,
  `eventlength` bigint(20) NOT NULL,
  `expired` enum('0','1') NOT NULL DEFAULT '0',
  `endtime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.events: 0 rows
DELETE FROM `events`;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;

-- Dumping structure for table montana_db.friends
CREATE TABLE IF NOT EXISTS `friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id1` int(11) NOT NULL DEFAULT '0',
  `id2` int(11) NOT NULL DEFAULT '0',
  `requesterid` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;



-- Dump della struttura di tabella montana.hwid_bans
CREATE TABLE IF NOT EXISTS `hwid_bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hwid` char(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.hwid_bans: 3 rows
DELETE FROM `hwid_bans`;
/*!40000 ALTER TABLE `hwid_bans` DISABLE KEYS */;
INSERT INTO `hwid_bans` (`id`, `hwid`) VALUES
	(11, '7df5289938d36ce6b6ca1eaf4997a1aa'),
	(46, '5b1f3f1f7d03dcb6722a43eae3091d95'),
	(45, 'e4d94953519f5acd46f31a28b8f85be4');
/*!40000 ALTER TABLE `hwid_bans` ENABLE KEYS */;


-- Dump della struttura di tabella montana.inbox
CREATE TABLE IF NOT EXISTS `inbox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ownerid` int(11) NOT NULL,
  `itemcode` char(50) NOT NULL,
  `days` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.inbox: 0 rows
DELETE FROM `inbox`;
/*!40000 ALTER TABLE `inbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbox` ENABLE KEYS */;


-- Dump della struttura di tabella montana.ip_registrations
CREATE TABLE IF NOT EXISTS `ip_registrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` char(50) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.ip_registrations: 0 rows
DELETE FROM `ip_registrations`;
/*!40000 ALTER TABLE `ip_registrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_registrations` ENABLE KEYS */;


-- Dump della struttura di tabella montana.log_authorize
CREATE TABLE IF NOT EXISTS `log_authorize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `result` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `host` varchar(520) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.log_authorize: 0 rows
DELETE FROM `log_authorize`;
/*!40000 ALTER TABLE `log_authorize` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_authorize` ENABLE KEYS */;


-- Dump della struttura di tabella montana.log_connections
CREATE TABLE IF NOT EXISTS `log_connections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` int(11) NOT NULL,
  `server` int(11) NOT NULL DEFAULT '0',
  `status` enum('-1','0','1') NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL,
  `host` varchar(520) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.log_connections: 0 rows
DELETE FROM `log_connections`;
/*!40000 ALTER TABLE `log_connections` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_connections` ENABLE KEYS */;


-- Dump della struttura di tabella montana.log_severs
CREATE TABLE IF NOT EXISTS `log_severs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serverid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `timestamp` bigint(20) NOT NULL,
  `state` enum('0','1') NOT NULL DEFAULT '0',
  `valid` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.log_severs: 0 rows
DELETE FROM `log_severs`;
/*!40000 ALTER TABLE `log_severs` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_severs` ENABLE KEYS */;


-- Dump della struttura di tabella montana.luckyshot
CREATE TABLE IF NOT EXISTS `luckyshot` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `itemcode` char(50) NOT NULL,
  `amount` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `method` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.luckyshot: 10 rows
DELETE FROM `luckyshot`;
/*!40000 ALTER TABLE `luckyshot` DISABLE KEYS */;
INSERT INTO `luckyshot` (`id`, `itemcode`, `amount`, `price`, `method`) VALUES
	(1, 'DG21', 158, 15000, '0'),
	(2, 'DT06', 174, 15000, '0'),
	(3, 'DG40', 145, 15000, '0'),
	(4, 'DF41', 22, 15000, '0'),
	(5, 'DC65', 0, 50, '1'),
	(6, 'DC76', 0, 25, '1'),
	(7, 'DG17', 0, 25, '1'),
	(8, 'DE06', 0, 25, '1'),
	(9, 'DG24', 0, 25, '1'),
	(10, 'DE04', 176, 15000, '0');
/*!40000 ALTER TABLE `luckyshot` ENABLE KEYS */;


-- Dump della struttura di tabella montana.macs_ban
CREATE TABLE IF NOT EXISTS `macs_ban` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mac` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.macs_ban: 2 rows
DELETE FROM `macs_ban`;
/*!40000 ALTER TABLE `macs_ban` DISABLE KEYS */;
INSERT INTO `macs_ban` (`id`, `mac`) VALUES
	(5, '7a7919a74086'),
	(6, ' 485d603a0660');
/*!40000 ALTER TABLE `macs_ban` ENABLE KEYS */;


-- Dump della struttura di tabella montana.maps
CREATE TABLE IF NOT EXISTS `maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mapid` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `flags` int(4) NOT NULL,
  `defaultflags` char(50) NOT NULL,
  `vehicles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.maps: 43 rows
DELETE FROM `maps`;
/*!40000 ALTER TABLE `maps` DISABLE KEYS */;
INSERT INTO `maps` (`id`, `mapid`, `name`, `flags`, `defaultflags`, `vehicles`) VALUES
	(1, 2, 'Emblem', 5, '0|1', 'EC01;EC01;EF04;EC01;EC01;EF04;ED01;ED01;ED01;EA01;EA01;EA01;EA01'),
	(2, 5, 'Ravello', 4, '2|0', ''),
	(3, 1, 'Harbor_IDA', 4, '1|0', ''),
	(4, 6, 'Ravello_2nd', 4, '0|2', ''),
	(5, 10, 'Harbor_ELIA', 5, '5|1', ''),
	(6, 73, 'ZeroPoint', 5, '0|1', 'EE16;ED12;ED11;EJ13;EB05;ED11;ED12;EE16;EB05;ED12;ED12;ED12;EJ11;EJ13;EJ11;ED12;EE14;EE14;EF05;EC02;EC02;EC02;EC02;EC02;EC02;EI05;EC02;EC02;EC02;EC02'),
	(7, 3, 'Havana', 6, '3|2', 'EE04;EE04;EG02;EG02;EA01;EA01;ED01;ED01'),
	(8, 4, 'Ohara', 5, '0|1', 'ED01;ED01;EA01;EA01;EA01;EA01;EA01;EA01;EE04;EE04;EE04;EE04;ED01;EE04;EC01;EC01;EC01;EC01;EA01;EA01;ED08;ED08'),
	(9, 7, 'Engrene', 4, '0|5', 'EK01;EJ07;EK01;EB01;EB01;EI01;EI01;EB01;EJ08;EB91;EJ08;EI01;EB01;EI02;EI02;EC01;EC01;EA01;EA01;ED02;EE04;EE04;EC01;EC01;EB01;EB01;EB04;EB04'),
	(10, 8, 'Pargona', 10, '0|1', 'EJ06;EI01;EB01;EB01;ED01;EB01;EB01;EB01;EB01;EI01;EM01;EJ05;EL01;EJ05;EJ05;EB01;EJ06;EL01;EM01;ED01;EB01;EC01;EC01;EL01;EL01;EA01;EA01;EA01'),
	(11, 9, 'Pargona_East', 10, '9|0', 'EL01;EJ06;EJ05;EJ05;EB01;EB01;EL01;EL01;EM01;EI01;EJ05;EJ05;EC01;EB01;EJ06;EJ05;EJ05;EL01;EL01;EM01;EL01;ED02;ED01;ED02;EB01;ED02;ED01;EI01;EC01;ED02'),
	(12, 16, 'Cantumira', 7, '0|1', 'EE04;ED04;EJ05;EC01;EJ05;EJ06;EE03;ED01;ED05;EB01;EB01;ED05;EL01;EM01'),
	(13, 18, 'Zakhar', 5, '0|1', 'ED04;EE04;ED05;ED04;ED01;ED05;EJ03;EJ06;ED01;EE03;EA01;EB01;EB01;EA01;EA01'),
	(14, 24, 'Thamugadi', 8, '0|1', 'EB01;EI02;EI01;EE04;EJ08;EC01;EB01;EB01;EJ03;EC01;EE04;EI02;EE03;EE02;EJ03;EB01;EB04;EB04;EB04;EJ03;EI01;EB04'),
	(15, 25, 'Bandar', 5, '0|1', 'ED01;EL01;EM01;EC01;EA01;EL01;EM01;EA01;EG02;EG02;EA01;EA01;EL01;EL01;EL01;EL01;EA01;EA01;EA01;ED01;EC01;EC01;EC01;EC01;EC01;ED05;EF04;EF04;EM01;EL01;EC01'),
	(16, 30, 'CloudForest', 4, '1|0', 'EA01;ED08;ED08;ED01;EC01;EC01;EA01;EC01;EC01;ED01'),
	(17, 31, 'Crater', 8, '5|0', 'EJ06;EB01;EB04;EE03;ED05;ED06;EA01;EB01;EC01;EC01;ED06;EC01;EB04;EB01;EA01;EA01;EK02;EI02;EC01;EC01;EJ04;ED08;EC01;ED06;EE04;EE02;EA01;EC01;EF04;EC01;EI02;EJ07;EB04;EK04;EJ06;EE04;EC01'),
	(18, 34, 'Paroho', 4, '0|2', 'EG02;EC01;EC01;EG02;EF04'),
	(19, 36, 'Disturm', 9, '8|0', 'EK02;ED05;ED08;EM01;EL01;EM01;EM01;EE03;ED05;EB01;EL01;EB04;EC01;EB01;EB04;EE03;EC01;EA01;EC01;EL03;EE04;EK02;EN01;EN01;EN01;EN01;EN01;EN01;EN01;EN01;EA01;EA01;EC01;EC01;EN01;EB04;EB01'),
	(20, 20, 'Alberon', 2, '0|1', 'EA01;EA01'),
	(21, 41, 'CentralSquare', 6, '0|1', 'ED05;EM01;EA01;EA01;EL01;EL01;ED06;EA01;EC01;EC01;EC01;EC01;EC01;EC01;EN01;EN01'),
	(22, 45, 'DayLight', 4, '1|0', 'EG02'),
	(23, 59, 'Kashgar', 7, '0|1', 'EG01;EE08;EL01;EL01;ED08;EG02;EC01;EG01;EE08;EE04;EE04;EC01;EG02;ED09;EC01;ED08;ED09;EJ06;EB01;EB01;EB04;EB04;ED02;EC01;EC01;EC01;EC01;EC01'),
	(26, 0, 'Montana', 3, '0|2', 'ED01;ED01;ED01;EA01;EA01;ED01'),
	(27, 46, 'BlindBullet', 4, '0|1', 'EA03;EN01;EN01;EN01;EN01;EN01;EN01;EN01;EN01;EN01;EN01;EN01;EN01'),
	(28, 65, 'Odyssey', 2, '1|0', 'EC01;EC01;ED01;ED01;EM01;EM01;ED01;ED01;EC01;EC01;EM01;EM01;EC01;EC01;EC01;EC01'),
	(29, 49, 'OutPost', 2, '0|1', 'EN01;EN01;EN01;EN01;EN01;EN01;EN01;EN01'),
	(31, 51, 'LightHouse', 2, '1|0', 'EA03;EN06'),
	(32, 50, '28th_St', 2, '1|0', 'EA03;EN01;EN01;EN01;EN01;EN06'),
	(33, 42, 'SiegeWar', 4, '0|2', 'EE04;ED06;ED08;EA01;EA02;EA02;ED01;EN03;EN02;EN02;EN04;ED02;EE02;ED08;EA02;EA02;EA02;EA02;EA02;EA02;ED08;EA02;EE02;EN05;EN05;EN05;EC01;EN06'),
	(34, 68, 'Pargona_Dogfight', 2, '1|0', 'EB01;EB01;EB01;EJ04;EJ05;EJ05;EB01;EJ03;EJ03;EJ06;EJ07;EJ05;EJ07;EJ04;EJ04;EJ04;EJ03;EJ04;EJ04;EJ03;EJ06;EJ05;EJ07;EJ04;EJ04;EJ07;EJ05;EJ05'),
	(35, 56, 'SiegeWar_2', 4, '0|1', 'EN10;EN11;EN08;EN14;EN07;EN08'),
	(36, 11, 'Conturas', 9, '1|0', 'EK02;EK04;EK02;EJ05;EK02;EK02;EK04;EK02;ED04;EB01;EK02;EK02;EK02;EC01;ED04;EB01;EK02;EK02;EK04;EK04;EK02;EK02;EJ05;EC01;ED04;ED04;ED04;ED04;EK02;EK02;EK02;EK04;EK02;EK02;EK02;EK04;EB01;EB01'),
	(37, 70, 'DuskValley', 4, '0|1', 'EB04;EB04;EB04;EB04'),
	(38, 47, 'BrokenSunset', 2, '0|1', 'EN01;EN01;EN01;EN01;EN01;EN01'),
	(39, 12, 'Marien', 2, '1|0', ''),
	(40, 40, 'SkillPointer', 3, '1|0', 'EE07;EE01;EE01;EH01;EH01;EE01;EE01;EE07;EE07;EH01;EH01;EE07'),
	(41, 38, 'WinterForest', 4, '3|0', 'EA01;ED08;ED08;ED01;EC01;EC01;EA01;EC01;EC01;ED01'),
	(44, 66, 'Zadar', 5, '1|0', 'EC01;EC01;EJ06;EJ06;EC01;EC01;ED01;ED01;EE06;EE06;EE06;ED01;ED02;ED02;ED01;EB01;EB01'),
	(45, 67, 'Crater_Dogfight', 2, '1|0', 'EJ03;EJ03;EJ03;EJ03;EJ03;EJ03;EJ03;EJ03;EJ03;EJ03;EJ03;EJ03;EJ03;EJ03;EJ03;EB04;EB04;EB04;EB04;EJ03;EJ03;EJ03;EJ03;EJ03;EJ03;EJ03;EJ03;EB04;EJ03;EB04'),
	(46, 48, 'DayOne', 2, '0|1', 'EA03;EN01;EN01;EN01;EN01;EN01;EN01;EN01;EN01;EN01;EN01;EN01;EN01'),
	(49, 75, 'Mustang', 3, '0|1', '');
/*!40000 ALTER TABLE `maps` ENABLE KEYS */;


-- Dump della struttura di tabella montana.news
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(255) NOT NULL,
  `news` mediumtext NOT NULL,
  `buttontext` mediumtext NOT NULL,
  `buttontype` enum('success','warning','important','info','inverse') NOT NULL DEFAULT 'info',
  `date` char(50) NOT NULL DEFAULT 'info',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.news: 0 rows
DELETE FROM `news`;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;


-- Dump della struttura di tabella montana.notices
CREATE TABLE IF NOT EXISTS `notices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(320) NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.notices: 17 rows
DELETE FROM `notices`;
/*!40000 ALTER TABLE `notices` DISABLE KEYS */;
INSERT INTO `notices` (`id`, `message`, `deleted`) VALUES
	(1, 'WarRock Montana is back!', '0'),
	(2, 'Register on the forum for new events!', '0'),
	(3, 'Invite your friends...More people more fun!', '0'),
	(4, 'Our official website is: WarRockMontana.com', '0'),
	(21, 'You can donate via PayPal/PaySafeCard', '0'),
	(7, 'Donate to help us to keep up the server!', '0'),
	(8, 'Visit our forum @ http://warrockmontana.com/forum', '0'),
	(10, 'Dont do the camper! Play it :D', '0'),
	(11, 'We want to see many videos on YouTube :P!', '0'),
	(12, 'You have found a bug? Report it in to the forum', '0'),
	(13, 'You want to know how much kill you did for the kill event? Write in lobby /myinfo', '0'),
	(14, 'OverClock - 1st Time Ban Perm / 2nd Time HWID Mac Ban', '0'),
	(17, 'Collect points for the hot time clanwar of the month! Get free prizes for all Members in Clan!', '0'),
	(18, 'Do not ask for Premium/Weapons/Coin/Cash', '0'),
	(19, 'Retails & Special weapons on the webshop!', '0'),
	(20, 'You can donate via PayPal/PaySafeCard', '0'),
	(22, 'Did you know that we have an own TS3 Server? ts.warrockmontana.com', '0');
/*!40000 ALTER TABLE `notices` ENABLE KEYS */;


-- Dump della struttura di tabella montana.outbox
CREATE TABLE IF NOT EXISTS `outbox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ownerid` int(11) NOT NULL,
  `itemcode` char(50) NOT NULL,
  `days` char(50) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '1',
  `timestamp` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.outbox: 22 rows
DELETE FROM `outbox`;

-- Dump della struttura di tabella montana_db.players_chart
CREATE TABLE IF NOT EXISTS `players_chart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `count` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dump della struttura di tabella montana.promocodes
CREATE TABLE IF NOT EXISTS `promocodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) DEFAULT NULL,
  `itemcode` char(4) NOT NULL DEFAULT '0',
  `promocode` longtext NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `days` varchar(50) NOT NULL DEFAULT '0',
  `used` varchar(50) DEFAULT NULL,
  `bindedid` bigint(20) NOT NULL DEFAULT '-1',
  `fromid` bigint(20) NOT NULL DEFAULT '-1',
  `daily` enum('N','Y') NOT NULL DEFAULT 'N',
  `timestamp` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.promocodes: 0 rows
DELETE FROM `promocodes`;
/*!40000 ALTER TABLE `promocodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `promocodes` ENABLE KEYS */;


-- Dump della struttura di tabella montana.reset_keys
CREATE TABLE IF NOT EXISTS `reset_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `reset_key` char(50) NOT NULL DEFAULT '0',
  `used` enum('0','1') NOT NULL DEFAULT '0',
  `timestamp` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.reset_keys: 0 rows
DELETE FROM `reset_keys`;
/*!40000 ALTER TABLE `reset_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `reset_keys` ENABLE KEYS */;


-- Dump della struttura di tabella montana.servers
CREATE TABLE IF NOT EXISTS `servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serverid` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `ip` char(50) NOT NULL,
  `slot` int(5) NOT NULL DEFAULT '10',
  `clanwar` enum('0','1') NOT NULL DEFAULT '0',
  `flag` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `minrank` enum('1','2','3','4','5','6') NOT NULL,
  `visible` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.servers: 4 rows
DELETE FROM `servers`;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
INSERT INTO `servers` (`id`, `serverid`, `name`, `ip`, `slot`, `flag`, `minrank`, `visible`) VALUES
	(1, 1, 'Montana', '127.0.0.1', 0, '1', '1', '0'),
	(2, 2, 'Dev', '127.0.0.1', 20, '5', '3', '1'),
	(3, 3, 'Montana', '127.0.0.1', 250, '1', '1', '1'),
	(4, -1, 'WebServer', '178.32.43.84', 0, '0', '1', '0');
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;



-- Dump della struttura di tabella montana.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` varchar(24) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `email` varchar(520) NOT NULL,
  `rank` enum('0','1','2','3','4','5','6') NOT NULL DEFAULT '1',
  `exp` int(20) NOT NULL,
  `dinar` BIGINT(20) NOT NULL,
  `cash` BIGINT(20) NOT NULL,
  `coin` int(11) NOT NULL DEFAULT '0',
  `kills` int(11) NOT NULL DEFAULT '0',
  `deaths` int(11) NOT NULL DEFAULT '0',
  `wonMatchs` int(11) NOT NULL DEFAULT '0',
  `lostMatchs` int(11) NOT NULL DEFAULT '0',
  `headshots` int(11) NOT NULL DEFAULT '0',
  `ticketid` int(11) NOT NULL DEFAULT '0',
  `killcount` int(11) NOT NULL DEFAULT '0',
  `serverid` int(11) NOT NULL DEFAULT '-1',
  `loginEventToday` enum('0','1') NOT NULL DEFAULT '0',
  `loginEventProgress` enum('0', '1', '2', '3', '4', '5', '6', '7') NOT NULL DEFAULT '0',
  `premium` enum('0','1','2','3','4') NOT NULL DEFAULT '0',
  `online` enum('0','1') NOT NULL DEFAULT '0',
  `banned` enum('0','1') NOT NULL DEFAULT '0',
  `eventcount` int(11) NOT NULL DEFAULT '0',
  `donationexpire` int(20) NOT NULL DEFAULT '-1',
  `active` enum('0','1') NOT NULL DEFAULT '0',
  `premiumExpire` varchar(20) NOT NULL DEFAULT '-1',
  `muted` enum('0','1') NOT NULL DEFAULT '0',
  `mutedExpire` varchar(20) NOT NULL DEFAULT '-1',
  `chat_color` varchar(20) NOT NULL DEFAULT '',
  `coupons` int(11) NOT NULL DEFAULT '0',
  `todaycoupon` int(11) NOT NULL DEFAULT '0',
  `coupontime` int(11) NOT NULL DEFAULT '0',
  `randombox` enum('0','1') NOT NULL DEFAULT '0',
  `lastmac` char(50) NOT NULL,
  `retailcode` char(4) NOT NULL DEFAULT 'NULL',
  `retailclass` enum('0','1','2','3','4') NOT NULL DEFAULT '0',
  `lasthwid` char(50) NOT NULL,
  `clanid` int(11) NOT NULL DEFAULT '-1',
  `clanrank` int(11) NOT NULL DEFAULT '0',
  `clanjoindate` char(50) NOT NULL DEFAULT 'Unknown',
  `country` char(50) NOT NULL DEFAULT '',
  `firstlogin` int(10) NOT NULL DEFAULT '0',
  `broadtoday` int(10) NOT NULL DEFAULT '0',
  `broadday` char(50) NOT NULL DEFAULT '0',
  `websession` int(11) NOT NULL DEFAULT '-1',
  `acpsession` int(11) NOT NULL DEFAULT '-1',
  `storageInventory` int(11) NOT NULL DEFAULT '0',
  `promocodes` int(11) NOT NULL DEFAULT '0',
  `promoday` char(50) NOT NULL DEFAULT '0',
  `lastipaddress` char(50) NOT NULL,
  `bantime` int(10) NOT NULL DEFAULT '-1',
  `banreason` char(50) NOT NULL DEFAULT 'Unknown',
  `lastjoin` char(50) NOT NULL DEFAULT 'Never',
  `jointimestamp` bigint(20) NOT NULL,
  `lastdaystats` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.users: 4 rows
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `salt`, `nickname`, `email`, `rank`, `exp`, `dinar`, `cash`, `coin`, `kills`, `deaths`, `headshots`, `ticketid`, `serverid`, `premium`, `online`, `banned`, `eventcount`, `donationexpire`, `active`, `premiumExpire`, `muted`, `mutedExpire`, `coupons`, `todaycoupon`, `lastmac`, `retailcode`, `retailclass`, `lasthwid`, `clanid`, `clanrank`, `clanjoindate`, `country`, `firstlogin`, `broadtoday`, `broadday`, `websession`, `promocodes`, `promoday`, `lastipaddress`, `bantime`, `banreason`, `lastjoin`, `jointimestamp`, `lastdaystats`) VALUES
	(1, 'gigino', 'ec15a88ac46265eb18e54c8d3d8fc516', '7yfxrer4', 'Developer', '', '6', 37782483, 4452214, 120407, 91153, 460, 418, 114, -1, 1, '3', '0', '0', 0, 1402357847, '0', '1402444247', '0', '-1', 322, 0, '005056c00001', 'NULL', '0', '0e9affa5008c0f2f99dc66286c699cbc', -1, 0, '06/03/2014', 'AU', 1, 0, '26.03', 437272, 6, '10.01', 'U mad bro?', 99999999, 'Unknown', '22:01 - 25/05/2014', 0, '24-04-2014'),
	(2, 'eriklb004', '0ce24951f6d0058cce2d5dc6894243fd', 'ppc3hvl0', '', 'cappellang@live.it', '1', 0, 250000, 25000, 0, 0, 0, 0, 0, -1, '2', '0', '0', 0, -1, '0', '1400622168', '0', '-1', 0, 0, '', 'NULL', '0', '', -1, 0, 'Unknown', '', 0, 0, '0', 401520, 0, '0', '', -1, 'Unknown', 'Never', 1400017368, ''),
	(3, 'Band', '404061888178df845fb1de3984056fdc', '9hvhfv5c', '', 'nesim9@web.de', '1', 0, 250000, 25000, 0, 0, 0, 0, 0, -1, '2', '0', '0', 0, -1, '0', '1400700152', '0', '-1', 0, 0, '', 'NULL', '0', '', -1, 0, 'Unknown', '', 0, 0, '0', 437058, 0, '0', '', -1, 'Unknown', 'Never', 1400095352, ''),
	(4, 'janklein', '9d2fa56c2ce7646215450c02da0b6fa7', 'xh7nvzg2', '', 'janklei123@hotmail.de', '1', 0, 250000, 25000, 0, 0, 0, 0, 0, -1, '2', '0', '0', 0, -1, '0', '1400701532', '0', '-1', 0, 0, '', 'NULL', '0', '', -1, 0, 'Unknown', '', 0, 0, '0', 391495, 0, '0', '', -1, 'Unknown', 'Never', 1400096732, '');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- Dump della struttura di tabella montana.users_costumes
CREATE TABLE IF NOT EXISTS `users_costumes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ownerid` int(10) NOT NULL,
  `class_0` char(150) NOT NULL DEFAULT 'BA01,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^',
  `class_1` char(150) NOT NULL DEFAULT 'BA02,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^',
  `class_2` char(150) NOT NULL DEFAULT 'BA03,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^',
  `class_3` char(150) NOT NULL DEFAULT 'BA04,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^',
  `class_4` char(150) NOT NULL DEFAULT 'BA05,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^',
  `inventory` varchar(5000) NOT NULL DEFAULT '^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.users_costumes: 4 rows
DELETE FROM `users_costumes`;
/*!40000 ALTER TABLE `users_costumes` DISABLE KEYS */;
INSERT INTO `users_costumes` (`id`, `ownerid`, `class_0`, `class_1`, `class_2`, `class_3`, `class_4`, `inventory`) VALUES
	(1, 1, 'BA01', 'BA10', 'BA03,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^', 'BA1A', 'BA05,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^', '^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^'),
	(2, 2, 'BA01,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^', 'BA02,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^', 'BA03,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^', 'BA04,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^', 'BA05,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^', '^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^'),
	(3, 3, 'BA01,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^', 'BA02,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^', 'BA03,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^', 'BA04,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^', 'BA05,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^', '^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^'),
	(4, 4, 'BA01,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^', 'BA02,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^', 'BA03,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^', 'BA04,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^', 'BA05,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^', '^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^,^');
/*!40000 ALTER TABLE `users_costumes` ENABLE KEYS */;

-- Dumping structure for table nexuswar_db.users_events
CREATE TABLE IF NOT EXISTS `users_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL,
  `eventid` int(11) NOT NULL,
  `timestamp` bigint(20) NOT NULL,
  `permanent` enum('0','1') DEFAULT '0' COMMENT 'Should it be never deleted?',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1533 DEFAULT CHARSET=latin1;

-- Dumping data for table nexuswar_db.users_events: 0 rows
DELETE FROM `users_events`;
/*!40000 ALTER TABLE `users_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_events` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;


-- Dump della struttura di tabella montana.users_retails
CREATE TABLE IF NOT EXISTS `users_retails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `class` enum('0','1','2','3','4') NOT NULL,
  `code` varchar(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.users_retails: 0 rows
DELETE FROM `users_retails`;
/*!40000 ALTER TABLE `users_retails` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_retails` ENABLE KEYS */;


-- Dump della struttura di tabella montana.users_stats
CREATE TABLE IF NOT EXISTS `users_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `nickname` char(50) NOT NULL DEFAULT '0',
  `totalexp` bigint(20) NOT NULL DEFAULT '0',
  `exp` bigint(20) NOT NULL DEFAULT '0',
  `dinar` bigint(20) NOT NULL DEFAULT '0',
  `kills` bigint(20) NOT NULL DEFAULT '0',
  `deaths` bigint(20) NOT NULL DEFAULT '0',
  `headshots` bigint(20) NOT NULL DEFAULT '0',
  `premium` bigint(20) NOT NULL DEFAULT '0',
  `country` char(20) NOT NULL DEFAULT '--',
  `date` char(50) NOT NULL DEFAULT '0',
  `timestamp` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.users_stats: 1 rows
DELETE FROM `users_stats`;
/*!40000 ALTER TABLE `users_stats` DISABLE KEYS */;
INSERT INTO `users_stats` (`id`, `userid`, `nickname`, `totalexp`, `exp`, `dinar`, `kills`, `deaths`, `headshots`, `premium`, `date`, `timestamp`) VALUES
	(1, 1, 'Developer', 37782483, 0, 0, 0, 0, 0, 3, '24-04-2014', 1398373134);
/*!40000 ALTER TABLE `users_stats` ENABLE KEYS */;


-- Dump della struttura di tabella montana.vehicles
CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `maxhealth` int(11) NOT NULL,
  `respawntime` int(11) NOT NULL,
  `seats` char(255) NOT NULL DEFAULT '0:0:NULL',
  `joinable` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.vehicles: 60 rows
DELETE FROM `vehicles`;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` (`id`, `code`, `name`, `maxhealth`, `respawntime`, `seats`, `joinable`) VALUES
	(17, 'ED02', 'CAR_HUMVEE_TOW', 3500, 40, '0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01;16,1:FJ01-0,0:FA01', '1'),
	(16, 'ED01', 'CAR_HUMVEE_CAL50', 2500, 40, '0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01;30000,0:FB01-0,0:FA01', '1'),
	(15, 'EC01', 'MOTORCYCLE_CR125', 2500, 40, '0,0:FA01-0,0:FA01', '1'),
	(14, 'EB04', 'FIXED_SG', 1500, 40, '10,4:FI05-0,0:FA01', '1'),
	(12, 'EA03', 'FIXED_MINIGUN', 10000, 40, '999,0:FB05-0,0:NULL', '1'),
	(13, 'EB01', 'FIXED_OERLIKON', 10000, 40, '30000,0:FD01-0,0:FA01', '1'),
	(11, 'EA02', 'FIXED_TOW', 3000, 40, '999,1:FJ06-0,0:FA01', '1'),
	(10, 'EA01', 'FIXED_CAL50', 3000, 40, '30000,0:FB01-0,0:FA01', '1'),
	(18, 'ED04', 'CAR_HUMVEE_AVENGER', 3500, 40, '0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01;30000,0:FB01-4,5:FI02', '1'),
	(19, 'ED05', 'CAR_LUCHS', 3500, 40, '500,0:FC01-0,0:FA01;2000,0:FB01-0,0:FA01', '1'),
	(20, 'ED06', 'Car_DPV', 3000, 40, '0,0:FA01-0,0:FA01;5,5:FH01-0,0:FA01;999,0:FB01-0,0:FA01', '1'),
	(21, 'ED08', 'CAR_60TRUCK_COVER', 7000, 40, '0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01', '1'),
	(22, 'EE01', 'TANK_M1A1', 15000, 40, '999,1:FF03-30000,0:FC03;30000,0:FB04-0,0:FA01', '1'),
	(23, 'EE02', 'TANK_LEOPARD', 4600, 40, '30,0:FF01-500,0:FE01;30000,0:FB01-0,0:FA01', '1'),
	(24, 'EE03', 'TANK_LECLERC', 4550, 40, '30,0:FF01-500,0:FE01;30000,0:FB01-0,0:FA01;2000,0:FB02-0,0:FA01', '1'),
	(25, 'EE04', 'TANK_K1A1', 4500, 40, '30,0:FF01-500,0:FE01;30000,0:FB01-0,0:FA01;2000,0:FB02-0,0:FA01', '1'),
	(26, 'EE07', 'TANK_JAPAN90', 15000, 40, '999,1:FF04-500,0:FF04', '1'),
	(27, 'EF04', 'TANK_WIESEL_GUN', 3800, 40, '500,0:FC01-0,0:FA01', '1'),
	(28, 'EG02', 'TANK_K200', 5000, 40, '0,0:FA01-0,0:FA01;30000,0:FB01-0,0:FA01;0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01', '1'),
	(29, 'EH01', 'TANK_M109A6', 20000, 40, '999,1:FG01-0,0:FA01;30000,0:FC03-0,0:FA01', '1'),
	(30, 'EI01', 'TANK_GEPARD', 4500, 40, '2000,0:FD01-0,0:FA01', '1'),
	(31, 'EI02', 'TANK_CHUNMA', 4000, 40, '8,2:FI05-0,0:FA01', '1'),
	(32, 'EJ03', 'HEL_APACHE', 3800, 40, '10,1:FI04-8,1:FJ02;999,0:FB02-0,0:FA01', '1'),
	(33, 'EJ04', 'Hel_Hind', 3800, 40, '10,2:FJ03-0,0:FA01;999,0:FB04-2,5:FJ04', '1'),
	(34, 'EJ05', 'HEL_500MD', 2700, 40, '999,0:FB04-10,2:FJ03;0,0:FA01-0,0:FA01', '1'),
	(35, 'EJ06', 'HEL_BLACKHAWK_MINIGUN', 3200, 40, '0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01;999,0:FB03-0,0:FA01;999,0:FB03-0,0:FA01', '1'),
	(36, 'EJ07', 'HEL_BLACKHAWK_MISSILE', 3800, 40, '8,3:FJ02-0,0:FA01;0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01', '1'),
	(37, 'EJ08', 'HEL_CH47_CHINOOK', 15000, 40, '0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01;30000,0:FB01-0,0:FA01;0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01', '1'),
	(38, 'EK01', 'AIRPLANE_A10', 3500, 40, '999,0:FC02-8,2:FL01', '1'),
	(39, 'EK02', 'AIRPLANE_RAFALE', 3600, 40, '999,0:FC03-16,1:FI05', '1'),
	(40, 'EK04', 'AIRPLANE_KF15', 3700, 40, '8,2:FI04-16,1:FL02', '1'),
	(41, 'EL01', 'BOAT_LSSC', 3500, 40, '0,0:FA01-0,0:FA01;2000,0:FB02-0,0:FA01', '1'),
	(42, 'EL03', 'BOAT_HAMINA', 15000, 40, '0,0:FA01-0,0:FA01;50,6:FF02-0,0:FA01;999,4:FI05-0,0:FA01;999,0:FB04-0,0:FA01', '1'),
	(43, 'EM01', 'BOAT_MKV', 4000, 40, '0,0:FA01-0,0:FA01;10,10:FH01-0,0:FA01;30000,0:FB01-0,0:FA01;30000,0:FB01-0,0:FA01', '1'),
	(44, 'EN01', 'FIXED_BRK_Drum', 1500, 180, '0,0:NULL-0,0:NULL', '0'),
	(45, 'EN02', 'FIXED_BRK_DOOR', 300000, -1, '0,0:NULL-0,0:NULL', '0'),
	(46, 'EN05', 'FIXED_BRK_CONTROL_UNIT', 1000000, -1, '0,0:NULL-0,0:NULL', '0'),
	(47, 'EN06', 'FIXED_BRK_INCUBATOR', 100000, -1, '0,0:NULL-0,0:NULL', '0'),
	(48, 'EN07', 'FIXED_BRK_DOOR3', 4000000, -1, '0,0:NULL-0,0:NULL', '0'),
	(49, 'EN08', 'FIXED_BRK_DOOR4', 4000000, -1, '0,0:NULL-0,0:NULL', '0'),
	(50, 'EN10', 'FIXED_BRK_CONTROL_UNIT2', 1500000, -1, '0,0:NULL-0,0:NULL', '0'),
	(51, 'EN11', 'FIXED_BRK_RADAR', 4000000, -1, '0,0:NULL-0,0:NULL', '0'),
	(52, 'EN14', 'FIXED_BRK_DP05_DER', 4000000, -1, '0,0:NULL-0,0:NULL', '0'),
	(53, 'EN03', 'FIXED_BRK_DOOR', 300000, -1, '0,0:NULL-0,0:NULL', '0'),
	(54, 'EN04', 'FIXED_BRK_DOOR', 300000, -1, '0,0:NULL-0,0:NULL', '0'),
	(56, 'EE06', 'TANK_MERKAVA_M4', 6000, 40, '0,0:FA01-0,0:FA01;30,0:FF01-30,0:FI07;999,0:FB01-0,0:FA01;0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01', '1'),
	(57, 'EE05', 'TANK_90II', 4700, 40, '30,0:FF01-500,0:FE01;30000,0:FB01-0,0:FA01', '1'),
	(58, 'EG01', 'TANK_90II', 4000, 40, '500,0:FC01-16,1:FJ01;0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01', '1'),
	(59, 'EE08', 'TANK_M1A2', 4500, 40, '30,0:FF01-800,0:FB01;2000,0:FB02-0,0:FA01', '1'),
	(60, 'ED09', 'CAR_HUMVEE_CUPOLA', 3500, 40, '0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01;30000,0:FB01-0,0:FA01', '1'),
	(61, 'EE14', 'TANK_M551_SHERIDAN_WINTER', 4000, 40, '30,0:FF01-500,0:FE01;999,0:FB01-0,0:FA01', '1'),
	(62, 'EF04', 'TANK_WIESEL_GUN_WINTER', 3800, 40, '500,0:FC01-0,0:FA01', '1'),
	(63, 'EB05', 'FIXED_OERLIKON_WINTER', 10000, 40, '30000,0:FD01-0,0:FA01', '1'),
	(64, 'ED11', 'CAR_60TRUCK_COVER_WINTER', 7000, 40, '0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01', '1'),
	(65, 'EE16', 'TANK_T80U_WINTER', 4500, 40, '30,0:FF05-500,0:FE02;30000,0:FD02-0,0:FA01', '1'),
	(66, 'EJ11', 'HEL_BLACKHAWK_MISSILE_WINTER', 3800, 40, '8,3:FJ02-0,0:FA01;0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01', '1'),
	(67, 'ED12', 'CAR_HUMVEE_CAL50_WINTER', 3500, 40, '0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01;30000,0:FB01-0,0:FA01', '1'),
	(68, 'EJ13', 'HEL_CH47_CHINOOK_WINTER', 15000, 40, '0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01;30000,0:FB01-0,0:FA01;0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01;0,0:FA01-0,0:FA01', '1'),
	(69, 'EC02', 'MOTORCYCLE_CR125_WINTER', 2500, 40, '0,0:FA01-0,0:FA01', '1'),
	(70, 'EI05', 'TANK_CHUNMA_WINTER', 4000, 40, '8,2:FI05-0,0:FA01', '1');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;


-- Dump della struttura di tabella montana.webshop
CREATE TABLE IF NOT EXISTS `webshop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` char(50) NOT NULL,
  `type` enum('0','1','2') NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `itemcode` char(4) NOT NULL,
  `image` mediumtext NOT NULL,
  `active` enum('0','1') NOT NULL DEFAULT '1',
  `days` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.webshop: 4 rows
DELETE FROM `webshop`;
/*!40000 ALTER TABLE `webshop` DISABLE KEYS */;
INSERT INTO `webshop` (`id`, `price`, `type`, `name`, `itemcode`, `image`, `active`, `days`) VALUES
	(1, 250000, '1', 'PREMIUM_GOLD', 'CC41', '../assets/img/items/premiumgold.png', '1', -1),
	(2, 12500, '1', 'PREMIUM_SILVER', 'CC44', '../assets/img/items/premsilver.png', '1', -1),
	(3, 7500, '1', 'PRATICAL_PKG_A', 'CC63', '../assets/img/items/package_a.png', '1', -1),
	(4, 150, '1', 'PRATICAL_PKG_B', 'CC64', '../assets/img/items/package_b.png', '1', -1);
/*!40000 ALTER TABLE `webshop` ENABLE KEYS */;


-- Dumping structure for table nexuswar_db.donatorshop
CREATE TABLE IF NOT EXISTS `donatorshop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` char(50) NOT NULL,
  `type` enum('3') DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `itemcode` char(4) NOT NULL,
  `image` mediumtext NOT NULL,
  `active` enum('0','1') NOT NULL DEFAULT '1',
  `days` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;


-- Dump della struttura di tabella montana.website_settings
CREATE TABLE IF NOT EXISTS `website_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setting` char(50) NOT NULL,
  `name` char(50) NOT NULL,
  `value` char(200) NOT NULL,
  `tip` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Dump dei dati della tabella montana.website_settings: 11 rows
DELETE FROM `website_settings`;
/*!40000 ALTER TABLE `website_settings` DISABLE KEYS */;
INSERT INTO `website_settings` (`id`, `setting`, `name`, `value`, `tip`) VALUES
	(1, 'board_name', 'Website Name', 'Montana', 'Website title (showen also in pages)'),
	(2, 'board_url', 'Website URL', 'warrockmontana.com', 'Website URL (just DNS/IP)'),
	(3, 'board_programmer', 'Website Programmer', 'Montana Team', 'Website Footer'),
	(4, 'board_keywords', 'Website SEO Keywords', 'WarRock, Montana, WarRock Montana, Montana 3.0', 'When someone searchs on Google'),
	(5, 'board_description', 'Website SEO Description', 'The best WarRock Private Server in all the world.', 'When someone searchs on Google'),
	(6, 'board_logo', 'Website Logo URL', 'img/logo.png', 'Website Logo URL'),
	(7, 'teamspeak_ip', 'Team Speak 3 IP', 'ts.warrockmontana.com', 'Team Speak IP (ex. ip:port) - NULL if no server'),
	(8, 'donation_email', 'Donation Email', 'romaniapro@hotmail.com', 'PayPal Email'),
	(9, 'donation_ipn', 'Donation IPN', 'http://warrockmontana.com/donation/received_donation.php', 'PayPal IPN URL'),
	(10, 'pcitem_price', 'PC Item Price', '1500', 'PC Item Price'),
	(11, 'platinum_price', 'Premium Platinum Price', '800', 'Premium Platinum Price'),
	(12, 'registration_key', 'Beta Registration Key', '0', '(0 = False / 1 = True)');
/*!40000 ALTER TABLE `website_settings` ENABLE KEYS */;


-- Dump della struttura di tabella montana.zombies
CREATE TABLE IF NOT EXISTS `zombies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `name` char(50) NOT NULL DEFAULT '0',
  `health` int(11) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL DEFAULT '0',
  `damage` int(11) NOT NULL DEFAULT '0',
  `skillpoint` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella montana.zombies: 10 rows
DELETE FROM `zombies`;
/*!40000 ALTER TABLE `zombies` DISABLE KEYS */;
INSERT INTO `zombies` (`id`, `type`, `name`, `health`, `points`, `damage`, `skillpoint`) VALUES
	(1, 0, 'Madman', 1, 1, 150, '0'),
	(2, 1, 'Maniac', 2, 1, 150, '0'),
	(3, 2, 'Grinder', 100, 2, 200, '0'),
	(4, 3, 'Grounder', 111, 2, 200, '0'),
	(5, 5, 'Heavy', 9000, 10, 450, '0'),
	(6, 4, 'Growler', 125, 2, 250, '0'),
	(7, 6, 'Lover', 150, 3, 900, '0'),
	(8, 7, 'Handgeman', 133, 4, 300, '1'),
	(9, 8, 'Chariot', 20000, 50, 500, '0'),
	(10, 9, 'Crusher', 40000, 100, 650, '0');
/*!40000 ALTER TABLE `zombies` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
