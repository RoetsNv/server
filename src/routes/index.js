const express = require('express');
const router = express.Router();

const system = require('../system/system');

router.get('/state', function(req, res, next) {
  res.json(system.getState());
});

router.post('/event', function(req, res, next) {
  system.handleEvent(req.body);
  res.json(system.getState());
});

router.all('/*', function(req, res, next) {
  res.status(404).send("Incorrect API");
})


module.exports = router;
