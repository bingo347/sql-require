
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";SET time_zone = "+00:00";

SET comment_quote1 = "/*";
SET comment_quote2 = '/*';
SET comment_quote3 = "aa'x/*";


-- --------------------------------------------------------
-- :name=table_wp_commentmeta

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--
-- :name=table_wp_comments
CREATE TABLE IF NOT EXISTS `wp_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=883 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_pollsa`
--

CREATE TABLE IF NOT EXISTS `wp_pollsa` (
`polla_aid` int(10) NOT NULL,
  `polla_qid` int(10) NOT NULL DEFAULT '0',
  `polla_answers` varchar(200) NOT NULL DEFAULT '',
  `polla_votes` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_pollsa`
--

INSERT INTO `wp_pollsa` (`polla_aid`, `polla_qid`, `polla_answers`, `polla_votes`) VALUES
(1, 1, 'Хорошо', 10),
(2, 1, 'Отлично', 22),
(3, 1, 'Мой ребенок ходит', 3),
(4, 1, 'Не нравится', 2),
(5, 1, 'Без комментариев', 12);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_pollsip`
--

CREATE TABLE IF NOT EXISTS `wp_pollsip` (
`pollip_id` int(10) NOT NULL,
  `pollip_qid` varchar(10) NOT NULL DEFAULT '',
  `pollip_aid` varchar(10) NOT NULL DEFAULT '',
  `pollip_ip` varchar(100) NOT NULL DEFAULT '',
  `pollip_host` varchar(200) NOT NULL DEFAULT '',
  `pollip_timestamp` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollip_user` tinytext NOT NULL,
  `pollip_userid` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- :name=big_query
--
-- Дамп данных таблицы `wp_pollsip`
--

INSERT INTO `wp_pollsip` (`pollip_id`, `pollip_qid`, `pollip_aid`, `pollip_ip`, `pollip_host`, `pollip_timestamp`, `pollip_user`, `pollip_userid`) VALUES
(1, '1', '2', '194.28.214.2', '194.28.214.2', '1371222108', 'Ольга', 0),
(2, '1', '2', '31.130.255.31', '31.130.255.31', '1374233460', 'Гость', 0),
(3, '1', '2', '31.130.249.119', '31.130.249.119', '1375570644', 'Гость', 0),
(4, '1', '2', '92.127.16.174', '92-127-16-174-xdsl-dynamic.kuzbass.net', '1377068810', 'Гость', 0),
(5, '1', '5', '31.130.249.15', '31.130.249.15', '1377732442', 'Гость', 0),
(6, '1', '1', '31.130.252.116', '31.130.252.116', '1381441805', 'Гость', 0),
(7, '1', '3', '31.130.249.12', '31.130.249.12', '1381444216', 'Гость', 0),
(8, '1', '1', '194.28.213.31', '194.28.213.31', '1381920820', 'Гость', 0),
(9, '1', '1', '91.205.162.4', '91.205.162.4', '1382750751', 'Гость', 0),
(10, '1', '5', '31.130.252.15', '31.130.252.15', '1385498035', 'Гость', 0),
(11, '1', '5', '95.153.193.45', '95.153.193.45', '1385565784', 'Гость', 0),
(12, '1', '5', '95.153.197.40', '95.153.197.40', '1385628905', 'Гость', 0),
(13, '1', '5', '95.153.200.116', '95.153.200.116', '1385641880', 'Гость', 0),
(14, '1', '5', '95.153.195.130', '95.153.195.130', '1385655060', 'Гость', 0),
(15, '1', '5', '95.153.205.94', '95.153.205.94', '1385741498', 'Гость', 0),
(16, '1', '4', '31.130.251.15', '31.130.251.15', '1388451124', 'Гость', 0),
(17, '1', '5', '95.153.171.226', '95x153x171x226.kubangsm.ru', '1390384199', 'Гость', 0),
(18, '1', '2', '88.215.156.179', 'host-88-215-156-179.stv.ru', '1392050200', 'Гость', 0),
(19, '1', '2', '188.234.8.59', 'dynamicip-188-234-8-59.pppoe.kzn.ertelecom.ru', '1392125972', 'Гость', 0),
(20, '1', '1', '5.138.16.92', 'host-5-138-16-92.stv.ru', '1395564365', 'Гость', 0),
(21, '1', '1', '5.138.21.120', 'host-5-138-21-120.stv.ru', '1396357835', 'Гость', 0),
(22, '1', '2', '77.39.15.45', 'host-77-39-15-45.stv.ru', '1396435104', 'Гость', 0),
(23, '1', '2', '91.205.162.86', '91.205.162.86', '1396968737', 'Гость', 0),
(24, '1', '2', '188.16.18.101', '188.16.18.101', '1397461557', 'Гость', 0),
(25, '1', '2', '31.130.249.54', '31.130.249.54', '1398892151', 'Гость', 0),
(26, '1', '2', '213.87.137.8', '8.gprs.mts.ru', '1400342798', 'Гость', 0),
(27, '1', '5', '31.130.251.23', '31.130.251.23', '1400807815', 'Гость', 0),
(28, '1', '2', '94.253.107.116', '94-253-107-116.dynvpn.flex.ru', '1410120104', 'Гость', 0),
(29, '1', '2', '194.28.214.16', '194.28.214.16', '1410539190', 'Гость', 0),
(30, '1', '5', '95.153.191.237', '95x153x191x237.kubangsm.ru', '1410955945', 'Гость', 0),
(31, '1', '1', '31.130.251.18', '31.130.251.18', '1411658104', 'Гость', 0),
(32, '1', '5', '95.153.197.9', '95.153.197.9', '1412944346', 'Гость', 0),
(33, '1', '2', '83.239.96.1', '83.239.96.1.kubanol.ru', '1413209948', 'Гость', 0),
(34, '1', '2', '91.205.162.83', '91.205.162.83', '1414876880', 'Гость', 0),
(35, '1', '1', '194.28.214.42', '194.28.214.42', '1415286750', 'Гость', 0),
(36, '1', '2', '31.131.208.110', '31.131.208.110', '1416280432', 'Гость', 0),
(37, '1', '2', '5.138.72.18', 'host-5-138-72-18.stv.ru', '1421636289', 'Гость', 0),
(38, '1', '5', '95.153.172.136', '95.153.172.136', '1425908636', 'Гость', 0),
(39, '1', '2', '5.140.234.53', '5.140.234.53', '1426003411', 'Гость', 0),
(40, '1', '1', '91.205.162.166', '91.205.162.166', '1427459770', 'Гость', 0),
(41, '1', '4', '178.173.4.115', 'host-115.pool4.poig.ru', '1433252513', 'Гость', 0),
(42, '1', '1', '37.16.82.194', '37.16.82.194', '1433266341', 'Гость', 0),
(43, '1', '2', '31.180.235.45', 'host-31-180-235-45.stv.ru', '1438519025', 'Гость', 0),
(44, '1', '3', '31.130.252.17', '31.130.252.17', '1438877861', 'Гость', 0),
(45, '1', '2', '91.77.147.95', 'ppp91-77-147-95.pppoe.mtu-net.ru', '1441161479', 'Гость', 0),
(46, '1', '2', '91.205.160.63', '91.205.160.63', '1445962417', 'Гость', 0),
(47, '1', '2', '85.115.248.19', '85.115.248.19', '1449587428', 'Гость', 0),
(48, '1', '3', '185.3.35.68', '185.3.35.68', '1449678405', 'Гость', 0),
(49, '1', '1', '46.63.148.250', 'host-46-63-148-250.stv.ru', '1451689647', 'Гость', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_pollsq`
--

CREATE TABLE IF NOT EXISTS `wp_pollsq` (
`pollq_id` int(10) NOT NULL,
  `pollq_question` varchar(200) NOT NULL DEFAULT '',
  `pollq_timestamp` varchar(20) NOT NULL DEFAULT '',
  `pollq_totalvotes` int(10) NOT NULL DEFAULT '0',
  `pollq_active` tinyint(1) NOT NULL DEFAULT '1',
  `pollq_expiry` varchar(20) NOT NULL DEFAULT '',
  `pollq_multiple` tinyint(3) NOT NULL DEFAULT '0',
  `pollq_totalvoters` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_pollsq`
--

INSERT INTO `wp_pollsq` (`pollq_id`, `pollq_question`, `pollq_timestamp`, `pollq_totalvotes`, `pollq_active`, `pollq_expiry`, `pollq_multiple`, `pollq_totalvoters`) VALUES
(1, 'Как Вы относитесь к Православному саду', '1371136040', 49, 1, '', 0, 49);

-- --------------------------------------------------------
DELIMITER $$
-- :name=changeDelimeter1
DROP PROCEDURE IF EXISTS `sp_test`$$
-- :name=changeDelimeter2
CREATE DEFINER=`user`@`%` PROCEDURE `sp_test`(
  IN Number INT
  )
    READS SQL DATA
BEGIN
  IF NUMBER = 1 THEN
      SELECT * FROM tblProduct WHERE ProductID = Number;
  ELSE
      SELECT * FROM tblProduct WHERE ProductId = 2;
  END IF;
END$$

DELIMITER ;
