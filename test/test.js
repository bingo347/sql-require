var assert = require('assert');
require('../index.js');
var SQL = require('./test.sql');

console.dir(SQL);

assert.equal(SQL[0], 'SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"');
assert.equal(SQL[1], 'SET time_zone = "+00:00"');

assert.equal(SQL.table_wp_commentmeta, 'CREATE TABLE IF NOT EXISTS `wp_commentmeta` (\
`meta_id` bigint(20) unsigned NOT NULL,\
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT \'0\',\
  `meta_key` varchar(255) DEFAULT NULL,\
  `meta_value` longtext\
) ENGINE=InnoDB DEFAULT CHARSET=utf8');
