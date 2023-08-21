const express = require('express');
const { indexControllers, loginControllers, registerControllers } = require('../controllers');

const router = express.Router();

router.get('/',indexControllers)

module.exports = router;