-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- 主机： localhost:3306
-- 生成日期： 2026-06-09 02:49:46
-- 服务器版本： 10.6.23-MariaDB-0ubuntu0.22.04.1
-- PHP 版本： 8.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `yiimpfrontend`
--

-- --------------------------------------------------------

--
-- 表的结构 `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `coinid` int(11) DEFAULT NULL,
  `last_earning` int(11) DEFAULT NULL,
  `is_locked` tinyint(1) DEFAULT 0,
  `no_fees` tinyint(1) DEFAULT NULL,
  `donation` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `logtraffic` tinyint(1) DEFAULT NULL,
  `balance` double DEFAULT 0,
  `username` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `coinsymbol` varchar(16) DEFAULT NULL,
  `swap_time` int(10) UNSIGNED DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `hostaddr` varchar(39) DEFAULT NULL,
  `payout_threshold` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- 转存表中的数据 `accounts`
--

INSERT INTO `accounts` (`id`, `coinid`, `last_earning`, `is_locked`, `no_fees`, `donation`, `logtraffic`, `balance`, `username`, `coinsymbol`, `swap_time`, `login`, `hostaddr`, `payout_threshold`) VALUES
(1, 7, NULL, 0, NULL, 0, NULL, 0, 'LhnPKCkvNm68rhCGMVKr6P3y1xNumEQDJc', '', NULL, NULL, '34.22.147.138', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `algos`
--

CREATE TABLE `algos` (
  `id` int(11) NOT NULL,
  `name` varchar(16) DEFAULT NULL,
  `profit` double DEFAULT NULL,
  `rent` double DEFAULT NULL,
  `factor` double DEFAULT NULL,
  `overflow` tinyint(1) DEFAULT NULL,
  `color` varchar(32) NOT NULL DEFAULT '#ffffff',
  `speedfactor` double NOT NULL DEFAULT 1,
  `port` int(10) NOT NULL DEFAULT 3033,
  `visible` tinyint(3) NOT NULL DEFAULT 0,
  `powlimit_bits` tinyint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- 转存表中的数据 `algos`
--

INSERT INTO `algos` (`id`, `name`, `profit`, `rent`, `factor`, `overflow`, `color`, `speedfactor`, `port`, `visible`, `powlimit_bits`) VALUES
(1, 'scrypt', 0, 0, 1, 1, '#c0c0e0', 1, 3433, 1, NULL),
(2, 'scryptn', 0, 0, 1, 1, '#d0d0d0', 1, 4333, 1, NULL),
(3, 'neoscrypt', 0, 0, 1, 1, '#a0d0f0', 1, 4233, 1, NULL),
(4, 'quark', 0, 0, 1, 1, '#c0c0c0', 1, 4033, 1, NULL),
(5, 'lyra2', 0, 0, 1, 1, '#80a0f0', 1, 4433, 1, NULL),
(6, 'x11', 0, 0, 1, 1, '#f0f0a0', 1, 3533, 1, NULL),
(7, 'x13', 0, 0, 1, 1, '#ffd880', 1, 3633, 1, NULL),
(8, 'x14', 0, 0, 1, 0, '#f0c080', 1, 3933, 1, NULL),
(9, 'x15', 0, 0, 1, 1, '#f0b080', 1, 3733, 1, NULL),
(10, 'fresh', 0, 0, 1, 0, '#ffffff', 1, 3033, 0, NULL),
(11, 'sha256', 0, 0, 1, 1, '#d0d0a0', 0.001, 3333, 1, NULL),
(12, 'qubit', 0, 0, 1, 1, '#d0a0f0', 1, 4733, 1, NULL),
(13, 'skein', 0, 0, 1, 1, '#80a0a0', 1, 4933, 1, NULL),
(14, 'groestl', 0, 0, 1, 0, '#d0a0a0', 1, 5333, 1, NULL),
(15, 'blake', 0, 0, 1, 0, '#f0f0f0', 0.001, 5733, 1, NULL),
(16, 'keccak', 0, 0, 1, 0, '#c0f0c0', 0.001, 5133, 1, NULL),
(17, 'nist5', 0, 0, 1, 1, '#c0e0e0', 1, 3833, 1, NULL),
(18, 'zr5', 0, 0, 1, 1, '#d0b0d0', 1, 5533, 1, NULL),
(19, 'c11', 0, 0, 1, 0, '#a0a0d0', 1, 3573, 1, NULL),
(20, 'drop', 0, 0, 1, 0, '#ffffff', 1, 3033, 0, NULL),
(21, 'skein2', 0, 0, 1, 0, '#c8a060', 1, 5233, 1, NULL),
(22, 'bmw', 0, 0, 1, 1, '#ffffff', 1, 3033, 0, NULL),
(23, 'argon2', 0, 0, 1, NULL, '#e0d0e0', 1, 4234, 1, NULL),
(24, 'blake2s', 0, 0, 1, NULL, '#f2c81f', 0.001, 5766, 1, NULL),
(25, 'decred', 0, 0, 1, NULL, '#f0f0f0', 0.001, 3252, 1, NULL),
(26, 'luffa', 0, 0, 1, NULL, '#a0c0c0', 1, 5933, 1, NULL),
(27, 'lyra2v2', 0, 0, 1, NULL, '#80c0f0', 1, 4533, 1, NULL),
(28, 'penta', 0, 0, 1, NULL, '#80c0c0', 1, 5833, 1, NULL),
(29, 'dmd-gr', 0, 0, 1, NULL, '#a0c0f0', 1, 5333, 1, NULL),
(30, 'myr-gr', 0, 0, 1, NULL, '#a0c0f0', 1, 5433, 1, NULL),
(31, 'm7m', 0, 0, 1, NULL, '#d0a0a0', 1, 6033, 1, NULL),
(32, 'sib', 0, 0, 1, NULL, '#a0a0c0', 1, 5033, 1, NULL),
(33, 'vanilla', 0, 0, 1, NULL, '#f0f0f0', 1000, 5755, 1, NULL),
(34, 'velvet', 0, 0, 1, NULL, '#aac0cc', 1, 6133, 1, NULL),
(35, 'yescrypt', 0, 0, 1, NULL, '#e0d0e0', 1, 6233, 1, NULL),
(36, 'whirlpool', 0, 0, 1, NULL, '#d0e0e0', 1, 4133, 1, NULL),
(37, 'aurum', 0, 0, 1, NULL, '#e2e81f', 1, 6434, 1, NULL),
(38, 'aurum', 0, 0, 1, NULL, '#e2e81f', 1, 6434, 1, NULL),
(39, 'equihash', 0, 0, 1, NULL, '#d0b0d0', 1, 2142, 1, NULL),
(40, 'equihash125', 0, 0, 1, NULL, '#d0b0d0', 1, 2150, 0, NULL),
(41, 'equihash144', 0, 0, 1, NULL, '#d0b0d0', 1, 2146, 0, NULL),
(42, 'equihash192', 0, 0, 1, NULL, '#d0b0d0', 1, 2144, 0, NULL),
(43, 'equihash96', 0, 0, 1, NULL, '#d0b0d0', 1, 2148, 0, NULL),
(44, 'flex', 0, 0, 1, NULL, '#e2d0d2', 1, 3341, 1, NULL),
(45, 'hoohash-pepew', 0, 0, 1, NULL, '#e2d0d2', 1, 7093, 1, NULL),
(46, 'hoohash-pepew', NULL, NULL, NULL, NULL, '#e2d0d2', 1, 7093, 1, NULL),
(47, 'soterg', 0, 0, 1, NULL, '#e2d0d2', 1, 7156, 1, NULL),
(48, 'meowpow', 0, 0, 1, NULL, '#e2d0d2', 1, 4284, 1, NULL),
(49, 'meowpow', NULL, NULL, NULL, NULL, '#e2d0d2', 1, 4284, 1, NULL),
(50, 'phihash', 0, 0, 1, NULL, '#e2d0d2', 1, 1329, 1, NULL),
(51, 'rinhash', 0, 0, 1, NULL, '#e2d0d2', 1, 7444, 1, NULL),
(52, 'kawpow', 0, 0, 1, NULL, '#e2d0d2', 1, 3638, 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `balances`
--

CREATE TABLE `balances` (
  `id` int(11) NOT NULL,
  `name` varchar(16) DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `onsell` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- 转存表中的数据 `balances`
--

INSERT INTO `balances` (`id`, `name`, `balance`, `onsell`) VALUES
(1, 'exbitron', 0, NULL),
(2, 'nestex', 0, NULL),
(3, 'nonkyc', 0, NULL),
(4, 'safetrade', 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `balanceuser`
--

CREATE TABLE `balanceuser` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `pending` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `benchmarks`
--

CREATE TABLE `benchmarks` (
  `id` int(11) NOT NULL,
  `algo` varchar(16) NOT NULL,
  `type` varchar(8) NOT NULL,
  `khps` double DEFAULT NULL,
  `device` varchar(80) DEFAULT NULL,
  `vendorid` varchar(12) DEFAULT NULL,
  `chip` varchar(32) DEFAULT NULL,
  `idchip` int(11) DEFAULT NULL,
  `arch` varchar(8) DEFAULT NULL,
  `power` int(10) UNSIGNED DEFAULT NULL,
  `plimit` int(10) UNSIGNED DEFAULT NULL,
  `freq` int(10) UNSIGNED DEFAULT NULL,
  `realfreq` int(10) UNSIGNED DEFAULT NULL,
  `memf` int(10) UNSIGNED DEFAULT NULL,
  `realmemf` int(10) UNSIGNED DEFAULT NULL,
  `client` varchar(48) DEFAULT NULL,
  `os` varchar(8) DEFAULT NULL,
  `driver` varchar(32) DEFAULT NULL,
  `intensity` double DEFAULT NULL,
  `throughput` int(10) UNSIGNED DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `bench_chips`
--

CREATE TABLE `bench_chips` (
  `id` int(11) NOT NULL,
  `devicetype` varchar(8) DEFAULT NULL,
  `vendorid` varchar(12) DEFAULT NULL,
  `chip` varchar(32) DEFAULT NULL,
  `year` int(10) UNSIGNED DEFAULT NULL,
  `maxtdp` double DEFAULT NULL,
  `blake_rate` double DEFAULT NULL,
  `blake_power` double DEFAULT NULL,
  `x11_rate` double DEFAULT NULL,
  `x11_power` double DEFAULT NULL,
  `sha_rate` double DEFAULT NULL,
  `sha_power` double DEFAULT NULL,
  `scrypt_rate` double DEFAULT NULL,
  `scrypt_power` double DEFAULT NULL,
  `dag_rate` double DEFAULT NULL,
  `dag_power` double DEFAULT NULL,
  `lyra_rate` double DEFAULT NULL,
  `lyra_power` double DEFAULT NULL,
  `neo_rate` double DEFAULT NULL,
  `neo_power` double DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `features` varchar(255) DEFAULT NULL,
  `perfdata` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `bench_suffixes`
--

CREATE TABLE `bench_suffixes` (
  `vendorid` varchar(12) NOT NULL,
  `chip` varchar(32) DEFAULT NULL,
  `suffix` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `blocks`
--

CREATE TABLE `blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `coin_id` int(11) DEFAULT NULL,
  `height` int(10) UNSIGNED DEFAULT NULL,
  `confirmations` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `workerid` int(11) DEFAULT NULL,
  `difficulty_user` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `difficulty` double DEFAULT NULL,
  `category` varchar(16) DEFAULT NULL,
  `solo` tinyint(1) DEFAULT NULL,
  `effort` double DEFAULT NULL,
  `algo` varchar(16) DEFAULT 'scrypt',
  `blockhash` varchar(128) DEFAULT NULL,
  `txhash` varchar(128) DEFAULT NULL,
  `segwit` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci COMMENT='Discovered blocks persisted from Litecoin Service';

-- --------------------------------------------------------

--
-- 表的结构 `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` int(11) NOT NULL,
  `idcoin` int(11) NOT NULL,
  `label` varchar(32) DEFAULT NULL,
  `address` varchar(128) NOT NULL,
  `lastused` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `coins`
--

CREATE TABLE `coins` (
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `symbol` varchar(16) DEFAULT NULL,
  `symbol2` varchar(16) DEFAULT NULL,
  `algo` varchar(16) DEFAULT NULL,
  `version` varchar(32) DEFAULT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `market` varchar(64) DEFAULT NULL,
  `marketid` int(11) DEFAULT NULL,
  `master_wallet` varchar(1024) DEFAULT NULL,
  `wallet_zaddress` varchar(1024) DEFAULT NULL,
  `charity_address` varchar(1024) DEFAULT NULL,
  `charity_amount` double DEFAULT NULL,
  `charity_percent` double DEFAULT NULL,
  `deposit_address` varchar(1024) DEFAULT NULL,
  `deposit_minimum` double DEFAULT 1,
  `sellonbid` tinyint(1) DEFAULT NULL,
  `dontsell` tinyint(1) DEFAULT 1,
  `sellthreshold` double DEFAULT 10000,
  `block_explorer` varchar(1024) DEFAULT NULL,
  `index_avg` double DEFAULT NULL,
  `connections` int(11) DEFAULT NULL,
  `errors` varchar(1024) DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `immature` double DEFAULT NULL,
  `cleared` double DEFAULT NULL,
  `available` double DEFAULT NULL,
  `stake` double DEFAULT NULL,
  `mint` double DEFAULT NULL,
  `txfee` double DEFAULT NULL,
  `payout_min` double DEFAULT NULL,
  `payout_max` double DEFAULT NULL,
  `block_time` int(11) DEFAULT NULL,
  `difficulty` double DEFAULT 1,
  `difficulty_pos` double DEFAULT NULL,
  `block_height` int(11) DEFAULT NULL,
  `target_height` int(11) DEFAULT NULL,
  `powend_height` int(11) DEFAULT NULL,
  `network_hash` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `price2` double DEFAULT NULL,
  `reward` double DEFAULT 1,
  `reward_mul` double DEFAULT 1,
  `mature_blocks` int(11) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT 0,
  `auto_ready` tinyint(1) DEFAULT 0,
  `visible` tinyint(1) DEFAULT NULL,
  `no_explorer` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `max_miners` int(11) DEFAULT NULL,
  `max_shares` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `action` int(11) DEFAULT NULL,
  `conf_folder` varchar(128) DEFAULT NULL,
  `program` varchar(128) DEFAULT NULL,
  `rpcuser` varchar(128) DEFAULT NULL,
  `rpcpasswd` varchar(128) DEFAULT NULL,
  `serveruser` varchar(45) DEFAULT NULL,
  `rpchost` varchar(128) DEFAULT NULL,
  `rpcport` int(11) DEFAULT NULL,
  `dedicatedport` int(11) DEFAULT NULL,
  `rpccurl` tinyint(1) NOT NULL DEFAULT 0,
  `rpcssl` tinyint(1) NOT NULL DEFAULT 0,
  `rpccert` varchar(255) DEFAULT NULL,
  `rpcencoding` varchar(16) DEFAULT NULL,
  `account` varchar(64) NOT NULL DEFAULT '',
  `hasgetinfo` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `hassubmitblock` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `hasmasternodes` tinyint(1) NOT NULL DEFAULT 0,
  `usememorypool` tinyint(1) DEFAULT NULL,
  `usesegwit` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `usemweb` tinyint(1) NOT NULL DEFAULT 0,
  `txmessage` tinyint(1) DEFAULT NULL,
  `auxpow` tinyint(1) DEFAULT NULL,
  `multialgos` tinyint(1) NOT NULL DEFAULT 0,
  `lastblock` varchar(128) DEFAULT NULL,
  `network_ttf` int(11) DEFAULT NULL,
  `actual_ttf` int(11) DEFAULT NULL,
  `pool_ttf` int(11) DEFAULT NULL,
  `last_network_found` int(11) DEFAULT NULL,
  `installed` tinyint(1) DEFAULT NULL,
  `watch` tinyint(1) NOT NULL DEFAULT 0,
  `link_site` varchar(1024) DEFAULT NULL,
  `link_exchange` varchar(1024) DEFAULT NULL,
  `link_bitcointalk` varchar(1024) DEFAULT NULL,
  `link_github` varchar(1024) DEFAULT NULL,
  `link_explorer` varchar(1024) DEFAULT NULL,
  `link_twitter` varchar(1024) DEFAULT NULL,
  `link_discord` varchar(1024) DEFAULT NULL,
  `link_facebook` varchar(1024) DEFAULT NULL,
  `donation_address` varchar(1024) DEFAULT NULL,
  `usefaucet` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `specifications` blob DEFAULT NULL,
  `version_github` varchar(1024) DEFAULT NULL,
  `version_installed` varchar(1024) DEFAULT NULL,
  `auto_exchange` tinyint(1) NOT NULL DEFAULT 0,
  `enable_rpcdebug` tinyint(1) NOT NULL DEFAULT 0,
  `powlimit_bits` tinyint(3) DEFAULT NULL,
  `personalization` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- 转存表中的数据 `coins`
--

INSERT INTO `coins` (`id`, `name`, `symbol`, `symbol2`, `algo`, `version`, `image`, `market`, `marketid`, `master_wallet`, `wallet_zaddress`, `charity_address`, `charity_amount`, `charity_percent`, `deposit_address`, `deposit_minimum`, `sellonbid`, `dontsell`, `sellthreshold`, `block_explorer`, `index_avg`, `connections`, `errors`, `balance`, `immature`, `cleared`, `available`, `stake`, `mint`, `txfee`, `payout_min`, `payout_max`, `block_time`, `difficulty`, `difficulty_pos`, `block_height`, `target_height`, `powend_height`, `network_hash`, `price`, `price2`, `reward`, `reward_mul`, `mature_blocks`, `enable`, `auto_ready`, `visible`, `no_explorer`, `max_miners`, `max_shares`, `created`, `action`, `conf_folder`, `program`, `rpcuser`, `rpcpasswd`, `serveruser`, `rpchost`, `rpcport`, `dedicatedport`, `rpccurl`, `rpcssl`, `rpccert`, `rpcencoding`, `account`, `hasgetinfo`, `hassubmitblock`, `hasmasternodes`, `usememorypool`, `usesegwit`, `usemweb`, `txmessage`, `auxpow`, `multialgos`, `lastblock`, `network_ttf`, `actual_ttf`, `pool_ttf`, `last_network_found`, `installed`, `watch`, `link_site`, `link_exchange`, `link_bitcointalk`, `link_github`, `link_explorer`, `link_twitter`, `link_discord`, `link_facebook`, `donation_address`, `usefaucet`, `specifications`, `version_github`, `version_installed`, `auto_exchange`, `enable_rpcdebug`, `powlimit_bits`, `personalization`) VALUES
(6, 'Bitcoin', 'BTC', '', 'sha256', '109900', '/images/coin-6.png', '', 0, '', '', '', NULL, NULL, NULL, 0.005, 0, 1, 10000, '', 0.0000049361618444422, 0, 'This is a pre-release test build - use at your own risk - do not use for mining or merchant applications', 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 51076366303.482, NULL, 364900, 349481, NULL, 80.81, 1, 1, 25.21212105, 1, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '', '', 'yiimprpc', 'qL32l6LfoNfruUEyZrTQg', '', 'yaamp1', 10301, NULL, 0, 0, '', 'POW', '', 1, 1, 0, NULL, 0, 0, 1, 0, 0, '00000000000000000da2a64a9a8e32623575ba19c3125077d1715c1ba2d3b90c', 2147483647, 596, 2147483647, 1436648004, 0, 0, '', '', '', '', '', '', '', '', NULL, 0, '', '', '', 0, 0, NULL, ''),
(7, 'LitecoinII', 'LTC2', '', 'scrypt', '210505', '', 'unknown', NULL, 'LiPnhRBKhMWkjinGrA4uhr2zEBs8wnxD5j', '', '', NULL, NULL, NULL, 1, 0, 1, 10000, NULL, 0, 18, '', 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, 191666.829, NULL, 59815, NULL, NULL, 13720046038050, NULL, NULL, 50.01953572, 1, NULL, 1, 1, 1, 0, NULL, NULL, 1780970270, NULL, '', '', 'yiimprpc', 'LCgfifSbS4mOf31CNvIA', '', '127.0.0.1', 15010, NULL, 0, 0, '', 'POW', '', 0, 1, 0, NULL, 0, 1, 0, 0, 0, '', 60, 29774, 36376877, 1780970316, 1, 0, '', '', '', '', '', '', '', '', NULL, 0, '', '', '', 0, 0, NULL, '');

-- --------------------------------------------------------

--
-- 表的结构 `connections`
--

CREATE TABLE `connections` (
  `id` int(11) NOT NULL,
  `user` varchar(64) DEFAULT NULL,
  `host` varchar(64) DEFAULT NULL,
  `db` varchar(64) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `idle` int(11) DEFAULT NULL,
  `last` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- 转存表中的数据 `connections`
--

INSERT INTO `connections` (`id`, `user`, `host`, `db`, `created`, `idle`, `last`) VALUES
(495, 'stratum', 'localhost', 'yiimpfrontend', 1780971183, 255, 1780973377),
(496, 'stratum', 'localhost', 'yiimpfrontend', 1780971183, 2, 1780973377),
(1136, 'panel', 'localhost', 'yiimpfrontend', 1780973095, 0, 1780973095),
(1142, 'panel', 'localhost', 'yiimpfrontend', 1780973116, 0, 1780973116),
(1143, 'panel', 'localhost', 'yiimpfrontend', 1780973136, 0, 1780973136),
(1145, 'panel', 'localhost', 'yiimpfrontend', 1780973156, 0, 1780973156),
(1154, 'panel', 'localhost', 'yiimpfrontend', 1780973176, 0, 1780973176),
(1165, 'panel', 'localhost', 'yiimpfrontend', 1780973196, 0, 1780973196),
(1179, 'panel', 'localhost', 'yiimpfrontend', 1780973216, 0, 1780973216),
(1191, 'panel', 'localhost', 'yiimpfrontend', 1780973236, 0, 1780973236),
(1211, 'panel', 'localhost', 'yiimpfrontend', 1780973257, 0, 1780973257),
(1237, 'panel', 'localhost', 'yiimpfrontend', 1780973277, 0, 1780973277),
(1255, 'panel', 'localhost', 'yiimpfrontend', 1780973297, 0, 1780973297),
(1268, 'panel', 'localhost', 'yiimpfrontend', 1780973317, 0, 1780973317),
(1294, 'panel', 'localhost', 'yiimpfrontend', 1780973337, 0, 1780973337),
(1314, 'panel', 'localhost', 'yiimpfrontend', 1780973357, 0, 1780973357),
(1319, 'panel', 'localhost', 'yiimpfrontend', 1780973377, 0, 1780973377);

-- --------------------------------------------------------

--
-- 表的结构 `earnings`
--

CREATE TABLE `earnings` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `coinid` int(11) DEFAULT NULL,
  `blockid` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `mature_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `exchange_deposit`
--

CREATE TABLE `exchange_deposit` (
  `id` int(11) NOT NULL,
  `coinid` int(11) DEFAULT NULL,
  `send_time` int(11) DEFAULT NULL,
  `receive_time` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `price_estimate` double DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `fee` double DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  `market` varchar(16) DEFAULT NULL,
  `tx` varchar(65) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `hashrate`
--

CREATE TABLE `hashrate` (
  `id` int(11) NOT NULL,
  `time` int(11) DEFAULT NULL,
  `hashrate` bigint(20) DEFAULT NULL,
  `hashrate_bad` bigint(20) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `rent` double DEFAULT NULL,
  `earnings` double DEFAULT NULL,
  `difficulty` double DEFAULT NULL,
  `algo` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- 转存表中的数据 `hashrate`
--

INSERT INTO `hashrate` (`id`, `time`, `hashrate`, `hashrate_bad`, `price`, `rent`, `earnings`, `difficulty`, `algo`) VALUES
(12607, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'scrypt'),
(12608, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'scryptn'),
(12609, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'neoscrypt'),
(12610, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'quark'),
(12611, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'lyra2'),
(12612, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'x11'),
(12613, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'x13'),
(12614, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'x14'),
(12615, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'x15'),
(12616, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'fresh'),
(12617, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'sha256'),
(12618, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'qubit'),
(12619, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'skein'),
(12620, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'groestl'),
(12621, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'blake'),
(12622, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'keccak'),
(12623, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'nist5'),
(12624, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'zr5'),
(12625, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'c11'),
(12626, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'drop'),
(12627, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'skein2'),
(12628, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'bmw'),
(12629, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'argon2'),
(12630, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'blake2s'),
(12631, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'decred'),
(12632, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'luffa'),
(12633, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'lyra2v2'),
(12634, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'penta'),
(12635, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'dmd-gr'),
(12636, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'myr-gr'),
(12637, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'm7m'),
(12638, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'sib'),
(12639, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'vanilla'),
(12640, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'velvet'),
(12641, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'yescrypt'),
(12642, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'whirlpool'),
(12643, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'aurum'),
(12644, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'equihash'),
(12645, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'equihash125'),
(12646, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'equihash144'),
(12647, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'equihash192'),
(12648, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'equihash96'),
(12649, 1780969500, 0, NULL, 0, 0, NULL, NULL, 'flex'),
(12650, 1780972200, 97724593477, 0, 0, 0, NULL, 191666.829, 'scrypt'),
(12651, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'scryptn'),
(12652, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'neoscrypt'),
(12653, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'quark'),
(12654, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'lyra2'),
(12655, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'x11'),
(12656, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'x13'),
(12657, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'x14'),
(12658, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'x15'),
(12659, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'fresh'),
(12660, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'sha256'),
(12661, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'qubit'),
(12662, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'skein'),
(12663, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'groestl'),
(12664, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'blake'),
(12665, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'keccak'),
(12666, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'nist5'),
(12667, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'zr5'),
(12668, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'c11'),
(12669, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'drop'),
(12670, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'skein2'),
(12671, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'bmw'),
(12672, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'argon2'),
(12673, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'blake2s'),
(12674, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'decred'),
(12675, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'luffa'),
(12676, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'lyra2v2'),
(12677, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'penta'),
(12678, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'dmd-gr'),
(12679, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'myr-gr'),
(12680, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'm7m'),
(12681, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'sib'),
(12682, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'vanilla'),
(12683, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'velvet'),
(12684, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'yescrypt'),
(12685, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'whirlpool'),
(12686, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'aurum'),
(12687, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'equihash'),
(12688, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'equihash125'),
(12689, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'equihash144'),
(12690, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'equihash192'),
(12691, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'equihash96'),
(12692, 1780972200, 0, NULL, 0, 0, NULL, NULL, 'flex'),
(12693, 1780973100, 11229678758, 0, 0, 0, NULL, 191666.829, 'scrypt'),
(12694, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'scryptn'),
(12695, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'neoscrypt'),
(12696, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'quark'),
(12697, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'lyra2'),
(12698, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'x11'),
(12699, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'x13'),
(12700, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'x14'),
(12701, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'x15'),
(12702, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'fresh'),
(12703, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'sha256'),
(12704, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'qubit'),
(12705, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'skein'),
(12706, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'groestl'),
(12707, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'blake'),
(12708, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'keccak'),
(12709, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'nist5'),
(12710, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'zr5'),
(12711, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'c11'),
(12712, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'drop'),
(12713, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'skein2'),
(12714, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'bmw'),
(12715, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'argon2'),
(12716, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'blake2s'),
(12717, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'decred'),
(12718, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'luffa'),
(12719, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'lyra2v2'),
(12720, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'penta'),
(12721, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'dmd-gr'),
(12722, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'myr-gr'),
(12723, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'm7m'),
(12724, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'sib'),
(12725, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'vanilla'),
(12726, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'velvet'),
(12727, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'yescrypt'),
(12728, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'whirlpool'),
(12729, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'aurum'),
(12730, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'equihash'),
(12731, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'equihash125'),
(12732, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'equihash144'),
(12733, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'equihash192'),
(12734, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'equihash96'),
(12735, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'flex'),
(12736, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'hoohash-pepew'),
(12737, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'soterg'),
(12738, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'meowpow'),
(12739, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'phihash'),
(12740, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'rinhash'),
(12741, 1780973100, 0, NULL, 0, 0, NULL, NULL, 'kawpow');

-- --------------------------------------------------------

--
-- 表的结构 `hashrenter`
--

CREATE TABLE `hashrenter` (
  `id` int(11) NOT NULL,
  `renterid` int(11) DEFAULT NULL,
  `jobid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `hashrate` double DEFAULT NULL,
  `hashrate_bad` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `hashstats`
--

CREATE TABLE `hashstats` (
  `id` int(11) NOT NULL,
  `time` int(11) DEFAULT NULL,
  `hashrate` bigint(20) DEFAULT NULL,
  `earnings` double DEFAULT NULL,
  `algo` varchar(16) DEFAULT 'scrypt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- 转存表中的数据 `hashstats`
--

INSERT INTO `hashstats` (`id`, `time`, `hashrate`, `earnings`, `algo`) VALUES
(1, 1780970400, 18172580507, NULL, 'scrypt');

-- --------------------------------------------------------

--
-- 表的结构 `hashuser`
--

CREATE TABLE `hashuser` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `hashrate` bigint(20) DEFAULT NULL,
  `hashrate_bad` bigint(20) DEFAULT NULL,
  `algo` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- 转存表中的数据 `hashuser`
--

INSERT INTO `hashuser` (`id`, `userid`, `time`, `hashrate`, `hashrate_bad`, `algo`) VALUES
(1, 1, 1780972200, 22181002402, 3006910569, 'scrypt');

-- --------------------------------------------------------

--
-- 表的结构 `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `renterid` int(11) DEFAULT NULL,
  `ready` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `speed` double DEFAULT NULL,
  `difficulty` double DEFAULT NULL,
  `algo` varchar(16) DEFAULT NULL,
  `host` varchar(1024) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `username` varchar(1024) DEFAULT NULL,
  `password` varchar(1024) DEFAULT NULL,
  `percent` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `jobsubmits`
--

CREATE TABLE `jobsubmits` (
  `id` int(11) NOT NULL,
  `jobid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `difficulty` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `algo` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `markets`
--

CREATE TABLE `markets` (
  `id` int(11) NOT NULL,
  `coinid` int(11) DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `marketid` int(11) DEFAULT NULL,
  `priority` tinyint(1) NOT NULL DEFAULT 0,
  `lastsent` int(11) DEFAULT NULL,
  `lasttraded` int(11) DEFAULT 0,
  `balancetime` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `txfee` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `ontrade` double NOT NULL DEFAULT 0,
  `price` double DEFAULT NULL,
  `price2` double DEFAULT NULL,
  `pricetime` int(11) DEFAULT NULL,
  `deposit_address` varchar(1024) DEFAULT NULL,
  `message` varchar(2048) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `base_coin` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- 转存表中的数据 `markets`
--

INSERT INTO `markets` (`id`, `coinid`, `disabled`, `marketid`, `priority`, `lastsent`, `lasttraded`, `balancetime`, `deleted`, `txfee`, `balance`, `ontrade`, `price`, `price2`, `pricetime`, `deposit_address`, `message`, `name`, `base_coin`) VALUES
(1, 155, 0, NULL, 0, NULL, 0, NULL, 0, 0.002, NULL, 0, 0.020691404922548, 0.020814137099131, NULL, NULL, NULL, 'bittrex', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `market_history`
--

CREATE TABLE `market_history` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `idcoin` int(11) NOT NULL,
  `price` double DEFAULT NULL,
  `price2` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `idmarket` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `mining`
--

CREATE TABLE `mining` (
  `id` int(11) NOT NULL,
  `usdbtc` double DEFAULT NULL,
  `last_monitor_exchange` int(11) DEFAULT NULL,
  `last_update_price` int(11) DEFAULT NULL,
  `last_payout` int(11) DEFAULT NULL,
  `stratumids` varchar(1024) DEFAULT NULL,
  `best_algo` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- 转存表中的数据 `mining`
--

INSERT INTO `mining` (`id`, `usdbtc`, `last_monitor_exchange`, `last_update_price`, `last_payout`, `stratumids`, `best_algo`) VALUES
(1, 62741.48, 1422830048, 1422829644, 1780969173, '', 'lyra2');

-- --------------------------------------------------------

--
-- 表的结构 `nicehash`
--

CREATE TABLE `nicehash` (
  `id` int(11) NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `last_decrease` int(11) DEFAULT NULL,
  `algo` varchar(32) DEFAULT NULL,
  `btc` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `speed` double DEFAULT NULL,
  `workers` int(11) DEFAULT NULL,
  `accepted` double DEFAULT NULL,
  `rejected` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- 转存表中的数据 `nicehash`
--

INSERT INTO `nicehash` (`id`, `active`, `orderid`, `last_decrease`, `algo`, `btc`, `price`, `speed`, `workers`, `accepted`, `rejected`) VALUES
(1, 0, NULL, NULL, 'x11', NULL, NULL, NULL, 0, 0, 0),
(2, 0, NULL, NULL, 'scrypt', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 0, NULL, NULL, 'sha256', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 0, NULL, NULL, 'scryptn', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 0, NULL, NULL, 'x13', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 0, NULL, NULL, 'x15', NULL, NULL, NULL, 0, 0, 0),
(7, 0, NULL, NULL, 'nist5', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 0, NULL, NULL, 'neoscrypt', NULL, NULL, NULL, 0, 0, 0),
(9, 0, NULL, NULL, 'lyra2', NULL, NULL, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `idcoin` int(11) NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT 0,
  `description` varchar(128) DEFAULT NULL,
  `conditiontype` varchar(32) DEFAULT NULL,
  `conditionvalue` double DEFAULT NULL,
  `notifytype` varchar(32) DEFAULT NULL,
  `notifycmd` varchar(512) DEFAULT NULL,
  `lastchecked` int(10) UNSIGNED DEFAULT NULL,
  `lasttriggered` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `coinid` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `ask` double DEFAULT NULL,
  `bid` double DEFAULT NULL,
  `market` varchar(16) DEFAULT NULL,
  `uuid` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `payouts`
--

CREATE TABLE `payouts` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `idcoin` int(11) DEFAULT NULL,
  `time` int(11) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `amount` double DEFAULT NULL,
  `fee` double DEFAULT NULL,
  `tx` varchar(128) DEFAULT NULL,
  `memoid` varchar(128) DEFAULT NULL,
  `errmsg` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `queue`
--

CREATE TABLE `queue` (
  `id` int(11) NOT NULL,
  `channel` varchar(255) NOT NULL,
  `job` longblob NOT NULL,
  `pushed_at` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT 0,
  `priority` int(10) UNSIGNED NOT NULL DEFAULT 1024,
  `reserved_at` int(11) DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `done_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `rawcoins`
--

CREATE TABLE `rawcoins` (
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `symbol` varchar(32) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- 转存表中的数据 `rawcoins`
--

INSERT INTO `rawcoins` (`id`, `name`, `symbol`, `active`) VALUES
(1, 'Bitcoin', 'BTC', 1);

-- --------------------------------------------------------

--
-- 表的结构 `renters`
--

CREATE TABLE `renters` (
  `id` int(11) NOT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  `address` varchar(1024) DEFAULT NULL,
  `email` varchar(1024) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `apikey` varbinary(1024) DEFAULT NULL,
  `received` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `unconfirmed` double DEFAULT NULL,
  `spent` double DEFAULT NULL,
  `custom_start` double DEFAULT NULL,
  `custom_balance` double DEFAULT NULL,
  `custom_accept` double DEFAULT NULL,
  `custom_reject` double DEFAULT NULL,
  `custom_address` varchar(1024) DEFAULT NULL,
  `custom_server` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `rentertxs`
--

CREATE TABLE `rentertxs` (
  `id` int(11) NOT NULL,
  `renterid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `address` varchar(1024) DEFAULT NULL,
  `tx` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `servers`
--

CREATE TABLE `servers` (
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `maxcoins` int(11) DEFAULT NULL,
  `uptime` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `algo` varchar(64) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `speed` bigint(20) DEFAULT NULL,
  `custom_balance` double DEFAULT NULL,
  `custom_accept` double DEFAULT NULL,
  `custom_reject` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- 转存表中的数据 `services`
--

INSERT INTO `services` (`id`, `name`, `algo`, `price`, `speed`, `custom_balance`, `custom_accept`, `custom_reject`) VALUES
(1, 'Nicehash', 'scrypt', 0.0003646, 20628000000, 0, 0, 0),
(2, 'Nicehash', 'x11', 0.0004524, 15616000000, 0, 0, 0),
(3, 'Nicehash', 'x13', 0.0003273, 185100000, 0, 0, 0),
(4, 'Nicehash', 'x15', 0.0004079, 7200000, 0, 0, 0),
(5, 'Nicehash', 'nist5', 0.001, 21900000, 0, 0, 0),
(6, 'Nicehash', 'sha256', 0.0000098, 2310347791200000, 0, 0, 0),
(7, 'Nicehash', 'scryptn', 0.0005521, 1200000, 0, 0, 0),
(8, 'Nicehash', 'neoscrypt', 0.0073366, 13600000, 0, 0, 0),
(9, 'Nicehash', 'lyra2', 0.0006123, 181400000, 0, 0, 0),
(16, 'Nicehash', 'qubit', 0.0001968, 72200000, 0, 0, 0),
(17, 'Nicehash', 'quark', 0.0004536, 65978400000, 0, 0, 0),
(18, 'Nicehash', 'zr5', 0.0001, 61865000000, 0, 0, 0),
(19, 'Nicehash', 'c11', 0.0003403, 11823800000, 0, 0, 0),
(20, 'Nicehash', 'keccak', 0.0000027, 153200000, 0, 0, 0),
(21, 'Nicehash', 'whirlx', 0.0000091, 1100700000, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `settings`
--

CREATE TABLE `settings` (
  `param` varchar(128) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- 转存表中的数据 `settings`
--

INSERT INTO `settings` (`param`, `value`, `type`) VALUES
('binance-disabled', '1', 'bool'),
('exbitron-disabled', '0', 'bool'),
('hitbtc-disabled', '1', 'bool'),
('kraken-disabled', '1', 'bool'),
('kucoin-disabled', '1', 'bool'),
('nestex-disabled', '0', 'bool'),
('poloniex-disabled', '1', 'bool'),
('yobit-DCR-BTC-disabled', '1', 'bool'),
('yobit-disabled', '0', 'bool');

-- --------------------------------------------------------

--
-- 表的结构 `shares`
--

CREATE TABLE `shares` (
  `id` bigint(20) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `workerid` int(11) DEFAULT NULL,
  `coinid` int(11) DEFAULT NULL,
  `jobid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `error` int(11) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT NULL,
  `extranonce1` tinyint(1) DEFAULT NULL,
  `difficulty` double NOT NULL DEFAULT 0,
  `share_diff` double NOT NULL DEFAULT 0,
  `algo` varchar(16) DEFAULT 'x11',
  `solo` tinyint(1) DEFAULT NULL,
  `blocknumber` int(10) DEFAULT NULL,
  `blockrewarded` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- 转存表中的数据 `shares`
--

INSERT INTO `shares` (`id`, `userid`, `workerid`, `coinid`, `jobid`, `pid`, `time`, `error`, `valid`, `extranonce1`, `difficulty`, `share_diff`, `algo`, `solo`, `blocknumber`, `blockrewarded`) VALUES
(1, 1, 26, 7, 0, 4256, 1780972553, 0, 1, 1, 6.866455, 13.064287, 'scrypt', 0, 59816, NULL),
(2, 1, 26, 7, 0, 4256, 1780972574, 0, 1, 1, 81.634521, 327.778267, 'scrypt', 0, 59816, NULL),
(3, 1, 26, 7, 0, 4256, 1780972595, 0, 1, 1, 130.462646, 136.546369, 'scrypt', 0, 59816, NULL),
(4, 1, 26, 7, 0, 4256, 1780972616, 0, 1, 1, 122.866455, 190.549392, 'scrypt', 0, 59816, NULL),
(5, 1, 26, 7, 0, 4256, 1780972637, 0, 1, 1, 106, 272.279686, 'scrypt', 0, 59816, NULL),
(6, 1, 26, 7, 0, 4256, 1780972658, 0, 1, 1, 62, 341.924292, 'scrypt', 0, 59816, NULL),
(7, 1, 26, 7, 0, 4256, 1780972680, 0, 1, 1, 50, 653.963777, 'scrypt', 0, 59816, NULL),
(8, 1, 26, 7, 0, 4256, 1780972701, 0, 1, 1, 106, 55.025128, 'scrypt', 0, 59816, NULL),
(9, 1, 26, 7, 0, 4256, 1780972722, 0, 1, 1, 154, 284.33776, 'scrypt', 0, 59816, NULL),
(10, 1, 26, 7, 0, 4256, 1780972743, 0, 1, 1, 116, 97.037211, 'scrypt', 0, 59816, NULL),
(11, 1, 26, 7, 0, 4256, 1780972764, 0, 1, 1, 44, 24.633118, 'scrypt', 0, 59816, NULL),
(12, 1, 26, 7, 0, 4256, 1780972785, 0, 1, 1, 144, 118.892863, 'scrypt', 0, 59816, NULL),
(13, 1, 26, 7, 0, 4256, 1780972806, 0, 1, 1, 112, 166.669584, 'scrypt', 0, 59816, NULL),
(14, 1, 26, 7, 0, 4256, 1780972827, 0, 1, 1, 126, 35.665687, 'scrypt', 0, 59816, NULL),
(15, 1, 26, 7, 0, 4256, 1780972848, 0, 1, 1, 528, 1385.459258, 'scrypt', 0, 59816, NULL),
(16, 1, 26, 7, 0, 4256, 1780972869, 0, 1, 1, 638, 610.932712, 'scrypt', 0, 59816, NULL),
(17, 1, 26, 7, 0, 4256, 1780972890, 0, 1, 1, 550, 310.863081, 'scrypt', 0, 59816, NULL),
(18, 1, 26, 7, 0, 4256, 1780972911, 0, 1, 1, 498, 6391.423276, 'scrypt', 0, 59816, NULL),
(19, 1, 26, 7, 0, 4256, 1780972932, 0, 1, 1, 686, 663.735969, 'scrypt', 0, 59816, NULL),
(20, 1, 26, 7, 0, 4256, 1780972954, 0, 1, 1, 628, 1101.752101, 'scrypt', 0, 59816, NULL),
(21, 1, 26, 7, 0, 4256, 1780972975, 0, 1, 1, 700, 681.41843, 'scrypt', 0, 59816, NULL),
(22, 1, 26, 7, 0, 4256, 1780972996, 0, 1, 1, 680, 1811.97408, 'scrypt', 0, 59816, NULL),
(23, 1, 26, 7, 0, 4256, 1780973017, 0, 1, 1, 754, 1513.470594, 'scrypt', 0, 59816, NULL),
(24, 1, 26, 7, 0, 4256, 1780973038, 0, 1, 1, 742, 12869.287607, 'scrypt', 0, 59816, NULL),
(25, 1, 26, 7, 0, 4256, 1780973059, 0, 1, 1, 24, 67.532221, 'scrypt', 0, 59816, NULL),
(26, 1, 26, 0, 0, 4256, 1780973059, 21, 0, 1, 0, 0, 'scrypt', 0, 0, NULL),
(27, 1, 26, 0, 0, 4256, 1780973080, 21, 0, 1, 0, 0, 'scrypt', 0, 0, NULL),
(28, 1, 26, 0, 0, 4256, 1780973101, 21, 0, 1, 0, 0, 'scrypt', 0, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `stats`
--

CREATE TABLE `stats` (
  `id` int(11) NOT NULL,
  `time` int(11) DEFAULT NULL,
  `profit` double DEFAULT NULL,
  `wallet` double DEFAULT NULL,
  `wallets` double DEFAULT NULL,
  `immature` double DEFAULT NULL,
  `margin` double DEFAULT NULL,
  `waiting` double DEFAULT NULL,
  `balances` double DEFAULT NULL,
  `onsell` double DEFAULT NULL,
  `renters` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- 转存表中的数据 `stats`
--

INSERT INTO `stats` (`id`, `time`, `profit`, `wallet`, `wallets`, `immature`, `margin`, `waiting`, `balances`, `onsell`, `renters`) VALUES
(383, 1780969500, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL),
(384, 1780972200, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL),
(385, 1780973100, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `stratums`
--

CREATE TABLE `stratums` (
  `pid` int(11) NOT NULL,
  `time` int(11) DEFAULT NULL,
  `started` int(10) UNSIGNED DEFAULT NULL,
  `algo` varchar(64) DEFAULT NULL,
  `workers` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `port` int(10) UNSIGNED DEFAULT NULL,
  `symbol` varchar(16) DEFAULT NULL,
  `url` varchar(128) DEFAULT NULL,
  `fds` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- 转存表中的数据 `stratums`
--

INSERT INTO `stratums` (`pid`, `time`, `started`, `algo`, `workers`, `port`, `symbol`, `url`, `fds`) VALUES
(4256, 1780973375, 1780971183, 'scrypt', 0, 3433, 'LTC2', '127.0.0.1', 14);

-- --------------------------------------------------------

--
-- 表的结构 `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(11) NOT NULL,
  `market` varchar(1024) DEFAULT NULL,
  `address` varchar(1024) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `uuid` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `workers`
--

CREATE TABLE `workers` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `subscribe` tinyint(1) DEFAULT NULL,
  `difficulty` double DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `dns` varchar(1024) DEFAULT NULL,
  `name` varchar(52) DEFAULT NULL,
  `nonce1` varchar(64) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `worker` varchar(64) DEFAULT NULL,
  `algo` varchar(16) DEFAULT 'scrypt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- 转储表的索引
--

--
-- 表的索引 `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `coin` (`coinid`),
  ADD KEY `balance` (`balance`),
  ADD KEY `earning` (`last_earning`);

--
-- 表的索引 `algos`
--
ALTER TABLE `algos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- 表的索引 `balances`
--
ALTER TABLE `balances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- 表的索引 `balanceuser`
--
ALTER TABLE `balanceuser`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- 表的索引 `benchmarks`
--
ALTER TABLE `benchmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bench_userid` (`userid`),
  ADD KEY `ndx_type` (`type`),
  ADD KEY `ndx_algo` (`algo`),
  ADD KEY `ndx_time` (`time`),
  ADD KEY `ndx_chip` (`idchip`);

--
-- 表的索引 `bench_chips`
--
ALTER TABLE `bench_chips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ndx_chip_type` (`devicetype`),
  ADD KEY `ndx_chip_name` (`chip`);

--
-- 表的索引 `bench_suffixes`
--
ALTER TABLE `bench_suffixes`
  ADD PRIMARY KEY (`vendorid`);

--
-- 表的索引 `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time` (`time`),
  ADD KEY `algo1` (`algo`),
  ADD KEY `coin` (`coin_id`),
  ADD KEY `category` (`category`),
  ADD KEY `user1` (`userid`),
  ADD KEY `height1` (`height`);

--
-- 表的索引 `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookmarks_coin` (`idcoin`);

--
-- 表的索引 `coins`
--
ALTER TABLE `coins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auto_ready` (`auto_ready`),
  ADD KEY `enable` (`enable`),
  ADD KEY `algo` (`algo`),
  ADD KEY `symbol` (`symbol`),
  ADD KEY `index_avg` (`index_avg`),
  ADD KEY `created` (`created`);

--
-- 表的索引 `connections`
--
ALTER TABLE `connections`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ndx_user_block` (`userid`,`blockid`),
  ADD KEY `user` (`userid`),
  ADD KEY `coin` (`coinid`),
  ADD KEY `block` (`blockid`),
  ADD KEY `create1` (`create_time`),
  ADD KEY `status` (`status`);

--
-- 表的索引 `exchange_deposit`
--
ALTER TABLE `exchange_deposit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coinid` (`coinid`),
  ADD KEY `status` (`status`),
  ADD KEY `market` (`market`),
  ADD KEY `send_time` (`send_time`);

--
-- 表的索引 `hashrate`
--
ALTER TABLE `hashrate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `t1` (`time`),
  ADD KEY `a1` (`algo`);

--
-- 表的索引 `hashrenter`
--
ALTER TABLE `hashrenter`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `hashstats`
--
ALTER TABLE `hashstats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `algo1` (`algo`),
  ADD KEY `time1` (`time`);

--
-- 表的索引 `hashuser`
--
ALTER TABLE `hashuser`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u1` (`userid`),
  ADD KEY `t1` (`time`),
  ADD KEY `a1` (`algo`);

--
-- 表的索引 `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `renterid` (`renterid`),
  ADD KEY `ready` (`ready`),
  ADD KEY `active` (`active`),
  ADD KEY `algo` (`algo`),
  ADD KEY `price` (`price`);

--
-- 表的索引 `jobsubmits`
--
ALTER TABLE `jobsubmits`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `markets`
--
ALTER TABLE `markets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coinid` (`coinid`),
  ADD KEY `name` (`name`),
  ADD KEY `lastsent` (`lastsent`),
  ADD KEY `lasttraded` (`lasttraded`);

--
-- 表的索引 `market_history`
--
ALTER TABLE `market_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idcoin` (`idcoin`),
  ADD KEY `idmarket` (`idmarket`),
  ADD KEY `time` (`time`);

--
-- 表的索引 `mining`
--
ALTER TABLE `mining`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `nicehash`
--
ALTER TABLE `nicehash`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notif_coin` (`idcoin`),
  ADD KEY `notif_checked` (`lastchecked`);

--
-- 表的索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coinid` (`coinid`),
  ADD KEY `created` (`created`),
  ADD KEY `market` (`market`);

--
-- 表的索引 `payouts`
--
ALTER TABLE `payouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`,`completed`),
  ADD KEY `payouts_coin` (`idcoin`);

--
-- 表的索引 `queue`
--
ALTER TABLE `queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channel` (`channel`),
  ADD KEY `reserved_at` (`reserved_at`),
  ADD KEY `priority` (`priority`);

--
-- 表的索引 `rawcoins`
--
ALTER TABLE `rawcoins`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `renters`
--
ALTER TABLE `renters`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `rentertxs`
--
ALTER TABLE `rentertxs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `renterid` (`renterid`),
  ADD KEY `time` (`time`);

--
-- 表的索引 `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name1` (`name`);

--
-- 表的索引 `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`param`);

--
-- 表的索引 `shares`
--
ALTER TABLE `shares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time` (`time`),
  ADD KEY `algo1` (`algo`),
  ADD KEY `valid1` (`valid`),
  ADD KEY `user1` (`userid`),
  ADD KEY `worker1` (`workerid`),
  ADD KEY `coin1` (`coinid`),
  ADD KEY `jobid` (`jobid`);

--
-- 表的索引 `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time` (`time`);

--
-- 表的索引 `stratums`
--
ALTER TABLE `stratums`
  ADD PRIMARY KEY (`pid`);

--
-- 表的索引 `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `algo1` (`algo`),
  ADD KEY `name1` (`name`),
  ADD KEY `userid` (`userid`),
  ADD KEY `pid` (`pid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `algos`
--
ALTER TABLE `algos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- 使用表AUTO_INCREMENT `balances`
--
ALTER TABLE `balances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `balanceuser`
--
ALTER TABLE `balanceuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `benchmarks`
--
ALTER TABLE `benchmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `bench_chips`
--
ALTER TABLE `bench_chips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `coins`
--
ALTER TABLE `coins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `earnings`
--
ALTER TABLE `earnings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `exchange_deposit`
--
ALTER TABLE `exchange_deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `hashrate`
--
ALTER TABLE `hashrate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12742;

--
-- 使用表AUTO_INCREMENT `hashrenter`
--
ALTER TABLE `hashrenter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `hashstats`
--
ALTER TABLE `hashstats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `hashuser`
--
ALTER TABLE `hashuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `jobsubmits`
--
ALTER TABLE `jobsubmits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `markets`
--
ALTER TABLE `markets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `market_history`
--
ALTER TABLE `market_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `mining`
--
ALTER TABLE `mining`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `nicehash`
--
ALTER TABLE `nicehash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `payouts`
--
ALTER TABLE `payouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `queue`
--
ALTER TABLE `queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `rawcoins`
--
ALTER TABLE `rawcoins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `renters`
--
ALTER TABLE `renters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `rentertxs`
--
ALTER TABLE `rentertxs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `servers`
--
ALTER TABLE `servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用表AUTO_INCREMENT `shares`
--
ALTER TABLE `shares`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- 使用表AUTO_INCREMENT `stats`
--
ALTER TABLE `stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;

--
-- 使用表AUTO_INCREMENT `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `workers`
--
ALTER TABLE `workers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- 限制导出的表
--

--
-- 限制表 `benchmarks`
--
ALTER TABLE `benchmarks`
  ADD CONSTRAINT `fk_bench_chip` FOREIGN KEY (`idchip`) REFERENCES `bench_chips` (`id`);

--
-- 限制表 `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD CONSTRAINT `fk_bookmarks_coin` FOREIGN KEY (`idcoin`) REFERENCES `coins` (`id`) ON DELETE CASCADE;

--
-- 限制表 `market_history`
--
ALTER TABLE `market_history`
  ADD CONSTRAINT `fk_mh_coin` FOREIGN KEY (`idcoin`) REFERENCES `coins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_mh_market` FOREIGN KEY (`idmarket`) REFERENCES `markets` (`id`) ON DELETE CASCADE;

--
-- 限制表 `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `fk_notif_coin` FOREIGN KEY (`idcoin`) REFERENCES `coins` (`id`) ON DELETE CASCADE;

--
-- 限制表 `payouts`
--
ALTER TABLE `payouts`
  ADD CONSTRAINT `fk_payouts_account` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_payouts_coin` FOREIGN KEY (`idcoin`) REFERENCES `coins` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
