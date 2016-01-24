//base test

var assert = require('assert');
require('../index.js');
var SQL = require('./test.sql');

//console.dir(SQL);

assert.equal(SQL[0], 'SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"');
assert.equal(SQL[1], 'SET time_zone = "+00:00"');

assert.equal(SQL[2], 'SET comment_quote1 = "/*"');
assert.equal(SQL[3], 'SET comment_quote2 = \'/*\'');
assert.equal(SQL[4], 'SET comment_quote3 = "aa\'x/*"');
console.log(SQL.table_wp_commentmeta)
assert.equal(SQL.table_wp_commentmeta, 'CREATE TABLE IF NOT EXISTS `wp_commentmeta` (\
`meta_id` bigint(20) unsigned NOT NULL,\
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT \'0\',\
  `meta_key` varchar(255) DEFAULT NULL,\
  `meta_value` longtext\
) ENGINE=InnoDB DEFAULT CHARSET=utf8');

assert.equal(SQL.changeDelimeter2, 'CREATE DEFINER=`user`@`%` PROCEDURE `sp_test`(\
  IN Number INT\
  )\
    READS SQL DATA\
BEGIN\
  IF NUMBER = 1 THEN\
      SELECT * FROM tblProduct WHERE ProductID = Number;\
  ELSE\
      SELECT * FROM tblProduct WHERE ProductId = 2;\
  END IF;\
END');
