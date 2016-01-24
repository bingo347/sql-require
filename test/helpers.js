var assert = require('assert');
var lib = require('../index.js');
var findQuotes = lib._findQuotes;
var checkInQuote = lib._checkInQuote;

assert.deepEqual(findQuotes('0123"567"9'), [[4, 8]]);
assert.deepEqual(findQuotes('0123\'567\'9'), [[4, 8]]);
assert.deepEqual(findQuotes('0123\'567\'9012"45"789'), [[4, 8],[13, 16]]);
assert.deepEqual(findQuotes('0123"567890123456789'), []);
assert.deepEqual(findQuotes('0123"56789""234"6789'), [[4, 15]]);
assert.deepEqual(findQuotes('0123"56789\\"234"6789'), [[4, 15]]);
assert.deepEqual(findQuotes('0123\'56789\'\'234\'6789'), [[4, 15]]);
assert.deepEqual(findQuotes('0123\'56789\\\'234\'6789'), [[4, 15]]);

assert.deepEqual(findQuotes('SET comment_quote3 = "aa\'x/*"'), [[21, 28]]);

var str;
str = '/* abc  \'xxx\'';
assert.equal(checkInQuote(findQuotes(str), str.indexOf('/*')), false);
str = 'abc  \'/*\'';
assert.equal(checkInQuote(findQuotes(str), str.indexOf('/*')), true);
str = '"abc"  \'/*\'';
assert.equal(checkInQuote(findQuotes(str), str.indexOf('/*')), true);

console.log('ok');
