-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2019-02-21 16:24:58
-- 服务器版本： 10.3.12-MariaDB-log
-- PHP 版本： 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `tjupt`
--

--
-- 转存表中的数据 `adminpanel`
--

INSERT INTO `adminpanel` (`id`, `name`, `url`, `info`) VALUES
(1, '添加用户', 'adduser.php', '创建新用户帐户'),
(3, '重置用户密码', 'reset.php', '用户密码丢失'),
(4, '发送消息', 'staffmess.php', '发短消息给所有用户'),
(7, '警告用户', 'warned.php', '跟踪所有被警告的用户'),
(8, '全局促销', 'freeleech.php', '设置全局促销'),
(9, '常见问题管理', 'faqmanage.php', '编辑/添加/删除常见问题'),
(10, '规则管理', 'modrules.php', '编辑/添加/删除规则'),
(11, '分类管理', 'catmanage.php', '管理网站的分类'),
(13, 'IPv4地址封禁', 'banipv4.php', '封禁连续的IPv4地址段'),
(14, 'IPv6地址封禁', 'banipv6.php', '封禁一个或者多个ipv6地址/地址段'),
(17, '历史数据统计', 'statistics.php', '查看历史数据统计图表'),
(18, '改变用户魔力值', 'amountbonus.php', '改变一个人或者所有人的魔力值'),
(19, '批量邀请', 'massinvite.php', '批量发送邀请并且不会使用自己的邀请码');

--
-- 转存表中的数据 `agent_allowed_exception`
--

INSERT INTO `agent_allowed_exception` (`id`, `family_id`, `name`, `peer_id`, `agent`, `comment`) VALUES
(1, 16, 'uTorrent 1.80B (Build 6838)', '-UT180B-', 'uTorrent/180B(6838)', 'buggy build that always seeding bad request'),
(2, 25, 'utorrent 3.10', '-UT3100-', 'uTorrent/3100(26495)', '未知原因');

--
-- 转存表中的数据 `agent_allowed_family`
--

INSERT INTO `agent_allowed_family` (`id`, `family`, `start_name`, `peer_id_pattern`, `peer_id_match_num`, `peer_id_matchtype`, `peer_id_start`, `agent_pattern`, `agent_match_num`, `agent_matchtype`, `agent_start`, `exception`, `allowhttps`, `comment`, `hits`) VALUES
(1, 'Azureus 2.5.0.4', 'Azureus 2.5.0.4', '/^-AZ2504-/', 0, 'dec', '-AZ2504-', '/^Azureus 2.5.0.4/', 0, 'dec', 'Azureus 2.5.0.4', 'no', 'yes', '', 0),
(2, 'uTorrent 1.6.1', 'uTorrent 1.6.1', '/^-UT1610-/', 0, 'dec', '-UT1610-', '/^uTorrent\\/1610/', 0, 'dec', 'uTorrent/1610', 'no', 'no', '', 0),
(3, 'Bittorrent 6.x', 'Bittorrent 6.0.1', '/^M6-([0-9])-([0-9])--/', 2, 'dec', 'M6-0-1--', '/^BitTorrent\\/6([0-9])([0-9])([0-9])/', 3, 'dec', 'BitTorrent/6010', 'no', 'yes', '', 0),
(4, 'Deluge 0.x', 'Deluge 0.5.8.9', '/^-DE0([0-9])([0-9])([0-9])-/', 3, 'dec', '-DE0589-', '/^Deluge 0\\.([0-9])\\.([0-9])\\.([0-9])/', 3, 'dec', 'Deluge 0.5.8.9', 'no', 'yes', '', 0),
(5, 'Transmission1.x', 'Transmission 1.06 (build 5136)', '/^-TR1([0-9])([0-9])([0-9])-/', 3, 'dec', '-TR1060-', '/^Transmission\\/1\\.([0-9])([0-9])/', 3, 'dec', 'Transmission/1.06', 'no', 'yes', '', 0),
(6, 'RTorrent 0.x(with libtorrent 0.x)', 'rTorrent 0.8.0 (with libtorrent 0.12.0)', '/^-lt([0-9A-E])([0-9A-E])([0-9A-E])([0-9A-E])-/', 4, 'hex', '-lt0C00-', '/^rtorrent\\/0\\.([0-9])\\.([0-9])\\/0\\.([1-9][0-9]*)\\.(0|[1-9][0-9]*)/', 4, 'dec', 'rtorrent/0.8.0/0.12.0', 'no', 'no', '', 0),
(7, 'Rufus 0.x', 'Rufus 0.6.9', '', 0, 'dec', '', '/^Rufus\\/0\\.([0-9])\\.([0-9])/', 2, 'dec', 'Rufus/0.6.9', 'no', 'no', '', 0),
(8, 'Azureus 3.x', 'Azureus 3.0.5.0', '/^-AZ3([0-9])([0-9])([0-9])-/', 3, 'dec', '-AZ3050-', '/^Azureus 3\\.([0-9])\\.([0-9])\\.([0-9])/', 3, 'dec', 'Azureus 3.0.5.0', 'no', 'yes', '', 0),
(9, 'uTorrent 1.7.x', 'uTorrent 1.7.5', '/^-UT17([0-9])([0-9])-/', 2, 'dec', '-UT1750-', '/^uTorrent\\/17([0-9])([0-9])/', 2, 'dec', 'uTorrent/1750', 'no', 'yes', '', 0),
(10, 'BitRocket 0.x', 'BitRocket 0.3.3(32)', '/^-BR0([0-9])([1-9][0-9]*)-/', 2, 'dec', '-BR0332-', '/^BitRocket\\/0\\.([0-9])\\.([0-9])\\(([1-9][0-9]*)\\) libtorrent\\/0\\.([1-9][0-9]*)\\.(0|[1-9][0-9]*)\\.(0|[1-9][0-9]*)/', 6, 'dec', 'BitRocket/0.3.3(32) libtorrent/0.13.0.0', 'no', 'yes', '', 0),
(11, 'MLDonkey 2.9.x', 'MLDonkey 2.9.2', '/^-ML2\\.9\\.([0-9])-/', 1, 'dec', '-ML2.9.2-', '/^MLDonkey\\/2\\.9\\.([0-9])/', 1, 'dec', 'MLDonkey/2.9.2', 'no', 'yes', '', 0),
(12, 'uTorrent 1.8.x', 'uTorrent 1.8.0', '/^-UT18([0-9])([0-9])-/', 2, 'dec', '-UT1800-', '/^uTorrent\\/18([0-9])([0-9])/', 2, 'dec', 'uTorrent/1800', 'no', 'yes', '', 0),
(13, 'Azureus 4.x', 'Vuze 4.0.0.2', '/^-AZ4([0-9])([0-9])([0-9])-/', 3, 'dec', '-AZ4002-', '/^Azureus 4\\.([0-9])\\.([0-9])\\.([0-9])/', 3, 'dec', 'Azureus 4.0.0.2', 'no', 'yes', '', 0),
(14, 'SymTorrent', '', '', 0, 'dec', '', '/^SymTorrent/', 0, 'dec', 'SymTorrent', 'no', 'no', '', 0),
(15, 'Deluge 1.x', 'Deluge 1.1.6', '/^-DE1([0-9])([0-9])([0-9])-/', 3, 'dec', '-DE1160-', '/^Deluge 1\\.([0-9])\\.([0-9])/', 2, 'dec', 'Deluge 1.1.6', 'no', 'yes', '', 0),
(16, 'uTorrent 1.8xB', 'uTorrent 1.80 Beta (build 9137)', '/^-UT18([0-9])B-/', 1, 'dec', '-UT180B-', '/^uTorrent\\/18([0-9])B\\(([1-9][0-9]*)\\)/', 2, 'dec', 'uTorrent/180B(9137)', 'yes', 'yes', '', 0),
(17, 'uTorrent 2.x.x', 'uTorrent 2.0(build 17624)', '/^-UT2([0-9])([0-9])([0-9])-/', 3, 'dec', '-UT2000-', '/^uTorrent\\/2([0-9])([0-9])([0-9])/', 3, 'dec', 'uTorrent/2000', 'no', 'yes', '', 0),
(18, 'uTorrent Mac 0.x.xx&1.x.xx', 'uTorrent for Mac', '/^-UM([0-1])([0-9])([0-9])([0-9])([0-9B])/', 5, 'dec', '-UM09001', '/^uTorrentMac\\/([0-1])([0-9])([0-9])([0-9])([0-9B])/', 5, 'dec', 'uTorrentMac/09001', 'no', 'yes', '', 0),
(19, 'Transmission2.x', 'Transmission 2.00 (build 5136)', '/^-TR2([0-9])([0-9])([0-9])-/', 3, 'dec', '-TR2000-', '/^Transmission\\/2\\.([0-9])([0-9])/', 3, 'dec', 'Transmission/2.00', 'no', 'yes', '', 0),
(25, 'uTorrent 3.x.x.x', 'uTorrent 3.0(build 25406)', '/^-UT3([0-9])([0-9])([0-9])-/', 3, 'dec', '-UT3000-', '/^uTorrent\\/3([0-9])([0-9])([0-9])/', 3, 'dec', 'uTorrent/3000', 'yes', 'yes', '', 0),
(26, 'uTorrent Mac 0.x.x&1.x.x', 'uTorrent for Mac 0.90B', '/^-UM([0-1])([0-9])([0-9])([0-9B])-/', 4, 'dec', '-UM090B-', '/^uTorrentMac\\/([0-1])([0-9])([0-9])([0-9B])/', 4, 'dec', 'uTorrentMac/090B', 'no', 'yes', '', 0),
(29, 'libtorrent for Android', 'libtorrent 0.15.10.0', '/^-LT([0-9A-E])([0-9A-F])([0-9A-E])([0-9A-E])-/', 4, 'dec', '-LT0F00-', '/^libtorrent\\/0\\.([0-9]*)\\.(0|[1-9][0-9]*)\\.(0|[1-9][0-9]*)/', 4, 'dec', 'libtorrent/0.15.10.0', 'no', 'yes', '', 0),
(30, 'tTorrent', ' libtorrent 0.16.12.0', '/^-tT([0-9A-E])([0-9A-F])([0-9A-E])([0-9A-E])-/', 4, 'dec', '-tT1230-', '/^libtorrent\\/0\\.([0-9]*)\\.(0|[1-9][0-9]*)\\.(0|[1-9][0-9]*)/', 4, 'dec', 'libtorrent/0.16.12.0', 'no', 'no', '', 0),
(37, 'qBittorrent 3.*.*', 'qBittorrent 3.0.0', '/^-qB3([0-3])([0-9A-G])0-/', 2, 'hex', '-qB30A0-', '/^qBittorrent(\\/| v)3\\.([0-3])\\.([0-9]|[1-2][0-9])/', 3, 'dec', 'qBittorrent/3.0.0', 'no', 'yes', '', 0),
(72, 'qBittorrent 4.1.9.1', 'qBittorrent 4.1.9.1', '/^-qB4191-/', 0, 'dec', '-qB4191-', '/^qBittorrent(\\/| v)4\\.1\\.9\\.1/', 0, 'dec', 'qBittorrent/4.1.9.1', 'no', 'yes', '', 0);

--
-- 转存表中的数据 `audiocodecs`
--

INSERT INTO `audiocodecs` (`id`, `name`, `image`, `sort_index`) VALUES
(1, 'FLAC', '', 0),
(2, 'APE', '', 0),
(3, 'DTS', '', 0),
(4, 'MP3', '', 0),
(5, 'OGG', '', 0),
(6, 'AAC', '', 0),
(7, 'Other', '', 0);

--
-- 转存表中的数据 `avps`
--

INSERT INTO `avps` (`arg`, `value_s`, `value_i`, `value_u`) VALUES
('lastcleantime', '', 0, 0),
('lastcleantime2', '', 0, 0),
('lastcleantime3', '', 0, 0),
('lastcleantime4', '', 0, 0),
('lastcleantime5', '', 0, 0);

--
-- 转存表中的数据 `bannedkeywords`
--

INSERT INTO `bannedkeywords` (`id`, `keywords`) VALUES
(1, '性爱指南'),
(2, '肉蒲'),
(3, '蒲团'),
(4, '玉蒲'),
(5, 'sex and'),
(6, 'and zen'),
(7, '蜜桃成熟时'),
(9, '萝拉'),
(8, '泷泽');

--
-- 转存表中的数据 `bannedtitle`
--

INSERT INTO `bannedtitle` (`id`, `keywords`, `catid`, `added`, `until`, `comment`, `addedby`) VALUES
(30, '720p.x264.AC3-CMCT', 401, '2012-09-06 19:21:27', '0000-00-00 00:00:00', '', '24314'),
(25, 'ZJM', 401, '2012-09-05 22:50:31', '0000-00-00 00:00:00', '', '24314'),
(24, 'VeryPSP', 412, '2012-09-05 22:50:01', '0000-00-00 00:00:00', '', '24314'),
(79, 'death note', 405, '2013-05-10 16:25:08', '0000-00-00 00:00:00', '', '243'),
(23, 'CkreleaSe', 401, '2012-09-05 22:49:29', '0000-00-00 00:00:00', '', '24314'),
(31, '720p.x264.AC3-CnSCG', 401, '2012-09-06 19:22:08', '0000-00-00 00:00:00', '', '24314'),
(28, 'WOFEI', 401, '2012-09-05 22:54:12', '0000-00-00 00:00:00', '', '24314'),
(74, 'SmY', 401, '2013-03-31 22:19:57', '0000-00-00 00:00:00', '', '12486'),
(57, '3eMKV', 411, '2012-12-12 23:49:45', '0000-00-00 00:00:00', '', '29021'),
(87, '魔具少女', 405, '2014-01-16 20:46:01', '0000-00-00 00:00:00', '', '30944'),
(37, 'SDHF-NORMTEAM', 401, '2012-09-15 09:10:33', '0000-00-00 00:00:00', '', '4436'),
(38, '死亡笔记', 401, '2012-09-15 10:48:42', '0000-00-00 00:00:00', '', '4436'),
(55, '低俗喜剧', 401, '2012-12-10 22:13:03', '0000-00-00 00:00:00', 'HongKong III', '29021'),
(44, 'HR-HDTV', 401, '2012-11-10 20:36:21', '0000-00-00 00:00:00', '', '4436'),
(45, 'MiniSD', 401, '2012-11-10 20:37:19', '0000-00-00 00:00:00', '', '4436'),
(46, 'MNHD', 401, '2012-11-10 20:37:39', '0000-00-00 00:00:00', '', '4436'),
(47, 'VeryPSP', 401, '2012-11-10 20:37:52', '0000-00-00 00:00:00', '', '4436'),
(56, '3eMKV', 401, '2012-12-12 23:43:10', '0000-00-00 00:00:00', '', '29021'),
(49, 'FULLCD', 401, '2012-11-10 20:40:14', '0000-00-00 00:00:00', '', '4436'),
(50, 'HalfCD', 401, '2012-11-10 20:40:24', '0000-00-00 00:00:00', '', '4436'),
(86, 'CNXP', 401, '2013-12-12 22:44:32', '0000-00-00 00:00:00', '', '12486'),
(64, '一路向西', 401, '2012-12-25 23:20:10', '0000-00-00 00:00:00', '！@#￥%……&*', '24314'),
(78, '死亡笔记', 405, '2013-05-10 16:24:31', '0000-00-00 00:00:00', '', '243'),
(84, '飞虎出征', 401, '2013-12-08 21:15:27', '0000-00-00 00:00:00', 'HongKong III', '24314'),
(70, 'DVDSCR', 401, '2013-01-16 19:01:55', '0000-00-00 00:00:00', '', '4436'),
(85, '飞虎出征', 412, '2013-12-08 21:16:07', '0000-00-00 00:00:00', 'HongKong III', '24314'),
(88, '魔剑姬', 405, '2014-01-16 20:46:12', '0000-00-00 00:00:00', '', '30944'),
(89, '健全', 405, '2014-04-13 12:37:14', '0000-00-00 00:00:00', '', '30944'),
(90, '卜卜酱', 405, '2014-05-03 23:19:30', '0000-00-00 00:00:00', '', '30944'),
(91, 'mFANs', 401, '2014-06-29 19:52:57', '0000-00-00 00:00:00', '', '12486'),
(128, 'WEBRip', 401, '2017-02-27 12:10:49', '0000-00-00 00:00:00', '', '42496'),
(99, 'Mp4Ba', 401, '2015-01-27 14:58:32', '0000-00-00 00:00:00', '', '12486'),
(100, 'SeeHD', 401, '2015-03-09 14:53:00', '0000-00-00 00:00:00', '', '12486'),
(101, '新妹魔王', 405, '2015-04-06 22:33:15', '0000-00-00 00:00:00', '', '30944'),
(103, 'Mp4Ba', 412, '2015-10-12 12:44:12', '0000-00-00 00:00:00', '', '42496'),
(104, 'TC720P', 401, '2015-10-16 10:34:11', '0000-00-00 00:00:00', '', '42496'),
(105, 'TC720P', 412, '2015-10-16 10:34:21', '0000-00-00 00:00:00', '', '42496'),
(106, 'HDrip', 401, '2015-11-16 00:47:19', '0000-00-00 00:00:00', '', '42496'),
(116, 'Handmaiden', 401, '2016-10-28 12:53:01', '0000-00-00 00:00:00', '韩国18禁', '48251'),
(115, '惊天大逆转', 401, '2016-09-26 20:35:57', '0000-00-00 00:00:00', '', '42496'),
(118, 'BluRay.1080p.x264.DTS-NoVA', 401, '2016-11-03 22:14:59', '0000-00-00 00:00:00', 'NoVA的1080p', '42496'),
(119, 'PureTV', 401, '2016-12-04 23:35:27', '0000-00-00 00:00:00', 'PureTV全面禁转', '42496'),
(120, 'PureTV', 402, '2016-12-04 23:35:34', '0000-00-00 00:00:00', 'PureTV全面禁转', '42496'),
(127, '驴得水', 401, '2016-12-16 15:52:37', '0000-00-00 00:00:00', '', '51616'),
(125, 'PureTV', 403, '2016-12-08 21:56:00', '0000-00-00 00:00:00', 'PureTV全面禁转', '42496'),
(132, '-STUTTERSHIT', 401, '2017-05-14 08:48:30', '0000-00-00 00:00:00', '韩版硬字', '57200'),
(136, 'MTTV', 401, '2018-03-01 18:43:20', '0000-00-00 00:00:00', 'MTTV全面禁转', '50024'),
(137, 'MTTV', 402, '2018-03-01 18:43:41', '0000-00-00 00:00:00', 'MTTV全面禁转', '50024'),
(138, 'MTTV', 405, '2018-03-01 18:45:30', '0000-00-00 00:00:00', 'MTTV全面禁转', '50024'),
(139, 'MTTV', 411, '2018-03-01 18:45:49', '0000-00-00 00:00:00', 'MTTV全面禁转', '50024'),
(140, 'MTTV', 403, '2018-03-01 18:47:44', '0000-00-00 00:00:00', 'MTTV全面禁转', '50024'),
(141, 'HQC', 402, '2018-05-17 15:54:55', '0000-00-00 00:00:00', '为避免百度网盘屏蔽，该公网BT的剧集资源文件名仅有集数信息，命名极不规范，极易篡改0day信息', '50024');

--
-- 转存表中的数据 `banned_file_type`
--

INSERT INTO `banned_file_type` (`id`, `catid`, `type`, `class`) VALUES
(15, 401, 'rmvb', 'banned'),
(17, 406, 'zip', 'banned'),
(18, 406, 'rar', 'banned'),
(19, 401, 'rm', 'banned'),
(20, 401, 'flv', 'banned'),
(21, 401, '3gp', 'banned'),
(22, 401, 'asf', 'banned'),
(23, 401, 'tc', 'banned'),
(102, 412, 'flv', 'banned'),
(57, 406, '7z', 'banned'),
(28, 403, '3gp', 'banned'),
(29, 405, 'torrent', 'banned'),
(117, 403, 'flv', 'banned'),
(34, 408, 'sisx', 'banned'),
(35, 408, 'apk', 'banned'),
(36, 408, 'sis', 'banned'),
(37, 408, 'cod', 'banned'),
(38, 409, 'url', 'notallowed'),
(100, 412, 'rmvb', 'banned'),
(45, 408, 'torrent', 'banned'),
(118, 402, 'txt', 'notallowed'),
(53, 402, 'flv', 'banned'),
(80, 402, 'torrent', 'notallowed'),
(59, 402, '3gp', 'banned'),
(60, 402, 'asf', 'banned'),
(79, 401, 'torrent', 'notallowed'),
(103, 412, 'rm', 'banned'),
(101, 412, 'tc', 'banned'),
(119, 402, 'rar', 'notallowed'),
(77, 401, 'srt', 'notallowed'),
(81, 403, 'torrent', 'notallowed'),
(95, 402, 'ass', 'notallowed'),
(94, 401, 'ass', 'notallowed'),
(78, 402, 'srt', 'notallowed'),
(82, 404, 'torrent', 'notallowed'),
(91, 401, 'rar', 'notallowed'),
(84, 406, 'torrent', 'notallowed'),
(85, 407, 'torrent', 'notallowed'),
(86, 408, 'torrent', 'notallowed'),
(87, 409, 'torrent', 'notallowed'),
(88, 411, 'torrent', 'notallowed'),
(89, 412, 'torrent', 'notallowed'),
(90, 410, 'torrent', 'notallowed'),
(93, 412, 'rar', 'notallowed'),
(96, 401, 'zip', 'notallowed'),
(97, 402, 'zip', 'notallowed'),
(98, 412, 'zip', 'notallowed'),
(104, 401, 'avi', 'banned'),
(116, 402, 'xv', 'banned'),
(122, 403, 'f4v', 'banned');

--
-- 转存表中的数据 `cards`
--

INSERT INTO `cards` (`id`, `points`, `pic`) VALUES
(1, 2, '2p.bmp'),
(2, 3, '3p.bmp'),
(3, 4, '4p.bmp'),
(4, 5, '5p.bmp'),
(5, 6, '6p.bmp'),
(6, 7, '7p.bmp'),
(7, 8, '8p.bmp'),
(8, 9, '9p.bmp'),
(9, 10, '10p.bmp'),
(10, 10, 'vp.bmp'),
(11, 10, 'dp.bmp'),
(12, 10, 'kp.bmp'),
(13, 1, 'tp.bmp'),
(14, 2, '2b.bmp'),
(15, 3, '3b.bmp'),
(16, 4, '4b.bmp'),
(17, 5, '5b.bmp'),
(18, 6, '6b.bmp'),
(19, 7, '7b.bmp'),
(20, 8, '8b.bmp'),
(21, 9, '9b.bmp'),
(22, 10, '10b.bmp'),
(23, 10, 'vb.bmp'),
(24, 10, 'db.bmp'),
(25, 10, 'kb.bmp'),
(26, 1, 'tb.bmp'),
(27, 2, '2k.bmp'),
(28, 3, '3k.bmp'),
(29, 4, '4k.bmp'),
(30, 5, '5k.bmp'),
(31, 6, '6k.bmp'),
(32, 7, '7k.bmp'),
(33, 8, '8k.bmp'),
(34, 9, '9k.bmp'),
(35, 10, '10k.bmp'),
(36, 10, 'vk.bmp'),
(37, 10, 'dk.bmp'),
(38, 10, 'kk.bmp'),
(39, 1, 'tk.bmp'),
(40, 2, '2c.bmp'),
(41, 3, '3c.bmp'),
(42, 4, '4c.bmp'),
(43, 5, '5c.bmp'),
(44, 6, '6c.bmp'),
(45, 7, '7c.bmp'),
(46, 8, '8c.bmp'),
(47, 9, '9c.bmp'),
(48, 10, '10c.bmp'),
(49, 10, 'vc.bmp'),
(50, 10, 'dc.bmp'),
(51, 10, 'kc.bmp'),
(52, 1, 'tc.bmp');

--
-- 转存表中的数据 `carsi_schools`
--

INSERT INTO `carsi_schools` (`id`, `school`, `idp`, `allow_reg`) VALUES
(1, '北京大学', 'pku_v6', 'yes'),
(2, '北京大学（测试）', 'pku_v4', 'yes'),
(3, '华南理工大学', 'scut', 'yes'),
(4, '清华大学', 'tsinghua', 'yes'),
(5, '北京邮电大学', 'bupt', 'yes'),
(6, '上海交通大学', 'sjtu', 'yes'),
(7, '电子科技大学', 'usetc', 'yes'),
(8, '东北大学', 'neu', 'yes'),
(9, '西安科技大学', 'xjtu', 'yes'),
(10, '华中科技大学', 'hust', 'yes'),
(11, '复旦大学', 'fudan', 'yes'),
(12, '中国海洋大学', 'ouc', 'no'),
(13, '北京航空航天大学', 'buaa', 'yes'),
(14, '天津大学', 'tju', 'yes'),
(15, '中国科技大学', 'ustc', 'yes'),
(16, '厦门大学', 'xmu', 'yes'),
(17, '哈尔滨工业大学', 'hit', 'yes'),
(18, '大连理工大学', 'dlut', 'no'),
(19, '山东大学', 'sdu', 'yes'),
(20, '中南大学', 'csu', 'yes'),
(21, '郑州大学', 'zzu', 'yes'),
(22, '同济大学', 'tongji', 'yes'),
(23, '重庆大学', 'cqu', 'yes'),
(24, '兰州大学', 'lzu', 'yes'),
(25, '浙江大学', 'zju', 'yes'),
(26, '吉林大学', 'jlu', 'yes'),
(27, '对外经济贸易大学', 'uibe', 'yes'),
(28, '辽宁大学', 'lnu', 'yes'),
(29, '河北师范大学', 'hebtu', 'yes'),
(30, 'OpenIDP开放注册', 'openidp', 'no'),
(31, 'CALIS组织', 'calis', 'no'),
(32, '深圳大学', 'szu', 'yes'),
(33, '北京科技大学', 'ustb', 'yes');

--
-- 转存表中的数据 `catanime`
--

INSERT INTO `catanime` (`id`, `name`, `sort_index`) VALUES
(1, '连载', 0),
(2, 'TV', 0),
(3, '剧场', 0),
(4, 'OVA', 0),
(5, 'OAD', 0),
(6, '漫画', 0),
(7, '周边', 0),
(8, '音乐', 0);

--
-- 转存表中的数据 `catdocum`
--

INSERT INTO `catdocum` (`id`, `name`, `sort_index`) VALUES
(1, '考试相关', 0),
(2, '信息技术', 0),
(3, '外语学习', 0),
(4, '历史哲学', 0),
(5, '文学艺术', 0),
(6, '经济管理', 0),
(7, '体育教学', 0),
(8, '消遣娱乐', 0),
(9, '科学技术', 0),
(10, '健康养生', 0),
(11, '教学课件', 0),
(12, '精彩图集', 0),
(13, '论文期刊', 0);

--
-- 转存表中的数据 `categories`
--

INSERT INTO `categories` (`id`, `mode`, `class_name`, `name`, `image`, `sort_index`) VALUES
(401, 4, 'c_movies', '电影', 'catsprites.png', 0),
(402, 4, 'c_tvseries', '剧集', 'catsprites.png', 1),
(403, 4, 'c_tvshows', '综艺', 'catsprites.png', 2),
(404, 4, 'c_doc', '资料', 'catsprites.png', 3),
(405, 4, 'c_anime', '动漫', 'catsprites.png', 4),
(407, 4, 'c_sports', '体育', 'catsprites.png', 6),
(410, 4, 'c_misc', '其他', 'catsprites.png', 11),
(408, 4, 'c_software', '软件', 'catsprites.png', 7),
(409, 4, 'c_game', '游戏', 'catsprites.png', 8),
(412, 4, 'c_mobile', '移动视频', 'catsprites.png', 10),
(411, 4, 'c_newsreel', '纪录片', 'catsprites.png', 9),
(406, 4, 'c_mv', '音乐', 'catsprites.png', 5);

--
-- 转存表中的数据 `catgame`
--

INSERT INTO `catgame` (`id`, `name`, `sort_index`) VALUES
(1, 'ACT', 2),
(2, 'AVG', 3),
(3, 'FPS', 4),
(4, 'FTG', 5),
(5, 'MUG', 6),
(6, 'PUZ', 7),
(7, 'TCG', 8),
(8, 'SIM', 9),
(9, 'TAB', 10),
(10, 'SPG', 11),
(11, 'RAC', 12),
(12, 'STG', 13),
(13, 'SLG', 14),
(14, 'RTS', 15),
(15, 'RPG', 16),
(16, 'SRPG', 17),
(17, 'ARPG', 18),
(18, 'ETC', 19),
(19, '<linebreak>', 100),
(20, 'DotA', 102),
(22, 'WoW', 104),
(23, '宣传试玩', 105),
(24, '剧情动画', 106),
(25, '<text>视频类型', 101),
(26, '<text>游戏类型', 1),
(21, 'DotA2', 103);

--
-- 转存表中的数据 `cathq`
--

INSERT INTO `cathq` (`id`, `name`, `sort_index`) VALUES
(1, '华语', 0),
(2, '欧美', 0),
(3, '日韩', 0),
(4, 'MV', 0),
(5, '演唱会', 0),
(6, '原声', 0),
(7, '古典', 0),
(8, '新世纪', 0),
(9, '其他', 0);

--
-- 转存表中的数据 `caticons`
--

INSERT INTO `caticons` (`id`, `name`, `folder`, `cssfile`, `multilang`, `secondicon`, `designer`, `comment`) VALUES
(1, 'SceneTorrents mod', 'scenetorrents/', 'pic/category/chd/scenetorrents/catsprites.css', 'yes', 'no', 'NexusPHP', 'Modified from SceneTorrents'),
(2, 'tjuaggie', 'tjuaggie/', 'pic/category/chd/tjuaggie/catsprites.css', 'yes', 'no', 'Aggie0618', ''),
(6, 'fujie', 'dongyue/', 'pic/category/chd/dongyue/catsprites.css', 'yes', 'no', 'dongyue', ''),
(7, 'qiuxuenan', 'qiuxuenan/', 'pic/category/chd/qiuxuenan/catsprites.css', 'yes', 'no', 'qiuxuenan', ''),
(8, '清新', 'hdlxhh/', 'pic/category/chd/hdlxhh/catsprites.css', 'yes', 'no', '花堤路小坏坏', '');

--
-- 转存表中的数据 `catmovie`
--

INSERT INTO `catmovie` (`id`, `name`, `sort_index`) VALUES
(1, '喜剧', 0),
(2, '动作', 0),
(3, '爱情', 0),
(4, '文艺', 0),
(5, '剧情', 0),
(6, '科幻', 0),
(7, '魔幻', 0),
(8, '悬疑', 0),
(9, '惊悚', 0),
(10, '恐怖', 0),
(11, '罪案', 0),
(12, '战争', 0),
(13, '记录', 0),
(14, '动画', 0),
(15, '音乐', 0),
(16, '歌舞', 0),
(17, '冒险', 0),
(18, '历史', 0);

--
-- 转存表中的数据 `catnewsreel`
--

INSERT INTO `catnewsreel` (`id`, `name`, `sort_index`) VALUES
(1, '国家地理', 0),
(2, '探索频道', 0),
(3, '历史频道', 0),
(4, 'IMAX', 0),
(5, 'CCTV', 0),
(6, 'PBS', 0),
(7, 'BBC', 0),
(8, 'NHK', 0),
(9, '其他', 0);

--
-- 转存表中的数据 `catothers`
--

INSERT INTO `catothers` (`id`, `name`, `sort_index`) VALUES
(1, '天津大学', 1),
(2, '视频集锦', 2),
(3, '图片收藏', 3),
(4, '有声读物', 4),
(5, '广播节目', 5),
(6, '电子文本', 6),
(7, '其他资源', 7);

--
-- 转存表中的数据 `catplatform`
--

INSERT INTO `catplatform` (`id`, `name`, `sort_index`) VALUES
(1, 'PC', 0),
(2, 'PSP', 0),
(3, 'NDS', 0),
(4, 'GBA', 0),
(5, 'NGC', 0),
(6, 'WII', 0),
(7, 'PS', 0),
(8, 'PS2', 0),
(9, 'XBOX', 0),
(10, 'XBOX360', 0),
(12, '视频', 0),
(13, '原声', 0),
(14, '周边', 0),
(15, '网游', 0),
(16, 'iOS', 0),
(17, 'Android', 0),
(18, 'Windows Phone', 0),
(19, '其它移动平台', 0);

--
-- 转存表中的数据 `platformsoftware`
--

INSERT INTO `platformsoftware` (`id`, `name`, `sort_index`) VALUES
(1, 'Windows', 0),
(2, 'Linux', 0),
(3, 'macOS', 0),
(4, 'Android', 0),
(5, 'iOS', 0),
(6, '其他', 0);

--
-- 转存表中的数据 `catseries`
--

INSERT INTO `catseries` (`id`, `name`, `sort_index`) VALUES
(1, '大陆', 1),
(2, '港台', 2),
(3, '美剧', 3),
(4, '日剧', 4),
(5, '韩剧', 5),
(6, '其他', 7),
(7, '英剧', 6);

--
-- 转存表中的数据 `catsoftware`
--

INSERT INTO `catsoftware` (`id`, `name`, `sort_index`) VALUES
(1, '操作系统', 0),
(2, '应用软件', 0),
(3, '网络软件', 0),
(4, '系统工具', 0),
(5, '多媒体类', 0),
(6, '行业软件', 0),
(7, '编程开发', 0),
(8, '安全相关', 0),
(9, '办公软件', 0),
(10, '教育软件', 0),
(11, '硬件驱动', 0),
(12, '系统补丁', 0);

--
-- 转存表中的数据 `catsports`
--

INSERT INTO `catsports` (`id`, `name`, `sort_index`) VALUES
(1, '足球', 0),
(2, '篮球', 0),
(3, '摔角', 0),
(4, '斯诺克', 0),
(5, '羽毛球', 0),
(6, 'F1', 0),
(7, '其他', 0);

--
-- 转存表中的数据 `class`
--

INSERT INTO `class` (`Id`, `名称`, `peasant`, `user`, `power_user`, `elite_user`, `crazy_user`, `insane_user`, `veteran_user`, `extreme_user`, `ultimate_user`, `nexus master`, `vip`, `retiree`, `uploader`, `moderator`, `administrator`, `sysop`, `staff_leader`) VALUES
(1, 'Nexusphp', 'Peasant', 'User', 'Power User', 'Elite User', 'Crazy User', 'Insane User', 'Veteran User', 'Extreme User', 'Ultimate User', 'Nexus Master', '贵宾', '养老族', '发布员', '类管理员', '管理员', '维护开发员', '主管'),
(2, '北洋政府官制', '氓', '庶民', '县知事', '道尹', '镇守使', '帮办', '督办', '都督', '巡阅使', '经略使', '贵宾', '下野执政', '交通总长', '副执政', '执政', '护军使', '大总统'),
(3, '北洋军', '禁闭', '士官', '少尉', '中尉', '上尉', '少校', '中校', '上校', '大校', '将军', '顾问', '老兵', '军火商', '宪兵', '军法处', '后勤部', '司令'),
(4, '江湖朝堂', '将功赎罪', '无名小辈', '拜师学艺', '持剑下山', '初入江湖', '小有名气', '威震一方', '横扫群雄', '开宗立派', '天下无敌', '西域来客', '扫地僧', '龙门镖局', '六扇门', '中枢六部', '锦衣卫', '九五之尊'),
(5, '北洋后宫', '冷宫废妃', '官女子', '答应', '常在', '贵人', '嫔', '妃', '贵妃', '皇贵妃', '皇后', '贵宾', '养老族', '发布员', '类管理员', '管理员', '维护开发员', '主管'),
(6, '学院之路', '留校察看', '幼儿园', '学前班', '小学生', '初中生', '高中生', '学士', '硕士', '博士', '博士后', '著名校友', '退休教授', '送水工', '宿管科', '保卫处', '后勤办', '北洋怪物园园长');

--
-- 转存表中的数据 `codecs`
--

INSERT INTO `codecs` (`id`, `name`, `sort_index`) VALUES
(1, 'H.264', 0),
(2, 'VC-1', 0),
(3, 'Xvid', 0),
(4, 'MPEG-2', 0),
(5, 'Other', 0);

--
-- 转存表中的数据 `countries`
--

INSERT INTO `countries` (`id`, `name`, `flagpic`) VALUES
(1, '中国', 'china.gif'),
(2, 'United States of America', 'usa.gif'),
(3, 'Russia', 'russia.gif'),
(4, 'Finland', 'finland.gif'),
(5, 'Canada', 'canada.gif'),
(6, 'France', 'france.gif'),
(7, 'Germany', 'germany.gif'),
(8, 'Sweden', 'sweden.gif'),
(9, 'Italy', 'italy.gif'),
(10, 'Denmark', 'denmark.gif'),
(11, 'Norway', 'norway.gif'),
(12, 'United Kingdom', 'uk.gif'),
(13, 'Ireland', 'ireland.gif'),
(14, 'Poland', 'poland.gif'),
(15, 'Netherlands', 'netherlands.gif'),
(16, 'Belgium', 'belgium.gif'),
(17, 'Japan', 'japan.gif'),
(18, 'Brazil', 'brazil.gif'),
(19, 'Argentina', 'argentina.gif'),
(20, 'Australia', 'australia.gif'),
(21, 'New Zealand', 'newzealand.gif'),
(23, 'Spain', 'spain.gif'),
(24, 'Portugal', 'portugal.gif'),
(25, 'Mexico', 'mexico.gif'),
(26, 'Singapore', 'singapore.gif'),
(70, 'India', 'india.gif'),
(65, 'Albania', 'albania.gif'),
(29, 'South Africa', 'southafrica.gif'),
(30, 'South Korea', 'southkorea.gif'),
(31, 'Jamaica', 'jamaica.gif'),
(32, 'Luxembourg', 'luxembourg.gif'),
(34, 'Belize', 'belize.gif'),
(35, 'Algeria', 'algeria.gif'),
(36, 'Angola', 'angola.gif'),
(37, 'Austria', 'austria.gif'),
(38, 'Yugoslavia', 'yugoslavia.gif'),
(39, 'Western Samoa', 'westernsamoa.gif'),
(40, 'Malaysia', 'malaysia.gif'),
(41, 'Dominican Republic', 'dominicanrep.gif'),
(42, 'Greece', 'greece.gif'),
(43, 'Guatemala', 'guatemala.gif'),
(44, 'Israel', 'israel.gif'),
(45, 'Pakistan', 'pakistan.gif'),
(46, 'Czech Republic', 'czechrep.gif'),
(47, 'Serbia', 'serbia.gif'),
(48, 'Seychelles', 'seychelles.gif'),
(50, 'Puerto Rico', 'puertorico.gif'),
(51, 'Chile', 'chile.gif'),
(52, 'Cuba', 'cuba.gif'),
(53, 'Congo', 'congo.gif'),
(54, 'Afghanistan', 'afghanistan.gif'),
(55, 'Turkey', 'turkey.gif'),
(56, 'Uzbekistan', 'uzbekistan.gif'),
(57, 'Switzerland', 'switzerland.gif'),
(58, 'Kiribati', 'kiribati.gif'),
(59, 'Philippines', 'philippines.gif'),
(60, 'Burkina Faso', 'burkinafaso.gif'),
(61, 'Nigeria', 'nigeria.gif'),
(62, 'Iceland', 'iceland.gif'),
(63, 'Nauru', 'nauru.gif'),
(64, 'Slovenia', 'slovenia.gif'),
(66, 'Turkmenistan', 'turkmenistan.gif'),
(67, 'Bosnia Herzegovina', 'bosniaherzegovina.gif'),
(68, 'Andorra', 'andorra.gif'),
(69, 'Lithuania', 'lithuania.gif'),
(71, 'Netherlands Antilles', 'nethantilles.gif'),
(72, 'Ukraine', 'ukraine.gif'),
(73, 'Venezuela', 'venezuela.gif'),
(74, 'Hungary', 'hungary.gif'),
(75, 'Romania', 'romania.gif'),
(76, 'Vanuatu', 'vanuatu.gif'),
(77, 'Vietnam', 'vietnam.gif'),
(78, 'Trinidad & Tobago', 'trinidadandtobago.gif'),
(79, 'Honduras', 'honduras.gif'),
(80, 'Kyrgyzstan', 'kyrgyzstan.gif'),
(81, 'Ecuador', 'ecuador.gif'),
(82, 'Bahamas', 'bahamas.gif'),
(83, 'Peru', 'peru.gif'),
(84, 'Cambodia', 'cambodia.gif'),
(85, 'Barbados', 'barbados.gif'),
(86, 'Bangladesh', 'bangladesh.gif'),
(87, 'Laos', 'laos.gif'),
(88, 'Uruguay', 'uruguay.gif'),
(89, 'Antigua Barbuda', 'antiguabarbuda.gif'),
(90, 'Paraguay', 'paraguay.gif'),
(93, 'Thailand', 'thailand.gif'),
(92, 'Union of Soviet Socialist Republics', 'ussr.gif'),
(94, 'Senegal', 'senegal.gif'),
(95, 'Togo', 'togo.gif'),
(96, 'North Korea', 'northkorea.gif'),
(97, 'Croatia', 'croatia.gif'),
(98, 'Estonia', 'estonia.gif'),
(99, 'Colombia', 'colombia.gif'),
(100, 'Lebanon', 'lebanon.gif'),
(101, 'Latvia', 'latvia.gif'),
(102, 'Costa Rica', 'costarica.gif'),
(103, 'Egypt', 'egypt.gif'),
(104, 'Bulgaria', 'bulgaria.gif'),
(105, 'Isla de Muerte', 'jollyroger.gif'),
(107, 'Pirates', 'jollyroger.gif');

--
-- 转存表中的数据 `districtanime`
--

INSERT INTO `districtanime` (`id`, `name`, `sort_index`) VALUES
(1, '日漫', 0),
(2, '美漫', 0),
(3, '国产', 0),
(4, '其他', 0);

--
-- 转存表中的数据 `districtmovie`
--

INSERT INTO `districtmovie` (`id`, `name`, `sort_index`) VALUES
(2, '香港', 0),
(3, '台湾', 0),
(11, '欧洲', 0),
(12, '北美', 0),
(4, '日本', 0),
(5, '韩国', 0),
(6, '美国', 0),
(7, '英国', 0),
(8, '法国', 0),
(9, '德国', 0),
(10, '澳大利亚', 0),
(13, '其他', 0),
(1, '大陆', 0);

--
-- 转存表中的数据 `districttvshows`
--

INSERT INTO `districttvshows` (`id`, `name`, `sort_index`) VALUES
(1, '大陆', 0),
(2, '港台', 0),
(3, '欧美', 0),
(4, '日韩', 0),
(5, '其他', 0);

--
-- 转存表中的数据 `downloadspeed`
--

INSERT INTO `downloadspeed` (`id`, `name`) VALUES
(1, '64kbps'),
(2, '128kbps'),
(3, '256kbps'),
(4, '512kbps'),
(5, '768kbps'),
(6, '1Mbps'),
(7, '1.5Mbps'),
(8, '2Mbps'),
(9, '3Mbps'),
(10, '4Mbps'),
(11, '5Mbps'),
(12, '6Mbps'),
(13, '7Mbps'),
(14, '8Mbps'),
(15, '9Mbps'),
(16, '10Mbps'),
(17, '48Mbps'),
(18, '100Mbps'),
(19, '1000Mbps');

--
-- 转存表中的数据 `faq`
--

INSERT INTO `faq` (`id`, `link_id`, `lang_id`, `type`, `question`, `answer`, `flag`, `categ`, `order`) VALUES
(1, 1, 25, 'categ', '站点信息', '', 1, 0, 1),
(2, 2, 25, 'categ', '用户信息', '', 1, 0, 2),
(3, 3, 25, 'categ', '数据统计', '', 1, 0, 3),
(4, 4, 25, 'categ', '发布', '', 1, 0, 4),
(5, 5, 25, 'categ', '下载', '', 1, 0, 5),
(6, 6, 25, 'categ', '我该怎样提升下载速度？', '', 1, 0, 6),
(7, 7, 25, 'categ', '我的网络提供商（ISP）使用了透明代理。我应该怎么做？', '', 1, 0, 7),
(8, 8, 25, 'categ', '为什么我连不上？难道我被网站屏蔽了？', '', 1, 0, 8),
(9, 9, 25, 'categ', '如果从这里找不到我的问题的解答，我该怎么办？', '', 1, 0, 9),
(10, 10, 25, 'item', '到底什么是BT（Bittorrent）？什么是PT（Private Tracker）？', '<a href=\"forums.php?action=viewtopic&forumid=15&topicid=14607\" class=\"faqlink\">什么是BT？什么是PT？</a>', 1, 1, 1),
(11, 11, 25, 'item', '我们捐出来的钱上哪儿去了？', '所有捐助的钱用于维护服务器的费用。', 0, 1, 2),
(12, 12, 25, 'item', '我从哪里可以搞到源代码的拷贝？', '这个Tracker使用的是NexusPHP的代码。代码获取事宜，请看<a class=\"faqlink\" href=\"aboutnexus.php\">这里</a>。<br />\r\nNexusPHP的代码是根据TBSource的源码改写的。TBDev网站，Tracker源代码以及社区论坛都在这里：<a class=\"faqlink\" href=\"http://www.tbdev.net/\">TBDev.net</a>。', 0, 1, 3),
(13, 13, 25, 'item', '我注册了一个账号但是却没有收到验证邮件！', '这很有可能是Tracker所在的服务器网络出现了问题。你可以填写<a href=\"confirm_resend.php\" class=\"faqlink\">这个表格</a>让服务器重发验证邮件。<br />\r\n通常没有得到确认的注册帐户会在24小时后被删除，所以你可以在第二天重试。需要注意的是，如果你第一次没有收到确认信，第二次有很大的可能仍然无法收到确认信，所以换一个E-mail地址是一个不错的主意。', 1, 2, 1),
(14, 14, 25, 'item', '我忘记了我的用户名/密码了，能帮我找回来么？', '请填写<a class=\"faqlink\" href=\"recover.php\">这个表单</a>，我们将把登录详情发还给你。', 1, 2, 2),
(15, 15, 25, 'item', '我可以给我的账号改个名字么？', '可以，需要花费一定的魔力值，详见<a href=\"mybonus.php\" class=\"faqlink\">魔力值系统</a>。', 2, 2, 3),
(16, 16, 25, 'item', '你可以删除一个（已确认的）账号么？', '我们一般不提供该类服务，所以不要请求删除任何一个被你邀请的帐号。', 1, 2, 4),
(17, 17, 25, 'item', '那么，什么是我的分享率（Ratio）？', '就在页面功能分区的下面。<br />\r\n<br />\r\n<img src=\"pic/ratio.png\" alt=\"ratio\" />\r\n<br />\r\n<br />\r\n区分你的整体分享率和独立分享率是很重要的。整体分享率关注的是自从你加入站点以来，账号的整体上传与下载量。而独立分享率则针对每一个你正在下载或做种的文件。\r\n<br />\r\n<br />\r\n你可能看到两种符号来代替数字：\"Inf.\"，这个是无限（Infinity）的缩写，意思是你的下载量为0字节，而上传量则是任意一个非零的值(上传量/下载量=无穷大)；\"---\"，应该被视为“不可用”，这说明了你的下载量和上传量都是0字节。(上传量/下载量=0/0 这是一个不确定的量)。\r\n', 1, 2, 5),
(18, 18, 25, 'item', '为什么我的IP地址显示在我的个人信息页面上？', '只有你自己和网站Moderator及以上的管理员可以看到你的IP地址和Email。普通用户是看不到这些信息的。', 1, 2, 6),
(21, 21, 25, 'item', '为什么我的“可连接”是“否”？（以及为什么我需要关注这个问题？）', 'Tracker服务器认为你在防火墙后，或者在NAT桥接后，并且无法接收其他Peer的连接请求。\r\n<br />\r\n<br />\r\n这意味着其它的大批Peer无法连接到你，只能由你连接到他们。更糟糕的情况是，如果两个Peer都处于这样的状态，他们将完全无法连接到对方。这对于整体速度有着非常不利的影响。\r\n<br />\r\n<br />\r\n对于这个问题，有以下解决方式：对于防火墙，打开用于接收连接的端口（即你在BT客户端中定义的端口）；对于NAT，你需要配置NAT服务器使用Basic NAT方式而不是NAPT（不同的路由有着不同的运行方式。翻阅你的路由文档或客服论坛。你也可以在<a class=\"faqlink\" href=\"http://portforward.com/\">PortForward</a>找到关于此问题的大量信息）。\r\n\r\n\r\n\r\n\r\n\r\n', 1, 2, 9),
(22, 22, 25, 'item', '不同的用户等级代表了什么含义？', '<table cellpadding=\"0\" cellspacing=\"3\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"embedded\" valign=\"top\" width=\"200\">\r\n				&nbsp; <b class=\"Peasant_Name\">将功赎罪(Peasant)</b></td>\r\n			<td class=\"embedded\" width=\"5\">\r\n				&nbsp;</td>\r\n			<td class=\"embedded\">\r\n				被降级的用户，他们有14天时间来提升分享率，否则他们会被踢。不能发表趣味盒内容；不能申请友情链接；不能上传字幕。</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"embedded\" valign=\"top\">\r\n				&nbsp; <b class=\"User_Name\">无名小辈(User)</b></td>\r\n			<td class=\"embedded\">\r\n				&nbsp;</td>\r\n			<td class=\"embedded\">\r\n				新用户的默认级别。</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"embedded\" valign=\"top\">\r\n				&nbsp; <b class=\"PowerUser_Name\">拜师学艺(Power User)</b></td>\r\n			<td class=\"embedded\">\r\n				&nbsp;</td>\r\n			<td class=\"embedded\">\r\n				可以直接发布种子；可以查看NFO文档；可以查看用户列表；可以请求续种； 可以查看排行榜；可以查看其它用户的种子历史(如果用户隐私等级未设置为&quot;强&quot;)； 可以删除自己上传的字幕。</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"embedded\" valign=\"top\">\r\n				&nbsp; <b class=\"EliteUser_Name\">持剑下山(Elite User)</b></td>\r\n			<td class=\"embedded\">\r\n				&nbsp;</td>\r\n			<td class=\"embedded\">\r\n				<b class=\"EliteUser_Name\">持剑下山</b>及以上用户封存账号后不会被删除。</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"embedded\" valign=\"top\">\r\n				&nbsp; <b class=\"CrazyUser_Name\">初入江湖(Crazy User)</b></td>\r\n			<td class=\"embedded\">\r\n				&nbsp;</td>\r\n			<td class=\"embedded\">\r\n				得到一个邀请名额；可以发送邀请；可以在做种/下载/发布的时候选择匿名模式。</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"embedded\" valign=\"top\">\r\n				&nbsp; <b class=\"InsaneUser_Name\">小有名气(Insane User)</b></td>\r\n			<td class=\"embedded\">\r\n				&nbsp;</td>\r\n			<td class=\"embedded\">\r\n				得到一个邀请名额；可以查看普通日志。</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"embedded\" valign=\"top\">\r\n				&nbsp; <b class=\"VeteranUser_Name\">威震一方(Veteran User)</b></td>\r\n			<td class=\"embedded\">\r\n				&nbsp;</td>\r\n			<td class=\"embedded\">\r\n				得到一个邀请名额；可以查看其它用户的评论、帖子历史。<b class=\"VeteranUser_Name\">威震一方</b>及以上用户会永远保留账号。</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"embedded\" valign=\"top\">\r\n				&nbsp; <b class=\"ExtremeUser_Name\">横扫群雄(Extreme User)</b></td>\r\n			<td class=\"embedded\">\r\n				&nbsp;</td>\r\n			<td class=\"embedded\">\r\n				得到一个邀请名额；可以更新过期的外部信息。</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"embedded\" valign=\"top\">\r\n				&nbsp; <b class=\"UltimateUser_Name\">开宗立派(Ultimate User)</b></td>\r\n			<td class=\"embedded\">\r\n				&nbsp;</td>\r\n			<td class=\"embedded\">\r\n				得到两个邀请名额。</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"embedded\" valign=\"top\">\r\n				&nbsp; <b class=\"NexusMaster_Name\">天下无敌(Nexus Master)</b></td>\r\n			<td class=\"embedded\">\r\n				&nbsp;</td>\r\n			<td class=\"embedded\">\r\n				得到三个邀请名额。</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"embedded\" valign=\"top\">\r\n				&nbsp; <img alt=\"Star\" class=\"star\" src=\"pic/trans.gif\" /></td>\r\n			<td class=\"embedded\">\r\n				&nbsp;</td>\r\n			<td class=\"embedded\">\r\n				为网站捐款的主。</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"embedded\" valign=\"top\">\r\n				&nbsp; <b class=\"VIP_Name\">贵宾(VIP)</b></td>\r\n			<td class=\"embedded\">\r\n				&nbsp;</td>\r\n			<td class=\"embedded\" valign=\"top\">\r\n				和<b class=\"NexusMaster_Name\">天下无敌</b>拥有相同权限并被认为是精英成员。免除自动降级。</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"embedded\" valign=\"top\">\r\n				&nbsp; <b class=\"User_Name\">其它</b></td>\r\n			<td class=\"embedded\">\r\n				&nbsp;</td>\r\n			<td class=\"embedded\">\r\n				自定义等级。</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"embedded\" valign=\"top\">\r\n				&nbsp; <b class=\"Retiree_Name\">扫地僧(养老族Retiree)</b></td>\r\n			<td class=\"embedded\">\r\n				&nbsp;</td>\r\n			<td class=\"embedded\">\r\n				退休后的管理组成员。</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"embedded\" valign=\"top\">\r\n				&nbsp; <b class=\"Uploader_Name\">龙门镖局(发布员Uploader)</b></td>\r\n			<td class=\"embedded\">\r\n				&nbsp;</td>\r\n			<td class=\"embedded\">\r\n				专注的发布者。免除自动降级；可以查看匿名用户的真实身份。</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"embedded\" valign=\"top\">\r\n				&nbsp; <b class=\"Moderator_Name\">六扇门(类管理员Moderator)</b></td>\r\n			<td class=\"embedded\">\r\n				&nbsp;</td>\r\n			<td class=\"embedded\" valign=\"top\">\r\n				可以查看管理组信箱、举报信箱；管理趣味盒内容、投票内容；可以编辑或删除任何发布的种子；可以管理候选；可以管理论坛帖子、用户评论；可以查看机密日志；可以删除任何字幕；可以管理日志中的代码、史册；可以查看用户的邀请记录；可以管理用户帐号的一般信息。<b>不能</b>管理友情链接、最近消息、论坛版块；<b>不能</b>将种子设为置顶或促销；<b>不能</b>查看用户IP或Email等机密信息；不能删除账号。</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"embedded\" valign=\"top\">\r\n				&nbsp; <b class=\"Administrator_Name\">中枢六部(管理员Administrator)</b></td>\r\n			<td class=\"embedded\">\r\n				&nbsp;</td>\r\n			<td class=\"embedded\">\r\n				除了不能改变站点设定、管理捐赠外，可以做任何事。</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"embedded\" valign=\"top\">\r\n				&nbsp; <b class=\"SysOp_Name\">锦衣卫(维护开发员Sysop)</b></td>\r\n			<td class=\"embedded\">\r\n				&nbsp;</td>\r\n			<td class=\"embedded\">\r\n				网站开发/维护人员，可以改变站点设定，不能管理捐赠。</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"embedded\" valign=\"top\">\r\n				&nbsp; <b class=\"StaffLeader_Name\">九五之尊(主管Staff Leader)</b></td>\r\n			<td class=\"embedded\">\r\n				&nbsp;</td>\r\n			<td class=\"embedded\">\r\n				网站主管，可以做任何事。</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', 2, 2, 10),
(23, 23, 25, 'item', '提升和降级又是怎样被执行的呢？', '<table cellspacing=\"3\" cellpadding=\"0\">\r\n<tr>\r\n<td class=\"embedded\" colspan=3>\r\n<b>所有的升降级操作将在相关条件符合后半个小时内由系统自动执行。</b></td>\r\n</tr>\r\n<br />\r\n<tr>\r\n<td class=\"embedded\" width=\"200\" valign=\"top\">&nbsp; <b class=\"Peasant_Name\">将功赎罪(Peasant)</b></td>\r\n<td class=\"embedded\" width=\"5\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">当以下情况时将被自动降至本级：<br />\r\n1.如果你已经下载了超过50GB，你应该有大于0.4的分享率。<br />\r\n2.如果你已经下载了超过100GB，你应该有大于0.5的分享率。<br />\r\n3.如果你已经下载了超过200GB，你应该有大于0.6的分享率。<br />\r\n4.如果你已经下载了超过400GB，你应该有大于0.7的分享率。<br />\r\n5.如果你已经下载了超过800GB，你应该有大于0.8的分享率。</td>\r\n</tr>\r\n\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"PowerUser_Name\">拜师学艺(Power User)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必须注册至少4周，并且下载至少50G，分享率大于1.05。<br />\r\n当条件符合时将被自动提升。注意，无论何时，如果你的分享率低于0.95，你将自动降级。</td>\r\n</tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"EliteUser_Name\">持剑下山(Elite User)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必须注册至少8周，并且下载至少120G，分享率大于1.55。\r\n<br />\r\n当条件符合时将被自动提升。注意，无论何时，如果你的分享率低于1.45，你将自动降级。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"CrazyUser_Name\">初入江湖(Crazy User)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必须注册至少15周，并且下载至少300G，分享率大于2.05。\r\n<br />\r\n当条件符合时将被自动提升。注意，无论何时，如果你的分享率低于1.95，你将自动降级。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"InsaneUser_Name\">小有名气(Insane User)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必须注册至少25周，并且下载至少500G，分享率大于2.55。<br />\r\n当条件符合时将被自动提升。注意，无论何时，如果你的分享率低于2.45，你将自动降级。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"VeteranUser_Name\">威震一方(Veteran User)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必须注册至少40周，并且下载至少750G，分享率大于3.05。<br />\r\n当条件符合时将被自动提升。注意，无论何时，如果你的分享率低于2.95，你将自动降级。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"ExtremeUser_Name\">横扫群雄(Extreme User)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必须注册至少60周，并且下载至少1TB，分享率大于3.55。<br />\r\n当条件符合时将被自动提升。注意，无论何时，如果你的分享率低于3.45，你将自动降级。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"UltimateUser_Name\">开宗立派(Ultimate User)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必须注册至少80周，并且下载至少1.5TB，分享率大于4.05。<br />\r\n当条件符合时将被自动提升。注意，无论何时，如果你的分享率低于3.95，你将自动降级。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"NexusMaster_Name\">天下无敌(Nexus Master)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必须注册至少100周，并且下载至少3TB，分享率大于4.55。<br />\r\n当条件符合时将被自动提升。注意，无论何时，如果你的分享率低于4.45，你将自动降级。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <img class=\"star\" src=\"pic/trans.gif\" alt=\"Star\" /></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">只需捐款，详见<a class=\"faqlink\" href=\"donate.php\">这里</a>。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"VIP_Name\">贵宾(VIP)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">由管理员仔细斟酌后分配给他们认为对于站点某方面有特殊贡献的用户。<br />\r\n（任何索取贵宾等级的要求将被自动无视）</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"User_Name\">其它</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">用户使用魔力值兑换，或由管理员仔细斟酌后授权。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Retiree_Name\">扫地僧(养老族Retiree)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">由管理员授予。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Uploader_Name\">龙门镖局(发布员Uploader)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">拜师学艺以上级别自由申请，需管理员考核才能任命(参见\'发布\'部分以了解详情)。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Moderator_Name\">六扇门(类管理员Moderator)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">初入江湖级别以上用户自由申请或由管理员推荐，需经过管理组任命</td>\r\n</tr>\r\n\r\n\r\n\r\n</table>\r\n', 2, 2, 11),
(25, 25, 25, 'item', '为什么我的朋友不能加入？', '用户数目有所限制（你可以查看“首页-&gt;站点数据-&gt;上限”）。当达到那个数目时，我们会停止接受新成员。<br />\r\n由于非活跃用户(长期不使用账号的用户)引起账号资源浪费，因此我们将清理该部分用户，为其他想加入用户腾出空间。<br />\r\n关于非活跃用户清理规则，参考<a class=\"faqlink\" href=\"rules.php\">规则</a>。', 1, 2, 1),
(26, 26, 25, 'item', '怎样自定义头像？', '首先，找一个你喜欢的图片，当然了它不能违反我们的<a class=\"faqlink\" href=\"rules.php\">规则</a>。然后你要找一个存放它的地方，比方说我们自己的<a class=\"faqlink\" href=\"bitbucket-upload.php\">上传器</a>。出于服务器负载的考虑，我们更希望你将图片上传到别的网站，然后将其URL粘贴到你的<a class=\"faqlink\" href=\"usercp.php?action=personal\">控制面板</a>的头像URL部分。 <br />\r\n<br />\r\n请不要为了仅仅测试头像而发帖。如果一切顺利，你将在你的详情页面看到它。', 1, 2, 1),
(27, 27, 25, 'item', '最常见的数据未能得到更新的原因', '<ul>\r\n<li>服务器过载/未响应。只要尝试着保持会话直到服务器恢复响应(不推荐连续手动刷新，这样会加重服务器负载)。</li>\r\n<li>你正在使用不稳定的客户端。如果你想要使用测试版或者CVS版本，你需要自己承担由此带来的风险。</li>\r\n</ul>', 1, 3, 1),
(28, 28, 25, 'item', '最佳的尝试', '<ul>\r\n<li>如果你当前正下载/上传的种子并不在你的用户详情页面中，你可以等一会或者强制进行手动更新。</li>\r\n<li>确保你正确地关闭了客户端软件，否则Tracker服务器无法收到\"event=completed\"的信号。</li>\r\n<li>如果Tracker服务器挂了，不要停止上传。只要在你退出客户端之前服务器恢复工作，所有的数据都会得到正确地更新。</li>\r\n</ul>', 1, 3, 2),
(29, 29, 25, 'item', '我可以任意选择Bittorrent客户端软件么？', '根据<a class=\"faqlink\" href=\"aboutnexus.php\">NexusPHP</a>对常见BitTorrent客户端的测试，目前本站Tracker<b>只允许</b>使用以下的BitTorrent客户端软件。<br />\r\n<a class=\"faqlink\" href=\"aboutnexus.php\">NexusPHP</a>的测试报告可<a class=\"faqlink\" href=\"http://www.nexusphp.org/wiki/%E5%AE%A2%E6%88%B7%E7%AB%AF%E6%B5%8B%E8%AF%95%E6%8A%A5%E5%91%8A\">在此查看</a>。\r\n<br />\r\n<b>Windows:</b>\r\n<ul>\r\n<li><a class=\"faqlink\" href=\"http://azureus.sourceforge.net\">Azureus</a>: 2.5.0.4, 3.0.5.0, 3.0.5.2，未列出的版本不保证可以使用（即使版本号更高）</li>\r\n<li><a class=\"faqlink\" href=\"http://www.utorrent.com\">uTorrent</a>: <a class=\"faqlink\" href=\"forums.php?action=viewtopic&forumid=15&topicid=15039\">本站推荐使用2.0.4版本，不推荐3.3及后续版本，禁用3.4及后续版本（内附安装包以及更换版本教程）</a></li>\r\n<li><a class=\"faqlink\" href=\"http://www.bittorrent.com\">BitTorrent</a>: 6.0.1, 6.0.2, 6.0.3，未列出的版本不保证可以使用（即使版本号更高）</li>\r\n<li><a class=\"faqlink\" href=\"http://deluge-torrent.org\">Deluge</a>: 0.5.9.1, 1.1.6，未列出的版本不保证可以使用（即使版本号更高）</li>\r\n<li><a class=\"faqlink\" href=\"http://rufus.sourceforge.net\">Rufus</a>: 0.6.9, 0.7.0，未列出的版本不保证可以使用（即使版本号更高）</li>\r\n</ul>\r\n<b>Linux:</b>\r\n<ul>\r\n<li><a class=\"faqlink\" href=\"http://azureus.sourceforge.net\">Azureus</a>: 2.5.0.4, 3.0.5.0, 3.0.5.2，未列出的版本不保证可以使用（即使版本号更高）</li>\r\n<li><a class=\"faqlink\" href=\"http://deluge-torrent.org\">Deluge</a>: 0.5.9.1, 1.1.6，，未列出的版本不保证可以使用（即使版本号更高）</li>\r\n<li><a class=\"faqlink\" href=\"http://rufus.sourceforge.net\">Rufus</a>: 0.6.9, 0.7.0，未列出的版本不保证可以使用（即使版本号更高）</li>\r\n<li><a class=\"faqlink\" href=\"http://www.transmissionbt.com\">Transmission</a>: 1.xx , 2.xx，未列出的版本不保证可以使用（即使版本号更高）</li>\r\n<li><a class=\"faqlink\" href=\"http://libtorrent.rakshasa.no\">rTorrent</a>: 0.8.0（配合libtorrent 0.12.0或后续版本），未列出的版本不保证可以使用（即使版本号更高）</li>\r\n<li><a class=\"faqlink\" href=\"http://www.rahul.net/dholmes/ctorrent/\">Enhanced CTorrent</a>: 3.3.2，未列出的版本不保证可以使用（即使版本号更高）</li>\r\n</ul>\r\n<b>MacOS X:</b>\r\n<ul>\r\n<li><a class=\"faqlink\" href=\"http://azureus.sourceforge.net\">Azureus</a>: 2.5.0.4, 3.0.5.0, 3.0.5.2，未列出的版本不保证可以使用（即使版本号更高）</li>\r\n<li><a class=\"faqlink\" href=\"http://www.transmissionbt.com\">Transmission</a>: 1.21，未列出的版本不保证可以使用（即使版本号更高）</li>\r\n<li><a class=\"faqlink\" href=\"http://sourceforge.net/projects/bitrocket/\">BitRocket</a>: 0.3.3(32)，未列出的版本不保证可以使用（即使版本号更高）</li>\r\n<li><a class=\"faqlink\" href=\"http://www.utorrent.com\">uTorrent For Mac</a>: 0.9.0-0.9.9,1.0.0-1.5.5及今后发布的所有1.*.*版本。未列出的版本不保证可以使用（即使版本号更高）</li>\r\n</ul>\r\n<b>Symbian (仅供测试):</b>\r\n<ul>\r\n<li><a class=\"faqlink\" href=\"http://amorg.aut.bme.hu/projects/symtorrent\">SymTorrent</a>: 1.41及后续版本</li>\r\n</ul>\r\n<br />\r\n\r\n<b>以上客户端在https支持方面</b>\r\n<ul>\r\n<li>uTorrent 1.61: 无法准确解析https的tracker，同时在使用会将自己标识为uTorrent 1.5</li>\r\n<li>Rufus: 没有https支持，并且已经几年没有继续开发</li>\r\n<li>rtorrent: 需要手工设置SSL证书，详细信息请自行查阅其官方网站说明</li>\r\n</ul>\r\n\r\n<br />\r\n\r\n同时请尽量避免使用处于测试期的客户端软件。\r\n<br />\r\n为了从本站得到最好的下载体验，我们高度推荐<a class=\"faqlink\" href=\"http://www.utorrent.com/download.php\">uTorrent</a> 的2.0.4稳定版本。\r\n<br />\r\n如果你的客户端不在上面的列表中，你可以使用该客户端下载<a class=\"faqlink\" href=\"clientcollect.php?download=1\">这个种子</a>。我们将根据分析情况决定是否对该客户端添加支持。\r\n\r\n<!--请各位用户及时反馈不同客户端及其不同版本对本站的支持情况，以便于随时更新此份客户端软件列表。-->', 2, 5, 3),
(30, 30, 25, 'item', '为什么我正在下载/做种的一个种子会在我的详情页面中被列出多次？', '如果因为某些原因(比方说死机，客户端失去响应)你的客户端非正常退出并且你又重新打开它，它会被分配到一个全新的Peer ID, 这样它显示为一个全新的种子。而旧的种子将永远不会收到“event=completed”或“event=stopped”的信号，因此将一直被列出直到Tracker清理超时的Peer。 无视了它就可以了，它最后会消失的。', 1, 3, 4),
(31, 31, 25, 'item', '为什么我已经完成/取消的种子仍然在我的详情页面里？', '有一些客户端，比如说TorrentStorm和Nova Torrent，在取消或者完成一个任务的时候不能向Tracker服务器正确发送信号。在那样的情况下，Tracker服务器将一直保持等待信号的状态（因此会一直列出种子的状态为做种/下载的状态）直到Tracker清理超时的Peer。无视了它就可以了，它最后会消失的。', 1, 3, 5),
(33, 33, 25, 'item', '多IP（我可以从不同的电脑登录/下载吗？）', '是的，目前Tracker服务器支持单个用户从任意个数的IP地址同时访问/下载。<br />\r\n然而，对于单种是有限制的。对于每个种子，最多允许3个做种的连接，最多只允许1个下载的连接（这意味着，对于某个种子你一次只能在一个地方下载）。', 1, 3, 1),
(36, 36, 25, 'item', '为什么我不能发布种子？', '请看<a class=\"faqlink\" href=\"rules.php\">规则</a>。', 1, 4, 2),
(37, 37, 25, 'item', '我需要满足哪些条件才能加入发布小组呢？', '你所必须满足的条件：\r\n<ul>\r\n<li>具有稳定的资源来源</li>\r\n<li>平均每周资源发布数量不少于5个</li>\r\n</ul>\r\n你必须确保发布的文件符合以下特征:\r\n<ul>\r\n<li>不超过7天之前</li>\r\n<li>你必须要有做种的能力，或者可以确保至少有效供种24小时。</li>\r\n<li>你需要有至少达到2MBit的上传带宽。</li>\r\n</ul>\r\n如果你认为你符合以上条件，那么不要犹豫，<a class=\"faqlink\" href=\"contactstaff.php\">联系管理组</a>吧。<br />\r\n<b>记住！</b> 仔细填写你的申请！确保申请中包含你的上传速度以及你计划发布的内容的类型。<br />\r\n只有仔细填写并且经过慎重考虑的申请才会纳入我们的视野。', 1, 4, 3),
(38, 38, 25, 'item', '我可以发布你们这里的种子到别的Tracker服务器么？', '不能。我们是一个封闭的、限制用户数的社区。只有注册用户才能够使用我们的Tracker。将我们的种子文件发布到其他Tracker服务器是徒劳的，因为绝大多数试图下载这些文件的人将无法连接到我们的服务器。将我们的种子发布到其他Tracker只让那里的用户恼怒（因为无法下载）并且对我们产生敌对情绪，所以这种行为是我们是不能容忍的。<br />\r\n<br />\r\n如果其他网站的管理员向我们举报我们的种子被发布在他们的站点上，对此负责的用户将因此被移出我们的社区。<br />\r\n<br />\r\n但是对于从我们这里下载得到的文件，你可以随意操控它们（发布者明确说明为<b>独占</b>的资源除外）。你可以制作另一个种子，写入其他Tracker的地址，并发布到你喜欢的站点上。', 1, 4, 4),
(39, 39, 25, 'item', '下载来的文件该怎么打开？', '在这份<a class=\"faqlink\" href=\"formats.php\">指引</a>里面找找看吧。', 1, 5, 1),
(40, 40, 25, 'item', '我下载了一部电影，但是不明白CAM/TS/TC/SCR是什么意思?', '在这份<a class=\"faqlink\" href=\"videoformats.php\">指引</a>里面找找看吧。', 1, 5, 2),
(41, 41, 25, 'item', '为什么一个可用的种子忽然就消失了？', '以下原因都会导致这个现象的出现:<br />\r\n(<b>1</b>) 按照<a class=\"faqlink\" href=\"rules.php\">网站规则</a>，这个种子不符合规则已被删除。\r\n<br />\r\n(<b>2</b>) 发布者因为文件存在问题而删除了它。一般来说，发布者会发布一个替代的版本的。<br />\r\n(<b>3</b>) 在长时间断种后种子被自动删除了。', 1, 5, 3),
(42, 42, 25, 'item', '我该怎样续传文件或者给一个文件续种呢？', '打开扩展名为.torrent的文件，当你的客户端软件询问保存的目录时，选择已经存在的文件存放的目录，它就能够开始续传/续种了。', 1, 5, 4),
(43, 43, 25, 'item', '为什么我的下载有时候停在99%?', '你所下载到的片段越多，寻找拥有你所缺少的片段的同伴就将变得越困难。这就是为什么有时候在下载即将完成的时候，速度会变得非常慢，甚至完全停止了。只要耐心等候，或早或晚剩下的部分一定能够下载到的。', 1, 5, 5),
(44, 44, 25, 'item', '\"部分哈希验证出错\"这条信息是什么意思？', 'BT的客户端会检查它所收到的数据的完整性。如果某一个片段在验证中出错，那么这个片段将被重新下载。偶尔的哈希验证错误是非常常见的现象，不用担心。<br />\r\n<br />\r\n有些客户端有屏蔽向你发送错误数据的其他客户端的功能。如果有这个选项，最好打开它。因为这样可以保证如果某个同伴经常向你发送错误的数据时，它将会被屏蔽。', 1, 5, 6),
(45, 45, 25, 'item', '100MB大小的种子，我怎么下了120MB的东西回来?', '参见哈希验证失败的那个问题。如果你的客户端收到了错误的数据，那么它将会重新下载这一部分，因此总下载量有可能比种子大小略微大一些。确保“屏蔽发送错误数据的客户端”的那个选项被打开了，这样可以减少额外的下载。', 1, 5, 7),
(46, 46, 25, 'item', '为什么我的客户端的Tracker服务器状态出现\"您的分享率太低，您需要等待 xx 小时开始\"的错误？', '在<b>新</b>种子被上传到Tracker服务器之后，有一些用户必须等一些时间才能开始下载。<br>\r\n这个延迟只会影响那些分享率较低且下载量大于10G的用户。<br />\r\n<br />\r\n<table cellspacing=\"3\" cellpadding=\"0\">\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.4</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">延迟</td>\r\n	<td class=\"embedded\" width=\"100\">24小时</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.5</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">延迟</td>\r\n	<td class=\"embedded\" width=\"100\">12小时</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.6</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">延迟</td>\r\n	<td class=\"embedded\" width=\"100\">6小时</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.8</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">延迟</td>\r\n	<td class=\"embedded\" width=\"100\">3小时</td>\r\n</tr>\r\n</table>', 1, 5, 8),
(47, 47, 25, 'item', '为什么发生了这个错误？ \"Port xxxx is blacklisted\"?', '你的客户端向Tracker服务器报告它正在使用某个默认的BT协议端口(6881-6889)或是任何其他常见P2P端口来作为连接端口。<br />\r\n<br />\r\n本站不允许这些通常被P2P协议默认使用的端口。原因是目前ISP常常对这些端口进行限速。<br />\r\n<br />\r\n被屏蔽的端口如下：<br />\r\n<br />\r\n<table cellspacing=\"3\" cellpadding=\"0\">\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">Direct Connect</td>\r\n	<td class=\"embedded\" width=\"100\">411 - 413</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">BitTorrent</td>\r\n	<td class=\"embedded\" width=\"100\">6881 - 6889</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">Kazza</td>\r\n	<td class=\"embedded\" width=\"100\">1214</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">Gnutella</td>\r\n	<td class=\"embedded\" width=\"100\">6346 - 6347</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">Emule</td>\r\n	<td class=\"embedded\" width=\"100\">4662</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">WinMX</td>\r\n	<td class=\"embedded\" width=\"100\">6699</td>\r\n  </tr>\r\n</table>\r\n<br />\r\n要使用我们的Tracker服务器，你必须配置你的客户端使用未在上面列出的端口范围(从49152到65535都是不错的选择，参看<a class=\"faqlink\" href=\"http://www.iana.org/assignments/port-numbers\">IANA</a>)。注意某些客户端，如Azureus 2.0.7.0或更高版本，对所有的种子都使用同一端口。而其他大多数客户端为每一个种子开放一个端口，你在选择端口范围应考虑到这个问题（一般来说端口范围小于10。设置一个过大的范围并不一定有好处，而且可能有安全隐患)。 <br />\r\n<br />\r\n这些端口是用于同伴间通信的，而非用于客户端连接到Tracker服务器。因此这个改动并不会影响你使用其他Tracker服务器（事实上，它甚至可能<i>加快</i>所有Tracker服务器上种子的速度）。你的客户端也仍然能够连接到那些使用默认端口的同伴。如果你的客户端不支持自己自定义端口，那么换一个吧。<br />\r\n<br />\r\n不要向我们询问，或者在论坛里面提问究竟应该选择什么端口。我们的用户选择的端口越随机，ISP就越难以捉摸清楚我们使用的端口，从而无法对我们的端口进行限速。如果我们只是简单地规定一个范围，那么ISP又会很快对那个范围内的端口进行限速的。<br />\r\n<br />\r\n最后还要说的是，记得在你的路由和/或防火墙上打开你选择的端口，如果你有这些东西的话。', 1, 5, 9),
(48, 48, 25, 'item', '那么这个呢？ “IO错误 - [错误号13] 许可被拒绝”？', '如果你只是想要解决这个问题的话，重新启动你的电脑应该就可以了。否则的话，继续读下去。<br />\r\n<br />\r\nIO错误指的是输入-输出错误，这是一个文件系统错误，而非来自我们的Tracker服务器。当你的客户端由于某些原因不能打开种子中未下载完成的文件时，这个错误就会发生。 通常原因是客户端的两个实例同时在运行：当上一次关闭客户端时因为某种原因它没有被真正关闭，从而始终在后台运行。因此文件被锁定，使得新的实例不能打开这个文件。<br />\r\n<br />\r\n另外一个不常出现的原因是因为老旧的FAT文件系统。某些系统崩溃可能导致未下载完成的文件损坏，接着就出现了这个错误。运行一次scandisk应该可以解决这个问题。注意，只有当你使用Windows 9X操作系统（只支持FAT文件系统）或者在Windows NT/2000/XP中使用FAT文件系统的时候才比较可能出现这个问题。NTFS文件系统要健壮许多，不太可能出现这样的问题。', 1, 5, 10),
(50, 50, 25, 'item', '不要马上下载新发布的种子', '下载速度主要取决于上传者/下载者比(SLR)。如果是种子是新发布的且非常受欢迎而SLR又很低的种子，下载速度低是常见的问题。<br />\r\n<br />\r\n请牢记你不喜欢低速下载。所以多<b>上传</b>让别人不用忍耐同样的困扰。\r\n<br />\r\n<br />尤其是当你的带宽较窄时，不要马上下载新发布的种子。最好的下载速度通常在一个种子生命周期的一半时出现，此时SLR达到最大值（不过，这时下载的缺点是你的上传量不会很多。究竟如何平衡优点与缺点，取决于你自己)。', 1, 6, 1),
(51, 51, 25, 'item', '限制上传速度', '上传速度将从以下两种方式显著影响下载速度：\r\n<ul>\r\n    <li>Bittorrent的同伴倾向于回馈那些给它们提上传的同伴。这就意味着如果A和B正在同时下载一个文件，而A又在高速向B传送数据，那么B将会尝试着回报A。因此高速上传将导致高速下载。</li>\r\n\r\n    <li>由于TCP协议的工作方式，当A正从B下载某些东西的时候，A必须不停地向B发送成功收到B所发送来的数据的信号（被称为确认──ACK ── 某种“已收到”的信息)。如果A没有发送ACK信号，那么B将暂停向A发送数据并且进入等候状态。如果A正在全速上传，很有可能没有用来发送ACK信号的带宽，因此ACK信号被耽搁。在这种情况下，过高速度的上传导致了低速的下载。</li>\r\n</ul>\r\n实际的效果是以上两个原因的结合。上传速度应该在保证ACK能正常传输的前提下被设得尽量高。 <b>一个很好的实践理论是保持上传速度在理论上限的80%。</b>你也可以细细研究什么是最适合你的速度（同时也请记住高速上传对于你的分享率很有帮助）。<br />\r\n<br />\r\n如果你正在运行一个以上的种子任务，你应该考虑的是全局上传速度。某些客户端能限制了全局上传速度，其他的则能对每一个种子分别进行设置。了解你的客户端。如果你正在使用你的电脑做别的某些应用（比方说上网或者从FTP拖东西），也需考虑一下它们对于全局上传的影响。', 1, 6, 2),
(52, 52, 25, 'item', '限制同时连接数', '某些操作系统（例如Windows 9X）对于大量连接数支持不完善，甚至有可能因此而崩溃。也有一些家用路由（尤其当运行着NAT以及/或者打开防火墙状态检查服务时）会因大量连接数而变得很慢或者崩溃。对于连接数没有固定的最佳值，你可以试试看60或者100。记住这些连接数是累加的，所以如果你的客户端运行了两个会话，这两个数字要加在一起。', 1, 6, 3),
(53, 53, 25, 'item', '限制同时上传数', '上传数难道和连接数有什么不一样吗？是的，两者是不同的。连接数限制了你的客户端所能对话以及/或者下载的同伴数。上传数则限制了你的客户端实际能上传的同伴数。理想的数值一般要比连接数低许多，并且与你的物理带宽高度相关。', 1, 6, 4),
(54, 54, 25, 'item', '那怎么办？等待一会吧', '如我们在上面所解释的，在BT下载过程中一个同伴更加倾向于回报那些上传给它的同伴。当你开始一个新的下载任务时，你没有文件片断提高给其他同伴，因此他们通常会无视你。这使得开始阶段的下载非常缓慢，由其是当你所连接到的同伴只有很少是（或者没有）做种者。一旦你获得了一些能用于共享的文件片断，下载速度会有所改观。', 1, 6, 5),
(55, 55, 25, 'item', '为什么在我下载的时候浏览网页速度如此之慢？', '你的下载带宽是有限的。如果你正在下载一个速度很快的种子，它几乎肯定将占满你的下载带宽。这是浏览网页显然就会变慢。很多BT客户端允许你限制下载速度，你可以试试。<br />\r\n<br />\r\n浏览网页只是作为举例之一，同样的问题也会出现在游戏，即时通信软件上......', 1, 6, 6),
(56, 56, 25, 'item', '什么是代理？', '基本上说，代理就是中间人。当你通过代理访问某个站点的时候，你的请求将首先被发送到代理处，然后由代理转发到你所请求的站点，而不是你直接连通到网站。下面是几种典型的代理分类（术语不是那么的规范）：<br />\r\n<br />\r\n<table cellspacing=\"3\" cellpadding=\"0\">\r\n <tr>\r\n	<td class=\"embedded\" valign=\"top\" width=\"100\">&nbsp;透明代理</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">透明代理在客户端无需配置。他将自动把80端口的信息重定向到代理(有时候也作为非匿名代理的同义词)；</td>\r\n </tr>\r\n <tr>\r\n	<td class=\"embedded\" valign=\"top\">&nbsp;显式代理</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">浏览器必须经过配置才能使用代理；</td>\r\n </tr>\r\n <tr>\r\n	<td class=\"embedded\" valign=\"top\">&nbsp;匿名代理</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">代理将不会把客户标记发送至服务器端 (HTTP_X_FORWARDED_FOR头标志将不被发送。服务器也因此看不到你的IP)；</td>\r\n </tr>\r\n <tr>\r\n	<td class=\"embedded\" valign=\"top\">&nbsp;高度匿名代理</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">代理将不会把客户标记或代理标记发送至服务器端 (HTTP_X_FORWARDED_FOR和HTTP_VIA and HTTP_PROXY_CONNECTION头标志将不被发送。服务器看不到你的IP，甚至不知道你正在使用代理)；</td>\r\n </tr>\r\n <tr>\r\n	<td class=\"embedded\" valign=\"top\">&nbsp;公用</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">(不言自明了)。</td>\r\n </tr>\r\n</table>\r\n<br />\r\n透明代理可能是匿名的，也可能是非匿名的，且匿名也有相应的等级。', 1, 7, 1),
(57, 57, 25, 'item', '我该怎样发现自己正处于一个（透明的/匿名的）代理后面？', '试试看<a href=\"http://proxyjudge.org\" class=\"faqlink\">ProxyJudge</a>。它列出了服务器端从你这里所收到的HTTP的头标志。相关的几个标志是HTTP_CLIENT_IP，HTTP_X_FORWARDED_FOR和REMOTE_ADDR。', 1, 7, 2),
(75, 75, 25, 'item', '我的“可连接”是“否”尽管我并没有NAT或者防火墙？', 'Tracker服务器在寻找你的真实IP方面非常有天赋。但是这需要代理发送HTTP头标志HTTP_X_FORWARDED_FOR。如果你的ISP的代理没有这么做的话，Tracker服务器将把代理的IP当作你的客户端的IP。所以当你登录之后，Tracker服务器尝试连接你的客户端来确信你没有使用NAT/防火墙，服务器实际上将试图连接代理的IP（使用你的BT客户端报告的接收连接端口）。很自然地，代理服务器并没有监听那个端口。如此连接会失败，而Tracker服务器也因此认为你使用了NAT/防火墙。', 1, 7, 3),
(62, 62, 25, 'item', '也许是因为我的IP地址被列入黑名单了？', '这个网站有屏蔽被禁用户或攻击者的IP地址的功能。该功能在Apache/PHP层面上起作用，且只能屏蔽从这些地址<i>登录</i>网站。这不会阻止你<i>连接</i>到网站，更无法从底层的协议层面进行屏蔽。即便你的地址已经被列入了黑名单，你应该仍能够通过ping/traceroute命令连同服务器。如果你不能连通服务器，那么问题的原因在别处。<br />\r\n<br />\r\n如果你的IP地址因某种原因错误地被我们屏蔽了，请联系我们。', 1, 8, 1),
(63, 63, 25, 'item', '你的ISP屏蔽了本站的地址', '首先，这一般不像你的ISP的所作所为。DNS域名解析以及/或者网络问题是常见的真凶。\r\n<br />\r\n对此我们无能为力。你应该联系你的ISP（或者换一个）。记住你仍然可以通过代理访问本站，参看此常见问题关于代理的部分。在这种情况下，代理是否匿名或者使用哪个监听端口都不重要了。<br />\r\n<br />\r\n注意，你的“可连接状态”将因此一直被列为“否”，因为此时Tracker服务器无法检查你的BT客户端接收连接的状态。', 1, 8, 2),
(65, 65, 25, 'item', '不妨试试这个', '用任何手段在<a class=\"faqlink\" href=\"forums.php\">论坛</a>发帖。通常情况下你能得到友善而有用的帮助。这里给你一些基本的指导：<ul>\r\n<li>确保你的问题的确不在这篇FAQ中。这样的发帖导致的结果就是返回这篇FAQ。</li>\r\n<li>在发帖之前，看看<a class=\"faqlink\" href=\"forums.php?action=viewtopic&topicid=2381\">这篇帖子</a>。</li>\r\n<li>在发帖之前，看看置顶。很多时候，还没有被我们的FAQ所收录的最新的信息都可以在那里被找到。</li>\r\n<li>帮助我们也就是帮助你自己。不要仅仅说“嘿我这里出问题了！！”提供一些详情，这样我们就不用猜测或者浪费时间来询问了。你使用的是什么客户端？什么操作系统？怎样的网络设置？如果发生了错误，是什么样的具体错误信息？有问题的种子文件是哪个？你所提供的信息越多，对你的帮助也就越容易，你的帖子也就更加容易得到回复。</li>\r\n<li>不需要说的是：保持礼貌。趾高气扬得命令别人帮助你很少会有用。</li></ul>', 1, 9, 1),
(66, 66, 25, 'item', '什么是\"您最多只能同时开启 xx 个下载任务\"错误？', '这是“最大连接数系统”。最大连接数系统用于限制<!--那些分享率较低且下载量大于10GB的-->用户的最大同时下载数。<br /><br />\r\n规则如下: <br /><br />\r\n<table cellspacing=\"3\" cellpadding=\"0\">\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Peasant</td>\r\n	<td class=\"embedded\" width=\"40\">1</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">User</td>\r\n	<td class=\"embedded\" width=\"40\">2</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Power User</td>\r\n	<td class=\"embedded\" width=\"40\">3</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Elite User</td>\r\n	<td class=\"embedded\" width=\"40\">4</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Crazy User</td>\r\n	<td class=\"embedded\" width=\"40\">5</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Insane User</td>\r\n	<td class=\"embedded\" width=\"40\">5</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Veteran User</td>\r\n	<td class=\"embedded\" width=\"40\">6</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Extreme User</td>\r\n	<td class=\"embedded\" width=\"40\">6</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Ultimate User</td>\r\n	<td class=\"embedded\" width=\"40\">7</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Nexus Master</td>\r\n	<td class=\"embedded\" width=\"40\">7</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">VIP</td>\r\n	<td class=\"embedded\" width=\"40\">8</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Retiree</td>\r\n	<td class=\"embedded\" width=\"40\">10</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Uploader</td>\r\n	<td class=\"embedded\" width=\"40\">12</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Moderator</td>\r\n	<td class=\"embedded\" width=\"40\">14</td>\r\n</tr>\r\n</table>\r\n<!--<table cellspacing=\"3\" cellpadding=\"0\">\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.5</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">最大连接数</td>\r\n	<td class=\"embedded\" width=\"40\">1</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.65</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">最大连接数</td>\r\n	<td class=\"embedded\" width=\"40\">2</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.8</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">最大连接数</td>\r\n	<td class=\"embedded\" width=\"40\">3</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.95</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">最大连接数</td>\r\n	<td class=\"embedded\" width=\"40\">4</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率大于</td>\r\n	<td class=\"embedded\" width=\"40\">0.95</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">最大连接数</td>\r\n	<td class=\"embedded\" width=\"40\">无限制</td>\r\n</tr>\r\n</table>-->\r\n<br />\r\n无论何时，同时的上传数不设限。但是如果你当前的下载数已达到了你的最大连接数，这时开启新的做种任务，你也会收到同样的错误提示。在这种情况下，你必须先关闭一个下载任务，然后开启所有的上传任务，然后继续刚才关闭的下载任务。因为当你的连接数被占满，系统将不加验证直接拒绝任何下载<!--或上传-->的请求。注意：未完全下载的种子会计入下载线程。<br />\r\n<br />\r\n你可以在任意时间查看自己的连接数，该信息在页面顶端信息栏中被列出。', 1, 5, 12),
(67, 67, 25, 'item', '什么是密钥系统？它是怎么工作的？', '密钥系统在BT客户端连接Tracker服务器时起到验证身份的作用。每一个用户都有一个系统随机生成的密钥。当用户下载某个种子文件时，他的私人密钥被添加到种子文件的Tracker服务器URL中。通过这种方式，你可以在家中或者办公室使用不同的IP来做种某个文件。\r\n\r\n', 1, 5, 13),
(68, 68, 25, 'item', '“Unknown passkey”这错误是咋回事？', '首先，如果你不是我们的注册用户，将会发生这个错误。其次，有可能你没有在登录状态下从我们的网页里下载种子文件。如果是这两种情况，只要注册一个帐号或者登录后下载种子文件就可以了。<br />\r\n另外，当你注册了一个新用户并且开始第一次下载的时候，或者你刚刚重置了你的密钥时，也可能出现这个错误。原因是系统并非实时检查密钥的改变。如果是因为这个原因，那么就让种子任务等一会儿，最后一定能收到Tracker服务器发回的成功信息。', 1, 5, 14),
(69, 69, 25, 'item', '什么时候我需要重置我的密钥?', '<ul><li> 如果你的密钥被泄漏，且别的用户正在使用这个密钥（即使用你的帐户）下载文件。在这种情况下，你能在你的详情页面看到你并未下载或上传的种子。</li>\r\n<li>当你的客户端崩溃，或者你的连接并没有正常被终止。在这样的情况下，就算你已经关闭了你的客户端，你仍然在你的详情页面看到正在上传/下载的记录。通常情况下这些“冗余种子”将在30分钟之内被自动清除，但是如果你马上继续你的下载而服务器又提示“You already are downloading the same torrent”的错误，那么你需要重置你的密钥，然后重新下载种子文件，之后继续下载过程。 </li></ul>', 1, 5, 15),
(70, 70, 25, 'item', 'DHT是什么？为什么一定要关闭这个功能？', 'DHT必须从你的客户端被禁止。DHT可能导致你的数据被错误地记录，可以视为一种作弊行为。任何使用DHT的用户将因作弊而被系统禁止。<br />\r\n幸运的是，目前Tracker服务器会自动分析用户上传的种子文件，强制去除DHT的支持。这也是为什么种子发布者必须重新下载种子才能正常做种的原因之一。', 1, 5, 16),
(71, 71, 25, 'categ', 'How can I help translate the site language into my native language?', '', 0, 0, 8),
(72, 72, 25, 'item', 'What skills do I need to do the translation?', 'Translate the site into another language is quite easy. You needn\'t be skilled in PHP or dynamic website design. In fact, all you need is proficient understanding of English (the default site language) and the language you plan to translate into. Maybe some basic knowledge in HTML would help.<br /><br />\r\nMoreover, we give a detailed tutorial on how to do the translation <a href=\"#73\" class=\"faqlink\"><b>HERE</b></a>. And our coders would be more than pleased to answer the questions you may encounter.<br /><br />\r\nTranslate the whole site into another language would take estimated 10 hours. And extra time is needed to maintain the translation when site code is updated.<br /><br />\r\nSo, if you think you could help, feel free to <a class=\"faqlink\" href=\"contactstaff.php\"><b>CONTACT US</b></a>. Needless to say, you would be rewarded.', 1, 71, 1),
(73, 73, 25, 'item', 'The translation tutorial', '<ul>\r\n<li>How does multi-language work?<br />\r\nCurrently we use language files to store all the static words that a user can see on web pages. <br />\r\nEvery php code file has a corresponding language file for a certain language. And we named the language file \'lang_\' plus the filename of the php code file. i.e. the language file of the php code file \'details.php\' would be \'lang_details.php\'. <br />\r\nWe has some mechanism in php codes to read the exact language files of user\'s preferred language, and you shouldn\'t worry about that.<br /></li>\r\n<li>What\'s in language files?<br />\r\nIn a language file is an array of strings. These strings contain all the static words that a user can see on web pages. When we need to say some words on a php code file, we call for a string in the array. And the output of the php code file, that is what users see on the web pages, would show the value of the string.<br />\r\nSounds dizzying? Well, you need not care about all these. All you gotta do is translate the values of the strings in the language files into another language. <b>Let\'s see an example</b>:<br /><br />\r\nThe following is the content of the English language file \'lang_users.php\', which works for the php code file \'users.php\'. <br /><br />\r\n<img src=\"pic/langfileeng.png\" alt=\"langfileeng\" /><br />\r\nIf you wanna translate it into Simplified Chinese, all you need is edit the file into this:<br />\r\n<img src=\"pic/langfilechs.png\" alt=\"langfilechs\" /><br />\r\nSee, in every line, the left part, that is before <i>=&gt;</i>, is the name of a string, which you shouldn\'t touch. All you need to is translate the right part, after <i>=&gt;</i>, which is the value of the string, into another language.<br />\r\nSometimes you need to look at the corresponding web pages to get the context meaning of some words.<br /></li>\r\n<li>Sounds easy? See what do you need to do.<br />\r\nIf you feel like to help us, <a class=\"faqlink\" href=\"aboutnexus.php#contact\"><b>CONTACT US</b></a> and we will send you a pack of the English language files (or any other available language if you prefer). Received it, you can start translating the value of strings (which is in English), into another language. It should take you several hours to do the whole work. After this, send back the translated language files to us.<br />\r\nIf no bugs or hacking codes are found in testing, we would put the new language into work.<br />\r\nSometimes the language files need to be updated, typically adding new strings, when site codes are updated. If you feel like it, you can help maintain the language files.<br /></li>\r\n<li><font color=\"red\"><b>IMPORTANT</b></font><br />\r\nThe text of language files must be encoded in UTF-8. When saving files, be sure to set the character encoding to UTF-8. Otherwise mojibake may happen.</li></ul>', 1, 71, 2),
(74, 74, 25, 'item', '为什么我的磁盘还有充足的空间，客户端却提示磁盘剩余空间不足？', '很可能是因为你的磁盘分区的文件系统为FAT32，该文件系统不支持大于4GB的单个文件。如果你使用的是Windows系统，你可以在磁盘的属性中查看其文件系统信息。你可以将磁盘文件系统转换成更高级的NTFS来解决该问题。<br />\r\n你可以在命令行窗口使用convert命令将FAT32无损转成NTFS文件系统格式。<br /><br />\r\n<b>命令说明</b>\r\nCONVERT volume /FS:NTFS [/V] [/CvtArea:filename] [/NoSecurity] [/X]<br />\r\nvolume     指定驱动器号(后面跟一个冒号)、装载点或卷名。<br />\r\n/FS:NTFS   指定要被转换成 NTFS 的卷。<br />\r\n/V       指定 Convert 应该用详述模式运行。<br />\r\n/CvtArea:filename       将根目录中的一个接续文件指定为NTFS 系统文件的占位符。<br />\r\n/NoSecurity       指定每个人都可以访问转换的文件和目录的安全设置。<br />\r\n/X       如果必要，先强行卸载卷。该卷的所有打开的句柄则无效。 <br /><br />\r\n<b>简单说</b><br />：\r\n打开 命令提示符窗口。<br />\r\n在命令提示符窗口，请键入：<br />\r\nconvert drive_letter:/fs:ntfs<br />\r\n例如：转换D盘为NTFS，可输入convert D:/fs:ntfs', 1, 5, 17),
(374, 74, 28, 'item', '為什么我的磁碟還有充足的空間，用戶端卻輔助說明磁碟剩餘空間不足？', '很可能是因為你的磁碟割區的檔案系統為FAT32，該檔案系統不支援大于4GB的單個檔案。如果你使用的是Windows系統，你可以在磁碟的屬性中檢視其檔案系統資訊。你可以將磁碟檔案系統轉換成更進階的NTFS來解決該問題。<br />\r\n你可以在指令行視窗使用convert指令將FAT32無損轉成NTFS檔案系統格式。<br /><br />\r\n<b>指令說明</b>\r\nCONVERT volume /FS:NTFS [/V] [/CvtArea:filename] [/NoSecurity] [/X]<br />\r\nvolume     指定磁碟機號(后面跟一個冒號)、裝載點或卷名。<br />\r\n/FS:NTFS   指定要被轉換成 NTFS 的卷。<br />\r\n/V       指定 Convert 應該用詳述型態執行。<br />\r\n/CvtArea:filename       將根目錄中的一個接續檔案指定為NTFS 系統檔案的占位符。<br />\r\n/NoSecurity       指定每個人都可以存取轉換的檔案和目錄的安全設定。<br />\r\n/X       如果必要，先強行卸載卷。該卷的所有開啟的控點則無效。 <br /><br />\r\n<b>簡單說</b><br />：\r\n開啟 指令輔助說明符視窗。<br />\r\n在指令輔助說明符視窗，請鍵入：<br />\r\nconvert drive_letter:/fs:ntfs<br />\r\n例如：轉換D槃為NTFS，可匯入convert D:/fs:ntfs', 1, 5, 17),
(368, 68, 28, 'item', '“Unknown passkey”這錯誤是咋回事？', '首先，如果你不是我們的註冊用戶，將會發生這個錯誤。其次，有可能你沒有在登入狀態下從我們的網頁裡下載種子檔案。如果是這兩種情況，只要註冊一個帳號或者登入后下載種子檔案就可以了。<br />\r\n另外，當你註冊了一個新用戶并且開始第一次下載的時候，或者你剛剛重置了你的加密鍵時，也可能出現這個錯誤。原因是系統并非實時檢查加密鍵的改變。如果是因為這個原因，那么就讓種子工作等一會兒，最后一定能收到Tracker伺服器發回的成功資訊。', 1, 5, 14),
(369, 69, 28, 'item', '什么時候我需要重置我的加密鍵?', '<ul><li> 如果你的加密鍵被泄漏，且別的用戶正在使用這個加密鍵（即使用你的帳戶）下載檔案。在這種情況下，你能在你的詳情頁面看到你并未下載或上傳的種子。</li>\r\n<li>當你的用戶端崩潰，或者你的連線并沒有正常被終止。在這樣的情況下，就算你已經關閉了你的用戶端，你仍然在你的詳情頁面看到正在上傳/下載的記錄。通常情況下這些“多餘種子”將在30分鐘之內被自動清除，但是如果你馬上繼續你的下載而伺服器又輔助說明“You already are downloading the same torrent”的錯誤，那么你需要重置你的加密鍵，然后重新下載種子檔案，之后繼續下載過程。 </li></ul>', 1, 5, 15),
(370, 70, 28, 'item', 'DHT是什么？為什么一定要關閉這個功能？', 'DHT必須從你的用戶端被禁止。DHT可能導致你的資料被錯誤地記錄，可以視為一種作弊行為。任何使用DHT的用戶將因作弊而被系統禁止。<br />\r\n幸運的是，目前Tracker伺服器會自動解析用戶上傳的種子檔案，強制去除DHT的支援。這也是為什么種子發布者必須重新下載種子才能正常做種的原因之一。', 1, 5, 16),
(371, 71, 28, 'categ', 'How can I help translate the site language into my native language?', '', 1, 0, 8),
(372, 72, 28, 'item', 'What skills do I need to do the translation?', 'Translate the site into another language is quite easy. You needn\'t be skilled in PHP or dynamic website design. In fact, all you need is proficient understanding of English (the default site language) and the language you plan to translate into. Maybe some basic knowledge in HTML would help.<br /><br />\r\nMoreover, we give a detailed tutorial on how to do the translation <a href=\"#73\" class=\"faqlink\"><b>HERE</b></a>. And our coders would be more than pleased to answer the questions you may encounter.<br /><br />\r\nTranslate the whole site into another language would take estimated 10 hours. And extra time is needed to maintain the translation when site code is updated.<br /><br />\r\nSo, if you think you could help, feel free to <a class=\"faqlink\" href=\"contactstaff.php\"><b>CONTACT US</b></a>. Needless to say, you would be rewarded.', 1, 71, 1),
(373, 73, 28, 'item', 'The translation tutorial', '<ul>\r\n<li>How does multi-language work?<br />\r\nCurrently we use language files to store all the static words that a user can see on web pages. <br />\r\nEvery php code file has a corresponding language file for a certain language. And we named the language file \'lang_\' plus the filename of the php code file. i.e. the language file of the php code file \'details.php\' would be \'lang_details.php\'. <br />\r\nWe has some mechanism in php codes to read the exact language files of user\'s preferred language, and you shouldn\'t worry about that.<br /></li>\r\n<li>What\'s in language files?<br />\r\nIn a language file is an array of strings. These strings contain all the static words that a user can see on web pages. When we need to say some words on a php code file, we call for a string in the array. And the output of the php code file, that is what users see on the web pages, would show the value of the string.<br />\r\nSounds dizzying? Well, you need not care about all these. All you gotta do is translate the values of the strings in the language files into another language. <b>Let\'s see an example</b>:<br /><br />\r\nThe following is the content of the English language file \'lang_users.php\', which works for the php code file \'users.php\'. <br /><br />\r\n<img src=\"pic/langfileeng.png\" alt=\"langfileeng\" /><br />\r\nIf you wanna translate it into Simplified Chinese, all you need is edit the file into this:<br />\r\n<img src=\"pic/langfilechs.png\" alt=\"langfilechs\" /><br />\r\nSee, in every line, the left part, that is before <i>=&gt;</i>, is the name of a string, which you shouldn\'t touch. All you need to is translate the right part, after <i>=&gt;</i>, which is the value of the string, into another language.<br />\r\nSometimes you need to look at the corresponding web pages to get the context meaning of some words.<br /></li>\r\n<li>Sounds easy? See what do you need to do.<br />\r\nIf you feel like to help us, <a class=\"faqlink\" href=\"aboutnexus.php#contact\"><b>CONTACT US</b></a> and we will send you a pack of the English language files (or any other available language if you prefer). Received it, you can start translating the value of strings (which is in English), into another language. It should take you several hours to do the whole work. After this, send back the translated language files to us.<br />\r\nIf no bugs or hacking codes are found in testing, we would put the new language into work.<br />\r\nSometimes the language files need to be updated, typically adding new strings, when site codes are updated. If you feel like it, you can help maintain the language files.<br /></li>\r\n<li><font color=\"red\"><b>IMPORTANT</b></font><br />\r\nThe text of language files must be encoded in UTF-8. When saving files, be sure to set the character encoding to UTF-8. Otherwise mojibake may happen.</li></ul>', 1, 71, 2),
(362, 62, 28, 'item', '也許是因為我的IP位址被列入黑名單了？', '這個網站有屏蔽被禁用戶或攻擊者的IP位址的功能。該功能在Apache/PHP層面上起作用，且只能屏蔽從這些位址<i>登入</i>網站。這不會阻止你<i>連線</i>到網站，更無法從底層的協定層面進行屏蔽。即便你的位址已經被列入了黑名單，你應該仍能夠通過ping/traceroute指令連同伺服器。如果你無法連通伺服器，那么問題的原因在別處。<br />\r\n<br />\r\n如果你的IP位址因某種原因錯誤地被我們屏蔽了，請聯繫我們。', 1, 8, 1),
(363, 63, 28, 'item', '你的ISP屏蔽了本站的位址', '首先，這一般不像你的ISP的所作所為。DNS域名解析以及/或者網路問題是常見的真凶。\r\n<br />\r\n對此我們無能為力。你應該聯繫你的ISP（或者換一個）。記住你仍然可以通過代理存取本站，參看此常見問題關于代理的部分。在這種情況下，代理是否匿名或者使用哪個監聽通訊埠都不重要了。<br />\r\n<br />\r\n注意，你的“可連線狀態”將因此一直被列為“否”，因為此時Tracker伺服器無法檢查你的BT用戶端接收連線的狀態。', 1, 8, 2),
(365, 65, 28, 'item', '不妨試試這個', '用任何手段在<a class=\"faqlink\" href=\"forums.php\">論壇</a>發帖。通常情況下你能得到友善而有用的輔助說明。這裡給你一些基本的指導：<ul>\r\n<li>確保你的問題的確不在這篇FAQ中。這樣的發帖導致的結果就是傳回這篇FAQ。</li>\r\n<li>在發帖之前，看看置頂。很多時候，還沒有被我們的FAQ所收錄的最新的資訊都可以在那裡被找到。</li>\r\n<li>輔助說明我們也就是輔助說明你自己。不要僅僅說“嘿我這裡出問題了！！”提供一些詳情，這樣我們就不用猜測或者浪費時間來詢問了。你使用的是什么用戶端？什么作業系統？怎樣的網路設定？如果發生了錯誤，是什么樣的具體錯誤資訊？有問題的種子檔案是哪個？你所提供的資訊越多，對你的輔助說明也就越容易，你的帖子也就更加容易得到回覆。</li>\r\n<li>不需要說的是：保持禮貌。趾高氣揚得指令別人輔助說明你很少會有用。</li></ul>', 1, 9, 1),
(366, 66, 28, 'item', '什么是\"Your slot limit is reached! You may at most download xx torrents at the same time\"錯誤？', '這是“最大連線數系統”。最大連線數系統用于限制那些分享率較低且下載量大于10GB的用戶的最大同時下載數。<br /><br />\r\n規則如下: <br /><br />\r\n<table cellspacing=\"3\" cellpadding=\"0\">\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.5</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">最大連線數</td>\r\n	<td class=\"embedded\" width=\"40\">1</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.65</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">最大連線數</td>\r\n	<td class=\"embedded\" width=\"40\">2</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.8</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">最大連線數</td>\r\n	<td class=\"embedded\" width=\"40\">3</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.95</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">最大連線數</td>\r\n	<td class=\"embedded\" width=\"40\">4</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率大于</td>\r\n	<td class=\"embedded\" width=\"40\">0.95</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">最大連線數</td>\r\n	<td class=\"embedded\" width=\"40\">無限制</td>\r\n</tr>\r\n</table>\r\n<br />\r\n無論何時，同時的上傳數不設限。但是如果你目前的下載數已達到了你的最大連線數，這時開啟新的做種工作，你也會收到同樣的錯誤輔助說明。在這種情況下，你必須先關閉一個下載工作，然后開啟所有的上傳工作，然后繼續剛才關閉的下載工作。因為當你的連線數被占滿，系統將不加驗證直接拒絕任何下載或上傳的要求。 <br />\r\n<br /><br />\r\n你可以在任意時間察看自己的連線數，該資訊在頁面頂端資訊欄中被列出。', 0, 5, 12),
(367, 67, 28, 'item', '什么是加密鍵系統？它是怎么工作的？', '加密鍵系統在BT用戶端連線Tracker伺服器時起到驗證身份的作用。每一個用戶都有一個系統隨機生成的加密鍵。當用戶下載某個種子檔案時，他的私人加密鍵被添加到種子檔案的Tracker伺服器URL中。通過這種方式，你可以在家中或者辦公室使用不同的IP來做種某個檔案。\r\n\r\n', 1, 5, 13),
(301, 1, 28, 'categ', '網站資訊', '', 1, 0, 1),
(302, 2, 28, 'categ', '用戶資訊', '', 1, 0, 2),
(303, 3, 28, 'categ', '資料統計', '', 1, 0, 3),
(304, 4, 28, 'categ', '發布', '', 1, 0, 4),
(305, 5, 28, 'categ', '下載', '', 1, 0, 5),
(306, 6, 28, 'categ', '我該怎樣提升下載速度？', '', 1, 0, 6),
(307, 7, 28, 'categ', '我的網路提供商（ISP）使用了透通代理。我應該怎么做？', '', 1, 0, 7),
(308, 8, 28, 'categ', '為什么我連不上？難道我被網站屏蔽了？', '', 1, 0, 8),
(309, 9, 28, 'categ', '如果從這裡找不到我的問題的解答，我該怎么辦？', '', 1, 0, 9),
(310, 10, 28, 'item', '到底什么是BT（Bittorrent）？我要如何才能弄到這類程式？', '參看<a class=\"faqlink\" href=\"http://www.btfaq.com/\">Brian的BitTorrent FAQ及指導</a>。', 1, 1, 1),
(311, 11, 28, 'item', '我們捐出來的錢上哪兒去了？', '所有捐助的錢用于維護伺服器的費用。', 1, 1, 2),
(312, 12, 28, 'item', '我從哪裡可以搞到來源碼的拷貝？', '這個Tracker使用的是NexusPHP的程式碼。程式碼抓取事宜，請看<a class=\"faqlink\" href=\"aboutnexus.php\">這裡</a>。<br />\r\nNexusPHP的程式碼是根據TBSource的源碼改寫的。TBDev網站，Tracker來源碼以及社區論壇都在這裡：<a class=\"faqlink\" href=\"http://www.tbdev.net/\">TBDev.net</a>。', 1, 1, 3),
(313, 13, 28, 'item', '我註冊了一個賬號但是卻沒有收到驗證郵件！', '這很有可能是Tracker所在的伺服器網路出現了問題。你可以填寫<a href=\"confirm_resend.php\" class=\"faqlink\">這個表格</a>讓伺服器重發驗證郵件。<br />\r\n通常沒有得到確認的註冊帳戶會在24小時后被移除，所以你可以在第二天重試。需要注意的是，如果你第一次沒有收到確認信，第二次有很大的可能仍然無法收到確認信，所以換一個E-mail位址是一個不錯的主意。', 1, 2, 1),
(314, 14, 28, 'item', '我忘記了我的用戶名/密碼了，能幫我找回來么？', '請填寫<a class=\"faqlink\" href=\"recover.php\">這個表單</a>，我們將把登入詳情發還給你。', 1, 2, 2),
(315, 15, 28, 'item', '我可以給我的賬號改個名字么？', '我們并不支援給賬號改名。', 1, 2, 3),
(316, 16, 28, 'item', '你可以移除一個（已確認的）賬號么？', '我們一般不提供該類服務，所以不要要求移除任何一個被你邀請的帳號。', 1, 2, 4),
(317, 17, 28, 'item', '那么，什么是我的分享率（Ratio）？', '就在頁面功能割區的下面。<br />\r\n<br />\r\n<img src=\"pic/ratio.png\" alt=\"ratio\" />\r\n<br />\r\n<br />\r\n區分你的整體分享率和獨立分享率是很重要的。整體分享率關注的是自從你加入網站以來，賬號的整體上傳與下載量。而獨立分享率則針對每一個你正在下載或做種的檔案。\r\n<br />\r\n<br />\r\n你可能看到兩種象徵式來代替數字：\"Inf.\"，這個是無限（Infinity）的縮寫，意思是你的下載量為0位元組，而上傳量則是任意一個非零的值(上傳量/下載量=無窮大)；\"---\"，應該被視為“不可用”，這說明了你的下載量和上傳量都是0位元組。(上傳量/下載量=0/0 這是一個不確定的量)。\r\n', 1, 2, 5),
(318, 18, 28, 'item', '為什么我的IP位址察看在我的個人資訊頁面上？', '只有你自己和網站Moderator及以上的管理員可以看到你的IP位址和Email。普通用戶是看不到這些資訊的。', 1, 2, 6),
(321, 21, 28, 'item', '為什么我的“可連線”是“否”？（以及為什么我需要關注這個問題？）', 'Tracker伺服器認為你在防火牆后，或者在NAT橋接后，并且無法接收其他Peer的連線要求。\r\n<br />\r\n<br />\r\n這意味着其他的大批Peer無法連線到你，只能由你連線到他們。更糟糕的情況是，如果兩個Peer都處于這樣的狀態，他們將完全無法連線到對方。這對于整體速度有着非常不利的影響。\r\n<br />\r\n<br />\r\n對于這個問題，有以下解決方式：對于防火牆，開啟用于接收連線的通訊埠（即你在BT用戶端中定義的通訊埠）；對于NAT，你需要配置NAT伺服器使用Basic NAT方式而不是NAPT（不同的路線有着不同的執行方式。翻閱你的路線文件或客服論壇。你也可以在<a class=\"faqlink\" href=\"http://portforward.com/\">PortForward</a>找到關于此問題的大量資訊）。\r\n\r\n\r\n\r\n\r\n\r\n', 1, 2, 9);
INSERT INTO `faq` (`id`, `link_id`, `lang_id`, `type`, `question`, `answer`, `flag`, `categ`, `order`) VALUES
(322, 22, 28, 'item', '不同的用戶等級代表了什么含義？', '<table cellspacing=\"3\" cellpadding=\"0\">\r\n<tr>\r\n<td class=\"embedded\" width=\"200\" valign=\"top\">&nbsp; <b class=\"Peasant_Name\">Peasant</b></td>\r\n<td class=\"embedded\" width=\"5\">&nbsp;</td>\r\n<td class=\"embedded\"> 被降級的用戶，他們有14天時間來提升分享率，否則他們會被踢。無法發表趣味盒內容；無法申請友情鏈結；無法上傳字幕。\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"User_Name\">User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">新用戶的預設級別。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"PowerUser_Name\">Power User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">得到一個邀請名額；可以直接發布種子；可以檢視NFO文件；可以檢視用戶清單；可以要求續種； 可以傳送邀請； 可以檢視排行榜；可以檢視其他用戶的種子曆史(如果用戶隱私等級未設定為\"強\")； 可以移除自己上傳的字幕。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"EliteUser_Name\">Elite User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\"><b class=\"EliteUser_Name\">Elite User</b>及以上用戶封存賬號后不會被移除。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"CrazyUser_Name\">Crazy User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">得到兩個邀請名額；可以在做種/下載/發布的時候選取匿名型態。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"InsaneUser_Name\">Insane User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">可以檢視普通日誌。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"VeteranUser_Name\">Veteran User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">得到三個邀請名額；可以檢視其他用戶的評論、帖子曆史。<b class=\"VeteranUser_Name\">Veteran User</b>及以上用戶會永遠保留賬號。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"ExtremeUser_Name\">Extreme User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">可以更新過期的外部資訊；可以檢視Extreme User論壇。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"UltimateUser_Name\">Ultimate User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">得到五個邀請名額。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"NexusMaster_Name\">Nexus Master</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">得到十個邀請名額。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\"  valign=\"top\">&nbsp; <img class=\"star\" src=\"pic/trans.gif\" alt=\"Star\" /></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">為網站捐款的主。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"VIP_Name\">貴賓(VIP)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">和<b class=\"NexusMaster_Name\">Nexus Master</b>擁有相同許可權并被認為是精英成員。免除自動降級。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"User_Name\">其他</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">自訂等級。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Retiree_Name\">養老族(Retiree)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">退休后的管理組成員。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Uploader_Name\">發布員(Uploader)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">專注的發布者。免除自動降級；可以檢視匿名用戶的真實身份。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Moderator_Name\">總版主(Moderator)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">可以檢視管理組郵箱、舉報郵箱；管理趣味盒內容、投票內容；可以編輯或移除任何發布的種子；可以管理候選；可以管理論壇帖子、用戶評論；可以檢視機密日誌；可以移除任何字幕；可以管理日誌中的程式碼、史冊；可以檢視用戶的邀請記錄；可以管理用戶帳號的一般資訊。<b>無法</b>管理友情鏈結、最近訊息、論壇版塊；<b>無法</b>將種子設為置頂或促銷；<b>無法</b>檢視用戶IP或Email等機密資訊；無法移除賬號。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Administrator_Name\">管理員(Administrator)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">除了無法改變網站設定、管理捐贈外，可以做任何事。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"SysOp_Name\">維護開發員(Sysop)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">網站開發/維護人員，可以改變網站設定，無法管理捐贈。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"StaffLeader_Name\">主管(Staff Leader)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">網站主管，可以做任何事。</td>\r\n</tr>\r\n</table>', 1, 2, 10),
(323, 23, 28, 'item', '提升和降級又是怎樣被執行的呢？', '<table cellspacing=\"3\" cellpadding=\"0\">\r\n<tr>\r\n<td class=\"embedded\" width=\"200\" valign=\"top\">&nbsp; <b class=\"Peasant_Name\">Peasant</b></td>\r\n<td class=\"embedded\" width=\"5\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">當以下情況時將被自動降至本級：<br />\r\n1.如果你已經下載了超過50GB，你應該有大于0.4的分享率。<br />\r\n2.如果你已經下載了超過100GB，你應該有大于0.5的分享率。<br />\r\n3.如果你已經下載了超過200GB，你應該有大于0.6的分享率。<br />\r\n4.如果你已經下載了超過400GB，你應該有大于0.7的分享率。<br />\r\n5.如果你已經下載了超過800GB，你應該有大于0.8的分享率。</td>\r\n</tr>\r\n\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"PowerUser_Name\">Power User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必須註冊至少4周，并且下載至少50G，分享率大于1.05。<br />\r\n當條件符合時將被自動提升。注意，無論何時，如果你的分享率低于0.95，你將自動降級。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"EliteUser_Name\">Elite User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必須註冊至少8周，并且下載至少120G，分享率大于1.55。\r\n<br />\r\n當條件符合時將被自動提升。注意，無論何時，如果你的分享率低于1.45，你將自動降級。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"CrazyUser_Name\">Crazy User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必須註冊至少15周，并且下載至少300G，分享率大于2.05。\r\n<br />\r\n當條件符合時將被自動提升。注意，無論何時，如果你的分享率低于1.95，你將自動降級。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"InsaneUser_Name\">Insane User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必須註冊至少25周，并且下載至少500G，分享率大于2.55。<br />\r\n當條件符合時將被自動提升。注意，無論何時，如果你的分享率低于2.45，你將自動降級。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"VeteranUser_Name\">Veteran User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必須註冊至少40周，并且下載至少750G，分享率大于3.05。<br />\r\n當條件符合時將被自動提升。注意，無論何時，如果你的分享率低于2.95，你將自動降級。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"ExtremeUser_Name\">Extreme User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必須註冊至少60周，并且下載至少1TB，分享率大于3.55。<br />\r\n當條件符合時將被自動提升。注意，無論何時，如果你的分享率低于3.45，你將自動降級。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"UltimateUser_Name\">Ultimate User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必須註冊至少80周，并且下載至少1.5TB，分享率大于4.05。<br />\r\n當條件符合時將被自動提升。注意，無論何時，如果你的分享率低于3.95，你將自動降級。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"NexusMaster_Name\">Nexus Master</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必須註冊至少100周，并且下載至少3TB，分享率大于4.55。<br />\r\n當條件符合時將被自動提升。注意，無論何時，如果你的分享率低于4.45，你將自動降級。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <img class=\"star\" src=\"pic/trans.gif\" alt=\"Star\" /></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">只需捐款，詳見<a class=\"faqlink\" href=\"donate.php\">這裡</a>。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"VIP_Name\">貴賓(VIP)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">由管理員仔細斟酌后配置給他們認為對于網站某方面有特殊貢獻的用戶。<br />\r\n（任何索取貴賓等級的要求將被自動無視）</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"User_Name\">其他</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">用戶使用魔力值兌換，或由管理員仔細斟酌后授權。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Retiree_Name\">養老族(Retiree)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">由管理員授予。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Uploader_Name\">發布員(Uploader)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">由管理員配置(參見\'發布\'部分以了解詳情)。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Moderator_Name\">總版主(Moderator)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">無需多問，我們會找到你的！</td>\r\n</tr>\r\n</table>', 1, 2, 11),
(325, 25, 28, 'item', '為什么我的朋友無法加入？', '用戶數目有所限制（你可以檢視“首頁-&gt;網站資料-&gt;上限”）。當達到那個數目時，我們會停止接受新成員。<br />\r\n由于非活躍用戶(長期不使用賬號的用戶)引起賬號資源浪費，因此我們將清理該部分用戶，為其他想加入用戶騰出空間。<br />\r\n關于非活躍用戶清理規則，參照<a class=\"faqlink\" href=\"rules.php\">規則</a>。', 1, 2, 1),
(326, 26, 28, 'item', '怎樣自訂頭像？', '首先，找一個你喜歡的圖片，當然了它無法違反我們的<a class=\"faqlink\" href=\"rules.php\">規則</a>。然后你要找一個存放它的地方，比方說我們自己的<a class=\"faqlink\" href=\"bitbucket-upload.php\">上傳器</a>。出于伺服器負載的考慮，我們更希望你將圖片上傳到別的網站，然后將其URL黏貼到你的<a class=\"faqlink\" href=\"usercp.php?action=personal\">控制面板</a>的頭像URL部分。 <br />\r\n<br />\r\n請不要為了僅僅測試頭像而發帖。如果一切順利，你將在你的詳情頁面看到它。', 1, 2, 1),
(327, 27, 28, 'item', '最常見的資料未能得到更新的原因', '<ul>\r\n<li>伺服器超載/未回應。只要嘗試着保持階段作業直到伺服器回復回應(不建議連續手動清除，這樣會加重伺服器負載)。</li>\r\n<li>你正在使用不穩定的用戶端。如果你想要使用測試版或者CVS版本，你需要自己承擔由此帶來的風險。</li>\r\n</ul>', 1, 3, 1),
(328, 28, 28, 'item', '最佳的嘗試', '<ul>\r\n<li>如果你目前正下載/上傳的種子并不在你的用戶詳情頁面中，你可以等一會或者強制進行手動更新。</li>\r\n<li>確保你正確地關閉了用戶端軟體，否則Tracker伺服器無法收到\"event=completed\"的訊號。</li>\r\n<li>如果Tracker伺服器掛了，不要停止上傳。只要在你結束用戶端之前伺服器回復工作，所有的資料都會得到正確地更新。</li>\r\n</ul>', 1, 3, 2),
(329, 29, 28, 'item', '我可以任意選取Bittorrent用戶端軟體么？', '根據<a class=\"faqlink\" href=\"aboutnexus.php\">NexusPHP</a>對常見BitTorrent用戶端的測試，目前本站Tracker<b>只允許</b>使用以下的BitTorrent用戶端軟體。<br />\r\n<a class=\"faqlink\" href=\"aboutnexus.php\">NexusPHP</a>的測試報告可<a class=\"faqlink\" href=\"http://www.nexusphp.com/wiki/%E5%AE%A2%E6%88%B7%E7%AB%AF%E6%B5%8B%E8%AF%95%E6%8A%A5%E5%91%8A\">在此檢視</a>。\r\n<br />\r\n<b>Windows:</b>\r\n<ul>\r\n<li><a class=\"faqlink\" href=\"http://azureus.sourceforge.net\">Azureus</a>: 2.5.0.4, 3.0.5.0, 3.0.5.2及后續版本</li>\r\n<li><a class=\"faqlink\" href=\"http://www.utorrent.com\">uTorrent</a>: 1.6.1, 1.7.5, 1.7.6, 1.7.7, 1.8Beta(Build 10364), 2.0(Build 17624)及后續版本</li>\r\n<li><a class=\"faqlink\" href=\"http://www.bittorrent.com\">BitTorrent</a>: 6.0.1, 6.0.2, 6.0.3及后續版本</li>\r\n<li><a class=\"faqlink\" href=\"http://deluge-torrent.org\">Deluge</a>: 0.5.9.1, 1.1.6及后續版本</li>\r\n<li><a class=\"faqlink\" href=\"http://rufus.sourceforge.net\">Rufus</a>: 0.6.9, 0.7.0及后續版本</li>\r\n</ul>\r\n<b>Linux:</b>\r\n<ul>\r\n<li><a class=\"faqlink\" href=\"http://azureus.sourceforge.net\">Azureus</a>: 2.5.0.4, 3.0.5.0, 3.0.5.2及后續版本</li>\r\n<li><a class=\"faqlink\" href=\"http://deluge-torrent.org\">Deluge</a>: 0.5.9.1, 1.1.6及后續版本</li>\r\n<li><a class=\"faqlink\" href=\"http://rufus.sourceforge.net\">Rufus</a>: 0.6.9, 0.7.0及后續版本</li>\r\n<li><a class=\"faqlink\" href=\"http://www.transmissionbt.com\">Transmission</a>: 1.21及后續版本</li>\r\n<li><a class=\"faqlink\" href=\"http://libtorrent.rakshasa.no\">rTorrent</a>: 0.8.0（配合libtorrent 0.12.0或后續版本）及后續版本</li>\r\n<li><a class=\"faqlink\" href=\"http://www.rahul.net/dholmes/ctorrent/\">Enhanced CTorrent</a>: 3.3.2及后續版本</li>\r\n</ul>\r\n<b>MacOS X:</b>\r\n<ul>\r\n<li><a class=\"faqlink\" href=\"http://azureus.sourceforge.net\">Azureus</a>: 2.5.0.4, 3.0.5.0, 3.0.5.2及后續版本</li>\r\n<li><a class=\"faqlink\" href=\"http://www.transmissionbt.com\">Transmission</a>: 1.21及后續版本</li>\r\n<li><a class=\"faqlink\" href=\"http://sourceforge.net/projects/bitrocket/\">BitRocket</a>: 0.3.3(32)及后續版本</li>\r\n</ul>\r\n<b>Symbian (僅供測試):</b>\r\n<ul>\r\n<li><a class=\"faqlink\" href=\"http://amorg.aut.bme.hu/projects/symtorrent\">SymTorrent</a>: 1.41及后續版本</li>\r\n</ul>\r\n<br />\r\n\r\n<b>以上用戶端在https支援方面</b>\r\n<ul>\r\n<li>uTorrent 1.61: 無法准確解析https的tracker, 同時在使用會將自己識別為uTorrent 1.5</li>\r\n<li>Rufus: 沒有https支援, 并且已經几年沒有繼續開發</li>\r\n<li>rtorrent: 需要手工設定SSL證書, 詳細資訊請自行查閱其官方網站說明</li>\r\n</ul>\r\n\r\n<br />\r\n\r\n同時請儘量避免使用處于測試期的用戶端軟體, 如uTorrent 1.8.0B。\r\n\r\n為了從本站得到最好的下載體驗,我們高度建議<a class=\"faqlink\" href=\"http://www.utorrent.com/download.php\">uTorrent</a> 以及<a class=\"faqlink\" href=\"http://azureus.sourceforge.net/download.php\">Azureus</a>這兩個軟體的最新穩定版。', 1, 5, 3),
(330, 30, 28, 'item', '為什么我正在下載/做種的一個種子會在我的詳情頁面中被列出多次？', '如果因為某些原因(比方說死機，用戶端失去回應)你的用戶端非正常結束并且你又重新開啟它，它會被配置到一個全新的Peer ID, 這樣它察看為一個全新的種子。而舊的種子將永遠不會收到“event=completed”或“event=stopped”的訊號，因此將一直被列出直到Tracker清理逾時的Peer。 無視了它就可以了，它最后會消失的。', 1, 3, 4),
(331, 31, 28, 'item', '為什么我已經完成/取消的種子仍然在我的詳情頁面裡？', '有一些用戶端，比如說TorrentStorm和Nova Torrent，在取消或者完成一個工作的時候無法向Tracker伺服器正確傳送訊號。在那樣的情況下，Tracker伺服器將一直保持等待訊號的狀態（因此會一直列出種子的狀態為做種/下載的狀態）直到Tracker清理逾時的Peer。無視了它就可以了，它最后會消失的。', 1, 3, 5),
(333, 33, 28, 'item', '多IP（我可以從不同的電腦登入/下載嗎？）', '是的，目前Tracker伺服器支援單個用戶從任意個數的IP位址同時存取/下載。<br />\r\n然而，對于單種是有限制的。對于每個種子，最多允許3個做種的連線，最多只允許1個下載的連線（這意味着，對于某個種子你一次只能在一個地方下載）。', 1, 3, 1),
(336, 36, 28, 'item', '為什么我無法發布種子？', '請看<a class=\"faqlink\" href=\"rules.php\">規則</a>。', 1, 4, 1),
(337, 37, 28, 'item', '我需要滿足哪些條件才能加入發布小組呢？', '你所必須滿足的條件：\r\n<ul>\r\n<li>具有穩定的資源來源</li>\r\n<li>平均每周資源發布數量不少于5個</li>\r\n</ul>\r\n你必須確保發布的檔案符合以下特征:\r\n<ul>\r\n<li>不超過7天之前</li>\r\n<li>你必須要有做種的能力，或者可以確保至少有效供種24小時。</li>\r\n<li>你需要有至少達到2MBit的上傳頻寬。</li>\r\n</ul>\r\n如果你認為你符合以上條件，那么不要猶豫，<a class=\"faqlink\" href=\"contactstaff.php\">聯繫管理組</a>吧。<br />\r\n<b>記住！</b> 仔細填寫你的申請！確保申請中包含你的上傳速度以及你計划發布的內容的類別。<br />\r\n只有仔細填寫并且經過慎重考慮的申請才會納入我們的視野。', 1, 4, 2),
(338, 38, 28, 'item', '我可以發布你們這裡的種子到別的Tracker伺服器么？', '無法。我們是一個封閉的、限制用戶數的社區。只有註冊用戶才能夠使用我們的Tracker。將我們的種子檔案發布到其他Tracker伺服器是徒勞的，因為絕大多數嘗試下載這些檔案的人將無法連線到我們的伺服器。將我們的種子發布到其他Tracker只讓那裡的用戶惱怒（因為無法下載）并且對我們產生敵對情緒，所以這種行為是我們是無法容忍的。<br />\r\n<br />\r\n如果其他網站的管理員向我們舉報我們的種子被發布在他們的網站上，對此負責的用戶將因此被移出我們的社區。<br />\r\n<br />\r\n但是對于從我們這裡下載得到的檔案，你可以隨意操控它們（發布者明確說明為<b>獨占</b>的資源除外）。你可以制作另一個種子，寫入其他Tracker的位址，并發布到你喜歡的網站上。', 1, 4, 3),
(339, 39, 28, 'item', '下載來的檔案該怎么開啟？', '在這份<a class=\"faqlink\" href=\"formats.php\">指引</a>裡面找找看吧。', 1, 5, 1),
(340, 40, 28, 'item', '我下載了一部電影，但是不明白CAM/TS/TC/SCR是什么意思?', '在這份<a class=\"faqlink\" href=\"videoformats.php\">指引</a>裡面找找看吧。', 1, 5, 2),
(341, 41, 28, 'item', '為什么一個可用的種子忽然就消失了？', '以下原因都會導致這個現象的出現:<br />\r\n(<b>1</b>) 按照<a class=\"faqlink\" href=\"rules.php\">網站規則</a>，這個種子不符合規則已被移除。\r\n<br />\r\n(<b>2</b>) 發布者因為檔案存在問題而移除了它。一般來說，發布者會發布一個交替的版本的。<br />\r\n(<b>3</b>) 在長時間斷種后種子被自動移除了。', 1, 5, 3),
(342, 42, 28, 'item', '我該怎樣續傳檔案或者給一個檔案續種呢？', '開啟副檔名為.torrent的檔案，當你的用戶端軟體詢問儲存的目錄時，選取已經存在的檔案存放的目錄，它就能夠開始續傳/續種了。', 1, 5, 4),
(343, 43, 28, 'item', '為什么我的下載有時候停在99%?', '你所下載到的片段越多，搜尋擁有你所缺少的片段的同伴就將變得越困難。這就是為什么有時候在下載即將完成的時候，速度會變得非常慢，甚至完全停止了。只要耐心等候，或早或晚剩餘的部分一定能夠下載到的。', 1, 5, 5),
(344, 44, 28, 'item', '\"部分哈希驗證出錯\"這條資訊是什么意思？', 'BT的用戶端會檢查它所收到的資料的完整性。如果某一個片段在驗證中出錯，那么這個片段將被重新下載。偶爾的哈希驗證錯誤是非常常見的現象，不用擔心。<br />\r\n<br />\r\n有些用戶端有屏蔽向你傳送錯誤資料的其他用戶端的功能。如果有這個選項，最好開啟它。因為這樣可以保證如果某個同伴經常向你傳送錯誤的資料時，它將會被屏蔽。', 1, 5, 6),
(345, 45, 28, 'item', '100MB大小的種子，我怎么下了120MB的東西回來?', '參見哈希驗證失敗的那個問題。如果你的用戶端收到了錯誤的資料，那么它將會重新下載這一部分，因此總下載量有可能比種子大小略微大一些。確保“屏蔽傳送錯誤資料的用戶端”的那個選項被開啟了，這樣可以減少其餘的下載。', 1, 5, 7),
(346, 46, 28, 'item', '為什么我的用戶端的Tracker伺服器狀態出現\"Your ratio is too low! You need to wait xx h to start\"的錯誤？', '在<b>新</b>種子被上傳到Tracker伺服器之后，有一些用戶必須等一些時間才能開始下載。<br>\r\n這個延遲只會影響那些分享率較低且下載量大于10G的用戶。<br />\r\n<br />\r\n<table cellspacing=\"3\" cellpadding=\"0\">\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.4</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">延遲</td>\r\n	<td class=\"embedded\" width=\"100\">24小時</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.5</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">延遲</td>\r\n	<td class=\"embedded\" width=\"100\">12小時</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.6</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">延遲</td>\r\n	<td class=\"embedded\" width=\"100\">6小時</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.8</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">延遲</td>\r\n	<td class=\"embedded\" width=\"100\">3小時</td>\r\n</tr>\r\n</table>', 0, 5, 8),
(347, 47, 28, 'item', '為什么發生了這個錯誤？ \"Port xxxx is blacklisted\"?', '你的用戶端向Tracker伺服器報告它正在使用某個預設的BT協定通訊埠(6881-6889)或是任何其他常見P2P通訊埠來作為連線通訊埠。<br />\r\n<br />\r\n本站不允許這些通常被P2P協定預設使用的通訊埠。原因是目前ISP常常對這些通訊埠進行限速。<br />\r\n<br />\r\n被屏蔽的通訊埠如下：<br />\r\n<br />\r\n<table cellspacing=\"3\" cellpadding=\"0\">\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">Direct Connect</td>\r\n	<td class=\"embedded\" width=\"100\">411 - 413</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">BitTorrent</td>\r\n	<td class=\"embedded\" width=\"100\">6881 - 6889</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">Kazza</td>\r\n	<td class=\"embedded\" width=\"100\">1214</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">Gnutella</td>\r\n	<td class=\"embedded\" width=\"100\">6346 - 6347</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">Emule</td>\r\n	<td class=\"embedded\" width=\"100\">4662</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">WinMX</td>\r\n	<td class=\"embedded\" width=\"100\">6699</td>\r\n  </tr>\r\n</table>\r\n<br />\r\n要使用我們的Tracker伺服器，你必須配置你的用戶端使用未在上面列出的通訊埠範圍(從49152到65535都是不錯的選取，參看<a class=\"faqlink\" href=\"http://www.iana.org/assignments/port-numbers\">IANA</a>)。注意某些用戶端，如Azureus 2.0.7.0或更高版本，對所有的種子都使用同一通訊埠。而其他大多數用戶端為每一個種子開放一個通訊埠，你在選取通訊埠範圍應考慮到這個問題（一般來說通訊埠範圍小于10。設定一個過大的範圍并不一定有好處，而且可能有安全隱患)。 <br />\r\n<br />\r\n這些通訊埠是用于同伴間通訊的，而非用于用戶端連線到Tracker伺服器。因此這個改動并不會影響你使用其他Tracker伺服器（事實上，它甚至可能<i>加快</i>所有Tracker伺服器上種子的速度）。你的用戶端也仍然能夠連線到那些使用預設通訊埠的同伴。如果你的用戶端不支援自己自訂通訊埠，那么換一個吧。<br />\r\n<br />\r\n不要向我們詢問，或者在論壇裡面提問究竟應該選取什么通訊埠。我們的用戶選取的通訊埠越隨機，ISP就越難以捉摸清楚我們使用的通訊埠，從而無法對我們的通訊埠進行限速。如果我們只是簡單地規定一個範圍，那么ISP又會很快對那個範圍內的通訊埠進行限速的。<br />\r\n<br />\r\n最后還要說的是，記得在你的路線和/或防火牆上開啟你選取的通訊埠，如果你有這些東西的話。', 1, 5, 9),
(348, 48, 28, 'item', '那么這個呢？ “IO錯誤 - [錯誤號13] 許可被拒絕”？', '如果你只是想要解決這個問題的話，重新啟動你的電腦應該就可以了。否則的話，繼續讀下去。<br />\r\n<br />\r\nIO錯誤指的是匯入-匯出錯誤，這是一個檔案系統錯誤，而非來自我們的Tracker伺服器。當你的用戶端由于某些原因無法開啟種子中未下載完成的檔案時，這個錯誤就會發生。 通常原因是用戶端的兩個實例同時在執行：當上一次關閉用戶端時因為某種原因它沒有被真正關閉，從而始終在背景執行。因此檔案被鎖定，使得新的實例無法開啟這個檔案。<br />\r\n<br />\r\n另外一個不常出現的原因是因為老舊的FAT檔案系統。某些系統崩潰可能導致未下載完成的檔案損壞，接着就出現了這個錯誤。執行一次scandisk應該可以解決這個問題。注意，只有當你使用Windows 9X作業系統（只支援FAT檔案系統）或者在Windows NT/2000/XP中使用FAT檔案系統的時候才比對可能出現這個問題。NTFS檔案系統要健壯許多，不太可能出現這樣的問題。', 1, 5, 10),
(350, 50, 28, 'item', '不要馬上下載新發布的種子', '下載速度主要取決于上傳者/下載者比(SLR)。如果是種子是新發布的且非常受歡迎而SLR又很低的種子，下載速度低是常見的問題。<br />\r\n<br />\r\n請牢記你不喜歡低速下載。所以多<b>上傳</b>讓別人不用忍耐同樣的困擾。\r\n<br />\r\n<br />由其是當你的頻寬較窄時，不要馬上下載新發布的種子。最好的下載速度通常在一個種子生命周期的一半時出現，此時SLR達到最大值（不過，這時下載的缺點是你的上傳量不會很多。究竟如何平衡優點與缺點，取決于你自己)。', 1, 6, 1),
(351, 51, 28, 'item', '限制上傳速度', '上傳速度將從以下兩種方式顯著影響下載速度：\r\n<ul>\r\n    <li>Bittorrent的同伴傾向于回饋那些給它們提上傳的同伴。這就意味着如果A和B正在同時下載一個檔案，而A又在高速向B傳輸資料，那么B將會嘗試着回報A。因此高速上傳將導致高速下載。</li>\r\n\r\n    <li>由于TCP協定的工作方式，當A正從B下載某些東西的時候，A必須不停地向B傳送成功收到B所傳送來的資料的訊號（被稱為確認──ACK ── 某種“已收到”的資訊)。如果A沒有傳送ACK訊號，那么B將暫停向A傳送資料并且進入等候狀態。如果A正在全速上傳，很有可能沒有用來傳送ACK訊號的頻寬，因此ACK訊號被耽擱。在這種情況下，過高速度的上傳導致了低速的下載。</li>\r\n</ul>\r\n實際的效果是以上兩個原因的結合。上傳速度應該在保證ACK能正常傳送的前提下被設得儘量高。 <b>一個很好的實踐理論是保持上傳速度在理論上限的80%。</b>你也可以細細研究什么是最適合你的速度（同時也請記住高速上傳對于你的分享率很有輔助說明）。<br />\r\n<br />\r\n如果你正在執行一個以上的種子工作，你應該考慮的是全域上傳速度。某些用戶端能限制了全域上傳速度，其他的則能對每一個種子分別進行設定。了解你的用戶端。如果你正在使用你的電腦做別的某些應用（比方說上網或者從FTP拖東西），也需考慮一下它們對于全域上傳的影響。', 1, 6, 2),
(352, 52, 28, 'item', '限制同時連線數', '某些作業系統（例如Windows 9X）對于大量連線數支援不完善，甚至有可能因此而崩潰。也有一些家用路線（尤其當執行着NAT以及/或者開啟防火牆狀態檢查服務時）會因大量連線數而變得很慢或者崩潰。對于連線數沒有固定的最佳值，你可以試試看60或者100。記住這些連線數是累加的，所以如果你的用戶端執行了兩個階段作業，這兩個數字要加在一起。', 1, 6, 3),
(353, 53, 28, 'item', '限制同時上傳數', '上傳數難道和連線數有什么不一樣嗎？是的，兩者是不同的。連線數限制了你的用戶端所能對話以及/或者下載的同伴數。上傳數則限制了你的用戶端實際能上傳的同伴數。理想的數值一般要比連線數低許多，并且與你的物理頻寬高度相關。', 1, 6, 4),
(354, 54, 28, 'item', '那怎么辦？等待一會吧', '如我們在上面所解譯的，在BT下載過程中一個同伴更加傾向于回報那些上傳給它的同伴。當你開始一個新的下載工作時，你沒有檔案片斷提高給其他同伴，因此他們通常會無視你。這使得開始階段的下載非常緩慢，由其是當你所連線到的同伴只有很少是（或者沒有）做種者。一旦你獲得了一些能用于共用的檔案片斷，下載速度會有所改觀。', 1, 6, 5),
(355, 55, 28, 'item', '為什么在我下載的時候瀏覽網頁速度如此之慢？', '你的下載頻寬是有限的。如果你正在下載一個速度很快的種子，它几乎肯定將占滿你的下載頻寬。這是瀏覽網頁顯然就會變慢。很多BT用戶端允許你限制下載速度，你可以試試。<br />\r\n<br />\r\n瀏覽網頁只是作為舉例之一，同樣的問題也會出現在游戲，即時通訊軟體上......', 1, 6, 6),
(356, 56, 28, 'item', '什么是代理？', '基本上說，代理就是中間人。當你通過代理存取某個網站的時候，你的要求將首先被傳送到代理處，然后由代理轉寄到你所要求的網站，而不是你直接連通到網站。下面是几種典型的代理分類（朮語不是那么的規格）：<br />\r\n<br />\r\n<table cellspacing=\"3\" cellpadding=\"0\">\r\n <tr>\r\n	<td class=\"embedded\" valign=\"top\" width=\"100\">&nbsp;透通代理</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">透通代理在用戶端無需配置。他將自動把80通訊埠的資訊重導到代理(有時候也作為非匿名代理的同義詞)；</td>\r\n </tr>\r\n <tr>\r\n	<td class=\"embedded\" valign=\"top\">&nbsp;顯式代理</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">瀏覽器必須經過配置才能使用代理；</td>\r\n </tr>\r\n <tr>\r\n	<td class=\"embedded\" valign=\"top\">&nbsp;匿名代理</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">代理將不會把用戶記號傳送至伺服器端 (HTTP_X_FORWARDED_FOR頭旗標將不被傳送。伺服器也因此看不到你的IP)；</td>\r\n </tr>\r\n <tr>\r\n	<td class=\"embedded\" valign=\"top\">&nbsp;高度匿名代理</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">代理將不會把用戶記號或代理記號傳送至伺服器端 (HTTP_X_FORWARDED_FOR和HTTP_VIA and HTTP_PROXY_CONNECTION頭旗標將不被傳送。伺服器看不到你的IP，甚至不知道你正在使用代理)；</td>\r\n </tr>\r\n <tr>\r\n	<td class=\"embedded\" valign=\"top\">&nbsp;公用</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">(不言自明了)。</td>\r\n </tr>\r\n</table>\r\n<br />\r\n透通代理可能是匿名的，也可能是非匿名的，且匿名也有相應的等級。', 1, 7, 1),
(357, 57, 28, 'item', '我該怎樣發現自己正處于一個（透通的/匿名的）代理后面？', '試試看<a href=\"http://proxyjudge.org\" class=\"faqlink\">ProxyJudge</a>。它列出了伺服器端從你這裡所收到的HTTP的頭旗標。相關的几個旗標是HTTP_CLIENT_IP，HTTP_X_FORWARDED_FOR和REMOTE_ADDR。', 1, 7, 2),
(375, 75, 28, 'item', '我的“可連線”是“否”儘管我并沒有NAT或者防火牆？', 'Tracker伺服器在搜尋你的真實IP方面非常有天賦。但是這需要代理髮送HTTP頭旗標HTTP_X_FORWARDED_FOR。如果你的ISP的代理沒有這么做的話，Tracker伺服器將把代理的IP當作你的用戶端的IP。所以當你登入之后，Tracker伺服器嘗試連線你的用戶端來確信你沒有使用NAT/防火牆，伺服器實際上將嘗試連線代理的IP（使用你的BT用戶端報告的接收連線通訊埠）。很自然地，代理伺服器并沒有監聽那個通訊埠。如此連線會失敗，而Tracker伺服器也因此認為你使用了NAT/防火牆。', 1, 7, 3),
(401, 1, 6, 'categ', 'Site information', '', 1, 0, 1),
(402, 2, 6, 'categ', 'User information', '', 1, 0, 2),
(403, 3, 6, 'categ', 'Stats', '', 1, 0, 3),
(404, 4, 6, 'categ', 'Uploading', '', 1, 0, 4),
(405, 5, 6, 'categ', 'Downloading', '', 1, 0, 5),
(406, 6, 6, 'categ', 'How can I improve my download speed?', '', 1, 0, 6),
(407, 7, 6, 'categ', 'My ISP uses a transparent proxy. What should I do?', '', 1, 0, 7),
(408, 8, 6, 'categ', 'Why can\'t I connect? Is the site blocking me?', '', 1, 0, 8),
(409, 9, 6, 'categ', 'What if I can\'t find the answer to my problem here?', '', 1, 0, 9),
(410, 10, 6, 'item', 'What is this bittorrent all about anyway? How do I get the files?', 'Check out <a class=\"faqlink\" href=\"http://www.btfaq.com/\">Brian\'s BitTorrent FAQ and Guide</a>.', 1, 1, 1),
(411, 11, 6, 'item', 'Where does the donated money go?', 'All donated money goes to the cost of server that this tracker is on.', 1, 1, 2),
(412, 12, 6, 'item', 'Where can I get a copy of the source code?', 'This tracker is powered by NexusPHP. If you like to use NexusPHP to power your tracker, <a class=\"faqlink\" href=\"aboutnexus.php\">Contact Us</a>.<br />\r\nThe first stage of NexusPHP forks from TBSource. You may find more information about TBSource at <a class=\"faqlink\" href=\"http://www.tbdev.net/\">TBDev.net</a>.', 1, 1, 3),
(413, 13, 6, 'item', 'I registered an account but did not receive the confirmation e-mail!', 'One possible reason may be that the network around the tracker has encountered some problems. You can use <a href=\"confirm_resend.php\" class=\"faqlink\">this form</a> ask the tracker to resend confirmation e-mail.<br />\r\nTypically registered users would be deleted after 24 hours if not confirmed, so you may try again the next day. Note though that if you didn\'t receive the email the first time it will probably not succeed the second time either so you should really try another email address.', 1, 2, 1),
(414, 14, 6, 'item', 'I\'ve lost my user name or password! Can you send it to me?', 'Please use <a class=\"faqlink\" href=\"recover.php\">this form</a> to have the login details mailed back to you.', 1, 2, 2),
(415, 15, 6, 'item', 'Can you rename my account? ', 'No, we do not rename accounts. Don\'t ask for it.', 1, 2, 3),
(416, 16, 6, 'item', 'Can you delete my (confirmed) account?', 'No, we don\'t delete accounts. Don\'t ask for it.', 1, 2, 4),
(417, 17, 6, 'item', 'So, what\'s MY ratio?', 'It\'s on the left-top of pages.<br />\r\n<br />\r\n<img src=\"pic/ratio.png\" alt=\"ratio\" />\r\n<br />\r\n<br />\r\nIt\'s important to distinguish between your overall ratio and the individual ratio on each torrent you may be seeding or leeching. The overall ratio takes into account the total uploaded and downloaded from your account since you joined the site. The individual ratio takes into account those values for each torrent.\r\n<br />\r\n<br />\r\nYou may see two symbols instead of a number: \"Inf.\", which is just an abbreviation for Infinity, and means that you have downloaded 0 bytes while uploading a non-zero amount (ul/dl becomes infinity); \"---\", which should be read as \"non-available\", and shows up when you have both downloaded and uploaded 0 bytes (ul/dl = 0/0 which is an indeterminate amount).\r\n', 1, 2, 5),
(418, 18, 6, 'item', 'Why is my IP displayed on my details page?', 'Only you and the site moderators can view your IP address and email. Regular users do not see that information.', 1, 2, 6),
(421, 21, 6, 'item', 'Why am I listed as not connectable? (And why should I care?)', 'The tracker has determined that you are firewalled or NATed and cannot accept incoming connections. \r\n<br />\r\n<br />\r\nThis means that other peers in the swarm will be unable to connect to you, only you to them. Even worse, if two peers are both in this state they will not be able to connect at all. This has obviously a detrimental effect on the overall speed. \r\n<br />\r\n<br />\r\nThe way to solve the problem involves opening the ports used for incoming connections (the same range you defined in your client) on the firewall and/or configuring your NAT server to use a basic form of NAT for that range instead of NAPT (the actual process differs widely between different router models. Check your router documentation and/or support forum. You will also find lots of information on the subject at <a class=\"faqlink\" href=\"http://portforward.com/\">PortForward</a>).\r\n\r\n\r\n\r\n\r\n\r\n', 1, 2, 9),
(422, 22, 6, 'item', 'What are the different user classes?', '<table cellspacing=\"3\" cellpadding=\"0\">\r\n<tr>\r\n<td class=\"embedded\" width=\"200\" valign=\"top\">&nbsp; <b class=\"Peasant_Name\">Peasant</b></td>\r\n<td class=\"embedded\" width=\"5\">&nbsp;</td>\r\n<td class=\"embedded\"> Demoted users. They must improve their ratio within 30 days or they will be banned. Cannot post funbox item, apply for links or upload subtitles.\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"User_Name\">User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">The default class of new members. </td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b  class=\"PowerUser_Name\">Power User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Get a invitation. Can upload torrents, view NFO files, view user list, ask for reseed, send invitation, access Power User and External Trackers forums, view Top 10, view other users\' torrent history (if user\'s privacy level is not set \'strong\'), delete subtitle uploaded by oneself.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"EliteUser_Name\">Elite User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\"><b class=\"EliteUser_Name\">Elite User</b> or above would never be deleted if parked.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"CrazyUser_Name\">Crazy User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Get two invitations. Can be anonymous when seeding/leeching/uploading. </td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"InsaneUser_Name\">Insane User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Can view general logs.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"VeteranUser_Name\">Veteran User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Get three invitations. Can view other users\' history of comments and forum posts. <b class=\"VeteranUser_Name\">Veteran User</b> or above would never be deleted whether parked or not.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b  class=\"ExtremeUser_Name\">Extreme User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Can update outdated external information and access Extreme User forum.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b  class=\"UltimateUser_Name\">Ultimate User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Get 5 invitations.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"NexusMaster_Name\">Nexus Master</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Get 10 invitations.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <img class=\"star\" src=\"pic/trans.gif\" alt=\"Star\" /></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Has donated money to this tracker.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b  class=\"VIP_Name\">VIP</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">Same privileges as <b class=\"NexusMaster_Name\">Nexus Master</b> and is considered an Elite Member of this tracker. Immune to automatic demotion.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Retiree_Name\">Retiree</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Former staff members.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"User_Name\">Other</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Customized title. </td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b  class=\"Uploader_Name\">Uploader</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Dedicated uploader, immune to automatic demotion. Can view who anonymous ones are.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b  class=\"Moderator_Name\">Moderator</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">Can view staffbox and reportbox, manage funbox and polls, edit and delete any uploaded torrent, manage offers, manage forum posts and user comments, view confidential logs, delete any uploaded subtitle, manage code updates and chronicles at logs, view users\' invitation history, change general user account information. <b>Cannot</b> manage links,recent news or forums. <b>Cannot</b> set torrents sticky or on promotion.<b>Cannot</b> view users\' confidential information (e.g. IP address and Email address). <b>Cannot</b> delete user account.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b  class=\"Administrator_Name\">Administrator</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Other than changing site settings and managing donation, can do just about anything.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b  class=\"SysOp_Name\">SysOp</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Dedicated site developer. Except managing donation, can do anything (including changing site settings)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b  class=\"StaffLeader_Name\">Staff Leader</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">The boss. Can do anything.</td>\r\n</tr>\r\n</table>', 1, 2, 10),
(423, 23, 6, 'item', 'How does this promotion thing work anyway?', '<table cellspacing=\\\\\\\\\\\\\\\"3\\\\\\\\\\\\\\\" cellpadding=\\\\\\\\\\\\\\\"0\\\\\\\\\\\\\\\">\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" width=\\\\\\\\\\\\\\\"200\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b class=\\\\\\\\\\\\\\\"Peasant_Name\\\\\\\\\\\\\\\">Peasant</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" width=\\\\\\\\\\\\\\\"5\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">User would be demoted to this class under any of the following circumstances:<br />\r\n1.Downloaded more than 50 GB and with ratio below 0.4<br />\r\n2.Downloaded more than 100 GB and with ratio below 0.5<br />\r\n3.Downloaded more than 200 GB and with ratio below 0.6<br />\r\n4.Downloaded more than 400 GB and with ratio below 0.7<br />\r\n5.Downloaded more than 800 GB and with ratio below 0.8</td>\r\n</tr>\r\n\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b  class=\\\\\\\\\\\\\\\"PowerUser_Name\\\\\\\\\\\\\\\">Power User</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">Must have been a member for at least 4 weeks, have downloaded at least 50GB and have a ratio at or above 1.05. The promotion is automatic when these conditions are met. <br />\r\nNote that you will be automatically demoted from this status if your ratio drops below 0.95 at any time.</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b class=\\\\\\\\\\\\\\\"EliteUser_Name\\\\\\\\\\\\\\\">Elite User</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">Must have been a member for at least 8 weeks, have downloaded at least 120GB and have a ratio at or above 1.55. The promotion is automatic when these conditions are met. <br />\r\nNote that you will be automatically demoted from this status if your ratio drops below 1.45 at any time.</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b class=\\\\\\\\\\\\\\\"CrazyUser_Name\\\\\\\\\\\\\\\">Crazy User</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">Must have been a member for at least 15 weeks, have downloaded at least 300GB and have a ratio at or above 2.05. The promotion is automatic when these conditions are met. <br />\r\nNote that you will be automatically demoted from this status if your ratio drops below 1.95 at any time.</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b class=\\\\\\\\\\\\\\\"InsaneUser_Name\\\\\\\\\\\\\\\">Insane User</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">Must have been a member for at least 25 weeks, have downloaded at least 500GB and have a ratio at or above 2.55. The promotion is automatic when these conditions are met. <br />\r\nNote that you will be automatically demoted from this status if your ratio drops below 2.45 at any time.</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b class=\\\\\\\\\\\\\\\"VeteranUser_Name\\\\\\\\\\\\\\\">Veteran User</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">Must have been a member for at least 40 weeks, have downloaded at least 750GB and have a ratio at or above 3.05. The promotion is automatic when these conditions are met. <br />\r\nNote that you will be automatically demoted from this status if your ratio drops below 2.95 at any time.</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b  class=\\\\\\\\\\\\\\\"ExtremeUser_Name\\\\\\\\\\\\\\\">Extreme User</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">Must have been a member for at least 60 weeks, have downloaded at least 1TB and have a ratio at or above 3.55. The promotion is automatic when these conditions are met. <br />\r\nNote that you will be automatically demoted from this status if your ratio drops below 3.45 at any time.</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b  class=\\\\\\\\\\\\\\\"UltimateUser_Name\\\\\\\\\\\\\\\">Ultimate User</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">Must have been a member for at least 80 weeks, have downloaded at least 1.5TB and have a ratio at or above 4.05. The promotion is automatic when these conditions are met. <br />\r\nNote that you will be automatically demoted from this status if your ratio drops below 3.95 at any time.</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b class=\\\\\\\\\\\\\\\"NexusMaster_Name\\\\\\\\\\\\\\\">Nexus Master</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">Must have been a member for at least 100 weeks, have downloaded at least 3TB and have a ratio at or above 4.55. The promotion is automatic when these conditions are met. <br />\r\nNote that you will be automatically demoted from this status if your ratio drops below 4.45 at any time.</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <img class=\\\\\\\\\\\\\\\"star\\\\\\\\\\\\\\\" src=\\\\\\\\\\\\\\\"pic/trans.gif\\\\\\\\\\\\\\\" alt=\\\\\\\\\\\\\\\"Star\\\\\\\\\\\\\\\" /></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">Just donate, see <a class=\\\\\\\\\\\\\\\"faqlink\\\\\\\\\\\\\\\" href=\\\\\\\\\\\\\\\"donate.php\\\\\\\\\\\\\\\">here</a> for the details.</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b  class=\\\\\\\\\\\\\\\"VIP_Name\\\\\\\\\\\\\\\">VIP</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">Assigned by mods at their discretion to users they feel contribute something special to the site. (Anyone begging for VIP status will be automatically disqualified.)</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b class=\\\\\\\\\\\\\\\"User_Name\\\\\\\\\\\\\\\">Other</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">Customized title. Exchanged at bonus system or granted by admins.</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b  class=\\\\\\\\\\\\\\\"Uploader_Name\\\\\\\\\\\\\\\">Uploader</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">Appointed by Admins/SysOp/Staff Leader (see the \\\\\\\\\\\\\\\'Uploading\\\\\\\\\\\\\\\' section for conditions).</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b class=\\\\\\\\\\\\\\\"Retiree_Name\\\\\\\\\\\\\\\">Retiree</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">Granted by Admins/SysOp/Staff Leader</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b  class=\\\\\\\\\\\\\\\"Moderator_Name\\\\\\\\\\\\\\\">Moderator</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">You don\\\\\\\\\\\\\\\'t ask us, we\\\\\\\\\\\\\\\'ll ask you!</td>\r\n</tr>\r\n</table>', 0, 2, 11),
(425, 25, 6, 'item', 'Why can\'t my friend become a member?', 'There is a users limit (it is list at Home -&gt; Tracker Statistics -&gt; Limit). When that number is reached we stop accepting new members. Accounts inactive (i.e. not logged in for a long time) are automatically deleted, so keep trying.<br />\r\nWhen are inactive user accounts deleted? See <a class=\"faqlink\" href=\"rules.php\">Rules</a>', 1, 2, 1),
(426, 26, 6, 'item', 'How do I add an avatar to my profile?', 'First, find an image that you like, and that is within the <a class=\"faqlink\" href=\"rules.php\">rules</a>. Then you will have to find a place to host it, such as our own <a class=\"faqlink\" href=\"bitbucket-upload.php\">BitBucket</a>. To lighten tracker\'s load, we recommend you upload it to other websites and copy the URL you were given when uploading it to the Avatar URL field in <a class=\"faqlink\" href=\"usercp.php?action=personal\">UserCP</a>.<br />\r\n<br />\r\nPlease do not make a post just to test your avatar. If everything is all right you\'ll see it in your details page. ', 1, 2, 1),
(427, 27, 6, 'item', 'Most common reason for stats not updating', '<ul>\r\n<li>The server is overloaded and unresponsive. Just try to keep the session open until the server responds again. (Flooding the server with consecutive manual updates is not recommended.)</li>\r\n<li>You are using a faulty client. If you want to use an experimental or CVS version you do it at your own risk.</li>\r\n</ul>', 1, 3, 1),
(428, 28, 6, 'item', 'Best practices', '<ul>\r\n<li>If a torrent you are currently leeching/seeding is not listed on your detail page, just wait or force a manual update.</li>\r\n<li>Make sure you exit your client properly, so that the tracker receives \"event=completed\".</li>\r\n<li>If the tracker is down, do not stop seeding. As long as the tracker is back up before you exit the client the stats should update properly.</li>\r\n</ul>', 1, 3, 2),
(429, 29, 6, 'item', 'May I use any bittorrent client?', 'No. According to tests of common bittorrent clients by <a class=\"faqlink\" href=\"aboutnexus.php\">NexusPHP</a>, we allowed <b>only</b> the following bittorrent clients.<br />\r\nThe test report by <a class=\"faqlink\" href=\"aboutnexus.php\">NexusPHP</a> is <a class=\"faqlink\" href=\"http://www.nexusphp.com/wiki/%E5%AE%A2%E6%88%B7%E7%AB%AF%E6%B5%8B%E8%AF%95%E6%8A%A5%E5%91%8A\">here</a>. \r\n<br />\r\n<b>Windows:</b>\r\n<ul>\r\n<li><a class=\"faqlink\" href=\"http://azureus.sourceforge.net\">Azureus</a>: 2.5.0.4, 3.0.5.0, 3.0.5.2 and later versions</li>\r\n<li><a class=\"faqlink\" href=\"http://www.utorrent.com\">uTorrent</a>: 1.6.1, 1.7.5, 1.7.6, 1.7.7, 1.8Beta(Build 10364), 2.0(Build 17624) and later versions</li>\r\n<li><a class=\"faqlink\" href=\"http://www.bittorrent.com\">BitTorrent</a>: 6.0.1, 6.0.2, 6.0.3 and later versions</li>\r\n<li><a class=\"faqlink\" href=\"http://deluge-torrent.org\">Deluge</a>: 0.5.9.1, 1.1.6 and later versions</li>\r\n<li><a class=\"faqlink\" href=\"http://rufus.sourceforge.net\">Rufus</a>: 0.6.9, 0.7.0 and later versions</li>\r\n</ul>\r\n<b>Linux:</b>\r\n<ul>\r\n<li><a class=\"faqlink\" href=\"http://azureus.sourceforge.net\">Azureus</a>: 2.5.0.4, 3.0.5.0, 3.0.5.2 and later versions</li>\r\n<li><a class=\"faqlink\" href=\"http://deluge-torrent.org\">Deluge</a>: 0.5.9.1, 1.1.6 and later versions</li>\r\n<li><a class=\"faqlink\" href=\"http://rufus.sourceforge.net\">Rufus</a>: 0.6.9, 0.7.0 and later versions</li>\r\n<li><a class=\"faqlink\" href=\"http://www.transmissionbt.com\">Transmission</a>: 1.21 and later versions</li>\r\n<li><a class=\"faqlink\" href=\"http://libtorrent.rakshasa.no\">rTorrent</a>: 0.8.0(with libtorrent 0.12.0 or later) and later versions</li>\r\n<li><a class=\"faqlink\" href=\"http://www.rahul.net/dholmes/ctorrent/\">Enhanced CTorrent</a>: 3.3.2 and later versions</li>\r\n</ul>\r\n<b>MacOS X:</b>\r\n<ul>\r\n<li><a class=\"faqlink\" href=\"http://azureus.sourceforge.net\">Azureus</a>: 2.5.0.4, 3.0.5.0, 3.0.5.2 and later versions</li>\r\n<li><a class=\"faqlink\" href=\"http://www.transmissionbt.com\">Transmission</a>: 1.21 and later versions</li>\r\n<li><a class=\"faqlink\" href=\"http://sourceforge.net/projects/bitrocket/\">BitRocket</a>: 0.3.3(32) and later versions</li>\r\n</ul>\r\n<b>Symbian (For Testing Only):</b>\r\n<ul>\r\n<li><a class=\"faqlink\" href=\"http://amorg.aut.bme.hu/projects/symtorrent\">SymTorrent</a>: 1.41 and later versions</li>\r\n</ul>\r\n<br />\r\n\r\n<b>Support for https:</b>\r\n<ul>\r\n<li>uTorrent 1.61: cannot parse tracker https url, and marks itself as uTorrent 1.5</li>\r\n<li>Rufus: no support for https, and development ceased for years.</li>\r\n<li>rtorrent: needs to add SSL certification manually, see User Guide at its official site.</li>\r\n</ul>\r\n\r\n<br />\r\n\r\nPlease do not use any beta or testing version of bittorrent clients, e.g. uTorrent 1.8.0B. To get the best downloading experience, we highly recommend latest stable version of <a class=\"faqlink\" href=\"http://www.utorrent.com/download.php\">uTorrent</a> and <a class=\"faqlink\" href=\"http://azureus.sourceforge.net/download.php\">Azureus</a>.', 1, 5, 3),
(430, 30, 6, 'item', 'Why is a torrent I\'m leeching/seeding listed several times in my profile?', 'If for some reason (e.g. PC crash, or frozen client) your client exits improperly and you restart it, it will have a new peer_id, so it will show as a new torrent. The old one will never receive a \"event=completed\" or \"event=stopped\" and will be listed until some tracker timeout. Just ignore it, it will eventually go away.', 1, 3, 4),
(431, 31, 6, 'item', 'I\'ve finished or cancelled a torrent. Why is it still listed in my profile?', 'Some clients, notably TorrentStorm and Nova Torrent, do not report properly to the tracker when canceling or finishing a torrent. In that case the tracker will keep waiting for some message - and thus listing the torrent as seeding or leeching - until some timeout occurs. Just ignore it, it will eventually go away.', 1, 3, 5),
(433, 33, 6, 'item', 'Multiple IPs (Can I login from different computers?)', 'Yes, the tracker is capable of following sessions from different IPs for the same user. You may access the site and seed/leech simultaneously from as many computers as you want with the same account.<br />\r\nHowever, there is a limit for a single torrent. Per torrent 3 simultaneous connections are permitted per user, and in case of leeching only 1, which means you can leech a torrent from one location only at a time.', 1, 3, 1),
(436, 36, 6, 'item', 'Why can\'t I upload torrents?', 'See <a class=\"faqlink\" href=\"rules.php\">Rules</a>.', 1, 4, 1),
(437, 37, 6, 'item', 'What criteria must I meet before I can join the Uploader team?', 'You must:\r\n<ul>\r\n<li>have steady access to resources.</li>\r\n<li>upload not less than 5 torrents per week.</li>\r\n</ul>\r\nYou must be able to provide releases that:\r\n<ul>\r\n<li>are not older than 7 days</li>\r\n<li>you\'ll be able to seed, or make sure are well-seeded, for at least 24 hours.</li>\r\n<li>Also, you should have at least 2MBit upload bandwith.</li>\r\n</ul>\r\nIf you think you can match these criteria do not hesitate to <a class=\"faqlink\" href=\"contactstaff.php\">contact the staff</a>.<br />\r\n<b>Remember!</b> Write your application carefully! Be sure to include your upload speed and what kind of stuff you\'re planning to upload.<br />\r\nOnly well written letters with serious intent will be considered.', 1, 4, 2),
(438, 38, 6, 'item', 'Can I upload your torrents to other trackers?', 'No. We are a closed, limited-membership community. Only registered users can use the tracker. Posting our torrents on other trackers is useless, since most people who attempt to download them will be unable to connect with us. This generates a lot of frustration and bad-will against us, and will therefore not be tolerated.<br />\r\n<br />\r\nComplaints from other sites\' administrative staff about our torrents being posted on their sites will result in the banning of the users responsible.\r\n<br />\r\n<br />\r\nHowever, the files you download from us are yours to do as you please (except those marked as <b>EXCLUSIVE</b> by the uploader). You can always create another torrent, pointing to some other tracker, and upload it to the site of your choice.', 1, 4, 3),
(439, 39, 6, 'item', 'How do I use the files I\'ve downloaded?', 'Check out <a class=\"faqlink\" href=\"formats.php\">this guide</a>.', 1, 5, 1);
INSERT INTO `faq` (`id`, `link_id`, `lang_id`, `type`, `question`, `answer`, `flag`, `categ`, `order`) VALUES
(440, 40, 6, 'item', 'Downloaded a movie and don\'t know what CAM/TS/TC/SCR means?', 'Check out <a class=\"faqlink\" href=\"videoformats.php\">this guide</a>.', 1, 5, 2),
(441, 41, 6, 'item', 'Why did an active torrent suddenly disappear?', 'There may be three reasons for this:<br />\r\n(<b>1</b>) The torrent may have been against the site <a class=\"faqlink\" href=\"rules.php\">rules</a>.\r\n<br />\r\n(<b>2</b>) The uploader may have deleted it because it was a bad release. A replacement will probably be uploaded to take its place.<br />\r\n(<b>3</b>) Torrents are automatically deleted after being dead for a long time.', 1, 5, 3),
(442, 42, 6, 'item', 'How do I resume a broken download or reseed something?', 'Open the .torrent file. When your client asks you for a location, choose the location of the existing file(s) and it will resume/reseed the torrent.', 1, 5, 4),
(443, 43, 6, 'item', 'Why do my downloads sometimes stall at 99%?', 'The more pieces you have, the harder it becomes to find peers who have pieces you are missing. That is why downloads sometimes slow down or even stall when there are just a few percent remaining. Just be patient and you will, sooner or later, get the remaining pieces.', 1, 5, 5),
(444, 44, 6, 'item', 'What are these \"a piece has failed a hash check\" messages? ', 'Bittorrent clients check the data they receive for integrity. When a piece fails this check it is automatically re-downloaded. Occasional hash fails are a common occurrence, and you shouldn\'t worry.<br />\r\n<br />\r\nSome clients have an (advanced) option/preference to \'kick/ban clients that send you bad data\' or similar. It should be turned on, since it makes sure that if a peer repeatedly sends you pieces that fail the hash check it will be ignored in the future.', 1, 5, 6),
(445, 45, 6, 'item', 'The torrent is supposed to be 100MB. How come I downloaded 120MB? ', 'See the hash fails topic. If your client receives bad data it will have to re-download it, therefore the total downloaded may be larger than the torrent size. Make sure the \"kick/ban\" option is turned on to minimize the extra downloads.', 1, 5, 7),
(446, 46, 6, 'item', 'Why do I get a \"Your ratio is too low! You need to wait xx h to start\" error?', 'From the time that each <b>new</b> torrent is uploaded to the tracker, there is a period of time that some users must wait before they can download it.<br />\r\nThis delay in downloading will only affect users with a low ratio and downloaded amount above 10 GB.<br />\r\n<br />\r\n<table cellspacing=\"3\" cellpadding=\"0\">\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Ratio below</td>\r\n	<td class=\"embedded\" width=\"40\">0.4</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">delay of</td>\r\n	<td class=\"embedded\" width=\"100\">24h</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Ratio below</td>\r\n	<td class=\"embedded\" width=\"40\">0.5</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">delay of</td>\r\n	<td class=\"embedded\" width=\"100\">12h</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Ratio below</td>\r\n	<td class=\"embedded\" width=\"40\">0.6</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">delay of</td>\r\n	<td class=\"embedded\" width=\"100\">6h</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Ratio below</td>\r\n	<td class=\"embedded\" width=\"40\">0.8</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">delay of</td>\r\n	<td class=\"embedded\" width=\"100\">3h</td>\r\n</tr>\r\n</table>', 0, 5, 8),
(447, 47, 6, 'item', 'Why do I get a \"Port xxxx is blacklisted\" error?', 'Your client is reporting to the tracker that it uses one of the default bittorrent ports (6881-6889) or any other common p2p port for incoming connections.<br />\r\n<br />\r\nWe does not allow clients to use ports commonly associated with p2p protocols. The reason for this is that it is a common practice for ISPs to throttle those ports (that is, limit the bandwidth, hence the speed). <br />\r\n<br />\r\nThe blocked ports list include the following:<br />\r\n<br />\r\n<table cellspacing=\"3\" cellpadding=\"0\">\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">Direct Connect</td>\r\n	<td class=\"embedded\" width=\"100\">411 - 413</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">BitTorrent</td>\r\n	<td class=\"embedded\" width=\"100\">6881 - 6889</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">Kazza</td>\r\n	<td class=\"embedded\" width=\"100\">1214</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">Gnutella</td>\r\n	<td class=\"embedded\" width=\"100\">6346 - 6347</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">Emule</td>\r\n	<td class=\"embedded\" width=\"100\">4662</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">WinMX</td>\r\n	<td class=\"embedded\" width=\"100\">6699</td>\r\n  </tr>\r\n</table>\r\n<br />\r\nIn order to use our tracker you must configure your client to use any port range that does not contain those ports (a range within the region 49152 through 65535 is preferable,\r\ncf. <a class=\"faqlink\" href=\"http://www.iana.org/assignments/port-numbers\">IANA</a>). Notice that some clients, like Azureus 2.0.7.0 or higher, use a single port for all torrents, while most others use one port per open torrent. The size of the range you choose should take this into account (typically less than 10 ports wide. There is no benefit whatsoever in choosing a wide range, and there are possible security implications). <br />\r\n<br />\r\nThese ports are used for connections between peers, not client to tracker. Therefore this change will not interfere with your ability to use other trackers (in fact it should <i>increase</i> your speed with torrents from any tracker, not just ours). Your client will also still be able to connect to peers that are using the standard ports. If your client does not allow custom ports to be used, you will have to switch to one that does.<br />\r\n<br />\r\nDo not ask us, or in the forums, which ports you should choose. The more random the choice is the harder it will be for ISPs to catch on to us and start limiting speeds on the ports we use. If we simply define another range ISPs will start throttling that range also. <br />\r\n<br />\r\nFinally, remember to forward the chosen ports in your router and/or open them in your\r\nfirewall, should you have them.', 1, 5, 9),
(448, 48, 6, 'item', 'What\'s this \"IOError - [Errno13] Permission denied\" error?', 'If you just want to fix it reboot your computer, it should solve the problem. Otherwise read on.<br />\r\nIOError means Input-Output Error, and that is a file system error, not a tracker one. It shows up when your client is for some reason unable to open the partially downloaded torrent files. The most common cause is two instances of the client to be running simultaneously: the last time the client was closed it somehow didn\'t really close but kept running in the background, and is therefore still locking the files, making it impossible for the new instance to open them.<br />\r\nA more uncommon occurrence is a corrupted FAT. A crash may result in corruption that makes the partially downloaded files unreadable, and the error ensues. Running scandisk should solve the problem. (Note that this may happen only if you\'re running Windows 9x - which only support FAT - or NT/2000/XP with FAT formatted hard drives. NTFS is much more robust and should never permit this problem.)\r\n', 1, 5, 10),
(450, 50, 6, 'item', 'Do not immediately jump on new torrents', 'The download speed mostly depends on the seeder-to-leecher ratio (SLR). Poor download speed is mainly a problem with new and very popular torrents where the SLR is low.<br />\r\n(Note: make sure you remember that you did not enjoy the low speed. Seed so that others will not endure the same.)<br />\r\n<br />In particular, do not do it if you have a slow connection. The best speeds will be found around the half-life of a torrent, when the SLR will be at its highest. (The downside is that you will not be able to seed so much. It\'s up to you to balance the pros and cons of this.)', 1, 6, 1),
(451, 51, 6, 'item', 'Limit your upload speed', 'The upload speed affects the download speed in essentially two ways:\r\n<ul>\r\n    <li>Bittorrent peers tend to favour those other peers that upload to them. This means that if A and B are leeching the same torrent and A is sending data to B at high speed then B will try to reciprocate. So due to this effect high upload speeds lead to high download speeds.</li>\r\n\r\n    <li>Due to the way TCP works, when A is downloading something from B it has to keep telling B that it received the data sent to him. (These are called acknowledgements - ACKs -, a sort of \"got it!\" messages). If A fails to do this then B will stop sending data and wait. If A is uploading at full speed there may be no bandwidth left for the ACKs and they will be delayed. So due to this effect excessively high upload speeds lead to low download speeds.</li>\r\n</ul>\r\n\r\nThe full effect is a combination of the two. The upload should be kept as high as possible while allowing the ACKs to get through without delay. <b>A good thumb rule is keeping the upload at about 80% of the theoretical upload speed. </b>You will have to fine tune yours to find out what works best for you. (Remember that keeping the upload high has the additional benefit of helping with your ratio.) <br />\r\n<br />\r\nIf you are running more than one instance of a client it is the overall upload speed that you must take into account. Some clients limit global upload speed, others do it on a per torrent basis. Know your client. The same applies if you are using your connection for anything else (e.g. browsing or ftp), always think of the overall upload speed.', 1, 6, 2),
(452, 52, 6, 'item', 'Limit the number of simultaneous connections', 'Some operating systems (like Windows 9x) do not deal well with a large number of connections, and may even crash. Also some home routers (particularly when running NAT and/or firewall with stateful inspection services) tend to become slow or crash when having to deal with too many connections. There are no fixed values for this, you may try 60 or 100 and experiment with the value. Note that these numbers are additive, if you have two instances of a client running the numbers add up.', 1, 6, 3),
(453, 53, 6, 'item', 'Limit the number of simultaneous uploads', 'Isn\'t this the same as above? No. Connections limit the number of peers your client is talking to and/or downloading from. Uploads limit the number of peers your client is actually uploading to. The ideal number is typically much lower than the number of connections, and highly dependent on your (physical) connection.', 1, 6, 4),
(454, 54, 6, 'item', 'Just give it some time', 'As explained above peers favour other peers that upload to them. When you start leeching a new torrent you have nothing to offer to other peers and they will tend to ignore you. This makes the starts slow, in particular if, by chance, the peers you are connected to include few or no seeders. The download speed should increase as soon as you have some pieces to share.', 1, 6, 5),
(455, 55, 6, 'item', 'Why is my browsing so slow while leeching?', 'Your download speed is always finite. If you are a peer in a fast torrent it will almost certainly saturate your download bandwidth, and your browsing will suffer. Many clients allows you to limit the download speed and try it.<br />\r\n<br />\r\nBrowsing was used just as an example, the same would apply to gaming, IMing, etc...', 1, 6, 6),
(456, 56, 6, 'item', 'What is a proxy?', 'Basically a middleman. When you are browsing a site through a proxy your requests are sent to the proxy and the proxy forwards them to the site instead of you connecting directly to the site. There are several classifications (the terminology is far from standard):<br />\r\n<br />\r\n<table cellspacing=\"3\" cellpadding=\"0\">\r\n<tr>\r\n	<td class=\"embedded\" valign=\"top\" width=\"100\">&nbsp;Transparent</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">A transparent proxy is one that needs no configuration on the clients. It works by automatically redirecting all port 80 traffic to the proxy. (Sometimes used as synonymous for non-anonymous.)</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" valign=\"top\">&nbsp;Explicit/Voluntary</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">Clients must configure their browsers to use them.</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" valign=\"top\">&nbsp;Anonymous</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">The proxy sends no client identification to the server. (HTTP_X_FORWARDED_FOR header is not sent; the server does not see your IP.)</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" valign=\"top\">&nbsp;Highly Anonymous</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">The proxy sends no client nor proxy identification to the server. (HTTP_X_FORWARDED_FOR, HTTP_VIA and HTTP_PROXY_CONNECTION headers are not sent; the server doesn\'t see your IP and doesn\'t even know you\'re using a proxy.)</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" valign=\"top\">&nbsp;Public</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">(Self explanatory)</td>\r\n</tr>\r\n</table>\r\n<br />\r\nA transparent proxy may or may not be anonymous, and there are several levels of anonymity.', 1, 7, 1),
(457, 57, 6, 'item', 'How do I find out if I\'m behind a (transparent/anonymous) proxy?', 'Try <a href=\"http://proxyjudge.org\" class=\"faqlink\">ProxyJudge</a>. It lists the HTTP headers that the server where it is running received from you. The relevant ones are HTTP_CLIENT_IP, HTTP_X_FORWARDED_FOR and REMOTE_ADDR.', 1, 7, 2),
(475, 75, 6, 'item', 'Why am I listed as not connectable even though I\'m not NAT/Firewalled?', 'The tracker is quite smart at finding your real IP, but it does need the proxy to send the HTTP header HTTP_X_FORWARDED_FOR. If your ISP\'s proxy does not then what happens is that the tracker will interpret the proxy\'s IP address as the client\'s IP address. So when you login and the tracker tries to connect to your client to see if you are NAT/firewalled it will actually try to connect to the proxy on the port your client reports to be using for incoming connections. Naturally the proxy will not be listening on that port, the connection will fail and the tracker will think you are NAT/firewalled.', 1, 7, 3),
(462, 62, 6, 'item', 'Maybe my address is blacklisted?', 'The site keeps a list of blocked IP addresses for banned users or attackers. This works at Apache/PHP level, and only blocks <i>logins</i> from those addresses. It should not stop you from reaching the site. In particular it does not block lower level protocols, you should be able to ping/traceroute the server even if your address is blacklisted. If you cannot then the reason for the problem lies elsewhere.<br />\r\n<br />\r\nIf somehow your address is blocked by mistake, contact us about it.', 1, 8, 1),
(463, 63, 6, 'item', 'Your ISP blocks the site\'s address', '(In first place, it\'s unlikely your ISP is doing so. DNS name resolution and/or network problems are the usual culprits.) \r\n<br />\r\nThere\'s nothing we can do. You should contact your ISP (or get a new one). Note that you can still visit the site via a proxy, follow the instructions in the relevant section. In this case it doesn\'t matter if the proxy is anonymous or not, or which port it listens to.<br />\r\n<br />\r\nNotice that you will always be listed as an \"unconnectable\" client because the tracker will be unable to check that you\'re capable of accepting incoming connections.', 1, 8, 2),
(465, 65, 6, 'item', 'You may try this', 'Post in the <a class=\"faqlink\" href=\"forums.php\">Forums</a>, by all means. You\'ll find they are usually a friendly and helpful place, provided you follow a few basic guidelines: <ul>\r\n<li>Make sure your problem is not really in this FAQ. There\'s no point in posting just to be sent back here. </li>\r\n<li>Before posting read the sticky topics (the ones at the top). Many times new information that still hasn\'t been incorporated in the FAQ can be found there.</li>\r\n<li>Help us in helping you. Do not just say \"it doesn\'t work!\". Provide details so that we don\'t have to guess or waste time asking. What client do you use? What\'s your OS? What\'s your network setup? What\'s the exact error message you get, if any? What are the torrents you are having problems with? The more you tell the easiest it will be for us, and the more probable your post will get a reply.</li>\r\n<li>And needless to say: be polite. Demanding help rarely works, asking for it usually does the trick.</li></ul>', 1, 9, 1),
(466, 66, 6, 'item', 'Why do I get a \"Your slot limit is reached! You may at most download xx torrents at the same time\" error?', 'This is part of the \"Slot System\". The slot system is being used to limit the concurrent downloads for users that have low ratio and downloaded amount above 10 GB<br /><br />\r\nRules: <br />\r\n<table cellspacing=\"3\" cellpadding=\"0\">\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Ratio below</td>\r\n	<td class=\"embedded\" width=\"40\">0.5</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">available slots</td>\r\n	<td class=\"embedded\" width=\"40\">1</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Ratio below</td>\r\n	<td class=\"embedded\" width=\"40\">0.65</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">available slots</td>\r\n	<td class=\"embedded\" width=\"100\">2</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Ratio below</td>\r\n	<td class=\"embedded\" width=\"40\">0.8</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">available slots</td>\r\n	<td class=\"embedded\" width=\"100\">3</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Ratio below</td>\r\n	<td class=\"embedded\" width=\"40\">0.95</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">available slots</td>\r\n	<td class=\"embedded\" width=\"100\">4</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Ratio above</td>\r\n	<td class=\"embedded\" width=\"40\">0.95</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">available slots</td>\r\n	<td class=\"embedded\" width=\"100\">unlimited</td>\r\n</tr>\r\n</table>\r\n<br />\r\nIn all cases the seeding slots are unlimited. However if you have already filled all your available download slots and try to start seeding you will receive the same error. In this case you must free at least one download slot in order to start all your seeds and then start the download. If all your download slots are filled the system will deny any connection before validating if you want to download or seed. So first start your seeds and after that your downloads. <br />\r\n<br /><br />\r\nAny time, you can check your available slots in the member bar on top of the page.', 0, 5, 12),
(467, 67, 6, 'item', 'What is the passkey System? How does it work?', 'The passkey system is implemented to verify if you are registered with the tracker. Every user has a personal passkey, a random key generated by the system. When a user tries to download a torrent, his personal passkey is imprinted in the tracker URL of the torrent, allowing to the tracker to identify any source connected on it. In this way, you can seed a torrent for example, at home and at your office simultaneously without any problem with the 2 different IPs.\r\n', 1, 5, 13),
(468, 68, 6, 'item', 'Why do I get an \"Unknown passkey\" error? ', 'You will get this error, firstly if you are not registered on our tracker, or if you haven\'t downloaded the torrent to use from our webpage, when you were logged in. In this case, just register or log in and re-download the torrent.<br />\r\nThere is a chance to get this error also, at the first time you download anything as a new user, or at the first download after you reset your passkey. The reason is simply that the tracker reviews the changes in the passkeys every few minutes and not instantly. For that reason just leave the torrent running for a few minutes, and you will get eventually an OK message from the tracker.', 1, 5, 14),
(469, 69, 6, 'item', 'When do I need to reset my passkey?', '<ul><li>If your passkey has been leaked and other user(s) uses it to download torrents using your account. In this case, you will see torrents stated in your account that you are not leeching or seeding . </li>\r\n<li>When your clients hangs up or your connection is terminated without pressing the stop button of your client. In this case, in your account you will see that you are still leeching/seeding the torrents even that your client has been closed. Normally these \"ghost peers\" will be cleaned automatically within 30 minutes, but if you want to resume your downloads and the tracker denied that due to the fact that you \"already are downloading the same torrent\" then you should reset your passkey and re-download the torrent, then resume it.  </li></ul>', 1, 5, 15),
(470, 70, 6, 'item', 'What is DHT? Why must I turn it off and how?', 'DHT must be disabled in your client. DHT can cause your stats to be recorded incorrectly and could be seen as cheating. Anyone using this will be banned for cheating the system.\r\n<br />\r\nFortunately, this tracker would parse uploaded .torrent files and automatically disable DHT. That\'s why you must re-downloaded the torrent before starting seeding.', 1, 5, 16),
(471, 71, 6, 'categ', 'How can I help translate the site language into my native language?', '', 1, 1, 8),
(472, 72, 6, 'item', 'What skills do I need to do the translation?', 'Translate the site into another language is quite easy. You needn\'t be skilled in PHP or dynamic website design. In fact, all you need is proficient understanding of English (the default site language) and the language you plan to translate into. Maybe some basic knowledge in HTML would help.<br /><br />\r\nMoreover, we give a detailed tutorial on how to do the translation <a href=\"#73\" class=\"faqlink\"><b>HERE</b></a>. And our coders would be more than pleased to answer the questions you may encounter.<br /><br />\r\nTranslate the whole site into another language would take estimated 10 hours. And extra time is needed to maintain the translation when site code is updated.<br /><br />\r\nSo, if you think you could help, feel free to <a class=\"faqlink\" href=\"contactstaff.php\"><b>CONTACT US</b></a>. Needless to say, you would be rewarded.', 1, 71, 1),
(473, 73, 6, 'item', 'The translation tutorial', '<ul>\r\n<li>How does multi-language work?<br />\r\nCurrently we use language files to store all the static words that a user can see on web pages. <br />\r\nEvery php code file has a corresponding language file for a certain language. And we named the language file \'lang_\' plus the filename of the php code file. i.e. the language file of the php code file \'details.php\' would be \'lang_details.php\'. <br />\r\nWe has some mechanism in php codes to read the exact language files of user\'s preferred language, and you shouldn\'t worry about that.<br /></li>\r\n<li>What\'s in language files?<br />\r\nIn a language file is an array of strings. These strings contain all the static words that a user can see on web pages. When we need to say some words on a php code file, we call for a string in the array. And the output of the php code file, that is what users see on the web pages, would show the value of the string.<br />\r\nSounds dizzying? Well, you need not care about all these. All you gotta do is translate the values of the strings in the language files into another language. <b>Let\'s see an example</b>:<br /><br />\r\nThe following is the content of the English language file \'lang_users.php\', which works for the php code file \'users.php\'. <br /><br />\r\n<img src=\"pic/langfileeng.png\" alt=\"langfileeng\" /><br />\r\nIf you wanna translate it into Simplified Chinese, all you need is edit the file into this:<br />\r\n<img src=\"pic/langfilechs.png\" alt=\"langfilechs\" /><br />\r\nSee, in every line, the left part, that is before <i>=&gt;</i>, is the name of a string, which you shouldn\'t touch. All you need to is translate the right part, after <i>=&gt;</i>, which is the value of the string, into another language.<br />\r\nSometimes you need to look at the corresponding web pages to get the context meaning of some words.<br /></li>\r\n<li>Sounds easy? See what do you need to do.<br />\r\nIf you feel like to help us, <a class=\"faqlink\" href=\"aboutnexus.php#contact\"><b>CONTACT US</b></a> and we will send you a pack of the English language files (or any other available language if you prefer). Received it, you can start translating the value of strings (which is in English), into another language. It should take you several hours to do the whole work. After this, send back the translated language files to us.<br />\r\nIf no bugs or hacking codes are found in testing, we would put the new language into work.<br />\r\nSometimes the language files need to be updated, typically adding new strings, when site codes are updated. If you feel like it, you can help maintain the language files.<br /></li>\r\n<li><font color=\"red\"><b>IMPORTANT</b></font><br />\r\nThe text of language files must be encoded in UTF-8. When saving files, be sure to set the character encoding to UTF-8. Otherwise mojibake may happen.</li></ul>', 1, 71, 2),
(474, 74, 6, 'item', 'Why does my client notify me of low disk space even if there is plenty left?', 'Most possible reason is that the file system of your disk partitions is FAT32, which has a maximum file size limit of 4 GB. If your operation system is Windows, consider converting file system to NTFS. Check <a class=\"faqlink\" href=\"http://technet.microsoft.com/en-us/library/bb456984.aspx\">here</a> for details.\r\n', 1, 5, 17),
(476, 39, 25, 'item', '我想做种，怎么发布种子？', '如果你是User或以下等级，需要在候选区先发布候选资源，将你所要上传的资源的内容以及相应资源版本写在标题和简介里，待通过后就能上传该资源了。\r\n如果你是Power User及以上等级，则无需通过候选区就能上传资源了。\r\n\r\n关于uTorrent软件怎么制作种子，可以查看<a href=\"forums.php?action=viewtopic&forumid=15&topicid=89\" class=\"faqlink\">这里</a>的教程进行，如果仍然有什么不清楚的地方，可以站内信向管理员询问。', 1, 4, 1);

--
-- 转存表中的数据 `formatanime`
--

INSERT INTO `formatanime` (`id`, `name`, `sort_index`) VALUES
(1, 'RMVB', 6),
(2, 'MP4', 2),
(3, 'DVDRip', 18),
(4, 'TVRip', 19),
(5, 'DVDISO', 23),
(6, 'BDMV', 21),
(7, 'BDRip', 20),
(8, 'HDTVRip', 22),
-- (9, '有损音频', 10),
-- (10, '无损音频', 11),
-- (11, '其他', 99),
(12, 'HQ-HDTVRip', 24),
(13, 'MKV', 3),
(14, '<text>视频', 1),
(15, '<text>音频', 8),
(16, '<text>漫画', 13),
(17, 'M2TS', 4),
(18, 'VOB', 5),
(19, 'WAV', 9),
(20, 'FLAC', 10),
(21, 'MP3', 11),
(22, 'ZIP', 14),
(23, 'RAR', 15),
(24, '<linebreak>', 7),
(25, '<linebreak>', 12),
(26, '<linebreak>', 16),
(27, '<text>来源', 17);

--
-- 转存表中的数据 `formatdocum`
--

INSERT INTO `formatdocum` (`id`, `name`, `sort_index`) VALUES
(1, 'AVI', 1),
(2, 'MKV', 2),
(3, 'WMV', 3),
(4, 'SWF', 4),
(5, 'MP3', 5),
(6, 'MP4', 6),
(7, 'MOV', 7),
(8, 'RM', 8),
(9, 'RMVB', 9),
(10, 'FLV', 10),
(11, 'CHM', 11),
(12, 'RAR', 12),
(13, 'PDF', 13),
(14, 'PPT', 14),
(15, 'DOC', 15),
(16, 'TXT', 16);

--
-- 转存表中的数据 `formatgame`
--

INSERT INTO `formatgame` (`id`, `name`, `sort_index`) VALUES
(1, '光盘镜像', 2),
(2, '压缩包', 3),
(3, '安装包', 4),
(4, '<text>视频格式', 7),
(5, 'FLV', 8),
(6, 'AVI', 9),
(7, 'MKV', 10),
(8, 'MP4', 11),
(9, '<text>原声格式', 13),
(10, '无损', 14),
(11, 'MP3', 15),
(12, '<linebreak>', 12),
(13, '<linebreak>', 6),
(14, '<text>游戏格式', 1),
(15, '正版备份', 5);

--
-- 转存表中的数据 `formathqaudio`
--

INSERT INTO `formathqaudio` (`id`, `name`, `sort_index`) VALUES
(1, 'MP3', 1),
(2, 'OGG', 8),
(3, 'MPC', 10),
(4, 'APE', 2),
(5, 'FLAC', 3),
(6, 'WV', 9),
(7, 'TTA', 4),
(8, 'DTS', 6),
(9, 'AAC', 5),
(10, '其他', 99),
(11, 'WAV', 7),
(12, 'MP4', 11),
(13, 'MKV', 12),
(14, 'AVI', 13),
(15, 'ISO', 14);

--
-- 转存表中的数据 `formatmovie`
--

INSERT INTO `formatmovie` (`id`, `name`, `sort_index`) VALUES
(1, '1080p', 1),
(2, '720p', 2),
(3, 'BDRip', 3),
(4, 'HDDVDRip', 4),
(5, 'DVDRip', 5),
(8, '原盘', 0);

--
-- 转存表中的数据 `formatnewsreel`
--

INSERT INTO `formatnewsreel` (`id`, `name`, `sort_index`) VALUES
(1, '1080i/p', 1),
(2, '720p', 2),
(3, 'BDRip', 3),
(4, 'DVDRip', 4),
(5, 'TVRip', 5),
(6, 'RMVB', 6);

--
-- 转存表中的数据 `formatsoftware`
--

INSERT INTO `formatsoftware` (`id`, `name`, `sort_index`) VALUES
(1, '光盘镜像', 1),
(2, '压缩包', 2),
(3, '安装包', 3),
(4, '其他', 99);

--
-- 转存表中的数据 `formatsports`
--

INSERT INTO `formatsports` (`id`, `name`, `sort_index`) VALUES
(1, 'RMVB', 1),
(2, 'MP4', 2),
(3, 'AVI', 3),
(4, 'MKV', 4),
(5, 'RM', 5),
(6, 'WMV', 6),
(7, 'ASF', 7),
(8, 'TS', 8);

--
-- 转存表中的数据 `formattvseries`
--

INSERT INTO `formattvseries` (`id`, `name`, `sort_index`) VALUES
(1, '1080p', 1),
(2, '720p', 2),
(5, 'HDTVRip', 5),
(7, 'DVDRip', 7),
(8, 'TVRip', 8),
(11, 'RMVB', 11),
(12, '其他', 99),
(3, '480p', 3),
(6, 'WEB-DL', 6),
(4, 'Bluray', 4),
(9, 'MKV', 9),
(10, 'MP4', 10),
(135, '1080i', 12),
(136, '原盘', 13);

--
-- 转存表中的数据 `formattvshows`
--

INSERT INTO `formattvshows` (`id`, `name`, `sort_index`) VALUES
(1, 'MP4', 1),
(2, 'MKV', 2),
(3, '720P', 3),
(4, 'YouTube', 4),
(5, '1080P', 5),
(6, 'TS', 6);

--
-- 转存表中的数据 `hqtone`
--

INSERT INTO `hqtone` (`id`, `name`, `sort_index`) VALUES
(1, '无损', 1),
(2, '192Kbps', 4),
(3, '256Kbps', 3),
(4, '320Kbps', 2),
(5, '1080p', 5),
(6, '1080i', 6),
(7, '720p', 7);

--
-- 转存表中的数据 `ipv6school`
--

INSERT INTO `ipv6school` (`id`, `ipv6`, `school`) VALUES
(1, '2001:DA8:0200', '清华大学'),
(2, '2001:DA8:0201', '北京大学'),
(3, '2001:DA8:0202', '北京邮电大学'),
(4, '2001:DA8:0203', '北京航天航空大学'),
(5, '2001:DA8:0204', '北京理工大学'),
(6, '2001:DA8:0205', '北京交通大学'),
(7, '2001:DA8:0206', '北京城市学院'),
(8, '2001:DA8:0207', '北京师范大学'),
(9, '2001:DA8:0208', '北京科技大学'),
(10, '2001:DA8:0209', '首都经济贸易大学'),
(11, '2001:DA8:020A', '北方工业大学'),
(12, '2001:DA8:020B', '国家计算机网络应急技术处理协调中心'),
(13, '2001:DA8:020C', '华北电力大学(北京)'),
(14, '2001:DA8:020D', '赛尔网络有限公司IDC部门'),
(15, '2001:DA8:020E', '中国传媒大学'),
(16, '2001:DA8:020F', '北京外国语大学'),
(17, '2001:DA8:0210', '北京机械工业学院'),
(18, '2001:DA8:0211', '北京林业大学'),
(19, '2001:DA8:0212', '北京信息工程学院'),
(20, '2001:DA8:0213', '教育部科技发展中心'),
(21, '2001:DA8:0214', '中国地质大学(北京)'),
(22, '2001:DA8:0215', '北京邮电大学'),
(23, '2001:DA8:0216', '北京工业大学'),
(24, '2001:DA8:0217', 'DRAGONLAB实验室'),
(25, '2001:DA8:0218', '首都师范大学'),
(26, '2001:DA8:0219', '中央民族大学'),
(27, '2001:DA8:021C', '中国人民大学'),
(28, '2001:DA8:021D', '内蒙古大学'),
(29, '2001:DA8:021E', '太原理工大学'),
(30, '2001:DA8:0223', '中国矿业大学'),
(31, '2001:DA8:0224', '中国政法大学'),
(32, '2001:DA8:0225', '清华大学'),
(33, '2001:DA8:0226', '清华大学网络中心网管研究'),
(34, '2001:DA8:022B', '中央音乐学院'),
(35, '2001:DA8:022D', '北京语言大学'),
(36, '2001:DA8:0230', '对外经济贸易大学'),
(37, '2001:DA8:1000', 'CERNET2核心节点-南京'),
(38, '2001:DA8:1001', '江苏省教育和科研计算机网'),
(39, '2001:DA8:1002', '东南大学'),
(40, '2001:DA8:1003', '南京师范大学'),
(41, '2001:DA8:1004', '河海大学'),
(42, '2001:DA8:1005', '南京农业大学'),
(43, '2001:DA8:1006', '南京航空航天大学'),
(44, '2001:DA8:1007', '南京大学'),
(45, '2001:DA8:1008', '江苏工业学院'),
(46, '2001:DA8:1009', '河海大学常州校区'),
(47, '2001:DA8:100A', '苏州大学'),
(48, '2001:DA8:100D', '中国矿业大学'),
(49, '2001:DA8:100E', '南京理工大学'),
(50, '2001:DA8:1010', '江南大学'),
(51, '2001:DA8:2000', '华南理工大学'),
(52, '2001:DA8:2001', '广州市教育局'),
(53, '2001:DA8:2002', '暨南大学'),
(54, '2001:DA8:200B', '华南师范大学'),
(55, '2001:DA8:2004', '华南农业大学'),
(56, '2001:DA8:3000', '华中科技大学'),
(57, '2001:DA8:3001', '华中师范大学'),
(58, '2001:DA8:3002', '华中农业大学'),
(59, '2001:DA8:3008', '华中科技大学同济医学院'),
(60, '2001:DA8:4000', '西安交通大学'),
(61, '2001:DA8:4003', '西安建筑科技大学'),
(62, '2001:DA8:5000', '郑州大学'),
(63, '2001:DA8:5001', '河南财经学院'),
(64, '2001:DA8:5002', '解放军信息工程大学'),
(65, '2001:DA8:5003', '河南省财经学校'),
(66, '2001:DA8:5004', '河南省教育科研网'),
(67, '2001:DA8:5005', '郑州大学西亚斯国际学院'),
(68, '2001:DA8:6000', '电子科技大学'),
(69, '2001:DA8:6004', '四川农业大学'),
(70, '2001:DA8:7000', '山东大学'),
(71, '2001:DA8:7001', '山东大学齐鲁软件学院'),
(72, '2001:DA8:7002', 'CERNET山东省网络中心'),
(73, '2001:DA8:7003', '山东大学'),
(74, '2001:DA8:7004', '山东农业大学'),
(75, '2001:DA8:7005', '济南大学'),
(76, '2001:DA8:7006', '中国石油大学(华东)'),
(77, '2001:DA8:7007', '中国石油大学(华东)青岛校区'),
(78, '2001:DA8:7008', '山东理工大学'),
(79, '2001:DA8:7009', '烟台大学'),
(80, '2001:DA8:700A', '烟台师范学院'),
(81, '2001:DA8:700B', '山东省计算中心'),
(82, '2001:DA8:700C', '山东财政学院'),
(83, '2001:DA8:7013', '中国海洋大学'),
(84, '2001:DA8:8000', '上海交通大学'),
(85, '2001:DA8:8001', '复旦大学'),
(86, '2001:DA8:8002', '同济大学'),
(87, '2001:DA8:8003', '上海交通大学-上海城域网'),
(88, '2001:DA8:8004', '上海理工大学'),
(89, '2001:DA8:8005', '华东师范大学'),
(90, '2001:DA8:8006', '上海大学'),
(91, '2001:DA8:8007', '华东理工大学'),
(92, '2001:DA8:8008', '东华大学'),
(93, '2001:DA8:8009', '上海市教育委员会'),
(94, '2001:DA8:800A', '上海交通大学医学院'),
(95, '2001:DA8:800B', '上海师范大学'),
(96, '2001:DA8:800C', '第二军医大学'),
(97, '2001:DA8:800D', '上海财经大学'),
(98, '2001:DA8:800E', '上海外国语大学'),
(99, '2001:DA8:800F', '上海建桥学院'),
(100, '2001:DA8:9000', '东北大学'),
(101, '2001:DA8:9001', '辽宁大学'),
(102, '2001:DA8:900B', '东北大学'),
(103, '2001:DA8:A000', '天津大学'),
(104, '2001:DA8:A001', '天津理工大学'),
(105, '2001:DA8:A002', '天津医科大学'),
(106, '2001:DA8:A800', '大连理工大学'),
(107, '2001:DA8:A801', '大连海事大学'),
(108, '2001:DA8:A802', '大连轻工业学院'),
(109, '2001:DA8:B000', '吉林大学'),
(110, '2001:DA8:B001', '东北电力学院'),
(111, '2001:DA8:B007', '吉林大学农学部'),
(112, '2001:DA8:B800', '哈尔滨工业大学'),
(113, '2001:DA8:B801', '哈尔滨工业大学'),
(114, '2001:DA8:C000', '兰州大学'),
(115, '2001:DA8:C001', '甘肃省教育和科研计算机网'),
(116, '2001:DA8:C002', '甘肃政法学院'),
(117, '2001:DA8:C003', '西北师范大学'),
(118, '2001:DA8:C800', '重庆大学'),
(119, '2001:DA8:C801', '重庆交通大学'),
(120, '2001:DA8:C802', '重庆师范大学'),
(121, '2001:DA8:C803', '西南大学'),
(122, '2001:DA8:D000', '中南大学'),
(123, '2001:DA8:D001', '湖南师范大学'),
(124, '2001:DA8:D002', '长沙理工大学'),
(125, '2001:DA8:D003', '湖南商学院'),
(126, '2001:DA8:D800', '中国科技大学'),
(127, '2001:DA8:D801', '解放军电子工程学院'),
(127, '2001:DA8:D802', '安徽理工大学'),
(127, '2001:DA8:D803', '安徽中医学院'),
(127, '2001:DA8:D804', '皖南医学院'),
(127, '2001:DA8:D805', '合肥工业大学'),
(127, '2001:DA8:E000', '浙江大学'),
(127, '2001:DA8:E001', '浙江工业大学'),
(127, '2001:DA8:E002', '浙江大学宁波理工学院'),
(127, '2001:DA8:E800', '厦门大学'),
(127, '2001:DA8:E801', '福建农林大学'),
(127, '2001:DA8:E802', '福建师范大学'),
(127, '2001:250:0200', '清华大学'),
(127, '2001:250:0201', '北京大学'),
(127, '2001:250:0202', '北京交通大学'),
(127, '2001:250:0205', '中国人民大学'),
(127, '2001:250:0206', '北京航空航天大学'),
(127, '2001:250:0207', '北京化工大学'),
(127, '2001:250:0208', '北京大学医学部'),
(127, '2001:250:0209', '中国农业大学'),
(127, '2001:250:020A', '中国矿业大学'),
(127, '2001:250:020B', '北京师范大学'),
(127, '2001:250:020E', '北京科技大学'),
(127, '2001:250:0212', '北京中医药大学'),
(127, '2001:250:0217', '中国传媒大学'),
(127, '2001:250:0218', '北京外国语大学'),
(127, '2001:250:021A', '北京林业大学'),
(127, '2001:250:021C', '北京工业大学'),
(127, '2001:250:0400', '天津大学'),
(127, '2001:250:0401', '南开大学'),
(127, '2001:250:0405', '河北工业大学'),
(127, '2001:250:0C00', '华北工学院'),
(127, '2001:250:0C01', '太原理工大学'),
(127, '2001:250:0E00', '内蒙古大学'),
(127, '2001:250:0E02', '内蒙古师范大学'),
(127, '2001:250:1001', '西安交通大学'),
(127, '2001:250:1002', '西北农林科技大学'),
(127, '2001:250:1003', '西北大学'),
(127, '2001:250:1004', '西北工业大学'),
(127, '2001:250:1005', '长安大学'),
(127, '2001:250:1006', '西安电子科技大学'),
(127, '2001:250:1007', '第四军医大学'),
(127, '2001:250:1400', '兰州大学'),
(127, '2001:250:1401', '兰州理工大学'),
(127, '2001:250:1800', '新疆大学'),
(127, '2001:250:1804', '华南理工大学'),
(127, '2001:250:1999', '华南理工大学'),
(127, '2001:250:2000', '电子科技大学'),
(127, '2001:250:2002', '西南交通大学'),
(127, '2001:250:2003', '四川大学'),
(127, '2001:250:2009', '四川西华大学'),
(127, '2001:250:2800', '云南大学'),
(127, '2001:250:3000', '华南理工大学'),
(127, '2001:250:3002', '中山大学'),
(127, '2001:250:3401', '广西大学'),
(127, '2001:250:3C00', '深圳大学'),
(127, '2001:250:3C02', '深圳大学城'),
(127, '2001:250:4000', '华中科技大学'),
(127, '2001:250:4001', '武汉大学'),
(127, '2001:250:4002', '中国地质大学(武汉)'),
(127, '2001:250:4004', '武汉理工大学'),
(127, '2001:250:4400', '中南大学'),
(127, '2001:250:4401', '国防科学技术大学'),
(127, '2001:250:4402', '湖南大学'),
(127, '2001:250:4800', '郑州大学'),
(127, '2001:250:480B', '郑州大学'),
(127, '2001:250:480F', '解放军信息工程大学'),
(127, '2001:250:5003', '常熟理工学院'),
(127, '2001:250:5004', '南京师范大学'),
(127, '2001:250:5005', '河海大学'),
(127, '2001:250:5006', '南京农业大学'),
(127, '2001:250:5007', '南京航空航天大学'),
(127, '2001:250:5008', '江苏工业学院'),
(127, '2001:250:5009', '河海大学常州校区'),
(127, '2001:250:5400', '中国科学技术大学'),
(127, '2001:250:5401', '安徽大学'),
(127, '2001:250:5800', '山东大学'),
(127, '2001:250:580A', '山东大学'),
(127, '2001:250:5813', '山东大学'),
(127, '2001:250:5806', '中国海洋大学'),
(127, '2001:250:5807', '中国石油大学'),
(127, '2001:250:5808', '中国石油大学（青岛）'),
(127, '2001:250:6000', '上海交通大学'),
(127, '2001:250:6001', '复旦大学'),
(127, '2001:250:6003', '华东理工大学'),
(127, '2001:250:6005', '上海财经大学'),
(127, '2001:250:6006', '同济大学'),
(127, '2001:250:6007', '上海交通大学医学院'),
(127, '2001:250:6008', '上海大学'),
(127, '2001:250:600D', '上海交通大学-上海城域网'),
(127, '2001:250:600F', '上海外国语大学'),
(127, '2001:250:6400', '浙江大学'),
(127, '2001:250:6405', '浙江大学'),
(127, '2001:250:6800', '厦门大学'),
(127, '2001:250:6801', '集美大学'),
(127, '2001:250:6803', '福州大学'),
(127, '2001:250:6C00', '南昌大学'),
(127, '2001:250:7000', '大连理工大学'),
(127, '2001:250:7001', '东北大学'),
(127, '2001:250:7400', '吉林大学'),
(127, '2001:250:7401', '东北师范大学'),
(127, '2001:250:7801', '哈尔滨工程大学'),
(127, '2001:250:9001', '北京邮电大学'),
(127, '2001:251:4003', '华南农业大学'),
(127, '2001:251:4004', '暨南大学'),
(127, '2001:256:0100', '3Tnet网'),
(127, '2001:CC0:2020', '中科院研究生院'),
(127, '2403:AC00', '天津大学');

--
-- 转存表中的数据 `isp`
--

INSERT INTO `isp` (`id`, `name`) VALUES
(1, '中国电信（非天津）'),
(2, '中国联通（非天津）'),
(3, '中国移动（非天津）'),
(14, '天津电信有线接入'),
(15, '天津联通'),
(6, '天津大学校园宽带'),
(20, '其他接入（Other）'),
(7, '天津大学Wlan'),
(13, '天津电信Wlan'),
(16, '天津移动'),
(10, '天津大学仁爱学院教育网'),
(11, '天津地区其他院校教育网'),
(4, '中国教育网（非天津）'),
(8, '天津大学有线电视网络');

--
-- 转存表中的数据 `langgame`
--

INSERT INTO `langgame` (`id`, `name`, `sort_index`) VALUES
(1, '英文', 0),
(2, '日文', 0),
(3, '官方繁体', 0),
(4, '官方简体', 0),
(5, '简体汉化', 0),
(6, '繁体汉化', 0),
(7, '多语言', 0);

--
-- 转存表中的数据 `langhq`
--

INSERT INTO `langhq` (`id`, `name`, `sort_index`) VALUES
(1, '国语', 0),
(2, '粤语', 0),
(3, '闽南语', 0),
(4, '英语', 0),
(5, '日语', 0),
(6, '韩语', 0),
(7, '其他', 0);

--
-- 转存表中的数据 `langsoftware`
--

INSERT INTO `langsoftware` (`id`, `name`, `sort_index`) VALUES
(1, '中文版', 0),
(2, '英文版', 0),
(3, '汉化版', 0),
(4, '多国语言版', 0),
(5, '其他', 0);

--
-- 转存表中的数据 `langtvseries`
--

INSERT INTO `langtvseries` (`id`, `name`, `sort_index`) VALUES
(1, '国语', 0),
(2, '粤语', 0),
(3, '英语', 0),
(4, '日语', 0),
(5, '韩语', 0),
(9, '其他', 0),
(6, '法语', 0),
(7, '德语', 0),
(8, '西班牙语', 0);

--
-- 转存表中的数据 `langtvshows`
--

INSERT INTO `langtvshows` (`id`, `name`, `sort_index`) VALUES
(1, '国语', 0),
(2, '粤语', 0),
(3, '英语', 0),
(4, '日语', 0),
(5, '韩语', 0);

--
-- 转存表中的数据 `language`
--

INSERT INTO `language` (`id`, `lang_name`, `flagpic`, `sub_lang`, `rule_lang`, `site_lang`, `site_lang_folder`, `trans_state`) VALUES
(1, 'Bulgarian', 'bulgaria.gif', 1, 0, 0, '', 'unavailable'),
(2, 'Croatian', 'croatia.gif', 1, 0, 0, '', 'unavailable'),
(3, 'Czech', 'czechrep.gif', 1, 0, 0, '', 'unavailable'),
(4, 'Danish', 'denmark.gif', 1, 0, 0, '', 'unavailable'),
(5, 'Dutch', 'netherlands.gif', 1, 0, 0, '', 'unavailable'),
(6, '英语', 'uk.gif', 1, 1, 1, 'en', 'outdate'),
(7, 'Estonian', 'estonia.gif', 1, 0, 0, '', 'unavailable'),
(8, 'Finnish', 'finland.gif', 1, 0, 0, '', 'unavailable'),
(9, '法语', 'france.gif', 1, 0, 0, '', 'unavailable'),
(10, '德语', 'germany.gif', 1, 0, 0, '', 'unavailable'),
(11, '希腊语', 'greece.gif', 1, 0, 0, '', 'unavailable'),
(12, 'Hebrew', 'israel.gif', 1, 0, 0, '', 'unavailable'),
(13, 'Hungarian', 'hungary.gif', 1, 0, 0, '', 'unavailable'),
(14, '意大利语', 'italy.gif', 1, 0, 0, '', 'unavailable'),
(15, '日语', 'japan.gif', 1, 0, 0, '', 'unavailable'),
(16, '韩语', 'southkorea.gif', 1, 0, 0, 'ko', 'unavailable'),
(17, 'Norwegian', 'norway.gif', 1, 0, 0, '', 'unavailable'),
(18, '多语种', 'jollyroger.gif', 1, 0, 0, '', 'unavailable'),
(19, 'Polish', 'poland.gif', 1, 0, 0, '', 'unavailable'),
(20, 'Portuguese', 'portugal.gif', 1, 0, 0, '', 'unavailable'),
(21, 'Romanian', 'romania.gif', 1, 0, 0, '', 'unavailable'),
(22, '俄语', 'russia.gif', 1, 0, 0, '', 'unavailable'),
(23, 'Serbian', 'serbia.gif', 1, 0, 0, '', 'unavailable'),
(24, 'Slovak', 'slovakia.gif', 1, 0, 0, '', 'unavailable'),
(25, '简体中文', 'china.gif', 1, 1, 1, 'chs', 'up-to-date'),
(26, '西班牙语', 'spain.gif', 1, 0, 0, '', 'unavailable'),
(27, '瑞典语', 'sweden.gif', 1, 0, 0, '', 'unavailable'),
(28, '繁体中文', 'hongkong.gif', 1, 1, 1, 'cht', 'outdate'),
(29, '土耳其语', 'turkey.gif', 1, 0, 0, '', 'unavailable'),
(30, 'Slovenian', 'slovenia.gif', 1, 0, 0, '', 'unavailable'),
(31, '泰语', 'thailand.gif', 1, 0, 0, 'th', 'unavailable');

--
-- 转存表中的数据 `media`
--

INSERT INTO `media` (`id`, `name`, `sort_index`) VALUES
(1, 'Blu-ray', 0),
(2, 'HD DVD', 1),
(4, 'DVDRip', 3),
(5, 'HDTVRip', 4),
(6, 'DVDR', 5),
(3, 'Remux', 2),
(8, 'CD', 7),
(9, 'Track', 9);

--
-- 转存表中的数据 `modpanel`
--

INSERT INTO `modpanel` (`id`, `name`, `url`, `info`) VALUES
(1, '上传速度异常', 'cheaters.php', '查看作弊者'),
(2, '重复的IP检查', 'ipcheck.php', '检查重复的IP用户'),
(3, '所有客户端(目前)', 'allagents.php', '显示所有客户端（目前下载/上传/播）'),
(4, '广告管理', 'admanage.php', '管理您网站上刊登广告'),
(5, '上传员', 'uploaders.php', '查看上传员数据统计'),
(6, '统计', 'stats.php', '用户上传种子数统计和各类别种子数统计'),
(7, 'IP 测试', 'testip.php', '测试IP是否被禁止'),
(8, '投票概况', 'polloverview.php', '查看投票表决'),
(9, '清除缓存', 'clearcache.php', '清除memcached缓存'),
(10, '未验证用户(目前)', 'unco.php', '显示所有未验证用户'),
(11, '0day发布', '0day.php', '直接从0day服务器发布资源(Wall-E已经搬到新家里，欢迎继续使用)'),
(12, '搜索用户', 'usersearch.php', '搜索用户'),
(13, '种子回收站', 'torrents.php?recycle=1', '查看并管理种子回收站'),
(16, '禁止发布特定文件类型', 'bannedfiletype.php', '禁止发布种子内包含特定文件类型'),
(15, '禁止发布特定资源', 'banstitle.php', '禁止发布标题含有指定关键词的资源'),
(18, '邀请申请区', 'viewinvitebox.php', '查看游客的邀请申请'),
(17, '字幕区', 'subtitles.php', '管理字幕区'),
(19, '验证用户注册', 'verify_signup.php', '审核需要被管理员手动通过的注册请求');

--
-- 转存表中的数据 `nontjuip`
--

INSERT INTO `nontjuip` (`id`, `comment`, `first`, `last`) VALUES
(2, '59.67.48.0-115.24.239.255', 994258944, 1931014143),
(5, '121.193.144.0-127.255.255.255', 2042728448, 2147483647),
(8, '202.113.16.0-202.113.175.255', 3396407296, 3396448255),
(9, '202.113.192.0-211.81.47.255', 3396452352, 3545313279),
(10, '211.81.64.0-219.243.31.255', 3545317376, 3690143743),
(11, '219.243.48.0-222.30.15.255', 3690147840, 3726512127),
(12, '222.30.32.0-255.255.255.255', 3726516224, 4294967295),
(6, '128.0.0.0-172.15.255.255', 2147483648, 2886729727),
(4, '115.26.64.0-121.193.127.255', 1931100160, 2042724351),
(3, '115.25.0.0-115.26.31.255', 1931018240, 1931091967),
(1, '0.0.0.0-59.67.31.255', 0, 994254847);

--
-- 转存表中的数据 `processings`
--

INSERT INTO `processings` (`id`, `name`, `sort_index`) VALUES
(1, 'Raw', 0),
(2, 'Encode', 0);

--
-- 转存表中的数据 `propname`
--

INSERT INTO `propname` (`id`, `name`, `type`, `value`, `price`, `enabled`, `timelength`, `amountlimit`, `note`) VALUES
(1, '免费卡', 'sale', 0, 1000, 'yes', 0, 0, NULL),
(2, '半价卡', 'sale', 0, 0, 'yes', 0, 0, NULL);

--
-- 转存表中的数据 `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer1`, `answer2`, `answer4`, `answer8`, `answer`) VALUES
(20, '如何注册SYSUPT？', '向会员索取邀请', '联盟高校邮箱自助邀请', '等待开放注册', '人民币购买账号', 7),
(2, '什么等级以上的用户会永远保留账号？', 'Crazy User', 'Insane User', 'Veteran User', 'Extreme User', 4),
(3, '如果发现某个想要的资源站内没有，搜索也没找到，自己也没有别的渠道可以弄到，需要求种，这时应当：', '在论坛发帖求种。', '在求种区悬赏求种。', '在群聊区求种。', '在意念中求种。', 2),
(4, '本站的幕后黑手，人称精神病院院长的是：', 'czj122', 'hyff', 'noyle', 'tudouchaoren', 1),
(6, '在你在本站受了委屈，你应当：', '在论坛站点事务区申诉。', '在首页群聊区破口大骂。', '在微博BBS人人网上撒泼。', '在现实生活中找到管理员打架。', 1),
(7, '管理员四人众中，那个学院的成员最多？', '建工学院', '电信学院', '化工学院', '精仪学院', 12),
(8, '获得魔力最快的方法是什么？', '水区灌水', '挂新种', '挂老种', '自爆', 8),
(9, '下列站点中，哪三个是管理完善资源丰富的公网站点？', 'HDC', '六维', 'TTG', 'CHD', 13),
(10, '传说中的“天大PT交流群”的主题是：', '搞基', '约炮', '秀下限', '交流违禁资源', 13),
(11, '请选出视频质量最差的选项：', 'DVDscr', '720P', '1080P', '蓝光原盘', 1),
(12, '请选出无损音乐格式：', 'MP3', 'APE', 'FLAC', 'WAV', 14),
(13, '某部电影没有字幕该怎么办', '没事，自己听得懂', '上网自己找', '在评论里求并骂楼主不负责任', '等', 10),
(14, '下列ID哪一位是女性：', 'czj122', 'kaiser', 'anewhan', 'Dante', 4),
(15, '魔力值干啥用滴呢？', '送mm', '买邀请送mm', '给mm复活', '替mm求种', 15),
(16, '0day这位用户是：', '一个半夜发种的宅男。', '一个发种不写简介的不合格用户。', '一段自动发布最新0day资源的程序。', '一个为了发种奉献出一切的变态。', 4),
(17, '请问以下哪种电影禁止发布', '科幻片', '爱情片', '动作片', '爱情动作片', 8),
(18, '如何搜索除了dota视频以外的游戏资源：勾选游戏后，在输入框内输入', 'no dota', 'dota go to hell', '!dota', '???', 4),
(19, '为啥挑衅管理组会被直接封号呢？', '管理员都是玻璃心，骂不得。', '管理员没有挨骂的义务。', '管理员被骂了会生气，就要封你的号。', '管理员就是这么傲娇，哼~', 15),
(21, '忘记密码怎么办？', '下个东西居然还要密码，老子不用了', '通过注册邮箱找回密码', '向管理员求助', '找站点的漏洞，窃取访问权限', 6),
(22, '如何更改用户名？', '威胁管理员', '花费魔力值', '还没发现这个功能', '', 4),
(23, '以下哪种格式动漫区禁发呢？', '.flv', '.rmvb', '.mkv', '.mp4', 1),
(24, '综艺区不允许发布下列的那种资源', '.mkv', '.rmvb', '.mp4', '.flv等', 12);

--
-- 转存表中的数据 `resolutionanime`
--

INSERT INTO `resolutionanime` (`id`, `name`, `sort_index`) VALUES
(1, '480p', 1),
(2, '720p', 2),
(3, '1080i', 3),
(4, '1080p', 4);

--
-- 转存表中的数据 `resolutionsports`
--

INSERT INTO `resolutionsports` (`id`, `name`, `sort_index`) VALUES
(1, '720i', 1),
(2, '720p', 2),
(3, '1080i', 3),
(4, '1080p', 4);

--
-- 转存表中的数据 `rules`
--

INSERT INTO `rules` (`id`, `lang_id`, `title`, `text`) VALUES
(1, 25, '<span id=\"rules_general\">总则 - <font class=striking>不遵守这些将导致账号被封！</font></span>', '[*]用户一经注册，视作同意本站各项规则，如有违规行为，依据规则进行处理。\r\n[*]请遵守[url=#rules_user]会员信息规定[/url]、[url=#rules_download]下载规则[/url]、[url=#rules_upload]上传规则[/url]、[url=#rules_subtitle]字幕区规则[/url]、[url=#rules_forum]论坛总则[/url]、[url=#rules_comment]评论总则[/url]等本站规则。\r\n[*]请遵守本站的临时规则，具体请见[url=forums.php?action=viewforum&forumid=5]站务公告区[/url]和[url=index.php]首页公告[/url]。\r\n[*]请不要做管理员明文禁止的事情。\r\n\r\n[*]账号保留规则：\r\n              1. [b]威震一方[/b]及以上等级用户会永远保留。\r\n              2. [b]持剑下山[/b]及以上等级用户封存账号（在[url=usercp.php?action=personal]控制面板[/url]）后不会被删除账号。\r\n\r\n[*]账号删除和封禁规则：\r\n              0. 不要做挑战管理组权威的行为，违反直接删除账号。\r\n              1. 封存账号的用户连续300天不登录将被删除账号。\r\n              2. 未封存账号的用户连续150天不登录将被删除账号。\r\n              [color=red]3. 没有流量的用户（即上传/下载数据都为0）连续10天不登录将被删除账号。[/color]\r\n              4. 被禁用账号连续50天未复活（登录）将被删除账号；\r\n              5. 假期运行模式下网站不会删除账号，但请留意假期模式的结束时间。\r\n              6. 注册多个[site]账号的用户主号连同马甲都将被禁用或删除。              \r\n              7. 禁止任何形式的账号交易行为！所有涉及商业行为的相关账号和被邀请人，将被永久禁用或删除，并封禁IP段！\r\n              8. 以下行为会导致账号被直接禁用：包括但不限于作弊、发布反动/色情/政治敏感资源(含求种和候选)，请勿心存侥幸。\r\n              9. 第一次在论坛或服务器中的捣乱和作弊行为会受到警告，累计三次您将永远无缘[site] 。\r\n              10. 过低的分享率会导致严重的后果，包括禁止账号。详见[url=faq.php#id22]常见问题[/url]。\r\n\r\n[*]注意事项: \r\n              1. 不要把本站的种子文件上传到其他Tracker！(具体请看[url=faq.php#id38][b]常见问题[/b][/url])\r\n              2. 禁止将[site]账号出借给他人使用，若是出借账号/借用账号者中有人违规，对方亦会受到“连坐”处罚。\r\n\r\n    [b][color=#ff0000][size=3]管理组对本站相关政策具有最终决定权和最终解释权。[/size][/color][/b]'),
(2, 25, '<span id=\"rules_download\">下载规则 - <font class=striking>违规将会失去下载权限！</font></span>', '[*]你只能使用允许的BT客户端下载本站资源。详见[url=faq.php#id29]常见问题[/url]。\r\n\r\n[*]过低的分享率会导致严重的后果，包括禁止账号。详见[url=faq.php#id22]常见问题[/url]。\r\n\r\n[*]种子促销规则：\r\n        [*]随机促销（种子上传后系统自动随机设为促销）：\r\n                [*]2%的概率成为“[color=#330066][b]30%下载[/b][/color]”；\r\n                [*]2%的概率成为“[color=#0000ff][b]免费[/b][/color]”；\r\n                [*]5%的概率成为“[color=#009900][b]2x上传[/b][/color]”；\r\n                [*]1%的概率成为“[color=#33cc66][b]免费&2x上传[/b][/color]”。\r\n        [*]文件总体积大于50GB的种子将自动成为“[color=#0000ff][b]永久免费[/b][/color]”；\r\n        [*]资料类的种子将自动成为“[color=#ff0000][b]50%下载[/b][/color]”。\r\n        [*]Blu-ray Disk, HD DVD原盘将被设置为成为“[color=#0000ff][b]永久免费[/b][/color]。\r\n        [*]电视剧等每季的第一集将成为“[color=#0000ff][b]免费[/b][/color]”。\r\n        [*]关注度高的种子将被设置为促销（由管理员定夺）。\r\n        [*][b]对于一个种子，它的发布者将得到正常情况1.5倍的上传量 。[/b]\r\n        [*]促销时限：\r\n                [*]“[color=#0000ff][b]永久免费[/b][/color]”、“[color=#ff0000][b]50%下载[/b][/color]”和“[color=#0099ff][b]2x上传&50%下载[/b][/color]” 的种子将一直保持优惠状态；\r\n                [*]由随机促销而产生的“[color=#0000ff][b]免费[/b][/color]”、“[color=#33cc66][b]免费&2x上传[/b][/color]” 和“[color=#330066][b]30%下载[/b][/color]”种子将在发种2天后变为普通种子。\r\n                [*]由管理设置而产生的“[color=#0000ff][b]免费[/b][/color]”、“[color=#33cc66][b]免费&2x上传[/b][/color]” 和“[color=#330066][b]30%下载[/b][/color]”种子将在促销到期后变为普通种子。\r\n        [*]我们也将不定期开启全站[color=#0000ff][b]免费[/b][/color]，届时尽情狂欢吧！\r\n        [*]注：\r\n                [*]“[color=#330066][b]30%下载[/b][/color]”: 下载流量按30%计算，上传流量按正常计算。\r\n                [*]“[color=#0000ff][b]免费[/b][/color]”:  下载流量不计，上传流量按正常计算。\r\n                [*]“[color=#009900][b]2x上传[/b][/color]”:  下载流量按正常计算，上传流量按200%计算。\r\n                [*]其它同理'),
(4, 25, '<span id=\"rules_forum\">论坛总则 - <font class=striking>请遵循以下的守则，违规会受到警告！</font></span>', '[*]禁止攻击、挑动他人的言辞。\r\n[*]禁止在标题或正文使用脏话。\r\n[*]禁止恶意灌水或发布垃圾信息。请勿在论坛非水区版块发布无意义主题或回复（如纯表情）等。\r\n[*]禁止发布求魔、求种、求优惠、广告、拉票、刷屏等无实质意义内容的主题或回复。\r\n[*]禁止为了获取魔力值而大肆灌水。\r\n[*]不要讨论禁忌、政治敏感或当地法律禁止的话题。\r\n[*]不要谈论与色情相关的话题、包括色情网站等。\r\n[*]禁止任何基于种族、国家、民族、肤色、宗教、性别、年龄、性取向、身体或精神障碍的歧视性言辞。违规将导致账号永久性禁用。\r\n[*]禁止挖坟（所有挖坟帖都要被删掉）。\r\n[*]禁止重复发帖。\r\n[*]请确保问题发布在相对应的板块，不要在多个板块发布相同内容的主题。\r\n[*]4周内无新回复的主题将被系统自动锁定.\r\n[*]禁止论坛或站内信息索要魔力值或邀请码，请不要冒险。如果被举报或被管理员发现，即使是初犯，仍然可能会遭到警告，并有可能得到一定魔力值处罚，严重者封禁ID甚至可能封禁IP。\r\n[*][b]所有论坛规则同样适用于群聊区以及全站各评论板块。[/b]'),
(6, 25, '<span id=\"rules_user\">会员信息规定 - <font class=striking>请尽量遵守以下规则</font></span>', '账号：\r\n\r\n[*]注册ID用户中含有对论坛其他ID用户有攻击、侮辱、挑衅、猥亵等内容的，或带有广告性质的；\r\n[*]注册ID用户中与论坛其他用户ID名称相近的 ID 并有侮辱含义的；\r\n[*]注册社会名人姓名的及代表一定机构的专有名词名称的；\r\n[*]使用不雅或不恰当的账号名称和昵称者；\r\n[*]其他不当用户名的\r\n\r\n符合以上任何一种情况封禁该账号！\r\n\r\n头像：\r\n\r\n[*]允许的格式为.gif， .jpg， 和.png。\r\n[*]图片大小不能超过150KB，为了统一，系统会调整头像宽度到150像素大小（浏览器会把图片调整成合适的大小，小图片将被拉伸，而过大的图片只会浪费带宽和CPU) 。\r\n[*]请不要使用可能引起别人反感的图片，包括色情、宗教、血腥的动物/人类、宣扬某种意识形态的图片，带有明显宣传性质的图片，否则管理员站内发信提醒一次，再犯则会警告一次，屡次违犯你可能永远无缘SYSUPT。如果你不确定某张图片是否合适，请站内信联系管理员。\r\n\r\n个人说明，签名档：\r\n\r\n[*]不允许发布攻击、挑动他人的言辞\r\n[*]不允许填写明显宣传个人或组织类信息（包括外链地址）\r\n[*]不允许含有敏感信息以及违法违规内容'),
(3, 25, '<span id=\"rules_upload\">上传规则 - <font class=striking> 谨记: 违规的种子将不经提醒而直接删除 </font></span>', '请遵守规则。如果你对规则有任何不清楚或不理解的地方，请[url=contactstaff.php]咨询管理组[/url]。[b]管理组保留裁决的权力。[/b]\r\n\r\n以下是规范完整的、详尽的种子信息填写规范与指导\r\n         [size=2][*][url=forums.php?action=viewtopic&forumid=5&topicid=56]电影类资源发布标准细则[/url]\r\n         [*][url=forums.php?action=viewtopic&forumid=5&topicid=57]剧集类资源发布标准细则[/url]\r\n         [*][url=forums.php?action=viewtopic&forumid=5&topicid=55]动漫类资源发布标准细则[/url]\r\n         [*][url=forums.php?action=viewtopic&forumid=5&topicid=58]游戏类资源发布标准细则[/url]\r\n         [*][url=forums.php?action=viewtopic&forumid=5&topicid=59]体育类资源发布标准细则[/url]\r\n         [*][url=forums.php?action=viewtopic&forumid=5&topicid=69]音乐类资源发布标准细则[/url]\r\n         [*][url=forums.php?action=viewtopic&forumid=5&topicid=70]综艺类资源发布标准细则[/url]\r\n         [*][url=forums.php?action=viewtopic&forumid=5&topicid=71]软件类资源发布标准细则[/url]\r\n         [*][url=forums.php?action=viewtopic&forumid=5&topicid=72]资料类资源发布标准细则[/url]\r\n         [*][url=forums.php?action=viewtopic&forumid=5&topicid=7035]纪录片类资源发布标准细则[/url]\r\n         [*][url=forums.php?action=viewtopic&forumid=5&topicid=9952]移动视频类资源发布标准细则[/url][/size]\r\n\r\n[b]上传总则[/b]\r\n        [*]上传者必须对上传的文件拥有合法的传播权。\r\n        [*]上传者必须保证上传速度与做种时间。如果在其他人完成前撤种或做种时间不足24小时，或者故意低速上传，上传者将会被警告甚至取消上传权限。\r\n        [*]对于自己发布的种子，发布者将获得1.5倍的上传量。\r\n        [*]如果你有一些违规但却有价值的资源，请将详细情况[url=contactstaff.php]告知管理组[/url]，我们可能破例允许其发布。\r\n        [*][color=red][b]标记“严禁转载”的种子文件和内容不允许重新做种或上传到其他站点；在某些被允许的特殊情况下，转载时要务必保留原作者信息和网站出处等字样！同样我们也尊重其他网站声明的独占资源，被举报确认后将会被处理！[/b][/color]\r\n\r\n[b]上传者资格[/b]\r\n        [*]任何人都能发布资源。\r\n        [*]不过，有些用户需要先在[url=offers.php]候选区[/url]提交候选。详见常见问题中的[url=faq.php#id22]相关说明[/url]。\r\n        \r\n[b]允许的资源和文件：[/b]\r\n        [*]待各类资源版主及管理员协商后发布。\r\n\r\n[b]不允许的资源和文件：[/b]\r\n        [*]总体积小于100MB的资源（电子书、动漫、学习资料类除外）；\r\n        [*]标清视频upscale或部分upscale而成的视频文件；\r\n        [*]质量较差的视频文件，包括CAM、TC、TS、SCR、R5、HalfCD、MiniSD、RMVB或RM、flv等（针对电影资源）；\r\n        [*]单独的样片（样片请和正片一起上传）；\r\n        [*]无正确cue表单的多轨音频文件；\r\n        [*]重复（dupe）的资源（判定规则见下文）；\r\n        [*]涉及禁忌或敏感内容（如色情、敏感政治话题等）的资源；\r\n        [*]损坏的文件，指在读取或回放过程中出现错误的文件；\r\n        [*]垃圾文件，如病毒、木马、网站链接、广告文档、种子中包含的种子文件等，或无关文件。\r\n\r\n[b]重复（dupe）判定规则[/b]\r\n        [*]dupe规则建立的目的是为了鼓励上传早的user、节省服务器资源，本站允许发布的视频资源分为2大类。\r\n        [*]1.HD(高清类)：Blu_Ray/HDDVD原盘，BDRip_1080P，BDRip_720P，HDTV。\r\n        [*]2.SD(标清类):-HDTV，DVDRIP或同等画质的分辨率在480P以上的资源。\r\n        [*]同一资源HD与SD之间不构成重复，不同分辨率不构成重复，原盘与encode不构成重复；同一片源下，不同压制组作品允许共存。\r\n         [*]对于站内已有的资源，\r\n                [*]如果新版本没有旧版本中已确认的错误/画质问题，或新版本的来源有更好的质量，新版本允许发布且旧版本将被视为重复；\r\n                [*]如果旧版本已经连续断种30日以上或已经发布18个月以上，发布新版本将不受重复判定规则约束。\r\n        \r\n[b]资源打包规则（试行）[/b]\r\n        原则上只允许以下资源打包：\r\n        [*]按套装售卖的高清电影合集（如[i]The Ultimate Matrix Collection Blu-ray Box[/i]）；\r\n        [*]整季的电视剧/综艺节目/动漫；\r\n        [*]同一专题的纪录片；\r\n        [*]7日内的高清预告片；\r\n        [*]同一艺术家的MV\r\n                [*]标清MV只允许按DVD打包，且不允许单曲MV单独发布；\r\n                [*]分辨率相同的高清MV；\r\n        [*]同一艺术家的音乐\r\n                [*]5张或5张以上专辑方可打包发布；\r\n                [*]两年内发售的专辑可以单独发布；\r\n                [*]打包时应剔除站内已有的资源，或者将它们都包括进来；\r\n        [*]分卷发售的动漫剧集、角色歌、广播剧等；\r\n        [*]发布组打包发布的资源。\r\n        打包发布的视频资源必须来源于相同类型的媒介（如蓝光原碟），有相同的分辨率水平（如720p），编码格式一致（如x264），但预告片例外。对于电影合集，发布组也必须统一。打包发布的音频资源必须编码格式一致（如全部为分轨FLAC）。打包发布后，将视情况删除相应单独的种子。\r\n        如果你对资源打包有任何不明确的地方，请[url=contactstaff.php]咨询管理组[/url]。管理组保留资源打包相关问题的解释权和处理权。\r\n\r\n[b]例外[/b]\r\n        [*]允许发布来源于TV或是DSR的体育类的标清视频。\r\n        [*]允许发布小于100MB的高清相关软件和文档。\r\n        [*]允许发布小于100MB的单曲专辑。\r\n        [*]允许发布2.0声道或以上标准的国语/粤语音轨。\r\n        [*]允许在发布的资源中附带字幕、游戏破解与补丁、字体、包装等的扫描图。上述几种文件必须统一打包或统一不打包。\r\n        [*]允许在发布音轨时附带附赠DVD的相关文件。\r\n\r\n[b]种子信息[/b]\r\n         所有种子都应该有描述性的标题，必要的介绍以及其他信息。\r\n         填写规范的种子信息时请注意以下事项\r\n         [*]电影、电视剧、动漫：\r\n                 [*]必须包含海报、横幅或BD/HDDVD/DVD封面（如果存在的话）； \r\n                 [*]请尽可能包含画面截图或其缩略图和链接；\r\n                 [*]请尽可能包含文件的详细情况，包括格式、时长、编码、码率、分辨率、语言、字幕等；\r\n                 [*]请尽可能包含演职员名单以及剧情概要。\r\n         [*]体育节目：\r\n                 [*]请勿在文字介绍或截图/文件名/文件大小/时长中泄漏比赛结果。\r\n         [*]音乐：\r\n                 [*]必须包含专辑封面和曲目列表（如果存在的话）；\r\n         [*]PC游戏：\r\n                 [*]必须包含海报或BD/HDDVD/DVD封面（如果存在的话）；\r\n                 [*]请尽可能包含画面截图或其缩略图和链接。\r\n         [*]杂项\r\n                 [*]请正确选择资源的类型和质量信息。\r\n         [*]注意事项\r\n                 [*]管理员会根据规范对种子信息进行编辑。\r\n                 [*]请勿改变或去除管理员对种子信息作出的修改（但上传者可以修正一些错误）。\r\n                 [*]种子信息不符合规范的种子可能会被删除，视种子信息的规范程度而定。\r\n                 [*]如果资源的原始发布信息基本符合规范，请尽量使用原始发布信息。\r\n         [*]种子信息规范度要求\r\n                 [*]标题应该能够让人了解种子的内容；标题和内容简介不能包含广告宣传等信息；标题和内容简介不能包含吸引眼球的文字，符号，噱头，包括个人ID；标题和内容简介不能包含求种，求置顶或推荐，个人主观意见(如：超经典，超好看)等信息；标题和内容简介不能包含与种子内容无关的其他信息。'),
(8, 25, '<span id=\"rules_staff\">管理守则 - <font class=striking>请慎用你的权限！</font></span>', '[*]最重要的一条：慎用你手中的权限！\r\n[*]对于违规行为不要怕说“不”！\r\n[*]不要公开和其他管理员冲突，一切通过私下沟通解决。\r\n[*]不要太绝情，给违规者一个改过的机会。\r\n[*]不要试图“打预防针”，等到人们犯错了再去纠正。\r\n[*]尝试去改正一个不适当的帖而不是简单的关闭它。\r\n[*]多尝试移动帖子到适合的版面而不是简单地锁帖。\r\n[*]当处理版聊帖的时候要宽容适度。\r\n[*]锁帖的时候请给予简单的操作理由。\r\n[*]在屏蔽某个用户前请先站短通知他/她, 如果有所积极回应可以考虑再给2周观察期。\r\n[*]不要禁用一个注册尚未满4周的帐户。\r\n[*]永远记得以理服人。'),
(12, 28, '下載規則 - <font class=striking>違規將會失去下載權限！</font> ', '[*]過低的分享率會導致嚴重的后果，包括禁止帳號。詳見[url=faq.php#22]常見問題[/url]。\r\n[*]種子促銷規則：\r\n        [*]隨機促銷（種子上傳後系統自動隨機設為促銷）：\r\n                [*]10%的概率成為“[color=#7c7ff6][b]50%下載[/b][/color]”；\r\n                [*]5%的概率成為“[color=#f0cc00][b]免費[/b][/color]”；\r\n                [*]5%的概率成為“[color=#aaaaaa][b]2x上傳[/b][/color]”；\r\n                [*]3%的概率成為“[color=#7ad6ea][b]50%下載&2x上傳[/b][/color]”；\r\n                [*]1%的概率成為“[color=#99cc66][b]免費&2x上傳[/b][/color]”。\r\n        [*]檔總體積大於20GB的種子將自動成為“[color=#f0cc00][b]免費[/b][/color]”。\r\n        [*]Blu-ray Disk, HD DVD原盤將成為“[color=#f0cc00][b]免費[/b][/color]”。\r\n        [*]電視劇等每季的第一集將成為“[color=#f0cc00][b]免費[/b][/color]”。\r\n        [*]關注度高的種子將被設置為促銷（由管理員定奪）。\r\n        [*]促銷時限：\r\n                [*]除了“[color=#aaaaaa][b]2x上傳[/b][/color]”以外，其餘類型的促銷限時7天（自種子發佈時起）；\r\n                [*]“[color=#aaaaaa][b]2x上傳[/b][/color]”無時限。\r\n        [*]所有種子在發佈1個月後將自動永久成為“[color=#aaaaaa][b]2x上傳[/b][/color]”。            \r\n        [*]我們也將不定期開啟全站[color=#f0cc00][b]免費[/b][/color]，屆時盡情狂歡吧~:mml:  :mml:  :mml:\r\n[*]你只能使用允許的BT客戶端下載本站資源。詳見[url=faq.php#29]常見問題[/url]。'),
(14, 28, '論壇總則 - <font class=striking>請遵循以下的守則，違規會受到警告！</font> ', '[*]禁止攻擊、挑動他人的言辭。\r\n[*]禁止惡意灌水或發布垃圾信息。請勿在論壇非Water Jar版塊發布無意義主題或回復（如純表情）等。\r\n[*]不要為了獲取魔力值而大肆灌水。\r\n[*]禁止在標題或正文使用臟話。\r\n[*]不要討論禁忌、政治敏感或當地法律禁止的話題。\r\n[*]禁止任何基于種族、國家、民族、膚色、宗教、性別、年齡、性取向、身體或精神障礙的歧視性言辭。違規將導致賬號永久性禁用。\r\n[*]禁止挖墳（所有挖墳帖都要被刪掉）。\r\n[*]禁止重復發帖。\r\n[*]請確保問題發布在相對應的板塊。\r\n[*]365天無新回復的主題將被系統自動鎖定。'),
(5, 25, '<span id=\"rules_comment\">评论总则 - <font class=striking>永远尊重上传者！</font></span>', '[*]无论如何，请尊重上传者！\r\n[*]所有论坛发帖的规则同样适用于评论。\r\n[*]如果你没有下载的意向，请不要随便发表否定性的评论，严禁在种子发布页的评论里发表“有没有720p的”、“不下了，等1080p”、“等xx小组的”、“等原盘”、 “等中字”、“等打包”、“这个应该给FREE（2xfree）”、“这个怎么没优惠”、“怎么连个简介也没有（机器人0day种）”、“等字幕”、\"没有字幕就不下了(等字幕有了再说)\"、\"楼主速度太慢了\"等等诸如此类求种、求字幕、求优惠、不尊重发布者的言论，否则会警告一次，屡次违犯你可能永远无缘SYSUPT。'),
(16, 28, '頭像使用規定 - <font class=striking>請盡量遵守以下規則</font> ', '[*]允許的格式為.gif， .jpg， 和.png。\r\n[*]圖片大小不能超過150KB，為了統一，系統會調整頭像寬度到150像素大小（瀏覽器會把圖片調整成合適的大小，小圖片將被拉伸，而過大的圖片只會浪費帶寬和CPU) 。\r\n[*]請不要使用可能引起別人反感的圖片，包括色情、宗教、血腥的動物/人類、宣揚某種意識形態的圖片。如果你不確定某張圖片是否合適，請站短管理員。\r\n'),
(7, 25, '趣味盒规则 - <font class=striking>在娱乐中赚分</font>', '[*]本规则更新于2011-12-18\r\n[*]任何用户都可在趣味盒中投放笑话、趣图、搞笑视频、Flash等有趣的内容，除了色情、禁忌、政治敏感和当地法律禁止的内容。\r\n[*]正常情况下，一条趣味内容在发布24小时后过期。然而，如果获得的投票数超过20且其中“有趣”的比例低于50%，趣味内容将提前过期。\r\n[*]新的趣味内容[b]只有[/b]在旧的内容过期后才能提交。\r\n[*]若趣味内容被多数用户投票认为有趣，其发布者将得到以下奖励：\r\n           [*]票数超过25，其中认为“有趣”比例超过75%，发布者得到5个魔力值。\r\n           [*]票数超过50，其中认为“有趣”比例超过75%，发布者得到另外的5个魔力值。\r\n           [*]票数超过100，其中认为“有趣”比例超过75%，发布者得到另外的5个魔力值。\r\n           [*]票数超过200，其中认为“有趣”比例超过75%，发布者得到另外的5个魔力值。\r\n           [*]票数超过25，其中认为“有趣”比例超过90%，发布者得到50个魔力值。\r\n           [*]票数超过50，其中认为“有趣”比例超过90%，发布者得到另外的50个魔力值。\r\n           [*]票数超过100，其中认为“有趣”比例超过90%，发布者得到另外的50个魔力值。\r\n           [*]票数超过200，其中认为“有趣”比例超过90%，发布者得到另外的50个魔力值。'),
(11, 28, '總則 - <font class=striking>不遵守這些將導致帳號被封！</font> ', '[*]請不要做管理員明文禁止的事情。\r\n[*]不允許發送垃圾信息。\r\n[*]賬號保留規則：\r\n              1.[b]Veteran User[/b]及以上等級用戶會永遠保留；\r\n              2.[b]Elite User[/b]及以上等級用戶封存賬號（在[url=usercp.php?action=personal]控制面板[/url]）后不會被刪除帳號；\r\n              3.封存賬號的用戶連續400天不登錄將被刪除帳號；\r\n              4.未封存賬號的用戶連續150天不登錄將被刪除帳號；\r\n              5.沒有流量的用戶（即上傳/下載數據都為0）連續100天不登錄將被刪除帳號。\r\n[*]一切作弊的帳號會被封，請勿心存僥幸。\r\n[*]注冊多個[site]賬號的用戶將匾被禁止。\r\n[*]不要把本站的種子文件上傳到其他Tracker！(具體請看 [url=faq.php#38][b]常見問題[/b][/url])\r\n[*]第一次在論壇或服務器中的搗亂行為會受到警告，第二次您將永遠無緣[site] 。'),
(13, 28, '上傳規則 - <font class=striking> 謹記: 違規的種子將不經提醒而直接刪除 </font> ', '請遵守規則。如果你對規則有任何不清楚或不理解的地方，請[url=contactstaff.php]諮詢管理組[/url]。[b]管理組保留裁決的權力。[/b]\r\n\r\n[b]上傳總則[/b]\r\n        [*]上傳者必須對上傳的檔擁有合法的傳播權。\r\n        [*]上傳者必須保證上傳速度與做種時間。如果在其他人完成前撤種或做種時間不足24小時，或者故意低速上傳，上傳者將會被警告甚至取消上傳許可權。\r\n        [*]對於自己發佈的種子，發佈者將獲得雙倍的上傳量。\r\n        [*]如果你有一些違規但卻有價值的資源，請將詳細情況[url=contactstaff.php]告知管理組[/url]，我們可能破例允許其發佈。\r\n\r\n[b]上傳者資格[/b]\r\n        [*]任何人都能發佈資源。\r\n        [*]不過，有些使用者需要先在[url=offers.php]候選區[/url]提交候選。詳見常見問題中的[url=faq.php#22]相關說明[/url]。\r\n        [*]對於遊戲類資源，只有[color=#DC143C][b]上傳員[/b][/color]及以上等級的使用者，或者是管理組特別指定的用戶，才能自由上傳。其他用戶必須先在[url=offers.php]候選區[/url]提交候選。\r\n\r\n[b]允許的資源和檔：[/b]\r\n        [*]高清（HD）視頻，包括\r\n                [*]完整高清媒介，如藍光（Blu-ray）原碟、HD DVD原碟等，或remux，\r\n                [*]HDTV流媒體，\r\n                [*]來源於上述媒介的高清重編碼（至少為720p標準），\r\n                [*]其他高清視頻，如高清DV；\r\n        [*]標清（SD）視頻，只能是\r\n                [*]來源於高清媒介的標清重編碼（至少為480p標準）；\r\n                [*]DVDR/DVDISO，\r\n                [*]DVDRip、CNDVDRip；\r\n        [*]無損音軌（及相應cue表單），如FLAC、Monkey\'s Audio等；\r\n        [*]5.1聲道或以上標準的電影音軌、音樂音軌（DTS、DTSCD鏡像等），評論音軌；\r\n        [*]PC遊戲（必須為原版光碟鏡像）；\r\n        [*]7日內發佈的高清預告片；\r\n        [*]與高清相關的軟體和文檔。\r\n\r\n[b]不允許的資源和檔：[/b]\r\n        [*]總體積小於100MB的資源；\r\n        [*]標清視頻upscale或部分upscale而成的視頻檔；\r\n        [*]屬於標清級別但品質較差的視頻檔，包括CAM、TC、TS、SCR、DVDSCR、R5、R5.Line、HalfCD等；\r\n        [*]RealVideo編碼的視頻（通常封裝於RMVB或RM）、flv檔；\r\n        [*]單獨的樣片（樣片請和正片一起上傳）；\r\n        [*]未達到5.1聲道標準的有損音訊檔，如常見的有損MP3、有損WMA等；\r\n        [*]無正確cue表單的多軌音訊檔；\r\n        [*]硬碟版、高壓版的遊戲資源，非官方製作的遊戲鏡像，協力廠商mod，小遊戲合集，單獨的遊戲破解或補丁；\r\n        [*]RAR等壓縮檔；\r\n        [*]重複（dupe）的資源（判定規則見下文）；\r\n        [*]涉及禁忌或敏感內容（如色情、敏感政治話題等）的資源；\r\n        [*]損壞的檔，指在讀取或重播過程中出現錯誤的檔；\r\n        [*]垃圾檔，如病毒、木馬、網站連結、廣告文檔、種子中包含的種子檔等，或無關檔。\r\n\r\n[b]重複（dupe）判定規則：品質重於數量[/b]\r\n        [*]視頻資源按來源媒介確定優先順序，主要為：Blu-ray/HD DVD > HDTV > DVD > TV。同一視頻高優先順序版本將使低優先順序版本被判定為重複。\r\n        [*]同一視頻的高清版本將使標清版本被判定為重複。\r\n        [*]對於動漫類視頻資源，HDTV版本和DVD版本有相同的優先順序，這是一個特例。\r\n        [*]來源於相同媒介，相同解析度水準的高清視頻重編碼\r\n                [*]參考“[url=forums.php?action=viewtopic&forumid=6&topicid=1520]Scene & Internal, from Group to Quality-Degree. ONLY FOR HD-resources[/url]”按發佈組確定優先順序；\r\n                [*]高優先順序發佈組發佈的版本將使低優先順序或相同優先順序發佈組發佈的其他版本被判定為重複；\r\n                [*]但是，總會保留一個當前最佳畫質的來源經重編碼而成的DVD5大小（即4.38 GB左右）的版本；\r\n                [*]基於無損截圖對比，高品質版本將使低品質版本被視為重複。\r\n        [*]來自其他區域，包含不同配音和/或字幕的blu-ray/HD DVD原盤版本不被視為重複版本。\r\n        [*]每個無損音軌資源原則上只保留一個版本，其餘不同格式的版本將被視為重複。分軌FLAC格式有最高的優先順序。\r\n        [*]對於站內已有的資源，\r\n                [*]如果新版本沒有舊版本中已確認的錯誤/畫質問題，或新版本的來源有更好的品質，新版本允許發佈且舊版本將被視為重複；\r\n                [*]如果舊版本已經連續斷種45日以上或已經發佈18個月以上，發佈新版本將不受重複判定規則約束。\r\n        [*]新版本發佈後，舊的、重複的版本將被保留，直至斷種。\r\n\r\n[b]資源打包規則（試行）[/b]\r\n        原則上只允許以下資源打包：\r\n        [*]按套裝售賣的高清電影合集（如[i]The Ultimate Matrix Collection Blu-ray Box[/i]）；\r\n        [*]整季的電視劇/綜藝節目/動漫；\r\n        [*]同一專題的紀錄片；\r\n        [*]7日內的高清預告片；\r\n        [*]同一藝術家的MV\r\n                [*]標清MV只允許按DVD打包，且不允許單曲MV單獨發佈；\r\n                [*]解析度相同的高清MV；\r\n        [*]同一藝術家的音樂\r\n                [*]5張或5張以上專輯方可打包發佈；\r\n                [*]兩年內發售的專輯可以單獨發佈；\r\n                [*]打包時應剔除站內已有的資源，或者將它們都包括進來；\r\n        [*]分卷發售的動漫劇集、角色歌、廣播劇等；\r\n        [*]發佈組打包發佈的資源。\r\n        打包發佈的視頻資源必須來源於相同類型的媒介（如藍光原碟），有相同的解析度水準（如720p），編碼格式一致（如x264），但預告片例外。對於電影合集，發佈組也必須統一。打包發佈的音訊資源必須編碼格式一致（如全部為分軌FLAC）。打包發佈後，將視情況刪除相應單獨的種子。\r\n        如果你對資源打包有任何不明確的地方，請[url=contactstaff.php]諮詢管理組[/url]。管理組保留資源打包相關問題的解釋權和處理權。\r\n\r\n[b]例外[/b]\r\n        [*]允許發佈來源於TV或是DSR的體育類的標清視頻。\r\n        [*]允許發佈小於100MB的高清相關軟體和文檔。\r\n        [*]允許發佈小於100MB的單曲專輯。\r\n        [*]允許發佈2.0聲道或以上標準的國語/粵語音軌。\r\n        [*]允許在發佈的資源中附帶字幕、遊戲破解與補丁、字體、包裝等的掃描圖。上述幾種檔必須統一打包或統一不打包。\r\n        [*]允許在發佈音軌時附帶附贈DVD的相關檔。\r\n\r\n[b]種子資訊[/b]\r\n        所有種子都應該有描述性的標題，必要的介紹以及其他資訊。以下是一份簡明的規範，完整的、詳盡的規範請參閱“[url=forums.php?action=viewtopic&topicid=3438&page=0#56711]種子資訊填寫規範與指導[/url]”。\r\n        [*]標題\r\n                [*]電影：[i][中文名] 名稱 [年份] [剪輯版本] [發佈說明] 解析度 來源 [音訊/]視頻編碼-發佈組名稱[/i]\r\n                      例：[i]蝙蝠俠:黑暗騎士 The Dark Knight 2008 PROPER 720p BluRay x264-SiNNERS[/i]\r\n                [*]電視劇：[i][中文名] 名稱 [年份] S**E** [發佈說明] 解析度 來源 [音訊/]視頻編碼-發佈組名稱[/i]\r\n                      例：[i]越獄 Prison Break S04E01 PROPER 720p HDTV x264-CTU[/i]\r\n                [*]音軌：[i][中文藝術家名 - 中文專輯名] 藝術家名 - 專輯名 [年份] [版本] [發佈說明] 音訊編碼[-發佈組名稱][/i]\r\n                      例：[i]恩雅 - 冬季降臨 Enya - And Winter Came 2008 FLAC[/i]\r\n                [*]遊戲：[i][中文名] 名稱 [年份] [版本] [發佈說明][-發佈組名稱][/i]\r\n                      例：[i]紅色警戒3:起義時刻 Command And Conquer Red Alert 3 Uprising-RELOADED[/i]\r\n        [*]副標題\r\n                [*]不要包含廣告或求種/續種請求。\r\n        [*]外部資訊\r\n                [*]電影和電視劇必須包含外部資訊連結（如IMDb連接）位址（如果存在的話）。\r\n        [*]簡介\r\n                [*]NFO圖請寫入NFO檔，而不是粘貼到簡介裡。\r\n                [*]電影、電視劇、動漫：\r\n                        [*]必須包含海報、橫幅或BD/HDDVD/DVD封面（如果存在的話）； \r\n                        [*]請盡可能包含畫面截圖或其縮略圖和連結；\r\n                        [*]請盡可能包含檔的詳細情況，包括格式、時長、編碼、碼率、解析度、語言、字幕等；\r\n                        [*]請盡可能包含演職員名單以及劇情概要。\r\n                [*]體育節目：\r\n                        [*]請勿在文字介紹或截圖/檔案名/檔大小/時長中洩漏比賽結果。\r\n                [*]音樂：\r\n                        [*]必須包含專輯封面和曲目列表（如果存在的話）；\r\n                [*]PC遊戲：\r\n                        [*]必須包含海報或BD/HDDVD/DVD封面（如果存在的話）；\r\n                        [*]請盡可能包含畫面截圖或其縮略圖和連結。\r\n        [*]雜項\r\n                [*]請正確選擇資源的類型和品質資訊。\r\n        [*]注意事項\r\n                [*]管理員會根據規範對種子資訊進行編輯。\r\n                [*]請勿改變或去除管理員對種子資訊作出的修改（但上傳者可以修正一些錯誤）。\r\n                [*]種子資訊不符合規範的種子可能會被刪除，視種子資訊的規範程度而定。\r\n                [*]如果資源的原始發佈資訊基本符合規範，請儘量使用原始發佈資訊。\r\n'),
(18, 28, '管理守則 - <font class=striking>請慎用你的權限！</font> ', '[*]最重要的一條：慎用你手中的權限！\r\n[*]對于違規行為不要怕說“不”！\r\n[*]不要公開和其他管理員沖突，一切通過私下溝通解決。\r\n[*]不要太絕情，給違規者一個改過的機會。\r\n[*]不要試圖“打預防針”，等到人們犯錯了再去糾正。\r\n[*]嘗試去改正一個不適當的帖而不是簡單的關閉它。\r\n[*]多嘗試移動帖子到適合的版面而不是簡單地鎖帖。\r\n[*]當處理版聊帖的時候要寬容適度。\r\n[*]鎖帖的時候請給予簡單的操作理由。\r\n[*]在屏蔽某個用戶前請先站短通知他/她, 如果有所積極回應可以考慮再給2周觀察期。\r\n[*]不要禁用一個注冊尚未滿4周的帳戶。\r\n[*]永遠記得以理服人。\r\n'),
(17, 28, '趣味盒規則 - <font class=striking>在娛樂中賺分</font> ', '[*]任何用戶都可在趣味盒中投放笑話、趣圖、搞笑視頻、Flash等有趣的內容，除了色情、禁忌、政治敏感和當地法律禁止的內容。\r\n[*]正常情況下，一條趣味內容在發布24小時后過期。然而，如果獲得的投票數超過20且其中“有趣”的比例低于25%，趣味內容將提前過期。\r\n[*]新的趣味內容[b]只有[/b]在舊的內容過期后才能提交。\r\n[*]若趣味內容被多數用戶投票認為有趣，其發布者將得到以下獎勵：\r\n           [*]票數超過25，其中認為“有趣”比例超過50%，發布者得到5個魔力值。\r\n           [*]票數超過50，其中認為“有趣”比例超過50%，發布者得到另外的5個魔力值。\r\n           [*]票數超過100，其中認為“有趣”比例超過50%，發布者得到另外的5個魔力值。\r\n           [*]票數超過200，其中認為“有趣”比例超過50%，發布者得到另外的5個魔力值。\r\n           [*]票數超過25，其中認為“有趣”比例超過75%，發布者得到10個魔力值。\r\n           [*]票數超過50，其中認為“有趣”比例超過75%，發布者得到另外的10個魔力值。\r\n           [*]票數超過100，其中認為“有趣”比例超過75%，發布者得到另外的10個魔力值。\r\n           [*]票數超過200，其中認為“有趣”比例超過75%，發布者得到另外的10個魔力值。'),
(21, 6, 'General rules - <font class=striking>Breaking these rules can and will get you banned!</font>', '[*]Do not do things we forbid.\r\n[*]Do not spam.\r\n[*]Cherish your user account. Inactive accounts would be deleted based on the following rules:\r\n              1.[b]Veteran User[/b] or above would never be deleted.\r\n              2.[b]Elite User[/b] or above would never be deleted if packed (at [url=usercp.php?action=personal]User CP[/url]).\r\n              3.Packed accounts would be deleted if users have not logged in for more than 400 days in a row.\r\n              4.Unpacked accounts would be deleted if users have not logged in for more than 150 days in a row.\r\n              5.Accounts with both uploaded and downloaded amount being 0 would be deleted if users have not logged in for more than 100 days in a row.\r\n[*]User found cheating would be deleted. Don\'t take chances!\r\n[*]Possession of multiple [site] accounts will result in a ban!\r\n[*]Do not upload our torrents to other trackers! (See the [url=faq.php#38]FAQ[/url] for details.)\r\n[*]Disruptive behavior in the forums or on the server will result in a warning. You will only get [b]one[/b] warning! After that it\'s bye bye Kansas!'),
(15, 28, '評論總則 - <font class=striking>永遠尊重上傳者！</font> ', '[*]無論如何，請尊重上傳者！\r\n[*]所有論壇發帖的規則同樣適用于評論。\r\n[*]如果你沒有下載的意向，請不要隨便發表否定性的評論。'),
(25, 6, 'Commenting Guidelines - <font class=striking>Always respect uploaders no matter what!</font>', '[*]Always respect uploaders no matter what!\r\n[*]All rules of forum posting apply to commenting, too.\r\n[*]Do not post negative comments about torrents that you don\'t plan to download.'),
(27, 6, 'Funbox Rules - <font class=striking>Get bonus with fun!</font>', '[*]Users can submit anything funny (e.g. stories, pictures, flash, video) except things that is pornographic, taboo, political sensitive or forbidden by local laws.\r\n[*]Normally a newly-submitted funbox item would be outdated after 24 hours. However, if there are 20 or more votes on a funbox item, among which votes for \'funny\' is less than 25%, the funbox item would be outdated ahead of its due time.\r\n[*]New funbox item can be submitted [b]only[/b] when the old one is outdated.\r\n[*]User, whose funbox item is voted as [b]funny[/b], would be rewarded based on the following rules:\r\n           [*]More than 25 votes, among which votes for [i]funny[/i] exceed 50%. User gets 5 bonus.\r\n           [*]More than 50 votes, among which votes for [i]funny[/i] exceed 50%. User gets another 5 bonus.\r\n           [*]More than 100 votes, among which votes for [i]funny[/i] exceed 50%. User gets another 5 bonus.\r\n           [*]More than 200 votes, among which votes for [i]funny[/i] exceed 50%. User gets another 5 bonus.\r\n           [*]More than 25 votes, among which votes for [i]funny[/i] exceed 75%. User gets 10 bonus.\r\n           [*]More than 50 votes, among which votes for [i]funny[/i] exceed 75%. User gets another 10 bonus.\r\n           [*]More than 100 votes, among which votes for [i]funny[/i] exceed 75%. User gets another 10 bonus.\r\n           [*]More than 200 votes, among which votes for [i]funny[/i] exceed 75%. User gets another 10 bonus.'),
(22, 6, 'Downloading rules - <font class=striking>By not following these rules you will lose download privileges!</font>', '[*]Low ratios may result in severe consequences, including banning accounts. See [url=faq.php#22]FAQ[/url].\r\n[*]Rules for torrent promotion:\r\n        [*]Random promotion (torrents promoted randomly by system upon uploading):\r\n                [*]10% chance becoming [color=#7c7ff6][b]50% Leech[/b][/color],\r\n                [*]5% chance becoming [color=#f0cc00][b]Free Leech[/b][/color],\r\n                [*]5% chance becoming [color=#aaaaaa][b]2X up[/b][/color],\r\n                [*]3% chance becoming [color=#7ad6ea][b]50% Leech and 2X up[/b][/color],\r\n                [*]1% chance becoming [color=#99cc66][b]Free Leech and 2X up[/b][/color].\r\n        [*]Torrents larger than 20GB will automatically be [color=#f0cc00][b]Free Leech[/b][/color].\r\n        [*]Raw Blu-ray, HD DVD Discs will be [color=#f0cc00][b]Free Leech[/b][/color].\r\n        [*]First episode of every season of TV Series, etc. will be [color=#f0cc00][b]Free Leech[/b][/color].\r\n        [*]Highly popular torrents will be on promotion (decided by admins).\r\n        [*]Promotion timeout:\r\n                [*]Except [color=#aaaaaa][b]2X up[/b][/color], all the other types of promotion will be due after 7 days (counted from the time when the torrent is uploaded).\r\n                [*][color=#aaaaaa][b]2X up[/b][/color] will never become due.\r\n        [*]ALL the torrents will be [color=#aaaaaa][b]2X up[/b][/color] forever when they are on the site for over 1 month.\r\n        [*]On special occasions, we would set the whole site [color=#f0cc00][b]Free Leech[/b][/color]. Grab as much as you can. :mml:  :mml:  :mml:\r\n[*]You may [b]only[/b] use allowed bittorrent clients at [site]. See [url=faq.php#29]FAQ[/url].'),
(24, 6, 'General Forum Guidelines - <font class=stiking>Please follow these guidelines or else you might end up with a warning!</font>', '[*]No aggressive behavior or flaming in the forums.\r\n[*]No trashing of any topics (i.e. SPAM). Do not submit meaningless topics or posts (e.g. smiley only) in any forum except Water Jar.\r\n[*]Do not flood any forum in order to get bonus.\r\n[*]No foul language on title or text.\r\n[*]Do not discuss topics that are taboo, political sensitive or forbidden by local laws.\r\n[*]No language of discrimination based on race, national or ethnic origin, color, religion, gender, age, sexual preference or mental or physical disability. Violating this rule would result in permanent ban.\r\n[*]No bumping... (All bumped threads will be deleted.)\r\n[*]No double posting. \r\n[*]Please ensure all questions are posted in the correct section!\r\n[*]Topics without new reply in 365 days would be locked automatically by system.'),
(26, 6, 'Avatar Guidelines - <font class=striking>Please try to follow these guidelines</font>', '[*]The allowed formats are .gif, .jpg and .png. \r\n[*]Be considerate. Resize your images to a width of 150 px and a size of no more than 150 KB. (Browsers will rescale them anyway: smaller images will be expanded and will not look good; larger images will just waste bandwidth and CPU cycles.)\r\n[*]Do not use potentially offensive material involving porn, religious material, animal / human cruelty or ideologically charged images. Staff members have wide discretion on what is acceptable. If in doubt PM one. '),
(23, 6, 'Uploading rules - <font class=striking>Torrents violating these rules may be deleted without notice</font>', 'Please respect the rules, and if you have any questions about something unclear or not understandable, please [url=contactstaff.php]consult the staff[/url]. Staff reserves the rights to adjudicate.\r\n\r\n[b]GENERAL[/b]\r\n        [*]You must have legal rights to the file you upload.\r\n        [*]Make sure your torrents are well-seeded. If you fail to seed for at least 24 hours or till someone else completes, or purposely keep a low uploading speed, you can be warned and your privilege to upload can be removed.\r\n        [*]You would get 2 times as much of uploading credit for torrents uploaded by yourself.\r\n        [*]If you have something interesting that somehow violates these rules, [url=contactstaff.php]ask the staff[/url] with a detailed description and we might make an exception.\r\n\r\n[b]PRIVILEGE[/b]\r\n        [*]Everyone can upload.\r\n        [*]However, some must go through the [url=offers.php]Offer section[/url]. See [url=faq.php#22]FAQ[/url] for details.\r\n        [*]ONLY users in the class [color=#DC143C][b]Uploader[/b][/color] or above, or users specified by staff can freely upload games. Others should go through the [url=offers.php]Offer section[/url].\r\n\r\n[b]ALLOWED CONTENTS[/b]\r\n        [*]High Definition (HD) videos, including\r\n                [*]complete HD media, e.g. Blu-ray disc, HD DVD disc, etc. or remux,\r\n                [*]captured HDTV streams,\r\n                [*]encodes from above listed sources in HD resolution (at least 720p),\r\n                [*]other HD videos such as HD DV.\r\n        [*]Standard Definition (SD) videos, only\r\n                [*]SD encodes from HD media (at least 480p),\r\n                [*]DVDR/DVDISO,\r\n                [*]DVDRip, CNDVDRip.\r\n        [*]Lossless audio tracks (and corresponding cue sheets), e.g. FLAC, Monkey\'s Audio, etc.\r\n        [*]5.1-channel (or higher) movie dubs and music tracks (DTS, DTS CD Image, etc.), and commentary tracks.\r\n        [*]PC games (must be original images).\r\n        [*]HD trailers released within 7 days.\r\n        [*]HD-related software and documents.\r\n\r\n[b]NOT ALLOWED CONTENTS[/b]\r\n        [*]Contents less than 100 MB in total.\r\n        [*]Upscaled/partially upscaled in Standard Definition mastered/produced content.\r\n        [*]Videos in SD resolution but with low quality, including CAM, TC, TS, SCR, DVDSCR, R5, R5.Line, HalfCD, etc.\r\n        [*]RealVideo encoded videos (usually contained in RMVB or RM), flv files.\r\n        [*]Individual samples (to be included in the \"Main torrent\").\r\n        [*]Lossy audios that are not 5.1-channel (or higher), e.g. common lossy MP3\'s, lossy WMAs, etc.\r\n        [*]Multi-track audio files without proper cue sheets.\r\n        [*]Installation-free or highly compressed games, unofficial game images, third-party mods, collection of tiny games, individual game cracks or patches.\r\n        [*]RAR, etc. archived files.\r\n        [*]Dupe releases. (see beneath for dupe rules.)\r\n        [*]Taboo or sensitive contents (such as porn or politically sensitive topics).\r\n        [*]Damaged files, i.e. files that are erroneous upon reading or playback.\r\n        [*]Spam files, such as viruses, trojans, website links, advertisements, torrents in torrent, etc., or irrelevant files.\r\n\r\n[b]DUPE RULES: QUALITY OVER QUANTITY[/b]\r\n        [*]Video releases are prioritized according to their source media, and mainly: Blu-ray/HD DVD > HDTV > DVD > TV. High prioritized versions will dupe other versions with low priorities of the same video.\r\n        [*]HD releases will dupe SD releases of the same video.\r\n        [*]For animes, HDTV versions are equal in priority to DVD versions. This is an exception.\r\n        [*]Encodes from the same type of media and in the same resolution \r\n                [*]They are prioritized based on \"[url=forums.php?action=viewtopic&forumid=6&topicid=1520]Scene & Internal, from Group to Quality-Degree. ONLY FOR HD-resources[/url]\".\r\n                [*]Releases from preferred groups will dupe releases from groups with the same or lower priority.\r\n                [*]However, one DVD5 sized (i.e. approx. 4.38 GB) release from the best available source will always be allowed.\r\n                [*]Based on lossless screenshots comparison, releases with higher quality will dupe those with low quality.\r\n        [*]Blu-ray Disk/HD DVD Original Copy releases from another region containing different dubbing and/or subtitle aren\'t considered to be dupe.\r\n        [*]Only one copy of the same lossless audio contents will be preserved, and copies of other formats will be duped. FLAC (in separate tracks) is most preferred.\r\n        [*]For contents already on the site\r\n                [*]If new release doesn\'t contain the confirmed errors/glitches/problems of the old release or is based on a better source, then it\'s allowed to be uploaded and the old release is duped.\r\n                [*]If the old release is dead for 45 days or longer, or exists for 18 months or longer, then the new release is free from the dupe rules.\r\n        [*]After uploading the new release, old releases won\'t be removed until they\'re dead of inactivity.\r\n\r\n[b]PACKING RULES (ON TRIAL)[/b]\r\n        ONLY the following contents are allowed to be packed in principle:\r\n        [*]HD movie collections sold as box set (e.g. [i]The Ultimate Matrix Collection Blu-ray Box[/i]).\r\n        [*]Complete season(s) of TV Series/TV shows/animes.\r\n        [*]Documentaries on the same specific subject matter.\r\n        [*]HD trailers released within 7 days.\r\n        [*]MVs of the same artist\r\n                [*]SD MVs are allowed to be packed according to DVD discs only, and no upload of individual songs is allowed.\r\n                [*]HD MVs in the same resolution.\r\n        [*]Music of the same artist\r\n                [*]Only 5 or more albums can be packed.\r\n                [*]Albums released within 2 years can be individually uploaded.\r\n                [*]Generally, contents that are already on the site should be removed from the pack upon uploading, otherwise include them all together in the pack.\r\n        [*]Animes, character songs, dramas, etc. that are released in separate volumes.\r\n        [*]Contents packed by formal groups.\r\n        Packed video contents must be from media of the same type (e.g. Blu-ray discs), in the same resolution standard (e.g. 720p), and encoded in the same video codec (e.g. x264). However, trailer are exceptions. Moreover, a movie collection should be released from the same group. Packed audio contents must be encoded in the same audio codec (e.g. all in FLAC). Corresponding individual torrents can be removed upon packing, depending on actual situation.\r\n        If you are not clear of anything about packing, please [url=contactstaff.php]consult the staff[/url]. Staff reserve all the rights to interpret and deal with packing-related issues.\r\n\r\n[b]EXCEPTIONS[/b]\r\n        [*]ALLOWED: SD videos from TV/DSR in the category \"Sports\".\r\n        [*]ALLOWED: contents less than 100 MB but related to software and documents.\r\n        [*]ALLOWED: single albums that are less than 100 MB.\r\n        [*]ALLOWED: 2.0-channel (or higher) Mandarin/Cantonese dubs.\r\n        [*]ALLOWED: attached subtitles, game cracks and patches, fonts, scans (of packages, etc.). These files must be all either archived or unarchived.\r\n        [*]ALLOWED: when uploading CD releases, attaching contents from the DVD given with the CD.\r\n\r\n[b]TORRENT INFORMATION[/b]\r\n        All torrents shall have descriptive titles, necessary descriptions and other information. Following is a brief regulation. Please refer to \"[url=http://202.113.13.170/forums.php?action=viewforum&forumid=5]Standard and Guidance of Torrent Information[/url]\" (in Chinese) for complete and detailed instructions.\r\n        [*]Title\r\n                [*]Movies: [i]Name [Year] [Cut] [Release Info] Resolution Source [Audio/]Video Codec-Tag[/i]\r\n                      e.g. [i]The Dark Knight 2008 PROPER 720p BluRay x264-SiNNERS[/i]\r\n                [*]TV Series/Mini-serie: [i]Name [Year] S**E** [Release Info] Resolution Source [Audio/]Video Codec-Tag[/i]\r\n                      e.g. [i]Prison Break S04E01 PROPER 720p HDTV x264-CTU[/i]\r\n                [*]Musics: [i]Artist - Album [Year] [Version] [Release Info] Audio Codec[-Tag][/i]\r\n                      e.g. [i]Enya - And Winter Came 2008 FLAC[/i]\r\n                [*]Games: [i]Name [Year] [Version] [Release Info][-Tag][/i]\r\n                      e.g. [i]Command And Conquer Red Alert 3 Uprising-RELOADED[/i]\r\n        [*]Small description\r\n                [*]No advertisements or asking for a reseed/requests.\r\n        [*]External Info\r\n                [*]URL of external info for Movies and TV Series is required (if available).\r\n        [*]Description\r\n                [*]Do not use the description for your NFO-artwork! Limit those artistic expressions to the NFO only.\r\n                [*]For Movies, TV Series/Mini-series and animes:\r\n                        [*]Poster, banner or BD/HDDVD/DVD cover is required (If available).\r\n                        [*]Adding screenshots or thumbnails and links to the screenshots is encouraged.\r\n                        [*]Adding detailed file information regarding format, runtime, codec, bitrate, resolution, language, subtitle, etc. is encouraged.\r\n                        [*]Adding a list of staff and cast and plot outline is encouraged.\r\n                [*]For Sports:\r\n                        [*]Don\'t spoil the results trough text/screenshots/filenames/obvious filesize/detailed runtime.\r\n                [*]For Music:\r\n                        [*]The CD cover and the track list are required (if available).\r\n                [*]For PC Games:\r\n                        [*]Poster, banner or BD/HDDVD/DVD cover is required (If available).\r\n                        [*]Adding screenshots or thumbnails and links to the screenshots is encouraged.\r\n        [*]Misc\r\n                [*]Please correctly specify the category and quality info.\r\n        [*]NOTES\r\n                [*]Moderators will edit the torrent info according to the standard.\r\n                [*]Do NOT remove or alter changes done by the staff (but some mistakes can be fixed by the uploader).\r\n                [*]Torrents without required information can be deleted, depending on how they meet the standard.\r\n                [*]The original torrent information can be used if it basically meets the standard.\r\n'),
(28, 6, 'Moderating Rules - <font class=striking>Use your better judgement!</font>', '[*]The most important rule: Use your better judgment!\r\n[*]Don\'t be afraid to say [b]NO[/b]!\r\n[*]Don\'t defy another staff member in public, instead send a PM or through IM.\r\n[*]Be tolerant! Give the user(s) a chance to reform.\r\n[*]Don\'t act prematurely, let the users make their mistakes and THEN correct them.\r\n[*]Try correcting any \"off topics\" rather then closing a thread.\r\n[*]Move topics rather than locking them.\r\n[*]Be tolerant when moderating the chat section (give them some slack).\r\n[*]If you lock a topic, give a brief explanation as to why you\'re locking it.\r\n[*]Before you disable a user account, send him/her a PM and if they reply, put them on a 2 week trial.\r\n[*]Don\'t disable a user account until he or she has been a member for at least 4 weeks.\r\n[*]Convince people by reasoning rather than authority.'),
(54, 25, '<span id=\"rules_retire\">管理组成员退休待遇</span>', '满足以下条件可获得的退休待遇: \r\n\r\n\r\n[b]对于 [color=#DC143C]上传员 (Uploaders)[/color]: [/b]\r\n\r\n成为 [color=#1cc6d5][b]养老族 (Retiree) [/b]: [/color]\r\n      升职一年以上; 上传过200个以上的种子资源 (特殊情况如原碟发布, 0day更新等可以由管理组投票表决; 须被认定为作出过重大及持久的贡献).\r\n\r\n成为 [color=#009F00][b]VIP[/b]: [/color]\r\n      升职6个月以上; 上传过100个以上的种子资源 (特殊情况如原碟发布, 0day更新等可以由管理组投票表决).\r\n\r\n其他:\r\n      成为 [color=#F88C00][b]Extreme User[/b][/color] (如果你的条件满足 [color=#F88C00][b]Extreme User[/b][/color] 及以上, 则成为 [color=#38ACEC][b]Nexus Master[/b][/color]) .\r\n\r\n\r\n[b]对于 [color=#6495ED]类管理员 (Moderators)[/color]: [/b]\r\n\r\n成为 [color=#1cc6d5][b]养老族 (Retiree)[/b]: [/color]\r\n      升职一年以上; 参加过至少2次站务组正式会议; 参与过 规则/答疑 的修订工作.\r\n\r\n成为 [color=#009F00][b]VIP[/b]: [/color]\r\n      若不满足成为 [color=#1cc6d5][b]养老族 (Retiree)[/b][/color] 的条件, 你可以[b]无条件[/b]成为 [color=#009F00][b]VIP[/b][/color] .\r\n\r\n\r\n\r\n[b]对于 [color=#4b0082]管理员 (Administrators)[/color] 及 以上等级: [/b]\r\n\r\n      可以[b]直接[/b]成为 [color=#1cc6d5][b]养老族 (Retiree)[/b][/color] .\r\n'),
(55, 28, '管理組成員退休待遇', '滿足以下條件可獲得的退休待遇: \r\n[code]\r\n[b]對於 [color=#DC143C]上傳員 (Uploaders)[/color]: [/b]\r\n成為 [color=#1cc6d5][b]養老族 (Retiree) [/b]: [/color]\r\n      升職一年以上; 上傳過200個以上的種子資源 (特殊情況如原碟發佈, 0day更新等可以由管理組投票表決; 須被認定為作出過重大及持久的貢獻).\r\n成為 [color=#009F00][b]VIP[/b]: [/color]\r\n      升職6個月以上; 上傳過100個以上的種子資源 (特殊情況如原碟發佈, 0day更新等可以由管理組投票表決).\r\n其他:\r\n      成為 [color=#F88C00][b]Extreme User[/b][/color] (如果你的條件滿足 [color=#F88C00][b]Extreme User[/b][/color] 及以上, 則成為 [color=#38ACEC][b]Nexus Master[/b][/color]) .\r\n[/code]\r\n[code]\r\n[b]對於 [color=#6495ED]管理員 (Moderators)[/color]: [/b]\r\n成為 [color=#1cc6d5][b]養老族 (Retiree)[/b]: [/color]\r\n      升職一年以上; 參加過至少2次站務組正式會議; 參與過 規則/答疑 的修訂工作.\r\n成為 [color=#009F00][b]VIP[/b]: [/color]\r\n      若不滿足成為 [color=#1cc6d5][b]養老族 (Retiree)[/b][/color] 的條件, 你可以[b]無條件[/b]成為 [color=#009F00][b]VIP[/b][/color] .\r\n[/code]\r\n[code]\r\n[b]對於 [color=#4b0082]總管理員 (Administrators)[/color] 及 以上等級: [/b]\r\n      可以[b]直接[/b]成為 [color=#1cc6d5][b]養老族 (Retiree)[/b][/color] .\r\n[/code]'),
(50, 6, 'Rules for Subtitles - <font class=striking>Subtitles violating these rules will be deleted</font>', '(This text is translated from the Chinese version. In case of discrepancy, the original version in Chinese shall prevail.)\r\n\r\n[b]GENERAL PRINCIPLE:[/b]\r\n    [*]All subtitles uploaded must conform to the rules (i.e. proper or qualified). Unqualified subtitles will be deleted.\r\n    [*]Allowed file formats are srt/ssa/ass/cue/zip/rar.\r\n    [*]If you\'re uploading Vobsub (idx+sub) subtitles or subtitles of other types, or a collection (e.g. subtitles for a season pack of some TV series), please zip/rar them before uploading.\r\n    [*]Cue sheet of audio tracks is allowed as well. If there are several cue sheets, please pack them all.\r\n    [*]Uploading lrc lyrics or other non-subtitle/non-cue files is not permitted. Irrelevant files if uploaded will be directly deleted.\r\n\r\n[b]QUALIFYING SUBTITLE/CUE FILES: improper subtitle/cue files will be directly deleted.[/b]\r\n    In any of the following cases, a subtitle/cue file will be judged as improper:\r\n    [*]Fail to match the corresponding torrent.\r\n    [*]Fail to be in sync with the corresponding video/audio file.\r\n    [*]Packed Improperly.\r\n    [*]Contain irrelevant or spam stuff.\r\n    [*]Encoded incorrectly.\r\n    [*]Wrong cue file.\r\n    [*]Wrong language mark.\r\n    [*]The title is indefinite or contains redundant info/characters.\r\n    [*]Duplicate.\r\n    [*]Reported by several users and confirmed with other problems.\r\n    [b]The staff group reserves rights to judge and deal with improper subtitles.[/b]\r\n    Please refer to [url=http://www.nexushd.org/forums.php?action=viewtopic&forumid=13&topicid=2848][i]this thread[/i][/url] in the forum for detailed regulations on qualifying subtitle/cue files, other notes and suggestions on uploading subtitles, and subtitle naming and entitling guidance.\r\n\r\n[b]IMPLEMENTING REGULATIONS OF REWARDS AND PENALTIES [/b]\r\n    [*]Reporting against improper subtitles and the uploaders who purposely upload improper subtitles is always welcomed. To report an improper subtitle, please click on the [i]REPORT[/i] button of the corresponding subtitle in the subtitle section. To report a user, please click on the [i]REPORT[/i] button at the bottom of the user details page.\r\n    [*]The reporter will be rewarded 50 karma points (delivered in three days) for each case after confirmation.\r\n    [*]Improper subtitles will be deleted and the corresponding uploader will be fined 100 karma points in each case.\r\n    [*]Users who recklessly uploading improper subtitles for karma points or other purposes, or users who maliciously report, will be fined karma points or warned depending on the seriousness of the case.\r\n'),
(49, 25, '<span id=\"rules_subtitle\">字幕区规则 - <font class=striking>违规字幕将被删除</font></span>', '[b]总则：[/b]\r\n    [*][color=red][b]所有上传的字幕文件名和标题必须和视频文件的0day名保持一致，推荐格式为“种子标题中的英文部分.语言.扩展名”。不合格的字幕将被删除。[/color][/b]\r\n    [*]允许上传的文件格式为srt/ssa/ass/cue/zip/rar。\r\n    [*]如果你打算上传的字幕是Vobsub格式（idx+sub）或其它格式，或者是合集（如电视剧整季的字幕），请将它们打包为zip/rar后再上传。\r\n    [*]字幕区开放音轨对应cue表单文件的上传。如有多个cue，请将它们打包起来。\r\n    [*]不允许lrc歌词或其它非字幕/cue文件的上传。上传的无关文件将被直接删除。\r\n\r\n[b]不合格字幕/cue文件判定：被判定为不合格的字幕/cue文件将被直接删除。[/b]\r\n    出现以下情况之一的字幕/cue文件将被判定为不合格：\r\n    [*]与相应种子不匹配。\r\n    [*]与相应的视频/音频文件不同步。\r\n    [*]打包错误。\r\n    [*]包含无关文件或垃圾信息。\r\n    [*]编码错误。\r\n    [*]cue文件错误。\r\n    [*]语种标识错误。\r\n    [*]标题命名不明确或包含冗余信息或字符。\r\n    [*]被判定为重复。\r\n    [*]接到多个用户举报并被证实有其它问题的。\r\n    [b]管理组保留裁定和处理不合格字幕的权力。[/b]\r\n    字幕上传的其它注意事项以及命名指引请参阅论坛的[url=forums.php?action=viewtopic&forumid=13&topicid=3546]这个帖子[/url]。\r\n\r\n[b]字幕奖惩：[/b]\r\n    [*]欢迎举报不合格的字幕和恶意发布不合格字幕的用户。举报不合格字幕请在字幕区点击相应字幕的“举报”按钮。举报用户请点击相应用户详细信息页面底部的“举报”按钮。\r\n    [*]对每一例不合格字幕的举报，确认后将奖励举报者50点魔力值（三天内发放）。\r\n    [*]被确定为不合格的字幕将被删除，而在每一例中，相应的字幕上传者将被扣除100点魔力值。\r\n    [*]对为赚取积分等目的恶意上传不合格字幕的用户，或是恶意举报的用户，将视情节轻重扣除额外的魔力值甚至给予警告。\r\n'),
(53, 6, 'Staff\'s retirement benefits', 'You can get retirement benefits when meeting these condition(s) below:\r\n\r\n\r\n[b]for [color=#DC143C]Uploaders[/color]: [/b]\r\n\r\nTo join [color=#1cc6d5][b]Retiree[/b]: [/color]\r\n      Been promoted for more than 1 year; have posted 200 or more torrents (special cases can be decided via vote among staffs, like Source-Disc posters, scene-uploaders; should be considered as having made rare and enduring contribution).\r\n\r\nTo join [color=#009F00][b]VIP[/b]: [/color]\r\n      Been promoted for more than 6 months; have posted 100 or more torrents (special cases can be decided via vote among staffs, like Source-Disc posters, scene-uploaders).\r\n\r\nOthers:\r\n      Demoted to [color=#F88C00][b]Extreme User[/b][/color] (if your profile meets the corresponding condition of classes [color=#F88C00][b]Extreme User[/b][/color] and above, then promoted to [color=#38ACEC][b]Nexus Master[/b][/color]).\r\n\r\n\r\n[b]for [color=#6495ED]Moderators[/color]: [/b]\r\n\r\nTo join [color=#1cc6d5][b]Retiree[/b]: [/color]\r\n      Been promoted for more than 1 year; Have participated at least 2 Staff [b]Official[/b] Meetings; Have participated in Rules/FAQ modifying.\r\n\r\nTo join [color=#009F00][b]VIP[/b]: [/color]\r\n      If you don\'t meet the condition of joining [color=#1cc6d5][b]Retiree[/b][/color], you can join [color=#009F00][b]VIP[/b][/color] [b]unconditionally[/b].\r\n\r\n\r\n\r\n\r\n[b]for [color=#4b0082]Administrators[/color] and above: [/b]\r\n\r\n      You can join [color=#1cc6d5][b]Retiree[/b][/color] [b]unconditionally[/b].\r\n'),
(51, 28, '字幕區規則 - <font class=striking>違規字幕將被刪除</font>', '[b]總則：[/b]\r\n    [*]所有上傳的字幕必須符合規則（即合格的）。不合格的字幕將被刪除。\r\n    [*]允許上傳的檔案格式為srt/ssa/ass/cue/zip/rar。\r\n    [*]如果你打算上傳的字幕是Vobsub格式（idx+sub）或其它格式，或者是合集（如電視劇整季的字幕），請將它們打包為zip/rar後再上傳。\r\n    [*]字幕區開放音軌對應cue表單文件的上傳。如有多個cue，請將它們打包起來。\r\n    [*]不允許lrc歌詞或其它非字幕/cue文件的上傳。上傳的無關檔將被直接刪除。\r\n\r\n[b]不合格字幕/cue文件判定：被判定為不合格的字幕/cue檔將被直接刪除。[/b]\r\n    出現以下情況之一的字幕/cue檔將被判定為不合格：\r\n    [*]與相應種子不匹配。\r\n    [*]與相應的視頻/音訊檔不同步。\r\n    [*]打包錯誤。\r\n    [*]包含無關檔或垃圾資訊。\r\n    [*]編碼錯誤。\r\n    [*]cue檔錯誤。\r\n    [*]語種標識錯誤。\r\n    [*]標題命名不明確或包含冗餘資訊或字元。\r\n    [*]被判定為重複。\r\n    [*]接到多個用戶舉報並被證實有其它問題的。\r\n    [b]管理組保留裁定和處理不合格字幕的權力。[/b]\r\n    不合格字幕/cue檔判定細則、字幕上傳的其它注意事項以及命名指引請參閱論壇的[url=http://www.nexushd.org/forums.php?action=viewtopic&forumid=13&topicid=2848]這個帖子[/url]。\r\n\r\n[b]字幕獎懲：[/b]\r\n    [*]歡迎舉報不合格的字幕和惡意發佈不合格字幕的用戶。舉報不合格字幕請在字幕區點擊相應字幕的“舉報”按鈕。舉報使用者請點擊相應使用者詳細資訊頁面底部的“舉報”按鈕。\r\n    [*]對每一例不合格字幕的舉報，確認後將獎勵舉報者50點魔力值（三天內發放）。\r\n    [*]被確定為不合格的字幕將被刪除，而在每一例中，相應的字幕上傳者將被扣除100點魔力值。\r\n    [*]對為賺取積分等目的惡意上傳不合格字幕的用戶，或是惡意舉報的用戶，將視情節輕重扣除額外的魔力值甚至給予警告。\r\n');

--
-- 转存表中的数据 `schools`
--

INSERT INTO `schools` (`id`, `name`) VALUES
(1, '南京农业大学'),
(2, '中山大学'),
(3, '中国石油大学（北京）'),
(4, '云南大学'),
(5, '河海大学'),
(6, '南开大学'),
(7, '兰州大学'),
(8, '合肥工业大学'),
(9, '上海大学'),
(10, '安徽大学'),
(11, '中国海洋大学'),
(12, '复旦大学'),
(13, '西北大学'),
(14, '郑州大学'),
(15, '四川大学'),
(16, '华中科技大学'),
(17, '浙江大学'),
(18, '山东大学'),
(19, '中央民族大学'),
(20, '苏州大学'),
(21, '重庆大学'),
(22, '东北农业大学'),
(23, '北京工业大学'),
(24, '湖南师范大学'),
(25, '东北大学'),
(26, '电子科技大学'),
(27, '西安电子科技大学'),
(28, '北京化工大学'),
(29, '南京航空航天大学'),
(30, '南京理工大学'),
(31, '西北工业大学'),
(32, '天津医科大学'),
(33, '北京林业大学'),
(34, '华南师范大学'),
(35, '天津大学'),
(36, '长安大学'),
(37, '武汉理工大学'),
(38, '河北工业大学'),
(39, '南京师范大学'),
(40, '中国农业大学'),
(41, '厦门大学'),
(42, '第二军医大学'),
(43, '北京理工大学'),
(44, '北京大学'),
(45, '上海外国语大学'),
(46, '北京科技大学'),
(47, '西北农林科技大学'),
(48, '中南大学'),
(49, '华南理工大学'),
(50, '武汉大学'),
(51, '福州大学'),
(52, '同济大学'),
(53, '中国传媒大学'),
(54, '湖南大学'),
(55, '上海财经大学'),
(56, '国防科学技术大学'),
(57, '吉林大学'),
(58, '大连理工大学'),
(59, '中国人民大学'),
(60, '上海交通大学'),
(61, '西安交通大学'),
(62, '江南大学'),
(63, '南京大学'),
(64, '南昌大学'),
(65, '太原理工大学'),
(66, '中国地质大学（北京）'),
(67, '清华大学'),
(68, '广西大学'),
(69, '中国矿业大学'),
(70, '四川农业大学'),
(71, '东北师范大学'),
(72, '哈尔滨工业大学'),
(73, '北京航空航天大学'),
(74, '北京交通大学'),
(75, '西南交通大学'),
(76, '中国科学技术大学'),
(77, '北京外国语大学'),
(78, '北京邮电大学'),
(79, '西安建筑科技大学'),
(80, '新疆大学'),
(81, '东南大学'),
(82, '对外经济贸易大学'),
(83, '北京中医药大学'),
(84, '暨南大学'),
(85, '北京语言大学'),
(86, '华中师范大学'),
(87, '北京师范大学'),
(88, '哈尔滨工程大学'),
(89, '内蒙古大学'),
(90, '东华大学'),
(91, '解放军信息工程大学'),
(92, '上海交通大学医学院'),
(93, '华东理工大学'),
(94, '第四军医大学'),
(95, '大连海事大学'),
(96, '华东师范大学'),
(97, '辽宁大学'),
(98, '深圳大学'),
(99, '中央音乐学院'),
(100, '中国协和医科大学'),
(101, '天津工业大学'),
(102, '天津理工大学'),
(103, '天津财经大学'),
(104, '天津外国语大学'),
(105, '天津师范大学'),
(106, '天津中医药大学'),
(107, '中国民航大学'),
(108, '七里台技工学校'),
(110, '中国科学院大学'),
(109, '西华大学'),
(111, '北方工业大学'),
(112, '北京工商大学'),
(113, '北京服装学院'),
(114, '北京印刷学院'),
(115, '北京建筑大学'),
(116, '北京石油化工学院'),
(117, '北京电子科技学院'),
(118, '北京农学院'),
(119, '北京协和医学院'),
(120, '首都医科大学'),
(121, '首都师范大学'),
(122, '首都体育学院'),
(123, '北京第二外国语学院'),
(124, '中央财经大学'),
(125, '北京物资学院'),
(126, '首都经济贸易大学'),
(127, '外交学院'),
(128, '中国人民公安大学'),
(129, '国际关系学院'),
(130, '北京体育大学'),
(131, '中国音乐学院'),
(132, '中央美术学院'),
(133, '中央戏剧学院'),
(134, '中国戏曲学院'),
(135, '北京电影学院'),
(136, '北京舞蹈学院'),
(137, '中国政法大学'),
(138, '华北电力大学'),
(139, '中华女子学院'),
(140, '北京信息科技大学'),
(141, '中国矿业大学（北京）'),
(144, '北京联合大学'),
(145, '中国青年政治学院'),
(146, '首钢工学院'),
(147, '中国劳动关系学院'),
(148, '北京警察学院'),
(149, '中国社会科学院大学'),
(150, '天津科技大学'),
(151, '天津农学院'),
(152, '天津职业技术师范大学'),
(153, '天津商业大学'),
(154, '天津体育学院'),
(155, '天津音乐学院'),
(156, '天津美术学院'),
(157, '天津城建大学'),
(158, '天津中德应用技术大学'),
(159, '河北大学'),
(160, '河北工程大学'),
(161, '河北地质大学'),
(162, '华北理工大学'),
(163, '河北科技大学'),
(164, '河北建筑工程学院'),
(165, '河北水利电力学院'),
(166, '河北农业大学'),
(167, '河北医科大学'),
(168, '河北北方学院'),
(169, '承德医学院'),
(170, '河北师范大学'),
(171, '保定学院'),
(172, '河北民族师范学院'),
(173, '唐山师范学院'),
(174, '廊坊师范学院'),
(175, '衡水学院'),
(176, '石家庄学院'),
(177, '邯郸学院'),
(178, '邢台学院'),
(179, '沧州师范学院'),
(180, '石家庄铁道大学'),
(181, '燕山大学'),
(182, '河北科技师范学院'),
(183, '唐山学院'),
(184, '华北科技学院'),
(185, '中国人民武装警察部队学院'),
(186, '河北体育学院'),
(187, '河北金融学院'),
(188, '北华航天工业学院'),
(189, '防灾科技学院'),
(190, '河北经贸大学'),
(191, '中央司法警官学院'),
(192, '河北中医学院'),
(193, '张家口学院'),
(194, '河北环境工程学院'),
(195, '山西大学'),
(196, '太原科技大学'),
(197, '中北大学'),
(198, '山西农业大学'),
(199, '山西医科大学'),
(200, '长治医学院'),
(201, '山西师范大学'),
(202, '太原师范学院'),
(203, '山西大同大学'),
(204, '晋中学院'),
(205, '长治学院'),
(206, '运城学院'),
(207, '忻州师范学院'),
(208, '山西财经大学'),
(209, '山西中医药大学'),
(210, '吕梁学院'),
(211, '太原学院'),
(212, '山西警察学院'),
(213, '太原工业学院'),
(214, '山西传媒学院'),
(215, '山西工程技术学院'),
(216, '山西能源学院'),
(217, '内蒙古科技大学'),
(218, '内蒙古工业大学'),
(219, '内蒙古农业大学'),
(220, '内蒙古医科大学'),
(221, '内蒙古师范大学'),
(222, '内蒙古民族大学'),
(223, '赤峰学院'),
(224, '内蒙古财经大学'),
(225, '呼伦贝尔学院'),
(226, '集宁师范学院'),
(227, '河套学院'),
(228, '呼和浩特民族学院'),
(229, '内蒙古艺术学院'),
(230, '鄂尔多斯应用技术学院'),
(231, '沈阳工业大学'),
(232, '沈阳航空航天大学'),
(233, '沈阳理工大学'),
(234, '辽宁科技大学'),
(235, '辽宁工程技术大学'),
(236, '辽宁石油化工大学'),
(237, '沈阳化工大学'),
(238, '大连交通大学'),
(239, '大连工业大学'),
(240, '沈阳建筑大学'),
(241, '辽宁工业大学'),
(242, '沈阳农业大学'),
(243, '大连海洋大学'),
(244, '中国医科大学'),
(245, '锦州医科大学'),
(246, '大连医科大学'),
(247, '辽宁中医药大学'),
(248, '沈阳药科大学'),
(249, '沈阳医学院'),
(250, '辽宁师范大学'),
(251, '沈阳师范大学'),
(252, '渤海大学'),
(253, '鞍山师范学院'),
(254, '大连外国语大学'),
(255, '东北财经大学'),
(256, '中国刑事警察学院'),
(257, '沈阳体育学院'),
(258, '沈阳音乐学院'),
(259, '鲁迅美术学院'),
(260, '沈阳大学'),
(261, '大连大学'),
(262, '辽宁科技学院'),
(263, '辽宁警察学院'),
(264, '沈阳工程学院'),
(265, '辽东学院'),
(266, '大连民族大学'),
(267, '营口理工学院'),
(268, '延边大学'),
(269, '长春理工大学'),
(270, '东北电力大学'),
(271, '长春工业大学'),
(272, '吉林建筑大学'),
(273, '吉林化工学院'),
(274, '吉林农业大学'),
(275, '长春中医药大学'),
(276, '北华大学'),
(277, '通化师范学院'),
(278, '吉林师范大学'),
(279, '吉林工程技术师范学院'),
(280, '长春师范大学'),
(281, '白城师范学院'),
(282, '吉林财经大学'),
(283, '吉林体育学院'),
(284, '吉林艺术学院'),
(285, '吉林工商学院'),
(286, '长春工程学院'),
(287, '吉林农业科技学院'),
(288, '吉林警察学院'),
(289, '长春大学'),
(290, '吉林医药学院'),
(291, '黑龙江大学'),
(292, '哈尔滨理工大学'),
(293, '黑龙江科技大学'),
(294, '东北石油大学'),
(295, '佳木斯大学'),
(296, '黑龙江八一农垦大学'),
(297, '东北林业大学'),
(298, '哈尔滨医科大学'),
(299, '黑龙江中医药大学'),
(300, '牡丹江医学院'),
(301, '哈尔滨师范大学'),
(302, '齐齐哈尔大学'),
(303, '牡丹江师范学院'),
(304, '哈尔滨学院'),
(305, '大庆师范学院'),
(306, '绥化学院'),
(307, '哈尔滨商业大学'),
(308, '哈尔滨体育学院'),
(309, '哈尔滨金融学院'),
(310, '齐齐哈尔医学院'),
(311, '黑龙江工业学院'),
(312, '黑龙江工程学院'),
(313, '黑河学院'),
(314, '哈尔滨音乐学院'),
(315, '上海理工大学'),
(316, '上海海事大学'),
(317, '上海电力学院'),
(318, '上海应用技术大学'),
(319, '上海健康医学院'),
(320, '上海海洋大学'),
(321, '上海中医药大学'),
(322, '上海师范大学'),
(323, '上海对外经贸大学'),
(324, '上海海关学院'),
(325, '华东政法大学'),
(326, '上海体育学院'),
(327, '上海音乐学院'),
(328, '上海戏剧学院'),
(329, '上海公安学院'),
(330, '上海工程技术大学'),
(331, '上海立信会计金融学院'),
(332, '上海电机学院'),
(333, '上海政法学院'),
(334, '上海第二工业大学'),
(335, '上海商学院'),
(336, '上海科技大学'),
(337, '上海纽约大学'),
(338, '江苏科技大学'),
(339, '南京工业大学'),
(340, '常州大学'),
(341, '南京邮电大学'),
(342, '南京林业大学'),
(343, '江苏大学'),
(344, '南京信息工程大学'),
(345, '南通大学'),
(346, '盐城工学院'),
(347, '南京医科大学'),
(348, '徐州医科大学'),
(349, '南京中医药大学'),
(350, '中国药科大学'),
(351, '江苏师范大学'),
(352, '淮阴师范学院'),
(353, '盐城师范学院'),
(354, '南京财经大学'),
(355, '江苏警官学院'),
(356, '南京体育学院'),
(357, '南京艺术学院'),
(358, '苏州科技大学'),
(359, '常熟理工学院'),
(360, '淮阴工学院'),
(361, '常州工学院'),
(362, '扬州大学'),
(363, '南京工程学院'),
(364, '南京审计大学'),
(365, '南京晓庄学院'),
(366, '江苏理工学院'),
(367, '淮海工学院'),
(368, '徐州工程学院'),
(369, '南京特殊教育师范学院'),
(370, '南京森林警察学院'),
(371, '泰州学院'),
(372, '金陵科技学院'),
(373, '江苏第二师范学院'),
(374, '西交利物浦大学'),
(375, '昆山杜克大学'),
(376, '杭州电子科技大学'),
(377, '浙江工业大学'),
(378, '浙江理工大学'),
(379, '浙江海洋大学'),
(380, '浙江农林大学'),
(381, '温州医科大学'),
(382, '浙江中医药大学'),
(383, '浙江师范大学'),
(384, '杭州师范大学'),
(385, '湖州师范学院'),
(386, '绍兴文理学院'),
(387, '台州学院'),
(388, '温州大学'),
(389, '丽水学院'),
(390, '浙江工商大学'),
(391, '嘉兴学院'),
(392, '中国美术学院'),
(393, '中国计量大学'),
(394, '公安海警学院'),
(395, '浙江万里学院'),
(396, '浙江科技学院'),
(397, '宁波工程学院'),
(398, '浙江水利水电学院'),
(399, '浙江财经大学'),
(400, '浙江警察学院'),
(401, '衢州学院'),
(402, '宁波大学'),
(403, '浙江传媒学院'),
(404, '杭州医学院'),
(405, '浙江外国语学院'),
(406, '浙江音乐学院'),
(407, '宁波诺丁汉大学'),
(408, '温州肯恩大学'),
(409, '安徽工业大学'),
(410, '安徽理工大学'),
(411, '安徽工程大学'),
(412, '安徽农业大学'),
(413, '安徽医科大学'),
(414, '蚌埠医学院'),
(415, '皖南医学院'),
(416, '安徽中医药大学'),
(417, '安徽师范大学'),
(418, '阜阳师范学院'),
(419, '安庆师范大学'),
(420, '淮北师范大学'),
(421, '黄山学院'),
(422, '皖西学院'),
(423, '滁州学院'),
(424, '安徽财经大学'),
(425, '宿州学院'),
(426, '巢湖学院'),
(427, '淮南师范学院'),
(428, '铜陵学院'),
(429, '安徽建筑大学'),
(430, '安徽科技学院'),
(431, '合肥学院'),
(432, '蚌埠学院'),
(433, '池州学院'),
(434, '亳州学院'),
(435, '合肥师范学院'),
(436, '华侨大学'),
(437, '福建工程学院'),
(438, '福建农林大学'),
(439, '集美大学'),
(440, '福建医科大学'),
(441, '福建中医药大学'),
(442, '福建师范大学'),
(443, '闽江学院'),
(444, '武夷学院'),
(445, '宁德师范学院'),
(446, '泉州师范学院'),
(447, '闽南师范大学'),
(448, '厦门理工学院'),
(449, '三明学院'),
(450, '龙岩学院'),
(451, '福建商学院'),
(452, '福建警察学院'),
(453, '莆田学院'),
(454, '厦门医学院'),
(455, '福建江夏学院'),
(456, '华东交通大学'),
(457, '东华理工大学'),
(458, '南昌航空大学'),
(459, '江西理工大学'),
(460, '景德镇陶瓷大学'),
(461, '江西农业大学'),
(462, '江西中医药大学'),
(463, '赣南医学院'),
(464, '江西师范大学'),
(465, '上饶师范学院'),
(466, '宜春学院'),
(467, '赣南师范大学'),
(468, '井冈山大学'),
(469, '江西财经大学'),
(470, '景德镇学院'),
(471, '萍乡学院'),
(472, '江西科技师范大学'),
(473, '南昌工程学院'),
(474, '江西警察学院'),
(475, '新余学院'),
(476, '九江学院'),
(477, '豫章师范学院'),
(478, '南昌师范学院'),
(479, '山东科技大学'),
(480, '中国石油大学（华东）'),
(481, '青岛科技大学'),
(482, '济南大学'),
(483, '青岛理工大学'),
(484, '山东建筑大学'),
(485, '齐鲁工业大学'),
(486, '山东理工大学'),
(487, '山东农业大学'),
(488, '青岛农业大学'),
(489, '潍坊医学院'),
(490, '泰山医学院'),
(491, '滨州医学院'),
(492, '山东中医药大学'),
(493, '济宁医学院'),
(494, '山东师范大学'),
(495, '曲阜师范大学'),
(496, '聊城大学'),
(497, '德州学院'),
(498, '滨州学院'),
(499, '鲁东大学'),
(500, '临沂大学'),
(501, '泰山学院'),
(502, '济宁学院'),
(503, '菏泽学院'),
(504, '山东财经大学'),
(505, '山东体育学院'),
(506, '山东艺术学院'),
(507, '枣庄学院'),
(508, '山东工艺美术学院'),
(509, '青岛大学'),
(510, '烟台大学'),
(511, '潍坊学院'),
(512, '山东警察学院'),
(513, '山东交通学院'),
(514, '山东工商学院'),
(515, '山东女子学院'),
(516, '山东政法学院'),
(517, '齐鲁师范学院'),
(518, '山东青年政治学院'),
(519, '山东管理学院'),
(520, '山东农业工程学院'),
(521, '华北水利水电大学'),
(522, '河南理工大学'),
(523, '郑州轻工业学院'),
(524, '河南工业大学'),
(525, '河南科技大学'),
(526, '中原工学院'),
(527, '河南农业大学'),
(528, '河南科技学院'),
(529, '河南牧业经济学院'),
(530, '河南中医药大学'),
(531, '新乡医学院'),
(532, '河南大学'),
(533, '河南师范大学'),
(534, '信阳师范学院'),
(535, '周口师范学院'),
(536, '安阳师范学院'),
(537, '许昌学院'),
(538, '南阳师范学院'),
(539, '洛阳师范学院'),
(540, '商丘师范学院'),
(541, '河南财经政法大学'),
(542, '郑州航空工业管理学院'),
(543, '黄淮学院'),
(544, '平顶山学院'),
(545, '郑州工程技术学院'),
(546, '洛阳理工学院'),
(547, '新乡学院'),
(548, '信阳农林学院'),
(549, '河南工学院'),
(550, '安阳工学院'),
(551, '河南工程学院'),
(552, '河南财政金融学院'),
(553, '南阳理工学院'),
(554, '河南城建学院'),
(555, '河南警察学院'),
(556, '铁道警察学院'),
(557, '郑州师范学院'),
(558, '武汉科技大学'),
(559, '长江大学'),
(560, '武汉工程大学'),
(561, '中国地质大学（武汉）'),
(562, '武汉纺织大学'),
(563, '武汉轻工大学'),
(564, '湖北工业大学'),
(565, '华中农业大学'),
(566, '湖北中医药大学'),
(567, '湖北大学'),
(568, '湖北师范大学'),
(569, '黄冈师范学院'),
(570, '湖北民族学院'),
(571, '汉江师范学院'),
(572, '湖北文理学院'),
(573, '中南财经政法大学'),
(574, '武汉体育学院'),
(575, '湖北美术学院'),
(576, '中南民族大学'),
(577, '湖北汽车工业学院'),
(578, '湖北工程学院'),
(579, '湖北理工学院'),
(580, '湖北科技学院'),
(581, '湖北医药学院'),
(582, '江汉大学'),
(583, '三峡大学'),
(584, '湖北警官学院'),
(585, '荆楚理工学院'),
(586, '武汉音乐学院'),
(587, '湖北经济学院'),
(588, '武汉商学院'),
(589, '湖北第二师范学院'),
(590, '湘潭大学'),
(591, '吉首大学'),
(592, '湖南科技大学'),
(593, '长沙理工大学'),
(594, '湖南农业大学'),
(595, '中南林业科技大学'),
(596, '湖南中医药大学'),
(597, '湖南理工学院'),
(598, '湘南学院'),
(599, '衡阳师范学院'),
(600, '邵阳学院'),
(601, '怀化学院'),
(602, '湖南文理学院'),
(603, '湖南科技学院'),
(604, '湖南人文科技学院'),
(605, '湖南商学院'),
(606, '南华大学'),
(607, '长沙学院'),
(608, '湖南工程学院'),
(609, '湖南城市学院'),
(610, '湖南工学院'),
(611, '湖南财政经济学院'),
(612, '湖南警察学院'),
(613, '湖南工业大学'),
(614, '湖南女子学院'),
(615, '湖南第一师范学院'),
(616, '湖南医药学院'),
(617, '长沙师范学院'),
(618, '汕头大学'),
(619, '华南农业大学'),
(620, '广东海洋大学'),
(621, '广州医科大学'),
(622, '广东医科大学'),
(623, '广州中医药大学'),
(624, '广东药科大学'),
(625, '韶关学院'),
(626, '惠州学院'),
(627, '韩山师范学院'),
(628, '岭南师范学院'),
(629, '肇庆学院'),
(630, '嘉应学院'),
(631, '广州体育学院'),
(632, '广州美术学院'),
(633, '星海音乐学院'),
(634, '广东技术师范学院'),
(635, '广东财经大学'),
(636, '广州大学'),
(637, '广州航海学院'),
(638, '广东警官学院'),
(639, '仲恺农业工程学院'),
(640, '五邑大学'),
(641, '广东金融学院'),
(642, '广东石油化工学院'),
(643, '东莞理工学院'),
(644, '广东工业大学'),
(645, '广东外语外贸大学'),
(646, '佛山科学技术学院'),
(647, '南方医科大学'),
(648, '广东第二师范学院'),
(649, '南方科技大学'),
(650, '北京师范大学-香港浸会大学联合国际学院'),
(651, '香港中文大学（深圳）'),
(652, '深圳北理莫斯科大学'),
(653, '广东以色列理工学院'),
(654, '广西科技大学'),
(655, '桂林电子科技大学'),
(656, '桂林理工大学'),
(657, '广西医科大学'),
(658, '右江民族医学院'),
(659, '广西中医药大学'),
(660, '桂林医学院'),
(661, '广西师范大学'),
(662, '广西师范学院'),
(663, '广西民族师范学院'),
(664, '河池学院'),
(665, '玉林师范学院'),
(666, '广西艺术学院'),
(667, '广西民族大学'),
(668, '百色学院'),
(669, '梧州学院'),
(670, '广西科技师范学院'),
(671, '广西财经学院'),
(672, '钦州学院'),
(673, '桂林航天工业学院'),
(674, '桂林旅游学院'),
(675, '贺州学院'),
(676, '广西警察学院'),
(677, '海南大学'),
(678, '海南热带海洋学院'),
(679, '海南师范大学'),
(680, '海南医学院'),
(681, '琼台师范学院'),
(682, '重庆邮电大学'),
(683, '重庆交通大学'),
(684, '重庆医科大学'),
(685, '西南大学'),
(686, '重庆师范大学'),
(687, '重庆文理学院'),
(688, '重庆三峡学院'),
(689, '长江师范学院'),
(690, '四川外国语大学'),
(691, '西南政法大学'),
(692, '四川美术学院'),
(693, '重庆科技学院'),
(694, '重庆理工大学'),
(695, '重庆工商大学'),
(696, '重庆警察学院'),
(697, '重庆第二师范学院'),
(698, '西南石油大学'),
(699, '成都理工大学'),
(700, '西南科技大学'),
(701, '成都信息工程大学'),
(702, '四川理工学院'),
(703, '中国民用航空飞行学院'),
(704, '西昌学院'),
(705, '西南医科大学'),
(706, '成都中医药大学'),
(707, '川北医学院'),
(708, '四川师范大学'),
(709, '西华师范大学'),
(710, '绵阳师范学院'),
(711, '内江师范学院'),
(712, '宜宾学院'),
(713, '四川文理学院'),
(714, '阿坝师范学院'),
(715, '乐山师范学院'),
(716, '西南财经大学'),
(717, '成都体育学院'),
(718, '四川音乐学院'),
(719, '西南民族大学'),
(720, '成都学院'),
(721, '成都工业学院'),
(722, '攀枝花学院'),
(723, '四川旅游学院'),
(724, '四川民族学院'),
(725, '四川警察学院'),
(726, '成都医学院'),
(727, '成都师范学院'),
(728, '贵州大学'),
(729, '贵州医科大学'),
(730, '遵义医学院'),
(731, '贵阳中医学院'),
(732, '贵州师范大学'),
(733, '遵义师范学院'),
(734, '铜仁学院'),
(735, '兴义民族师范学院'),
(736, '安顺学院'),
(737, '贵州工程应用技术学院'),
(738, '凯里学院'),
(739, '黔南民族师范学院'),
(740, '贵州财经大学'),
(741, '贵州民族大学'),
(742, '贵阳学院'),
(743, '六盘水师范学院'),
(744, '贵州商学院'),
(745, '贵州警察学院'),
(746, '贵州师范学院'),
(747, '贵州理工学院'),
(748, '昆明理工大学'),
(749, '云南农业大学'),
(750, '西南林业大学'),
(751, '昆明医科大学'),
(752, '大理大学'),
(753, '云南中医学院'),
(754, '云南师范大学'),
(755, '昭通学院'),
(756, '曲靖师范学院'),
(757, '普洱学院'),
(758, '保山学院'),
(759, '红河学院'),
(760, '云南财经大学'),
(761, '云南艺术学院'),
(762, '云南民族大学'),
(763, '玉溪师范学院'),
(764, '楚雄师范学院'),
(765, '云南警官学院'),
(766, '昆明学院'),
(767, '文山学院'),
(768, '滇西科技师范学院'),
(769, '滇西应用技术大学'),
(770, '西藏大学'),
(771, '西藏民族大学'),
(772, '西藏藏医学院'),
(773, '西藏农牧学院'),
(774, '西安理工大学'),
(775, '西安工业大学'),
(776, '西安科技大学'),
(777, '西安石油大学'),
(778, '陕西科技大学'),
(779, '西安工程大学'),
(780, '陕西中医药大学'),
(781, '陕西师范大学'),
(782, '延安大学'),
(783, '陕西理工大学'),
(784, '宝鸡文理学院'),
(785, '咸阳师范学院'),
(786, '渭南师范学院'),
(787, '西安外国语大学'),
(788, '西北政法大学'),
(789, '西安体育学院'),
(790, '西安音乐学院'),
(791, '西安美术学院'),
(792, '西安文理学院'),
(793, '榆林学院'),
(794, '商洛学院'),
(795, '安康学院'),
(796, '西安财经学院'),
(797, '西安邮电大学'),
(798, '西安航空学院'),
(799, '西安医学院'),
(800, '陕西学前师范学院'),
(801, '兰州理工大学'),
(802, '兰州交通大学'),
(803, '甘肃农业大学'),
(804, '甘肃中医药大学'),
(805, '西北师范大学'),
(806, '兰州城市学院'),
(807, '陇东学院'),
(808, '天水师范学院'),
(809, '河西学院'),
(810, '兰州财经大学'),
(811, '西北民族大学'),
(812, '甘肃政法学院'),
(813, '甘肃民族师范学院'),
(814, '兰州文理学院'),
(815, '甘肃医学院'),
(816, '兰州工业学院'),
(817, '青海大学'),
(818, '青海师范大学'),
(819, '青海民族大学'),
(820, '宁夏大学'),
(821, '宁夏医科大学'),
(822, '宁夏师范学院'),
(823, '北方民族大学'),
(824, '塔里木大学'),
(825, '新疆农业大学'),
(826, '石河子大学'),
(827, '新疆医科大学'),
(828, '新疆师范大学'),
(829, '喀什大学'),
(830, '伊犁师范学院'),
(831, '新疆财经大学'),
(832, '新疆艺术学院'),
(833, '新疆工程学院'),
(834, '昌吉学院'),
(835, '新疆警察学院');

--
-- 转存表中的数据 `searchbox`
--

INSERT INTO `searchbox` (`id`, `name`, `showsubcat`, `showsource`, `showmedium`, `showcodec`, `showstandard`, `showprocessing`, `showteam`, `showaudiocodec`, `catsperrow`, `catpadding`) VALUES
(4, 'chd', 1, 1, 0, 0, 0, 0, 1, 0, 6, 4);

--
-- 转存表中的数据 `secondicons`
--

INSERT INTO `secondicons` (`id`, `source`, `medium`, `codec`, `standard`, `processing`, `team`, `audiocodec`, `name`, `class_name`, `image`) VALUES
(1, 0, 1, 1, 0, 0, 0, 0, 'Blu-ray/H.264', NULL, 'bdh264.png'),
(2, 0, 1, 2, 0, 0, 0, 0, 'Blu-ray/VC-1', NULL, 'bdvc1.png'),
(3, 0, 1, 4, 0, 0, 0, 0, 'Blu-ray/MPEG-2', NULL, 'bdmpeg2.png'),
(4, 0, 2, 1, 0, 0, 0, 0, 'HD DVD/H.264', NULL, 'hddvdh264.png'),
(5, 0, 2, 2, 0, 0, 0, 0, 'HD DVD/VC-1', NULL, 'hddvdvc1.png'),
(6, 0, 2, 4, 0, 0, 0, 0, 'HD DVD/MPEG-2', NULL, 'hddvdmpeg2.png'),
(7, 0, 3, 1, 0, 0, 0, 0, 'Remux/H.264', NULL, 'remuxh264.png'),
(8, 0, 3, 2, 0, 0, 0, 0, 'Remux/VC-1', NULL, 'remuxvc1.png'),
(9, 0, 3, 4, 0, 0, 0, 0, 'Remux/MPEG-2', NULL, 'remuxmpeg2.png'),
(10, 0, 4, 0, 0, 0, 0, 0, 'AVCHD', NULL, 'avchd.png'),
(11, 0, 5, 1, 0, 0, 0, 0, 'HDTV/H.264', NULL, 'hdtvh264.png'),
(12, 0, 5, 4, 0, 0, 0, 0, 'HDTV/MPEG-2', NULL, 'hdtvmpeg2.png'),
(13, 0, 6, 0, 0, 0, 0, 0, 'DVDR', NULL, 'dvdr.png'),
(14, 0, 7, 1, 0, 0, 0, 0, 'Rip/H.264', NULL, 'riph264.png'),
(15, 0, 7, 3, 0, 0, 0, 0, 'Rip/Xvid', NULL, 'ripxvid.png'),
(16, 0, 8, 5, 0, 0, 0, 0, 'CD/FLAC', NULL, 'cdflac.png'),
(17, 0, 8, 6, 0, 0, 0, 0, 'CD/APE', NULL, 'cdape.png'),
(18, 0, 8, 7, 0, 0, 0, 0, 'CD/DTS', NULL, 'cddts.png'),
(19, 0, 8, 9, 0, 0, 0, 0, 'CD/Other', NULL, 'cdother.png'),
(20, 0, 9, 5, 0, 0, 0, 0, 'Extract/FLAC', NULL, 'extractflac.png'),
(21, 0, 9, 7, 0, 0, 0, 0, 'Extract/DTS', NULL, 'extractdts.png'),
(22, 0, 9, 8, 0, 0, 0, 0, 'Extract/AC-3', NULL, 'extractac3.png');

--
-- 转存表中的数据 `sources`
--

INSERT INTO `sources` (`id`, `name`, `sort_index`) VALUES
(1, 'Blu-ray', 0),
(2, 'HD DVD', 0),
(3, 'DVD', 0),
(4, 'HDTV', 0),
(5, 'TV', 0),
(8, 'Other', 0),
(7, 'WEB-DL', 0);

--
-- 转存表中的数据 `standards`
--

INSERT INTO `standards` (`id`, `name`, `sort_index`) VALUES
(1, '1080p', 0),
(2, '1080i', 0),
(3, '720p', 0),
(4, 'SD', 0);

--
-- 转存表中的数据 `stylesheets`
--

INSERT INTO `stylesheets` (`id`, `uri`, `name`, `addicode`, `designer`, `comment`) VALUES
(2, 'styles/BlueGene/', '蓝色精灵', '', 'Zantetsu', 'HDBits clone'),
(5, 'styles/BambooGreen/', '绿色竹林', '', 'Zantetsu', 'Bit-HDTV clone'),
(6, 'styles/DarkPassion/', '灰色热情', '', 'Zantetsu', ''),
(7, 'styles/PurplePhantom/', '紫色魅影', '', 'HughKeith\r\n', 'SYSU主题征集'),
(3, 'styles/BlasphemyOrange/', '橙色诱惑', NULL, '', ''),
(8, 'styles/PurplePhantom2/', '紫色魅影2', NULL, '', ''),
(16, 'styles/Quantum/', 'Quantum', '', 'tesseract', '测试中'),
(9, 'styles/BlueGene2/', '天空蓝', NULL, 'buny', ''),
(18, 'styles/SimpleGray/', '简明灰', NULL, 'ts', '很难看，不要用！'),
(20, 'styles/FlowerPink/', '海棠季', NULL, '花堤路小坏坏', '2017海棠季纪念');

--
-- 转存表中的数据 `subsinfo`
--

INSERT INTO `subsinfo` (`id`, `name`, `sort_index`) VALUES
(1, '暂无字幕', 0),
(2, '中文字幕', 0),
(3, '英文字幕', 0),
(4, '中英字幕', 0),
(5, '无需字幕', 1),
(6, '其他', 2),
(7, '中日字幕', 0);

--
-- 转存表中的数据 `sysoppanel`
--

INSERT INTO `sysoppanel` (`id`, `name`, `url`, `info`) VALUES
(1, '删除禁用的用户', 'deletedisabled.php', '删除所有被禁用的用户'),
(2, '论坛管理', 'forummanage.php', '编辑/删除论坛'),
(3, 'MySQL的统计', 'mysql_stats.php', '查阅MySQL统计数据'),
(4, '电子邮件群发', 'massmail.php', '发送电子邮件给所有用户'),
(5, '清理工作', 'docleanup.php', '清除功能'),
(6, '禁止系统', 'bans.php', '貌似是禁用IP，目测应该废弃不用了'),
(7, '登录失败日志', 'maxlogin.php', '显示登录失败的尝试'),
(8, '头像管理', 'bitbucketlog.php', '用户上传头像管理'),
(9, '禁止的电子邮件地址', 'bannedemails.php', '禁用电子邮件地址或地址域'),
(10, '接收邮件地址', 'allowedemails.php', '接收邮件登记'),
(11, '位置', 'location.php', '管理位置及IP数据库'),
(12, '新增上传', 'amountupload.php', '为某个等级统一增加固定上传量'),
(13, '允许客户端管理', 'clientsmanage.php', '设置允许的客户端（谨慎）');

--
-- 转存表中的数据 `teams`
--

INSERT INTO `teams` (`id`, `name`, `sort_index`) VALUES
(1, '欧美', 0),
(2, '大陆', 0),
(3, '日韩', 0),
(5, '港台', 0),
(7, '其他', 0);

--
-- 转存表中的数据 `torrents_state`
--

INSERT INTO `torrents_state` (`global_sp_state`) VALUES
(1);

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `username`, `passhash`, `secret`, `email`, `status`, `added`, `last_login`, `last_access`, `last_home`, `last_offer`, `forum_access`, `last_staffmsg`, `last_pm`, `last_comment`, `last_post`, `last_browse`, `last_music`, `last_catchup`, `editsecret`, `privacy`, `stylesheet`, `caticon`, `fontsize`, `info`, `acceptpms`, `commentpm`, `acceptatpms`, `ip`, `class`, `max_class_once`, `avatar`, `uploaded`, `downloaded`, `seedtime`, `leechtime`, `title`, `color`, `country`, `notifs`, `modcomment`, `enabled`, `avatars`, `donor`, `donated`, `donated_cny`, `donoruntil`, `warned`, `warneduntil`, `noad`, `noaduntil`, `torrentsperpage`, `topicsperpage`, `postsperpage`, `clicktopic`, `deletepms`, `savepms`, `showhot`, `showclassic`, `support`, `picker`, `designer`, `stafffor`, `supportfor`, `pickfor`, `designerfor`, `supportlang`, `passkey`, `promotion_link`, `uploadpos`, `forumpost`, `forumbanuntil`, `downloadpos`, `clientselect`, `signatures`, `signature`, `lang`, `cheat`, `download`, `upload`, `isp`, `invites`, `invited_by`, `gender`, `vip_added`, `vip_until`, `seedbonus`, `charity`, `bonuscomment`, `parked`, `leechwarn`, `leechwarnuntil`, `lastwarned`, `timeswarned`, `warnedby`, `sbnum`, `sbrefresh`, `hidehb`, `showimdb`, `showdescription`, `showcomment`, `showclienterror`, `showdlnotice`, `showtjuipnotice`, `tooltip`, `shownfo`, `timetype`, `appendsticky`, `appendnew`, `appendpromotion`, `appendpicked`, `dlicon`, `bmicon`, `showsmalldescr`, `showcomnum`, `showlastcom`, `showlastpost`, `pmnum`, `school`, `showfb`, `bjlosses`, `bjwins`, `answer`, `renamenum`, `classtype`, `width`, `jc_manager`, `enablepublic4`, `qq`, `page`) VALUES
(1, 'NexusPHP', 'aab08d4b2cec4b55094fa3f6d811ba77', 0x756f7576786c6a756d68746d776d78746e6b6c6f, 'nexusphp@example.com', 'confirmed', '2018-01-01 00:00:00', '2019-01-13 22:39:21', '2019-02-11 20:20:32', '2019-02-11 19:55:49', '2019-02-01 16:00:15', '2019-02-01 16:01:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-02-01 16:00:51', '2019-02-01 15:59:50', 1549875124, 0, 0, 0x756f7576786c6a756d68746d776d78746e6b6c6f, 'normal', 9, 1, 'medium', '', 'yes', 'yes', 'yes', '127.0.0.1', 16, 1, '', 0, 0, 0, 0, '', '000000', 1, NULL, NULL, 'yes', 'yes', 'no', '0.00', '0.00', '0000-00-00 00:00:00', 'no', '0000-00-00 00:00:00', 'no', '0000-00-00 00:00:00', 0, 0, 0, 'firstpage', 'yes', 'no', 'yes', 'yes', 'no', 'no', 'no', '', '', '', '', '', '80a34f7fa4108f1f27c8295f681ceaaa', NULL, 'yes', 'yes', '0000-00-00 00:00:00', 'yes', 0, 'yes', '', 25, 0, 0, 0, 0, 0, 0, 'Male', 'no', '0000-00-00 00:00:00', '0.0', '0.0', '', 'no', 'no', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 70, 120, 'no', 'yes', 'yes', 'yes', 'no', 0, 'no', 'off', 'yes', 'timealive', 'yes', 'yes', 'word', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 10, 2, 'yes', 0, 0, 0, 0, 4, 'wide', 'no', 'yes', 0, '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
