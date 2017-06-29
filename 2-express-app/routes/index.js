var express = require('express');
var router = express.Router();
const { foo } = require('../../1-pure-lib/output/Main');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.send(foo(req.query.name));
});

module.exports = router;
