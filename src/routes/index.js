const express = require('express');
const { indexControllers, loginControllers, registerControllers, agregarProdControllers } = require('../controllers');

const router = express.Router();

router.get('/',indexControllers)
router.get('/agregar-producto',agregarProdControllers)
module.exports = router;