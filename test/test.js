//base test

var assert = require('assert');
require('../index.js');
var SQL = require('./test.sql');

console.log(SQL[0]);
console.log(SQL[1]);

assert.equal(SQL[0], 'SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"');
assert.equal(SQL[1], 'SET time_zone = "+00:00"');

assert.equal(SQL[2], 'SET comment_quote1 = "/*"');
assert.equal(SQL[3], 'SET comment_quote2 = \'/*\'');
assert.equal(SQL[4], 'SET comment_quote3 = "aa\'x/*"');

console.log(SQL.table_wp_commentmeta);
console.log(SQL.table_wp_comments);
